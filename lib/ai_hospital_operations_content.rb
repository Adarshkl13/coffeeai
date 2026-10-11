module AiHospitalOperationsContent
  # Units (sidebar dividers): 1–4 Operations Basics · 5–9 Patients, Beds and Staff · 10–14 Stock, Money and Quality · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">How a Hospital Runs</h1>
        </div>
        <p class="lc-lead">Doctors and nurses give the care. But a patient's day also depends on beds, queues, tests, medicines, bills and paperwork. That is hospital <strong>operations</strong>: the work that makes care happen on time. In this lesson you will learn the main departments, follow one patient from OPD to discharge, and meet the people who run the hospital. You will follow <strong>Tarang Multispeciality Hospital</strong>, a made-up 200-bed hospital, all through this course. It is September 2026. Monsoon fevers and dengue have filled the wards. The team wants shorter OPD waits, better bed flow and fewer stock-outs before the season ends.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Patient flow at Tarang Multispeciality Hospital. OPD route: arrival, registration, consultation, tests, then pharmacy and home. Inpatient route: from consultation or emergency to the admission desk, ward or ICU, operation theatre if needed, then discharge and billing. Registration, consultation, admission and discharge are marked as common waiting points. Support services run under everything.">
            <defs><marker id="ho1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Patient flow at Tarang Multispeciality Hospital (simplified)</text>
              <text x="60" y="54" font-size="11" fill="#9b99b8" text-anchor="start">OPD route</text>
              <rect x="20" y="62" width="120" height="56" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="80" y="85" font-weight="700">Arrival</text>
              <text x="80" y="104" font-size="11" fill="#9b99b8">OPD or emergency</text>
              <rect x="170" y="62" width="120" height="56" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="230" y="85" font-weight="700">Registration</text>
              <text x="230" y="104" font-size="11" fill="#9b99b8">UHID and token</text>
              <rect x="320" y="62" width="120" height="56" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="85" font-weight="700">Consultation</text>
              <text x="380" y="104" font-size="11" fill="#9b99b8">doctor's review</text>
              <rect x="470" y="62" width="120" height="56" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="530" y="85" font-weight="700">Tests</text>
              <text x="530" y="104" font-size="11" fill="#9b99b8">lab and imaging</text>
              <rect x="620" y="62" width="120" height="56" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="680" y="85" font-weight="700">Pharmacy</text>
              <text x="680" y="104" font-size="11" fill="#9b99b8">then home</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ho1a)">
                <line x1="142" y1="90" x2="166" y2="90"/><line x1="292" y1="90" x2="316" y2="90"/>
                <line x1="442" y1="90" x2="466" y2="90"/><line x1="592" y1="90" x2="616" y2="90"/>
                <line x1="360" y1="120" x2="250" y2="190"/><line x1="80" y1="120" x2="200" y2="190"/>
              </g>
              <text x="95" y="166" font-size="11" fill="#f9a8d4">emergency</text>
              <text x="340" y="160" font-size="11" fill="#9b99b8">if admitted</text>
              <text x="60" y="184" font-size="11" fill="#9b99b8" text-anchor="start">Inpatient route</text>
              <rect x="170" y="194" width="120" height="56" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="230" y="217" font-weight="700">Admission</text>
              <text x="230" y="236" font-size="11" fill="#9b99b8">bed allotted</text>
              <rect x="320" y="194" width="120" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="217" font-weight="700">Ward or ICU</text>
              <text x="380" y="236" font-size="11" fill="#9b99b8">nursing care</text>
              <rect x="470" y="194" width="120" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="530" y="217" font-weight="700">OT if needed</text>
              <text x="530" y="236" font-size="11" fill="#9b99b8">surgery</text>
              <rect x="620" y="194" width="120" height="56" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="680" y="217" font-weight="700">Discharge</text>
              <text x="680" y="236" font-size="11" fill="#9b99b8">bill and summary</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ho1a)">
                <line x1="292" y1="222" x2="316" y2="222"/><line x1="442" y1="222" x2="466" y2="222"/><line x1="592" y1="222" x2="616" y2="222"/>
              </g>
              <rect x="20" y="270" width="720" height="44" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="289" font-size="12">Support under everything: pharmacy · lab · CSSD · housekeeping · biomedical · billing · HIS</text>
              <text x="380" y="306" font-size="11" fill="#fcd34d">Amber boxes: common waiting points</text>
            </g>
          </svg>
          <figcaption>Most patients follow the OPD route and go home the same day. Some are admitted. Delays usually happen at the hand-offs between teams.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main parts of a hospital</h3>
          <p>A hospital is many small teams that must work together. You can group them into four types.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Examples at Tarang</th><th>What operations watches</th></tr></thead>
            <tbody>
              <tr><td><strong>Clinical</strong></td><td>OPD (outpatient department: patients who see a doctor and go home), emergency, wards, ICU, operation theatres (OT), labour room</td><td>Waiting times, beds, OT hours, staff on each shift</td></tr>
              <tr><td><strong>Diagnostic</strong></td><td>Lab and imaging at Tarang Diagnostics (X-ray, ultrasound, CT), led by radiologist Dr Kiran Rao</td><td>Report turnaround time: the time from test order to report ready</td></tr>
              <tr><td><strong>Support</strong></td><td>Pharmacy, CSSD (central sterile services department: it cleans and sterilises instruments), housekeeping, diet kitchen, laundry, biomedical engineering</td><td>Stock, clean instruments on time, working equipment</td></tr>
              <tr><td><strong>Administration</strong></td><td>Front office, admission desk, billing and insurance desk, HR, IT, quality</td><td>Registration speed, bills, insurance claims, complaints, accreditation</td></tr>
            </tbody>
          </table>
          <p>Most hospitals run on a <strong>HIS</strong> (hospital information system: the software that records registrations, admissions, orders, bills and stock). Many also use an <strong>EHR</strong> (electronic health record: the patient's clinical record). Operations data usually comes from these systems.</p>
        </div>
        <div class="lc-card">
          <h3>One patient's day: from OPD to discharge</h3>
          <p>Follow a made-up patient, <strong>Ramesh Pawar</strong>, 45, who has had fever for four days. All details are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>What happens</th><th>Team</th><th>Waiting time</th></tr></thead>
            <tbody>
              <tr><td>Day 1, 09:10</td><td>Arrives at OPD. Gets a UHID (unique hospital ID) and a token number.</td><td>Front office</td><td>15 min in the registration line</td></tr>
              <tr><td>10:40</td><td>Sees the physician. The doctor orders blood tests, including a dengue test.</td><td>Medicine OPD</td><td>75 min for the doctor</td></tr>
              <tr><td>12:30</td><td>Reports are ready. The doctor advises admission for monitoring.</td><td>Tarang Diagnostics, Medicine</td><td>90 min for reports</td></tr>
              <tr><td>16:00</td><td>Gets a bed in the Medicine ward.</td><td>Admission desk, nursing</td><td>3.5 hours for a bed</td></tr>
              <tr><td>Day 4, 10:00</td><td>The doctor says he can go home.</td><td>Medicine</td><td></td></tr>
              <tr><td>Day 4, 16:30</td><td>Leaves after the discharge summary, bill and medicines are ready.</td><td>Nursing, billing, pharmacy</td><td>6.5 hours to leave</td></tr>
            </tbody>
          </table>
          <p>Ramesh spent over 12 hours of his stay just waiting. The slow discharge also kept his bed busy for 6.5 extra hours. Meanwhile, another fever patient waited in emergency for that bed. This is why operations work matters: one delay causes the next one.</p>
        </div>
        <div class="lc-card">
          <h3>Who runs the operations</h3>
          <table class="lc-table">
            <thead><tr><th>Role at Tarang</th><th>Main job</th><th>Numbers they need</th></tr></thead>
            <tbody>
              <tr><td><strong>Dr Farida Shaikh</strong>, medical superintendent</td><td>Runs the hospital day to day. Makes the final operations decisions.</td><td>A short monthly dashboard</td></tr>
              <tr><td><strong>Sister Mary Thomas</strong>, nursing head</td><td>Leads all nurses. Plans rosters and ward staffing.</td><td>Patients per nurse on each shift</td></tr>
              <tr><td><strong>Vikram</strong>, operations manager</td><td>Tracks beds, queues, OT and stock. Writes the monthly report.</td><td>Bed occupancy, waiting times, OT use</td></tr>
              <tr><td>Admission desk and bed manager</td><td>Gives beds to new patients. Tracks expected discharges.</td><td>Beds free now and by evening</td></tr>
              <tr><td>Pharmacy in-charge</td><td>Buys and stores medicines and consumables.</td><td>Daily use, stock, expiry dates</td></tr>
              <tr><td><strong>Asha</strong>, medical coder</td><td>Turns diagnoses and procedures into standard codes for bills and claims.</td><td>Claim errors and delays</td></tr>
              <tr><td>Quality manager</td><td>Runs audits and incident reports. Prepares for NABH accreditation.</td><td>Infection rates, incidents, audit scores</td></tr>
            </tbody>
          </table>
          <p><strong>NABH</strong> is the National Accreditation Board for Hospitals &amp; Healthcare Providers. It sets quality and safety standards that Indian hospitals can choose to meet. You will meet it again in the quality lesson.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to map your patient flow</h3>
          <p>A simple first use of AI is to map your own patient flow and list where time is lost. Give it the steps you know. Never give it real patient names or records.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Why are patients unhappy in my hospital?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a hospital operations consultant.
        Our made-up patient spent 75 min waiting for the doctor,
        90 min for reports, 3.5 hours for a bed and 6.5 hours to leave.
        1. List the hand-offs between teams that could cause each delay.
        2. For each hand-off, name one number we could track in our HIS.
        3. Put the delays in order: which one affects the most patients?</code></pre>
          <p>The AI can suggest causes, but it does not know your hospital. Vikram must walk the route himself and check each idea with the teams.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the inpatient journey in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps for an admitted patient in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Registration: the patient gets a UHID and a token</li>
              <li data-order="2">The doctor sees the patient and orders tests</li>
              <li data-order="3">The doctor advises admission</li>
              <li data-order="4">The admission desk gives a bed</li>
              <li data-order="5">Care in the ward, ICU or OT</li>
              <li data-order="6">The doctor decides the patient can go home</li>
              <li data-order="7">Discharge summary, final bill and medicines, then the patient leaves</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draw a simple patient flow map for your hospital or clinic and list the likely waiting points. Use steps and times only. Do not add any patient details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a hospital operations consultant. Explain in simple English.

        My place: [Tarang Multispeciality Hospital, a 200-bed private hospital].
        Busy season: [monsoon fever and dengue season, September].
        Main complaints: [long OPD waits, patients waiting in emergency for a bed, late discharges].

        Our steps (made-up average times):
        [Registration 15 min wait; doctor 60 min wait; lab report 90 min; bed after admission advice 3 hours; discharge from doctor's decision to leaving 6 hours].

        Please:
        1. Draw the patient flow as a numbered text list, from arrival to leaving, for OPD and for admitted patients.
        2. Mark each waiting point and the teams involved in its hand-off.
        3. For each waiting point, suggest one number to track and where it may come from (for example the HIS).
        4. Suggest the two waiting points to fix first, and why.
        5. List 3 questions I should ask the staff before I believe any of this.
        Do not invent numbers that are not in my data. Say clearly where you are guessing.</pre>
            <ul class="ai-try-checks">
              <li>Does the flow include both the OPD route and the admitted route?</li>
              <li>Does each waiting point name a hand-off between teams?</li>
              <li>Did it keep to your times and not invent new figures?</li>
              <li>Are the suggested numbers ones your HIS can really give you?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Care happens in clinics and wards, but waiting happens between teams. To improve operations, map the whole patient journey first. Then measure the hand-offs where time is lost.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Where AI Helps in Operations</h1>
        </div>
        <p class="lc-lead">AI assistants such as Claude can save hospital managers many hours. They can draft reports, suggest rosters, spot patterns in numbers and write clear notices. But they can also get sums wrong, invent rules and leak private data if you use them carelessly. In this lesson you will learn five jobs where AI helps in operations, the main risks, and the rule that runs through this course: <strong>AI drafts, people check, managers decide</strong>.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A workflow: your data with totals and no names goes to an AI assistant, which drafts and does sums. You check the numbers and rules. A manager decides. Then you act and track the result. AI helps with forecasts, roster drafts, report drafts, notices and SOPs, and feedback themes. Risks to catch: wrong numbers, made-up facts, patient privacy and unfair rosters.">
            <defs><marker id="ho2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">AI drafts, people check, managers decide</text>
              <rect x="20" y="44" width="128" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="84" y="68" font-weight="700">Your data</text>
              <text x="84" y="88" font-size="11" fill="#9b99b8">totals, no names</text>
              <rect x="168" y="44" width="128" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="232" y="68" font-weight="700">AI assistant</text>
              <text x="232" y="88" font-size="11" fill="#9b99b8">drafts and sums</text>
              <rect x="316" y="44" width="128" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="68" font-weight="700">You check</text>
              <text x="380" y="88" font-size="11" fill="#9b99b8">numbers and rules</text>
              <rect x="464" y="44" width="128" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="528" y="68" font-weight="700">Manager decides</text>
              <text x="528" y="88" font-size="11" fill="#9b99b8">MS, nursing head</text>
              <rect x="612" y="44" width="128" height="60" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="676" y="68" font-weight="700">Act and track</text>
              <text x="676" y="88" font-size="11" fill="#9b99b8">measure the result</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ho2a)">
                <line x1="150" y1="74" x2="164" y2="74"/><line x1="298" y1="74" x2="312" y2="74"/>
                <line x1="446" y1="74" x2="460" y2="74"/><line x1="594" y1="74" x2="608" y2="74"/>
              </g>
              <text x="20" y="140" font-size="12" fill="#9b99b8" text-anchor="start">AI helps with:</text>
              <rect x="20" y="150" width="128" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="84" y="175">Forecasts</text>
              <rect x="168" y="150" width="128" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="232" y="175">Roster drafts</text>
              <rect x="316" y="150" width="128" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="380" y="175">Report drafts</text>
              <rect x="464" y="150" width="128" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="528" y="175">Notices, SOPs</text>
              <rect x="612" y="150" width="128" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="676" y="175">Feedback themes</text>
              <text x="20" y="226" font-size="12" fill="#9b99b8" text-anchor="start">Risks to catch:</text>
              <rect x="20" y="236" width="165" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="102" y="259" font-weight="700" fill="#f9a8d4">Wrong numbers</text>
              <text x="102" y="278" font-size="11" fill="#9b99b8">recheck every sum</text>
              <rect x="205" y="236" width="165" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="287" y="259" font-weight="700" fill="#f9a8d4">Made-up facts</text>
              <text x="287" y="278" font-size="11" fill="#9b99b8">rules, clauses, studies</text>
              <rect x="390" y="236" width="165" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="472" y="259" font-weight="700" fill="#f9a8d4">Patient privacy</text>
              <text x="472" y="278" font-size="11" fill="#9b99b8">no real patient data</text>
              <rect x="575" y="236" width="165" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="657" y="259" font-weight="700" fill="#f9a8d4">Unfair rosters</text>
              <text x="657" y="278" font-size="11" fill="#9b99b8">same staff, extra nights</text>
              <text x="380" y="318" font-size="11" fill="#9b99b8">AI supports operations. Clinicians make every clinical decision.</text>
            </g>
          </svg>
          <figcaption>AI speeds up the drafting and the sums. People check the output, and managers make the decision and own it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five jobs where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Example at Tarang</th><th>What AI does</th><th>What a person must do</th></tr></thead>
            <tbody>
              <tr><td><strong>Forecasting</strong></td><td>How many fever patients will come to OPD in the next 4 weeks?</td><td>Finds the trend in weekly totals. Suggests a range, not one number.</td><td>Check the maths. Add local knowledge, such as a late monsoon or a dengue alert from the city.</td></tr>
              <tr><td><strong>Scheduling</strong></td><td>A first draft of the October nurse roster</td><td>Fills shifts using the rules you give it: shift lengths, leave, night limits.</td><td>Sister Mary checks fairness, skills and staffing norms. She approves the final roster.</td></tr>
              <tr><td><strong>Reports</strong></td><td>Vikram's monthly operations report</td><td>Turns a table of numbers into a short summary and chart ideas.</td><td>Check every number against the HIS report. Remove any claim the data does not support.</td></tr>
              <tr><td><strong>Drafting</strong></td><td>A notice on new OPD timings, or an SOP (standard operating procedure: a written step-by-step way of doing a task)</td><td>Writes a clear first draft in English, Hindi or Marathi.</td><td>Check facts and translation with a fluent speaker. Get approval before you publish.</td></tr>
              <tr><td><strong>Text analysis</strong></td><td>300 patient feedback comments with names removed</td><td>Groups comments into themes, such as "waiting", "billing" or "cleanliness".</td><td>Read a sample yourself. Check that the themes and counts are right.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The risks, and how to handle them</h3>
          <ul class="lc-list">
            <li><strong>Wrong numbers.</strong> AI can make mistakes in sums and percentages. Recheck every number in a spreadsheet before it goes into a report.</li>
            <li><strong>Made-up facts.</strong> AI may invent a NABH clause number, a government rule or a study. Always check rules in the official documents. Never quote a source you have not opened yourself.</li>
            <li><strong>Patient privacy.</strong> Never paste real patient names, phone numbers, ABHA numbers or records into a public AI tool. India's DPDP Act 2023 (Digital Personal Data Protection Act) and its 2025 Rules protect personal data. Use only the AI tools your hospital has approved. Ask your IT or data protection lead.</li>
            <li><strong>Unfairness.</strong> A roster draft may give the same people all the night shifts. Check who gets the hard shifts.</li>
            <li><strong>Clinical decisions.</strong> Operations AI should not diagnose or choose treatment. Doctors decide and sign. In India, software that diagnoses or treats can count as a medical device under the CDSCO Medical Devices Rules, 2017.</li>
          </ul>
          <p>This course gives general education only. It is not medical or legal advice. Check the current rules with your hospital's legal or compliance team.</p>
        </div>
        <div class="lc-card">
          <h3>Weak prompt, better prompt</h3>
          <p>Vikram wants a first draft of the September report for Dr Farida.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write our hospital's monthly report.</code></pre>
          <p>The AI has no data, so it will invent numbers that look real.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are writing for the medical superintendent of a 200-bed hospital.
        September 2026 totals (made-up): bed occupancy 86.0%, average length
        of stay 4.3 days, OPD patients seen 10,010, average OPD wait 45.9 min,
        OT utilisation 67.5%, 40 surgeries cancelled on the day.
        1. Write a 150-word summary in plain English.
        2. List the 3 numbers that need action first, and why.
        3. Use only these numbers. If something is missing, write "data needed".</code></pre>
          <p>Even with the better prompt, Vikram checks each sentence against the numbers. The AI may still describe a change as "big" or "worse" without any past data to compare.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: who does what?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each task. Can AI draft it for a person to check, must a person decide, or should it never go into a public AI tool?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="draft" data-label="AI drafts, a person checks"></div>
              <div data-sorter-target="bucket" data-bucket="decide" data-label="A person decides"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never in a public AI tool"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="draft" data-why="A notice is a good drafting job. A person checks the timings and approves it before it is put up.">Draft a notice about new OPD timings</li>
              <li data-bucket="draft" data-why="With names removed, AI can group comments into themes. A person reads a sample to check them.">Group 300 feedback comments (names removed) into themes</li>
              <li data-bucket="draft" data-why="AI can find the trend in weekly totals. A person checks the maths and adds local knowledge.">Forecast next month's fever OPD visits from weekly totals</li>
              <li data-bucket="decide" data-why="Rosters affect people's lives and patient safety. The nursing head decides, using AI only as a draft.">Choose which nurses work extra night shifts in October</li>
              <li data-bucket="decide" data-why="Cancelling surgery affects patients and doctors. Managers and surgeons decide together.">Decide whether to postpone planned surgeries during the dengue peak</li>
              <li data-bucket="never" data-why="Names and phone numbers are personal data. They must stay in the hospital's approved systems.">Paste the discharge list with patient names and phone numbers</li>
              <li data-bucket="never" data-why="A lab report with a name is private health data. Do not upload it to a public chatbot.">Upload a named patient's lab report to a free chatbot</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to help you choose your first AI project in operations. It will rate each idea for value and risk.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an adviser on safe use of AI in hospital operations. Explain in simple English.

        My hospital: [Tarang Multispeciality Hospital, 200 beds].
        My role: [operations manager].
        Our problems: [long OPD waits, beds full in the monsoon, medicine stock-outs, a slow monthly report].
        AI tools we are allowed to use: [one hospital-approved AI assistant; no patient data may be pasted into it].

        Please suggest 6 ways AI could help with these problems. For each one, make a table row with:
        - the task in one line
        - the data it needs (totals or de-identified data only)
        - value: high, medium or low
        - risk: high, medium or low, and the main risk
        - who must check the output, and who decides
        Then pick the best first project: high value, low risk, data we already have.
        Do not include any task where AI makes a diagnosis or treatment decision.
        Do not invent rules or statistics. If a rule may apply, say "check with our compliance team".</pre>
            <ul class="ai-try-checks">
              <li>Does every idea use only totals or de-identified data?</li>
              <li>Does each row name a person who checks and a person who decides?</li>
              <li>Did it avoid clinical decisions, such as diagnosis or treatment?</li>
              <li>Does the first project really use data you already have?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is fast at drafts and sums, but it cannot take responsibility. Keep patient data out of public tools, check every number and rule, and let the right manager make the final decision.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Hospital Operations Metrics</h1>
        </div>
        <p class="lc-lead">You cannot improve what you do not measure. A few standard numbers tell you how well beds, OPD and operation theatres are working. In this lesson you will learn six of them: <strong>bed occupancy rate, ALOS, bed turnover, OPD waiting time, no-show rate and OT utilisation</strong>. You will work out each one with Tarang Multispeciality Hospital's September 2026 data, with the exact formula and a spreadsheet formula. You will also learn the common mistakes that AI tools and people make with these numbers. All the data is made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A dashboard for Tarang Multispeciality Hospital, September 2026, made-up data. Bed occupancy rate 86.0 percent, 5,160 patient days divided by 6,000 available bed days. ALOS 4.3 days, 5,160 patient days divided by 1,200 discharges. Bed turnover 6.0 patients per bed, 1,200 discharges divided by 200 beds. Average OPD wait 45.9 minutes from registration to doctor. No-show rate 16.2 percent, 723 divided by 4,470 booked. OT utilisation 67.5 percent, 561.6 used hours divided by 832 scheduled hours.">
            <g font-family="inherit" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Tarang operations dashboard, September 2026 (made-up data)</text>
              <rect x="20" y="42" width="230" height="110" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="36" y="66" font-size="12" fill="#9b99b8">Bed occupancy rate</text>
              <text x="36" y="100" font-size="26" font-weight="700" fill="#93c5fd">86.0%</text>
              <text x="36" y="124" font-size="11" fill="#9b99b8">5,160 patient days ÷</text>
              <text x="36" y="140" font-size="11" fill="#9b99b8">6,000 available bed days</text>
              <rect x="265" y="42" width="230" height="110" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="281" y="66" font-size="12" fill="#9b99b8">ALOS (average length of stay)</text>
              <text x="281" y="100" font-size="26" font-weight="700" fill="#c4b5fd">4.3 days</text>
              <text x="281" y="124" font-size="11" fill="#9b99b8">5,160 patient days ÷</text>
              <text x="281" y="140" font-size="11" fill="#9b99b8">1,200 discharges (incl. deaths)</text>
              <rect x="510" y="42" width="230" height="110" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="526" y="66" font-size="12" fill="#9b99b8">Bed turnover</text>
              <text x="526" y="100" font-size="26" font-weight="700" fill="#67e8f9">6.0 per bed</text>
              <text x="526" y="124" font-size="11" fill="#9b99b8">1,200 discharges ÷ 200 beds</text>
              <text x="526" y="140" font-size="11" fill="#9b99b8">in the month</text>
              <rect x="20" y="166" width="230" height="110" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="36" y="190" font-size="12" fill="#9b99b8">Average OPD wait</text>
              <text x="36" y="224" font-size="26" font-weight="700" fill="#fcd34d">45.9 min</text>
              <text x="36" y="248" font-size="11" fill="#9b99b8">registration to doctor,</text>
              <text x="36" y="264" font-size="11" fill="#9b99b8">10,010 patients seen</text>
              <rect x="265" y="166" width="230" height="110" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="281" y="190" font-size="12" fill="#9b99b8">No-show rate</text>
              <text x="281" y="224" font-size="26" font-weight="700" fill="#f9a8d4">16.2%</text>
              <text x="281" y="248" font-size="11" fill="#9b99b8">723 no-shows ÷</text>
              <text x="281" y="264" font-size="11" fill="#9b99b8">4,470 appointments booked</text>
              <rect x="510" y="166" width="230" height="110" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="526" y="190" font-size="12" fill="#9b99b8">OT utilisation</text>
              <text x="526" y="224" font-size="26" font-weight="700" fill="#6ee7b7">67.5%</text>
              <text x="526" y="248" font-size="11" fill="#9b99b8">561.6 used hours ÷</text>
              <text x="526" y="264" font-size="11" fill="#9b99b8">832 scheduled hours</text>
              <text x="380" y="298" font-size="11" fill="#9b99b8" text-anchor="middle">Every number shows its formula, so anyone can check it.</text>
            </g>
          </svg>
          <figcaption>Six key numbers for one month. Each tile shows the formula and the data behind it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Bed numbers: occupancy, ALOS and turnover</h3>
          <p>First, one key term. <strong>Patient days</strong> (also called inpatient days) are the number of inpatients in beds at midnight, added up over every day of the month. <strong>Available bed days</strong> are beds × days. Tarang has 200 beds and September has 30 days, so it has 6,000 available bed days.</p>
          <table class="lc-table">
            <thead><tr><th>Ward</th><th>Beds</th><th>Patient days</th><th>Occupancy</th></tr></thead>
            <tbody>
              <tr><td>General Medicine</td><td>60</td><td>1,710</td><td>95.0%</td></tr>
              <tr><td>General Surgery</td><td>40</td><td>1,080</td><td>90.0%</td></tr>
              <tr><td>Obstetrics &amp; Gynaecology</td><td>24</td><td>504</td><td>70.0%</td></tr>
              <tr><td>Paediatrics</td><td>20</td><td>510</td><td>85.0%</td></tr>
              <tr><td>Orthopaedics</td><td>20</td><td>480</td><td>80.0%</td></tr>
              <tr><td>ICU</td><td>16</td><td>456</td><td>95.0%</td></tr>
              <tr><td>Private rooms</td><td>20</td><td>420</td><td>70.0%</td></tr>
              <tr><td><strong>Hospital</strong></td><td><strong>200</strong></td><td><strong>5,160</strong></td><td><strong>86.0%</strong></td></tr>
            </tbody>
          </table>
          <p>In September there were 1,212 admissions and 1,200 discharges. The discharges include 18 deaths. Always count deaths as discharges in these formulas.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Formula</th><th>Tarang, September</th></tr></thead>
            <tbody>
              <tr><td><strong>Bed occupancy rate</strong></td><td>Patient days ÷ available bed days × 100</td><td>5,160 ÷ 6,000 = <strong>86.0%</strong></td></tr>
              <tr><td><strong>ALOS</strong> (average length of stay)</td><td>Patient days ÷ discharges (including deaths)</td><td>5,160 ÷ 1,200 = <strong>4.3 days</strong></td></tr>
              <tr><td><strong>Bed turnover</strong></td><td>Discharges (including deaths) ÷ beds</td><td>1,200 ÷ 200 = <strong>6.0 patients per bed</strong> in the month</td></tr>
              <tr><td><strong>Turnover interval</strong></td><td>(Available bed days − patient days) ÷ discharges</td><td>840 ÷ 1,200 = <strong>0.7 days</strong>: an average bed was empty about 17 hours between patients</td></tr>
            </tbody>
          </table>
          <p>In a sheet with wards in rows 2 to 8, beds in column B and patient days in column C:</p>
          <pre><code>Ward occupancy (D2):   =C2/(B2*30)                          gives 0.95  (95.0%)
        Hospital occupancy:    =SUM(C2:C8)/(SUM(B2:B8)*30)          gives 0.86  (86.0%)
        ALOS:                  =SUM(C2:C8)/1200                     gives 4.3
        Bed turnover:          =1200/SUM(B2:B8)                     gives 6
        Turnover interval:     =(SUM(B2:B8)*30-SUM(C2:C8))/1200     gives 0.7</code></pre>
          <p><strong>A common mistake:</strong> <code>=AVERAGE(D2:D8)</code> gives 83.6%. That is wrong. It treats the 16-bed ICU the same as the 60-bed Medicine ward. Always divide the totals.</p>
          <p><strong>What the numbers mean.</strong> Many managers see occupancy above about 85–90% as a warning sign. It leaves few free beds for emergency patients. Medicine and ICU at 95% explain why fever patients waited in emergency for a bed.</p>
        </div>
        <div class="lc-card">
          <h3>OPD waiting time and no-show rate</h3>
          <p><strong>OPD waiting time</strong> here means the minutes from registration to the start of the consultation. Look at 10 made-up Medicine OPD patients from one Monday morning.</p>
          <table class="lc-table">
            <thead><tr><th>Token</th><th>Registered</th><th>Doctor started</th><th>Wait (min)</th></tr></thead>
            <tbody>
              <tr><td>M-01</td><td>09:05</td><td>09:32</td><td>27</td></tr>
              <tr><td>M-02</td><td>09:08</td><td>09:50</td><td>42</td></tr>
              <tr><td>M-03</td><td>09:12</td><td>10:05</td><td>53</td></tr>
              <tr><td>M-04</td><td>09:15</td><td>09:40</td><td>25</td></tr>
              <tr><td>M-05</td><td>09:20</td><td>10:35</td><td>75</td></tr>
              <tr><td>M-06</td><td>09:31</td><td>10:48</td><td>77</td></tr>
              <tr><td>M-07</td><td>09:40</td><td>09:58</td><td>18</td></tr>
              <tr><td>M-08</td><td>09:45</td><td>11:10</td><td>85</td></tr>
              <tr><td>M-09</td><td>09:52</td><td>11:24</td><td>92</td></tr>
              <tr><td>M-10</td><td>10:02</td><td>10:40</td><td>38</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Mean</strong> (average) wait: 532 ÷ 10 = <strong>53.2 min</strong>.</li>
            <li><strong>Median</strong> (middle value): sort the waits and take the middle. (42 + 53) ÷ 2 = <strong>47.5 min</strong>. A few very long waits pull the mean up, so report both.</li>
            <li><strong>Seen within 30 minutes:</strong> 3 of 10 = <strong>30%</strong>. Patients feel this number most.</li>
          </ul>
          <pre><code>Wait in minutes (D2):  =ROUND((C2-B2)*1440,0)            gives 27
        Mean:                  =AVERAGE(D2:D11)                  gives 53.2
        Median:                =MEDIAN(D2:D11)                   gives 47.5
        Share within 30 min:   =COUNTIF(D2:D11,"&lt;=30")/COUNT(D2:D11)   gives 0.3</code></pre>
          <p>Times in a sheet are parts of a day, so × 1440 turns them into minutes (24 × 60 = 1440). For the whole month, Tarang's average wait across 10,010 OPD patients was <strong>45.9 min</strong>. That is a weighted average: each department counts by its number of patients.</p>
          <p>The <strong>no-show rate</strong> is the share of booked appointments where the patient did not come. Formula: no-shows ÷ appointments booked × 100.</p>
          <table class="lc-table">
            <thead><tr><th>Department</th><th>Booked</th><th>No-shows</th><th>No-show rate</th></tr></thead>
            <tbody>
              <tr><td>General Medicine</td><td>1,300</td><td>247</td><td>19.0%</td></tr>
              <tr><td>Paediatrics</td><td>700</td><td>98</td><td>14.0%</td></tr>
              <tr><td>Obstetrics &amp; Gynaecology</td><td>900</td><td>108</td><td>12.0%</td></tr>
              <tr><td>Orthopaedics</td><td>650</td><td>104</td><td>16.0%</td></tr>
              <tr><td>General Surgery</td><td>520</td><td>78</td><td>15.0%</td></tr>
              <tr><td>ENT</td><td>400</td><td>88</td><td>22.0%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>4,470</strong></td><td><strong>723</strong></td><td><strong>16.2%</strong></td></tr>
            </tbody>
          </table>
          <p><strong>A common mistake:</strong> dividing by all patients seen (723 ÷ 10,010 = 7.2%). Walk-ins never had an appointment, so they do not belong in this formula.</p>
        </div>
        <div class="lc-card">
          <h3>OT utilisation and cancellations</h3>
          <p>Each of Tarang's 4 operation theatres (OTs) has 8 scheduled hours on each of 26 working days: 208 hours. <strong>Used hours</strong> run from the patient entering the theatre to leaving it, inside the scheduled session.</p>
          <ul class="lc-list">
            <li><strong>OT utilisation</strong> = used hours ÷ scheduled hours × 100.</li>
            <li><strong>Day-of-surgery cancellation rate</strong> = cases cancelled on the day ÷ cases scheduled × 100.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Theatre</th><th>Scheduled hrs</th><th>Used hrs</th><th>Utilisation</th><th>Cases scheduled</th><th>Cancelled on the day</th><th>Cancellation rate</th></tr></thead>
            <tbody>
              <tr><td>OT1 General Surgery</td><td>208</td><td>166.4</td><td>80.0%</td><td>132</td><td>12</td><td>9.1%</td></tr>
              <tr><td>OT2 Orthopaedics</td><td>208</td><td>145.6</td><td>70.0%</td><td>88</td><td>10</td><td>11.4%</td></tr>
              <tr><td>OT3 Obstetrics &amp; Gynaecology</td><td>208</td><td>135.2</td><td>65.0%</td><td>114</td><td>4</td><td>3.5%</td></tr>
              <tr><td>OT4 ENT, Eye and shared</td><td>208</td><td>114.4</td><td>55.0%</td><td>110</td><td>14</td><td>12.7%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>832</strong></td><td><strong>561.6</strong></td><td><strong>67.5%</strong></td><td><strong>444</strong></td><td><strong>40</strong></td><td><strong>9.0%</strong></td></tr>
            </tbody>
          </table>
          <p>Use <code>=SUM(C2:C5)/SUM(B2:B5)</code> for the total. It gives 0.675. Here the simple average of the four rates is also 67.5%, but only because every OT has the same scheduled hours. When hours differ, the simple average is wrong.</p>
          <p><strong>What the numbers mean.</strong> OT4 uses only 55% of its time and cancels 12.7% of its cases. That points to a list-planning problem, not a lack of theatres. Of the 40 cancellations, 9 happened because no ICU or ward bed was free. So full beds also block surgery.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the AI's mistake</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Vikram">Here are our 7 wards with beds and September patient days. What was the hospital's bed occupancy rate?</li>
              <li data-kind="answer" data-label="AI assistant">The ward rates are 95, 90, 70, 85, 80, 95 and 70%. The average is 83.6%.</li>
              <li data-kind="tool" data-label="Spreadsheet">Vikram types =SUM(C2:C8)/(SUM(B2:B8)*30) in a sheet with the same data.</li>
              <li data-kind="result" data-label="Result">0.86, so the occupancy is 86.0%, not 83.6%.</li>
              <li data-kind="warn" data-label="Mistake">The AI averaged the ward percentages. The 16-bed ICU counted as much as the 60-bed Medicine ward.</li>
              <li data-kind="user" data-label="Vikram">Use total patient days ÷ total available bed days. Then give ALOS using 1,200 discharges, including 18 deaths. Show the working.</li>
              <li data-kind="answer" data-label="AI assistant">Occupancy: 5,160 ÷ (200 × 30) = 86.0%. ALOS: 5,160 ÷ 1,200 = 4.3 days.</li>
              <li data-kind="check" data-label="Vikram checks">Both numbers match his sheet. He writes the formula and the HIS report name under each number in his report.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to work out all six metrics with formulas. Use the sample data, or your own monthly totals with no patient details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a hospital operations analyst. Explain in simple English.

        Hospital: [Tarang Multispeciality Hospital, 200 beds]. Month: [September 2026, 30 days].
        Made-up data:
        - Wards (beds, patient days): [Medicine 60, 1710; Surgery 40, 1080; Obs and Gynae 24, 504; Paediatrics 20, 510; Orthopaedics 20, 480; ICU 16, 456; Private 20, 420]
        - Discharges including deaths: [1200]
        - OPD appointments booked: [4470]. No-shows: [723].
        - OT scheduled hours: [832]. OT used hours: [561.6].

        Please:
        1. Work out bed occupancy for each ward and the whole hospital, ALOS, bed turnover, no-show rate and OT utilisation.
        2. For each, give the formula in words, the working and a Google Sheets formula.
        3. For the hospital occupancy, divide total patient days by total bed days. Do not average the ward rates.
        4. Name the 2 numbers that need attention first, and one question to ask about each.
        Round to one decimal place. Do not invent any other numbers.</pre>
            <ul class="ai-try-checks">
              <li>Hospital occupancy should be 86.0%, not 83.6%.</li>
              <li>ALOS should be 4.3 days and bed turnover 6.0 per bed.</li>
              <li>No-show rate should be 723 ÷ 4,470 = 16.2%.</li>
              <li>OT utilisation should be 561.6 ÷ 832 = 67.5%.</li>
              <li>Type one of its formulas into a sheet and check the result yourself.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every metric is a formula with a clear top and bottom number. Write the formula next to the number, divide totals instead of averaging percentages, and check AI's working in a spreadsheet before you report it.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Working with Hospital Data</h1>
        </div>
        <p class="lc-lead">Every number in operations starts as rows of data in the hospital information system (HIS). The data is often messy. Ward names are spelt three ways, dates come in different formats and some rows appear twice. It is also private: it describes real patients. In this lesson you will learn how to get a useful export from the HIS and clean it in a spreadsheet. You will also learn to remove anything that identifies a patient, and to use AI safely. At Tarang Multispeciality Hospital, Vikram does this every month before he builds his report.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Six steps: HIS export as CSV or Excel, de-identify to remove names and IDs, clean messy rows, check totals against the HIS, ask AI using totals only, and report with the medical superintendent's sign-off. Below, a messy row with a name, a UHID and the ward written as Gen Med becomes a clean row with a code, the ward written as General Medicine, an age band and a length of stay of 4 days.">
            <defs><marker id="ho4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">From HIS export to a safe, clean data set</text>
              <rect x="20" y="42" width="104" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="72" y="67" font-weight="700">HIS export</text>
              <text x="72" y="87" font-size="11" fill="#9b99b8">CSV or Excel</text>
              <rect x="143" y="42" width="104" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="195" y="67" font-weight="700">De-identify</text>
              <text x="195" y="87" font-size="11" fill="#9b99b8">no names or IDs</text>
              <rect x="266" y="42" width="104" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="318" y="67" font-weight="700">Clean</text>
              <text x="318" y="87" font-size="11" fill="#9b99b8">fix messy rows</text>
              <rect x="389" y="42" width="104" height="60" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="441" y="67" font-weight="700">Check totals</text>
              <text x="441" y="87" font-size="11" fill="#9b99b8">match the HIS</text>
              <rect x="512" y="42" width="104" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="564" y="67" font-weight="700">Ask AI</text>
              <text x="564" y="87" font-size="11" fill="#9b99b8">totals only</text>
              <rect x="635" y="42" width="104" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="687" y="67" font-weight="700">Report</text>
              <text x="687" y="87" font-size="11" fill="#9b99b8">MS signs off</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ho4a)">
                <line x1="126" y1="72" x2="139" y2="72"/><line x1="249" y1="72" x2="262" y2="72"/><line x1="372" y1="72" x2="385" y2="72"/>
                <line x1="495" y1="72" x2="508" y2="72"/><line x1="618" y1="72" x2="631" y2="72"/>
              </g>
              <rect x="20" y="136" width="330" height="140" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="185" y="160" font-weight="700" fill="#f9a8d4">Messy export (made up)</text>
              <g font-size="11" text-anchor="start">
                <text x="36" y="190">Ramesh P. · UHID 204931 · Gen Med</text>
                <text x="36" y="212">admitted 01/09/2026 · left 05/09/2026</text>
                <text x="36" y="234">Sunita K. · MEDICINE · left (blank)</text>
                <text x="36" y="256" fill="#9b99b8">names, IDs, three ward spellings</text>
              </g>
              <line x1="354" y1="206" x2="402" y2="206" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ho4a)"/>
              <rect x="410" y="136" width="330" height="140" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="575" y="160" font-weight="700" fill="#6ee7b7">Clean and de-identified</text>
              <g font-size="11" text-anchor="start">
                <text x="426" y="190">P-101 · General Medicine · age 45–54</text>
                <text x="426" y="212">admitted 01-09-2026 · left 05-09-2026 · LOS 4</text>
                <text x="426" y="234">P-103 · General Medicine · still admitted</text>
                <text x="426" y="256" fill="#9b99b8">codes, one spelling, real dates</text>
              </g>
            </g>
          </svg>
          <figcaption>Remove what identifies patients first, then clean and check. Only totals or de-identified rows go to an AI tool, and only an approved one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Getting a useful HIS export</h3>
          <p>Most HIS software can export a report as a CSV or Excel file. CSV (comma-separated values) is a plain file of rows that any spreadsheet can open. Ask the HIS or IT team for the report you need. Ask only for the columns you need.</p>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>Example</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td>UHID (unique hospital ID)</td><td>204931</td><td>It identifies the patient. Replace it with a code before analysis.</td></tr>
              <tr><td>Admission date and time</td><td>03/09/2026 14:20</td><td>Is it DD/MM or MM/DD? Is it a real date or text?</td></tr>
              <tr><td>Discharge date and time</td><td>07/09/2026 11:05</td><td>Blank for patients still in hospital. Does it include deaths?</td></tr>
              <tr><td>Ward and bed</td><td>Gen Med, bed 14</td><td>Different spellings of the same ward. Transfers between wards.</td></tr>
              <tr><td>Payer</td><td>Cash, insurance, PM-JAY</td><td>PM-JAY is the government health cover scheme. Payer names may be spelt many ways.</td></tr>
            </tbody>
          </table>
          <p>Keep a <strong>data dictionary</strong>: a short list of each column, what it means and its allowed values. For example: "Discharge = all patients who left, including deaths and LAMA (left against medical advice)". Agree it with the HIS team once, and every monthly report will count the same way.</p>
        </div>
        <div class="lc-card">
          <h3>Cleaning the data in a spreadsheet</h3>
          <p>Here are 7 rows from a made-up September export. The patient IDs are already replaced with codes.</p>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Ward</th><th>Admitted</th><th>Discharged</th><th>Payer</th></tr></thead>
            <tbody>
              <tr><td>P-101</td><td>Gen Med</td><td>01/09/2026</td><td>05/09/2026</td><td>Cash</td></tr>
              <tr><td>P-102</td><td>General Medicine</td><td>02/09/2026</td><td>04/09/2026</td><td>PM-JAY</td></tr>
              <tr><td>P-103</td><td>MEDICINE</td><td>03/09/2026</td><td></td><td>Insurance</td></tr>
              <tr><td>P-102</td><td>General Medicine</td><td>02/09/2026</td><td>04/09/2026</td><td>PM-JAY</td></tr>
              <tr><td>P-104</td><td>Surgery</td><td>04/09/2026</td><td>02/09/2026</td><td>Cash</td></tr>
              <tr><td>P-105</td><td>Gen Surgery</td><td>2026-09-05</td><td>09/09/2026</td><td>Insurance</td></tr>
              <tr><td>P-106</td><td>Paeds</td><td>06/09/2026</td><td>08/09/2026</td><td>Cash</td></tr>
            </tbody>
          </table>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Rows</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>Same ward, many spellings</td><td>P-101, P-103, P-104, P-105, P-106</td><td>Make a "WardMap" sheet: messy name in column A, standard name in column B. Then use <code>=VLOOKUP(TRIM(B2),WardMap!A:B,2,FALSE)</code>. TRIM removes extra spaces.</td></tr>
              <tr><td>Duplicate row</td><td>P-102 twice</td><td><code>=COUNTIFS(A:A,A2,C:C,C2)&gt;1</code> shows TRUE for both copies. Delete one after checking.</td></tr>
              <tr><td>Dates stored as text</td><td>any</td><td><code>=ISNUMBER(C2)</code> is FALSE for text. For DD/MM/YYYY text use <code>=DATE(VALUE(RIGHT(C2,4)),VALUE(MID(C2,4,2)),VALUE(LEFT(C2,2)))</code>.</td></tr>
              <tr><td>Mixed date format</td><td>P-105</td><td>2026-09-05 is 5 September. Fix it by hand, then check the whole column is one format.</td></tr>
              <tr><td>Blank discharge</td><td>P-103</td><td>The patient is still admitted. Do not count this row in discharges or length of stay.</td></tr>
              <tr><td>Discharge before admission</td><td>P-104</td><td>Impossible. Do not guess. Check the record in the HIS and fix it at the source.</td></tr>
            </tbody>
          </table>
          <p>With real dates in C and D, length of stay (LOS) in days is <code>=D2-C2</code>. Flag problems with <code>=IF(D2="","still admitted",IF(D2&lt;C2,"CHECK",D2-C2))</code>. After cleaning, P-101 stayed 4 days, P-102 2 days, P-105 4 days and P-106 2 days.</p>
          <p>Last, <strong>check totals</strong>. Count the rows after cleaning and compare with the HIS's own report. Tarang's September discharge report says 1,200. If your cleaned sheet says 1,187, find the missing rows before you report anything.</p>
        </div>
        <div class="lc-card">
          <h3>Privacy and access</h3>
          <ul class="lc-list">
            <li><strong>Never paste real patient data into a public AI tool.</strong> This includes names, UHIDs, phone numbers, addresses and ABHA numbers (Ayushman Bharat Health Account: a health ID under the Ayushman Bharat Digital Mission, ABDM).</li>
            <li><strong>De-identify first.</strong> Replace IDs with codes. Keep the code key inside the HIS or a locked hospital file. Change exact birth dates to age bands, such as 45–54.</li>
            <li><strong>Remove free text.</strong> Doctors' notes and complaint comments often contain names and phone numbers.</li>
            <li><strong>Watch small numbers.</strong> "The only 92-year-old in ICU this week" can identify a person even without a name. Combine small groups.</li>
            <li><strong>Use the minimum data.</strong> For most operations reports, totals by ward and day are enough. You rarely need patient-level rows.</li>
            <li><strong>Control access.</strong> Give HIS access by role. Store exports on the hospital's approved drive, not on personal phones or chat groups. Delete old exports on schedule.</li>
            <li><strong>Know the law in general.</strong> India's DPDP Act 2023 covers personal data, including health data. Its Rules were notified in November 2025 and come into force in phases. Ask your data protection or legal team what applies. This is not legal advice.</li>
          </ul>
          <p>Only use AI tools your hospital has approved for this kind of data. Even then, share totals or de-identified rows only.</p>
        </div>
        <div class="lc-card">
          <h3>Asking AI to help with cleaning</h3>
          <p>You do not need to give AI your real file. Give it the column names and a few made-up rows that show the same problems.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here is our admissions file. Clean it. [pastes 1,200 real rows with names]</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I have an admissions export with columns Code, Ward, Admitted,
        Discharged, Payer. Dates should be DD/MM/YYYY. Here are 5 made-up
        rows that show our usual problems: [rows]. Give me:
        1. A list of cleaning steps in order.
        2. A Google Sheets formula for each step.
        3. Checks I should run after cleaning.</code></pre>
          <p>Then you do the cleaning in your own sheet, inside the hospital's system. Test each formula on a few rows first. AI may suggest a formula that works for one date format but not another.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what can stay in the data?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Vikram is preparing de-identified data for an analysis. Sort each field.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep as it is"></div>
              <div data-sorter-target="bucket" data-bucket="change" data-label="Change to a safer form"></div>
              <div data-sorter-target="bucket" data-bucket="remove" data-label="Remove"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="remove" data-why="A name identifies the patient directly and is not needed for operations numbers.">Patient name</li>
              <li data-bucket="remove" data-why="The ABHA number is a health ID. It identifies the person.">ABHA number</li>
              <li data-bucket="remove" data-why="A phone number identifies the person and is not needed for analysis.">Mobile number</li>
              <li data-bucket="keep" data-why="Ward names are needed for occupancy and do not identify a patient on their own.">Ward</li>
              <li data-bucket="keep" data-why="Length of stay in days is the core number for ALOS and does not name anyone.">Length of stay in days</li>
              <li data-bucket="change" data-why="An exact birth date can identify a person. An age band like 45–54 is enough.">Exact date of birth</li>
              <li data-bucket="change" data-why="Replace the UHID with a code. Keep the code key locked inside the hospital.">UHID</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find the problems in a small made-up export and suggest spreadsheet fixes. Use this sample, or made-up rows that copy your own problems.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a hospital data analyst who teaches spreadsheet skills. Explain in simple English.

        Here is a made-up HIS export of admissions from [Tarang Multispeciality Hospital, September 2026]. Codes replace patient IDs. There are no names.
        Columns: Code, Ward, Admitted, Discharged, Payer. Dates should be DD/MM/YYYY.
        [P-101, Gen Med, 01/09/2026, 05/09/2026, Cash
        P-102, General Medicine, 02/09/2026, 04/09/2026, PM-JAY
        P-103, MEDICINE, 03/09/2026, , Insurance
        P-102, General Medicine, 02/09/2026, 04/09/2026, PM-JAY
        P-104, Surgery, 04/09/2026, 02/09/2026, Cash
        P-105, Gen Surgery, 2026-09-05, 09/09/2026, Insurance
        P-106, Paeds, 06/09/2026, 08/09/2026, Cash]

        Please:
        1. List every data problem, row by row.
        2. Suggest a fix for each, with a Google Sheets formula where it helps.
        3. Show the cleaned table with a length-of-stay column (discharge date minus admission date).
        4. Mark the rows I must check in the HIS instead of fixing myself.
        5. Give a 5-point privacy checklist for sharing hospital data with an AI tool.
        Do not guess missing or impossible dates.</pre>
            <ul class="ai-try-checks">
              <li>Did it find the duplicate P-102 row?</li>
              <li>Did it flag P-104 (discharge before admission) for checking in the HIS, without guessing a date?</li>
              <li>Did it treat P-103 as still admitted, with no length of stay?</li>
              <li>Lengths of stay should be P-101: 4, P-102: 2, P-105: 4, P-106: 2 days.</li>
              <li>Test its formulas on a copy of the rows in your own sheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good reports need clean data, and clean data needs rules everyone agrees on. De-identify first, fix problems at the source when you can, check your totals against the HIS, and keep real patient data out of public AI tools.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">OPD Scheduling and Waiting Times</h1>
        </div>
        <p class="lc-lead">Long OPD waits are the most common complaint in many hospitals. Often the problem is not too few doctors. The problem is that most patients arrive in the first two hours. In this lesson you will learn how appointment slots, walk-ins and no-shows shape the queue. You will build a simple hour-by-hour queue table in a spreadsheet, plan better slots, and use reminders to cut no-shows. You will work with Tarang Multispeciality Hospital's Medicine OPD. In September it saw 4,160 patients, with an average wait of 58.6 minutes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Bar chart of Medicine OPD patients still waiting at the end of each hour on a made-up Monday. Now: 55 at 10:00, 60 at 11:00, 50 at 12:00, 30 at 13:00 and 5 at 14:00. With the plan: 9, 5, 5, 3 and 0.">
            <g font-family="inherit" fill="#e2e0f0">
              <text x="380" y="20" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Medicine OPD: patients still waiting at the end of each hour</text>
              <rect x="100" y="34" width="12" height="12" fill="#ec4899"/>
              <text x="118" y="45" font-size="11">Now: 5 doctors, most patients come early</text>
              <rect x="420" y="34" width="12" height="12" fill="#10b981"/>
              <text x="438" y="45" font-size="11">Plan: slots spread out, 6th doctor 09–11</text>
              <g stroke="#4b4a78" stroke-width="1">
                <line x1="80" y1="70" x2="720" y2="70"/><line x1="80" y1="136.7" x2="720" y2="136.7"/><line x1="80" y1="203.3" x2="720" y2="203.3"/>
              </g>
              <line x1="80" y1="270" x2="720" y2="270" stroke="#9b99b8" stroke-width="1.5"/>
              <g font-size="11" fill="#9b99b8" text-anchor="end">
                <text x="72" y="74">60</text><text x="72" y="140">40</text><text x="72" y="207">20</text><text x="72" y="274">0</text>
              </g>
              <g fill="#ec4899">
                <rect x="100" y="86.7" width="40" height="183.3"/><rect x="228" y="70" width="40" height="200"/>
                <rect x="356" y="103.3" width="40" height="166.7"/><rect x="484" y="170" width="40" height="100"/>
                <rect x="612" y="253.3" width="40" height="16.7"/>
              </g>
              <g fill="#10b981">
                <rect x="148" y="240" width="40" height="30"/><rect x="276" y="253.3" width="40" height="16.7"/>
                <rect x="404" y="253.3" width="40" height="16.7"/><rect x="532" y="260" width="40" height="10"/>
                <rect x="660" y="268" width="40" height="2"/>
              </g>
              <g font-size="11" text-anchor="middle">
                <text x="120" y="81" fill="#f9a8d4">55</text><text x="248" y="64" fill="#f9a8d4">60</text>
                <text x="376" y="97" fill="#f9a8d4">50</text><text x="504" y="164" fill="#f9a8d4">30</text>
                <text x="632" y="247" fill="#f9a8d4">5</text>
                <text x="168" y="234" fill="#6ee7b7">9</text><text x="296" y="247" fill="#6ee7b7">5</text>
                <text x="424" y="247" fill="#6ee7b7">5</text><text x="552" y="254" fill="#6ee7b7">3</text>
                <text x="680" y="262" fill="#6ee7b7">0</text>
              </g>
              <g font-size="12" text-anchor="middle">
                <text x="144" y="290">09–10</text><text x="272" y="290">10–11</text><text x="400" y="290">11–12</text>
                <text x="528" y="290">12–13</text><text x="656" y="290">13–14</text>
              </g>
              <text x="380" y="318" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up Monday · 155 patients · about 10 minutes per consultation</text>
            </g>
          </svg>
          <figcaption>The same 155 patients and nearly the same doctors. Spreading arrivals across the morning shrinks the end-of-hour queue from 60 people to 9 or fewer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why OPD queues form</h3>
          <p>A few terms first:</p>
          <ul class="lc-list">
            <li><strong>Slot:</strong> a fixed appointment time, such as 10:20 to 10:30.</li>
            <li><strong>Walk-in:</strong> a patient who comes without an appointment. At Tarang, 74.7% of Medicine OPD patients are walk-ins.</li>
            <li><strong>Capacity:</strong> how many patients the doctors can see in an hour. Doctors × (60 ÷ minutes per patient).</li>
            <li><strong>Queue:</strong> the patients registered and still waiting for the doctor.</li>
          </ul>
          <p>On a made-up Monday, Tarang's Medicine OPD runs 09:00 to 14:00 with 5 doctors. Each consultation takes about 10 minutes, so capacity is 5 × 6 = 30 patients an hour. 40 patients are already waiting at 09:00.</p>
          <table class="lc-table">
            <thead><tr><th>Hour</th><th>Arrivals</th><th>Capacity</th><th>Seen</th><th>Still waiting at the end</th></tr></thead>
            <tbody>
              <tr><td>Before 09:00</td><td>40</td><td></td><td></td><td>40</td></tr>
              <tr><td>09–10</td><td>45</td><td>30</td><td>30</td><td>55</td></tr>
              <tr><td>10–11</td><td>35</td><td>30</td><td>30</td><td>60</td></tr>
              <tr><td>11–12</td><td>20</td><td>30</td><td>30</td><td>50</td></tr>
              <tr><td>12–13</td><td>10</td><td>30</td><td>30</td><td>30</td></tr>
              <tr><td>13–14</td><td>5</td><td>30</td><td>30</td><td>5</td></tr>
            </tbody>
          </table>
          <p>Over the whole morning, the doctors can see 150 patients and 155 come. So the total is almost enough. But 85 patients arrive by 10:00. At 11:00, 60 people are waiting. A new patient then waits roughly 60 ÷ 30 = 2 hours. This is a rough estimate, not an exact time.</p>
          <p>Build this table in a sheet. Put arrivals in B, capacity in C, seen in D and waiting in E. Put the starting queue (40) in E1. Then fill these formulas down:</p>
          <pre><code>Seen (D2):     =MIN(C2,E1+B2)       gives 30
        Waiting (E2):  =E1+B2-D2            gives 55</code></pre>
        </div>
        <div class="lc-card">
          <h3>A better slot plan</h3>
          <p>Vikram and Dr Farida test a plan on paper first. It has four changes:</p>
          <ul class="lc-list">
            <li><strong>Spread appointment slots</strong> evenly from 09:00 to 14:00. Give each patient a time, not just a day.</li>
            <li><strong>Keep walk-in space every hour.</strong> For example, book about 60% of each hour's capacity and keep the rest for walk-ins.</li>
            <li><strong>Move report reviews</strong> to later slots. Patients who only need to show test results do not need a 09:00 slot.</li>
            <li><strong>Add a 6th doctor from 09:00 to 11:00</strong> on Mondays, the busiest day.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Hour</th><th>Arrivals</th><th>Capacity</th><th>Seen</th><th>Still waiting at the end</th></tr></thead>
            <tbody>
              <tr><td>Before 09:00</td><td>10</td><td></td><td></td><td>10</td></tr>
              <tr><td>09–10</td><td>35</td><td>36</td><td>36</td><td>9</td></tr>
              <tr><td>10–11</td><td>32</td><td>36</td><td>36</td><td>5</td></tr>
              <tr><td>11–12</td><td>30</td><td>30</td><td>30</td><td>5</td></tr>
              <tr><td>12–13</td><td>28</td><td>30</td><td>30</td><td>3</td></tr>
              <tr><td>13–14</td><td>20</td><td>30</td><td>23</td><td>0</td></tr>
            </tbody>
          </table>
          <p>With the same 155 patients, no more than 9 people are waiting at the end of any hour. Before you trust the plan, check these things:</p>
          <ul class="lc-list">
            <li><strong>Do doctors start on time?</strong> A doctor who starts at 09:40 removes 4 patients of capacity in the first hour.</li>
            <li><strong>Is 10 minutes realistic?</strong> Measure real consultation times for two weeks. New patients often take longer than follow-ups.</li>
            <li><strong>Will patients follow the slots?</strong> Many people come early to be safe. Clear times on the token and the reminder message help.</li>
            <li><strong>Are very sick patients safe?</strong> A patient with danger signs must not wait in any OPD queue. Staff send them to emergency at once. Clinical staff decide who is urgent.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>No-shows, reminders and overbooking</h3>
          <p>A <strong>no-show</strong> is a booked patient who does not come. In September, Tarang's Medicine OPD had a no-show rate of 19.0%, and ENT had 22.0%. Each no-show is an empty slot that a walk-in could have used.</p>
          <ul class="lc-list">
            <li><strong>Send reminders.</strong> Send an SMS or WhatsApp message a day before and on the morning of the visit. Use the hospital's approved messaging service. Send only to patients who agreed to get messages.</li>
            <li><strong>Make it easy to cancel.</strong> A patient who cancels frees the slot for someone else.</li>
            <li><strong>Keep messages private.</strong> Do not put a diagnosis or test result in a reminder. Other people may see the phone screen.</li>
            <li><strong>Overbook with care.</strong> With 100 slots and a 19% no-show rate, about 81 patients come. If you book 110, about 89 come. But on some days nearly everyone comes, and the queue grows. Overbook only a little, and review the numbers every week.</li>
          </ul>
          <p>A safe reminder message looks like this (all details made up):</p>
          <pre><code>Tarang Hospital: Your OPD appointment is on Tue 6 Oct at 10:20.
        Please arrive by 10:05 and bring your old reports.
        To cancel or change, reply C or call [hospital number].</code></pre>
          <p>AI can draft this message in Marathi or Hindi too. A fluent speaker must check the translation before you use it. Test reminders as a pilot, for example in ENT for four weeks. Then compare the no-show rate with the four weeks before.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to plan the queue</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How do I reduce OPD waiting time?</code></pre>
          <p>You will get a general list that fits any hospital.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Our Medicine OPD runs 09:00-14:00 with 5 doctors at about 10 min per patient.
        Arrivals by hour (made-up): before 9: 40, 9-10: 45, 10-11: 35, 11-12: 20,
        12-13: 10, 13-14: 5. Build an hour-by-hour queue table.
        Rule: seen = the smaller of capacity and (queue + arrivals).
        Then suggest a slot plan that keeps the queue under 15.
        Show the new table and every assumption you made.</code></pre>
          <p>Always rebuild the AI's table in your own sheet. Check that each hour follows the rule. Then test the plan in real life on one day of the week before you change the whole OPD.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a queue plan in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Vikram's steps for improving the Medicine OPD in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Collect two to four weeks of arrivals by hour and real consultation times from the HIS</li>
              <li data-order="2">Work out the doctors' capacity for each hour</li>
              <li data-order="3">Build the queue table and find the hours when arrivals are more than capacity</li>
              <li data-order="4">Design the slots, walk-in space and doctor timings</li>
              <li data-order="5">Set up reminders with an easy way to cancel</li>
              <li data-order="6">Run a four-week pilot in one OPD</li>
              <li data-order="7">Compare waiting times and no-shows with the weeks before, then adjust</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a queue table and a slot plan for one OPD. Use the sample numbers, or your own hourly totals.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an OPD operations analyst for a hospital in India. Explain in simple English.

        OPD: [Medicine OPD, Tarang Multispeciality Hospital]. Day: [a typical Monday].
        Hours: [09:00 to 14:00]. Doctors: [5]. Average consultation: [10] minutes.
        Patients waiting at opening: [40].
        Arrivals by hour (made-up): [09-10: 45, 10-11: 35, 11-12: 20, 12-13: 10, 13-14: 5].
        No-show rate for appointments: [19%].

        Please:
        1. Work out capacity per hour (doctors x 60 / minutes per patient).
        2. Build an hour-by-hour table: arrivals, capacity, seen, still waiting. Rule: seen = the smaller of capacity and (waiting + arrivals).
        3. Give the Google Sheets formulas for the seen and waiting columns.
        4. Suggest a slot plan (appointments and walk-in space per hour) that keeps the queue under 15. Show the new table.
        5. Draft a short, private reminder SMS in English and [Marathi]. No diagnosis in the message.
        6. List what to measure in a four-week pilot.
        7. Add one line: patients with danger signs go straight to emergency, not the queue.
        State every assumption. Do not invent other numbers.</pre>
            <ul class="ai-try-checks">
              <li>Capacity should be 30 patients an hour.</li>
              <li>The first table should show 55, 60, 50, 30 and 5 still waiting.</li>
              <li>Does each hour of the new plan follow the same rule?</li>
              <li>Is the reminder free of any diagnosis? Ask a fluent speaker to check the Marathi.</li>
              <li>Does the plan say that very sick patients go to emergency, not the queue?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> OPD waits usually come from when patients arrive, not only how many doctors you have. Measure arrivals by hour, spread the slots, cut no-shows with reminders, and test every plan with a pilot before you roll it out.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Bed Management and Discharge Planning</h1>
        </div>
        <p class="lc-lead">When wards are full, patients wait in emergency, surgeries are cancelled and staff are stressed. Often the hospital does not need more beds. It needs beds to become free at the right time of day. In this lesson you will forecast tomorrow's beds, build an hour-by-hour bed table, find what slows discharges, and use AI to plan earlier discharges. You will work with Tarang Multispeciality Hospital. In September its Medicine ward and ICU were both 95% full.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Bar chart of the times of day when 1,200 made-up patients left Tarang Hospital in September 2026. Before 10:00: 60. 10:00 to 12:00: 180. 12:00 to 14:00: 300. 14:00 to 16:00: 360. 16:00 to 18:00: 216. After 18:00: 84. Only 240 patients, 20%, left by noon, but most bed requests arrive between 10:00 and 14:00.">
            <defs>
              <marker id="ho6a" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker>
            </defs>
            <g font-family="inherit" fill="#e2e0f0">
              <text x="380" y="22" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">When 1,200 patients left Tarang Hospital, September 2026</text>
              <rect x="150" y="38" width="12" height="12" fill="#10b981"/>
              <text x="168" y="49" font-size="11">Left by noon: 240 (20%)</text>
              <rect x="420" y="38" width="12" height="12" fill="#ec4899"/>
              <text x="438" y="49" font-size="11">Left after noon: 960 (80%)</text>
              <g stroke="#4b4a78" stroke-width="1">
                <line x1="80" y1="80" x2="720" y2="80"/><line x1="80" y1="140" x2="720" y2="140"/><line x1="80" y1="200" x2="720" y2="200"/>
              </g>
              <line x1="80" y1="260" x2="720" y2="260" stroke="#9b99b8" stroke-width="1.5"/>
              <g font-size="11" fill="#9b99b8" text-anchor="end">
                <text x="72" y="84">30%</text><text x="72" y="144">20%</text><text x="72" y="204">10%</text><text x="72" y="264">0%</text>
              </g>
              <g fill="#10b981">
                <rect x="101" y="230" width="64" height="30"/><rect x="208" y="170" width="64" height="90"/>
              </g>
              <g fill="#ec4899">
                <rect x="314" y="110" width="64" height="150"/><rect x="421" y="80" width="64" height="180"/>
                <rect x="528" y="152" width="64" height="108"/><rect x="634" y="218" width="64" height="42"/>
              </g>
              <g font-size="11" text-anchor="middle">
                <text x="133" y="224" fill="#6ee7b7">60</text><text x="240" y="164" fill="#6ee7b7">180</text>
                <text x="346" y="104" fill="#f9a8d4">300</text><text x="453" y="74" fill="#f9a8d4">360</text>
                <text x="560" y="146" fill="#f9a8d4">216</text><text x="666" y="212" fill="#f9a8d4">84</text>
              </g>
              <line x1="293" y1="78" x2="293" y2="260" stroke="#e2e0f0" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="293" y="278" font-size="11" fill="#e2e0f0" text-anchor="middle">12:00</text>
              <line x1="192" y1="72" x2="394" y2="72" stroke="#f59e0b" stroke-width="2" marker-start="url(#ho6a)" marker-end="url(#ho6a)"/>
              <text x="293" y="64" font-size="11" fill="#fcd34d" text-anchor="middle">Most bed requests arrive</text>
              <g font-size="12" text-anchor="middle">
                <text x="133" y="296">Before 10</text><text x="240" y="296">10–12</text><text x="346" y="296">12–14</text>
                <text x="453" y="296">14–16</text><text x="560" y="296">16–18</text><text x="666" y="296">After 18</text>
              </g>
              <text x="380" y="320" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up data · share of all discharges, including deaths, by time of leaving</text>
            </g>
          </svg>
          <figcaption>Beds become free mostly in the afternoon. New patients need them from late morning. This gap, not the number of beds alone, is what keeps patients waiting in emergency.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Planning tomorrow's beds</h3>
          <p>A few terms first:</p>
          <ul class="lc-list">
            <li><strong>Bed census:</strong> the number of patients in beds at a given time. The midnight census is used for patient days.</li>
            <li><strong>EDD (expected date of discharge):</strong> the day the doctor expects the patient to go home. The team sets it early in the stay and updates it daily.</li>
            <li><strong>Boarding:</strong> a patient who has been told they need admission but is still waiting in emergency for a bed.</li>
            <li><strong>Discharge-by-noon rate:</strong> the share of discharges where the patient leaves the ward by 12:00.</li>
          </ul>
          <p>In September, Tarang's General Medicine ward (60 beds) and ICU (16 beds) were both 95% full. That is about 57 of 60 Medicine beds and 15.2 of 16 ICU beds filled on an average night. Many bed managers see occupancy above about 85–90% as a warning sign. There is little room left for a busy day.</p>
          <p>Each afternoon, Vikram makes a simple forecast for the next day. Made-up numbers for Medicine:</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Where it comes from</th><th>Number</th></tr></thead>
            <tbody>
              <tr><td>Patients in Medicine beds tonight</td><td>HIS bed board</td><td>58</td></tr>
              <tr><td>Expected admissions tomorrow</td><td>Average for this weekday over the last 4 weeks</td><td>+ 13</td></tr>
              <tr><td>Expected discharges tomorrow</td><td>Patients with tomorrow as their EDD</td><td>− 11</td></tr>
              <tr><td><strong>Expected census tomorrow night</strong></td><td>58 + 13 − 11</td><td><strong>60 (100% of 60 beds)</strong></td></tr>
            </tbody>
          </table>
          <p>In a sheet with tonight's census in B2, admissions in C2 and discharges in D2, use <code>=B2+C2-D2</code>. It gives 60. Then <code>=(B2+C2-D2)/60</code> gives 1, which is 100%. A full ward tomorrow means Vikram must act today. For example, he can confirm tomorrow's discharges and check for free beds in other wards.</p>
        </div>
        <div class="lc-card">
          <h3>Why discharge by noon matters</h3>
          <p>At Tarang, only 240 of 1,200 patients (20%) left by noon in September. Here is a made-up Tuesday in Medicine. The ward starts at 08:00 with 1 free bed. 13 patients need a Medicine bed that day, and 13 patients go home.</p>
          <table class="lc-table">
            <thead><tr><th>Hours</th><th>Bed requests</th><th>Discharges now</th><th>Waiting for a bed (now)</th><th>Discharges in the plan</th><th>Waiting for a bed (plan)</th></tr></thead>
            <tbody>
              <tr><td>08–10</td><td>2</td><td>0</td><td>1</td><td>1</td><td>0</td></tr>
              <tr><td>10–12</td><td>5</td><td>2</td><td>4</td><td>4</td><td>1</td></tr>
              <tr><td>12–14</td><td>3</td><td>3</td><td>4</td><td>3</td><td>1</td></tr>
              <tr><td>14–16</td><td>2</td><td>4</td><td>2</td><td>3</td><td>0</td></tr>
              <tr><td>16–18</td><td>1</td><td>3</td><td>0</td><td>1</td><td>0</td></tr>
              <tr><td>18–20</td><td>0</td><td>1</td><td>0</td><td>1</td><td>0</td></tr>
            </tbody>
          </table>
          <p>Now, 2 of 13 patients (15.4%) leave by noon, and up to 4 patients wait in emergency for a bed. In the plan, 5 of 13 (38.5%) leave by noon. No more than 1 patient waits at the end of any two-hour block. The number of discharges is the same. Only the timing changes.</p>
          <p>Build this in a sheet. Put requests in B, discharges in C, patients placed in D, free beds in E and waiting in F. Put the starting values in row 1: 1 free bed in E1 and 0 waiting in F1. Then fill down:</p>
          <pre><code>Placed (D2):   =MIN(E1+C2,F1+B2)    gives 1
        Free (E2):     =E1+C2-D2            gives 0
        Waiting (F2):  =F1+B2-D2            gives 1</code></pre>
          <p>This is a simple model. Real beds also need cleaning before the next patient. Men's and women's beds, and isolation beds, cannot always be swapped. Add these rules before you trust the result.</p>
        </div>
        <div class="lc-card">
          <h3>Finding the bottlenecks</h3>
          <p>A <strong>bottleneck</strong> is the slowest step that holds up everything after it. Vikram timed 10 made-up Medicine discharges. He measured from the doctor's discharge order to the patient leaving the ward.</p>
          <table class="lc-table">
            <thead><tr><th>Patient</th><th>Order</th><th>Left ward</th><th>Minutes</th><th>Main cause of delay</th></tr></thead>
            <tbody>
              <tr><td>D-01</td><td>09:30</td><td>12:10</td><td>160</td><td>Discharge summary</td></tr>
              <tr><td>D-02</td><td>10:00</td><td>15:30</td><td>330</td><td>Insurance approval</td></tr>
              <tr><td>D-03</td><td>10:15</td><td>13:05</td><td>170</td><td>Final bill</td></tr>
              <tr><td>D-04</td><td>10:40</td><td>17:10</td><td>390</td><td>Insurance approval</td></tr>
              <tr><td>D-05</td><td>11:00</td><td>13:20</td><td>140</td><td>Pharmacy medicines</td></tr>
              <tr><td>D-06</td><td>11:30</td><td>14:45</td><td>195</td><td>Discharge summary</td></tr>
              <tr><td>D-07</td><td>12:00</td><td>14:10</td><td>130</td><td>Family or transport</td></tr>
              <tr><td>D-08</td><td>12:20</td><td>18:00</td><td>340</td><td>Insurance approval</td></tr>
              <tr><td>D-09</td><td>13:00</td><td>15:30</td><td>150</td><td>Final bill</td></tr>
              <tr><td>D-10</td><td>14:00</td><td>16:40</td><td>160</td><td>Discharge summary</td></tr>
            </tbody>
          </table>
          <p>The mean is 216.5 minutes (about 3.6 hours) and the median is 165 minutes. The 3 insurance cases took 353 minutes on average. The other 7 took about 158 minutes. None of the 10 patients left by noon. Only one order was written before 10:00.</p>
          <p>Use <code>=ROUND((C2-B2)*1440,0)</code> for the minutes, as in the OPD lesson. Then <code>=AVERAGE(D2:D11)</code> gives 216.5 and <code>=MEDIAN(D2:D11)</code> gives 165.</p>
          <ul class="lc-list">
            <li><strong>Summary delays:</strong> doctors can start the discharge summary the day before, using the EDD. AI in the hospital's approved system can draft parts of it. The treating doctor checks, corrects and signs it.</li>
            <li><strong>Insurance delays:</strong> send the discharge papers to the insurer or TPA (third-party administrator: a company that handles claims for insurers) early. IRDAI's 2024 health insurance master circular sets a 3-hour limit for the insurer's final cashless approval at discharge. Check the current rules.</li>
            <li><strong>Bill and pharmacy delays:</strong> prepare the draft bill and take-home medicines the evening before for patients with tomorrow's EDD.</li>
            <li><strong>ICU bottleneck:</strong> patients ready to leave the ICU often wait for a ward bed. Then the ICU cannot take new patients. In September, 9 surgeries were cancelled on the day because no ICU or ward bed was free.</li>
          </ul>
          <p>Doctors decide when a patient is ready to go home. Operations work makes the steps after that decision faster. It must never push a patient out early.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI for discharge planning</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How can we discharge patients faster?</code></pre>
          <p>You will get a general list that fits any hospital.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Medicine ward, 60 beds, 95% full. Made-up sample of 10 discharges:
        order-to-leaving times 130-390 min, mean 216.5, median 165.
        Causes: insurance 3 cases (mean 353 min), summary 3, bill 2,
        pharmacy 1, family 1. Only 2 of 13 patients leave by noon.
        Suggest 5 changes, one per cause. For each: who does it,
        what they do the day before, and one number to track weekly.
        Do not suggest anything that changes a medical decision.</code></pre>
          <p>Use the AI's list as a starting point for a meeting. Dr Farida, Sister Mary, billing and pharmacy then choose what to try. Use only totals and codes in the prompt. Never paste patient names, diagnoses or insurance details into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Vikram's morning bed meeting</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="HIS bed board">Vikram opens the bed board at 08:00 on a busy Tuesday.</li>
              <li data-kind="result" data-label="Bed board">Medicine has 1 free bed. 13 patients have today as their EDD. The ICU has 1 free bed.</li>
              <li data-kind="user" data-label="Vikram">Here are today's totals, with codes only. Make a checklist for the 10:00 bed meeting to get 5 Medicine patients home by noon.</li>
              <li data-kind="answer" data-label="AI">A checklist. Confirm the 13 EDDs on the ward round. List who is waiting for summaries, bills, medicines or insurance. Give each task an owner and a time.</li>
              <li data-kind="warn" data-label="Catch this">The AI also suggests "discharge the patients with the longest stays first". That is a medical decision. Doctors decide who is ready, not the length of stay.</li>
              <li data-kind="check" data-label="Sister Mary">She checks the list with the ward nurses. Two patients are not ready, so the team moves them to tomorrow's list.</li>
              <li data-kind="result" data-label="By 12:00">5 patients have left. The patients waiting in emergency get Medicine beds early in the afternoon. Vikram records the discharge-by-noon rate for the day.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build an hour-by-hour bed table for one ward and suggest a discharge-by-noon plan. Use the sample numbers, or your own ward's totals.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a bed management adviser for a hospital in India. Explain in simple English.

        Ward: [General Medicine, Tarang Multispeciality Hospital, 60 beds, 95% average occupancy].
        Day: [a typical Tuesday]. Free beds at 08:00: [1]. Patients waiting for a bed at 08:00: [0].
        Made-up data by two-hour block (08-10, 10-12, 12-14, 14-16, 16-18, 18-20):
        - Bed requests: [2, 5, 3, 2, 1, 0]
        - Discharges now: [0, 2, 3, 4, 3, 1]
        Main discharge delays: [insurance approval, discharge summary, final bill].

        Please:
        1. Build a table: requests, discharges, placed, free beds, waiting. Rule: placed = the smaller of (free beds + discharges) and (waiting + requests).
        2. Give the Google Sheets formulas for the placed, free and waiting columns.
        3. Suggest new discharge times with the same total, so that no more than 1 patient waits. Show the new table.
        4. For each delay, suggest one step to do the day before, with an owner.
        5. List 3 numbers to track every week.
        Do not change any medical decision. Doctors decide who is ready to go home. Do not invent other numbers.</pre>
            <ul class="ai-try-checks">
              <li>The first table should show 1, 4, 4, 2, 0 and 0 patients waiting.</li>
              <li>Do the new discharge times still add up to 13?</li>
              <li>Does each row of the new table follow the same rule?</li>
              <li>Are the steps about paperwork, bills and medicines, not about sending patients home early?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Full wards are often a timing problem. Forecast tomorrow's census every afternoon, prepare discharges the day before, and measure the discharge-by-noon rate. Doctors decide when a patient is ready; operations makes everything after that decision fast.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Forecasting Patient Demand</h1>
        </div>
        <p class="lc-lead">Every monsoon, fever and dengue patients fill OPDs, beds and labs in many Indian cities. If you know roughly how many will come, you can plan doctors, beds, nurses and test kits in advance. In this lesson you will build a simple seasonal forecast in a spreadsheet. You will use two past seasons and this year's numbers. Then you will use AI to question your assumptions. You will forecast October 2026 fever visits and dengue cases for Tarang Multispeciality Hospital.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Line chart of monthly fever OPD visits at Tarang Hospital, made-up data. 2024: June 760, July 1,380, August 2,050, September 2,590, October 2,380, November 1,050. 2025: 820, 1,540, 2,310, 2,760, 2,240, 1,120. September 2026: 2,870. October 2026 forecast: about 2,480, with a range of 2,330 to 2,640.">
            <g font-family="inherit" fill="#e2e0f0">
              <text x="380" y="20" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Fever OPD visits per month, Tarang Hospital</text>
              <line x1="120" y1="38" x2="144" y2="38" stroke="#3b82f6" stroke-width="3"/>
              <text x="150" y="42" font-size="11">2024</text>
              <line x1="210" y1="38" x2="234" y2="38" stroke="#8b5cf6" stroke-width="3"/>
              <text x="240" y="42" font-size="11">2025</text>
              <circle cx="310" cy="38" r="5" fill="#ec4899"/>
              <text x="320" y="42" font-size="11">Sep 2026 (actual)</text>
              <circle cx="460" cy="38" r="5" fill="#f59e0b"/>
              <text x="470" y="42" font-size="11">Oct 2026 forecast and range</text>
              <g stroke="#4b4a78" stroke-width="1">
                <line x1="80" y1="70" x2="720" y2="70"/><line x1="80" y1="136.7" x2="720" y2="136.7"/><line x1="80" y1="203.3" x2="720" y2="203.3"/>
              </g>
              <line x1="80" y1="270" x2="720" y2="270" stroke="#9b99b8" stroke-width="1.5"/>
              <g font-size="11" fill="#9b99b8" text-anchor="end">
                <text x="72" y="74">3,000</text><text x="72" y="141">2,000</text><text x="72" y="207">1,000</text><text x="72" y="274">0</text>
              </g>
              <polyline points="110,219.3 220,178.0 330,133.3 440,97.3 550,111.3 660,200.0" fill="none" stroke="#3b82f6" stroke-width="2.5"/>
              <polyline points="110,215.3 220,167.3 330,116.0 440,86.0 550,120.7 660,195.3" fill="none" stroke="#8b5cf6" stroke-width="2.5"/>
              <line x1="440" y1="78.7" x2="550" y2="104.8" stroke="#f59e0b" stroke-width="2" stroke-dasharray="5 4"/>
              <line x1="550" y1="94.2" x2="550" y2="114.7" stroke="#f59e0b" stroke-width="2"/>
              <line x1="543" y1="94.2" x2="557" y2="94.2" stroke="#f59e0b" stroke-width="2"/>
              <line x1="543" y1="114.7" x2="557" y2="114.7" stroke="#f59e0b" stroke-width="2"/>
              <circle cx="440" cy="78.7" r="5" fill="#ec4899"/>
              <circle cx="550" cy="104.8" r="5" fill="#f59e0b"/>
              <text x="430" y="62" font-size="11" fill="#f9a8d4" text-anchor="end">2026: 2,870</text>
              <text x="566" y="92" font-size="11" fill="#fcd34d">Forecast ≈ 2,480</text>
              <text x="566" y="106" font-size="11" fill="#fcd34d">Range 2,330–2,640</text>
              <g font-size="12" text-anchor="middle">
                <text x="110" y="290">Jun</text><text x="220" y="290">Jul</text><text x="330" y="290">Aug</text>
                <text x="440" y="290">Sep</text><text x="550" y="290">Oct</text><text x="660" y="290">Nov</text>
              </g>
              <text x="380" y="312" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up data · Medicine and Paediatrics OPD visits with fever as the main complaint</text>
            </g>
          </svg>
          <figcaption>Both past seasons peak in September and fall in October. 2026 is running higher than both years. So the October forecast starts from the past October average and adds an uplift.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What the past seasons show</h3>
          <p>A few terms first:</p>
          <ul class="lc-list">
            <li><strong>Seasonal pattern:</strong> a rise and fall that repeats at the same time each year, such as monsoon fevers.</li>
            <li><strong>Forecast:</strong> a careful estimate of a future number, based on data and stated assumptions. It is never a promise.</li>
            <li><strong>Uplift:</strong> how much higher (or lower) this year is than past years for the same month. An uplift of 1.07 means 7% higher.</li>
            <li><strong>Range:</strong> a low and a high estimate. A range is more honest than one number.</li>
          </ul>
          <p>Vikram has two past seasons from the HIS (made-up data):</p>
          <table class="lc-table">
            <thead><tr><th>Month</th><th>2024 fever visits</th><th>2024 dengue</th><th>2025 fever visits</th><th>2025 dengue</th><th>2026 fever visits</th></tr></thead>
            <tbody>
              <tr><td>June</td><td>760</td><td>4</td><td>820</td><td>6</td><td></td></tr>
              <tr><td>July</td><td>1,380</td><td>22</td><td>1,540</td><td>28</td><td></td></tr>
              <tr><td>August</td><td>2,050</td><td>74</td><td>2,310</td><td>96</td><td></td></tr>
              <tr><td>September</td><td>2,590</td><td>160</td><td>2,760</td><td>188</td><td>2,870</td></tr>
              <tr><td>October</td><td>2,380</td><td>171</td><td>2,240</td><td>142</td><td>?</td></tr>
              <tr><td>November</td><td>1,050</td><td>37</td><td>1,120</td><td>41</td><td></td></tr>
            </tbody>
          </table>
          <p>"Dengue" means confirmed cases (NS1 or IgM test positive) seen at Tarang. In September 2026 there were 2,870 fever visits and 206 confirmed dengue cases.</p>
          <p>The weekly 2026 numbers also help. In the last three weeks, fever visits grew by 7.4%, then 5.3%, then only 1.7% (610 to 655, 690 and 702). Growth is slowing, so the peak may be near. But in 2024, dengue peaked in October, not September. Fever and dengue do not always peak together.</p>
        </div>
        <div class="lc-card">
          <h3>A simple seasonal forecast in a sheet</h3>
          <p>Put the months in column A (June in row 2 to November in row 7). Put 2024 in B, 2025 in C and 2026 in D. September is row 5 and October is row 6. D5 holds 2,870.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>1. Average of past Octobers</td><td><code>=AVERAGE(B6:C6)</code></td><td>2,310</td></tr>
              <tr><td>2. Uplift: this September ÷ average past September</td><td><code>=D5/AVERAGE(B5:C5)</code></td><td>1.073 (7.3% higher)</td></tr>
              <tr><td>3. Forecast: step 1 × step 2</td><td><code>=AVERAGE(B6:C6)*D5/AVERAGE(B5:C5)</code></td><td>2,478, so about 2,480</td></tr>
              <tr><td>4. Low end: this September × the lower Oct/Sep ratio</td><td><code>=D5*MIN(B6/B5,C6/C5)</code></td><td>2,329</td></tr>
              <tr><td>5. High end: this September × the higher Oct/Sep ratio</td><td><code>=D5*MAX(B6/B5,C6/C5)</code></td><td>2,637</td></tr>
            </tbody>
          </table>
          <p>So Vikram forecasts about 2,480 fever visits in October 2026, with a range of about 2,330 to 2,640. October 2026 has 27 OPD days (Sundays are 4, 11, 18 and 25 October). That is about 92 fever patients per OPD day.</p>
          <p>The same method works for dengue. The average of past Octobers is (171 + 142) ÷ 2 = 156.5. The uplift is 206 ÷ 174 = 1.18. The forecast is about 185 confirmed cases, with a range of about 156 to 220.</p>
          <p>Now turn the forecast into resources. These steps use assumptions, so write them down:</p>
          <ul class="lc-list">
            <li><strong>Beds:</strong> in 2026 so far, 121 of 305 dengue patients were admitted (39.7%). So about 73 dengue admissions are likely (185 × 0.397). If each stays about 4 days (an assumption to check), that is about 290 bed days. That is about 9 to 10 beds every night in October.</li>
            <li><strong>Test kits:</strong> in September, 1,200 NS1 tests were used for 2,870 fever visits (0.42 per visit). For the forecast of 2,478 visits, that is about 1,036 tests. The pharmacy lesson uses this number.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Using AI to question your assumptions</h3>
          <p>Every forecast rests on assumptions, such as "this year will follow the usual shape". AI is good at listing assumptions you forgot. It is not good at knowing your city this week.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How many dengue patients will we get in October?</code></pre>
          <p>The AI has no data about your hospital. It may invent a number that sounds sure.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Made-up data. Fever visits: Sep 2024 2,590, Oct 2024 2,380;
        Sep 2025 2,760, Oct 2025 2,240; Sep 2026 2,870.
        My forecast for Oct 2026: past October average x (Sep 2026 /
        past September average) = about 2,480, range 2,330-2,640.
        1. Check my maths. 2. List every assumption in this method.
        3. For each, say what could make October higher or lower.
        4. Say which local sources I should check. Do not guess numbers.</code></pre>
          <p>Then check the ideas against real local facts. Look at rainfall this year and dengue alerts from your city's health department. Ask doctors what they see in the wards. If the AI says "dengue cases in our district rose 30% this year", do not use it. It may have invented it. Find the official report yourself.</p>
          <p>A forecast is a planning tool, not a clinical tool. It helps you plan staff and stock. It never decides how a patient is tested or treated.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a demand forecast</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Vikram's steps for forecasting October demand in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Export monthly fever visits and dengue cases for the past two seasons from the HIS</li>
              <li data-order="2">Check the data: same definitions each year, no missing months, totals match the HIS reports</li>
              <li data-order="3">Work out the past October average and this year's uplift in a sheet</li>
              <li data-order="4">Calculate the forecast and a low-to-high range</li>
              <li data-order="5">Ask AI to check the maths and list the assumptions</li>
              <li data-order="6">Check the assumptions with doctors and local health department alerts</li>
              <li data-order="7">Turn the forecast into beds, staff and test kits, then compare with actual numbers every week</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a seasonal forecast for next month and challenge its assumptions. Use the sample numbers, or your own monthly totals.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a hospital planning analyst in India. Explain in simple English.

        Hospital: [Tarang Multispeciality Hospital]. Measure: [fever OPD visits per month].
        Made-up data:
        - [2024: September 2590, October 2380]
        - [2025: September 2760, October 2240]
        - [2026: September 2870]
        Month to forecast: [October 2026], with [27] OPD days.

        Please:
        1. Forecast = average of past Octobers x (this September / average of past Septembers). Show the working.
        2. Give a low and high range: this September x the lowest and highest past October/September ratio.
        3. Give the Google Sheets formulas, with past years in columns B and C, this year in D, September in row 5 and October in row 6.
        4. Work out patients per OPD day.
        5. List 5 assumptions in this method and what could make each one wrong.
        6. Name the kinds of local information I should check. Do not invent any local statistics.
        Round to whole patients. Say clearly that this is a planning estimate.</pre>
            <ul class="ai-try-checks">
              <li>The forecast should be about 2,478, with a range of about 2,329 to 2,637.</li>
              <li>Patients per OPD day should be about 92.</li>
              <li>Did it avoid quoting local dengue figures that it cannot know?</li>
              <li>Type its formulas into a sheet and check that you get the same results.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A simple seasonal forecast is often enough: start from the same month in past years, adjust for how this year is running, and give a range. Write down every assumption, let AI question them, and check the forecast against actual numbers every week.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Staff Rostering</h1>
        </div>
        <p class="lc-lead">A roster decides who works which shift on which day. A good roster keeps enough skilled nurses with patients at all times. It also treats staff fairly, so people stay and do not burn out. Building one by hand can take a nursing head many hours every month. In this lesson you will work out how many nurses a ward needs, write clear roster rules, and use AI to draft a roster. Then you will check it for safety and fairness. The nursing head always makes the final decision.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Roster workflow in five steps: rules and needs, AI draft, checks, the nursing head decides, then publish and track. Checks include patients per nurse, rest after nights, fair nights and weekends, skills on every shift, and approved leave.">
            <defs>
              <marker id="ho8a" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <marker id="ho8b" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker>
            </defs>
            <g font-family="inherit" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd">From rules to a roster people can trust</text>
              <rect x="20" y="56" width="128" height="64" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="84" y="84" font-size="13" font-weight="700">Rules and needs</text>
              <text x="84" y="104" font-size="11" fill="#9b99b8">nurses per shift</text>
              <rect x="168" y="56" width="128" height="64" rx="8" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="232" y="84" font-size="13" font-weight="700">AI draft</text>
              <text x="232" y="104" font-size="11" fill="#9b99b8">codes, no names</text>
              <rect x="316" y="56" width="128" height="64" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="84" font-size="13" font-weight="700">Checks</text>
              <text x="380" y="104" font-size="11" fill="#9b99b8">sheet formulas</text>
              <rect x="464" y="56" width="128" height="64" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="528" y="84" font-size="13" font-weight="700">Sister Mary</text>
              <text x="528" y="104" font-size="11" fill="#9b99b8">decides and signs</text>
              <rect x="612" y="56" width="128" height="64" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="676" y="84" font-size="13" font-weight="700">Publish, track</text>
              <text x="676" y="104" font-size="11" fill="#9b99b8">swaps and gaps</text>
              <g stroke="#9b99b8" stroke-width="2">
                <line x1="148" y1="88" x2="166" y2="88" marker-end="url(#ho8a)"/>
                <line x1="296" y1="88" x2="314" y2="88" marker-end="url(#ho8a)"/>
                <line x1="444" y1="88" x2="462" y2="88" marker-end="url(#ho8a)"/>
                <line x1="592" y1="88" x2="610" y2="88" marker-end="url(#ho8a)"/>
              </g>
              <path d="M380,122 L380,150 L232,150 L232,124" fill="none" stroke="#f59e0b" stroke-width="2" stroke-dasharray="5 4" marker-end="url(#ho8b)"/>
              <text x="306" y="144" font-size="11" fill="#fcd34d">fix and redraft</text>
              <rect x="20" y="172" width="720" height="104" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="1.5"/>
              <text x="380" y="196" font-size="12" font-weight="700" fill="#fcd34d">What the checks look for</text>
              <rect x="40" y="212" width="130" height="44" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="105" y="238" font-size="11">Patients per nurse</text>
              <rect x="180" y="212" width="130" height="44" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="245" y="238" font-size="11">Rest after nights</text>
              <rect x="320" y="212" width="130" height="44" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="385" y="238" font-size="11">Fair nights</text>
              <rect x="460" y="212" width="130" height="44" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="525" y="238" font-size="11">Skills each shift</text>
              <rect x="600" y="212" width="120" height="44" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="660" y="238" font-size="11">Leave respected</text>
            </g>
          </svg>
          <figcaption>AI writes the first draft from clear rules. Spreadsheet checks catch broken rules and unfair patterns. The nursing head decides and signs the final roster.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a roster must do</h3>
          <p>A few terms first:</p>
          <ul class="lc-list">
            <li><strong>Shift:</strong> a block of duty. At Tarang: Morning 08:00–14:00, Evening 14:00–20:00, Night 20:00–08:00.</li>
            <li><strong>Patients per nurse:</strong> average patients in the ward ÷ nurses on the shift. You may also see it as a nurse-to-patient ratio, such as 1:6.</li>
            <li><strong>Skill mix:</strong> the mix of experience on a shift. For example, every shift needs at least one senior nurse.</li>
            <li><strong>Leave reserve:</strong> extra staff kept to cover leave, sickness and training.</li>
          </ul>
          <p>Here is Tarang's average September roster for three wards (made-up data):</p>
          <table class="lc-table">
            <thead><tr><th>Ward</th><th>Average patients</th><th>Nurses M / E / N</th><th>Patients per nurse M / E / N</th></tr></thead>
            <tbody>
              <tr><td>General Medicine</td><td>57.0</td><td>9 / 8 / 6</td><td>6.3 / 7.1 / 9.5</td></tr>
              <tr><td>General Surgery</td><td>36.0</td><td>6 / 5 / 4</td><td>6.0 / 7.2 / 9.0</td></tr>
              <tr><td>ICU</td><td>15.2</td><td>8 / 8 / 8</td><td>1.9 / 1.9 / 1.9</td></tr>
            </tbody>
          </table>
          <p>In a sheet, <code>=B2/E2</code> gives patients per nurse. For Medicine at night that is 57 ÷ 6 = 9.5. Medicine and Surgery nights are the thinnest shifts.</p>
          <p>Staffing norms in India come from Indian Nursing Council recommendations and NABH standards. They expect staffing to match how sick the patients are. ICUs need far more nurses per patient than general wards, often one nurse for one or two patients. Check the current documents. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>How many nurses does a ward need?</h3>
          <p>Start with duties, then turn them into people. For Tarang's Medicine ward:</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Working</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Nurses on duty each day</td><td>9 + 8 + 6</td><td>23 shifts</td></tr>
              <tr><td>Shifts each week</td><td>23 × 7</td><td>161 shifts</td></tr>
              <tr><td>Nurses needed if each works 6 shifts a week</td><td>161 ÷ 6 = 26.8</td><td>27 nurses</td></tr>
              <tr><td>Add a leave reserve (12% here, a made-up figure)</td><td>27 × 1.12 = 30.2</td><td>about 30 nurses</td></tr>
            </tbody>
          </table>
          <p>This is a first estimate. A night shift is 12 hours and a day shift is 6, so hours rules also matter. Your hospital's hours policy and labour rules decide the real number.</p>
          <p>Now suppose Sister Mary wants a 7th night nurse in Medicine during the dengue peak. Patients per nurse at night falls from 9.5 to 57 ÷ 7 = 8.1. That needs 7 more night shifts a week. So she must find the staff, or accept a gap somewhere else. That is her decision, with Dr Farida.</p>
        </div>
        <div class="lc-card">
          <h3>Rules, fairness and AI drafts</h3>
          <p>AI can draft a roster quickly if you give it clear rules. Split the rules into two kinds:</p>
          <ul class="lc-list">
            <li><strong>Hard rules</strong> must never break. For example: 6 nurses every Medicine night, no morning or evening shift the day after a night, and approved leave stays.</li>
            <li><strong>Preferences</strong> are wishes the roster tries to meet. For example, a nurse who likes evenings, or a request for one Sunday off.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a nurse roster for October.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a 4-week roster for nurses N01-N27 (codes only).
        Codes: M, E, N, O (off), L (leave). Every day needs 9 M, 8 E, 6 N.
        Hard rules: after N, the next day is N or O. Max 3 N in a row.
        Each nurse works at most 6 shifts a week. Leave: N05 L on 5-9 Oct.
        Preferences: N12 prefers E. Spread nights and Sundays evenly.
        Output a grid, then a table of N and Sunday shifts per nurse.</code></pre>
          <p>Always check the draft. AI often breaks a rule while it says it followed every rule. Vikram puts the grid in a sheet. Each nurse is a row, and the 28 days are in columns B to AC. Then he adds these checks:</p>
          <pre><code>Nights per nurse:          =COUNTIF(B2:AC2,"N")
        Night then day shift:      =IF(AND(B2="N",OR(C2="M",C2="E")),"Check","")
        Nurses on night, day 1:    =COUNTIF(B2:B28,"N")    should be 6</code></pre>
          <p>An AI draft for six nurses gave these nights in four weeks: Kavita 10, Joseph 9, Anil 8, Rekha 4, Priya 3 and Sunita 2. That is 36 nights, or 6 each if shared evenly. The draft follows every hard rule, but it is not fair. Sister Mary sends it back with a new rule: 5 to 7 nights each.</p>
          <p>Keep staff data private too. Use codes, not names, in public AI tools. Never add the health reason for a nurse's sick leave. Hours, overtime and rest rules come from labour laws and hospital policy. Check them with HR. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sort the roster rules</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each item for Tarang's October roster.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="hard" data-label="Hard rule"></div>
              <div data-sorter-target="bucket" data-bucket="pref" data-label="Preference"></div>
              <div data-sorter-target="bucket" data-bucket="decide" data-label="Manager decides"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="hard" data-why="Patient safety depends on it. The roster must never have an ICU shift without ICU skills.">Every ICU shift has nurses trained in ICU care</li>
              <li data-bucket="hard" data-why="A nurse who finishes at 08:00 needs rest. A day shift the same day is unsafe.">No morning or evening shift on the day after a night shift</li>
              <li data-bucket="hard" data-why="Approved leave is a promise to the staff member. The roster must respect it.">Approved leave is never replaced by a shift</li>
              <li data-bucket="pref" data-why="The roster should try to meet it, but it can give way to safe staffing.">Joseph prefers evening shifts because of his child's school</li>
              <li data-bucket="pref" data-why="A request, not a rule. Meet it if the numbers allow, and record it if you cannot.">Priya asks for Sunday 11 October off for a family function</li>
              <li data-bucket="decide" data-why="This affects safety, fairness and staff health. The nursing head chooses, not AI.">Who works extra nights when two nurses are sick in the same week</li>
              <li data-bucket="decide" data-why="It needs extra staff or a trade-off with another ward. Leaders decide.">Whether to add a 7th Medicine night nurse during the dengue peak</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-week roster for a small ward and check its own work. Use the sample rules, or your ward's rules with codes instead of names.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a nurse rostering assistant for a hospital in India. Explain in simple English.

        Ward: [Orthopaedics, 20 beds, about 16 patients]. Week: [Monday 5 to Sunday 11 October 2026].
        Nurses: [N1 to N10] (codes only, no names).
        Shift codes: M (08:00-14:00), E (14:00-20:00), N (20:00-08:00), O (off), L (leave).
        Needs every day: [3 M, 3 E, 2 N].
        Hard rules:
        - After N, the next day must be N or O.
        - No more than 3 N in a row.
        - Each nurse works at most 6 shifts and has at least 1 O.
        - [N4 is on leave (L) Monday and Tuesday.]
        Preferences: [N2 prefers E. N7 asks for Sunday off.] Share nights as evenly as possible.

        Please:
        1. Draw the roster as a table: nurses as rows, days as columns.
        2. Add a table of M, E and N counts for each day.
        3. Add a table of total shifts and nights for each nurse.
        4. List every hard rule and say where you checked it.
        5. List any preference you could not meet.
        This is a draft for the nursing head to check and decide.</pre>
            <ul class="ai-try-checks">
              <li>Does every day have exactly 3 M, 3 E and 2 N? Count them yourself.</li>
              <li>Find each N. Is the next day N or O, never M or E?</li>
              <li>Is N4 on L on Monday and Tuesday?</li>
              <li>14 nights in total: does each nurse have 1 or 2?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can turn clear rules into a roster draft in minutes, but it often breaks a rule or loads the hard shifts onto a few people. Write hard rules and preferences separately, check the draft with simple formulas, and let the nursing head decide.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Operation Theatre Scheduling</h1>
        </div>
        <p class="lc-lead">Operation theatres are among the most costly and busy parts of a hospital. An empty theatre wastes surgeons' and nurses' time. A list that runs too long leads to cancelled surgeries and upset patients. In this lesson you will estimate case lengths from past data and build a day's list that fits the session. You will also cut turnover time and find the reasons for cancellations. You will work with Tarang Multispeciality Hospital's four theatres. In September they were used 67.5% of their scheduled time, and 9.0% of cases were cancelled on the day.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Two timelines for OT2 Orthopaedics, session 09:00 to 17:00. Draft list: knee replacement 150 minutes, hip fixation 110, forearm plating 75, knee arthroscopy 60 and implant removal 45, with 41-minute turnovers. It ends 124 minutes after 17:00, so the last case is cancelled. Fixed list: the forearm case moves to another day and turnovers are 35 minutes. It ends at 16:50 with 10 minutes spare.">
            <g font-family="inherit" fill="#e2e0f0">
              <text x="380" y="22" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">OT2 Orthopaedics: one day's list, session 09:00–17:00</text>
              <text x="130" y="68" font-size="12" font-weight="700" fill="#f9a8d4">Draft: 5 cases, 41-minute turnovers</text>
              <text x="590" y="50" font-size="11" fill="#e2e0f0">Session ends</text>
              <line x1="586" y1="56" x2="586" y2="74" stroke="#e2e0f0" stroke-width="1.5" stroke-dasharray="5 4"/>
              <line x1="586" y1="134" x2="586" y2="240" stroke="#e2e0f0" stroke-width="1.5" stroke-dasharray="5 4"/>
              <g stroke="#3b82f6" stroke-width="1.5" fill="#1f1f44">
                <rect x="130" y="80" width="142.5" height="40"/><rect x="311.4" y="80" width="104.5" height="40"/>
                <rect x="454.9" y="80" width="71.2" height="40"/><rect x="565.1" y="80" width="57" height="40"/>
                <rect x="661.1" y="80" width="42.8" height="40"/>
              </g>
              <g fill="#4b4a78">
                <rect x="272.5" y="80" width="38.9" height="40"/><rect x="415.9" y="80" width="38.9" height="40"/>
                <rect x="526.1" y="80" width="38.9" height="40"/><rect x="622.1" y="80" width="38.9" height="40"/>
              </g>
              <path d="M586,126 L586,134 L703.8,134 L703.8,126" fill="none" stroke="#ec4899" stroke-width="2"/>
              <g font-size="11" text-anchor="middle">
                <text x="201.2" y="98">Knee</text><text x="363.7" y="98">Hip</text><text x="490.5" y="98">Forearm</text>
                <text x="593.6" y="98">Scope</text><text x="682.4" y="98" font-size="10">Implant</text>
              </g>
              <g font-size="10" text-anchor="middle" fill="#9b99b8">
                <text x="201.2" y="113">150</text><text x="363.7" y="113">110</text><text x="490.5" y="113">75</text>
                <text x="593.6" y="113">60</text><text x="682.4" y="113">45</text>
                <text x="292" y="104" fill="#e2e0f0">41</text><text x="435.4" y="104" fill="#e2e0f0">41</text>
                <text x="545.6" y="104" fill="#e2e0f0">41</text><text x="641.6" y="104" fill="#e2e0f0">41</text>
              </g>
              <text x="596" y="150" font-size="11" fill="#f9a8d4">124 minutes over:</text>
              <text x="596" y="164" font-size="11" fill="#f9a8d4">last case cancelled</text>
              <text x="130" y="178" font-size="12" font-weight="700" fill="#6ee7b7">Fixed: 4 cases, 35-minute turnovers, 10 minutes spare</text>
              <g stroke="#10b981" stroke-width="1.5" fill="#1f1f44">
                <rect x="130" y="190" width="142.5" height="40"/><rect x="305.8" y="190" width="104.5" height="40"/>
                <rect x="443.5" y="190" width="57" height="40"/><rect x="533.8" y="190" width="42.8" height="40"/>
              </g>
              <g fill="#4b4a78">
                <rect x="272.5" y="190" width="33.2" height="40"/><rect x="410.2" y="190" width="33.2" height="40"/>
                <rect x="500.5" y="190" width="33.2" height="40"/>
              </g>
              <g font-size="11" text-anchor="middle">
                <text x="201.2" y="208">Knee</text><text x="358" y="208">Hip</text><text x="472" y="208">Scope</text>
                <text x="555.1" y="208" font-size="10">Implant</text>
              </g>
              <g font-size="10" text-anchor="middle" fill="#9b99b8">
                <text x="201.2" y="223">150</text><text x="358" y="223">110</text><text x="472" y="223">60</text><text x="555.1" y="223">45</text>
                <text x="289.1" y="214" fill="#e2e0f0">35</text><text x="426.8" y="214" fill="#e2e0f0">35</text><text x="517.1" y="214" fill="#e2e0f0">35</text>
              </g>
              <line x1="130" y1="252" x2="704" y2="252" stroke="#9b99b8" stroke-width="1.5"/>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="130" y="268">09:00</text><text x="244" y="268">11:00</text><text x="358" y="268">13:00</text>
                <text x="472" y="268">15:00</text><text x="586" y="268">17:00</text>
              </g>
              <rect x="130" y="284" width="12" height="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="148" y="295" font-size="11">Case, minutes (patient in to out)</text>
              <rect x="390" y="284" width="12" height="12" fill="#4b4a78"/>
              <text x="408" y="295" font-size="11">Turnover (out to next in) · made-up data</text>
            </g>
          </svg>
          <figcaption>The draft list ignores turnover time and runs two hours late, so a patient is cancelled after fasting all day. Moving one case and cutting turnovers makes the list fit.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The OT numbers</h3>
          <p>A few terms first:</p>
          <ul class="lc-list">
            <li><strong>Session:</strong> the hours a theatre is booked for a team. At Tarang, each session is 8 hours (480 minutes).</li>
            <li><strong>Case length:</strong> minutes from the patient entering the theatre to leaving it.</li>
            <li><strong>Turnover time:</strong> minutes from one patient leaving to the next patient entering. The room is cleaned and set up in this time.</li>
            <li><strong>OT utilisation:</strong> used hours ÷ scheduled hours × 100. Used hours are case time inside the session.</li>
            <li><strong>Day-of-surgery cancellation rate:</strong> cases cancelled on the day ÷ cases scheduled × 100.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Theatre</th><th>Utilisation</th><th>Cases scheduled</th><th>Cancelled on the day</th><th>Cancellation rate</th><th>Average turnover (min)</th></tr></thead>
            <tbody>
              <tr><td>OT1 General Surgery</td><td>80.0%</td><td>132</td><td>12</td><td>9.1%</td><td>32</td></tr>
              <tr><td>OT2 Orthopaedics</td><td>70.0%</td><td>88</td><td>10</td><td>11.4%</td><td>41</td></tr>
              <tr><td>OT3 Obstetrics &amp; Gynaecology</td><td>65.0%</td><td>114</td><td>4</td><td>3.5%</td><td>28</td></tr>
              <tr><td>OT4 ENT, Eye &amp; shared</td><td>55.0%</td><td>110</td><td>14</td><td>12.7%</td><td>38</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>67.5%</strong></td><td><strong>444</strong></td><td><strong>40</strong></td><td><strong>9.0%</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>Made-up data for September 2026: 26 working days × 8 hours = 208 scheduled hours per theatre. Total used hours were 561.6 of 832, so <code>=561.6/832</code> gives 0.675. OT2 has the longest turnovers. OT4 has low use and the most cancellations.</p>
        </div>
        <div class="lc-card">
          <h3>Plan a list that fits</h3>
          <p>Many lists run late because case lengths are guesses. Use past data instead. Here are the last five made-up knee replacements by the same OT2 team: 140, 155, 150, 170 and 145 minutes. <code>=MEDIAN(B2:B6)</code> gives 150 and <code>=AVERAGE(B2:B6)</code> gives 152. Use the median for planning. One very long case does not pull it up as much.</p>
          <p>Then add up the whole day, including turnovers:</p>
          <table class="lc-table">
            <thead><tr><th>List</th><th>Case minutes</th><th>Turnovers</th><th>Total</th><th>Against 480 minutes</th></tr></thead>
            <tbody>
              <tr><td>Draft: knee 150, hip 110, forearm 75, arthroscopy 60, implant removal 45</td><td>440</td><td>4 × 41 = 164</td><td>604</td><td>124 minutes over</td></tr>
              <tr><td>Fixed: forearm case moved to Friday, turnover target 35</td><td>365</td><td>3 × 35 = 105</td><td>470</td><td>10 minutes spare</td></tr>
            </tbody>
          </table>
          <p>For the fixed day, utilisation is 365 ÷ 480 = 76.0%. That is higher than OT2's September average of 70.0%. In a sheet, total minutes are <code>=SUM(B2:B5)+(COUNT(B2:B5)-1)*35</code>, which gives 470.</p>
          <p>How to cut turnover time from 41 to 35 minutes:</p>
          <ul class="lc-list">
            <li>Send for the next patient before the current case ends, so they are ready in the pre-op area.</li>
            <li>Keep the cleaning team and the next instrument set ready near the theatre.</li>
            <li>Record turnover times for every case in the OT register. Review them weekly.</li>
          </ul>
          <p>Speed must never cut safety steps. Keep the WHO Surgical Safety Checklist, or your hospital's version, for every case. Surgeons and anaesthetists decide the order of cases and who is fit for surgery.</p>
        </div>
        <div class="lc-card">
          <h3>Cancellations: find the causes</h3>
          <p>40 of 444 scheduled cases were cancelled on the day (9.0%). Sort the reasons from largest to smallest. This is called a <strong>Pareto table</strong>. It shows where most of the problem sits.</p>
          <table class="lc-table">
            <thead><tr><th>Reason</th><th>Cases</th><th>Share</th><th>Running total</th><th>A possible fix</th></tr></thead>
            <tbody>
              <tr><td>Surgeon delay or list overrun</td><td>10</td><td>25.0%</td><td>25.0%</td><td>Plan lists from median case times; agree start times</td></tr>
              <tr><td>No ICU or ward bed</td><td>9</td><td>22.5%</td><td>47.5%</td><td>Book ICU beds a day ahead at the bed meeting</td></tr>
              <tr><td>Patient not fit on the day</td><td>8</td><td>20.0%</td><td>67.5%</td><td>Pre-anaesthesia check-up clinic a few days before</td></tr>
              <tr><td>Patient did not come or not fasting</td><td>7</td><td>17.5%</td><td>85.0%</td><td>Call the day before with clear fasting instructions</td></tr>
              <tr><td>Equipment or instruments not ready</td><td>6</td><td>15.0%</td><td>100.0%</td><td>Check instruments and implants the day before</td></tr>
            </tbody>
          </table>
          <p>Some cancellations are right. A patient with a new fever may not be safe for surgery. The anaesthetist decides that, and the aim is never to push such cases through. The aim is to find unfit patients earlier, so their slot goes to someone else.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Why are our surgeries getting cancelled?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Made-up data: 444 cases scheduled, 40 cancelled on the day.
        Reasons: list overrun 10, no bed 9, not fit 8,
        did not come or not fasting 7, equipment 6.
        Make a Pareto table with share and running total.
        For each reason, suggest one fix, an owner and a weekly measure.
        Mark which fixes need a clinical decision by doctors.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: planning Thursday's OT2 list</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Vikram">Here are 5 booked cases with median times: 150, 110, 75, 60 and 45 minutes. The session is 09:00 to 17:00. Does the list fit?</li>
              <li data-kind="answer" data-label="AI">The cases add up to 440 minutes, which is less than 480. The list fits with 40 minutes spare.</li>
              <li data-kind="warn" data-label="Catch this">The AI left out turnover time. OT2's average turnover is 41 minutes, and 5 cases need 4 turnovers.</li>
              <li data-kind="tool" data-label="Spreadsheet">Vikram adds the turnovers: 440 + 4 × 41.</li>
              <li data-kind="result" data-label="Sheet">604 minutes. The list runs 124 minutes past 17:00.</li>
              <li data-kind="check" data-label="Surgeon">The surgeon agrees to move the forearm case to Friday. The team aims for 35-minute turnovers.</li>
              <li data-kind="result" data-label="New plan">365 + 3 × 35 = 470 minutes, with 10 minutes spare. The forearm patient gets a call today, not a cancellation tomorrow.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check whether a day's OT list fits its session and to plan a better one. Use the sample cases, or your own theatre's typical cases.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an operation theatre scheduling assistant for a hospital in India. Explain in simple English.

        Theatre: [OT2 Orthopaedics, Tarang Multispeciality Hospital]. Session: [09:00 to 17:00, 480 minutes].
        Booked cases with median past times (made-up): [knee replacement 150, hip fixation 110, forearm plating 75, knee arthroscopy 60, implant removal 45] minutes.
        Average turnover time: [41] minutes. Turnover target: [35] minutes.
        Last month: [88] cases scheduled, [10] cancelled on the day.

        Please:
        1. Add case minutes and turnovers (one fewer turnover than cases). Say whether the list fits the session.
        2. If it does not fit, suggest a list that fits, and say which case to move. Show the total minutes.
        3. Give the expected utilisation: case minutes / 480.
        4. Work out last month's cancellation rate.
        5. Give 4 ways to cut turnover time without skipping any safety check.
        6. Give a Google Sheets formula for the total minutes.
        Surgeons and anaesthetists decide the final order and who is fit for surgery. Do not invent other numbers.</pre>
            <ul class="ai-try-checks">
              <li>Did it include turnovers? The draft should total 440 + 164 = 604 minutes.</li>
              <li>A fixed list without the forearm case should total 470 minutes with 35-minute turnovers.</li>
              <li>Utilisation should use case minutes only: 365 ÷ 480 = 76.0%.</li>
              <li>The cancellation rate should be 10 ÷ 88 = 11.4%.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good OT list is planned from real median case times plus turnovers, not from guesses. Sort cancellation reasons to find the biggest fixable causes, cut turnover time without cutting safety checks, and let surgeons and anaesthetists make the clinical calls.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Pharmacy and Stock Management</h1>
        </div>
        <p class="lc-lead">A hospital pharmacy must never run out of vital medicines. But too much stock locks up money and can expire on the shelf. In this lesson you will work out daily use, days of cover and reorder points in a spreadsheet. You will use the forecast to decide how much to order, and manage expiry with FEFO. You will also use ABC-VED analysis to decide which items need the closest watch. You will work with made-up stock from Tarang Multispeciality Hospital on 30 September 2026. Two items, dengue NS1 test kits and sterile gloves, are already below their reorder points.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="ABC-VED matrix for 12 made-up Tarang pharmacy items. Rows are A, B and C by spending. Columns are vital, essential and desirable. Category I, the closest control: gloves and meropenem (A vital), albumin and NS1 test kits (A essential), normal saline and ceftriaxone (B vital), insulin (C vital). Category II: pantoprazole injection (B essential), paracetamol, ORS and hand rub (C essential). Category III: multivitamin syrup (C desirable).">
            <g font-family="inherit" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="13" font-weight="700" fill="#c4b5fd">ABC-VED matrix: 12 pharmacy items at Tarang Hospital</text>
              <g font-size="12" font-weight="700">
                <text x="230" y="60">V · Vital</text><text x="430" y="60">E · Essential</text><text x="630" y="60">D · Desirable</text>
              </g>
              <g font-size="12">
                <text x="70" y="108" font-weight="700">A</text><text x="70" y="124" font-size="11" fill="#9b99b8">top 70% of ₹</text>
                <text x="70" y="178" font-weight="700">B</text><text x="70" y="194" font-size="11" fill="#9b99b8">next 20% of ₹</text>
                <text x="70" y="248" font-weight="700">C</text><text x="70" y="264" font-size="11" fill="#9b99b8">last 10% of ₹</text>
              </g>
              <g stroke-width="2" fill="#1f1f44">
                <rect x="132" y="74" width="196" height="66" rx="6" stroke="#ec4899"/>
                <rect x="332" y="74" width="196" height="66" rx="6" stroke="#ec4899"/>
                <rect x="532" y="74" width="196" height="66" rx="6" stroke="#ec4899"/>
                <rect x="132" y="144" width="196" height="66" rx="6" stroke="#ec4899"/>
                <rect x="332" y="144" width="196" height="66" rx="6" stroke="#f59e0b"/>
                <rect x="532" y="144" width="196" height="66" rx="6" stroke="#f59e0b"/>
                <rect x="132" y="214" width="196" height="66" rx="6" stroke="#ec4899"/>
                <rect x="332" y="214" width="196" height="66" rx="6" stroke="#f59e0b"/>
                <rect x="532" y="214" width="196" height="66" rx="6" stroke="#10b981"/>
              </g>
              <g font-size="10" font-weight="700" text-anchor="end">
                <text x="320" y="88" fill="#f9a8d4">I</text><text x="520" y="88" fill="#f9a8d4">I</text><text x="720" y="88" fill="#f9a8d4">I</text>
                <text x="320" y="158" fill="#f9a8d4">I</text><text x="520" y="158" fill="#fcd34d">II</text><text x="720" y="158" fill="#fcd34d">II</text>
                <text x="320" y="228" fill="#f9a8d4">I</text><text x="520" y="228" fill="#fcd34d">II</text><text x="720" y="228" fill="#6ee7b7">III</text>
              </g>
              <g font-size="12">
                <text x="230" y="104">Sterile gloves</text><text x="230" y="122">Meropenem</text>
                <text x="430" y="104">Albumin 20%</text><text x="430" y="122">NS1 test kits</text>
                <text x="630" y="112" fill="#9b99b8">none in this list</text>
                <text x="230" y="174">Normal saline</text><text x="230" y="192">Ceftriaxone</text>
                <text x="430" y="182">Pantoprazole inj.</text>
                <text x="630" y="182" fill="#9b99b8">none in this list</text>
                <text x="230" y="252">Insulin</text>
                <text x="430" y="244">Paracetamol, ORS</text><text x="430" y="262">Hand rub</text>
                <text x="630" y="252">Multivitamin syrup</text>
              </g>
              <g font-size="11" text-anchor="start">
                <rect x="60" y="300" width="12" height="12" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
                <text x="80" y="311">I: closest control, never run out</text>
                <rect x="330" y="300" width="12" height="12" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
                <text x="350" y="311">II: regular control</text>
                <rect x="520" y="300" width="12" height="12" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
                <text x="540" y="311">III: simple control</text>
              </g>
              <text x="380" y="332" font-size="11" fill="#9b99b8">Made-up data · September 2026 spending and clinical importance</text>
            </g>
          </svg>
          <figcaption>ABC sorts items by money spent. VED sorts them by how much patients need them. Insulin is cheap (C) but vital (V), so it still gets the closest control.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Daily use, days of cover and reorder points</h3>
          <p>A few terms first:</p>
          <ul class="lc-list">
            <li><strong>Daily use:</strong> units used in the month ÷ 30.</li>
            <li><strong>Days of cover:</strong> stock ÷ daily use. How many days the stock will last.</li>
            <li><strong>Lead time:</strong> days from placing an order to the stock arriving.</li>
            <li><strong>Reorder point (ROP):</strong> the stock level at which you order again. At Tarang, ROP = daily use × (lead time + 7 safety days).</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Sept use</th><th>Daily use</th><th>Stock 30 Sep</th><th>Days of cover</th><th>Lead time</th><th>ROP</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>Paracetamol 650 mg (strips)</td><td>4,500</td><td>150</td><td>3,000</td><td>20</td><td>4</td><td>1,650</td><td>OK</td></tr>
              <tr><td>Normal saline 0.9% 500 ml</td><td>6,000</td><td>200</td><td>2,400</td><td>12</td><td>5</td><td>2,400</td><td>At ROP: order now</td></tr>
              <tr><td>Dengue NS1 rapid test</td><td>1,200</td><td>40</td><td>360</td><td>9</td><td>7</td><td>560</td><td><strong>Below ROP</strong></td></tr>
              <tr><td>Ceftriaxone 1 g (vials)</td><td>2,700</td><td>90</td><td>3,600</td><td>40</td><td>5</td><td>1,080</td><td>OK, but 800 vials expire Nov 2026</td></tr>
              <tr><td>ORS sachets</td><td>2,400</td><td>80</td><td>4,000</td><td>50</td><td>4</td><td>880</td><td>OK (plenty)</td></tr>
              <tr><td>Sterile gloves, size 7 (pairs)</td><td>6,600</td><td>220</td><td>2,860</td><td>13</td><td>10</td><td>3,740</td><td><strong>Below ROP</strong></td></tr>
            </tbody>
          </table>
          <p>Made-up data. Put September use in B, stock in C and lead time in D. Then:</p>
          <pre><code>Daily use:       =B2/30                                   gives 150
        Days of cover:   =C2/(B2/30)                              gives 20
        ROP:             =B2/30*(D2+7)                            gives 1650
        Status:          =IF(C2&lt;=B2/30*(D2+7),"Order now","OK")    gives OK</code></pre>
          <p>The gloves have 13 days of cover, but a new order takes 10 days. Without an order today, the safety margin is almost gone. The NS1 kits have 9 days of cover against a 7-day lead time.</p>
        </div>
        <div class="lc-card">
          <h3>How much to order: use the forecast</h3>
          <p>Tarang orders enough to cover the lead time, the next 30 days and 7 safety days, minus current stock:</p>
          <pre><code>Order quantity:  =B2/30*(D2+30+7)-C2</code></pre>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Daily use used</th><th>Working</th><th>Order</th></tr></thead>
            <tbody>
              <tr><td>Sterile gloves</td><td>220 (September)</td><td>220 × 47 − 2,860</td><td>7,480 pairs</td></tr>
              <tr><td>NS1 kits, using September use</td><td>40</td><td>40 × 44 − 360</td><td>1,400 tests</td></tr>
              <tr><td>NS1 kits, using the October forecast</td><td>1,036 ÷ 31 = 33.4</td><td>33.4 × 44 − 360</td><td>about 1,110 tests</td></tr>
            </tbody>
          </table>
          <p>The demand forecast expects about 1,036 NS1 tests in October, fewer than September's 1,200. Past seasons also fell sharply in November. If Vikram orders by September's use, about 290 extra kits may sit unused as the season ends. The present stock expires in January 2027, and new kits also have a shelf life. So the pharmacist and the lab head may order about 1,110 now and review every week.</p>
          <p>Never cut vital items too fine to save money. A stock-out of NS1 kits in a dengue season delays diagnosis. Treat every forecast as a guide and watch actual use weekly.</p>
        </div>
        <div class="lc-card">
          <h3>Expiry and FEFO</h3>
          <p><strong>FEFO (first expiry, first out)</strong> means you issue the stock that expires first, even if it arrived later. <strong>FIFO (first in, first out)</strong> issues the oldest delivery first. For medicines, FEFO is safer, because deliveries do not always arrive in expiry order.</p>
          <p>Tarang has 3,600 ceftriaxone vials. 800 of them expire in November 2026, and the rest in October 2027. The hospital uses 90 vials a day.</p>
          <ul class="lc-list">
            <li><strong>With FEFO:</strong> the 800 vials are used first and last about 800 ÷ 90 = 8.9 days. They are gone by about 9 October.</li>
            <li><strong>Without FEFO:</strong> if the 2,800 later vials go first, they last about 31 days. The 800 short-dated vials then come out in November, very close to expiry.</li>
          </ul>
          <p>Keep a near-expiry list. Put the expiry date (the last day of the month) in E and the report date, 30/09/2026, in H1:</p>
          <pre><code>Days left:   =E2-$H$1                                 gives 61 for 30/11/2026
        Flag:        =IF(E2-$H$1&lt;=90,"Near expiry","")         gives Near expiry</code></pre>
          <p>Ask the HIS team whether the pharmacy system can track batches and expiry dates. Place short-dated stock at the front of the shelf. For stock you cannot use in time, check your supplier's return terms, or move it to another unit that uses more.</p>
        </div>
        <div class="lc-card">
          <h3>ABC-VED analysis</h3>
          <p><strong>ABC analysis</strong> sorts items by money spent. A items are the top items that make up about 70% of spending, B the next 20% and C the last 10%. <strong>VED analysis</strong> sorts items by clinical importance: <strong>V</strong>ital (patients may be harmed without it), <strong>E</strong>ssential and <strong>D</strong>esirable. Doctors and pharmacists decide VED, often in the hospital's pharmacy and therapeutics committee. AI or the operations team should not set it alone.</p>
          <table class="lc-table">
            <thead><tr><th>Item (made-up prices)</th><th>Sept value ₹</th><th>Share</th><th>Running total</th><th>ABC</th><th>VED</th><th>Category</th></tr></thead>
            <tbody>
              <tr><td>Human albumin 20% (90 × ₹5,000)</td><td>4,50,000</td><td>26.7%</td><td>26.7%</td><td>A</td><td>E</td><td>I</td></tr>
              <tr><td>Sterile gloves (6,600 × ₹40)</td><td>2,64,000</td><td>15.7%</td><td>42.4%</td><td>A</td><td>V</td><td>I</td></tr>
              <tr><td>NS1 test kits (1,200 × ₹180)</td><td>2,16,000</td><td>12.8%</td><td>55.2%</td><td>A</td><td>E</td><td>I</td></tr>
              <tr><td>Meropenem 1 g (300 × ₹700)</td><td>2,10,000</td><td>12.5%</td><td>67.7%</td><td>A</td><td>V</td><td>I</td></tr>
              <tr><td>Normal saline (6,000 × ₹30)</td><td>1,80,000</td><td>10.7%</td><td>78.4%</td><td>B</td><td>V</td><td>I</td></tr>
              <tr><td>Ceftriaxone 1 g (2,700 × ₹45)</td><td>1,21,500</td><td>7.2%</td><td>85.6%</td><td>B</td><td>V</td><td>I</td></tr>
              <tr><td>Pantoprazole 40 mg injection (1,400 × ₹45)</td><td>63,000</td><td>3.7%</td><td>89.3%</td><td>B</td><td>E</td><td>II</td></tr>
              <tr><td>Paracetamol 650 mg (4,500 × ₹12)</td><td>54,000</td><td>3.2%</td><td>92.5%</td><td>C</td><td>E</td><td>II</td></tr>
              <tr><td>ORS sachets (2,400 × ₹20)</td><td>48,000</td><td>2.8%</td><td>95.4%</td><td>C</td><td>E</td><td>II</td></tr>
              <tr><td>Alcohol hand rub 500 ml (300 × ₹150)</td><td>45,000</td><td>2.7%</td><td>98.0%</td><td>C</td><td>E</td><td>II</td></tr>
              <tr><td>Human insulin 10 ml vial (120 × ₹150)</td><td>18,000</td><td>1.1%</td><td>99.1%</td><td>C</td><td>V</td><td>I</td></tr>
              <tr><td>Multivitamin syrup (250 × ₹60)</td><td>15,000</td><td>0.9%</td><td>100.0%</td><td>C</td><td>D</td><td>III</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>16,84,500</strong></td><td><strong>100%</strong></td><td></td><td></td><td></td><td></td></tr>
            </tbody>
          </table>
          <p>The ABC-VED matrix joins both labels. <strong>Category I</strong> is AV, AE, AD, BV and CV. <strong>Category II</strong> is BE, CE and BD. <strong>Category III</strong> is CD only. Category I gets the closest watch: daily stock checks and a named person for each item.</p>
          <p>Sort the items by value, largest first, with values in B2:B13. Then:</p>
          <pre><code>Share:          =B2/SUM($B$2:$B$13)
        Running total:  =SUM($B$2:B2)/SUM($B$2:$B$13)
        ABC:            =IF(D2&lt;=0.7,"A",IF(D2&lt;=0.9,"B","C"))</code></pre>
          <p>Here D holds the running total. Pantoprazole sits at 89.3%, very close to the B/C line. Treat the cut-offs as a guide. A real pharmacy has hundreds of items, and A is usually a small share of them.</p>
          <p><strong>Weak prompt:</strong> "Do ABC analysis of our pharmacy." <strong>Better prompt:</strong> give item codes, units used, made-up or approved prices and the rule for A, B and C. Ask for the table with shares and running totals. Ask it to mark VED as "for the committee to decide". Then check the totals in your own sheet.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which ABC-VED category?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each item into its ABC-VED category.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="one" data-label="Category I"></div>
              <div data-sorter-target="bucket" data-bucket="two" data-label="Category II"></div>
              <div data-sorter-target="bucket" data-bucket="three" data-label="Category III"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="one" data-why="AV: high spending and vital. It needs the closest control.">Sterile gloves: A and Vital</li>
              <li data-bucket="one" data-why="CV: cheap, but vital. Every vital item is Category I, whatever its cost.">Human insulin: C and Vital</li>
              <li data-bucket="one" data-why="AE: every A item is Category I because it ties up so much money.">Human albumin 20%: A and Essential</li>
              <li data-bucket="two" data-why="BE is Category II: regular control.">Pantoprazole injection: B and Essential</li>
              <li data-bucket="two" data-why="CE is Category II: low spending but still needed.">ORS sachets: C and Essential</li>
              <li data-bucket="two" data-why="BD is Category II: medium spending, less critical.">A made-up cough syrup: B and Desirable</li>
              <li data-bucket="three" data-why="CD is the only Category III group: low spending and least critical.">Multivitamin syrup: C and Desirable</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a stock status table with reorder points, ABC classes and expiry flags. Use the sample items, or your own item codes and approved prices.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a hospital pharmacy stock analyst in India. Explain in simple English.

        Pharmacy: [Tarang Multispeciality Hospital]. Report date: [30 September 2026].
        Made-up data (item: September use, stock, lead time in days, price in Rs, nearest expiry):
        [Paracetamol 650 strips: 4500, 3000, 4, 12, Mar 2028
        Normal saline 500 ml: 6000, 2400, 5, 30, Jun 2028
        NS1 test kits: 1200, 360, 7, 180, Jan 2027
        Ceftriaxone 1 g: 2700, 3600, 5, 45, Nov 2026 (800 vials; the rest Oct 2027)
        ORS sachets: 2400, 4000, 4, 20, Aug 2027
        Sterile gloves: 6600, 2860, 10, 40, Jul 2029]

        Please:
        1. Work out daily use (use / 30), days of cover and ROP = daily use x (lead time + 7).
        2. Mark "Order now" if stock is at or below ROP.
        3. Do ABC analysis by September value: A up to 70% running total, B up to 90%, C the rest.
        4. Flag stock expiring within 90 days and explain FEFO for it.
        5. Give the Google Sheets formulas.
        6. Add a VED column marked "for the committee to decide".
        Do not invent other numbers.</pre>
            <ul class="ai-try-checks">
              <li>NS1 kits and gloves should be below ROP; normal saline is exactly at ROP.</li>
              <li>Gloves (29.9%) and NS1 kits (54.3% running total) should be A; saline and ceftriaxone B.</li>
              <li>Only the 800 ceftriaxone vials should be flagged as near expiry.</li>
              <li>Did it leave VED to the committee instead of deciding it?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good stock control is simple maths done every day: daily use, days of cover and reorder points. Use the demand forecast to size orders, issue stock by FEFO, and let ABC-VED show which items need the closest watch. Clinicians decide what is vital.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Biomedical Equipment and Maintenance</h1>
        </div>
        <p class="lc-lead">A ventilator that is down for three days is a free ICU bed that cannot be used. A broken autoclave can cancel operations. In this lesson you will learn how a hospital keeps track of its medical equipment. You will build an <strong>asset list</strong>, plan <strong>preventive maintenance</strong>, log breakdowns and work out <strong>uptime %</strong>. You will also see where AI helps with schedules, logs and vendor emails, and where trained engineers must decide. The examples use Tarang Multispeciality Hospital's made-up September 2026 data.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="The equipment maintenance cycle in five steps: asset register, PM schedule, daily checks, breakdown log and uptime report, with a monthly review that leads back to the register. Below, three made-up September numbers: ICU ventilator fleet uptime 98.9 percent, the worst ventilator 90.0 percent, and preventive maintenance done on time 84.6 percent, 33 of 39.">
            <defs>
              <marker id="ho11a" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
            </defs>
            <g font-family="inherit" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">The equipment maintenance cycle</text>
              <rect x="12" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="76" y="68" font-size="13" font-weight="700" text-anchor="middle">Asset register</text>
              <text x="76" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">every device, ID,</text>
              <text x="76" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">location, risk</text>
              <rect x="164" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="228" y="68" font-size="13" font-weight="700" text-anchor="middle">PM schedule</text>
              <text x="228" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">planned service,</text>
              <text x="228" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">calibration dates</text>
              <rect x="316" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="68" font-size="13" font-weight="700" text-anchor="middle">Daily checks</text>
              <text x="380" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">user checks, such</text>
              <text x="380" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">as defib tests</text>
              <rect x="468" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="532" y="68" font-size="13" font-weight="700" text-anchor="middle">Breakdown log</text>
              <text x="532" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">time down, cause,</text>
              <text x="532" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">time back up</text>
              <rect x="620" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="684" y="68" font-size="13" font-weight="700" text-anchor="middle">Uptime report</text>
              <text x="684" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">uptime %, PM on</text>
              <text x="684" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">time, repeat faults</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ho11a)">
                <line x1="141" y1="82" x2="162" y2="82"/>
                <line x1="293" y1="82" x2="314" y2="82"/>
                <line x1="445" y1="82" x2="466" y2="82"/>
                <line x1="597" y1="82" x2="618" y2="82"/>
                <path d="M684,121 L684,146 L76,146 L76,123"/>
              </g>
              <text x="380" y="164" font-size="11" fill="#9b99b8" text-anchor="middle">Monthly review: repair, change the service contract, or plan a replacement</text>
              <rect x="12" y="180" width="236" height="76" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="26" y="200" font-size="11" fill="#9b99b8">ICU ventilators, fleet uptime</text>
              <text x="26" y="228" font-size="22" font-weight="700" fill="#6ee7b7">98.9%</text>
              <text x="26" y="246" font-size="11" fill="#9b99b8">8,544 of 8,640 hours</text>
              <rect x="262" y="180" width="236" height="76" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="276" y="200" font-size="11" fill="#9b99b8">Worst ventilator (VEN-11)</text>
              <text x="276" y="228" font-size="22" font-weight="700" fill="#fcd34d">90.0%</text>
              <text x="276" y="246" font-size="11" fill="#9b99b8">72 hours down, waiting for a part</text>
              <rect x="512" y="180" width="236" height="76" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="526" y="200" font-size="11" fill="#9b99b8">PM done on time</text>
              <text x="526" y="228" font-size="22" font-weight="700" fill="#f9a8d4">84.6%</text>
              <text x="526" y="246" font-size="11" fill="#9b99b8">33 of 39 due in September</text>
              <text x="380" y="280" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up data · Tarang Multispeciality Hospital · September 2026</text>
            </g>
          </svg>
          <figcaption>Maintenance is a cycle. The monthly numbers at the bottom show why one fleet number is not enough: a good average can hide one bad machine.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The asset register and the PM schedule</h3>
          <p>Most hospitals have a <strong>biomedical engineering (BME) team</strong>. It looks after medical equipment such as ventilators, monitors, pumps and scanners. Its work starts with two lists.</p>
          <ul class="lc-list">
            <li><strong>Asset register:</strong> one row for every device. It shows an ID, the location, the risk level and the service details.</li>
            <li><strong>PM (preventive maintenance) schedule:</strong> planned servicing done before a fault happens. The maker's manual usually says how often.</li>
            <li><strong>Calibration:</strong> checking that a device measures correctly against a trusted reference, and adjusting it if needed.</li>
            <li><strong>AMC (annual maintenance contract):</strong> a vendor services the device for a year. Parts are often extra. A <strong>CMC</strong> (comprehensive maintenance contract) usually includes parts. Always read the contract.</li>
          </ul>
          <p>Here are 7 rows from Tarang's register on 30 September 2026. All data is made up.</p>
          <table class="lc-table">
            <thead><tr><th>Asset ID</th><th>Device</th><th>Location</th><th>Risk</th><th>PM every</th><th>Next PM due</th><th>Cover</th><th>Status on 30 Sep</th></tr></thead>
            <tbody>
              <tr><td>TMH-ICU-VEN-07</td><td>Ventilator</td><td>ICU</td><td>High</td><td>3 months</td><td>2 Oct 2026</td><td>CMC</td><td>Working</td></tr>
              <tr><td>TMH-ICU-VEN-11</td><td>Ventilator</td><td>ICU</td><td>High</td><td>3 months</td><td>9 Dec 2026</td><td>CMC</td><td>Working, repaired 14 Sep</td></tr>
              <tr><td>TMH-MED-DEF-02</td><td>Defibrillator</td><td>Medicine ward</td><td>High</td><td>1 month</td><td>20 Sep 2026</td><td>AMC</td><td><strong>PM overdue</strong></td></tr>
              <tr><td>TMH-OPD-DEF-01</td><td>Defibrillator</td><td>OPD</td><td>High</td><td>1 month</td><td>25 Sep 2026</td><td>AMC</td><td><strong>PM overdue</strong></td></tr>
              <tr><td>TMH-SUR-INF-23</td><td>Infusion pump</td><td>Surgery ward</td><td>Medium</td><td>6 months</td><td>10 Sep 2026</td><td>In-house</td><td><strong>PM overdue</strong></td></tr>
              <tr><td>TD-CT-01</td><td>CT scanner</td><td>Tarang Diagnostics</td><td>High</td><td>3 months</td><td>5 Dec 2026</td><td>CMC</td><td>Working</td></tr>
              <tr><td>TMH-CSSD-AC-02</td><td>Autoclave</td><td>CSSD</td><td>High</td><td>1 month</td><td>3 Oct 2026</td><td>AMC</td><td>Working, repaired 16 Sep</td></tr>
            </tbody>
          </table>
          <p>CSSD means the central sterile services department. It cleans and sterilises instruments for the operation theatres (OTs). Both overdue defibrillators still work. That is exactly why they are risky. A fault shows up only in an emergency.</p>
          <p><strong>PM compliance</strong> = PM jobs done on time ÷ PM jobs due × 100. In September, 39 PM jobs were due and 33 were done on time.</p>
          <table class="lc-table">
            <thead><tr><th>Device group</th><th>PM due in Sep</th><th>Done on time</th><th>Compliance</th></tr></thead>
            <tbody>
              <tr><td>ICU ventilators</td><td>3</td><td>3</td><td>100.0%</td></tr>
              <tr><td>Defibrillators</td><td>10</td><td>8</td><td>80.0%</td></tr>
              <tr><td>Infusion pumps</td><td>12</td><td>9</td><td>75.0%</td></tr>
              <tr><td>Patient monitors</td><td>10</td><td>9</td><td>90.0%</td></tr>
              <tr><td>Anaesthesia workstations</td><td>1</td><td>1</td><td>100.0%</td></tr>
              <tr><td>CT scanner</td><td>1</td><td>1</td><td>100.0%</td></tr>
              <tr><td>CSSD autoclaves</td><td>2</td><td>2</td><td>100.0%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>39</strong></td><td><strong>33</strong></td><td><strong>84.6%</strong></td></tr>
            </tbody>
          </table>
          <p>With groups in rows 2 to 8, due in column B and done in column C:</p>
          <pre><code>Group compliance (D2):  =C2/B2                  gives 1     (100.0%)
        Hospital compliance:    =SUM(C2:C8)/SUM(B2:B8)  gives 0.846 (84.6%)
        Overdue jobs:           =SUM(B2:B8)-SUM(C2:C8)  gives 6</code></pre>
          <p><strong>A common mistake:</strong> <code>=AVERAGE(D2:D8)</code> gives 92.1%. It treats one CT job the same as 12 pump jobs. Divide the totals.</p>
        </div>
        <div class="lc-card">
          <h3>Downtime and uptime %</h3>
          <p><strong>Downtime</strong> is the time a device cannot be used for patients. <strong>Required hours</strong> are the hours it should be ready. For 24-hour equipment in September, that is 24 × 30 = 720 hours per unit. For OT equipment, use the scheduled OT hours (208 per theatre).</p>
          <ul class="lc-list">
            <li><strong>Uptime %</strong> = (required hours − downtime hours) ÷ required hours × 100.</li>
            <li><strong>MTTR</strong> (mean time to repair) = total downtime hours ÷ number of breakdowns.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Device group</th><th>Units</th><th>Required hours</th><th>Downtime hours</th><th>Breakdowns</th><th>Uptime</th></tr></thead>
            <tbody>
              <tr><td>CT scanner</td><td>1</td><td>720</td><td>30</td><td>1</td><td>95.8%</td></tr>
              <tr><td>Digital X-ray</td><td>2</td><td>1,440</td><td>6</td><td>1</td><td>99.6%</td></tr>
              <tr><td>ICU ventilators</td><td>12</td><td>8,640</td><td>96</td><td>2</td><td>98.9%</td></tr>
              <tr><td>Anaesthesia workstations</td><td>4</td><td>832</td><td>10</td><td>1</td><td>98.8%</td></tr>
              <tr><td>CSSD autoclaves</td><td>2</td><td>1,440</td><td>20</td><td>1</td><td>98.6%</td></tr>
              <tr><td>Defibrillators</td><td>10</td><td>7,200</td><td>0</td><td>0</td><td>100.0%</td></tr>
            </tbody>
          </table>
          <pre><code>Uptime (F2):  =(C2-D2)/C2     gives 0.958 for the CT scanner
        MTTR:         =D4/E4          gives 48 hours for the ventilators</code></pre>
          <p><strong>Read behind the average.</strong> The ventilator fleet shows 98.9%. But one ventilator, VEN-11, was down for 72 hours while the team waited for a flow sensor. Its own uptime was (720 − 72) ÷ 720 = 90.0%. For those three days, the ICU had 11 working ventilators while it was 95% full. The fix is not only repair. Vikram now asks: should we keep one spare flow sensor in stock?</p>
          <p><strong>Link to other numbers.</strong> The autoclave was down for 20 hours on 15 and 16 September. The OT anaesthesia workstation in OT4 failed a check for 10 hours on 18 September. The made-up log links 5 of the 6 OT cancellations for "equipment or instruments not ready" to these two faults.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what stays with engineers</h3>
          <p>Export the register and the breakdown log from your HIS or maintenance software as a spreadsheet. Remove any patient details first. Then AI can help you:</p>
          <ul class="lc-list">
            <li>Build a 12-month PM calendar from the register, and flag overdue jobs.</li>
            <li>Group free-text fault notes into causes, such as "battery", "sensor" or "user error".</li>
            <li>Spot repeat faults: the same device failing again within 90 days.</li>
            <li>Draft a clear escalation email to a vendor with the dates and hours down.</li>
            <li>Compare two service quotes line by line. The manager still decides.</li>
          </ul>
          <pre><code>Weak prompt:
        Which of our machines are bad?

        Better prompt:
        You are helping a hospital biomedical engineer. Below is our September
        breakdown log (asset ID, device, date down, time down, time back up, cause).
        1. Work out downtime hours and uptime % per device group. Required hours:
           720 per unit for 24-hour equipment.
        2. List any device down more than 24 hours in one breakdown.
        3. List repeat faults within 90 days.
        Show your working. Use only this data. Say "not in the data" if unsure.</code></pre>
          <p><strong>What a person must still do:</strong></p>
          <ul class="lc-list">
            <li>Trained engineers or the maker's service team do the PM, calibration and electrical safety tests. AI cannot say a device is safe.</li>
            <li>Check every uptime number in your own sheet before it goes in a report.</li>
            <li>Follow the rules for regulated equipment. In India, medical devices come under the CDSCO Medical Devices Rules, 2017. X-ray and CT equipment also needs AERB (Atomic Energy Regulatory Board) approvals and quality checks. Check the current rules. This is not legal advice.</li>
            <li>Report device-related harm through your hospital's incident system. India also runs a materiovigilance programme for device problems.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: what kind of maintenance is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each job at Tarang into the right type of maintenance work.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pm" data-label="Preventive maintenance"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Breakdown repair"></div>
              <div data-sorter-target="bucket" data-bucket="test" data-label="Calibration or safety test"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pm" data-why="It is planned servicing done on a fixed date, before any fault.">3-monthly service of an ICU ventilator, as the maker's manual says</li>
              <li data-bucket="fix" data-why="The device has already failed. This is unplanned repair.">A ventilator's flow sensor fails and the machine keeps alarming</li>
              <li data-bucket="test" data-why="Comparing readings with a trusted reference is calibration.">Checking that a BP monitor's readings match a reference device</li>
              <li data-bucket="test" data-why="An electrical safety test checks that the device is safe to connect to patients.">Electrical safety test on a new infusion pump before first use</li>
              <li data-bucket="fix" data-why="The door seal already leaks and cycles fail. It needs repair now.">The autoclave door seal leaks and a sterilising cycle fails</li>
              <li data-bucket="pm" data-why="Replacing a part on a schedule, before it fails, is preventive.">Replacing defibrillator batteries at the planned interval</li>
              <li data-bucket="test" data-why="This daily test runs in an empty chamber before the first load. It checks that air is removed so steam can reach the load. It is a performance test.">The daily Bowie-Dick test on a pre-vacuum autoclave</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a small made-up asset list and breakdown log into a PM plan and an uptime summary. Then check its maths.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a helper for a hospital biomedical engineering team. Use simple English.

        Hospital: [Tarang Multispeciality Hospital]. Month: [September 2026, 30 days]. Today: [30 Sep 2026].
        Made-up asset list (ID, device, location, PM every, last PM):
        [VEN-07, ventilator, ICU, 3 months, 2 Jul 2026
        VEN-11, ventilator, ICU, 3 months, 9 Sep 2026
        DEF-02, defibrillator, Medicine ward, 1 month, 20 Aug 2026
        INF-23, infusion pump, Surgery ward, 6 months, 10 Mar 2026
        AC-02, autoclave, CSSD, 1 month, 3 Sep 2026]
        Made-up breakdown log (ID, hours down, cause):
        [VEN-11, 72, flow sensor, waited for part
        AC-02, 20, door seal leak]

        Please:
        1. Make a table with the next PM due date for each device. Mark any that are overdue today.
        2. Work out uptime % for VEN-11 and AC-02. Required hours = 720 each. Show the working.
        3. Suggest 3 practical actions, such as spare parts or contract checks.
        4. Draft a short, polite email to the ventilator vendor about the 72-hour wait.
        Use only this data. Do not claim any device is safe to use.</pre>
            <ul class="ai-try-checks">
              <li>DEF-02 and INF-23 should be marked overdue; VEN-07 is due on 2 Oct.</li>
              <li>VEN-11 uptime should be 648 ÷ 720 = 90.0%; AC-02 should be 700 ÷ 720 = 97.2%.</li>
              <li>The email should give dates and hours, not blame people.</li>
              <li>It should not invent other devices, prices or contract terms.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Equipment problems show up as other problems: a blocked ICU bed, a cancelled operation, a patient sent elsewhere for a scan. Keep a clean asset register, measure PM compliance and uptime with total-based formulas, and look behind the fleet average for the one machine that failed.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Billing, Claims and Revenue Cycle</h1>
        </div>
        <p class="lc-lead">A hospital gives care first and is often paid weeks later. If a claim is denied, the money may come late, come in part, or never come. In this lesson you will follow the <strong>revenue cycle</strong>: all the steps from registration to the money reaching the bank. You will learn about packages, PM-JAY and private insurance claims in general words. You will work out a <strong>denial rate</strong>, find the main reasons for denials, and use AI to check claims before they go out. The data is Tarang Multispeciality Hospital's made-up September 2026 data. This is general education, not financial or legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The revenue cycle in six steps: registration and eligibility, pre-authorisation, treatment and records, discharge and final bill, claim submitted, and paid or denied. Denied claims go to a step where the team finds the reason, fixes it and resubmits. A note shows that in made-up September data, 84 of 720 claims were denied or queried, 11.7 percent.">
            <defs>
              <marker id="ho12a" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
            </defs>
            <g font-family="inherit" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">The hospital revenue cycle for an insured patient</text>
              <rect x="15" y="42" width="220" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="125" y="66" font-size="13" font-weight="700" text-anchor="middle">1 Registration, eligibility</text>
              <text x="125" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">check the scheme or policy</text>
              <rect x="270" y="42" width="220" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="66" font-size="13" font-weight="700" text-anchor="middle">2 Pre-authorisation</text>
              <text x="380" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">approval before treatment</text>
              <rect x="525" y="42" width="220" height="62" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="635" y="66" font-size="13" font-weight="700" text-anchor="middle">3 Treatment and records</text>
              <text x="635" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">notes, reports, enhancements</text>
              <rect x="525" y="148" width="220" height="62" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="635" y="172" font-size="13" font-weight="700" text-anchor="middle">4 Discharge, final bill</text>
              <text x="635" y="194" font-size="11" fill="#9b99b8" text-anchor="middle">package or tariff, summary</text>
              <rect x="270" y="148" width="220" height="62" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="172" font-size="13" font-weight="700" text-anchor="middle">5 Claim submitted</text>
              <text x="380" y="194" font-size="11" fill="#9b99b8" text-anchor="middle">documents, codes, on time</text>
              <rect x="15" y="148" width="220" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="125" y="172" font-size="13" font-weight="700" text-anchor="middle">6 Paid or denied</text>
              <text x="125" y="194" font-size="11" fill="#9b99b8" text-anchor="middle">paid in full, in part, or a query</text>
              <rect x="15" y="238" width="300" height="42" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="165" y="264" font-size="12" text-anchor="middle">Denied: find the reason, fix, resubmit</text>
              <rect x="525" y="232" width="220" height="54" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="635" y="254" font-size="11" fill="#9b99b8" text-anchor="middle">September (made-up data):</text>
              <text x="635" y="273" font-size="12" font-weight="700" fill="#fcd34d" text-anchor="middle">84 of 720 claims = 11.7%</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ho12a)">
                <line x1="236" y1="73" x2="268" y2="73"/>
                <line x1="491" y1="73" x2="523" y2="73"/>
                <line x1="635" y1="105" x2="635" y2="146"/>
                <line x1="524" y1="179" x2="492" y2="179"/>
                <line x1="269" y1="179" x2="237" y2="179"/>
                <line x1="125" y1="211" x2="125" y2="236"/>
                <path d="M316,259 L380,259 L380,212"/>
              </g>
            </g>
          </svg>
          <figcaption>Most denials start earlier than the claim itself: a missing approval, a missing report or a wrong package. The loop at the bottom costs time and money.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who pays: cash, packages, PM-JAY and insurance</h3>
          <p>A few terms first:</p>
          <ul class="lc-list">
            <li><strong>Payer:</strong> whoever pays the bill. That may be the patient, a government scheme, an insurer or an employer.</li>
            <li><strong>Package:</strong> one fixed price for a treatment, such as a normal delivery or a knee replacement. It usually covers the bed, fees, medicines and tests. Read what each package includes and excludes.</li>
            <li><strong>PM-JAY</strong> (Ayushman Bharat Pradhan Mantri Jan Arogya Yojana): a government scheme run by the National Health Authority. It gives eligible families cashless cover, up to ₹5 lakh per family per year, at empanelled hospitals. It pays set package rates. Since late 2024, it also covers all people aged 70 and above, whatever their income. Hospitals request approval and submit claims through the scheme's online system.</li>
            <li><strong>Private insurance:</strong> often handled by a <strong>TPA</strong> (third-party administrator: a company that processes claims for insurers). In <strong>cashless</strong> claims, the insurer pays the hospital. In <strong>reimbursement</strong> claims, the patient pays first and claims later.</li>
            <li><strong>Pre-authorisation:</strong> approval from the payer before or at the start of planned treatment. An <strong>enhancement</strong> asks for more approval when the stay or cost grows.</li>
          </ul>
          <p>In India, IRDAI (the insurance regulator) sets time limits for insurers on cashless decisions. Its 2024 health master circular asks for quick decisions at admission and at discharge. Scheme rules, packages and time limits change often. Always check the current PM-JAY guidelines, IRDAI circulars and your payer contracts.</p>
          <p>Tarang's 1,200 discharges in September, by payer (made-up data):</p>
          <table class="lc-table">
            <thead><tr><th>Payer</th><th>Discharges</th><th>Needs a claim?</th></tr></thead>
            <tbody>
              <tr><td>Cash (self-pay)</td><td>480</td><td>No</td></tr>
              <tr><td>PM-JAY</td><td>300</td><td>Yes</td></tr>
              <tr><td>Private insurance (cashless, through TPAs)</td><td>360</td><td>Yes</td></tr>
              <tr><td>Corporate (employer pays)</td><td>60</td><td>Yes</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>1,200</strong></td><td><strong>720 claims</strong></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Denial rate and denial reasons</h3>
          <p>A <strong>denial</strong> here means the payer rejected the claim, cut part of it, or sent a query on the first submission. Each one delays payment.</p>
          <ul class="lc-list">
            <li><strong>First-pass denial rate</strong> = claims denied or queried on first submission ÷ claims submitted × 100.</li>
            <li><strong>Clean claim rate</strong> = claims accepted on first submission ÷ claims submitted × 100.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Payer</th><th>Claims</th><th>Denied or queried</th><th>Denial rate</th><th>Claim value</th><th>Value held up</th></tr></thead>
            <tbody>
              <tr><td>PM-JAY</td><td>300</td><td>27</td><td>9.0%</td><td>₹84,00,000</td><td>₹7,56,000</td></tr>
              <tr><td>Private insurance (TPA)</td><td>360</td><td>54</td><td>15.0%</td><td>₹2,88,00,000</td><td>₹43,20,000</td></tr>
              <tr><td>Corporate</td><td>60</td><td>3</td><td>5.0%</td><td>₹30,00,000</td><td>₹1,50,000</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>720</strong></td><td><strong>84</strong></td><td><strong>11.7%</strong></td><td><strong>₹4,02,00,000</strong></td><td><strong>₹52,26,000 (13.0%)</strong></td></tr>
            </tbody>
          </table>
          <p>The clean claim rate is 636 ÷ 720 = 88.3%. With payers in rows 2 to 4, claims in B and denials in C:</p>
          <pre><code>Payer denial rate (D2):  =C2/B2                  gives 0.09   (9.0%)
        Hospital denial rate:    =SUM(C2:C4)/SUM(B2:B4)  gives 0.117  (11.7%)
        Clean claim rate:        =1-SUM(C2:C4)/SUM(B2:B4) gives 0.883 (88.3%)</code></pre>
          <p><strong>A common mistake:</strong> dividing by all 1,200 discharges gives 7.0%. Cash patients never had a claim, so they do not belong in this formula.</p>
          <p>Asha, the medical coder, sorted the 84 denials by main reason:</p>
          <table class="lc-table">
            <thead><tr><th>Main reason</th><th>Denials</th><th>Share</th><th>Running total</th></tr></thead>
            <tbody>
              <tr><td>Missing or incomplete documents</td><td>30</td><td>35.7%</td><td>35.7%</td></tr>
              <tr><td>Pre-authorisation missing, expired or not enhanced</td><td>16</td><td>19.0%</td><td>54.8%</td></tr>
              <tr><td>Wrong package or code</td><td>14</td><td>16.7%</td><td>71.4%</td></tr>
              <tr><td>Policy exclusion or waiting period</td><td>10</td><td>11.9%</td><td>83.3%</td></tr>
              <tr><td>Bill does not match the agreed tariff</td><td>8</td><td>9.5%</td><td>92.9%</td></tr>
              <tr><td>Submitted late</td><td>6</td><td>7.1%</td><td>100.0%</td></tr>
            </tbody>
          </table>
          <p>The top three reasons cause 71.4% of denials. All three can be caught before the claim goes out. If document denials were halved, from 30 to 15, the denial rate would fall to 69 ÷ 720 = 9.6%.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and the hard rules</h3>
          <p>AI is useful for checking and drafting. Give it de-identified data only: a claim ID, age, dates and a checklist, never names, phone numbers or ID numbers. Use your hospital's approved AI tool.</p>
          <pre><code>Weak prompt:
        Will this claim be approved?

        Better prompt:
        You are helping a hospital claims team. Below is a de-identified claim
        summary and our pre-submission checklist for [payer type].
        1. Mark each checklist item as present, missing or unclear.
        2. Compare approved days with actual days of stay.
        3. List questions for the treating doctor.
        Do not suggest any diagnosis or code that is not written in the notes.</code></pre>
          <p>Other good uses: grouping denial letters by reason, drafting a polite reply to a query with the facts attached, and making a checklist for each common package.</p>
          <p><strong>The hard rules:</strong></p>
          <ul class="lc-list">
            <li>Only the treating doctor decides and writes the diagnosis. Coding something that is not documented, to get a higher package, is fraud.</li>
            <li>A trained coder such as Asha checks every code and package. AI can suggest; it cannot sign.</li>
            <li>AI may be out of date on scheme rules and package lists. Check the payer's current documents.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a claim check with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Asha">De-identified claim C-0917 (made-up): PM-JAY, age 62, dengue with low platelets. Approved for 3 days; stayed 4 days (12 to 16 Sep). Check it against our checklist.</li>
              <li data-kind="answer" data-label="AI assistant">Missing: an enhancement or a doctor's note for day 4. Also, the discharge summary may be unsigned. Tip: add "severe dengue" to get a higher package.</li>
              <li data-kind="warn" data-label="Mistake">The tip is wrong and unsafe. The notes do not say severe dengue. Changing a diagnosis to fit a package is fraud.</li>
              <li data-kind="tool" data-label="HIS">Asha opens the full record in the hospital information system.</li>
              <li data-kind="result" data-label="Result">The summary is signed on page 2, which Asha had not pasted. The day-4 note is really missing.</li>
              <li data-kind="check" data-label="Asha decides">She asks the treating doctor for a note on why day 4 was needed. She submits with the note, as the scheme's rules allow. She ignores the "tip".</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to analyse a month of denials and turn them into a prevention plan. Use the sample data or your own totals, with no patient details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a revenue cycle adviser for a hospital in India. Use simple English. This is general help, not legal or financial advice.

        Hospital: [Tarang Multispeciality Hospital]. Month: [September 2026].
        Made-up claim data (payer: claims submitted, denied or queried on first submission):
        [PM-JAY: 300, 27
        Private insurance through TPAs: 360, 54
        Corporate: 60, 3]
        Main denial reasons (count): [missing or incomplete documents 30; pre-authorisation missing, expired or not enhanced 16; wrong package or code 14; policy exclusion or waiting period 10; bill does not match tariff 8; submitted late 6]

        Please:
        1. Work out the denial rate for each payer and in total (denied ÷ claims submitted). Show the working.
        2. Rank the reasons with share and running total.
        3. For the top 3 reasons, give a check to do before submission, the best step to do it, and who should own it (billing, coder, ward, doctor).
        4. Suggest one number to track every week.
        Use only these numbers. Do not invent scheme rules or package rates.</pre>
            <ul class="ai-try-checks">
              <li>Total denial rate should be 84 ÷ 720 = 11.7%, not 84 ÷ 1,200.</li>
              <li>Payer rates should be 9.0%, 15.0% and 5.0%.</li>
              <li>The top 3 reasons should add up to 71.4%.</li>
              <li>It should never suggest changing diagnoses or codes to get paid more.</li>
              <li>Any scheme or IRDAI rule it mentions must be checked in current official documents.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Most claim denials are made at admission and on the ward, not at the billing desk. Measure the denial rate against claims submitted, find the top reasons, and fix them at the step where they start. AI can check and draft, but only doctors write diagnoses and only trained coders sign off codes.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Quality, Safety and Accreditation</h1>
        </div>
        <p class="lc-lead">Quality work answers a simple question: are patients safe, and is care getting better? In this lesson you will learn what NABH accreditation asks for, in general words. You will sort <strong>incident reports</strong> by harm, plan <strong>audits</strong>, and calculate <strong>infection control rates</strong> with the right formulas. You will also use AI to group incident reports and draft reports, while the quality and infection control teams decide. The examples use Tarang Multispeciality Hospital's made-up September 2026 data. This is general education, not medical or legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The incident learning cycle in five steps: report, grade the harm, find the cause, take action, and audit and share, with an arrow back to reporting. Below, a formula box shows the central line infection rate: 1 infection divided by 210 central line days times 1,000 equals 4.8 per 1,000 line days, and a warning that dividing by 456 patient days is wrong.">
            <defs>
              <marker id="ho13a" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
            </defs>
            <g font-family="inherit" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Learning from incidents</text>
              <rect x="12" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="76" y="68" font-size="13" font-weight="700" text-anchor="middle">1 Report</text>
              <text x="76" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">any staff member,</text>
              <text x="76" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">no blame</text>
              <rect x="164" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="228" y="68" font-size="13" font-weight="700" text-anchor="middle">2 Grade harm</text>
              <text x="228" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">near miss, no harm,</text>
              <text x="228" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">harm, sentinel</text>
              <rect x="316" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="68" font-size="13" font-weight="700" text-anchor="middle">3 Find cause</text>
              <text x="380" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">RCA: why did the</text>
              <text x="380" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">system allow it?</text>
              <rect x="468" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="532" y="68" font-size="13" font-weight="700" text-anchor="middle">4 Take action</text>
              <text x="532" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">CAPA: owner</text>
              <text x="532" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">and due date</text>
              <rect x="620" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="684" y="68" font-size="13" font-weight="700" text-anchor="middle">5 Audit, share</text>
              <text x="684" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">did the fix work?</text>
              <text x="684" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">tell the teams</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ho13a)">
                <line x1="141" y1="82" x2="162" y2="82"/>
                <line x1="293" y1="82" x2="314" y2="82"/>
                <line x1="445" y1="82" x2="466" y2="82"/>
                <line x1="597" y1="82" x2="618" y2="82"/>
                <path d="M684,121 L684,144 L76,144 L76,123"/>
              </g>
              <text x="380" y="162" font-size="11" fill="#9b99b8" text-anchor="middle">September: 46 incidents reported, 18 of them near misses (made-up data)</text>
              <rect x="12" y="178" width="736" height="84" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="30" y="202" font-size="13" font-weight="700">Infection rate: use device days, not patient days</text>
              <text x="30" y="226" font-size="12" fill="#6ee7b7">Right: CLABSI = 1 infection ÷ 210 central line days × 1,000 = 4.8 per 1,000 line days</text>
              <text x="30" y="248" font-size="12" fill="#f9a8d4">Wrong: 1 ÷ 456 ICU patient days × 1,000 = 2.2 (looks better, but it is not the same measure)</text>
              <text x="380" y="286" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up data · Tarang Multispeciality Hospital ICU · September 2026</text>
            </g>
          </svg>
          <figcaption>Quality work is a loop: report, grade, find the cause, act and check. Rates only mean something when the bottom number of the formula is the right one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>NABH and incident reports</h3>
          <p><strong>NABH</strong> (National Accreditation Board for Hospitals &amp; Healthcare Providers) is part of the Quality Council of India. <strong>Accreditation</strong> means an outside body checks the hospital against written standards. It is voluntary for most private hospitals, but many insurers and schemes value it.</p>
          <ul class="lc-list">
            <li>The <strong>6th edition</strong> of the NABH hospital standards applies to new applications from 1 January 2025.</li>
            <li>It has ten chapters. They cover areas such as patient care, medicines, patient rights, infection prevention and control, patient safety and quality, management, facilities, staff and records.</li>
            <li>Each standard has <strong>objective elements</strong>: specific things assessors check. Some are marked "core" and are checked at every assessment.</li>
            <li>The hospital must track <strong>quality indicators</strong> (measured numbers such as infection rates or incident rates) and act on them.</li>
          </ul>
          <p>Always read the current standards on the NABH website. Details change between editions.</p>
          <p>An <strong>incident</strong> is any event that harmed, or could have harmed, a patient. A <strong>near miss</strong> was caught before it reached the patient. A <strong>sentinel event</strong> is a very serious one, such as an unexpected death or a wrong-site operation. Good systems are <strong>no-blame</strong>: they ask why the system let the error happen.</p>
          <table class="lc-table">
            <thead><tr><th>Type (made-up data)</th><th>Count</th><th></th><th>Harm grade</th><th>Count</th></tr></thead>
            <tbody>
              <tr><td>Medication</td><td>14</td><td></td><td>Near miss</td><td>18</td></tr>
              <tr><td>Lab or sample</td><td>8</td><td></td><td>Reached patient, no harm</td><td>20</td></tr>
              <tr><td>Patient falls</td><td>6</td><td></td><td>Mild harm</td><td>6</td></tr>
              <tr><td>Documentation</td><td>6</td><td></td><td>Moderate harm</td><td>2</td></tr>
              <tr><td>Equipment</td><td>5</td><td></td><td>Severe harm or death</td><td>0</td></tr>
              <tr><td>Patient identification</td><td>4</td><td></td><td></td><td></td></tr>
              <tr><td>Other</td><td>3</td><td></td><td></td><td></td></tr>
              <tr><td><strong>Total</strong></td><td><strong>46</strong></td><td></td><td><strong>Total</strong></td><td><strong>46</strong></td></tr>
            </tbody>
          </table>
          <p>To compare months or wards, turn counts into rates per 1,000 patient days. September had 5,160 patient days.</p>
          <pre><code>Incident rate:    =46/5160*1000   gives 8.9 per 1,000 patient days
        Fall rate:        =6/5160*1000    gives 1.2 per 1,000 patient days
        Medication rate:  =14/5160*1000   gives 2.7 per 1,000 patient days</code></pre>
          <p>Be careful: a rise in reports is often a good sign. It can mean staff trust the system. Many near misses and few harm events is a healthy pattern.</p>
        </div>
        <div class="lc-card">
          <h3>Infection control rates with the right formulas</h3>
          <p><strong>HAI</strong> (healthcare-associated infection) means an infection the patient got in hospital. ICUs track three device infections:</p>
          <ul class="lc-list">
            <li><strong>CLABSI:</strong> bloodstream infection linked to a central line (a drip tube in a large vein).</li>
            <li><strong>CAUTI:</strong> urinary infection linked to a urinary catheter.</li>
            <li><strong>VAP:</strong> pneumonia linked to a ventilator. Some systems use a wider measure called VAE.</li>
          </ul>
          <p><strong>Device days</strong> = the number of patients with the device, counted once each day and added up for the month. The rate uses device days because only patients with the device are at risk.</p>
          <p><strong>Rate per 1,000 device days</strong> = infections ÷ device days × 1,000. <strong>Device utilisation ratio</strong> = device days ÷ patient days.</p>
          <table class="lc-table">
            <thead><tr><th>Tarang ICU, September (made-up)</th><th>Infections</th><th>Device days</th><th>Rate per 1,000 device days</th><th>Utilisation ratio</th></tr></thead>
            <tbody>
              <tr><td>CLABSI (central line days)</td><td>1</td><td>210</td><td>4.8</td><td>0.46</td></tr>
              <tr><td>CAUTI (urinary catheter days)</td><td>2</td><td>300</td><td>6.7</td><td>0.66</td></tr>
              <tr><td>VAP (ventilator days)</td><td>2</td><td>150</td><td>13.3</td><td>0.33</td></tr>
            </tbody>
          </table>
          <p>The ICU had 456 patient days. With infections in column B, device days in C and patient days in F1:</p>
          <pre><code>Rate per 1,000 device days (D2):  =B2/C2*1000   gives 4.76 (CLABSI)
        Utilisation ratio (E2):           =C2/$F$1      gives 0.46</code></pre>
          <p>Two other common measures:</p>
          <ul class="lc-list">
            <li><strong>SSI</strong> (surgical site infection) rate = SSIs ÷ operations × 100. Infections can appear up to 30 days later, or up to 90 days after some operations, such as joint replacements. So Tarang reports August operations in September: 5 SSIs after 380 operations = 1.3%.</li>
            <li><strong>Hand hygiene compliance</strong> = times staff cleaned their hands ÷ observed chances (opportunities) × 100. Auditors watched 420 chances and saw 336 hand cleans: 80.0%.</li>
          </ul>
          <p><strong>Small numbers warning:</strong> one more CLABSI would double the rate to 9.5. Look at the trend over several months before you act on one month. The infection control team decides if a case meets the surveillance definition. Use standard definitions, such as those from the US CDC's NHSN programme, and follow your hospital's policy.</p>
        </div>
        <div class="lc-card">
          <h3>Audits, and how AI helps</h3>
          <p>An <strong>audit</strong> checks real practice against a standard. Examples: hand hygiene watching, medicine chart checks, consent form checks and crash-cart checks. A good audit has a clear standard, a sample size, a date, a result and an action.</p>
          <pre><code>Weak prompt:
        Summarise these incidents.

        Better prompt:
        You are helping a hospital quality team. Below are 46 de-identified
        incident reports from September (ID, ward, type, harm grade, short text).
        1. Group them by type and by harm grade. Check the totals add to 46.
        2. List possible system causes to discuss, not people to blame.
        3. Suggest 3 audit ideas with a standard and a sample size.
        4. Mark anything that may be a sentinel event for urgent human review.
        Use only this data. Do not decide the final harm grade or cause.</code></pre>
          <p><strong>What people must still do:</strong></p>
          <ul class="lc-list">
            <li>Remove names, bed numbers, UHIDs (hospital ID numbers) and staff names before using any AI tool.</li>
            <li>The quality committee grades harm and decides the cause after a proper review, such as an RCA (root cause analysis).</li>
            <li>The infection control team confirms each infection case. AI must not label a patient as infected.</li>
            <li>Check every rate in your own sheet. AI often uses the wrong bottom number.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: grade the incident</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up incident at Tarang by how far it went.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="near" data-label="Near miss"></div>
              <div data-sorter-target="bucket" data-bucket="noharm" data-label="Reached patient, no harm"></div>
              <div data-sorter-target="bucket" data-bucket="harm" data-label="Harm"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="near" data-why="The pharmacist caught it before the medicine reached the patient.">A pharmacist spots a tenfold dose error on a chart before the medicine is given</li>
              <li data-bucket="noharm" data-why="The patient got the wrong dose, but checks showed no effect.">A patient gets one extra paracetamol dose; checks show no ill effect</li>
              <li data-bucket="harm" data-why="The fall caused an injury that needed treatment.">A patient falls on the way to the toilet and needs stitches</li>
              <li data-bucket="near" data-why="The label error was caught before the sample was tested or used.">A nurse finds a blood sample with the wrong name label before it goes to the lab</li>
              <li data-bucket="noharm" data-why="The drip reached the patient but caused no harm.">An infusion pump runs a drip slower than ordered for an hour, with no harm</li>
              <li data-bucket="harm" data-why="A pressure injury is harm, even when it heals.">A bed-bound patient develops a new pressure sore on the ward</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate infection and incident rates from made-up monthly data and draft a short quality report. Then check each rate.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a helper for a hospital quality and infection control team. Use simple English. This is general help, not medical advice.

        Hospital: [Tarang Multispeciality Hospital]. Month: [September 2026].
        Made-up ICU data: patient days [456]; central line days [210], CLABSI [1]; urinary catheter days [300], CAUTI [2]; ventilator days [150], VAP [2].
        Hospital patient days: [5,160]. Incidents reported: [46] (near miss [18], no harm [20], mild harm [6], moderate harm [2], severe [0]). Falls: [6].
        Hand hygiene audit: [336] hand cleans seen in [420] opportunities.

        Please:
        1. Work out each device infection rate per 1,000 device days and each device utilisation ratio. Show the formula.
        2. Work out the incident rate and fall rate per 1,000 patient days, and hand hygiene compliance %.
        3. Write a half-page report for the quality committee: 3 findings, 3 questions to discuss and 2 audit ideas.
        4. Add one warning about small numbers.
        Use only this data. Do not name or blame any person.</pre>
            <ul class="ai-try-checks">
              <li>CLABSI 4.8, CAUTI 6.7 and VAP 13.3 per 1,000 device days, not per patient days.</li>
              <li>Incident rate 8.9 and fall rate 1.2 per 1,000 patient days; hand hygiene 80.0%.</li>
              <li>It should not say the ICU "failed" or compare with outside benchmarks it cannot show.</li>
              <li>The report should ask about systems, not blame staff.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A quality number is only useful if the formula is right and people act on it. Divide infections by device days, incidents by patient days, and hand cleans by opportunities. Let AI group and draft, but the quality and infection control teams grade harm, confirm cases and choose the fixes.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Dashboards and Reports for Leaders</h1>
        </div>
        <p class="lc-lead">Hospital leaders are busy. They need a few clear numbers, a short story and a list of decisions. In this lesson you will choose <strong>KPIs</strong> (key performance indicators: the few numbers that show if the hospital is working well). You will set targets, mark each KPI green, amber or red, and lay out a one-page dashboard. Then you will use AI to draft the monthly summary and check every sentence against the data. The examples use Tarang Multispeciality Hospital's made-up September 2026 data.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A one-page dashboard mock-up for September 2026 with eight tiles: bed occupancy 86.0 percent green, ALOS 4.3 days green, OPD average wait 45.9 minutes red, no-show rate 16.2 percent amber, OT utilisation 67.5 percent amber, OT cancellations 9.0 percent amber, claim denial rate 11.7 percent amber, and preventive maintenance on time 84.6 percent red. An alerts strip lists Medicine and ICU at 95 percent, NS1 kits and gloves below the reorder point, and 800 ceftriaxone vials expiring in November 2026.">
            <g font-family="inherit" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Tarang Hospital · Operations dashboard · September 2026</text>
              <rect x="12" y="40" width="173" height="82" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="26" y="62" font-size="11" fill="#9b99b8">Bed occupancy</text>
              <text x="26" y="92" font-size="22" font-weight="700" fill="#6ee7b7">86.0%</text>
              <text x="26" y="112" font-size="11" fill="#9b99b8">target 80 to 90%</text>
              <rect x="199" y="40" width="173" height="82" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="213" y="62" font-size="11" fill="#9b99b8">ALOS</text>
              <text x="213" y="92" font-size="22" font-weight="700" fill="#6ee7b7">4.3 days</text>
              <text x="213" y="112" font-size="11" fill="#9b99b8">target 4.5 or less</text>
              <rect x="386" y="40" width="173" height="82" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="400" y="62" font-size="11" fill="#9b99b8">OPD average wait</text>
              <text x="400" y="92" font-size="22" font-weight="700" fill="#f9a8d4">45.9 min</text>
              <text x="400" y="112" font-size="11" fill="#9b99b8">target 30 or less</text>
              <rect x="573" y="40" width="173" height="82" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="587" y="62" font-size="11" fill="#9b99b8">OPD no-show rate</text>
              <text x="587" y="92" font-size="22" font-weight="700" fill="#fcd34d">16.2%</text>
              <text x="587" y="112" font-size="11" fill="#9b99b8">target 12% or less</text>
              <rect x="12" y="136" width="173" height="82" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="26" y="158" font-size="11" fill="#9b99b8">OT utilisation</text>
              <text x="26" y="188" font-size="22" font-weight="700" fill="#fcd34d">67.5%</text>
              <text x="26" y="208" font-size="11" fill="#9b99b8">target 75% or more</text>
              <rect x="199" y="136" width="173" height="82" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="213" y="158" font-size="11" fill="#9b99b8">OT cancelled on the day</text>
              <text x="213" y="188" font-size="22" font-weight="700" fill="#fcd34d">9.0%</text>
              <text x="213" y="208" font-size="11" fill="#9b99b8">target 5% or less</text>
              <rect x="386" y="136" width="173" height="82" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="400" y="158" font-size="11" fill="#9b99b8">Claim denial rate</text>
              <text x="400" y="188" font-size="22" font-weight="700" fill="#fcd34d">11.7%</text>
              <text x="400" y="208" font-size="11" fill="#9b99b8">target 8% or less</text>
              <rect x="573" y="136" width="173" height="82" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="587" y="158" font-size="11" fill="#9b99b8">PM done on time</text>
              <text x="587" y="188" font-size="22" font-weight="700" fill="#f9a8d4">84.6%</text>
              <text x="587" y="208" font-size="11" fill="#9b99b8">target 95% or more</text>
              <rect x="12" y="232" width="734" height="72" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="26" y="254" font-size="12" font-weight="700" fill="#c4b5fd">Alerts for decisions</text>
              <text x="26" y="274" font-size="11">Medicine and ICU at 95.0% occupancy · NS1 kits and gloves below the reorder point</text>
              <text x="26" y="292" font-size="11">800 ceftriaxone vials expire in November 2026 · dengue season continues into October</text>
              <text x="380" y="322" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up data and made-up targets · green = on target, amber = watch, red = act now</text>
            </g>
          </svg>
          <figcaption>A leader's dashboard fits on one page: a few KPIs with targets and colours, and a short list of alerts that need a decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Choosing KPIs and targets</h3>
          <p>A hospital can measure hundreds of things. A leader's page should show about 8 to 12. Good KPIs pass four tests:</p>
          <ul class="lc-list">
            <li><strong>Clear:</strong> one written definition, with the top and bottom numbers of the formula.</li>
            <li><strong>Owned:</strong> one person is responsible, such as Vikram for OPD waits or Sister Mary Thomas for staffing.</li>
            <li><strong>Actionable:</strong> someone can change it by doing something different.</li>
            <li><strong>Balanced:</strong> mix flow, patients, staff, money and safety, so that one number is not improved by hurting another.</li>
          </ul>
          <p>Tarang's leaders set their own targets (made up for this lesson). Each KPI has a green line and a red line. Amber is in between.</p>
          <table class="lc-table">
            <thead><tr><th>KPI</th><th>September</th><th>Green if</th><th>Red if</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>Medicine bed occupancy</td><td>95.0%</td><td>90% or less</td><td>over 93%</td><td>Red</td></tr>
              <tr><td>ALOS (average length of stay)</td><td>4.3 days</td><td>4.5 or less</td><td>over 5.0</td><td>Green</td></tr>
              <tr><td>OPD average wait</td><td>45.9 min</td><td>30 or less</td><td>over 45</td><td>Red</td></tr>
              <tr><td>OPD no-show rate</td><td>16.2%</td><td>12% or less</td><td>over 18%</td><td>Amber</td></tr>
              <tr><td>OT utilisation</td><td>67.5%</td><td>75% or more</td><td>under 60%</td><td>Amber</td></tr>
              <tr><td>OT cancelled on the day</td><td>9.0%</td><td>5% or less</td><td>over 10%</td><td>Amber</td></tr>
              <tr><td>Discharges before noon</td><td>20.0%</td><td>30% or more</td><td>under 15%</td><td>Amber</td></tr>
              <tr><td>Key items below reorder point</td><td>2</td><td>0</td><td>2 or more</td><td>Red</td></tr>
              <tr><td>PM done on time</td><td>84.6%</td><td>95% or more</td><td>under 85%</td><td>Red</td></tr>
              <tr><td>Claim denial rate</td><td>11.7%</td><td>8% or less</td><td>over 12%</td><td>Amber</td></tr>
              <tr><td>Hand hygiene compliance</td><td>80.0%</td><td>85% or more</td><td>under 75%</td><td>Amber</td></tr>
            </tbody>
          </table>
          <p>Note that the hospital occupancy of 86.0% is green, but Medicine at 95.0% is red. Show the ward view too, or the hospital number hides the problem.</p>
          <p>Status formulas in Google Sheets or Excel, with the value in B2, the green line in C2 and the red line in D2:</p>
          <pre><code>Lower is better (wait, no-shows):   =IF(B2&lt;=C2,"Green",IF(B2&gt;D2,"Red","Amber"))
        Higher is better (OT use, PM):      =IF(B2&gt;=C2,"Green",IF(B2&lt;D2,"Red","Amber"))</code></pre>
          <p>Then use conditional formatting to colour the cell. Also show the text "Red" or "Green", because some readers cannot tell the colours apart.</p>
        </div>
        <div class="lc-card">
          <h3>The monthly report: one page, one story</h3>
          <p>Vikram's monthly report for Dr Farida Shaikh follows the same five parts every month:</p>
          <ol class="lc-list">
            <li><strong>Headline:</strong> two or three sentences on the month.</li>
            <li><strong>Dashboard:</strong> the KPI table with status colours.</li>
            <li><strong>What went well</strong> and <strong>what needs action</strong>, with the numbers.</li>
            <li><strong>Decisions needed:</strong> each with options, cost and a deadline.</li>
            <li><strong>Data notes:</strong> the data source, date of export and any known gaps.</li>
          </ol>
          <p>AI is good at the first draft of the headline and the "what went well" text. It is risky with numbers. It may round wrongly, use the wrong formula, or invent a trend. For example, Tarang's pack has no August KPI data. So any sentence like "OT use improved from August" is made up.</p>
          <pre><code>Weak prompt:
        Write our monthly hospital report.

        Better prompt:
        You are helping a hospital operations manager write a monthly summary
        for the medical superintendent. Below is our KPI table for September
        (KPI, value, target, status). Write:
        1. A 3-sentence headline.
        2. Three items that need action, each with its number and target.
        3. Two decisions for leaders, as questions.
        Use only numbers in the table. Do not calculate new numbers. Do not
        mention past months; we have not given them. Keep it under 250 words.</code></pre>
          <p><strong>Check every sentence.</strong> Put the draft next to the table. Tick each number. Delete any claim you cannot trace to your data. The person who signs the report owns every word in it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check the AI summary</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Vikram">Here is our September KPI table and ward occupancy table. Write a 5-line summary for the MS. Use only this data.</li>
              <li data-kind="answer" data-label="AI draft">"Average ward occupancy was 83.6%. The OPD no-show rate was 7.2%. OT use improved from August to 67.5%. Two key stock items are below the reorder point. Claim denials were 11.7%."</li>
              <li data-kind="tool" data-label="Spreadsheet">Vikram checks each number against his sheet: total patient days ÷ available bed days, no-shows ÷ bookings.</li>
              <li data-kind="result" data-label="Result">Occupancy is 5,160 ÷ 6,000 = 86.0%. No-shows are 723 ÷ 4,470 = 16.2%. Stock and denial numbers are right.</li>
              <li data-kind="warn" data-label="Three errors">83.6% is a simple average of the ward percentages. 7.2% divides no-shows by patients seen. "Improved from August" is invented: the table had no August data.</li>
              <li data-kind="check" data-label="Vikram fixes it">He corrects both numbers, deletes the August claim and adds "Medicine and ICU at 95%". Then he signs the report.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a KPI table into a one-page leader report and a dashboard layout. Then check every number it uses.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping the operations manager of [Tarang Multispeciality Hospital], a made-up 200-bed hospital, write a monthly report for the medical superintendent. Use simple English.

        Month: [September 2026]. Made-up KPIs (value; target):
        [Bed occupancy 86.0% (Medicine 95.0%, ICU 95.0%); target 80 to 90%
        ALOS 4.3 days; 4.5 or less
        OPD average wait 45.9 min; 30 or less
        OPD no-show rate 16.2%; 12% or less
        OT utilisation 67.5%; 75% or more
        OT cancelled on the day 9.0%; 5% or less
        Claim denial rate 11.7%; 8% or less
        PM done on time 84.6%; 95% or more
        Alerts: NS1 kits and gloves below reorder point; 800 ceftriaxone vials expire Nov 2026]

        Please:
        1. Give each KPI a status: on target, watch or act now. Explain the rule you used.
        2. Write a headline of 3 sentences and a list of the top 3 problems with numbers.
        3. Suggest 2 decisions for leaders, as questions with options.
        4. Sketch a one-page dashboard layout in words: what goes top left, what goes in the alerts box.
        Use only these numbers. Do not invent past months or new figures.</pre>
            <ul class="ai-try-checks">
              <li>Every number in the draft should match the list exactly.</li>
              <li>ALOS and hospital occupancy should be on target; the OPD wait should need action.</li>
              <li>It should point out that Medicine and ICU are at 95% even though the hospital is 86%.</li>
              <li>It must not mention trends or past months it was never given.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good dashboard shows a few owned KPIs with clear targets, and the report turns them into decisions. AI can write the words quickly, but it often gets numbers wrong or invents trends. Check every number against your own sheet before a leader sees it.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Capstone: An Operations Improvement Plan for Tarang Hospital</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole course together. Dr Farida Shaikh has asked Vikram for a one-month improvement plan for October 2026. You will use Tarang Multispeciality Hospital's made-up September data on beds, OPD, OT, stock, equipment and claims. You will find the biggest problems, forecast October demand, write a plan with owners and targets, and build a weekly tracker. AI helps at each step, and you check every number. Everything here is made up for teaching, and it is not medical, legal or financial advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="The capstone in five steps: find problems in the September data, size each problem with numbers, forecast October demand, write the plan with an owner, target and date, and track it weekly on a dashboard, with a loop back to finding problems next month. Below, four made-up September facts: Medicine and ICU at 95 percent occupancy, 20 percent of discharges before noon, OPD wait 45.9 minutes, and OT day-of-surgery cancellations 9.0 percent.">
            <defs>
              <marker id="ho15a" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
            </defs>
            <g font-family="inherit" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">From September data to an October plan</text>
              <rect x="12" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="76" y="68" font-size="13" font-weight="700" text-anchor="middle">1 Find</text>
              <text x="76" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">scan beds, OPD,</text>
              <text x="76" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">OT, stock, money</text>
              <rect x="164" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="228" y="68" font-size="13" font-weight="700" text-anchor="middle">2 Size</text>
              <text x="228" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">how big, where,</text>
              <text x="228" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">what causes it</text>
              <rect x="316" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="68" font-size="13" font-weight="700" text-anchor="middle">3 Forecast</text>
              <text x="380" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">October fever,</text>
              <text x="380" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">dengue, stock</text>
              <rect x="468" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="532" y="68" font-size="13" font-weight="700" text-anchor="middle">4 Plan</text>
              <text x="532" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">action, owner,</text>
              <text x="532" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">target, date</text>
              <rect x="620" y="44" width="128" height="76" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="684" y="68" font-size="13" font-weight="700" text-anchor="middle">5 Track</text>
              <text x="684" y="88" font-size="11" fill="#9b99b8" text-anchor="middle">weekly dashboard,</text>
              <text x="684" y="104" font-size="11" fill="#9b99b8" text-anchor="middle">adjust the plan</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ho15a)">
                <line x1="141" y1="82" x2="162" y2="82"/>
                <line x1="293" y1="82" x2="314" y2="82"/>
                <line x1="445" y1="82" x2="466" y2="82"/>
                <line x1="597" y1="82" x2="618" y2="82"/>
                <path d="M684,121 L684,144 L76,144 L76,123"/>
              </g>
              <text x="380" y="162" font-size="11" fill="#9b99b8" text-anchor="middle">Next month: start again with the new data</text>
              <rect x="12" y="178" width="173" height="62" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="26" y="198" font-size="11" fill="#9b99b8">Medicine and ICU</text>
              <text x="26" y="226" font-size="20" font-weight="700" fill="#f9a8d4">95.0% full</text>
              <rect x="199" y="178" width="173" height="62" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="213" y="198" font-size="11" fill="#9b99b8">Discharges before noon</text>
              <text x="213" y="226" font-size="20" font-weight="700" fill="#fcd34d">20.0%</text>
              <rect x="386" y="178" width="173" height="62" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="400" y="198" font-size="11" fill="#9b99b8">OPD average wait</text>
              <text x="400" y="226" font-size="20" font-weight="700" fill="#f9a8d4">45.9 min</text>
              <rect x="573" y="178" width="173" height="62" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="587" y="198" font-size="11" fill="#9b99b8">OT cancelled on the day</text>
              <text x="587" y="226" font-size="20" font-weight="700" fill="#fcd34d">9.0%</text>
              <text x="380" y="262" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up data · Tarang Multispeciality Hospital · September 2026</text>
            </g>
          </svg>
          <figcaption>The plan follows five steps and repeats each month. The four September numbers at the bottom are the starting point for the October plan.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Steps 1 and 2: find and size the problems</h3>
          <p>Vikram starts with a problem list. Each line needs a number and a cause, not just a feeling. This table uses the September data from across the course (all made up).</p>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>What the data shows</th><th>Main cause found</th></tr></thead>
            <tbody>
              <tr><td>Beds</td><td>Hospital 86.0% full, but Medicine and ICU 95.0%. Only 240 of 1,200 discharges (20.0%) left before noon.</td><td>Late discharge summaries and slow insurance approvals. In a sample of 10 Medicine discharges, insurance cases took about 353 minutes from order to leaving; others about 158.</td></tr>
              <tr><td>OPD</td><td>Average wait 45.9 min; Medicine 58.6 min. No-show rate 16.2% (723 of 4,470 bookings).</td><td>62.6% of patients are walk-ins, and most arrive early in the morning. ENT (22.0%) and Medicine (19.0%) have the most no-shows.</td></tr>
              <tr><td>OT</td><td>Utilisation 67.5% (561.6 of 832 hours); OT4 only 55.0%. 40 of 444 cases (9.0%) cancelled on the day.</td><td>List overruns (10), no bed (9) and patient not fit (8) are the top three reasons.</td></tr>
              <tr><td>Stock</td><td>NS1 kits and surgical gloves are below the reorder point. 800 ceftriaxone vials expire in November 2026.</td><td>Orders did not keep up with use. NS1 use rose with dengue, and glove lead time is 10 days.</td></tr>
              <tr><td>Equipment</td><td>PM done on time 84.6% (33 of 39). One ventilator was down 72 hours.</td><td>Overdue defibrillator and pump PM; no spare flow sensor.</td></tr>
              <tr><td>Money and safety</td><td>Claim denial rate 11.7% (84 of 720). Hand hygiene 80.0%.</td><td>Missing documents and pre-authorisation problems cause 54.8% of denials.</td></tr>
            </tbody>
          </table>
          <p><strong>Pick a few.</strong> A one-month plan cannot fix everything. Tarang ranks problems in this order: patient safety first, then bed and patient flow, then money. Vikram picks five priorities: bed flow, OPD waits, OT cancellations, stock and overdue equipment PM. Claims and hand hygiene stay on the dashboard for the quality and billing teams.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: forecast October</h3>
          <p>October 2026 has 31 days and 27 OPD days. The forecast uses the seasonal average with an uplift, from the forecasting lesson.</p>
          <table class="lc-table">
            <thead><tr><th>Measure (made-up)</th><th>September 2026 (actual)</th><th>October 2026 forecast</th><th>Range</th></tr></thead>
            <tbody>
              <tr><td>Fever OPD visits</td><td>2,870 (110 per OPD day)</td><td>2,478 (about 92 per OPD day)</td><td>2,329 to 2,637</td></tr>
              <tr><td>Dengue confirmed</td><td>206</td><td>185</td><td>156 to 220</td></tr>
              <tr><td>Dengue admissions (39.7% of cases)</td><td>about 82</td><td>about 73</td><td></td></tr>
              <tr><td>Beds a night for dengue (assumed 4-day stay)</td><td>about 11</td><td>about 9 to 10</td><td></td></tr>
              <tr><td>NS1 tests</td><td>1,200</td><td>about 1,036 (33 a day)</td><td></td></tr>
            </tbody>
          </table>
          <p><strong>What this means:</strong> demand falls a little in October, but it stays high. There is no quick relief for Medicine. In September, Medicine had only about 3 free beds a night and ICU less than 1. The whole hospital had about 28 (200 − 172). So the plan must free beds by earlier discharges and a clear overflow plan, not wait for the season to end.</p>
          <p><strong>Check the assumptions.</strong> In 2024 dengue peaked in October, not September. The top of the range (220) is possible. Ask AI to list what could push demand to the high end, and agree a trigger: for example, "if weekly dengue cases rise two weeks in a row, open the overflow beds".</p>
        </div>
        <div class="lc-card">
          <h3>Steps 4 and 5: the plan and the weekly tracker</h3>
          <p>Every action has one owner, a target and a date. The targets below are made up by Tarang's leaders for October.</p>
          <table class="lc-table">
            <thead><tr><th>Priority</th><th>Actions</th><th>Owner</th><th>October target</th></tr></thead>
            <tbody>
              <tr><td>1 Bed flow</td><td>Set an expected discharge date at admission. Start discharge summaries and insurance papers the day before. Agree an overflow area and its nurses.</td><td>Sister Mary Thomas and Vikram</td><td>Discharges before noon from 20.0% to 30% (about 360 of 1,200)</td></tr>
              <tr><td>2 OPD waits</td><td>Spread appointment slots. Send reminders the day before. Add a sixth Medicine doctor from 09:00 to 11:00 on busy days.</td><td>Vikram</td><td>Medicine wait under 45 min; no-show rate 14% or less</td></tr>
              <tr><td>3 OT cancellations</td><td>Phone patients the day before about fasting. Confirm a bed when the list is made. Plan lists with real case times.</td><td>OT in-charge and anaesthesia team</td><td>Halve the bed and "did not come" cancellations: 32 of 444 = 7.2%</td></tr>
              <tr><td>4 Stock</td><td>Order NS1 kits (about 1,110) and gloves (about 7,480 pairs) now. Use short-dated ceftriaxone first (FEFO).</td><td>Pharmacy head</td><td>No key item below the reorder point</td></tr>
              <tr><td>5 Equipment</td><td>Finish the 6 overdue PM jobs this week. Ask the vendor about a spare flow sensor.</td><td>BME team</td><td>PM done on time 95% or more</td></tr>
            </tbody>
          </table>
          <p><strong>The weekly tracker.</strong> Put the plan KPIs in a sheet: KPI in A, September baseline in B, October target in C, and weeks 1 to 4 in D to G. Colour each week with the same green, amber and red rules as the leaders' dashboard.</p>
          <pre><code>Latest week (H2):      =INDEX(D2:G2,COUNT(D2:G2))
        Change from baseline:  =H2-B2
        Status (higher is better, for example discharges before noon):
                               =IF(H2&gt;=C2,"On target","Not yet")</code></pre>
          <p><strong>What people must decide.</strong> Dr Farida Shaikh approves the overflow area and any extra doctor hours. Doctors decide who is fit to go home; the discharge target must never rush a patient out. Sister Mary Thomas checks nurse numbers before any beds open. AI drafts, sorts and checks sums. People decide.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the plan in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Vikram's capstone steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Export September data from the HIS and remove patient details</li>
              <li data-order="2">Recalculate the key metrics in a sheet with the correct formulas</li>
              <li data-order="3">List the problems with numbers and find the main causes</li>
              <li data-order="4">Forecast October demand and check the assumptions</li>
              <li data-order="5">Pick five priorities and write actions with owners and targets</li>
              <li data-order="6">Get the plan approved by the medical superintendent</li>
              <li data-order="7">Track the KPIs every week and adjust the plan</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-month improvement plan from a hospital's monthly summary. Use the Tarang data or your own de-identified totals.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an adviser to the operations manager of [Tarang Multispeciality Hospital], a made-up 200-bed hospital. Use simple English. This is not medical or legal advice.

        Made-up data for [September 2026]:
        [Beds: occupancy 86.0%; Medicine and ICU 95.0%; ALOS 4.3 days; discharges before noon 20.0% (240 of 1,200).
        OPD: 10,010 seen; average wait 45.9 min (Medicine 58.6); no-show rate 16.2% (723 of 4,470 bookings).
        OT: utilisation 67.5%; 40 of 444 cases cancelled on the day (9.0%): overrun 10, no bed 9, not fit 8, did not come 7, equipment 6.
        Stock: NS1 kits and gloves below reorder point; 800 ceftriaxone vials expire Nov 2026.
        October forecast: fever visits 2,478 (range 2,329 to 2,637); dengue 185 (range 156 to 220).]

        Please:
        1. Rank the top 5 problems. Give the number that shows each one.
        2. For each, give 2 practical actions, one owner (by role) and a measurable October target.
        3. Say what could make the forecast wrong, and one trigger for extra beds.
        4. Make a weekly tracker table: KPI, baseline, target, weeks 1 to 4.
        5. List the decisions only leaders or doctors can make.
        Use only these numbers. Show any sums.</pre>
            <ul class="ai-try-checks">
              <li>Every baseline number should match the data you gave.</li>
              <li>Targets should be realistic for one month, and each should have one owner.</li>
              <li>If it halves the bed and "did not come" cancellations, the new rate should be 32 ÷ 444 = 7.2%.</li>
              <li>The plan must not push doctors to discharge patients before they are ready.</li>
              <li>It should not invent new data, costs or past trends.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good improvement plan is short: a few problems proved by numbers, a checked forecast, clear actions with one owner and a target each, and a weekly tracker. AI speeds up every step, but managers check the numbers and leaders and doctors make the decisions.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

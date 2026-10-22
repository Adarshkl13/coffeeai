module AiMedicalImagingContent
  # Units (sidebar dividers): 1–4 Imaging Basics · 5–9 How Imaging AI Works · 10–14 Using Imaging AI Safely · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Medical Imaging Basics</h1>
        </div>
        <p class="lc-lead">Medical imaging means taking pictures of the inside of the body. Doctors use these pictures to find and follow disease. In this lesson, you will learn the six main types: X-ray, CT, MRI, ultrasound, mammography and digital pathology. You will also learn who does what, from the scan request to the signed report. Every imaging AI tool fits into this chain. You need to know the chain before you can judge where AI helps. This course is education only. It is not medical advice, and every patient in it is made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="The imaging chain: a referring doctor orders a scan, a radiographer takes the images, PACS stores them, a radiologist reads them and signs a report, and the referring doctor acts on it. An AI tool can check images between PACS and the radiologist, but the radiologist decides.">
            <defs><marker id="mi1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="130" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="75" y="56" font-weight="700" fill="#93c5fd">Referring doctor</text>
              <text x="75" y="76" fill="#9b99b8">orders the scan</text>
              <rect x="162" y="30" width="130" height="64" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="227" y="56" font-weight="700" fill="#67e8f9">Radiographer</text>
              <text x="227" y="76" fill="#9b99b8">takes the images</text>
              <rect x="314" y="30" width="130" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="379" y="56" font-weight="700" fill="#c4b5fd">PACS</text>
              <text x="379" y="76" fill="#9b99b8">stores the images</text>
              <rect x="466" y="30" width="130" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="531" y="56" font-weight="700" fill="#6ee7b7">Radiologist</text>
              <text x="531" y="76" fill="#9b99b8">reads, signs report</text>
              <rect x="618" y="30" width="132" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="684" y="56" font-weight="700" fill="#93c5fd">Referring doctor</text>
              <text x="684" y="76" fill="#9b99b8">acts on the report</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mi1a)">
                <line x1="141" y1="62" x2="158" y2="62"/>
                <line x1="293" y1="62" x2="310" y2="62"/>
                <line x1="445" y1="62" x2="462" y2="62"/>
                <line x1="597" y1="62" x2="614" y2="62"/>
                <path d="M379,96 L379,130"/>
                <path d="M470,150 Q531,150 531,98"/>
              </g>
              <rect x="300" y="134" width="170" height="54" rx="10" fill="#27274e" stroke="#f59e0b" stroke-dasharray="5 4"/>
              <text x="385" y="157" font-weight="700" fill="#fcd34d">AI tool (optional)</text>
              <text x="385" y="176" fill="#9b99b8">flags, measures, sorts</text>
              <text x="590" y="170" text-anchor="start" fill="#fca5a5" font-size="11.5">AI supports.</text>
              <text x="590" y="186" text-anchor="start" fill="#fca5a5" font-size="11.5">The radiologist decides.</text>
              <text x="380" y="228" fill="#9b99b8" font-size="11.5">Types: X-ray · CT · MRI · ultrasound · mammography · digital pathology (read by a pathologist)</text>
            </g>
          </svg>
          <figcaption>The imaging chain. An AI tool can sit between image storage and the radiologist. It never replaces the person who signs the report.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The six main types of imaging</h3>
          <p>Each type (also called a <strong>modality</strong>) uses a different way to see inside the body. Some use <strong>ionising radiation</strong> (X-rays, which carry a small risk, so the dose is kept as low as possible). Others do not.</p>
          <table class="lc-table">
            <thead><tr><th>Modality</th><th>How it works</th><th>Common uses</th><th>Ionising radiation?</th></tr></thead>
            <tbody>
              <tr><td><strong>X-ray</strong></td><td>An X-ray beam passes through the body. Dense parts, like bone, look white.</td><td>Chest, bones, fractures</td><td>Yes, a low dose</td></tr>
              <tr><td><strong>CT</strong> (computed tomography)</td><td>An X-ray tube turns around the body. A computer builds thin cross-section pictures called "slices".</td><td>Head injury, stroke, chest, abdomen</td><td>Yes, usually more than a plain X-ray</td></tr>
              <tr><td><strong>MRI</strong> (magnetic resonance imaging)</td><td>A strong magnet and radio waves make detailed pictures.</td><td>Brain, spine, joints, soft tissue</td><td>No. But staff must check for metal (implants, pacemakers) first.</td></tr>
              <tr><td><strong>Ultrasound</strong></td><td>A probe sends sound waves and shows live pictures.</td><td>Pregnancy, abdomen, heart (echo), guiding needles</td><td>No</td></tr>
              <tr><td><strong>Mammography</strong></td><td>A low-dose X-ray of the breast.</td><td>Breast screening and follow-up of breast lumps</td><td>Yes, a low dose</td></tr>
              <tr><td><strong>Digital pathology</strong></td><td>Glass slides of tissue are scanned into very large digital images.</td><td>Checking biopsies for cancer</td><td>No (the patient is not scanned; the slide is)</td></tr>
            </tbody>
          </table>
          <p><strong>India rule to remember:</strong> the PCPNDT Act bans finding out or telling the sex of a foetus. This applies to ultrasound and to any other test or tool, including AI. Ultrasound centres must be registered and keep records. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Who does what</h3>
          <table class="lc-table">
            <thead><tr><th>Person or system</th><th>Main job</th></tr></thead>
            <tbody>
              <tr><td><strong>Referring doctor</strong></td><td>Sees the patient, orders the scan and gives the clinical question (for example "cough for 3 weeks, rule out TB").</td></tr>
              <tr><td><strong>Radiographer</strong> (imaging technician)</td><td>Positions the patient, takes the images and checks the image quality.</td></tr>
              <tr><td><strong>Radiologist</strong></td><td>A doctor trained to read scans. Writes and signs the report. Also does some ultrasound and guided procedures.</td></tr>
              <tr><td><strong>Pathologist</strong></td><td>A doctor who reads tissue slides, on glass or on screen.</td></tr>
              <tr><td><strong>PACS</strong> (picture archiving and communication system)</td><td>Stores and shows the images. Images are saved in <strong>DICOM</strong>, the standard file format for medical images.</td></tr>
              <tr><td><strong>RIS</strong> (radiology information system)</td><td>Handles bookings, the reading list (worklist) and reports. It often links to the hospital information system.</td></tr>
            </tbody>
          </table>
          <p>Tarang Diagnostics is a made-up imaging and lab centre in Maharashtra. Dr Kiran Rao is the head radiologist. The team has 3 radiologists (Dr Kiran Rao and 2 others) and 8 radiographers. Vikram, the operations manager, looks after staff, machines and waiting times.</p>
        </div>
        <div class="lc-card">
          <h3>A normal day at Tarang Diagnostics (made-up numbers)</h3>
          <p>Vikram keeps a simple sheet of daily volumes and <strong>turnaround time</strong> (TAT: the time from taking the image to the signed report). The <strong>median</strong> is the middle value. The <strong>90th percentile</strong> means 9 in 10 reports are ready within that time.</p>
          <table class="lc-table">
            <thead><tr><th>Study type</th><th>Studies per day</th><th>Median TAT</th><th>90th percentile TAT</th></tr></thead>
            <tbody>
              <tr><td>X-ray (110 are chest X-rays)</td><td>180</td><td>6 hours (OPD chest)</td><td>18 hours (OPD chest)</td></tr>
              <tr><td>Ultrasound</td><td>70</td><td>40 minutes</td><td>1.5 hours</td></tr>
              <tr><td>CT</td><td>35</td><td>50 minutes (emergency)</td><td>2 hours (emergency)</td></tr>
              <tr><td>MRI</td><td>18</td><td>20 hours</td><td>36 hours</td></tr>
              <tr><td>Mammography</td><td>6</td><td>2 days</td><td>3 days</td></tr>
            </tbody>
          </table>
          <p>Chest X-rays are the biggest group. About 30 of the 110 are taken in the evening or at night. They wait for the morning list. This is why Tarang is thinking about a chest X-ray AI tool. It is a made-up product called <strong>LungLens</strong>. You will follow this story through the course.</p>
          <p>You can use an AI assistant to learn the words in this lesson. Compare these two prompts:</p>
          <pre><code>Weak:   Explain CT and MRI.

        Better: I am a new medical coder at a hospital in India. Explain the
                difference between CT and MRI in 5 simple sentences. Then give
                a table: what each shows best, if it uses ionising radiation,
                and one safety check staff do before the scan. Do not give
                medical advice.</code></pre>
          <p>The better prompt gives your role, the format and a limit. Still check the answer against a trusted source, such as your department's protocols or a senior colleague.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: radiation or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each study. Does it expose the patient to ionising radiation?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="yes" data-label="Uses ionising radiation"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="No ionising radiation"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="yes" data-why="A chest X-ray uses a low dose of X-rays.">Chest X-ray for a 3-week cough</li>
              <li data-bucket="yes" data-why="CT is built from many X-ray images, so the dose is usually higher than a plain X-ray.">Head CT after a fall</li>
              <li data-bucket="no" data-why="MRI uses a magnet and radio waves. The safety check is for metal, not radiation.">MRI of the knee</li>
              <li data-bucket="no" data-why="Ultrasound uses sound waves. That is one reason it is used in pregnancy.">Pregnancy ultrasound at 20 weeks</li>
              <li data-bucket="yes" data-why="Mammography is a low-dose X-ray of the breast.">Screening mammogram</li>
              <li data-bucket="no" data-why="The scanner photographs a glass slide. The patient is not scanned at all.">Scanning a biopsy slide for digital pathology</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to make a one-page study guide on imaging types for a new colleague. Then check it carefully.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient teacher at a hospital imaging department in India. I am a new [front-desk staff member] at [Tarang Diagnostics].

        Make a one-page study guide on these imaging types: X-ray, CT, MRI, ultrasound, mammography and digital pathology.

        1. A table with columns: Type, How it works (one line), Common uses, Uses ionising radiation (Yes/No), One safety or preparation point for patients.
        2. Who does what: referring doctor, radiographer, radiologist, pathologist. One line each.
        3. Explain PACS, RIS and DICOM in one line each.
        4. Five questions patients often ask at the front desk, with short, polite answers that do not give medical advice. End each answer with "Please ask your doctor" where needed.

        Use simple English. Do not give any medical advice. Do not use real patient details.</pre>
            <ul class="ai-try-checks">
              <li>X-ray, CT and mammography are marked Yes for radiation. MRI, ultrasound and digital pathology are marked No.</li>
              <li>The MRI safety point mentions checking for metal, implants or pacemakers.</li>
              <li>The front-desk answers do not diagnose or give medical advice.</li>
              <li>Check the preparation points against your centre's own instructions before you use them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every scan passes through the same chain: order, capture, storage, reading, report and action. An AI tool can help at one point in this chain. The radiologist or pathologist still reads the images and signs the report.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Where AI Helps in Imaging</h1>
        </div>
        <p class="lc-lead">Imaging AI is not one big "robot radiologist". It is many small tools. Each tool does one narrow job. In this lesson, you will learn the five main kinds of help: triage, detection, measurement, reports and workflow. You will also learn the real limits of these tools. This helps you ask a better question at work: "Which problem do we have, and can a narrow tool help with it?"</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Five kinds of imaging AI help: workflow, triage, detection, measurement and reports. Below them, a box lists the real limits: each tool does a narrow task, may miss what it was not built for, can work less well on new machines or patient groups, needs local testing, and a person still signs.">
            <defs><marker id="mi2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="136" height="92" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="78" y="46" font-weight="700" fill="#67e8f9">Workflow</text>
              <text x="78" y="70" fill="#9b99b8" font-size="11">bookings, protocols</text>
              <text x="78" y="88" fill="#9b99b8" font-size="11">image quality checks</text>
              <rect x="159" y="20" width="136" height="92" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="227" y="46" font-weight="700" fill="#fcd34d">Triage</text>
              <text x="227" y="70" fill="#9b99b8" font-size="11">moves likely urgent</text>
              <text x="227" y="88" fill="#9b99b8" font-size="11">scans up the list</text>
              <rect x="308" y="20" width="136" height="92" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="376" y="46" font-weight="700" fill="#f9a8d4">Detection</text>
              <text x="376" y="70" fill="#9b99b8" font-size="11">marks possible</text>
              <text x="376" y="88" fill="#9b99b8" font-size="11">nodules, TB signs</text>
              <rect x="457" y="20" width="136" height="92" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="525" y="46" font-weight="700" fill="#6ee7b7">Measurement</text>
              <text x="525" y="70" fill="#9b99b8" font-size="11">sizes and volumes</text>
              <text x="525" y="88" fill="#9b99b8" font-size="11">tracks change</text>
              <rect x="606" y="20" width="144" height="92" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="678" y="46" font-weight="700" fill="#c4b5fd">Reports</text>
              <text x="678" y="70" fill="#9b99b8" font-size="11">drafts findings</text>
              <text x="678" y="88" fill="#9b99b8" font-size="11">for a doctor to edit</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mi2a)">
                <line x1="380" y1="116" x2="380" y2="140"/>
              </g>
              <rect x="40" y="146" width="680" height="96" rx="12" fill="#27274e" stroke="#ef4444"/>
              <text x="380" y="172" font-weight="700" fill="#fca5a5">Real limits</text>
              <text x="380" y="196" fill="#e2e0f0" font-size="11.5">Each tool does one narrow task. It can miss what it was not built to find.</text>
              <text x="380" y="216" fill="#e2e0f0" font-size="11.5">It may work less well on new machines or patient groups. Test it locally.</text>
              <text x="380" y="234" fill="#9b99b8" font-size="11">A radiologist still reads the images and signs the report.</text>
            </g>
          </svg>
          <figcaption>Five kinds of help, and the limits that apply to all of them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five kinds of help</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>What the AI does</th><th>Example (made up)</th><th>What a person still does</th></tr></thead>
            <tbody>
              <tr><td><strong>Triage</strong></td><td>Gives each scan a priority, so likely urgent ones are read first.</td><td>A chest X-ray with a possible TB pattern moves to the top of the morning list.</td><td>The radiologist reads every scan, including the ones lower on the list.</td></tr>
              <tr><td><strong>Detection</strong></td><td>Marks areas that may show a finding, such as a lung nodule (a small round spot).</td><td>A box on the X-ray around a possible nodule.</td><td>Decides if the mark is real, and looks at the whole image, not only the marks.</td></tr>
              <tr><td><strong>Measurement</strong></td><td>Measures sizes, volumes or angles. It can compare with an older scan.</td><td>The size of a nodule on today's CT and last year's CT.</td><td>Checks the measurement is placed on the right structure.</td></tr>
              <tr><td><strong>Reports</strong></td><td>Drafts parts of a report, or fills a structured template.</td><td>A draft line: "Possible opacity, right upper zone."</td><td>Edits, corrects and signs the report. The signature means the doctor takes responsibility.</td></tr>
              <tr><td><strong>Workflow</strong></td><td>Helps with bookings, scan protocols, image quality checks or faster scanning.</td><td>A warning that a chest X-ray is rotated, so it can be retaken.</td><td>The radiographer decides if a retake is needed.</td></tr>
            </tbody>
          </table>
          <p>Many vendors also sell tools that make scans faster or clearer, for example for MRI. The rules for these tools vary. Always check what the tool is approved to do. Look at its intended use (the job the maker says it is for) and its approval papers.</p>
        </div>
        <div class="lc-card">
          <h3>The real limits</h3>
          <ul class="lc-list">
            <li><strong>Narrow task.</strong> A TB tool looks for TB-like patterns. It may say nothing about a fracture, heart size or a badly placed tube. "No flag" only means "none of the findings it was built to find".</li>
            <li><strong>Different machines and patients.</strong> A tool trained on adult X-rays from fixed machines may work less well on portable X-rays or on children.</li>
            <li><strong>False alarms cost time.</strong> Every false alarm (a flag on a normal scan) is one more image for a radiologist to check carefully.</li>
            <li><strong>Automation bias.</strong> This means trusting the machine too much. A tired reader may skip a finding because the AI did not flag it.</li>
            <li><strong>Rules and approvals.</strong> In India, software that helps diagnose can count as a medical device under the CDSCO Medical Devices Rules, 2017. A later lesson covers this in general words. It is not legal advice.</li>
            <li><strong>Hidden costs.</strong> Linking to PACS and RIS, training staff and checking results all take time and money.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Start with the problem, not the product</h3>
          <p>Vikram at Tarang Diagnostics wants to "buy an AI tool". Dr Kiran Rao, the head radiologist, asks him a better question first: which problem are we solving? Their made-up data shows one clear problem. About 30 of the 110 daily chest X-rays are taken in the evening or at night. They wait for the morning list, so an abnormal X-ray can sit behind many normal ones.</p>
          <pre><code>Weak:   Which AI tool should our hospital buy?

        Better: I manage operations at a 200-bed hospital imaging centre in
                India. Made-up data: 110 chest X-rays a day, about 30 taken
                at night. Median report time for OPD chest X-rays is 6 hours.
                List 4 problems that AI triage might or might not solve here.
                For each, say what a radiologist must still do. Do not name
                products. Do not invent statistics.</code></pre>
          <p>The better prompt gives the setting, real (but safe, made-up) numbers and clear limits. You must still decide with your radiologists which problem matters most. Never paste real patient details into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: mapping where AI could help</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Vikram asks">"Here is our made-up weekday data: volumes and report times for X-ray, CT, MRI, ultrasound and mammography. Where could imaging AI help? Give the kind of help and what a person still does."</li>
              <li data-kind="answer" data-label="AI assistant">It suggests triage of night chest X-rays, nodule detection on chest CT, and image quality checks. It also says: "AI could send normal chest X-rays straight to patients, with no radiologist."</li>
              <li data-kind="warn" data-label="Catch this">Sending AI results to patients without a doctor is not acceptable at Tarang. A radiologist reads and signs every report. Vikram removes this idea.</li>
              <li data-kind="tool" data-label="RIS report">Vikram runs the RIS (radiology information system) report of chest X-ray waiting times for last month.</li>
              <li data-kind="result" data-label="What it shows">Night chest X-rays wait a median of 9 hours for a report. Day X-rays wait a median of 5 hours. (Made-up numbers.)</li>
              <li data-kind="warn" data-label="Catch this">The AI's answer also said "AI cuts report time by 70%". There was no source. Vikram deletes the claim. He will measure Tarang's own results in a pilot instead.</li>
              <li data-kind="check" data-label="Dr Kiran checks">She agrees the first problem to study is triage of chest X-rays for possible TB. She notes that a radiologist must still read every image, flagged or not.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to map where imaging AI could help in a department. Use the made-up data in the prompt, or your own made-up numbers.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an adviser on imaging workflow for hospitals in India. You are careful and do not overstate what AI can do.

        Our setting: [Tarang Diagnostics, the imaging centre of a 200-bed hospital in Maharashtra].
        Made-up weekday data:
        - X-ray: 180 a day (110 chest X-rays, about 30 taken at night). OPD chest X-ray report time: median 6 hours.
        - CT: 35 a day. Emergency CT report time: median 50 minutes.
        - MRI: 18 a day. Report time: median 20 hours.
        - Ultrasound: 70 a day. Mammography: 6 a day.
        Our main worry: [abnormal chest X-rays wait behind normal ones].

        Make a table with columns: Problem, Kind of AI help (triage, detection, measurement, reports or workflow), What the AI would do, What a person must still do, Main risk, How we would measure success.
        Give 5 rows. Then say which one row you would study first, and why.

        Rules: Do not name real products. Do not invent statistics. A radiologist reads and signs every report.</pre>
            <ul class="ai-try-checks">
              <li>Every row says what a person must still do.</li>
              <li>No row lets AI send reports to patients without a doctor's sign-off.</li>
              <li>There are no made-up claims like "cuts time by 70%" presented as facts.</li>
              <li>The success measures can be counted in your own RIS or spreadsheet, such as median report time.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Imaging AI works as many narrow helpers, not one general reader. Start with a clear problem in your own data. Then pick the kind of help that fits it, and plan what the radiologist still checks.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">How Imaging AI Learns</h1>
        </div>
        <p class="lc-lead">Imaging AI is not programmed with rules like "a white patch in the upper lung means TB". Instead, it learns from many example images that experts have already labelled. In this lesson, you will learn how this works, with no code: labelled images, training, testing, and why the quality and variety of the data matter so much. With this knowledge, you can ask a vendor the right questions about their tool.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 262" role="img" aria-label="How an imaging AI model is built: collect images, remove patient identity, label them, split them by patient, and train. Then test on held-out images from the same sites, then on images from new hospitals, then check it locally and keep monitoring.">
            <defs><marker id="mi3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="75" y="48" font-weight="700" fill="#93c5fd">Collect</text>
              <text x="75" y="68" fill="#9b99b8" font-size="11">many X-rays</text>
              <rect x="162" y="20" width="130" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="227" y="48" font-weight="700" fill="#67e8f9">De-identify</text>
              <text x="227" y="68" fill="#9b99b8" font-size="11">remove names, IDs</text>
              <rect x="314" y="20" width="130" height="70" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="379" y="48" font-weight="700" fill="#f9a8d4">Label</text>
              <text x="379" y="68" fill="#9b99b8" font-size="11">experts mark truth</text>
              <rect x="466" y="20" width="130" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="531" y="48" font-weight="700" fill="#fcd34d">Split by patient</text>
              <text x="531" y="68" fill="#9b99b8" font-size="11">train · tune · test</text>
              <rect x="618" y="20" width="132" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="684" y="48" font-weight="700" fill="#c4b5fd">Train</text>
              <text x="684" y="68" fill="#9b99b8" font-size="11">learn from examples</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mi3a)">
                <line x1="141" y1="55" x2="158" y2="55"/>
                <line x1="293" y1="55" x2="310" y2="55"/>
                <line x1="445" y1="55" x2="462" y2="55"/>
                <line x1="597" y1="55" x2="614" y2="55"/>
                <path d="M684,92 L684,118 L170,118 L170,142"/>
                <line x1="281" y1="175" x2="296" y2="175"/>
                <line x1="521" y1="175" x2="536" y2="175"/>
              </g>
              <rect x="60" y="146" width="220" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="170" y="170" font-weight="700" fill="#6ee7b7">Internal test</text>
              <text x="170" y="190" fill="#9b99b8" font-size="11">unseen images, same sites</text>
              <rect x="300" y="146" width="220" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="410" y="170" font-weight="700" fill="#6ee7b7">External test</text>
              <text x="410" y="190" fill="#9b99b8" font-size="11">new hospitals and machines</text>
              <rect x="540" y="146" width="210" height="60" rx="10" fill="#27274e" stroke="#ef4444"/>
              <text x="645" y="170" font-weight="700" fill="#fca5a5">Local check + monitor</text>
              <text x="645" y="190" fill="#9b99b8" font-size="11">at your site, over time</text>
              <text x="380" y="240" fill="#9b99b8" font-size="11.5">The quality and variety of the data decide how well the tool works on your patients.</text>
            </g>
          </svg>
          <figcaption>How an imaging AI model is built and tested. Each test uses images the model has never seen.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Learning from labelled examples</h3>
          <p>A <strong>label</strong> is the answer attached to an image. For LungLens, the made-up chest X-ray tool, a label could be "abnormal / possible TB" or "normal". For a nodule tool, the label could be a box drawn around each nodule.</p>
          <p>During <strong>training</strong>, the model looks at many labelled images. It makes a guess for each one. It then adjusts itself a little to make fewer mistakes. After many rounds, it can give a score to a new image it has never seen.</p>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Plain meaning</th></tr></thead>
            <tbody>
              <tr><td><strong>Training set</strong></td><td>The images the model learns from.</td></tr>
              <tr><td><strong>Validation (tuning) set</strong></td><td>Separate images used to adjust settings, such as the score that counts as "abnormal".</td></tr>
              <tr><td><strong>Test set</strong></td><td>Images kept aside until the end. They show how well the model works on new cases.</td></tr>
              <tr><td><strong>Reference standard</strong> (also called "ground truth")</td><td>The best available answer for each image. For example: two radiologists agree, plus a sputum test, CT or follow-up result.</td></tr>
              <tr><td><strong>External test</strong></td><td>A test on images from hospitals and machines the model never learned from.</td></tr>
            </tbody>
          </table>
          <p>A label from one busy reader is weaker than a label checked by two readers and a lab test. A model can only be as good as its labels.</p>
        </div>
        <div class="lc-card">
          <h3>Why data quality and variety matter</h3>
          <table class="lc-table">
            <thead><tr><th>Data problem</th><th>What can go wrong</th></tr></thead>
            <tbody>
              <tr><td>Only X-rays from fixed, modern machines</td><td>The tool may work less well on portable X-rays from wards and ICUs.</td></tr>
              <tr><td>Only adults in the data</td><td>Children's chests look different. The tool may not be safe for them.</td></tr>
              <tr><td>Data from one country or hospital</td><td>Disease patterns, patient groups and machines may differ from yours.</td></tr>
              <tr><td>Labels taken automatically from old reports</td><td>Report wording is often unclear, so some labels are wrong.</td></tr>
              <tr><td>The same patient in training and test sets</td><td>The model has "seen" the patient before. Test results look better than they really are.</td></tr>
              <tr><td>Shortcuts in the images</td><td>The model may learn hints that are not disease, such as a text marker for portable X-rays or which hospital the image came from.</td></tr>
            </tbody>
          </table>
          <p>This is why good test results at the vendor's hospitals do not prove the tool works at yours. A local check on your own patients is always needed.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: reading a vendor's data sheet</h3>
          <p>The made-up vendor sends Dr Kiran Rao this summary of how LungLens was built:</p>
          <pre><code>LungLens data summary (made up)
        Training:  120,000 adult chest X-rays, 4 hospitals, 2 countries
        Labels:    taken automatically from the original reports
        Test:      6,000 X-rays from the same 4 hospitals
        Machines:  fixed digital X-ray rooms only
        Ages:      18 and over
        Result:    "high accuracy" (no numbers given)</code></pre>
          <p>Dr Kiran Rao notes five gaps. The test is only internal (same hospitals). The labels may be noisy. There are no portable X-rays. There are no patients under 18, so there is no data on children or teenagers. And "high accuracy" is not a real measure. She will ask for sensitivity and specificity with the test details. You will learn these measures in the next lesson.</p>
          <pre><code>Weak:   Is this AI tool good?

        Better: I am a radiologist. Below is a made-up vendor data summary
                for a chest X-ray AI tool. List the gaps in how it was
                trained and tested. For each gap, write one clear question
                for the vendor and say why it matters for our patients.
                Do not guess numbers the summary does not give.</code></pre>
          <p>The AI assistant can help you find gaps fast. You still decide which answers from the vendor are good enough.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build and test a model, in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for building and testing an imaging AI model in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Collect a large, varied set of images, with permission and ethics approval.</li>
              <li data-order="2">Remove names, IDs and other identity details from the images (de-identify).</li>
              <li data-order="3">Label each image using a strong reference standard.</li>
              <li data-order="4">Split the images by patient into training, tuning and test sets.</li>
              <li data-order="5">Train the model on the training set and tune it on the tuning set.</li>
              <li data-order="6">Test it on the held-out test set, then on data from new hospitals.</li>
              <li data-order="7">Check it locally at the hospital that will use it, and keep monitoring.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to review a made-up vendor data sheet. It should find the gaps and write your questions for the vendor.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced radiologist who helps hospitals judge imaging AI tools. You are careful and practical.

        Our hospital: [Tarang Diagnostics]. We see adults and children, and we take many portable X-rays in wards and the ICU.

        Made-up vendor summary for [LungLens, a chest X-ray AI tool for possible TB]:
        - Training: 120,000 adult chest X-rays from 4 hospitals in 2 countries.
        - Labels: taken automatically from the original reports.
        - Test: 6,000 X-rays from the same 4 hospitals.
        - Machines: fixed digital X-ray rooms only. Ages: 18 and over.
        - Result: "high accuracy" (no numbers).

        1. List the gaps in how the tool was trained and tested. Explain each in simple words.
        2. Write 8 questions for the vendor, most important first.
        3. Say what our own local test should include (which patients, machines and settings).
        4. Say which patient groups we should not use it for until we have more evidence.

        Do not invent numbers. Do not name real products.</pre>
            <ul class="ai-try-checks">
              <li>It spots that the test is only internal (the same 4 hospitals).</li>
              <li>It mentions portable X-rays and patients under 18 as groups the data did not include.</li>
              <li>It asks for real measures, such as sensitivity and specificity, instead of "high accuracy".</li>
              <li>It does not invent any figures for the tool.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An imaging AI tool learns only from the images and labels it was given. If your patients or machines were not in that data, you cannot assume it works for you. Ask how it was trained and tested, and test it on your own cases.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Measuring Imaging AI</h1>
        </div>
        <p class="lc-lead">A vendor may say their tool is "95% accurate". That one number can hide serious problems. In this lesson, you will learn the four measures that really matter: sensitivity, specificity, PPV and NPV. You will work them out from a made-up test at Tarang Diagnostics. You will also see why the same tool gives very different results in a screening camp and in a chest clinic. You only need simple division. A spreadsheet can do it for you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A two-by-two table for a made-up test of 1,000 chest X-rays. 100 were truly abnormal and 900 truly normal. LungLens found 92 true positives, 108 false positives, 8 false negatives and 792 true negatives. Sensitivity is 92 percent, specificity 88 percent, PPV 46 percent and NPV 99 percent.">
            <defs><marker id="mi4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="283" y="22" fill="#9b99b8" font-size="11">Reference standard (the truth)</text>
              <rect x="150" y="32" width="130" height="44" rx="8" fill="#27274e"/>
              <text x="215" y="51" font-weight="700" fill="#fca5a5">Truly abnormal</text>
              <text x="215" y="68" fill="#9b99b8" font-size="11">100</text>
              <rect x="286" y="32" width="130" height="44" rx="8" fill="#27274e"/>
              <text x="351" y="51" font-weight="700" fill="#6ee7b7">Truly normal</text>
              <text x="351" y="68" fill="#9b99b8" font-size="11">900</text>
              <rect x="14" y="82" width="130" height="70" rx="8" fill="#27274e"/>
              <text x="79" y="112" font-weight="700" fill="#fcd34d">AI: flagged</text>
              <text x="79" y="130" fill="#9b99b8" font-size="11">200</text>
              <rect x="14" y="158" width="130" height="70" rx="8" fill="#27274e"/>
              <text x="79" y="188" font-weight="700" fill="#93c5fd">AI: not flagged</text>
              <text x="79" y="206" fill="#9b99b8" font-size="11">800</text>
              <rect x="150" y="82" width="130" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="215" y="112" font-weight="700" font-size="14">TP = 92</text>
              <text x="215" y="132" fill="#9b99b8" font-size="11">found correctly</text>
              <rect x="286" y="82" width="130" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="351" y="112" font-weight="700" font-size="14">FP = 108</text>
              <text x="351" y="132" fill="#9b99b8" font-size="11">false alarm</text>
              <rect x="150" y="158" width="130" height="70" rx="8" fill="#1f1f44" stroke="#ef4444"/>
              <text x="215" y="188" font-weight="700" font-size="14">FN = 8</text>
              <text x="215" y="208" fill="#9b99b8" font-size="11">missed</text>
              <rect x="286" y="158" width="130" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="351" y="188" font-weight="700" font-size="14">TN = 792</text>
              <text x="351" y="208" fill="#9b99b8" font-size="11">correctly normal</text>
              <line x1="422" y1="155" x2="444" y2="155" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mi4a)"/>
              <rect x="450" y="32" width="300" height="196" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <g text-anchor="start">
                <text x="466" y="58" font-weight="700">Sensitivity = 92 / 100 = 92%</text>
                <text x="466" y="75" fill="#9b99b8" font-size="10.5">of truly abnormal X-rays, share flagged</text>
                <text x="466" y="104" font-weight="700">Specificity = 792 / 900 = 88%</text>
                <text x="466" y="121" fill="#9b99b8" font-size="10.5">of truly normal X-rays, share not flagged</text>
                <text x="466" y="150" font-weight="700">PPV = 92 / 200 = 46%</text>
                <text x="466" y="167" fill="#9b99b8" font-size="10.5">of flagged X-rays, share truly abnormal</text>
                <text x="466" y="196" font-weight="700">NPV = 792 / 800 = 99%</text>
                <text x="466" y="213" fill="#9b99b8" font-size="10.5">of not-flagged X-rays, share truly normal</text>
              </g>
              <text x="380" y="262" fill="#9b99b8" font-size="11.5">Made-up test: 1,000 adult OPD chest X-rays at Tarang Diagnostics. 100 truly abnormal (10%).</text>
            </g>
          </svg>
          <figcaption>The 2 × 2 table (confusion matrix) for the made-up LungLens test, and the four measures worked out from it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four possible outcomes</h3>
          <p>Tarang Diagnostics tested LungLens on 1,000 old adult OPD chest X-rays (made-up data). Two radiologists read each X-ray without seeing the AI result. Sputum test results were added where they existed. This is the <strong>reference standard</strong>: the best available answer. By this standard, 100 X-rays were "abnormal / possible TB" and 900 were normal.</p>
          <table class="lc-table">
            <thead><tr><th>Outcome</th><th>Meaning</th><th>Count</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td><strong>True positive (TP)</strong></td><td>AI flagged it, and it was truly abnormal</td><td>92</td><td>The patient gets follow-up sooner.</td></tr>
              <tr><td><strong>False positive (FP)</strong></td><td>AI flagged it, but it was normal</td><td>108</td><td>Extra reading time, and maybe extra tests and worry for the patient.</td></tr>
              <tr><td><strong>False negative (FN)</strong></td><td>AI did not flag it, but it was abnormal</td><td>8</td><td>The most serious error. TB can be missed or delayed, and it can spread to others.</td></tr>
              <tr><td><strong>True negative (TN)</strong></td><td>AI did not flag it, and it was normal</td><td>792</td><td>No action needed from the AI side.</td></tr>
            </tbody>
          </table>
          <p>Check that the numbers add up: 92 + 108 + 8 + 792 = 1,000. Always do this check first.</p>
        </div>
        <div class="lc-card">
          <h3>The four measures, worked out</h3>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Formula</th><th>LungLens (made up)</th><th>The question it answers</th></tr></thead>
            <tbody>
              <tr><td><strong>Sensitivity</strong></td><td>TP / (TP + FN)</td><td>92 / 100 = 92%</td><td>Of the truly abnormal X-rays, how many did it flag?</td></tr>
              <tr><td><strong>Specificity</strong></td><td>TN / (TN + FP)</td><td>792 / 900 = 88%</td><td>Of the truly normal X-rays, how many did it leave unflagged?</td></tr>
              <tr><td><strong>PPV</strong> (positive predictive value)</td><td>TP / (TP + FP)</td><td>92 / 200 = 46%</td><td>If it flags an X-ray, how likely is it truly abnormal?</td></tr>
              <tr><td><strong>NPV</strong> (negative predictive value)</td><td>TN / (TN + FN)</td><td>792 / 800 = 99%</td><td>If it does not flag an X-ray, how likely is it truly normal?</td></tr>
            </tbody>
          </table>
          <p>So fewer than half of the flagged X-rays (46%) were truly abnormal. And 8 abnormal X-rays were not flagged. This is why a radiologist must still read every X-ray, flagged or not.</p>
          <p>In a spreadsheet, put TP in B2, FP in B3, FN in B4 and TN in B5. Then:</p>
          <pre><code>Sensitivity   =B2/(B2+B4)
        Specificity   =B5/(B5+B3)
        PPV           =B2/(B2+B3)
        NPV           =B5/(B5+B4)</code></pre>
          <p>Format the cells as percentages. <strong>The accuracy trap:</strong> accuracy is (TP + TN) / total. Here it is 884 / 1,000 = 88.4%. But accuracy hides the misses. Imagine 5,000 people where only 100 are abnormal. A "tool" that calls every X-ray normal is right for 4,900 people. That is 98% accuracy, and it finds nobody.</p>
          <p>One more point: 92% comes from only 100 abnormal X-rays. With a small test, the true value could be a bit higher or lower. Ask for the <strong>95% confidence interval</strong> (a range that shows how sure the estimate is).</p>
        </div>
        <div class="lc-card">
          <h3>Prevalence changes PPV</h3>
          <p><strong>Prevalence</strong> is the share of people in a group who truly have the condition. Sensitivity and specificity describe the tool. PPV and NPV also depend on prevalence. Here is the same tool (92% sensitivity, 88% specificity) in three made-up settings:</p>
          <table class="lc-table">
            <thead><tr><th>Setting (made up)</th><th>People</th><th>Prevalence</th><th>TP</th><th>FP</th><th>FN</th><th>TN</th><th>PPV</th><th>NPV</th></tr></thead>
            <tbody>
              <tr><td>Community screening camps</td><td>5,000</td><td>2%</td><td>92</td><td>588</td><td>8</td><td>4,312</td><td>92 / 680 = 13.5%</td><td>4,312 / 4,320 = 99.8%</td></tr>
              <tr><td>Hospital OPD (the Tarang test)</td><td>1,000</td><td>10%</td><td>92</td><td>108</td><td>8</td><td>792</td><td>92 / 200 = 46%</td><td>792 / 800 = 99%</td></tr>
              <tr><td>Chest clinic (referred patients with symptoms)</td><td>1,000</td><td>30%</td><td>276</td><td>84</td><td>24</td><td>616</td><td>276 / 360 = 76.7%</td><td>616 / 640 = 96.3%</td></tr>
            </tbody>
          </table>
          <p>How the camp row is built: 2% of 5,000 is 100 abnormal people. 92% of 100 gives TP = 92, so FN = 8. That leaves 4,900 normal people. 12% of 4,900 gives FP = 588, so TN = 4,312.</p>
          <p>At the camps, only about 1 in 7 flagged people is truly abnormal. In the chest clinic, about 3 in 4 are. Plan follow-up tests and staff time for the setting you will really use.</p>
          <p>Two cautions. First, this table assumes sensitivity and specificity stay the same in every setting. In real life they can change, because the patients are different. Second, the tool's <strong>threshold</strong> (the score at which it flags an X-ray) moves the balance. A lower threshold usually catches more abnormal X-rays but gives more false alarms. Your team must choose this balance with care.</p>
          <pre><code>Weak:   Is 92% sensitivity good?

        Better: A chest X-ray AI tool had TP 92, FP 108, FN 8, TN 792 in a
                made-up test. Show the 2 x 2 table. Work out sensitivity,
                specificity, PPV and NPV, showing each division. Then explain
                in simple words what each number means for a radiologist.</code></pre>
          <p>AI assistants sometimes make arithmetic mistakes. Always check their numbers with the spreadsheet formulas above.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: name the outcome</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each made-up X-ray was checked against the reference standard. Is the AI result a TP, FP, FN or TN?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="tp" data-label="True positive"></div>
              <div data-sorter-target="bucket" data-bucket="fp" data-label="False positive"></div>
              <div data-sorter-target="bucket" data-bucket="fn" data-label="False negative"></div>
              <div data-sorter-target="bucket" data-bucket="tn" data-label="True negative"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="tp" data-why="The AI flagged it and the reference standard agrees it is abnormal.">Flagged. Both radiologists see an upper-zone opacity, and the sputum test is positive.</li>
              <li data-bucket="fp" data-why="The AI flagged it, but the reference standard says normal. This is a false alarm.">Flagged because of a skin fold. The radiologists agree the lungs are normal.</li>
              <li data-bucket="fn" data-why="The AI missed an abnormal X-ray. This is the most serious type of error.">Not flagged. The radiologists find a small cavity in the right upper zone.</li>
              <li data-bucket="tn" data-why="The AI did not flag it and the X-ray is truly normal.">Not flagged. The radiologists agree it is a normal chest X-ray.</li>
              <li data-bucket="fp" data-why="A nipple shadow can look like a nodule. The truth is normal, so the flag is a false alarm.">Flagged for a round spot. The radiologists agree it is a nipple shadow.</li>
              <li data-bucket="fn" data-why="The finding was real but the AI did not flag it. Areas behind the heart are easy to miss.">Not flagged. The radiologists find an abnormal shadow behind the heart.</li>
              <li data-bucket="tp" data-why="The AI flagged it and the reference standard confirms it is abnormal.">Flagged. The radiologists agree there is patchy shadowing in both upper zones.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to work out the four measures and the effect of prevalence. Then check every number yourself with a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clear teacher of diagnostic test statistics for hospital staff in India.

        A made-up test of [LungLens, a chest X-ray AI tool] on [1,000] adult OPD chest X-rays gave these results against a reference standard:
        TP = [92], FP = [108], FN = [8], TN = [792].

        1. Show the 2 x 2 table with row and column totals.
        2. Work out sensitivity, specificity, PPV, NPV and accuracy. Show each formula and division. Round to one decimal place.
        3. Keep the same sensitivity and specificity. Work out PPV and NPV for [5,000] people at [2%] prevalence and for [1,000] people at [30%] prevalence. Show the TP, FP, FN and TN counts for each.
        4. Explain in 5 simple sentences, for a hospital manager, what these numbers mean for radiologist workload and missed patients.
        5. Give Google Sheets formulas if TP is in B2, FP in B3, FN in B4 and TN in B5.

        Use only the numbers above. Do not quote any real product's results.</pre>
            <ul class="ai-try-checks">
              <li>With the numbers unchanged: sensitivity 92%, specificity 88%, PPV 46%, NPV 99%, accuracy 88.4%.</li>
              <li>At 2% of 5,000: TP 92, FP 588, FN 8, TN 4,312, and PPV about 13.5%.</li>
              <li>At 30% of 1,000: TP 276, FP 84, FN 24, TN 616, and PPV about 76.7%.</li>
              <li>Check every figure with the spreadsheet formulas. Correct any arithmetic mistakes.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Never judge an imaging AI tool by one "accuracy" number. Ask for the full 2 × 2 table. Sensitivity tells you how many abnormal cases it finds. PPV tells you how many of its flags are real, and PPV falls when the condition is rare.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Chest X-Ray AI</h1>
        </div>
        <p class="lc-lead">The chest X-ray is the most common scan in most hospitals. It is also one of the main uses of imaging AI. In this lesson, you will learn the common uses of chest X-ray AI, such as TB screening and nodule detection. You will learn what WHO says about AI for TB screening, in general words. You will follow the planned LungLens workflow at Tarang Diagnostics. Most importantly, you will learn what the radiologist still checks on every X-ray.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="The planned LungLens workflow: the X-ray is taken, LungLens gives a score and heatmap, flagged X-rays go to the top of the worklist, a radiologist reads every X-ray and signs the report. If TB is possible, a sputum test confirms it and a doctor decides on treatment. The AI does not diagnose TB, does not look for every finding and does not sign reports.">
            <defs><marker id="mi5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="75" y="46" font-weight="700" fill="#67e8f9">X-ray taken</text>
              <text x="75" y="66" fill="#9b99b8" font-size="11">quality checked</text>
              <rect x="162" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="227" y="46" font-weight="700" fill="#fcd34d">LungLens</text>
              <text x="227" y="66" fill="#9b99b8" font-size="11">score + heatmap</text>
              <rect x="314" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="379" y="46" font-weight="700" fill="#c4b5fd">Worklist</text>
              <text x="379" y="66" fill="#9b99b8" font-size="11">flagged read first</text>
              <rect x="466" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="531" y="46" font-weight="700" fill="#6ee7b7">Radiologist</text>
              <text x="531" y="66" fill="#9b99b8" font-size="11">reads every X-ray</text>
              <rect x="618" y="20" width="132" height="66" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="684" y="46" font-weight="700" fill="#6ee7b7">Report signed</text>
              <text x="684" y="66" fill="#9b99b8" font-size="11">doctor informed</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mi5a)">
                <line x1="141" y1="53" x2="158" y2="53"/>
                <line x1="293" y1="53" x2="310" y2="53"/>
                <line x1="445" y1="53" x2="462" y2="53"/>
                <line x1="597" y1="53" x2="614" y2="53"/>
                <line x1="684" y1="88" x2="684" y2="126"/>
              </g>
              <rect x="470" y="130" width="280" height="78" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="610" y="154" font-weight="700" fill="#93c5fd">If TB is possible</text>
              <text x="610" y="174" fill="#e2e0f0" font-size="11.5">Confirm with a sputum test.</text>
              <text x="610" y="194" fill="#e2e0f0" font-size="11.5">The doctor decides on treatment.</text>
              <rect x="10" y="130" width="440" height="78" rx="10" fill="#27274e" stroke="#ef4444"/>
              <text x="230" y="154" font-weight="700" fill="#fca5a5">What LungLens does not do</text>
              <text x="230" y="174" fill="#e2e0f0" font-size="11.5">It does not diagnose TB. It does not look for every finding.</text>
              <text x="230" y="194" fill="#e2e0f0" font-size="11.5">It does not sign reports. It is not for children.</text>
              <text x="380" y="244" fill="#9b99b8" font-size="11.5">LungLens is a made-up product. Tarang plans to use it for triage in adults only.</text>
              <text x="380" y="264" fill="#9b99b8" font-size="11">A radiologist reads and signs every chest X-ray, flagged or not.</text>
            </g>
          </svg>
          <figcaption>The planned LungLens triage workflow at Tarang Diagnostics. The AI changes the reading order. It does not change who reads and signs.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Common uses of chest X-ray AI</h3>
          <p>Chest X-ray AI tools do different jobs. Here they are in general words. Each real tool has its own <strong>intended use</strong> (the exact job it is approved for). Always check it in the tool's documents.</p>
          <table class="lc-table">
            <thead><tr><th>Use</th><th>What the tool does</th><th>What happens next</th></tr></thead>
            <tbody>
              <tr><td><strong>TB screening and triage</strong></td><td>Gives a score for TB-like patterns, such as upper-zone shadows or cavities (holes in the lung).</td><td>People above the threshold need a confirmatory test, such as a sputum test.</td></tr>
              <tr><td><strong>Lung nodule detection</strong></td><td>Marks small round spots that could be early lung cancer, or harmless scars.</td><td>The radiologist decides. The referring doctor may order a CT scan.</td></tr>
              <tr><td><strong>Normal or abnormal triage</strong></td><td>Sorts X-rays that look abnormal to the top of the list.</td><td>The radiologist reads all X-rays, including those sorted as "likely normal".</td></tr>
              <tr><td><strong>Urgent finding alerts</strong></td><td>Some tools flag findings such as pneumothorax (air around the lung, which can make it collapse).</td><td>The radiologist confirms and calls the ward at once.</td></tr>
              <tr><td><strong>Tube and line checks</strong></td><td>Some tools check the position of tubes and lines in ICU patients.</td><td>The radiologist and the ICU doctor confirm the position.</td></tr>
            </tbody>
          </table>
          <p>A chest X-ray alone cannot confirm TB. Other diseases, and old healed scars, can look similar. TB is confirmed with lab tests, such as a sputum test. In India, TB testing and treatment follow the National TB Elimination Programme (NTEP). Follow its current guidelines.</p>
        </div>
        <div class="lc-card">
          <h3>What WHO says about AI for TB screening (general summary)</h3>
          <p>WHO calls these tools <strong>CAD</strong> (computer-aided detection) software. In simple words, its TB screening guidance (first published in 2021) says:</p>
          <ul class="lc-list">
            <li>For people aged 15 and older, in groups where TB screening is recommended, CAD may be used instead of a human reader. The job is to read digital chest X-rays for TB <em>screening and triage</em>.</li>
            <li>This is a <strong>conditional</strong> recommendation, based on <strong>low-certainty</strong> evidence. So it is a careful "may", not a firm "must".</li>
            <li>It does not cover children under 15.</li>
            <li>A positive screen is not a diagnosis. People who screen positive need a confirmatory test before TB treatment starts.</li>
            <li>The threshold should suit the local setting. WHO and its partners have published a guide on setting CAD thresholds locally.</li>
          </ul>
          <p>WHO updates its TB guidance from time to time. Check the latest WHO documents before you plan anything. This summary is general education, not medical or legal advice.</p>
          <p><strong>Tarang's own choice:</strong> WHO's advice is about screening programmes. Tarang's plan is different. It is for OPD chest X-rays, where other findings matter too. So a radiologist will still read every X-ray. Also, LungLens was trained only on patients aged 18 and over. So Tarang will use it only for adults aged 18 and over until there is more evidence.</p>
        </div>
        <div class="lc-card">
          <h3>What the radiologist still checks</h3>
          <p>A worked example with the made-up test numbers: in that test, LungLens flagged 20% of X-rays. Only 46% of the flags were truly abnormal. If Tarang's 110 daily chest X-rays are like the test set, the numbers look like this:</p>
          <table class="lc-table">
            <thead><tr><th>Per day (estimate)</th><th>Working</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>X-rays flagged</td><td>110 × 20%</td><td>22</td></tr>
              <tr><td>Flags that are truly abnormal</td><td>22 × 46%</td><td>about 10</td></tr>
              <tr><td>Truly abnormal X-rays</td><td>110 × 10%</td><td>11</td></tr>
              <tr><td>Abnormal X-rays not flagged</td><td>11 × 8%</td><td>about 1 (0.88)</td></tr>
            </tbody>
          </table>
          <p>So about one abnormal X-ray a day could sit unflagged in the "likely normal" part of the list. This is why every X-ray still gets a full read. On each one, the radiologist checks:</p>
          <ul class="lc-list">
            <li><strong>The right patient and study:</strong> name, age, side markers and the clinical question.</li>
            <li><strong>Image quality:</strong> rotation, a deep enough breath, exposure. A poor image can fool the AI.</li>
            <li><strong>The whole image:</strong> lungs, heart, bones, the area behind the heart, and tubes and lines. LungLens only looks for TB-like patterns.</li>
            <li><strong>Old X-rays:</strong> an old healed scar may not need action. A new shadow does.</li>
            <li><strong>The heatmap:</strong> does it point at a real finding, or at a necklace, a button or a skin fold?</li>
            <li><strong>Next steps:</strong> for possible TB, advise a confirmatory test. For urgent findings, call the doctor at once.</li>
          </ul>
          <pre><code>Weak:   Write rules for our AI X-ray tool.

        Better: Write a one-page procedure for radiologists and radiographers
                at an Indian hospital using a made-up chest X-ray AI tool for
                TB triage in adult OPD patients. Include: who reads each X-ray,
                what to check besides the AI score, what to do for possible TB,
                urgent findings, patients under 18, and how to log cases where
                the doctor disagrees with the AI.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: a morning with LungLens (made-up pilot)</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Worklist">At 8 am, Dr Kiran Rao opens the worklist. There are 30 overnight chest X-rays. LungLens has flagged 6 of them and put them at the top.</li>
              <li data-kind="result" data-label="First flag">Made-up patient A, a 45-year-old man with a cough for 4 weeks. Score 81. The heatmap shows the right upper zone.</li>
              <li data-kind="check" data-label="Dr Kiran reads">She sees a cavity in the right upper zone. She compares with an old X-ray, where it was absent. Her report says the findings are suspicious for TB and advises a sputum test. She informs the OPD doctor.</li>
              <li data-kind="warn" data-label="False alarm">Flag number 4 has a score of 64. The heatmap sits on a necklace shadow. The lungs are normal. She reports it as normal and logs it as a false positive for the pilot.</li>
              <li data-kind="warn" data-label="Outside the tool's job">An unflagged X-ray of a 60-year-old OPD patient has a score of 12. Reading it in full, she finds a pneumothorax. LungLens was not built to find this. She calls the OPD doctor at once, so the patient is seen urgently.</li>
              <li data-kind="check" data-label="Wrong age group">A 12-year-old child's X-ray also has a LungLens score. The tool is only for adults. She ignores the score, reads the X-ray in the usual way, and asks IT to stop scoring children's X-rays.</li>
              <li data-kind="answer" data-label="End of the list">All 30 X-rays are read and signed. Vikram's log records the flags, the false alarm, the miss outside the tool's job and the child's X-ray, for the pilot review.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to draft a one-page procedure for using a chest X-ray AI triage tool. Then review it as a radiologist would.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced radiologist in India. You help hospitals use imaging AI safely.

        Write a one-page standard operating procedure (SOP) for [Tarang Diagnostics]. We plan to use [LungLens], a made-up chest X-ray AI tool. It gives each X-ray a score from 0 to 100 and a heatmap. X-rays at or above [50] are flagged "abnormal / possible TB" and go to the top of the worklist. We will use it for [adult OPD patients aged 18 and over].

        Include these headings:
        1. Purpose and scope (who it is for and not for).
        2. Roles: radiographer, radiologist, referring doctor, IT.
        3. What the radiologist checks on every X-ray, flagged or not.
        4. Possible TB: confirmatory testing and referral as per the national TB programme.
        5. Urgent findings the tool is not built for.
        6. Logging cases where the radiologist disagrees with the tool.
        7. When to stop using the tool and whom to tell.

        Rules: the AI never makes a diagnosis. A radiologist reads and signs every report. Use simple English. Do not quote accuracy figures for any real product.</pre>
            <ul class="ai-try-checks">
              <li>It says a radiologist reads and signs every X-ray, including unflagged ones.</li>
              <li>A flag leads to a confirmatory test, not straight to TB treatment.</li>
              <li>Children and other groups outside the scope are clearly excluded.</li>
              <li>Urgent findings, such as pneumothorax, are escalated by the radiologist, whatever the AI score.</li>
              <li>Have your radiologists and quality team review the draft before anyone uses it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Chest X-ray AI can change the order in which X-rays are read. It does not diagnose TB. A positive screen needs a confirmatory test, and a radiologist still reads the whole image and signs the report.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">AI in CT, MRI and Ultrasound</h1>
        </div>
        <p class="lc-lead">Chest X-rays are not the only place where imaging AI is used. AI tools also work on CT, MRI and ultrasound. In this lesson, you will learn the three main jobs they do: urgent-finding alerts (such as a bleed in the brain), measurements and image quality. You will see a made-up month of bleed alerts at Tarang Diagnostics. You will also learn what the radiologist and the scanning team must still check.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three columns show what AI does in CT, MRI and ultrasound. CT: alerts for a possible brain bleed or blocked brain artery, measuring lung nodules, and cleaner low-dose images. MRI: faster scans with less noise, measuring brain and organ volumes, and outlining lesions. Ultrasound: guiding the probe to standard views, automatic measurements, and estimating heart pumping. Below, a bar says a radiologist or trained doctor checks every result and signs the report.">
            <defs><marker id="mi6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="14" width="236" height="44" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="128" y="41" font-weight="700" font-size="14" fill="#fcd34d">CT</text>
              <rect x="262" y="14" width="236" height="44" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="41" font-weight="700" font-size="14" fill="#c4b5fd">MRI</text>
              <rect x="514" y="14" width="236" height="44" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="632" y="41" font-weight="700" font-size="14" fill="#67e8f9">Ultrasound</text>
              <rect x="10" y="68" width="236" height="52" rx="8" fill="#1f1f44" stroke="#ef4444"/>
              <text x="128" y="89" font-weight="700" fill="#fca5a5">Urgent alert</text>
              <text x="128" y="108" fill="#9b99b8" font-size="11">possible bleed or blocked artery</text>
              <rect x="10" y="128" width="236" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="128" y="149" font-weight="700" fill="#93c5fd">Measurement</text>
              <text x="128" y="168" fill="#9b99b8" font-size="11">lung nodule size and growth</text>
              <rect x="10" y="188" width="236" height="52" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="128" y="209" font-weight="700" fill="#6ee7b7">Image quality</text>
              <text x="128" y="228" fill="#9b99b8" font-size="11">cleaner low-dose images</text>
              <rect x="262" y="68" width="236" height="52" rx="8" fill="#1f1f44" stroke="#ef4444"/>
              <text x="380" y="89" font-weight="700" fill="#fca5a5">Urgent alert</text>
              <text x="380" y="108" fill="#9b99b8" font-size="11">less common; check intended use</text>
              <rect x="262" y="128" width="236" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="149" font-weight="700" fill="#93c5fd">Measurement</text>
              <text x="380" y="168" fill="#9b99b8" font-size="11">brain and organ volumes, outlines</text>
              <rect x="262" y="188" width="236" height="52" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="209" font-weight="700" fill="#6ee7b7">Image quality</text>
              <text x="380" y="228" fill="#9b99b8" font-size="11">faster scans, less noise</text>
              <rect x="514" y="68" width="236" height="52" rx="8" fill="#1f1f44" stroke="#ef4444"/>
              <text x="632" y="89" font-weight="700" fill="#fca5a5">Guidance</text>
              <text x="632" y="108" fill="#9b99b8" font-size="11">helps find standard views</text>
              <rect x="514" y="128" width="236" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="632" y="149" font-weight="700" fill="#93c5fd">Measurement</text>
              <text x="632" y="168" fill="#9b99b8" font-size="11">heart pumping, fetal growth</text>
              <rect x="514" y="188" width="236" height="52" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="632" y="209" font-weight="700" fill="#6ee7b7">Image quality</text>
              <text x="632" y="228" fill="#9b99b8" font-size="11">flags poor or missing views</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mi6a)">
                <line x1="128" y1="242" x2="128" y2="256"/>
                <line x1="380" y1="242" x2="380" y2="256"/>
                <line x1="632" y1="242" x2="632" y2="256"/>
              </g>
              <rect x="10" y="260" width="740" height="34" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="282" font-weight="700" fill="#6ee7b7">A radiologist or trained doctor checks every result and signs the report</text>
            </g>
          </svg>
          <figcaption>The three main jobs of AI in CT, MRI and ultrasound. In every column, a person checks the result.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Urgent-finding alerts: stroke and brain bleeds</h3>
          <p>A <strong>stroke</strong> happens when blood cannot reach part of the brain. There are two main types. In an <strong>ischaemic stroke</strong>, a clot blocks an artery. In a <strong>haemorrhagic stroke</strong>, there is bleeding in the brain (a bleed). The treatments are very different, and time matters for both.</p>
          <p>So a patient with stroke signs usually gets an urgent CT scan of the head. The first scan checks for a bleed. A clot-busting drug (thrombolysis) must not be given if there is a bleed. A CT angiogram (a CT scan with contrast dye that shows the arteries) can show a <strong>large vessel occlusion</strong> (a blocked large artery). Some of these patients may benefit from removal of the clot through a tube (thrombectomy).</p>
          <p>AI alert tools look at these scans within minutes. They do two things:</p>
          <ul class="lc-list">
            <li>They move a scan with a <strong>possible bleed</strong> or a <strong>possible blocked artery</strong> to the top of the reading list.</li>
            <li>Some tools also send a message to the radiologist or the stroke team.</li>
          </ul>
          <p>An alert is a <strong>notification</strong>, not a diagnosis. The radiologist still reads every scan, flagged or not. Treatment decisions stay with the treating doctors. They look at the patient, the scan and the report. Many such tools are approved only for "triage and notification". Check the tool's intended use in its documents.</p>
          <p><strong>Made-up worked example.</strong> Tarang does about 10 emergency head CTs a day. Suppose it tried a made-up bleed-alert tool for one month:</p>
          <table class="lc-table">
            <thead><tr><th>One made-up month</th><th>Number</th><th>Working</th></tr></thead>
            <tbody>
              <tr><td>Emergency head CTs</td><td>300</td><td>10 a day × 30 days</td></tr>
              <tr><td>Scans the tool flagged as "possible bleed"</td><td>24</td><td></td></tr>
              <tr><td>Flags confirmed as a bleed by the radiologist</td><td>15</td><td>15 / 24 = 62.5% of flags were real (PPV)</td></tr>
              <tr><td>False alarms</td><td>9</td><td>24 − 15</td></tr>
              <tr><td>Bleeds the radiologist found that the tool missed</td><td>2</td><td>both were small bleeds</td></tr>
              <tr><td>All bleeds in the month</td><td>17</td><td>15 / 17 = about 88% found by the tool (sensitivity)</td></tr>
            </tbody>
          </table>
          <p>Seventeen bleeds is a small number. One more miss would change the result a lot. So one month is a first look, not proof. The two missed bleeds show why every head CT still gets a full read.</p>
        </div>
        <div class="lc-card">
          <h3>Measurements and image quality</h3>
          <p>Measuring by hand takes time, and two people often get slightly different results. AI tools can measure faster and in the same way each time. Common examples (in general words):</p>
          <table class="lc-table">
            <thead><tr><th>Scan</th><th>What AI may measure</th><th>What a person still checks</th></tr></thead>
            <tbody>
              <tr><td><strong>CT chest</strong></td><td>Size and volume of a lung nodule, and change since the last scan</td><td>That the right nodule is measured and compared with the right old scan</td></tr>
              <tr><td><strong>MRI brain</strong></td><td>Volume of brain parts, or the number of lesions (damaged areas)</td><td>That the outline follows the real edge. Movement can spoil it.</td></tr>
              <tr><td><strong>Echocardiogram</strong> (heart ultrasound)</td><td>Ejection fraction (the share of blood the heart pumps out with each beat)</td><td>That the views are good enough, and the number fits the patient</td></tr>
              <tr><td><strong>Obstetric ultrasound</strong> (scan in pregnancy)</td><td>Baby's head, tummy and thigh-bone size, to check growth</td><td>That the caliper points are placed correctly, and the dates are right</td></tr>
            </tbody>
          </table>
          <p><strong>Ultrasound in India:</strong> under the PCPNDT Act, finding or telling the sex of the baby is banned. This applies to AI tools too. An AI feature must never be used for this. Ultrasound centres must also follow the Act's rules on registration and records. This is general information, not legal advice.</p>
          <p><strong>Image quality.</strong> Some AI tools clean up images. They can reduce noise (grainy look) in low-dose CT. They can also make some MRI scans faster. Other tools warn the radiographer about a problem, such as patient movement or a missing view, before the patient leaves.</p>
          <p>Cleaned-up images can look very smooth. The AI could hide a tiny real detail, or add a detail that is not there. So the radiologist must know which images were processed by AI. The hospital should test the settings before routine use. Ultrasound quality also depends on the person holding the probe. AI guidance helps, but it does not replace training.</p>
          <pre><code>Weak:   Is AI good for CT scans?

        Better: I manage a 200-bed hospital imaging centre in India. We do about
                10 emergency head CTs a day. Explain, in simple English, what an
                AI "possible bleed" alert tool does and does not do. List the
                questions we should ask before a one-month trial. Do not name
                real products or quote accuracy figures.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: which job is the AI doing?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each AI feature (all made-up examples) into the job it does.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="alert" data-label="Urgent alert"></div>
              <div data-sorter-target="bucket" data-bucket="measure" data-label="Measurement"></div>
              <div data-sorter-target="bucket" data-bucket="quality" data-label="Image quality"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="alert" data-why="It changes the reading order and notifies people. The radiologist still reads the scan.">A head CT with a possible bleed moves to the top of the list, and the radiologist gets a message.</li>
              <li data-bucket="alert" data-why="It tells the stroke team to look quickly. The treating doctors still decide on treatment.">A CT angiogram with a possible blocked large artery sends an alert to the stroke team.</li>
              <li data-bucket="measure" data-why="It gives a number the radiologist compares with the old scan.">The tool reports that a lung nodule grew from 6 mm to 8 mm since last year.</li>
              <li data-bucket="measure" data-why="It estimates how well the heart pumps. The doctor checks the views and the number.">An echocardiogram tool estimates the ejection fraction.</li>
              <li data-bucket="quality" data-why="It reduces noise so a lower radiation dose may be used. The settings must be tested first.">Low-dose CT images are cleaned up to look less grainy.</li>
              <li data-bucket="quality" data-why="It helps the radiographer repeat the scan before the patient leaves.">The MRI console warns that the patient moved during one sequence.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to draft a night-time escalation procedure for AI bleed alerts on head CT. Then check it as a radiologist would.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced neuroradiologist in India. You help hospitals use imaging AI safely.

        Draft a one-page escalation procedure for [Tarang Diagnostics]. We are planning a [one-month] trial of a made-up AI tool on emergency head CTs. When it finds a possible bleed, it moves the scan to the top of the list and sends a message to the radiologist on duty. We do about [10] emergency head CTs a day. At night, [one radiologist] reads from home.

        Include:
        1. What the radiographer does when an alert appears.
        2. How fast the radiologist should look, and how they tell the emergency doctor.
        3. What happens if the radiologist does not answer (backup person).
        4. What to do with scans that have no alert (they still get a full read).
        5. How to log false alarms and missed bleeds for the trial review.

        Rules: the AI alert is not a diagnosis. Treatment decisions stay with the treating doctors. Use simple English and a numbered list. Leave blanks for times and phone numbers. Do not name real products or quote accuracy figures.</pre>
            <ul class="ai-try-checks">
              <li>Scans without an alert still get a full read, in the normal order.</li>
              <li>It has a clear backup if the radiologist on duty does not respond.</li>
              <li>It does not tell anyone to start or stop treatment based on the alert alone.</li>
              <li>Time targets are left blank for your team to agree, not invented as rules.</li>
              <li>Your radiologists, emergency team and quality team review it before use.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In CT, MRI and ultrasound, AI mostly alerts, measures or improves images. An alert changes who looks first. It does not replace the full read. The radiologist checks every measurement and every processed image before signing.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">AI in Screening Programmes</h1>
        </div>
        <p class="lc-lead">Screening programmes check large numbers of people who may not feel ill. AI can help read their images quickly. But a screening result is not a diagnosis. In this lesson, you will learn the difference between screening and diagnosis. You will see how AI is used in TB, breast and diabetic eye screening, in general words. You will also learn why the follow-up pathway matters as much as the AI.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A screening pathway. People are invited, then screened with an image read by AI and people. A negative result leads to advice and routine re-screening, and the person should come back if symptoms start. A positive result leads to a confirmatory test, then diagnosis by a doctor, then treatment and care. A red warning shows that people are lost if the follow-up step fails.">
            <defs><marker id="mi7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="100" width="120" height="66" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="70" y="127" font-weight="700" fill="#67e8f9">Invite</text>
              <text x="70" y="147" fill="#9b99b8" font-size="11">people at risk</text>
              <rect x="156" y="100" width="130" height="66" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="221" y="127" font-weight="700" fill="#fcd34d">Screen</text>
              <text x="221" y="147" fill="#9b99b8" font-size="11">image + AI + people</text>
              <rect x="330" y="20" width="190" height="66" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="425" y="47" font-weight="700" fill="#6ee7b7">Negative</text>
              <text x="425" y="67" fill="#9b99b8" font-size="11">advice + routine re-screen</text>
              <rect x="330" y="180" width="190" height="66" rx="10" fill="#1f1f44" stroke="#ef4444"/>
              <text x="425" y="207" font-weight="700" fill="#fca5a5">Positive</text>
              <text x="425" y="227" fill="#9b99b8" font-size="11">not yet a diagnosis</text>
              <rect x="560" y="20" width="190" height="66" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="655" y="47" font-weight="700" fill="#6ee7b7">Come back early</text>
              <text x="655" y="67" fill="#9b99b8" font-size="11">if symptoms start</text>
              <rect x="560" y="120" width="190" height="52" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="655" y="142" font-weight="700" fill="#93c5fd">Confirmatory test</text>
              <text x="655" y="160" fill="#9b99b8" font-size="11">lab test or specialist</text>
              <rect x="560" y="210" width="190" height="66" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="655" y="237" font-weight="700" fill="#c4b5fd">Diagnosis + care</text>
              <text x="655" y="257" fill="#9b99b8" font-size="11">a doctor decides</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mi7a)">
                <line x1="131" y1="133" x2="152" y2="133"/>
                <path d="M287,120 L310,120 L310,53 L326,53"/>
                <path d="M287,146 L310,146 L310,213 L326,213"/>
                <line x1="521" y1="53" x2="556" y2="53"/>
                <path d="M521,213 L540,213 L540,146 L556,146"/>
                <line x1="655" y1="173" x2="655" y2="206"/>
              </g>
              <text x="410" y="275" fill="#fca5a5" font-size="11.5" font-weight="700">If follow-up fails, people are lost here</text>
              <line x1="528" y1="262" x2="539" y2="206" stroke="#ef4444" stroke-width="1.5" stroke-dasharray="4 3"/>
              <text x="150" y="30" fill="#9b99b8" font-size="11.5">AI helps at the "Screen" step only.</text>
              <text x="150" y="48" fill="#9b99b8" font-size="11.5">The rest of the pathway is people.</text>
            </g>
          </svg>
          <figcaption>A screening pathway. AI can speed up one step. The programme only helps people if the follow-up steps work too.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Screening is not diagnosis</h3>
          <p><strong>Screening</strong> means checking many people, often without symptoms, to find those who need more tests. <strong>Diagnosis</strong> means finding out what disease a person has, using tests that confirm it.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Screening</th><th>Diagnosis</th></tr></thead>
            <tbody>
              <tr><td><strong>Who</strong></td><td>Many people, often with no symptoms</td><td>One patient with symptoms or a positive screen</td></tr>
              <tr><td><strong>Question</strong></td><td>"Does this person need more tests?"</td><td>"What does this person have?"</td></tr>
              <tr><td><strong>Result</strong></td><td>Positive (refer) or negative (routine re-screen)</td><td>A named condition, confirmed by tests and a doctor</td></tr>
              <tr><td><strong>What AI does</strong></td><td>Helps read many images fast, or sorts them</td><td>Supports a doctor who decides and signs</td></tr>
            </tbody>
          </table>
          <p>Screening happens where few people have the disease. In the prevalence lesson, you saw what this does to flags. At the made-up community camps (2% prevalence), LungLens flagged 680 of 5,000 people. Only 92 of them had the condition. That is about 1 in 7. So every positive screen needs a confirmatory test before anyone is told they have a disease.</p>
          <p>A negative screen is also not a promise. At the camps, 8 people with the condition were not flagged. So the advice after a negative screen should always say: "If you get symptoms, come back. Do not wait."</p>
        </div>
        <div class="lc-card">
          <h3>Three screening programmes where AI is used</h3>
          <p>Here are three common uses, in general words. Guidelines change, so check the current WHO and national documents before you plan anything. This is general education, not medical advice.</p>
          <table class="lc-table">
            <thead><tr><th>Programme</th><th>Screening image</th><th>How AI helps</th><th>After a positive screen</th></tr></thead>
            <tbody>
              <tr><td><strong>TB</strong></td><td>Chest X-ray, sometimes with portable or handheld machines at camps</td><td>WHO says CAD software may read digital chest X-rays for TB screening and triage in people aged 15 and older (2021 guidance).</td><td>A confirmatory lab test, such as a molecular test (NAAT) on sputum. Only then a TB diagnosis and treatment.</td></tr>
              <tr><td><strong>Breast cancer</strong></td><td>Mammography in organised programmes, mostly in well-resourced settings</td><td>AI may act as one of the readers, or sort mammograms by risk. Many countries are still studying how best to use it.</td><td>Recall for more imaging (extra views, ultrasound), and a biopsy if needed.</td></tr>
              <tr><td><strong>Diabetic eye disease</strong> (diabetic retinopathy: damage to the back of the eye)</td><td>Photos of the retina taken with a special camera</td><td>AI grades the photos. In the US, some systems are authorised to give a screening result without a doctor reading first.</td><td>Referral to an eye specialist (ophthalmologist) for a full eye exam and treatment.</td></tr>
            </tbody>
          </table>
          <p><strong>Some context for India (general):</strong></p>
          <ul class="lc-list">
            <li><strong>TB:</strong> the national TB programme has used AI-supported chest X-rays, including handheld machines, in large case-finding campaigns. People who screen positive are offered confirmatory testing.</li>
            <li><strong>Breast:</strong> India does not have a population-wide mammography programme. The national NCD programme (non-communicable diseases) uses clinical breast examination for women aged 30 to 65. WHO recommends organised mammography screening every 2 years for women aged 50 to 69 in well-resourced settings.</li>
            <li><strong>Diabetic eye disease:</strong> eye camps and diabetes clinics may use retina cameras. Some photos cannot be graded, for example because of a cataract. These people need an eye exam too.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The follow-up pathway decides the benefit</h3>
          <p>AI can read thousands of images a day. But a flag helps nobody if the person never gets the confirmatory test. People who drop out between steps are called <strong>lost to follow-up</strong>.</p>
          <p><strong>Made-up worked example:</strong> the community camps again. LungLens flagged 680 people. Suppose only 75% of them come for the sputum test.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Everyone comes (100%)</th><th>Only 75% come</th></tr></thead>
            <tbody>
              <tr><td>People who get the confirmatory test</td><td>680</td><td>680 × 75% = 510</td></tr>
              <tr><td>People with the condition among them</td><td>92</td><td>92 × 75% = 69 (if drop-out is the same for everyone)</td></tr>
              <tr><td>People with the condition lost</td><td>0</td><td>23</td></tr>
            </tbody>
          </table>
          <p>A better AI tool would not fix those 23 lost people. Better follow-up would. Before a programme starts, plan these points:</p>
          <ul class="lc-list">
            <li>Who tells the person about a positive screen, in their own language, and how?</li>
            <li>Can the confirmatory test be done the same day, at the same place?</li>
            <li>Who calls people who do not come back, and after how many days?</li>
            <li>How is each person tracked from screen to result, with privacy protected?</li>
            <li>What does a person with a negative screen hear about symptoms?</li>
            <li>Can the lab and the specialists handle the number of positive screens?</li>
          </ul>
          <pre><code>Weak:   Write about AI screening for TB.

        Better: We plan a TB screening camp in [a rural block in Maharashtra] with a
                portable chest X-ray and a made-up AI tool, for people aged 15 and
                older. Draft a follow-up plan: what we tell people after a positive
                or negative screen, same-day sputum testing, and calls to people
                who do not return. Simple English. Follow national TB programme rules.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: follow one person through a TB screening camp</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for a made-up camp visitor, Mr Ramesh (52), in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">A health worker invites Mr Ramesh, who has had a cough for three weeks, to the camp.</li>
              <li data-order="2">He gives consent and has a chest X-ray on the portable machine.</li>
              <li data-order="3">The AI score is above the programme's threshold, so his screen is positive.</li>
              <li data-order="4">Staff explain that this is not a diagnosis, and collect a sputum sample the same day.</li>
              <li data-order="5">The lab test confirms TB. A doctor sees him, makes the diagnosis and starts treatment.</li>
              <li data-order="6">The programme team records his journey and checks that no flagged person was lost.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to write the words staff say after a screening result. Then check that nothing sounds like a diagnosis.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a public health nurse in India who runs screening camps.

        Write two short scripts that camp staff can read aloud to people after [a TB screening chest X-ray read with an AI tool]. The camp is in [a village in rural Maharashtra]. The people speak [Marathi], so use very simple English that is easy to translate.

        Script 1: the screen is positive. Explain that this means "more tests are needed", not "you have TB". Explain the next test ([a sputum test today]), where and when to go, and that testing and treatment are [free under the government programme, if this applies]. End with who to call.

        Script 2: the screen is negative. Explain that it is good news but not a full guarantee. List symptoms that mean they should come back early (for example a cough for 2 weeks or more, fever, weight loss, night sweats).

        Rules: under 150 words each. Kind and calm. No medical terms without a plain meaning. Do not promise results. Add a line reminding staff that a doctor decides the diagnosis.</pre>
            <ul class="ai-try-checks">
              <li>The positive script never says the person has the disease.</li>
              <li>The negative script tells people to come back if symptoms start.</li>
              <li>Symptoms and next steps match your national programme's current guidance.</li>
              <li>Any claim about free tests or treatment is checked before use.</li>
              <li>A native speaker checks the translation before it is used.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A screening flag means "more tests needed", not "you have the disease". AI can speed up reading, but lives are helped only when every positive screen reaches a confirmatory test and a doctor.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">AI-Assisted Reporting</h1>
        </div>
        <p class="lc-lead">A radiology report is the final product of every scan. Writing reports takes a large part of a radiologist's day. AI can now help: it can fill in structured templates, draft findings and even draft the impression (the summary at the end). In this lesson, you will learn how AI-assisted reporting works, the errors it can make, and why the radiologist's signature still means full responsibility.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="An AI-assisted reporting workflow. The images go to an imaging AI tool that suggests findings. The findings fill a structured template. A language model drafts the impression. The radiologist reads the images, checks and edits every line, then signs. A monthly audit samples signed reports. Below, a red box lists errors to catch: invented findings, wrong side, missed findings, wrong numbers, and old text copied from a previous report.">
            <defs><marker id="mi8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="75" y="48" font-weight="700" fill="#67e8f9">Images</text>
              <text x="75" y="68" fill="#9b99b8" font-size="11">from the scanner</text>
              <rect x="162" y="20" width="130" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="227" y="48" font-weight="700" fill="#fcd34d">Imaging AI</text>
              <text x="227" y="68" fill="#9b99b8" font-size="11">suggests findings</text>
              <rect x="314" y="20" width="130" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="379" y="48" font-weight="700" fill="#93c5fd">Template</text>
              <text x="379" y="68" fill="#9b99b8" font-size="11">structured report</text>
              <rect x="466" y="20" width="130" height="70" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="531" y="48" font-weight="700" fill="#f9a8d4">Language model</text>
              <text x="531" y="68" fill="#9b99b8" font-size="11">drafts impression</text>
              <rect x="618" y="20" width="132" height="70" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="684" y="44" font-weight="700" fill="#6ee7b7">Radiologist</text>
              <text x="684" y="62" fill="#9b99b8" font-size="11">reads, edits</text>
              <text x="684" y="78" fill="#9b99b8" font-size="11">every line, signs</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mi8a)">
                <line x1="141" y1="55" x2="158" y2="55"/>
                <line x1="293" y1="55" x2="310" y2="55"/>
                <line x1="445" y1="55" x2="462" y2="55"/>
                <line x1="597" y1="55" x2="614" y2="55"/>
                <line x1="684" y1="92" x2="684" y2="116"/>
              </g>
              <rect x="560" y="120" width="190" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="655" y="143" font-weight="700" fill="#c4b5fd">Monthly audit</text>
              <text x="655" y="162" fill="#9b99b8" font-size="11">sample of signed reports</text>
              <rect x="10" y="120" width="530" height="130" rx="10" fill="#27274e" stroke="#ef4444"/>
              <text x="275" y="144" font-weight="700" fill="#fca5a5">Errors to catch before signing</text>
              <g text-anchor="start" font-size="11.5">
                <text x="30" y="170">Invented finding: text about something not in the images</text>
                <text x="30" y="190">Wrong side: "left" written where the finding is on the right</text>
                <text x="30" y="210">Missed finding: something in the images but not in the draft</text>
                <text x="30" y="230">Wrong number or old text copied from a previous report</text>
              </g>
              <text x="380" y="282" fill="#9b99b8" font-size="11.5">AI drafts. The radiologist decides what the report says, and signs it.</text>
            </g>
          </svg>
          <figcaption>An AI-assisted reporting workflow. The draft moves faster. The checking does not get shorter.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of reporting help</h3>
          <table class="lc-table">
            <thead><tr><th>Kind of help</th><th>What it does</th><th>Main risk</th></tr></thead>
            <tbody>
              <tr><td><strong>Structured report templates</strong></td><td>A fixed list of headings and choices for each scan type. It makes reports complete and easy to compare.</td><td>Normal default text left in by mistake</td></tr>
              <tr><td><strong>Imaging AI draft findings</strong></td><td>The imaging AI (for example LungLens) adds its suggestions to the template, such as "opacity, right upper zone".</td><td>The radiologist accepts a suggestion without looking</td></tr>
              <tr><td><strong>Language model drafts</strong></td><td>A language model (the kind of AI behind chat assistants) turns the findings into an impression, or rewrites the report in simple words for patients.</td><td>Invented findings, wrong side, over-confident wording</td></tr>
            </tbody>
          </table>
          <p>A language model predicts likely words. It does not look at the images unless it is a special imaging model. Even then, it can write something that sounds right but is not there. This is called an <strong>invented finding</strong> (often called a "hallucination"). In a radiology report, one invented or missed word can change a patient's treatment.</p>
          <p><strong>Privacy:</strong> never paste real reports or patient details into a public AI tool. Use only tools approved by your hospital, with data protection agreements in place. In India, health data is covered by the DPDP Act 2023 and its Rules. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>A structured chest X-ray report (made-up patient)</h3>
          <p>Here is a structured report for a made-up patient. LungLens suggestions are marked [AI]. The radiologist must accept, edit or delete each one.</p>
          <pre><code>CHEST X-RAY (PA view)       Tarang Diagnostics
        Patient: Made-up patient C, 34-year-old man, OPD
        Clinical question: Cough for 3 weeks, evening fever

        Quality:     Adequate. No rotation.
        Lungs:       [AI] Opacity in the right upper zone.
                     [AI] Possible cavity (score 78).
        Pleura:      No effusion. No pneumothorax.
        Heart:       Normal size.
        Bones/other: No abnormality seen.
        Comparison:  No previous X-ray available.

        IMPRESSION (draft by language model, NOT yet checked):
        1. Right upper zone opacity with possible cavity.
           Findings are suspicious for TB.
        2. Advise sputum testing for TB and clinical correlation.

        Radiologist: ______________   Signed: ______   Time: ______</code></pre>
          <p>Before signing, the radiologist asks for each line: "Can I see this in the images myself?" Then she asks: "Is anything in the images missing from this text?"</p>
          <pre><code>Weak:   Write the impression for this chest X-ray.

        Better: Using ONLY the findings below, draft a 2-line impression for a
                chest X-ray report. Do not add any finding that is not listed.
                Keep the same side (left or right) as written. If a finding is
                uncertain, say so. End with a suggested next step, marked
                "for radiologist review". Findings: [paste de-identified findings]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Auditing AI drafts (made-up numbers)</h3>
          <p>Suppose Tarang tries language model drafts of impressions for one month, using a hospital-approved tool. Dr Kiran Rao checks 50 drafted impressions against the images:</p>
          <table class="lc-table">
            <thead><tr><th>Result of the check</th><th>Drafts</th><th>Share</th></tr></thead>
            <tbody>
              <tr><td>Correct as written</td><td>41</td><td>41 / 50 = 82%</td></tr>
              <tr><td>Needed wording changes only</td><td>6</td><td>6 / 50 = 12%</td></tr>
              <tr><td>Had an important error</td><td>3</td><td>3 / 50 = 6%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>50</strong></td><td><strong>100%</strong></td></tr>
            </tbody>
          </table>
          <p>The 3 important errors were: one invented small pleural effusion (fluid around the lung), one wrong side, and one missing advice for a follow-up test. 6% sounds small. But Tarang does about 110 chest X-rays a day. Without careful checks, errors like these would reach real patients often.</p>
          <p>Good practice for AI-drafted reports:</p>
          <ul class="lc-list">
            <li>The radiologist reads the images first, or at the same time. Never sign from the text alone.</li>
            <li>Mark AI-drafted text clearly until a person checks it.</li>
            <li>Keep a log of AI errors and share it with the vendor and the quality team.</li>
            <li>Audit a sample of signed reports every month.</li>
            <li>The signing radiologist is fully responsible for the report, whoever drafted it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: checking an AI-drafted report</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Open the case">Dr Kiran Rao opens a chest X-ray of a made-up 58-year-old woman, patient D. The template has LungLens suggestions and a drafted impression.</li>
              <li data-kind="result" data-label="The draft">The draft says: "Left lower zone consolidation. Small left pleural effusion. Suggest antibiotics and repeat X-ray in 6 weeks."</li>
              <li data-kind="check" data-label="Look at the images">She looks at the X-ray. There is a consolidation (a solid-looking area in the lung), but it is in the right lower zone. The side marker confirms this.</li>
              <li data-kind="warn" data-label="Invented finding">There is no pleural effusion on either side. The language model added it. She deletes it and logs it as an invented finding.</li>
              <li data-kind="warn" data-label="Outside the report's job">The draft tells the doctor which drug to give. Treatment is the referring doctor's decision. She changes it to "Clinical correlation and follow-up X-ray advised."</li>
              <li data-kind="check" data-label="Search for missed findings">She checks the whole image again: heart, bones, the area behind the heart and the lung apices (tops). Nothing else is found.</li>
              <li data-kind="answer" data-label="Signed">She corrects the side, signs the report and adds both errors to the audit log for the monthly review.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give an AI assistant made-up findings and ask it to draft an impression. Then check every word against the findings.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a radiologist draft a report. The radiologist will check and sign it. The patient is made up.

        Using ONLY the findings below, write:
        1. An IMPRESSION of 2 to 3 numbered lines for the report.
        2. A 4-line summary in very simple English for the patient, to be given only after the doctor explains the result.

        Findings (chest X-ray, PA view, made-up patient, [45]-year-old [man]):
        - [Right] upper zone patchy opacity. No cavity seen.
        - No pleural effusion. No pneumothorax.
        - Heart size normal.
        - Previous X-ray from [2024]: this opacity was not present.

        Rules:
        - Do not add any finding that is not in the list.
        - Keep the same side (left or right) as written.
        - Do not name a diagnosis as certain. Use words like "may represent".
        - Do not suggest any medicine.
        - Suggest a next step, marked "for radiologist review".
        - After the text, list every sentence and the finding it comes from.</pre>
            <ul class="ai-try-checks">
              <li>Every sentence traces back to a listed finding. Nothing is invented.</li>
              <li>The side is the same everywhere, and the comparison with the old X-ray is correct.</li>
              <li>The wording is careful, and no medicine is suggested.</li>
              <li>The patient summary is simple and not frightening, and it does not replace a talk with the doctor.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can draft a report in seconds, but it can invent a finding, flip a side or miss something. The radiologist checks every line against the images. The signature means the radiologist owns every word.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Understanding AI Outputs</h1>
        </div>
        <p class="lc-lead">Imaging AI tools show their results as heatmaps, scores and flags. These look clear and exact, so people often read too much into them. In this lesson, you will learn what a heatmap does and does not show. You will learn what a score means, and how the threshold turns a score into a flag. You will work through a threshold change with made-up LungLens numbers, and see who should decide the threshold.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: a drawing of a chest X-ray with a heatmap. One warm area is over the right upper zone of the lung, where there is a real finding. A second warm area is over a necklace at the neck, which is not disease. Right: a score scale from 0 to 100 with three possible thresholds at 40, 50 and 60. This X-ray scored 81, so it is flagged at all three thresholds. A note says the score is not a percentage chance of disease.">
            <defs>
              <marker id="mi9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <radialGradient id="mi9g1"><stop offset="0" stop-color="#ef4444" stop-opacity="0.9"/><stop offset="0.6" stop-color="#f59e0b" stop-opacity="0.5"/><stop offset="1" stop-color="#f59e0b" stop-opacity="0"/></radialGradient>
            </defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="16" width="300" height="250" rx="10" fill="#111126" stroke="#9b99b8"/>
              <text x="40" y="40" font-weight="700" fill="#e2e0f0">R</text>
              <ellipse cx="118" cy="150" rx="62" ry="90" fill="#2a2a4a" stroke="#4b4b70"/>
              <ellipse cx="222" cy="150" rx="62" ry="90" fill="#2a2a4a" stroke="#4b4b70"/>
              <ellipse cx="190" cy="190" rx="42" ry="46" fill="#3a3a5e"/>
              <path d="M130,40 Q170,62 210,40" fill="none" stroke="#d4d4e8" stroke-width="2" stroke-dasharray="2 3"/>
              <circle cx="105" cy="105" r="36" fill="url(#mi9g1)"/>
              <circle cx="170" cy="56" r="22" fill="url(#mi9g1)"/>
              <text x="170" y="286" fill="#9b99b8" font-size="11">Drawing only. Patient's right is on your left.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mi9a)">
                <line x1="360" y1="105" x2="146" y2="105"/>
                <line x1="360" y1="52" x2="196" y2="52"/>
              </g>
              <g text-anchor="start" font-size="11.5">
                <text x="366" y="48" fill="#fcd34d">Warm area on a necklace: not disease</text>
                <text x="366" y="101" fill="#fca5a5">Warm area on a real finding</text>
                <text x="366" y="118" fill="#9b99b8" font-size="11">(right upper zone)</text>
              </g>
              <text x="555" y="160" font-weight="700" fill="#e2e0f0">Score for this X-ray: 81</text>
              <rect x="370" y="176" width="370" height="16" rx="8" fill="#27274e" stroke="#4b4b70"/>
              <rect x="370" y="176" width="300" height="16" rx="8" fill="#8b5cf6" opacity="0.55"/>
              <g stroke-width="2">
                <line x1="518" y1="170" x2="518" y2="198" stroke="#10b981"/>
                <line x1="555" y1="170" x2="555" y2="198" stroke="#f59e0b"/>
                <line x1="592" y1="170" x2="592" y2="198" stroke="#ec4899"/>
              </g>
              <text x="370" y="212" fill="#9b99b8" font-size="11" text-anchor="start">0</text>
              <text x="740" y="212" fill="#9b99b8" font-size="11" text-anchor="end">100</text>
              <text x="512" y="212" fill="#6ee7b7" font-size="11" text-anchor="end">40</text>
              <text x="555" y="212" fill="#fcd34d" font-size="11">50</text>
              <text x="598" y="212" fill="#f9a8d4" font-size="11" text-anchor="start">60</text>
              <text x="555" y="236" fill="#9b99b8" font-size="11">Possible thresholds: flagged if the score is at or above it</text>
              <text x="555" y="262" fill="#fca5a5" font-size="11.5" font-weight="700">A score of 81 is not an 81% chance of disease</text>
            </g>
          </svg>
          <figcaption>A made-up LungLens output: a heatmap with one useful warm area and one misleading one, and a score shown against three possible thresholds.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Heatmaps: where the AI "looked"</h3>
          <p>A <strong>heatmap</strong> is a coloured layer on the image. Warm colours (red, yellow) show the areas that most affected the AI's score. It helps the radiologist find what the AI reacted to. But it has limits:</p>
          <ul class="lc-list">
            <li><strong>It shows where, not why.</strong> A warm area on a real shadow does not prove the AI "understood" the disease.</li>
            <li><strong>It can point at the wrong thing.</strong> Necklaces, buttons, ECG leads, tubes, skin folds and text markers can light up.</li>
            <li><strong>It is blurry.</strong> It marks a rough area, not the exact edge of a finding.</li>
            <li><strong>It is silent about misses.</strong> A finding the AI did not notice has no warm area. So the heatmap must never decide which parts of the image the radiologist reads.</li>
            <li><strong>Different heatmap methods can give different pictures</strong> for the same X-ray and the same score.</li>
          </ul>
          <p>So a heatmap is a helpful pointer. It is not a full explanation of the AI's decision. The radiologist reads the whole image every time.</p>
        </div>
        <div class="lc-card">
          <h3>Scores, thresholds and "confidence"</h3>
          <p>LungLens gives each X-ray a <strong>score</strong> from 0 to 100. A higher score means the image looks more like the abnormal X-rays the tool learned from. The <strong>threshold</strong> is the cut-off score. At or above it, the X-ray is flagged.</p>
          <p>A score is usually <strong>not</strong> a percentage chance of disease. In the Tarang test, only 46% of all flagged X-rays were truly abnormal. A score can be read as a chance only if the tool is <strong>calibrated</strong>. Calibrated means, for example, that about 80 in 100 X-rays scoring near 80 are truly abnormal. This must be tested on local data. Words such as "confidence 90%" on a screen need the same care. Ask the vendor exactly what the number means.</p>
          <p><strong>Made-up worked example: changing the threshold.</strong> Tarang's test used a threshold of 50. The same 1,000 test X-rays (100 truly abnormal) were scored again at 40 and 60:</p>
          <table class="lc-table">
            <thead><tr><th>Threshold</th><th>TP</th><th>FN</th><th>FP</th><th>TN</th><th>Flagged</th><th>Sensitivity</th><th>Specificity</th><th>PPV</th></tr></thead>
            <tbody>
              <tr><td>40</td><td>96</td><td>4</td><td>171</td><td>729</td><td>267</td><td>96 / 100 = 96%</td><td>729 / 900 = 81%</td><td>96 / 267 = 36%</td></tr>
              <tr><td><strong>50 (tested)</strong></td><td>92</td><td>8</td><td>108</td><td>792</td><td>200</td><td>92 / 100 = 92%</td><td>792 / 900 = 88%</td><td>92 / 200 = 46%</td></tr>
              <tr><td>60</td><td>85</td><td>15</td><td>63</td><td>837</td><td>148</td><td>85 / 100 = 85%</td><td>837 / 900 = 93%</td><td>85 / 148 = 57%</td></tr>
            </tbody>
          </table>
          <p>What this means for a day of 110 chest X-rays (11 truly abnormal), if the day is like the test set:</p>
          <table class="lc-table">
            <thead><tr><th>Threshold</th><th>Flagged per day</th><th>False alarms per day</th><th>Abnormal X-rays not flagged</th></tr></thead>
            <tbody>
              <tr><td>40</td><td>110 × 26.7% = about 29</td><td>about 19</td><td>11 × 4% = 0.44 a day (about 4 in 10 days)</td></tr>
              <tr><td>50</td><td>110 × 20% = 22</td><td>about 12</td><td>11 × 8% = 0.88 a day (about 9 in 10 days)</td></tr>
              <tr><td>60</td><td>110 × 14.8% = about 16</td><td>about 7</td><td>11 × 15% = 1.65 a day (about 16 or 17 in 10 days)</td></tr>
            </tbody>
          </table>
          <p>A lower threshold misses fewer abnormal X-rays but gives more false alarms. A higher threshold gives fewer false alarms but misses more. For triage, missing an abnormal X-ray usually costs more than a false alarm, because a flag only changes the reading order. So triage teams often accept more false alarms, as long as the flagged list stays small enough to read first. Remember, every X-ray is still read in full, so an unflagged X-ray is read later, not never.</p>
        </div>
        <div class="lc-card">
          <h3>Who decides the threshold?</h3>
          <ul class="lc-list">
            <li>The clinical team decides with the vendor, based on a <strong>local test</strong>. It is not only the vendor's default setting.</li>
            <li>The choice depends on the job. Screening camps, triage and second reads may each need a different threshold.</li>
            <li>Write down the threshold, the reason and the date. Get sign-off from the head of department (Dr Kiran Rao) and the medical superintendent (Dr Farida Shaikh).</li>
            <li>Never change it quietly. After any change, measure again: flag rate, false alarms and misses.</li>
          </ul>
          <pre><code>Weak:   What threshold should we use for our AI?

        Better: Here is a made-up table of results at thresholds 40, 50 and 60
                for a chest X-ray triage tool: [paste table]. Explain the trade-off
                in simple English for a hospital committee. Show the working for
                each number. Do not recommend a final threshold; list the
                questions our radiologists should answer to choose one.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: good or poor reading of the output?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each statement about a made-up LungLens output.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good reading"></div>
              <div data-sorter-target="bucket" data-bucket="poor" data-label="Poor reading"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="poor" data-why="The score is not a probability unless the tool is proved to be calibrated on local data.">"The score is 81, so there is an 81% chance this patient has TB."</li>
              <li data-bucket="good" data-why="Heatmaps can light up on objects that are not disease.">"The heatmap sits on a necklace, so I will not trust this warm area."</li>
              <li data-bucket="poor" data-why="The heatmap is silent about findings the AI missed. The whole image must be read.">"No warm area on the left lung, so I do not need to look there."</li>
              <li data-bucket="good" data-why="Lowering the threshold catches more abnormal X-rays, but flags more normal ones.">"If we lower the threshold to 40, we will get more false alarms."</li>
              <li data-bucket="poor" data-why="Threshold changes need a documented reason, sign-off and a new check.">"Too many flags today. I will ask IT to raise the threshold to 60 this afternoon."</li>
              <li data-bucket="good" data-why="A flag changes the reading order. The report comes from a full read.">"This X-ray scored 12, but I still read the whole image before signing."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to explain a threshold choice for a hospital committee. Then check every number yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clinical data analyst at an Indian hospital. Explain a threshold choice for an AI chest X-ray triage tool to our [AI review committee]. All data is made up.

        Test set: 1,000 adult OPD chest X-rays, 100 truly abnormal.
        Threshold 40: TP 96, FN 4, FP 171, TN 729
        Threshold 50: TP 92, FN 8, FP 108, TN 792
        Threshold 60: TP 85, FN 15, FP 63, TN 837
        We read about [110] chest X-rays a day. The tool is used for triage: flagged X-rays are read first, and every X-ray is still read by a radiologist.

        Please:
        1. Work out sensitivity, specificity, PPV and share flagged for each threshold. Show the working.
        2. Estimate flags, false alarms and missed abnormal X-rays per day.
        3. Explain the trade-off in 5 simple bullet points.
        4. List 5 questions the radiologists should answer before choosing.
        Do not choose the threshold for us. Say that the result must be re-checked on our own data.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate each number yourself or in a spreadsheet, for example =96/100 for sensitivity at 40.</li>
              <li>PPV should be about 36%, 46% and 57%, and it rises as the threshold rises.</li>
              <li>It does not treat the score as a percentage chance of disease.</li>
              <li>It leaves the final choice to your clinical team.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A heatmap shows where the AI reacted, not why, and not what it missed. A score is not a chance of disease unless it is proved to be calibrated. The threshold is a clinical choice made on local data and written down.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Bias, Limits and Failure Cases</h1>
        </div>
        <p class="lc-lead">An imaging AI tool can work well on average and still fail for some patients. It may do worse on X-rays from an older machine, from a portable unit, or from a group it rarely saw in training. It can also get worse over time without anyone noticing. In this lesson, you will learn the common failure cases. You will read a made-up subgroup table for LungLens, and learn how to watch for drift over time.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A bar chart of made-up LungLens sensitivity by group. All 1,000 test X-rays: 92 percent. Room 1 newer machine: 95 percent. Room 2 older machine: 87.5 percent. Age 18 to 59: 94 percent. Age 60 and over: 89 percent. Men: 94 percent. Women: 89 percent. Portable ward and ICU X-rays, a separate check outside the tool's intended use: 75 percent. The number of truly abnormal X-rays in each group is shown, and small groups are marked as uncertain.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="22" text-anchor="middle" font-weight="700">Sensitivity by group (made-up LungLens data, threshold 50)</text>
              <g fill="#9b99b8" font-size="10.5" text-anchor="middle">
                <text x="260" y="44">0%</text>
                <text x="360" y="44">25%</text>
                <text x="460" y="44">50%</text>
                <text x="560" y="44">75%</text>
                <text x="660" y="44">100%</text>
              </g>
              <g stroke="#4b4b70" stroke-width="1" stroke-dasharray="3 3">
                <line x1="360" y1="50" x2="360" y2="286"/>
                <line x1="460" y1="50" x2="460" y2="286"/>
                <line x1="560" y1="50" x2="560" y2="286"/>
              </g>
              <line x1="260" y1="50" x2="260" y2="286" stroke="#9b99b8"/>
              <g text-anchor="end">
                <text x="250" y="70" font-weight="700">All test X-rays (100)</text>
                <text x="250" y="98">Room 1, newer (60)</text>
                <text x="250" y="126">Room 2, older (40)</text>
                <text x="250" y="154">Age 18 to 59 (65)</text>
                <text x="250" y="182">Age 60 and over (35)</text>
                <text x="250" y="210">Men (62)</text>
                <text x="250" y="238">Women (38)</text>
                <text x="250" y="274" fill="#fca5a5">Portable ward/ICU (40)</text>
              </g>
              <rect x="260" y="58" width="368" height="16" rx="3" fill="#8b5cf6"/>
              <rect x="260" y="86" width="380" height="16" rx="3" fill="#3b82f6"/>
              <rect x="260" y="114" width="350" height="16" rx="3" fill="#3b82f6"/>
              <rect x="260" y="142" width="375" height="16" rx="3" fill="#22d3ee"/>
              <rect x="260" y="170" width="354" height="16" rx="3" fill="#22d3ee"/>
              <rect x="260" y="198" width="374" height="16" rx="3" fill="#10b981"/>
              <rect x="260" y="226" width="358" height="16" rx="3" fill="#10b981"/>
              <rect x="260" y="262" width="300" height="16" rx="3" fill="#ef4444"/>
              <g text-anchor="start" font-size="11.5">
                <text x="636" y="70" font-weight="700">92%</text>
                <text x="648" y="98">95%</text>
                <text x="618" y="126">87.5%</text>
                <text x="643" y="154">94%</text>
                <text x="622" y="182">89%</text>
                <text x="642" y="210">94%</text>
                <text x="626" y="238">89%</text>
                <text x="568" y="274" fill="#fca5a5">75%</text>
              </g>
              <line x1="20" y1="252" x2="740" y2="252" stroke="#4b4b70"/>
              <text x="380" y="304" text-anchor="middle" fill="#9b99b8" font-size="11">(n) = truly abnormal X-rays in the group. Small groups: one case moves the result a lot.</text>
              <text x="380" y="322" text-anchor="middle" fill="#fca5a5" font-size="11">Portable X-rays: a separate check, outside the tool's intended use.</text>
            </g>
          </svg>
          <figcaption>Made-up LungLens sensitivity by group. The average hides differences, and the portable X-ray check shows a clear failure outside the tool's intended use.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why imaging AI fails in new places</h3>
          <p>An AI tool learns patterns from its training images. It can fail when new images look different from those. Here are the common failure cases:</p>
          <table class="lc-table">
            <thead><tr><th>Failure case</th><th>What goes wrong</th><th>Example (made-up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Different machines</strong></td><td>Each machine and its software process images a little differently. The AI may react to these differences.</td><td>X-rays from an older machine look softer. The tool misses more findings.</td></tr>
              <tr><td><strong>Portable and bedside X-rays</strong></td><td>Patients lie down, the view is different (AP, taken front to back), and tubes and lines cover the lungs.</td><td>ICU X-rays with many tubes get many false alarms.</td></tr>
              <tr><td><strong>Children</strong></td><td>A child's chest looks different, and the diseases differ too. Many tools were trained only on adults.</td><td>A child's normal thymus (a gland in the chest) is flagged as abnormal.</td></tr>
              <tr><td><strong>Patient groups</strong></td><td>Groups with few training images, such as older patients, women or people with other lung diseases, may get worse results.</td><td>Old healed TB scars are flagged again and again as "possible TB".</td></tr>
              <tr><td><strong>Rare diseases</strong></td><td>The tool saw few or no examples. It may say "normal" or give a random score.</td><td>A rare lung disease gets a low score and no flag.</td></tr>
              <tr><td><strong>Drift over time</strong></td><td>The images, patients or software change after the tool is checked. Results slowly get worse.</td><td>A software update on one machine changes the flag rate.</td></tr>
            </tbody>
          </table>
          <p><strong>Bias</strong> here means that a tool works less well for some groups of patients. It is often not intended. It comes from the training data and the way the tool is used. It matters because those patients get a worse service, often without anyone noticing.</p>
        </div>
        <div class="lc-card">
          <h3>Reading a subgroup table (made-up data)</h3>
          <p>Tarang split its 1,000 test X-rays into groups (<strong>subgroups</strong>) and worked out the results for each. Each pair of rows adds up to the full test: TP 92, FN 8, FP 108, TN 792.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>X-rays</th><th>TP</th><th>FN</th><th>FP</th><th>TN</th><th>Sensitivity</th><th>Specificity</th></tr></thead>
            <tbody>
              <tr><td>Room 1 (newer machine)</td><td>600</td><td>57</td><td>3</td><td>60</td><td>480</td><td>57 / 60 = 95%</td><td>480 / 540 = 88.9%</td></tr>
              <tr><td>Room 2 (older machine)</td><td>400</td><td>35</td><td>5</td><td>48</td><td>312</td><td>35 / 40 = 87.5%</td><td>312 / 360 = 86.7%</td></tr>
              <tr><td>Age 18 to 59</td><td>700</td><td>61</td><td>4</td><td>66</td><td>569</td><td>61 / 65 = 93.8%</td><td>569 / 635 = 89.6%</td></tr>
              <tr><td>Age 60 and over</td><td>300</td><td>31</td><td>4</td><td>42</td><td>223</td><td>31 / 35 = 88.6%</td><td>223 / 265 = 84.2%</td></tr>
              <tr><td>Men</td><td>560</td><td>58</td><td>4</td><td>58</td><td>440</td><td>58 / 62 = 93.5%</td><td>440 / 498 = 88.4%</td></tr>
              <tr><td>Women</td><td>440</td><td>34</td><td>4</td><td>50</td><td>352</td><td>34 / 38 = 89.5%</td><td>352 / 402 = 87.6%</td></tr>
            </tbody>
          </table>
          <p>How to read it:</p>
          <ul class="lc-list">
            <li><strong>Look for a pattern, not one number.</strong> Room 2 and patients aged 60 and over do worse on both measures. That is worth a closer look.</li>
            <li><strong>Mind small numbers.</strong> Only 38 women had abnormal X-rays. One more miss would drop their sensitivity from 89.5% to 86.8% (33 / 38). So a gap of a few points may be chance. Ask for more cases before you decide.</li>
            <li><strong>Ask why.</strong> Room 2's older machine may explain part of it. Older patients may have more old scars and other lung disease.</li>
          </ul>
          <p><strong>A separate check on portable X-rays.</strong> LungLens was not built for portable X-rays. Tarang checked 200 adult ward and ICU portable X-rays anyway (made-up data): TP 30, FN 10, FP 48, TN 112. Sensitivity was 30 / 40 = 75%, and specificity was 112 / 160 = 70%. The tool clearly fails outside its intended use. So Tarang will not score portable X-rays, and it will not score children's X-rays either.</p>
        </div>
        <div class="lc-card">
          <h3>Drift: watching the tool over time</h3>
          <p><strong>Drift</strong> means the tool's results slowly change after it is set up. Causes include a new X-ray machine or a software update. A new kind of patient (for example, more camp patients) or a change in the AI tool itself can also cause it.</p>
          <p>You often cannot measure sensitivity every week, because you do not know the truth for every patient. So watch simple signals instead. Made-up example: the flag rate was about 20% (22 of 110 a day). After a software update on Room 2's machine, it jumped to 29% (about 32 a day). Radiologists also logged more false alarms from Room 2.</p>
          <table class="lc-table">
            <thead><tr><th>What to watch (weekly)</th><th>Normal range (set from the local test)</th><th>Action if outside the range</th></tr></thead>
            <tbody>
              <tr><td>Flag rate, per X-ray room</td><td>About 20%</td><td>Check for machine or software changes. Tell the vendor.</td></tr>
              <tr><td>Radiologist disagreement log</td><td>Agree a normal level first</td><td>Review the cases. Look for a pattern.</td></tr>
              <tr><td>Abnormal X-rays found that were not flagged</td><td>Review every one</td><td>Look for a pattern by room, age or finding.</td></tr>
              <tr><td>X-rays scored outside the intended use (children, portable)</td><td>Zero</td><td>Fix the settings with IT at once.</td></tr>
            </tbody>
          </table>
          <p>Agree in advance who can pause the tool, and for which rooms. A named person, such as Dr Kiran Rao, should review the numbers every week and report to Vikram and Dr Farida Shaikh.</p>
          <pre><code>Weak:   Is our AI tool biased?

        Better: Here is a made-up subgroup table for a chest X-ray AI tool:
                [paste table]. Point out which groups do worse, which gaps may
                be due to small numbers, and possible reasons. Then suggest 5
                things to monitor every week, and when to pause the tool.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: what kind of failure is this?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up problem by its main cause.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="machine" data-label="Machine or image"></div>
              <div data-sorter-target="bucket" data-bucket="patient" data-label="Patient group"></div>
              <div data-sorter-target="bucket" data-bucket="drift" data-label="Drift over time"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="machine" data-why="Portable X-rays are taken lying down, with tubes and lines. The tool was not trained on them.">An ICU portable X-ray with a chest tube gets a high score, but the lungs are normal.</li>
              <li data-bucket="machine" data-why="Older machines process images differently from the training images.">Room 2's older machine has more missed findings than Room 1.</li>
              <li data-bucket="patient" data-why="Children were not in the training data. Their chests look different.">An 8-year-old's normal X-ray is flagged as abnormal.</li>
              <li data-bucket="patient" data-why="Groups with more old lung disease can get more false alarms.">Many older patients with old healed TB scars are flagged again and again.</li>
              <li data-bucket="drift" data-why="A change after the local test can shift the results.">After a software update in March, the flag rate rises from 20% to 29%.</li>
              <li data-bucket="drift" data-why="A new mix of patients means the tool sees different images than in the test.">Camp patients are added to the OPD list, and false alarms slowly rise.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to review a made-up subgroup table and draft a weekly monitoring plan. Then check its reasoning.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a quality manager for imaging AI at an Indian hospital. All data below is made up.

        Our chest X-ray triage tool was tested on 1,000 adult OPD X-rays (threshold 50). Subgroup results:
        Room 1 (newer machine): TP 57, FN 3, FP 60, TN 480
        Room 2 (older machine): TP 35, FN 5, FP 48, TN 312
        Age 18-59: TP 61, FN 4, FP 66, TN 569
        Age 60+: TP 31, FN 4, FP 42, TN 223
        Men: TP 58, FN 4, FP 58, TN 440
        Women: TP 34, FN 4, FP 50, TN 352
        Separate check, [200] portable ward/ICU X-rays: TP 30, FN 10, FP 48, TN 112

        Please:
        1. Work out sensitivity and specificity for each group. Show the working.
        2. Say which differences may matter and which may be due to small numbers.
        3. Suggest possible reasons, marked as "to be checked".
        4. Draft a weekly monitoring plan for [Tarang Diagnostics]: what to measure, who reviews it, and when to pause the tool.
        Use simple English. Do not claim any difference is proven.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate a few numbers, for example Room 2 sensitivity = 35 / 40 = 87.5%.</li>
              <li>It warns that groups with few abnormal cases give uncertain results.</li>
              <li>It says the tool should not be used on portable X-rays or children.</li>
              <li>The plan names a person, a schedule and clear pause rules.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good average can hide poor results for some machines and patient groups. Check results by subgroup, keep the tool inside its intended use, and watch simple signals every week so you notice drift early.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Rules and Approvals</h1>
        </div>
        <p class="lc-lead">Imaging AI is not just an app. In India and most other countries, software that helps diagnose or screen can be a medical device. It then needs a licence or approval before it is sold. In this lesson, you will learn the main rules in general words. In India, these are the CDSCO Medical Devices Rules, 2017, with four risk classes, and the PCPNDT Act. Elsewhere, they are US FDA authorisation, CE marking in Europe and the EU AI Act. You will also learn what a hospital like Tarang Diagnostics should check before it uses a tool. This lesson is general education. It is not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Rules that can apply to an imaging AI tool. In India: the CDSCO Medical Devices Rules 2017 with risk classes A to D, the PCPNDT Act which bans telling the sex of a foetus with any tool, and the DPDP Act for patient data and images. In the USA: FDA authorisation through 510(k), De Novo or PMA. In the EU: CE marking under the MDR with a notified body review, and the EU AI Act, which treats such tools as high-risk, with duties from August 2028. The hospital must check the licence, use the tool as labelled and report problems.">
            <defs><marker id="mi11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="125" y="14" fill="#9b99b8" font-size="11">INDIA</text>
              <text x="635" y="14" fill="#9b99b8" font-size="11">USA AND EUROPE</text>
              <rect x="10" y="22" width="230" height="66" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="125" y="48" font-weight="700" fill="#fcd34d">CDSCO device rules</text>
              <text x="125" y="68" fill="#9b99b8" font-size="11">MDR 2017, Class A to D</text>
              <rect x="10" y="119" width="230" height="66" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="125" y="145" font-weight="700" fill="#f9a8d4">PCPNDT Act</text>
              <text x="125" y="165" fill="#9b99b8" font-size="11">no foetal sex, by any tool</text>
              <rect x="10" y="216" width="230" height="66" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="125" y="242" font-weight="700" fill="#67e8f9">DPDP Act and Rules</text>
              <text x="125" y="262" fill="#9b99b8" font-size="11">patient data and images</text>
              <rect x="520" y="22" width="230" height="66" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="635" y="48" font-weight="700" fill="#93c5fd">USA: FDA</text>
              <text x="635" y="68" fill="#9b99b8" font-size="11">510(k), De Novo or PMA</text>
              <rect x="520" y="119" width="230" height="66" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="635" y="145" font-weight="700" fill="#c4b5fd">EU: CE mark (MDR)</text>
              <text x="635" y="165" fill="#9b99b8" font-size="11">notified body review</text>
              <rect x="520" y="216" width="230" height="66" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="635" y="242" font-weight="700" fill="#c4b5fd">EU: AI Act</text>
              <text x="635" y="262" fill="#9b99b8" font-size="11">high-risk, duties from 2028</text>
              <rect x="290" y="112" width="180" height="80" rx="12" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="142" font-weight="700" fill="#6ee7b7">Imaging AI tool</text>
              <text x="380" y="162" fill="#9b99b8" font-size="11">e.g. LungLens</text>
              <text x="380" y="178" fill="#9b99b8" font-size="11">(made up)</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mi11a)">
                <line x1="242" y1="62" x2="296" y2="108"/>
                <line x1="242" y1="152" x2="284" y2="152"/>
                <line x1="242" y1="244" x2="296" y2="196"/>
                <line x1="518" y1="62" x2="464" y2="108"/>
                <line x1="518" y1="152" x2="476" y2="152"/>
                <line x1="518" y1="244" x2="464" y2="196"/>
              </g>
              <text x="380" y="300" fill="#9b99b8" font-size="11.5">Hospital: check the licence, use the tool as labelled, report problems. Not legal advice.</text>
            </g>
          </svg>
          <figcaption>The main rules that can apply to an imaging AI tool, in general words. Rules change, so always check the current official text.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>India: when software is a medical device</h3>
          <p>In India, medical devices are regulated under the Drugs and Cosmetics Act, 1940 and the <strong>Medical Devices Rules, 2017</strong> (MDR 2017). The regulator is the <strong>CDSCO</strong> (Central Drugs Standard Control Organisation). Software made for a medical purpose, such as diagnosis, screening or triage, can be a medical device. CDSCO calls this <strong>MDSW</strong> (medical device software).</p>
          <p>CDSCO has published guidance on medical device software. Check the CDSCO website for the latest version. Its examples include software that reads X-rays to suggest or exclude a condition. They also include AI tools for triage or screening. So a tool like LungLens would usually count as a medical device.</p>
          <p>Every medical device gets one of four <strong>risk classes</strong>:</p>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Risk level</th><th>Who gives the licence (in general)</th></tr></thead>
            <tbody>
              <tr><td>A</td><td>Low</td><td>State licensing authority for manufacture in India</td></tr>
              <tr><td>B</td><td>Low to moderate</td><td>State licensing authority for manufacture in India</td></tr>
              <tr><td>C</td><td>Moderate to high</td><td>Central licensing authority (CDSCO)</td></tr>
              <tr><td>D</td><td>High</td><td>Central licensing authority (CDSCO)</td></tr>
            </tbody>
          </table>
          <p>Imported devices generally need an import licence from the central authority. Some low-risk Class A devices need only registration, not a licence. Check the current rules. The class depends on the <strong>intended use</strong> (what the maker says the software is for). For standalone software, the guidance looks at two things. First, how serious the condition is: critical, serious or non-serious. Second, how much the output matters: does it diagnose or treat, drive the next step, or only inform? For example, software that diagnoses a critical condition is Class D. Software that only informs, for a serious condition, is Class A.</p>
          <p>The same guidance asks AI makers to describe their training and test data. This includes where the data came from and which patient groups it covers. Makers must show that a tool trained outside India works in Indian settings. They must also run post-market surveillance: tracking complaints, bugs, cybersecurity and AI drift (a slow fall in performance over time). Serious adverse events must be reported to the licensing authority.</p>
          <p><strong>What this means for Tarang:</strong> the hospital does not apply for the licence. The vendor does. But Tarang should ask for a copy of the licence and check the class and intended use. Then it should use the tool only within that use.</p>
        </div>
        <div class="lc-card">
          <h3>USA and Europe, in general words</h3>
          <ul class="lc-list">
            <li><strong>US FDA.</strong> AI medical devices reach the US market through one of three main routes: <strong>510(k)</strong> (shown to be similar to a device already on the market), <strong>De Novo</strong> (a new low-to-moderate-risk device type) or <strong>PMA</strong> (premarket approval, for high-risk devices). The FDA publishes a list of AI-enabled medical devices. Most devices on it are for radiology. The FDA itself says the list is not complete.</li>
            <li><strong>EU MDR and CE marking.</strong> In the European Union, a medical device needs a <strong>CE mark</strong> under the Medical Device Regulation (MDR). Most software that helps diagnose falls in Class IIa or higher. That means a <strong>notified body</strong> (an independent body named by an EU country) must review it.</li>
            <li><strong>EU AI Act.</strong> AI that is part of a medical device needing a notified body review counts as <strong>high-risk</strong>. High-risk AI has extra duties, such as data quality, record keeping, transparency and human oversight. In 2026 the EU agreed to delay some dates. For AI in medical devices, the main duties now apply from 2 August 2028. Check the current rules.</li>
          </ul>
          <p>Three points matter for a hospital in India:</p>
          <ul class="lc-list">
            <li>An FDA or CE approval does not replace a CDSCO licence for sale in India.</li>
            <li>An approval covers one product version and one intended use. A new version or a new use may need a new review.</li>
            <li>An approval shows the tool met the regulator's requirements. It does not prove the tool works well on your patients and your machines. You still need a local test.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The PCPNDT Act and other Indian rules</h3>
          <p>The <strong>PCPNDT Act</strong> (Pre-Conception and Pre-Natal Diagnostic Techniques Act, 1994) bans finding out or telling the sex of a foetus. The ban covers ultrasound and any other technique, including AI software. Centres that do these scans must be registered. They must keep records, such as Form F for each pregnant woman scanned. If an ultrasound AI tool has any feature that could estimate foetal sex, it must never be used. Ask the vendor to confirm this in writing.</p>
          <p>Other rules and guidelines to know by name:</p>
          <ul class="lc-list">
            <li><strong>ICMR Ethical Guidelines for Application of AI in Biomedical Research and Healthcare (2023)</strong>: principles for AI research and use, such as safety, consent and accountability.</li>
            <li><strong>DPDP Act 2023 and DPDP Rules 2025</strong>: how personal data, including images and reports, must be handled. The patient lesson covers this.</li>
            <li><strong>Clinical Establishments Act</strong> (in the states that follow it) and <strong>NABH</strong> accreditation: general standards for hospitals and quality.</li>
          </ul>
          <p>You can use an AI assistant to make a first map of the rules. But AI tools can be out of date or wrong about laws. Always check the official text.</p>
          <pre><code>Weak:   What are the rules for medical AI in India?

        Better: I work at a hospital imaging centre in India. We may use a
                chest X-ray AI triage tool made by an outside vendor.
                List the Indian rules we should know about, in simple words.
                For each rule, say who it applies to (vendor or hospital)
                and what document we should ask for. Mark any point that
                may be out of date. Name the official website to check.
                Say clearly that this is not legal advice.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: which rule applies?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each situation is made up. Which rule is the main one to think about?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="mdr" data-label="CDSCO device rules"></div>
              <div data-sorter-target="bucket" data-bucket="pcpndt" data-label="PCPNDT Act"></div>
              <div data-sorter-target="bucket" data-bucket="dpdp" data-label="Data protection (DPDP)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="mdr" data-why="Imported medical device software needs an import licence from the central licensing authority.">A foreign vendor wants to sell its X-ray AI tool to hospitals in India.</li>
              <li data-bucket="pcpndt" data-why="Telling or finding out foetal sex is banned, whatever the technique, including AI.">An ultrasound AI add-on has a hidden feature that estimates the baby's sex.</li>
              <li data-bucket="dpdp" data-why="X-rays and reports linked to a name are personal data. Sharing them needs a lawful basis and safeguards.">Tarang plans to send chest X-rays with patient names to the vendor's cloud server.</li>
              <li data-bucket="mdr" data-why="The class depends on the intended use. Moving from triage to diagnosis can raise the class and need a new review.">The vendor now says LungLens can diagnose TB, not only triage X-rays.</li>
              <li data-bucket="pcpndt" data-why="Registered scan centres must keep records such as Form F for each pregnant woman scanned.">An ultrasound centre fills in Form F for every pregnant woman it scans.</li>
              <li data-bucket="dpdp" data-why="Patients have rights over their personal data, including clear information on how it is used.">A patient asks which companies can see her scan images.</li>
              <li data-bucket="mdr" data-why="Licence holders must run post-market surveillance and report serious adverse events to the licensing authority.">After a software update, the tool misses several clear cases, and one patient is harmed.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to make a regulatory checklist for a new imaging AI tool. Then check each point against official sources.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a regulatory affairs adviser for hospitals in India. You explain rules in simple English.

        Our imaging centre, [Tarang Diagnostics], plans to use [LungLens], a made-up [chest X-ray AI tool that flags "abnormal / possible TB" X-rays for adult OPD patients]. The vendor is [a foreign company].

        Make a checklist of what we should ask for and check before we use the tool. Use a table with these columns: Item, Why it matters, Document to ask for, Who checks it (vendor, IT, radiologist, management).

        Cover: the CDSCO licence and risk class under the Medical Devices Rules, 2017; the intended use and whether our use matches it; the software version; any FDA or CE approval, and why it does not replace a CDSCO licence; post-market surveillance and how problems are reported; the PCPNDT Act if the vendor also sells ultrasound AI; and patient data and images under the DPDP Act.

        Rules: do not invent licence numbers, dates or classes. Mark any point that may have changed with "check current rules". End with one line saying this is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>It says the vendor holds the licence, and the hospital checks it and uses the tool as labelled.</li>
              <li>It does not treat an FDA or CE approval as a licence to sell in India.</li>
              <li>It does not invent licence numbers, classes or dates.</li>
              <li>Check every rule against the CDSCO website or other official text before you rely on it.</li>
              <li>It ends with a clear "not legal advice" note.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An approval covers one version of a tool for one intended use. It shows the tool met a regulator's requirements, not that it works on your patients. Check the licence and use the tool only as labelled. Test it locally, and keep a radiologist in charge of every report.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Choosing and Evaluating an Imaging AI Tool</h1>
        </div>
        <p class="lc-lead">Many vendors sell imaging AI, and most sales decks look impressive. A hospital needs a fair way to choose. In this lesson, you will follow Tarang Diagnostics as it evaluates LungLens (a made-up chest X-ray AI tool). You will learn to define the problem first and ask vendors the right questions. You will also learn to test the tool on your own images and design a live pilot. Most importantly, you will learn to decide what "good enough" means before you see any results.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Five steps to choose an imaging AI tool: define the need, ask vendors the same questions, run a local test on your own past images, run a prospective pilot, and make a go or no-go decision. The success criteria are set before the pilot starts.">
            <defs><marker id="mi12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="82" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="75" y="46" font-weight="700" fill="#93c5fd">1. Define need</text>
              <text x="75" y="66" fill="#9b99b8" font-size="11">problem, users,</text>
              <text x="75" y="82" fill="#9b99b8" font-size="11">intended use</text>
              <rect x="162" y="20" width="130" height="82" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="227" y="46" font-weight="700" fill="#67e8f9">2. Ask vendors</text>
              <text x="227" y="66" fill="#9b99b8" font-size="11">same questions</text>
              <text x="227" y="82" fill="#9b99b8" font-size="11">to every vendor</text>
              <rect x="314" y="20" width="130" height="82" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="379" y="46" font-weight="700" fill="#fcd34d">3. Local test</text>
              <text x="379" y="66" fill="#9b99b8" font-size="11">1,000 of your own</text>
              <text x="379" y="82" fill="#9b99b8" font-size="11">past X-rays</text>
              <rect x="466" y="20" width="130" height="82" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="531" y="46" font-weight="700" fill="#f9a8d4">4. Live pilot</text>
              <text x="531" y="66" fill="#9b99b8" font-size="11">4 weeks, new</text>
              <text x="531" y="82" fill="#9b99b8" font-size="11">patients</text>
              <rect x="618" y="20" width="132" height="82" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="684" y="46" font-weight="700" fill="#6ee7b7">5. Decide</text>
              <text x="684" y="66" fill="#9b99b8" font-size="11">go, go with</text>
              <text x="684" y="82" fill="#9b99b8" font-size="11">conditions, no-go</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mi12a)">
                <line x1="141" y1="61" x2="158" y2="61"/>
                <line x1="293" y1="61" x2="310" y2="61"/>
                <line x1="445" y1="61" x2="462" y2="61"/>
                <line x1="597" y1="61" x2="614" y2="61"/>
              </g>
              <rect x="162" y="136" width="434" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="379" y="162" font-weight="700" fill="#c4b5fd">Set success criteria and stop rules BEFORE the pilot</text>
              <text x="379" y="182" fill="#9b99b8" font-size="11">so the results cannot change what "good enough" means</text>
              <g stroke="#8b5cf6" stroke-width="1.5" fill="none" stroke-dasharray="4 3">
                <line x1="379" y1="103" x2="379" y2="134"/>
                <line x1="531" y1="103" x2="531" y2="134"/>
              </g>
              <text x="380" y="232" fill="#9b99b8" font-size="11.5">Made-up example: Tarang Diagnostics evaluating LungLens for adult OPD chest X-rays.</text>
            </g>
          </svg>
          <figcaption>A fair process to choose an imaging AI tool. Each step can stop the project if the tool is not right for you.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with the problem, not the tool</h3>
          <p>Tarang's real problem is clear. Chest X-rays taken in the evening and at night wait a median of 9 hours for a report. An abnormal X-ray can sit behind many normal ones. So Dr Kiran Rao (head radiologist) and Vikram (operations manager) wrote a one-line <strong>use statement</strong>:</p>
          <pre><code>Use: put adult (18+) OPD chest X-rays with possible TB at the top
             of the reading list, so a radiologist reads them first.
        Not for: children, ward or ICU portable X-rays, diagnosis,
                 or replacing the radiologist's full read.
        Success means: abnormal X-rays are reported sooner, without
                       more missed findings.</code></pre>
          <p>This statement does three jobs. It tells vendors what you need. It must match the tool's licensed intended use. And it tells you what to measure later.</p>
        </div>
        <div class="lc-card">
          <h3>Questions for every vendor</h3>
          <p>Send every vendor the same written questions. Compare the answers side by side. A good vendor answers with documents and numbers, not only with adjectives.</p>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Question</th><th>Red flag</th></tr></thead>
            <tbody>
              <tr><td>Approvals</td><td>Do you hold a CDSCO licence for this version? What is the class and the intended use?</td><td>"The licence is in process" or a use that does not match yours</td></tr>
              <tr><td>Training data</td><td>Which countries, hospitals, machines and age groups? How were labels made?</td><td>No details, or only one hospital</td></tr>
              <tr><td>Testing</td><td>Was it tested on hospitals not used in training? With Indian patients?</td><td>Only an internal test, or only "high accuracy"</td></tr>
              <tr><td>Results</td><td>Sensitivity and specificity with 95% confidence intervals, by age, sex and machine type?</td><td>One accuracy figure with no breakdown</td></tr>
              <tr><td>Machines</td><td>Which X-ray systems does it support: DR (direct digital) and CR (older cassette-based digital)?</td><td>"It works on all images"</td></tr>
              <tr><td>Threshold</td><td>Can we set our own flag threshold? Who can change it?</td><td>Fixed threshold, no local tuning</td></tr>
              <tr><td>Integration</td><td>How does it connect to our PACS (image store) and RIS (radiology work system)?</td><td>Staff must upload images by hand</td></tr>
              <tr><td>Data</td><td>Where do images go? Are they stored? Are they used to train your models?</td><td>Images kept and reused without a written agreement</td></tr>
              <tr><td>Updates</td><td>How are new versions tested and announced? Can we delay an update?</td><td>Silent updates</td></tr>
              <tr><td>Failure</td><td>What happens when the tool is down or cannot read an image?</td><td>No clear fallback</td></tr>
              <tr><td>Cost and exit</td><td>Total cost for 3 years, support, and how we get our data back if we stop</td><td>Hidden fees or no exit plan</td></tr>
            </tbody>
          </table>
          <p>LungLens's vendor gave only "high accuracy" and an internal test. That is why Tarang ran its own local test before any pilot.</p>
          <pre><code>Weak:   Is LungLens a good product?

        Better: Here are the written answers from two made-up chest X-ray
                AI vendors [paste answers, with no patient data]. Compare
                them in a table against these 11 areas [list]. For each
                area, mark: clear answer, vague answer or no answer. List
                the follow-up questions we should send. Do not guess
                facts that are not in the answers.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Local test and pilot design</h3>
          <p><strong>Local test (retrospective):</strong> Tarang tested LungLens on 1,000 past adult OPD chest X-rays (made-up data). It found 92% sensitivity, 88% specificity and 46% PPV. This shows how the tool does on Tarang's own images. But it does not show what happens in a real, busy day.</p>
          <p><strong>Pilot (prospective):</strong> a prospective study follows new patients as they come. There are two common designs:</p>
          <ul class="lc-list">
            <li><strong>Silent mode:</strong> the AI runs, but nobody sees its results. You compare them later. It is safe, but it cannot show any change in turnaround time.</li>
            <li><strong>Live mode:</strong> the AI result changes the reading order. You can measure the real effect. You need strong safety rules.</li>
          </ul>
          <p>Tarang chose a 4-week live pilot, because the local test was already done. The made-up plan:</p>
          <ul class="lc-list">
            <li><strong>Who:</strong> adult (18+) OPD chest X-rays from X-ray Room 1 (DR) and Room 2 (CR). Children's X-rays are blocked from the tool by an age filter.</li>
            <li><strong>Safety:</strong> the duty radiologist reads and signs every X-ray, flagged or not.</li>
            <li><strong>Reference standard:</strong> a second radiologist re-reads every X-ray without seeing the AI result. Sputum test results are added where available. Dr Kiran Rao settles disagreements.</li>
            <li><strong>Measures:</strong> sensitivity, specificity, PPV and NPV. Turnaround time (TAT: time from X-ray to signed report), before and during the pilot. Technical failures. Results by age, sex, X-ray room and past TB.</li>
            <li><strong>Size:</strong> about 2,000 X-rays. At about 10% prevalence, that gives about 200 abnormal X-rays. That is enough to measure overall sensitivity within roughly plus or minus 5 percentage points. Small subgroups will be much less certain.</li>
            <li><strong>Cost:</strong> the second reads take many extra radiologist hours. Budget for them.</li>
          </ul>
          <p><strong>Success criteria, agreed and signed before the pilot starts:</strong></p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Target</th></tr></thead>
            <tbody>
              <tr><td>Overall sensitivity</td><td>At least 85%, and the lower end of its 95% confidence interval at least 80%</td></tr>
              <tr><td>Overall specificity</td><td>At least 80%, so the number of false alarms stays manageable</td></tr>
              <tr><td>Sensitivity in each main subgroup</td><td>At least 85%, or a clear plan for that group</td></tr>
              <tr><td>Median TAT for flagged X-rays</td><td>2 hours or less</td></tr>
              <tr><td>Median TAT for unflagged X-rays</td><td>No more than 1 hour worse than before</td></tr>
              <tr><td>Technical failures</td><td>3% or less of X-rays sent to the tool</td></tr>
              <tr><td>Safety</td><td>No serious patient harm linked to the tool</td></tr>
            </tbody>
          </table>
          <p><strong>Stop rules:</strong> Dr Kiran Rao pauses the pilot at once if the tool causes serious harm. She also pauses it if technical failures pass 10% in one day. These targets are made up for this course. Your team must set its own targets with its radiologists.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the evaluation in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Tarang's steps for choosing a chest X-ray AI tool in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the problem and a one-line use statement.</li>
              <li data-order="2">Shortlist tools whose licensed intended use matches your use.</li>
              <li data-order="3">Send every vendor the same written questions and compare the answers.</li>
              <li data-order="4">Test the best tool on 1,000 of your own past, de-identified X-rays.</li>
              <li data-order="5">Agree the success criteria and stop rules, and get them signed.</li>
              <li data-order="6">Run a 4-week live pilot, with a radiologist reading every X-ray.</li>
              <li data-order="7">Report the results and decide: go, go with conditions, or no-go.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to build a vendor questionnaire and a pilot plan for an imaging AI tool.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced radiologist and hospital quality lead in India. You help hospitals choose imaging AI tools fairly.

        Our centre: [Tarang Diagnostics], [3 radiologists], about [110 chest X-rays a day].
        Problem: [night chest X-rays wait a median of 9 hours; abnormal ones wait behind normal ones].
        Tool type: [chest X-ray AI that flags "abnormal / possible TB" for triage].
        Use: [adult OPD patients aged 18 and over]. A radiologist will still read and sign every X-ray.

        Please give:
        1. A one-line use statement with "Use", "Not for" and "Success means".
        2. A vendor questionnaire of 12 questions in a table: Area, Question, Good answer, Red flag.
        3. A 4-week pilot plan: who is included, reference standard, measures, subgroups to check, and safety rules.
        4. Success criteria and stop rules, as a table, to agree before the pilot.

        Rules: define every metric in simple words. Do not quote accuracy figures for any real product. Mark targets as suggestions for our radiologists to decide.</pre>
            <ul class="ai-try-checks">
              <li>It asks about the CDSCO licence, intended use, training data, machines and subgroup results.</li>
              <li>The pilot keeps a radiologist reading and signing every X-ray.</li>
              <li>Success criteria are set before the pilot, not after.</li>
              <li>Metrics such as sensitivity and PPV are defined correctly.</li>
              <li>It quotes no accuracy figures for real products.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Choose a tool for your problem, not for its sales deck. Ask every vendor the same questions, and test on your own images. Write down what "good enough" means before the pilot starts.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Workflow and Human Oversight</h1>
        </div>
        <p class="lc-lead">A good AI tool can still cause harm if it is placed in the wrong spot in the workflow. People can also trust it too much. In this lesson, you will learn where imaging AI fits in a radiology workflow and who does what. You will learn about automation bias and alert fatigue. You will see how second reads, escalation rules and stop rules keep patients safe. The examples come from Tarang Diagnostics and its made-up chest X-ray tool, LungLens.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The LungLens workflow with human oversight. The X-ray is taken and checked, LungLens gives a score, flagged X-rays go first on the worklist, the radiologist reads every X-ray and signs the report, and the referring doctor acts. Three oversight layers sit below: second reads of a weekly sample and all disagreements, escalation of urgent findings by phone, and weekly monitoring against stop rules.">
            <defs><marker id="mi13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="75" y="48" font-weight="700" fill="#67e8f9">X-ray taken</text>
              <text x="75" y="68" fill="#9b99b8" font-size="11">age, quality check</text>
              <rect x="162" y="20" width="130" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="227" y="48" font-weight="700" fill="#fcd34d">LungLens</text>
              <text x="227" y="68" fill="#9b99b8" font-size="11">score, heatmap</text>
              <rect x="314" y="20" width="130" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="379" y="48" font-weight="700" fill="#c4b5fd">Worklist</text>
              <text x="379" y="68" fill="#9b99b8" font-size="11">flagged read first</text>
              <rect x="466" y="20" width="130" height="70" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="531" y="48" font-weight="700" fill="#6ee7b7">Radiologist</text>
              <text x="531" y="68" fill="#9b99b8" font-size="11">reads all, signs</text>
              <rect x="618" y="20" width="132" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="684" y="48" font-weight="700" fill="#93c5fd">Doctor acts</text>
              <text x="684" y="68" fill="#9b99b8" font-size="11">tests, treatment</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mi13a)">
                <line x1="141" y1="55" x2="158" y2="55"/>
                <line x1="293" y1="55" x2="310" y2="55"/>
                <line x1="445" y1="55" x2="462" y2="55"/>
                <line x1="597" y1="55" x2="614" y2="55"/>
              </g>
              <text x="380" y="122" fill="#9b99b8" font-size="11">HUMAN OVERSIGHT LAYERS</text>
              <rect x="10" y="134" width="236" height="84" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="128" y="160" font-weight="700" fill="#f9a8d4">Second reads</text>
              <text x="128" y="180" fill="#9b99b8" font-size="11">weekly random sample</text>
              <text x="128" y="197" fill="#9b99b8" font-size="11">plus every disagreement</text>
              <rect x="262" y="134" width="236" height="84" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="160" font-weight="700" fill="#f9a8d4">Escalation</text>
              <text x="380" y="180" fill="#9b99b8" font-size="11">urgent finding: phone call</text>
              <text x="380" y="197" fill="#9b99b8" font-size="11">tool down: normal list</text>
              <rect x="514" y="134" width="236" height="84" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="632" y="160" font-weight="700" fill="#f9a8d4">Monitoring</text>
              <text x="632" y="180" fill="#9b99b8" font-size="11">weekly log and trends</text>
              <text x="632" y="197" fill="#9b99b8" font-size="11">stop rules, owner named</text>
              <text x="380" y="256" fill="#e2e0f0" font-size="12.5" font-weight="700">The AI changes the order of reading. People make every decision.</text>
              <text x="380" y="280" fill="#9b99b8" font-size="11">Made-up workflow for Tarang Diagnostics.</text>
            </g>
          </svg>
          <figcaption>Where LungLens sits in the workflow, and the three layers of human oversight around it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where the AI fits, and who does what</h3>
          <p>At Tarang, LungLens only changes the order of the reading list. It does not write reports, send results to patients or order tests. Every role is written down:</p>
          <table class="lc-table">
            <thead><tr><th>Role</th><th>Job</th></tr></thead>
            <tbody>
              <tr><td>Radiographer</td><td>Checks the patient's identity and age, and the image quality. Repeats a poor X-ray before it is sent.</td></tr>
              <tr><td>LungLens</td><td>Gives a score and heatmap. Flags X-rays at or above the threshold.</td></tr>
              <tr><td>Duty radiologist</td><td>Reads every X-ray in full, flagged or not. Decides the findings and signs the report.</td></tr>
              <tr><td>Referring doctor</td><td>Acts on the report, for example orders a sputum test.</td></tr>
              <tr><td>IT and PACS team</td><td>Keeps the tool connected, checks the version, and switches it off if asked.</td></tr>
              <tr><td>Dr Kiran Rao (tool owner)</td><td>Runs second reads and monitoring. Can pause the tool.</td></tr>
              <tr><td>Dr Farida Shaikh (medical superintendent)</td><td>Gives final approval for use, and for starting again after a pause.</td></tr>
            </tbody>
          </table>
          <p>Note what the AI does not see. LungLens was built to flag possible TB. It was not built for a pneumothorax (collapsed lung), a fracture or a misplaced tube. A low score says nothing about these findings.</p>
        </div>
        <div class="lc-card">
          <h3>Automation bias and alert fatigue</h3>
          <p><strong>Automation bias</strong> means trusting a machine's output too much. It has two forms:</p>
          <ul class="lc-list">
            <li><strong>Missing what the AI missed:</strong> a radiologist looks less closely at an unflagged X-ray, because "the AI said it was normal".</li>
            <li><strong>Accepting a wrong flag:</strong> a radiologist sees a heatmap on a normal shadow, such as a nipple. The radiologist then reports it as abnormal.</li>
          </ul>
          <p><strong>Alert fatigue</strong> is the opposite problem. When there are many false alarms, people start to ignore the flags. In the local test, LungLens gave about 1.2 false alarms for every true flag. On a busy day, that is many flags that turn out normal.</p>
          <p>Tarang's safeguards:</p>
          <ul class="lc-list">
            <li>Look at the whole X-ray and form your own opinion first. Then check the AI score and heatmap.</li>
            <li>Never report an X-ray as normal because the score is low. Read it fully.</li>
            <li>If you disagree with the AI, record it with one click in the disagreement log. This is not a complaint. It is data.</li>
            <li>Do not put the AI score in the patient's report. The report states the radiologist's findings.</li>
            <li>Train new staff on the tool's limits, including the groups it was not built for, such as children.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Second reads, escalation and stop rules</h3>
          <p><strong>Second reads:</strong> each week, a second radiologist re-reads a random sample of 20 unflagged X-rays, plus every case in the disagreement log. This checks for misses that nobody would notice otherwise.</p>
          <p><strong>Escalation</strong> means passing a problem quickly to the right person. Tarang's made-up escalation ladder:</p>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Action</th><th>Who</th></tr></thead>
            <tbody>
              <tr><td>Urgent finding, such as a pneumothorax, whatever the AI score</td><td>Phone the referring doctor at once and record the call</td><td>Duty radiologist</td></tr>
              <tr><td>Possible TB on the report</td><td>Report advises a confirmatory test. OPD nurse calls the patient back the same day.</td><td>Radiologist and OPD nurse</td></tr>
              <tr><td>Tool down or images not scored</td><td>Switch to the normal reading order. Tell IT.</td><td>Duty radiologist</td></tr>
              <tr><td>A pattern of misses or strange flags</td><td>Pause the tool. Inform the vendor and Dr Farida Shaikh.</td><td>Dr Kiran Rao</td></tr>
              <tr><td>Possible harm to a patient</td><td>Report through the hospital incident system. The vendor reports to the regulator as required.</td><td>Quality team</td></tr>
            </tbody>
          </table>
          <p><strong>Stop rules</strong> are limits agreed in advance. Crossing one pauses the tool. Examples (made up): the weekly flagged share goes above 25% or below 15%, or technical failures go above 3%. A sudden change often means drift: a new X-ray machine, a software update or a new patient group.</p>
          <p>You may use an AI assistant to help write incident summaries. Never paste names, IDs or images into a public AI tool. Use only de-identified facts, and check the draft yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: an evening shift with LungLens</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Worklist">At 7 pm, Dr Kiran Rao opens the worklist. Five flagged X-rays sit at the top. Twenty-two unflagged X-rays wait below them.</li>
              <li data-kind="check" data-label="Own opinion first">For the first flagged X-ray, she reads the whole image before she looks at the heatmap. She sees an upper-zone shadow. The heatmap agrees. She advises a sputum test.</li>
              <li data-kind="warn" data-label="Wrong flag">The third flag has a high score. The heatmap sits on a nipple shadow. The lungs are normal. She reports it as normal and logs the disagreement.</li>
              <li data-kind="warn" data-label="Low score, urgent finding">An unflagged X-ray has a score of 8. Reading it fully, she sees a small pneumothorax. She phones the OPD doctor at once and records the call.</li>
              <li data-kind="result" data-label="Tool down">At 9 pm, new X-rays stop getting scores. She switches to the normal reading order and messages IT.</li>
              <li data-kind="user" data-label="Incident note">She asks the hospital's approved AI assistant: "Draft a short incident note. Facts: from 9 pm to 10:15 pm, 11 chest X-rays were not scored. They were read in normal order. No patient names."</li>
              <li data-kind="answer" data-label="Draft">The assistant drafts a five-line note with the time, the effect, the fallback used and the next steps for IT.</li>
              <li data-kind="check" data-label="Before sending">She corrects one time in the draft and adds the count of urgent cases. Then she sends it to Vikram and the IT team.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to write a one-page human oversight plan for an imaging AI tool in your department.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior radiologist and patient safety lead in India.

        Write a one-page human oversight plan for [Tarang Diagnostics]. We use [LungLens], a made-up [chest X-ray AI tool]. It flags "abnormal / possible TB" X-rays and moves them to the top of the worklist for [adult OPD patients aged 18 and over]. We have [3 radiologists] and [8 radiographers].

        Include:
        1. A roles table: radiographer, AI tool, duty radiologist, referring doctor, IT, tool owner, medical superintendent.
        2. Five safeguards against automation bias and alert fatigue, explained in one line each.
        3. A second-read plan: sample size per week and which cases are always re-read.
        4. An escalation table: situation, action, who, how fast.
        5. Four stop rules with made-up limits, and who restarts the tool.

        Rules: a radiologist reads and signs every report. The AI score never appears in the patient report. Use simple English. Mark all numbers as suggestions for our team to decide.</pre>
            <ul class="ai-try-checks">
              <li>Every X-ray is still read and signed by a radiologist, flagged or not.</li>
              <li>Urgent findings are escalated whatever the AI score.</li>
              <li>It covers both automation bias and alert fatigue.</li>
              <li>Each stop rule names a person who can pause and restart the tool.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Human oversight is a system, not a slogan. Write down who reads what, when a case goes up the ladder, and which limits stop the tool. A low AI score never makes an X-ray normal. Only the radiologist's full read does.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Talking to Patients about Imaging AI</h1>
        </div>
        <p class="lc-lead">Patients have a right to know how their scans are handled. Many will ask, "Did a computer read my X-ray?" In this lesson, you will learn to explain imaging AI in simple, honest words. You will learn the basics of notice and consent. You will also learn to keep scan images private under India's DPDP Act 2023 and DPDP Rules 2025. The examples come from Tarang Diagnostics and use made-up patients. This is general education. It is not legal or medical advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="The patient journey with four moments to talk about AI: at registration a written notice, in the X-ray room the radiographer answers questions, the report is signed by a radiologist, and at follow-up the doctor explains the result and next test. Below, a strip shows that images carry personal data: name and ID in the file header, text burned into the image, dates and age, and faces that can be rebuilt from head scans.">
            <defs><marker id="mi14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="166" height="84" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="93" y="46" font-weight="700" fill="#93c5fd">Registration</text>
              <text x="93" y="66" fill="#9b99b8" font-size="11">notice in English,</text>
              <text x="93" y="82" fill="#9b99b8" font-size="11">Hindi and Marathi</text>
              <rect x="204" y="20" width="166" height="84" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="287" y="46" font-weight="700" fill="#67e8f9">X-ray room</text>
              <text x="287" y="66" fill="#9b99b8" font-size="11">radiographer answers</text>
              <text x="287" y="82" fill="#9b99b8" font-size="11">simple questions</text>
              <rect x="398" y="20" width="166" height="84" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="481" y="46" font-weight="700" fill="#6ee7b7">Report</text>
              <text x="481" y="66" fill="#9b99b8" font-size="11">read and signed</text>
              <text x="481" y="82" fill="#9b99b8" font-size="11">by a radiologist</text>
              <rect x="592" y="20" width="158" height="84" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="671" y="46" font-weight="700" fill="#c4b5fd">Follow-up</text>
              <text x="671" y="66" fill="#9b99b8" font-size="11">doctor explains</text>
              <text x="671" y="82" fill="#9b99b8" font-size="11">result, next test</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mi14a)">
                <line x1="177" y1="62" x2="200" y2="62"/>
                <line x1="371" y1="62" x2="394" y2="62"/>
                <line x1="565" y1="62" x2="588" y2="62"/>
              </g>
              <rect x="10" y="140" width="740" height="104" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="164" font-weight="700" fill="#f9a8d4">An image is personal data. What it can carry:</text>
              <rect x="26" y="180" width="168" height="46" rx="8" fill="#1f1f44"/>
              <text x="110" y="200" font-size="11.5">Name and ID</text>
              <text x="110" y="216" fill="#9b99b8" font-size="10.5">in the file header</text>
              <rect x="206" y="180" width="168" height="46" rx="8" fill="#1f1f44"/>
              <text x="290" y="200" font-size="11.5">Burned-in text</text>
              <text x="290" y="216" fill="#9b99b8" font-size="10.5">printed on the image</text>
              <rect x="386" y="180" width="168" height="46" rx="8" fill="#1f1f44"/>
              <text x="470" y="200" font-size="11.5">Dates and age</text>
              <text x="470" y="216" fill="#9b99b8" font-size="10.5">hospital, doctor</text>
              <rect x="566" y="180" width="168" height="46" rx="8" fill="#1f1f44"/>
              <text x="650" y="200" font-size="11.5">Face shape</text>
              <text x="650" y="216" fill="#9b99b8" font-size="10.5">rebuilt from head scans</text>
              <text x="380" y="272" fill="#9b99b8" font-size="11.5">Remove all of these before any image leaves the hospital's approved systems.</text>
            </g>
          </svg>
          <figcaption>Four moments to talk to patients about AI, and the personal data that a scan image can carry.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to tell patients, and when</h3>
          <p>Patients do not need a lecture on AI. They need three honest facts, in words they understand:</p>
          <ul class="lc-list">
            <li>Software helps decide which X-rays the doctor reads first.</li>
            <li>A radiologist (a doctor who specialises in scans) reads every X-ray and signs the report.</li>
            <li>The software does not make the diagnosis or decide the treatment.</li>
          </ul>
          <p><strong>Notice and consent, in general words:</strong> the DPDP Act 2023 treats the hospital as a <strong>data fiduciary</strong> (the one who decides how personal data is used). It must give a clear notice and have a lawful basis to use the data, usually consent. Some uses, such as treatment in a medical emergency, are allowed without consent. The DPDP Rules 2025 bring most duties into force in phases, with most applying from May 2027. Check the current rules with your legal team.</p>
          <p>Does routine clinical use of a licensed AI tool need separate written consent? Ask your hospital's legal and ethics teams. Research is different. Sometimes images are used to test or develop a tool as research. Then the ICMR guidelines expect ethics committee approval. They also expect informed consent or an approved waiver.</p>
          <p><strong>Tarang's made-up approach for the pilot:</strong> a notice at registration and on the hospital website, in English, Hindi and Marathi. The ethics committee reviewed the pilot plan. A patient can ask for their X-ray not to be scored by the tool. It is then read in the normal order.</p>
          <p><strong>A simple script for the radiographer:</strong></p>
          <pre><code>"We use computer software to help sort X-rays, so that ones
        that may need attention are read first. A radiologist, who is a
        doctor, reads every X-ray and signs your report. The software
        does not decide your result. Your images stay in the hospital's
        secure system. If you prefer, we can leave your X-ray out of
        the software. It will then be read in the normal order."</code></pre>
        </div>
        <div class="lc-card">
          <h3>Explaining results without fear or false comfort</h3>
          <p>Mr Suresh Patil (a made-up patient, 46) had an OPD chest X-ray. It was flagged, and the radiologist saw a shadow in the upper lung. The OPD doctor explains the next step:</p>
          <table class="lc-table">
            <thead><tr><th>Avoid saying</th><th>Say instead</th></tr></thead>
            <tbody>
              <tr><td>"The computer found TB."</td><td>"The X-ray shows a shadow. We need a sputum test to find the cause."</td></tr>
              <tr><td>"The AI is 95% sure."</td><td>"The doctor who read your X-ray wants one more test to be sure."</td></tr>
              <tr><td>"The machine said you are fine, so no need to worry."</td><td>"The radiologist read your X-ray and found no problem. Come back if your cough continues."</td></tr>
              <tr><td>"The AI made a mistake with your X-ray."</td><td>"The software marked your X-ray to be read early. The doctor checked it carefully and it is normal."</td></tr>
            </tbody>
          </table>
          <p>Patients often want written information in their own language. An AI assistant can draft a leaflet and a first translation. A fluent speaker on your staff must check the translation. Medical words are easy to get wrong.</p>
          <pre><code>Weak:   Write a leaflet about our AI.

        Better: Write a one-page patient leaflet for adult OPD patients
                at a hospital imaging centre in India. Explain, at the
                reading level of a 12-year-old, that software helps sort
                chest X-rays and a radiologist reads every one. Include:
                what the software does and does not do, how images are
                kept private, how to say no, and whom to ask. No medical
                claims and no accuracy figures. Then translate it into
                Marathi and list 5 words our staff should check.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Keeping images private</h3>
          <p>Medical images are usually stored as <strong>DICOM</strong> files (the standard format for medical images). A DICOM file has a <strong>header</strong> with details such as name, patient ID, date of birth, scan date and hospital. Some X-rays also have the name printed on the image itself. From a head CT or MRI, software can rebuild the shape of a face. So an image is personal data, even without a name tag.</p>
          <ul class="lc-list">
            <li><strong>De-identify</strong> (remove details that link data to a person) before images leave the hospital's approved systems. Clean the header, cover burned-in text, and remove the face from head scans where needed.</li>
            <li><strong>Sign a written agreement</strong> with the vendor. Under the DPDP Act, the vendor is usually a <strong>data processor</strong> (it handles data for the hospital). The agreement should say where images are stored, for how long, and who can see them. It should also say whether they may be used to train models.</li>
            <li><strong>Never paste</strong> patient images, reports or names into a public AI chatbot. Use only tools your hospital has approved.</li>
            <li><strong>Plan for a breach</strong> (data seen or lost by mistake). The rules require informing the Data Protection Board and the affected people. Your IT and legal teams should have a written plan.</li>
            <li><strong>PCPNDT:</strong> never share or record the sex of a foetus in any form, including in AI outputs.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: fine, with safeguards, or never?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort these made-up actions at Tarang Diagnostics.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fine" data-label="Fine to do"></div>
              <div data-sorter-target="bucket" data-bucket="safe" data-label="Only with safeguards"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fine" data-why="This is honest and simple. It tells the patient what the software does and that a doctor decides.">Telling a patient that software sorted the reading list and a radiologist read her X-ray.</li>
              <li data-bucket="safe" data-why="The images must be de-identified, and a written agreement must say how the vendor may use them.">Sending 1,000 past chest X-rays to the vendor for a local test.</li>
              <li data-bucket="never" data-why="Public chatbots are not approved for patient data. Names and reports must never be pasted in.">Pasting a CT report with the patient's name into a free public chatbot.</li>
              <li data-bucket="safe" data-why="Teaching images must have identifiers removed and follow the hospital's permission policy.">Showing an unusual X-ray at a medical conference.</li>
              <li data-bucket="never" data-why="The PCPNDT Act bans telling foetal sex, by any technique, including AI.">Telling a pregnant woman the baby's sex from an ultrasound AI result.</li>
              <li data-bucket="fine" data-why="Patients may ask. An honest answer builds trust: a radiologist decided, with software help.">Answering "Did a computer decide my result?" honestly.</li>
              <li data-bucket="never" data-why="A group chat is not a secure clinical system, and the name makes the patient identifiable.">Posting an X-ray with the name visible in a WhatsApp group of doctors.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to draft a patient notice and answers to common questions. Then have your team check the facts and the translation.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient communication specialist at a hospital in India. You write in very simple, warm English.

        Our imaging centre, [Tarang Diagnostics], uses [LungLens], a made-up [chest X-ray software that sorts X-rays so that ones that may need attention are read first]. It is used for [adult OPD patients]. A radiologist reads and signs every report. Patients can ask for their X-ray not to be scored.

        Write:
        1. A short notice for the registration desk (60 words or fewer).
        2. Answers, of 2 to 3 sentences each, to these questions: "Did a computer read my X-ray?", "Is the software ever wrong?", "Who can see my images?", "Can I say no?", "Will my images be used to train the software?"
        3. A translation of the notice into [Hindi].

        Rules: be honest that software can make mistakes, and say a doctor checks every X-ray. Make no medical claims and give no accuracy figures. Where our policy is not given, write [check hospital policy] instead of guessing.</pre>
            <ul class="ai-try-checks">
              <li>It says a radiologist reads and signs every report.</li>
              <li>It admits the software can be wrong, with no accuracy figures.</li>
              <li>Where the policy is unknown, it writes [check hospital policy] instead of guessing.</li>
              <li>A fluent speaker on your staff checks the translation.</li>
              <li>Your legal team checks the privacy wording before use.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Tell patients the truth in simple words: software helps sort the X-rays, and a doctor reads every one. Treat every image as personal data. Remove identifiers before it leaves your systems, and never paste it into a public AI tool.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Capstone: Evaluating a Chest X-Ray AI Pilot for Tarang Diagnostics</h1>
        </div>
        <p class="lc-lead">In this capstone, you will use everything from this course. Tarang Diagnostics has finished a 4-week live pilot of LungLens on about 2,000 adult OPD chest X-rays. All the data is made up. You will check the numbers, work out the metrics, compare turnaround times, look at subgroups and review the missed cases. Then you will help write a go or no-go report for Dr Farida Shaikh, the medical superintendent. The goal is not to "pass" the tool. The goal is a safe, honest decision.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A dashboard of the made-up LungLens pilot on 2,040 adult OPD chest X-rays. Confusion matrix: 165 true positives, 260 false positives, 19 false negatives and 1,596 true negatives. Sensitivity 89.7 percent, specificity 86.0 percent, PPV 38.8 percent, NPV 98.8 percent. Median turnaround time was 6 hours before the pilot, 1.5 hours for flagged X-rays and 6.5 hours for unflagged X-rays. Warnings: Room 2 sensitivity 80.4 percent and specificity 47.5 percent in patients with past TB. Decision: go with conditions.">
            <defs><marker id="mi15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="14" width="250" height="176" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="135" y="36" font-weight="700" fill="#c4b5fd">2,040 X-rays scored</text>
              <text x="97" y="56" fill="#9b99b8" font-size="10.5">truly abnormal</text>
              <text x="193" y="56" fill="#9b99b8" font-size="10.5">truly normal</text>
              <rect x="50" y="64" width="94" height="52" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="97" y="86" font-weight="700">TP 165</text>
              <text x="97" y="104" fill="#9b99b8" font-size="10.5">flagged</text>
              <rect x="146" y="64" width="94" height="52" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="193" y="86" font-weight="700">FP 260</text>
              <text x="193" y="104" fill="#9b99b8" font-size="10.5">flagged</text>
              <rect x="50" y="120" width="94" height="52" rx="6" fill="#27274e" stroke="#ef4444"/>
              <text x="97" y="142" font-weight="700">FN 19</text>
              <text x="97" y="160" fill="#9b99b8" font-size="10.5">not flagged</text>
              <rect x="146" y="120" width="94" height="52" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="193" y="142" font-weight="700">TN 1,596</text>
              <text x="193" y="160" fill="#9b99b8" font-size="10.5">not flagged</text>
              <text x="30" y="122" fill="#9b99b8" font-size="10.5" transform="rotate(-90 30 118)">AI result</text>
              <rect x="275" y="14" width="230" height="176" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="390" y="36" font-weight="700" fill="#93c5fd">Key measures</text>
              <g text-anchor="start" font-size="12">
                <text x="292" y="66">Sensitivity</text><text x="420" y="66" font-weight="700">89.7%</text>
                <text x="292" y="96">Specificity</text><text x="420" y="96" font-weight="700">86.0%</text>
                <text x="292" y="126">PPV</text><text x="420" y="126" font-weight="700">38.8%</text>
                <text x="292" y="156">NPV</text><text x="420" y="156" font-weight="700">98.8%</text>
              </g>
              <text x="390" y="180" fill="#9b99b8" font-size="10.5">prevalence 184 / 2,040 = 9.0%</text>
              <rect x="520" y="14" width="230" height="176" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="635" y="36" font-weight="700" fill="#67e8f9">Median TAT (hours)</text>
              <g text-anchor="start" font-size="11">
                <text x="532" y="72" fill="#9b99b8">Before</text>
                <text x="532" y="112" fill="#9b99b8">Flagged</text>
                <text x="532" y="152" fill="#9b99b8">Unflagged</text>
              </g>
              <rect x="600" y="60" width="100" height="16" rx="3" fill="#9b99b8"/>
              <rect x="600" y="100" width="25" height="16" rx="3" fill="#10b981"/>
              <rect x="600" y="140" width="108" height="16" rx="3" fill="#f59e0b"/>
              <g text-anchor="start" font-size="11" font-weight="700">
                <text x="706" y="73">6</text>
                <text x="631" y="113">1.5</text>
                <text x="714" y="153">6.5</text>
              </g>
              <text x="635" y="180" fill="#9b99b8" font-size="10.5">before = 4 weeks before pilot</text>
              <rect x="10" y="206" width="370" height="76" rx="10" fill="#27274e" stroke="#ef4444"/>
              <text x="195" y="230" font-weight="700" fill="#fca5a5">Subgroup warnings</text>
              <text x="195" y="250" font-size="11.5">Room 2 (older CR): sensitivity 80.4%</text>
              <text x="195" y="268" font-size="11.5">Past TB: specificity 47.5%</text>
              <rect x="395" y="206" width="355" height="76" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="572" y="230" font-weight="700" fill="#6ee7b7">Decision: GO WITH CONDITIONS</text>
              <text x="572" y="250" font-size="11.5">Room 1 only, past-TB note, night check,</text>
              <text x="572" y="268" font-size="11.5">weekly checks, review at 3 months</text>
              <text x="380" y="308" fill="#9b99b8" font-size="11.5">All data made up. A radiologist read and signed every X-ray during the pilot.</text>
            </g>
          </svg>
          <figcaption>A one-screen summary of the made-up LungLens pilot at Tarang Diagnostics.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: the pilot and its data</h3>
          <p>The pilot ran for 4 weeks (24 working days) on adult (18+) OPD chest X-rays. They came from Room 1 (DR, direct digital) and Room 2 (CR, older cassette-based digital). The duty radiologist read and signed every X-ray. For the reference standard, a second radiologist re-read every X-ray without seeing the AI result. Sputum test results were added where available. Dr Kiran Rao settled disagreements.</p>
          <table class="lc-table">
            <thead><tr><th>Patient flow (made up)</th><th>Number</th></tr></thead>
            <tbody>
              <tr><td>OPD chest X-rays taken in 4 weeks</td><td>2,168</td></tr>
              <tr><td>Under 18, blocked by the age filter (read as usual)</td><td>104</td></tr>
              <tr><td>Sent to LungLens</td><td>2,064</td></tr>
              <tr><td>Technical failures: the tool could not score the image (read as usual)</td><td>24 (24 / 2,064 = 1.2%)</td></tr>
              <tr><td><strong>Scored and analysed</strong></td><td><strong>2,040</strong> (about 85 a day)</td></tr>
            </tbody>
          </table>
          <p><strong>Always check that the numbers add up first:</strong> 2,168 − 104 = 2,064. Then 2,064 − 24 = 2,040.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Reference: abnormal (184)</th><th>Reference: normal (1,856)</th><th>Total</th></tr></thead>
            <tbody>
              <tr><td>LungLens flags abnormal</td><td>TP = 165</td><td>FP = 260</td><td>425</td></tr>
              <tr><td>LungLens says normal</td><td>FN = 19</td><td>TN = 1,596</td><td>1,615</td></tr>
            </tbody>
          </table>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Working</th><th>Pilot</th><th>Earlier local test (1,000 past X-rays)</th></tr></thead>
            <tbody>
              <tr><td>Prevalence</td><td>184 / 2,040</td><td>9.0%</td><td>10%</td></tr>
              <tr><td>Sensitivity</td><td>165 / 184</td><td>89.7% (95% CI 84.4 to 93.3%)</td><td>92%</td></tr>
              <tr><td>Specificity</td><td>1,596 / 1,856</td><td>86.0% (95% CI 84.3 to 87.5%)</td><td>88%</td></tr>
              <tr><td>PPV</td><td>165 / 425</td><td>38.8%</td><td>46%</td></tr>
              <tr><td>NPV</td><td>1,596 / 1,615</td><td>98.8%</td><td>99%</td></tr>
              <tr><td>Share flagged</td><td>425 / 2,040</td><td>20.8%</td><td>20%</td></tr>
            </tbody>
          </table>
          <p>The pilot results are a little lower than the local test. That is common when a tool meets real, everyday patients. The 95% CI (confidence interval: the range where the true value probably lies) for sensitivity is 84.4% to 93.3%. It overlaps the local test result. In a spreadsheet, keep TP, FP, FN and TN in cells. Work out each measure with a formula such as <code>=B2/(B2+B4)</code>. Do not type results by hand.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: turnaround times and subgroups</h3>
          <p>TAT (turnaround time) is the time from the X-ray to the signed report. "Before" means the 4 weeks just before the pilot. All figures are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Median TAT</th><th>90th percentile TAT</th></tr></thead>
            <tbody>
              <tr><td>Before: all adult OPD chest X-rays</td><td>6 h</td><td>18 h</td></tr>
              <tr><td>Pilot: all scored X-rays</td><td>5.5 h</td><td>17 h</td></tr>
              <tr><td>Pilot: flagged (425)</td><td>1.5 h</td><td>8 h</td></tr>
              <tr><td>Pilot: flagged, taken in the day</td><td>1 h</td><td>2.5 h</td></tr>
              <tr><td>Pilot: flagged, taken at night</td><td>8 h</td><td>11 h</td></tr>
              <tr><td>Pilot: unflagged (1,615)</td><td>6.5 h</td><td>19 h</td></tr>
            </tbody>
          </table>
          <p>Flagged X-rays were reported 4.5 hours sooner at the median (6 h down to 1.5 h). Unflagged X-rays waited 0.5 hours longer. But flagged X-rays taken at night still waited a median of 8 hours. Before the pilot, night X-rays waited a median of 9 hours. The reason: nobody reads the list at night. The tool cannot fix a staffing gap on its own.</p>
          <table class="lc-table">
            <thead><tr><th>Subgroup</th><th>X-rays</th><th>Sensitivity</th><th>Specificity</th><th>PPV</th></tr></thead>
            <tbody>
              <tr><td>Age 18 to 59</td><td>1,420</td><td>95 / 104 = 91.3%</td><td>1,166 / 1,316 = 88.6%</td><td>38.8%</td></tr>
              <tr><td>Age 60 and over</td><td>620</td><td>70 / 80 = 87.5%</td><td>430 / 540 = 79.6%</td><td>38.9%</td></tr>
              <tr><td>Male</td><td>1,180</td><td>101 / 112 = 90.2%</td><td>918 / 1,068 = 86.0%</td><td>40.2%</td></tr>
              <tr><td>Female</td><td>860</td><td>64 / 72 = 88.9%</td><td>678 / 788 = 86.0%</td><td>36.8%</td></tr>
              <tr><td>Room 1 (DR)</td><td>1,530</td><td>128 / 138 = 92.8%</td><td>1,222 / 1,392 = 87.8%</td><td>43.0%</td></tr>
              <tr><td><strong>Room 2 (CR)</strong></td><td>510</td><td><strong>37 / 46 = 80.4%</strong></td><td>374 / 464 = 80.6%</td><td>29.1%</td></tr>
              <tr><td><strong>Past TB</strong></td><td>160</td><td>35 / 38 = 92.1%</td><td><strong>58 / 122 = 47.5%</strong></td><td>35.4%</td></tr>
              <tr><td>No past TB</td><td>1,880</td><td>130 / 146 = 89.0%</td><td>1,538 / 1,734 = 88.7%</td><td>39.9%</td></tr>
            </tbody>
          </table>
          <p>Each pair of rows adds up to the totals (for example, 95 + 70 = 165 TP). Two groups stand out. In Room 2, sensitivity was 80.4%, below the 85% target. Its 95% CI is wide (66.8% to 89.3%), because there were only 46 abnormal X-rays. It is still a warning. The vendor's data gave no results for CR images. In patients with past TB, old scars caused many false alarms: 99 of 160 X-rays (61.9%) were flagged. Age 60 and over also had lower specificity (79.6%).</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: missed-case review and the go or no-go report</h3>
          <p>Dr Kiran Rao reviewed all 19 false negatives (abnormal X-rays that LungLens did not flag):</p>
          <table class="lc-table">
            <thead><tr><th>Main reason (made up)</th><th>Cases</th></tr></thead>
            <tbody>
              <tr><td>Small or faint shadow in the upper zone</td><td>7</td></tr>
              <tr><td>Room 2 X-ray with poor exposure</td><td>5</td></tr>
              <tr><td>Finding hidden behind the heart, a rib or the collarbone</td><td>4</td></tr>
              <tr><td>Small pleural effusion (fluid around the lung) only</td><td>3</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>19</strong></td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li>The duty radiologist found 16 of the 19 in the first read. Three were found only at the second read.</li>
            <li>In 2 other cases, LungLens flagged a truly abnormal X-ray, but the duty radiologist reported it as normal. This may be alert fatigue.</li>
            <li>So the first reads found 179 of 184 abnormal X-rays (97.3%). The 5 patients whose findings were missed at first were called back and seen within 5 days. None of the 5 had confirmed TB.</li>
            <li>Sputum tests confirmed TB in 41 patients. LungLens flagged 39 of them. The other 2 were found by the duty radiologist.</li>
            <li>Outside the tool's job: 3 patients had a pneumothorax. LungLens flagged only 1. The radiologists found all 3 and phoned the doctors.</li>
          </ul>
          <p><strong>Checking the pre-agreed success criteria:</strong></p>
          <table class="lc-table">
            <thead><tr><th>Criterion</th><th>Result</th><th>Met?</th></tr></thead>
            <tbody>
              <tr><td>Sensitivity at least 85%, CI lower end at least 80%</td><td>89.7%, CI 84.4 to 93.3%</td><td>Yes</td></tr>
              <tr><td>Specificity at least 80%</td><td>86.0%</td><td>Yes</td></tr>
              <tr><td>Sensitivity at least 85% in each main subgroup</td><td>Room 2: 80.4%</td><td>No</td></tr>
              <tr><td>Flagged median TAT 2 h or less</td><td>1.5 h</td><td>Yes (not at night)</td></tr>
              <tr><td>Unflagged median TAT no more than 1 h worse</td><td>0.5 h worse</td><td>Yes</td></tr>
              <tr><td>Technical failures 3% or less</td><td>1.2%</td><td>Yes</td></tr>
              <tr><td>No serious harm linked to the tool</td><td>None found; 5 patients called back</td><td>Yes</td></tr>
            </tbody>
          </table>
          <p><strong>Draft decision: go with conditions.</strong> The recommended conditions:</p>
          <ol class="lc-list">
            <li>Use LungLens only for adult OPD X-rays from Room 1. Stop scoring Room 2 X-rays until the vendor confirms CR support and a new local test passes the same criteria.</li>
            <li>Show a "past TB: many false alarms" note for these patients. Radiologists compare with old X-rays.</li>
            <li>For 4 weeks, test an on-call check of the flagged list at 11 pm and 5 am.</li>
            <li>Keep weekly second reads (20 unflagged X-rays plus every disagreement), the disagreement log and the stop rules.</li>
            <li>Re-test after any software update or new X-ray machine.</li>
            <li>Confirm that the CDSCO licence covers this version and use, and that the data agreement is signed.</li>
            <li>Review all results again at 3 months. Dr Farida Shaikh gives the final approval.</li>
          </ol>
          <p>With Room 1 only, the tool will score about 64 X-rays a day. About 12 will be flagged, and about 7 of those will be false alarms. <strong>Limits of this pilot:</strong> one centre, 4 weeks, small subgroups, and a reference standard that is good but not perfect. State these limits in the report.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the pilot review meeting</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">Vikram opens the pilot spreadsheet. It has one row per X-ray, with no names: study number, age group, room, past TB, AI flag, reference result and TAT.</li>
              <li data-kind="check" data-label="Totals first">Dr Kiran Rao checks the totals: 165 + 260 + 19 + 1,596 = 2,040. Each subgroup pair also adds up to the totals.</li>
              <li data-kind="user" data-label="Ask the AI">Vikram pastes only the summary tables into the hospital's approved AI assistant: "Draft a go or no-go report from these made-up pilot results. Show every calculation."</li>
              <li data-kind="answer" data-label="Draft">The assistant drafts a clear report with a summary, a results table, subgroup findings and a list of conditions.</li>
              <li data-kind="warn" data-label="Wrong number">The draft says "PPV 89.7%". That is the sensitivity. The PPV is 165 / 425 = 38.8%. Dr Kiran Rao corrects it.</li>
              <li data-kind="warn" data-label="Too positive">The draft says "LungLens performs well in all groups". This hides Room 2 and the past-TB false alarms. She rewrites that part.</li>
              <li data-kind="check" data-label="Clinical view">She adds the 5 call-backs and the night TAT problem. She states that the tool never diagnoses TB.</li>
              <li data-kind="result" data-label="Decision">Dr Farida Shaikh approves "go with conditions" for Room 1, with a review at 3 months.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste the made-up pilot summary into an AI assistant and ask for a go or no-go report. Then check every number yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a radiologist and quality lead in India. Write a 1-page go or no-go report for [Dr Farida Shaikh, medical superintendent].

        Made-up 4-week live pilot of [LungLens], a chest X-ray AI triage tool, at [Tarang Diagnostics]. Adult OPD X-rays. A radiologist read and signed every X-ray.
        Flow: 2,168 taken; 104 under 18 excluded; 24 failed to score; 2,040 analysed.
        Results: TP 165, FP 260, FN 19, TN 1,596.
        Median TAT: before 6 h; flagged 1.5 h (night 8 h); unflagged 6.5 h.
        Room 2 (CR): TP 37, FN 9, TN 374, FP 90.
        Past TB: TP 35, FN 3, TN 58, FP 64.
        Missed cases: 19; 16 found by the first read; 5 patients called back; no harm found.
        Targets: sensitivity 85%+ overall and per subgroup; specificity 80%+; flagged TAT 2 h or less; failures 3% or less.

        Include: a summary, a table of measures with every calculation shown, each target met or not, subgroup concerns, limits of the pilot, and a decision with 5 to 7 conditions. Use simple English. The AI never diagnoses.</pre>
            <ul class="ai-try-checks">
              <li>Sensitivity is 165 / 184 = 89.7%, specificity 1,596 / 1,856 = 86.0% and PPV 165 / 425 = 38.8%.</li>
              <li>Room 2 sensitivity is 37 / 46 = 80.4%, below the target.</li>
              <li>It does not say the tool works well "in all groups".</li>
              <li>It keeps a radiologist reading and signing every X-ray.</li>
              <li>It lists the limits: one centre, 4 weeks and small subgroups.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good pilot report does not just say "it works". It shows every number and compares results with targets set in advance. It names the groups where the tool is weaker. It turns each weakness into a clear condition. The radiologist stays in charge of every report.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

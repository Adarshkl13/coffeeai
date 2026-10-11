module AiMedicalResearchContent
  # Units (sidebar dividers): 1–4 Research Basics · 5–9 Finding and Reading Evidence · 10–14 Analysing and Writing · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">How Medical Research Works</h1>
        </div>
        <p class="lc-lead">Before you use AI for research, you need to know what kind of research you are reading. A single case report and a large randomised trial are both "studies", but they do not carry the same weight. In this lesson you will learn the main study types, the evidence pyramid, how peer review works, and what a preprint is. These ideas help you judge any paper, and any AI summary of a paper. All people, hospitals and studies in this course are made up. This course is education, not medical advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 380" role="img" aria-label="Left: the evidence pyramid for treatment questions, with seven layers from expert opinion at the bottom to systematic reviews at the top. Right: how a paper is published, from protocol to preprint, peer review, published paper, and later corrections or retraction.">
            <defs><marker id="mr1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="270" y="22" font-weight="700">Evidence pyramid (treatment questions)</text>
              <rect x="160" y="40" width="220" height="36" rx="6" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="270" y="63">Systematic reviews</text>
              <rect x="135" y="84" width="270" height="36" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="270" y="107">Randomised controlled trials</text>
              <rect x="110" y="128" width="320" height="36" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="270" y="151">Cohort studies</text>
              <rect x="95" y="172" width="350" height="36" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="270" y="195">Case-control studies</text>
              <rect x="80" y="216" width="380" height="36" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="270" y="239">Cross-sectional studies</text>
              <rect x="65" y="260" width="410" height="36" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="270" y="283">Case series and case reports</text>
              <rect x="50" y="304" width="440" height="36" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="270" y="327">Expert opinion, lab and animal studies</text>
              <line x1="25" y1="336" x2="25" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr1a)"/>
              <text x="25" y="360" font-size="11" fill="#9b99b8">weaker</text>
              <text x="25" y="36" font-size="11" fill="#9b99b8">stronger</text>
              <text x="635" y="22" font-weight="700">How a paper is published</text>
              <rect x="530" y="40" width="210" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="635" y="65">Plan and run the study</text>
              <rect x="530" y="104" width="210" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="635" y="129" font-size="12">Preprint (not yet reviewed)</text>
              <rect x="530" y="168" width="210" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="635" y="193">Peer review</text>
              <rect x="530" y="232" width="210" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="635" y="257">Published paper</text>
              <rect x="530" y="296" width="210" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="635" y="321" font-size="12">Correction or retraction</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr1a)">
                <line x1="635" y1="80" x2="635" y2="100"/>
                <line x1="635" y1="144" x2="635" y2="164"/>
                <line x1="635" y1="208" x2="635" y2="228"/>
                <line x1="635" y1="272" x2="635" y2="292"/>
              </g>
              <text x="635" y="360" font-size="11" fill="#9b99b8">papers can change later</text>
            </g>
          </svg>
          <figcaption>The pyramid is a rough guide to how much a study design can be trusted. The path on the right shows that a paper is checked, published and can later be corrected.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main study types</h3>
          <p>Studies fall into two big groups. In an <strong>experimental</strong> study, the researcher decides who gets the treatment. In an <strong>observational</strong> study, the researcher only watches what happens. The table uses one made-up topic: text message reminders for adults with type 2 diabetes.</p>
          <table class="lc-table">
            <thead><tr><th>Study type</th><th>What it does</th><th>Made-up example</th><th>Main weakness</th></tr></thead>
            <tbody>
              <tr><td><strong>Case report or case series</strong></td><td>Describes one patient, or a few patients</td><td>A doctor describes 5 patients whose sugar improved after SMS reminders</td><td>No comparison group, so we cannot say the SMS caused it</td></tr>
              <tr><td><strong>Cross-sectional study</strong></td><td>Looks at a group at one point in time</td><td>A survey of 300 OPD patients: do SMS users have lower HbA1c today?</td><td>Cannot show what came first</td></tr>
              <tr><td><strong>Case-control study</strong></td><td>Starts with people who have an outcome and people who do not, then looks back</td><td>Patients with poor control compared with well-controlled patients: who used reminders?</td><td>Depends on memory and old records</td></tr>
              <tr><td><strong>Cohort study</strong></td><td>Follows a group forward in time</td><td>1,000 patients followed for 2 years; SMS users compared with non-users</td><td>Confounding (a third factor, such as motivation, that affects both)</td></tr>
              <tr><td><strong>RCT (randomised controlled trial)</strong></td><td>Chance decides who gets the treatment and who gets usual care</td><td>400 patients randomly split: SMS programme or usual care for 12 months</td><td>Costly, and trial patients may differ from your patients</td></tr>
              <tr><td><strong>Systematic review and meta-analysis</strong></td><td>Finds and appraises all studies on one question; a meta-analysis also combines their numbers</td><td>A review of every RCT on SMS reminders and HbA1c</td><td>Only as good as the studies it includes</td></tr>
            </tbody>
          </table>
          <p>HbA1c (glycated haemoglobin) is a blood test. It shows the average blood sugar over about the last 2 to 3 months.</p>
        </div>
        <div class="lc-card">
          <h3>Using the evidence pyramid wisely</h3>
          <p>The pyramid ranks designs by how well they protect against bias (a systematic error that pushes results one way). Randomisation is powerful because it balances known and unknown factors between the groups.</p>
          <ul class="lc-list">
            <li><strong>The pyramid is for treatment questions.</strong> For "how common is diabetes in our district?", a good cross-sectional survey is the right design. For rare harms, cohort and case-control studies are often the best we have.</li>
            <li><strong>Quality matters inside each layer.</strong> A careful cohort study can be more useful than a small, badly run RCT.</li>
            <li><strong>A review is not magic.</strong> A systematic review of weak studies still gives weak evidence.</li>
            <li><strong>One study is rarely the final answer.</strong> Look for several studies that point the same way.</li>
          </ul>
          <p>Many systematic reviews now grade the <em>certainty</em> of the evidence, for example with the GRADE approach. You will meet this idea again later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Peer review, preprints and changes after publication</h3>
          <p><strong>Peer review</strong> means other experts read a paper before a journal publishes it. They look for unclear methods, weak analysis and claims that go beyond the data. Peer review helps, but it is not a guarantee. Reviewers usually do not see the raw data, and they can miss errors.</p>
          <p>A <strong>preprint</strong> is a paper posted online before peer review. Servers such as medRxiv host health preprints. Preprints share results quickly, but their conclusions may change. PubMed lists some preprints, marks them as preprints, and has a filter to exclude them.</p>
          <p>A published paper can later get a <strong>correction</strong> (an error is fixed) or a <strong>retraction</strong> (the paper is withdrawn because it cannot be trusted). Always check the paper's current status before you rely on it. A later lesson shows how.</p>
          <p><strong>Where AI fits:</strong> AI can explain a study design in plain words. But AI may name the design wrongly, or call a preprint "published". Always confirm the design in the paper's Methods section, and confirm the status on the journal or database page.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: name the study design</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Dr Neha Kulkarni, a junior resident at the made-up Tarang Multispeciality Hospital, found these made-up study descriptions. Sort each one by its design.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="rct" data-label="Randomised trial"></div>
              <div data-sorter-target="bucket" data-bucket="cohort" data-label="Cohort study"></div>
              <div data-sorter-target="bucket" data-bucket="cc" data-label="Case-control study"></div>
              <div data-sorter-target="bucket" data-bucket="sr" data-label="Systematic review"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="rct" data-why="A computer decided who got the messages. Random allocation by the researcher makes it an RCT.">A computer program put 240 patients into a WhatsApp group or usual care</li>
              <li data-bucket="cohort" data-why="The researchers did not choose who used the app. They followed users and non-users forward in time.">Clinic records followed 800 patients for 2 years, comparing app users with non-users</li>
              <li data-bucket="cc" data-why="It starts from the outcome (admitted or not) and looks back at past exposure.">Patients admitted with very high sugar were compared with matched patients who were not, looking back at their SMS use</li>
              <li data-bucket="sr" data-why="It searched several databases with a set method and appraised every trial it found.">Authors searched three databases, screened 900 records and appraised 11 trials</li>
              <li data-bucket="rct" data-why="Whole centres were randomised instead of single patients. This is a cluster randomised trial.">Twenty health centres were randomly chosen to send SMS reminders or not</li>
              <li data-bucket="cohort" data-why="It follows one group forward from a starting point. No one was randomised.">A group of newly diagnosed patients was followed from diagnosis to see who developed eye disease</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a made-up abstract and ask AI to name the design, place it on the pyramid, and list what to check in the full paper.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a research methods tutor for [junior doctors in India]. The abstract below is made up for training. It is not a real paper.

        Abstract (Study A, made-up): "We enrolled 400 adults with type 2 diabetes from 6 urban clinics in [western India]. A computer program allocated them to daily SMS medicine reminders plus weekly education messages, or to usual care. After 12 months, mean HbA1c fell by 0.8 percentage points in the SMS group and by 0.3 in the usual care group. Laboratory staff did not know the groups."

        Tasks:
        1. Name the study design and explain in 2 sentences how you know.
        2. Say where it sits on the evidence pyramid, and one reason a design like this can still be weak.
        3. List 5 things I must check in the full paper before I trust the result.
        4. Say if anything important is missing from this abstract.

        Use simple English and short sentences. Do not cite any real papers.</pre>
            <ul class="ai-try-checks">
              <li>It names the design as a randomised controlled trial because a computer allocated the groups.</li>
              <li>It works out the difference correctly: 0.8 minus 0.3 is 0.5 percentage points.</li>
              <li>Its checklist includes dropouts, how allocation was hidden, and a confidence interval.</li>
              <li>It does not invent real references or claim this is a real study.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The study design tells you how much a result can be trusted before you even read the numbers. Check the design, check whether the paper was peer reviewed, and check whether it has been corrected or retracted. AI can explain these ideas, but the paper itself is your source of truth.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Where AI Helps in Research</h1>
        </div>
        <p class="lc-lead">AI can save you hours in research. It can help you shape a question, suggest search terms, sort abstracts, draft summary tables and polish your English. It can also invent references that do not exist and change numbers without telling you. In this lesson you will learn where AI helps at each step of a research project, the main risks, and the checks that stay your job. The researcher, not the AI, is responsible for every word and every number.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Six research steps in a row: question, search, screen, summarise, analyse and write. Under each step, one way AI helps and one thing you must check. A band at the bottom lists the main risks: fake references, wrong numbers, missed studies and privacy leaks.">
            <defs><marker id="mr2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="12" fill="#9b99b8">green: how AI can help · amber: what you must check</text>
              <rect x="10" y="44" width="110" height="44" rx="8" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="65" y="71" font-weight="700">Question</text>
              <rect x="136" y="44" width="110" height="44" rx="8" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="191" y="71" font-weight="700">Search</text>
              <rect x="262" y="44" width="110" height="44" rx="8" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="317" y="71" font-weight="700">Screen</text>
              <rect x="388" y="44" width="110" height="44" rx="8" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="443" y="71" font-weight="700">Summarise</text>
              <rect x="514" y="44" width="110" height="44" rx="8" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="569" y="71" font-weight="700">Analyse</text>
              <rect x="640" y="44" width="110" height="44" rx="8" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="695" y="71" font-weight="700">Write</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr2a)">
                <line x1="120" y1="66" x2="133" y2="66"/>
                <line x1="246" y1="66" x2="259" y2="66"/>
                <line x1="372" y1="66" x2="385" y2="66"/>
                <line x1="498" y1="66" x2="511" y2="66"/>
                <line x1="624" y1="66" x2="637" y2="66"/>
              </g>
              <g font-size="11">
                <rect x="10" y="104" width="110" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="65" y="130">sharpen PICO</text>
                <rect x="136" y="104" width="110" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="191" y="130">suggest terms</text>
                <rect x="262" y="104" width="110" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="317" y="130">sort abstracts</text>
                <rect x="388" y="104" width="110" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="443" y="130">draft tables</text>
                <rect x="514" y="104" width="110" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="569" y="130">explain methods</text>
                <rect x="640" y="104" width="110" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="695" y="130">fix language</text>
                <rect x="10" y="160" width="110" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="65" y="186">is it feasible?</text>
                <rect x="136" y="160" width="110" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="191" y="186">run it yourself</text>
                <rect x="262" y="160" width="110" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="317" y="186">human reviewers</text>
                <rect x="388" y="160" width="110" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="443" y="186">numbers vs paper</text>
                <rect x="514" y="160" width="110" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="569" y="186">stats expert</text>
                <rect x="640" y="160" width="110" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="695" y="186">every reference</text>
              </g>
              <rect x="10" y="226" width="740" height="64" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="380" y="252" font-weight="700" fill="#fca5a5">Main risks at every step</text>
              <text x="380" y="276">Fake references · Wrong numbers · Missed studies · Privacy leaks</text>
            </g>
          </svg>
          <figcaption>AI can help at every step of a research project. At every step, a person still checks the work.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI does well, and what can go wrong</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>How AI helps</th><th>Main risk</th><th>Your check</th></tr></thead>
            <tbody>
              <tr><td><strong>Framing the question</strong></td><td>Turns a vague idea into a PICO question and suggests outcomes</td><td>Suggests outcomes that are hard to measure in your setting</td><td>Discuss it with your guide</td></tr>
              <tr><td><strong>Searching</strong></td><td>Lists synonyms and suggests MeSH terms and a search string</td><td>Suggests a MeSH term that does not exist</td><td>Check terms in the MeSH database and run the search yourself</td></tr>
              <tr><td><strong>Screening</strong></td><td>Sorts titles and abstracts against your criteria and gives reasons</td><td>Drops a relevant study</td><td>Two people screen; AI is at most an extra helper</td></tr>
              <tr><td><strong>Summarising</strong></td><td>Pulls design, sample size and results into a table</td><td>Copies a number wrongly, or mixes up the groups</td><td>Check every number against the paper</td></tr>
              <tr><td><strong>Statistics</strong></td><td>Explains a p-value or a confidence interval in plain words</td><td>Confident but wrong explanations</td><td>Ask a statistician for anything you will publish</td></tr>
              <tr><td><strong>Writing</strong></td><td>Improves grammar, structure and clarity</td><td>Adds claims or references you never checked</td><td>Read every sentence, and disclose AI use as the journal asks</td></tr>
            </tbody>
          </table>
          <p>Screening means reading titles and abstracts to decide which studies fit your question. You will learn each of these tasks in detail later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Why AI invents references</h3>
          <p>A general AI chatbot writes text by predicting likely words. A reference is just text to it. So it can produce author names, a title, a journal and page numbers that all look right, for a paper that does not exist. This is called a <em>fabricated</em> or <em>hallucinated</em> reference.</p>
          <p>Some AI research tools search a real database first and then answer. They give links to real papers, which is safer. But they can still miss papers, misread results or summarise the wrong study. Features change often, so check each tool's current help pages.</p>
          <p>Compare these two prompts. The first invites made-up references. The second keeps the AI working only on text you gave it.</p>
          <pre><code>Weak prompt:
        Give me 10 references showing that SMS reminders lower HbA1c.

        Better prompt:
        Below are 3 abstracts I copied from PubMed, each with its PMID.
        Make a table: PMID | design | country | sample size | HbA1c result.
        Use only the text I pasted. If a detail is missing, write
        "not reported". Do not add any other studies or references.</code></pre>
          <p>A PMID is the unique number PubMed gives each record. Even with the better prompt, you still check each row against the abstract.</p>
        </div>
        <div class="lc-card">
          <h3>Your responsibility as the researcher</h3>
          <ul class="lc-list">
            <li><strong>You own the work.</strong> Journal rules, such as those of the ICMJE (International Committee of Medical Journal Editors), do not allow AI tools to be authors. The named authors answer for every claim.</li>
            <li><strong>Check every reference yourself.</strong> Open it in PubMed or on the journal site. Read at least the abstract.</li>
            <li><strong>Check every number.</strong> Compare each number in an AI summary with the paper.</li>
            <li><strong>Protect patient data.</strong> Never paste names, hospital IDs, phone numbers or ABHA numbers into a public AI tool. Use only tools your hospital has approved.</li>
            <li><strong>Keep a record.</strong> Note which tool you used, when, and for what. Journals may ask you to disclose it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: catch a fake reference</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha asks">Dr Neha Kulkarni at the made-up Tarang Multispeciality Hospital asks a chatbot: "Give me 5 Indian studies on SMS reminders and HbA1c, with references."</li>
              <li data-kind="answer" data-label="AI replies">The AI lists 5 neat references with authors, titles, journals, years and page numbers. One reads: "Kale R, Deshmukh P. SMS reminders and HbA1c in Maharashtra. J West India Diabetes Pract. 2021." (This reference is made up for this lesson.)</li>
              <li data-kind="tool" data-label="PubMed">Neha pastes the exact title into PubMed, then searches the author names with the topic.</li>
              <li data-kind="result" data-label="No match">PubMed finds no such paper. She also cannot find the journal in the NLM Catalog or on Google Scholar.</li>
              <li data-kind="warn" data-label="Fabricated">The reference is fabricated. Two more of the five also do not exist. The other two are real, but one is about type 1 diabetes, not type 2.</li>
              <li data-kind="check" data-label="New rule">Neha decides: every study must come from her own database search. AI may only work on abstracts she pastes in, and she checks each PMID.</li>
              <li data-kind="user" data-label="Better prompt">She runs her own PubMed search, pastes 3 abstracts with their PMIDs, and asks AI for a summary table using only that text.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan how it can help with a small evidence review, including a check for every step. The prompt tells it not to give any references.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful research mentor for [a junior resident at a 200-bed hospital in India].

        My planned mini evidence review: "In adults with type 2 diabetes, do text or WhatsApp reminder programmes lower HbA1c compared with usual care?" I have [8 weeks], free access to PubMed and Google Scholar, and a hospital-approved AI assistant.

        Make a table with these columns: Step | How AI can help | Main risk | How I will check it | Who must be involved.
        Use these steps: framing the question, searching, screening, summarising studies, judging study quality, writing the report.

        Rules:
        - Do not give me any references, study names or PMIDs.
        - Say clearly which steps need two human reviewers.
        - Add a short list of data I must never paste into a public AI tool.
        - Use simple English and short sentences.</pre>
            <ul class="ai-try-checks">
              <li>It gives no references, study names or PMIDs.</li>
              <li>It says screening should be done by two people, not by AI alone.</li>
              <li>It says every number must be checked against the original paper.</li>
              <li>Its privacy list includes names, hospital IDs, phone numbers and ABHA numbers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to work faster on text you already trust, not to find facts you have not checked. Every reference must come from a real database search, and every number must match the paper. The researcher signs the work, so the researcher checks it.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Asking a Good Research Question</h1>
        </div>
        <p class="lc-lead">A vague question gives a vague search and a vague answer. A clear question tells you which studies to look for, which to leave out, and which result matters. In this lesson you will learn to write a question with PICO, check that it is feasible, and use AI to sharpen it. You will follow Dr Neha Kulkarni, a junior resident at the made-up Tarang Multispeciality Hospital, and her guide Dr Farida Shaikh.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Before and after. A vague question, do phone reminders help our diabetes patients, is broken into four PICO boxes: population, intervention, comparison and outcome. These build a focused question. A strip at the bottom lists the FINER checks: feasible, interesting, novel, ethical, relevant.">
            <defs><marker id="mr3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="95" y="30" font-weight="700" fill="#fca5a5">Vague idea</text>
              <rect x="10" y="44" width="170" height="150" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="95" y="92" font-size="12">Do phone</text>
              <text x="95" y="112" font-size="12">reminders help</text>
              <text x="95" y="132" font-size="12">our diabetes</text>
              <text x="95" y="152" font-size="12">patients?</text>
              <text x="380" y="30" font-weight="700">PICO</text>
              <rect x="220" y="44" width="155" height="70" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="297" y="72" font-weight="700">P: Adults, T2DM</text>
              <text x="297" y="94" font-size="11" fill="#9b99b8">HbA1c 7.5% or more</text>
              <rect x="385" y="44" width="155" height="70" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="462" y="72" font-weight="700">I: SMS or WhatsApp</text>
              <text x="462" y="94" font-size="11" fill="#9b99b8">3 months or more</text>
              <rect x="220" y="124" width="155" height="70" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="297" y="152" font-weight="700">C: Usual care</text>
              <text x="297" y="174" font-size="11" fill="#9b99b8">normal clinic visits</text>
              <rect x="385" y="124" width="155" height="70" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="462" y="152" font-weight="700">O: HbA1c change</text>
              <text x="462" y="174" font-size="11" fill="#9b99b8">at 6 months or later</text>
              <text x="665" y="30" font-weight="700" fill="#6ee7b7">Focused question</text>
              <rect x="580" y="44" width="170" height="150" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="665" y="80" font-size="12">In adults with T2DM,</text>
              <text x="665" y="100" font-size="12">do SMS or WhatsApp</text>
              <text x="665" y="120" font-size="12">reminders lower</text>
              <text x="665" y="140" font-size="12">HbA1c at 6 months,</text>
              <text x="665" y="160" font-size="12">vs usual care?</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr3a)">
                <line x1="182" y1="119" x2="214" y2="119"/>
                <line x1="542" y1="119" x2="574" y2="119"/>
              </g>
              <rect x="10" y="222" width="740" height="56" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="245" font-weight="700">Then check it is FINER</text>
              <text x="380" y="266" font-size="12" fill="#9b99b8">Feasible · Interesting · Novel · Ethical · Relevant</text>
            </g>
          </svg>
          <figcaption>PICO turns a vague idea into a focused question. The FINER checks tell you whether the question is worth doing and possible to do.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>PICO: four parts of a clear question</h3>
          <p>PICO is a simple way to write a question about a treatment or a service. T2DM means type 2 diabetes mellitus.</p>
          <table class="lc-table">
            <thead><tr><th>Letter</th><th>Means</th><th>Vague</th><th>Neha's focused version (made-up story)</th></tr></thead>
            <tbody>
              <tr><td><strong>P</strong></td><td>Population: who the patients are</td><td>"our diabetes patients"</td><td>Adults aged 18 or older with T2DM, treated as outpatients, HbA1c 7.5% or higher</td></tr>
              <tr><td><strong>I</strong></td><td>Intervention: what is done</td><td>"phone reminders"</td><td>A structured SMS or WhatsApp programme: medicine reminders, diet tips and visit reminders, for 3 months or more</td></tr>
              <tr><td><strong>C</strong></td><td>Comparison: what it is compared with</td><td>(missing)</td><td>Usual care: normal clinic visits, no message programme</td></tr>
              <tr><td><strong>O</strong></td><td>Outcome: what result matters</td><td>"help"</td><td>Main: change in HbA1c at 6 months or later. Also: medicine adherence, missed visits, low-sugar episodes</td></tr>
            </tbody>
          </table>
          <p>Neha's final question: <em>"In adults with type 2 diabetes, do text or WhatsApp reminder programmes lower HbA1c at 6 months or more, compared with usual care?"</em></p>
          <p>Useful variants: <strong>PICOT</strong> adds T for time (the follow-up period). <strong>PICOS</strong> adds S for study design, such as "randomised trials only". <strong>PECO</strong> uses E for exposure, for questions about risks such as smoking, where you cannot assign the exposure.</p>
        </div>
        <div class="lc-card">
          <h3>Is the question feasible? The FINER checks</h3>
          <p>A good question must also be one you can answer. Many researchers use the FINER checklist.</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Question to ask</th><th>Neha's answer (made-up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Feasible</strong></td><td>Do I have the time, patients, skills and money?</td><td>A literature review: yes, in 8 weeks. A local trial: needs 12 months, a statistician and funding</td></tr>
              <tr><td><strong>Interesting</strong></td><td>Do my guide and hospital care about the answer?</td><td>Yes. The diabetes OPD sees many patients with high HbA1c</td></tr>
              <tr><td><strong>Novel</strong></td><td>Does it add something new?</td><td>Trials exist, but few use WhatsApp or Marathi messages</td></tr>
              <tr><td><strong>Ethical</strong></td><td>Can it be done safely, with approval and consent?</td><td>A review uses published data. A local study needs ethics committee approval</td></tr>
              <tr><td><strong>Relevant</strong></td><td>Will the answer change practice or policy?</td><td>It could decide whether Tarang starts a message programme</td></tr>
            </tbody>
          </table>
          <p>Some decisions stay with you and your guide. For example: how big an HbA1c drop is worth the cost? Many diabetes studies treat a difference of about 0.3 to 0.5 percentage points as meaningful. Agree your own figure with your guide and a statistician before you start.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to sharpen your question</h3>
          <p>AI is good at asking the questions a good mentor would ask. Give it your idea and your setting, and ask it to question you. Do not ask it for the answer.</p>
          <pre><code>Weak prompt:
        Write a research question about WhatsApp and diabetes.

        Better prompt:
        I am a resident at a 200-bed hospital in Maharashtra. My vague idea:
        "Do phone reminders help our diabetes patients?"
        1. Write it as a PICO question.
        2. Give 3 sharper versions, from narrow to broad.
        3. For each, list what I would need to measure and how long it takes.
        4. Ask me 5 questions to make it clearer.
        Do not cite studies. Do not say what the answer is.</code></pre>
          <p>Then take the AI's versions to your guide. You decide which outcomes can really be measured in your hospital, and which question is worth answering.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Neha sharpens her question</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="First try">Neha types her vague idea into the hospital-approved AI assistant and asks for a PICO question, 3 sharper versions and 5 questions for her.</li>
              <li data-kind="answer" data-label="AI draft">The AI suggests: P = adults with T2DM; I = SMS reminders; C = usual care; O = "diabetes control". It asks: which messages, how long, and which outcome?</li>
              <li data-kind="thought" data-label="Neha thinks">"Diabetes control" is too vague to measure. Her OPD checks HbA1c every 3 months, so HbA1c is a good main outcome.</li>
              <li data-kind="warn" data-label="Problem">One AI version uses "reduction in diabetes complications at 1 year" as the outcome. Complications take years to appear, so this is not feasible for her.</li>
              <li data-kind="check" data-label="Guide meeting">Dr Farida Shaikh asks her to add WhatsApp, because many patients use it. She also asks for a minimum follow-up of 6 months.</li>
              <li data-kind="result" data-label="Final PICO">P: adults with T2DM and HbA1c 7.5% or more. I: SMS or WhatsApp programme. C: usual care. O: HbA1c change at 6 months or later.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a vague idea from your own work and ask it to build a PICO question, check feasibility and question you.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced research mentor for [doctors and nurses at a hospital in India].

        My vague research idea: "[Do phone reminders help our diabetes patients?]"
        My setting: [a 200-bed hospital in Maharashtra with a busy diabetes OPD]. Time available: [8 weeks for a literature review]. Research experience: [beginner].

        Please:
        1. Write the idea as a PICO question (Population, Intervention, Comparison, Outcome). Mark any part I have not given you as "needs your input".
        2. Give 3 sharper versions, from narrow to broad, each in one sentence.
        3. Check each version against FINER (Feasible, Interesting, Novel, Ethical, Relevant) in a short table.
        4. Say which outcome can be measured with data a normal hospital already collects.
        5. Ask me 5 questions that would make the question clearer.

        Do not cite any studies or say what the answer is likely to be. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>All four PICO parts are specific, and gaps are marked "needs your input".</li>
              <li>The outcomes can be measured in your setting within your time.</li>
              <li>The FINER table is honest about time, data and ethics approval.</li>
              <li>It does not cite studies or guess the answer.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Most research problems start with an unclear question. Write it as PICO, check it is FINER, and agree it with your guide before you search. AI is a useful helper for sharpening a question, but you and your guide decide which question is worth answering.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Research Ethics and AI</h1>
        </div>
        <p class="lc-lead">Research with patients must protect those patients. AI adds new questions: can you paste study data into a chatbot, must you tell patients about AI, and can AI be an author? In this lesson you will learn the basic ethics steps for a study in India. You will also learn what the ICMR guidelines on AI say, how to protect patient data, and what journals expect when you use AI. This is general education, not legal advice. Always follow your institution's ethics committee.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Six steps of a local study in a row: protocol, ethics review, trial registration, consent, collect de-identified data, and publish with AI disclosure. Below, two boxes: the ICMR 2023 AI guidelines and the ICMJE journal rules on AI.">
            <defs><marker id="mr4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">A local study at Tarang (made-up): the ethics path</text>
              <rect x="10" y="44" width="110" height="64" rx="8" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="65" y="72" font-weight="700">Protocol</text>
              <text x="65" y="92" font-size="11" fill="#9b99b8">written plan</text>
              <rect x="136" y="44" width="110" height="64" rx="8" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="191" y="72" font-weight="700" font-size="12">Ethics review</text>
              <text x="191" y="92" font-size="11" fill="#9b99b8">IEC approval</text>
              <rect x="262" y="44" width="110" height="64" rx="8" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="317" y="72" font-weight="700">Register</text>
              <text x="317" y="92" font-size="11" fill="#9b99b8">CTRI, for trials</text>
              <rect x="388" y="44" width="110" height="64" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="443" y="72" font-weight="700">Consent</text>
              <text x="443" y="92" font-size="11" fill="#9b99b8">own language</text>
              <rect x="514" y="44" width="110" height="64" rx="8" fill="#27274e" stroke="#22d3ee" stroke-width="2"/>
              <text x="569" y="72" font-weight="700">Collect data</text>
              <text x="569" y="92" font-size="11" fill="#9b99b8">de-identified</text>
              <rect x="640" y="44" width="110" height="64" rx="8" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="695" y="72" font-weight="700">Publish</text>
              <text x="695" y="92" font-size="11" fill="#9b99b8">disclose AI use</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr4a)">
                <line x1="120" y1="76" x2="133" y2="76"/>
                <line x1="246" y1="76" x2="259" y2="76"/>
                <line x1="372" y1="76" x2="385" y2="76"/>
                <line x1="498" y1="76" x2="511" y2="76"/>
                <line x1="624" y1="76" x2="637" y2="76"/>
              </g>
              <rect x="10" y="140" width="365" height="140" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="192" y="166" font-weight="700">ICMR AI guidelines (2023)</text>
              <text x="192" y="194" font-size="12">10 principles, such as autonomy,</text>
              <text x="192" y="214" font-size="12">data privacy and accountability</text>
              <text x="192" y="240" font-size="12">Tell patients when AI is used;</text>
              <text x="192" y="260" font-size="12">ethics committee reviews AI research</text>
              <rect x="385" y="140" width="365" height="140" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="567" y="166" font-weight="700">Journal rules (ICMJE)</text>
              <text x="567" y="194" font-size="12">AI cannot be an author</text>
              <text x="567" y="214" font-size="12">Humans are responsible for all content</text>
              <text x="567" y="240" font-size="12">Disclose AI use in the cover letter</text>
              <text x="567" y="260" font-size="12">and in the paper</text>
            </g>
          </svg>
          <figcaption>A local study moves through ethics steps before any data is collected. AI rules from ICMR and from journals apply along the way.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The basic ethics steps for a study in India</h3>
          <p>Suppose Dr Neha Kulkarni later runs a small trial of WhatsApp reminders at the made-up Tarang Multispeciality Hospital. These are the usual steps.</p>
          <ul class="lc-list">
            <li><strong>Follow the national guidelines.</strong> ICMR's National Ethical Guidelines for Biomedical and Health Research Involving Human Participants (2017) set out the core rules. Its four basic principles are respect for persons (autonomy), beneficence (doing good), non-maleficence (avoiding harm) and justice (fairness). Consent is a central requirement.</li>
            <li><strong>Get ethics committee approval first.</strong> An institutional ethics committee (IEC) must approve the protocol before any patient is enrolled. Under the New Drugs and Clinical Trials Rules 2019, ethics committees that review biomedical and health research must register with the Department of Health Research (DHR).</li>
            <li><strong>Register trials.</strong> Clinical trials in India should be registered in CTRI (Clinical Trials Registry - India) before the first participant is enrolled. Most journals also require this.</li>
            <li><strong>Take informed consent.</strong> Explain the study in a language the patient understands, such as Marathi or Hindi. Say that joining is voluntary and that they can leave at any time without losing care.</li>
            <li><strong>Ask about waivers.</strong> A review of old records may qualify for a waiver of consent. The ethics committee decides this, not the researcher.</li>
          </ul>
          <p>A literature review that uses only published papers usually needs no patient consent. Some institutions still ask you to inform the committee, so check your local rules.</p>
        </div>
        <div class="lc-card">
          <h3>What the ICMR guidelines on AI say</h3>
          <p>In 2023, ICMR (the Indian Council of Medical Research) published the <em>Ethical Guidelines for Application of Artificial Intelligence in Biomedical Research and Healthcare</em>. They are for researchers, developers, clinicians, ethics committees and funders. They list ten patient-centred principles:</p>
          <table class="lc-table">
            <thead><tr><th>Principle</th><th>What it means for you (simplified)</th></tr></thead>
            <tbody>
              <tr><td>Autonomy</td><td>Patients keep control. They should know when AI is used and can say no.</td></tr>
              <tr><td>Safety and risk minimisation</td><td>Plan for AI errors and protect patients from harm.</td></tr>
              <tr><td>Trustworthiness</td><td>AI should be reliable and its use explainable.</td></tr>
              <tr><td>Data privacy</td><td>Anonymise data, keep it secure, and get proper approval and consent.</td></tr>
              <tr><td>Accountability and liability</td><td>People and institutions stay responsible for AI decisions.</td></tr>
              <tr><td>Optimisation of data quality</td><td>Poor or unrepresentative data leads to bias and errors.</td></tr>
              <tr><td>Accessibility, equity and inclusiveness</td><td>Benefits should reach all groups, not only a few.</td></tr>
              <tr><td>Collaboration</td><td>Work across disciplines and institutions.</td></tr>
              <tr><td>Non-discrimination and fairness</td><td>Check that AI does not treat groups unfairly.</td></tr>
              <tr><td>Validity</td><td>AI must be properly tested before use.</td></tr>
            </tbody>
          </table>
          <p>Read the full document on the ICMR website for exact wording. The guidelines also cover ethics committee review of AI projects and consent.</p>
        </div>
        <div class="lc-card">
          <h3>Patient data and AI tools</h3>
          <p>India's Digital Personal Data Protection Act 2023 and its 2025 Rules protect personal data, including health data. Its duties come into force in stages, so check the current position. In the US, HIPAA plays a similar role for health data. The safe habits are the same everywhere:</p>
          <ul class="lc-list">
            <li><strong>Never paste identifiable data into a public AI tool.</strong> This includes names, UHID (hospital ID) numbers, ABHA numbers, phone numbers, addresses, photos and exact dates of birth or admission.</li>
            <li><strong>De-identified is not always safe.</strong> A rare disease plus a small town and an age can still point to one person.</li>
            <li><strong>Use only approved tools.</strong> Use AI tools your hospital has approved for the data you have.</li>
            <li><strong>Write it in the protocol.</strong> Say which AI tools you will use, for what, and with what data. The ethics committee can then review it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Journal rules on AI</h3>
          <p>The ICMJE (International Committee of Medical Journal Editors) recommendations are followed by many medical journals. On AI, they say:</p>
          <ul class="lc-list">
            <li><strong>AI tools cannot be authors.</strong> Only people can take responsibility for accuracy, integrity and originality.</li>
            <li><strong>Disclose AI use.</strong> Describe it in the cover letter and in the right section of the paper, for example the Methods or the acknowledgements.</li>
            <li><strong>Humans are responsible.</strong> Authors must check and edit AI output, because it can be wrong, incomplete or biased.</li>
            <li><strong>Do not cite AI as a primary source.</strong> Cite the real papers you read.</li>
            <li><strong>Reviewers keep manuscripts confidential.</strong> They must ask the journal before using AI to help with a review.</li>
          </ul>
          <p>Each journal can add its own rules, so read its author instructions. A made-up example of a disclosure statement:</p>
          <pre><code>During the preparation of this work, the authors used [AI tool name]
        to improve the grammar and clarity of the Introduction and Discussion.
        The authors reviewed and edited all text and take full responsibility
        for the content. No patient data was entered into the tool.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: allowed, needs approval, or not allowed?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up plan from the Tarang research team.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine (disclose as the journal asks)"></div>
              <div data-sorter-target="bucket" data-bucket="approval" data-label="Needs approval first"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not allowed"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Improving the language of your own writing is allowed. Check every sentence and disclose it as the journal asks.">Using AI to improve the English of Neha's own Discussion section</li>
              <li data-bucket="ok" data-why="No patient data is involved, and the team still decides the final question.">Using AI to brainstorm PICO versions from a vague idea</li>
              <li data-bucket="no" data-why="AI cannot take responsibility for the work, so ICMJE rules do not allow it to be an author.">Listing an AI chatbot as a co-author on the paper</li>
              <li data-bucket="no" data-why="These are identifiable patient records. They must never go into a public AI tool.">Pasting 50 discharge summaries with names and phone numbers into a free chatbot</li>
              <li data-bucket="approval" data-why="AI can help draft it, but the team must check it and the ethics committee must approve the final form.">Using AI to draft a Marathi consent form for the planned trial</li>
              <li data-bucket="no" data-why="Research on patients cannot begin before the ethics committee approves the protocol.">Starting to enrol patients while the ethics committee is still reviewing</li>
              <li data-bucket="approval" data-why="The manuscript is confidential. A reviewer must ask the journal first, and use a tool where confidentiality is assured.">Using AI to help write a peer review of a manuscript sent by a journal</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft the "Use of AI tools" section for a study protocol, plus a disclosure statement. You then check it with your ethics committee.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a research ethics adviser at [a teaching hospital in India]. This is for training. Give general guidance only, not legal advice.

        Our planned study (made-up): a 6-month randomised trial of WhatsApp reminders versus usual care for [120] adults with type 2 diabetes at [Tarang Multispeciality Hospital]. We plan to use a hospital-approved AI assistant to: [draft the patient information sheet in Marathi, improve the English of the paper, and summarise published studies].

        Please write:
        1. A "Use of AI tools" section for the protocol (under 150 words): what AI will do, what data it will and will not see, and who checks the output.
        2. A checklist of ethics steps before the first patient is enrolled (ethics committee, trial registration, consent, data protection).
        3. A short AI disclosure statement for the final paper.
        4. Three questions our ethics committee is likely to ask about AI.

        Use simple English. Do not invent rules; where local rules vary, say "check with your ethics committee".</pre>
            <ul class="ai-try-checks">
              <li>It says no identifiable patient data goes into the AI tool.</li>
              <li>It puts ethics committee approval and trial registration before enrolment.</li>
              <li>The disclosure says the authors checked the output and take responsibility.</li>
              <li>It does not list the AI as an author or invent specific legal rules.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ethics comes before data. Get ethics committee approval, register trials, take real consent, and keep identifiable data out of public AI tools. When AI helps with your paper, say so openly. AI can never be an author, because only people can be held responsible.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Searching the Literature</h1>
        </div>
        <p class="lc-lead">A good search finds the studies that matter and leaves out the noise. A poor search misses key trials, and then your conclusion is wrong. In this lesson you will learn how PubMed works and how to use MeSH terms and Boolean operators. You will also learn when to use Google Scholar, the Cochrane Library and trial registries. You will also learn how AI can help you build a search, and why you must still run it yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="Three concept columns for a PubMed search: type 2 diabetes, text messages and HbA1c. Inside each column, a MeSH term and text words are joined with OR. The three columns are joined with AND, then a line for randomised trials gives the final set of records.">
            <defs><marker id="mr5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="220" height="220" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="125" y="46" font-weight="700">1. Type 2 diabetes</text>
              <rect x="270" y="20" width="220" height="220" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="46" font-weight="700">2. Text messages</text>
              <rect x="525" y="20" width="220" height="220" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="635" y="46" font-weight="700">3. HbA1c</text>
              <g font-size="11">
                <rect x="25" y="64" width="200" height="32" rx="6" fill="#27274e" stroke="#3b82f6"/>
                <text x="125" y="84" font-size="10">"Diabetes Mellitus, Type 2"[Mesh]</text>
                <text x="125" y="114" fill="#9b99b8">OR</text>
                <rect x="25" y="124" width="200" height="32" rx="6" fill="#27274e" stroke="#3b82f6"/>
                <text x="125" y="144">"type 2 diabetes"[tiab]</text>
                <text x="125" y="174" fill="#9b99b8">OR</text>
                <rect x="25" y="184" width="200" height="32" rx="6" fill="#27274e" stroke="#3b82f6"/>
                <text x="125" y="204">T2DM[tiab]</text>
                <rect x="280" y="64" width="200" height="32" rx="6" fill="#27274e" stroke="#10b981"/>
                <text x="380" y="84">"Text Messaging"[Mesh]</text>
                <text x="380" y="114" fill="#9b99b8">OR</text>
                <rect x="280" y="124" width="200" height="32" rx="6" fill="#27274e" stroke="#10b981"/>
                <text x="380" y="144">SMS[tiab]</text>
                <text x="380" y="174" fill="#9b99b8">OR</text>
                <rect x="280" y="184" width="200" height="32" rx="6" fill="#27274e" stroke="#10b981"/>
                <text x="380" y="204">WhatsApp[tiab]</text>
                <rect x="535" y="64" width="200" height="32" rx="6" fill="#27274e" stroke="#8b5cf6"/>
                <text x="635" y="84">"Glycated Hemoglobin"[Mesh]</text>
                <text x="635" y="114" fill="#9b99b8">OR</text>
                <rect x="535" y="124" width="200" height="32" rx="6" fill="#27274e" stroke="#8b5cf6"/>
                <text x="635" y="144">HbA1c[tiab]</text>
                <text x="635" y="174" fill="#9b99b8">OR</text>
                <rect x="535" y="184" width="200" height="32" rx="6" fill="#27274e" stroke="#8b5cf6"/>
                <text x="635" y="204">"glycated haemoglobin"[tiab]</text>
              </g>
              <rect x="300" y="268" width="160" height="38" rx="8" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="292" font-weight="700">AND (all three)</text>
              <rect x="520" y="268" width="225" height="38" rx="8" fill="#27274e" stroke="#22d3ee" stroke-width="2"/>
              <text x="632" y="292">#4: randomised trials</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr5a)">
                <line x1="125" y1="240" x2="326" y2="265"/>
                <line x1="380" y1="240" x2="380" y2="264"/>
                <line x1="635" y1="240" x2="434" y2="265"/>
                <line x1="460" y1="287" x2="516" y2="287"/>
              </g>
              <text x="380" y="336" font-size="11" fill="#9b99b8">Run the same idea in the Cochrane Library, Google Scholar and trial registries</text>
            </g>
          </svg>
          <figcaption>OR collects all the words for one concept. AND keeps only records that match every concept.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How PubMed works</h3>
          <p>PubMed is a free database from the US National Library of Medicine. It holds tens of millions of records of biomedical papers. Most records are from MEDLINE and are tagged with <strong>MeSH</strong> (Medical Subject Headings): a fixed list of subject terms. MeSH puts papers that use different words under one heading. For example, papers that say "HbA1c", "A1c" or "glycated haemoglobin" are all indexed under the heading "Glycated Hemoglobin".</p>
          <ul class="lc-list">
            <li><strong>Automatic term mapping:</strong> when you type plain words, PubMed tries to match them to MeSH terms and other lists, and searches those too.</li>
            <li><strong>See what PubMed did:</strong> open Advanced search and look at <em>Search Details</em> in the History. It shows how each word was translated.</li>
            <li><strong>Field tags switch mapping off:</strong> if you add a tag or put a phrase in quotes, PubMed searches exactly that.</li>
            <li><strong>Boolean operators:</strong> type AND, OR, NOT in capital letters. Use brackets to group words, because PubMed reads left to right.</li>
            <li><strong>Truncation:</strong> an asterisk finds word endings. <code>randomi*</code> finds randomised, randomized and randomisation. You need at least 4 letters before the asterisk.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Tag</th><th>What it searches</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>[mh]</code> or <code>[Mesh]</code></td><td>The MeSH heading, plus all narrower headings under it</td><td><code>"Diabetes Mellitus, Type 2"[mh]</code></td></tr>
              <tr><td><code>[mh:noexp]</code></td><td>Only that heading, not the narrower ones</td><td><code>"Reminder Systems"[mh:noexp]</code></td></tr>
              <tr><td><code>[majr]</code></td><td>Papers where the heading is a main topic</td><td><code>"Text Messaging"[majr]</code></td></tr>
              <tr><td><code>[tiab]</code></td><td>Words in the title or abstract</td><td><code>WhatsApp[tiab]</code></td></tr>
              <tr><td><code>[pt]</code></td><td>Publication type</td><td><code>"randomized controlled trial"[pt]</code></td></tr>
            </tbody>
          </table>
          <p>New records may not have MeSH terms yet. So combine MeSH terms with <code>[tiab]</code> text words, and you will catch both.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Neha's PubMed search</h3>
          <p>Dr Neha Kulkarni at the made-up Tarang Multispeciality Hospital turns her PICO question into concepts. She checks each heading in the MeSH database before she uses it. There is no MeSH heading for WhatsApp, so she searches it as a text word.</p>
          <table class="lc-table">
            <thead><tr><th>Concept</th><th>MeSH heading (checked)</th><th>Text words</th></tr></thead>
            <tbody>
              <tr><td>Type 2 diabetes</td><td>Diabetes Mellitus, Type 2</td><td>type 2 diabetes, type II diabetes, T2DM</td></tr>
              <tr><td>Messages</td><td>Text Messaging; Reminder Systems</td><td>text messag*, SMS, short message service, WhatsApp</td></tr>
              <tr><td>HbA1c</td><td>Glycated Hemoglobin</td><td>HbA1c, glycated or glycosylated hemoglobin/haemoglobin</td></tr>
              <tr><td>Study design</td><td>(publication type)</td><td>randomi*</td></tr>
            </tbody>
          </table>
          <pre><code>#1 "Diabetes Mellitus, Type 2"[Mesh] OR "type 2 diabetes"[tiab]
           OR "type II diabetes"[tiab] OR T2DM[tiab]
        #2 "Text Messaging"[Mesh] OR "Reminder Systems"[Mesh]
           OR "text messag*"[tiab] OR SMS[tiab]
           OR "short message service"[tiab] OR WhatsApp[tiab]
        #3 "Glycated Hemoglobin"[Mesh] OR HbA1c[tiab]
           OR "glycated hemoglobin"[tiab] OR "glycated haemoglobin"[tiab]
           OR "glycosylated hemoglobin"[tiab]
        #4 "randomized controlled trial"[pt] OR randomi*[tiab]
        #5 #1 AND #2 AND #3 AND #4</code></pre>
          <p>In the Advanced search page, she runs lines #1 to #4 one at a time, then combines them in #5. Filters on the left side let her limit by article type, publication date, species (Humans), language and age. There is also an option to exclude preprints. Use filters with care: they depend on how records are tagged, so they can drop good studies.</p>
          <p>She saves the search string, the date, and the number of results for each line. Her made-up result: 186 records for #5. Your real numbers will differ, and they grow every month.</p>
        </div>
        <div class="lc-card">
          <h3>Beyond PubMed, and where AI fits</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Best for</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Cochrane Library</strong></td><td>Cochrane systematic reviews, and CENTRAL, a large register of controlled trials</td><td>Search syntax differs from PubMed; check its help pages</td></tr>
              <tr><td><strong>Google Scholar</strong></td><td>A quick, broad search, including theses and reports; the "Cited by" link finds newer papers</td><td>No MeSH, ranking you cannot control, results hard to repeat</td></tr>
              <tr><td><strong>Trial registries</strong></td><td>Ongoing and unpublished trials: CTRI (India), ClinicalTrials.gov, WHO ICTRP</td><td>Registry entries are plans and results, not peer-reviewed papers</td></tr>
              <tr><td><strong>AI research search tools</strong></td><td>Finding a few relevant papers fast, with short summaries and links</td><td>They can miss papers and misread results; the search cannot be repeated exactly</td></tr>
            </tbody>
          </table>
          <p>Use AI to <em>build</em> your search, not to <em>replace</em> it:</p>
          <pre><code>Weak prompt:
        Find all studies on WhatsApp reminders and HbA1c.

        Better prompt:
        Here is my PICO question: [question]. Build a PubMed search.
        Give a table of concepts, likely MeSH headings and text words.
        Mark every MeSH heading "verify in the MeSH database".
        Then give the full search string with AND, OR and brackets.
        Do not list any studies.</code></pre>
          <p>AI often suggests MeSH headings that sound right but do not exist. Check each one in the MeSH database, then run the search in PubMed yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a search in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Neha's search steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the question as PICO and choose the main concepts</li>
              <li data-order="2">List synonyms and spellings for each concept, with AI help</li>
              <li data-order="3">Check each suggested MeSH heading in the MeSH database</li>
              <li data-order="4">Join the words inside each concept with OR</li>
              <li data-order="5">Join the concepts with AND, and add a study design line</li>
              <li data-order="6">Run it in PubMed and read Search Details to see how terms were mapped</li>
              <li data-order="7">Save the search string, date and result counts, then repeat in other databases</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a PICO question into a PubMed search. Then check the MeSH terms and run the search yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a medical librarian who teaches PubMed searching to [doctors and nurses in India].

        My PICO question: "[In adults with type 2 diabetes, do text or WhatsApp reminder programmes lower HbA1c at 6 months or more, compared with usual care?]"
        Study types I want: [randomised controlled trials].

        Please:
        1. Make a table: Concept | Possible MeSH headings | Text words and spellings (British and American) for the [tiab] field.
        2. Mark every MeSH heading "verify in the MeSH database". Say if a concept probably has no MeSH heading.
        3. Write the full PubMed search as numbered lines (#1, #2 ...) using OR inside concepts, AND between them, brackets, and truncation with *.
        4. Suggest 2 filters and explain what each could wrongly remove.
        5. Say how to adapt the search for the Cochrane Library and Google Scholar in 3 short points.

        Do not list any studies, authors or PMIDs. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every MeSH heading it suggests exists when you check the MeSH database.</li>
              <li>OR is used inside each concept and AND between concepts, with correct brackets.</li>
              <li>Truncated words have at least 4 letters before the asterisk.</li>
              <li>It lists no studies, authors or PMIDs.</li>
              <li>When you run it in PubMed, Search Details shows the terms mapped as expected.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good search is planned, written down and repeatable. Use MeSH headings and text words together, join synonyms with OR and concepts with AND, and save the date and counts. AI can draft the search, but you check every term and run it yourself.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Checking References and Avoiding Fake Citations</h1>
        </div>
        <p class="lc-lead">A reference is a promise to your reader: "this paper exists, and it says what I say it says." AI tools can break that promise. They can write references that look perfect but do not exist. In this lesson you will learn why AI invents references, and how to check any reference with its DOI and PMID. You will also learn to spot retracted papers with PubMed and the Retraction Watch database. One fake or retracted reference can get a paper rejected, and it can mislead patients' care.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A five-step reference check: find the DOI or PMID, open the record, match the details, check for retraction, and read the paper. Each reference ends in one of three results: keep it, fix it, or remove it.">
            <defs><marker id="mr6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="11" y="30" width="130" height="56" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="76" y="54" font-weight="700">1. Find the</text>
              <text x="76" y="72" font-weight="700">DOI or PMID</text>
              <rect x="163" y="30" width="130" height="56" rx="10" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="228" y="54" font-weight="700">2. Open the</text>
              <text x="228" y="72" font-weight="700">record</text>
              <rect x="315" y="30" width="130" height="56" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="380" y="54" font-weight="700">3. Match the</text>
              <text x="380" y="72" font-weight="700">details</text>
              <rect x="467" y="30" width="130" height="56" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="532" y="54" font-weight="700">4. Check for</text>
              <text x="532" y="72" font-weight="700">retraction</text>
              <rect x="619" y="30" width="130" height="56" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="684" y="54" font-weight="700">5. Read the</text>
              <text x="684" y="72" font-weight="700">paper</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr6a)">
                <line x1="141" y1="58" x2="160" y2="58"/>
                <line x1="293" y1="58" x2="312" y2="58"/>
                <line x1="445" y1="58" x2="464" y2="58"/>
                <line x1="597" y1="58" x2="616" y2="58"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="76" y="108">doi.org, PubMed,</text>
                <text x="76" y="124">Crossref search</text>
                <text x="228" y="108">Does it open</text>
                <text x="228" y="124">a real paper?</text>
                <text x="380" y="108">Title, authors,</text>
                <text x="380" y="124">journal, year</text>
                <text x="532" y="108">PubMed banner,</text>
                <text x="532" y="124">Retraction Watch</text>
                <text x="684" y="108">Does it support</text>
                <text x="684" y="124">your sentence?</text>
              </g>
              <line x1="380" y1="140" x2="380" y2="176" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr6a)"/>
              <rect x="20" y="186" width="230" height="64" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="135" y="212" font-weight="700">Keep</text>
              <text x="135" y="232" font-size="12">Real, matches, supports</text>
              <rect x="265" y="186" width="230" height="64" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="212" font-weight="700">Fix</text>
              <text x="380" y="232" font-size="12">Real, but details wrong</text>
              <rect x="510" y="186" width="230" height="64" rx="10" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="625" y="212" font-weight="700">Remove</text>
              <text x="625" y="232" font-size="12">Not found, or retracted</text>
              <text x="380" y="290" font-size="12" fill="#9b99b8">Check every reference, including the ones you wrote yourself.</text>
              <text x="380" y="310" font-size="12" fill="#9b99b8">"It looks real" is not a check.</text>
            </g>
          </svg>
          <figcaption>Every reference goes through the same five checks. It ends as keep, fix or remove.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why AI invents references</h3>
          <p>A chat AI writes text by predicting the next likely words. It does not look in a library by default. A reference has a very regular shape: authors, title, journal, year, volume, pages. So the AI can produce text in that shape easily, even when no such paper exists. This is often called a <strong>fabricated</strong> or "hallucinated" reference.</p>
          <p>AI tools that search the web or a database make fewer of these errors. But they still make mistakes. They can attach the wrong paper to a sentence, or describe a result the paper does not report.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>What it looks like</th><th>How you catch it</th></tr></thead>
            <tbody>
              <tr><td><strong>Fabricated</strong></td><td>A neat reference to a paper that was never written. Author names are often real people in the field.</td><td>No match in PubMed, Crossref or the journal's website</td></tr>
              <tr><td><strong>Wrong details</strong></td><td>A real paper, but with the wrong year, journal, author order or DOI</td><td>Compare every detail with the PubMed record</td></tr>
              <tr><td><strong>Does not support the claim</strong></td><td>A real paper about a different topic, a different population, or with a different result</td><td>Read the abstract, and the full text for key claims</td></tr>
              <tr><td><strong>Retracted</strong></td><td>A real paper that the journal later withdrew, for example for errors or misconduct</td><td>PubMed retraction notice, Retraction Watch database, publisher page</td></tr>
            </tbody>
          </table>
          <p>AI tools are not the only source of bad references. People copy references from other papers without reading them. So check every reference in your work, not only the ones AI touched.</p>
        </div>
        <div class="lc-card">
          <h3>How to check a DOI, a PMID and retractions</h3>
          <ul class="lc-list">
            <li><strong>DOI</strong> (Digital Object Identifier: a permanent ID for an article). It always starts with <code>10.</code>, then a number for the publisher, a slash, and a code for the article. Type it after <code>https://doi.org/</code>. It should open the publisher's page for the same title. You can also search the title on Crossref's free search page.</li>
            <li><strong>PMID</strong> (PubMed ID: the number PubMed gives each record). Search the number in PubMed. The record must show the same title, authors, journal and year. Do not mix it up with a <strong>PMCID</strong>, which starts with "PMC" and points to a free full text in PubMed Central.</li>
            <li><strong>No ID given?</strong> Use PubMed's Single Citation Matcher, or paste the exact title in quotes into PubMed and Google Scholar. If the journal itself cannot be found in the NLM Catalog, be very careful.</li>
            <li><strong>Retractions in PubMed.</strong> A retracted paper shows a clear retraction notice on its record, with a link to the notice. PubMed also tags these records with the publication type "Retracted Publication".</li>
            <li><strong>Retraction Watch database.</strong> This is a large list of retracted papers. Crossref took it over in 2023 and made the data free to use. Search it by title, author or DOI.</li>
            <li><strong>Publisher page.</strong> Many journals show a "Check for updates" (Crossmark) button that lists corrections and retractions. Some reference managers, such as Zotero, can also warn you about retracted items. Check each tool's current help pages.</li>
          </ul>
          <p><strong>Worked example.</strong> Dr Neha Kulkarni at the made-up Tarang Multispeciality Hospital receives a draft poster from a colleague. The colleague used a chatbot to "add references". Neha checks all four. The references below are <strong>made up for this lesson</strong>; they are not real papers.</p>
          <table class="lc-table">
            <thead><tr><th>Reference in the draft (made-up)</th><th>What Neha found</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>Ref 1: an SMS reminder trial in India, 2022, with a DOI</td><td>The DOI opens a paper with the same title, authors and year. The abstract supports the sentence.</td><td>Keep</td></tr>
              <tr><td>Ref 2: a WhatsApp study, with a PMID</td><td>The PMID opens a real paper, but about asthma inhalers, not diabetes. The title in the draft finds nothing.</td><td>Remove (fabricated)</td></tr>
              <tr><td>Ref 3: a review of text messaging, 2019</td><td>Real paper, but it was published in 2018 and the first author is different</td><td>Fix the details</td></tr>
              <tr><td>Ref 4: a trial of app reminders and HbA1c</td><td>Real paper, but PubMed shows a retraction notice. The data could not be confirmed.</td><td>Remove, do not cite as evidence</td></tr>
            </tbody>
          </table>
          <p>Only one of four references was safe to use as it was. This is why "check every reference" is a firm rule, not a suggestion.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to help you check, not to supply references</h3>
          <p>Never ask a chat AI to "add references". Give it the references and abstracts you found yourself. Then ask it to make a checking table and to compare each claim with the abstract.</p>
          <pre><code>Weak prompt:
        Add 5 references to support this paragraph.

        Better prompt:
        Below are my paragraph and 4 references with abstracts
        I copied from PubMed. For each sentence, say which
        abstract supports it, quote the supporting words, or
        write "NOT SUPPORTED". Do not add any new references.
        Do not say whether a paper exists; I will check that.</code></pre>
          <ul class="lc-list">
            <li>Keep a simple log: reference number, DOI or PMID, date checked, result, and who checked it.</li>
            <li>Check again just before you submit. A paper can be retracted after you first cite it.</li>
            <li>If you must mention a retracted paper, cite it clearly as retracted, together with the retraction notice.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: check a draft's references</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="The draft">Neha opens the colleague's draft poster. It has 4 references that a chatbot added. She makes a check table with one row for each reference.</li>
              <li data-kind="tool" data-label="doi.org">She types the DOI of Ref 1 after https://doi.org/. The publisher page opens with the same title, authors and year.</li>
              <li data-kind="tool" data-label="PubMed">She searches the PMID of Ref 2 in PubMed.</li>
              <li data-kind="result" data-label="Mismatch">The PMID belongs to a real paper about asthma inhalers. The diabetes title from the draft finds nothing in PubMed, Crossref or Google Scholar.</li>
              <li data-kind="warn" data-label="Fabricated">Ref 2 is fabricated. The AI joined a real PMID to an invented title. Neha removes it and tells her colleague.</li>
              <li data-kind="tool" data-label="Retraction check">She searches Ref 4's title in the Retraction Watch database and looks at its PubMed record.</li>
              <li data-kind="result" data-label="Retracted">Both show that the paper was retracted. PubMed links to the retraction notice.</li>
              <li data-kind="check" data-label="Final check">Neha reads the abstract of each paper she keeps. She confirms it supports the exact sentence. Then she logs the date and her result for each reference.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a reference list and ask AI to build a checking table. The AI plans the checks; you do them in PubMed, doi.org and the Retraction Watch database.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a medical librarian helping [a junior doctor in India] check the references in a draft [poster].

        Here is my reference list. (The sample references below are made up for practice. Replace them with your own.)
        [1. Rao S, Patil M. SMS reminders and HbA1c in adults with type 2 diabetes: a randomised trial. Indian J Clin Diab. 2022;14:101-9. doi:10.0000/demo.2022.01
        2. Mehta K et al. WhatsApp support groups for diabetes care. 2021. PMID: not given
        3. Singh A. Mobile phone messages for chronic disease: a review. 2019.]

        Please:
        1. Make a table: Ref no | What is missing or looks odd | Exact search to run (doi.org, PubMed, Crossref) | Retraction check to run.
        2. Point out anything suspicious, for example a journal name you cannot place, or missing volume and pages.
        3. Do NOT say whether any paper exists, and do NOT add or correct references from memory. I will check each one myself.
        4. End with a 5-point checklist I can use for every reference.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>It does not claim that any reference is real or fake from memory.</li>
              <li>It adds no new references or "corrected" details.</li>
              <li>The searches it suggests use doi.org, PubMed, Crossref and a retraction check.</li>
              <li>When you run the checks yourself, you log the result and the date for each reference.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI predicts what a reference should look like; it does not prove one exists. Check every DOI and PMID yourself, match every detail, check for retraction, and read enough of the paper to know it supports your sentence. Then log what you checked and when.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Summarising Papers with AI</h1>
        </div>
        <p class="lc-lead">A good summary lets you compare many papers quickly. AI can draft a structured summary in seconds. But AI summaries often mix up numbers: the change in one group becomes the difference between groups, or the number analysed becomes the number randomised. In this lesson you will learn a fixed summary format and a prompt that makes AI quote its sources. You will also learn a simple way to check every number against the paper.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four steps from paper to summary: paste the paper's text, get an AI structured summary with quotes, check every number against the paper in a table, and write your final summary. A loop shows that any wrong number sends you back to the paper.">
            <defs><marker id="mr7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="30" width="160" height="150" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="92" y="56" font-weight="700">1. The paper</text>
              <g font-size="12" fill="#9b99b8">
                <text x="92" y="84">Abstract</text>
                <text x="92" y="104">Methods</text>
                <text x="92" y="124">Results tables</text>
                <text x="92" y="144">Funding</text>
                <text x="92" y="164">(you paste it)</text>
              </g>
              <rect x="204" y="30" width="160" height="150" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="284" y="56" font-weight="700">2. AI summary</text>
              <g font-size="12" fill="#9b99b8">
                <text x="284" y="84">Fixed headings</text>
                <text x="284" y="104">A quote for</text>
                <text x="284" y="124">every number</text>
                <text x="284" y="144">"Not reported"</text>
                <text x="284" y="164">if missing</text>
              </g>
              <rect x="396" y="30" width="160" height="150" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="476" y="56" font-weight="700">3. Number check</text>
              <g font-size="12">
                <text x="476" y="84" fill="#10b981">240 randomised: OK</text>
                <text x="476" y="104" fill="#ec4899">240 analysed: wrong</text>
                <text x="476" y="124" fill="#10b981">−0.5 difference: OK</text>
                <text x="476" y="144" fill="#ec4899">"Funded by": added</text>
                <text x="476" y="164" fill="#9b99b8">Study B (made-up)</text>
              </g>
              <rect x="588" y="30" width="160" height="150" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="668" y="56" font-weight="700">4. Your summary</text>
              <g font-size="12" fill="#9b99b8">
                <text x="668" y="84">Corrected numbers</text>
                <text x="668" y="104">Your own view of</text>
                <text x="668" y="124">the limitations</text>
                <text x="668" y="144">Checked by you,</text>
                <text x="668" y="164">with the date</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr7a)">
                <line x1="172" y1="105" x2="200" y2="105"/>
                <line x1="364" y1="105" x2="392" y2="105"/>
                <line x1="556" y1="105" x2="584" y2="105"/>
              </g>
              <path d="M476,180 L476,230 L92,230 L92,186" fill="none" stroke="#ec4899" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#mr7a)"/>
              <text x="284" y="252" font-size="12" fill="#ec4899">A wrong number? Go back to the paper, not to the AI.</text>
              <text x="380" y="284" font-size="12" fill="#9b99b8">The paper is the source of truth. The AI summary is only a draft.</text>
            </g>
          </svg>
          <figcaption>AI drafts the summary. You check every number against the paper before you use it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A structured summary: the same headings every time</h3>
          <p>A <strong>structured summary</strong> uses fixed headings for every paper. Then you can put papers side by side and compare them. For a trial, use headings like these:</p>
          <table class="lc-table">
            <thead><tr><th>Heading</th><th>What to write</th></tr></thead>
            <tbody>
              <tr><td>Design and setting</td><td>For example, individual RCT, one teaching hospital, Sri Lanka</td></tr>
              <tr><td>Participants</td><td>Who was included, how many were <strong>randomised</strong>, and how many were <strong>analysed</strong></td></tr>
              <tr><td>Intervention and comparison</td><td>What each group received, and for how long</td></tr>
              <tr><td>Primary outcome</td><td>The main outcome the trial planned to measure, and when</td></tr>
              <tr><td>Main result</td><td>Change in each group, the difference between groups, and its 95% CI (confidence interval: the range of values the data fit well)</td></tr>
              <tr><td>Dropout and analysis</td><td>How many left each group, and whether the analysis was <strong>intention-to-treat</strong> (everyone analysed in the group they were randomised to) or <strong>completers only</strong></td></tr>
              <tr><td>Funding and conflicts</td><td>Who paid, and any links to companies</td></tr>
              <tr><td>Limitations</td><td>The authors' list, then your own view</td></tr>
            </tbody>
          </table>
          <p>Only paste papers you are allowed to use. Open-access papers and abstracts are fine. Follow your institution's rules before you upload a paid PDF to an AI tool. Research papers contain no patient identifiers, but your own study data does; never paste that into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Study B (made-up)</h3>
          <p>Dr Neha Kulkarni at the made-up Tarang Multispeciality Hospital summarises Study B for her review. The text below is <strong>made up for this course</strong>. It stands in for the paper's methods and results.</p>
          <pre><code>Study B (made-up), excerpt:
        "We randomised 240 adults with type 2 diabetes and HbA1c
        of 7.5% or higher at one teaching hospital in Sri Lanka:
        120 to a nurse-led WhatsApp group (daily medicine
        reminders, photos of healthy meals, questions answered)
        and 120 to usual care. The primary outcome was HbA1c at
        6 months. We analysed participants who completed
        follow-up. Mean baseline HbA1c was 8.9% (WhatsApp) and
        8.8% (usual care). 36 participants (30%) in the WhatsApp
        group and 17 (14%) in the usual care group did not
        attend the 6-month visit. Among 187 completers, HbA1c
        fell by 0.9 percentage points with WhatsApp and by 0.4
        with usual care (difference -0.5; 95% CI -0.9 to -0.1)."</code></pre>
          <p>A quick AI summary said: "All 240 patients were analysed. WhatsApp lowered HbA1c by 0.9 points compared with usual care. Dropout was similar in both groups. The study was funded by the hospital, with no conflicts." Neha checks each claim against the excerpt.</p>
          <table class="lc-table">
            <thead><tr><th>AI claim</th><th>What the paper says</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>All 240 patients analysed</td><td>240 randomised; only 187 completers analysed (84 WhatsApp, 103 usual care)</td><td>Wrong</td></tr>
              <tr><td>HbA1c 0.9 points lower than usual care</td><td>0.9 is the fall <em>within</em> the WhatsApp group. The difference between groups is −0.5 (95% CI −0.9 to −0.1)</td><td>Wrong</td></tr>
              <tr><td>Dropout similar in both groups</td><td>30% versus 14%: more than double in the WhatsApp group</td><td>Wrong</td></tr>
              <tr><td>Funded by the hospital, no conflicts</td><td>The excerpt says nothing about funding</td><td>Not in the paper (added by AI)</td></tr>
            </tbody>
          </table>
          <p>Each error makes the WhatsApp group look better than it was. That matters: people who left early may have done worse. So a completers-only result can overstate the benefit.</p>
        </div>
        <div class="lc-card">
          <h3>A prompt that makes checking easy</h3>
          <pre><code>Weak prompt:
        Summarise this paper.

        Better prompt:
        Summarise the pasted text under these headings: [list].
        Use only the pasted text. After every number, add the
        exact quote it came from in brackets. If something is
        not in the text, write "Not reported". Give randomised
        and analysed numbers for each group separately. Give the
        change in each group AND the difference between groups.</code></pre>
          <ul class="lc-list">
            <li><strong>Quotes make checking fast.</strong> You can search the paper for each quote in seconds.</li>
            <li><strong>"Not reported" stops guessing.</strong> Without it, AI often fills gaps with likely-sounding facts.</li>
            <li><strong>Check tables, not only the abstract.</strong> Abstracts sometimes report numbers that differ from the results tables.</li>
            <li><strong>Keep your own judgement.</strong> The AI can list the authors' limitations. You decide what they mean for your question.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: sort the summary claims</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Compare each claim with the Study B (made-up) excerpt above. Where does it belong?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Matches the paper"></div>
              <div data-sorter-target="bucket" data-bucket="wrong" data-label="Wrong number or fact"></div>
              <div data-sorter-target="bucket" data-bucket="added" data-label="Not in the paper"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="The excerpt says 120 were randomised to each group, 240 in total.">240 adults were randomised, 120 to each group.</li>
              <li data-bucket="ok" data-why="The excerpt gives a difference of -0.5 with a 95% CI of -0.9 to -0.1.">The difference between groups was -0.5 points (95% CI -0.9 to -0.1).</li>
              <li data-bucket="wrong" data-why="0.9 is the fall within the WhatsApp group. The difference between groups is 0.5.">WhatsApp lowered HbA1c by 0.9 points more than usual care.</li>
              <li data-bucket="wrong" data-why="Only completers were analysed. That is not intention-to-treat.">The analysis was intention-to-treat.</li>
              <li data-bucket="wrong" data-why="Dropout was 30% versus 14%, more than double in the WhatsApp group.">Dropout was about the same in both groups.</li>
              <li data-bucket="added" data-why="The excerpt does not mention patient satisfaction at all.">Patients in the WhatsApp group were more satisfied with their care.</li>
              <li data-bucket="added" data-why="The excerpt says nothing about who paid for the study.">The study had no funding from companies.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a structured summary of the made-up Study B excerpt, with a quote for every number. Then check each number yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping [a junior doctor in India] summarise trials for an evidence review. The text below is made up for training. Replace it with the text of a paper you are allowed to use.

        [Study B (made-up): "We randomised 240 adults with type 2 diabetes and HbA1c of 7.5% or higher at one teaching hospital in Sri Lanka: 120 to a nurse-led WhatsApp group and 120 to usual care. The primary outcome was HbA1c at 6 months. We analysed participants who completed follow-up. 36 (30%) in the WhatsApp group and 17 (14%) in the usual care group did not attend the 6-month visit. Among 187 completers, HbA1c fell by 0.9 points with WhatsApp and 0.4 with usual care (difference -0.5; 95% CI -0.9 to -0.1)."]

        Write a structured summary with these headings: Design and setting | Participants (randomised and analysed, per group) | Intervention and comparison | Primary outcome | Change in each group | Difference between groups (95% CI) | Dropout and type of analysis | Funding | Limitations.

        Rules: use only the text above. After every number, put the exact quote in brackets. Write "Not reported" if something is missing. Do not add facts from memory.</pre>
            <ul class="ai-try-checks">
              <li>It says 187 were analysed (84 and 103), not 240.</li>
              <li>It keeps the within-group changes (0.9 and 0.4) apart from the difference (0.5).</li>
              <li>It names the analysis as completers only, not intention-to-treat.</li>
              <li>Funding says "Not reported", and every number has a matching quote.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ask AI for fixed headings, a quote for every number and "Not reported" for gaps. Then check each number against the paper. Watch most closely for randomised versus analysed, and change within a group versus difference between groups.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Critical Appraisal</h1>
        </div>
        <p class="lc-lead">Critical appraisal means judging how much you can trust a study, before you use its result. A paper can be published, peer reviewed and still be misleading. In this lesson you will learn to look for bias, confounding and small sample size. You will meet the main reporting checklists (CONSORT, STROBE, PRISMA) and the Cochrane RoB 2 tool in plain words. You will also see how AI can help, and why two people must still make the final judgement.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="The five domains of the Cochrane RoB 2 tool as a table: randomisation process, deviations from the planned intervention, missing outcome data, measuring the outcome, and selecting the reported result. Each row has a plain question and an example from the made-up Studies A to F. The overall rule: if any domain is high risk, the trial is high risk.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g font-weight="700" fill="#9b99b8" font-size="12">
                <text x="28" y="26">RoB 2 domain</text>
                <text x="253" y="26">Plain question</text>
                <text x="523" y="26">Example (made-up studies)</text>
              </g>
              <rect x="20" y="36" width="720" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="1.5"/>
              <text x="32" y="63" font-weight="700">1. Randomisation</text>
              <text x="253" y="63" font-size="12">Was the order random and hidden?</text>
              <text x="523" y="63" font-size="12" fill="#f59e0b">F: method not clearly described</text>
              <rect x="20" y="88" width="720" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee" stroke-width="1.5"/>
              <text x="32" y="115" font-weight="700">2. Deviations from plan</text>
              <text x="253" y="115" font-size="12">Did groups get what was planned?</text>
              <text x="523" y="115" font-size="12" fill="#10b981">A: intention-to-treat analysis</text>
              <rect x="20" y="140" width="720" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6" stroke-width="1.5"/>
              <text x="32" y="167" font-weight="700">3. Missing outcome data</text>
              <text x="253" y="167" font-size="12">Are many results missing?</text>
              <text x="523" y="167" font-size="12" fill="#ec4899">B: 30% vs 14% lost, completers</text>
              <rect x="20" y="192" width="720" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="1.5"/>
              <text x="32" y="219" font-weight="700">4. Measuring the outcome</text>
              <text x="253" y="219" font-size="12">Did the measurers know the group?</text>
              <text x="523" y="219" font-size="12" fill="#10b981">A: lab staff blinded</text>
              <rect x="20" y="244" width="720" height="44" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-width="1.5"/>
              <text x="32" y="271" font-weight="700">5. Reported result</text>
              <text x="253" y="271" font-size="12">Did they report what they planned?</text>
              <text x="523" y="271" font-size="12" fill="#ec4899">F: 6-month outcome missing</text>
              <line x1="243" y1="36" x2="243" y2="288" stroke="#9b99b8" stroke-width="0.8" stroke-dasharray="3 3"/>
              <line x1="513" y1="36" x2="513" y2="288" stroke="#9b99b8" stroke-width="0.8" stroke-dasharray="3 3"/>
              <text x="380" y="316" font-size="12" text-anchor="middle" fill="#9b99b8">Each domain: low risk, some concerns, or high risk.</text>
              <text x="380" y="334" font-size="12" text-anchor="middle" fill="#9b99b8">Overall: if any domain is high risk, the whole trial is high risk.</text>
            </g>
          </svg>
          <figcaption>RoB 2 asks five questions about a randomised trial. Colours show a good sign (green), a concern (amber) and a serious problem (pink).</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three questions for every study</h3>
          <ul class="lc-list">
            <li><strong>Bias:</strong> a built-in error that pushes the result one way. It does not go away with more patients. Examples: groups that differ from the start, many missing results in one group, or measurers who know the group.</li>
            <li><strong>Confounding:</strong> a third factor that is linked to both the treatment and the outcome. It can create a false link. Randomisation spreads such factors evenly between groups, so trials handle it better than observational studies.</li>
            <li><strong>Chance and sample size:</strong> small studies give wide confidence intervals. Their results can be large by luck, or can miss a real effect.</li>
          </ul>
          <p>Here is how the made-up studies in Dr Neha Kulkarni's review fare. All six studies are made up for this course.</p>
          <table class="lc-table">
            <thead><tr><th>Study (made-up)</th><th>Main problem</th><th>Overall judgement</th></tr></thead>
            <tbody>
              <tr><td>Study A: RCT, 400, India</td><td>Participants not blinded (not possible), but HbA1c is a lab test done by blinded staff</td><td>Low risk</td></tr>
              <tr><td>Study B: RCT, 240, Sri Lanka</td><td>30% dropout with WhatsApp vs 14% with usual care; completers only analysed</td><td>High risk</td></tr>
              <tr><td>Study C: cluster RCT, 1,200, India</td><td>Recruiters knew each centre's group; intervention centres enrolled slightly more literate patients</td><td>Low to some concerns</td></tr>
              <tr><td>Study D: RCT, 180, UK</td><td>Small, so the 95% CI is wide and crosses zero</td><td>Low risk, but imprecise</td></tr>
              <tr><td>Study E: before-after, 90, India</td><td>No control group; motivated volunteers; high starting HbA1c</td><td>Critical; excluded</td></tr>
              <tr><td>Study F: RCT, 300, Mexico</td><td>Randomisation unclear; paid for by the SMS company; planned 6-month result not reported</td><td>Some concerns to high</td></tr>
            </tbody>
          </table>
          <p><strong>Study E needs special care.</strong> Its HbA1c fell by 1.2 points, the biggest number of all. But patients with a very high value often have a lower value next time, even with no treatment. This is <strong>regression to the mean</strong>. Without a control group, you cannot separate that from the effect of the messages.</p>
        </div>
        <div class="lc-card">
          <h3>Checklists and tools, in plain words</h3>
          <p>There are two kinds of tool. <strong>Reporting checklists</strong> ask: "Did the authors tell us everything?" <strong>Risk-of-bias tools</strong> ask: "Can we trust the result?" A paper can report everything clearly and still be at high risk of bias.</p>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Used for</th><th>What it is</th></tr></thead>
            <tbody>
              <tr><td><strong>CONSORT</strong></td><td>Reporting randomised trials</td><td>A checklist and a flow diagram of participants. An updated version, CONSORT 2025, replaced the 2010 version.</td></tr>
              <tr><td><strong>STROBE</strong></td><td>Reporting observational studies (cohort, case-control, cross-sectional)</td><td>A checklist of what to report</td></tr>
              <tr><td><strong>PRISMA</strong></td><td>Reporting systematic reviews</td><td>PRISMA 2020: a checklist and a flow diagram of how studies were found and selected</td></tr>
              <tr><td><strong>RoB 2</strong> (Cochrane)</td><td>Judging risk of bias in randomised trials</td><td>Five domains, each rated low risk, some concerns or high risk. It has a version for cluster trials.</td></tr>
              <tr><td><strong>ROBINS-I</strong></td><td>Judging risk of bias in non-randomised studies of treatments</td><td>Compares the study with an ideal trial, with a focus on confounding</td></tr>
            </tbody>
          </table>
          <p>Funding is not one of the RoB 2 domains. But always note who paid and any links to companies, as for Study F. Find the checklists on the EQUATOR Network website and the Cochrane methods pages. Check which version is current.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI helps, and where you decide</h3>
          <p>AI can find the sentences in a paper that answer each appraisal question. It is fast at this. But it often judges too kindly, and it cannot see what the authors left out unless you ask.</p>
          <pre><code>Weak prompt:
        Is this study good quality?

        Better prompt:
        For the pasted trial, go through the 5 RoB 2 domains.
        For each domain, quote the sentences that are relevant,
        or write "Not reported". Suggest low risk, some concerns
        or high risk, with one reason. List anything a reviewer
        would expect to see but cannot find. Mark all judgements
        "draft: for human reviewers to decide".</code></pre>
          <ul class="lc-list">
            <li>Two reviewers appraise each study on their own. Then they compare and agree, with a third person if needed.</li>
            <li>Check the trial registry and the protocol. That is how you spot a changed primary outcome, as in Study F.</li>
            <li>Write the reason for every judgement. Readers of your review should see why you decided.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: which RoB 2 domain?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each finding comes from the made-up studies. Sort it into the RoB 2 domain it belongs to.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="rand" data-label="Randomisation and recruitment"></div>
              <div data-sorter-target="bucket" data-bucket="missing" data-label="Missing outcome data"></div>
              <div data-sorter-target="bucket" data-bucket="measure" data-label="Measuring the outcome"></div>
              <div data-sorter-target="bucket" data-bucket="report" data-label="Selecting the reported result"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="rand" data-why="If the method of random allocation is not described, you cannot tell if the groups were formed fairly.">Study F does not clearly say how patients were randomised.</li>
              <li data-bucket="rand" data-why="In cluster trials, recruiting after centres are randomised can bring in different kinds of patients. The cluster version of RoB 2 checks this in its first domain.">In Study C, recruiters knew each centre's group and enrolled more literate patients in message centres.</li>
              <li data-bucket="missing" data-why="Uneven dropout with completers-only analysis can make the intervention look better than it is.">In Study B, 30% left the WhatsApp group and 14% left usual care; only completers were analysed.</li>
              <li data-bucket="missing" data-why="Low and even dropout with intention-to-treat analysis is a good sign for this domain.">In Study A, about 10% dropped out, evenly in both groups.</li>
              <li data-bucket="measure" data-why="Blinded lab staff cannot let the group affect the HbA1c result. That is a good sign.">In Study A, the lab staff measuring HbA1c did not know the groups.</li>
              <li data-bucket="report" data-why="Reporting a different time point from the registered primary outcome may mean the best-looking result was chosen.">Study F's protocol named 6-month HbA1c as primary, but the paper reports only 12 months.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a draft RoB 2 appraisal of the made-up Study F, with quotes for every judgement. You and a second reviewer make the final decision.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a methods tutor helping [two junior doctors in India] appraise trials for a review. The text below is made up for training. Replace it with text from a real trial you are allowed to use.

        [Study F (made-up): "Patients were randomly allocated to automated SMS reminders (150) or usual care (150) in 4 public clinics in Mexico. HbA1c at 12 months fell by 0.7 points with SMS and 0.2 with usual care (difference -0.5; 95% CI -0.8 to -0.2). Funding: [SMS platform company]. Two authors are employees of the company." Registry entry: "Primary outcome: HbA1c at 6 months."]

        Tasks:
        1. Go through the 5 Cochrane RoB 2 domains. For each: quote the relevant text or write "Not reported", suggest low risk, some concerns or high risk, and give one reason.
        2. Suggest an overall judgement, using the rule that any high-risk domain makes the trial high risk.
        3. List the questions we should ask the authors or check in the protocol.
        4. Note funding and conflicts of interest separately.

        Mark everything "draft for human reviewers". Do not cite any real papers.</pre>
            <ul class="ai-try-checks">
              <li>It flags the unclear randomisation method in the first domain.</li>
              <li>It spots the switch from a 6-month to a 12-month outcome as possible selective reporting.</li>
              <li>It writes "Not reported" where the text is silent, instead of guessing.</li>
              <li>It keeps funding separate from the five domains, and cites no real papers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A big effect from a weak study is weaker evidence than a small effect from a strong one. Look for bias, confounding and small samples, and use tools like RoB 2 to be systematic. AI can find the relevant sentences, but two human reviewers make and explain the judgement.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Understanding Key Statistics</h1>
        </div>
        <p class="lc-lead">Every trial result comes with a few key numbers. You need to read them correctly before you trust a paper or an AI summary. In this lesson you will learn what a p-value and a 95% confidence interval really mean. You will also learn the difference between relative and absolute risk, and how to work out the NNT (number needed to treat). You will work through made-up numbers step by step, and check them in a spreadsheet. AI often explains these ideas with confidence and gets them wrong, so you must be able to check it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A forest-style chart of HbA1c differences with 95% confidence intervals for made-up Studies A, B, C, D and F. A vertical line marks zero, meaning no difference. Study D's interval crosses zero, so it is not statistically significant. Study C's interval just touches zero. The others lie fully on the side that favours messages.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="26" font-weight="700" fill="#9b99b8" font-size="12">Study (made-up)</text>
              <text x="560" y="26" font-weight="700" fill="#9b99b8" font-size="12">Difference (95% CI)</text>
              <line x1="150" y1="40" x2="540" y2="40" stroke="#27274e" stroke-width="1"/>
              <line x1="450" y1="44" x2="450" y2="256" stroke="#9b99b8" stroke-width="1.5"/>
              <line x1="150" y1="256" x2="540" y2="256" stroke="#9b99b8" stroke-width="1"/>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="150" y="274">−1.0</text>
                <text x="300" y="274">−0.5</text>
                <text x="450" y="274">0</text>
                <text x="540" y="274">+0.3</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1">
                <line x1="150" y1="256" x2="150" y2="261"/>
                <line x1="300" y1="256" x2="300" y2="261"/>
                <line x1="540" y1="256" x2="540" y2="261"/>
              </g>
              <text x="20" y="72">Study A</text>
              <line x1="240" y1="68" x2="360" y2="68" stroke="#10b981" stroke-width="3"/>
              <rect x="294" y="62" width="12" height="12" fill="#10b981"/>
              <text x="560" y="72">−0.5 (−0.7 to −0.3)</text>
              <text x="20" y="112">Study B</text>
              <line x1="180" y1="108" x2="420" y2="108" stroke="#ec4899" stroke-width="3"/>
              <rect x="294" y="102" width="12" height="12" fill="#ec4899"/>
              <text x="560" y="112">−0.5 (−0.9 to −0.1)</text>
              <text x="20" y="152">Study C</text>
              <line x1="330" y1="148" x2="450" y2="148" stroke="#f59e0b" stroke-width="3"/>
              <rect x="384" y="142" width="12" height="12" fill="#f59e0b"/>
              <text x="560" y="152">−0.2 (−0.4 to 0.0)</text>
              <text x="20" y="192">Study D</text>
              <line x1="330" y1="188" x2="510" y2="188" stroke="#3b82f6" stroke-width="3"/>
              <rect x="414" y="182" width="12" height="12" fill="#3b82f6"/>
              <text x="560" y="192">−0.1 (−0.4 to 0.2)</text>
              <text x="20" y="232">Study F</text>
              <line x1="210" y1="228" x2="390" y2="228" stroke="#8b5cf6" stroke-width="3"/>
              <rect x="294" y="222" width="12" height="12" fill="#8b5cf6"/>
              <text x="560" y="232">−0.5 (−0.8 to −0.2)</text>
              <g font-size="12" fill="#9b99b8" text-anchor="middle">
                <text x="300" y="296">Favours messages</text>
                <text x="495" y="296">Favours usual care</text>
                <text x="380" y="320">Square = best estimate. Line = 95% CI. Crossing 0 means "not significant".</text>
              </g>
            </g>
          </svg>
          <figcaption>HbA1c differences (percentage points) in the five made-up trials. Study D's interval crosses zero; Study C's just touches it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>p-values and 95% confidence intervals, in plain words</h3>
          <ul class="lc-list">
            <li><strong>p-value:</strong> if there were truly no difference, how often would chance alone give a result this big or bigger? A small p-value (often below 0.05) means chance alone is an unlikely explanation. It is <em>not</em> the chance that the treatment works.</li>
            <li><strong>95% CI</strong> (confidence interval): the range of true effects that fit the data well. A narrow interval means a precise estimate. A wide interval means the study was too small to be sure.</li>
            <li><strong>How they connect:</strong> if the 95% CI for a difference does not include 0, the p-value is below 0.05. If it includes 0, the p-value is 0.05 or more.</li>
            <li><strong>Statistical is not clinical.</strong> A tiny effect can have a small p-value in a huge trial. Always ask: is the size of the effect big enough to matter to patients?</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Study (made-up)</th><th>Result</th><th>How to read it</th></tr></thead>
            <tbody>
              <tr><td>Study A</td><td>−0.5 (95% CI −0.7 to −0.3)</td><td>Clear benefit. The true effect is likely between 0.3 and 0.7 points.</td></tr>
              <tr><td>Study C</td><td>−0.2 (95% CI −0.4 to 0.0)</td><td>Borderline. The interval reaches 0, so a very small or no effect fits the data.</td></tr>
              <tr><td>Study D</td><td>−0.1 (95% CI −0.4 to 0.2)</td><td>Not significant. But the interval is wide: it fits a useful benefit and a small harm. This is "not proven", not "no effect".</td></tr>
            </tbody>
          </table>
          <p>A common AI mistake is to write "Study D showed that text messages do not work." That is wrong. A small study with a wide interval cannot show that.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: relative risk, absolute risk and NNT</h3>
          <p>Imagine Study A (made-up) also reports how many patients reached the target of HbA1c under 7% at 12 months. These extra numbers are <strong>made up for this lesson</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Reached HbA1c under 7%</th><th>Total</th><th>Share</th></tr></thead>
            <tbody>
              <tr><td>SMS reminders</td><td>60</td><td>200</td><td>60 ÷ 200 = 0.30 (30%)</td></tr>
              <tr><td>Usual care</td><td>40</td><td>200</td><td>40 ÷ 200 = 0.20 (20%)</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Absolute difference</strong> (the plain gap between the two shares): 30% − 20% = <strong>10 percentage points</strong>. The paper's 95% CI (made-up) is about 1.6 to 18.4 points, and p is about 0.02.</li>
            <li><strong>Relative risk</strong> (RR: one share divided by the other): 0.30 ÷ 0.20 = <strong>1.5</strong>. Patients with SMS were 1.5 times as likely to reach the target, or "50% more likely".</li>
            <li><strong>NNT</strong> (number needed to treat: how many patients need the programme for one extra patient to benefit): 1 ÷ 0.10 = <strong>10</strong>. Using the CI, the NNT could be anywhere from about 6 to 64. Always round an NNT up to a whole patient.</li>
          </ul>
          <p><strong>Why absolute numbers matter.</strong> Now a second made-up result, from Study C. Diabetes-related emergency visits happened in 12 of 600 patients (2.0%) with usual care and 6 of 600 (1.0%) with SMS.</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Working</th><th>Answer</th></tr></thead>
            <tbody>
              <tr><td>Relative risk</td><td>0.010 ÷ 0.020</td><td>0.5</td></tr>
              <tr><td>Relative risk reduction (RRR)</td><td>1 − 0.5</td><td>50%: "halves the risk"</td></tr>
              <tr><td>Absolute risk reduction (ARR)</td><td>2.0% − 1.0%</td><td>1 percentage point</td></tr>
              <tr><td>NNT</td><td>1 ÷ 0.01</td><td>100 patients for one fewer emergency visit</td></tr>
            </tbody>
          </table>
          <p>"Halves the risk" sounds large. "One fewer visit for every 100 patients" gives the true size. Good reports give both. Also note: <strong>odds ratios</strong> are not the same as relative risks. In Study A the odds ratio is about 1.71, not 1.5. AI tools often mix the two up.</p>
        </div>
        <div class="lc-card">
          <h3>Check the maths yourself in a spreadsheet</h3>
          <p>Put the counts in a sheet. Then every number in the paper or the AI summary can be checked in seconds. This works in Excel and Google Sheets.</p>
          <pre><code>A1: Group      B1: Events   C1: Total   D1: Share
        A2: SMS        B2: 60       C2: 200     D2: =B2/C2
        A3: Usual care B3: 40       C3: 200     D3: =B3/C3

        Absolute difference:  =D2-D3        (0.10)
        Relative risk:        =D2/D3        (1.5)
        NNT:                  =1/ABS(D2-D3)   (10; round up)</code></pre>
          <pre><code>Weak prompt:
        Explain the statistics in this paper.

        Better prompt:
        Here are the counts from a trial: [60/200 vs 40/200].
        Show the working, step by step, for the absolute
        difference, the relative risk and the NNT. Explain each
        in one plain sentence for a patient. Do not calculate a
        p-value or CI yourself; say they must come from the
        paper or a statistician.</code></pre>
          <p>Chat AI tools can make arithmetic slips. Always re-do the sums in your spreadsheet. For p-values, confidence intervals and anything you will publish, use the paper's own figures or ask a statistician.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check an AI explanation</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha's prompt">Dr Neha Kulkarni pastes the made-up Study A counts (60/200 vs 40/200) into an AI assistant. She asks for the relative risk, absolute difference and NNT.</li>
              <li data-kind="answer" data-label="AI reply">"SMS reminders increased the chance of reaching target by 50%. The absolute difference is 10%. The NNT is 5. The p-value of 0.02 means there is a 98% chance the reminders work."</li>
              <li data-kind="tool" data-label="Spreadsheet">Neha types the counts into Google Sheets and adds the formulas =D2/D3, =D2-D3 and =1/ABS(D2-D3).</li>
              <li data-kind="result" data-label="Sheet shows">Relative risk 1.5, absolute difference 0.10, NNT 10.</li>
              <li data-kind="warn" data-label="Two errors">The NNT is 10, not 5. And a p-value is not the chance that the treatment works. "10%" should also be written as "10 percentage points".</li>
              <li data-kind="check" data-label="Final wording">Neha writes: "Reached target: 30% with SMS vs 20% with usual care. About 10 patients need SMS for one extra to reach target (made-up data)." Dr Farida Shaikh reviews it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a set of made-up trial counts and ask for the key statistics with full working. Then check every sum in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient statistics tutor for [nurses and junior doctors in India]. All numbers below are made up for training.

        Trial counts: [SMS reminder group: 60 of 200 reached HbA1c under 7% at 12 months. Usual care group: 40 of 200.]
        Second result: [emergency visits: 6 of 600 with SMS, 12 of 600 with usual care.]

        Please:
        1. For each result, show step-by-step working for: each group's share, the absolute difference (in percentage points), the relative risk, the relative risk reduction or increase, and the NNT (rounded up).
        2. Explain each number in one plain sentence a patient could understand.
        3. Explain why "halves the risk" and "1 in 100" can describe the same result.
        4. Say what a p-value and a 95% CI mean, and one common wrong meaning for each.
        5. Do not invent a p-value or CI. Say these must come from the paper.

        Use simple English and a table.</pre>
            <ul class="ai-try-checks">
              <li>Shares are 30% and 20%; difference 10 percentage points; RR 1.5; NNT 10.</li>
              <li>Emergency visits: RR 0.5, RRR 50%, ARR 1 percentage point, NNT 100.</li>
              <li>It does not say a p-value is the chance the treatment works.</li>
              <li>You re-do every sum in a spreadsheet before you use it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Always ask for the absolute numbers. A relative risk tells you "how much more", but the absolute difference and the NNT tell you "how many patients". A 95% CI that crosses zero means "not proven", not "no effect". Check every sum yourself in a spreadsheet.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Systematic Reviews with AI Help</h1>
        </div>
        <p class="lc-lead">A systematic review collects all the studies on one question, using a fixed and written method. Anyone could repeat the same steps and get the same studies. In this lesson you will follow Dr Neha Kulkarni's mini review at the made-up Tarang Multispeciality Hospital. You will learn to write a protocol, register it, screen records with two reviewers, extract data and draw a PRISMA flow diagram whose numbers add up. You will also see where AI saves time, and where it must never replace a human reviewer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 470" role="img" aria-label="A PRISMA 2020 style flow diagram with made-up counts. 344 records found; 104 duplicates removed; 240 screened by title and abstract; 222 excluded; 18 full texts sought; 1 not retrieved; 17 full texts assessed; 12 excluded with reasons; 5 randomised trials included with 2,320 participants.">
            <defs><marker id="mr10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="30" y="20" width="400" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="230" y="45" font-weight="700">Records found: 344</text>
              <text x="230" y="67" font-size="11" fill="#9b99b8">PubMed 186, CENTRAL 97, Scholar 40, registries 21</text>
              <rect x="30" y="112" width="400" height="50" rx="10" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="230" y="142" font-weight="700">Screened (title and abstract): 240</text>
              <rect x="30" y="192" width="400" height="50" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="230" y="222" font-weight="700">Full texts sought: 18</text>
              <rect x="30" y="272" width="400" height="50" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="230" y="302" font-weight="700">Full texts assessed: 17</text>
              <rect x="30" y="392" width="400" height="56" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="230" y="416" font-weight="700">Included: 5 RCTs</text>
              <text x="230" y="436" font-size="12" fill="#9b99b8">Studies A, B, C, D, F: 2,320 people</text>
              <rect x="480" y="26" width="260" height="50" rx="10" fill="#27274e" stroke="#9b99b8" stroke-width="1.5"/>
              <text x="610" y="56">Duplicates removed: 104</text>
              <rect x="480" y="112" width="260" height="50" rx="10" fill="#27274e" stroke="#9b99b8" stroke-width="1.5"/>
              <text x="610" y="142">Excluded: 222</text>
              <rect x="480" y="192" width="260" height="50" rx="10" fill="#27274e" stroke="#9b99b8" stroke-width="1.5"/>
              <text x="610" y="222">Not retrieved: 1</text>
              <rect x="480" y="262" width="260" height="140" rx="10" fill="#27274e" stroke="#ec4899" stroke-width="1.5"/>
              <text x="610" y="286" font-weight="700">Excluded: 12</text>
              <g font-size="12" fill="#9b99b8">
                <text x="610" y="308">No control / not randomised: 4</text>
                <text x="610" y="326">Wrong population: 2</text>
                <text x="610" y="344">Not text or WhatsApp: 2</text>
                <text x="610" y="362">No HbA1c at 6+ months: 2</text>
                <text x="610" y="380">Ongoing, no results: 2</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr10a)">
                <line x1="230" y1="82" x2="230" y2="108"/>
                <line x1="230" y1="162" x2="230" y2="188"/>
                <line x1="230" y1="242" x2="230" y2="268"/>
                <line x1="230" y1="322" x2="230" y2="388"/>
                <line x1="430" y1="51" x2="476" y2="51"/>
                <line x1="430" y1="137" x2="476" y2="137"/>
                <line x1="430" y1="217" x2="476" y2="217"/>
                <line x1="430" y1="297" x2="476" y2="297"/>
              </g>
              <text x="242" y="362" font-size="11" fill="#9b99b8" text-anchor="start">Study E excluded at full text</text>
              <text x="380" y="465" font-size="11" fill="#9b99b8">All counts made up for teaching. Search date: September 2026.</text>
            </g>
          </svg>
          <figcaption>The made-up PRISMA flow for Neha's review. Each box equals the box above it minus the box to its right.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with a protocol, and register it</h3>
          <p>A <strong>protocol</strong> is the written plan for your review. You write it <em>before</em> you look at the results. This stops you from changing the rules later to get the answer you hoped for. A good protocol covers:</p>
          <ul class="lc-list">
            <li>The question and the PICO: adults with type 2 diabetes, text or WhatsApp reminders, usual care, change in HbA1c at 6 months or later.</li>
            <li>Eligibility rules: randomised trials only, with a usual-care group. This is why Study E (made-up, no comparison group) is excluded.</li>
            <li>The databases and the full search strategy, with the search date.</li>
            <li>How screening, data extraction and risk-of-bias checks will be done, and by whom.</li>
            <li>How results will be combined: in words, in a table, or with a meta-analysis (a statistical method that combines results; plan it with a statistician).</li>
          </ul>
          <p><strong>PROSPERO</strong> is a free international register of systematic review protocols with a health outcome. Registering shows your plan in public, with a date. It also helps others avoid repeating the same review. Register as early as you can, ideally before screening starts. PROSPERO does not accept reviews once data extraction is finished. Rules change, so check PROSPERO's current guidance. The PRISMA-P checklist lists what a protocol should include.</p>
        </div>
        <div class="lc-card">
          <h3>Screening with two reviewers, and where AI fits</h3>
          <p><strong>Screening</strong> means deciding which records meet your eligibility rules. It has two rounds: first titles and abstracts, then full texts. Two reviewers screen every record <strong>independently</strong> (without seeing each other's decisions). Then they compare. A third person settles any disagreement.</p>
          <p>In Neha's review, Neha and a fellow resident screened the 240 records. They disagreed on 18 (made-up), so they agreed on 222 of 240, which is 92.5%. They discussed each one. Dr Farida Shaikh decided the few they could not agree on.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>How AI can help</th><th>What a person must do</th></tr></thead>
            <tbody>
              <tr><td>Protocol</td><td>Suggest headings, check that PICO and eligibility rules match</td><td>Make every decision; agree it with the guide</td></tr>
              <tr><td>Title and abstract screening</td><td>Some screening tools can rank records by likely relevance. A chat AI can apply your rules and give a reason.</td><td>Two humans still screen. Treat AI as an extra check, and report its use in your methods.</td></tr>
              <tr><td>Full-text screening</td><td>Find the sentences about design and comparison group</td><td>Decide, and record one main reason for each exclusion</td></tr>
              <tr><td>Data extraction</td><td>Fill a draft extraction form with a quote for each number</td><td>A second reviewer checks every number against the paper</td></tr>
              <tr><td>PRISMA flow</td><td>Check that the counts add up</td><td>Keep the real counts from your screening records</td></tr>
            </tbody>
          </table>
          <p>Screening tools such as Rayyan and Covidence help two reviewers work blind to each other. Some have AI features. Check each tool's current help pages and your institution's rules on uploading records.</p>
        </div>
        <div class="lc-card">
          <h3>Data extraction and a PRISMA flow that adds up</h3>
          <p><strong>Data extraction</strong> means copying the same facts from each included study into one form. Test the form on one or two studies first. Here is part of Neha's form, with the made-up studies:</p>
          <table class="lc-table">
            <thead><tr><th>Study (made-up)</th><th>Design</th><th>Randomised</th><th>Follow-up</th><th>HbA1c difference (95% CI)</th><th>Risk of bias</th></tr></thead>
            <tbody>
              <tr><td>A</td><td>RCT, India</td><td>400</td><td>12 months</td><td>−0.5 (−0.7 to −0.3)</td><td>Low</td></tr>
              <tr><td>B</td><td>RCT, Sri Lanka</td><td>240</td><td>6 months</td><td>−0.5 (−0.9 to −0.1)</td><td>High</td></tr>
              <tr><td>C</td><td>Cluster RCT, Tamil Nadu</td><td>1,200</td><td>12 months</td><td>−0.2 (−0.4 to 0.0)</td><td>Low to some concerns</td></tr>
              <tr><td>D</td><td>RCT, UK</td><td>180</td><td>6 months</td><td>−0.1 (−0.4 to 0.2)</td><td>Low, imprecise</td></tr>
              <tr><td>F</td><td>RCT, Mexico</td><td>300</td><td>12 months</td><td>−0.5 (−0.8 to −0.2)</td><td>Some concerns to high</td></tr>
            </tbody>
          </table>
          <p>Total randomised: 400 + 240 + 1,200 + 180 + 300 = 2,320. Using the trials with fewer problems, the likely benefit is small to moderate: about 0.2 to 0.5 percentage points of HbA1c.</p>
          <p><strong>Check that the flow adds up.</strong> Every step should balance. Readers and peer reviewers check this.</p>
          <pre><code>186 + 97 + 40 + 21 = 344 records found
        344 - 104 duplicates  = 240 screened
        240 - 222 excluded    = 18 full texts sought
        18 - 1 not retrieved  = 17 full texts assessed
        4 + 2 + 2 + 2 + 2     = 12 excluded at full text
        17 - 12               = 5 studies included</code></pre>
          <p>AI can check this arithmetic for you. But it must never supply the counts. The counts come from your own screening records.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the review steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Neha's systematic review steps in the correct order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the protocol with the PICO and eligibility rules</li>
              <li data-order="2">Register the protocol on PROSPERO</li>
              <li data-order="3">Run the searches and remove duplicates</li>
              <li data-order="4">Two reviewers screen titles and abstracts independently</li>
              <li data-order="5">Two reviewers assess full texts and record exclusion reasons</li>
              <li data-order="6">Extract data and check risk of bias for included studies</li>
              <li data-order="7">Draw the PRISMA flow diagram and write up the results</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a review protocol from your PICO, with gaps marked for you to fill. You and your guide make every final decision.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a systematic review methods tutor helping [a junior resident at a hospital in India] draft a review protocol.

        My question: [In adults with type 2 diabetes, do text or WhatsApp reminder programmes lower HbA1c at 6 months or more, compared with usual care?]
        Study types: [randomised controlled trials only]
        Databases: [PubMed, Cochrane CENTRAL, Google Scholar, CTRI, ClinicalTrials.gov]
        Team: [2 reviewers, 1 senior guide to settle disagreements]

        Please draft a protocol with these headings: Background (2 lines, no references) | Objectives | PICO table | Inclusion and exclusion rules | Information sources | Screening process | Data extraction items | Risk-of-bias tool | Synthesis plan | Planned PRISMA flow boxes.

        Rules:
        - Do not add any references or statistics.
        - Mark anything I must decide with [TO DECIDE].
        - Say where AI tools may be used, and that two humans still screen and extract.
        - End with 5 questions I should discuss with my guide and a statistician.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>It adds no references, study names or statistics.</li>
              <li>Exclusion rules would remove a study with no usual-care group.</li>
              <li>It plans two independent reviewers and a third person for disagreements.</li>
              <li>Open choices are marked [TO DECIDE] for you and your guide.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A systematic review is only as good as its written method. Write and register the protocol first, use two independent reviewers, and keep a record of every decision. AI can speed up drafting, screening checks and extraction, but humans make the decisions, and every PRISMA count comes from your own records.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Working with Research Data</h1>
        </div>
        <p class="lc-lead">Good research data starts before the first patient is enrolled. You need a clear spreadsheet layout, a data dictionary, a way to remove identities, and a written analysis plan. In this lesson you will plan the data for a made-up pilot study at Tarang Multispeciality Hospital. You will see how AI can draft the dictionary and the plan without ever seeing patient data. A statistician and your ethics committee still check the final version.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Two lanes. Top lane, before any data: data dictionary, analysis plan and ethics approval, where AI can help. Bottom lane, after data collection: case form, coded sheet, clean and check, and analysis. A locked key file sits under the coded sheet and links study IDs to hospital IDs.">
            <defs><marker id="mr11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="10" y="28" text-anchor="start" font-weight="700" fill="#6ee7b7">Before any data: plan it (AI can help)</text>
              <rect x="10" y="40" width="230" height="54" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="125" y="63" font-weight="700">Data dictionary</text>
              <text x="125" y="82" font-size="11" fill="#9b99b8">names, units, codes</text>
              <rect x="265" y="40" width="230" height="54" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="63" font-weight="700">Analysis plan</text>
              <text x="380" y="82" font-size="11" fill="#9b99b8">outcome, method, missing data</text>
              <rect x="520" y="40" width="230" height="54" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="635" y="63" font-weight="700">Ethics approval</text>
              <text x="635" y="82" font-size="11" fill="#9b99b8">IEC approves the plan</text>
              <text x="10" y="148" text-anchor="start" font-weight="700" fill="#fca5a5">After data collection: no public AI tools</text>
              <rect x="10" y="162" width="165" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="92" y="186" font-weight="700">Case form</text>
              <text x="92" y="205" font-size="11" fill="#9b99b8">paper or HIS</text>
              <rect x="203" y="162" width="165" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="285" y="186" font-weight="700">Coded sheet</text>
              <text x="285" y="205" font-size="11" fill="#9b99b8">study ID only</text>
              <rect x="396" y="162" width="165" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="478" y="186" font-weight="700">Clean + check</text>
              <text x="478" y="205" font-size="11" fill="#9b99b8">ranges, blanks</text>
              <rect x="589" y="162" width="165" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="671" y="186" font-weight="700">Analysis</text>
              <text x="671" y="205" font-size="11" fill="#9b99b8">with a statistician</text>
              <rect x="203" y="250" width="165" height="44" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="285" y="277" font-weight="700">Key file (locked)</text>
              <text x="384" y="270" text-anchor="start" font-size="12" fill="#9b99b8">Links study ID to UHID.</text>
              <text x="384" y="287" text-anchor="start" font-size="12" fill="#9b99b8">Kept by the lead researcher only.</text>
              <line x1="285" y1="220" x2="285" y2="248" stroke="#ec4899" stroke-width="1.5" stroke-dasharray="4 4"/>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr11a)">
                <line x1="240" y1="67" x2="261" y2="67"/>
                <line x1="495" y1="67" x2="516" y2="67"/>
                <line x1="175" y1="190" x2="199" y2="190"/>
                <line x1="368" y1="190" x2="392" y2="190"/>
                <line x1="561" y1="190" x2="585" y2="190"/>
                <line x1="380" y1="96" x2="655" y2="158"/>
              </g>
            </g>
          </svg>
          <figcaption>Plan the data before you collect it. AI can help with the plan. After collection, the coded data stays in approved tools, and the key file stays locked.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The made-up pilot and its spreadsheet</h3>
          <p>After her evidence review, Dr Neha Kulkarni plans a small local study with her guide, Dr Farida Shaikh. It is the made-up <strong>Tarang WhatsApp Reminder Pilot</strong>: 120 adults with type 2 diabetes, 60 get WhatsApp reminders and 60 get usual care, for 6 months. A <strong>pilot</strong> is a small trial run. It tests whether a bigger study is possible: can you recruit, keep patients, and collect clean data?</p>
          <p>Good research spreadsheets follow a few simple rules:</p>
          <ul class="lc-list">
            <li><strong>One row per patient</strong> (or per patient visit), and <strong>one column per variable</strong>.</li>
            <li><strong>Short column names with no spaces</strong>, such as <code>hba1c_0m</code> and <code>hba1c_6m</code>.</li>
            <li><strong>Numbers only in number columns.</strong> Write <code>8.6</code>, not <code>8.6%</code> or <code>"around 8"</code>. Put units in the dictionary.</li>
            <li><strong>Codes, not free text</strong>, for groups: <code>W</code> for WhatsApp and <code>U</code> for usual care.</li>
            <li><strong>Blank means missing.</strong> Never type 0 for a missing HbA1c. Record the reason in a separate column.</li>
            <li><strong>No colours as data.</strong> A red cell means nothing to a statistician. Add a column instead.</li>
          </ul>
          <p>Here are the first rows of Neha's practice sheet. Every value is made up.</p>
          <table class="lc-table">
            <thead><tr><th>study_id</th><th>arm</th><th>age_y</th><th>sex</th><th>hba1c_0m</th><th>hba1c_6m</th><th>fu_status</th></tr></thead>
            <tbody>
              <tr><td>T001</td><td>W</td><td>52</td><td>F</td><td>8.9</td><td>8.1</td><td>1</td></tr>
              <tr><td>T002</td><td>U</td><td>61</td><td>M</td><td>8.2</td><td>8.0</td><td>1</td></tr>
              <tr><td>T003</td><td>W</td><td>47</td><td>M</td><td>86</td><td>8.0</td><td>1</td></tr>
              <tr><td>T004</td><td>U</td><td>58</td><td>F</td><td>8.6</td><td></td><td>2</td></tr>
            </tbody>
          </table>
          <p>Can you see the problem? T003 has a baseline HbA1c of 86. That is a typing error for 8.6. T004 has no 6-month value because the patient moved away (status 2). Simple spreadsheet formulas catch these problems:</p>
          <pre><code>Flag impossible HbA1c values (column E, row 2):
        =IF(OR(E2&lt;4, E2&gt;18), "CHECK", "")

        Change in HbA1c for one patient (6 months minus baseline):
        =IF(F2="", "", F2-E2)

        Count missing 6-month values:
        =COUNTBLANK(F2:F121)</code></pre>
          <p>The range 4 to 18 is only a rough check that Neha agreed with her guide. You can also use <strong>Data validation</strong> in Excel or Google Sheets to block wrong entries as they are typed. After you fix a value, note the change and the reason in a change log.</p>
        </div>
        <div class="lc-card">
          <h3>The data dictionary</h3>
          <p>A <strong>data dictionary</strong> is a table that explains every column: its name, meaning, unit, allowed values and source. It lets another person understand your data without asking you. AI is very good at drafting one, because it needs only your study plan, not your data.</p>
          <table class="lc-table">
            <thead><tr><th>Variable</th><th>Meaning</th><th>Type and unit</th><th>Allowed values</th><th>Source</th></tr></thead>
            <tbody>
              <tr><td><code>study_id</code></td><td>Study number</td><td>Text</td><td>T001 to T120</td><td>Enrolment log</td></tr>
              <tr><td><code>arm</code></td><td>Study group</td><td>Code</td><td>W = WhatsApp, U = usual care</td><td>Randomisation list</td></tr>
              <tr><td><code>age_y</code></td><td>Age at enrolment</td><td>Whole number, years</td><td>18 to 90</td><td>Case form</td></tr>
              <tr><td><code>hba1c_0m</code></td><td>HbA1c at start</td><td>Number, %, 1 decimal</td><td>7.5 to 18 (entry rule)</td><td>Lab report</td></tr>
              <tr><td><code>hba1c_6m</code></td><td>HbA1c at 6 months</td><td>Number, %, 1 decimal</td><td>4 to 18; blank if missing</td><td>Lab report</td></tr>
              <tr><td><code>fu_status</code></td><td>Follow-up status</td><td>Code</td><td>1 = completed, 2 = lost, 3 = withdrew, 4 = died</td><td>Case form</td></tr>
            </tbody>
          </table>
          <p>Check what AI adds. It may suggest variables you cannot collect, or units your lab does not use. Your lab report format decides the unit, not the AI.</p>
        </div>
        <div class="lc-card">
          <h3>De-identification: keeping patients safe</h3>
          <p><strong>De-identification</strong> means removing or changing details that could show who a patient is. There are two common levels:</p>
          <ul class="lc-list">
            <li><strong>Coded (pseudonymised) data:</strong> names and hospital numbers are replaced by a study ID such as T001. A separate <strong>key file</strong> links each study ID to the UHID (the hospital ID). Only the lead researcher can open it.</li>
            <li><strong>Anonymised data:</strong> no one can link the data back to a person, even with a key. This is hard to achieve in small studies.</li>
          </ul>
          <p>Direct identifiers, such as the name, UHID, ABHA number and phone number, must leave the analysis file. Indirect identifiers need care too. An exact date of birth, a small village and a rare job can point to one person. So change them to less exact forms: age in years, district, or months since enrolment.</p>
          <p>In Neha's pilot, the WhatsApp messages need phone numbers. So the phone list stays with the message-sending team under Vikram, the operations manager. It never goes into the research sheet. In the US, HIPAA gives a list of 18 identifier types for one de-identification method. In India, the DPDP Act 2023 and its Rules also apply to personal data. Their duties start in stages, so check the current position. Your ethics committee and data protection officer decide what is enough. This is general education, not legal advice.</p>
          <p><strong>AI and data:</strong> never upload the patient spreadsheet to a public AI tool, even when it is coded. Give AI your dictionary, your plan, or a few rows of fake (dummy) data. Real analysis happens in tools your hospital has approved.</p>
        </div>
        <div class="lc-card">
          <h3>An analysis plan with AI help</h3>
          <p>An <strong>analysis plan</strong> says how you will analyse the data. Write it before you see any results. If you decide later, you may pick the analysis that gives the nicest answer, even without meaning to. Journals and ethics committees may ask for it.</p>
          <pre><code>Weak prompt:
        Analyse my diabetes study data. [pastes the patient spreadsheet]

        Better prompt:
        I am planning a pilot RCT (made-up details below). Do not analyse
        any data. Draft an analysis plan with these headings:
        aims, primary outcome, analysis population, main comparison,
        secondary outcomes, missing data, subgroups, what we will NOT test.
        Mark every statistical method "to confirm with statistician".</code></pre>
          <p>A good plan for Neha's pilot would include these points:</p>
          <ul class="lc-list">
            <li><strong>Feasibility first:</strong> share of eligible patients who join, share who complete 6 months, share of messages delivered, and share of missing values.</li>
            <li><strong>HbA1c change:</strong> reported for each group with a 95% confidence interval (a range that likely holds the true value). A pilot of 120 is too small to prove a benefit, so the plan should not promise one.</li>
            <li><strong>Analysis population:</strong> intention to treat (everyone analysed in the group they were randomised to).</li>
            <li><strong>Missing data:</strong> how many are missing in each group and why. The statistician chooses the method.</li>
          </ul>
          <p>AI can draft this plan in minutes. But the statistician confirms the methods, and Dr Farida Shaikh and the ethics committee approve the plan.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what happens to each detail?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Neha is setting up the analysis file for the made-up Tarang pilot. Sort each detail from the patient's case form.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="remove" data-label="Remove from the file"></div>
              <div data-sorter-target="bucket" data-bucket="change" data-label="Keep, but less exact"></div>
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep as it is"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="remove" data-why="A name is a direct identifier. The study ID T001 takes its place.">Patient name: Sunita Patil (made-up)</li>
              <li data-bucket="remove" data-why="The UHID links straight to the hospital record. It belongs only in the locked key file.">UHID (hospital ID) number</li>
              <li data-bucket="remove" data-why="The messaging team needs the number, but the research file does not. It stays in a separate list.">Mobile number used to send the WhatsApp messages</li>
              <li data-bucket="change" data-why="An exact birth date can help identify a person. Age in whole years is enough for the analysis.">Exact date of birth</li>
              <li data-bucket="change" data-why="A full address and pincode can point to one home. District or urban/rural is enough.">Home address with pincode</li>
              <li data-bucket="change" data-why="Exact visit dates can identify people. Months since enrolment keeps the timing you need.">Exact date of the 6-month clinic visit</li>
              <li data-bucket="keep" data-why="This is the main outcome data. It cannot identify anyone on its own.">Baseline HbA1c of 8.9%</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a data dictionary, a de-identification plan and an analysis plan for a small study. You give it the study plan only, never patient data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clinical research data manager helping [a junior resident at a hospital in India]. You will not see any patient data.

        Study plan (made-up): a pilot randomised trial at [Tarang Multispeciality Hospital]. [120] adults with type 2 diabetes and HbA1c 7.5% or more. Group W gets [WhatsApp medicine and appointment reminders]; group U gets usual care. Follow-up: [6] months. Main outcome: change in HbA1c. Other outcomes: [missed clinic visits, low-sugar episodes].

        Please give:
        1. A data dictionary table: variable name (short, no spaces) | meaning | type and unit | allowed values | source.
        2. A list of identifiers to remove, and details to make less exact (for example date of birth to age).
        3. Three spreadsheet formulas to flag impossible or missing values.
        4. A one-page analysis plan draft. Put feasibility first. Mark every statistical method "confirm with statistician".

        Use simple English. Do not invent study results.</pre>
            <ul class="ai-try-checks">
              <li>Every variable has a unit and a clear rule for missing values.</li>
              <li>Name, UHID, phone number and ABHA number are removed, not just hidden.</li>
              <li>The formulas work when you test them on 3 rows of dummy data.</li>
              <li>The plan does not promise the pilot will prove a benefit.</li>
              <li>Statistical methods are marked for the statistician to confirm.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clean research data is planned, not rescued. Write the data dictionary and the analysis plan before the first patient joins. AI can draft both from your study plan alone. Keep identities in a locked key file, and never put patient data into a public AI tool.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Writing a Research Paper</h1>
        </div>
        <p class="lc-lead">Most medical papers follow one structure: IMRaD (Introduction, Methods, Results and Discussion). If you know what goes in each part, writing becomes much easier. In this lesson you will plan a paper section by section, use AI to improve language and structure, and keep the ideas your own. You will also learn how to avoid plagiarism and how to disclose AI use. Journals hold the authors responsible for every sentence, not the AI.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="The IMRaD structure as an hourglass: a wide Introduction, narrow Methods and Results, and a wide Discussion. Next to each section: the question it answers, what AI can help with, and what the author must do.">
            <defs><marker id="mr12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="190" y="24" font-weight="700">Section</text>
              <text x="570" y="24" font-weight="700">Question it answers, and who does what</text>
              <rect x="20" y="40" width="340" height="56" rx="8" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="190" y="73" font-weight="700">Introduction</text>
              <rect x="70" y="110" width="240" height="56" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="190" y="143" font-weight="700">Methods</text>
              <rect x="70" y="180" width="240" height="56" rx="8" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="190" y="213" font-weight="700">Results</text>
              <rect x="20" y="250" width="340" height="56" rx="8" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="190" y="283" font-weight="700">Discussion</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr12a)">
                <line x1="190" y1="96" x2="190" y2="107"/>
                <line x1="190" y1="166" x2="190" y2="177"/>
                <line x1="190" y1="236" x2="190" y2="247"/>
              </g>
              <rect x="390" y="40" width="360" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="570" y="63">Why did you do it?</text>
              <text x="570" y="83" font-size="11" fill="#9b99b8">AI: tighten the flow. You: the gap and the aim</text>
              <rect x="390" y="110" width="360" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="570" y="133">What did you do?</text>
              <text x="570" y="153" font-size="11" fill="#9b99b8">AI: check against PRISMA. You: the exact steps</text>
              <rect x="390" y="180" width="360" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="570" y="203">What did you find?</text>
              <text x="570" y="223" font-size="11" fill="#9b99b8">AI: fix wording only. You: every number</text>
              <rect x="390" y="250" width="360" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="570" y="273">What does it mean?</text>
              <text x="570" y="293" font-size="11" fill="#9b99b8">AI: suggest limitations. You: your own argument</text>
            </g>
          </svg>
          <figcaption>IMRaD starts broad, narrows to your own methods and results, then widens again to what they mean. AI helps with language; the ideas and numbers stay yours.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>IMRaD for Neha's review paper</h3>
          <p>Dr Neha Kulkarni wants to publish her mini evidence review from the made-up Tarang Multispeciality Hospital. It looked at text and WhatsApp reminders for adults with type 2 diabetes. Studies A to F in this course are all made up. This is what each part of her paper will hold.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it holds</th><th>Neha's content (made-up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Title and abstract</strong></td><td>The question, design and main finding, in brief</td><td>Written last, after the rest is final</td></tr>
              <tr><td><strong>Introduction</strong></td><td>What is known, the gap, and the aim, usually in 3 or 4 paragraphs</td><td>Many OPD patients have high HbA1c; message programmes are cheap; the aim of the review</td></tr>
              <tr><td><strong>Methods</strong></td><td>Enough detail for someone else to repeat the work</td><td>PICO, databases, the full search, search date, two reviewers, risk of bias tool</td></tr>
              <tr><td><strong>Results</strong></td><td>What you found, with no opinion</td><td>Flow of records, a table of the 5 included trials, differences from -0.1 to -0.5 points</td></tr>
              <tr><td><strong>Discussion</strong></td><td>Main finding, comparison, strengths, limitations, meaning for practice</td><td>A likely benefit of about 0.2 to 0.5 points; two trials had bias problems; a local pilot is reasonable</td></tr>
              <tr><td><strong>References</strong></td><td>Every source you used, in the journal's style</td><td>Only papers she has opened and read</td></tr>
            </tbody>
          </table>
          <p>Use a <strong>reporting guideline</strong>: a checklist of what to report for each study type. Reviews use PRISMA 2020, trials use CONSORT, and observational studies use STROBE. The EQUATOR Network website lists these guidelines. AI can compare your draft with a checklist and point out missing items. You then check each item yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Keep the ideas your own</h3>
          <p>If AI writes your paper from a blank page, the argument becomes the AI's argument. It will sound smooth but general. It may also add claims you never checked. A better way is to write your key messages first, in rough English, and then ask AI to help with language.</p>
          <p>Neha writes 5 key messages in bullet points before she opens any AI tool. For example: "The trials at lower risk of bias suggest a benefit of about 0.2 to 0.5 points." Then she drafts each section herself. Only then does she use AI.</p>
          <pre><code>Weak prompt:
        Write the Discussion section of my paper on WhatsApp reminders
        and HbA1c, with references.

        Better prompt:
        Below is my own draft Discussion paragraph. Improve grammar,
        clarity and flow for a medical journal. Rules:
        - Do not add new facts, numbers, claims or references.
        - Do not change any number.
        - If a sentence needs a citation, mark it [CITATION NEEDED].
        - After the text, list every change you made and why.
        [paste your paragraph]</code></pre>
          <p>The change list matters. It lets you accept or reject each edit. Read the final text aloud. If a sentence says something you do not believe, delete it.</p>
        </div>
        <div class="lc-card">
          <h3>Plagiarism and AI disclosure</h3>
          <p><strong>Plagiarism</strong> means using someone else's words, ideas, data or images without credit. Common forms:</p>
          <ul class="lc-list">
            <li><strong>Copying text</strong> without quotation marks and a citation.</li>
            <li><strong>Close paraphrase:</strong> changing a few words but keeping the other author's sentence pattern. Asking AI to "rewrite" a paragraph from another paper is still plagiarism.</li>
            <li><strong>Self-plagiarism:</strong> reusing large parts of your own published paper without saying so, or publishing the same results twice.</li>
            <li><strong>Image reuse:</strong> copying a figure without permission and credit.</li>
          </ul>
          <p>Many journals run submissions through a similarity checking service. It finds overlap with published text, but a person decides whether it is plagiarism. Tools that claim to detect AI-written text are not reliable. Do not trust them to judge your own or anyone else's work.</p>
          <p>The ICMJE recommendations say authors must check that AI-produced text and images contain no plagiarism. They also say AI use must be disclosed at submission, in the cover letter and in the right part of the paper. Not disclosing it may be treated as misconduct in some cases. Each journal adds its own rules, so read its instructions for authors. A made-up example:</p>
          <pre><code>Use of AI: The authors used [AI tool name] to improve the grammar
        and clarity of the Introduction and Discussion, and to compare the
        draft with the PRISMA 2020 checklist. The tool did not generate
        data, analyses or references. The authors reviewed all output and
        take full responsibility for the content.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Neha polishes her Discussion</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="thought" data-label="Plan first">Neha writes her 5 key messages and her own rough Discussion before she opens the hospital-approved AI assistant.</li>
              <li data-kind="user" data-label="Neha asks">She pastes one paragraph and asks for better grammar and flow. Her rules: no new facts, no number changes, mark missing citations, list every change.</li>
              <li data-kind="answer" data-label="AI replies">The AI returns a clearer paragraph and a list of 9 changes. Most are small grammar fixes and shorter sentences.</li>
              <li data-kind="warn" data-label="Number changed">In one sentence, "about 0.2 to 0.5 percentage points" has become "0.5 percentage points". That overstates the finding, so she restores her wording.</li>
              <li data-kind="warn" data-label="Claim added">A new sentence says messages "also reduce hospital admissions". None of her included trials reported this. She deletes it.</li>
              <li data-kind="check" data-label="Citations">Two sentences are marked [CITATION NEEDED]. She adds real papers she has read and checked in PubMed. She adds no reference suggested by AI.</li>
              <li data-kind="result" data-label="Final checks">Dr Farida Shaikh reads the draft. Neha writes the AI disclosure and keeps a note of the tool, the date and the task.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a paragraph you wrote, or use the made-up one below. Ask AI to improve the language only and to show every change.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a medical journal copy editor. You improve language only. You never add content.

        My draft paragraph (for [a review article in a diabetes journal]):
        "[In our review, five randomised trials was included. All of them showed HbA1c falling more with messages than usual care, the differences was from 0.1 to 0.5 percentage points. The three trials at lower risk of bias shows 0.5, 0.2 and 0.1 points. Messages are cheap and many patients in India use WhatsApp so this is very promising for all hospitals.]"

        Please:
        1. Rewrite it in clear, formal English for a medical journal. Keep my meaning.
        2. Do not add facts, numbers, claims or references. Do not change any number.
        3. If a claim goes beyond the data, mark it [TOO STRONG?]. If a sentence needs a source, mark it [CITATION NEEDED].
        4. Then list every change as: original | new | reason.
        5. Finally, give me 2 questions a peer reviewer might ask about this paragraph.

        Use British spelling.</pre>
            <ul class="ai-try-checks">
              <li>Every number (five, 0.1 to 0.5, and 0.5, 0.2 and 0.1) is unchanged.</li>
              <li>No new references or new facts appear in the text.</li>
              <li>"very promising for all hospitals" is flagged as too strong.</li>
              <li>The change list lets you accept or reject each edit.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Write your ideas first, then let AI polish the language. Tell it not to add facts, numbers or references, and ask for a list of every change. Check for plagiarism, disclose AI use as the journal asks, and remember that you sign the paper, so every sentence is yours.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Grants, Abstracts and Posters</h1>
        </div>
        <p class="lc-lead">One piece of research often needs three short documents. A conference abstract tells people what you found. A poster shows it on one page. A grant proposal asks for money for the next study. In this lesson you will write a 250-word structured abstract, plan the main parts of a grant proposal, and turn your abstract into a poster. AI helps you cut words and organise sections. You still check every number and follow each funder's and conference's rules.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="One research project in the centre, the mini evidence review and pilot idea, feeds three outputs: a 250-word structured abstract, a one-page poster and a grant proposal for the pilot. Each output shows its reader and its main rule.">
            <defs><marker id="mr13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="230" y="20" width="300" height="62" rx="10" fill="#27274e" stroke="#e11d48" stroke-width="2"/>
              <text x="380" y="46" font-weight="700">Your research (made-up)</text>
              <text x="380" y="67" font-size="12" fill="#9b99b8">mini review + pilot idea</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr13a)">
                <line x1="300" y1="84" x2="140" y2="126"/>
                <line x1="380" y1="84" x2="380" y2="126"/>
                <line x1="460" y1="84" x2="620" y2="126"/>
              </g>
              <rect x="20" y="130" width="230" height="150" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="135" y="158" font-weight="700">Abstract</text>
              <text x="135" y="184" font-size="12" fill="#9b99b8">Reader: conference team</text>
              <text x="135" y="210" font-size="12">250 words or fewer</text>
              <text x="135" y="232" font-size="12">4 headed sections</text>
              <text x="135" y="254" font-size="12">Numbers match the paper</text>
              <rect x="265" y="130" width="230" height="150" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="158" font-weight="700">Poster</text>
              <text x="380" y="184" font-size="12" fill="#9b99b8">Reader: people walking by</text>
              <text x="380" y="210" font-size="12">One main message</text>
              <text x="380" y="232" font-size="12">Figures more than text</text>
              <text x="380" y="254" font-size="12">Size set by conference</text>
              <rect x="510" y="130" width="230" height="150" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="625" y="158" font-weight="700">Grant proposal</text>
              <text x="625" y="184" font-size="12" fill="#9b99b8">Reader: funder's reviewers</text>
              <text x="625" y="210" font-size="12">Why, what, how, cost</text>
              <text x="625" y="232" font-size="12">Funder's own format</text>
              <text x="625" y="254" font-size="12">Real costs, not guesses</text>
            </g>
          </svg>
          <figcaption>The same made-up project becomes three documents. Each one has a different reader and its own rules.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A 250-word structured abstract</h3>
          <p>A <strong>structured abstract</strong> uses fixed headings, usually Background, Methods, Results and Conclusions. Many conferences and journals limit it to about 250 words. Some count the title and headings, and some do not. Read the call for abstracts first.</p>
          <p>Dr Neha Kulkarni wants to present her mini evidence review at a diabetes conference. Every number below comes from her review table. Studies A to F are made up.</p>
          <pre><code>Title: Text and WhatsApp reminder programmes and HbA1c in adults
        with type 2 diabetes: a mini evidence review (made-up example)

        Background: Many adults with type 2 diabetes attending our outpatient
        clinic have high HbA1c. We asked whether structured text or WhatsApp
        message programmes lower HbA1c compared with usual care.

        Methods: We searched PubMed, the Cochrane Library (CENTRAL), Google
        Scholar, CTRI and ClinicalTrials.gov in September 2026. We included
        randomised trials in adults with type 2 diabetes and baseline HbA1c
        7.5% or higher. Programmes had to last at least 3 months and report
        HbA1c at 6 months or later. Two reviewers independently screened
        records, extracted data and assessed risk of bias. Disagreements
        were settled by a third reviewer. We summarised results in words,
        without meta-analysis.

        Results: We screened 240 records and assessed 17 full texts. Five
        trials with 2,320 participants from India, Sri Lanka, the United
        Kingdom and Mexico were included. In all five, HbA1c fell more with
        messages than with usual care. Differences ranged from 0.1 to 0.5
        percentage points. The three trials at lower risk of bias found
        differences of 0.5, 0.2 and 0.1 points; the smallest was not
        statistically significant. Two other trials also found 0.5 points,
        but one lost many patients and analysed only completers, and one
        was company-funded with possible selective reporting.

        Conclusions: Text and WhatsApp reminder programmes probably lower
        HbA1c a little, by about 0.2 to 0.5 percentage points. Certainty is
        moderate at best. A local pilot trial with outcomes agreed in
        advance is reasonable before any wider rollout.</code></pre>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Words</th><th>What to check</th></tr></thead>
            <tbody>
              <tr><td>Background</td><td>29</td><td>One problem and one aim. No long history.</td></tr>
              <tr><td>Methods</td><td>74</td><td>Databases, date, criteria, two reviewers</td></tr>
              <tr><td>Results</td><td>92</td><td>240, 17, 5 and 2,320 match the flow diagram</td></tr>
              <tr><td>Conclusions</td><td>38</td><td>No claim stronger than the results</td></tr>
              <tr><td><strong>Total with headings</strong></td><td><strong>233</strong></td><td>Under 250. The title (20 words) is not counted here, but some conferences count it.</td></tr>
            </tbody>
          </table>
          <p>Tips: write the abstract last. Do not put references in it. Define each abbreviation once, or avoid it. Give numbers, not only words like "improved". And if an AI tool shortens your text, compare every number with your review table again.</p>
        </div>
        <div class="lc-card">
          <h3>Grant proposals in general words</h3>
          <p>A <strong>grant</strong> is money a funder gives for a research project. Neha's guide, Dr Farida Shaikh, wants funding for the made-up Tarang WhatsApp Reminder Pilot. In India, common sources for health research include ICMR (Indian Council of Medical Research) extramural grants and DBT (Department of Biotechnology) programmes. Others include ANRF (Anusandhan National Research Foundation), state schemes, foundations and your own institution's seed grants. ICMR also runs short-term studentships for medical students.</p>
          <p>Each funder has its own calls, deadlines, eligibility rules, budget limits and online portal. For example, ICMR takes extramural proposals online through its ePMS portal. These details change, so always read the current call on the funder's website.</p>
          <table class="lc-table">
            <thead><tr><th>Usual section</th><th>What reviewers look for</th><th>How AI can help</th><th>What you must do</th></tr></thead>
            <tbody>
              <tr><td>Summary</td><td>The whole project in a short, clear paragraph</td><td>Shorten your draft to the word limit</td><td>Check it matches the full plan</td></tr>
              <tr><td>Background and rationale</td><td>Why this matters, and what is still unknown</td><td>Improve the flow of your text</td><td>Cite only papers you have read</td></tr>
              <tr><td>Objectives</td><td>Clear, measurable aims</td><td>Rewrite aims so each has one outcome</td><td>Keep aims your team can really do</td></tr>
              <tr><td>Methods</td><td>Design, sample size, outcomes, analysis</td><td>List missing details against CONSORT</td><td>Get the sample size from a statistician</td></tr>
              <tr><td>Timeline</td><td>A realistic month-by-month plan</td><td>Turn your steps into a table</td><td>Allow time for ethics approval and follow-up</td></tr>
              <tr><td>Budget</td><td>Costs that match the work</td><td>Suggest budget headings to fill</td><td>Use real quotes and funder rules. Never let AI guess costs.</td></tr>
              <tr><td>Ethics and data</td><td>Consent, approval, data protection</td><td>Check the plan covers each point</td><td>Follow your ethics committee's rules</td></tr>
            </tbody>
          </table>
          <p>Some funders have rules on AI use by applicants and reviewers. Read them before you use AI. Proposal text is often confidential, so use only tools your institution has approved.</p>
        </div>
        <div class="lc-card">
          <h3>From abstract to poster</h3>
          <p>A <strong>poster</strong> is a one-page display of your research at a conference. People read it in a few minutes while walking past. So it needs one clear message and more pictures than text. The conference decides the size, the direction (portrait or landscape) and whether it is printed or digital.</p>
          <ul class="lc-list">
            <li><strong>Title:</strong> short, and visible from a few metres away.</li>
            <li><strong>Main message box:</strong> "Reminder messages probably lower HbA1c a little (about 0.2 to 0.5 points)."</li>
            <li><strong>Methods:</strong> a small PRISMA-style flow diagram instead of a long paragraph.</li>
            <li><strong>Results:</strong> one chart of the five trial differences, with risk of bias shown by colour or symbol.</li>
            <li><strong>Conclusion and next step:</strong> the local pilot plan, in two or three lines.</li>
            <li><strong>Extras:</strong> a QR code to the full abstract, and the AI disclosure if the conference asks for one.</li>
          </ul>
          <pre><code>Weak prompt:
        Make my poster.

        Better prompt:
        Here is my 233-word abstract (below). Turn it into poster text:
        a title under 15 words, one main message under 20 words, and
        3 short bullet points each for Methods, Results and Conclusions.
        Keep every number exactly as written. Suggest one chart that
        shows the 5 trial results. Do not add any new facts.
        [paste abstract]</code></pre>
          <p>Before printing, ask a colleague to read the poster for one minute. Then ask them what the main message was. If they cannot say it, simplify.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: preparing a conference abstract</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Neha's steps for her conference abstract in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Read the call for abstracts: word limit, headings, deadline and rules on AI use.</li>
              <li data-order="2">Copy the final numbers from the review table and the flow diagram.</li>
              <li data-order="3">Write each section in her own words, with the main message first.</li>
              <li data-order="4">Ask an approved AI tool to cut the text below 250 words without changing any number.</li>
              <li data-order="5">Compare every number in the AI version with the review table.</li>
              <li data-order="6">Send the draft to Dr Farida Shaikh and the second reviewer for approval.</li>
              <li data-order="7">Submit it, and add an AI disclosure if the conference asks for one.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your results in note form and ask for a structured abstract with a word count. The made-up notes below work as they are.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced medical writer. Write a structured abstract for [a national diabetes conference in India]. The limit is [250] words, including headings.

        Use ONLY these notes. They are made-up teaching data:
        - Question: do text or WhatsApp reminder programmes lower HbA1c in adults with type 2 diabetes, compared with usual care?
        - Searched: PubMed, Cochrane CENTRAL, Google Scholar, CTRI, ClinicalTrials.gov, [September 2026].
        - Screened 240 records, assessed 17 full texts, included 5 randomised trials, 2,320 participants.
        - All 5 favoured messages. Differences: 0.1 to 0.5 percentage points.
        - Lower risk of bias trials: 0.5, 0.2 and 0.1 (the 0.1 not significant).
        - Two trials with problems (high dropout; company funding) both found 0.5.
        - No meta-analysis.

        Rules:
        1. Headings: Background, Methods, Results, Conclusions.
        2. Do not add numbers, studies or references that are not in my notes.
        3. The conclusion must not be stronger than the results.
        4. After the abstract, give the word count for each section and the total.
        5. List any sentence where you were unsure.</pre>
            <ul class="ai-try-checks">
              <li>240, 17, 5 and 2,320 appear correctly, with no new numbers.</li>
              <li>Count the words yourself. AI word counts are often wrong.</li>
              <li>The conclusion says "probably" or "a little", not "proves".</li>
              <li>No references or study names were added.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An abstract, a poster and a grant tell the same story at different sizes. Write the content yourself from your checked numbers, then let AI help you cut and organise. Follow each funder's and conference's current rules, never let AI guess costs or results, and count the words yourself.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Publishing and Peer Review</h1>
        </div>
        <p class="lc-lead">A finished paper still has a long way to go. You must choose the right journal, avoid fake (predatory) journals, pass peer review and reply to reviewers politely and fully. In this lesson you will follow Dr Neha Kulkarni's review paper from submission to acceptance. You will see where AI helps, such as drafting a clear reply letter. You will also see where it must not be used, such as uploading someone else's manuscript when you are the reviewer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="The publishing path: choose a journal, submit with a cover letter and AI disclosure, editor check, peer review, and a decision. The decision can be accept, revise or reject. Revise loops back through a reply to reviewers. Reject leads to choosing another journal.">
            <defs>
              <marker id="mr14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <marker id="mr14b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker>
            </defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="130" height="60" rx="8" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="75" y="56" font-weight="700">Choose</text>
              <text x="75" y="76" font-size="11" fill="#9b99b8">a real journal</text>
              <rect x="162" y="30" width="130" height="60" rx="8" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="227" y="56" font-weight="700">Submit</text>
              <text x="227" y="76" font-size="11" fill="#9b99b8">+ AI disclosure</text>
              <rect x="314" y="30" width="130" height="60" rx="8" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="379" y="56" font-weight="700">Editor check</text>
              <text x="379" y="76" font-size="11" fill="#9b99b8">fit and quality</text>
              <rect x="466" y="30" width="130" height="60" rx="8" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="531" y="56" font-weight="700">Peer review</text>
              <text x="531" y="76" font-size="11" fill="#9b99b8">2 or more experts</text>
              <rect x="618" y="30" width="130" height="60" rx="8" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="683" y="56" font-weight="700">Decision</text>
              <text x="683" y="76" font-size="11" fill="#9b99b8">from the editor</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr14a)">
                <line x1="140" y1="60" x2="158" y2="60"/>
                <line x1="292" y1="60" x2="310" y2="60"/>
                <line x1="444" y1="60" x2="462" y2="60"/>
                <line x1="596" y1="60" x2="614" y2="60"/>
                <line x1="227" y1="120" x2="227" y2="146"/>
                <line x1="531" y1="120" x2="531" y2="146"/>
                <line x1="683" y1="120" x2="683" y2="146"/>
              </g>
              <path d="M683,90 L683,120 M227,120 L683,120" fill="none" stroke="#9b99b8" stroke-width="1.5"/>
              <rect x="162" y="150" width="130" height="44" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="227" y="177" font-weight="700">Reject</text>
              <rect x="466" y="150" width="130" height="44" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="531" y="170" font-weight="700">Accept</text>
              <text x="531" y="186" font-size="11" fill="#9b99b8">then publish</text>
              <rect x="618" y="150" width="130" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="683" y="170" font-weight="700">Revise</text>
              <text x="683" y="186" font-size="11" fill="#9b99b8">minor or major</text>
              <rect x="618" y="222" width="130" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="683" y="244" font-weight="700">Reply letter</text>
              <text x="683" y="261" font-size="11" fill="#9b99b8">point by point</text>
              <line x1="683" y1="194" x2="683" y2="218" stroke="#f59e0b" stroke-width="1.5" marker-end="url(#mr14b)"/>
              <path d="M748,247 L756,247 L756,14 L531,14 L531,26" fill="none" stroke="#f59e0b" stroke-width="1.5" marker-end="url(#mr14b)"/>
              <path d="M162,172 L75,172 L75,96" fill="none" stroke="#ec4899" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#mr14a)"/>
              <text x="20" y="214" text-anchor="start" font-size="12" fill="#9b99b8">Improve it, then try another journal</text>
              <text x="420" y="248" text-anchor="start" font-size="12" fill="#9b99b8">Revised paper goes back</text>
              <text x="420" y="265" text-anchor="start" font-size="12" fill="#9b99b8">to the reviewers</text>
            </g>
          </svg>
          <figcaption>Most papers go through at least one round of revision. A rejection is common too: improve the paper and choose another real journal.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Choosing a journal</h3>
          <p>Neha's paper is a short review about reminder messages and HbA1c. She makes a shortlist of three journals with her guide, Dr Farida Shaikh. The journal names below are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Journal X (made-up)</th><th>Journal Y (made-up)</th><th>Journal Z (made-up)</th></tr></thead>
            <tbody>
              <tr><td>Does the scope fit?</td><td>Diabetes care, yes</td><td>General medicine, yes</td><td>"All sciences", unclear</td></tr>
              <tr><td>Indexed where it says?</td><td>Found in the NLM Catalog</td><td>Found in the NLM Catalog</td><td>Claims MEDLINE, but not found</td></tr>
              <tr><td>Publication fee</td><td>None for subscription route</td><td>Fee for open access, shown on website</td><td>Fee asked for after "acceptance" in 2 days</td></tr>
              <tr><td>Accepts reviews?</td><td>Yes, up to 3,500 words</td><td>Yes</td><td>Anything</td></tr>
              <tr><td>Decision</td><td><strong>First choice</strong></td><td>Second choice</td><td><strong>Avoid</strong></td></tr>
            </tbody>
          </table>
          <p>Things to check for every journal:</p>
          <ul class="lc-list">
            <li><strong>Scope and readers:</strong> read a few recent papers. Would your paper fit among them?</li>
            <li><strong>Indexing:</strong> check it yourself in the NLM Catalog (for MEDLINE and PubMed), or in DOAJ (Directory of Open Access Journals) for open access journals. Do not trust the journal's own claim.</li>
            <li><strong>Fees:</strong> an APC (article processing charge) is a fee some open access journals charge. Real journals show it clearly on their website.</li>
            <li><strong>Rules:</strong> word limits, reporting checklists (such as PRISMA 2020) and AI policy.</li>
            <li><strong>Your institution's rules:</strong> NMC, your university and your hospital may have rules on which journals count for promotion or degrees. In February 2025, UGC stopped the UGC-CARE journal list and later gave general criteria instead. Check the current rules that apply to you.</li>
          </ul>
          <p>AI can suggest journals, but it may invent journal names, fees or indexing claims. Check every suggestion on the journal's own website and in the NLM Catalog. The "Think. Check. Submit." website also has a simple checklist.</p>
        </div>
        <div class="lc-card">
          <h3>Predatory journals: warning signs</h3>
          <p>A <strong>predatory journal</strong> takes publication fees but does little or no real peer review. Papers published there may be ignored by other researchers and may not count for your career. Your work can also be hard to publish again elsewhere. Some fake websites even copy the name and design of a real journal. These are called hijacked or cloned journals.</p>
          <ul class="lc-list">
            <li>An email invites you to publish, full of praise, often for a topic outside your field.</li>
            <li>It promises acceptance or peer review within a few days.</li>
            <li>It asks for a fee before review, or hides the fee until after acceptance.</li>
            <li>It shows made-up metrics, such as an "impact factor" from an unknown company.</li>
            <li>It claims indexing that you cannot find in the NLM Catalog or DOAJ.</li>
            <li>The editorial board lists people who do not know they are on it, or has no real addresses.</li>
            <li>The website has spelling mistakes, a very wide scope, or a web address slightly different from the real journal's.</li>
          </ul>
          <p>If you are unsure, ask your guide or your institution's librarian before you submit. Do not ask AI alone to decide: it may not know about a new or hijacked website.</p>
        </div>
        <div class="lc-card">
          <h3>Replying to reviewers</h3>
          <p>Neha gets a "major revision" decision. That is good news: the journal wants the paper if she fixes the problems. She writes a <strong>response letter</strong>. It repeats each reviewer comment, gives her reply, and says exactly what changed and where. She stays polite, even when she disagrees.</p>
          <pre><code>Reviewer 2, comment 3 (made-up):
        "The authors should combine the trials in a meta-analysis."

        Response:
        Thank you for this suggestion. We considered a meta-analysis.
        We decided against it because the five trials differ in message
        type (one-way and two-way), follow-up (6 and 12 months) and
        setting, and two trials have a high risk of bias. We now explain
        this decision in the Methods (page 6, lines 112-118) and
        discuss it as a limitation (page 14, lines 301-305).</code></pre>
          <p>AI can help you sort comments into a table, suggest a polite tone and check that you answered every point. It must not invent new analyses, results or references. You decide what to change.</p>
          <pre><code>Weak prompt:
        Write replies to these reviewer comments. [pastes comments]

        Better prompt:
        Below are the reviewer comments on my paper and MY notes on
        how I will answer each one. Draft a polite response letter.
        Use: comment | response | change made (page, line).
        Do not add any analysis, number or reference I did not give.
        If my note is missing for a comment, write [AUTHOR TO ANSWER].</code></pre>
          <p>Check the journal's AI policy before you paste comments into an AI tool. Use only tools your institution has approved.</p>
        </div>
        <div class="lc-card">
          <h3>When you are the peer reviewer</h3>
          <p>One day a journal will ask you to review someone else's paper. That manuscript is confidential. It holds unpublished ideas and data that belong to the authors.</p>
          <ul class="lc-list">
            <li><strong>Do not upload the manuscript to an AI tool.</strong> The ICMJE recommendations say reviewers must keep manuscripts confidential. This may rule out uploading them to AI software where confidentiality cannot be assured.</li>
            <li><strong>Ask the journal first.</strong> ICMJE says reviewers must ask the journal for permission before using AI to help with a review. Many publishers do not allow it at all.</li>
            <li><strong>Write your own judgement.</strong> The editor asked for your expert opinion, not a machine summary.</li>
            <li><strong>As an author, disclose AI use</strong> at submission and again in the revised version if your use changed.</li>
          </ul>
          <p>Journal and publisher rules change, so read the current reviewer guidelines for each journal.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: real journal or warning sign?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Neha checks five journals before she submits. Sort each thing she notices.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="warn" data-label="Warning sign"></div>
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Normal for a real journal"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="warn" data-why="Real peer review takes weeks or months. A promise of 48 hours means there is little or no review.">An email promises acceptance within 48 hours</li>
              <li data-bucket="warn" data-why="Indexing claims must be checkable. If the NLM Catalog does not list it, the claim may be false.">Says it is in MEDLINE, but the NLM Catalog has no record of it</li>
              <li data-bucket="warn" data-why="A fee that appears only after acceptance, with no clear price list, is a common trick.">No fee is mentioned until after the paper is "accepted"</li>
              <li data-bucket="warn" data-why="A web address that differs slightly from the real journal's can mean a cloned (hijacked) website.">The web address is one letter different from a well-known journal's</li>
              <li data-bucket="ok" data-why="Real open access journals often charge a fee, and they show it clearly before you submit.">An open access fee is shown clearly on the website</li>
              <li data-bucket="ok" data-why="Asking for a PRISMA checklist is a sign that the journal checks reporting quality.">Asks for a PRISMA 2020 checklist with review papers</li>
              <li data-bucket="ok" data-why="Clear AI rules are now common in real journals. They follow guidance such as ICMJE.">Has a written policy on AI use by authors and reviewers</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Draft a response letter from reviewer comments and your own notes. The made-up comments below work as they are.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced author who helps junior doctors reply to peer reviewers. Be polite, clear and honest.

        My paper: [a mini evidence review of text and WhatsApp reminders for HbA1c in type 2 diabetes]. All details are made up.

        Reviewer comments and MY notes:
        1. "Why did you not search Embase?" My note: [we had no access; we searched PubMed, CENTRAL, Google Scholar and two trial registries; will add as a limitation].
        2. "The conclusion is too strong." My note: [agree; will change "messages lower HbA1c" to "messages probably lower HbA1c a little"].
        3. "Please add a meta-analysis." My note: [disagree politely; trials differ in message type, follow-up and risk of bias].
        4. "Report hypoglycaemia results."

        Please:
        - Write a response letter in a table: comment | response | change made (page, line as [page X, line Y]).
        - Thank the reviewer once at the start, not in every row.
        - Do not invent analyses, numbers or references.
        - Where my note is missing, write [AUTHOR TO ANSWER].
        - After the table, list anything I still need to change in the paper.</pre>
            <ul class="ai-try-checks">
              <li>Comment 4 is marked [AUTHOR TO ANSWER], not answered by the AI.</li>
              <li>No new analysis, number or reference was invented.</li>
              <li>The polite disagreement gives a reason, not just "we disagree".</li>
              <li>Page and line numbers are placeholders for you to fill in.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Choose a journal you have checked yourself, not one that emailed you. Answer every reviewer comment politely and say exactly what changed. AI can help with tone and structure, but it must not invent results. When you review someone else's paper, keep it confidential and do not upload it to an AI tool.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Capstone: A Mini Evidence Review at Tarang Hospital</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together. Dr Farida Shaikh, medical superintendent of the made-up Tarang Multispeciality Hospital, asks one question: "Should we start a WhatsApp reminder programme for our diabetes patients?" Dr Neha Kulkarni answers it with a mini evidence review. You will follow her PICO, search, screening counts, summary table, appraisal and one-page report. At each step you will see what AI did and what the people checked. All studies, numbers and people are made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 440" role="img" aria-label="A PRISMA-style flow diagram with made-up counts. 344 records found: PubMed 186, CENTRAL 97, Google Scholar 40, trial registries 21. 104 duplicates removed. 240 screened, 222 excluded. 18 full texts sought, 1 not retrieved. 17 assessed, 12 excluded with reasons. 5 randomised trials included, with 2,320 participants.">
            <defs><marker id="mr15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="380" height="54" rx="8" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="210" y="43" font-weight="700">Records found: 344</text>
              <text x="210" y="63" font-size="11" fill="#9b99b8">PubMed 186, CENTRAL 97, Scholar 40, registries 21</text>
              <rect x="440" y="24" width="310" height="46" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="595" y="52">Duplicates removed: 104</text>
              <rect x="20" y="100" width="380" height="44" rx="8" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="210" y="127" font-weight="700">Screened (title and abstract): 240</text>
              <rect x="440" y="100" width="310" height="44" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="595" y="127">Excluded: 222</text>
              <rect x="20" y="170" width="380" height="44" rx="8" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="210" y="197" font-weight="700">Full texts sought: 18</text>
              <rect x="440" y="170" width="310" height="44" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="595" y="197">Not retrieved: 1</text>
              <rect x="20" y="240" width="380" height="44" rx="8" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="210" y="267" font-weight="700">Full texts assessed: 17</text>
              <rect x="440" y="234" width="310" height="128" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="595" y="256" font-weight="700">Excluded: 12</text>
              <g font-size="11" fill="#9b99b8" text-anchor="start">
                <text x="456" y="278">No comparison group or not an RCT: 4</text>
                <text x="456" y="295">Wrong population (type 1, gestational): 2</text>
                <text x="456" y="312">Not text or WhatsApp messages: 2</text>
                <text x="456" y="329">No HbA1c at 6 months or later: 2</text>
                <text x="456" y="346">Ongoing trial, no results yet: 2</text>
              </g>
              <rect x="20" y="370" width="380" height="54" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="210" y="393" font-weight="700">Included: 5 RCTs (A, B, C, D, F)</text>
              <text x="210" y="413" font-size="11" fill="#9b99b8">2,320 participants randomised</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#mr15a)">
                <line x1="210" y1="74" x2="210" y2="96"/>
                <line x1="210" y1="144" x2="210" y2="166"/>
                <line x1="210" y1="214" x2="210" y2="236"/>
                <line x1="210" y1="284" x2="210" y2="366"/>
                <line x1="400" y1="47" x2="436" y2="47"/>
                <line x1="400" y1="122" x2="436" y2="122"/>
                <line x1="400" y1="192" x2="436" y2="192"/>
                <line x1="400" y1="262" x2="436" y2="262"/>
              </g>
            </g>
          </svg>
          <figcaption>Neha's PRISMA-style flow (all counts made up). Each box equals the box above it minus the records removed. Study E is one of the 4 excluded for having no comparison group.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The review, step by step</h3>
          <p>Neha had 8 to 10 weeks. Her guide, Dr Farida Shaikh, agreed the plan with her before she started. A fellow resident worked as the second reviewer.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>What Neha produced (made-up)</th><th>How AI helped</th><th>What people checked</th></tr></thead>
            <tbody>
              <tr><td>Question</td><td>PICO: adults with type 2 diabetes and HbA1c 7.5% or more; text or WhatsApp programme for 3+ months; usual care; HbA1c change at 6+ months; RCTs only</td><td>Suggested a sharper outcome and time point</td><td>Dr Farida approved the final PICO</td></tr>
              <tr><td>Search</td><td>PubMed lines #1 to #5 (MeSH plus text words, WhatsApp as a text word), plus CENTRAL, Google Scholar, CTRI and ClinicalTrials.gov</td><td>Listed synonyms and spelling variants</td><td>Neha checked each MeSH term and "Search Details" in PubMed</td></tr>
              <tr><td>Screening</td><td>240 records screened by two people working independently</td><td>Grouped records by topic to speed up reading</td><td>Every include or exclude decision was made by a person</td></tr>
              <tr><td>Data extraction</td><td>A table of design, size, follow-up and HbA1c results</td><td>Drafted rows from the papers' results sections</td><td>Every number was checked against the paper</td></tr>
              <tr><td>Appraisal</td><td>Risk of bias for each trial</td><td>Listed possible problems to look for</td><td>Both reviewers judged each trial; Dr Farida settled disagreements</td></tr>
              <tr><td>Report</td><td>A one-page report for the hospital</td><td>Improved the language of Neha's draft</td><td>Dr Farida read and signed it</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Check that the counts add up</h3>
          <p>A PRISMA flow diagram must add up at every step. AI often gets these sums wrong, so Neha checks them in a spreadsheet. She enters the counts in column B and adds checks in column C.</p>
          <pre><code>B2 PubMed 186   B3 CENTRAL 97   B4 Google Scholar 40   B5 Registries 21
        Total found:              =SUM(B2:B5)          gives 344
        Screened:                 =344-104             gives 240
        Full texts sought:        =240-222             gives 18
        Full texts assessed:      =18-1                gives 17
        Excluded reasons total:   =4+2+2+2+2           gives 12
        Included:                 =17-12               gives 5
        Participants:             =400+240+1200+180+300  gives 2320</code></pre>
          <p>She also writes down the search date (September 2026) and the reason for the one missing full text: it was a conference abstract, and the authors did not reply to her email. The made-up Study E was excluded at full text. It had no usual-care group, so it did not fit the PICO. Its large fall in HbA1c (1.2 points) came from a weak design, not from a fair comparison.</p>
        </div>
        <div class="lc-card">
          <h3>The summary table and appraisal</h3>
          <p>Here is the table of the five included trials. All are made up. HbA1c values are percentage points. A negative difference means messages did better than usual care.</p>
          <table class="lc-table">
            <thead><tr><th>Study (made-up)</th><th>Setting</th><th>Randomised</th><th>Follow-up</th><th>Difference (95% CI)</th><th>Risk of bias</th></tr></thead>
            <tbody>
              <tr><td>A</td><td>India, city clinics, SMS</td><td>400</td><td>12 months</td><td>-0.5 (-0.7 to -0.3)</td><td>Low</td></tr>
              <tr><td>B</td><td>Sri Lanka, WhatsApp group</td><td>240</td><td>6 months</td><td>-0.5 (-0.9 to -0.1)</td><td>High: 30% vs 14% dropout, completers only</td></tr>
              <tr><td>C</td><td>India, rural Tamil Nadu, cluster RCT</td><td>1,200</td><td>12 months</td><td>-0.2 (-0.4 to 0.0)</td><td>Low to some concerns</td></tr>
              <tr><td>D</td><td>UK, two-way texts</td><td>180</td><td>6 months</td><td>-0.1 (-0.4 to 0.2)</td><td>Low, but small and imprecise</td></tr>
              <tr><td>F</td><td>Mexico, automated SMS</td><td>300</td><td>12 months</td><td>-0.5 (-0.8 to -0.2)</td><td>Some concerns / high: company funding, possible selective reporting</td></tr>
            </tbody>
          </table>
          <p><strong>What the table says, in words:</strong></p>
          <ul class="lc-list">
            <li>All five trials point the same way. HbA1c fell more with messages, by 0.1 to 0.5 points.</li>
            <li>The three lower-risk trials (A, C and D) found 0.5, 0.2 and 0.1 points. They hold 1,780 of the 2,320 participants, about 77%.</li>
            <li>Study D's confidence interval includes zero. That means "not clearly shown", not "no effect".</li>
            <li>The problem trials (B and F) both found 0.5 points. Their results may be too optimistic.</li>
            <li>The likely benefit is small to moderate, about 0.2 to 0.5 percentage points. Certainty is moderate at best.</li>
          </ul>
          <p>Neha did not do a meta-analysis (a statistical method that combines results). The trials differ too much in design and bias. A summary in words is honest and enough for this hospital decision.</p>
        </div>
        <div class="lc-card">
          <h3>The one-page report</h3>
          <pre><code>Tarang Multispeciality Hospital: Mini evidence review (made-up)
        To: Dr Farida Shaikh, Medical Superintendent
        From: Dr Neha Kulkarni. Second reviewer: [name]. Date: [date]

        Question: In adults with type 2 diabetes, do text or WhatsApp
        reminder programmes lower HbA1c at 6 months or more, compared
        with usual care?

        What we did: Searched PubMed, Cochrane CENTRAL, Google Scholar,
        CTRI and ClinicalTrials.gov (September 2026). Two reviewers
        screened 240 records and assessed 17 full texts.

        What we found: 5 randomised trials, 2,320 participants. All
        favoured messages. The lower-risk trials suggest HbA1c falls
        about 0.2 to 0.5 percentage points more than with usual care.

        How sure we are: Moderate at best. Two trials had bias problems.
        Only two trials were from India. Hypoglycaemia and cost were
        poorly reported.

        Recommendation: A small local pilot (120 patients, 6 months),
        with ethics approval, CTRI registration and outcomes agreed in
        advance. Decide on wider use after the pilot.

        Limitations: No Embase search. Short review time. Real studies
        must be found and read before any decision.

        Use of AI: An approved AI assistant helped with synonyms, first
        drafts of the data table and language. All numbers, decisions
        and judgements were checked by the reviewers.

        This is not medical advice.</code></pre>
          <p>Dr Farida reads the report and asks one question: "What would change your recommendation?" Neha has an answer ready. A large, low-risk Indian trial showing no benefit would change it. That is a good test of any evidence review.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Neha's final check with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha asks">She pastes her made-up summary table into the hospital-approved AI assistant. She asks for a first draft of the "What we found" paragraph.</li>
              <li data-kind="answer" data-label="AI drafts">The draft says: "Messages lowered HbA1c by 0.5 points in most trials, a clear benefit."</li>
              <li data-kind="warn" data-label="Too strong">Only three of five trials found 0.5, and two of those had bias problems. She rewrites it: "about 0.2 to 0.5 points, moderate certainty at best".</li>
              <li data-kind="tool" data-label="Spreadsheet">She checks the flow counts with simple formulas: 344 minus 104 is 240, and 17 minus 12 is 5.</li>
              <li data-kind="warn" data-label="New reference">The AI suggests adding "a 2024 meta-analysis" with a title and journal. She cannot find it in PubMed, so she does not use it.</li>
              <li data-kind="check" data-label="Second reviewer">Her fellow resident checks every number in the table against the five papers.</li>
              <li data-kind="result" data-label="Signed off">Dr Farida Shaikh approves the report and the pilot plan goes to the ethics committee.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn review results into a one-page report and to check the counts. Use the made-up data as it is, or replace it with your own topic.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior clinical researcher helping [a junior resident] write a one-page evidence review report for [a hospital medical superintendent]. All data below is made up for teaching.

        Question: [In adults with type 2 diabetes, do text or WhatsApp reminder programmes lower HbA1c at 6+ months, compared with usual care?]

        Flow counts: found 344 (PubMed 186, CENTRAL 97, Google Scholar 40, registries 21); duplicates 104; screened 240; excluded 222; full texts sought 18; not retrieved 1; assessed 17; excluded 12; included 5.

        Trials (difference in HbA1c, risk of bias): A -0.5 low; B -0.5 high; C -0.2 low to some concerns; D -0.1 (CI includes zero) low; F -0.5 some concerns/high.

        Please:
        1. Check that every flow count adds up. Show each sum. Tell me if any count is wrong.
        2. Write the report with these headings: Question, What we did, What we found, How sure we are, Recommendation, Limitations, Use of AI.
        3. Base the main finding on the lower-risk trials. Do not overstate it.
        4. Do not add studies, numbers or references.
        5. Keep it under [350] words and end with "This is not medical advice."</pre>
            <ul class="ai-try-checks">
              <li>The sums are right: 344 - 104 = 240, 240 - 222 = 18, 18 - 1 = 17, 17 - 12 = 5.</li>
              <li>The main finding is about 0.2 to 0.5 points, not "0.5 points".</li>
              <li>Study D's result is described as uncertain, not as "no effect".</li>
              <li>No new study or reference appears.</li>
              <li>The recommendation is a pilot, not a hospital-wide rollout.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good evidence review is a chain of small, checked steps: a clear question, a recorded search, two reviewers, counts that add up, an honest table and a careful conclusion. AI can speed up each step, but people make every decision. The final report should say what you found, how sure you are, and what would change your mind.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

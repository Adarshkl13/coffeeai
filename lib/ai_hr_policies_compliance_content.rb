module AiHrPoliciesComplianceContent
  # Units (sidebar dividers): 1–4 Policy Basics · 5–9 Writing Policies · 10–14 Compliance in Practice · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">What HR Policies Are For</h1>
        </div>
        <p class="lc-lead">An HR policy tells people the rules of work and why they exist. A procedure tells them the steps to follow. Guidance helps them apply both in real life. In this lesson you will learn the difference, who reads each one, and why clear wording protects both staff and the business. You will also meet Harbour Lane Hotels, a made-up group of three hotels in Bristol with about 260 staff. Its Head of HR, Grace Bennett, must update an old handbook during this course.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Left: three layers of an HR document. Policy is the rule and the reason, for example: you may ask for flexible working from your first day. Procedure is the steps, who and when: send the form, meet your manager, get a reply in 2 months. Guidance is help to apply it: a manager FAQ, example replies and a request template. Right: who reads it. Employees ask what they can do, often on a phone. Managers ask what they must do and when. The HR team asks if it is fair, legal and consistent. A tribunal or inspector asks if you followed your own rules.">
            <defs><marker id="hp1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="240" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Three layers of an HR document</text>
              <text x="615" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Who reads it</text>
              <rect x="20" y="38" width="440" height="64" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="36" y="62" font-weight="700">POLICY: the rule and the reason</text>
              <text x="36" y="86" font-size="12" fill="#9b99b8">"You may ask for flexible working from your first day."</text>
              <rect x="20" y="120" width="440" height="64" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="36" y="144" font-weight="700">PROCEDURE: the steps, who and when</text>
              <text x="36" y="168" font-size="12" fill="#9b99b8">Send the form. Meet your manager. Get a reply in 2 months.</text>
              <rect x="20" y="202" width="440" height="64" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="36" y="226" font-weight="700">GUIDANCE: help to apply it</text>
              <text x="36" y="250" font-size="12" fill="#9b99b8">Manager FAQ, example replies and a request template.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#hp1a)">
                <line x1="240" y1="103" x2="240" y2="117"/>
                <line x1="240" y1="185" x2="240" y2="199"/>
              </g>
              <text x="240" y="292" font-size="11" fill="#9b99b8" text-anchor="middle">Policy changes rarely. Procedures change more. Guidance changes often.</text>
              <rect x="490" y="38" width="250" height="48" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="506" y="58" font-weight="700">Employees</text>
              <text x="506" y="76" font-size="12" fill="#9b99b8">What can I do? Often on a phone.</text>
              <rect x="490" y="100" width="250" height="48" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="506" y="120" font-weight="700">Managers</text>
              <text x="506" y="138" font-size="12" fill="#9b99b8">What must I do, and when?</text>
              <rect x="490" y="162" width="250" height="48" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="506" y="182" font-weight="700">HR team</text>
              <text x="506" y="200" font-size="12" fill="#9b99b8">Is it fair, legal and consistent?</text>
              <rect x="490" y="224" width="250" height="48" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="506" y="244" font-weight="700">Tribunal or inspector</text>
              <text x="506" y="262" font-size="12" fill="#9b99b8">Did you follow your own rules?</text>
            </g>
          </svg>
          <figcaption>A policy says what and why. A procedure says how. Guidance helps people apply both. Each reader needs something different.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Policy, procedure and guidance</h3>
          <p>Many handbooks mix these three things in one long block of text. That makes them hard to read and hard to update. Keep them apart.</p>
          <ul class="lc-list">
            <li><strong>Policy</strong>: the rule, the commitment and the reason for it. It changes rarely, and senior managers approve it.</li>
            <li><strong>Procedure</strong>: the steps to follow. It says who does what, and by when. It changes when the process changes.</li>
            <li><strong>Guidance</strong>: help to apply the policy. For example FAQs, examples, templates and scripts for managers. HR can update it often.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Topic</th><th>Policy</th><th>Procedure</th><th>Guidance</th></tr></thead>
            <tbody>
              <tr><td>Flexible working</td><td>You may ask for flexible working from your first day.</td><td>Send the request form. Your manager meets you. You get a decision within 2 months.</td><td>Manager FAQ: how to look at a request for early shifts only.</td></tr>
              <tr><td>Sickness absence</td><td>We support staff who are ill and pay sick pay as set out below.</td><td>Call the duty manager at least 2 hours before your shift starts.</td><td>Example: what to say in a return-to-work chat.</td></tr>
              <tr><td>Tips</td><td>All card tips go to staff in full.</td><td>Payroll adds each month's card tips to the next month's pay.</td><td>FAQ: why do kitchen staff get a share of tips?</td></tr>
            </tbody>
          </table>
          <p>The examples are from Harbour Lane Hotels, a made-up company. The flexible working steps follow the current UK rules in general words. Your own rules may differ. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Who reads HR policies</h3>
          <p>Write for the real readers, not for an imaginary lawyer. Harbour Lane has about 260 staff in three hotels. Many work shifts, and 58 are casual (zero-hours) staff.</p>
          <table class="lc-table">
            <thead><tr><th>Reader</th><th>When they read it</th><th>What they need</th></tr></thead>
            <tbody>
              <tr><td>Kasia, a casual room attendant</td><td>On her phone, in a 15-minute break</td><td>A short, clear answer in plain words</td></tr>
              <tr><td>A duty manager</td><td>At 11 pm, with a problem in front of them</td><td>Clear steps, and who to call</td></tr>
              <tr><td>Grace Bennett, Head of HR</td><td>When she makes a decision</td><td>Rules she can apply the same way to everyone</td></tr>
              <tr><td>A tribunal or inspector</td><td>After something has gone wrong</td><td>Proof that you had fair rules and followed them</td></tr>
            </tbody>
          </table>
          <p>Some documents are required by UK law. For example, an employer with 5 or more employees must have a written health and safety policy. A business that gets tips more than now and then must have a written tips policy. Disciplinary and grievance information must be given to staff with their written terms. Many other policies, such as social media, are good practice but not required. Check the rules for your own business with an HR adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Why clear wording matters</h3>
          <p>Vague words let every manager read a rule differently. Then staff are treated differently for the same thing. That feels unfair, and it leads to complaints and grievances (formal complaints by a worker).</p>
          <p><strong>Vague (from Harbour Lane's old sickness policy):</strong></p>
          <pre><code>Employees should inform the relevant person of absence in a timely
        manner. Failure to do so may result in action.</code></pre>
          <p><strong>Clear:</strong></p>
          <pre><code>If you are ill and cannot work, phone the duty manager at your hotel.
        Phone at least 2 hours before your shift starts. A text message is
        not enough. If you do not phone, your manager will talk to you about
        it at your return-to-work meeting.</code></pre>
          <p>Clarity also matters if a case reaches an employment tribunal. In the UK, tribunals look at whether you followed your own procedure. In disciplinary and grievance cases they also look at the Acas Code of Practice. If a side unreasonably did not follow the Code, the tribunal can change an award by up to 25%. Acas is the UK's free workplace advice service.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to sort a muddled document</h3>
          <p>An AI assistant such as Claude is good at sorting text and spotting vague words. It does not know your business rules. So ask it to sort and question, not to invent.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make our sickness policy better.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are an HR writer for a UK hotel group. Below is one section of
        our sickness policy (made-up text). Split it into policy (the rule),
        procedure (the steps) and guidance (help). List every vague word and
        suggest a clear question I must answer. Do not add new rules.</code></pre>
          <p>Use made-up or anonymised text only. Never paste real employee names or health details into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: policy, procedure or guidance?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each line from Harbour Lane's handbook into the right layer.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="policy" data-label="Policy"></div>
              <div data-sorter-target="bucket" data-bucket="procedure" data-label="Procedure"></div>
              <div data-sorter-target="bucket" data-bucket="guidance" data-label="Guidance"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="policy" data-why="It states a rule and a commitment. It does not give steps.">We do not accept bullying or harassment by anyone, including guests.</li>
              <li data-bucket="procedure" data-why="It says who to tell and how fast HR replies. Those are steps.">To report harassment, tell your duty manager or email HR. HR replies within 5 working days.</li>
              <li data-bucket="guidance" data-why="An example script helps people apply the policy. It is not a rule.">Example words to use when a guest's comments make you uncomfortable.</li>
              <li data-bucket="policy" data-why="It is the core rule about tips. The steps come later.">All card tips go to staff in full.</li>
              <li data-bucket="procedure" data-why="It says who does what and when.">Payroll adds each month's card tips to the next month's pay.</li>
              <li data-bucket="guidance" data-why="An FAQ explains the policy. It does not create a new rule.">FAQ: why do kitchen staff get a share of tips?</li>
              <li data-bucket="procedure" data-why="It is a step with a time limit: who to call and when.">If you are ill, phone the duty manager at least 2 hours before your shift.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to sort a muddled handbook section into policy, procedure and guidance. Then use its questions to plan a clearer version.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR policy writer for a UK employer. Use simple English.

        Our organisation: [Harbour Lane Hotels, three hotels in Bristol, about 260 staff, many on shifts].

        Here is a section from our handbook (made-up text):
        [Employees should inform the relevant person of absence in a timely manner. A return to work form should normally be completed. Managers will use discretion when considering sick pay. Staff may wish to read the wellbeing pages for support. Failure to follow this may result in action.]

        Please:
        1. Put each sentence in a table under POLICY (the rule and why), PROCEDURE (the steps: who, what, when) or GUIDANCE (help and examples).
        2. List every vague word or phrase. Explain in one line how two managers could read it differently.
        3. Write the questions HR must answer to make the text clear, for example "Who exactly is the relevant person?"
        4. Do not invent new rules, deadlines or legal claims. If a point depends on the law, write CHECK WITH ADVISER.</pre>
            <ul class="ai-try-checks">
              <li>Every sentence is placed in one of the three layers.</li>
              <li>Vague words such as "timely", "normally" and "discretion" are flagged.</li>
              <li>The questions are specific enough for HR to answer.</li>
              <li>The AI did not add new rules, deadlines or legal claims.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A policy says what and why, a procedure says how, and guidance helps people apply both. Keep the three apart. Write each one so a tired night manager reads it the same way as HR does.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Where AI Helps and Its Limits</h1>
        </div>
        <p class="lc-lead">AI assistants can draft, simplify and compare policies in minutes. But they can also use the wrong country's law, repeat rules that changed last year, or invent requirements that sound real. In this lesson you will learn which policy tasks to give AI, the main risks, and how to write prompts that make checking easier. You will see how Grace Bennett at Harbour Lane Hotels caught an outdated sick pay rule.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Left column, AI helps with: drafting a first version, simplifying long sentences, comparing old and new versions, summarising text you paste, and FAQs, scripts and translations. Right column, watch out for: wrong country, such as US terms in a UK policy; outdated rules changed in 2024 to 2026; made-up requirements that sound real; private employee data in prompts; and biased or unfair wording. Bottom: a four-step flow. AI drafts, you check sources, an adviser reviews, then you approve and publish.">
            <defs><marker id="hp2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="190" y="24" font-weight="700" fill="#6ee7b7" text-anchor="middle">AI helps with</text>
              <text x="570" y="24" font-weight="700" fill="#f9a8d4" text-anchor="middle">Watch out for</text>
              <rect x="20" y="36" width="340" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="36" y="59">Drafting a first version</text>
              <rect x="20" y="80" width="340" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="36" y="103">Simplifying long sentences</text>
              <rect x="20" y="124" width="340" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="36" y="147">Comparing old and new versions</text>
              <rect x="20" y="168" width="340" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="36" y="191">Summarising text you paste</text>
              <rect x="20" y="212" width="340" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="36" y="235">FAQs, scripts and translations</text>
              <rect x="400" y="36" width="340" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="416" y="59">Wrong country (US terms in a UK policy)</text>
              <rect x="400" y="80" width="340" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="416" y="103">Outdated rules (changed in 2024 to 2026)</text>
              <rect x="400" y="124" width="340" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="416" y="147">Made-up requirements that sound real</text>
              <rect x="400" y="168" width="340" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="416" y="191">Private employee data in prompts</text>
              <rect x="400" y="212" width="340" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="416" y="235">Biased or unfair wording</text>
              <g text-anchor="middle">
                <rect x="24" y="264" width="150" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="99" y="289">AI drafts</text>
                <rect x="216" y="264" width="150" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="291" y="289">You check sources</text>
                <rect x="408" y="264" width="150" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="483" y="289">Adviser reviews</text>
                <rect x="600" y="264" width="150" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="675" y="289">Approve and publish</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#hp2a)">
                <line x1="176" y1="284" x2="212" y2="284"/>
                <line x1="368" y1="284" x2="404" y2="284"/>
                <line x1="560" y1="284" x2="596" y2="284"/>
              </g>
            </g>
          </svg>
          <figcaption>AI is strong at words and structure. It is weak at current legal facts. Every draft goes through a person and an adviser before it is published.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>What AI does well</th><th>What you still check</th></tr></thead>
            <tbody>
              <tr><td>Drafting a first version</td><td>Headings, structure, neutral wording</td><td>Every rule, number and date</td></tr>
              <tr><td>Simplifying</td><td>Shorter sentences, plain words, bullet lists</td><td>That the meaning did not change</td></tr>
              <tr><td>Comparing</td><td>Old and new versions side by side; gaps between hotels</td><td>That each difference is real</td></tr>
              <tr><td>Summarising text you paste</td><td>Key points from long official guidance</td><td>The summary against the original text</td></tr>
              <tr><td>FAQs and manager scripts</td><td>Turns a policy into questions and answers</td><td>That each answer matches the policy</td></tr>
              <tr><td>Translations</td><td>A first draft in another language</td><td>A fluent speaker checks it</td></tr>
            </tbody>
          </table>
          <p>Notice the pattern. AI saves time on <em>words</em>. You stay responsible for <em>facts</em> and <em>decisions</em>.</p>
        </div>
        <div class="lc-card">
          <h3>The main risks, with real examples</h3>
          <table class="lc-table">
            <thead><tr><th>Risk</th><th>Example</th><th>How to catch it</th></tr></thead>
            <tbody>
              <tr><td><strong>Wrong country</strong></td><td>A draft family leave policy mentions "FMLA leave" and "at-will employment". These are US ideas. Harbour Lane is in England.</td><td>Say the country in every prompt. Search the draft for US terms.</td></tr>
              <tr><td><strong>Outdated rules</strong></td><td>"Staff need 26 weeks' service to ask for flexible working." This changed in April 2024. It is now a day-one right.</td><td>Check every legal point on GOV.UK or Acas. Note the date you checked.</td></tr>
              <tr><td><strong>Made-up requirements</strong></td><td>"UK law requires a written social media policy." There is no general legal rule like this. It is good practice only.</td><td>Ask the AI for the source. If there is no official source, remove it.</td></tr>
              <tr><td><strong>Private data</strong></td><td>Pasting a real grievance with names and health details into a free AI tool.</td><td>Use made-up or anonymised text. Use only tools your employer approves.</td></tr>
              <tr><td><strong>Unfair wording</strong></td><td>"We want a young, energetic team." This can be age discrimination.</td><td>Ask the AI to flag wording linked to protected characteristics. Then decide yourself.</td></tr>
            </tbody>
          </table>
          <p>UK employment law is changing in stages from 2026 to 2027 under the Employment Rights Act 2025. For example, most tribunal claim time limits went from 3 months to 6 months on 1 October 2026. From 1 January 2027, the unfair dismissal qualifying period is due to drop from 2 years to 6 months. AI tools often do not know about recent changes. Check the GOV.UK timeline for current dates.</p>
        </div>
        <div class="lc-card">
          <h3>Prompts that make checking easier</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a UK sickness absence policy.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are helping an HR team in England draft a sickness absence policy
        for a hotel group with about 260 staff, many on shifts.
        Draft the structure and plain wording only. Follow these rules:
        1. Do not state any legal rule as a fact. Write each legal point as
           [LEGAL CHECK: what to check, which official source].
        2. Say when your knowledge ends, and which rules often change.
        3. Use UK law only. Do not use US terms.
        4. Do not use real names or health details.</code></pre>
          <p>The better prompt does not make the AI correct. It makes the AI show you <em>where</em> to check. Business versions of AI tools may have different data settings from free versions. Check your tool's current help pages and your employer's rules.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the outdated rule</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Grace asks">"Update our 2023 sickness absence policy for 2026. Keep our current rules where they are still legal."</li>
              <li data-kind="answer" data-label="AI replies">A neat draft. It says: "Statutory Sick Pay (SSP) is paid from the fourth day of sickness, if the employee earns at least the lower earnings limit."</li>
              <li data-kind="thought" data-label="Grace thinks">"This matches our 2023 text. But I know sick pay rules changed in 2026. Is this still right?"</li>
              <li data-kind="tool" data-label="Grace checks">She opens the GOV.UK Statutory Sick Pay pages and the government's Employment Rights Act timeline.</li>
              <li data-kind="result" data-label="What she finds">Since 6 April 2026, SSP is paid from the first day of sickness. The lower earnings limit was removed. Low earners get 80% of their average weekly pay if that is less than the standard rate.</li>
              <li data-kind="warn" data-label="The mistake">The AI repeated the old rule with full confidence. It did not say that its knowledge might be out of date.</li>
              <li data-kind="check" data-label="The fix">Grace corrects the draft and adds the source and the date she checked. She asks payroll to confirm the change before the adviser review.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to audit the legal claims in a short policy paragraph, instead of rewriting it. Then check its list yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful HR compliance reviewer in [England, UK]. Use simple English.

        Below is a made-up draft paragraph from a [hotel group's holiday policy]:
        [All staff get 20 days' holiday plus bank holidays. Casual staff do not get paid holiday. By law, holiday must be booked four weeks in advance. Unused holiday is lost at the end of the year. Holiday records are kept for two years.]

        Please:
        1. List every claim about the law in a table: Claim | Likely correct, likely wrong or not sure | Why, in one line | Official source to check (name the website or page type only).
        2. Mark any rule that is our own choice, not the law.
        3. Name any rule on this topic that changed between 2024 and 2026 and should be checked.
        4. Do not rewrite the policy. Do not invent section numbers or quotes.
        5. Tell me when your knowledge ends.
        End with: "Not legal advice. Check with an employment lawyer or HR adviser."</pre>
            <ul class="ai-try-checks">
              <li>"Casual staff do not get paid holiday" is flagged as likely wrong.</li>
              <li>The "four weeks by law" and "two years" record claims are questioned.</li>
              <li>It mentions holiday changes for irregular-hours workers or record keeping.</li>
              <li>Sources are official (GOV.UK, Acas, legislation.gov.uk), with no invented section numbers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is fast with words and weak with current facts. Let it draft, simplify and compare. Make it mark every legal claim. Then check each claim against an official source, and write down the date you checked.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Employment Law Basics for Policy Writers</h1>
        </div>
        <p class="lc-lead">You do not need to be a lawyer to write a good policy. But you need to know where the rules come from and how strong each source is. In this lesson you will learn the main sources of employment rules in the UK and the US, in general words. You will see the UK changes due in 2026 and 2027, and why a qualified person checks every policy. This lesson is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Two stacks of rule sources. UK, England: Acts of Parliament such as the Equality Act 2010; regulations such as the Working Time Regulations; statutory codes such as the Acas Code; official guidance from GOV.UK, Acas and ICO; your contracts and policies. US, for example New York: federal laws such as Title VII, ADA and FLSA; state laws such as New York State; city laws such as NYC Local Law 144; agency guidance from EEOC and DOL; your handbook and policies. Higher layers carry more legal weight. Your policy can give more than the legal minimum, never less.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="195" y="24" font-weight="700" fill="#c4b5fd">UK (England)</text>
              <text x="565" y="24" font-weight="700" fill="#c4b5fd">US (for example New York)</text>
              <rect x="20" y="36" width="350" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="195" y="61">Acts of Parliament (Equality Act 2010)</text>
              <rect x="20" y="84" width="350" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="195" y="109">Regulations (Working Time Regulations)</text>
              <rect x="20" y="132" width="350" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="195" y="157">Statutory codes (Acas Code)</text>
              <rect x="20" y="180" width="350" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="195" y="205">Official guidance (GOV.UK, Acas, ICO)</text>
              <rect x="20" y="228" width="350" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="195" y="253">Your contracts and policies</text>
              <rect x="390" y="36" width="350" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="565" y="61">Federal laws (Title VII, ADA, FLSA)</text>
              <rect x="390" y="84" width="350" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="565" y="109">State laws (New York State)</text>
              <rect x="390" y="132" width="350" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="565" y="157">City laws (NYC Local Law 144)</text>
              <rect x="390" y="180" width="350" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="565" y="205">Agency guidance (EEOC, DOL)</text>
              <rect x="390" y="228" width="350" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="565" y="253">Your handbook and policies</text>
              <text x="380" y="290" font-size="12" fill="#9b99b8">Higher layers carry more legal weight. Courts and tribunals decide what the words mean.</text>
              <text x="380" y="310" font-size="12" fill="#9b99b8">Your policy can give more than the legal minimum, never less.</text>
            </g>
          </svg>
          <figcaption>Both countries layer their rules. Your policy sits at the bottom and must fit every layer above it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where UK employment rules come from</h3>
          <ul class="lc-list">
            <li><strong>Acts of Parliament</strong>: the main laws, such as the Equality Act 2010.</li>
            <li><strong>Regulations</strong>: detailed rules made under an Act, such as the Working Time Regulations 1998.</li>
            <li><strong>Statutory codes of practice</strong>: official codes, such as the Acas Code on disciplinary and grievance procedures. A code is not law itself. But tribunals take it into account.</li>
            <li><strong>Official guidance</strong>: GOV.UK pages, Acas advice, and guidance from the ICO (the data protection regulator).</li>
            <li><strong>Case law</strong>: decisions by courts and tribunals on what the words mean.</li>
          </ul>
          <p>Most employment law is the same in England, Wales and Scotland. Northern Ireland has its own employment law. Harbour Lane Hotels is in Bristol, England.</p>
          <table class="lc-table">
            <thead><tr><th>UK law</th><th>What it covers, in general words</th><th>Policies it affects</th></tr></thead>
            <tbody>
              <tr><td>Equality Act 2010</td><td>Protects 9 characteristics: age, disability, gender reassignment, marriage and civil partnership, pregnancy and maternity, race, religion or belief, sex, and sexual orientation. Covers harassment and reasonable adjustments for disabled people.</td><td>Equal opportunities, dignity at work, recruitment, almost all others</td></tr>
              <tr><td>Employment Rights Act 1996</td><td>Written terms of employment, unfair dismissal, flexible working requests, many family rights</td><td>Disciplinary, flexible working, family leave</td></tr>
              <tr><td>Working Time Regulations 1998</td><td>Working hours, rest breaks, at least 5.6 weeks' paid holiday a year</td><td>Holiday, rotas</td></tr>
              <tr><td>UK GDPR and Data Protection Act 2018</td><td>How you collect, use, store and delete personal data</td><td>Privacy notice, HR records, monitoring</td></tr>
              <tr><td>Health and Safety at Work etc. Act 1974</td><td>A safe workplace; a written policy if you have 5 or more employees</td><td>Health and safety</td></tr>
              <tr><td>Employment (Allocation of Tips) Act 2023</td><td>Tips passed to workers in full and shared fairly</td><td>Tips</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>UK changes in 2026 and 2027</h3>
          <p>The Employment Rights Act 2025 became law in December 2025. Its changes start in stages. Here are some that affect Harbour Lane's policies, from the government's timeline published in September 2026.</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Change (general words)</th><th>Harbour Lane policy</th></tr></thead>
            <tbody>
              <tr><td>6 April 2026</td><td>Statutory Sick Pay from the first day of sickness, with no lower earnings limit. Paternity leave and unpaid parental leave from day one. Reports of sexual harassment can be whistleblowing. Holiday records kept for 6 years.</td><td>Sickness, family leave, whistleblowing, holiday</td></tr>
              <tr><td>1 October 2026</td><td>Most tribunal claim time limits go from 3 months to 6 months.</td><td>Grievance and disciplinary (awareness)</td></tr>
              <tr><td>30 October 2026</td><td>Employers must take "all reasonable steps" to prevent sexual harassment. New protection from harassment by third parties, such as guests. This covers sexual harassment and harassment linked to most protected characteristics, such as race or disability.</td><td>Dignity at work</td></tr>
              <tr><td>By end of 2026</td><td>Consult workers on the tips policy, and review it at least every 3 years.</td><td>Tips</td></tr>
              <tr><td>1 January 2027</td><td>Unfair dismissal qualifying period drops from 2 years to 6 months.</td><td>Probation, disciplinary</td></tr>
              <tr><td>Later in 2027</td><td>More changes, for example to flexible working and zero-hours contracts.</td><td>Flexible working, casual staff</td></tr>
            </tbody>
          </table>
          <p>Dates can move. Check the latest GOV.UK timeline before you rely on any date.</p>
        </div>
        <div class="lc-card">
          <h3>Where US employment rules come from</h3>
          <p>In the US, rules come from federal law, state law and sometimes city law. The strictest rule that applies usually wins. Two federal agencies matter most: the EEOC (Equal Employment Opportunity Commission) for discrimination, and the DOL (Department of Labor) for pay and leave.</p>
          <table class="lc-table">
            <thead><tr><th>US law</th><th>What it covers, in general words</th></tr></thead>
            <tbody>
              <tr><td>Title VII of the Civil Rights Act</td><td>Discrimination based on race, colour, religion, sex or national origin. Covers employers with 15 or more employees.</td></tr>
              <tr><td>ADA (Americans with Disabilities Act)</td><td>Disability discrimination and reasonable accommodation. Covers employers with 15 or more employees.</td></tr>
              <tr><td>ADEA (Age Discrimination in Employment Act)</td><td>Protects workers aged 40 and over. Covers private employers with 20 or more employees.</td></tr>
              <tr><td>Equal Pay Act</td><td>Equal pay for equal work, whatever a person's sex</td></tr>
              <tr><td>FLSA (Fair Labor Standards Act)</td><td>Minimum wage and overtime. Sets which jobs are exempt (no overtime) and non-exempt.</td></tr>
              <tr><td>FMLA (Family and Medical Leave Act)</td><td>Unpaid, job-protected leave for some family and medical reasons. Covers private employers with 50 or more employees.</td></tr>
            </tbody>
          </table>
          <p>States and cities often add more. For example, New York State requires every employer to have a sexual harassment prevention policy and to give yearly, interactive training. New York City's Local Law 144 requires bias audits of automated hiring tools. Maria Lopez, people lead at the made-up Brightside Software in New York, must check all three levels. Most US states also use "at-will" employment, so many handbooks say they are not a contract.</p>
        </div>
        <div class="lc-card">
          <h3>Why a qualified person checks every policy</h3>
          <ul class="lc-list">
            <li><strong>Details and exceptions</strong>: a rule may depend on length of service, contract type or company size.</li>
            <li><strong>Your facts</strong>: casual staff, agency workers and night shifts can change what applies.</li>
            <li><strong>Timing</strong>: laws change in stages, as the table above shows.</li>
            <li><strong>Contract wording</strong>: one word such as "will" can turn a policy into a promise. An adviser checks what is contractual (part of the employment contract) and what is not.</li>
          </ul>
          <p>AI can help you map which laws touch a policy. Ask it to show how sure it is, and to name official places to check.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What laws apply to tips?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>For a tips policy at a hotel group in England, list the UK laws, codes
        and official guidance that apply. For each one give: type, one plain
        sentence on what it means for the policy, an official website to
        check, and how sure you are. Do not invent section numbers.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: rank the sources</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Grace is checking a rule for a UK policy. Put these sources in order, from the strongest to the weakest.</p>
            <ol data-sequence-target="list">
              <li data-order="1">An Act of Parliament, such as the Equality Act 2010</li>
              <li data-order="2">Regulations made under an Act, such as the Working Time Regulations 1998</li>
              <li data-order="3">A statutory code of practice, such as the Acas Code on disciplinary and grievance procedures</li>
              <li data-order="4">Official guidance on GOV.UK or the Acas website</li>
              <li data-order="5">A law firm's blog post explaining the change</li>
              <li data-order="6">An AI chatbot answer with no source</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a law map for one policy. Then check each row on the official website it names.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a research assistant for an HR team. Use simple English.

        Policy topic: [a tips policy for hotel restaurants and bars]
        Country: [England, UK]
        Employer: [Harbour Lane Hotels, three hotels, about 260 staff, many casual workers]

        Make a law map table with these columns:
        Source | Type (Act, regulations, code of practice, official guidance) | What it means for this policy, in one plain sentence | Official place to check (for example legislation.gov.uk, GOV.UK, Acas) | How sure you are (high, medium, low)

        Then:
        1. List rules on this topic that changed recently or are due to change. Give the month if you know it. Say if you are not sure.
        2. Tell me when your knowledge ends.
        3. List 3 questions I should ask an employment lawyer.

        Rules: use only sources for this country. Do not invent section numbers, case names or quotes. If you are not sure a source exists, say so. End with: "Not legal advice."</pre>
            <ul class="ai-try-checks">
              <li>Only sources for the chosen country appear (no US laws for a UK policy).</li>
              <li>Every row names an official website you can open.</li>
              <li>Change dates match the latest GOV.UK timeline when you check them.</li>
              <li>Low-confidence rows are clearly marked, with no invented section numbers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Laws set the floor, codes show a fair process, and guidance explains. Your policy can give more than the law, but never less. Always check the date a rule starts, because many UK rules change in 2026 and 2027.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Finding What a Policy Must Cover</h1>
        </div>
        <p class="lc-lead">Before you draft a policy, list what it must cover. This list is called a requirements list. You build it from official sources. AI can pull requirements out of text you paste, but you must check every item. In this lesson you will learn the steps, where to look, and how to tag each item. You will follow Grace Bennett as she builds the list for a missing document: a tips policy for two of Harbour Lane's three hotels.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 316" role="img" aria-label="Six steps to build a requirements list. 1 Scope: topic, country, who it covers. 2 Collect sources: legislation, GOV.UK, Acas. 3 AI extracts, only from text you paste. 4 Check each row: open the source and read it. 5 Tag each row: law, code, practice or choice. 6 Sign off: adviser review and date checked. Below, an example row: T3, pay tips by the end of the month after the tip was paid, tagged Law, source Employment (Allocation of Tips) Act 2023, checked 30 September 2026 by Grace.">
            <defs><marker id="hp4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="40" width="220" height="60" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="130" y="65" font-weight="700">1. Scope</text>
              <text x="130" y="85" font-size="12" fill="#9b99b8">topic, country, who it covers</text>
              <rect x="270" y="40" width="220" height="60" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="65" font-weight="700">2. Collect sources</text>
              <text x="380" y="85" font-size="12" fill="#9b99b8">legislation, GOV.UK, Acas</text>
              <rect x="520" y="40" width="220" height="60" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="630" y="65" font-weight="700">3. AI extracts</text>
              <text x="630" y="85" font-size="12" fill="#9b99b8">only from text you paste</text>
              <rect x="520" y="150" width="220" height="60" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="630" y="175" font-weight="700">4. Check each row</text>
              <text x="630" y="195" font-size="12" fill="#9b99b8">open the source and read it</text>
              <rect x="270" y="150" width="220" height="60" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="175" font-weight="700">5. Tag each row</text>
              <text x="380" y="195" font-size="12" fill="#9b99b8">law, code, practice, choice</text>
              <rect x="20" y="150" width="220" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="130" y="175" font-weight="700">6. Sign off</text>
              <text x="130" y="195" font-size="12" fill="#9b99b8">adviser review, date checked</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#hp4a)">
                <line x1="242" y1="70" x2="266" y2="70"/>
                <line x1="492" y1="70" x2="516" y2="70"/>
                <line x1="630" y1="102" x2="630" y2="146"/>
                <line x1="518" y1="180" x2="494" y2="180"/>
                <line x1="268" y1="180" x2="244" y2="180"/>
              </g>
              <rect x="20" y="232" width="720" height="64" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <g text-anchor="start" font-size="12">
                <text x="36" y="257"><tspan font-weight="700">Example row:</tspan> T3 | Pay tips by the end of the month after the tip was paid | Law</text>
                <text x="36" y="281" fill="#9b99b8">Source: Employment (Allocation of Tips) Act 2023 | Checked 30 Sep 2026 by Grace</text>
              </g>
            </g>
          </svg>
          <figcaption>A requirements list is built in six steps. Every row ends with a source, a tag and the date someone checked it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a requirements list is</h3>
          <p>A requirements list is a table of everything a policy must include, or the business must do. Each row links to a source. Give every row one tag:</p>
          <ul class="lc-list">
            <li><strong>Law</strong>: required by an Act or regulations. You must do it.</li>
            <li><strong>Code</strong>: from a statutory code of practice or official guidance. Follow it unless you have a good reason.</li>
            <li><strong>Good practice</strong>: helps staff, but no rule requires it.</li>
            <li><strong>Our choice</strong>: a business decision, such as which payday to use.</li>
          </ul>
          <p>Start from official sources, not search results or AI memory:</p>
          <table class="lc-table">
            <thead><tr><th>Country</th><th>Official sources</th></tr></thead>
            <tbody>
              <tr><td>UK</td><td>legislation.gov.uk (the text of laws), GOV.UK (government guidance), Acas (codes and advice), EHRC (equality), ICO (data protection), HSE (health and safety)</td></tr>
              <tr><td>US</td><td>EEOC (discrimination), DOL (pay, overtime, FMLA), state labour departments such as New York State's, city agencies such as New York City's Department of Consumer and Worker Protection</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: Harbour Lane's tips requirements</h3>
          <p>All three hotels take card tips every week. Only Quayside has a written tips policy. Grace collects the Employment (Allocation of Tips) Act 2023, the statutory Code of Practice on fair and transparent distribution of tips, and the GOV.UK guidance. Here is part of her list. The rules are described in general words. This is not legal advice.</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Requirement</th><th>Tag</th><th>Source</th><th>Checked</th></tr></thead>
            <tbody>
              <tr><td>T1</td><td>Pass all qualifying tips, gratuities and service charges to workers in full. Only tax and National Insurance may be taken off.</td><td>Law</td><td>Tips Act 2023; GOV.UK guidance</td><td>30 Sep 2026, Grace</td></tr>
              <tr><td>T2</td><td>Share tips between workers fairly, using the statutory Code.</td><td>Law + Code</td><td>Tips Act 2023; Code of Practice</td><td>30 Sep 2026, Grace</td></tr>
              <tr><td>T3</td><td>Pay tips by the end of the month after the month the customer paid them.</td><td>Law</td><td>Tips Act 2023</td><td>30 Sep 2026, Grace</td></tr>
              <tr><td>T4</td><td>Have a written tips policy for each place of business that gets tips more than now and then.</td><td>Law</td><td>Tips Act 2023</td><td>30 Sep 2026, Grace</td></tr>
              <tr><td>T5</td><td>Make the policy available to all workers.</td><td>Law</td><td>Tips Act 2023</td><td>30 Sep 2026, Grace</td></tr>
              <tr><td>T6</td><td>Keep records of tips and how they were shared for 3 years. Workers can ask to see them.</td><td>Law</td><td>Tips Act 2023; GOV.UK guidance</td><td>30 Sep 2026, Grace</td></tr>
              <tr><td>T7</td><td>Consult workers on the policy and review it at least every 3 years.</td><td>Law (due by end of 2026)</td><td>Employment Rights Act 2025</td><td>Check start date again in December</td></tr>
              <tr><td>T8</td><td>Show a worked example of how a month's tips are shared.</td><td>Good practice</td><td>Grace's idea</td><td>Not needed</td></tr>
              <tr><td>T9</td><td>Pay tips through payroll with the normal monthly pay.</td><td>Our choice</td><td>Finance decision</td><td>Not needed</td></tr>
            </tbody>
          </table>
          <p>Notice T7. It is a known change with a future start date. Grace marks it so she checks it again before the policy goes live.</p>
        </div>
        <div class="lc-card">
          <h3>Make AI work from sources, not memory</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What must a UK tips policy include?</code></pre>
          <p>This answer comes from the AI's memory. It may be old, from another country, or partly made up.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below is text I copied from the GOV.UK guidance on distributing tips.
        Use ONLY this text. List each requirement in one plain sentence.
        For each one, quote the exact sentence it comes from.
        If the text does not say something, write NOT IN SOURCE.
        Do not add requirements from memory.
        [paste the text here]</code></pre>
          <p>Then check every row yourself:</p>
          <ul class="lc-list">
            <li>Is the source official? A law firm blog is useful, but it is not the source.</li>
            <li>Does the quote really appear in the source, with the same meaning?</li>
            <li>Did "should" become "must"? A code's "should" is not always a legal "must".</li>
            <li>Is the rule in force now, or does it start later?</li>
            <li>Does it apply to you: your country, your size, your type of workers?</li>
            <li>What is missing? The AI only knows the text you pasted. Compare with a second official source.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: tag the requirement</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">An AI gave Grace these "requirements" for a UK tips policy. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="law" data-label="Law"></div>
              <div data-sorter-target="bucket" data-bucket="code" data-label="Code or guidance"></div>
              <div data-sorter-target="bucket" data-bucket="choice" data-label="Good practice or our choice"></div>
              <div data-sorter-target="bucket" data-bucket="fake" data-label="Made up by AI"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="law" data-why="The Employment (Allocation of Tips) Act 2023 requires qualifying tips to be passed on in full.">Pass on all qualifying card tips to workers in full.</li>
              <li data-bucket="law" data-why="The Act requires a written policy where tips are paid more than occasionally.">Have a written tips policy for each hotel that often gets tips.</li>
              <li data-bucket="code" data-why="The statutory Code of Practice explains how to share tips fairly and openly. It gives detail on top of the Act.">Use clear, fair factors to decide each worker's share, as the statutory Code explains.</li>
              <li data-bucket="choice" data-why="A worked example helps staff understand. No rule requires it.">Add a worked example of how a month's tips are shared.</li>
              <li data-bucket="choice" data-why="The law sets a latest date. The exact payday is a business choice.">Pay tips on the last Friday of each month.</li>
              <li data-bucket="fake" data-why="The law requires fair sharing, not equal sharing. This rule does not exist.">UK law says tips must be split equally between all staff.</li>
              <li data-bucket="fake" data-why="There is no such cap. The AI invented a rule that sounds real.">UK law caps a worker's share of tips at 10% of their wages.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a requirements list from official text. Paste real official text if you have it. If you do not, the AI will mark every row as unchecked.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR research assistant. Use simple English.

        Build a requirements list for this policy:
        Policy: [tips policy]
        Country: [England, UK]
        Employer: [a hotel group with three hotels, restaurants and bars, card tips every week]

        Source text copied from an official website:
        [Paste the official text here. If this part is empty, use what you know, and mark every row UNCHECKED.]

        Make a table: ID | Requirement in one plain sentence | Tag (Law, Code, Good practice, Our choice) | Source, with the exact sentence it comes from | Status (FROM PASTED TEXT or UNCHECKED)

        Rules:
        1. Use the pasted text first. Quote the sentence for each row.
        2. Do not turn "should" into "must".
        3. Do not invent section numbers or quotes.
        4. After the table, list topics the source does not cover, and which official website might cover them.
        End with: "Not legal advice."</pre>
            <ul class="ai-try-checks">
              <li>Each row has a real quote from your text, or is marked UNCHECKED.</li>
              <li>Tags look right: "should" items are not tagged as Law.</li>
              <li>No rule appears that you cannot find in an official source.</li>
              <li>The missing topics point to official websites only.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The requirements list is the backbone of a policy. Every row needs an official source, a tag, and a person who checked it on a date. Let AI pull rows from text you paste, never from memory alone.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Drafting a Policy with AI</h1>
        </div>
        <p class="lc-lead">With a checked requirements list, you are ready to draft. A good policy follows a standard structure: purpose, scope, definitions, rules, responsibilities and steps. In this lesson you will learn that structure, how to brief AI so it drafts from your facts, and how to review the draft. Grace Bennett drafts one tips policy for all three Harbour Lane hotels. It will replace the old Quayside-only version.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 326" role="img" aria-label="Left: a policy skeleton with nine sections. 1 Title, version, owner. 2 Purpose. 3 Scope. 4 Definitions. 5 Policy statement, the rules. 6 Responsibilities. 7 Procedure, the steps. 8 Related documents. 9 Review date and history. Right, who does what. AI can draft: headings and the structure, plain wording and definitions, numbered steps from your notes, and tags each rule with its source ID. People decide: how tips are shared and who gets them, any legal point checked by an adviser, staff consultation and approval, and when it is published.">
            <defs><marker id="hp5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="185" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Policy skeleton</text>
              <text x="570" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Who does what</text>
              <rect x="20" y="36" width="330" height="270" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="38" y="62">1. Title, version, owner</text>
              <text x="38" y="89">2. Purpose</text>
              <text x="38" y="116">3. Scope</text>
              <text x="38" y="143">4. Definitions</text>
              <text x="38" y="170">5. Policy statement (rules)</text>
              <text x="38" y="197">6. Responsibilities</text>
              <text x="38" y="224">7. Procedure (steps)</text>
              <text x="38" y="251">8. Related documents</text>
              <text x="38" y="278">9. Review date and history</text>
              <rect x="400" y="36" width="340" height="120" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="416" y="60" font-weight="700" fill="#6ee7b7">AI can draft</text>
              <g font-size="12">
                <text x="416" y="82">Headings and the structure</text>
                <text x="416" y="100">Plain wording and definitions</text>
                <text x="416" y="118">Numbered steps from your notes</text>
                <text x="416" y="136">Tags each rule with its source ID</text>
              </g>
              <rect x="400" y="186" width="340" height="120" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="416" y="210" font-weight="700" fill="#fcd34d">People decide</text>
              <g font-size="12">
                <text x="416" y="232">How tips are shared, and who gets them</text>
                <text x="416" y="250">Any legal point (an adviser checks)</text>
                <text x="416" y="268">Staff consultation and approval</text>
                <text x="416" y="286">When it is published</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#hp5a)">
                <line x1="352" y1="96" x2="396" y2="96"/>
                <line x1="352" y1="246" x2="396" y2="246"/>
              </g>
            </g>
          </svg>
          <figcaption>Every policy uses the same nine-part skeleton. AI fills in the words. People make the decisions and approve the result.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The standard structure</h3>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>Question it answers</th><th>Harbour Lane tips policy</th></tr></thead>
            <tbody>
              <tr><td>1. Title, version, owner</td><td>Which document is this, and who owns it?</td><td>Tips policy, v0.3 draft, owner Grace Bennett</td></tr>
              <tr><td>2. Purpose</td><td>Why does it exist?</td><td>To pass on all tips in full and share them fairly and openly.</td></tr>
              <tr><td>3. Scope</td><td>Who and what does it cover?</td><td>All workers at the three hotels, including casual and agency workers. Card tips and service charges.</td></tr>
              <tr><td>4. Definitions</td><td>What do the key words mean?</td><td>Tip, service charge, tips pool (all tips for one hotel in one month)</td></tr>
              <tr><td>5. Policy statement</td><td>What are the rules?</td><td>All tips go to workers. Only tax and National Insurance are taken off.</td></tr>
              <tr><td>6. Responsibilities</td><td>Who does what?</td><td>GMs (general managers), payroll, HR, workers</td></tr>
              <tr><td>7. Procedure</td><td>What are the steps?</td><td>Collect, count, share, pay, record, answer requests</td></tr>
              <tr><td>8. Related documents</td><td>What else should I read?</td><td>Grievance procedure, statutory Code of Practice on tips</td></tr>
              <tr><td>9. Review and history</td><td>When was it changed, and when is the next review?</td><td>Version table and next review date</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Brief the AI with your facts</h3>
          <p>The draft can only be as good as the brief. A brief has four parts:</p>
          <ul class="lc-list">
            <li><strong>Facts</strong>: the organisation, the country, the types of workers.</li>
            <li><strong>Checked requirements</strong>: the rows from your requirements list, with their IDs.</li>
            <li><strong>Decisions already made</strong>: for example, Harbour Lane's directors propose to share tips by hours worked. Staff give their views before the final decision.</li>
            <li><strong>Style rules</strong>: plain British English, short sentences, numbered steps.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a tips policy for our hotels.</code></pre>
          <p>The AI will guess the share method and the rules. It may add rules that are wrong or that no one decided.</p>
          <p><strong>Better prompt:</strong> use the brief, the nine sections and one firm rule: <em>only use the requirements and decisions I give you</em>. Ask the AI to put the requirement ID after each rule, such as "(T3)". Then you can trace every sentence back to a source.</p>
          <p>The AI must not decide who gets tips or how they are shared. Managers decide that, after talking to staff. From the end of 2026, consulting workers on a tips policy is expected to be a legal duty in the UK.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: reviewing the draft</h3>
          <p>Here is part of the AI's draft procedure, with a made-up example of how the sharing works:</p>
          <pre><code>7.2 Each month, payroll adds up the tips pool for each hotel.
        7.3 Each worker's share = hours worked that month x the value of
            one hour. (T2)
            Example: Clifton's September pool is £4,200. Staff worked
            2,800 hours in total. One hour = £4,200 / 2,800 = £1.50.
            Liam worked 120 hours, so his share is 120 x £1.50 = £180,
            before tax and National Insurance.
        7.4 Tips are paid with the next month's pay. (T3)</code></pre>
          <p>Grace compares every sentence with the requirements list and the directors' proposal. She finds four problems in other parts of the draft:</p>
          <table class="lc-table">
            <thead><tr><th>The draft says</th><th>Problem</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>"Tips are paid within 30 days."</td><td>Not from the list. The legal limit is the end of the month after the tip was paid.</td><td>Use the wording from T3.</td></tr>
              <tr><td>"Managers may keep a small share to cover breakages."</td><td>Breaks T1. Only tax and National Insurance may be taken off.</td><td>Delete.</td></tr>
              <tr><td>"Staff on probation do not get tips."</td><td>No one decided this. It may be unfair and break the law.</td><td>Delete. Ask the adviser.</td></tr>
              <tr><td>No step for keeping records</td><td>T6 is missing.</td><td>Add a step: keep records for 3 years and answer requests.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: Grace's drafting session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Grace briefs the AI">She pastes the nine sections, the checked requirements T1 to T7, and the directors' proposal: share tips by hours worked. She adds: "Only use what I give you. Put the requirement ID after each rule."</li>
              <li data-kind="answer" data-label="AI drafts">A 900-word draft in nine sections, in plain English, with IDs after most rules.</li>
              <li data-kind="check" data-label="Grace traces each rule">She ticks each requirement ID in her list. T1 to T5 and T7 are covered. T6, keeping records, is missing.</li>
              <li data-kind="warn" data-label="Unsupported sentences">Three sentences have no ID: "paid within 30 days", "managers keep a share for breakages" and "no tips on probation".</li>
              <li data-kind="user" data-label="Grace asks again">"List every sentence that has no requirement ID or decision behind it. Then add a step for T6."</li>
              <li data-kind="result" data-label="Draft v0.3">Grace deletes the three sentences and checks the new T6 step. She marks the draft "for consultation, not approved".</li>
              <li data-kind="check" data-label="Next steps">The three GMs and an employment adviser review v0.3. Staff at all three hotels give their views before the directors approve it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use a brief to get a first draft that you can trace back to your sources. Change the brackets to your own policy, or run it as it is.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR policy writer for a UK employer. Use plain British English and short sentences.

        Draft a policy from this brief.
        Policy: [Tips policy for all three hotels]
        Organisation: [Harbour Lane Hotels, Bristol, England, about 260 staff, including casual and agency workers]
        Checked requirements: [T1 pass on all tips in full, only tax and NI taken off; T2 share fairly; T3 pay by the end of the month after the tip was paid; T4 a written policy for each hotel; T5 available to all workers; T6 keep records for 3 years, workers may ask to see them]
        Decisions made by managers: [tips shared by hours worked; all hourly-paid staff included]

        Sections: 1 Title, version, owner. 2 Purpose. 3 Scope. 4 Definitions. 5 Policy statement. 6 Responsibilities. 7 Procedure (numbered steps). 8 Related documents. 9 Version history.

        Rules: use only the requirements and decisions above. Put the requirement ID after each rule, for example (T3). If something is needed but not decided, write [DECISION NEEDED]. Do not add legal claims. Label it "Draft: not legal advice, for adviser review".</pre>
            <ul class="ai-try-checks">
              <li>Every rule has a requirement ID or a stated decision behind it.</li>
              <li>No new time limits, deductions or legal claims were added.</li>
              <li>Gaps are marked [DECISION NEEDED] instead of being guessed.</li>
              <li>The scope includes casual and agency workers.</li>
              <li>A new starter could follow the steps without help.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A policy draft is only as good as its brief. Give AI the structure, a checked requirements list and the decisions already made. Make it tag every rule with its source. Then trace each sentence, and let people make the decisions.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Plain Language Policies</h1>
        </div>
        <p class="lc-lead">A policy only works if people understand it. Many staff read policies on a phone, in a short break, and some read English as a second language. In this lesson you will learn how to turn dense policy text into plain language. You will measure readability, add examples, and plan safe translations. You will also learn which words you must not simplify without a check. Grace Bennett at Harbour Lane Hotels rewrites one paragraph of the expenses policy.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top: before and after. The old expenses paragraph has 3 sentences and 71 words, an average sentence of 23.7 words, a longest sentence of 39 words and 19 long words of 10 or more letters. The plain version has 8 sentences and 78 words, an average sentence of 9.8 words, a longest sentence of 15 words and no long words. Bottom: five translation steps. 1 plain English, the approved text. 2 AI draft, for example in Polish or Romanian. 3 fluent check by a bilingual reader. 4 staff test with 5 staff. 5 publish, with a note that the English version applies.">
            <defs><marker id="hp6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="190" y="24" font-weight="700" fill="#fca5a5" text-anchor="middle">Before: old expenses text</text>
              <text x="570" y="24" font-weight="700" fill="#6ee7b7" text-anchor="middle">After: plain language</text>
              <rect x="20" y="36" width="340" height="136" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="40" y="64">3 sentences, 71 words</text>
              <text x="40" y="92">Average sentence: 23.7 words</text>
              <text x="40" y="120">Longest sentence: 39 words</text>
              <text x="40" y="148">19 long words (10+ letters)</text>
              <rect x="400" y="36" width="340" height="136" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="420" y="64">8 sentences, 78 words</text>
              <text x="420" y="92">Average sentence: 9.8 words</text>
              <text x="420" y="120">Longest sentence: 15 words</text>
              <text x="420" y="148">0 long words (10+ letters)</text>
              <line x1="362" y1="104" x2="396" y2="104" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#hp6a)"/>
              <text x="380" y="210" font-weight="700" fill="#c4b5fd" text-anchor="middle">Translation steps</text>
              <g font-size="12">
                <rect x="10" y="226" width="124" height="64" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="72" y="252" text-anchor="middle" font-weight="700">1. Plain English</text>
                <text x="72" y="272" text-anchor="middle" fill="#9b99b8" font-size="11">approved text</text>
                <rect x="164" y="226" width="124" height="64" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="226" y="252" text-anchor="middle" font-weight="700">2. AI draft</text>
                <text x="226" y="272" text-anchor="middle" fill="#9b99b8" font-size="11">Polish, Romanian</text>
                <rect x="318" y="226" width="124" height="64" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="380" y="252" text-anchor="middle" font-weight="700">3. Fluent check</text>
                <text x="380" y="272" text-anchor="middle" fill="#9b99b8" font-size="11">bilingual reader</text>
                <rect x="472" y="226" width="124" height="64" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="534" y="252" text-anchor="middle" font-weight="700">4. Staff test</text>
                <text x="534" y="272" text-anchor="middle" fill="#9b99b8" font-size="11">5 staff read it</text>
                <rect x="626" y="226" width="124" height="64" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="688" y="252" text-anchor="middle" font-weight="700">5. Publish</text>
                <text x="688" y="272" text-anchor="middle" fill="#9b99b8" font-size="11">English applies</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#hp6a)">
                <line x1="136" y1="258" x2="160" y2="258"/>
                <line x1="290" y1="258" x2="314" y2="258"/>
                <line x1="444" y1="258" x2="468" y2="258"/>
                <line x1="598" y1="258" x2="622" y2="258"/>
              </g>
              <text x="380" y="316" text-anchor="middle" fill="#9b99b8" font-size="12">Simplify first. Translate the plain version, never the dense one.</text>
            </g>
          </svg>
          <figcaption>The plain version is a little longer, but every sentence is short and clear. Translations start from the approved plain English text, and a person checks every one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What plain language means</h3>
          <p>Plain language means the reader understands the text the first time they read it. It does not mean childish text. It means you remove every word that slows the reader down.</p>
          <ul class="lc-list">
            <li><strong>Short sentences</strong>: one idea in each sentence. Aim for about 15 words or fewer.</li>
            <li><strong>Everyday words</strong>: "start" not "commence", "before" not "prior to".</li>
            <li><strong>Talk to the reader</strong>: "you" for the employee and "we" for the company.</li>
            <li><strong>Active voice</strong>: "Your manager approves the claim", not "The claim shall be authorised".</li>
            <li><strong>Steps as numbered lists</strong>, and one example for each tricky rule.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Policy word</th><th>Plain word</th></tr></thead>
            <tbody>
              <tr><td>shall be reimbursed</td><td>we pay you back</td></tr>
              <tr><td>prior to the commencement of</td><td>before the start of</td></tr>
              <tr><td>in accordance with</td><td>under, or as set out in</td></tr>
              <tr><td>utilise</td><td>use</td></tr>
              <tr><td>it is incumbent upon employees to</td><td>you must</td></tr>
            </tbody>
          </table>
          <p><strong>Readability</strong> means how easy a text is to read. Tools such as Microsoft Word's readability statistics and the Hemingway Editor give a score or a reading age. The UK Home Office design manual recommends a maximum reading age of 9, even for specialist readers. Use these scores as a guide only. A short text can still be unclear. The real test is whether staff understand it.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the expenses paragraph</h3>
          <p>Harbour Lane's expenses policy is current. The rules are fine. But the wording is hard to read. Here is one paragraph (made-up text):</p>
          <pre><code>Employees who incur expenditure wholly, exclusively and necessarily in
        the performance of their duties shall be reimbursed upon submission of
        a valid claim, accompanied by itemised receipts, within the prescribed
        period, subject to authorisation by the appropriate line manager.
        Claims submitted outside of the prescribed period will not ordinarily
        be considered unless exceptional circumstances are demonstrated to the
        satisfaction of the Finance Director. Mileage will be reimbursed at the
        prevailing rate.</code></pre>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make this simpler.</code></pre>
          <p>The AI may cut words that carry meaning. It may also guess numbers, such as "within 30 days".</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Rewrite this policy paragraph in plain British English for hotel staff.
        Use "you" and "we". Keep sentences under 15 words.
        Do not change the meaning. Do not add numbers or rules.
        If a phrase may have a legal or tax meaning, keep it and flag it.
        Where the text is vague, write [ASK HR: question].
        Then list each change: old words | new words | could the meaning change?</code></pre>
          <p>After the AI's draft, Grace answers the [ASK HR] questions. Finance tells her the "prescribed period" is 2 months. Then she has this version:</p>
          <pre><code>You can claim back money that you spend only because of your work.
        For example, a train fare to a training day. Send your claim within
        2 months of spending the money. Add a receipt for each item. Your line
        manager approves your claim. We pay late claims only if the Finance
        Director agrees. If you use your own car for work, we pay a rate for
        each mile. You can find the current rate on the intranet.</code></pre>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Before</th><th>After</th></tr></thead>
            <tbody>
              <tr><td>Sentences</td><td>3</td><td>8</td></tr>
              <tr><td>Words</td><td>71</td><td>78</td></tr>
              <tr><td>Average words per sentence</td><td>23.7</td><td>9.8</td></tr>
              <tr><td>Longest sentence</td><td>39 words</td><td>15 words</td></tr>
              <tr><td>Long words (10 or more letters)</td><td>19</td><td>0</td></tr>
            </tbody>
          </table>
          <p>Grace still checks two points. "Wholly, exclusively and necessarily" is a phrase from UK tax rules. So she asks finance to confirm that "only because of your work" keeps the right meaning. She also checks that "late claims" still lets the Finance Director decide each case.</p>
        </div>
        <div class="lc-card">
          <h3>Examples and translations</h3>
          <p>An example often explains a rule better than a definition. Add one short example to each rule that people often get wrong. Use made-up people and numbers, and check every sum.</p>
          <p>In Harbour Lane's 2026 staff survey (made-up data), 64 of 260 staff said English is not their first language. That is about 1 in 4 staff.</p>
          <table class="lc-table">
            <thead><tr><th>First language</th><th>Staff</th></tr></thead>
            <tbody>
              <tr><td>Polish</td><td>22</td></tr>
              <tr><td>Romanian</td><td>18</td></tr>
              <tr><td>Portuguese</td><td>12</td></tr>
              <tr><td>Spanish</td><td>8</td></tr>
              <tr><td>Other languages</td><td>4</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>64</strong></td></tr>
            </tbody>
          </table>
          <p>Grace plans short translated summaries in Polish and Romanian first. Follow these rules for translations:</p>
          <ul class="lc-list">
            <li>Translate the approved plain English text. Plain text gives far better translations.</li>
            <li>AI can make a first draft. A fluent speaker must check it. Legal terms, such as Statutory Sick Pay, often have no exact word in another language.</li>
            <li>Ask the AI to translate the draft back into English. Compare it with the original to find changes in meaning.</li>
            <li>Add a note that the English version applies if the two versions differ. Ask your adviser to confirm this wording.</li>
            <li>Use an AI tool your employer has approved. Policies are company documents, even when they hold no personal data.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: what can you simplify?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Grace finds these phrases in Harbour Lane's policies. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="free" data-label="Simplify freely"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Simplify, then check the meaning"></div>
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep the term and explain it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="free" data-why="These are just long words. &quot;Before the start of your shift&quot; means the same.">"Prior to the commencement of your shift"</li>
              <li data-bucket="free" data-why="&quot;Use the staff entrance&quot; says exactly the same thing.">"Utilise the designated staff entrance"</li>
              <li data-bucket="check" data-why="This is a phrase from UK tax rules. Finance must confirm the plain version keeps the meaning.">"Wholly, exclusively and necessarily"</li>
              <li data-bucket="check" data-why="It sets how much freedom the Finance Director has. A plain version could make the rule stricter or looser.">"Will not ordinarily be considered"</li>
              <li data-bucket="keep" data-why="It is the legal name of a payment. Keep it, and add a short plain explanation.">"Statutory Sick Pay"</li>
              <li data-bucket="keep" data-why="It is a term from the Equality Act 2010. Keep it and explain it: changes that remove barriers for disabled people.">"Reasonable adjustments"</li>
              <li data-bucket="keep" data-why="Staff need to know this term. Explain it and give examples, such as theft or violence at work.">"Gross misconduct"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a dense policy paragraph into plain language, show every change, and draft a short summary for translation. Then check the meaning yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a plain language editor for an HR team in [England, UK]. Readers: [hotel staff who read on phones; about 1 in 4 speak English as a second language].

        Rewrite this made-up policy paragraph:
        [Employees are required to give notification of their intention to take annual leave no less than the prescribed period prior to the commencement of the leave. Requests are subject to operational requirements and will be considered at the discretion of the appropriate manager.]

        Rules:
        1. Use "you" and "we", active voice, and sentences under 15 words.
        2. Do not change the meaning. Do not add numbers, deadlines or rules.
        3. Where the text is vague, write [ASK HR: question].
        4. Keep legal terms, and explain each one in plain words.
        5. Add one short example with a made-up person.

        Then give:
        A. A table: old words | new words | could the meaning change? (yes/no and why)
        B. A 3-line summary in [Polish], marked "AI draft: a fluent speaker must check".</pre>
            <ul class="ai-try-checks">
              <li>No new numbers or deadlines appear, such as "4 weeks' notice".</li>
              <li>Vague words such as "prescribed period" and "discretion" became [ASK HR] questions.</li>
              <li>The change table flags any change that could alter the meaning.</li>
              <li>The translated summary is marked as a draft for a fluent speaker to check.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Plain language is about the reader, not the score. Use short sentences, everyday words and one example per tricky rule. Let AI simplify, but make it flag any change in meaning. Translate only the approved plain version, and have a fluent person check it.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Key Policies</h1>
        </div>
        <p class="lc-lead">Some policies get read far more than others. Staff open the holiday, sickness, family leave, flexible working and expenses policies every week. Managers use the conduct rules when something goes wrong. In this lesson you will learn what each key policy needs, where the law sets a minimum and where the business chooses. You will see how Grace Bennett uses AI to update four outdated Harbour Lane policies, and answer real staff questions. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Six key policies, each with the legal minimum, the business choice and its status in the Harbour Lane register. Holiday: law sets 5.6 weeks and a 12.07 percent option for irregular hours; choice is how to book and notice; outdated. Sickness: law sets SSP from day one since 2026; choice is company sick pay and how to call in; outdated. Family leave: law sets day-one paternity leave since 2026; choice is enhanced pay; outdated. Flexible and hybrid: law gives a day-one right to ask, 2 requests in 12 months; choice is which roles can be hybrid; outdated. Expenses: law is tax rules; choice is limits and deadlines; current. Conduct: law expects a fair process under the Acas Code; choice is dress code and standards; it sits in the disciplinary policy, which is overdue.">
            <defs><marker id="hp7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="22" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Key policies: the legal floor, our choice, and the register status</text>
              <rect x="20" y="36" width="232" height="128" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="36" y="60" font-size="13" font-weight="700">Holiday</text>
              <text x="36" y="84">Law: 5.6 weeks; 12.07% option</text>
              <text x="36" y="106">Choice: how to book, notice</text>
              <text x="36" y="146" fill="#fca5a5">Register: Outdated</text>
              <rect x="264" y="36" width="232" height="128" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="280" y="60" font-size="13" font-weight="700">Sickness absence</text>
              <text x="280" y="84">Law: SSP from day one (2026)</text>
              <text x="280" y="106">Choice: company sick pay,</text>
              <text x="280" y="124">how to call in</text>
              <text x="280" y="146" fill="#fca5a5">Register: Outdated</text>
              <rect x="508" y="36" width="232" height="128" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="524" y="60" font-size="13" font-weight="700">Family leave</text>
              <text x="524" y="84">Law: day-one paternity (2026)</text>
              <text x="524" y="106">Choice: enhanced pay</text>
              <text x="524" y="146" fill="#fca5a5">Register: Outdated</text>
              <rect x="20" y="180" width="232" height="128" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="36" y="204" font-size="13" font-weight="700">Flexible and hybrid</text>
              <text x="36" y="228">Law: ask from day one,</text>
              <text x="36" y="246">2 requests in 12 months</text>
              <text x="36" y="268">Choice: which roles are hybrid</text>
              <text x="36" y="290" fill="#fca5a5">Register: Outdated</text>
              <rect x="264" y="180" width="232" height="128" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="280" y="204" font-size="13" font-weight="700">Expenses</text>
              <text x="280" y="228">Law: tax rules (HMRC)</text>
              <text x="280" y="250">Choice: limits, deadlines</text>
              <text x="280" y="290" fill="#6ee7b7">Register: Current</text>
              <rect x="508" y="180" width="232" height="128" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="524" y="204" font-size="13" font-weight="700">Conduct rules</text>
              <text x="524" y="228">Law: fair process (Acas Code)</text>
              <text x="524" y="250">Choice: dress code, standards</text>
              <text x="524" y="290" fill="#fcd34d">In disciplinary: Overdue</text>
            </g>
          </svg>
          <figcaption>Every key policy has a legal floor and a set of business choices. At Harbour Lane, four of these six areas still use rules that changed in 2024 or 2026.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The legal floor and your choices</h3>
          <p>For each key policy, ask two questions. What does the law require (the floor)? And what has the business chosen on top? Your policy can give more than the law, but never less. AI can help you sort the two, but only a person decides the choices.</p>
          <table class="lc-table">
            <thead><tr><th>Policy</th><th>Old Harbour Lane text says</th><th>Current rule, in general words</th><th>Decision for managers</th></tr></thead>
            <tbody>
              <tr><td>Holiday (#5)</td><td>Casual staff get holiday worked out by an old method.</td><td>For leave years from 1 April 2024, irregular-hours workers can build up holiday at 12.07% of hours worked. Holiday records must be kept for 6 years (from 6 April 2026).</td><td>Use accrual, or rolled-up holiday pay?</td></tr>
              <tr><td>Sickness absence (#6)</td><td>SSP starts on the 4th day. Staff must earn a minimum amount.</td><td>Since 6 April 2026, SSP is paid from the first day of sickness. The lower earnings limit was removed.</td><td>Does company sick pay change?</td></tr>
              <tr><td>Family leave (#7)</td><td>Paternity leave needs 26 weeks' service.</td><td>Since 6 April 2026, paternity leave and unpaid parental leave are day-one rights. Bereaved partners' paternity leave was added. Statutory paternity pay still has a service rule.</td><td>Any enhanced pay above the legal minimum?</td></tr>
              <tr><td>Flexible working (#8)</td><td>26 weeks' service, one request a year, 3-month decision.</td><td>Since 6 April 2024: a day-one right, 2 requests in 12 months, a decision within 2 months, and you must consult before you refuse.</td><td>Which hotel roles can work hybrid?</td></tr>
            </tbody>
          </table>
          <p>SSP means Statutory Sick Pay, the minimum sick pay set by law. Check every rule on GOV.UK or Acas before you publish, and ask payroll to confirm pay rules. Rules can change again.</p>
        </div>
        <div class="lc-card">
          <h3>Leave and absence: two real questions</h3>
          <p><strong>Kasia Nowak</strong>, a casual room attendant at Temple Gate, asks: "My hours change every week. How is my holiday worked out?" The old policy cannot answer her. The new draft shows 12.07% accrual as an example. This means each hour worked builds up 0.1207 hours of holiday. Grace adds a worked example with a spreadsheet formula. Cell B2 holds the hours worked in the month.</p>
          <table class="lc-table">
            <thead><tr><th>Month</th><th>Hours worked (B)</th><th>Formula (C)</th><th>Holiday built up</th></tr></thead>
            <tbody>
              <tr><td>September 2026</td><td>96</td><td><code>=ROUND(B2*12.07%,2)</code></td><td>11.59 hours</td></tr>
            </tbody>
          </table>
          <p>The example uses made-up numbers. Payroll checks the method against the GOV.UK holiday guidance. The managers still have to decide one thing: accrual, or rolled-up holiday pay (holiday pay added to each payslip as a separate line). Both are allowed for irregular-hours workers. This decision is still open, and the adviser will check the choice.</p>
          <p><strong>Marcus Bell</strong>, a chef at Quayside, asks: "If I am off sick for two days, do I get paid?"</p>
          <p>The old policy says that SSP starts on day 4. That is now wrong. The new draft answer is:</p>
          <pre><code>Yes, if you are eligible. Since 6 April 2026, Statutory Sick Pay
        starts from your first day off sick. It covers the days you would
        normally work. If you earn a low amount, SSP may be 80% of your
        normal weekly pay instead of the standard rate. Payroll can tell
        you what you will get.</code></pre>
          <p>Notice that the answer does not state the weekly SSP rate. Rates change every April. Link to the GOV.UK page instead.</p>
        </div>
        <div class="lc-card">
          <h3>Flexible and hybrid working</h3>
          <p><strong>Hybrid working</strong> means splitting work time between home and the workplace. It is one type of flexible working. Most hotel jobs cannot be done from home. But Harbour Lane's 12 central staff (finance, sales, reservations and HR) work from an office at Temple Gate. They already work up to 2 days a week from home, with no written policy.</p>
          <p><strong>Hannah Price</strong>, a receptionist at Quayside, asks: "Can I ask to work only early shifts when I come back from maternity leave?" Yes. Any employee can ask from their first day. The policy must explain how. The September audit found that 2 of 9 requests in the last 12 months were refused without a meeting. The new procedure needs a meeting before any refusal. A refusal must use one of the business reasons set out in law. The government plans more changes in 2027, for example a test of whether a refusal is reasonable. Do not write planned changes as if they are already in force.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a hybrid working policy.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a hybrid working section for a hotel group in England.
        It covers only our 12 central office staff. Hotel roles are on site.
        Decisions made: up to 2 home days a week, agreed with your manager.
        Cover: who can ask, how to ask, equipment, health and safety at home,
        data security, and how we review the arrangement.
        Link to our flexible working policy for formal requests.
        Write [DECISION NEEDED] for anything we have not decided.</code></pre>
          <p>Acas has free advice on home and hybrid working policies. Use it to check the AI's list of topics.</p>
        </div>
        <div class="lc-card">
          <h3>Expenses, conduct, and a US comparison</h3>
          <ul class="lc-list">
            <li><strong>Expenses</strong>: the policy is current. Tax rules decide what is taxable, and HMRC sets approved mileage rates. Do not let AI write the rate into the policy. Link to the current rate on the intranet.</li>
            <li><strong>Conduct rules</strong>: Harbour Lane keeps them inside the disciplinary policy. They list examples of misconduct and gross misconduct (behaviour so serious it can lead to dismissal for a first offence). AI can draft clear examples. Managers decide the standards, and the adviser checks them.</li>
          </ul>
          <p>Key policies look very different in the US. Brightside Software, a made-up company in New York with 120 staff, is a good example. New York State requires paid sick leave: employers with 100 or more employees must give up to 56 hours a year. New York State also requires 20 hours of paid prenatal leave. The federal FMLA (Family and Medical Leave Act) gives unpaid, job-protected leave and covers employers with 50 or more employees. Maria Lopez, the people lead, also checks New York City's own sick leave law. Never mix UK and US rules in one policy.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Grace updates the flexible working policy</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Grace briefs the AI">She pastes the 2019 policy and her checked requirements: day-one right, 2 requests in 12 months, decision within 2 months, consult before refusing. She asks for a redraft in plain English.</li>
              <li data-kind="answer" data-label="AI drafts">A clear draft with numbered steps, a request form and a decision letter template.</li>
              <li data-kind="warn" data-label="A future rule">The draft says: "We can only refuse if the refusal is reasonable." This is a planned 2027 change. It is not in force yet.</li>
              <li data-kind="tool" data-label="Grace checks">She opens the GOV.UK Employment Rights Act timeline. The change is planned for 2027 and is not in force. She moves it to her law-change tracker.</li>
              <li data-kind="warn" data-label="A decision nobody made">The draft also says: "Hybrid working is not available to hotel staff." The managers have not discussed this.</li>
              <li data-kind="check" data-label="Grace fixes it">She deletes both sentences. She adds the rule from the audit: "Your manager meets you before any refusal." She marks the draft for adviser review.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to update one outdated policy section, using only the current rules you give it. Then compare its changes with the official source.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR policy writer for a UK employer. Use plain British English.

        Employer: [a hotel group in England with 58 casual (zero-hours) staff]
        Policy section to update (made-up text):
        [Casual staff receive holiday in proportion to a standard 37.5-hour week, calculated at the end of each year. Holiday records are kept for two years.]

        Current rules I have checked (use only these):
        [1. For leave years from 1 April 2024, irregular-hours workers can build up holiday at 12.07% of hours worked in each pay period. 2. Employers may instead pay rolled-up holiday pay, shown as a separate line on each payslip. 3. Holiday records must be kept for 6 years.]

        Please give:
        A. A table: old rule | what changed | new wording | source number (1, 2 or 3).
        B. The new section, under 150 words, with one worked example (a made-up worker, made-up hours, the sum shown).
        C. A list of [DECISION NEEDED] points for managers.
        Do not add rules I did not give you. End with: "Draft. Not legal advice. Check with an HR adviser."</pre>
            <ul class="ai-try-checks">
              <li>Every change links to one of the three rules you gave.</li>
              <li>The worked example sum is correct (hours x 12.07%).</li>
              <li>The choice between accrual and rolled-up pay is left as a decision.</li>
              <li>No new rules, rates or deadlines were added.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every key policy has a legal floor and a set of business choices. Keep them apart in your drafts. Let AI update wording from rules you have checked. Never let it fill gaps with planned laws, guessed rates or decisions nobody made.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Sensitive Policies</h1>
        </div>
        <p class="lc-lead">Grievance, disciplinary, harassment and whistleblowing policies are read at hard moments. A worker may be upset, scared or angry. A manager may be unsure what to do. Every word must be fair, calm and accurate. In this lesson you will learn the careful wording these policies need, and how to use AI safely to draft them. You will follow Grace Bennett as she rewrites Harbour Lane's Dignity at Work policy before a legal change on 30 October 2026. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: four routes into a fair process. Grievance: a worker raises a problem. Harassment report: unwanted conduct. Whistleblowing: wrongdoing in the public interest. Disciplinary: the employer raises conduct. Middle: the shared fair process in five steps. 1 listen and support. 2 investigate the facts. 3 a meeting, with a companion allowed. 4 decision in writing. 5 appeal to someone new. Right: careful wording rules. No blame before the facts. Be honest about confidentiality. No retaliation. Support for both people. Clear time limits. A companion at meetings.">
            <defs><marker id="hp8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="120" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Four routes</text>
              <text x="380" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">One fair process</text>
              <text x="630" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Careful wording</text>
              <rect x="20" y="40" width="200" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="34" y="60" font-weight="700">Grievance</text>
              <text x="34" y="76" font-size="11" fill="#9b99b8">a worker raises a problem</text>
              <rect x="20" y="94" width="200" height="44" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="34" y="114" font-weight="700">Harassment report</text>
              <text x="34" y="130" font-size="11" fill="#9b99b8">unwanted conduct</text>
              <rect x="20" y="148" width="200" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="34" y="168" font-weight="700">Whistleblowing</text>
              <text x="34" y="184" font-size="11" fill="#9b99b8">wrongdoing, public interest</text>
              <rect x="20" y="202" width="200" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="34" y="222" font-weight="700">Disciplinary</text>
              <text x="34" y="238" font-size="11" fill="#9b99b8">the employer raises conduct</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="220" y1="62" x2="240" y2="62"/>
                <line x1="220" y1="116" x2="240" y2="116"/>
                <line x1="220" y1="170" x2="240" y2="170"/>
                <line x1="220" y1="224" x2="240" y2="224"/>
                <line x1="240" y1="58" x2="240" y2="224"/>
                <line x1="240" y1="58" x2="264" y2="58" marker-end="url(#hp8a)"/>
              </g>
              <g font-size="12">
                <rect x="270" y="40" width="220" height="32" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="284" y="61">1. Listen and support</text>
                <rect x="270" y="87" width="220" height="32" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="284" y="108">2. Investigate the facts</text>
                <rect x="270" y="134" width="220" height="32" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="284" y="155">3. Meeting, companion allowed</text>
                <rect x="270" y="181" width="220" height="32" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="284" y="202">4. Decision in writing</text>
                <rect x="270" y="228" width="220" height="32" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="284" y="249">5. Appeal to someone new</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#hp8a)">
                <line x1="380" y1="72" x2="380" y2="86"/>
                <line x1="380" y1="119" x2="380" y2="133"/>
                <line x1="380" y1="166" x2="380" y2="180"/>
                <line x1="380" y1="213" x2="380" y2="227"/>
              </g>
              <rect x="520" y="40" width="220" height="220" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <g font-size="12">
                <text x="536" y="70">No blame before the facts</text>
                <text x="536" y="102">Honest about confidentiality</text>
                <text x="536" y="134">No retaliation, ever</text>
                <text x="536" y="166">Support for both people</text>
                <text x="536" y="198">Clear time limits</text>
                <text x="536" y="230">A companion at meetings</text>
              </g>
              <text x="380" y="288" font-size="12" fill="#9b99b8" text-anchor="middle">AI drafts templates with placeholders. People handle every real case.</text>
            </g>
          </svg>
          <figcaption>Four different routes lead into one fair process. The wording rules on the right apply to every sensitive policy and letter.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why wording matters so much here</h3>
          <p>In a sensitive policy, one careless word can cause harm. It can make a worker afraid to speak up. It can suggest someone is guilty before anyone has checked the facts. It can also promise something you cannot keep, such as total secrecy.</p>
          <table class="lc-table">
            <thead><tr><th>Risky wording</th><th>Careful wording</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>"The victim and the harasser"</td><td>"The person who raised the concern" and "the person the concern is about"</td><td>No one has decided what happened yet.</td></tr>
              <tr><td>"Everything you tell us is strictly confidential."</td><td>"We keep your report as private as we can. We may need to share some details to look into it."</td><td>An investigation usually needs to share some facts.</td></tr>
              <tr><td>"Malicious complaints will lead to dismissal."</td><td>"You will not be treated badly for raising a genuine concern, even if it is not upheld."</td><td>Threats stop people from speaking up.</td></tr>
              <tr><td>"Guests' behaviour is not our responsibility."</td><td>"We act on harassment by anyone, including guests."</td><td>From 30 October 2026, the law also covers harassment by third parties.</td></tr>
              <tr><td>"You may bring someone with you."</td><td>"You can bring a colleague or a trade union representative to formal meetings."</td><td>Say exactly who the companion can be.</td></tr>
            </tbody>
          </table>
          <p>In the UK, workers have a legal right to bring a companion to formal disciplinary and grievance meetings. The companion can be a fellow worker, a trade union representative or a trade union official.</p>
        </div>
        <div class="lc-card">
          <h3>Dignity at Work: the 30 October 2026 change</h3>
          <p>Harbour Lane's Dignity at Work policy (bullying and harassment) was last reviewed in February 2019. It does not mention guests. Two legal changes affect it:</p>
          <ul class="lc-list">
            <li>Since 26 October 2024, employers have a duty to take reasonable steps to prevent sexual harassment of their employees.</li>
            <li>From 30 October 2026, this becomes "all reasonable steps". Employers can also be liable for harassment by third parties, such as guests, if they did not take all reasonable steps to prevent it. This covers sexual harassment and harassment linked to most protected characteristics, such as race, disability or religion.</li>
          </ul>
          <p><strong>Zainab Ali</strong>, a night receptionist at Clifton, asks: "A guest keeps making comments about my looks. Who do I tell?" The old policy has no answer. Grace's new section gives her three routes: the duty manager, the general manager (GM), or HR by phone or email. It also says what the hotel can do, such as moving her away from the guest, or asking the guest to leave.</p>
          <p>Grace's timeline (all before 30 October):</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Step</th></tr></thead>
            <tbody>
              <tr><td>Fri 9 Oct 2026</td><td>Requirements list checked</td></tr>
              <tr><td>Mon 12 Oct 2026</td><td>Draft v2.0 ready</td></tr>
              <tr><td>Fri 16 Oct 2026</td><td>Employment adviser review done</td></tr>
              <tr><td>Thu 22 Oct 2026</td><td>Directors approve the policy</td></tr>
              <tr><td>Fri 23 Oct 2026</td><td>Sexual harassment risk assessment done for each hotel</td></tr>
              <tr><td>Mon 26 Oct 2026</td><td>Policy published on the intranet; staff briefings at all three hotels that week</td></tr>
            </tbody>
          </table>
          <p>A policy alone is not enough. "All reasonable steps" also means training, risk assessments and acting on reports. The adviser checks what this means for hotels.</p>
          <p>US employers have their own rules. For example, New York State requires every employer to have a sexual harassment prevention policy and to give yearly training. Maria Lopez checks these for Brightside Software.</p>
        </div>
        <div class="lc-card">
          <h3>Grievance, disciplinary and whistleblowing</h3>
          <ul class="lc-list">
            <li><strong>Grievance and disciplinary</strong>: follow the Acas Code of Practice (2015). It covers investigating without delay, a meeting, a written decision and a right to appeal. Acas consulted on a new draft Code from July to September 2026. The 2015 Code is still in force. Watch for the final version, but do not rewrite yet.</li>
            <li><strong>Whistleblowing</strong>: reporting wrongdoing that is in the public interest, such as fraud or danger to health and safety. Since 6 April 2026, reports of sexual harassment can count as whistleblowing. A whistleblowing policy is not required by law for most employers, but GOV.UK recommends one. It should say how to report. It should also say that people can report to a lawyer or a "prescribed person" (an official body, such as a regulator).</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here is the grievance from our chef about his manager [real names and
        details]. Write the outcome letter.</code></pre>
          <p>This shares private data with an AI tool. It also asks AI to decide a real case. Never do either.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a template grievance outcome letter for a UK employer.
        Use placeholders: [NAME], [DATE], [CONCERNS], [FINDINGS], [OUTCOME].
        Use neutral wording. Do not suggest who is right.
        Include the right to appeal, who to appeal to, and the time limit
        as [APPEAL DAYS]. Keep sentences short and kind in tone.</code></pre>
          <p>The manager who heard the grievance fills in the placeholders and makes the decision. HR checks the letter before it is sent.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: careful or risky?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">The AI's first draft of the Dignity at Work policy has these sentences. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="careful" data-label="Careful: keep it"></div>
              <div data-sorter-target="bucket" data-bucket="risky" data-label="Risky: rewrite it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="careful" data-why="It covers guests, which the law covers from 30 October 2026, and it is clear.">We do not accept harassment by anyone, including guests and contractors.</li>
              <li data-bucket="risky" data-why="It promises total secrecy. Most investigations must share some details.">Your report will be kept completely confidential.</li>
              <li data-bucket="careful" data-why="It protects people who speak up, even if the concern is not upheld.">You will not be treated badly for raising a genuine concern.</li>
              <li data-bucket="risky" data-why="It decides guilt before any facts are checked. Use neutral words.">The harasser will be removed from the rota at once.</li>
              <li data-bucket="risky" data-why="It discourages reports. Many people cannot tell the person directly, and the policy should not require it.">Before you report, you must first tell the person to stop.</li>
              <li data-bucket="careful" data-why="It gives clear routes, including one outside the hotel's own management.">You can tell your duty manager, your GM, or HR by phone or email.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft one careful section of a harassment policy. Then check every sentence against the wording rules in this lesson.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR policy writer for a UK employer. Use plain, calm British English.

        Employer: [a hotel group in England with three hotels, restaurants and bars, staff on night shifts]
        Task: draft the section "Harassment by guests and other third parties" for our Dignity at Work policy.

        Cover:
        1. What harassment by a guest can look like (3 short made-up examples).
        2. How staff report it: [duty manager, general manager, or HR by phone or email].
        3. What we may do: support the worker, change duties, warn or remove the guest.
        4. That no one is treated badly for reporting.
        5. How we keep reports private, honestly (no promise of total secrecy).

        Rules: use "the person who raised the concern", not "victim". Do not assume guilt. Do not state legal duties or dates; write [LEGAL CHECK] where the law matters. Under 250 words. End with: "Draft. Not legal advice. Check with an employment adviser."</pre>
            <ul class="ai-try-checks">
              <li>There is no promise of total confidentiality.</li>
              <li>The wording is neutral and does not assume guilt.</li>
              <li>Staff have more than one way to report, including one outside their line manager.</li>
              <li>Legal points are marked [LEGAL CHECK], not stated as facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Sensitive policies must make it safe to speak up and fair to respond. Use neutral words, be honest about privacy, and never assume guilt. Let AI draft templates with placeholders. Keep real cases, real names and every decision with people.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Employee Handbooks</h1>
        </div>
        <p class="lc-lead">An employee handbook brings your policies together in one place. Staff use it to find answers. Managers use it to apply the rules the same way. But a handbook only helps if everyone reads the same, current version. In this lesson you will learn how to plan the contents, combine policies with AI, and control versions. You will see how Grace Bennett fixes a real problem at Harbour Lane Hotels: two different handbooks in use at the same time.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Left: the contents plan for Harbour Lane handbook version 4.0. Part 1 welcome and how to use it. Part 2 pay and time off, 5 policies. Part 3 how we work, 4 policies. Part 4 fair treatment and concerns, 5 policies. Part 5 your information, 1 notice. Separately, a manager toolkit holds the right to work checks. Right: version control rules. One master copy on the intranet. Version number and date on every page. A change log at the front. Old versions archived as PDF. Printed copies replaced, not added. Staff confirm they have read it.">
            <defs><marker id="hp9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="200" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Contents plan: handbook v4.0</text>
              <text x="575" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Version control</text>
              <rect x="20" y="36" width="360" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="36" y="59">Part 1: Welcome and how to use it</text>
              <rect x="20" y="80" width="360" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="36" y="103">Part 2: Pay and time off (5)</text>
              <rect x="20" y="124" width="360" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="36" y="147">Part 3: How we work (4)</text>
              <rect x="20" y="168" width="360" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="36" y="191">Part 4: Fair treatment and concerns (5)</text>
              <rect x="20" y="212" width="360" height="36" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="36" y="235">Part 5: Your information (1)</text>
              <rect x="20" y="268" width="360" height="40" rx="8" fill="#1f1f44" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="36" y="293" fill="#9b99b8">Manager toolkit: right to work checks</text>
              <rect x="410" y="36" width="330" height="272" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <g font-size="12">
                <text x="428" y="68">1. One master copy on the intranet</text>
                <text x="428" y="108">2. Version number and date on every page</text>
                <text x="428" y="148">3. A change log at the front</text>
                <text x="428" y="188">4. Old versions archived as PDF</text>
                <text x="428" y="228">5. Printed copies replaced, not added</text>
                <text x="428" y="268">6. Staff confirm they have read it</text>
              </g>
              <line x1="382" y1="172" x2="406" y2="172" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#hp9a)"/>
            </g>
          </svg>
          <figcaption>A contents plan groups 15 policies into five parts that match staff questions. Six version control rules make sure everyone reads the same current text.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a handbook is for, and Harbour Lane's problem</h3>
          <p>A handbook is a collection of your policies, with a short welcome and a guide to using it. It is not a place to write new rules. Each policy inside it still has its own owner, version and review date.</p>
          <p>Harbour Lane has a version problem. The staff rooms hold printed copies of handbook version 3.2 from March 2021. It has 46 pages. The intranet has version 3.3 from June 2023. The September audit found this mismatch at all three hotels. So two staff can read two different rules on the same day. That is unfair, and it is hard to defend if someone complains.</p>
          <p>Two more points to check with your adviser:</p>
          <ul class="lc-list">
            <li><strong>Contractual or not</strong>: a contractual rule is part of the employment contract. You cannot change it without agreement. Most handbooks say which parts are contractual. An adviser decides this wording.</li>
            <li><strong>Written statement</strong>: UK employees and workers must get a written statement of their main terms by their first day. Some details can sit in another document that staff can easily read, such as the handbook. The audit found 6 of 40 files where the statement came late.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>A contents plan</h3>
          <p>A contents plan is a table of every part of the handbook, what goes in it, and where each piece comes from. Group policies by the questions staff ask, not by the law. Grace's plan for version 4.0 uses the 15-policy register and the missing documents.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Policies</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>1. Welcome and how to use it</td><td>Welcome, how to find answers, contractual status, version and change log</td><td>New. The adviser checks the contractual wording.</td></tr>
              <tr><td>2. Pay and time off</td><td>Holiday, Sickness absence, Family leave, Tips, Expenses</td><td>One Tips policy for all three hotels replaces the Quayside-only one.</td></tr>
              <tr><td>3. How we work</td><td>Flexible working (including hybrid), Health and safety, Social media, Using AI tools at work</td><td>The AI policy is new. It fills a gap.</td></tr>
              <tr><td>4. Fair treatment and concerns</td><td>Equal opportunities, Dignity at Work, Grievance, Disciplinary, Whistleblowing</td><td>Conduct rules sit inside Disciplinary.</td></tr>
              <tr><td>5. Your information</td><td>Employee privacy notice</td><td>New notice replaces the 2018 one.</td></tr>
              <tr><td>Manager toolkit (not in the handbook)</td><td>Right to work checks</td><td>A manager procedure. Staff do not need it.</td></tr>
            </tbody>
          </table>
          <p>That is 15 policies in the handbook and 1 in the manager toolkit. AI is useful at this stage. It can suggest groupings, write the welcome text, and find repeated or conflicting text between policies. You decide what goes in.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Combine all our policies into one handbook.</code></pre>
          <p>The AI may merge rules, drop steps, or rewrite approved text without telling you.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is a list of our 16 policy titles and who reads each one.
        Suggest a contents plan in 4 to 6 parts, grouped by the questions
        staff ask. Show which policies are for managers only.
        Then list any topics that two policies both cover, so I can remove
        the repeat. Do not rewrite or merge any policy text.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Version control</h3>
          <p>Version control means everyone can see which version is current, what changed, and when. Grace sets one rule for numbers. The first number changes for a full new edition. The second number changes for each update between editions.</p>
          <table class="lc-table">
            <thead><tr><th>Version</th><th>Date</th><th>What changed</th></tr></thead>
            <tbody>
              <tr><td>3.2</td><td>March 2021</td><td>Printed edition (being removed)</td></tr>
              <tr><td>3.3</td><td>June 2023</td><td>Intranet update</td></tr>
              <tr><td>3.4</td><td>Mon 26 Oct 2026</td><td>Dignity at Work, Whistleblowing, Sickness absence, Family leave and Flexible working updated</td></tr>
              <tr><td>3.5</td><td>Mon 2 Nov 2026</td><td>Holiday policy updated</td></tr>
              <tr><td>3.6</td><td>Tue 1 Dec 2026</td><td>One Tips policy for all three hotels</td></tr>
              <tr><td>4.0</td><td>Mon 1 Feb 2027</td><td>Full new edition, with the AI use policy and the new privacy notice</td></tr>
            </tbody>
          </table>
          <p>The general managers fix the printed copies by Friday 16 October 2026. They remove every printed copy of version 3.2. Each staff room gets a poster with a QR code to the intranet handbook. Every printout shows the version number and date. Old versions are saved as PDFs in an archive folder. Then you can show which rule applied on any past date.</p>
          <p>AI can help compare two versions. Paste both texts and ask for a table of every difference. But AI can miss small changes, such as "may" becoming "will". Also use the compare feature in your word processor. Microsoft Word and Google Docs both have one. Check the tool's current help pages for the steps.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build handbook version 4.0</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Grace's steps for the new handbook in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">List every policy from the register, plus the missing documents.</li>
              <li data-order="2">Write a contents plan that groups the policies by staff questions.</li>
              <li data-order="3">Update each policy and get it approved by its owner and the adviser.</li>
              <li data-order="4">Write the welcome part: how to use it, contractual status and version.</li>
              <li data-order="5">Check links, cross-references and the change log.</li>
              <li data-order="6">Publish one master copy and archive the old version as a PDF.</li>
              <li data-order="7">Tell staff, replace printed copies, and record that staff have read it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a contents plan and a version table for a handbook. Then decide yourself what goes in each part.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR documents adviser for a UK employer. Use plain British English.

        Employer: [a hotel group in England with three hotels and about 260 staff, many on shifts and on phones]
        Our policies: [Holiday, Sickness absence, Family leave, Tips, Expenses, Flexible working, Health and safety, Social media, Using AI tools at work, Equal opportunities, Dignity at Work, Grievance, Disciplinary, Whistleblowing, Employee privacy notice, Right to work checks]
        Problem: [printed handbook v3.2 (2021) and intranet v3.3 (2023) do not match]

        Please give:
        1. A contents plan in 4 to 6 parts, grouped by the questions staff ask. Table: Part | Policies | Who reads it.
        2. Any policy that belongs in a manager toolkit instead, and why.
        3. A one-paragraph "How to use this handbook" in plain words.
        4. A version table template: Version | Date | What changed | Approved by.
        5. Five rules to stop two versions being used at once.

        Do not write or change any policy text. Mark the contractual status wording [ADVISER TO CHECK].</pre>
            <ul class="ai-try-checks">
              <li>Every policy appears exactly once in the plan or the toolkit.</li>
              <li>The parts follow staff questions, not legal headings.</li>
              <li>The contractual wording is marked for an adviser.</li>
              <li>The version rules include removing old printed copies.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A handbook is only as good as its version control. Keep one master copy, put a version number on every page, and log every change. Let AI suggest the structure and spot differences. Never let it merge or rewrite approved policy text without your check.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Keeping Policies Up to Date</h1>
        </div>
        <p class="lc-lead">A policy that was right last year can be wrong today. Laws change, official guidance changes, and your business changes. At Harbour Lane Hotels, 13 of 15 policies are past their review date, and 8 miss a known law change. In this lesson you will learn how to track law changes, set review dates in a spreadsheet, and keep a change log. You will also see how AI can help you spot which policies a change affects, and where it can mislead you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: the update cycle in six steps, repeating. Watch: check sources monthly. Assess: which policies are affected. Update: draft with AI. Approve: the owner and an adviser. Publish: intranet and tell staff. Log: the change log. Then back to watch. Bottom: a timeline of upcoming UK changes from October 2026. 30 October 2026: harassment duty. End of 2026: tips consultation. 1 January 2027: unfair dismissal after 6 months. 2027: flexible working and zero-hours changes. Date not set: a new Acas Code.">
            <defs><marker id="hp10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd" text-anchor="middle">The update cycle</text>
              <rect x="10" y="36" width="110" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="65" y="60" text-anchor="middle" font-weight="700">1. Watch</text>
              <text x="65" y="80" text-anchor="middle" font-size="11" fill="#9b99b8">sources monthly</text>
              <rect x="136" y="36" width="110" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="191" y="60" text-anchor="middle" font-weight="700">2. Assess</text>
              <text x="191" y="80" text-anchor="middle" font-size="11" fill="#9b99b8">which policies?</text>
              <rect x="262" y="36" width="110" height="60" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="317" y="60" text-anchor="middle" font-weight="700">3. Update</text>
              <text x="317" y="80" text-anchor="middle" font-size="11" fill="#9b99b8">draft with AI</text>
              <rect x="388" y="36" width="110" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="443" y="60" text-anchor="middle" font-weight="700">4. Approve</text>
              <text x="443" y="80" text-anchor="middle" font-size="11" fill="#9b99b8">owner + adviser</text>
              <rect x="514" y="36" width="110" height="60" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="569" y="60" text-anchor="middle" font-weight="700">5. Publish</text>
              <text x="569" y="80" text-anchor="middle" font-size="11" fill="#9b99b8">intranet + tell</text>
              <rect x="640" y="36" width="110" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="695" y="60" text-anchor="middle" font-weight="700">6. Log</text>
              <text x="695" y="80" text-anchor="middle" font-size="11" fill="#9b99b8">change log</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#hp10a)">
                <line x1="121" y1="66" x2="133" y2="66"/>
                <line x1="247" y1="66" x2="259" y2="66"/>
                <line x1="373" y1="66" x2="385" y2="66"/>
                <line x1="499" y1="66" x2="511" y2="66"/>
                <line x1="625" y1="66" x2="637" y2="66"/>
                <path d="M695,96 L695,124 L65,124 L65,100"/>
              </g>
              <text x="380" y="142" text-anchor="middle" font-size="11" fill="#9b99b8">repeat every month, and at every policy's review date</text>
              <text x="380" y="182" font-weight="700" fill="#c4b5fd" text-anchor="middle">Upcoming UK changes (from October 2026)</text>
              <line x1="40" y1="216" x2="730" y2="216" stroke="#9b99b8" stroke-width="2"/>
              <circle cx="90" cy="216" r="6" fill="#ec4899"/>
              <circle cx="245" cy="216" r="6" fill="#f59e0b"/>
              <circle cx="400" cy="216" r="6" fill="#3b82f6"/>
              <circle cx="555" cy="216" r="6" fill="#22d3ee"/>
              <circle cx="690" cy="216" r="6" fill="#9b99b8"/>
              <g text-anchor="middle" font-size="12">
                <text x="90" y="246" font-weight="700">30 Oct 2026</text>
                <text x="90" y="266" fill="#9b99b8" font-size="11">Harassment duty</text>
                <text x="245" y="246" font-weight="700">End of 2026</text>
                <text x="245" y="266" fill="#9b99b8" font-size="11">Tips consultation</text>
                <text x="400" y="246" font-weight="700">1 Jan 2027</text>
                <text x="400" y="266" fill="#9b99b8" font-size="11">Unfair dismissal 6 months</text>
                <text x="555" y="246" font-weight="700">2027</text>
                <text x="555" y="266" fill="#9b99b8" font-size="11">Flexible, zero-hours</text>
                <text x="690" y="246" font-weight="700">Not set</text>
                <text x="690" y="266" fill="#9b99b8" font-size="11">New Acas Code</text>
              </g>
            </g>
          </svg>
          <figcaption>Keeping policies current is a cycle, not a one-off job. The timeline shows changes Harbour Lane must plan for. Dates can move, so check the GOV.UK timeline.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Tracking law changes</h3>
          <p>Do not wait for a policy's review date to find a law change. Check a small set of official sources on a fixed day each month. At Harbour Lane, Daniel Okafor owns this job. He runs a 30-minute "law watch" on the first Monday of each month. The first one is on Monday 5 October 2026.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What to watch</th></tr></thead>
            <tbody>
              <tr><td>GOV.UK</td><td>Email alerts on employment pages, and the Employment Rights Act implementation timeline</td></tr>
              <tr><td>Acas</td><td>Codes of practice, consultations and advice updates</td></tr>
              <tr><td>HSE, ICO, EHRC</td><td>Health and safety, data protection and equality guidance</td></tr>
              <tr><td>US (for Brightside Software)</td><td>DOL, EEOC, the New York State Department of Labor and New York City agencies</td></tr>
            </tbody>
          </table>
          <p>Each change goes into a law-change tracker. This is a simple table that links each change to the policies it affects.</p>
          <table class="lc-table">
            <thead><tr><th>Change (general words)</th><th>Date</th><th>Policies affected</th><th>Status</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>Most tribunal time limits go from 3 to 6 months</td><td>1 Oct 2026 (in force)</td><td>Grievance, Disciplinary</td><td>Brief managers</td><td>Daniel</td></tr>
              <tr><td>"All reasonable steps" to prevent sexual harassment; third-party harassment</td><td>30 Oct 2026</td><td>Dignity at Work</td><td>New policy live 26 Oct</td><td>Grace</td></tr>
              <tr><td>Consult workers on the tips policy; review it every 3 years</td><td>By end of 2026</td><td>Tips</td><td>Consult staff in November</td><td>Grace</td></tr>
              <tr><td>Unfair dismissal qualifying period from 2 years to 6 months</td><td>1 Jan 2027</td><td>Disciplinary, probation process</td><td>Train managers in December</td><td>Grace</td></tr>
              <tr><td>Flexible working and zero-hours changes</td><td>Planned for 2027</td><td>Flexible working, casual contracts</td><td>Watch</td><td>Daniel</td></tr>
              <tr><td>New Acas Code on discipline and grievance</td><td>Not set (consultation closed 23 Sep 2026)</td><td>Disciplinary, Grievance</td><td>Watch; the 2015 Code still applies</td><td>Daniel</td></tr>
            </tbody>
          </table>
          <p>These dates come from the government's timeline in September 2026. Check them again each month. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Review dates in a spreadsheet</h3>
          <p>A policy register is a list of every policy with its owner and dates. Add formulas so the status updates itself. Most Harbour Lane policies are reviewed every 24 months. The health and safety policy is reviewed every 12 months. Put today's date in cell H1. Here it is 02/10/2026. In real use, write <code>=TODAY()</code> instead.</p>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>Holds</th><th>Formula in row 2</th></tr></thead>
            <tbody>
              <tr><td>C</td><td>Last reviewed (a date)</td><td>typed in</td></tr>
              <tr><td>D</td><td>Review cycle in months</td><td>typed in (24 or 12)</td></tr>
              <tr><td>E</td><td>Review due</td><td><code>=EDATE(C2,D2)</code></td></tr>
              <tr><td>F</td><td>Known law change missing? (Yes/No)</td><td>typed in by a person</td></tr>
              <tr><td>G</td><td>Status</td><td><code>=IF(E2&gt;=$H$1,"Current",IF(F2="Yes","Outdated","Overdue"))</code></td></tr>
              <tr><td>I</td><td>Days past review</td><td><code>=MAX(0,$H$1-E2)</code></td></tr>
            </tbody>
          </table>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Policy</th><th>Last reviewed</th><th>Cycle</th><th>Review due</th><th>Law change missing?</th><th>Status</th><th>Days past</th></tr></thead>
            <tbody>
              <tr><td>3</td><td>Dignity at Work</td><td>01/02/2019</td><td>24</td><td>01/02/2021</td><td>Yes</td><td>Outdated</td><td>2,069</td></tr>
              <tr><td>8</td><td>Flexible working</td><td>01/11/2019</td><td>24</td><td>01/11/2021</td><td>Yes</td><td>Outdated</td><td>1,796</td></tr>
              <tr><td>10</td><td>Health and safety</td><td>01/01/2026</td><td>12</td><td>01/01/2027</td><td>No</td><td>Current</td><td>0</td></tr>
              <tr><td>11</td><td>Right to work checks</td><td>01/08/2024</td><td>24</td><td>01/08/2026</td><td>No</td><td>Overdue</td><td>62</td></tr>
              <tr><td>15</td><td>Tips (Quayside)</td><td>01/09/2024</td><td>24</td><td>01/09/2026</td><td>Yes</td><td>Outdated</td><td>31</td></tr>
            </tbody>
          </table>
          <p>The register only stores months, so the sheet uses the 1st of each month. For all 15 policies, <code>=COUNTIF(G2:G16,"Outdated")</code> gives 8, "Overdue" gives 5 and "Current" gives 2. Notice column F. A person must decide if a law change is missing. A formula cannot know that, and neither can an AI tool without your checked facts.</p>
        </div>
        <div class="lc-card">
          <h3>Change logs</h3>
          <p>A change log is a table at the end of each policy. It records each version, what changed, why, and who approved it. It shows staff what is new. It also shows a tribunal or inspector which rule applied on a given date.</p>
          <table class="lc-table">
            <thead><tr><th>Version</th><th>Date</th><th>What changed</th><th>Why (source)</th><th>Approved by</th></tr></thead>
            <tbody>
              <tr><td>3.0</td><td>Jan 2023</td><td>Full review</td><td>Two-year review</td><td>Grace Bennett</td></tr>
              <tr><td>4.0</td><td>26 Oct 2026</td><td>SSP from the first day off sick. Lower earnings limit removed. New low earner rule.</td><td>Employment Rights Act 2025, in force 6 Apr 2026. GOV.UK SSP pages checked 25 Sep 2026.</td><td>Grace Bennett, adviser checked</td></tr>
            </tbody>
          </table>
          <p>This is the Sickness absence policy. AI can draft the "what changed" column if you paste the old and new texts. But it must not invent the "why" column. Each reason needs a real source and the date you checked it.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What UK employment law changes affect my policies?</code></pre>
          <p>The AI answers from memory. Its knowledge may be months out of date, and it may present planned changes as law.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below is a summary I copied from the GOV.UK timeline today, and our
        list of 15 policy titles. Use only this text. For each change, list
        the policies it affects, the start date, and whether it is in force
        now or planned. If the text gives no date, write NO DATE.
        Do not add changes from memory.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Daniel's first law watch</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Monday 5 October">Daniel opens his GOV.UK email alerts. The Employment Rights Act timeline was updated on 25 September 2026.</li>
              <li data-kind="user" data-label="Daniel asks AI">He pastes the timeline summary and the 15 policy titles. "Use only this text. Which policies does each change affect? Is each one in force or planned?"</li>
              <li data-kind="answer" data-label="AI replies">A clear table. It links the harassment change to Dignity at Work, and the tips consultation to the Tips policy.</li>
              <li data-kind="warn" data-label="A mistake">The table says zero-hours changes are "in force from October 2026". The pasted text says they are planned for 2027.</li>
              <li data-kind="check" data-label="Daniel checks">He compares every row with the GOV.UK page. He corrects the zero-hours row and marks it "Watch".</li>
              <li data-kind="result" data-label="Tracker updated">Two new rows go into the law-change tracker, each with an owner and a source link.</li>
              <li data-kind="check" data-label="Grace signs off">Grace reviews the tracker. She books manager training on the 1 January 2027 change for December.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check which policies a law change affects, using only text you paste. Then compare its answer with the official source.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR compliance assistant for a UK employer. Use plain British English.

        Law change summary (copied from an official website on [date]):
        [From 30 October 2026, employers must take all reasonable steps to prevent sexual harassment of employees, and can be liable for harassment by third parties such as customers. Changes to flexible working and zero-hours contracts are planned for 2027.]

        Our policies: [Dignity at Work, Grievance, Disciplinary, Whistleblowing, Flexible working, Holiday, Sickness absence, Equal opportunities, Health and safety, Social media]

        Use only the summary above. Please give:
        1. A table: Change | In force or planned | Start date (or NO DATE) | Policies affected | What to check in each policy.
        2. Other actions that are not policy changes, such as training or risk assessments.
        3. A draft change log line for the most affected policy: Version | Date | What changed | Source.
        Do not add changes from memory. End with: "Not legal advice. Check with an employment adviser."</pre>
            <ul class="ai-try-checks">
              <li>Planned changes are not described as in force.</li>
              <li>Every row comes from the pasted text, with nothing added from memory.</li>
              <li>Actions beyond the policy, such as training, are listed.</li>
              <li>The change log line names a real source and a date.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Keeping policies current is a monthly habit. Watch official sources, link each change to the policies it affects, and log every update with its source and date. Let formulas track review dates. Let AI map changes from text you paste. People decide what a change means and approve every update.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Answering Policy Questions</h1>
        </div>
        <p class="lc-lead">Staff ask HR the same questions again and again. AI can help you answer them faster, but only from answers that HR has already checked and approved. In this lesson you will build an approved answer library and write honest "I don't know yet" replies. You will also set clear rules for passing hard questions to a person. You will use five real-style questions from staff at Harbour Lane Hotels.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A flow for answering a staff question. 1, staff asks by phone, email or chat. 2, is it sensitive, such as harassment or safety? If yes, escalate today to the duty manager and Grace. If no, 3, is there an approved and current answer in the library? If yes, 4, send the answer with a link to the policy. If no, send an I don't know yet reply, log it and pass it to HR. HR writes a new entry, the adviser checks it, and it goes into the library. Below, an example library entry A-01: if I am off sick for two days, do I get paid? Statutory Sick Pay is paid from your first day off sick, since 6 April 2026. Source GOV.UK SSP pages. Approved by Grace Bennett on 25 September 2026. Review on 1 March 2027.">
            <defs><marker id="hp11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="50" width="162" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="101" y="74" font-weight="700">1. Staff asks</text>
              <text x="101" y="94" font-size="12" fill="#9b99b8">phone, email, chat</text>
              <rect x="206" y="50" width="162" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="287" y="74" font-weight="700">2. Sensitive?</text>
              <text x="287" y="94" font-size="12" fill="#9b99b8">harassment, safety</text>
              <rect x="392" y="50" width="162" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="473" y="74" font-weight="700">3. In the library?</text>
              <text x="473" y="94" font-size="12" fill="#9b99b8">approved, current</text>
              <rect x="578" y="50" width="162" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="659" y="74" font-weight="700">4. Send answer</text>
              <text x="659" y="94" font-size="12" fill="#9b99b8">plus policy link</text>
              <rect x="206" y="150" width="162" height="56" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="287" y="174" font-weight="700">Escalate today</text>
              <text x="287" y="194" font-size="12" fill="#9b99b8">duty manager + Grace</text>
              <rect x="392" y="150" width="162" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="473" y="174" font-weight="700">"I don't know yet"</text>
              <text x="473" y="194" font-size="12" fill="#9b99b8">log it, pass to HR</text>
              <rect x="578" y="150" width="162" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="659" y="174" font-weight="700">New entry</text>
              <text x="659" y="194" font-size="12" fill="#9b99b8">adviser checks it</text>
              <g font-size="11" fill="#9b99b8">
                <text x="380" y="42">No</text>
                <text x="566" y="42">Yes</text>
                <text x="306" y="132">Yes</text>
                <text x="490" y="132">No</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#hp11a)">
                <line x1="184" y1="78" x2="202" y2="78"/>
                <line x1="370" y1="78" x2="388" y2="78"/>
                <line x1="556" y1="78" x2="574" y2="78"/>
                <line x1="287" y1="108" x2="287" y2="146"/>
                <line x1="473" y1="108" x2="473" y2="146"/>
                <line x1="556" y1="178" x2="574" y2="178"/>
                <line x1="659" y1="148" x2="659" y2="110"/>
              </g>
              <rect x="20" y="230" width="720" height="84" rx="8" fill="#27274e" stroke="#10b981"/>
              <g text-anchor="start" font-size="12">
                <text x="36" y="254"><tspan font-weight="700">Library entry A-01:</tspan> "If I am off sick for two days, do I get paid?"</text>
                <text x="36" y="276">Answer: Statutory Sick Pay is paid from your first day off sick (since 6 April 2026).</text>
                <text x="36" y="298" fill="#9b99b8">Source: GOV.UK SSP pages | Approved: Grace Bennett, 25 Sep 2026 | Review: 1 Mar 2027</text>
              </g>
            </g>
          </svg>
          <figcaption>Sensitive questions go to a person first. Other questions get an approved answer, or an honest "I don't know yet" and a new library entry.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What an approved answer library is</h3>
          <p>An approved answer library is a list of common staff questions with checked answers. HR writes each answer, an adviser checks any legal point, and a named person approves it. Then anyone who answers questions uses the same words. AI can search the library and draft replies, but it must not write new answers on its own.</p>
          <p>Grace Bennett keeps Harbour Lane's library in a shared spreadsheet. Each entry has these columns:</p>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>Example (entry A-02)</th></tr></thead>
            <tbody>
              <tr><td>Question</td><td>Can I ask to work only early shifts?</td></tr>
              <tr><td>Other ways people ask</td><td>Can I change my hours? Can I stop doing late shifts?</td></tr>
              <tr><td>Approved answer</td><td>Yes, you can ask from your first day. You can make 2 requests in 12 months. We reply within 2 months, and we meet you before we say no.</td></tr>
              <tr><td>Policy and section</td><td>Flexible working (new draft, section 4)</td></tr>
              <tr><td>Official source</td><td>GOV.UK flexible working pages; Acas Code on flexible working requests</td></tr>
              <tr><td>Approved by, date</td><td>Grace Bennett, 25 Sep 2026</td></tr>
              <tr><td>Review date</td><td>1 Mar 2027</td></tr>
              <tr><td>Status</td><td>Approved, Draft or No answer</td></tr>
            </tbody>
          </table>
          <p>Harbour Lane's written flexible working policy is still the old 2019 version. Where the law gives staff more than an old policy, the answer follows the law. Grace notes this in the entry until the new policy is published.</p>
        </div>
        <div class="lc-card">
          <h3>Five staff questions, five different routes</h3>
          <p>Here are five questions Harbour Lane's HR team got in September. The people are made up. Look at how the library status decides what happens.</p>
          <table class="lc-table">
            <thead><tr><th>Who asks</th><th>Question</th><th>Library status</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td>Marcus Bell, chef, Quayside</td><td>"If I am off sick for two days, do I get paid?"</td><td>A-01 Approved</td><td>Send the approved answer and the GOV.UK link.</td></tr>
              <tr><td>Hannah Price, receptionist, Quayside</td><td>"Can I ask to work only early shifts when I come back from maternity leave?"</td><td>A-02 Approved</td><td>Send the approved answer and the request form.</td></tr>
              <tr><td>Kasia Nowak, casual room attendant, Temple Gate</td><td>"My hours change every week. How is my holiday worked out?"</td><td>A-03 Draft</td><td>"I don't know yet" reply. Daniel Okafor replies within 3 working days.</td></tr>
              <tr><td>Liam O'Connor, bar staff, Clifton</td><td>"How are card tips shared here, and when do I get them?"</td><td>No answer</td><td>Honest reply: Clifton's written tips policy is being written. Pass to Grace. Log it as a gap.</td></tr>
              <tr><td>Zainab Ali, night receptionist, Clifton</td><td>"A guest keeps making comments about my looks. Who do I tell?"</td><td>Sensitive</td><td>Never answered by the library alone. The duty manager acts at once and tells Grace the same day.</td></tr>
            </tbody>
          </table>
          <p>Notice Liam's question. It shows a real compliance gap. A business that gets tips more than now and then must have a written tips policy. So the honest reply also tells Grace that the gap is urgent.</p>
        </div>
        <div class="lc-card">
          <h3>Make AI answer only from the library</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>A member of staff asks how holiday works for casual workers.
        Write a reply.</code></pre>
          <p>The AI will answer from its own memory. It may use an old rule, a rule from another country, or a guess. Staff will believe it, because it came from HR.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You help HR at a hotel group in England reply to staff questions.
        Use ONLY the approved entries pasted below. Rules:
        1. If an Approved entry answers the question, reply in plain
           English and give the entry ID.
        2. If the entry is Draft or missing, do not answer. Use the
           "I don't know yet" template.
        3. If the question is about harassment, discrimination, safety
           or whistleblowing, do not answer. Use the escalation template.
        4. Never guess a number, date or legal rule.
        [paste approved entries and templates]
        [paste the question with names and personal details removed]</code></pre>
          <p>Remove names and personal details before you paste a question. Use only an AI tool that your employer has approved. A person still reads every reply before it is sent.</p>
        </div>
        <div class="lc-card">
          <h3>"I don't know" answers and escalation rules</h3>
          <p>An honest "I don't know yet" is better than a confident wrong answer. A wrong answer about pay or leave can cost staff money. It can also lead to a grievance or a tribunal claim. Harbour Lane's template:</p>
          <pre><code>Thank you for your question. We do not have an approved answer
        for this yet, so we do not want to guess. We have passed it to
        Daniel Okafor in HR. He will reply within 3 working days.
        If it is urgent, please speak to your duty manager.</code></pre>
          <p>Escalation means passing a question to the right person, within a set time. Grace writes the rules down so nobody has to guess:</p>
          <table class="lc-table">
            <thead><tr><th>Type of question</th><th>Who handles it</th><th>How fast</th></tr></thead>
            <tbody>
              <tr><td>Harassment, bullying or discrimination</td><td>Duty manager at once; Grace the same day</td><td>HR replies within 5 working days, as the dignity at work procedure says</td></tr>
              <tr><td>Someone is in danger, or a safety risk</td><td>Duty manager at once (999 in an emergency)</td><td>At once</td></tr>
              <tr><td>Whistleblowing concern (reporting wrongdoing)</td><td>Grace, as the whistleblowing policy says</td><td>Same day</td></tr>
              <tr><td>No approved answer, or a draft only</td><td>Daniel (Grace on his non-working days)</td><td>3 working days</td></tr>
            </tbody>
          </table>
          <p>Each month, Grace reviews the "I don't know" log. Questions that come up often become new entries, after an adviser checks them. This keeps the library growing from real questions.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which route?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Harbour Lane's library has approved entries for sick pay, flexible working and expenses. Holiday for irregular hours is still a draft. Sort each staff question.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="send" data-label="Send approved answer"></div>
              <div data-sorter-target="bucket" data-bucket="dontknow" data-label="I don't know yet, pass to HR"></div>
              <div data-sorter-target="bucket" data-bucket="escalate" data-label="Escalate today"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="send" data-why="Entry A-01 is approved and current. Send it with the GOV.UK link.">"I was sick on Monday and Tuesday. Will I get sick pay?"</li>
              <li data-bucket="send" data-why="Entry A-02 is approved. The law gives a day-one right to ask.">"I started last month. Can I ask to stop doing late shifts?"</li>
              <li data-bucket="send" data-why="The expenses policy is current, and entry A-05 is approved.">"Where do I find the expenses claim form?"</li>
              <li data-bucket="dontknow" data-why="A-03 is still a draft. Do not send a draft answer. Pass it to Daniel.">"My hours change every week. How much holiday have I built up?"</li>
              <li data-bucket="dontknow" data-why="There is no tips policy at Clifton yet, so there is no approved answer. Log the gap.">"How are card tips shared at Clifton?"</li>
              <li data-bucket="escalate" data-why="This is harassment by a third party. A person must act today to protect the worker.">"A guest keeps making comments about my looks."</li>
              <li data-bucket="escalate" data-why="This is a safety risk and may be a whistleblowing concern. It needs a person today.">"My manager said I will lose shifts if I report the broken fire door."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Test a library-only answer prompt with three questions. Check that the AI answers one, says "I don't know yet" to one, and escalates one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help HR at [Harbour Lane Hotels, three hotels in Bristol, England] reply to staff. Use simple English.

        Use ONLY this approved answer library (made-up):
        A-01 Approved. Sick pay: Statutory Sick Pay (SSP) is paid from your first day off sick, for days you would normally work. Payroll can tell you the amount.
        A-02 Approved. Flexible working: you can ask from your first day. You can make 2 requests in 12 months. We reply within 2 months and meet you before we say no.
        A-03 DRAFT. Holiday for irregular hours: not approved.

        Rules:
        1. If an Approved entry answers the question, reply in 2 to 4 short sentences. Give the entry ID.
        2. If the entry is DRAFT or missing, say you do not have an approved answer yet. Say HR will reply within [3 working days].
        3. If the question is about harassment, safety, discrimination or whistleblowing, do not answer it. Say: "Please speak to your duty manager today. They will tell HR."
        4. Never guess a rule, number or date.

        Questions:
        [a) I am off sick tomorrow and Friday. Do I get paid?
        b) My hours change every week. How much holiday do I get?
        c) A guest keeps commenting on my looks. What should I do?]</pre>
            <ul class="ai-try-checks">
              <li>Question a) gets the A-01 answer and its ID, with no SSP rate invented.</li>
              <li>Question b) gets an honest "no approved answer yet" reply, not a guess about 12.07%.</li>
              <li>Question c) is escalated to a person, not answered with advice.</li>
              <li>No reply adds a rule, number or date that is not in the library.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI should answer staff questions only from answers that people have checked and approved. When there is no approved answer, say "I don't know yet" and pass it on. Sensitive questions always go to a person first.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Compliance Checklists and Audits</h1>
        </div>
        <p class="lc-lead">A policy on paper does not prove that people follow it. An audit is a planned check that you follow your own policies and the law. It finds gaps before an inspector, a tribunal or an unhappy employee does. In this lesson you will build a simple audit sheet, decide what counts as evidence, score each gap, and plan the fixes. You will use the results of Harbour Lane Hotels' September 2026 audit.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: the audit cycle in six steps. 1 Plan: areas and sources. 2 Sample: 40 staff files. 3 Evidence: see it and record it. 4 Score: pass percentage and risk. 5 Fix: owner and due date. 6 Re-check: did it work? Then back to plan. Right: Harbour Lane's September 2026 audit, made up. F1 written statements 85 percent pass, amber. F2 right to work 92.5 percent, red. F3 casual holiday 0 percent, red. F4 tips policy 33 percent, red. F5 harassment 0 percent, red. F6 flexible working 78 percent, amber. F7 handbook copies 0 percent, amber. F8 privacy notice 0 percent, amber. Pass percentage equals sample minus fails, divided by sample. Risk score equals impact times likelihood, each from 1 to 3.">
            <defs><marker id="hp12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="230" y="30" font-weight="700" fill="#c4b5fd" text-anchor="middle">The audit cycle</text>
              <g text-anchor="middle">
                <rect x="20" y="50" width="130" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="85" y="74" font-weight="700">1. Plan</text>
                <text x="85" y="94" font-size="12" fill="#9b99b8">areas, sources</text>
                <rect x="165" y="50" width="130" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="230" y="74" font-weight="700">2. Sample</text>
                <text x="230" y="94" font-size="12" fill="#9b99b8">40 staff files</text>
                <rect x="310" y="50" width="130" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="375" y="74" font-weight="700">3. Evidence</text>
                <text x="375" y="94" font-size="12" fill="#9b99b8">see it, record it</text>
                <rect x="310" y="150" width="130" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="375" y="174" font-weight="700">4. Score</text>
                <text x="375" y="194" font-size="12" fill="#9b99b8">pass %, risk</text>
                <rect x="165" y="150" width="130" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="230" y="174" font-weight="700">5. Fix</text>
                <text x="230" y="194" font-size="12" fill="#9b99b8">owner, due date</text>
                <rect x="20" y="150" width="130" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="85" y="174" font-weight="700">6. Re-check</text>
                <text x="85" y="194" font-size="12" fill="#9b99b8">did it work?</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#hp12a)">
                <line x1="152" y1="78" x2="161" y2="78"/>
                <line x1="297" y1="78" x2="306" y2="78"/>
                <line x1="375" y1="108" x2="375" y2="146"/>
                <line x1="308" y1="178" x2="299" y2="178"/>
                <line x1="163" y1="178" x2="154" y2="178"/>
                <line x1="85" y1="148" x2="85" y2="110"/>
              </g>
              <g font-size="12" fill="#9b99b8">
                <text x="20" y="240">Pass % = (sample - fails) / sample</text>
                <text x="20" y="262">Risk score = impact x likelihood (each 1 to 3)</text>
                <text x="20" y="284">6 or more = Red, 3 to 5 = Amber, 1 to 2 = Green</text>
              </g>
              <rect x="470" y="40" width="270" height="246" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="605" y="62" font-weight="700" text-anchor="middle">Sept 2026 audit (made up)</text>
              <g font-size="12">
                <text x="484" y="90">F1</text><text x="510" y="90">Written statements</text><text x="664" y="90" text-anchor="end">85%</text>
                <text x="484" y="115">F2</text><text x="510" y="115">Right to work</text><text x="664" y="115" text-anchor="end">92.5%</text>
                <text x="484" y="140">F3</text><text x="510" y="140">Casual holiday</text><text x="664" y="140" text-anchor="end">0%</text>
                <text x="484" y="165">F4</text><text x="510" y="165">Tips policy</text><text x="664" y="165" text-anchor="end">33%</text>
                <text x="484" y="190">F5</text><text x="510" y="190">Harassment</text><text x="664" y="190" text-anchor="end">0%</text>
                <text x="484" y="215">F6</text><text x="510" y="215">Flexible working</text><text x="664" y="215" text-anchor="end">78%</text>
                <text x="484" y="240">F7</text><text x="510" y="240">Handbook copies</text><text x="664" y="240" text-anchor="end">0%</text>
                <text x="484" y="265">F8</text><text x="510" y="265">Privacy notice</text><text x="664" y="265" text-anchor="end">0%</text>
              </g>
              <g font-size="11" text-anchor="middle">
                <rect x="676" y="77" width="54" height="18" rx="9" fill="#f59e0b"/><text x="703" y="90" fill="#1f1f44">Amber</text>
                <rect x="676" y="102" width="54" height="18" rx="9" fill="#ec4899"/><text x="703" y="115" fill="#1f1f44">Red</text>
                <rect x="676" y="127" width="54" height="18" rx="9" fill="#ec4899"/><text x="703" y="140" fill="#1f1f44">Red</text>
                <rect x="676" y="152" width="54" height="18" rx="9" fill="#ec4899"/><text x="703" y="165" fill="#1f1f44">Red</text>
                <rect x="676" y="177" width="54" height="18" rx="9" fill="#ec4899"/><text x="703" y="190" fill="#1f1f44">Red</text>
                <rect x="676" y="202" width="54" height="18" rx="9" fill="#f59e0b"/><text x="703" y="215" fill="#1f1f44">Amber</text>
                <rect x="676" y="227" width="54" height="18" rx="9" fill="#f59e0b"/><text x="703" y="240" fill="#1f1f44">Amber</text>
                <rect x="676" y="252" width="54" height="18" rx="9" fill="#f59e0b"/><text x="703" y="265" fill="#1f1f44">Amber</text>
              </g>
            </g>
          </svg>
          <figcaption>An audit is a cycle: plan, sample, collect evidence, score, fix and check again. The colour comes from the risk score, not from the pass rate alone.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes on an audit sheet</h3>
          <p>An audit sheet is a spreadsheet with one row for each thing you check. Each row links back to a requirement in your requirements list. Grace Bennett and Daniel Okafor use these columns:</p>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>What it holds</th></tr></thead>
            <tbody>
              <tr><td>A ID, B Area</td><td>F1, Written statements</td></tr>
              <tr><td>C Evidence checked</td><td>What you looked at, for example "signed statement date vs start date"</td></tr>
              <tr><td>D Sample, E Fails</td><td>How many you checked, and how many did not meet the rule</td></tr>
              <tr><td>F Pass %</td><td>The share that met the rule</td></tr>
              <tr><td>G Impact, H Likelihood</td><td>How bad the harm could be, and how likely it is (1 low to 3 high)</td></tr>
              <tr><td>I Risk score, J RAG</td><td>Impact x likelihood, and its colour: Red, Amber or Green (RAG)</td></tr>
              <tr><td>K Owner, L Due date, M Status</td><td>Who fixes it, by when, and whether it is done</td></tr>
            </tbody>
          </table>
          <p><strong>Evidence</strong> is proof you can show someone else. A "yes" needs evidence: a dated record, a signed document or a system report. "The manager said it was done" is not evidence. Record where the evidence is, so someone else can find it again.</p>
          <p>Harbour Lane sampled 40 staff files: 15 at Quayside, 13 at Clifton and 12 at Temple Gate. A sample is a smaller group you check instead of every file. Take files from every hotel and every type of worker, including casual staff.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: scoring the September audit</h3>
          <p>All findings and scores are made up. Impact and likelihood are people's judgement. Grace and Daniel agree them together. They do not let AI choose them.</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Area</th><th>Sample</th><th>Fails</th><th>Pass %</th><th>Impact</th><th>Likelihood</th><th>Score</th><th>RAG</th></tr></thead>
            <tbody>
              <tr><td>F1</td><td>Written statement after day one</td><td>40</td><td>6</td><td>85%</td><td>2</td><td>2</td><td>4</td><td>Amber</td></tr>
              <tr><td>F2</td><td>Right to work: no date of check</td><td>40</td><td>3</td><td>92.5%</td><td>3</td><td>2</td><td>6</td><td>Red</td></tr>
              <tr><td>F3</td><td>Casual holiday: old method</td><td>58</td><td>58</td><td>0%</td><td>3</td><td>3</td><td>9</td><td>Red</td></tr>
              <tr><td>F4</td><td>Tips taken, no written policy</td><td>3</td><td>2</td><td>33.3%</td><td>3</td><td>3</td><td>9</td><td>Red</td></tr>
              <tr><td>F5</td><td>No harassment risk assessment</td><td>3</td><td>3</td><td>0%</td><td>3</td><td>3</td><td>9</td><td>Red</td></tr>
              <tr><td>F6</td><td>Flexible request refused, no meeting</td><td>9</td><td>2</td><td>77.8%</td><td>2</td><td>2</td><td>4</td><td>Amber</td></tr>
              <tr><td>F7</td><td>Old handbook in staff rooms</td><td>3</td><td>3</td><td>0%</td><td>1</td><td>3</td><td>3</td><td>Amber</td></tr>
              <tr><td>F8</td><td>Privacy notice names 1998 Act</td><td>1</td><td>1</td><td>0%</td><td>2</td><td>2</td><td>4</td><td>Amber</td></tr>
            </tbody>
          </table>
          <p>The formulas for row 2 (Excel or Google Sheets). Copy them down to row 9:</p>
          <pre><code>Pass %      F2: =(D2-E2)/D2              F1 gives (40-6)/40 = 85%
        Risk score  I2: =G2*H2                   F1 gives 2 x 2 = 4
        RAG         J2: =IF(I2&gt;=6,"Red",IF(I2&gt;=3,"Amber","Green"))
        Red count:      =COUNTIF(J2:J9,"Red")    gives 4
        Open and late:  =COUNTIFS(L2:L9,"&lt;"&amp;TODAY(),M2:M9,"&lt;&gt;Done")</code></pre>
          <p>Notice F2. Its pass rate is the highest, at 92.5%, but it is Red. Without a dated record, the employer may lose its legal protection if a worker turns out to have no right to work. Then a large civil penalty is possible. A high pass rate does not always mean low risk.</p>
        </div>
        <div class="lc-card">
          <h3>Fixing gaps: owners, dates and causes</h3>
          <p>A fix needs one owner and one date. It should also fix the cause, not only the file. For F1, the cause was simple. GMs (general managers) sent written statements after staff had started. Now HR sends the statement with the offer pack, before day one.</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Fix</th><th>Owner</th><th>Due</th></tr></thead>
            <tbody>
              <tr><td>F2</td><td>Follow the Home Office guide for the 3 files. Ask the adviser first. Record the date of every check from now on.</td><td>Daniel</td><td>Fri 9 Oct 2026</td></tr>
              <tr><td>F7</td><td>Remove v3.2 handbooks. Put up a poster with a QR code to the intranet handbook.</td><td>GMs</td><td>Fri 16 Oct 2026</td></tr>
              <tr><td>F5</td><td>A harassment risk assessment for each hotel. Add a guest section to the dignity at work policy.</td><td>GMs and Grace</td><td>Fri 23 Oct 2026</td></tr>
              <tr><td>F3</td><td>Move casual staff to the new holiday method. Adviser checks past holiday pay.</td><td>Payroll and adviser</td><td>Fri 30 Oct 2026</td></tr>
              <tr><td>F1</td><td>Statement sent with the offer pack. Check the next 10 starters.</td><td>Daniel</td><td>Fri 30 Oct 2026</td></tr>
              <tr><td>F6, F8</td><td>Manager briefing on flexible working; new privacy notice</td><td>Grace</td><td>Mon 30 Nov 2026</td></tr>
              <tr><td>F4</td><td>One tips policy for all three hotels, after staff are consulted in November</td><td>Grace</td><td>Tue 1 Dec 2026</td></tr>
            </tbody>
          </table>
          <p>The rules behind these checks, in general words. Since April 2020, staff must get the main written statement of terms on or before their first day. Right to work checks happen before work starts. You keep a record of the date of each check. F5 has an early date because the stronger harassment duty starts on 30 October 2026. Check the current Home Office employer guide and GOV.UK. This is not legal advice.</p>
          <p>Never paste staff names or file contents into a public AI tool. Give AI counts and finding codes only, as in the activity below.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Grace summarises the audit with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Grace asks">She pastes the 8 findings as codes and counts only, with no names. "Write a one-page summary for the directors. Show the pass rate for each finding."</li>
              <li data-kind="answer" data-label="AI replies">A clear summary. One line says: "Right to work: 3 of 40 files failed (12.5%)." It also says: "Suspend the three staff."</li>
              <li data-kind="check" data-label="Grace checks the numbers">She works out each rate herself. 3 divided by 40 is 7.5%, so 92.5% passed. The AI's 12.5% is wrong.</li>
              <li data-kind="warn" data-label="A risky suggestion">Suspending staff was never discussed. It could be unfair and unlawful. Only HR and the adviser decide what to do, using the Home Office guide.</li>
              <li data-kind="tool" data-label="Grace uses the sheet">She adds the Pass %, Risk score and RAG formulas to the audit sheet, and fills them down.</li>
              <li data-kind="result" data-label="The sheet shows">4 Red findings (F2, F3, F4, F5) and 4 Amber. Every number now comes from a formula.</li>
              <li data-kind="check" data-label="Final step">Grace copies the numbers from the sheet into the summary. She deletes the suspension line. The directors approve the action plan.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build an audit sheet for one policy area. Then check each requirement against an official source, and test the formulas.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR compliance assistant for a UK employer. Use simple English.

        Build an audit sheet for this area: [holiday and working time]
        Employer: [a hotel group in England with 3 hotels and about 260 staff, including 58 casual (zero-hours) staff]

        1. List 6 to 8 checks. For each give: ID | Check, in one plain sentence | Tag (Law, Code, Good practice or Our choice) | Evidence to look for | How to sample it.
        2. Give spreadsheet formulas (Excel or Google Sheets) for these columns: D Sample, E Fails, F Pass % = (sample - fails) / sample, G Impact 1-3, H Likelihood 1-3, I Risk score = impact x likelihood, J RAG (6 or more Red, 3 to 5 Amber, 1 to 2 Green).
        3. Show one made-up example row with the numbers worked out.
        4. Leave Impact and Likelihood blank for me to decide.

        Rules: do not invent legal rules, section numbers or penalty amounts. If you are not sure a rule exists, write CHECK SOURCE. Do not use real names. End with: "Not legal advice."</pre>
            <ul class="ai-try-checks">
              <li>Each check is tagged, and legal ones point to an official source you can open.</li>
              <li>The example row's numbers match the formulas when you work them out.</li>
              <li>Evidence means something you can see, such as a record or report.</li>
              <li>Impact and Likelihood are left for you to decide.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An audit turns "we think we comply" into evidence. Count with formulas, not with AI. Score risk with your own judgement. Give every gap one owner and one date, and fix the cause as well as the file.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Data Protection in HR</h1>
        </div>
        <p class="lc-lead">HR holds more personal data than almost any other team: contact details, pay, health notes, passports and disciplinary files. In the UK, the UK GDPR and the Data Protection Act 2018 set the rules for this data. In this lesson you will learn the main ideas in plain words. You will build a retention schedule (a list of how long you keep each record) and update an employee privacy notice. Harbour Lane Hotels' notice still names a law that was replaced in 2018. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The life of employee data in five steps: collect only what you need, use it with a lawful basis, share it with payroll and pension providers, keep it as the retention schedule says, and delete it securely and on time. Under each step, what the privacy notice tells staff: what and why, the lawful basis, who gets it, how long, and your rights. Bottom box: Harbour Lane's 2018 notice still names the Data Protection Act 1998. The new notice must name the UK GDPR and the Data Protection Act 2018, give retention periods, and explain how to complain, to us first and then to the ICO.">
            <defs><marker id="hp13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="28" font-weight="700" fill="#c4b5fd">The life of employee data</text>
              <rect x="20" y="44" width="132" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="86" y="68" font-weight="700">Collect</text>
              <text x="86" y="88" font-size="12" fill="#9b99b8">only what you need</text>
              <rect x="167" y="44" width="132" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="233" y="68" font-weight="700">Use</text>
              <text x="233" y="88" font-size="12" fill="#9b99b8">a lawful basis</text>
              <rect x="314" y="44" width="132" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="68" font-weight="700">Share</text>
              <text x="380" y="88" font-size="12" fill="#9b99b8">payroll, pension</text>
              <rect x="461" y="44" width="132" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="527" y="68" font-weight="700">Keep</text>
              <text x="527" y="88" font-size="12" fill="#9b99b8">retention schedule</text>
              <rect x="608" y="44" width="132" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="674" y="68" font-weight="700">Delete</text>
              <text x="674" y="88" font-size="12" fill="#9b99b8">securely, on time</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#hp13a)">
                <line x1="153" y1="72" x2="164" y2="72"/>
                <line x1="300" y1="72" x2="311" y2="72"/>
                <line x1="447" y1="72" x2="458" y2="72"/>
                <line x1="594" y1="72" x2="605" y2="72"/>
              </g>
              <text x="380" y="132" font-size="12" fill="#9b99b8">The privacy notice tells staff about each step</text>
              <g font-size="12">
                <rect x="20" y="144" width="132" height="34" rx="6" fill="#27274e" stroke="#8b5cf6"/>
                <text x="86" y="166">What and why</text>
                <rect x="167" y="144" width="132" height="34" rx="6" fill="#27274e" stroke="#3b82f6"/>
                <text x="233" y="166">Lawful basis</text>
                <rect x="314" y="144" width="132" height="34" rx="6" fill="#27274e" stroke="#22d3ee"/>
                <text x="380" y="166">Who gets it</text>
                <rect x="461" y="144" width="132" height="34" rx="6" fill="#27274e" stroke="#f59e0b"/>
                <text x="527" y="166">How long</text>
                <rect x="608" y="144" width="132" height="34" rx="6" fill="#27274e" stroke="#10b981"/>
                <text x="674" y="166">Your rights</text>
              </g>
              <rect x="20" y="200" width="720" height="84" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <g text-anchor="start" font-size="12">
                <text x="36" y="224"><tspan font-weight="700">Audit finding F8:</tspan> Harbour Lane's 2018 notice still names the Data Protection Act 1998.</text>
                <text x="36" y="246">The new notice names the UK GDPR and the Data Protection Act 2018 and gives retention periods.</text>
                <text x="36" y="268" fill="#9b99b8">It also explains how to complain: to Harbour Lane first, then to the ICO.</text>
              </g>
            </g>
          </svg>
          <figcaption>Personal data has a life: collect, use, share, keep and delete. A privacy notice explains each step to staff in plain words.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main ideas in plain words</h3>
          <ul class="lc-list">
            <li><strong>Personal data</strong>: any information about a person you can identify. A name, a rota, a sick note and a CCTV image are all personal data.</li>
            <li><strong>Special category data</strong>: more sensitive data that needs extra protection. It includes health, race or ethnic origin, religion or belief, sexual orientation, trade union membership and biometric data used to identify someone.</li>
            <li><strong>Lawful basis</strong>: the legal reason you use the data. HR often uses "contract" (to pay people), "legal obligation" (right to work checks) or "legitimate interests". Consent is rarely the right basis at work, because staff may not feel free to say no.</li>
            <li><strong>Key principles</strong>: collect only what you need, keep it accurate and secure, and keep it no longer than you need it.</li>
            <li><strong>Staff rights</strong>: for example to see their data, to correct it, and to object. A request to see your own data is a subject access request (SAR).</li>
          </ul>
          <p>The Data (Use and Access) Act 2025 changed parts of UK data protection law. Most of its data protection changes started on 5 February 2026. Since 19 June 2026, organisations must have a way to handle data protection complaints. They must acknowledge a complaint within 30 days. The ICO (Information Commissioner's Office, the UK data protection regulator) has guidance on all of this. Check its current pages for details.</p>
        </div>
        <div class="lc-card">
          <h3>Build a retention schedule</h3>
          <p>A retention schedule lists each type of record, how long you keep it, and why. Some periods are set by law. For many records the law says only "no longer than you need". Then the business must choose a period and write down the reason. Here is part of Harbour Lane's schedule:</p>
          <table class="lc-table">
            <thead><tr><th>Record</th><th>Keep for</th><th>Tag</th><th>Reason or source</th></tr></thead>
            <tbody>
              <tr><td>Right to work check copies</td><td>During employment and 2 years after, then destroy securely</td><td>Law</td><td>Home Office employer guide</td></tr>
              <tr><td>PAYE payroll records</td><td>At least 3 years after the end of the tax year</td><td>Law</td><td>HMRC guidance on GOV.UK</td></tr>
              <tr><td>Holiday records</td><td>6 years</td><td>Law</td><td>Employment Rights Act 2025 change, from 6 April 2026</td></tr>
              <tr><td>Tips records</td><td>3 years</td><td>Law</td><td>Employment (Allocation of Tips) Act 2023</td></tr>
              <tr><td>Unsuccessful candidates' forms</td><td>8 months after the decision</td><td>Our choice</td><td>Most tribunal claims can now be made within 6 months, plus time for Acas early conciliation. Adviser to confirm.</td></tr>
              <tr><td>Disciplinary and grievance files</td><td>6 years after employment ends</td><td>Our choice</td><td>Time to defend possible legal claims. Adviser to confirm.</td></tr>
            </tbody>
          </table>
          <p>A spreadsheet can work out each delete date. Put the leaving date in B2. For right to work copies, use <code>=EDATE(B2,24)</code>. A person who left on 15 March 2026 gives 15 March 2028. For PAYE records from the 2025/26 tax year, <code>=EDATE(DATE(2026,4,5),36)</code> gives 5 April 2029.</p>
          <p>Ask AI to suggest record types you may have missed. Do not accept its periods without a source. AI tools often state one fixed "legal" period for records where the law sets none.</p>
        </div>
        <div class="lc-card">
          <h3>Update the employee privacy notice</h3>
          <p>An employee privacy notice tells staff what data you hold about them and why. Under the UK GDPR it should cover, in general words:</p>
          <ul class="lc-list">
            <li>Who you are, and how to contact you about data</li>
            <li>What data you collect, why, and your lawful basis for each use</li>
            <li>Any special category data, such as health, and why you need it</li>
            <li>Who you share it with, for example payroll and pension providers and HMRC</li>
            <li>Whether data goes outside the UK</li>
            <li>How long you keep it (link to the retention schedule)</li>
            <li>Staff rights, how to complain to you, and their right to complain to the ICO</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Update our employee privacy notice for 2026.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is our 2018 employee privacy notice (made-up text).
        1. List every outdated law name or missing topic, using the
           checklist I paste below.
        2. Rewrite it in plain British English, short sentences.
        3. For any fact you do not have (lawful basis, suppliers,
           transfers, retention), write [HR TO CONFIRM]. Do not guess.
        [paste the notice and the checklist]</code></pre>
          <p>Watch for two common AI mistakes. It may say "we rely on your consent" for everything. It may also list suppliers or transfers that you do not have. Grace confirms each fact with payroll and IT, and the adviser checks the final text.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: handle a subject access request</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">A former Clifton bar worker emails HR asking for a copy of all the data Harbour Lane holds about them. Put Daniel's steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Log the request and the date it arrived. Check the person's identity if you need to.</li>
              <li data-order="2">If the request is unclear, ask what they need. The time limit pauses while you wait.</li>
              <li data-order="3">Make a reasonable and proportionate search: the HRIS, email, rota system and paper files.</li>
              <li data-order="4">Review what you found. Remove other people's personal data where needed, and ask the adviser about hard cases.</li>
              <li data-order="5">Reply within one month. If the request is complex, tell the person within that month that you need up to two more months.</li>
              <li data-order="6">Record what you sent, when, and any data you held back and why.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review and rewrite an old privacy notice section. Then confirm every fact it marks with the right person.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a data protection writer helping an HR team in [England, UK]. Use plain British English.

        Employer: [Harbour Lane Hotels, three hotels in Bristol, about 260 staff]
        Here is a section of our old employee privacy notice (made-up text):
        [We process your data in accordance with the Data Protection Act 1998. By signing your contract you consent to us processing all your data, including medical information. We share data with third parties as necessary. Data is retained for as long as required.]

        Please:
        1. List each problem in a table: Problem | Why it matters | What to fix.
        2. Rewrite the section for staff who read on a phone. Use short sentences.
        3. Name the current UK laws in general words. Do not quote section numbers.
        4. Do not use consent as the main lawful basis unless I say so.
        5. For facts you do not have, such as the lawful basis for each use, our suppliers and retention periods, write [HR TO CONFIRM].
        6. Say how staff can complain: to us first, then to the ICO.
        End with: "Draft for adviser review. Not legal advice."</pre>
            <ul class="ai-try-checks">
              <li>The Data Protection Act 1998 is flagged as out of date.</li>
              <li>"You consent to us processing all your data" is flagged as a problem.</li>
              <li>Vague words such as "third parties as necessary" are replaced or marked [HR TO CONFIRM].</li>
              <li>No supplier names, transfers or retention periods were invented.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Treat every HR record as someone's personal data. Know why you hold it, how long you keep it, and who sees it. Then tell staff in plain words. AI can draft the notice, but people confirm every fact behind it.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Policies for AI Use at Work</h1>
        </div>
        <p class="lc-lead">Many staff already use AI tools at work, often without any rules. An AI acceptable use policy is a short set of rules for how staff may use AI tools. It protects staff, customers and the business. In this lesson you will learn what the policy should cover and how to set simple data rules. You will also see how approval and training work. Harbour Lane Hotels has no AI policy. But its front office staff already use free AI chat tools to write guest emails.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Traffic-light data rules for AI tools. Green, any AI tool: public hotel information, made-up examples, published policies. Amber, approved business tool only: guest emails with minimum details, draft policies, internal templates. Red, never in any AI tool: card or passport numbers, health or sickness details, grievance, discipline and pay. Below, the approval path in five steps: 1 ask to use, 2 HR and IT check, 3 training, 4 access, 5 yearly review.">
            <defs><marker id="hp14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="230" height="136" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="36" y="46" font-weight="700" fill="#6ee7b7">GREEN: any AI tool</text>
              <g font-size="12">
                <text x="36" y="76">Public hotel information</text>
                <text x="36" y="102">Made-up examples</text>
                <text x="36" y="128">Published policies</text>
              </g>
              <rect x="265" y="20" width="230" height="136" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="281" y="46" font-weight="700" fill="#fcd34d">AMBER: approved tool only</text>
              <g font-size="12">
                <text x="281" y="76">Guest emails, minimum details</text>
                <text x="281" y="102">Draft policies</text>
                <text x="281" y="128">Internal templates</text>
              </g>
              <rect x="510" y="20" width="230" height="136" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="526" y="46" font-weight="700" fill="#f9a8d4">RED: never in any AI tool</text>
              <g font-size="12">
                <text x="526" y="76">Card or passport numbers</text>
                <text x="526" y="102">Health or sickness details</text>
                <text x="526" y="128">Grievance, discipline, pay</text>
              </g>
              <text x="380" y="200" font-size="12" fill="#9b99b8" text-anchor="middle">How a new AI tool or use gets approved</text>
              <g text-anchor="middle">
                <rect x="20" y="214" width="132" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="86" y="241">1. Ask to use</text>
                <rect x="167" y="214" width="132" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="233" y="241">2. HR + IT check</text>
                <rect x="314" y="214" width="132" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="380" y="241">3. Training</text>
                <rect x="461" y="214" width="132" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="527" y="241">4. Access</text>
                <rect x="608" y="214" width="132" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="674" y="241">5. Yearly review</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#hp14a)">
                <line x1="153" y1="236" x2="164" y2="236"/>
                <line x1="300" y1="236" x2="311" y2="236"/>
                <line x1="447" y1="236" x2="458" y2="236"/>
                <line x1="594" y1="236" x2="605" y2="236"/>
              </g>
            </g>
          </svg>
          <figcaption>Simple traffic-light rules tell staff which data can go into which AI tool. A short approval path controls new tools and new uses.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why you need an AI policy</h3>
          <p>Harbour Lane ran a staff survey in September 2026 (made-up data). 31 of 48 front office and reservations staff had used a free AI chat tool for guest emails. That is about 65%. Nobody had told them what was allowed. Grace Bennett sees four risks:</p>
          <ul class="lc-list">
            <li><strong>Personal data</strong>: guest and staff details pasted into tools the business does not control. Data protection law (the UK GDPR) applies to personal data in AI tools, as it does anywhere else.</li>
            <li><strong>Wrong facts</strong>: an AI-written email gives a guest the wrong check-out time or refund rule.</li>
            <li><strong>Unfair decisions</strong>: AI used to judge people, such as job applicants, without checks for bias.</li>
            <li><strong>Confusion</strong>: staff do not know what is allowed, so some use AI in secret and others not at all.</li>
          </ul>
          <p>No UK law says every employer must have an AI policy. But the ICO has guidance on AI and data protection, and the policy helps you follow it. Other places have specific rules:</p>
          <table class="lc-table">
            <thead><tr><th>Place</th><th>Rule, in general words</th></tr></thead>
            <tbody>
              <tr><td>New York City</td><td>Local Law 144: an automated tool that helps decide hiring or promotion needs a bias audit (an independent check for unfair results) before use, and candidates must be told. Brightside Software, the made-up New York company, checks this before using any CV-screening tool.</td></tr>
              <tr><td>European Union</td><td>The EU AI Act treats AI for hiring and managing workers as high-risk. A 2026 change moved most of these high-risk rules to 2 December 2027. The Act already bans AI that infers workers' emotions at work, with narrow exceptions for medical or safety reasons.</td></tr>
            </tbody>
          </table>
          <p>Harbour Lane operates only in the UK, so EU and US rules do not apply to it directly. Rules change fast, so check the current official pages. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>What the policy covers</h3>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>Harbour Lane's draft (made up)</th></tr></thead>
            <tbody>
              <tr><td>Scope</td><td>All staff and contractors. Any AI tool, including AI features inside other software.</td></tr>
              <tr><td>Approved tools</td><td>One business AI assistant with company accounts. Grace and IT keep the list. Check the supplier's current terms on how it uses your data.</td></tr>
              <tr><td>Data rules</td><td>Green, Amber and Red, as in the diagram. Personal free accounts: Green data only.</td></tr>
              <tr><td>Human check</td><td>A person reads, checks and sends every AI-written guest email. You are responsible for what you send.</td></tr>
              <tr><td>Decisions about people</td><td>AI must not decide who is hired, disciplined, dismissed or given shifts. AI may help draft text only. No tool that claims to read emotions, honesty or personality from video, voice or text.</td></tr>
              <tr><td>Approval</td><td>New tools or new uses: a request to Grace and IT. For a high-risk use of personal data, they complete a DPIA (data protection impact assessment: a written risk check).</td></tr>
              <tr><td>Training</td><td>A 45-minute session before access, with completion recorded. A short refresher each year.</td></tr>
              <tr><td>Mistakes</td><td>Report at once to Grace, for example guest data pasted into a free tool. Quick reports are not punished. Some data breaches must be reported to the ICO within 72 hours.</td></tr>
              <tr><td>Review</td><td>Every 12 months, not every 2 years, because AI tools change fast.</td></tr>
            </tbody>
          </table>
          <p>Notice the "decisions about people" rule. AI tools cannot reliably read emotions, honesty or personality. Any tool that claims to do this should not be used to judge staff or candidates.</p>
        </div>
        <div class="lc-card">
          <h3>Drafting the policy with AI</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an AI policy for our company.</code></pre>
          <p>You will get a long, general policy. It may claim laws apply that do not, or ban tools you already approved.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft an AI acceptable use policy for a UK hotel group (260 staff).
        Facts: staff use AI for guest emails; one approved business tool.
        Decisions made: Green / Amber / Red data rules [paste them];
        no AI decisions about people; training before access; review
        every 12 months. Use plain English, short sentences, 2 pages max.
        Do not name laws except UK GDPR. Mark anything undecided
        [DECISION NEEDED]. Add 5 examples of allowed and banned uses.</code></pre>
          <p>Then test the draft with real staff. Ask three receptionists to read it and say what they may do with a guest complaint email. If their answers differ, the wording is not clear yet.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: allowed or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use Harbour Lane's traffic-light rules. Sort each task.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="any" data-label="Any AI tool"></div>
              <div data-sorter-target="bucket" data-bucket="approved" data-label="Approved tool only"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Not allowed"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="any" data-why="The breakfast times are public information. This is Green.">Rewrite the published breakfast times notice in friendlier words.</li>
              <li data-bucket="any" data-why="A made-up checklist has no personal data. A fluent speaker still checks the translation.">Translate a made-up housekeeping checklist into Polish.</li>
              <li data-bucket="approved" data-why="Guest emails with minimum details are Amber. Use the approved tool, and a person checks and sends it.">Draft a reply to a guest complaint, using the guest's first name and booking dates.</li>
              <li data-bucket="approved" data-why="Draft policies are internal information. They are Amber, not public.">Draft the first version of the new tips policy.</li>
              <li data-bucket="never" data-why="Card numbers are Red. They never go into any AI tool.">Paste a guest's card number to check a refund.</li>
              <li data-bucket="never" data-why="Grievance and health details are Red. A person handles them.">Summarise a staff grievance that includes the person's health details.</li>
              <li data-bucket="never" data-why="AI must not decide about people. Ranking applicants is a hiring decision.">Ask AI to rank 30 applicants for a chef job.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a short AI acceptable use policy from your decisions. Then check that it did not add rules or laws you did not give it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR policy writer for a UK employer. Use plain British English and short sentences.

        Draft an AI acceptable use policy of no more than 2 pages.
        Employer: [Harbour Lane Hotels, three hotels in Bristol, about 260 staff]
        How staff use AI now: [front office staff write guest emails with free AI chat tools]
        Approved tools: [one business AI assistant with company accounts]
        Data rules: [GREEN, any tool: public information, made-up examples. AMBER, approved tool only: guest emails with minimum details, draft policies. RED, never: card or passport numbers, health details, grievance, discipline and pay.]
        Decisions made: [a person checks every AI-written email before sending; AI never decides about hiring, discipline or shifts; training before access; report mistakes to HR at once; review every 12 months]

        Sections: Purpose, Scope, Approved tools, Data rules, Human checks, Decisions about people, Approval of new tools, Training, Reporting mistakes, Review.
        Add 3 examples of allowed uses and 3 of banned uses.
        Mark anything not decided as [DECISION NEEDED]. Do not name any law except the UK GDPR. End with: "Draft for adviser review."</pre>
            <ul class="ai-try-checks">
              <li>Every data rule matches your Green, Amber and Red lists.</li>
              <li>A person checks AI output before it reaches a guest or affects a worker.</li>
              <li>No extra laws, fines or deadlines were invented.</li>
              <li>Gaps are marked [DECISION NEEDED], not filled with guesses.</li>
              <li>A receptionist could read it in five minutes and know what to do.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Staff will use AI with or without a policy. A short policy with traffic-light data rules, one approved tool, a human check and basic training makes that use safe. Keep people in charge of every decision about people.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Capstone: A Policy Pack for Harbour Lane Hotels</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together. You will plan and build a policy pack for Harbour Lane Hotels. A policy pack is a set of documents that work together. It has a requirements list, three policies, a handbook section, a staff FAQ and an audit checklist. You will see how each part is built from the one before. You will also see where AI helps, and where people must check and decide. All company details are made up. This is not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 296" role="img" aria-label="Top: five stages of the pack. 1 Requirements, checked and tagged. 2 Three policies, drafted from the IDs. 3 Adviser check and approval. 4 Handbook and FAQ in plain words. 5 Audit checklist to prove it works. Below: a timeline from 2 October to 1 December 2026. Dignity at work goes live on 26 October, before the new harassment duty on 30 October. Holiday goes live on 2 November. Tips for all three hotels goes live on 1 December, after staff are consulted.">
            <defs><marker id="hp15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="20" width="132" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="86" y="44" font-weight="700">1. Requirements</text>
                <text x="86" y="64" font-size="12" fill="#9b99b8">checked, tagged</text>
                <rect x="167" y="20" width="132" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="233" y="44" font-weight="700">2. Policies</text>
                <text x="233" y="64" font-size="12" fill="#9b99b8">three, from IDs</text>
                <rect x="314" y="20" width="132" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="380" y="44" font-weight="700">3. Adviser</text>
                <text x="380" y="64" font-size="12" fill="#9b99b8">check, approve</text>
                <rect x="461" y="20" width="132" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="527" y="44" font-weight="700">4. Handbook</text>
                <text x="527" y="64" font-size="12" fill="#9b99b8">and staff FAQ</text>
                <rect x="608" y="20" width="132" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="674" y="44" font-weight="700">5. Audit</text>
                <text x="674" y="64" font-size="12" fill="#9b99b8">check it works</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#hp15a)">
                <line x1="153" y1="48" x2="164" y2="48"/>
                <line x1="300" y1="48" x2="311" y2="48"/>
                <line x1="447" y1="48" x2="458" y2="48"/>
                <line x1="594" y1="48" x2="605" y2="48"/>
              </g>
              <text x="380" y="118" font-weight="700" fill="#c4b5fd" text-anchor="middle">When each policy goes live (2026)</text>
              <g font-size="12">
                <text x="20" y="152">Dignity at work</text>
                <text x="20" y="187">Holiday</text>
                <text x="20" y="222">Tips (3 hotels)</text>
              </g>
              <rect x="200" y="137" width="208" height="22" rx="4" fill="#ec4899"/>
              <rect x="200" y="172" width="269" height="22" rx="4" fill="#f59e0b"/>
              <rect x="200" y="207" width="520" height="22" rx="4" fill="#3b82f6"/>
              <g font-size="12" fill="#1f1f44" font-weight="700" text-anchor="end">
                <text x="402" y="152">live 26 Oct</text>
                <text x="463" y="187">live 2 Nov</text>
                <text x="714" y="222">consult staff, live 1 Dec</text>
              </g>
              <line x1="200" y1="246" x2="720" y2="246" stroke="#9b99b8" stroke-width="1.5"/>
              <g stroke="#9b99b8" stroke-width="1.5">
                <line x1="200" y1="242" x2="200" y2="250"/>
                <line x1="443" y1="242" x2="443" y2="250"/>
                <line x1="720" y1="242" x2="720" y2="250"/>
              </g>
              <g font-size="12" fill="#9b99b8" text-anchor="middle">
                <text x="200" y="268">2 Oct</text>
                <text x="443" y="268" fill="#f9a8d4">30 Oct: new duty</text>
                <text x="720" y="268">1 Dec</text>
              </g>
              <text x="20" y="288" font-size="11" fill="#9b99b8">Order set by risk and deadlines from the September audit (F5, F3, F4).</text>
            </g>
          </svg>
          <figcaption>Each part of the pack is built from the one before it. The three policies go live in order of risk and legal deadlines.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief: what goes in the pack</h3>
          <p>Grace Bennett chose three policies from the September audit. They are the Red findings with the nearest deadlines. Dignity at work is first, because a stronger harassment duty starts on 30 October 2026.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it contains</th><th>Built from</th><th>Checked by</th><th>Due</th></tr></thead>
            <tbody>
              <tr><td>Requirements list</td><td>Rows H (dignity), L (holiday), T (tips), each tagged and sourced</td><td>legislation.gov.uk, GOV.UK, Acas, EHRC</td><td>Grace, then the adviser</td><td>Fri 9 Oct 2026</td></tr>
              <tr><td>Policy 1: Dignity at work</td><td>Guest (third-party) section, risk assessment for each hotel, two ways to report</td><td>H rows, finding F5</td><td>Adviser; directors approve</td><td>Live Mon 26 Oct 2026</td></tr>
              <tr><td>Policy 2: Holiday</td><td>12.07% accrual for casual and irregular-hours staff; records kept 6 years</td><td>L rows, finding F3</td><td>Adviser and payroll</td><td>Live Mon 2 Nov 2026</td></tr>
              <tr><td>Policy 3: Tips (all three hotels)</td><td>Replaces the Quayside-only policy; shared by hours worked</td><td>T rows, finding F4, staff views</td><td>Adviser; staff consulted in November</td><td>Live Tue 1 Dec 2026</td></tr>
              <tr><td>Handbook section</td><td>"Respect, time off and tips": a short summary of all three, with links</td><td>The approved policies</td><td>Read-test with 5 staff at each hotel</td><td>With each launch</td></tr>
              <tr><td>Staff FAQ</td><td>Approved answers to Kasia's, Liam's and Zainab's questions</td><td>The approved policies</td><td>Grace approves each entry</td><td>With each launch</td></tr>
              <tr><td>Audit checklist</td><td>Evidence that each policy is used in practice</td><td>The requirements list</td><td>Daniel Okafor runs it</td><td>First check March 2027</td></tr>
            </tbody>
          </table>
          <p>The holiday method was still open in early October. During the project, the managers make the key decision: casual staff build up holiday at 12.07% of hours worked, not rolled-up holiday pay. The adviser checks this choice before the holiday policy goes live.</p>
        </div>
        <div class="lc-card">
          <h3>Step 1: the requirements list for dignity at work</h3>
          <p>Here is part of the H rows. Each rule is in general words, with a tag and a start date. Grace checked each one on the official site.</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Requirement</th><th>Tag</th></tr></thead>
            <tbody>
              <tr><td>H1</td><td>Take reasonable steps to prevent sexual harassment of employees (since 26 October 2024).</td><td>Law</td></tr>
              <tr><td>H2</td><td>From 30 October 2026, take "all reasonable steps" to prevent sexual harassment.</td><td>Law</td></tr>
              <tr><td>H3</td><td>From 30 October 2026, protect employees from harassment by third parties, such as guests. This covers sexual harassment and harassment linked to most protected characteristics, such as race or disability. Check the exact scope with the adviser.</td><td>Law</td></tr>
              <tr><td>H4</td><td>Carry out a sexual harassment risk assessment for each hotel, with an action plan.</td><td>Guidance (EHRC)</td></tr>
              <tr><td>H5</td><td>Explain that reports of sexual harassment can be whistleblowing disclosures (since 6 April 2026). Link to the whistleblowing policy.</td><td>Law</td></tr>
              <tr><td>H6</td><td>Give at least two ways to report, one not through the line manager.</td><td>Good practice</td></tr>
            </tbody>
          </table>
          <p>The EHRC (Equality and Human Rights Commission) technical guidance says an employer is unlikely to meet the duty without a risk assessment. That is why H4 matters, even though it is guidance. Each GM does the assessment for their own hotel: Sophie Turner (Quayside), James Whitfield (Clifton) and Amira Hassan (Temple Gate).</p>
        </div>
        <div class="lc-card">
          <h3>Steps 2 to 5: from policies to proof</h3>
          <p>For each policy, Grace briefs AI with the requirement IDs and the managers' decisions. She traces every sentence back to an ID, as you learned when drafting policies. Then the adviser reviews, and the directors approve. Only then does she turn the policy into the handbook section and the FAQ.</p>
          <p><strong>A FAQ entry for Zainab's question</strong> (approved by Grace):</p>
          <pre><code>Q: A guest keeps making comments about my looks. Who do I tell?
        A: Tell your duty manager straight away. If you prefer, email
           HR directly. You will not be blamed. The duty manager will
           act to protect you, for example by dealing with the guest.
           HR will contact you within 5 working days.
           Policy: Dignity at work, section 6 (guests).</code></pre>
          <p><strong>Part of the audit checklist:</strong></p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Evidence</th><th>Linked ID</th></tr></thead>
            <tbody>
              <tr><td>Each hotel has a dated harassment risk assessment and action plan</td><td>The 3 documents</td><td>H4</td></tr>
              <tr><td>Night staff can name two ways to report harassment</td><td>Ask 5 night staff at each hotel</td><td>H6</td></tr>
              <tr><td>Casual staff holiday uses 12.07% accrual</td><td>Payroll report for 10 casual staff</td><td>L rows</td></tr>
              <tr><td>Tips paid by the end of the month after the tip was paid</td><td>Payroll dates for 3 months</td><td>T3</td></tr>
              <tr><td>Staff rooms hold only the new handbook</td><td>Visit each staff room</td><td>F7</td></tr>
            </tbody>
          </table>
          <p>Before launch, Grace makes a final cross-check. Is every requirement ID in a policy? Does every FAQ answer match an approved section? Does every policy have at least one audit check? Are names, dates and version numbers the same everywhere?</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the pack in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Grace's steps for the Harbour Lane policy pack in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Build the requirements list from official sources, and check and tag every row.</li>
              <li data-order="2">Managers make the key decisions, such as how tips are shared, after hearing staff views.</li>
              <li data-order="3">Brief AI with the requirement IDs and decisions, and get a first draft of each policy.</li>
              <li data-order="4">Trace every sentence to an ID. The adviser reviews, and the directors approve.</li>
              <li data-order="5">Turn the approved policies into the handbook section and the staff FAQ.</li>
              <li data-order="6">Publish, brief managers, and remove old copies from the staff rooms.</li>
              <li data-order="7">Run the audit checklist after a few months, and fix any gaps you find.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI one approved policy summary, and ask for the handbook section, three FAQ entries and an audit checklist. Then check every part against the policy.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR writer for a UK employer. Use plain British English and short sentences.

        Employer: [Harbour Lane Hotels, three hotels in Bristol, about 260 staff, 58 of them casual]
        Approved policy summary (made-up):
        [Holiday policy v1.0. Leave year: 1 January to 31 December. Full-time and part-time staff: 5.6 weeks a year, pro rata for part-time. Casual and irregular-hours staff: you build up holiday at 12.07% of the hours you work in each pay period. Book holiday through the HR system at least 2 weeks ahead. Your manager replies within 5 days. Holiday records are kept for 6 years.]

        Using ONLY this summary, write:
        1. A handbook section of up to 150 words, for staff reading on a phone.
        2. Three FAQ entries, including one for a casual worker whose hours change every week. Show a worked example with made-up hours.
        3. An audit checklist table: Check | Evidence to look for | How many to sample.

        Rules: do not add rules, numbers or legal claims that are not in the summary. Write [ASK HR] for anything missing. End with: "Check against the approved policy before publishing."</pre>
            <ul class="ai-try-checks">
              <li>Every rule in the handbook section and FAQ appears in the summary.</li>
              <li>The worked example uses 12.07% correctly. Check the sum yourself.</li>
              <li>Each audit check names evidence you can actually see.</li>
              <li>Missing details are marked [ASK HR], not invented.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A policy pack is a chain: requirements, policies, handbook, FAQ and audit. Each link is built from the one before. AI speeds up every link, but people check the law, make the decisions and prove the policies work in practice.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

module AiMultilingualSupportContent
  # Units (sidebar dividers): 1–4 Multilingual Basics · 5–9 Translation and Replies · 10–14 Quality and Scale · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Why Language Matters in Support</h1>
        </div>
        <p class="lc-lead">Customers understand more, and trust you more, when support speaks their language. In this lesson you will learn why language matters in support. You will see how India's many languages show up in real messages. You will also see what it costs when language goes wrong. In this course you will follow Swift Mart, an online grocery app in Telangana. Its support lead, Priya, is planning support for three new states: Tamil Nadu, Karnataka and Maharashtra.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A bar chart of Swift Mart's 12,000 Telangana support contacts in August by language. English 4,200 (35%). Hinglish in English letters 2,400 (20%). Telugu-English in English letters 2,160 (18%). Telugu in Telugu script 1,440 (12%). Hindi in Devanagari 1,200 (10%). Other or unclear 600 (5%). 65% are not plain English and 38% mix two languages.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="28" font-weight="700">Swift Mart, Telangana: 12,000 support contacts in August, by language</text>
              <text x="20" y="67">English</text>
              <rect x="190" y="51" width="420" height="22" rx="4" fill="#3b82f6"/>
              <text x="618" y="67">4,200 (35%)</text>
              <text x="20" y="101">Hinglish (Latin)</text>
              <rect x="190" y="85" width="240" height="22" rx="4" fill="#f59e0b"/>
              <text x="438" y="101">2,400 (20%)</text>
              <text x="20" y="135">Telugu-English (Latin)</text>
              <rect x="190" y="119" width="216" height="22" rx="4" fill="#f59e0b"/>
              <text x="414" y="135">2,160 (18%)</text>
              <text x="20" y="169">Telugu (Telugu script)</text>
              <rect x="190" y="153" width="144" height="22" rx="4" fill="#10b981"/>
              <text x="342" y="169">1,440 (12%)</text>
              <text x="20" y="203">Hindi (Devanagari)</text>
              <rect x="190" y="187" width="120" height="22" rx="4" fill="#10b981"/>
              <text x="318" y="203">1,200 (10%)</text>
              <text x="20" y="237">Other or unclear</text>
              <rect x="190" y="221" width="60" height="22" rx="4" fill="#9b99b8"/>
              <text x="258" y="237">600 (5%)</text>
              <g font-size="12">
                <rect x="20" y="256" width="12" height="12" fill="#3b82f6"/><text x="38" y="266">Plain English</text>
                <rect x="150" y="256" width="12" height="12" fill="#f59e0b"/><text x="168" y="266">Mixed, in English letters</text>
                <rect x="345" y="256" width="12" height="12" fill="#10b981"/><text x="363" y="266">Own script</text>
                <rect x="460" y="256" width="12" height="12" fill="#9b99b8"/><text x="478" y="266">Other</text>
              </g>
              <text x="380" y="292" text-anchor="middle" font-size="12" fill="#9b99b8">Made-up data. 65% are not plain English. 38% mix two languages in English letters.</text>
            </g>
          </svg>
          <figcaption>Even in one state, most Swift Mart customers do not write in plain English. Many mix two languages in one message.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why language matters to customers</h3>
          <p>Support is about solving a problem. The customer must understand the answer, or the problem is not solved. Language helps in five ways:</p>
          <ul class="lc-list">
            <li><strong>Understanding.</strong> The customer follows the steps and knows what happens next.</li>
            <li><strong>Trust.</strong> People feel respected when you use their language. They share details more easily.</li>
            <li><strong>Speed.</strong> Fewer "I did not understand" messages means fewer back-and-forth replies.</li>
            <li><strong>Inclusion.</strong> Older customers and people who read little English can get help too.</li>
            <li><strong>Fewer repeat contacts.</strong> A repeat contact is when the same customer comes back about the same problem.</li>
          </ul>
          <p>Here is a made-up example from Swift Mart. In August, 1,440 customers wrote in Telugu script. There were not enough Telugu-speaking agents on every shift. So 900 of them got a reply in English, and 540 got a reply in Telugu.</p>
          <table class="lc-table">
            <thead><tr><th>Reply language</th><th>Contacts</th><th>Came back within 48 hours</th><th>CSAT</th></tr></thead>
            <tbody>
              <tr><td>English</td><td>900</td><td>216 (24%)</td><td>64%</td></tr>
              <tr><td>Telugu</td><td>540</td><td>54 (10%)</td><td>85%</td></tr>
            </tbody>
          </table>
          <p>CSAT (customer satisfaction score) is the share of survey answers that are 4 or 5 out of 5. Now do the maths. If the English group had the same 10% repeat rate, it would have 90 repeat contacts, not 216. That is 126 extra contacts a month. At 6 minutes each, that is 756 minutes, or 12.6 agent hours.</p>
          <p>Be careful with this kind of number. The two groups may differ in other ways, such as the type of problem. Check a sample of chats before you say that language caused the gap.</p>
        </div>
        <div class="lc-card">
          <h3>India's many languages, as they appear in support</h3>
          <p>India's Constitution lists 22 languages in its Eighth Schedule. People speak many more languages and dialects. In support, you will see these patterns:</p>
          <ul class="lc-list">
            <li><strong>Own script.</strong> Some customers type in their language's own letters, such as Telugu or Tamil script.</li>
            <li><strong>English letters.</strong> Many customers type their language in English letters on the phone. For example, <em>"Refund kab milega?"</em> is Hindi for "When will I get the refund?"</li>
            <li><strong>Code-mixing.</strong> This means using two languages in one message. Hinglish mixes Hindi and English. Tanglish mixes Tamil and English.</li>
            <li><strong>Switching.</strong> A customer may start in English and switch to Telugu when they get upset.</li>
            <li><strong>Voice notes.</strong> Many WhatsApp customers send voice notes instead of typing.</li>
          </ul>
          <p>State does not decide language. Here is what Swift Mart's made-up pilot data suggests:</p>
          <table class="lc-table">
            <thead><tr><th>State</th><th>Main local language</th><th>Also common in support</th></tr></thead>
            <tbody>
              <tr><td>Telangana</td><td>Telugu</td><td>English, Hindi, Hinglish, Urdu</td></tr>
              <tr><td>Tamil Nadu</td><td>Tamil</td><td>English, Tanglish</td></tr>
              <tr><td>Karnataka</td><td>Kannada</td><td>English, Hindi, Tamil, Telugu</td></tr>
              <tr><td>Maharashtra</td><td>Marathi</td><td>Hindi, English, Marathi in English letters</td></tr>
            </tbody>
          </table>
          <p>Language also matters for rules. For example, India's DPDP Act 2023 (the data protection law) gives people the option to read privacy notices in English or an Eighth Schedule language. This is general information, not legal advice. The DPDP Rules 2025 add more detail, and many of their duties start in stages. Check the current rules with your legal team.</p>
          <p>All non-English sample messages in this course are simple and made up. Treat them as drafts for a native speaker to check before you use them with customers.</p>
        </div>
        <div class="lc-card">
          <h3>What it costs when language goes wrong</h3>
          <table class="lc-table">
            <thead><tr><th>Mistake</th><th>Swift Mart example (made up)</th><th>Cost</th></tr></thead>
            <tbody>
              <tr><td>Reply in a language the customer reads poorly</td><td>"Refund initiated to source, TAT 5-7 working days" sent to a customer who wrote in Telugu</td><td>Repeat contacts, low CSAT</td></tr>
              <tr><td>A policy changes in translation</td><td>"5 to 7 working days" becomes "5 to 7 days"</td><td>Angry follow-ups on day 6, a broken promise</td></tr>
              <tr><td>Wrong level of respect</td><td>A Hindi reply uses the informal "tu" for "you" with an older customer</td><td>The customer feels insulted</td></tr>
              <tr><td>Brand or screen names are translated</td><td>"Swift Mart Wallet" becomes a local word for "purse"</td><td>The customer cannot find it in the app</td></tr>
              <tr><td>The translation adds a promise</td><td>"We will check" becomes "We will refund you today"</td><td>Money and legal risk</td></tr>
              <tr><td>No way to reach a person in their language</td><td>A bot loops in English</td><td>Complaints, bad reviews, lost customers</td></tr>
            </tbody>
          </table>
          <p>The goal is not every language on every channel. The goal is the right languages, done well, with a person always reachable. You will plan this later in the course.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: how a language mistake grows</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">A Tamil Nadu customer's milk packet leaked. Put the steps in the order they happened.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The customer writes in Tanglish: "Paal packet leak aagiduchu, refund venum" (made up; for a native speaker to check). It means "The milk packet leaked, I want a refund."</li>
              <li data-order="2">The agent does not read Tamil. They send a formal English reply full of policy words.</li>
              <li data-order="3">The customer does not understand "credited to source within 5-7 working days".</li>
              <li data-order="4">On day 3 the customer writes again, now upset, and asks for a manager.</li>
              <li data-order="5">A second agent reads the whole chat and explains again. The handle time doubles.</li>
              <li data-order="6">The customer gives a CSAT score of 1 out of 5 and posts a one-star review.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check sample tickets for language problems and estimate the extra work. Use the made-up tickets, or replace them with your own tickets after you remove names and phone numbers. The non-English messages are made up, for a native speaker to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a support analyst for [Swift Mart, an online grocery app in Telangana]. Each made-up ticket below shows: message | our reply language | what happened.

        For each ticket, give:
        1. The customer's language. Say "mixed" for code-mixing, such as Hinglish.
        2. Did language cause a problem? Yes, No or Unsure, and why.
        3. Extra work: repeat contacts x [6] minutes each.

        Tickets:
        T1 | "Order inka raaledu, 1 hour aindi" | Reply in English | Solved in 1 reply
        T2 | "Refund kab milega? Paisa kat gaya" | Reply in English policy text | Customer wrote 2 more times
        T3 | "Where is my order SM-48213?" | Reply in English | Solved
        T4 | "Paal packet leak aagiduchu" | Reply in English | Wrote 1 more time, CSAT 1 of 5
        T5 | Message in Telugu script about a missing item | Reply in English | Customer called 1 time
        T6 | "Delivery boy was rude" | Reply in English | Escalated to team lead
        T7 | "Coupon FRESH50 kaam nahi kar raha" | Reply in Hindi | Solved
        T8 | "Mazi order ajun aali nahi" | Reply in English | Customer cancelled

        Output: a table, then the total extra minutes. Then write a 5-line note for [Priya, the support lead] with the main problems and 2 fixes to try first. Use only facts in the tickets. Label guesses as guesses.</pre>
            <ul class="ai-try-checks">
              <li>T3, T6 and T7 are not blamed on language without a reason.</li>
              <li>The extra minutes match the repeat contacts (T2, T4 and T5 add 4 contacts, so 24 minutes at 6 minutes each).</li>
              <li>T8's cancellation is marked as a guess, because the ticket does not say why.</li>
              <li>The fixes are practical, such as a language picker or saved replies checked by a native speaker.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A reply the customer cannot fully understand is not a finished reply. Start with your own data: which languages customers really use, and where language mistakes cost you repeat contacts and trust.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Where AI Helps with Languages</h1>
        </div>
        <p class="lc-lead">AI can help a support team work in many languages. It can name the language of a message, translate it, draft a reply and translate help articles. But AI makes mistakes that sound natural and correct. In this lesson you will learn the main jobs AI can do with languages. You will also learn its limits, and which decisions people must keep.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Two workflows. A customer message: message in, AI detects the language, AI translates it for the agent, the agent decides, AI drafts a reply in the customer's language from a saved reply, then a person checks and sends. A help article: English article, AI translates with the glossary, a native reviewer approves, then publish and re-check when the English changes.">
            <defs><marker id="ml2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="14" y="26" text-anchor="start" font-weight="700" fill="#67e8f9">A customer message</text>
              <rect x="14" y="40" width="112" height="72" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="70" y="64" font-weight="700">Message in</text>
              <text x="70" y="82" font-size="11" fill="#9b99b8">Tanglish on</text>
              <text x="70" y="97" font-size="11" fill="#9b99b8">WhatsApp</text>
              <rect x="138" y="40" width="112" height="72" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="194" y="64" font-weight="700">Detect</text>
              <text x="194" y="82" font-size="11" fill="#9b99b8">Tamil, mixed</text>
              <text x="194" y="97" font-size="11" fill="#9b99b8">picks a queue</text>
              <rect x="262" y="40" width="112" height="72" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="318" y="64" font-weight="700">Translate</text>
              <text x="318" y="82" font-size="11" fill="#9b99b8">into English</text>
              <text x="318" y="97" font-size="11" fill="#9b99b8">for the agent</text>
              <rect x="386" y="40" width="112" height="72" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="442" y="64" font-weight="700">Agent decides</text>
              <text x="442" y="82" font-size="11" fill="#9b99b8">checks order</text>
              <text x="442" y="97" font-size="11" fill="#9b99b8">and policy</text>
              <rect x="510" y="40" width="112" height="72" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="566" y="64" font-weight="700">AI drafts</text>
              <text x="566" y="82" font-size="11" fill="#9b99b8">reply in Tamil</text>
              <text x="566" y="97" font-size="11" fill="#9b99b8">from saved reply</text>
              <rect x="634" y="40" width="112" height="72" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="690" y="64" font-weight="700">Check, send</text>
              <text x="690" y="82" font-size="11" fill="#9b99b8">native check if</text>
              <text x="690" y="97" font-size="11" fill="#9b99b8">money or policy</text>
              <text x="14" y="150" text-anchor="start" font-weight="700" fill="#67e8f9">A help article</text>
              <rect x="14" y="162" width="170" height="52" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="99" y="184" font-weight="700">English article</text>
              <text x="99" y="202" font-size="11" fill="#9b99b8">approved source</text>
              <rect x="201" y="162" width="170" height="52" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="286" y="184" font-weight="700">AI translates</text>
              <text x="286" y="202" font-size="11" fill="#9b99b8">uses the glossary</text>
              <rect x="388" y="162" width="170" height="52" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="473" y="184" font-weight="700">Native reviewer</text>
              <text x="473" y="202" font-size="11" fill="#9b99b8">fixes and approves</text>
              <rect x="575" y="162" width="170" height="52" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="660" y="184" font-weight="700">Publish</text>
              <text x="660" y="202" font-size="11" fill="#9b99b8">re-check on changes</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ml2a)">
                <line x1="127" y1="76" x2="135" y2="76"/>
                <line x1="251" y1="76" x2="259" y2="76"/>
                <line x1="375" y1="76" x2="383" y2="76"/>
                <line x1="499" y1="76" x2="507" y2="76"/>
                <line x1="623" y1="76" x2="631" y2="76"/>
                <line x1="185" y1="188" x2="198" y2="188"/>
                <line x1="372" y1="188" x2="385" y2="188"/>
                <line x1="559" y1="188" x2="572" y2="188"/>
              </g>
              <g font-size="12" text-anchor="start">
                <rect x="14" y="240" width="12" height="12" fill="#8b5cf6"/><text x="32" y="250">AI drafts or checks</text>
                <rect x="200" y="240" width="12" height="12" fill="#10b981"/><text x="218" y="250">A person decides or approves</text>
                <rect x="440" y="240" width="12" height="12" fill="#22d3ee"/><text x="458" y="250">Customer or source text</text>
              </g>
              <text x="380" y="284" font-size="12" fill="#9b99b8">AI never approves refunds or sends policy promises on its own.</text>
            </g>
          </svg>
          <figcaption>AI does the first draft at several steps. People make the decisions and approve anything risky.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Six language jobs AI can help with</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>What AI does</th><th>Swift Mart example (made up)</th><th>Who checks</th></tr></thead>
            <tbody>
              <tr><td>Detect the language</td><td>Names the language, even in mixed messages</td><td>"Refund eppo varum?" is Tamil in English letters</td><td>Routing rules, plus weekly spot checks</td></tr>
              <tr><td>Translate incoming messages</td><td>Gives the agent an English or Hindi version</td><td>A Telangana agent reads a message in Marathi</td><td>The agent asks the customer if anything is unclear</td></tr>
              <tr><td>Draft replies</td><td>Writes a reply in the customer's language from your approved answer</td><td>A refund status reply in Kannada</td><td>The agent checks facts. A native speaker checks risky replies.</td></tr>
              <tr><td>Translate articles and templates</td><td>Drafts help articles, macros (saved replies) and WhatsApp templates</td><td>The top 20 help articles in Tamil</td><td>A native reviewer, before anything is published</td></tr>
              <tr><td>Summarise for handover</td><td>Writes a short English summary of a long chat</td><td>A Tamil chat is passed to a team lead who reads Hindi and English</td><td>The team lead reads the key lines</td></tr>
              <tr><td>Quality checks</td><td>Compares a translation with the original and flags gaps</td><td>Checks that "₹480" and "48 hours" are still there</td><td>A person decides what to fix</td></tr>
            </tbody>
          </table>
          <p>You can do these jobs in AI assistants such as Claude, in translation tools such as Google Translate or Microsoft Translator, and in helpdesk tools. Many helpdesks, such as Zendesk, Freshdesk, Zoho Desk and Intercom, offer built-in or add-on translation. India's government platform Bhashini also offers tools for Indian languages. Features and language lists change often, so check each tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <p>An agent in Telangana gets this message from Tamil Nadu. It is made-up Tanglish, for a native speaker to check.</p>
          <pre><code>Naan order panna thakkali ellam azhugi irukku. Photo anuppiten. SM-50217</code></pre>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Translate this.</code></pre>
          <p>The weak prompt gives a translation and nothing else. The agent cannot tell which words the AI was unsure about.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You help a support agent who reads English.
        Translate the customer's message into simple English.
        Then list:
        - the language and script
        - what the customer wants, in one line
        - order numbers, amounts and dates, copied exactly
        - any words you are not sure about
        Do not add anything the customer did not say.</code></pre>
          <p><strong>A good answer looks like this:</strong></p>
          <pre><code>Translation: "All the tomatoes I ordered are rotten. I sent a photo."
        Language: Tamil, written in English letters (Tanglish)
        Customer wants: help with rotten tomatoes (likely a refund or replacement)
        Details: order SM-50217. No amount given.
        Unsure: "azhugi" most likely means "rotten".</code></pre>
          <p>Notice "likely". The customer did not ask for a refund in words. The agent checks the photo and the order, then decides.</p>
        </div>
        <div class="lc-card">
          <h3>Limits and risks</h3>
          <ul class="lc-list">
            <li><strong>Fluent but wrong.</strong> The text reads naturally, but the meaning has changed.</li>
            <li><strong>Numbers and "not".</strong> AI can drop a word like "working" in "5 to 7 working days". It can also drop "not".</li>
            <li><strong>Quality differs by language.</strong> A tool can work well in one language and less well in another. Do not assume. Test each language with your own samples.</li>
            <li><strong>Mixed text and slang.</strong> Short, mixed or local messages are harder to read correctly.</li>
            <li><strong>Tone.</strong> AI may pick an informal "you" where your brand needs a respectful one.</li>
            <li><strong>Added promises.</strong> AI may add "we will refund you" when the original only said "we will check".</li>
            <li><strong>Privacy.</strong> Do not paste customer names, phone numbers, addresses or payment details into public AI tools. Use the tools your company has approved.</li>
          </ul>
          <p>Priya sets three rules for Swift Mart. AI drafts, and people send anything about money or policy. The bot never promises refunds. Every customer can type "agent" and reach a person.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: who does this job?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each Swift Mart language task. Can AI do it alone, should AI draft and a person check, or should a person handle it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI alone"></div>
              <div data-sorter-target="bucket" data-bucket="draft" data-label="AI drafts, person checks"></div>
              <div data-sorter-target="bucket" data-bucket="person" data-label="A person handles it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="It only picks a queue. If AI is unsure, the customer is asked to choose. Weekly spot checks catch errors.">Detect the language of a new chat to choose a queue</li>
              <li data-bucket="ai" data-why="The customer never sees this translation. It only helps the agent understand. The agent asks if anything is unclear.">Translate a Tamil message into English so a Telangana agent can read it</li>
              <li data-bucket="draft" data-why="A money amount and a time period must be exactly right. A person checks before sending.">Translate a reply about a ₹480 refund into Kannada</li>
              <li data-bucket="draft" data-why="Articles are read by many customers for months. A native reviewer must approve them.">Translate the top 20 help articles into Marathi</li>
              <li data-bucket="person" data-why="Food safety is a serious issue. A trained person must handle it quickly and with care.">A Maharashtra customer writes in Marathi that there was glass in a food packet</li>
              <li data-bucket="person" data-why="Legal threats need a senior person. A human translator may be needed for exact wording.">A customer threatens, in Tamil, to file a consumer court case</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI as a language helper for an agent. It will translate customer messages, pull out the key details and flag anything urgent. The sample messages are made up, for a native speaker to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a language assistant for support agents at [Swift Mart, an online grocery app]. The agents read [English]. Customers write in many Indian languages, often in English letters.

        For each message below, give:
        1. Language and script (for example, "Tamil in English letters").
        2. A simple [English] translation.
        3. What the customer wants, in one line.
        4. Order numbers, amounts, dates and item names, copied exactly.
        5. Words you are not sure about, and your best guess.
        6. Urgent flags: food safety, health, legal threat, payment problem or very angry customer.
        7. A next step for the agent. Do not promise a refund or a time.

        Messages:
        A. [Naan order panna thakkali ellam azhugi irukku. Photo anuppiten. SM-50217]
        B. [Order innu bandilla, 2 ganTe aaytu. SM-50388]
        C. [Paise kat gaye ₹640 lekin order failed dikh raha hai]

        Do not add anything the customer did not say. If you are not sure of the language, say so.</pre>
            <ul class="ai-try-checks">
              <li>Order numbers and ₹ amounts are copied exactly, with no changes.</li>
              <li>Unsure words are listed, not hidden inside a smooth translation.</li>
              <li>Message C is flagged as a payment problem for a person to check.</li>
              <li>No next step promises a refund, a replacement or a delivery time.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a strong language helper for your team. Let it detect, translate for understanding and draft. Keep people in charge of what customers read when money, safety, law or trust is involved.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Planning Language Coverage</h1>
        </div>
        <p class="lc-lead">No team can support every language on every channel all day. A coverage plan says which languages you support, on which channels, at which hours, and how deeply. In this lesson you will build a coverage plan from real data. You will count contacts by language, turn them into agent hours and choose a level for each language. This keeps your budget focused where customers need it most.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Swift Mart's coverage plan as a table. English 8,260, Hindi 5,060 and Telugu 3,840 contacts a month get full support: chat and WhatsApp 7am to 11pm, phone, and all help articles. Tamil 1,800 gets core support: 8am to 10pm, phone callback within 4 hours, top 20 articles. Kannada 1,000 and Marathi 980 get assisted support: 9am to 9pm, callback next day, top 10 articles. Other languages 1,060 get basic support with AI translation help and English articles.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="10" y="14" width="740" height="36" rx="6" fill="#27274e" stroke="#67e8f9"/>
              <g font-weight="700" fill="#67e8f9">
                <text x="20" y="37">Language</text>
                <text x="134" y="37">Contacts/mo</text>
                <text x="248" y="37">Level</text>
                <text x="352" y="37">Chat + WhatsApp</text>
                <text x="516" y="37">Phone</text>
                <text x="630" y="37">Help centre</text>
              </g>
              <rect x="10" y="54" width="740" height="32" rx="4" fill="#1f1f44"/>
              <rect x="10" y="88" width="740" height="32" rx="4" fill="#1f1f44"/>
              <rect x="10" y="122" width="740" height="32" rx="4" fill="#1f1f44"/>
              <rect x="10" y="156" width="740" height="32" rx="4" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="10" y="190" width="740" height="32" rx="4" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="10" y="224" width="740" height="32" rx="4" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="10" y="258" width="740" height="32" rx="4" fill="#1f1f44"/>
              <text x="20" y="75">English</text><text x="134" y="75">8,260</text><text x="248" y="75" fill="#6ee7b7">Full</text><text x="352" y="75">7am-11pm</text><text x="516" y="75">Yes</text><text x="630" y="75">All articles</text>
              <text x="20" y="109">Hindi</text><text x="134" y="109">5,060</text><text x="248" y="109" fill="#6ee7b7">Full</text><text x="352" y="109">7am-11pm</text><text x="516" y="109">Yes</text><text x="630" y="109">All articles</text>
              <text x="20" y="143">Telugu</text><text x="134" y="143">3,840</text><text x="248" y="143" fill="#6ee7b7">Full</text><text x="352" y="143">7am-11pm</text><text x="516" y="143">Yes</text><text x="630" y="143">All articles</text>
              <text x="20" y="177">Tamil</text><text x="134" y="177">1,800</text><text x="248" y="177" fill="#93c5fd">Core</text><text x="352" y="177">8am-10pm</text><text x="516" y="177">Callback 4h</text><text x="630" y="177">Top 20</text>
              <text x="20" y="211">Kannada</text><text x="134" y="211">1,000</text><text x="248" y="211" fill="#fcd34d">Assisted</text><text x="352" y="211">9am-9pm</text><text x="516" y="211">Callback 1 day</text><text x="630" y="211">Top 10</text>
              <text x="20" y="245">Marathi</text><text x="134" y="245">980</text><text x="248" y="245" fill="#fcd34d">Assisted</text><text x="352" y="245">9am-9pm</text><text x="516" y="245">Callback 1 day</text><text x="630" y="245">Top 10</text>
              <text x="20" y="279">Other</text><text x="134" y="279">1,060</text><text x="248" y="279" fill="#9b99b8">Basic</text><text x="352" y="279">AI translation help</text><text x="516" y="279">No</text><text x="630" y="279">English</text>
              <text x="380" y="316" text-anchor="middle" font-size="12" fill="#9b99b8">Made-up forecast: Telangana now plus 3 new states. 22,000 contacts a month in all.</text>
            </g>
          </svg>
          <figcaption>A coverage plan gives each language a level. The level sets the channels, hours and help articles.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four levels of coverage</h3>
          <p>Coverage is not yes or no. Give each language a level. A channel is a way customers contact you, such as chat, WhatsApp, phone or email.</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>What customers get</th><th>Who does the work</th></tr></thead>
            <tbody>
              <tr><td><strong>Full</strong></td><td>All channels, all support hours, all help articles</td><td>Native-speaking agents on every shift</td></tr>
              <tr><td><strong>Core</strong></td><td>Chat and WhatsApp for most hours, phone callbacks, top help articles</td><td>A small team of native-speaking agents, with AI drafts</td></tr>
              <tr><td><strong>Assisted</strong></td><td>Chat and WhatsApp for set hours, next-day callbacks, a few key articles</td><td>One or two native speakers per shift, AI drafts and saved replies</td></tr>
              <tr><td><strong>Basic</strong></td><td>AI translation helps agents understand. Replies use simple English or Hindi.</td><td>Any agent. Risky cases go to a person who speaks the language, if possible.</td></tr>
            </tbody>
          </table>
          <p>Every level needs a clear way to reach a person. Every level must follow the same refund and safety rules.</p>
        </div>
        <div class="lc-card">
          <h3>Start from data, not guesses</h3>
          <p>Swift Mart ran a one-month pilot in the three new states. It got 2,500 contacts: 800 from Tamil Nadu, 1,000 from Karnataka and 700 from Maharashtra. Priya expects four times this volume after full launch. Telangana already has 12,000 contacts a month.</p>
          <p>Priya adds a Language column to the ticket export. Then she counts with a spreadsheet formula. This one counts Tamil contacts from Tamil Nadu:</p>
          <pre><code>=COUNTIFS(B2:B2501,"Tamil Nadu",C2:C2501,"Tamil")</code></pre>
          <p>Next she turns contacts into agent hours. AHT (average handle time) is the average time an agent spends on one contact. Swift Mart's AHT is 6 minutes.</p>
          <pre><code>Agent hours per month = contacts x AHT in minutes / 60
        Tamil: 1,800 x 6 / 60 = 180 hours</code></pre>
          <table class="lc-table">
            <thead><tr><th>Language</th><th>Contacts a month (all states, forecast)</th><th>Share</th><th>Agent hours</th></tr></thead>
            <tbody>
              <tr><td>English</td><td>8,260</td><td>37.5%</td><td>826</td></tr>
              <tr><td>Hindi</td><td>5,060</td><td>23.0%</td><td>506</td></tr>
              <tr><td>Telugu</td><td>3,840</td><td>17.5%</td><td>384</td></tr>
              <tr><td>Tamil</td><td>1,800</td><td>8.2%</td><td>180</td></tr>
              <tr><td>Kannada</td><td>1,000</td><td>4.5%</td><td>100</td></tr>
              <tr><td>Marathi</td><td>980</td><td>4.5%</td><td>98</td></tr>
              <tr><td>Other</td><td>1,060</td><td>4.8%</td><td>106</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>22,000</strong></td><td><strong>100%</strong></td><td><strong>2,200</strong></td></tr>
            </tbody>
          </table>
          <p>Volume is only one input. Also ask these questions:</p>
          <ul class="lc-list">
            <li><strong>Who has no other option?</strong> Some customers can only read their own language. Others write in English only because they think they must.</li>
            <li><strong>Which topics are risky?</strong> Refunds and food safety need clear, exact language.</li>
            <li><strong>Can you hire?</strong> Can you find native-speaking agents and reviewers for each language?</li>
            <li><strong>How will demand grow?</strong> A new state usually grows for many months.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>From hours to people and a plan</h3>
          <p>Workload is not the same as staffing. Priya's planning figure is about 120 contact hours a month per full-time agent. Kannada needs 100 hours, which is less than one agent. But the Kannada queue is open 9 am to 9 pm, seven days a week. That is 84 hours a week, which one person cannot cover. So she plans two people.</p>
          <table class="lc-table">
            <thead><tr><th>Language</th><th>Hours of work</th><th>Hours open</th><th>People planned</th></tr></thead>
            <tbody>
              <tr><td>Tamil</td><td>180 (1.5 agents)</td><td>8 am to 10 pm, daily</td><td>3 (2 current agents + 1 new hire)</td></tr>
              <tr><td>Kannada</td><td>100 (0.8 agents)</td><td>9 am to 9 pm, daily</td><td>2 (1 current agent + 1 new hire)</td></tr>
              <tr><td>Marathi</td><td>98 (0.8 agents)</td><td>9 am to 9 pm, daily</td><td>2 new hires</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Which languages should my support team offer?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are our monthly contacts by language, our AHT (6 minutes)
        and our support hours. Suggest a coverage level for each
        language (Full, Core, Assisted or Basic). Show the agent-hour
        maths. Give one reason per language. List the questions
        I must answer before I decide.</code></pre>
          <p>The AI can do the maths and suggest options. You and your manager decide the budget, the hiring and the launch date. Review the plan every three months with new data.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Priya builds the coverage plan</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">Priya counts the 2,500 pilot contacts by state and language with COUNTIFS.</li>
              <li data-kind="result" data-label="Pilot counts">Tamil 450, Kannada 250, Marathi 245, Hindi 365, English 1,015, Telugu 60, Other 115. The total is 2,500.</li>
              <li data-kind="user" data-label="Priya asks AI">She pastes only the counts, with no customer data. She asks for a coverage level per language, with the agent-hour maths at 6 minutes AHT.</li>
              <li data-kind="answer" data-label="AI suggests">The AI multiplies by 4 for the full launch. It suggests Core for Tamil (1,800 contacts, 180 hours) and Assisted for Kannada and Marathi.</li>
              <li data-kind="check" data-label="Check the maths">Priya checks one line by hand: 1,800 x 6 / 60 = 180 hours. It is correct.</li>
              <li data-kind="warn" data-label="Staffing mistake">The AI says "Kannada needs 0.8 agents, so one part-time agent is enough." That ignores opening hours. 84 hours a week needs at least two people.</li>
              <li data-kind="check" data-label="People decide">Priya adds budget, hiring time and leave cover. Her manager approves the plan, with a review in three months.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a language coverage plan from contact data. Use the sample numbers, or put in your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a support operations planner. Help me draft a language coverage plan for [Swift Mart, an online grocery app expanding from Telangana to Tamil Nadu, Karnataka and Maharashtra].

        Monthly contacts by language (forecast): [English 8,260; Hindi 5,060; Telugu 3,840; Tamil 1,800; Kannada 1,000; Marathi 980; Other 1,060]
        Average handle time: [6] minutes per contact
        One full-time agent handles about [120] contact hours a month.
        Channels: [chat, WhatsApp, phone]
        Current agents who speak each language: [Tamil 2, Kannada 1, Marathi 0]

        Levels: Full (all channels and hours), Core, Assisted, Basic (AI translation helps agents; replies in simple English or Hindi).

        1. Make a table: Language | Contacts | Share (%) | Agent hours | Level | Channels and hours | Help articles to translate | People needed.
        2. Show the agent-hour sum for each language.
        3. For people needed, think about opening hours, weekly days off and leave, not only workload.
        4. List 3 risks and 5 questions I must answer before launch.

        Do not invent numbers that I did not give you. Mark any assumption clearly.</pre>
            <ul class="ai-try-checks">
              <li>Shares add up to about 100% and each agent-hour sum is right (contacts x 6 / 60).</li>
              <li>Small languages still get at least two people if the queue is open every day.</li>
              <li>Every level keeps a clear way to reach a person.</li>
              <li>Assumptions, such as future growth, are labelled, not stated as facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Coverage is a set of choices, not a yes or no. Use data to give each language a level. Plan people from opening hours as well as workload, and review the plan as the new states grow.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Detecting Language and Code-Mixing</h1>
        </div>
        <p class="lc-lead">You must know a customer's language before you can reply in it. In India this is harder than it sounds. Customers mix languages, type in English letters and send very short messages. In this lesson you will learn the key words: script, transliteration and code-mixing. You will see how AI detects language. You will also learn how to route messages to the right team safely.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Routing a new message by language. First check the script. Own script such as Tamil, Telugu or Kannada goes straight to that language's queue. Devanagari could be Hindi or Marathi, so AI reads the words and then picks a queue. English letters could be English, Hinglish or Tanglish, so AI reads the words and then picks a queue. If confidence is low, or the message is only ok or an order ID, ask the customer to pick a language and save the choice.">
            <defs><marker id="ml4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="125" width="135" height="64" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="82" y="152" font-weight="700">New message</text>
              <text x="82" y="172" font-size="11" fill="#9b99b8">chat or WhatsApp</text>
              <rect x="185" y="125" width="140" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="255" y="152" font-weight="700">Check the script</text>
              <text x="255" y="172" font-size="11" fill="#9b99b8">which letters?</text>
              <rect x="370" y="20" width="180" height="48" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="460" y="40" font-weight="700">Own script</text>
              <text x="460" y="58" font-size="11" fill="#9b99b8">Tamil, Telugu, Kannada</text>
              <rect x="370" y="100" width="180" height="48" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="460" y="120" font-weight="700">Devanagari</text>
              <text x="460" y="138" font-size="11" fill="#9b99b8">Hindi or Marathi?</text>
              <rect x="370" y="180" width="180" height="48" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="460" y="200" font-weight="700">English letters</text>
              <text x="460" y="218" font-size="11" fill="#9b99b8">English, Hinglish, Tanglish</text>
              <rect x="590" y="20" width="160" height="48" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="670" y="40" font-weight="700">Language queue</text>
              <text x="670" y="58" font-size="11" fill="#9b99b8">direct</text>
              <rect x="590" y="100" width="160" height="48" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="670" y="120" font-weight="700">AI reads words</text>
              <text x="670" y="138" font-size="11" fill="#9b99b8">then picks a queue</text>
              <rect x="590" y="180" width="160" height="48" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="670" y="200" font-weight="700">AI reads words</text>
              <text x="670" y="218" font-size="11" fill="#9b99b8">then picks a queue</text>
              <rect x="370" y="258" width="380" height="50" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="6 4"/>
              <text x="560" y="279" font-weight="700">Not sure, or only "ok" or an order ID?</text>
              <text x="560" y="298" font-size="11" fill="#9b99b8">Ask the customer to pick a language. Save the choice.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ml4a)">
                <line x1="151" y1="157" x2="182" y2="157"/>
                <path d="M326,150 L366,44"/>
                <path d="M326,157 L366,124"/>
                <path d="M326,164 L366,204"/>
                <line x1="551" y1="44" x2="587" y2="44"/>
                <line x1="551" y1="124" x2="587" y2="124"/>
                <line x1="551" y1="204" x2="587" y2="204"/>
                <path d="M255,190 L255,283 L366,283"/>
              </g>
              <text x="262" y="240" text-anchor="start" font-size="11" fill="#9b99b8">low confidence</text>
            </g>
          </svg>
          <figcaption>The script is the first clue. For Devanagari and English letters, AI reads the words. When it is unsure, ask the customer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three words you need</h3>
          <ul class="lc-list">
            <li><strong>Script:</strong> the set of letters used to write. Hindi and Marathi both use Devanagari. Tamil, Telugu and Kannada each have their own script. English uses Latin letters.</li>
            <li><strong>Transliteration:</strong> writing a language in another script's letters. "Refund kab milega?" is Hindi written in English letters. The words stay Hindi.</li>
            <li><strong>Code-mixing:</strong> using two languages in one message or one sentence. Most Indian support chats include English words like "order", "refund" and "delivery".</li>
          </ul>
          <p>Translation changes the language. Transliteration only changes the letters. Here is the same question, "When will the refund come?", in five made-up forms. A native speaker should check each one.</p>
          <table class="lc-table">
            <thead><tr><th>Common name</th><th>Language</th><th>Example (English letters)</th></tr></thead>
            <tbody>
              <tr><td>Hinglish</td><td>Hindi + English</td><td>Refund kab milega?</td></tr>
              <tr><td>Tanglish</td><td>Tamil + English</td><td>Refund eppo varum?</td></tr>
              <tr><td>Telugu-English</td><td>Telugu + English</td><td>Refund eppudu vastundi?</td></tr>
              <tr><td>Kannada-English</td><td>Kannada + English</td><td>Refund yaavaga barutte?</td></tr>
              <tr><td>Marathi-English</td><td>Marathi + English</td><td>Refund kadhi milel?</td></tr>
            </tbody>
          </table>
          <p>The same customer may also write in their own script. For example, "My order has still not come" in Tamil script is <em>ஆர்டர் இன்னும் வரவில்லை</em>. In Marathi it is <em>माझी ऑर्डर अजून आली नाही</em>. Both are simple samples for a native speaker to check.</p>
        </div>
        <div class="lc-card">
          <h3>Why detection is hard, and how AI helps</h3>
          <ul class="lc-list">
            <li><strong>Very short messages.</strong> "ok", "hi", "??" or only an order ID have no language.</li>
            <li><strong>English letters hide the language.</strong> Simple language detectors may call "Refund kab milega?" English. AI models read the words, so they usually do better.</li>
            <li><strong>Shared script and words.</strong> Hindi and Marathi share a script and many words. "Order cancel karna hai" is Hindi. "Order cancel karaycha aahe" is Marathi.</li>
            <li><strong>Switching.</strong> A customer may write in English, then switch to Kannada.</li>
            <li><strong>Names and places.</strong> A Telugu name does not mean the customer wants Telugu.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What language is this?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Name the language of this support message.
        Give: language, script, mixed with English (yes/no),
        confidence (high, medium or low) and the words that show it.
        If the message has fewer than 3 real words, say "unclear".
        Do not guess from the customer's name or city.</code></pre>
          <p>The words that show it matter. They let a person check the AI's reasoning. For example, "karaycha aahe" points to Marathi, and "karna hai" points to Hindi.</p>
        </div>
        <div class="lc-card">
          <h3>Routing by language</h3>
          <p>Routing means sending each message to the right queue (a waiting list for one team). Here are Priya's rules for Swift Mart:</p>
          <table class="lc-table">
            <thead><tr><th>Detected language</th><th>Queue</th><th>Outside queue hours</th></tr></thead>
            <tbody>
              <tr><td>Tamil (script or English letters)</td><td>Tamil, 8 am to 10 pm</td><td>Bot answers simple questions from approved Tamil replies. Other cases become a ticket for the morning.</td></tr>
              <tr><td>Kannada or Marathi</td><td>Own queue, 9 am to 9 pm</td><td>The same as Tamil. Urgent safety or payment issues go to the on-duty team lead.</td></tr>
              <tr><td>Hindi, Hinglish, Telugu, English</td><td>Existing Telangana queues</td><td>Agents work 7 am to 11 pm</td></tr>
              <tr><td>Unclear or low confidence</td><td>Ask the customer</td><td>Show language buttons: English, हिंदी, தமிழ், ಕನ್ನಡ, मराठी, తెలుగు</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li>Save the customer's choice on their profile. Let them change it at any time.</li>
            <li>Reply in the language of the customer's latest message, not the language of their city.</li>
            <li>Check a sample every week. In the first week, Priya found 7 of 100 chats in the wrong queue (7%). Most were Hindi and Marathi mix-ups or one-word messages.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: route the message</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Send each made-up Swift Mart message to the right queue. Non-English samples are for a native speaker to check.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ta" data-label="Tamil queue"></div>
              <div data-sorter-target="bucket" data-bucket="mr" data-label="Marathi queue"></div>
              <div data-sorter-target="bucket" data-bucket="hi" data-label="Hindi queue"></div>
              <div data-sorter-target="bucket" data-bucket="ask" data-label="Ask the customer"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ta" data-why="Tanglish: Tamil written in English letters. &quot;Innum varala&quot; means &quot;still not come&quot;.">Order innum varala, 1 hour aachu</li>
              <li data-bucket="ta" data-why="This is Tamil script, so it can go straight to the Tamil queue.">ஆர்டர் இன்னும் வரவில்லை</li>
              <li data-bucket="mr" data-why="&quot;Mazi&quot;, &quot;ajun&quot; and &quot;aali nahi&quot; are Marathi words, written in English letters.">Mazi order ajun aali nahi</li>
              <li data-bucket="mr" data-why="&quot;Karaycha aahe&quot; is Marathi. In Hindi it would be &quot;karna hai&quot;.">Order cancel karaycha aahe</li>
              <li data-bucket="hi" data-why="&quot;Karna hai&quot; and &quot;galti se ho gaya&quot; are Hindi. This is Hinglish.">Order cancel karna hai, galti se ho gaya</li>
              <li data-bucket="ask" data-why="An order ID and question marks have no language. Show the language buttons.">SM-50217 ??</li>
              <li data-bucket="ask" data-why="&quot;ok&quot; is used in every language. Keep the current language or ask.">ok</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to detect the language of mixed messages and suggest a queue, with reasons you can check. The sample messages are made up, for a native speaker to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are the routing assistant for [Swift Mart, an online grocery app]. Our queues are: [English, Hindi, Telugu, Tamil, Kannada, Marathi]. If you cannot tell the language, the queue is "Ask customer".

        For each message, give a table:
        # | Language | Script | Mixed with English? | Confidence (high, medium or low) | Words that show the language | Queue

        Rules:
        - Judge only from the words and letters. Do not guess from names or cities.
        - If there are fewer than 3 real words, or confidence is low, use "Ask customer".
        - Hindi and Marathi share words. Explain which words decided it.

        Messages:
        1. [Refund kab milega? 3 din ho gaye]
        2. [Refund kadhi milel? 3 divas zale]
        3. [Order innu bandilla, 2 ganTe aaytu]
        4. [Delivery slot change cheyyocha?]
        5. [Refund eppo varum?]
        6. [ok thanks]
        7. [Hi, my name is Lakshmi Iyer, where is order SM-50388?]
        8. [माझी ऑर्डर अजून आली नाही]

        After the table, list any messages a native speaker should double-check.</pre>
            <ul class="ai-try-checks">
              <li>Messages 1 and 2 are split into Hindi and Marathi, with the deciding words named.</li>
              <li>Message 6 goes to "Ask customer", not a guessed language.</li>
              <li>Message 7 goes to English. The Tamil-sounding name does not change the queue.</li>
              <li>Confidence levels look honest, with some medium ones for short messages.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Detect language from the words and letters, not from the city or the name. When you are unsure, ask the customer, save their choice and let them change it.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Machine Translation Basics</h1>
        </div>
        <p class="lc-lead">Machine translation (MT) is software that translates text from one language to another. Support teams use it every day, often inside the helpdesk. In this lesson you will learn how modern AI translation works in plain words. You will see what it does well and the mistakes it makes. You will also learn a simple rule for when a person must check a translation.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A decision tree. Will a customer read it? If no, AI alone is fine because it only helps the agent understand. If yes: does it have money, dates, policy, health or legal words? If yes, a native speaker checks every word or you use a pre-approved translated reply. If no: will it be reused many times, such as a template, article or bot answer? If yes, a native reviewer approves it before publishing. If no, the agent quick-checks names, numbers and tone.">
            <defs><marker id="ml5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="220" height="50" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="130" y="50" font-weight="700">Will a customer read it?</text>
              <rect x="300" y="20" width="440" height="50" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="520" y="41" font-weight="700" fill="#6ee7b7">AI alone is fine</text>
              <text x="520" y="59" font-size="11.5" fill="#9b99b8">It only helps the agent understand. Ask the customer if unclear.</text>
              <rect x="20" y="110" width="220" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="130" y="135" font-weight="700">Money, dates, policy,</text>
              <text x="130" y="154" font-weight="700">health or legal words?</text>
              <rect x="300" y="110" width="440" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="520" y="135" font-weight="700" fill="#f9a8d4">A native speaker checks every word</text>
              <text x="520" y="154" font-size="11.5" fill="#9b99b8">or you use a pre-approved translated reply</text>
              <rect x="20" y="210" width="220" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="130" y="235" font-weight="700">Reused many times?</text>
              <text x="130" y="254" font-size="11.5" fill="#9b99b8">template, article, bot answer</text>
              <rect x="300" y="198" width="440" height="40" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="520" y="223" font-weight="700" fill="#fcd34d">A native reviewer approves it before publishing</text>
              <rect x="300" y="248" width="440" height="40" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="520" y="273" font-weight="700" fill="#93c5fd">The agent quick-checks names, numbers and tone</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ml5a)">
                <line x1="241" y1="45" x2="296" y2="45"/>
                <line x1="130" y1="71" x2="130" y2="106"/>
                <line x1="241" y1="140" x2="296" y2="140"/>
                <line x1="130" y1="171" x2="130" y2="206"/>
                <line x1="241" y1="236" x2="296" y2="220"/>
                <line x1="241" y1="244" x2="296" y2="266"/>
              </g>
              <g font-size="11.5" fill="#9b99b8" text-anchor="start">
                <text x="258" y="38">No</text>
                <text x="138" y="93">Yes</text>
                <text x="258" y="133">Yes</text>
                <text x="138" y="193">No</text>
                <text x="256" y="214">Yes</text>
                <text x="258" y="272">No</text>
              </g>
            </g>
          </svg>
          <figcaption>Who checks a translation depends on who reads it, what it says and how often it is reused.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How AI translation works, in plain words</h3>
          <ul class="lc-list">
            <li><strong>Older tools</strong> swapped words and short phrases using big tables. The results were often stiff and wrong.</li>
            <li><strong>Modern tools</strong> use neural machine translation or large language models (LLMs), such as Claude. They learned from huge amounts of text in many languages.</li>
            <li><strong>They read the whole sentence.</strong> Then they write a new sentence that means the same thing. They do not translate word by word.</li>
            <li><strong>They predict likely words.</strong> So the output usually sounds natural, even when the meaning is wrong.</li>
            <li><strong>They do not know your business.</strong> They do not know your refund policy or your product names unless you tell them.</li>
          </ul>
          <p>LLMs can also follow instructions. You can say "use the respectful form of you", "keep Swift Mart Wallet in English" or "keep all numbers exactly". Most simple translation tools cannot follow such instructions. Some offer a glossary feature instead, so check the tool's current help pages.</p>
          <p>Quality depends on how much text in that language the model learned from. It can also differ between tools. So test each language with your own sample messages before you trust it.</p>
        </div>
        <div class="lc-card">
          <h3>Strengths and weaknesses</h3>
          <table class="lc-table">
            <thead><tr><th>Good at</th><th>Weak at</th></tr></thead>
            <tbody>
              <tr><td>Speed: a reply in seconds, at any hour</td><td>Numbers, dates and units, such as "working days"</td></tr>
              <tr><td>Clear, everyday sentences</td><td>Small words that change meaning, such as "not" and "only"</td></tr>
              <tr><td>Informal and some mixed messages</td><td>Brand names, screen names and local product names</td></tr>
              <tr><td>Keeping lists and steps in order</td><td>The right level of respect for the reader</td></tr>
              <tr><td>First drafts of many articles</td><td>Jokes, sarcasm and local sayings</td></tr>
              <tr><td>Following your rules (LLMs)</td><td>Long texts: it may skip a line or add one</td></tr>
            </tbody>
          </table>
          <p>Here are common errors, shown as back-translations. A back-translation is the translation turned back into English, so you can see what it now says.</p>
          <table class="lc-table">
            <thead><tr><th>Error type</th><th>English original</th><th>Back-translation of a bad version</th></tr></thead>
            <tbody>
              <tr><td>Changed time period</td><td>Bank refunds take 5 to 7 working days.</td><td>Bank refunds take 5 to 7 days.</td></tr>
              <tr><td>Lost "not"</td><td>This item cannot be returned.</td><td>This item can be returned.</td></tr>
              <tr><td>Brand translated</td><td>Check your Swift Mart Wallet.</td><td>Check your fast market purse.</td></tr>
              <tr><td>Wrong word meaning</td><td>Choose a new delivery slot.</td><td>Choose a new delivery hole.</td></tr>
              <tr><td>Added promise</td><td>We will check and update you.</td><td>We will check and refund you.</td></tr>
              <tr><td>Wrong respect level</td><td>Please share a photo.</td><td>Uses the informal "you" (for example "tu" in Hindi), which can sound rude</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>When a person must check</h3>
          <p>Use the decision tree above. In short, ask three questions:</p>
          <ul class="lc-list">
            <li><strong>Will a customer read it?</strong> If it only helps the agent understand, AI alone is fine.</li>
            <li><strong>Does it mention money, dates, policy, health or legal matters?</strong> Then a native speaker checks every word. You can also send a translated reply that a reviewer already approved.</li>
            <li><strong>Will it be reused?</strong> Templates, help articles and bot answers are read many times. A native reviewer approves them before publishing.</li>
          </ul>
          <p>Swift Mart's quick self-check for any translated reply:</p>
          <pre><code>[ ] Every number, amount (₹), date and order ID is the same
        [ ] Brand and screen names are unchanged (Swift Mart Wallet, My Orders)
        [ ] No promise was added or removed
        [ ] "not", "only", "within" and "working days" are still there
        [ ] The tone is polite and uses the respectful form of "you"
        [ ] An English copy is saved in the ticket for the record</code></pre>
          <p>Back-translation is a quick first check, not proof of quality. A native speaker can still find words that are correct but sound odd to a local customer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: translating a refund reply</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Priya asks AI">Priya asks the approved AI assistant to translate Swift Mart's saved refund reply into Tamil. She asks for a respectful tone, and to keep "Swift Mart Wallet" and all numbers exactly.</li>
              <li data-kind="answer" data-label="Tamil draft">The AI returns a Tamil draft. It reads smoothly.</li>
              <li data-kind="user" data-label="Ask for a check">Priya asks for a back-translation into English and a table of every number and name.</li>
              <li data-kind="result" data-label="Back-translation">The back-translation says: "The money will reach your bank in 5 to 7 days."</li>
              <li data-kind="warn" data-label="Missing word">"Working" is missing. Customers would expect the money on a Sunday. That would bring angry follow-ups.</li>
              <li data-kind="user" data-label="Fix it">Priya asks the AI to fix that line. The new back-translation says "5 to 7 working days".</li>
              <li data-kind="check" data-label="Native reviewer">Meena Sundaram, Swift Mart's Tamil reviewer, reads the draft. She changes one word to sound more natural in Tamil Nadu. She approves it.</li>
              <li data-kind="tool" data-label="Save it">Priya saves the approved Tamil reply in the helpdesk with a version number and date.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to translate a support reply and check its own work. Then compare the numbers and names yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful translator for customer support at [Swift Mart, an online grocery app]. Translate the reply below into [Tamil].

        Rules:
        - Use simple, polite, everyday [Tamil]. Use the respectful form of "you".
        - Keep these exactly as written, in English: [Swift Mart, Swift Mart Wallet, SM-48213, BANK].
        - Keep every number, amount (₹) and time period exactly.
        - Do not add or remove any promise or information.

        Reply to translate:
        "Hello [Lakshmi], we are sorry that the milk packet in order SM-48213 leaked. We have added ₹56 to your Swift Mart Wallet. You can use it on your next order. If you want the money in your bank account instead, reply BANK. Bank refunds take 5 to 7 working days."

        After the translation, give:
        1. A back-translation into English, as close to word for word as possible.
        2. A table: Item in the original | How it appears in the translation | Same? (yes or no). Include every number, amount, name and time period.
        3. Any phrases you are not sure about, and why.
        End with: "A native speaker should check this before it is sent."</pre>
            <ul class="ai-try-checks">
              <li>₹56, SM-48213 and "5 to 7 working days" appear unchanged in the table.</li>
              <li>"Swift Mart Wallet" and "BANK" stay in English.</li>
              <li>The back-translation has no new promise, such as "refund today".</li>
              <li>You still plan a native speaker check before any customer sees it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI translation is fast and fluent, but fluent is not the same as correct. Let AI translate freely for understanding. For anything a customer reads about money, policy or safety, a native speaker checks it first.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Translating Support Replies with AI</h1>
        </div>
        <p class="lc-lead">Most language work in support is replies: one customer, one problem, one answer. AI can turn a reply into the customer's language in seconds. But a reply must be correct, polite and exact about names and numbers. In this lesson you will learn a safe way to send replies in other languages. You will write English that translates well, use a strong prompt and check the result quickly.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A six-step workflow for a reply in another language. 1 Understand: AI translates the message for the agent only. 2 Check the facts in your own systems. 3 Write the reply in English with short sentences and only checked facts. 4 Translate: use an approved saved reply first, otherwise AI with your rules. 5 Check numbers, names and tone with a back-translation. 6 Send, save an English copy and offer a way to reach a person. Money, safety or legal words need an approved reply or a native speaker check.">
            <defs><marker id="ml6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="30" width="220" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="125" y="58" font-weight="700">1. Understand</text>
              <text x="125" y="79" font-size="11" fill="#9b99b8">AI translates the message</text>
              <text x="125" y="95" font-size="11" fill="#9b99b8">for the agent only</text>
              <rect x="270" y="30" width="220" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="58" font-weight="700">2. Check the facts</text>
              <text x="380" y="79" font-size="11" fill="#9b99b8">order, payment, policy</text>
              <text x="380" y="95" font-size="11" fill="#9b99b8">in your own systems</text>
              <rect x="525" y="30" width="220" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="635" y="58" font-weight="700">3. Write in English</text>
              <text x="635" y="79" font-size="11" fill="#9b99b8">short, clear sentences</text>
              <text x="635" y="95" font-size="11" fill="#9b99b8">only checked facts</text>
              <rect x="15" y="170" width="220" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="125" y="198" font-weight="700">4. Translate</text>
              <text x="125" y="219" font-size="11" fill="#9b99b8">approved saved reply first</text>
              <text x="125" y="235" font-size="11" fill="#9b99b8">else AI with your rules</text>
              <rect x="270" y="170" width="220" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="198" font-weight="700">5. Check</text>
              <text x="380" y="219" font-size="11" fill="#9b99b8">numbers, names, tone</text>
              <text x="380" y="235" font-size="11" fill="#9b99b8">and a back-translation</text>
              <rect x="525" y="170" width="220" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="635" y="198" font-weight="700">6. Send and save</text>
              <text x="635" y="219" font-size="11" fill="#9b99b8">keep an English copy</text>
              <text x="635" y="235" font-size="11" fill="#9b99b8">offer a way to a person</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ml6a)">
                <line x1="236" y1="70" x2="266" y2="70"/>
                <line x1="491" y1="70" x2="521" y2="70"/>
                <path d="M635,111 L635,140 L125,140 L125,166"/>
                <line x1="236" y1="210" x2="266" y2="210"/>
                <line x1="491" y1="210" x2="521" y2="210"/>
              </g>
              <g font-size="12" text-anchor="start">
                <rect x="15" y="266" width="12" height="12" fill="#8b5cf6"/><text x="33" y="276">AI step</text>
                <rect x="110" y="266" width="12" height="12" fill="#10b981"/><text x="128" y="276">A person does or approves it</text>
              </g>
              <text x="380" y="300" font-size="12" fill="#9b99b8">Money, safety or legal words: approved reply or a native speaker check.</text>
            </g>
          </svg>
          <figcaption>The agent decides the answer first. AI only helps to say it in the customer's language.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Decide first, then translate</h3>
          <p>This is the most important rule. The agent decides what to say. AI only helps to say it in another language. If you just ask AI to "reply in Kannada", it may invent a refund date or a policy. It cannot see your order data.</p>
          <p>Swift Mart uses three ways to send a reply in another language:</p>
          <table class="lc-table">
            <thead><tr><th>Way</th><th>When to use it</th><th>Swift Mart example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Approved saved reply</strong></td><td>Common cases, especially money and policy</td><td>The Kannada "Refund status (card)" reply, approved by Raghavendra Rao</td></tr>
              <tr><td><strong>AI translation, then checks</strong></td><td>Custom replies with low risk</td><td>Steps to change a delivery slot for a special case</td></tr>
              <tr><td><strong>A native-speaking person</strong></td><td>Complaints, safety, legal threats and very upset customers</td><td>A Tamil message about a child who felt sick after eating a snack</td></tr>
            </tbody>
          </table>
          <p>A saved reply (also called a macro or canned response) is a ready-made reply stored in the helpdesk. The agent only fills in details such as the order ID.</p>
          <p>Priya adds one more rule: mirror the customer. If they write in their own script, reply in that script. If they write in English letters, reply in English letters. So Swift Mart keeps each approved saved reply in both forms.</p>
        </div>
        <div class="lc-card">
          <h3>Write English that translates well</h3>
          <p>AI translates short, plain sentences much more accurately than chatty ones. So fix the English before you translate it. Here is a made-up reply to Kavya, a Karnataka customer. Three items were missing from her order.</p>
          <p><strong>Before:</strong></p>
          <pre><code>Hi! So sorry abt this, pls hang tight. Your refund's been
        processed &amp; should hit your a/c within TAT.</code></pre>
          <p><strong>After:</strong></p>
          <pre><code>Hello Kavya. We are sorry that 3 items were missing from
        order SM-50391. We approved a refund of ₹480 to your card
        on 24 September. Card refunds take 5 to 7 working days.
        You can see the status in My Orders. Reply "agent" to talk
        to a person.</code></pre>
          <ul class="lc-list">
            <li><strong>One idea per sentence.</strong> Long sentences lose parts in translation.</li>
            <li><strong>No idioms.</strong> "Hang tight" may be translated word by word.</li>
            <li><strong>No short forms.</strong> "pls", "a/c" and "TAT" (turnaround time) confuse both AI and customers.</li>
            <li><strong>Exact facts.</strong> Write the amount with ₹, the order ID and the screen name exactly as the app shows them.</li>
            <li><strong>No calculated dates.</strong> Do not ask AI to turn "5 to 7 working days" into a date. It does not know bank holidays, such as 2 October.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <p>Kavya wrote: <em>"Refund yaavaga barutte? SM-50391"</em> (Kannada in English letters, "When will the refund come?"; made up, for a native speaker to check).</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Reply to this customer in Kannada: Refund yaavaga barutte? SM-50391</code></pre>
          <p>The AI has no facts, so it may invent them. It has no rules for names, numbers or tone. And you get nothing to check against.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a translator for Swift Mart customer support.
        Translate the agent's reply below into Kannada, written in
        English letters, like the customer's message.
        Rules:
        - Use the respectful form of "you".
        - Keep in English: Swift Mart, My Orders, agent, SM-50391.
        - Keep ₹480 and all numbers in Western digits (0-9).
        - "5 to 7 working days" must keep the word "working".
        - Do not add or remove any promise.
        Then give a back-translation and a table of every number,
        name and time period.
        Agent's reply: [the English "After" reply]</code></pre>
          <p>The table at the end makes checking fast:</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>English</th><th>In the Kannada draft</th><th>Same?</th></tr></thead>
            <tbody>
              <tr><td>Order ID</td><td>SM-50391</td><td>SM-50391</td><td>Yes</td></tr>
              <tr><td>Amount</td><td>₹480</td><td>₹480</td><td>Yes</td></tr>
              <tr><td>Time period</td><td>5 to 7 working days</td><td>Back-translation: "5 to 7 working days"</td><td>Yes</td></tr>
              <tr><td>Screen name and keyword</td><td>My Orders, agent</td><td>My Orders, agent</td><td>Yes</td></tr>
              <tr><td>Tone</td><td>Respectful "you"</td><td>"neevu"</td><td>Yes (native check)</td></tr>
            </tbody>
          </table>
          <p>This reply is about money. So it still needs a native speaker check, or you use the approved saved reply instead.</p>
          <p>For many drafts, a spreadsheet can find lost details. Put each translated reply in column B and one key item, such as ₹480, in column C:</p>
          <pre><code>=IF(ISNUMBER(SEARCH(C2,B2)),"OK","MISSING")</code></pre>
          <p>This finds a lost ID or amount. It cannot check the meaning. A person still does that.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a Kannada reply at 8:40 pm</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="WhatsApp">A message arrives in the Kannada queue: "Refund yaavaga barutte? SM-50391" (made up; for a native speaker to check). The Kannada agent is on a break.</li>
              <li data-kind="user" data-label="Farhan asks AI">Farhan Ali, a senior agent, covers the queue. He does not read Kannada. He asks the approved AI assistant to translate the message and list the key details.</li>
              <li data-kind="answer" data-label="AI explains">"When will the refund come? SM-50391." Kannada in English letters. Confidence: high.</li>
              <li data-kind="tool" data-label="Order system">Farhan opens SM-50391. Three items were missing. A ₹480 refund to the card was approved on 24 September.</li>
              <li data-kind="user" data-label="Quick AI draft">He writes the English reply and asks AI to translate it into Kannada in English letters.</li>
              <li data-kind="warn" data-label="Two errors">The back-translation shows "₹480" in Kannada digits. It also says "by 2 October" instead of "5 to 7 working days". Both break Swift Mart's rules.</li>
              <li data-kind="check" data-label="Use the approved reply">This is a money reply. Farhan uses the approved Kannada saved reply "Refund status (card)" instead. He fills in SM-50391 and ₹480, and checks both.</li>
              <li data-kind="check" data-label="Save and flag">He sends it, saves the English copy in the ticket and tags it for the Kannada agent to read in the morning.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a full reply: understand the message, write it in English from real facts, translate it and check it. Use the sample, or your own message with names removed. The sample message is made up, for a native speaker to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a support reply assistant for [Swift Mart, an online grocery app in Karnataka]. An agent checks your work before anything is sent.

        Customer message: [Refund yaavaga barutte? SM-50391]
        Customer first name: [Kavya]
        Facts from our systems (use only these): [3 items missing from order SM-50391. Refund of ₹480 approved to the card on 24 September. Card refunds take 5 to 7 working days. Status shows in My Orders.]

        Steps:
        1. Translate the message into English. Name the language and script.
        2. Write a short English reply (under 60 words): one apology, the facts, one next step, and "Reply agent to talk to a person".
        3. Translate the reply into the customer's language, in the same script they used.
        4. Table: Item | English | Translation | Same? (every name, number, ₹ amount, order ID, time period and screen name)
        5. A back-translation into English.
        6. Words you are unsure about.

        Rules: respectful "you". Keep Swift Mart, My Orders, agent and order IDs in English. Use Western digits (0-9). Never change "working days" to "days" or a date. Promise nothing that is not in the facts. If the facts do not answer the question, say what the agent must check.</pre>
            <ul class="ai-try-checks">
              <li>₹480, SM-50391 and "5 to 7 working days" are unchanged in the table, with no calendar date added.</li>
              <li>The English reply uses only the given facts and tells the customer how to reach a person.</li>
              <li>The translation uses the same script as the customer's message.</li>
              <li>Because it is about money, you still plan a native speaker check or use an approved saved reply.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Decide the answer first, in plain English, from checked facts. Then translate. Use approved saved replies for money and policy, and check every name and number in anything AI translates.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Tone, Politeness and Culture</h1>
        </div>
        <p class="lc-lead">A reply can be translated correctly and still feel wrong. It may sound rude, cold or like a government notice. In Indian languages, the way you say "you" shows respect, and customers notice it at once. In this lesson you will learn to choose respectful forms, avoid replies that are too casual or too stiff, and plan for festivals and local words.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A tone scale from too casual to too stiff, with three made-up Hindi versions of the same sentence, You can see the status in My Orders. Too casual uses tu, the informal you, and can sound rude. Just right uses the respectful aap and everyday words customers use. Too stiff uses bookish words that few customers use in chat.">
            <defs><marker id="ml7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ml7a)">
                <line x1="380" y1="40" x2="40" y2="40"/>
                <line x1="380" y1="40" x2="720" y2="40"/>
              </g>
              <text x="40" y="26" text-anchor="start" font-size="12" fill="#9b99b8">More casual</text>
              <text x="720" y="26" text-anchor="end" font-size="12" fill="#9b99b8">More formal</text>
              <rect x="15" y="70" width="220" height="160" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="125" y="96" font-weight="700" fill="#f9a8d4">Too casual</text>
              <text x="125" y="126" font-style="italic">Tu My Orders mein</text>
              <text x="125" y="145" font-style="italic">status dekh le.</text>
              <text x="125" y="186" font-size="11.5" fill="#9b99b8">Uses "tu", the informal you.</text>
              <text x="125" y="204" font-size="11.5" fill="#9b99b8">Can sound rude to a customer.</text>
              <rect x="270" y="70" width="220" height="160" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="96" font-weight="700" fill="#6ee7b7">Just right</text>
              <text x="380" y="126" font-style="italic">Aap My Orders mein</text>
              <text x="380" y="145" font-style="italic">status dekh sakte hain.</text>
              <text x="380" y="186" font-size="11.5" fill="#9b99b8">Respectful "aap" and everyday</text>
              <text x="380" y="204" font-size="11.5" fill="#9b99b8">words customers really use.</text>
              <rect x="525" y="70" width="220" height="160" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="635" y="96" font-weight="700" fill="#fcd34d">Too stiff</text>
              <text x="635" y="126" font-style="italic">Kripya apne kray aadesh ki</text>
              <text x="635" y="145" font-style="italic">sthiti ka avlokan karein.</text>
              <text x="635" y="186" font-size="11.5" fill="#9b99b8">Bookish words that few</text>
              <text x="635" y="204" font-size="11.5" fill="#9b99b8">customers use in a chat.</text>
              <text x="380" y="260">All three mean: "You can see the status in My Orders."</text>
              <text x="380" y="286" font-size="12" fill="#9b99b8">Made-up Hindi in English letters, for a native speaker to check.</text>
            </g>
          </svg>
          <figcaption>Aim for the middle: respectful and warm, in the everyday words your customers use.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The respectful "you" and respect words</h3>
          <p>Most Indian languages have more than one word for "you". One shows respect. Another is for close friends, family or children. Using the informal one with a customer can sound rude. Swift Mart always uses the respectful form, even when the customer writes informally.</p>
          <table class="lc-table">
            <thead><tr><th>Language</th><th>Respectful "you" (use)</th><th>Informal "you" (avoid with customers)</th></tr></thead>
            <tbody>
              <tr><td>Hindi</td><td>aap</td><td>tum, tu</td></tr>
              <tr><td>Telugu</td><td>meeru</td><td>nuvvu</td></tr>
              <tr><td>Tamil</td><td>neenga (spoken), neengal (more formal)</td><td>nee</td></tr>
              <tr><td>Kannada</td><td>neevu</td><td>neenu</td></tr>
              <tr><td>Marathi</td><td>tumhi</td><td>tu</td></tr>
            </tbody>
          </table>
          <p>These are simple forms in English letters. Your native reviewers must confirm them for your style guide.</p>
          <ul class="lc-list">
            <li><strong>Respect words after names.</strong> Hindi often adds "ji" and Telugu often adds "garu". Kannada often uses "avare". Let each reviewer decide if your brand uses them.</li>
            <li><strong>Gender.</strong> In Hindi and Marathi, some verb forms change with the person's gender. AI may guess the gender from a name, and it may guess wrong. Ask your reviewer for sentence patterns that work for everyone.</li>
            <li><strong>No guessed titles.</strong> Do not add "Sir" or "Madam" unless you know. Use the customer's name instead.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Not too casual, not too stiff</h3>
          <p>AI often makes one of two mistakes. It copies the customer's casual words, or it writes textbook language that nobody uses in chat. The second one is common when you ask for a "formal" translation.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Translate this reply into formal Hindi.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Translate this reply into simple, polite, everyday Hindi,
        the way a friendly support agent in Telangana writes on
        WhatsApp. Use "aap". Keep common English words that customers
        use, such as order, refund, delivery and app. Avoid bookish
        words. Do not guess the customer's gender. Keep the reply
        as short as the English one.</code></pre>
          <ul class="lc-list">
            <li><strong>Keep words customers use.</strong> Many customers say "refund" and "order" in English, even in their own language. The approved term is set by your native reviewer.</li>
            <li><strong>Apologise once, and mean it.</strong> Three "extremely sorry" lines sound less sincere, not more.</li>
            <li><strong>Be clear about the next step.</strong> Politeness should not hide the answer.</li>
            <li><strong>Do not assume Hindi.</strong> Many customers in Tamil Nadu or Karnataka may not read Hindi comfortably. Reply in their language or in English.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Festivals and local context</h3>
          <p>Festivals change order volume, delivery times and staff leave. Swift Mart's new language queues are small, so one person on leave matters a lot. Plan ahead for each state.</p>
          <table class="lc-table">
            <thead><tr><th>Festival</th><th>Big in (Swift Mart states)</th><th>Usual month</th><th>What it means for support</th></tr></thead>
            <tbody>
              <tr><td>Pongal</td><td>Tamil Nadu</td><td>January</td><td>More orders for festive food. Tamil agents may take leave.</td></tr>
              <tr><td>Ugadi and Gudi Padwa</td><td>Telangana, Karnataka (Ugadi), Maharashtra (Gudi Padwa)</td><td>March or April</td><td>New year in Telugu, Kannada and Marathi homes. Plan leave in three queues.</td></tr>
              <tr><td>Ganesh Chaturthi</td><td>Maharashtra, Telangana</td><td>August or September</td><td>Crowded roads and slower deliveries. Warn customers early.</td></tr>
              <tr><td>Diwali</td><td>All states</td><td>October or November</td><td>High volume in every language.</td></tr>
              <tr><td>Eid</td><td>All states</td><td>Changes each year</td><td>More orders for festive food. The date depends on the moon.</td></tr>
            </tbody>
          </table>
          <p>Festival dates change every year, so check a current calendar. Prepare delivery notices in each language early, and have them reviewed.</p>
          <ul class="lc-list">
            <li><strong>Greetings.</strong> Do not guess a customer's religion or festival from their name or city. Greet back if they greet you. A general "festival season" notice is safe.</li>
            <li><strong>Never in a complaint.</strong> Do not open a complaint reply with "Happy Diwali!".</li>
            <li><strong>Local item names.</strong> Customers name missing items in their own words. Give the AI these names so it matches items correctly.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>English</th><th>Hindi</th><th>Tamil</th><th>Telugu</th><th>Kannada</th><th>Marathi</th></tr></thead>
            <tbody>
              <tr><td>Coriander</td><td>dhaniya</td><td>kothamalli</td><td>kothimeera</td><td>kottambari</td><td>kothimbir</td></tr>
              <tr><td>Curd</td><td>dahi</td><td>thayir</td><td>perugu</td><td>mosaru</td><td>dahi</td></tr>
            </tbody>
          </table>
          <p>Spellings in English letters vary a lot. Treat these as samples for a native speaker to check.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: keep it, change it or ask?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each Swift Mart tone decision. Is it a good choice, should it change, or should the native reviewer decide? The non-English words are made-up samples, for a native speaker to check.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good choice"></div>
              <div data-sorter-target="bucket" data-bucket="change" data-label="Change it"></div>
              <div data-sorter-target="bucket" data-bucket="ask" data-label="Ask the reviewer"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="Swift Mart always uses the respectful form. A friendly customer still gets respect.">A Hindi reply uses "aap", although the customer wrote "bhai, order kab aayega?"</li>
              <li data-bucket="change" data-why="Copying the informal form can sound rude. Always use the respectful form, &quot;neenga&quot;.">The AI used "nee" in a Tamil reply because the customer used it.</li>
              <li data-bucket="change" data-why="Do not guess a festival from a name or city. A greeting also feels wrong in a complaint.">Every reply in October starts with "Happy Diwali!", including complaint replies.</li>
              <li data-bucket="change" data-why="Customers do not use bookish words in chat. Use Farhan's approved term from the glossary.">A Hindi refund reply uses a bookish word for "refund", but Farhan's approved term is "refund".</li>
              <li data-bucket="ask" data-why="This is a brand style choice. Srinivas Reddy decides and adds it to the Telugu style guide.">Should Telugu replies add "garu" after the customer's name?</li>
              <li data-bucket="good" data-why="Planned early, reviewed and sent in both languages. It sets honest expectations.">A week before Ganesh Chaturthi, Maharashtra customers get a reviewed notice in Marathi and English about slower deliveries.</li>
              <li data-bucket="ask" data-why="Only a native speaker can say how a word sounds to local customers. Snehal Patil decides.">The AI is not sure if its Marathi word for "packed" sounds natural in Maharashtra.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-page tone and culture guide for one language. Then take its questions to your native reviewer.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a localisation adviser for customer support at [Swift Mart, an online grocery app] in [Maharashtra]. Customers write in [Marathi], often in English letters.

        Draft a one-page tone guide for our replies in [Marathi]:
        1. The respectful form of "you" to use, and informal forms to avoid.
        2. How to address a customer by name without guessing their gender.
        3. 5 English words customers often keep in [Marathi] chats (such as order, refund) that we could keep.
        4. 3 phrases that sound too stiff or bookish, each with a simpler option.
        5. Festivals in [Maharashtra] that may change order volume or delivery times, with the usual month. Say that dates must be checked each year.
        6. A WhatsApp notice (under 40 words) about possible delivery delays in the festival season, in [Marathi] and English. Do not assume the reader's religion. Do not promise delivery times.

        Show each [Marathi] phrase in its own script and in English letters, with the English meaning. Mark anything you are unsure about. End with 3 questions for our native reviewer, [Snehal Patil].</pre>
            <ul class="ai-try-checks">
              <li>The respectful "you" is given for the language, with informal forms to avoid.</li>
              <li>Festival months look right and are marked "check each year".</li>
              <li>The notice promises no delivery time and assumes no religion.</li>
              <li>Unsure phrases are marked, and nothing is used before a native reviewer checks it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Correct words are not enough. Use the respectful form of "you", everyday words and one sincere apology. Plan for local festivals, and let native reviewers make the final tone choices.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Translating Help Articles</h1>
        </div>
        <p class="lc-lead">Help articles answer questions before customers contact you. One article is read by thousands of people, for months. So a mistake in a translated article spreads much further than a mistake in one reply. In this lesson you will learn how to choose which articles to translate first. You will prepare a style guide, draft with AI and review with native speakers. You will also keep translations up to date when the English changes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A six-step article translation workflow: English source, final and dated; prepare the glossary and style guide; AI draft using the glossary; automatic checks of terms and numbers; native review by Meena, Raghu and Snehal; publish with a version date. When the English article changes, translations are marked out of date and the changed parts are updated. Below, a bar chart of made-up August help-centre views: the top 10 articles get 55% of views, used for Kannada and Marathi; the top 20 get 70%, used for Tamil; all 60 articles are translated for the Full languages.">
            <defs><marker id="ml8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="110" height="60" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="65" y="55" font-weight="700">English source</text>
              <text x="65" y="75" font-size="10.5" fill="#9b99b8">final and dated</text>
              <rect x="134" y="30" width="110" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="189" y="55" font-weight="700">Prepare</text>
              <text x="189" y="75" font-size="10.5" fill="#9b99b8">glossary + style</text>
              <rect x="258" y="30" width="110" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="313" y="55" font-weight="700">AI draft</text>
              <text x="313" y="75" font-size="10.5" fill="#9b99b8">uses the glossary</text>
              <rect x="382" y="30" width="110" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="437" y="55" font-weight="700">Auto checks</text>
              <text x="437" y="75" font-size="10.5" fill="#9b99b8">terms, numbers</text>
              <rect x="506" y="30" width="110" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="561" y="55" font-weight="700">Native review</text>
              <text x="561" y="75" font-size="10.5" fill="#9b99b8">fix and approve</text>
              <rect x="630" y="30" width="110" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="685" y="55" font-weight="700">Publish</text>
              <text x="685" y="75" font-size="10.5" fill="#9b99b8">with version date</text>
              <text x="561" y="108" font-size="10.5" fill="#9b99b8">Meena, Raghu, Snehal</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ml8a)">
                <line x1="121" y1="60" x2="131" y2="60"/>
                <line x1="245" y1="60" x2="255" y2="60"/>
                <line x1="369" y1="60" x2="379" y2="60"/>
                <line x1="493" y1="60" x2="503" y2="60"/>
                <line x1="617" y1="60" x2="627" y2="60"/>
                <path d="M685,91 L685,125 L65,125 L65,94" stroke-dasharray="5 4"/>
              </g>
              <text x="380" y="144" font-size="11.5" fill="#9b99b8">English article changes? Mark translations out of date and update the changed parts.</text>
              <text x="20" y="182" text-anchor="start" font-size="13" font-weight="700" fill="#67e8f9">Which articles first? Share of August help-centre views</text>
              <text x="20" y="211" text-anchor="start">Top 10 articles</text>
              <rect x="160" y="196" width="220" height="22" rx="4" fill="#f59e0b"/>
              <text x="388" y="211" text-anchor="start">55%: Kannada, Marathi</text>
              <text x="20" y="245" text-anchor="start">Top 20 articles</text>
              <rect x="160" y="230" width="280" height="22" rx="4" fill="#3b82f6"/>
              <text x="448" y="245" text-anchor="start">70%: Tamil</text>
              <text x="20" y="279" text-anchor="start">All 60 articles</text>
              <rect x="160" y="264" width="400" height="22" rx="4" fill="#10b981"/>
              <text x="568" y="279" text-anchor="start">100%: Full languages</text>
              <text x="380" y="316" font-size="11.5" fill="#9b99b8">Made-up data: 50,000 views in August. Top 10 = 27,500 views. Top 20 = 35,000 views.</text>
            </g>
          </svg>
          <figcaption>Translate the articles that most customers read first. Every article passes a native review, and stays linked to its English source.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Choose and prepare the articles</h3>
          <p>Swift Mart's help centre has 60 English articles. In August they got 50,000 views. The top 10 articles got 27,500 views (55%). The top 20 got 35,000 views (70%). So a few articles do most of the work.</p>
          <p>The coverage plan says: top 20 articles in Tamil, top 10 in Kannada and Marathi. Priya starts with the articles that get the most views. Then she checks risk. "How do I talk to a person or raise a complaint?" is not in the top 10 by views. She includes it anyway, as the tenth article. Every customer must be able to find a person.</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Top 10 articles (made up)</th><th>#</th><th>Top 10 articles (made up)</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Where is my order?</td><td>6</td><td>How do delivery slots work?</td></tr>
              <tr><td>2</td><td>When will I get my refund?</td><td>7</td><td>How does Swift Mart Wallet work?</td></tr>
              <tr><td>3</td><td>An item is missing or wrong</td><td>8</td><td>Money was debited but my order failed</td></tr>
              <tr><td>4</td><td>An item is damaged or spoiled</td><td>9</td><td>Why is my coupon not working?</td></tr>
              <tr><td>5</td><td>How do I cancel or change my order?</td><td>10</td><td>How do I talk to a person or raise a complaint?</td></tr>
            </tbody>
          </table>
          <p>Next, she plans reviewer time. In a test, Meena Sundaram reviewed one AI-drafted article of about 350 words in 30 minutes. So Tamil needs 20 x 30 = 600 minutes, or 10 hours. Kannada and Marathi need 10 x 30 = 300 minutes, or 5 hours each. That is 20 reviewer hours in all.</p>
          <p>Before translating, clean the English. Use short sentences and one topic per article. Make sure every fact is current. Give the English version a date, such as "version 24 September". A mistake in the English will be copied into every language.</p>
        </div>
        <div class="lc-card">
          <h3>A style guide for each language</h3>
          <p>A style guide is a short page of writing rules for one language. It helps AI, translators and reviewers write the same way every time. Snehal Patil wrote Swift Mart's Marathi guide. Here is a shortened version:</p>
          <pre><code>Swift Mart style guide: Marathi (owner: Snehal Patil)
        Readers:     customers in Maharashtra; many also read Hindi and English
        Script:      Devanagari for articles
        You:         respectful "tumhi" in every article
        Sentences:   short; one step per line; numbered steps
        Keep:        English words customers use (order, refund, app)
        Screen names: in English, exactly as in the app (My Orders)
        Numbers:     Western digits (0-9); ₹ before amounts
        Time:        "5 to 7 working days" always keeps "working"
        Gender:      patterns that work for every reader
        Glossary:    use version 1.2; ask before adding new terms</code></pre>
          <p>The glossary is a list of approved terms for each language. You will build one in the glossary lesson. Give the AI both the style guide and the glossary every time.</p>
        </div>
        <div class="lc-card">
          <h3>Translate, review and keep in sync</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Translate our refund article into Marathi.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Translate this help article into Marathi for customers in Maharashtra.
        Follow the style guide and glossary below exactly.
        Keep headings, numbered steps and links in the same order.
        Do not add, remove or merge any sentence.
        Then list every number, ₹ amount, time period, screen name
        and glossary term, with how you wrote it.
        Mark any sentence you are unsure about.
        [style guide] [glossary] [English article, version 24 September]</code></pre>
          <p>The native reviewer then reads the whole article in the new language, not only the flagged parts. Swift Mart logs each change in a review sheet, so the team can see patterns:</p>
          <table class="lc-table">
            <thead><tr><th>Article</th><th>Line</th><th>Error type</th><th>Reviewer's fix</th><th>Glossary update?</th></tr></thead>
            <tbody>
              <tr><td>When will I get my refund?</td><td>Step 2</td><td>Meaning: "working" dropped</td><td>Added "working" back</td><td>No</td></tr>
              <tr><td>When will I get my refund?</td><td>Step 4</td><td>Term: "My Orders" translated</td><td>Kept "My Orders" in English</td><td>No, already on the list</td></tr>
              <tr><td>How do delivery slots work?</td><td>Title</td><td>Term: odd word for "slot"</td><td>Used the word customers use</td><td>Yes, new approved term</td></tr>
              <tr><td>An item is missing or wrong</td><td>Step 1</td><td>Tone: too stiff</td><td>Simpler, everyday words</td><td>No</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Link each translation to its English source.</strong> Record the English version date on each translated article.</li>
            <li><strong>When the English changes,</strong> mark every translation "out of date". Update the changed parts, and have the reviewer check them.</li>
            <li><strong>Add a short note</strong> at the top: "This article was translated from English. If anything is unclear, contact us." Make the note link to the English version.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: publish the Marathi refund article</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for Swift Mart's Marathi article "When will I get my refund?" in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Priya checks that the English article is final and gives it a version date.</li>
              <li data-order="2">She adds the Marathi style guide and the glossary to the AI prompt.</li>
              <li data-order="3">The AI drafts the Marathi article and lists every number, amount and term it used.</li>
              <li data-order="4">Priya compares that list with the English article and fixes one lost "working".</li>
              <li data-order="5">Snehal Patil reads the whole article in Marathi and logs her changes in the review sheet.</li>
              <li data-order="6">Priya adds Snehal's new approved terms to the glossary.</li>
              <li data-order="7">The article is published with its version date and a link to the English source.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to translate a short help article with a style guide and glossary. It should also show you what to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a professional translator for the help centre of [Swift Mart, an online grocery app]. Translate the article below into [Marathi] for customers in [Maharashtra].

        Style guide: simple, polite, everyday [Marathi]; respectful "you"; short sentences; numbered steps; Western digits (0-9); do not guess the reader's gender.
        Glossary:
        - Keep in English: Swift Mart, Swift Mart Wallet, My Orders, BANK, agent
        - Keep exactly: ₹ amounts, "5 to 7 working days", "48 hours"
        - refund: [no approved term yet; suggest 2 options]

        Article (English, version [24 September]):
        Title: When will I get my refund?
        1. After we approve a refund, Swift Mart Wallet refunds arrive at once.
        2. Bank or card refunds take 5 to 7 working days after approval.
        3. Want the money in your bank instead? Reply BANK to our refund message.
        4. You can see refund status in My Orders.
        5. Missing items must be reported within 48 hours of delivery.
        6. Need help? Type agent to reach a person.

        Output:
        A. The translated article.
        B. Table: English term | Your translation | Glossary rule followed? (yes or no)
        C. A back-translation of steps 2, 3 and 5.
        D. Sentences for the native reviewer to check, with reasons.</pre>
            <ul class="ai-try-checks">
              <li>All 6 steps are there, in the same order, with nothing added.</li>
              <li>"Swift Mart Wallet", "My Orders", "BANK" and "agent" stay in English.</li>
              <li>The back-translation keeps "5 to 7 working days" and "48 hours".</li>
              <li>Two options for "refund" are offered for the reviewer, not chosen silently.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Translate the articles customers read most, from a clean and dated English source. Give AI a style guide and glossary, have a native speaker review every article, and update translations whenever the English changes.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Glossaries and Do-Not-Translate Lists</h1>
        </div>
        <p class="lc-lead">If "Swift Mart Wallet" becomes a local word for "purse", customers cannot find it in the app. If "refund" is written three different ways, customers wonder if they mean different things. A glossary stops this. In this lesson you will build a glossary and a do-not-translate list. You will use them in every AI prompt, saved reply and help article.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Swift Mart's glossary has three groups. Do not translate: Swift Mart, Swifty, Swift Mart Wallet, My Orders, Change slot, order IDs, FRESH50, UPI, OTP, BANK and agent, kept in English as in the app. Keep exactly: rupee amounts, digits 0 to 9, 5 to 7 working days, 48 hours and 24 hours, never just days. Approved term: refund, delivery slot, missing item, damaged or spoiled, replacement, set by native reviewers. Below, how a term changes: a reviewer suggests it, Priya approves and logs it, it goes into one shared glossary sheet, and it is used in AI prompts and saved replies.">
            <defs><marker id="ml9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="220" height="190" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="125" y="46" font-size="13.5" font-weight="700" fill="#f9a8d4">Do not translate</text>
              <text x="125" y="74">Swift Mart, Swifty</text>
              <text x="125" y="96">Swift Mart Wallet</text>
              <text x="125" y="118">My Orders, Change slot</text>
              <text x="125" y="140">SM-48213, FRESH50</text>
              <text x="125" y="162">UPI, OTP, BANK, agent</text>
              <text x="125" y="196" font-size="11" fill="#9b99b8">keep in English, as in the app</text>
              <rect x="270" y="20" width="220" height="190" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="46" font-size="13.5" font-weight="700" fill="#fcd34d">Keep exactly</text>
              <text x="380" y="74">₹480, ₹56</text>
              <text x="380" y="96">digits 0-9 only</text>
              <text x="380" y="118">5 to 7 working days</text>
              <text x="380" y="140">48 hours, 24 hours</text>
              <text x="380" y="162">never just "days"</text>
              <text x="380" y="196" font-size="11" fill="#9b99b8">same number, same meaning</text>
              <rect x="525" y="20" width="220" height="190" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="635" y="46" font-size="13.5" font-weight="700" fill="#6ee7b7">Approved term</text>
              <text x="635" y="74">refund</text>
              <text x="635" y="96">delivery slot</text>
              <text x="635" y="118">missing item</text>
              <text x="635" y="140">damaged, spoiled</text>
              <text x="635" y="162">replacement</text>
              <text x="635" y="196" font-size="11" fill="#9b99b8">set by native reviewers</text>
              <text x="15" y="240" text-anchor="start" font-size="13" font-weight="700" fill="#67e8f9">How a term changes</text>
              <rect x="15" y="252" width="160" height="50" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="95" y="273" font-weight="700">Reviewer suggests</text>
              <text x="95" y="291" font-size="10.5" fill="#9b99b8">Meena, Raghu, Snehal</text>
              <rect x="205" y="252" width="160" height="50" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="285" y="273" font-weight="700">Priya approves</text>
              <text x="285" y="291" font-size="10.5" fill="#9b99b8">and logs the change</text>
              <rect x="395" y="252" width="160" height="50" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="475" y="273" font-weight="700">Glossary v1.2</text>
              <text x="475" y="291" font-size="10.5" fill="#9b99b8">one shared sheet</text>
              <rect x="585" y="252" width="160" height="50" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="665" y="273" font-weight="700">Used everywhere</text>
              <text x="665" y="291" font-size="10.5" fill="#9b99b8">AI prompts, saved replies</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ml9a)">
                <line x1="176" y1="277" x2="201" y2="277"/>
                <line x1="366" y1="277" x2="391" y2="277"/>
                <line x1="556" y1="277" x2="581" y2="277"/>
              </g>
              <text x="380" y="328" font-size="11.5" fill="#9b99b8">Swift Mart's glossary (made up). Every change has an owner and a version.</text>
            </g>
          </svg>
          <figcaption>A glossary has three kinds of entry. One shared, versioned sheet feeds every prompt, saved reply and article.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a glossary is, and what goes in it</h3>
          <p>A <strong>glossary</strong> (also called a termbase) is a table of important words, with the approved translation in each language. A <strong>do-not-translate list</strong> (DNT list) is a list of words that must stay exactly as they are. Most teams keep both in one sheet.</p>
          <table class="lc-table">
            <thead><tr><th>Kind of word</th><th>Swift Mart examples</th><th>Usual rule</th></tr></thead>
            <tbody>
              <tr><td>Brand and product names</td><td>Swift Mart, Swifty, Swift Mart Wallet, Express delivery</td><td>Do not translate</td></tr>
              <tr><td>Screen and button names</td><td>My Orders, Cancel, Change slot</td><td>Do not translate, if the app is only in English</td></tr>
              <tr><td>Codes and keywords</td><td>SM-48213, FRESH50, BANK, agent</td><td>Do not translate. Customers must type them exactly.</td></tr>
              <tr><td>Payment and security words</td><td>UPI, OTP, UPI PIN</td><td>Do not translate. Always add "we never ask for your OTP or UPI PIN".</td></tr>
              <tr><td>Numbers and time periods</td><td>₹480, 5 to 7 working days, 48 hours</td><td>Keep exactly, in Western digits</td></tr>
              <tr><td>Support words</td><td>refund, delivery slot, missing item, replacement</td><td>Approved term, set by the native reviewer</td></tr>
              <tr><td>Legal and policy words</td><td>grievance officer, privacy notice, terms of use</td><td>Use only wording your legal team approved</td></tr>
            </tbody>
          </table>
          <p>A grievance officer is the person a business names to handle customer complaints. India's Consumer Protection (E-Commerce) Rules 2020 ask e-commerce businesses to name one. Do not let AI invent a translation for legal words like this. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Swift Mart's glossary sheet</h3>
          <p>Here are a few rows of the shared sheet, with the Marathi column. The Marathi entries are drafts in English letters. Snehal Patil must confirm each one.</p>
          <table class="lc-table">
            <thead><tr><th>English</th><th>Rule</th><th>Marathi (draft, for Snehal to confirm)</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>Swift Mart Wallet</td><td>Do not translate</td><td>Swift Mart Wallet</td><td>Name in the app</td></tr>
              <tr><td>My Orders</td><td>Do not translate</td><td>My Orders</td><td>Screen name</td></tr>
              <tr><td>refund</td><td>Approved term</td><td>refund</td><td>Customers use the English word</td></tr>
              <tr><td>working days</td><td>Approved term, keep meaning</td><td>kaamache divas</td><td>Never just "divas" (days)</td></tr>
              <tr><td>delivery slot</td><td>Approved term</td><td>delivery chi vel</td><td>First use: add "(delivery slot)"</td></tr>
              <tr><td>damaged</td><td>Approved term</td><td>kharab zaleli</td><td>For spoiled food too?</td></tr>
            </tbody>
          </table>
          <p>Useful columns for the full sheet: English term, meaning in plain English, rule, one column per language, reviewer, date approved and example sentence. Add a "do not use" column for wrong words you have seen, such as "delivery hole" for "delivery slot".</p>
          <ul class="lc-list">
            <li><strong>One owner.</strong> Priya owns the sheet. Only she changes it, after a reviewer suggests a change.</li>
            <li><strong>Versions.</strong> Each change gets a date and a version, such as v1.2. Old saved replies are checked against new terms.</li>
            <li><strong>Regular review.</strong> Reviewers check the sheet every month. New products and screens often need new entries.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Build it with AI, then use it everywhere</h3>
          <p>AI is good at finding terms in your texts. It is not the right judge of which translation your customers prefer. So let AI collect and suggest, and let reviewers decide.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a glossary for my support team.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Read our 10 help articles and 25 saved replies below.
        List every term that must be consistent: brand and product
        names, screen names, codes, payment words, numbers and time
        periods, support words and legal words.
        For each, suggest a rule: do not translate, keep exactly,
        or approved term. Give a draft Tamil term only for
        "approved term" rows, and mark it "draft".
        Output a table I can paste into a spreadsheet.</code></pre>
          <p>Then use the glossary everywhere:</p>
          <ul class="lc-list">
            <li><strong>In AI prompts.</strong> Paste the relevant rows into every translation prompt.</li>
            <li><strong>In translation tools.</strong> Some tools, such as DeepL and Google Cloud Translation, let you upload a glossary. Glossary support can differ by language, so check each tool's current help pages.</li>
            <li><strong>In checks.</strong> A spreadsheet can flag translations where a do-not-translate term is missing. Put the translation in B2 and the term in C2:</li>
          </ul>
          <pre><code>=IF(ISNUMBER(SEARCH(C2,B2)),"OK","CHECK")</code></pre>
          <p>A "CHECK" does not always mean an error. It means a person should look.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sort the glossary terms</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Put each Swift Mart term in the right part of the glossary.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="dnt" data-label="Do not translate"></div>
              <div data-sorter-target="bucket" data-bucket="exact" data-label="Keep exactly"></div>
              <div data-sorter-target="bucket" data-bucket="term" data-label="Approved term"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="dnt" data-why="It is a name in the app. A translated name cannot be found on the screen.">Swift Mart Wallet</li>
              <li data-bucket="dnt" data-why="Customers type the code. Any change makes it fail.">FRESH50</li>
              <li data-bucket="dnt" data-why="It is a screen name. Customers look for these exact words in the app.">My Orders</li>
              <li data-bucket="exact" data-why="The amount must stay the same, with ₹ and Western digits.">₹480</li>
              <li data-bucket="exact" data-why="The words are translated, but the meaning must stay exact. &quot;Working&quot; can never be dropped.">5 to 7 working days</li>
              <li data-bucket="term" data-why="It is translated, but always with the one word the native reviewer chose.">delivery slot</li>
              <li data-bucket="term" data-why="A support word. The reviewer sets one term so every reply and article matches.">damaged item</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a glossary from your own support texts. Use the sample texts, or paste your saved replies after removing customer details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a terminology manager for customer support at [Swift Mart, an online grocery app]. Build a draft glossary for translating into [Kannada].

        Our texts:
        1. "Your order SM-48213 is packed. You can no longer tap Cancel in My Orders."
        2. "We added ₹56 to your Swift Mart Wallet. For a bank refund, reply BANK. Bank refunds take 5 to 7 working days."
        3. "Report a missing item within 48 hours of delivery. Share a photo of any damaged item."
        4. "Coupon FRESH50 works on your first order. We never ask for your OTP or UPI PIN."
        5. "Want a new delivery slot? Tap Change slot. Type agent to talk to a person."

        Make one table with these columns:
        English term | Kind (brand, screen name, code, payment, number or time, support word, legal) | Rule (do not translate, keep exactly, approved term) | Draft [Kannada] term in [Kannada] script and English letters (only for approved terms) | Note

        Then list 3 terms where you are least sure, and 3 questions for our [Kannada] reviewer, [Raghavendra Rao]. Mark every draft term "for native check".</pre>
            <ul class="ai-try-checks">
              <li>Swift Mart Wallet, My Orders, Cancel, Change slot, FRESH50, BANK and agent are "do not translate".</li>
              <li>₹56, "5 to 7 working days" and "48 hours" are "keep exactly".</li>
              <li>OTP and UPI PIN are kept in English, with the "we never ask" rule noted.</li>
              <li>Draft terms are marked for a native check, not presented as final.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Decide your important words once, in one shared sheet. Keep names and codes in English, keep numbers exact and let native reviewers choose the other terms. Then put the glossary into every prompt and check.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Voice and Phone Support in Many Languages</h1>
        </div>
        <p class="lc-lead">Many customers prefer to speak, not type. Some call. Many send WhatsApp voice notes. Voice AI can turn speech into text, translate it and summarise calls. But speech tools make more mistakes than text tools, especially with numbers, names and mixed languages. In this lesson you will learn where voice AI helps, where it goes wrong and how to support callers when no agent speaks their language.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A voice support workflow: the customer speaks on a call or voice note, often mixing languages; speech-to-text makes a transcript; AI translates it into English for the agent; the agent confirms details by reading back order IDs, amounts and names; then replies by text, voice note or callback. Speech-to-text can go wrong with numbers and IDs, names, noise, accents and mixed languages, so always read back the order ID digit by digit and the rupee amount. If no agent speaks the language: a bilingual colleague for low-risk calls, a professional interpreter for complaints, legal or health, or a callback in queue hours: Tamil within 4 hours, Kannada and Marathi next day.">
            <defs><marker id="ml10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="132" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="76" y="55" font-weight="700">Customer speaks</text>
              <text x="76" y="73" font-size="10.5" fill="#9b99b8">call or voice note</text>
              <text x="76" y="88" font-size="10.5" fill="#9b99b8">often mixed</text>
              <rect x="162" y="30" width="132" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="228" y="55" font-weight="700">Speech to text</text>
              <text x="228" y="73" font-size="10.5" fill="#9b99b8">ASR makes a</text>
              <text x="228" y="88" font-size="10.5" fill="#9b99b8">transcript</text>
              <rect x="314" y="30" width="132" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="55" font-weight="700">Translate</text>
              <text x="380" y="73" font-size="10.5" fill="#9b99b8">into English</text>
              <text x="380" y="88" font-size="10.5" fill="#9b99b8">for the agent</text>
              <rect x="466" y="30" width="132" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="532" y="55" font-weight="700">Confirm details</text>
              <text x="532" y="73" font-size="10.5" fill="#9b99b8">read back IDs,</text>
              <text x="532" y="88" font-size="10.5" fill="#9b99b8">amounts, names</text>
              <rect x="618" y="30" width="132" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="684" y="55" font-weight="700">Reply</text>
              <text x="684" y="73" font-size="10.5" fill="#9b99b8">text, voice note</text>
              <text x="684" y="88" font-size="10.5" fill="#9b99b8">or callback</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ml10a)">
                <line x1="143" y1="65" x2="158" y2="65"/>
                <line x1="295" y1="65" x2="310" y2="65"/>
                <line x1="447" y1="65" x2="462" y2="65"/>
                <line x1="599" y1="65" x2="614" y2="65"/>
              </g>
              <line x1="228" y1="101" x2="228" y2="129" stroke="#ec4899" stroke-width="1.5" stroke-dasharray="4 3"/>
              <rect x="10" y="130" width="436" height="58" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="6 4"/>
              <text x="228" y="153" font-weight="700" fill="#f9a8d4">Where speech-to-text can go wrong</text>
              <text x="228" y="174" font-size="11.5" fill="#9b99b8">Numbers and IDs, names, noise, accents, mixed languages</text>
              <line x1="532" y1="101" x2="532" y2="129" stroke="#10b981" stroke-width="1.5" stroke-dasharray="4 3"/>
              <rect x="466" y="130" width="284" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="608" y="153" font-weight="700" fill="#6ee7b7">Always read back</text>
              <text x="608" y="174" font-size="11.5" fill="#9b99b8">order ID digit by digit, ₹ amount</text>
              <text x="10" y="218" text-anchor="start" font-size="13" font-weight="700" fill="#67e8f9">No agent speaks the language? Options:</text>
              <rect x="10" y="230" width="236" height="52" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="128" y="252" font-weight="700">Bilingual colleague</text>
              <text x="128" y="270" font-size="10.5" fill="#9b99b8">low-risk calls</text>
              <rect x="262" y="230" width="236" height="52" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="252" font-weight="700">Professional interpreter</text>
              <text x="380" y="270" font-size="10.5" fill="#9b99b8">complaints, legal, health</text>
              <rect x="514" y="230" width="236" height="52" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="632" y="252" font-weight="700">Callback in queue hours</text>
              <text x="632" y="270" font-size="10.5" fill="#9b99b8">Tamil 4h; Kannada, Marathi next day</text>
              <text x="380" y="308" font-size="11.5" fill="#9b99b8">Speech AI is not perfect in any language. Test it with your own calls.</text>
            </g>
          </svg>
          <figcaption>Voice AI turns speech into text the agent can read. The agent always confirms key details before acting.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Voice AI words, and where they help</h3>
          <ul class="lc-list">
            <li><strong>ASR (automatic speech recognition):</strong> software that turns speech into text. The text is called a transcript.</li>
            <li><strong>TTS (text-to-speech):</strong> software that reads text aloud in a computer voice.</li>
            <li><strong>Speech translation:</strong> ASR plus translation, sometimes live during a call.</li>
            <li><strong>IVR (interactive voice response):</strong> the phone menu, such as "Press 1 for English".</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Where</th><th>How Swift Mart uses voice AI (made up)</th><th>Who checks</th></tr></thead>
            <tbody>
              <tr><td>WhatsApp voice notes</td><td>The helpdesk makes a transcript and an English translation for the agent.</td><td>The agent plays the key parts again if a detail matters.</td></tr>
              <tr><td>Phone menu (IVR)</td><td>Each language option is said in that language. A native speaker records it or checks it.</td><td>The native reviewer for each language</td></tr>
              <tr><td>After a call</td><td>AI writes a short English summary for the ticket from the transcript.</td><td>The agent edits it before saving.</td></tr>
              <tr><td>Callbacks</td><td>AI summarises the waiting ticket, so the agent starts the call ready.</td><td>The agent</td></tr>
            </tbody>
          </table>
          <p>Many speech tools now support Indian languages, including India's Bhashini platform. Language lists and quality change often, so check each tool's current help pages. Test each language with your own recordings before you rely on it.</p>
        </div>
        <div class="lc-card">
          <h3>Where speech-to-text goes wrong</h3>
          <p>Speech is harder than text. Quality depends on the tool, the language, the accent, background noise, the phone line and how much the caller mixes languages. So test it with realistic calls.</p>
          <p>Priya ran a test with one tool. Staff and native reviewers recorded 60 short practice calls, 20 each in Tamil, Kannada and Marathi, using made-up orders. Each call had 3 key details: an order ID, a ₹ amount and an item name. That is 180 details.</p>
          <table class="lc-table">
            <thead><tr><th>Key detail</th><th>In the test</th><th>Correct in transcript</th><th>Wrong</th></tr></thead>
            <tbody>
              <tr><td>Order ID</td><td>60</td><td>51 (85%)</td><td>9</td></tr>
              <tr><td>₹ amount</td><td>60</td><td>55 (92%)</td><td>5</td></tr>
              <tr><td>Item name</td><td>60</td><td>56 (93%)</td><td>4</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>60 calls, 180 details</strong></td><td><strong>162 (90%)</strong></td><td><strong>18</strong></td></tr>
            </tbody>
          </table>
          <p>So about 1 key detail in 10 was wrong. The meaning of most sentences was fine. The danger was in the small details that decide the action. These results are for one made-up test only. Your tools and languages will give different results.</p>
          <ul class="lc-list">
            <li><strong>Digits.</strong> "Two" can become "to", and "fifty" can become "fifteen".</li>
            <li><strong>Spoken number words.</strong> In Hindi, "saadhe paanch sau" means 550. A transcript may drop "saadhe" and show 500.</li>
            <li><strong>Names and local items.</strong> People's names and item names like "kothimbir" are often misheard.</li>
          </ul>
          <p>Swift Mart's rule: never act on a number from a transcript alone. Read back the order ID digit by digit, and the amount. Or find the order from the customer's registered phone number and confirm it with them.</p>
        </div>
        <div class="lc-card">
          <h3>Callbacks, interpreters and consent</h3>
          <p>The coverage plan gives phone support in English, Hindi and Telugu. Tamil callers get a callback within 4 hours. Kannada and Marathi callers get a callback the next day. For other languages, there is no phone support, but agents still help.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Use it for</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td>Bilingual colleague</td><td>Low-risk questions, such as delivery slots</td><td>They are not trained interpreters. Keep it short and simple.</td></tr>
              <tr><td>Professional phone interpreter</td><td>Complaints, legal threats, health and food safety, money disputes</td><td>Costs money and takes time to arrange. Check a provider's language list.</td></tr>
              <tr><td>Live AI speech translation</td><td>Only simple, low-risk questions, if your company approves the tool</td><td>Errors in numbers and meaning. Tell the customer, and offer a person.</td></tr>
              <tr><td>Callback in the language queue</td><td>Anything that can wait until queue hours</td><td>Tell the customer when to expect the call. Keep that promise.</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Working with an interpreter.</strong> Speak to the customer, not the interpreter. Use short sentences. Pause often. Ask the interpreter to repeat numbers.</li>
            <li><strong>Tell the customer.</strong> Say when a call is recorded, when AI makes a transcript and when an interpreter joins. Follow your company's privacy notice.</li>
            <li><strong>Protect recordings.</strong> Never upload call recordings or voice notes to public AI tools. India's DPDP Act 2023 covers personal data like this. This is general information, not legal advice. Check with your legal team.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a Hinglish voice note from Maharashtra</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="WhatsApp">A Maharashtra customer sends Swift Mart a 35-second voice note in Hinglish. It goes to the Hindi queue.</li>
              <li data-kind="tool" data-label="Speech to text">The helpdesk makes a transcript and an English translation for Farhan Ali.</li>
              <li data-kind="result" data-label="Transcript">"Maine paanch sau ka order kiya tha, SM-50627, atta nahi aaya." English: "I ordered for 500, SM-50627, the flour did not come." (Made up; for a native speaker to check.)</li>
              <li data-kind="warn" data-label="Wrong order">SM-50627 belongs to a different customer. Farhan must not share anything about that order.</li>
              <li data-kind="check" data-label="Listen again">Farhan plays the voice note. The customer said "saadhe paanch sau" (550) and "SM-50672". The transcript dropped "saadhe" and swapped two digits.</li>
              <li data-kind="tool" data-label="Order system">The customer's phone number matches SM-50672: ₹550 in total. A 5 kg atta pack for ₹260 is marked as delivered.</li>
              <li data-kind="answer" data-label="Reply">Farhan replies in Hindi in English letters, like the customer. He writes the order ID and asks the customer to confirm it. Then he opens a missing-item case.</li>
              <li data-kind="check" data-label="Log it">He tags the ticket "transcript error: number". Priya tracks how often this happens in each language.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a messy call transcript. Ask it to find the key details, flag possible errors and write read-back questions for the agent.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help a phone agent at [Swift Mart, an online grocery app in Telangana]. Below is a speech-to-text transcript of a call. The customer mixes [Telugu] and English. The transcript may have errors, especially in numbers, order IDs and names.

        Transcript (made up; for a native speaker to check):
        [Customer: Hello, naa order SM 5 1 0 to 4 inka raaledu. 2 hours aindi.
        Customer: Fifteen forty pay chesanu, UPI lo.
        Customer: Milk, paneer unnayi. Amma ki urgent.
        Customer: OTP cheppala?]

        Do this:
        1. Translate the transcript into simple English.
        2. List the key details: order ID, amount, items, time waited. For each, give your confidence (high, medium or low) and other possible readings.
        3. Flag any security or safety issue, and say what the agent should tell the customer.
        4. Write 4 short read-back questions the agent can ask, in [Telugu] (English letters) with English meanings. Ask for numbers digit by digit.
        5. Write a 3-line English summary for the ticket. Mark unconfirmed details "to confirm".

        Do not guess an order ID or amount as fact. Do not promise a refund or a delivery time.</pre>
            <ul class="ai-try-checks">
              <li>"SM 5 1 0 to 4" is flagged as possibly SM-51024, with "to" read as "two", and marked "to confirm".</li>
              <li>"Fifteen forty" has more than one possible reading, such as ₹1,540, and is not treated as fact.</li>
              <li>The OTP question is flagged: the agent tells the customer never to share their OTP.</li>
              <li>The [Telugu] questions are marked for a native speaker to check before use.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Voice AI helps agents understand callers and voice notes in many languages. But transcripts get small details wrong, and those details decide the action. Always read back IDs and amounts, and use interpreters or callbacks for hard cases.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Quality Checks for Translations</h1>
        </div>
        <p class="lc-lead">A translation can read smoothly and still be wrong. Quality checks catch these mistakes before many customers see them. In this lesson you will learn four layers of checks: automatic checks, back-translation, native reviewers and customer signals. You will sort errors by type and by how serious they are. You will also plan a sample, log the results in a spreadsheet and turn them into numbers you can act on.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A funnel of four quality check layers for translated support replies. Layer one: every reply gets an automatic check of numbers, order IDs and names. Layer two: money or policy replies get a back-translation. Layer three: a native reviewer checks a weekly random sample, 15 Tamil, 10 Kannada and 10 Marathi replies. Layer four: customer signals such as survey comments and repeat contacts. All findings are logged by type and severity, then the source is fixed and the loop starts again.">
            <defs><marker id="ml11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <polygon points="40,20 600,20 570,72 70,72" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="320" y="42" font-weight="700">Every reply: auto-check numbers, IDs and names</text>
              <text x="320" y="61" font-size="11" fill="#9b99b8">AI self-check or template test, before sending</text>
              <polygon points="72,80 568,80 538,132 102,132" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="320" y="102" font-weight="700">Money or policy replies: back-translation</text>
              <text x="320" y="121" font-size="11" fill="#9b99b8">a fresh chat or another tool, back to English</text>
              <polygon points="104,140 536,140 506,192 134,192" fill="#1f1f44" stroke="#10b981"/>
              <text x="320" y="162" font-weight="700">Weekly random sample: native reviewer</text>
              <text x="320" y="181" font-size="11" fill="#9b99b8">Tamil 15, Kannada 10, Marathi 10 a week</text>
              <polygon points="136,200 504,200 474,252 166,252" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="320" y="222" font-weight="700">Customer signals</text>
              <text x="320" y="241" font-size="11" fill="#9b99b8">survey comments, repeat contacts</text>
              <rect x="40" y="262" width="560" height="34" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="320" y="284" font-weight="700">Log every error by type and severity, then fix the source</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ml11a)">
                <path d="M601,279 L660,279 L660,46 L592,46"/>
              </g>
              <text x="668" y="150" text-anchor="start" font-size="11" fill="#9b99b8">fix, then</text>
              <text x="668" y="166" text-anchor="start" font-size="11" fill="#9b99b8">check again</text>
              <text x="380" y="320" font-size="12" fill="#9b99b8">Made-up plan for Swift Mart. Each layer catches errors that the layer above missed.</text>
            </g>
          </svg>
          <figcaption>Cheap checks run on every reply. Slower, deeper checks run on a sample. Every error found leads to a fix at the source.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four layers of checks</h3>
          <p>No single check catches everything. So Swift Mart uses four layers. Each one is cheap enough for its place in the funnel.</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>What it catches</th><th>What it misses</th><th>When Swift Mart uses it</th></tr></thead>
            <tbody>
              <tr><td><strong>Automatic check</strong></td><td>Changed numbers, amounts, order IDs and brand names</td><td>Tone, respect level, changed meaning</td><td>Every translated reply, before sending</td></tr>
              <tr><td><strong>Back-translation</strong></td><td>Added promises, a lost "not", changed time periods</td><td>Tone, odd local words, errors "fixed" on the way back</td><td>Replies about money or policy, and every new template</td></tr>
              <tr><td><strong>Native reviewer</strong></td><td>Almost everything, including tone and local usage</td><td>Nothing much, but it is slow and costs money</td><td>All templates and articles, plus a weekly sample of live replies</td></tr>
              <tr><td><strong>Customer signals</strong></td><td>Real confusion: "did not understand", repeat contacts, low CSAT</td><td>It only shows up after a customer is affected</td><td>Every week, in the language report</td></tr>
            </tbody>
          </table>
          <p>A back-translation is the translation turned back into English, so you can read what it now says. Do it in a fresh AI chat or a different tool. In the same chat, the AI still sees your English original. It may "remember" the right meaning and hide the error.</p>
          <p>For saved replies, a spreadsheet can check that protected words survived. Put each translated template in column C. This formula shows "OK" if "Swift Mart Wallet" is still there, and "CHECK" if it is missing:</p>
          <pre><code>=IF(ISNUMBER(SEARCH("Swift Mart Wallet",C2)),"OK","CHECK")</code></pre>
          <p>Copy it down the column. Make one column for each protected word, such as "FRESH50" or "BANK".</p>
        </div>
        <div class="lc-card">
          <h3>Error types and severity</h3>
          <p>Severity means how much harm an error can do. Swift Mart uses three levels. Professional translation teams use similar lists. One common framework is called MQM (Multidimensional Quality Metrics).</p>
          <table class="lc-table">
            <thead><tr><th>Severity</th><th>Error type</th><th>Example (back-translation, made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Critical</strong></td><td>A number, amount, date or time period changed</td><td>"5 to 7 working days" became "5 to 7 days"</td></tr>
              <tr><td><strong>Critical</strong></td><td>Meaning reversed or a promise added</td><td>"We will check" became "We will refund you today"</td></tr>
              <tr><td><strong>Critical</strong></td><td>Safety or health information wrong or missing</td><td>"Do not eat it" became "You can return it"</td></tr>
              <tr><td><strong>Major</strong></td><td>Glossary error: a brand, screen name or approved term is wrong</td><td>"Swift Mart Wallet" became a local word for "purse"</td></tr>
              <tr><td><strong>Major</strong></td><td>Wrong respect level</td><td>Tamil "nee" (informal "you") instead of "neenga"</td></tr>
              <tr><td><strong>Major</strong></td><td>Wrong language mixed in, or a sentence missing</td><td>Hindi words and grammar inside a Marathi reply</td></tr>
              <tr><td><strong>Minor</strong></td><td>Correct but unnatural, or a spelling slip</td><td>Sounds like a textbook, or a missing full stop</td></tr>
            </tbody>
          </table>
          <p>The Tamil words above are samples for a native speaker to check. Each severity has a clear action:</p>
          <ul class="lc-list">
            <li><strong>Critical:</strong> stop using that reply at once. Fix it the same day. Check other chats that used it. Tell Priya.</li>
            <li><strong>Major:</strong> fix the source within the week. The source may be the glossary, the saved reply or the AI prompt.</li>
            <li><strong>Minor:</strong> collect them. Fix them in the monthly update.</li>
          </ul>
          <p>Swift Mart's pass rule is simple. A reply <strong>passes</strong> if it has no critical and no major errors. Minor errors are logged but do not fail a reply.</p>
        </div>
        <div class="lc-card">
          <h3>Sampling with worked numbers</h3>
          <p>You cannot review every reply. So you review a sample, which is a small set of replies chosen to represent the rest. During the one-month pilot, the native reviewers checked random samples of live replies. Meena Sundaram checked 15 Tamil replies a week. Raghavendra Rao (Kannada) and Snehal Patil (Marathi) checked 10 a week each.</p>
          <p><strong>Step 1. Pick at random.</strong> In the week's ticket export, add a column with <code>=RAND()</code>. Sort by that column. Take the first 15 Tamil replies. A random pick stops anyone from choosing only the easy chats.</p>
          <p><strong>Step 2. Log each reply.</strong> The QA log has one row per reviewed reply. Columns D, E and F hold the number of critical, major and minor errors. Column G gives the result:</p>
          <pre><code>G2:  =IF(D2+E2=0,"Pass","Fail")
        Pass rate:     =COUNTIF(G2:G61,"Pass")/COUNTA(G2:G61)
        Critical total: =SUM(D2:D61)</code></pre>
          <p>For Tamil, rows 2 to 61 hold the 60 replies from four weeks. 56 passed, so the pass rate is 56 / 60 = 93.3%.</p>
          <table class="lc-table">
            <thead><tr><th>Language (reviewer)</th><th>Pilot contacts</th><th>Replies sampled</th><th>Passed</th><th>Pass rate</th><th>Critical</th><th>Major</th><th>Minor</th></tr></thead>
            <tbody>
              <tr><td>Tamil (Meena)</td><td>450</td><td>60</td><td>56</td><td>93.3%</td><td>1</td><td>3</td><td>9</td></tr>
              <tr><td>Kannada (Raghu)</td><td>250</td><td>40</td><td>36</td><td>90.0%</td><td>1</td><td>3</td><td>6</td></tr>
              <tr><td>Marathi (Snehal)</td><td>245</td><td>40</td><td>31</td><td>77.5%</td><td>2</td><td>8</td><td>11</td></tr>
            </tbody>
          </table>
          <p>All data is made up. Some failed Marathi replies had more than one error. That is why 10 errors made only 9 replies fail.</p>
          <p><strong>Step 3. Estimate the whole month.</strong> Marathi had 2 critical errors in 40 replies. That is 5%. If the sample is typical, about 12 of the 245 Marathi contacts (245 x 5% = 12.25) got a reply with a critical error. This is a rough estimate from a small sample. But it is enough to act.</p>
          <p><strong>Step 4. Find the cause.</strong> Six of the eight Marathi major errors were Hindi words or grammar. Swift Mart had no Marathi-speaking agents in the pilot. Agents sent AI drafts they could not read. The fix is not "try harder". It is Marathi-speaking agents, a Marathi glossary and a prompt rule: "Use Marathi only. Do not use Hindi words."</p>
          <p>The single Tamil critical error came from an agent who typed a new reply instead of using the approved one. The AI dropped "working" from "5 to 7 working days". So the fix was training: use the saved reply.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: how serious is this error?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Meena, Raghu and Snehal found these errors in made-up Swift Mart replies. Sort each one by severity.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="critical" data-label="Critical"></div>
              <div data-sorter-target="bucket" data-bucket="major" data-label="Major"></div>
              <div data-sorter-target="bucket" data-bucket="minor" data-label="Minor"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="critical" data-why="A changed time period breaks a promise about money. Customers may expect the money too soon.">"Bank refunds take 5 to 7 working days" became "5 to 7 days"</li>
              <li data-bucket="critical" data-why="The translation added a refund promise that nobody approved. That is money and legal risk.">"We will check with the store" became "We will refund you today"</li>
              <li data-bucket="major" data-why="The customer cannot find a &quot;purse&quot; in the app. Brand and screen names must stay in English.">"Swift Mart Wallet" was translated as a local word for "purse"</li>
              <li data-bucket="major" data-why="The informal &quot;you&quot; can sound rude to an older customer. It breaks the tone rule in the glossary.">A Tamil reply uses "nee" instead of the respectful "neenga"</li>
              <li data-bucket="major" data-why="The meaning survives, but the customer may not trust or fully understand a mixed reply.">A Marathi reply uses Hindi words and grammar in two places</li>
              <li data-bucket="minor" data-why="The facts and tone are right. It only sounds stiff. Fix it in the monthly update.">A correct Kannada reply sounds formal, like a textbook</li>
              <li data-bucket="minor" data-why="It does not change the meaning or the tone. Log it and move on.">A missing full stop and an extra space</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to act as a QA reviewer. It will compare English source replies with back-translations, sort the errors and work out a pass rate.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a translation QA reviewer for [Swift Mart, an online grocery app]. Below are 5 English source replies and the English back-translation of the [Kannada] reply that was sent.

        Error types:
        - Critical: a number, amount, date or time changed; meaning reversed; promise added or removed; safety info wrong.
        - Major: brand, screen name or glossary term wrong; wrong respect level; sentence missing.
        - Minor: unnatural wording or spelling.
        A reply passes only if it has no critical and no major errors.

        1. Source: "We have added ₹480 to your Swift Mart Wallet." | Back: "We have added ₹480 to your Swift Mart purse."
        2. Source: "Bank refunds take 5 to 7 working days." | Back: "Bank refunds take 5 to 7 days."
        3. Source: "Please choose a new delivery slot in My Orders." | Back: "Kindly select a new delivery slot in My Orders."
        4. Source: "We will check with the store and update you by 6 pm." | Back: "We will check with the store and refund you by 6 pm."
        5. Source: "Sorry, this item cannot be returned once opened." | Back: "Sorry, you cannot return this thing after opening."

        Give a table: # | Error found | Type | Severity | Pass or Fail | Fix at the source (glossary, saved reply, prompt or training).
        Then give the pass rate as "passed / total = %". Say what a back-translation cannot show you.</pre>
            <ul class="ai-try-checks">
              <li>Replies 2 and 4 are marked critical: a lost "working" and an added refund promise.</li>
              <li>Reply 1 is a major glossary error, because "Swift Mart Wallet" must stay in English.</li>
              <li>Replies 3 and 5 pass, with at most a minor note, so the pass rate is 2 / 5 = 40%.</li>
              <li>The answer says back-translation cannot show tone or respect level, so a native reviewer is still needed.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Quality checks work in layers. Run cheap checks on every reply and send a random sample to native reviewers. Sort every error by severity. Then fix the cause at the source, not only the one reply.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Sensitive Topics Across Languages</h1>
        </div>
        <p class="lc-lead">Some messages carry more risk than others. Health, food safety, money, legal threats and complaints about people all need extra care. Here, a small translation error can hurt a customer or break the law. In this lesson you will learn to spot sensitive topics in any language, including mixed messages in English letters. You will learn who should handle them. You will also learn when AI translation is not enough and you need a professional human translator.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A triage flow. A new message in any language goes to AI, which flags the topic, and a person checks the flag. Health or safety, such as an allergy or glass in food, goes to a senior agent at once, and a native speaker calls back. A legal threat, such as consumer court, goes to a team lead with an approved holding reply. A money problem, such as paid but the order failed, goes to a payments check with no refund promise. A formal document, such as a legal notice in Tamil, goes to a professional human translator plus the legal team. Messages that are not flagged go to the normal queue.">
            <defs><marker id="ml12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="140" width="130" height="64" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="75" y="167" font-weight="700">New message</text>
              <text x="75" y="187" font-size="11" fill="#9b99b8">any language</text>
              <rect x="165" y="140" width="150" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="240" y="167" font-weight="700">AI flags topic</text>
              <text x="240" y="187" font-size="11" fill="#9b99b8">a person checks it</text>
              <rect x="345" y="20" width="175" height="56" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="432" y="43" font-weight="700">Health or safety</text>
              <text x="432" y="62" font-size="11" fill="#9b99b8">allergy, glass, injury</text>
              <rect x="345" y="95" width="175" height="56" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="432" y="118" font-weight="700">Legal threat</text>
              <text x="432" y="137" font-size="11" fill="#9b99b8">consumer court, notice</text>
              <rect x="345" y="170" width="175" height="56" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="432" y="193" font-weight="700">Money problem</text>
              <text x="432" y="212" font-size="11" fill="#9b99b8">paid, but order failed</text>
              <rect x="345" y="245" width="175" height="56" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="432" y="268" font-weight="700">Formal document</text>
              <text x="432" y="287" font-size="11" fill="#9b99b8">a legal notice in Tamil</text>
              <rect x="545" y="20" width="205" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="647" y="43" font-weight="700">Senior agent at once</text>
              <text x="647" y="62" font-size="11" fill="#9b99b8">native speaker calls back</text>
              <rect x="545" y="95" width="205" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="647" y="118" font-weight="700">Team lead</text>
              <text x="647" y="137" font-size="11" fill="#9b99b8">approved holding reply</text>
              <rect x="545" y="170" width="205" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="647" y="193" font-weight="700">Payments check</text>
              <text x="647" y="212" font-size="11" fill="#9b99b8">no refund promise</text>
              <rect x="545" y="245" width="205" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="647" y="268" font-weight="700">Human translator</text>
              <text x="647" y="287" font-size="11" fill="#9b99b8">plus the legal team</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ml12a)">
                <line x1="141" y1="172" x2="161" y2="172"/>
                <path d="M316,164 L341,48"/>
                <path d="M316,168 L341,123"/>
                <path d="M316,176 L341,198"/>
                <path d="M316,180 L341,273"/>
                <line x1="521" y1="48" x2="541" y2="48"/>
                <line x1="521" y1="123" x2="541" y2="123"/>
                <line x1="521" y1="198" x2="541" y2="198"/>
                <line x1="521" y1="273" x2="541" y2="273"/>
              </g>
              <text x="380" y="326" font-size="12" fill="#9b99b8">Not flagged? Normal queue: AI drafts, and the agent checks and sends.</text>
            </g>
          </svg>
          <figcaption>AI flags the topic in any language. A person checks the flag. Each sensitive topic has a clear owner.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What counts as sensitive</h3>
          <p>A sensitive topic is one where a mistake can cause harm, cost money or bring legal trouble. Here are Swift Mart's five groups. All messages are made up and are samples for a native speaker to check.</p>
          <table class="lc-table">
            <thead><tr><th>Topic</th><th>Made-up message</th><th>Language risk</th><th>Who handles it</th></tr></thead>
            <tbody>
              <tr><td>Health and food safety</td><td>"Mazya mulala allergy zali" (Marathi: "My child had an allergy")</td><td>A detail such as "hospital" is lost or softened</td><td>A senior agent who speaks the language, at once</td></tr>
              <tr><td>Money</td><td>"Paise kat gaye ₹640 lekin order failed dikh raha hai" (Hindi: "Money was taken, but the order shows failed")</td><td>The amount changes, or a refund is promised</td><td>An agent checks the payment first. No promise before the check.</td></tr>
              <tr><td>Legal threat</td><td>"Consumer court-la complaint kodupen" (Tamil: "I will complain in consumer court")</td><td>The reply sounds cold, or seems to admit fault</td><td>A team lead, using an approved reply</td></tr>
              <tr><td>Complaint about a person</td><td>"Delivery wala baar baar call karke pareshan kar raha hai" (Hindi: "The delivery man keeps calling and bothering me")</td><td>Harassment is softened into "rude"</td><td>A team lead, the same day</td></tr>
              <tr><td>Fraud and privacy</td><td>"Swift Mart se call aaya, OTP maang rahe the" (Hindi: "A 'Swift Mart' caller asked for my OTP")</td><td>The warning is missed</td><td>Any agent, at once: Swift Mart never asks for an OTP or UPI PIN</td></tr>
            </tbody>
          </table>
          <p>Swift Mart's rule: every sensitive case goes to a person who reads the language. The bot never handles these on its own. For health and safety cases, a senior team member calls back within 2 hours. Outside queue hours, the on-duty team lead takes the case.</p>
        </div>
        <div class="lc-card">
          <h3>Spotting sensitive words in any language</h3>
          <p>Customers often mix English legal and medical words into their own language. They write "consumer court", "police", "hospital", "allergy" or "fraud". They also use words from their own language. Here are two useful words in transliteration (English letters). Spellings vary, so a native reviewer should check and extend this list.</p>
          <table class="lc-table">
            <thead><tr><th>Meaning</th><th>Hindi</th><th>Tamil</th><th>Kannada</th><th>Marathi</th><th>Telugu</th></tr></thead>
            <tbody>
              <tr><td>complaint</td><td>shikayat</td><td>pugar</td><td>dooru</td><td>takrar</td><td>phiryadu</td></tr>
              <tr><td>cheating</td><td>dhokha</td><td>yemaathu</td><td>mosa</td><td>fasavnuk</td><td>mosam</td></tr>
            </tbody>
          </table>
          <p>AI models understand meaning, not only single words. So they catch many cases that a keyword list misses. Keep the keyword list as a safety net in your helpdesk rules.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is this customer angry?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Read this support message. It may mix languages or use English letters.
        Does it involve: health or food safety, a money problem, a legal threat,
        a complaint about a person, fraud or privacy, or none?
        Quote the exact words that show it, and translate them.
        Give a priority: urgent, high or normal.
        If you are not sure, say "unsure". Do not write a reply to the customer.</code></pre>
          <p>"Quote the exact words" matters. The agent can check the flag in seconds. It also shows when the AI has guessed.</p>
        </div>
        <div class="lc-card">
          <h3>When AI translation is not enough</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Who translates</th></tr></thead>
            <tbody>
              <tr><td>An agent needs to understand a complaint</td><td>AI is fine. The agent asks the customer if anything is unclear.</td></tr>
              <tr><td>A reply about a health or safety incident</td><td>A native-speaking senior agent writes it, starting from an approved holding reply</td></tr>
              <tr><td>A reply to a written legal threat</td><td>The team lead uses a reply approved by the legal team, in that language</td></tr>
              <tr><td>A formal legal notice or court papers in Tamil, Kannada or Marathi</td><td>A professional human translator, and the legal team</td></tr>
              <tr><td>A serious phone call in a language no agent speaks</td><td>A professional interpreter (a person who translates speech live)</td></tr>
              <tr><td>A public statement or a product safety notice</td><td>A professional translator, plus a native reviewer</td></tr>
            </tbody>
          </table>
          <p>A holding reply is a short, approved first reply. It says sorry, confirms you are taking the issue seriously and says what happens next. Swift Mart keeps approved holding replies in every support language. They never blame the customer, guess the cause or promise money.</p>
          <p>Know the rules too. India's Consumer Protection (E-Commerce) Rules, 2020 require e-commerce businesses to have a grievance officer. They also set time limits to acknowledge and resolve complaints. Customers can also contact the National Consumer Helpline (1915) or file a complaint online on the e-Jagriti portal. It replaced the older e-Daakhil portal in 2025. Never tell a customer they cannot complain. This is general information, not legal advice. Check the current rules with your legal team.</p>
          <p>Protect privacy as well. Do not paste health details, names or phone numbers into public AI tools. Use only the tools your company has approved.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a health complaint in Tamil</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="result" data-label="Message arrives">7:50 pm. A WhatsApp message in Tamil script arrives from Tamil Nadu about order SM-51642. In English it says: "My son ate the murukku from this order. The pack says no peanuts. He got a rash and we took him to hospital."</li>
              <li data-kind="tool" data-label="Helpdesk AI">The helpdesk's AI tags it: Tamil, health, urgent. It skips the normal queue and goes to the senior Tamil agent on shift, Karthik Raman.</li>
              <li data-kind="answer" data-label="AI summary">The AI summary says: "Customer's child has a mild rash after eating murukku. Wants a refund."</li>
              <li data-kind="warn" data-label="Two errors">The summary adds "mild" and "wants a refund". It also leaves out "hospital". The customer never asked for a refund.</li>
              <li data-kind="check" data-label="Native speaker">Karthik reads the original Tamil himself. He confirms the hospital visit. There is no refund request.</li>
              <li data-kind="tool" data-label="Holding reply">Karthik sends the approved Tamil holding reply for health cases. It says sorry, asks how the child is and says a senior team member will call within 2 hours. It does not guess the cause.</li>
              <li data-kind="user" data-label="Handover">Karthik asks the AI for an English summary for the food safety team. He checks it line by line against the Tamil message. He adds the batch number from the customer's photo.</li>
              <li data-kind="check" data-label="Follow-up">The team lead calls the customer, with Karthik speaking Tamil. Swift Mart stops selling that batch while it checks.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to triage made-up messages in several languages. It will flag sensitive topics, set a priority and name the right owner. The messages are made up, for a native speaker to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a triage assistant for [Swift Mart, an online grocery app in India]. Messages may mix Indian languages with English and use English letters.

        For each message, give a table:
        # | Language | English meaning | Topic (health or food safety, money, legal threat, complaint about a person, fraud or privacy, or routine) | Exact words that show it | Priority (urgent, high, normal) | Owner (senior native-speaking agent, team lead, payments check, any agent at once, normal queue)

        Messages:
        1. [Paise kat gaye ₹640 lekin order failed dikh raha hai]
        2. [Consumer court-la complaint kodupen]
        3. [Mazya mulala allergy zali, hospital madhe nela]
        4. [Delivery wala baar baar call karke pareshan kar raha hai]
        5. [Refund yaavaga barutte?]
        6. [Swift Mart se call aaya, OTP maang rahe the]

        Rules: Do not write replies to customers. Do not promise refunds. If unsure of a word, say so. Then list 3 things the owner of message 3 must NOT say.</pre>
            <ul class="ai-try-checks">
              <li>Message 3 (a child in hospital) is urgent and goes to a senior native-speaking agent.</li>
              <li>Message 6 is flagged as possible fraud, with a note that Swift Mart never asks for an OTP.</li>
              <li>Message 5 is routine, not sensitive.</li>
              <li>₹640 is copied exactly, and no refund is promised anywhere.</li>
              <li>Unsure words are named. Ask a native speaker to check the translations.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In sensitive cases, AI helps you notice and understand, but people own every word the customer reads. Read the original with a native speaker, start from approved holding replies, and bring in a professional translator for anything formal or legal.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Measuring Multilingual Support</h1>
        </div>
        <p class="lc-lead">An overall score can hide a problem in one language. If most customers write in English, a weak Marathi service barely moves the average. In this lesson you will split your support numbers by language. You will measure CSAT, resolution time and cost per contact for each language. You will also learn to read small numbers with care, so you fix the real cause.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A dashboard of Swift Mart's pilot month in the new states, by language. CSAT: English 82.8% from 203 surveys, median resolution 3.0 hours. Hindi 80.8% from 73 surveys, 3.4 hours. Tamil 77.8% from 90 surveys, 4.5 hours. Kannada 68.0% from 50 surveys, 10.5 hours. Marathi 57.1% from 49 surveys, 8.0 hours. Telugu 83.3% from 12 surveys, 3.2 hours. Other 56.5% from 23 surveys, 6.0 hours. Telugu and Other have fewer than 30 surveys, which is not enough data. A dashed line marks the 80% target.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="26" font-weight="700">Pilot month in new states: CSAT and resolution time by language</text>
              <g font-size="12" fill="#9b99b8">
                <text x="20" y="56">Language</text>
                <text x="130" y="56">Share of answers that are 4 or 5</text>
                <text x="440" y="56">CSAT</text>
                <text x="520" y="56">Surveys</text>
                <text x="620" y="56">Median time</text>
              </g>
              <text x="20" y="87">English</text>
              <rect x="130" y="72" width="248" height="20" rx="4" fill="#10b981"/>
              <text x="440" y="87">82.8%</text><text x="520" y="87">203</text><text x="620" y="87">3.0 h</text>
              <text x="20" y="119">Hindi</text>
              <rect x="130" y="104" width="242" height="20" rx="4" fill="#10b981"/>
              <text x="440" y="119">80.8%</text><text x="520" y="119">73</text><text x="620" y="119">3.4 h</text>
              <text x="20" y="151">Tamil</text>
              <rect x="130" y="136" width="233" height="20" rx="4" fill="#f59e0b"/>
              <text x="440" y="151">77.8%</text><text x="520" y="151">90</text><text x="620" y="151">4.5 h</text>
              <text x="20" y="183">Kannada</text>
              <rect x="130" y="168" width="204" height="20" rx="4" fill="#f59e0b"/>
              <text x="440" y="183">68.0%</text><text x="520" y="183">50</text><text x="620" y="183" fill="#fcd34d">10.5 h</text>
              <text x="20" y="215">Marathi</text>
              <rect x="130" y="200" width="171" height="20" rx="4" fill="#ec4899"/>
              <text x="440" y="215">57.1%</text><text x="520" y="215">49</text><text x="620" y="215" fill="#fcd34d">8.0 h</text>
              <text x="20" y="247" fill="#9b99b8">Telugu *</text>
              <rect x="130" y="232" width="250" height="20" rx="4" fill="#4b4a78"/>
              <text x="440" y="247" fill="#9b99b8">83.3%</text><text x="520" y="247" fill="#9b99b8">12</text><text x="620" y="247" fill="#9b99b8">3.2 h</text>
              <text x="20" y="279" fill="#9b99b8">Other *</text>
              <rect x="130" y="264" width="170" height="20" rx="4" fill="#4b4a78"/>
              <text x="440" y="279" fill="#9b99b8">56.5%</text><text x="520" y="279" fill="#9b99b8">23</text><text x="620" y="279" fill="#9b99b8">6.0 h</text>
              <line x1="370" y1="66" x2="370" y2="290" stroke="#fcd34d" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="370" y="306" text-anchor="middle" font-size="12" fill="#fcd34d">80% target</text>
              <text x="380" y="330" text-anchor="middle" font-size="12" fill="#9b99b8">* Fewer than 30 surveys: not enough data yet. Made-up data, 2,500 pilot contacts.</text>
            </g>
          </svg>
          <figcaption>Split by language, the pilot shows clear gaps in Marathi and Kannada. The overall CSAT of 76.4% hides them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to measure, by language</h3>
          <p>First, every ticket needs a Language field. Fill it from language detection or the customer's saved choice. Then you can split any number by language.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>What it means</th><th>How to calculate it</th></tr></thead>
            <tbody>
              <tr><td><strong>CSAT</strong> (customer satisfaction score)</td><td>How many survey answers are happy</td><td>Answers of 4 or 5 out of 5, divided by all answers</td></tr>
              <tr><td><strong>Resolution time</strong></td><td>How long it takes to solve the issue</td><td>Time from the customer's first message until the ticket is solved. Report the median.</td></tr>
              <tr><td><strong>FCR</strong> (first contact resolution)</td><td>Issues solved in the first contact, with no follow-up needed</td><td>Issues solved in one contact, divided by all issues</td></tr>
              <tr><td><strong>Repeat contact rate</strong></td><td>Customers who come back about the same issue</td><td>Repeat contacts within 48 hours, divided by all contacts</td></tr>
              <tr><td><strong>Cost per contact</strong></td><td>What one contact costs you in that language</td><td>Total monthly cost for the language, divided by its contacts</td></tr>
              <tr><td><strong>Language checks</strong></td><td>Signs of language trouble</td><td>QA pass rate, wrong-queue rate, share of "did not understand" messages</td></tr>
            </tbody>
          </table>
          <p>Send the survey in the customer's language. An English-only survey gets fewer answers from people who prefer Tamil or Marathi. Then the score speaks only for the English readers.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the pilot report</h3>
          <p>Swift Mart's one-month pilot had 2,500 contacts from Tamil Nadu, Karnataka and Maharashtra. In the pilot, the Telangana team answered with AI help. Two agents spoke Tamil, one spoke Kannada and none spoke Marathi. 500 customers answered the survey (20%).</p>
          <table class="lc-table">
            <thead><tr><th>Language</th><th>Contacts</th><th>Surveys</th><th>4 or 5</th><th>CSAT</th><th>Median resolution</th></tr></thead>
            <tbody>
              <tr><td>English</td><td>1,015</td><td>203</td><td>168</td><td>82.8%</td><td>3.0 h</td></tr>
              <tr><td>Hindi</td><td>365</td><td>73</td><td>59</td><td>80.8%</td><td>3.4 h</td></tr>
              <tr><td>Tamil</td><td>450</td><td>90</td><td>70</td><td>77.8%</td><td>4.5 h</td></tr>
              <tr><td>Kannada</td><td>250</td><td>50</td><td>34</td><td>68.0%</td><td>10.5 h</td></tr>
              <tr><td>Marathi</td><td>245</td><td>49</td><td>28</td><td>57.1%</td><td>8.0 h</td></tr>
              <tr><td>Telugu</td><td>60</td><td>12</td><td>10</td><td>83.3%</td><td>3.2 h</td></tr>
              <tr><td>Other</td><td>115</td><td>23</td><td>13</td><td>56.5%</td><td>6.0 h</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>2,500</strong></td><td><strong>500</strong></td><td><strong>382</strong></td><td><strong>76.4%</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>Priya's survey sheet has one row per answer (rows 2 to 501). Column B is the language and column C is the score. This formula gives Tamil CSAT, 70 / 90 = 77.8%:</p>
          <pre><code>=COUNTIFS(B2:B501,"Tamil",C2:C501,"&gt;=4")/COUNTIF(B2:B501,"Tamil")</code></pre>
          <p>Her ticket sheet has one row per contact (rows 2 to 2501). Column E holds the hours to resolve. This formula gives the Kannada median, 10.5 hours. FILTER works in Google Sheets and newer versions of Excel.</p>
          <pre><code>=MEDIAN(FILTER(E2:E2501,B2:B2501="Kannada"))</code></pre>
          <p>Why the median? The median is the middle value when you sort the numbers. Look at five tickets: 1, 2, 3, 14 and 30 hours. The average is 50 / 5 = 10 hours. The median is 3 hours. A few very slow tickets pull the average up, so the median shows the usual customer's wait better.</p>
        </div>
        <div class="lc-card">
          <h3>Read the numbers with care</h3>
          <ul class="lc-list">
            <li><strong>Small numbers jump around.</strong> Telugu has only 12 answers, so one answer moves its CSAT by 8.3 points (1 / 12). Kannada has 50, so one answer moves it by 2 points. Priya waits for at least 30 answers before she judges a language.</li>
            <li><strong>Read the comments.</strong> Marathi had 21 unhappy answers (49 - 28). 9 of them said the reply had Hindi words or was hard to understand. Kannada had 16 unhappy answers (50 - 34). 8 of them were about waiting until the next day.</li>
            <li><strong>Compare like with like.</strong> Late orders get lower scores in every language. If one state had more late orders, its language will look worse. Check CSAT by topic and language together.</li>
            <li><strong>Look for the cause before you act.</strong> Marathi's problem looks like language quality. The translation QA sample agrees: most Marathi errors were Hindi words. Kannada's problem looks like hours: one agent could not cover every shift.</li>
          </ul>
          <p>AI can help you read hundreds of survey comments in many languages. Ask it to group the comments by theme and quote examples. Then read a few comments yourself to check the groups.</p>
        </div>
        <div class="lc-card">
          <h3>Cost per language</h3>
          <p>Small languages usually cost more per contact. You still need at least two people to cover the hours, even when the work is light. Here is Priya's made-up monthly plan for the full launch. She counts ₹30,000 a month per agent, including overheads. She adds a fee for the native reviewer and a share of the AI tool cost.</p>
          <table class="lc-table">
            <thead><tr><th>Language</th><th>Monthly cost (plan)</th><th>Contacts (forecast)</th><th>Cost per contact</th><th>Agent time used</th></tr></thead>
            <tbody>
              <tr><td>Tamil</td><td>₹90,000 agents + ₹8,000 review + ₹4,000 tools = ₹1,02,000</td><td>1,800</td><td>about ₹57</td><td>180 of 360 hours (50%)</td></tr>
              <tr><td>Kannada</td><td>₹60,000 + ₹6,000 + ₹4,000 = ₹70,000</td><td>1,000</td><td>₹70</td><td>100 of 240 hours (42%)</td></tr>
              <tr><td>Marathi</td><td>₹60,000 + ₹6,000 + ₹4,000 = ₹70,000</td><td>980</td><td>about ₹71</td><td>98 of 240 hours (41%)</td></tr>
            </tbody>
          </table>
          <p>In the sheet, cost per contact is <code>=B2/C2</code>. For Tamil that is 1,02,000 / 1,800 = 56.67. For comparison, Telangana's team of about 20 agents costs about ₹6,00,000 a month for 12,000 contacts. That is ₹50 per contact, counting agents only. Counting agents only, Tamil is also ₹50 (90,000 / 1,800).</p>
          <p>Kannada and Marathi agents are busy for only about 40% of their time. Priya plans to use a blended queue. In quiet hours, these agents also answer English chats. Better translated help articles and bot answers can also cut simple contacts. Do not cut quality to save money, though. A bad reply brings repeat contacts, and those cost money too.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what is behind the number?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Priya looks at the made-up pilot report. Sort each finding by its most likely cause.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="lang" data-label="Translation or language quality"></div>
              <div data-sorter-target="bucket" data-bucket="hours" data-label="Hours or staffing"></div>
              <div data-sorter-target="bucket" data-bucket="data" data-label="Not enough data yet"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="lang" data-why="The comments name the language problem directly. No Marathi-speaking agents worked in the pilot.">Marathi CSAT is 57.1%. 9 of 21 unhappy comments say the reply had Hindi words or was hard to understand.</li>
              <li data-bucket="lang" data-why="The QA sample points to the same cause as the comments: AI drafts that nobody could read before sending.">6 of 8 major errors in the Marathi QA sample were Hindi words or grammar</li>
              <li data-bucket="hours" data-why="The only Kannada agent could not cover every shift, so tickets waited overnight.">Kannada's median resolution time is 10.5 hours. Most slow tickets came in after the only Kannada agent's shift.</li>
              <li data-bucket="hours" data-why="Waiting is about coverage, not translation. More hours or a callback promise would help.">8 of 16 unhappy Kannada comments are about waiting until the next day</li>
              <li data-bucket="hours" data-why="The chats are fine in daytime. The gap is the hours when no Tamil speaker is working.">Tamil chats after 7 pm waited longest, when neither Tamil agent was on shift</li>
              <li data-bucket="data" data-why="With 12 answers, one answer moves the score by 8.3 points. Wait for at least 30.">Telugu CSAT in the new states is 83.3%, from 12 surveys</li>
              <li data-bucket="data" data-why="23 answers from many different languages. Read the comments, but do not judge the score yet.">"Other" languages have a CSAT of 56.5%, from 23 surveys</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn language data into a short report for your manager. It will do the maths, flag small samples and suggest causes to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a support analyst for [Swift Mart, an online grocery app]. Here is made-up data for one month, by language:
        Language | Contacts | Surveys | Answers of 4 or 5 | Median resolution (hours) | Monthly cost (₹)
        [English | 1,015 | 203 | 168 | 3.0 | -]
        [Tamil | 450 | 90 | 70 | 4.5 | 25,500]
        [Kannada | 250 | 50 | 34 | 10.5 | 17,500]
        [Marathi | 245 | 49 | 28 | 8.0 | 17,500]
        [Telugu | 60 | 12 | 10 | 3.2 | -]

        1. Make a table with CSAT (answers of 4 or 5 / surveys, as %, 1 decimal) and cost per contact (cost / contacts). Show each sum.
        2. Mark any language with fewer than [30] surveys as "not enough data".
        3. Give 3 findings. For each, say what extra data would confirm the cause, such as survey comments, topic mix or shift times.
        4. Write a 6-line note for [the support manager] with 2 actions to try first.

        Do not claim a cause as fact. Label guesses as guesses. Do not invent numbers.</pre>
            <ul class="ai-try-checks">
              <li>The CSAT maths is right, for example Marathi 28 / 49 = 57.1% and Kannada 34 / 50 = 68.0%.</li>
              <li>Cost per contact is right: Tamil 25,500 / 450 = ₹56.67 and Kannada 17,500 / 250 = ₹70.</li>
              <li>Telugu (12 surveys) is marked "not enough data".</li>
              <li>Causes are written as ideas to check, not as facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Always split your support numbers by language. An overall score hides the customers you serve worst. Check the sample size, read the comments and find the cause before you act. Weigh the cost per contact against the repeat contacts that poor quality creates.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Accessibility and Simple Language</h1>
        </div>
        <p class="lc-lead">Replying in the right language is only half the job. The reply must also be easy to read, hear and act on. In this lesson you will learn to write plain replies in any language. You will learn how screen readers, low reading skills and voice notes change the way you write. You will also learn how AI can simplify a reply, and what a person must still check.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Before and after. Before: one 23-word sentence full of policy words: Dear Customer, your refund request has been initiated to the source account and shall reflect within 5-7 working days subject to bank TAT. It has 4 hard terms: initiated, source, reflect and TAT. After: Hello. We have started your refund. It will reach your bank account in 5 to 7 working days. Questions? Reply here or type agent. Four short sentences, one idea each. Below: three habits: everyday words in every language, own script for screen readers, and a voice note if the customer asks.">
            <defs><marker id="ml14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <text x="10" y="28" font-weight="700" font-size="13" fill="#f9a8d4">Before: policy words</text>
              <text x="420" y="28" font-weight="700" font-size="13" fill="#6ee7b7">After: plain language</text>
              <rect x="10" y="40" width="330" height="200" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="26" y="70">Dear Customer, your refund request</text>
              <text x="26" y="90">has been initiated to the source</text>
              <text x="26" y="110">account and shall reflect within</text>
              <text x="26" y="130">5-7 working days subject to bank TAT.</text>
              <text x="26" y="190" font-size="11.5" fill="#9b99b8">1 sentence, 23 words</text>
              <text x="26" y="210" font-size="11.5" fill="#9b99b8">4 hard terms: initiated, source,</text>
              <text x="26" y="226" font-size="11.5" fill="#9b99b8">reflect, TAT</text>
              <rect x="420" y="40" width="330" height="200" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="436" y="70">Hello.</text>
              <text x="436" y="90">We have started your refund.</text>
              <text x="436" y="110">It will reach your bank account</text>
              <text x="436" y="130">in 5 to 7 working days.</text>
              <text x="436" y="150">Questions? Reply here or type agent.</text>
              <text x="436" y="200" font-size="11.5" fill="#9b99b8">4 short sentences, one idea each</text>
              <text x="436" y="218" font-size="11.5" fill="#9b99b8">Everyday words. Numbers in digits.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ml14a)">
                <line x1="346" y1="140" x2="414" y2="140"/>
              </g>
              <text x="380" y="130" text-anchor="middle" font-size="11" fill="#9b99b8">rewrite</text>
              <g text-anchor="middle" font-size="12">
                <rect x="10" y="258" width="240" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="130" y="281">Everyday words in every language</text>
                <rect x="260" y="258" width="240" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="380" y="281">Own script for screen readers</text>
                <rect x="510" y="258" width="240" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="630" y="281">Voice note if the customer asks</text>
              </g>
            </g>
          </svg>
          <figcaption>The same facts, written plainly. Short sentences with everyday words work better in every language, and they translate more safely too.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who needs simpler support</h3>
          <p>Accessibility means making your support usable by as many people as possible, including people with disabilities. Many of your customers need it more than you think.</p>
          <table class="lc-table">
            <thead><tr><th>Customer</th><th>What helps</th></tr></thead>
            <tbody>
              <tr><td>People who read very little</td><td>Short messages, one step at a time, voice notes, simple pictures with text labels</td></tr>
              <tr><td>Blind or low-vision customers who use a screen reader (an app that reads the screen aloud)</td><td>Real text, not images of text. Their own script. Clear link names. Few emojis.</td></tr>
              <tr><td>Deaf or hard-of-hearing customers</td><td>Chat and WhatsApp that work as well as phone support. Captions on help videos.</td></tr>
              <tr><td>Older customers or people new to smartphones</td><td>Patience, simple steps with the exact button names, a callback option</td></tr>
              <tr><td>People reading in a second language</td><td>Plain words, no idioms, no short forms like "TAT" (turnaround time)</td></tr>
              <tr><td>People on cheap phones or slow networks</td><td>Short text instead of large images or long videos</td></tr>
            </tbody>
          </table>
          <p>For help centre pages, WCAG (the Web Content Accessibility Guidelines) is the common standard. In India, the Rights of Persons with Disabilities Act, 2016 also sets accessibility duties. This is general information, not legal advice. Check with your legal team what applies to you.</p>
        </div>
        <div class="lc-card">
          <h3>Plain language in every language</h3>
          <ul class="lc-list">
            <li><strong>Short sentences.</strong> Aim for under 12 words. Put one idea in each sentence.</li>
            <li><strong>Action first.</strong> Say what happens or what to do, then the details.</li>
            <li><strong>Everyday words.</strong> Use the words customers use, not textbook words.</li>
            <li><strong>Numbers in digits.</strong> Write "5 to 7 working days" and "₹480", in every language.</li>
            <li><strong>Exact button names.</strong> Write "tap My Orders", as it appears in the app.</li>
          </ul>
          <p>AI translation into Indian languages can use formal, textbook words. Everyday speakers use simpler words and many English words, such as "refund" and "order". Here is a made-up Hindi example. Farhan Ali, Swift Mart's Hindi reviewer, should check both lines.</p>
          <table class="lc-table">
            <thead><tr><th>Style</th><th>Hindi (English letters)</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>Formal, textbook</td><td>Aapki dhanraashi aapke khaate mein vaapas kar di jaayegi.</td><td>"Your amount will be returned to your account." The time period is also lost.</td></tr>
              <tr><td>Everyday</td><td>Aapka refund 5 se 7 kaam ke dinon (working days) mein aapke bank account mein aa jaayega.</td><td>"Your refund will reach your bank account in 5 to 7 working days."</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make this reply simpler and translate it into Tamil.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Rewrite this reply in plain English first: sentences under 12 words,
        one idea each, everyday words. Keep every number and "working days".
        Then translate it into everyday spoken Tamil, not formal textbook Tamil.
        Keep English words customers already use, such as refund and order.
        Use the respectful form of "you". List the hard words you replaced.</code></pre>
          <p>Write the plain English version first. A simple source makes a safer translation. Then a native reviewer reads the translation aloud. If it sounds like a government form, it needs work.</p>
        </div>
        <div class="lc-card">
          <h3>Screen readers, images and voice notes</h3>
          <ul class="lc-list">
            <li><strong>Send text, not screenshots.</strong> A screen reader cannot read words inside most images. If you send a picture of the refund steps, also send the steps as text.</li>
            <li><strong>Use the customer's script when they use it.</strong> Screen readers such as TalkBack on Android and VoiceOver on iPhone can read many Indian languages, if the phone has that voice. Support differs by phone and language, so check the current help pages. Text in English letters may be read with English sounds. Test with real users.</li>
            <li><strong>Few emojis.</strong> A screen reader reads each emoji's name aloud, such as "smiling face with smiling eyes".</li>
            <li><strong>Clear links.</strong> Write "Read the refund guide", not "click here".</li>
            <li><strong>Accept voice notes.</strong> Many WhatsApp customers send voice notes. AI can turn speech into text, but it is not perfect for every Indian language and accent. Repeat key details back in text: "You said order SM-50388. Is that right?"</li>
            <li><strong>Offer a voice note back.</strong> If a customer asks, a native-speaking agent records a short voice note. Keep a text copy in the ticket for the record.</li>
          </ul>
          <p>Voice notes can carry personal details. Use only approved tools to transcribe them. Do not paste them into public AI tools.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: make a saved reply accessible</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Priya wants the "refund to bank" saved reply to work for every customer. Put her steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Rewrite the English reply in plain language: short sentences, one idea each, no "TAT" or "initiated".</li>
              <li data-order="2">Check the facts and the glossary: the ₹ amount, "5 to 7 working days" and "Swift Mart Wallet" in English.</li>
              <li data-order="3">Ask AI to translate it into everyday Tamil, Kannada and Marathi, with the respectful "you" and numbers in digits.</li>
              <li data-order="4">Each native reviewer reads their version aloud and swaps textbook words for everyday ones.</li>
              <li data-order="5">Test each version on a phone with a screen reader, in that language.</li>
              <li data-order="6">Record a short voice-note version with a native-speaking agent. Save the text and the voice note in the helpdesk.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a stiff policy reply into a plain, accessible reply in two languages, plus a short voice-note script.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a plain-language editor for customer support at [Swift Mart, an online grocery app]. Many of our customers read little English, use screen readers or prefer voice notes.

        Rewrite this reply:
        "[Dear Customer, your refund request has been initiated to the source account and shall reflect within 5-7 working days subject to bank TAT. For further assistance kindly revert.]"

        Give:
        1. Plain English: sentences under 12 words, one idea each, everyday words, no emojis. Keep every number and the words "working days". Tell the customer they can reply or type "agent".
        2. The same message in simple, everyday [Tamil], in [Tamil] script. Use the respectful form of "you". Keep common English words customers use, such as refund and bank.
        3. A voice-note script of about 20 seconds in [Tamil], written in English letters, for an agent to read aloud.
        4. A table: Hard word in the original | What you used instead | Why.

        Do not add any promise, amount or date that is not in the original. End with: "A native speaker should check parts 2 and 3."</pre>
            <ul class="ai-try-checks">
              <li>Every English sentence has fewer than 12 words, and "5 to 7 working days" is still there.</li>
              <li>No ₹ amount or date appears, because the original had none.</li>
              <li>"TAT", "initiated" and "revert" are replaced with everyday words.</li>
              <li>You still ask a native speaker to check the Tamil text and the voice-note script.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Simple language helps everyone, and it helps most the customers who struggle most. Write a plain source first, then translate into everyday words. Send real text, respect the customer's script and offer voice when they need it.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Capstone: Launch Support in Three New Languages</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together. You will build Swift Mart's launch pack for support in Tamil, Kannada and Marathi. The pack covers the coverage plan, the glossary, translated replies and articles, sensitive cases, a QA plan and 90-day targets. You will also run a go/no-go check. This is a meeting where people decide, with clear rules, if each language is ready to launch.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A launch timeline in five phases. Weeks 1 to 2: plan and glossary, with the coverage plan signed, 24 terms approved and 4 agents hired. Weeks 3 to 5: translate content, 75 saved replies, 40 help articles and bot answers. Week 6: test and train, with a routing test, a QA test of 20 replies and a sensitive-case drill. Week 7: go or no-go, check criteria and launch by language. Weeks 8 to 20: measure for 90 days. Below: Tamil at Core level with 3 agents, reviewer Meena. Kannada at Assisted level with 2 agents, reviewer Raghu. Marathi at Assisted level with 2 agents, reviewer Snehal. Total 4 new hires and 2,42,000 rupees a month.">
            <defs><marker id="ml15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g font-size="12" font-weight="700">
                <text x="78" y="28" fill="#67e8f9">Weeks 1-2</text>
                <text x="229" y="28" fill="#c4b5fd">Weeks 3-5</text>
                <text x="380" y="28" fill="#fcd34d">Week 6</text>
                <text x="531" y="28" fill="#f9a8d4">Week 7</text>
                <text x="682" y="28" fill="#6ee7b7">Weeks 8-20</text>
              </g>
              <rect x="10" y="40" width="136" height="110" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="78" y="66" font-weight="700">Plan, glossary</text>
              <g font-size="11" fill="#9b99b8"><text x="78" y="90">plan signed off</text><text x="78" y="108">24 terms approved</text><text x="78" y="126">4 agents hired</text></g>
              <rect x="161" y="40" width="136" height="110" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="229" y="66" font-weight="700">Translate</text>
              <g font-size="11" fill="#9b99b8"><text x="229" y="90">75 saved replies</text><text x="229" y="108">40 help articles</text><text x="229" y="126">bot answers</text></g>
              <rect x="312" y="40" width="136" height="110" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="66" font-weight="700">Test and train</text>
              <g font-size="11" fill="#9b99b8"><text x="380" y="90">routing test</text><text x="380" y="108">QA test: 20 replies</text><text x="380" y="126">sensitive-case drill</text></g>
              <rect x="463" y="40" width="136" height="110" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="531" y="66" font-weight="700">Go / no-go</text>
              <g font-size="11" fill="#9b99b8"><text x="531" y="90">check the rules</text><text x="531" y="108">decide by language</text><text x="531" y="126">team leads on duty</text></g>
              <rect x="614" y="40" width="136" height="110" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="682" y="66" font-weight="700">Measure</text>
              <g font-size="11" fill="#9b99b8"><text x="682" y="90">weekly QA samples</text><text x="682" y="108">CSAT, resolution</text><text x="682" y="126">review at 90 days</text></g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ml15a)">
                <line x1="147" y1="95" x2="158" y2="95"/>
                <line x1="298" y1="95" x2="309" y2="95"/>
                <line x1="449" y1="95" x2="460" y2="95"/>
                <line x1="600" y1="95" x2="611" y2="95"/>
              </g>
              <rect x="10" y="172" width="236" height="56" rx="10" fill="#27274e" stroke="#93c5fd"/>
              <text x="128" y="195" font-weight="700">Tamil: Core, 3 agents</text>
              <text x="128" y="214" font-size="11" fill="#9b99b8">8am-10pm, reviewer Meena</text>
              <rect x="262" y="172" width="236" height="56" rx="10" fill="#27274e" stroke="#fcd34d"/>
              <text x="380" y="195" font-weight="700">Kannada: Assisted, 2 agents</text>
              <text x="380" y="214" font-size="11" fill="#9b99b8">9am-9pm, reviewer Raghu</text>
              <rect x="514" y="172" width="236" height="56" rx="10" fill="#27274e" stroke="#fcd34d"/>
              <text x="632" y="195" font-weight="700">Marathi: Assisted, 2 agents</text>
              <text x="632" y="214" font-size="11" fill="#9b99b8">9am-9pm, reviewer Snehal</text>
              <text x="380" y="258" font-size="12" fill="#f9a8d4">Go live only when every rule passes, including zero critical errors in the QA test.</text>
              <text x="380" y="284" font-size="12" fill="#9b99b8">Made-up plan: 4 new hires, ₹2,42,000 a month for the three languages.</text>
            </g>
          </svg>
          <figcaption>Swift Mart's launch in five phases. Each language gets its own level, team and native reviewer, and its own go/no-go decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The launch pack: six parts</h3>
          <p>Priya's launch pack has six parts. Each part has an owner and a clear "done when" rule. AI drafts much of the pack. People approve every part.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it contains</th><th>Owner</th><th>Done when</th></tr></thead>
            <tbody>
              <tr><td>1. Coverage plan</td><td>Level, channels, hours and people for each language</td><td>Priya and her manager</td><td>Signed off, and 4 new agents hired and trained</td></tr>
              <tr><td>2. Glossary</td><td>The do-not-translate list, plus 8 approved terms in 3 languages (24 entries)</td><td>Meena, Raghu and Snehal</td><td>Every entry approved and dated</td></tr>
              <tr><td>3. Saved replies and bot answers</td><td>The top 25 saved replies in each language (75 in all), plus bot answers for outside queue hours</td><td>Agents draft with AI, reviewers approve</td><td>Every reply approved, with a version number</td></tr>
              <tr><td>4. Help articles</td><td>Tamil 20, Kannada 10 and Marathi 10 (40 in all)</td><td>A content writer, then the reviewers</td><td>Approved and published</td></tr>
              <tr><td>5. Sensitive-case flow</td><td>Topic flags, approved holding replies, on-duty team leads, a professional translator's contact</td><td>Priya and the legal team</td><td>A test case passes in each language</td></tr>
              <tr><td>6. QA and measurement plan</td><td>Error types, weekly samples, a dashboard by language, 90-day targets</td><td>Priya</td><td>The first weekly report has a date and an owner</td></tr>
            </tbody>
          </table>
          <p>The 8 terms that need approved translations are: refund, delivery slot, packed, cancel, replacement, working days, missing item, and damaged or spoiled. Names such as Swift Mart Wallet, My Orders, FRESH50, UPI and OTP stay in English.</p>
        </div>
        <div class="lc-card">
          <h3>Coverage, people, content and cost</h3>
          <table class="lc-table">
            <thead><tr><th>Language</th><th>Level and hours</th><th>Contacts a month (forecast)</th><th>Agent hours</th><th>People</th><th>Monthly cost</th></tr></thead>
            <tbody>
              <tr><td>Tamil</td><td>Core, 8 am to 10 pm, callback within 4 hours</td><td>1,800</td><td>180</td><td>3 (2 current + 1 new)</td><td>₹1,02,000 (about ₹57 per contact)</td></tr>
              <tr><td>Kannada</td><td>Assisted, 9 am to 9 pm, callback next day</td><td>1,000</td><td>100</td><td>2 (1 current + 1 new)</td><td>₹70,000 (₹70 per contact)</td></tr>
              <tr><td>Marathi</td><td>Assisted, 9 am to 9 pm, callback next day</td><td>980</td><td>98</td><td>2 (both new)</td><td>₹70,000 (about ₹71 per contact)</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>3,780</strong></td><td><strong>378</strong></td><td><strong>7 (4 new hires)</strong></td><td><strong>₹2,42,000</strong></td></tr>
            </tbody>
          </table>
          <p>Agent hours use the course formula: contacts x 6 minutes / 60. The costs are Priya's made-up plan.</p>
          <p><strong>Reviewer time.</strong> Priya estimates the review work, so reviewers can plan their time. She uses Meena's test from the help article work: about 30 minutes for a 350-word article, or about 700 words an hour. A saved reply is about 60 words. Ask each reviewer for their real speed.</p>
          <pre><code>Tamil:   20 articles x 350 + 25 replies x 60 = 7,000 + 1,500 = 8,500 words / 700 = about 12 hours
        Kannada: 10 articles x 350 + 25 replies x 60 = 3,500 + 1,500 = 5,000 words / 700 = about 7 hours
        Marathi: 10 articles x 350 + 25 replies x 60 = 3,500 + 1,500 = 5,000 words / 700 = about 7 hours</code></pre>
          <p>Every saved reply is stored with a record like this one. Then anyone can see which version is approved and by whom.</p>
          <pre><code>Saved reply: REF-BANK-01 (refund to bank account)
        English master: version 3
        Tamil: version 2, approved by Meena Sundaram
        Kannada: version 1, approved by Raghavendra Rao
        Marathi: version 1, approved by Snehal Patil
        Keep exactly: ₹ amount, "5 to 7 working days", Swift Mart Wallet, BANK
        Review again: whenever the English master changes</code></pre>
        </div>
        <div class="lc-card">
          <h3>Go/no-go rules and 90-day targets</h3>
          <p>Priya writes the go/no-go rules before the meeting. This stops anyone from bending them on the day. A language goes live only if all of these are true:</p>
          <ul class="lc-list">
            <li>All 24 glossary entries, the language's saved replies and its help articles are approved.</li>
            <li>In a routing test, 3 or fewer of 100 test messages go to the wrong queue. The first pilot week had 7 of 100.</li>
            <li>In a QA test of 20 replies, at least 19 pass (95%) and none has a critical error.</li>
            <li>The sensitive-case test passes, and the on-duty team lead rota is set.</li>
            <li>Customers can type "agent" to reach a person, and can change their language at any time.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Pilot: Tamil / Kannada / Marathi</th><th>Target at 90 days (each language)</th></tr></thead>
            <tbody>
              <tr><td>CSAT</td><td>77.8% / 68.0% / 57.1%</td><td>80% or more</td></tr>
              <tr><td>Median resolution time</td><td>4.5 h / 10.5 h / 8.0 h</td><td>6 hours or less</td></tr>
              <tr><td>QA pass rate (weekly samples)</td><td>93.3% / 90.0% / 77.5%</td><td>95% or more, with zero critical errors</td></tr>
              <tr><td>Wrong-queue rate</td><td>7% (all languages, first week)</td><td>3% or less</td></tr>
              <tr><td>Cost per contact</td><td>Plan: ₹57 / ₹70 / ₹71</td><td>Within 10% of the plan</td></tr>
            </tbody>
          </table>
          <p>After launch, the weekly QA samples stay the same: 15 Tamil, 10 Kannada and 10 Marathi replies. At the 90-day review, Priya and her manager compare the results with these targets. They then decide to keep, raise or lower each language's level.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the go/no-go meeting</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Readiness sheet">In week 7, Priya opens the readiness sheet. It has one column per language and one row per go/no-go rule.</li>
              <li data-kind="result" data-label="Results">Tamil and Kannada pass every rule. Marathi passes every rule but one. In its QA test, 18 of 20 replies passed, and one had a critical error: it promised a refund "today".</li>
              <li data-kind="user" data-label="Priya asks AI">Priya pastes the readiness sheet, with no customer data, into the approved AI assistant. She asks for a go/no-go summary for each language, with risks.</li>
              <li data-kind="answer" data-label="AI suggests">The AI suggests launching all three: "Marathi is at 90%, close to the 95% target."</li>
              <li data-kind="warn" data-label="Rule bent">The AI treats the rule as a soft target. The rule says zero critical errors. A false refund promise is exactly the harm the rule prevents.</li>
              <li data-kind="check" data-label="People decide">Priya and her manager launch Tamil and Kannada on Monday. Marathi waits one week. Until then, Marathi chats stay with the pilot set-up, and the bot shows the language buttons.</li>
              <li data-kind="tool" data-label="Fix and retest">Snehal rewrites the Marathi reply that caused the error. Priya adds "never promise a refund" to the prompt rules. The team runs a new QA test.</li>
              <li data-kind="result" data-label="Marathi goes live">The retest passes: 20 of 20 replies, no critical errors. Marathi goes live one week later.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a complete launch pack for new support languages. Use Swift Mart's numbers, or put in your own business and languages.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a support launch planner for [Swift Mart, an online grocery app in Telangana]. We will launch support in [Tamil, Kannada and Marathi].

        Facts: forecast contacts a month [Tamil 1,800; Kannada 1,000; Marathi 980]. Average handle time [6] minutes. One agent handles about [120] contact hours a month. Hours: [Tamil 8am-10pm; Kannada and Marathi 9am-9pm], every day. Native reviewers: [Meena (Tamil), Raghu (Kannada), Snehal (Marathi)].

        Draft the launch pack:
        1. Coverage table: language, level, hours, agent hours (show the sum), people needed. Cover opening hours and days off, not only workload.
        2. Glossary: 8 do-not-translate items and 8 terms that need an approved translation.
        3. This saved reply in simple, respectful [Tamil], [Kannada] and [Marathi], each with a back-translation: "We have started your refund of ₹480. It will reach your bank account in 5 to 7 working days. Questions? Reply here or type agent."
        4. QA plan: error types, severity, weekly samples, pass rule.
        5. Go/no-go rules and 90-day targets.

        Keep every number exactly. Mark assumptions. Label part 3 "Draft: a native speaker must check".</pre>
            <ul class="ai-try-checks">
              <li>Agent hours are right: 180, 100 and 98 (contacts x 6 / 60).</li>
              <li>Each language gets at least 2 people, because the queues open every day.</li>
              <li>₹480 and "5 to 7 working days" appear unchanged in all three back-translations.</li>
              <li>The go/no-go rules include zero critical errors, not only a pass-rate target.</li>
              <li>Part 3 is marked as a draft for native speakers to check.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good language launch is a plan with owners, not a translation job. Let AI draft the plan, the glossary and the content. Let native reviewers approve every word customers read. Write your go/no-go rules in advance, and launch each language only when it truly passes them.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

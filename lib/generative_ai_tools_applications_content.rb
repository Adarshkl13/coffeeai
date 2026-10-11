module GenerativeAiToolsApplicationsContent
  # Units (sidebar dividers): 1–4 The Tool Landscape · 5–9 Creating with AI · 10–14 AI in Everyday Work · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">The Generative AI Tool Landscape</h1>
        </div>
        <p class="lc-lead">There are now hundreds of generative AI tools. Generative AI means AI that makes new content, such as text, images, sound or video, from your instructions. In this lesson you will learn the nine main kinds of tools and what each one is good for. You will also see how they fit together on one real task. This matters because the right kind of tool saves you hours, and the wrong one wastes them. Through this course you will follow two people. Grace Lee runs Kettle &amp; Crumb, a made-up bakery-café in Manchester, and is launching an autumn menu. Chris Wong is the marketing lead at Summit Trails Outdoor, a made-up outdoor shop in Denver, and is launching a new hiking boot.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 370" role="img" aria-label="A map of nine kinds of generative AI tools in a three by three grid: chat assistants, search and research, AI inside suites, images and design, audio and voice, music, video, code, and automation. Each box gives short examples. Below the grid, four steps show how the tools fit together for one launch: plan and draft in a chat assistant, create images and video in creative tools, share in everyday apps, then automate repeated tasks.">
            <defs><marker id="gt1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Nine kinds of generative AI tools</text>
              <rect x="15" y="40" width="230" height="58" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="30" y="64" font-weight="700">Chat assistants</text>
              <text x="30" y="85" font-size="11" fill="#9b99b8">ChatGPT, Claude, Gemini, Copilot</text>
              <rect x="265" y="40" width="230" height="58" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="280" y="64" font-weight="700">Search and research</text>
              <text x="280" y="85" font-size="11" fill="#9b99b8">Perplexity, AI answers in search</text>
              <rect x="515" y="40" width="230" height="58" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="530" y="64" font-weight="700">AI inside suites</text>
              <text x="530" y="85" font-size="11" fill="#9b99b8">Microsoft 365, Google Workspace</text>
              <rect x="15" y="108" width="230" height="58" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="30" y="132" font-weight="700">Images and design</text>
              <text x="30" y="153" font-size="11" fill="#9b99b8">Canva, Adobe Firefly, Midjourney</text>
              <rect x="265" y="108" width="230" height="58" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="280" y="132" font-weight="700">Audio and voice</text>
              <text x="280" y="153" font-size="11" fill="#9b99b8">text-to-speech, transcription</text>
              <rect x="515" y="108" width="230" height="58" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="530" y="132" font-weight="700">Music</text>
              <text x="530" y="153" font-size="11" fill="#9b99b8">AI song and jingle makers</text>
              <rect x="15" y="176" width="230" height="58" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="30" y="200" font-weight="700">Video</text>
              <text x="30" y="221" font-size="11" fill="#9b99b8">Gemini Omni, Veo, Runway</text>
              <rect x="265" y="176" width="230" height="58" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="280" y="200" font-weight="700">Code</text>
              <text x="280" y="221" font-size="11" fill="#9b99b8">coding assistants (for developers)</text>
              <rect x="515" y="176" width="230" height="58" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="530" y="200" font-weight="700">Automation</text>
              <text x="530" y="221" font-size="11" fill="#9b99b8">Zapier, Make, Power Automate</text>
              <text x="380" y="266" font-weight="700" fill="#c4b5fd" text-anchor="middle">How they fit together for one launch</text>
              <g text-anchor="middle">
                <rect x="15" y="280" width="160" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="95" y="307">1. Plan and draft</text>
                <rect x="208" y="280" width="160" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="288" y="307">2. Create assets</text>
                <rect x="401" y="280" width="160" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="481" y="307">3. Share in apps</text>
                <rect x="594" y="280" width="151" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="669" y="307">4. Automate repeats</text>
                <text x="380" y="352" font-size="11" fill="#9b99b8">A person checks the result at every step. Tools change often: check current help pages.</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt1a)">
                <line x1="177" y1="302" x2="205" y2="302"/>
                <line x1="370" y1="302" x2="398" y2="302"/>
                <line x1="563" y1="302" x2="591" y2="302"/>
              </g>
            </g>
          </svg>
          <figcaption>Nine kinds of generative AI tools. On a real task you often use several, in this order: plan, create, share, automate.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The nine kinds of tools</h3>
          <p>Most generative AI tools fit into one of nine groups. Many tools now do more than one job. For example, a chat assistant can often make images too. Still, each group has a main strength.</p>
          <table class="lc-table">
            <thead><tr><th>Kind of tool</th><th>What it does</th><th>Examples (described generally)</th></tr></thead>
            <tbody>
              <tr><td><strong>Chat assistants</strong></td><td>You type or speak a request. It writes, explains, plans and answers questions.</td><td>ChatGPT, Claude, Gemini, Microsoft Copilot</td></tr>
              <tr><td><strong>Search and research</strong></td><td>Searches the web and writes an answer with links to its sources.</td><td>Perplexity, AI answers in Google and Bing, "deep research" modes in chat assistants</td></tr>
              <tr><td><strong>AI inside suites</strong></td><td>AI built into the office apps you already use, such as email, documents and spreadsheets.</td><td>Microsoft 365 Copilot, Gemini in Google Workspace</td></tr>
              <tr><td><strong>Images and design</strong></td><td>Makes or edits pictures, posters and social posts.</td><td>Canva, Adobe Firefly, Midjourney, image tools in chat assistants</td></tr>
              <tr><td><strong>Audio and voice</strong></td><td>Turns text into speech (TTS), and speech into text (transcription).</td><td>Voice tools such as ElevenLabs, transcription in meeting apps</td></tr>
              <tr><td><strong>Music</strong></td><td>Makes short songs, jingles or background music from a description.</td><td>AI music makers such as Suno</td></tr>
              <tr><td><strong>Video</strong></td><td>Makes short clips from text or images, or a talking presenter (an "avatar").</td><td>Google's video models (Gemini Omni in the Gemini app; Gemini Omni and Veo in Flow), Runway, Synthesia</td></tr>
              <tr><td><strong>Code</strong></td><td>Helps developers write and fix code. You do not need this group in this course.</td><td>Coding assistants such as GitHub Copilot</td></tr>
              <tr><td><strong>Automation</strong></td><td>Connects apps so a task runs by itself, with an AI step inside.</td><td>Zapier, Make, Microsoft Power Automate</td></tr>
            </tbody>
          </table>
          <p>Tools appear and disappear fast. For example, OpenAI closed its Sora video app in April 2026. So learn the <em>kinds</em> of tools, not only the brand names. Check each tool's current help pages before you rely on a feature.</p>
        </div>
        <div class="lc-card">
          <h3>How the tools fit together: Grace's autumn menu</h3>
          <p>Grace Lee wants to launch the Kettle &amp; Crumb autumn menu on Saturday 17 October 2026. She needs a newsletter, Instagram posts, a poster and a short video. Here is how different tools share the work:</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Tool she uses</th><th>What AI does</th><th>What Grace still does</th></tr></thead>
            <tbody>
              <tr><td>1. Plan and draft</td><td>Chat assistant</td><td>Suggests a launch plan and drafts the newsletter</td><td>Checks prices, dates and allergens. Rewrites in her own voice.</td></tr>
              <tr><td>2. Create assets</td><td>Canva with built-in AI</td><td>Makes a poster and posts in her brand colours</td><td>Swaps in real photos of her food. Checks the text on the image.</td></tr>
              <tr><td>3. Share in apps</td><td>Gmail and Google Docs with Gemini</td><td>Tidies the email and suggests a subject line</td><td>Decides what to send and when</td></tr>
              <tr><td>4. Automate repeats</td><td>An automation tool</td><td>Drafts a post for the weekly special from a spreadsheet</td><td>Approves each draft. Priya then posts it with a real photo.</td></tr>
            </tbody>
          </table>
          <p>Chris Wong uses the same pattern for the Ridgeback Trail Boot ($169). He drafts in a chat assistant, makes product scenes in an image tool and builds staff slides with an AI slide maker. The tools change. The pattern stays the same.</p>
        </div>
        <div class="lc-card">
          <h3>Three things every tool has in common</h3>
          <ul class="lc-list">
            <li><strong>It can be wrong.</strong> AI can state false facts with confidence. This is called a <strong>hallucination</strong>. You must check every price, date, name and claim.</li>
            <li><strong>It needs clear instructions.</strong> A <strong>prompt</strong> is the instruction you give the AI. A vague prompt gives a vague result.</li>
            <li><strong>It may keep what you type.</strong> Some tools use your chats to improve their AI. Never paste private customer, staff or company data into a public AI tool.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Which AI tool should I use for marketing?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run Kettle &amp; Crumb, a small bakery-café in Manchester.
        I am launching an autumn menu on Saturday 17 October 2026.
        I need: a newsletter, 6 Instagram posts, a poster and a 15-second video.
        For each item, tell me which KIND of AI tool fits best
        (chat assistant, image and design, video, AI in my email app).
        Give one reason and one risk for each. Use a table.
        Do not recommend paid tools by price; I will check prices myself.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: match the task to the kind of tool</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up task into the kind of tool that fits it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="chat" data-label="Chat assistant"></div>
              <div data-sorter-target="bucket" data-bucket="creative" data-label="Image, audio or video tool"></div>
              <div data-sorter-target="bucket" data-bucket="suite" data-label="AI inside everyday apps"></div>
              <div data-sorter-target="bucket" data-bucket="auto" data-label="Automation tool"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="chat" data-why="Planning and first drafts of text are the main strength of a chat assistant.">Grace wants five ideas for naming the autumn menu.</li>
              <li data-bucket="creative" data-why="A product scene is an image task, so an image tool fits best.">Chris needs a picture of the Ridgeback boot on a rocky trail for a web banner.</li>
              <li data-bucket="suite" data-why="The email is already in Outlook, so Copilot inside Outlook can summarise it without copying and pasting.">Chris wants a short summary of a long supplier email thread in Outlook.</li>
              <li data-bucket="auto" data-why="A task that repeats every week on a trigger is a job for an automation tool, with a human approval step.">Every Monday, Grace wants the weekly special from her spreadsheet turned into a draft social post.</li>
              <li data-bucket="creative" data-why="Turning a script into speech is a text-to-speech (audio) task.">Chris wants a 30-second in-store announcement read by a text-to-speech voice.</li>
              <li data-bucket="suite" data-why="The draft is already in Google Docs, so Gemini in Docs can rewrite it in place.">Grace wants her Google Docs newsletter draft made shorter and friendlier.</li>
              <li data-bucket="chat" data-why="Explaining an idea and comparing options is a chat assistant job.">Priya, Grace's café manager, wants a simple explanation of what an email open rate is.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Map your own week of tasks to the kinds of AI tools. Then check which ideas are safe and worth testing.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical adviser who helps people choose generative AI tools. Use simple English.

        About me: [I run Kettle &amp; Crumb, a small bakery-café in Manchester].
        My tasks this week:
        - [write a newsletter about our autumn menu]
        - [make 6 Instagram posts and a poster]
        - [reply to supplier emails]
        - [make a 15-second video for social media]
        - [post the weekly special every Monday]

        For each task, make a table with these columns:
        1. Task
        2. Best KIND of tool (chat assistant, search, AI in my office apps, image/design, audio, music, video, automation)
        3. Why it fits (one sentence)
        4. What I must check myself
        5. Any private data I must NOT paste in

        After the table, pick the ONE task where AI would save me the most time, and say why.
        Describe tools generally. Do not invent prices or features. If you name a tool, tell me to check its current help pages.</pre>
            <ul class="ai-try-checks">
              <li>Each task has a kind of tool, not only a brand name.</li>
              <li>The "what I must check" column names real things, such as prices, dates or allergens.</li>
              <li>It warns you about private data, such as customer emails.</li>
              <li>No invented prices or features.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Learn the nine kinds of tools, not just the brand names. Brands change every few months, but the kinds stay the same. On a real task you often plan in a chat assistant, create in a creative tool, share in everyday apps and automate the repeats. You check the result at every step.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Chat Assistants Compared</h1>
        </div>
        <p class="lc-lead">A chat assistant is the tool most people start with. You type or speak a request, and it writes, explains or plans. In this lesson you will compare five popular assistants: ChatGPT, Claude, Gemini, Microsoft Copilot and Perplexity. You will learn what each one is often chosen for, how their plans differ, and which privacy settings to check. Most importantly, you will learn a fair way to test them on your own work. The best assistant is the one that does your task well and keeps your data safe.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Five chat assistant cards side by side. ChatGPT: all-round helper, images and voice. Claude: long documents and careful writing. Gemini: works with Google apps and Search. Microsoft Copilot: Windows and Office apps. Perplexity: web search with sources. A band below says most of them offer a free plan, paid plans, file upload, web search, voice and privacy settings. A row at the bottom shows a fair test: same prompt, compare answers, check facts, choose for this task.">
            <defs><marker id="gt2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Often chosen for (a general view: test them yourself)</text>
              <rect x="12" y="40" width="140" height="92" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="82" y="66" font-weight="700">ChatGPT</text>
              <text x="82" y="92" font-size="11" fill="#9b99b8">All-round helper</text>
              <text x="82" y="110" font-size="11" fill="#9b99b8">images, voice, agents</text>
              <rect x="160" y="40" width="140" height="92" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="230" y="66" font-weight="700">Claude</text>
              <text x="230" y="92" font-size="11" fill="#9b99b8">Long documents</text>
              <text x="230" y="110" font-size="11" fill="#9b99b8">careful writing</text>
              <rect x="308" y="40" width="140" height="92" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="378" y="66" font-weight="700">Gemini</text>
              <text x="378" y="92" font-size="11" fill="#9b99b8">Google apps</text>
              <text x="378" y="110" font-size="11" fill="#9b99b8">and Google Search</text>
              <rect x="456" y="40" width="140" height="92" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="526" y="66" font-weight="700">Copilot</text>
              <text x="526" y="92" font-size="11" fill="#9b99b8">Windows and</text>
              <text x="526" y="110" font-size="11" fill="#9b99b8">Microsoft 365 apps</text>
              <rect x="604" y="40" width="140" height="92" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="674" y="66" font-weight="700">Perplexity</text>
              <text x="674" y="92" font-size="11" fill="#9b99b8">Web search</text>
              <text x="674" y="110" font-size="11" fill="#9b99b8">answers with sources</text>
              <rect x="12" y="148" width="732" height="62" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="378" y="173" font-weight="700">Most of them offer</text>
              <text x="378" y="195" font-size="12" fill="#e2e0f0">a free plan · paid plans · file upload · web search · voice · privacy settings</text>
              <text x="380" y="240" font-weight="700" fill="#c4b5fd">A fair test on your own task</text>
              <rect x="12" y="254" width="165" height="42" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="94" y="280">Same prompt</text>
              <rect x="201" y="254" width="165" height="42" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="283" y="280">Compare answers</text>
              <rect x="390" y="254" width="165" height="42" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="472" y="280">Check the facts</text>
              <rect x="579" y="254" width="165" height="42" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="661" y="280">Choose for this task</text>
              <text x="380" y="320" font-size="11" fill="#9b99b8">Features and plans change often. Check each tool's current help pages.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt2a)">
                <line x1="179" y1="275" x2="198" y2="275"/>
                <line x1="368" y1="275" x2="387" y2="275"/>
                <line x1="557" y1="275" x2="576" y2="275"/>
              </g>
            </g>
          </svg>
          <figcaption>Five popular chat assistants share many features. Each is often chosen for a different strength, so test them on your own task.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five assistants in general words</h3>
          <p>All five can write, summarise, explain and answer questions. Most can also read files you upload, search the web and talk with you by voice. The table shows what each is <em>often chosen for</em>. This is a general view, not a ranking. Each tool improves every few months.</p>
          <table class="lc-table">
            <thead><tr><th>Assistant</th><th>Made by</th><th>Often chosen for</th><th>Good to know</th></tr></thead>
            <tbody>
              <tr><td><strong>ChatGPT</strong></td><td>OpenAI</td><td>An all-round helper: writing, ideas, images, voice chat</td><td>Very wide range of features. Image making is built in.</td></tr>
              <tr><td><strong>Claude</strong></td><td>Anthropic</td><td>Long documents, careful writing and editing</td><td>Can read long files, such as a full report, in one go.</td></tr>
              <tr><td><strong>Gemini</strong></td><td>Google</td><td>Working with Google apps, such as Gmail, Docs and YouTube</td><td>Also built into Google Workspace for business.</td></tr>
              <tr><td><strong>Microsoft Copilot</strong></td><td>Microsoft</td><td>Windows and Microsoft 365 apps, such as Word and Outlook</td><td>The free app is separate from the work version inside Microsoft 365.</td></tr>
              <tr><td><strong>Perplexity</strong></td><td>Perplexity AI</td><td>Searching the web and showing the sources it used</td><td>Good for quick research. Still open the sources and check them.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Plans: free, personal and business</h3>
          <p>Every assistant has a free plan with limits. Paid plans give more use, stronger models and extra features. Plan names and prices change often, so this table shows the general shape in October 2026.</p>
          <table class="lc-table">
            <thead><tr><th>Type of plan</th><th>Who it is for</th><th>What usually changes</th></tr></thead>
            <tbody>
              <tr><td><strong>Free</strong></td><td>Trying it out, light use</td><td>Fewer messages, basic models, fewer uploads</td></tr>
              <tr><td><strong>Paid personal</strong> (for example ChatGPT Plus, Claude Pro, Google AI Pro, Perplexity Pro)</td><td>One person who uses AI every day</td><td>More messages, stronger models, deep research, more image or video use</td></tr>
              <tr><td><strong>Business</strong> (team and enterprise plans)</td><td>Companies</td><td>Admin controls, shared workspaces, and your data is usually not used for training by default</td></tr>
            </tbody>
          </table>
          <p>Grace uses a paid personal plan on one assistant. Chris uses his company's business plan, because Summit Trails Outdoor has a rule: no company data in personal AI accounts. Check each tool's current pricing page before you pay. Prices also differ between the UK and the US.</p>
        </div>
        <div class="lc-card">
          <h3>Privacy settings to check first</h3>
          <p>On free and personal plans, some assistants may use your chats to <strong>train</strong> (improve) their AI unless you turn this off. Some chats may also be read by human reviewers. Before you use any assistant for work, find these settings:</p>
          <table class="lc-table">
            <thead><tr><th>Assistant</th><th>Setting to look for (October 2026)</th></tr></thead>
            <tbody>
              <tr><td>ChatGPT</td><td>Settings, then Data controls, then "Improve the model for everyone". Also "Temporary Chat" for one-off chats.</td></tr>
              <tr><td>Claude</td><td>Privacy settings: a choice about whether your chats can help improve the AI.</td></tr>
              <tr><td>Gemini</td><td>The "Keep Activity" setting, and temporary chats.</td></tr>
              <tr><td>Microsoft Copilot (free app)</td><td>Privacy settings in your account, including training and memory controls.</td></tr>
              <tr><td>Perplexity</td><td>"AI data retention" in your account preferences.</td></tr>
            </tbody>
          </table>
          <p>Menus move often. If you cannot find a setting, search the tool's help pages for "data controls" or "training". Even with training turned off, do not paste private data into a public tool. That includes customer lists, staff details and passwords.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Grace tests two assistants</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Settings first">Grace opens two chat assistants. In each one she finds the data settings and turns off the setting that lets her chats train the AI.</li>
              <li data-kind="user" data-label="Same prompt">She pastes the same prompt into both: "Write a 60-word Instagram caption for Kettle &amp; Crumb's Maple Pecan Cinnamon Bun, £3.60. Warm, local, unfussy. UK spelling. No exclamation marks."</li>
              <li data-kind="answer" data-label="Assistant A">Assistant A writes a cosy caption that fits her voice. It uses one exclamation mark.</li>
              <li data-kind="answer" data-label="Assistant B">Assistant B writes a good caption too. But it adds "award-winning bakery", which is not true.</li>
              <li data-kind="warn" data-label="Invented claim">Both answers sound confident. Only Grace knows that Kettle &amp; Crumb has never won an award. Posting a false claim could mislead customers.</li>
              <li data-kind="check" data-label="Score them">She scores both answers out of 5 for voice, accuracy and following the rules. A gets 4. B gets 3 because of the false claim.</li>
              <li data-kind="thought" data-label="Decide">One test is not enough. She runs two more real tasks before she chooses. She will keep checking every claim, whichever tool she picks.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run this prompt in two different chat assistants. Then compare the answers with the scorecard at the end.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a copywriter for a small business. Use simple English.

        Business: [Summit Trails Outdoor, an outdoor-gear shop in Denver].
        Product: [Ridgeback Trail Boot, a waterproof mid-height hiking boot, $169].
        Offer: [trade in any old pair of boots for $20 off during launch week].
        Launch date: [Thursday 5 November 2026].
        Brand words: [trail-tested, honest, practical, friendly].

        Write:
        1. A 50-word product description for the website.
        2. A short email subject line (under 8 words).
        3. Two Instagram captions (under 40 words each).

        Rules: use ONLY the facts above. Do not invent weights, test results, awards or reviews. If you need a fact I did not give, write [CHECK: what is missing] instead.

        At the end, add a table where I can score your answer from 1 to 5 for: follows my facts, sounds like my brand, clear and short.</pre>
            <ul class="ai-try-checks">
              <li>Every price and date matches what you gave.</li>
              <li>No invented facts, such as a weight or "best boot".</li>
              <li>Missing facts are marked with [CHECK] instead of guessed.</li>
              <li>The tone matches your brand words.</li>
              <li>You compared both assistants on the same scorecard.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> There is no single best chat assistant. Check the privacy settings first. Then give two assistants the same real task, score the answers and check every fact. Choose the one that does your task well, and keep checking its work.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">AI Inside Everyday Apps</h1>
        </div>
        <p class="lc-lead">You may already have AI in the apps you use every day. Email, documents, spreadsheets, design tools and note apps now include AI features. In this lesson you will learn what built-in AI can do in Microsoft 365, Google Workspace, Canva, Notion and Adobe apps. You will also learn when built-in AI is enough, and when a separate chat assistant or creative tool is better. Using what you already have can save you money and keep your work in one safe place.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Before and after. Left: switching apps. Grace copies her draft from Google Docs, pastes it into a separate chat assistant, then copies the answer back: three steps, and the text leaves her work account. Right: built-in AI. She opens the Gemini side panel inside Google Docs, asks for a shorter version and accepts it in place: one step, and the file stays inside her work account. Below: built-in AI is enough for quick edits inside one app; use a separate tool for bigger creative or research tasks.">
            <defs><marker id="gt3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="190" y="24" font-weight="700" fill="#c4b5fd">Switching apps</text>
              <text x="570" y="24" font-weight="700" fill="#c4b5fd">Built-in AI</text>
              <rect x="20" y="40" width="340" height="40" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="190" y="65">Copy the draft from Google Docs</text>
              <rect x="20" y="98" width="340" height="40" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="190" y="123">Paste into a separate chat assistant</text>
              <rect x="20" y="156" width="340" height="40" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="190" y="181">Copy the answer back, fix the layout</text>
              <text x="190" y="222" font-size="12" fill="#f59e0b">3 steps. The text leaves your work account.</text>
              <rect x="400" y="40" width="340" height="98" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="570" y="68">Open the Gemini side panel in Docs</text>
              <text x="570" y="92">"Make this shorter and friendlier"</text>
              <text x="570" y="116">Accept the change in place</text>
              <text x="570" y="222" font-size="12" fill="#10b981">1 step. The file stays in your work account.</text>
              <rect x="20" y="246" width="340" height="66" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="190" y="272" font-weight="700">Built-in is enough</text>
              <text x="190" y="294" font-size="12">quick edits and summaries inside one app</text>
              <rect x="400" y="246" width="340" height="66" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="570" y="272" font-weight="700">Use a separate tool</text>
              <text x="570" y="294" font-size="12">big creative, research or multi-step work</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt3a)">
                <line x1="190" y1="81" x2="190" y2="95"/>
                <line x1="190" y1="139" x2="190" y2="153"/>
              </g>
            </g>
          </svg>
          <figcaption>Built-in AI works where your file already is. It saves steps and keeps work data inside your work account. Bigger jobs may still need a separate tool.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What built-in AI can do</h3>
          <p>Built-in AI usually appears as a button or a <strong>side panel</strong> (a narrow window next to your file). It can see the file you have open, if you allow it. Features depend on your plan and change often, so check each app's current help pages.</p>
          <table class="lc-table">
            <thead><tr><th>App family</th><th>Typical built-in AI tasks</th><th>Plan notes (October 2026, in general)</th></tr></thead>
            <tbody>
              <tr><td><strong>Microsoft 365 Copilot</strong> (Word, Excel, PowerPoint, Outlook, Teams)</td><td>Draft and rewrite in Word, summarise email threads in Outlook, make slides from a document, explain data in Excel</td><td>Home plans (Personal and Family) include some Copilot use. Businesses get a free Copilot Chat with eligible plans. The full in-app version is a paid add-on.</td></tr>
              <tr><td><strong>Gemini in Google Workspace</strong> (Gmail, Docs, Sheets, Slides, Meet)</td><td>"Help me write" in Docs and Gmail, a side panel that can summarise files, help with formulas in Sheets</td><td>Included in Google Workspace business plans. Features vary by plan.</td></tr>
              <tr><td><strong>Canva</strong></td><td>Make posters and posts from a prompt, write captions, remove backgrounds, resize designs for each platform</td><td>More AI use on paid plans. The Brand Kit (your colours, fonts and logo) is fuller on paid plans.</td></tr>
              <tr><td><strong>Notion</strong></td><td>Summarise notes, draft pages, answer questions about your workspace</td><td>Full Notion AI comes with Business and Enterprise plans. Free and Plus plans get a limited trial.</td></tr>
              <tr><td><strong>Adobe</strong> (Firefly, Photoshop, Adobe Express)</td><td>Make images, add or remove objects in a photo, extend a background</td><td>Uses "generative credits". Adobe says its Firefly models are trained on licensed and public-domain content.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Why built-in AI can be the safer choice at work</h3>
          <ul class="lc-list">
            <li><strong>Your data stays in one place.</strong> In a business account, the vendor's terms usually say your files are not used to train its AI. Check your plan's terms, or ask your IT team.</li>
            <li><strong>It knows your context.</strong> Copilot in Outlook can read the email thread you have open. You do not need to copy and paste it.</li>
            <li><strong>It follows company settings.</strong> Admins can turn features on or off for everyone.</li>
            <li><strong>It saves steps.</strong> You edit the file where it lives, so the layout stays the same.</li>
          </ul>
          <p>Chris has Microsoft 365 Copilot at Summit Trails Outdoor. He wants a summary of a long email thread with the boot supplier.</p>
          <p><strong>Weak prompt in Outlook:</strong></p>
          <pre><code>Summarise.</code></pre>
          <p><strong>Better prompt in the Copilot pane in Outlook:</strong></p>
          <pre><code>Summarise this email thread about the Ridgeback Trail Boot delivery.
        List: the agreed delivery date, the number of pairs per size,
        any open questions, and who must reply to whom.
        Quote the exact dates and numbers from the emails.
        If something is not agreed yet, say "not agreed".</code></pre>
          <p>Chris still opens the emails to check the dates and numbers. A summary can miss a late change, such as a new delivery date in the last reply.</p>
        </div>
        <div class="lc-card">
          <h3>When built-in AI is enough, and when it is not</h3>
          <table class="lc-table">
            <thead><tr><th>Built-in AI is usually enough</th><th>A separate tool is usually better</th></tr></thead>
            <tbody>
              <tr><td>Shortening or rewording text in a document</td><td>Brainstorming many ideas, or a long back-and-forth plan</td></tr>
              <tr><td>Summarising an email thread or a meeting</td><td>Research across many web sources</td></tr>
              <tr><td>A quick social post in your brand colours (Canva)</td><td>Detailed product images or video scenes</td></tr>
              <tr><td>A first draft of a formula or chart in a spreadsheet</td><td>Comparing several long files at once</td></tr>
            </tbody>
          </table>
          <p>Grace uses Gemini in Google Docs to tidy her newsletter. She uses Canva's AI with her Brand Kit for the autumn poster, so the deep teal, cream and burnt orange colours are right. For a big brainstorm about the menu launch, she opens her chat assistant.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: built-in or separate?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Decide if built-in AI is enough for each made-up task, or if a separate tool is better.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="builtin" data-label="Built-in AI is enough"></div>
              <div data-sorter-target="bucket" data-bucket="separate" data-label="Use a separate tool"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="builtin" data-why="The text is already in Docs. A quick rewrite in place is a perfect job for the built-in side panel.">Grace wants her newsletter paragraph in Google Docs made 30% shorter.</li>
              <li data-bucket="builtin" data-why="Copilot in Outlook can read the open thread, and the data stays in the company account.">Chris needs the key dates from a 14-email thread in Outlook.</li>
              <li data-bucket="separate" data-why="Comparing many web sources is a research task. An AI search tool shows its sources so Chris can check them.">Chris wants to research what hikers in Colorado say they need from a winter boot.</li>
              <li data-bucket="builtin" data-why="Canva's AI with the Brand Kit keeps her colours and logo correct in one step.">Grace needs an Instagram post for the Autumn Pairing (£6.80) in her brand colours.</li>
              <li data-bucket="separate" data-why="A long planning chat with many ideas and rounds of feedback suits a chat assistant.">Grace wants 20 ideas for the tasting evening on Thursday 15 October, then wants to discuss the best three.</li>
              <li data-bucket="separate" data-why="A realistic product scene needs a dedicated image tool. Chris must still check that the boot looks like the real product.">Chris needs a realistic image of the boot on a snowy trail for a web banner.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Check which AI features you already have in your everyday apps, and plan where to use them first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly adviser who helps people use the AI already built into their everyday apps. Use simple English.

        My apps: [Gmail, Google Docs and Google Sheets on a business plan; Canva on a paid plan; Instagram].
        My job: [I own a small bakery-café and do my own marketing].
        My common weekly tasks: [write a newsletter, answer supplier emails, make social posts, update a price list].

        Please:
        1. For each app, list the TYPES of built-in AI features it may have (describe generally; features vary by plan).
        2. For each weekly task, say: built-in AI is enough, OR a separate tool is better. Give one reason.
        3. Tell me what to check in my plan or settings before I use each feature for work data.
        4. Suggest the ONE built-in feature I should try first this week, with an example request I could type.

        Use a table for step 2. Do not invent exact feature names or prices. Tell me to check each app's help pages.</pre>
            <ul class="ai-try-checks">
              <li>Features are described generally, not invented with exact names.</li>
              <li>Each task has a clear "built-in" or "separate tool" choice with a reason.</li>
              <li>It tells you to check plan terms or data settings.</li>
              <li>The first feature to try has a usable example request.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Look at the AI you already pay for before you buy something new. Built-in AI is often enough for quick edits and summaries, and it keeps work data in your work account. Use a separate tool for big creative, research or planning jobs. Either way, check the result.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Choosing the Right Tool</h1>
        </div>
        <p class="lc-lead">New AI tools appear every week, and most of them say they are the best. In this lesson you will learn a simple way to choose. You will judge each tool on five things: task fit, quality, cost, privacy and data settings, and accessibility. Then you will put the scores into a weighted comparison table. A weighted table gives more points to the things that matter most to you. This helps you make a calm, fair choice, and explain it to your team or manager.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Left: Grace's five criteria with weights out of 100: task fit 30, quality 25, privacy 20, cost 15, ease and accessibility 10. Right: weighted scores out of 5 for three options for her launch posters and posts: Canva with built-in AI 4.55, Gemini in Google Workspace 4.05, chat assistant on a paid personal plan 3.90. Below: the highest score guides the choice, but Grace decides, and still uses the chat assistant for long drafts.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="190" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Grace's criteria (weights add to 100)</text>
              <text x="30" y="58">Task fit</text>
              <rect x="170" y="44" width="120" height="20" rx="4" fill="#8b5cf6"/>
              <text x="298" y="59" font-size="12">30</text>
              <text x="30" y="98">Quality</text>
              <rect x="170" y="84" width="100" height="20" rx="4" fill="#3b82f6"/>
              <text x="278" y="99" font-size="12">25</text>
              <text x="30" y="138">Privacy</text>
              <rect x="170" y="124" width="80" height="20" rx="4" fill="#10b981"/>
              <text x="258" y="139" font-size="12">20</text>
              <text x="30" y="178">Cost</text>
              <rect x="170" y="164" width="60" height="20" rx="4" fill="#f59e0b"/>
              <text x="238" y="179" font-size="12">15</text>
              <text x="30" y="218">Ease and access</text>
              <rect x="170" y="204" width="40" height="20" rx="4" fill="#ec4899"/>
              <text x="218" y="219" font-size="12">10</text>
              <line x1="380" y1="40" x2="380" y2="226" stroke="#9b99b8" stroke-dasharray="4 4"/>
              <text x="575" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Weighted score out of 5</text>
              <text x="410" y="54">Canva with built-in AI</text>
              <rect x="410" y="62" width="273" height="22" rx="4" fill="#27274e" stroke="#10b981"/>
              <text x="691" y="78" font-weight="700">4.55</text>
              <text x="410" y="114">Gemini in Google Workspace</text>
              <rect x="410" y="122" width="243" height="22" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="661" y="138" font-weight="700">4.05</text>
              <text x="410" y="174">Chat assistant (paid personal plan)</text>
              <rect x="410" y="182" width="234" height="22" rx="4" fill="#27274e" stroke="#8b5cf6"/>
              <text x="652" y="198" font-weight="700">3.90</text>
              <rect x="20" y="246" width="720" height="62" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="272" text-anchor="middle">Task: launch posters and posts. Highest score: Canva with built-in AI.</text>
              <text x="380" y="294" text-anchor="middle" font-size="12" fill="#9b99b8">The scores guide the choice. Grace decides, and keeps her chat assistant for long drafts.</text>
            </g>
          </svg>
          <figcaption>Give each criterion a weight, score each tool from 1 to 5, and add up the weighted points. All scores are made up for this example.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five things to judge</h3>
          <table class="lc-table">
            <thead><tr><th>Criterion</th><th>Question to ask</th><th>How to find out</th></tr></thead>
            <tbody>
              <tr><td><strong>Task fit</strong></td><td>Is this tool made for my kind of task?</td><td>Read what the tool is for. Try it on one real task.</td></tr>
              <tr><td><strong>Quality</strong></td><td>Are the results good enough to use after light editing?</td><td>Test it on 2 or 3 real tasks. Count how many fixes you need.</td></tr>
              <tr><td><strong>Cost</strong></td><td>What will I really pay each month, and what do I already pay for?</td><td>Check the current pricing page. Look for usage limits and "credits" (units that some tools use up per image or video).</td></tr>
              <tr><td><strong>Privacy and data settings</strong></td><td>Where does my data go? Is it used for training? Does it follow my company's rules?</td><td>Read the privacy page and data settings. At work, ask IT which tools are approved.</td></tr>
              <tr><td><strong>Accessibility</strong></td><td>Can everyone on my team use it easily?</td><td>Check voice input, read-aloud, captions, keyboard and screen reader support, languages and phone apps.</td></tr>
            </tbody>
          </table>
          <p>Accessibility means a tool works well for people with different needs. For example, a team member with dyslexia may need read-aloud. A colleague who uses a screen reader needs a tool that works with it.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Grace's weighted table</h3>
          <p>Grace's task: make posters and Instagram posts for the autumn menu launch on Saturday 17 October 2026. She compares three options she can use today. She scores each one from 1 (poor) to 5 (great). Then she multiplies each score by its weight and adds them up.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Fit (30)</th><th>Quality (25)</th><th>Cost (15)</th><th>Privacy (20)</th><th>Ease (10)</th><th>Points</th><th>Score out of 5</th></tr></thead>
            <tbody>
              <tr><td>Chat assistant (paid personal plan)</td><td>4</td><td>5</td><td>3</td><td>3</td><td>4</td><td>390</td><td>3.90</td></tr>
              <tr><td>Canva with built-in AI</td><td>5</td><td>4</td><td>5</td><td>4</td><td>5</td><td>455</td><td>4.55</td></tr>
              <tr><td>Gemini in Google Workspace</td><td>3</td><td>4</td><td>5</td><td>5</td><td>4</td><td>405</td><td>4.05</td></tr>
            </tbody>
          </table>
          <p>How the Canva row works: <code>(5 × 30) + (4 × 25) + (5 × 15) + (4 × 20) + (5 × 10) = 455</code> points. Divide by 100 to get 4.55 out of 5.</p>
          <p>Canva wins for this task. It fits design work, she already pays for it, and her Brand Kit keeps the colours right. But the table does not decide for her. For the long newsletter draft, the chat assistant still writes best. One tool rarely does every job.</p>
          <p>You can ask AI to help build the table, but give it your own scores. AI does not know your budget, your data rules or how the tool worked for you.</p>
          <pre><code>Make a weighted comparison table. Criteria and weights:
        task fit 30, quality 25, privacy 20, cost 15, ease 10.
        Here are my scores from 1 to 5 for three tools: [paste scores].
        Work out the points and the score out of 5. Show the sum for one row
        so I can check it. Do not change my scores.</code></pre>
          <p>Always check the sums yourself, or in a spreadsheet. AI can make arithmetic mistakes.</p>
        </div>
        <div class="lc-card">
          <h3>Red flags when choosing a tool</h3>
          <ul class="lc-list">
            <li>No clear privacy page, or no way to stop your data being used for training.</li>
            <li>Big claims with no proof, such as "100% accurate" or "never makes mistakes".</li>
            <li>You must pay a year in advance before you can test it.</li>
            <li>It asks for access to all your email, files or social accounts when the task does not need it.</li>
            <li>At work: the tool is not on your company's approved list. Ask first. Do not use it "just this once" with company data.</li>
          </ul>
          <p>Chris checks the approved list at Summit Trails Outdoor before he tests a new AI video tool. It is not approved yet. So he tests it only with made-up text, not with customer data or unreleased product photos.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: choose a tool step by step</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Chris's steps for choosing an AI slide maker for boot training in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the task in one sentence: "Make 6 training slides about the Ridgeback Trail Boot for store staff."</li>
              <li data-order="2">List 2 or 3 options, starting with what the company already pays for, such as Copilot in PowerPoint.</li>
              <li data-order="3">Check each option's privacy settings and the company's approved tools list.</li>
              <li data-order="4">Agree the weights for task fit, quality, cost, privacy and accessibility with his manager.</li>
              <li data-order="5">Test each option with the same real brief and the same facts.</li>
              <li data-order="6">Score each option, check every fact on the slides, and add up the weighted points.</li>
              <li data-order="7">Choose, write down why, and plan to review the choice in three months.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to set up a weighted comparison for one task you do often. Then fill in the scores from your own tests.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful adviser who helps people choose AI tools fairly. Use simple English.

        My task: [make training slides about a new product for 12 store staff].
        Where I work: [Summit Trails Outdoor, an outdoor-gear shop in Denver].
        Tools I already have: [Microsoft 365 with Copilot; a chat assistant on a business plan].
        Options I am thinking about: [Copilot in PowerPoint; an AI slide maker; a chat assistant plus manual slides].
        My rules: [no customer data in personal AI accounts; staff use phones and laptops].

        Please:
        1. Suggest weights (adding up to 100) for: task fit, quality, cost, privacy and data settings, accessibility. Explain each weight in one line.
        2. For each option, list 3 things I should test, and the privacy setting I should check.
        3. Give me an empty scoring table (1 to 5) with a Points column and a "score out of 5" column, and show the formula.
        4. List 3 red flags that should rule a tool out.

        Do not score the tools yourself. Do not invent prices or features. Remind me to check current help pages.</pre>
            <ul class="ai-try-checks">
              <li>The weights add up to 100.</li>
              <li>The table is empty for you to score, with a clear formula.</li>
              <li>Privacy checks fit your rules, such as no customer data.</li>
              <li>No invented prices or features.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Choose a tool for a task, not a tool for everything. Judge task fit, quality, cost, privacy and accessibility, and weight what matters most to you. Use your own test results for the scores. The table guides you, but you make the decision and can explain it.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Writing and Editing with AI</h1>
        </div>
        <p class="lc-lead">Writing is the most common thing people do with generative AI. AI can give you a first draft in seconds. It can also rewrite, shorten, change the tone and translate. But AI text often sounds the same for everyone, and it can add facts that are not true. In this lesson you will learn a five-step writing workflow. You will write a short voice guide so AI sounds like you. You will also learn what you must check before anything goes out with your name on it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A voice guide box at the top says: warm, local, homemade, unfussy. Arrows go from it to steps 2 and 3. Below are five steps in a row: 1 Brief, you give the goal, facts and length. 2 AI draft, a first draft fast. 3 Your voice, you and AI rewrite in your words. 4 Check facts, you check prices, dates and claims. 5 Publish, you send or post it.">
            <defs><marker id="gt5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="145" y="14" width="470" height="40" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="39">Voice guide: warm, local, homemade, unfussy</text>
              <rect x="12" y="92" width="136" height="64" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="80" y="118" font-weight="700">1. Brief</text>
              <text x="80" y="140" font-size="11" fill="#9b99b8">goal, facts, length</text>
              <rect x="160" y="92" width="136" height="64" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="228" y="118" font-weight="700">2. AI draft</text>
              <text x="228" y="140" font-size="11" fill="#9b99b8">a first draft, fast</text>
              <rect x="308" y="92" width="136" height="64" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="376" y="118" font-weight="700">3. Your voice</text>
              <text x="376" y="140" font-size="11" fill="#9b99b8">rewrite in your words</text>
              <rect x="456" y="92" width="136" height="64" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="524" y="118" font-weight="700">4. Check facts</text>
              <text x="524" y="140" font-size="11" fill="#9b99b8">prices, dates, claims</text>
              <rect x="604" y="92" width="136" height="64" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="672" y="118" font-weight="700">5. Publish</text>
              <text x="672" y="140" font-size="11" fill="#9b99b8">send or post it</text>
              <text x="80" y="182" font-size="12" fill="#c4b5fd">You</text>
              <text x="228" y="182" font-size="12" fill="#22d3ee">AI</text>
              <text x="376" y="182" font-size="12" fill="#c4b5fd">You + AI</text>
              <text x="524" y="182" font-size="12" fill="#c4b5fd">You</text>
              <text x="672" y="182" font-size="12" fill="#c4b5fd">You</text>
              <text x="380" y="222" font-size="11" fill="#9b99b8">AI writes the first draft. You own the final words and every fact in them.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt5a)">
                <line x1="250" y1="55" x2="234" y2="89"/>
                <line x1="350" y1="55" x2="370" y2="89"/>
                <line x1="149" y1="124" x2="157" y2="124"/>
                <line x1="297" y1="124" x2="305" y2="124"/>
                <line x1="445" y1="124" x2="453" y2="124"/>
                <line x1="593" y1="124" x2="601" y2="124"/>
              </g>
            </g>
          </svg>
          <figcaption>The five-step writing workflow. A short voice guide helps AI sound like you. A person checks every fact before anything is published.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI can do with your writing</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Example request</th><th>What you still check</th></tr></thead>
            <tbody>
              <tr><td><strong>Draft</strong></td><td>"Write a 120-word newsletter intro about our autumn menu."</td><td>Every fact, and whether it sounds like you</td></tr>
              <tr><td><strong>Rewrite</strong></td><td>"Make this clearer. Keep my words where you can."</td><td>That the meaning did not change</td></tr>
              <tr><td><strong>Change the tone</strong></td><td>"Make this supplier email polite but firm."</td><td>That it is not too cold or too friendly</td></tr>
              <tr><td><strong>Shorten</strong></td><td>"Cut this to 40 words for Instagram."</td><td>That key details, such as allergens, were not cut</td></tr>
              <tr><td><strong>Translate</strong></td><td>"Translate this sign into Spanish for our customers."</td><td>A fluent speaker checks it before it is printed</td></tr>
              <tr><td><strong>Proofread</strong></td><td>"List spelling and grammar mistakes. Do not rewrite."</td><td>That each change is really a mistake</td></tr>
            </tbody>
          </table>
          <p>You can do this in a chat assistant, or with the built-in AI in Word, Google Docs or Gmail. Built-in AI is handy for quick edits in the document you already have open.</p>
        </div>
        <div class="lc-card">
          <h3>Keep your own voice with a voice guide</h3>
          <p>Your <strong>voice</strong> is how your writing sounds: the words you choose, how long your sentences are and how friendly you are. Without guidance, AI often uses the same polished words, such as "indulge" or "elevate". A <strong>voice guide</strong> is a short note that tells AI how you write. Save it and paste it into your prompts.</p>
          <p><strong>Grace's voice guide for Kettle &amp; Crumb:</strong></p>
          <pre><code>Voice: warm, local, homemade, unfussy.
        Write like a friendly neighbour, not an advert.
        Short sentences. UK spelling. At most one exclamation mark per piece.
        Never use: indulgent, artisanal, elevate, treat yourself.
        Mention Ancoats or Manchester when it fits.
        Example of my writing: "Tom's been up since five. The loaves
        are still warm. Come and grab one before they go."</code></pre>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a newsletter about our autumn menu.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>[Paste voice guide]
        Write a 120-word newsletter intro for Kettle &amp; Crumb.
        Facts (use only these): autumn menu launches Saturday 17 October 2026.
        Spiced Pear &amp; Ginger Loaf, £3.40 a slice. Autumn Pairing: any latte
        and a Maple Pecan Cinnamon Bun for £6.80. The bun contains nuts.
        Do not add any facts, awards or reviews. Give me two versions.</code></pre>
          <p><strong>Typical AI draft (before):</strong> "Indulge in our artisanal autumn collection! Elevate your mornings with our award-winning bakes."</p>
          <p><strong>After Grace's edit:</strong> "Autumn is here in Ancoats. From Saturday 17 October, Tom's Spiced Pear &amp; Ginger Loaf is on the counter at £3.40 a slice. Pair any latte with a Maple Pecan Cinnamon Bun for £6.80. (The bun contains nuts.)"</p>
          <p>The AI draft also said "award-winning". Kettle &amp; Crumb has no award, so Grace removed it.</p>
        </div>
        <div class="lc-card">
          <h3>What you must check before you publish</h3>
          <ul class="lc-list">
            <li><strong>Facts:</strong> prices, dates, opening times, product details, allergens. Compare them with your own price list, not with the AI's text.</li>
            <li><strong>Claims:</strong> "award-winning", "best in Manchester", "100% waterproof". Remove any claim you cannot prove.</li>
            <li><strong>Reviews:</strong> never ask AI to write fake customer reviews or testimonials. Fake reviews are banned in the UK (Digital Markets, Competition and Consumers Act 2024) and by a US FTC rule. This is general information, not legal advice.</li>
            <li><strong>Translations:</strong> AI translation is a good first draft. A fluent speaker should check anything customers will rely on, such as allergy or safety text.</li>
            <li><strong>Private data:</strong> do not paste customer emails, complaints with names, or staff details into a public AI tool. Remove names first, or use your company's approved tool.</li>
          </ul>
          <p>Chris asks AI to translate the Ridgeback Trail Boot shelf sign into Spanish for customers in Denver. The draft is good, but one word for "waterproof" sounds odd. Dana, the store manager, speaks Spanish fluently. She fixes it before the sign is printed.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Grace writes her launch newsletter</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Brief">Grace pastes her voice guide and the facts into her chat assistant. She asks for a 120-word newsletter intro for the launch on Saturday 17 October 2026.</li>
              <li data-kind="answer" data-label="Draft">The AI writes two friendly versions. Version B sounds most like her: short sentences, and it mentions Ancoats.</li>
              <li data-kind="warn" data-label="Added fact">Version B also says "oat milk at no extra charge". Grace has not decided that. The AI made it up to sound helpful.</li>
              <li data-kind="check" data-label="Fact check">She deletes the oat milk line. She checks every price against her menu: loaf £3.40 a slice, pairing £6.80. She adds the nut warning for the bun.</li>
              <li data-kind="tool" data-label="Built-in edit">She pastes the text into Google Docs and uses Gemini's built-in rewrite to make one long sentence shorter.</li>
              <li data-kind="check" data-label="Read aloud">She reads the final text out loud. One phrase still sounds like an advert, so she rewrites it in her own words.</li>
              <li data-kind="result" data-label="Ready">Priya reads it with fresh eyes and finds one typo. The newsletter is ready for the 1,850 subscribers.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>First build a voice guide from your own writing. Then use it to draft one real piece and check it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an editor who helps people keep their own voice when they write with AI. Use simple English.

        Here are 3 short samples of my own writing:
        1. [Tom's been up since five. The loaves are still warm. Come and grab one before they go.]
        2. [We're closed on Monday for a deep clean. Back Tuesday with fresh buns.]
        3. [Thanks to everyone who came to our birthday. We ran out of cake by noon. Sorry, and thank you.]

        Step 1: Describe my voice in 5 short bullet points (sentence length, tone, words I use, words I avoid).
        Step 2: Using that voice, write [a 100-word Instagram post about our new autumn menu, launching Saturday 17 October 2026, with the Autumn Pairing: any latte and a cinnamon bun for £6.80].
        Step 3: List every fact you used in a table: fact, where it came from (my text or your idea).

        Rules: use only facts I gave you. If you add anything new, mark it [CHECK]. No awards, reviews or claims I did not give you.</pre>
            <ul class="ai-try-checks">
              <li>The voice description matches how you really write.</li>
              <li>The draft uses only your facts; anything new is marked [CHECK].</li>
              <li>Prices and dates are exactly right.</li>
              <li>No fake reviews, awards or claims.</li>
              <li>Read it aloud: does it sound like you? Edit until it does.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI do the first draft and the boring edits. Use a voice guide so it sounds like you, then rewrite what still does not. You own every word you publish: check each fact, remove claims you cannot prove, and never publish fake reviews.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Creating Images with AI</h1>
        </div>
        <p class="lc-lead">AI image tools can make a poster background, a social post or a product scene in seconds. They can also edit a photo you already have. But AI images can look generic, break your brand, or show things that are not true. In this lesson you will learn a six-part image prompt. You will learn how to edit images and keep a consistent brand look. You will also learn the rules on rights, labels and content credentials. You will also learn when a real photo is the better choice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Top row: six parts of an image prompt. Subject: bun and latte. Setting: café table. Style: photo-style. Light: morning sun. Colours: teal and cream. Format: square 1:1. They join into one prompt. Below are four steps: 1 Generate, try 3 or 4 versions. 2 Edit, fix, swap or expand. 3 Brand check, colours, logo and look. 4 Rights and label, consent and credentials. A note at the bottom says: add avoid rules such as no text, no faces, no logos you do not own. Use real photos for the real menu items you sell.">
            <defs><marker id="gt6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="14" width="116" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="70" y="37" font-weight="700">Subject</text>
              <text x="70" y="57" font-size="11" fill="#9b99b8">bun + latte</text>
              <rect x="136" y="14" width="116" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="194" y="37" font-weight="700">Setting</text>
              <text x="194" y="57" font-size="11" fill="#9b99b8">café table</text>
              <rect x="260" y="14" width="116" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="318" y="37" font-weight="700">Style</text>
              <text x="318" y="57" font-size="11" fill="#9b99b8">photo-style</text>
              <rect x="384" y="14" width="116" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="442" y="37" font-weight="700">Light</text>
              <text x="442" y="57" font-size="11" fill="#9b99b8">morning sun</text>
              <rect x="508" y="14" width="116" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="566" y="37" font-weight="700">Colours</text>
              <text x="566" y="57" font-size="11" fill="#9b99b8">teal, cream</text>
              <rect x="632" y="14" width="116" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="690" y="37" font-weight="700">Format</text>
              <text x="690" y="57" font-size="11" fill="#9b99b8">square 1:1</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="70" y1="70" x2="70" y2="86"/>
                <line x1="194" y1="70" x2="194" y2="86"/>
                <line x1="318" y1="70" x2="318" y2="86"/>
                <line x1="442" y1="70" x2="442" y2="86"/>
                <line x1="566" y1="70" x2="566" y2="86"/>
                <line x1="690" y1="70" x2="690" y2="86"/>
                <line x1="70" y1="86" x2="690" y2="86"/>
              </g>
              <text x="380" y="104" font-size="11" fill="#9b99b8">one clear prompt</text>
              <rect x="13" y="126" width="170" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="98" y="151" font-weight="700">1. Generate</text>
              <text x="98" y="171" font-size="11" fill="#9b99b8">try 3 or 4 versions</text>
              <rect x="201" y="126" width="170" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="286" y="151" font-weight="700">2. Edit</text>
              <text x="286" y="171" font-size="11" fill="#9b99b8">fix, swap, expand</text>
              <rect x="389" y="126" width="170" height="60" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="474" y="151" font-weight="700">3. Brand check</text>
              <text x="474" y="171" font-size="11" fill="#9b99b8">colours, logo, look</text>
              <rect x="577" y="126" width="170" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="662" y="151" font-weight="700">4. Rights + label</text>
              <text x="662" y="171" font-size="11" fill="#9b99b8">consent, credentials</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt6a)">
                <line x1="98" y1="86" x2="98" y2="123"/>
                <line x1="184" y1="156" x2="198" y2="156"/>
                <line x1="372" y1="156" x2="386" y2="156"/>
                <line x1="560" y1="156" x2="574" y2="156"/>
              </g>
              <rect x="90" y="208" width="580" height="34" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="230" font-size="12">Avoid rules: no text, no faces, no logos you do not own</text>
              <text x="380" y="272" font-size="11" fill="#9b99b8">Selling a real item? Use a real photo of it. Use AI for mood, backgrounds and ideas.</text>
            </g>
          </svg>
          <figcaption>A good image prompt has six parts. Then you generate a few versions, edit, check the brand, and check rights and labels before you post.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Image tools and what they are good at</h3>
          <p>Many tools can make images now. They change often, so check each tool's current help pages. In general words:</p>
          <table class="lc-table">
            <thead><tr><th>Kind of tool</th><th>Examples</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><strong>Image tools in chat assistants</strong></td><td>Image generation in ChatGPT, image tools in the Gemini app</td><td>Quick ideas, and editing by asking in plain words ("make the background lighter")</td></tr>
              <tr><td><strong>Design tools with AI</strong></td><td>Canva, Adobe Express</td><td>Posters and posts that use your saved brand colours, fonts and logo</td></tr>
              <tr><td><strong>Creative image tools</strong></td><td>Adobe Firefly, Midjourney</td><td>Detailed scenes, styles and photo editing such as removing or adding objects</td></tr>
            </tbody>
          </table>
          <p>Most tools can also <strong>edit</strong> an image: remove an object, change the background, or <strong>expand</strong> it (add more scene around the edges so it fits a new shape). Editing your own real photo is often better than making a new image from nothing.</p>
        </div>
        <div class="lc-card">
          <h3>Write an image prompt in six parts</h3>
          <p>A short prompt gives a random, generic picture. Use six parts: <strong>subject</strong> (what is in the picture), <strong>setting</strong> (where), <strong>style</strong> (photo, illustration, watercolour), <strong>light</strong>, <strong>colours</strong> and <strong>format</strong> (shape). The format is the <strong>aspect ratio</strong>: the shape of the image. Square (1:1) suits a feed post. Tall (9:16) suits stories and Reels.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>A nice autumn picture for my café.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>A square (1:1) photo-style image of a cinnamon bun and a latte
        on a wooden café table. Soft morning light from a window.
        Colours: cream and deep teal, with a few burnt orange autumn
        leaves in the background, slightly out of focus.
        Warm, homemade, unfussy mood. Not glossy or luxury.
        Avoid: any text or letters, people's faces, logos, brand names.</code></pre>
          <p>Ask for three or four versions. Pick the best one, then edit it with short requests: "Make the leaves smaller." "Move the cup to the left." Change one thing at a time.</p>
          <p><strong>Why "no text"?</strong> AI images can still spell words wrongly or add strange letters. Add your text later in Canva, where you control every letter. Then check prices and dates on the finished poster.</p>
        </div>
        <div class="lc-card">
          <h3>Keep your brand consistent</h3>
          <ul class="lc-list">
            <li><strong>Save a style prompt.</strong> Grace keeps one paragraph that describes her look: "soft morning light, cream and deep teal, burnt orange accents, wooden surfaces, no gloss". She pastes it into every image prompt.</li>
            <li><strong>Use a brand kit.</strong> A <strong>brand kit</strong> is a saved set of your colours, fonts and logo in a design tool. Grace's Canva Brand Kit holds teal <code>#1F5C5A</code>, cream <code>#F6EFE3</code> and burnt orange <code>#C8642B</code>.</li>
            <li><strong>Use a reference image.</strong> Many tools let you upload an image to match its style. Only upload images you own or have permission to use.</li>
            <li><strong>Add your logo yourself.</strong> Do not ask AI to draw your logo. It will change it. Place the real logo file in your design tool.</li>
          </ul>
          <p><strong>Real items need real photos.</strong> An AI Maple Pecan Cinnamon Bun may look bigger or shinier than Tom's real bun. That could mislead customers. So Grace uses AI for backgrounds, autumn mood images and poster ideas. For the bun, the loaf and the latte, she uses real photos and lets AI tidy the background.</p>
          <p>Chris does the same for the Ridgeback Trail Boot. He photographs the real boot, then uses AI to place it on a rocky trail scene. He checks that the AI did not change the sole, the laces or the colours (Slate/Aspen Gold and Pine/Black).</p>
        </div>
        <div class="lc-card">
          <h3>Rights, labels and content credentials</h3>
          <ul class="lc-list">
            <li><strong>People and faces:</strong> never make a realistic image of a real person without their clear permission. This includes staff, customers and famous people.</li>
            <li><strong>Other people's work:</strong> do not ask for "in the style of" a living artist, or for another brand's logo or characters. Check each tool's terms for commercial use (using images to sell things).</li>
            <li><strong>Copyright:</strong> the US Copyright Office said in January 2025 that prompts alone are usually not enough to make you the author. Your own creative edits and arrangement can be protected. UK law on computer-made works is under review. This is general information, not legal advice.</li>
            <li><strong>Content credentials:</strong> these are information stored with an image file that can show it was made or edited with AI. They use an open standard called C2PA. Adobe Firefly adds them to fully generated images. OpenAI says images made in ChatGPT now carry content credentials and Google's invisible SynthID watermark. Google's own image tools add SynthID too. Do not try to remove them.</li>
            <li><strong>Labels:</strong> social platforms have their own AI labels. For example, Instagram may show an "AI info" label, and asks you to disclose realistic AI video and audio. The EU AI Act also has transparency duties for some AI content. Check each platform's current help pages.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: post it, fix it or do not use it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up image into the right decision.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK to use"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix it first"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="A mood background with no people, no text and no false product details is a good use of AI.">An AI background of autumn leaves in cream and teal, used behind Grace's real photo of the loaf.</li>
              <li data-bucket="fix" data-why="AI text is often wrong. Remove it and add the price in Canva, then check it against the menu.">A poster where the AI wrote "Autum Pairing £6.30" in the image.</li>
              <li data-bucket="no" data-why="A realistic image of a real person needs their clear permission. A famous chef has not agreed to promote the café.">A realistic image of a famous TV chef holding a Kettle &amp; Crumb bun.</li>
              <li data-bucket="fix" data-why="The AI changed the product. Edit or regenerate so the boot looks exactly like the real one.">A trail scene where the AI gave the Ridgeback boot red laces it does not have.</li>
              <li data-bucket="no" data-why="Copying another brand's logo or characters can break their rights. Do not use it.">An image that copies a well-known coffee chain's logo onto a cup.</li>
              <li data-bucket="ok" data-why="Editing your own real photo to tidy the background keeps the product true.">Chris's real photo of the boot, with AI used to remove a messy shelf behind it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn a vague image idea into a strong six-part prompt, plus a short checklist for the result.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an art director who writes prompts for AI image tools. Use simple English.

        My business: [Kettle &amp; Crumb, a small bakery-café in Ancoats, Manchester]
        Brand words: [warm, local, homemade, unfussy]
        Brand colours: [deep teal, cream, burnt orange]
        Where the image will go: [a square Instagram post for our autumn menu launch]
        My idea: [a cosy autumn scene with coffee and a cinnamon bun]

        1. Write 3 different image prompts. Each one must cover: subject, setting, style, light, colours and format (aspect ratio).
        2. End each prompt with "Avoid:" rules (no text, no real people's faces, no logos or brand names).
        3. For each prompt, say in one line whether I should use a real photo of my product instead, and why.
        4. Give me a 5-point checklist to check the image before I post it (brand, product accuracy, rights, label).

        Do not invent facts about my products.</pre>
            <ul class="ai-try-checks">
              <li>Each prompt covers all six parts and has "Avoid:" rules.</li>
              <li>No prompt asks for a real person, an artist's name or another brand's logo.</li>
              <li>The advice says to use real photos for the real items you sell.</li>
              <li>The checklist includes labels and content credentials.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good image prompt has six parts: subject, setting, style, light, colours and format. Use AI for mood, backgrounds and ideas, and use real photos for the real things you sell. Add text and logos yourself, never fake a real person, and keep AI labels and content credentials in place.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Presentations and Documents</h1>
        </div>
        <p class="lc-lead">AI slide makers can turn a prompt or a document into a full slide deck in a minute. That saves hours of layout work. But a fast deck can hide wrong facts behind nice design. In this lesson you will learn a simple rule: structure first, then design. You will start from a fact sheet and use AI to make an outline and slides. Then you will check every fact before you present. The same method works for reports, handouts and one-page guides.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Five steps in a row. 1 Fact sheet, written by you. 2 Outline, by AI and you. 3 Draft slides, by the AI slide maker. 4 Design, brand and images. 5 Fact check, by you. Below, a table shows what Chris's fact check found. The AI slide said 3-year warranty; the fact sheet says 2-year warranty. The AI slide said it weighs 1.1 lb; there is no weight claim, so remove it. The AI slide said $149 for everyone; the fact sheet says $149 only with a trade-in during launch week.">
            <defs><marker id="gt7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="16" width="136" height="64" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="80" y="42" font-weight="700">1. Fact sheet</text>
              <text x="80" y="64" font-size="11" fill="#9b99b8">you write it</text>
              <rect x="160" y="16" width="136" height="64" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="228" y="42" font-weight="700">2. Outline</text>
              <text x="228" y="64" font-size="11" fill="#9b99b8">AI + you</text>
              <rect x="308" y="16" width="136" height="64" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="376" y="42" font-weight="700">3. Draft slides</text>
              <text x="376" y="64" font-size="11" fill="#9b99b8">AI slide maker</text>
              <rect x="456" y="16" width="136" height="64" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="524" y="42" font-weight="700">4. Design</text>
              <text x="524" y="64" font-size="11" fill="#9b99b8">brand, images</text>
              <rect x="604" y="16" width="136" height="64" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="672" y="42" font-weight="700">5. Fact check</text>
              <text x="672" y="64" font-size="11" fill="#9b99b8">you check it all</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt7a)">
                <line x1="149" y1="48" x2="157" y2="48"/>
                <line x1="297" y1="48" x2="305" y2="48"/>
                <line x1="445" y1="48" x2="453" y2="48"/>
                <line x1="593" y1="48" x2="601" y2="48"/>
              </g>
              <text x="152" y="108" font-size="12" fill="#c4b5fd">Structure first</text>
              <text x="524" y="108" font-size="12" fill="#c4b5fd">then design</text>
              <rect x="40" y="126" width="680" height="34" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="140" y="148" font-weight="700">The AI slide said</text>
              <text x="380" y="148" font-weight="700">The fact sheet says</text>
              <text x="610" y="148" font-weight="700">Action</text>
              <rect x="40" y="166" width="680" height="34" rx="6" fill="#1f1f44" stroke="#4b4b7a"/>
              <text x="140" y="188">3-year warranty</text>
              <text x="380" y="188">2-year warranty</text>
              <text x="610" y="188" fill="#f59e0b">Correct it</text>
              <rect x="40" y="206" width="680" height="34" rx="6" fill="#1f1f44" stroke="#4b4b7a"/>
              <text x="140" y="228">Weighs only 1.1 lb</text>
              <text x="380" y="228">No weight claim</text>
              <text x="610" y="228" fill="#ec4899">Remove it</text>
              <rect x="40" y="246" width="680" height="34" rx="6" fill="#1f1f44" stroke="#4b4b7a"/>
              <text x="140" y="268">$149 for everyone</text>
              <text x="380" y="268">$149 with trade-in only</text>
              <text x="610" y="268" fill="#f59e0b">Correct it</text>
              <text x="380" y="312" font-size="11" fill="#9b99b8">Chris's staff training deck for the Ridgeback Trail Boot: three errors found in six slides.</text>
            </g>
          </svg>
          <figcaption>Structure first, then design. A person writes the fact sheet at the start and checks every slide against it at the end.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>AI tools for slides and documents</h3>
          <table class="lc-table">
            <thead><tr><th>Tool (described generally)</th><th>What it can do</th><th>Good when</th></tr></thead>
            <tbody>
              <tr><td><strong>Copilot in PowerPoint</strong> (Microsoft 365 Copilot)</td><td>Builds a draft deck from a prompt or from a Word or PDF file, with speaker notes</td><td>Your company uses Microsoft 365 and the facts are already in a work file</td></tr>
              <tr><td><strong>Gemini in Google Slides</strong> and the Gemini app</td><td>Makes slides, images and full drafts from a prompt or a file you choose</td><td>You work in Google Workspace</td></tr>
              <tr><td><strong>AI slide makers</strong> such as Gamma</td><td>Turns a prompt, outline or file into a designed deck, document or simple web page</td><td>You want a good-looking first version fast and can export it</td></tr>
              <tr><td><strong>Canva</strong></td><td>Presentation drafts that use your brand kit (saved colours, fonts and logo)</td><td>Brand look matters most, for example a customer-facing deck</td></tr>
              <tr><td><strong>Copilot in Word</strong>, "Help me write" in Google Docs</td><td>Drafts and rewrites reports, handouts, FAQs and one-page guides</td><td>The output is a document, not slides</td></tr>
            </tbody>
          </table>
          <p>Features depend on your plan and change often. Check each tool's current help pages. At work, use the tool your company has approved, so your files stay inside your work account.</p>
        </div>
        <div class="lc-card">
          <h3>Structure first: start with a fact sheet and an outline</h3>
          <p>A <strong>fact sheet</strong> is a short list of the facts that must be right: names, prices, dates, sizes and rules. You write it, not the AI. Then ask AI for an <strong>outline</strong>: the list of slides with a title and key points for each. Fix the outline before you make any slides. Moving a bullet point is quick. Redesigning ten slides is slow.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a presentation about our new hiking boot.</code></pre>
          <p><strong>Better prompt (Chris, Summit Trails Outdoor):</strong></p>
          <pre><code>Make a 6-slide outline for Summit Trails Outdoor staff training
        on the Ridgeback Trail Boot. Audience: our store team in Denver.
        Slides: who it is for, key features, sizes and colours, price and
        offer, fitting tips, launch dates.
        Use ONLY these facts:
        - Waterproof mid-height hiking boot, recycled-polyester upper,
          waterproof membrane, grippy rubber sole. 2-year warranty.
        - Colours: Slate/Aspen Gold, Pine/Black. Men's 7-14, women's 5-11.
        - Price $169. Launch week: trade in any old pair for $20 off ($149).
        - Early-access email Thursday 29 October 2026. Launch Thursday
          5 November 2026. Free boot-fitting day Saturday 7 November 2026.
        Do not add weights, test results or claims like "lightest".
        If a slide needs a fact I did not give, write [ASK CHRIS].
        For each slide give: title, 3 bullet points, one speaker note.</code></pre>
          <p>Chris reads the outline and moves "fitting tips" before "price". Staff need the fitting skills most. Only then does he ask Copilot in PowerPoint to turn the outline into slides.</p>
        </div>
        <div class="lc-card">
          <h3>Then design, then check every fact</h3>
          <p>Now let the tool design the slides. Apply your brand colours and use real product photos. Then do a <strong>fact check</strong>: read every slide and speaker note next to your fact sheet. AI slide makers often fill gaps with confident details. In Chris's deck, the AI added a warranty of three years, a weight and a price without the trade-in condition. None of them came from his fact sheet.</p>
          <ul class="lc-list">
            <li><strong>Numbers:</strong> every price, date, size and percentage.</li>
            <li><strong>Claims:</strong> remove anything you cannot prove, such as "lightest" or "100% waterproof forever".</li>
            <li><strong>Images:</strong> AI images must not show the product doing things it cannot do. Check any chart against its real data.</li>
            <li><strong>Speaker notes:</strong> AI writes these too. Check them as carefully as the slides.</li>
            <li><strong>Accessibility:</strong> add alt text (a short description of each image for people who use screen readers). Check that text has strong colour contrast and is large enough to read.</li>
          </ul>
          <p>Grace uses the same method for a one-page document. She gives Gemini in Google Docs her fact sheet. She asks for a staff handout for the tasting evening on Thursday 15 October 2026. Then she checks the allergen lines herself. The bun and the hazelnut latte contain nuts. The loaf, bun and soup bread contain gluten. The soup contains milk.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a deck in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Chris's steps for his staff training deck in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write a fact sheet: features, sizes, colours, price, offer and dates.</li>
              <li data-order="2">Ask AI for a 6-slide outline using only the fact sheet.</li>
              <li data-order="3">Fix the outline: change the order and mark gaps with [ASK CHRIS].</li>
              <li data-order="4">Turn the outline into slides with Copilot in PowerPoint.</li>
              <li data-order="5">Apply brand colours, add real boot photos and alt text.</li>
              <li data-order="6">Check every slide and speaker note against the fact sheet.</li>
              <li data-order="7">Ask Dana, the store manager, to review it before training day.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your facts and get a slide outline you can check, plus a list of anything it had to guess.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a presentation coach. Use simple English.

        Topic: [staff training on our new autumn menu at Kettle &amp; Crumb, a bakery-café in Manchester]
        Audience: [9 café and bakery staff, 10-minute talk]
        Number of slides: [6]

        Facts (use ONLY these):
        [Spiced Pear &amp; Ginger Loaf £3.40 a slice, £14.00 whole loaf. Maple Pecan Cinnamon Bun £3.60. Toasted Hazelnut Latte £3.90. Cheddar &amp; Leek Soup with sourdough £6.50. Autumn Pairing: any latte + a cinnamon bun £6.80. Bun and hazelnut latte contain nuts. Loaf, bun and soup bread contain gluten. Soup contains milk. Launch Saturday 17 October 2026.]

        1. Write the outline: for each slide, a title, 3 short bullet points and one speaker note.
        2. Do not add any fact that is not in my list. Where a slide needs one, write [ASK].
        3. After the outline, make a table: every number and date you used, and which fact it came from.
        4. Suggest one simple visual per slide (a real photo, a table or an icon). No AI images of the food.</pre>
            <ul class="ai-try-checks">
              <li>Every price, date and allergen matches your facts exactly.</li>
              <li>Gaps are marked [ASK], not filled with guesses.</li>
              <li>The table lets you trace every number back to your list.</li>
              <li>The slide order makes sense for the audience; change it if not.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Structure first, then design. Write the fact sheet yourself, fix the outline before you make slides, and let AI do the layout. Then check every slide and speaker note against your facts, because a beautiful slide with a wrong price is still wrong.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Audio, Voice and Music</h1>
        </div>
        <p class="lc-lead">AI can turn text into a natural voice, turn a recording into text, and make background music from a short description. This helps small teams make announcements, podcasts and video soundtracks without a studio. But voices belong to people. A copied voice can be used for scams, and AI transcripts and music have their own risks. In this lesson you will learn the three main audio jobs and how to write for a voice. You will also learn the consent rules for voice cloning.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Three lanes. Lane 1: text goes into text-to-speech and comes out as speech, for example a store announcement. Lane 2: speech goes into transcription and comes out as text, for example interview notes. Lane 3: a description goes into an AI music tool and comes out as music, for example a 15-second jingle. Below, a warning band says voice cloning needs clear written consent from the voice owner, and never copy a real person's voice without it.">
            <defs><marker id="gt8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="16" width="150" height="48" rx="8" fill="#27274e" stroke="#4b4b7a"/>
              <text x="95" y="45">Text</text>
              <rect x="230" y="16" width="200" height="48" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="330" y="45" font-weight="700">Text-to-speech</text>
              <rect x="490" y="16" width="250" height="48" rx="8" fill="#27274e" stroke="#4b4b7a"/>
              <text x="615" y="36">Speech</text>
              <text x="615" y="54" font-size="11" fill="#9b99b8">store announcement</text>
              <rect x="20" y="86" width="150" height="48" rx="8" fill="#27274e" stroke="#4b4b7a"/>
              <text x="95" y="115">Speech</text>
              <rect x="230" y="86" width="200" height="48" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="330" y="115" font-weight="700">Transcription</text>
              <rect x="490" y="86" width="250" height="48" rx="8" fill="#27274e" stroke="#4b4b7a"/>
              <text x="615" y="106">Text</text>
              <text x="615" y="124" font-size="11" fill="#9b99b8">interview notes</text>
              <rect x="20" y="156" width="150" height="48" rx="8" fill="#27274e" stroke="#4b4b7a"/>
              <text x="95" y="185">Description</text>
              <rect x="230" y="156" width="200" height="48" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="330" y="185" font-weight="700">AI music tool</text>
              <rect x="490" y="156" width="250" height="48" rx="8" fill="#27274e" stroke="#4b4b7a"/>
              <text x="615" y="176">Music</text>
              <text x="615" y="194" font-size="11" fill="#9b99b8">15-second jingle</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt8a)">
                <line x1="171" y1="40" x2="227" y2="40"/>
                <line x1="431" y1="40" x2="487" y2="40"/>
                <line x1="171" y1="110" x2="227" y2="110"/>
                <line x1="431" y1="110" x2="487" y2="110"/>
                <line x1="171" y1="180" x2="227" y2="180"/>
                <line x1="431" y1="180" x2="487" y2="180"/>
              </g>
              <rect x="20" y="228" width="720" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="252" font-weight="700">Voice cloning: only with clear, written consent from the voice owner</text>
              <text x="380" y="272" font-size="11" fill="#9b99b8">Never copy a real person's voice without it. A stock AI voice is the safe default.</text>
            </g>
          </svg>
          <figcaption>The three main audio jobs, and the consent rule that sits under all of them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI can do with audio</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>What it means</th><th>Example</th><th>What you still check</th></tr></thead>
            <tbody>
              <tr><td><strong>Text-to-speech (TTS)</strong></td><td>AI reads your text aloud in a natural voice</td><td>Chris's 30-second in-store announcement</td><td>Names, numbers and dates are said correctly</td></tr>
              <tr><td><strong>Transcription</strong></td><td>AI turns a recording into written text</td><td>Grace records Tom talking about his loaf recipe</td><td>Names, quotes and numbers match the recording</td></tr>
              <tr><td><strong>Podcast-style summaries</strong></td><td>AI turns your documents into a spoken summary, sometimes with two AI hosts</td><td>Chris turns his staff guide into audio for staff to hear on the way to work</td><td>Listen to all of it. AI hosts can mix up facts.</td></tr>
              <tr><td><strong>AI music</strong></td><td>AI makes music or a short jingle from a description</td><td>Background music for Grace's 15-second video</td><td>The licence allows business use</td></tr>
            </tbody>
          </table>
          <p>Tools include voice tools such as ElevenLabs, and built-in "read aloud" and dictation features. Many meeting and editing apps can transcribe. Research notebooks such as Gemini Notebook (formerly NotebookLM) can make audio summaries. AI music makers such as Suno make songs from a text description. Check each tool's current help pages for features and terms.</p>
        </div>
        <div class="lc-card">
          <h3>Write for the ear, not the eye</h3>
          <p>Text that reads well can sound strange when a voice reads it. When you write for TTS, use short sentences and write numbers the way you say them. Most people speak at about 130 to 160 words a minute, so a 30-second script is about 65 to 80 words. Always time it.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an announcement about our boot fitting day.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a 30-second in-store announcement (70 to 80 words) for
        Summit Trails Outdoor in Denver. It will be read by a stock
        text-to-speech voice, not a copy of a real person's voice.
        Facts: free boot-fitting day on Saturday 7 November 2026.
        New Ridgeback Trail Boot: waterproof, mid-height, grippy sole.
        Price $169. Launch week: trade in any old pair for $20 off.
        Write prices as words. Short sentences. Friendly and plain.
        No claims like "best" or "lightest".</code></pre>
          <p><strong>Chris's final script (76 words, played from launch day, Thursday 5 November):</strong></p>
          <pre><code>Hello, hikers. This Saturday, 7 November, Summit Trails Outdoor is
        holding a free boot-fitting day. Our team will measure your feet
        and help you find the right fit. Come and try on the new Ridgeback
        Trail Boot. It is a waterproof, mid-height hiking boot with a grippy
        rubber sole. It costs one hundred sixty-nine dollars. This launch
        week, trade in any old pair of boots and get twenty dollars off.
        Just ask any of our team.</code></pre>
          <p>For transcription, the check is the other way round. Grace asks Tom first if she can record him, and tells him how she will use it. The transcript writes "Ancoats" as "and coats" and "Tom" as "Tim". She fixes both before she asks AI to draft a newsletter story from it. She also checks that every quote is what Tom really said.</p>
        </div>
        <div class="lc-card">
          <h3>Voice cloning, music rights and scams</h3>
          <ul class="lc-list">
            <li><strong>Voice cloning</strong> means making an AI copy of one real person's voice. Only do it with that person's clear, written consent, for a clear use. Some tools only let you clone your own voice and ask you to confirm it live. Never clone a celebrity, a customer or a colleague without consent.</li>
            <li><strong>Laws:</strong> rules on voices and likeness differ by place. In the US, the FCC ruled in 2024 that AI-generated voices in robocalls count as "artificial" voices. So the usual phone-call consent rules apply. This is general information, not legal advice.</li>
            <li><strong>Music rights:</strong> check the music tool's terms before business use. Free plans often allow only personal use. Some AI music tools face copyright lawsuits, and some now use licensed music. Do not ask for a song "in the voice of" a real singer.</li>
            <li><strong>Labels:</strong> say when a voice is AI, for example "This announcement uses an AI voice." Social platforms ask you to disclose realistic AI audio. Check their current help pages.</li>
            <li><strong>Scams:</strong> criminals use cloned voices to fake urgent calls from a boss or family member. If a call asks for money or passwords, hang up and call back on a number you already know. Some families agree on a secret code word.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Chris makes the in-store announcement</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">Chris gives his chat assistant the facts and asks for a 30-second script for a stock text-to-speech voice.</li>
              <li data-kind="answer" data-label="Draft">The AI writes a friendly script of 98 words. It ends with "the lightest waterproof boot in Colorado".</li>
              <li data-kind="warn" data-label="Problems">The script is too long for 30 seconds. "Lightest" is a claim Chris cannot prove.</li>
              <li data-kind="check" data-label="Edit">Chris removes the claim and cuts the script to 76 words. He writes the prices as words.</li>
              <li data-kind="tool" data-label="TTS tool">He pastes the script into a text-to-speech tool and picks a stock voice. He does not clone anyone's voice.</li>
              <li data-kind="result" data-label="Listen">The voice says "Ridgeback" in a strange way. Chris uses the tool's pronunciation setting to fix it. The clip is 31 seconds long.</li>
              <li data-kind="check" data-label="Approve">Dana, the store manager, plays it on the store speakers. She checks the date and the offer, then approves it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Write a short script that is ready for a text-to-speech voice, with timing and a pronunciation list.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a scriptwriter for audio. Use simple English.

        Write a [30]-second script for [an in-store announcement] for [Kettle &amp; Crumb, a bakery-café in Ancoats, Manchester].
        It will be read by a stock text-to-speech voice (not a copy of a real person's voice).

        Facts (use only these): [Our autumn menu starts on Saturday 17 October 2026. Try the Autumn Pairing: any latte and a Maple Pecan Cinnamon Bun for £6.80. The bun contains nuts (pecans).]

        Rules:
        1. About 2.5 words per second of audio. Tell me the word count.
        2. Short sentences. Write numbers and prices as they are spoken (for example "six pounds eighty").
        3. No claims like "best" or "award-winning".
        4. Give a second version that is 15 seconds long.
        5. List any words a voice might say wrongly (names, places) and how to spell them so they sound right.
        6. Suggest one short line to tell listeners this is an AI voice.</pre>
            <ul class="ai-try-checks">
              <li>The word count fits the time (about 75 words for 30 seconds).</li>
              <li>Prices and dates are correct when read aloud.</li>
              <li>Allergen information is kept, even in the short version.</li>
              <li>No invented claims. Read it aloud yourself before you use it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI audio tools turn text into speech, speech into text and ideas into music. Write for the ear, check every name and number, and use stock voices by default. A real person's voice belongs to them: clone it only with their clear, written consent.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Video with AI</h1>
        </div>
        <p class="lc-lead">Short videos sell products, but filming and editing take time. AI can now write the script, plan the shots, make short clips, add captions and even create a talking presenter. The same tools can also make deepfakes: fake videos that look real. In this lesson you will plan a 15-second video from script to post. You will learn which parts to film for real and which parts AI can make. You will also learn when and how to label AI video.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Top: five steps in a row. 1 Script. 2 Storyboard, 4 shots. 3 Make clips, real or AI. 4 Edit, captions and music. 5 Check and label. Below: a timeline of Grace's 15-second vertical video. Shot 1, 0 to 4 seconds, AI clip of steam over a latte, labelled, text: Autumn is here in Ancoats. Shot 2, 4 to 8 seconds, real clip of Tom slicing the loaf, text: Spiced Pear and Ginger Loaf. Shot 3, 8 to 12 seconds, real clip of a bun and latte, text: Autumn Pairing £6.80. Shot 4, 12 to 15 seconds, real clip of the café door, text: From Sat 17 October.">
            <defs><marker id="gt9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="16" width="136" height="60" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="80" y="41" font-weight="700">1. Script</text>
              <text x="80" y="62" font-size="11" fill="#9b99b8">words + timing</text>
              <rect x="160" y="16" width="136" height="60" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="228" y="41" font-weight="700">2. Storyboard</text>
              <text x="228" y="62" font-size="11" fill="#9b99b8">4 shots</text>
              <rect x="308" y="16" width="136" height="60" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="376" y="41" font-weight="700">3. Make clips</text>
              <text x="376" y="62" font-size="11" fill="#9b99b8">real or AI</text>
              <rect x="456" y="16" width="136" height="60" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="524" y="41" font-weight="700">4. Edit</text>
              <text x="524" y="62" font-size="11" fill="#9b99b8">captions, music</text>
              <rect x="604" y="16" width="136" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="672" y="41" font-weight="700">5. Check + label</text>
              <text x="672" y="62" font-size="11" fill="#9b99b8">facts, AI label</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt9a)">
                <line x1="149" y1="46" x2="157" y2="46"/>
                <line x1="297" y1="46" x2="305" y2="46"/>
                <line x1="445" y1="46" x2="453" y2="46"/>
                <line x1="593" y1="46" x2="601" y2="46"/>
              </g>
              <text x="380" y="112" font-size="12" fill="#c4b5fd">Grace's 15-second vertical video (9:16)</text>
              <rect x="40" y="126" width="179" height="70" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="129" y="148" font-size="12" font-weight="700">0-4 s</text>
              <text x="129" y="170" font-size="12">AI: steam over latte</text>
              <text x="129" y="187" font-size="11" fill="#ec4899">label it</text>
              <rect x="223" y="126" width="177" height="70" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="311" y="148" font-size="12" font-weight="700">4-8 s</text>
              <text x="311" y="170" font-size="12">Real: Tom slices loaf</text>
              <rect x="404" y="126" width="177" height="70" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="492" y="148" font-size="12" font-weight="700">8-12 s</text>
              <text x="492" y="170" font-size="12">Real: bun + latte</text>
              <rect x="585" y="126" width="135" height="70" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="652" y="148" font-size="12" font-weight="700">12-15 s</text>
              <text x="652" y="170" font-size="12">Real: café door</text>
              <text x="129" y="218" font-size="11" fill="#9b99b8">Autumn is here in Ancoats</text>
              <text x="311" y="218" font-size="11" fill="#9b99b8">Spiced Pear &amp; Ginger Loaf</text>
              <text x="492" y="218" font-size="11" fill="#9b99b8">Autumn Pairing £6.80</text>
              <text x="652" y="218" font-size="11" fill="#9b99b8">From Sat 17 October</text>
              <text x="380" y="246" font-size="11" fill="#9b99b8">Grey lines = on-screen text (6 words or fewer)</text>
              <rect x="120" y="262" width="520" height="34" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="284" font-size="12">Real food is filmed for real. AI makes only the opening mood shot.</text>
            </g>
          </svg>
          <figcaption>From script to post in five steps. In Grace's video, the food is filmed for real. Only the opening steam shot is AI, and it is labelled.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of AI video tools</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>What it does</th><th>Examples (check current help pages)</th></tr></thead>
            <tbody>
              <tr><td><strong>Clip generators</strong></td><td>Make a short clip, often 10 seconds or less, from a text prompt or a photo</td><td>Google's video tools: Gemini Omni in the Gemini app, and Gemini Omni or Veo 3.1 in Flow; Runway</td></tr>
              <tr><td><strong>Avatar video tools</strong></td><td>An <strong>avatar</strong> (a digital presenter that looks like a real person) reads your script, often in many languages</td><td>Synthesia and similar tools</td></tr>
              <tr><td><strong>AI editing features</strong></td><td>Add captions, cut pauses, remove background noise, resize a video to vertical</td><td>Many phone and desktop video editors</td></tr>
            </tbody>
          </table>
          <p>Video tools change very fast. For example, OpenAI closed its Sora video app in April 2026. Learn what each kind of tool does, then check which tools are available on your plan today.</p>
        </div>
        <div class="lc-card">
          <h3>From script to storyboard</h3>
          <p>A <strong>storyboard</strong> is a list of shots: what the viewer sees, the text on screen and the words spoken, with timings. Ask AI for the storyboard first. Then decide, shot by shot, what to film for real and what AI can make.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a video about our autumn menu.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a 15-second vertical video script with 4 shots for the
        Kettle &amp; Crumb autumn menu (bakery-café in Ancoats, Manchester).
        For each shot give: timing, what we see, on-screen text (max 6
        words) and one voice-over line. Facts: Autumn Pairing, any latte
        and a cinnamon bun, £6.80. Spiced Pear &amp; Ginger Loaf. Launch Saturday
        17 October 2026. Warm, local, unfussy. End with the launch date.
        Mark which shots should be filmed for real and which could be AI.</code></pre>
          <p><strong>Grace's final storyboard:</strong></p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>What we see</th><th>Source</th><th>On-screen text</th><th>Voice-over</th></tr></thead>
            <tbody>
              <tr><td>0-4 s</td><td>Steam rising from a latte, close up (no people)</td><td>AI clip (labelled)</td><td>Autumn is here in Ancoats</td><td>"Autumn has arrived at Kettle &amp; Crumb."</td></tr>
              <tr><td>4-8 s</td><td>Tom slices the real Spiced Pear &amp; Ginger Loaf</td><td>Real phone clip (Tom agreed)</td><td>Spiced Pear &amp; Ginger Loaf</td><td>"Tom's new loaf is out of the oven."</td></tr>
              <tr><td>8-12 s</td><td>A real bun and latte on the counter</td><td>Real phone clip</td><td>Autumn Pairing £6.80</td><td>"Any latte and a cinnamon bun, six pounds eighty."</td></tr>
              <tr><td>12-15 s</td><td>The café door with the logo</td><td>Real phone clip</td><td>From Sat 17 October</td><td>"From Saturday 17 October. See you soon."</td></tr>
            </tbody>
          </table>
          <p>Grace uses AI editing to add captions and trim pauses. The post caption says that the bun contains nuts, and so does the Toasted Hazelnut Latte. It also says: "Opening shot made with AI." The steam shot is only a mood shot: the food customers buy is shown for real.</p>
        </div>
        <div class="lc-card">
          <h3>Avatars, product clips and what to check</h3>
          <p>Chris wants a 2-minute boot-fitting video for new staff. He uses an avatar tool. He picks a <strong>stock avatar</strong>: a presenter based on a paid actor who agreed to it. Dana offers to make an avatar of herself instead. That is fine, because she gives clear consent and records the tool's consent step herself. The video tells staff that the presenter is an AI avatar.</p>
          <p>For the launch, Chris starts with his real photo of the Ridgeback Trail Boot. He turns it into a short clip of the boot on a rocky trail. One AI version shows the boot standing in a river for a long time. He does not use it. It looks like a test result, and he has no test to prove it.</p>
          <ul class="lc-list">
            <li><strong>Product truth:</strong> the product, colours and features in the clip match the real thing.</li>
            <li><strong>Strange details:</strong> look for extra fingers, melting objects, wrong text and odd movement.</li>
            <li><strong>Words:</strong> every price, date and claim in the captions and voice-over is correct.</li>
            <li><strong>Music and voices:</strong> you have the rights, and no real person's voice is copied.</li>
            <li><strong>Label:</strong> realistic AI scenes are labelled, on the video or in the post.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Deepfakes and labelling</h3>
          <p>A <strong>deepfake</strong> is a fake video, image or audio that makes a real person seem to say or do something they did not. Never make one of a real person without their clear permission. Deepfakes are used for scams, false news and abuse.</p>
          <ul class="lc-list">
            <li><strong>Platforms:</strong> YouTube asks creators to turn on its "altered or synthetic content" setting for realistic AI video. Instagram and Facebook may show an "AI info" label, and TikTok has its own AI labels. Rules change, so check each platform's current help pages.</li>
            <li><strong>Laws:</strong> in the UK and the US, sharing sexual deepfakes of a real person without consent is a crime. The US TAKE IT DOWN Act (2025) also makes platforms remove such images when asked. The EU AI Act requires deepfakes to be disclosed, with transparency duties that apply from August 2026.</li>
            <li>This is general information, not legal advice. Check with a qualified adviser for your situation.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: post it, label it or do not make it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up video idea into the right decision.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine after normal checks"></div>
              <div data-sorter-target="bucket" data-bucket="label" data-label="Use it, with an AI label"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not make it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="AI captions and trimming do not change what happened. Just check the caption words.">A real phone clip of Tom baking, with AI captions and the pauses cut out.</li>
              <li data-bucket="label" data-why="A realistic scene made by AI should be labelled, so viewers are not misled.">An AI close-up of steam rising from a latte, used as the opening mood shot.</li>
              <li data-bucket="no" data-why="A real person has not agreed to this. It is a deepfake, and it could mislead customers.">An AI video of a famous footballer saying he loves the Ridgeback boot.</li>
              <li data-bucket="label" data-why="Staff should know the presenter is an AI avatar. The actor behind the stock avatar gave consent.">A staff training video presented by a stock AI avatar.</li>
              <li data-bucket="no" data-why="It looks like a waterproof test that never happened. That is a claim Chris cannot prove.">An AI clip of the boot standing in a river for an hour, posted as "proof".</li>
              <li data-bucket="ok" data-why="Resizing and colour correction are normal edits that do not create a fake scene.">Chris's real store footage, resized to vertical and colour-corrected by AI.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get a shot-by-shot storyboard that marks which shots to film for real and which need an AI label.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a short-form video producer. Use simple English.

        Business: [Summit Trails Outdoor, an outdoor-gear shop in Denver]
        Video: [a 15-second vertical (9:16) video for Instagram Reels]
        Goal: [invite people to the free boot-fitting day on Saturday 7 November 2026]
        Facts (use only these): [Ridgeback Trail Boot, waterproof mid-height hiking boot, $169. Launch week: trade in any old pair of boots for $20 off.]

        1. Make a storyboard table with 4 shots: time, what we see, on-screen text (max 6 words), voice-over line.
        2. Timings must add up to exactly 15 seconds.
        3. For each shot, say: "film for real", "AI clip (label it)" or "simple graphic", and give one reason.
        4. Never show the product doing something we cannot prove (no water tests, no weights).
        5. No real or famous people, and no copied voices.
        6. Write a post caption of up to 40 words, with an AI label line if any shot uses AI.</pre>
            <ul class="ai-try-checks">
              <li>The four timings add up to 15 seconds.</li>
              <li>The product and offer are exactly as in your facts.</li>
              <li>Realistic AI shots are marked for a label.</li>
              <li>No fake tests, famous people or copied voices.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Plan every video as a storyboard first. Film your real product for real, and use AI for captions, editing and mood shots. Label realistic AI scenes, never make a deepfake of a real person, and check every word on screen before you post.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Research and Search with AI</h1>
        </div>
        <p class="lc-lead">AI search tools read many web pages for you and write one clear answer with links. Deep-research features can spend several minutes on a question and write a full report. This saves hours. But AI can misread a source, mix up countries or dates, or cite a page that does not say what it claims. In this lesson you will learn the main kinds of AI research tools and how to ask a good research question. You will also learn how to check every important claim against its source.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Five steps in a row: 1 Ask clearly, with scope, place and date. 2 AI search, an answer with links. 3 Open sources, read the pages. 4 Check claims, match or not. 5 Decide, and note the sources. An arrow loops from step 4 back to step 1 labelled: gaps, ask again. Below, Grace's claim check about allergen rules for her café. Claim 1: allergen information must be available for the 14 allergens; source Food Standards Agency; confirmed. Claim 2: written allergen information is required by law since 2025; the source says it is best practice, not law; wrong. Claim 3: fines start at 5,000 pounds; no source found; drop it.">
            <defs><marker id="gt10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="16" width="136" height="60" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="80" y="41" font-weight="700">1. Ask clearly</text>
              <text x="80" y="62" font-size="11" fill="#9b99b8">scope, place, date</text>
              <rect x="160" y="16" width="136" height="60" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="228" y="41" font-weight="700">2. AI search</text>
              <text x="228" y="62" font-size="11" fill="#9b99b8">answer + links</text>
              <rect x="308" y="16" width="136" height="60" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="376" y="41" font-weight="700">3. Open sources</text>
              <text x="376" y="62" font-size="11" fill="#9b99b8">read the pages</text>
              <rect x="456" y="16" width="136" height="60" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="524" y="41" font-weight="700">4. Check claims</text>
              <text x="524" y="62" font-size="11" fill="#9b99b8">match or not?</text>
              <rect x="604" y="16" width="136" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="672" y="41" font-weight="700">5. Decide</text>
              <text x="672" y="62" font-size="11" fill="#9b99b8">note the sources</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt10a)">
                <line x1="149" y1="46" x2="157" y2="46"/>
                <line x1="297" y1="46" x2="305" y2="46"/>
                <line x1="445" y1="46" x2="453" y2="46"/>
                <line x1="593" y1="46" x2="601" y2="46"/>
                <path d="M524,77 L524,96 L80,96 L80,80"/>
              </g>
              <text x="302" y="114" font-size="11" fill="#9b99b8">gaps? ask again</text>
              <rect x="30" y="134" width="700" height="34" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="215" y="156" font-weight="700">The AI answer said</text>
              <text x="505" y="156" font-weight="700">The source says</text>
              <text x="658" y="156" font-weight="700">Result</text>
              <rect x="30" y="174" width="700" height="34" rx="6" fill="#1f1f44" stroke="#4b4b7a"/>
              <text x="215" y="196" font-size="12">Info on the 14 allergens must be available</text>
              <text x="505" y="196" font-size="12">FSA: yes, it must</text>
              <text x="658" y="196" font-size="12" fill="#10b981">Confirmed</text>
              <rect x="30" y="214" width="700" height="34" rx="6" fill="#1f1f44" stroke="#4b4b7a"/>
              <text x="215" y="236" font-size="12">Written info is required by law</text>
              <text x="505" y="236" font-size="12">FSA: best practice, not law</text>
              <text x="658" y="236" font-size="12" fill="#ec4899">Wrong</text>
              <rect x="30" y="254" width="700" height="34" rx="6" fill="#1f1f44" stroke="#4b4b7a"/>
              <text x="215" y="276" font-size="12">Fines start at £5,000</text>
              <text x="505" y="276" font-size="12">No source found</text>
              <text x="658" y="276" font-size="12" fill="#f59e0b">Drop it</text>
              <text x="380" y="314" font-size="11" fill="#9b99b8">Grace's question: what allergen information must my café give for the new autumn menu?</text>
            </g>
          </svg>
          <figcaption>The research loop. AI finds and summarises; you open the sources and check each important claim before you act on it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Kinds of AI research tools</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Examples (described generally)</th><th>Best for</th></tr></thead>
            <tbody>
              <tr><td><strong>AI answers in search engines</strong></td><td>AI Overviews and AI Mode in Google Search, AI answers in Bing</td><td>Quick questions, with links to open</td></tr>
              <tr><td><strong>Answer engines</strong></td><td>Perplexity</td><td>Answers where each claim shows its source</td></tr>
              <tr><td><strong>Chat assistants with web search</strong></td><td>ChatGPT, Claude, Gemini, Microsoft Copilot</td><td>Mixing a search with drafting, for example "find and then summarise"</td></tr>
              <tr><td><strong>Deep-research features</strong></td><td>Deep research in ChatGPT, Gemini Deep Research, Research in Claude, Researcher in Microsoft 365 Copilot</td><td>Bigger questions. The AI makes a plan, reads many pages for several minutes and writes a report with citations.</td></tr>
              <tr><td><strong>Source notebooks</strong></td><td>Gemini Notebook (formerly NotebookLM)</td><td>Answers only from the documents you upload, such as your own reports</td></tr>
            </tbody>
          </table>
          <p>A <strong>citation</strong> is a link or reference that shows where a claim came from. Plans and limits differ, and features change often, so check each tool's current help pages. At work, Chris uses Researcher in his company's Microsoft 365 Copilot, because it can also search his work files safely. Do not upload private or confidential documents to a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Grace checks the allergen rules</h3>
          <p>Before the autumn menu launches, Grace wants to know what allergen information Kettle &amp; Crumb must give customers.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What are the allergen rules for cafés?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run a small bakery-café in Manchester, England. Our food is
        made and served in the café (not prepacked).
        Question: what allergen information must I give customers, and
        what is only recommended good practice?
        Use official UK sources first, such as the Food Standards Agency
        (food.gov.uk and gov.uk). Give the date of each source.
        For each claim, add the link and say "law" or "guidance".
        If you are not sure, say so. Do not guess fines or numbers.</code></pre>
          <p>The AI answer is clear and helpful. But it says written allergen information is "required by law since 2025". Grace opens the linked Food Standards Agency page. It says the 2025 guidance is <em>best practice</em>, not law. The law says information on the 14 main allergens must be available. Staff may give it by talking, if a clear sign tells customers to ask. The best practice is to give it in writing as well as by talking to customers. The AI also stated a fine amount with no source, so Grace drops it.</p>
          <p>Grace decides to follow the best practice anyway. She adds a written allergen chart for the autumn menu next to the till. This is general information, not legal advice. For her own business, she can ask her local council's food safety team.</p>
        </div>
        <div class="lc-card">
          <h3>How to check a source in five questions</h3>
          <ul class="lc-list">
            <li><strong>Does the link work, and is it real?</strong> AI can cite pages that do not exist, or the wrong page.</li>
            <li><strong>Does the page really say it?</strong> Find the exact sentence. AI often makes a claim stronger than the source, as with "required by law".</li>
            <li><strong>Who wrote it?</strong> Prefer official sources (government, regulators, the company's own help pages) over blogs and forums.</li>
            <li><strong>Is it current and for the right place?</strong> Check the date, and check the country. UK, US and EU rules differ, and even UK nations can differ.</li>
            <li><strong>Does a second good source agree?</strong> For anything you will act on, look for a second source.</li>
          </ul>
          <p>Be extra careful with numbers. A statistic in an AI answer needs a source you can open. If you cannot find one, do not repeat it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Chris runs a deep-research task</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Question">Chris asks a deep-research tool: "How should an outdoor shop run a free boot-fitting day? Give practical tips, with sources."</li>
              <li data-kind="answer" data-label="Plan">The AI shows its research plan first: fitting advice, event planning and staffing. Chris adds: "Use footwear experts and outdoor retailers. No sales statistics."</li>
              <li data-kind="tool" data-label="Research">The tool reads many pages for several minutes and writes a report with citations.</li>
              <li data-kind="warn" data-label="Weak claim">One line says "most hikers wear the wrong boot size". The link goes to a blog that gives no source for it.</li>
              <li data-kind="check" data-label="Check">Chris opens the other links. Two sources agree on the same tips: fit boots later in the day and bring the socks you hike in. He keeps these and drops the unsourced claim.</li>
              <li data-kind="result" data-label="Output">He turns the checked tips into a one-page checklist for Dana and the store team for Saturday 7 November 2026.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask a research question in a way that makes the AI show its sources, so you can check each claim quickly.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful research assistant. Use simple English.

        My question: [What should a small café in England know before it posts customer photos on Instagram?]
        Context: [I run Kettle &amp; Crumb, a bakery-café in Manchester. I am not a lawyer.]

        Rules:
        1. Answer in 5 to 8 short points.
        2. For each point, give: the claim, the source name, the link, the date of the source, and whether it is "law", "official guidance" or "opinion".
        3. Use official sources first (government and regulators), then well-known organisations. Avoid forums.
        4. If you cannot find a source for a point, write "NO SOURCE" and do not guess.
        5. Say which points may differ in another country.
        6. End with 3 questions I should ask a qualified adviser.

        If you cannot browse the web, say so clearly. Then still answer, but mark every point "NO SOURCE" and tell me where to look.</pre>
            <ul class="ai-try-checks">
              <li>Open at least three links. Does each page really say what the AI claims?</li>
              <li>Check the dates and the country of each source.</li>
              <li>Points without a source are marked, not presented as facts.</li>
              <li>Law, guidance and opinion are kept apart.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI research tools are fast at finding and summarising, but the source is the evidence, not the AI's summary. Ask a clear question with a place and date. Open the links, find the exact sentence, and drop any claim you cannot source. You decide what to act on.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Spreadsheets and Data</h1>
        </div>
        <p class="lc-lead">Many people have useful data in a spreadsheet but no time to study it. AI in Excel and Google Sheets can now explain your data, write formulas, make charts and sort text into groups. This saves hours. But AI can also add numbers wrongly or describe a trend that is not there. In this lesson you will learn what Copilot in Excel and Gemini in Sheets can do. You will learn how to ask good data questions. You will also learn to check every number before you act on it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four steps in a row: 1 Tidy the table, one row per item. 2 Ask the AI for a summary, formula or chart. 3 Check the numbers by recalculating key totals. 4 You decide, for example how much soup to plan. Below, a bar chart shows soup of the day sales for four weeks in September: 58, 74, 92 and 120. Next to it, an AI summary says soup sales rose 62 percent, but the check shows the real rise is 106.9 percent, because 62 was the number of extra bowls, not a percentage. The AI also said the flat white total was 1,755, but the SUM formula gives 1,765.">
            <defs><marker id="gt11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="165" height="62" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="97" y="46" font-weight="700">1. Tidy the table</text>
              <text x="97" y="67" font-size="11" fill="#9b99b8">one row per item</text>
              <rect x="205" y="20" width="165" height="62" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="287" y="46" font-weight="700">2. Ask the AI</text>
              <text x="287" y="67" font-size="11" fill="#9b99b8">summary, formula, chart</text>
              <rect x="395" y="20" width="165" height="62" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="477" y="46" font-weight="700">3. Check numbers</text>
              <text x="477" y="67" font-size="11" fill="#9b99b8">recalculate key totals</text>
              <rect x="585" y="20" width="160" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="46" font-weight="700">4. You decide</text>
              <text x="665" y="67" font-size="11" fill="#9b99b8">plan the soup batches</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt11a)">
                <line x1="181" y1="51" x2="202" y2="51"/>
                <line x1="371" y1="51" x2="392" y2="51"/>
                <line x1="561" y1="51" x2="582" y2="51"/>
              </g>
              <rect x="15" y="105" width="360" height="185" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="195" y="126" font-weight="700" font-size="12">Soup of the day: bowls sold per week</text>
              <line x1="35" y1="260" x2="355" y2="260" stroke="#9b99b8"/>
              <rect x="55" y="207" width="50" height="53" fill="#22d3ee" fill-opacity="0.55"/>
              <rect x="135" y="192" width="50" height="68" fill="#22d3ee" fill-opacity="0.65"/>
              <rect x="215" y="176" width="50" height="84" fill="#22d3ee" fill-opacity="0.75"/>
              <rect x="295" y="150" width="50" height="110" fill="#22d3ee" fill-opacity="0.9"/>
              <text x="80" y="201" font-size="12">58</text>
              <text x="160" y="186" font-size="12">74</text>
              <text x="240" y="170" font-size="12">92</text>
              <text x="320" y="144" font-size="12">120</text>
              <text x="80" y="278" font-size="11" fill="#9b99b8">7 Sep</text>
              <text x="160" y="278" font-size="11" fill="#9b99b8">14 Sep</text>
              <text x="240" y="278" font-size="11" fill="#9b99b8">21 Sep</text>
              <text x="320" y="278" font-size="11" fill="#9b99b8">28 Sep</text>
              <rect x="395" y="105" width="350" height="185" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="570" y="126" font-weight="700" font-size="12">AI summary (draft) and the checks</text>
              <text x="570" y="152" font-size="12" fill="#f59e0b">AI: "Soup sales rose 62%."</text>
              <text x="570" y="174" font-size="12" fill="#10b981">Check: (120 - 58) / 58 = 106.9%</text>
              <text x="570" y="194" font-size="11" fill="#9b99b8">62 was extra bowls, not a percentage</text>
              <text x="570" y="226" font-size="12" fill="#f59e0b">AI: "Flat white total: 1,755."</text>
              <text x="570" y="248" font-size="12" fill="#10b981">Check: =SUM(C2:F2) gives 1,765</text>
              <text x="570" y="272" font-size="11" fill="#9b99b8">Fix the numbers before you decide</text>
            </g>
          </svg>
          <figcaption>Grace's four-step data workflow. The AI summary was useful, but two numbers were wrong. A quick formula check found both.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI can do in Excel and Google Sheets</h3>
          <p>Both big office suites now have AI built into their spreadsheet app. You open a side panel and ask questions in plain words. Features change often and depend on your plan, so check the tool's current help pages.</p>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Copilot in Excel (Microsoft 365)</th><th>Gemini in Google Sheets</th></tr></thead>
            <tbody>
              <tr><td><strong>Explain the data</strong></td><td>Ask in the Copilot pane: "What are the main trends?"</td><td>Ask in the Gemini side panel: "Summarise this sheet."</td></tr>
              <tr><td><strong>Write a formula</strong></td><td>Describe the result. Copilot suggests a formula and explains it.</td><td>Describe the result. Gemini suggests a formula and explains it.</td></tr>
              <tr><td><strong>Make a chart</strong></td><td>"Show weekly soup sales as a column chart."</td><td>"Make a chart of soup sales by week."</td></tr>
              <tr><td><strong>Bigger, multi-step jobs</strong></td><td>Agent Mode plans the steps and builds sheets, formulas and charts for you.</td><td>Gemini can build or edit a whole sheet from a description.</td></tr>
              <tr><td><strong>Sort text into groups</strong></td><td>Ask in the Copilot pane to label each row.</td><td>The <code>=AI()</code> function works inside a cell, on eligible plans.</td></tr>
            </tbody>
          </table>
          <p>Two tips make the AI work much better. First, keep your data in a clean table: one header row, one row per item, no merged cells. Second, use plain column names such as "Item", "Price" and "Units". In Excel, some Copilot features may need the file saved in OneDrive or SharePoint. Check Microsoft's current help pages.</p>
          <p>If you do not have AI in your spreadsheet app, you can use a chat assistant. But think first. Sales totals and customer lists are business data. Use your company's approved tool, or remove names and private details first.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Grace plans for the autumn soup</h3>
          <p>The Cheddar &amp; Leek Soup launches on Saturday 17 October 2026. Grace wants to know how many bowls to plan for. She has four weeks of September sales in Google Sheets. Her Workspace plan includes Gemini.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>A: Item</th><th>B: Price</th><th>C: w/c 7 Sep</th><th>D: w/c 14 Sep</th><th>E: w/c 21 Sep</th><th>F: w/c 28 Sep</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>Flat white</td><td>£3.40</td><td>410</td><td>432</td><td>455</td><td>468</td></tr>
              <tr><td>3</td><td>Croissant</td><td>£2.80</td><td>260</td><td>248</td><td>271</td><td>255</td></tr>
              <tr><td>4</td><td>Sourdough loaf</td><td>£4.50</td><td>96</td><td>102</td><td>99</td><td>110</td></tr>
              <tr><td>5</td><td>Soup of the day</td><td>£5.90</td><td>58</td><td>74</td><td>92</td><td>120</td></tr>
            </tbody>
          </table>
          <p>("w/c" means "week commencing": the week that starts on that Monday.)</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Analyse my sales.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>This sheet shows units sold per week in September 2026 at our café.
        Columns C to F are weeks. Column B is the price.
        1. Add column G "Total units" and column H "Revenue" (total units x price).
        2. Add column I "Change": week 4 compared with week 1, as a percentage.
        3. Show me each formula you used.
        4. Make a column chart of Soup of the day by week.
        5. In 3 bullet points, say what changed. Do not guess the reasons.</code></pre>
          <p>Gemini adds the columns and the chart. Its summary sounds helpful, but Grace checks it. She finds two mistakes:</p>
          <ul class="lc-list">
            <li>It says "soup sales rose 62%". In fact, 120 minus 58 is 62 more <em>bowls</em>. The real rise is 62 / 58 = 106.9%, so sales more than doubled.</li>
            <li>It says the flat white total is 1,755. Her own <code>=SUM(C2:F2)</code> gives 1,765.</li>
          </ul>
          <p>These are the formulas Grace checks. Each one gives the result shown.</p>
          <pre><code>G2  =SUM(C2:F2)          Flat white total units: 1765
        H2  =G2*B2               Flat white revenue: £6,001.00
        I5  =(F5-C5)/C5          Soup change, as a %: 106.9%
        H6  =SUM(H2:H5)          All four items, revenue: £12,757.30</code></pre>
          <p><strong>The decision is Grace's.</strong> Soup sales climbed as the weather got colder. But the data cannot know next month's weather, or how a new recipe will sell. Grace asks Tom, the head baker, and they plan about 120 bowls for the first week, with extra leeks on standby.</p>
        </div>
        <div class="lc-card">
          <h3>Sort comments and check AI results</h3>
          <p>AI is good at sorting text, such as customer comments, into groups. Grace copies the comments from her café comment box into column A. They have no names. In Google Sheets she uses the <code>=AI()</code> function in column B:</p>
          <pre><code>=AI("Label this café comment as Praise, Complaint or Idea. Reply with one word only.", A2)</code></pre>
          <table class="lc-table">
            <thead><tr><th>Comment (column A)</th><th>AI label (column B)</th><th>Grace's check</th></tr></thead>
            <tbody>
              <tr><td>"Best sourdough in Ancoats."</td><td>Praise</td><td>Correct</td></tr>
              <tr><td>"Queue was very slow on Saturday."</td><td>Complaint</td><td>Correct</td></tr>
              <tr><td>"Could you do a vegan soup?"</td><td>Idea</td><td>Correct</td></tr>
              <tr><td>"Lovely staff, but the soup was cold."</td><td>Praise</td><td>Wrong: it is mainly a complaint</td></tr>
            </tbody>
          </table>
          <p>Then she counts each label with a normal formula, for example <code>=COUNTIF(B2:B41,"Idea")</code>. She reads a sample of the labels herself, because mixed comments are easy to mislabel. AI results in cells are text that AI wrote. They are not exact calculations. Check the tool's help pages for how they update.</p>
          <p><strong>Chris at Summit Trails Outdoor</strong> uses Copilot in Excel through his company's Microsoft 365 plan. He asks which boot sizes sold most last autumn, to plan the Ridgeback Trail Boot order. Copilot gives a clear answer. Chris still builds a quick PivotTable (a table that groups and totals data) to check the totals before Marcus, the owner, places the order.</p>
          <p><strong>Always check:</strong></p>
          <ul class="lc-list">
            <li>Recalculate the most important totals with your own formula.</li>
            <li>Check that percentages compare the right numbers.</li>
            <li>Make sure the AI used all the rows, not only some of them.</li>
            <li>Read each formula. Ask the AI to explain any part you do not understand.</li>
            <li>Treat "reasons" in an AI summary as guesses until you check them.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Who does what with spreadsheet data?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each task. Is it a good job for AI, something you must check yourself, or data to keep out of a public AI tool?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="Good job for AI"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="You must check it"></div>
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep out of public AI"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Suggesting a chart from a clean table is quick and low-risk. You can see the result at once.">Suggest a chart for weekly soup sales</li>
              <li data-bucket="ai" data-why="Explaining a formula in plain words is a great use of AI. It helps you learn and check.">Explain what =SUMIF(A2:A40,"Croissant",C2:C40) does</li>
              <li data-bucket="check" data-why="AI can add wrongly. Recalculate any total you will use for a decision.">The total revenue that AI wrote in its summary</li>
              <li data-bucket="check" data-why="AI often mixes up a difference in units with a percentage change. Check the maths.">"Soup sales rose 62%"</li>
              <li data-bucket="check" data-why="Data shows what happened, not why. Reasons in an AI summary are guesses until you check them.">"Croissant sales fell because of the weather"</li>
              <li data-bucket="keep" data-why="Customer names and email addresses are personal data. Do not paste them into a public AI tool.">A sheet of customer names and email addresses</li>
              <li data-bucket="keep" data-why="Staff pay is private. Only use an approved business tool, and only if you are allowed to.">Staff names with their hourly pay</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI to analyse a small sales table, then check its numbers yourself in a spreadsheet. Use made-up data or your own data with no names.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient spreadsheet tutor for a small business owner. Use simple English.

        Here is my weekly sales data (units sold). It has no personal data:
        Item, Price, Week 1, Week 2, Week 3, Week 4
        [Flat white, 3.40, 410, 432, 455, 468]
        [Croissant, 2.80, 260, 248, 271, 255]
        [Sourdough loaf, 4.50, 96, 102, 99, 110]
        [Soup of the day, 5.90, 58, 74, 92, 120]

        Assume the header is in row 1 and the data is in A2:F5 in Google Sheets or Excel.
        1. Give the exact formulas for: total units per item (column G), revenue per item (column H), and the % change from Week 1 to Week 4 (column I).
        2. Show the result each formula should give, in a table.
        3. Suggest one chart and say why.
        4. Write 3 short findings. Use only the numbers above. Do not guess reasons.
        5. List the 3 numbers I should check most carefully, and how to check each one.</pre>
            <ul class="ai-try-checks">
              <li>Paste the data and formulas into a real spreadsheet. Do the results match the AI's table?</li>
              <li>The % change divides by the Week 1 number (for soup: 106.9%, not 62%).</li>
              <li>The findings use only the given numbers and give no made-up reasons.</li>
              <li>The formulas use the right cell ranges for your sheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI makes spreadsheets faster: it writes formulas, builds charts and summarises trends in plain words. But it can add wrongly and mix up units with percentages. Recalculate every number you will act on with your own formula, keep private data out of public tools, and make the final decision yourself.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Automating Tasks</h1>
        </div>
        <p class="lc-lead">Some tasks repeat every week: turn a form into an email, copy a row into a post, sort new messages. Automation tools can do these tasks for you, and now they can include an AI step that writes or sorts text. In this lesson you will learn how Zapier, Make and Power Automate work, how to add an AI step, and what a simple AI agent is. Most importantly, you will learn where to put a human check so nothing wrong goes out in your name.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="An automation workflow in Zapier, Make or Power Automate. Step 1, the trigger: a new row is added to a sheet. Step 2, the AI step: AI drafts the caption. Step 3, the human check: Priya approves or declines. Step 4, the action: the approved caption is added to the Ready to post list. If Priya declines, the draft goes back with a note and the AI step runs again. A note says that simple agents choose their own steps, so the human check matters even more.">
            <defs><marker id="gt12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">One workflow in Zapier, Make or Power Automate</text>
              <text x="100" y="52" font-size="11" fill="#8b5cf6">WHEN</text>
              <text x="290" y="52" font-size="11" fill="#3b82f6">AI DRAFTS</text>
              <text x="480" y="52" font-size="11" fill="#f59e0b">A PERSON CHECKS</text>
              <text x="670" y="52" font-size="11" fill="#10b981">THEN</text>
              <rect x="20" y="60" width="160" height="70" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="100" y="90" font-weight="700">1. Trigger</text>
              <text x="100" y="112" font-size="11" fill="#9b99b8">new row in a sheet</text>
              <rect x="210" y="60" width="160" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="290" y="90" font-weight="700">2. AI step</text>
              <text x="290" y="112" font-size="11" fill="#9b99b8">draft the caption</text>
              <rect x="400" y="60" width="160" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="480" y="90" font-weight="700">3. Human check</text>
              <text x="480" y="112" font-size="11" fill="#9b99b8">Priya approves</text>
              <rect x="590" y="60" width="155" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="667" y="90" font-weight="700">4. Action</text>
              <text x="667" y="112" font-size="11" fill="#9b99b8">add to Ready to post</text>
              <rect x="400" y="168" width="160" height="56" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="480" y="192" font-weight="700">Declined</text>
              <text x="480" y="211" font-size="11" fill="#9b99b8">back with a note</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt12a)">
                <line x1="181" y1="95" x2="207" y2="95"/>
                <line x1="371" y1="95" x2="397" y2="95"/>
                <line x1="561" y1="95" x2="587" y2="95"/>
                <line x1="480" y1="131" x2="480" y2="165"/>
                <polyline points="399,196 290,196 290,134"/>
              </g>
              <text x="380" y="256" font-size="11" fill="#9b99b8">Simple agents choose their own steps, so the human check matters even more.</text>
            </g>
          </svg>
          <figcaption>Grace's weekly special workflow. The AI writes a draft, a person approves it, and only then does the automation move it on.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How an automation works</h3>
          <p>Every automation has the same parts:</p>
          <ul class="lc-list">
            <li><strong>Trigger:</strong> the event that starts it. For example, "a new row is added to a sheet" or "a form is sent".</li>
            <li><strong>Actions:</strong> the steps that follow. For example, "send an email" or "add a row".</li>
            <li><strong>AI step:</strong> an action where AI writes, summarises or sorts text, using a prompt you write once.</li>
            <li><strong>Approval step:</strong> the workflow stops and waits until a person approves, edits or declines.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>What it calls a workflow</th><th>AI and approval features (in general words)</th></tr></thead>
            <tbody>
              <tr><td><strong>Zapier</strong></td><td>A "Zap"</td><td>AI steps that write or sort text; a Human in the Loop step that pauses for approval by email or Slack; Zapier Agents</td></tr>
              <tr><td><strong>Make</strong></td><td>A "scenario"</td><td>A visual canvas with AI modules; Make AI Agents that pick from tools you allow</td></tr>
              <tr><td><strong>Microsoft Power Automate</strong></td><td>A "flow"</td><td>Copilot can build a flow from a plain description; a "Run a prompt" AI action; an Approvals action that works with Teams and Outlook</td></tr>
            </tbody>
          </table>
          <p>Names and features change often, and some need a paid plan. Check the tool's current help pages. Use the tool your company already approves, especially when customer data passes through it.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Grace's Monday special</h3>
          <p>Every Monday, Grace adds the weekly special to a Google Sheet. She used to write the Instagram caption by hand. Now a Zap does the first draft.</p>
          <table class="lc-table">
            <thead><tr><th>Week</th><th>Special</th><th>Price</th><th>Allergens</th></tr></thead>
            <tbody>
              <tr><td>w/c 19 Oct 2026</td><td>Cheddar &amp; Leek Soup with sourdough</td><td>£6.50</td><td>milk; gluten (bread)</td></tr>
            </tbody>
          </table>
          <p><strong>The AI step prompt</strong> (written once, used every week):</p>
          <pre><code>You write Instagram captions for Kettle &amp; Crumb, a bakery-café in Ancoats, Manchester.
        Voice: warm, local, homemade, unfussy. Short sentences. UK spelling. No exclamation marks.
        Write one caption of 40 to 60 words for this week's special.
        Special: {Special}. Price: {Price}. Allergens: {Allergens}.
        Use ONLY these facts. Always end with the allergen line.
        Do not add ingredients, suppliers, awards or reviews.</code></pre>
          <p>The words in curly brackets, such as <code>{Special}</code>, are filled in from the sheet each week.</p>
          <p><strong>What happened in the first test:</strong> the AI wrote "made with local Lancashire cheddar". Grace never said where the cheese comes from. Priya declined the draft with a note. Grace added "Do not say where ingredients come from" to the prompt. The next test was correct.</p>
          <p>Notice what the Zap does <em>not</em> do: it does not post to Instagram by itself. The approved caption goes to a "Ready to post" list. Priya posts it with a real photo. A mistake in a public post, or a missing allergen, costs more than the five minutes this saves.</p>
        </div>
        <div class="lc-card">
          <h3>Simple agents and keeping a human check</h3>
          <p>An <strong>AI agent</strong> is a tool that gets a goal, not fixed steps. It decides which steps to take and which connected apps to use. For example: "Find local hiking clubs in Denver and draft a short invite to our fitting day." Zapier Agents and Make AI Agents are examples. Agents are useful, but harder to predict than a fixed workflow.</p>
          <p><strong>Chris's flow at Summit Trails Outdoor:</strong> customers book the free boot-fitting day on Saturday 7 November 2026 with a form. Chris asked Copilot in Power Automate to build a flow. A "Run a prompt" step drafts a confirmation email. If the customer asked a question, an approval goes to Dana, the store manager, in Teams. Only then does Outlook send the reply. The customer data stays inside the company's Microsoft 365, as company policy requires.</p>
          <p><strong>Rules for safe automations and agents:</strong></p>
          <ul class="lc-list">
            <li>Start with drafts. Add an approval before anything public, anything sent to customers and anything about money.</li>
            <li>Give the least access needed. An agent that drafts emails does not need permission to send them or to pay invoices.</li>
            <li>Test with made-up sample data before you use real data.</li>
            <li>Check the run history (the log of each run) every week for errors and odd outputs.</li>
            <li>Name an owner who can switch it off quickly.</li>
            <li>Never let an automation make decisions about people, such as hiring or pay.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Build the Monday special Zap</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Grace's steps for building her automation in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the task on paper: when, what the AI writes, who checks, and where it goes.</li>
              <li data-order="2">Choose the trigger: a new row in the "Weekly specials" Google Sheet.</li>
              <li data-order="3">Add the AI step with the voice guide, the facts from the row and the rules.</li>
              <li data-order="4">Add an approval step so Priya approves, edits or declines each draft.</li>
              <li data-order="5">Add the final action: put the approved caption in the "Ready to post" list.</li>
              <li data-order="6">Test it with a made-up special and read every word of the output.</li>
              <li data-order="7">Turn it on, and check the run history every week.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe one repeating task, and ask the AI to design a safe automation for it. You can then build it in the tool you use.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an automation adviser for small teams with no coding skills. Use simple English.

        My repeating task: [every Monday I turn the weekly special in a Google Sheet into a draft Instagram caption].
        Tools I can use: [Google Workspace, a Zapier account and Instagram].
        Who can approve: [Priya, our café manager].

        Design an automation for this task:
        1. A table with columns: Step number, Type (trigger, AI step, approval, action), What happens, Tool.
        2. The exact prompt for the AI step, with placeholders like {Special} for data from the trigger.
        3. Where the human approval goes, and why there.
        4. Three things that could go wrong, and how to spot each one in the run history.
        5. What data must NOT pass through this automation.
        6. A 3-row test plan with made-up sample data.
        Do not suggest letting the automation post publicly without approval.</pre>
            <ul class="ai-try-checks">
              <li>There is a human approval before anything public or sent to customers.</li>
              <li>The AI step prompt says to use only the given facts.</li>
              <li>The tool and step names exist in your tool (check its help pages).</li>
              <li>The test plan uses made-up data, not real customer data.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An automation is a trigger, some actions and, now, an AI step that drafts or sorts text. Let AI do the repeating draft work, but put a human approval before anything public, anything for customers and anything about money. Give agents the least access they need, test with sample data, and check the run history.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Meetings and Notes</h1>
        </div>
        <p class="lc-lead">AI can now listen to a meeting, write a transcript and give you a summary with action items. Microsoft Teams, Zoom and Google Meet all have this built in. It means you can listen instead of typing notes. But AI summaries can get a number wrong or give a task to the wrong person. Recording people also needs their agreement. In this lesson you will learn how these tools work, how to ask people first, and how to check an AI summary before you share it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Three stages of an AI-assisted meeting. Before: tell people first, ask if they agree, check company rules. During: the AI notice is visible, say decisions clearly, pause the AI for private topics. After: read the AI recap, fix names and numbers, share and store safely. Below, an example: the AI recap said the trade-in offer was 25 dollars off, but the transcript shows 20 dollars, so Chris fixes it before sharing.">
            <defs><marker id="gt13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="225" height="150" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="127" y="42" font-size="14" font-weight="700" fill="#c4b5fd">Before</text>
              <text x="127" y="75">Tell people first</text>
              <text x="127" y="102">Ask if they agree</text>
              <text x="127" y="129">Check company rules</text>
              <rect x="268" y="15" width="225" height="150" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="42" font-size="14" font-weight="700" fill="#93c5fd">During</text>
              <text x="380" y="75">AI notice is visible</text>
              <text x="380" y="102">Say decisions clearly</text>
              <text x="380" y="129">Pause for private topics</text>
              <rect x="520" y="15" width="225" height="150" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="632" y="42" font-size="14" font-weight="700" fill="#6ee7b7">After</text>
              <text x="632" y="75">Read the AI recap</text>
              <text x="632" y="102">Fix names and numbers</text>
              <text x="632" y="129">Share and store safely</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt13a)">
                <line x1="241" y1="90" x2="265" y2="90"/>
                <line x1="494" y1="90" x2="517" y2="90"/>
                <line x1="333" y1="226" x2="420" y2="226"/>
              </g>
              <rect x="70" y="195" width="260" height="62" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="200" y="220" font-weight="700" fill="#fcd34d">AI recap says</text>
              <text x="200" y="242">"Trade-in: $25 off"</text>
              <rect x="425" y="195" width="265" height="62" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="557" y="220" font-weight="700" fill="#6ee7b7">Transcript shows</text>
              <text x="557" y="242">"$20 off", so Chris fixes it</text>
            </g>
          </svg>
          <figcaption>Before, during and after an AI-assisted meeting. The AI recap is a draft: a person checks it against the transcript before sharing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What meeting AI does</h3>
          <p>Three words are often mixed up:</p>
          <ul class="lc-list">
            <li><strong>Recording:</strong> a video or audio file of the meeting.</li>
            <li><strong>Transcript:</strong> the words people said, written down, usually with each speaker's name.</li>
            <li><strong>AI summary (recap):</strong> a short version written by AI, often with decisions and action items (tasks with an owner and a date).</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>App</th><th>Built-in AI (in general words)</th><th>Good to know</th></tr></thead>
            <tbody>
              <tr><td><strong>Microsoft Teams</strong></td><td>Copilot answers questions during and after the meeting. An AI recap lists notes and tasks.</td><td>Needs a Microsoft 365 Copilot licence or Teams Premium. Some features need transcription turned on.</td></tr>
              <tr><td><strong>Zoom</strong></td><td>Zoom AI Companion writes a meeting summary and next steps.</td><td>Included with many paid Zoom plans. The host turns it on, and participants see a notice.</td></tr>
              <tr><td><strong>Google Meet</strong></td><td>"Take notes for me" with Gemini writes notes into a Google Doc.</td><td>Needs an eligible Workspace or Google AI plan. Participants see a notice, and admins can require consent first.</td></tr>
            </tbody>
          </table>
          <p>Plans and features change often. Check the tool's current help pages. Separate "note-taker" apps that join your meeting as an extra guest also exist. Use only the ones your company approves.</p>
        </div>
        <div class="lc-card">
          <h3>Ask first: consent and privacy</h3>
          <p>A recording or transcript holds people's voices, names and opinions. In the UK, this is personal data under UK GDPR. People should know it is happening, why, who will see it and how long you keep it. In the US, recording laws differ from state to state. Some states require every person on a call to agree to a recording. This is general information, not legal advice. Check your company policy, and ask a qualified adviser if you are unsure.</p>
          <p><strong>Good habits:</strong></p>
          <ul class="lc-list">
            <li>Say it out loud at the start, even though the app shows a notice: "I would like to use AI notes today. Is everyone OK with that?"</li>
            <li>If someone says no, turn it off and take notes by hand.</li>
            <li>Do not use AI notes for sensitive meetings, such as health, pay, complaints or disciplinary meetings, unless your policy clearly allows it.</li>
            <li>Share the summary only with people who were in the meeting or need it.</li>
            <li>Delete recordings and transcripts when you no longer need them, following your company's rules.</li>
          </ul>
          <p><strong>Grace's supplier call:</strong> on Wednesday 7 October 2026, Grace talks to Ellie Shaw from Pennine Orchards (a made-up fruit supplier) on Google Meet about pears for the loaf. Grace asks, "Do you mind if I turn on Gemini notes?" Ellie agrees. The notes say pears arrive "every Tuesday and Friday". Ellie actually said Tuesday and Thursday. Grace corrects the notes and sends Ellie a short email to confirm the days in writing.</p>
        </div>
        <div class="lc-card">
          <h3>Check the recap before you share it</h3>
          <p>AI recaps often go wrong in the same ways. Check these five things against the transcript or your memory:</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Common AI mistake</th></tr></thead>
            <tbody>
              <tr><td><strong>Numbers and prices</strong></td><td>A wrong amount, such as "$25 off" when people agreed "$20 off"</td></tr>
              <tr><td><strong>Owners</strong></td><td>A task given to the person who talked about it, not the person who agreed to do it</td></tr>
              <tr><td><strong>Dates</strong></td><td>The wrong day, or a "next Friday" that is unclear</td></tr>
              <tr><td><strong>Decisions vs ideas</strong></td><td>An idea someone mentioned shown as a final decision</td></tr>
              <tr><td><strong>Missing points</strong></td><td>A quick warning or "no" that the summary left out</td></tr>
            </tbody>
          </table>
          <p><strong>A better prompt after the meeting:</strong></p>
          <pre><code>From this meeting transcript, list:
        1. Decisions (only things people clearly agreed).
        2. Action items: task, owner, due date. Quote the transcript line for each.
        3. Numbers, prices and dates mentioned, exactly as said.
        4. Open questions.
        If you are not sure about an owner or date, write [CHECK].</code></pre>
          <p>Asking the AI to quote the line makes checking much faster. You can search the transcript for the quote.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Chris checks his launch meeting recap</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="check" data-label="Ask first">On Tuesday 13 October 2026, Chris starts a Teams meeting with Dana and Marcus about the Ridgeback Trail Boot launch. He asks if they agree to transcription and Copilot. Both say yes.</li>
              <li data-kind="tool" data-label="Meeting">They agree the plan: $169, or $149 with the $20 trade-in. Marcus will order 240 pairs by Friday 16 October. Dana will book 2 extra staff for the fitting day on Saturday 7 November.</li>
              <li data-kind="user" data-label="Prompt">After the meeting, Chris asks Copilot: "List decisions and action items with owner and due date. Quote the transcript line for each. Mark anything unclear [CHECK]."</li>
              <li data-kind="answer" data-label="Recap">Copilot gives a neat list of decisions, tasks and dates. It looks finished.</li>
              <li data-kind="warn" data-label="Wrong number">The recap says the trade-in is "$25 off". The transcript says "twenty dollars". A wrong price in a customer email would be a real problem.</li>
              <li data-kind="warn" data-label="Wrong owner">The recap says Dana will order the stock. Dana only asked about it. Marcus said, "I'll place the order."</li>
              <li data-kind="check" data-label="Fix and add">Chris fixes both points. He also adds a point the recap missed: Marcus said, "No weight claims until the supplier sends the spec sheet."</li>
              <li data-kind="result" data-label="Shared">Chris sends the checked notes to Dana and Marcus only, and asks them to reply if anything is wrong.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn a short, messy meeting transcript into clear notes, and see how a good prompt makes checking easier.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful meeting note-taker. Use simple English.

        Here is a short made-up transcript (everyone agreed to AI notes):
        [Chris: So the boot is 169, and with the trade-in it's twenty dollars off.
        Dana: Should I order the stock?
        Marcus: No, I'll place the order. 240 pairs, by Friday the 16th.
        Dana: OK. I'll book two extra staff for the fitting day on Saturday the 7th.
        Chris: Maybe we do a raffle too? Let's think about it.
        Marcus: And no weight claims until we get the spec sheet.]

        Write meeting notes with these parts:
        1. Decisions (only things clearly agreed).
        2. Action items in a table: task, owner, due date, quote from the transcript.
        3. Numbers and dates, exactly as said.
        4. Ideas that are NOT decided yet.
        5. Warnings or "do not" points.
        If anything is unclear, write [CHECK] next to it. Do not add anything that is not in the transcript.</pre>
            <ul class="ai-try-checks">
              <li>The stock order belongs to Marcus, not Dana.</li>
              <li>The trade-in is $20 off, not another amount.</li>
              <li>The raffle is listed as an idea, not a decision.</li>
              <li>The "no weight claims" warning is not missing.</li>
              <li>Nothing appears that was not in the transcript.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Meeting AI lets you listen instead of typing, but the recap is only a draft. Ask people before you record or transcribe, and keep AI out of sensitive meetings. Then check numbers, owners, dates and decisions against the transcript before you share the notes.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Using AI Tools Safely at Work and Home</h1>
        </div>
        <p class="lc-lead">AI tools are useful only if you use them safely. A leaked customer list, a hacked account or a scam payment can undo all the time AI saves you. In this lesson you will learn how to protect your AI accounts, which data settings to check, and what a company AI policy should say. You will also learn how to help children use AI safely, and how to spot new AI-powered scams such as cloned voices and fake supplier emails.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A traffic light guide for data. Green, fine to use in AI tools: public menu and prices, your own draft text, made-up sample data. Amber, approved work tools only: sales totals, internal plans, supplier emails. Red, never in public AI tools: customer names and emails, staff details and pay, passwords and card numbers. Below are three safety habits: accounts, with a strong password and two-step login; settings, with training off and temporary chats; scams, stop, check and call back on a number you know.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="230" height="160" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <circle cx="40" cy="40" r="9" fill="#10b981"/>
              <text x="140" y="45" font-size="13" font-weight="700" fill="#6ee7b7">Green: fine to use</text>
              <text x="130" y="85">Public menu and prices</text>
              <text x="130" y="115">Your own draft text</text>
              <text x="130" y="145">Made-up sample data</text>
              <rect x="265" y="15" width="230" height="160" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <circle cx="290" cy="40" r="9" fill="#f59e0b"/>
              <text x="392" y="45" font-size="13" font-weight="700" fill="#fcd34d">Amber: approved tools</text>
              <text x="380" y="85">Sales totals</text>
              <text x="380" y="115">Internal plans</text>
              <text x="380" y="145">Supplier emails</text>
              <rect x="515" y="15" width="230" height="160" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <circle cx="540" cy="40" r="9" fill="#ec4899"/>
              <text x="642" y="45" font-size="13" font-weight="700" fill="#f9a8d4">Red: never in public AI</text>
              <text x="630" y="85">Customer names, emails</text>
              <text x="630" y="115">Staff details and pay</text>
              <text x="630" y="145">Passwords, card numbers</text>
              <rect x="15" y="200" width="230" height="80" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="130" y="228" font-size="13" font-weight="700">Accounts</text>
              <text x="130" y="250" font-size="11" fill="#9b99b8">strong password</text>
              <text x="130" y="266" font-size="11" fill="#9b99b8">two-step login or passkey</text>
              <rect x="265" y="200" width="230" height="80" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="228" font-size="13" font-weight="700">Settings</text>
              <text x="380" y="250" font-size="11" fill="#9b99b8">training off where possible</text>
              <text x="380" y="266" font-size="11" fill="#9b99b8">temporary chats for one-offs</text>
              <rect x="515" y="200" width="230" height="80" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="630" y="228" font-size="13" font-weight="700">Scams</text>
              <text x="630" y="250" font-size="11" fill="#9b99b8">stop and check</text>
              <text x="630" y="266" font-size="11" fill="#9b99b8">call back on a number you know</text>
            </g>
          </svg>
          <figcaption>A traffic light guide for what data can go into which AI tool, plus three everyday safety habits.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Protect your accounts and check your data settings</h3>
          <p>Your AI account may hold months of chats about your work, your plans and your family. Protect it like your email account.</p>
          <ul class="lc-list">
            <li><strong>Separate accounts:</strong> use your work account for work, and your personal account for personal tasks. Do not put work files in a personal AI account.</li>
            <li><strong>Strong login:</strong> use a long, unique password and turn on two-step verification (a code or app check as well as your password), or a passkey.</li>
            <li><strong>Training setting:</strong> many chat assistants have a setting that lets your chats help train their models. On personal plans, you can usually turn it off. Business plans usually do not train on your data by default. Check the plan's terms.</li>
            <li><strong>Temporary chats:</strong> use a temporary or private chat for one-off questions you do not want saved in your history.</li>
            <li><strong>Memory and history:</strong> some assistants remember facts about you. Review what is saved and delete what you do not want kept.</li>
            <li><strong>Shared links:</strong> a shared chat link can often be opened by anyone who has it. Check before you share.</li>
            <li><strong>Official apps only:</strong> fake "AI" apps and browser extensions can steal data. Download only from the official website or app store, and check the developer's name.</li>
          </ul>
          <p>Setting names and places change often. Check the tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Follow (or write) an AI policy</h3>
          <p>An <strong>AI policy</strong> is a short set of company rules for using AI. It answers: which tools are approved, what data can go where, what must be checked, and who to ask.</p>
          <p><strong>Chris at Summit Trails Outdoor</strong> works under a clear policy. Microsoft 365 Copilot and the company's business chat assistant are approved. No customer lists or sales data go into personal AI accounts. When he wanted to try a new video tool, he asked first instead of signing up with his work email.</p>
          <p><strong>Grace at Kettle &amp; Crumb</strong> had no policy, so she wrote a one-page version for her 9 staff:</p>
          <pre><code>Kettle &amp; Crumb: how we use AI (October 2026)
        1. Approved tools for staff: Gemini in our Google Workspace, and Canva.
        2. Never paste customer names, emails, phone numbers or staff details into any AI tool.
        3. AI writes drafts. A person checks every price, date and allergen before anything is posted or printed.
        4. Label AI-made images and videos when we post them.
        5. Never use AI to write fake reviews or copy someone's voice or face.
        6. Not sure? Ask Grace or Priya before you use it.</code></pre>
          <p>A short policy that people read is better than a long one that nobody reads. If your company has a policy, follow it. If it does not, ask your manager.</p>
          <p><strong>If something goes wrong</strong>, for example someone pastes a customer list into a public AI tool, tell your manager at once. It may be a personal data breach. Under UK GDPR, a breach that is likely to put people at risk must be reported to the ICO (the UK data protection regulator). Report it quickly, and where possible within 72 hours of finding out. This is general information, not legal advice. Ask a qualified adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Children and family use</h3>
          <ul class="lc-list">
            <li><strong>Check the age rules.</strong> Each tool sets a minimum age. For example, ChatGPT requires users to be at least 13, with a parent's permission under 18, and offers parental controls. Some assistants are for adults only. Check each tool's terms.</li>
            <li><strong>Use family settings</strong> where they exist, such as linked parent accounts, content filters and quiet hours.</li>
            <li><strong>Talk about it.</strong> Explain that AI can be confidently wrong. It is not a friend or a doctor. Ask them to come to you if something feels wrong.</li>
            <li><strong>Protect personal details.</strong> Children should not share their full name, school, address or photos with AI tools.</li>
            <li><strong>Fake images are harmful.</strong> Never make AI images of real people without their consent. In the UK and the US, sharing fake sexual images of a real person is a crime.</li>
            <li><strong>Follow school rules</strong> about using AI for homework.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Spot AI-powered scams</h3>
          <p>Scammers use AI too. AI writes scam emails with perfect spelling, copies a voice from a short clip, and makes fake videos of famous people.</p>
          <table class="lc-table">
            <thead><tr><th>Scam</th><th>What it looks like</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td><strong>Cloned voice</strong></td><td>A call that sounds like your child or boss: "I'm in trouble, send money now."</td><td>Hang up. Call back on a number you know. Agree a family code word in advance.</td></tr>
              <tr><td><strong>Fake supplier email</strong></td><td>"Our bank details have changed. Please pay today."</td><td>Call the supplier on the number you already have. Never use the number in the email.</td></tr>
              <tr><td><strong>Deepfake advert</strong></td><td>A video of a celebrity selling an investment or a miracle product</td><td>Do not click. Report the advert on the platform.</td></tr>
              <tr><td><strong>Fake AI tool</strong></td><td>"Free premium AI" download or login page</td><td>Use only official sites and app stores.</td></tr>
            </tbody>
          </table>
          <p><strong>Grace's near miss:</strong> an email "from Pennine Orchards" says their bank details have changed and the pear invoice is overdue. It is well written and uses the right logo. Grace calls Ellie Shaw on the number she already has. Ellie never sent it. Grace does not pay, and she reports it.</p>
          <p><strong>Where to report:</strong> in England, Wales and Northern Ireland, use Report Fraud (reportfraud.police.uk); in Scotland, call Police Scotland on 101. In the US, use the FTC at ReportFraud.ftc.gov. In both countries you can forward scam texts to 7726. If you have paid money, call your bank at once.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Green, amber or red?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each piece of information. Where can it go?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="green" data-label="Green: fine in AI tools"></div>
              <div data-sorter-target="bucket" data-bucket="amber" data-label="Amber: approved work tools only"></div>
              <div data-sorter-target="bucket" data-bucket="red" data-label="Red: never in public AI"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="green" data-why="The menu and prices are already public, so they are fine to use in any AI tool.">The autumn menu with its public prices</li>
              <li data-bucket="green" data-why="Made-up data contains no real person's details. It is a safe way to test a tool.">A made-up sales table for practice</li>
              <li data-bucket="amber" data-why="Sales totals are business data. Use them only in a tool your business approves, such as Gemini in your Workspace.">September sales totals for the café</li>
              <li data-bucket="amber" data-why="Internal launch plans are not public. Keep them in approved work tools.">Summit Trails' launch stock plan of 240 pairs</li>
              <li data-bucket="red" data-why="Customer names and email addresses are personal data. Keep them out of public AI tools.">The newsletter list with 1,850 email addresses</li>
              <li data-bucket="red" data-why="Staff health information is very sensitive personal data. Never paste it into a public AI tool.">A staff member's sick note</li>
              <li data-bucket="red" data-why="Passwords and card numbers should never go into any AI chat.">The password for the café's social media account</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI to check a suspicious message for scam signs. Remove any real names, numbers and links before you paste a real message.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly online safety adviser. Use simple English.

        I received this message. I have removed personal details:
        [Hi Grace, this is Pennine Orchards accounts. Our bank has changed, so the old details will no longer work. Your pear invoice is 5 days overdue. Please pay today to the new account below to avoid a late fee. Reply only to this email, our phones are down this week.]

        My situation: [I run a small café in the UK and I pay this supplier every month].

        1. List every warning sign in the message, and explain each one in one sentence.
        2. Rate how likely it is to be a scam: low, medium or high. Say why.
        3. Give me 5 safe next steps, in order.
        4. Tell me where to report it in my country, and say I should check the official website.
        5. Write a short message I can send to my staff to warn them.
        Do not ask me for any passwords, bank details or personal data.</pre>
            <ul class="ai-try-checks">
              <li>It spots the pressure, the changed bank details and the "do not call us" line.</li>
              <li>It tells you to contact the supplier using a number you already have.</li>
              <li>The reporting advice matches the official service for your country.</li>
              <li>It never asks for passwords or bank details.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Safe AI use is a set of simple habits: a strong login, the right data settings, and a clear idea of which data can go where. Follow your company's AI policy, or write a short one. Help children use AI with age-right settings. When a message is urgent and asks for money, stop and check through a channel you already trust.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Capstone: Launch a Product with AI Tools</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together. You will follow Grace as she launches the Kettle &amp; Crumb autumn menu with AI tools: a plan, the copy, images, slides and a short video. Every piece comes from one fact sheet, and every piece is checked and labelled before it goes out. At the end you will use the same method to build a launch kit for your own product, event or project.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A launch workflow. On the left, 1 Fact sheet: prices, dates and allergens. Arrows go from it to five outputs in the middle: 2 Launch plan, 3 Copy for the newsletter and posts, 4 Images and posters, 5 Tasting evening slides, 6 A 15-second video. Arrows go from all five outputs to 7 Check and label: facts, allergens and AI labels. Then an arrow goes to Launch on Saturday 17 October 2026. A note says every output is built from the same fact sheet and checked by a person.">
            <defs><marker id="gt15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="105" width="150" height="80" rx="8" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="90" y="135" font-weight="700">1. Fact sheet</text>
              <text x="90" y="156" font-size="11" fill="#9b99b8">prices, dates,</text>
              <text x="90" y="171" font-size="11" fill="#9b99b8">allergens</text>
              <rect x="215" y="15" width="200" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="315" y="39">2. Launch plan</text>
              <rect x="215" y="66" width="200" height="38" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="315" y="90">3. Copy: newsletter, posts</text>
              <rect x="215" y="117" width="200" height="38" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="315" y="141">4. Images and posters</text>
              <rect x="215" y="168" width="200" height="38" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="315" y="192">5. Tasting evening slides</text>
              <rect x="215" y="219" width="200" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="315" y="243">6. 15-second video</text>
              <rect x="465" y="105" width="140" height="80" rx="8" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="535" y="135" font-weight="700">7. Check &amp; label</text>
              <text x="535" y="156" font-size="11" fill="#9b99b8">facts, allergens,</text>
              <text x="535" y="171" font-size="11" fill="#9b99b8">AI labels</text>
              <rect x="635" y="105" width="110" height="80" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="690" y="138" font-weight="700">Launch</text>
              <text x="690" y="160" font-size="11" fill="#9b99b8">Sat 17 Oct 2026</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gt15a)">
                <line x1="166" y1="145" x2="212" y2="34"/>
                <line x1="166" y1="145" x2="212" y2="85"/>
                <line x1="166" y1="145" x2="212" y2="136"/>
                <line x1="166" y1="145" x2="212" y2="187"/>
                <line x1="166" y1="145" x2="212" y2="238"/>
                <line x1="416" y1="34" x2="462" y2="138"/>
                <line x1="416" y1="85" x2="462" y2="141"/>
                <line x1="416" y1="136" x2="462" y2="145"/>
                <line x1="416" y1="187" x2="462" y2="149"/>
                <line x1="416" y1="238" x2="462" y2="152"/>
                <line x1="606" y1="145" x2="632" y2="145"/>
              </g>
              <text x="380" y="286" font-size="11" fill="#9b99b8">Every output is built from the same fact sheet, then checked by a person.</text>
            </g>
          </svg>
          <figcaption>Grace's launch workflow. One fact sheet feeds every AI tool, and nothing goes out until a person has checked it and added the right labels.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: One fact sheet and a plan</h3>
          <p>A <strong>fact sheet</strong> is one short document with every fact about the launch. Every prompt uses it, and every check compares against it. It stops each tool from inventing its own version of your prices and dates. Grace writes it herself, not with AI.</p>
          <pre><code>KETTLE &amp; CRUMB: AUTUMN MENU FACT SHEET (checked by Grace)
        Spiced Pear &amp; Ginger Loaf: £3.40 a slice, £14.00 whole loaf
        Maple Pecan Cinnamon Bun: £3.60
        Toasted Hazelnut Latte: £3.90
        Cheddar &amp; Leek Soup with sourdough: £6.50
        Autumn Pairing: any latte + a cinnamon bun, £6.80 (saves £0.70)
        Allergens: bun and hazelnut latte contain nuts. Loaf, bun and soup bread
        contain gluten. Soup contains milk. Oat milk available.
        Dates: tasting evening Thu 15 Oct 2026. Launch Sat 17 Oct 2026.
        Menu runs until Sun 29 Nov 2026.
        Do NOT say: any oat milk charge, awards, reviews, "luxury".</code></pre>
          <p>Next, she asks her chat assistant for a launch plan that works back from the launch date. She gives it the fact sheet and the jobs. Then she checks every date and weekday in her own calendar. AI often pairs a date with the wrong weekday.</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Task</th><th>Tool</th><th>Checked by</th></tr></thead>
            <tbody>
              <tr><td>Thu 8 Oct</td><td>Newsletter and Instagram copy</td><td>Chat assistant, voice guide</td><td>Grace</td></tr>
              <tr><td>Fri 9 Oct</td><td>Poster and post designs</td><td>Canva with Brand Kit</td><td>Grace, Priya</td></tr>
              <tr><td>Mon 12 Oct</td><td>Tasting evening slides</td><td>Canva presentation</td><td>Grace, Tom</td></tr>
              <tr><td>Tue 13 Oct</td><td>15-second video</td><td>Phone clips, AI video and music tools</td><td>Priya</td></tr>
              <tr><td>Wed 14 Oct</td><td>Final check of everything</td><td>Fact sheet, a printed checklist</td><td>Grace, Tom, Priya</td></tr>
              <tr><td>Fri 16 Oct</td><td>Newsletter to 1,850 subscribers</td><td>Email tool</td><td>Grace</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Step 2: Copy and images</h3>
          <p><strong>Copy:</strong> Grace pastes her voice guide and the fact sheet into her chat assistant. She asks for a 120-word newsletter intro, three Instagram captions and a chalkboard line of 10 words or fewer. She adds: "Use only the facts in the fact sheet. Mark anything new [CHECK]." One caption says "now with oat milk at no extra charge". That is not on the fact sheet, so she deletes it.</p>
          <p><strong>Images:</strong> she uses Canva with her Brand Kit for the poster and posts. She follows one firm rule: real items get real photos. Priya photographs Tom's real buns, loaf and soup. AI makes only the autumn background and layout ideas. Grace adds the prices and logo herself, because AI image tools often misspell words and numbers.</p>
          <p><strong>Labels:</strong> some tools, such as Adobe Firefly, add content credentials (C2PA information stored in the file that shows AI was used). Not every tool does this, and platforms may remove the information when you upload. Grace's own policy is simple: if an image or video was mainly made by AI, she says so in the caption. Instagram also asks people to disclose realistic AI video and audio. Check each platform's current rules.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: Slides and a short video</h3>
          <p><strong>Slides:</strong> for the tasting evening, Grace wants 5 slides on the café TV. She asks her chat assistant for the outline first: welcome, the four new items, the Autumn Pairing, allergens, launch date. She fixes the order, then builds the slides in Canva with her Brand Kit. Tom checks every allergen line against his recipes. The Food Standards Agency (FSA) has allergen guidance for food businesses in England, Wales and Northern Ireland. Grace checks it, and she does not rely on AI for allergen facts.</p>
          <p><strong>Video:</strong> Grace asks for a 15-second vertical video script with 4 shots. Each shot has a description, on-screen text of at most 6 words and a voice-over line.</p>
          <table class="lc-table">
            <thead><tr><th>Shot</th><th>What we see</th><th>On-screen text</th><th>Made with</th></tr></thead>
            <tbody>
              <tr><td>1 (0-4 s)</td><td>Steam rising from a latte, close up</td><td>Autumn is here in Ancoats</td><td>AI video clip, labelled (no people)</td></tr>
              <tr><td>2 (4-8 s)</td><td>Tom slicing the real pear loaf</td><td>Spiced Pear &amp; Ginger Loaf</td><td>Phone clip (Tom agreed)</td></tr>
              <tr><td>3 (8-12 s)</td><td>A real bun and latte on the counter</td><td>Autumn Pairing £6.80</td><td>Phone clip</td></tr>
              <tr><td>4 (12-15 s)</td><td>The café door with the logo</td><td>From Sat 17 October</td><td>Phone clip</td></tr>
            </tbody>
          </table>
          <p>For shot 1, Priya tries Gemini Omni, Google's newest video model, in Google Vids, which Grace's Workspace plan includes. Check what your plan includes. Google adds an invisible SynthID watermark to these videos. The background music comes from an AI music tool whose licence allows business use. Priya edits it all together in Canva. The caption says: "Opening shot made with AI."</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: The final check</h3>
          <p>On Wednesday 14 October, Grace, Tom and Priya check every piece against the fact sheet. Three people catch more than one.</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>What they look for</th></tr></thead>
            <tbody>
              <tr><td><strong>Facts</strong></td><td>Every price, date and item name matches the fact sheet exactly</td></tr>
              <tr><td><strong>Allergens</strong></td><td>Nuts, gluten and milk are named wherever the items appear</td></tr>
              <tr><td><strong>Claims</strong></td><td>No awards, reviews, "best in Manchester" or promises they cannot keep</td></tr>
              <tr><td><strong>Honest images</strong></td><td>Real items shown with real photos; AI used only for mood and backgrounds</td></tr>
              <tr><td><strong>Labels and rights</strong></td><td>AI-made video labelled; music licence allows business use; Tom agreed to be filmed</td></tr>
              <tr><td><strong>Privacy</strong></td><td>No customer names or emails were pasted into any AI tool</td></tr>
              <tr><td><strong>Voice</strong></td><td>Read aloud: warm, local, homemade, unfussy</td></tr>
            </tbody>
          </table>
          <p>The check finds one last mistake. A post still has a price line that AI wrote: "Autumn Pairing £6.30". Priya types the correct £6.80 from the fact sheet. AI made the work fast. People made it right.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Put the launch in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Grace's launch steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the fact sheet: prices, dates, allergens and the claims to avoid.</li>
              <li data-order="2">Ask a chat assistant for a launch plan, then check every date in a calendar.</li>
              <li data-order="3">Draft the newsletter and captions with the voice guide and the fact sheet.</li>
              <li data-order="4">Make the posters, slides and video, using real photos for the real items.</li>
              <li data-order="5">Check every piece against the fact sheet with Tom and Priya.</li>
              <li data-order="6">Add AI labels where needed, then publish and send the newsletter.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a launch kit for your own product, event or project. Change the details in the brackets, or leave them to practise with Grace's launch.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a launch coach for a small business. Use simple English and UK spelling.

        My fact sheet (use ONLY these facts):
        [Business: Kettle &amp; Crumb, a bakery-café in Ancoats, Manchester. Voice: warm, local, homemade, unfussy.
        Product: autumn menu. Autumn Pairing: any latte + a cinnamon bun, £6.80. Spiced Pear &amp; Ginger Loaf, £3.40 a slice.
        Allergens: bun and Toasted Hazelnut Latte contain nuts; loaf and bun contain gluten.
        Dates: tasting evening Thursday 15 October 2026; launch Saturday 17 October 2026.]

        Make a launch kit with these parts:
        1. A launch plan table working back from the launch date: date, task, tool type, who checks.
        2. A 100-word newsletter intro and two short Instagram captions.
        3. One image prompt for a background only (no food, no text, no faces).
        4. A 5-slide outline for the tasting evening.
        5. A 15-second, 4-shot video script: shot, on-screen text (max 6 words), voice-over.
        6. A final checklist: facts, allergens, claims, labels, privacy.
        Mark any fact that is not in my fact sheet with [CHECK]. No awards, reviews or claims I did not give you.</pre>
            <ul class="ai-try-checks">
              <li>Every price, date and allergen matches the fact sheet exactly.</li>
              <li>Nothing new appears without a [CHECK] mark.</li>
              <li>The dates in the plan fall on the right weekdays and come before the launch.</li>
              <li>The checklist includes AI labels and private data.</li>
              <li>The copy sounds like the brand voice when you read it aloud.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good AI launch starts with one fact sheet that a person writes and trusts. Each tool does the job it is best at: drafts, designs, slides and video. Then people check every fact, use real photos for real products, label AI-made content and keep private data out. AI makes the work fast; you make it right.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

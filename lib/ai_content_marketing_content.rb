module AiContentMarketingContent
  # Units (sidebar dividers): 1–4 Content and AI Basics · 5–9 Creating Content · 10–14 Distribution and Quality · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">What Content Marketing Is</h1>
        </div>
        <p class="lc-lead">Content marketing means you create useful content that helps people. Over time, this help builds trust. When people are ready to buy, they remember you. In this lesson you will learn what "helpful content" means. You will learn the buyer journey: the steps a person goes through before they buy. You will also learn the main content types. You will use these ideas in every lesson of this course.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A funnel with three stages. Awareness: I have a problem, served by blog posts, guides and short videos. Consideration: what are my options, served by comparisons, case studies and FAQs. Decision: why choose you, served by reviews, offers and the order page. The examples are for Sweet Crumbs, a London bakery.">
            <defs><marker id="cm1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="220" y="26" font-weight="700" fill="#c4b5fd">The buyer journey</text>
              <text x="590" y="26" font-weight="700" fill="#c4b5fd">Content for each stage</text>
              <polygon points="40,40 400,40 362,110 78,110" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="220" y="70" font-weight="700">Awareness</text>
              <text x="220" y="90" font-size="11" fill="#9b99b8">"I have a problem."</text>
              <polygon points="82,120 358,120 320,190 120,190" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="220" y="150" font-weight="700">Consideration</text>
              <text x="220" y="170" font-size="11" fill="#9b99b8">"What are my options?"</text>
              <polygon points="124,200 316,200 278,270 162,270" fill="#1f1f44" stroke="#10b981"/>
              <text x="220" y="230" font-weight="700">Decision</text>
              <text x="220" y="250" font-size="11" fill="#9b99b8">"Why choose you?"</text>
              <rect x="440" y="40" width="300" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="590" y="68">Blog posts, guides, short videos</text>
              <text x="590" y="90" font-size="11" fill="#9b99b8">"5 tips for a soft eggless cake"</text>
              <rect x="440" y="120" width="300" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="590" y="148">Comparisons, case studies, FAQs</text>
              <text x="590" y="170" font-size="11" fill="#9b99b8">"Fresh cream or buttercream cake?"</text>
              <rect x="440" y="200" width="300" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="590" y="228">Reviews, offers, order page</text>
              <text x="590" y="250" font-size="11" fill="#9b99b8">"Order a custom cake in London"</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cm1a)">
                <line x1="392" y1="75" x2="436" y2="75"/>
                <line x1="360" y1="155" x2="436" y2="155"/>
                <line x1="320" y1="235" x2="436" y2="235"/>
              </g>
              <text x="380" y="292" font-size="11" fill="#9b99b8">Example: Sweet Crumbs, a made-up bakery in London</text>
            </g>
          </svg>
          <figcaption>People need different content at each stage. Helpful content meets them where they are.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Helpful content, not ads</h3>
          <p>An ad says "Buy from us". Content marketing says "Here is how to solve your problem". The help comes first. The sale may come later.</p>
          <p>Think of Sweet Crumbs, a made-up home bakery in London. It posts a short guide: "How to store a cake so it stays fresh". Many people read it. Most do not buy that day. But some of them order a birthday cake next month. They remember the bakery that helped them.</p>
          <p>Good content has three things:</p>
          <ul class="lc-list">
            <li><strong>It answers a real question</strong> that your customers ask.</li>
            <li><strong>It is true and specific.</strong> It uses real details, not general words.</li>
            <li><strong>It shows your experience.</strong> It says what you have seen or done yourself.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The buyer journey</h3>
          <p>The <strong>buyer journey</strong> is the path a person takes from "I have a problem" to "I will buy this". Many marketers split it into three stages. Here is an example for LedgerLite, a made-up accounting software startup in San Francisco.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>What the buyer thinks</th><th>Helpful content</th></tr></thead>
            <tbody>
              <tr><td><strong>Awareness</strong></td><td>"My invoices are a mess. I miss payments."</td><td>A blog post: "7 signs your small business needs better bookkeeping"</td></tr>
              <tr><td><strong>Consideration</strong></td><td>"Should I use a spreadsheet, hire help or buy software?"</td><td>A comparison guide, a checklist, a customer story</td></tr>
              <tr><td><strong>Decision</strong></td><td>"Is LedgerLite right for me? What does it cost?"</td><td>A pricing page, a demo video, answers to common worries</td></tr>
            </tbody>
          </table>
          <p>Real people do not always move in a straight line. They may jump back or skip a stage. The stages still help you plan what to write.</p>
        </div>
        <div class="lc-card">
          <h3>Common content types, and where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it is</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>Blog post</td><td>An article on your website</td><td>Answering questions people search for</td></tr>
              <tr><td>Guide</td><td>A long, detailed article or PDF</td><td>Teaching a topic step by step</td></tr>
              <tr><td>Case study</td><td>A true story of how you helped one customer</td><td>Showing proof</td></tr>
              <tr><td>Newsletter</td><td>A regular email to people who signed up</td><td>Staying in touch</td></tr>
              <tr><td>Video or podcast</td><td>Content people watch or listen to</td><td>Showing how things work, building a personal link</td></tr>
              <tr><td>Social post</td><td>A short post on Instagram, LinkedIn and similar apps</td><td>Reaching new people quickly</td></tr>
            </tbody>
          </table>
          <p>AI assistants such as Claude or ChatGPT can help you think of ideas for each stage. Compare these two prompts:</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me content ideas for my bakery.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run Sweet Crumbs, a home bakery in London. We sell eggless cakes
        and cookies to families and office teams.
        Give me 3 content ideas for each stage of the buyer journey:
        awareness, consideration and decision.
        For each idea, give the customer question it answers and a format.</code></pre>
          <p>The AI does not know your customers. Check each idea against real questions you hear in your shop, on the phone or in messages.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which stage?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each piece of content by the buyer journey stage it serves best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="aware" data-label="Awareness"></div>
              <div data-sorter-target="bucket" data-bucket="consider" data-label="Consideration"></div>
              <div data-sorter-target="bucket" data-bucket="decide" data-label="Decision"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="aware" data-why="The reader has a problem but is not looking for a product yet.">Backwater Trails blog post: "What to pack for a monsoon trip to Kerala"</li>
              <li data-bucket="consider" data-why="The reader is comparing options before choosing one.">A guide: "Houseboat or homestay: which is better for families?"</li>
              <li data-bucket="decide" data-why="The reader is ready to choose and wants the final details.">LedgerLite pricing page with a list of what each plan includes</li>
              <li data-bucket="aware" data-why="It teaches a general skill. It does not talk about any product.">Sweet Crumbs Instagram reel: "3 mistakes that make cakes dry"</li>
              <li data-bucket="consider" data-why="It shows how one customer solved the problem. Readers use it to compare options.">Rangrez Crafts customer story: how a Chicago café chose handmade cushion covers</li>
              <li data-bucket="decide" data-why="It removes the last worries before a person buys.">An FAQ: "How do I place a custom cake order, and when will it arrive?"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to map content ideas to the buyer journey for your business. Then check the ideas against real customer questions.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a content marketing coach for small businesses. Use simple English.

        My business: [Sweet Crumbs, a home bakery in London that sells eggless cakes and cookies].
        My customers: [families and office teams who order for birthdays and festivals].
        Questions customers often ask me: [Do you make eggless cakes? How early should I order? Can you deliver to Canary Wharf?].

        Please:
        1. Explain the buyer journey (awareness, consideration, decision) in 3 short sentences, using my business as the example.
        2. Give 3 content ideas for each stage. For each idea, give the customer question it answers and the best format (blog post, short video, FAQ, social post, case study or email).
        3. Mark which ideas need my own experience or real customer stories.

        Show points 2 and 3 in one table. Do not invent facts, prices or statistics about my business.</pre>
            <ul class="ai-try-checks">
              <li>Each idea answers a real customer question, not a question the AI made up.</li>
              <li>Decision-stage ideas talk about ordering, prices or proof.</li>
              <li>No made-up facts, prices or numbers about your business.</li>
              <li>The table has a format for every idea.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Content marketing is help first, sale later. Plan content for every stage of the buyer journey. AI can suggest ideas quickly, but only you know which questions your real customers ask.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Where AI Helps in Content</h1>
        </div>
        <p class="lc-lead">AI can save you hours on content work. It can research, plan, draft, edit and turn one piece into many. But some parts only you can do: your real experience, your opinions and your customer stories. In this lesson you will learn which content tasks to give to AI. You will also learn which parts must stay human. This split decides whether your content is fast and good, or fast and forgettable.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Five content steps in a row: research, outline, draft, edit and repurpose. AI helps with each step. Below them, a bar shows the human parts that feed every step: real experience, your opinions, customer stories and the final check.">
            <defs>
              <marker id="cm2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <marker id="cm2b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#ec4899"/></marker>
            </defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="28" font-weight="700" fill="#c4b5fd">AI helps with each step</text>
              <rect x="15" y="45" width="128" height="58" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="79" y="70" font-weight="700">Research</text>
              <text x="79" y="90" font-size="11" fill="#9b99b8">find questions</text>
              <rect x="165" y="45" width="128" height="58" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="229" y="70" font-weight="700">Outline</text>
              <text x="229" y="90" font-size="11" fill="#9b99b8">plan sections</text>
              <rect x="315" y="45" width="128" height="58" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="379" y="70" font-weight="700">Draft</text>
              <text x="379" y="90" font-size="11" fill="#9b99b8">first version</text>
              <rect x="465" y="45" width="128" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="529" y="70" font-weight="700">Edit</text>
              <text x="529" y="90" font-size="11" fill="#9b99b8">shorten, fix</text>
              <rect x="615" y="45" width="128" height="58" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="679" y="70" font-weight="700">Repurpose</text>
              <text x="679" y="90" font-size="11" fill="#9b99b8">new formats</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cm2a)">
                <line x1="145" y1="74" x2="161" y2="74"/>
                <line x1="295" y1="74" x2="311" y2="74"/>
                <line x1="445" y1="74" x2="461" y2="74"/>
                <line x1="595" y1="74" x2="611" y2="74"/>
              </g>
              <g stroke="#ec4899" stroke-width="1.5" stroke-dasharray="4 3" fill="none" marker-end="url(#cm2b)">
                <line x1="79" y1="158" x2="79" y2="108"/>
                <line x1="229" y1="158" x2="229" y2="108"/>
                <line x1="379" y1="158" x2="379" y2="108"/>
                <line x1="529" y1="158" x2="529" y2="108"/>
                <line x1="679" y1="158" x2="679" y2="108"/>
              </g>
              <rect x="15" y="160" width="728" height="64" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="379" y="185" font-weight="700" fill="#f9a8d4">You add the human parts</text>
              <text x="379" y="208" font-size="12" fill="#e2e0f0">Real experience · your opinions · customer stories · the final check</text>
              <text x="379" y="255" font-size="12" fill="#9b99b8">AI makes the work faster. You make it true and worth reading.</text>
            </g>
          </svg>
          <figcaption>AI speeds up every step. Your experience, opinions and checks go into every step too.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five places AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>What AI does well</th><th>What you must still do</th></tr></thead>
            <tbody>
              <tr><td><strong>Research</strong></td><td>Lists questions people may ask. Suggests angles (a point of view for the piece).</td><td>Check the questions with real customers. Check any fact or source it gives.</td></tr>
              <tr><td><strong>Outline</strong></td><td>Puts ideas in a clear order with headings.</td><td>Remove weak sections. Add the points only you know.</td></tr>
              <tr><td><strong>Draft</strong></td><td>Writes a first version quickly.</td><td>Add your examples, numbers and stories. Remove general filler.</td></tr>
              <tr><td><strong>Edit</strong></td><td>Shortens long sentences, fixes grammar, suggests clearer words.</td><td>Keep your voice. Make sure the meaning did not change.</td></tr>
              <tr><td><strong>Repurpose</strong></td><td>Turns a blog post into social posts, an email or a video script.</td><td>Check that each new version is still correct and fits the channel.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The human parts</h3>
          <p>AI writes from patterns in text it has seen. It has not baked a cake, met your customers or run your shop. So it cannot give you:</p>
          <ul class="lc-list">
            <li><strong>Experience.</strong> "We tried 12 cotton suppliers before we found one that did not fade."</li>
            <li><strong>Opinions.</strong> "We think fast-fashion prints hurt local artisans. Here is why."</li>
            <li><strong>Stories.</strong> "Meena ji has printed with wooden blocks for 30 years. This is her favourite design."</li>
            <li><strong>Judgement.</strong> What to publish, what to leave out, and what is true.</li>
          </ul>
          <p>These examples are for Rangrez Crafts, a made-up handicrafts store in Manchester. Without these parts, its blog would sound like every other shop. With them, readers learn something they cannot get anywhere else.</p>
          <p>Also remember: AI can be wrong. It can state made-up facts with confidence. Check every fact, number and quote. Do not paste private customer data or secret business data into public AI tools.</p>
        </div>
        <div class="lc-card">
          <h3>Give AI your raw material</h3>
          <p>The best results come when you give AI your notes, and ask it to organise them. Compare:</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a blog post about block print bedsheets.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run Rangrez Crafts, a handicrafts store in Manchester.
        Here are my notes from a talk with our printer, Meena ji:
        [paste your notes]
        Turn these notes into a 600-word blog post for people who
        are new to block print bedsheets. Keep her words in quotes
        exactly as written. Do not add facts that are not in my notes.
        Mark any place where I should add a photo or a detail.</code></pre>
          <p>The second prompt gives AI real material. It also tells AI what not to do. The result needs less fixing.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a drafting session with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">Write a 500-word blog post for Rangrez Crafts: "How to care for block print bedsheets". Our tips: wash in cold water, dry in shade, no bleach.</li>
              <li data-kind="answer" data-label="AI draft">A clear post with 6 care tips. It opens with: "Hand block printing has been loved by royal families for over 1,000 years."</li>
              <li data-kind="warn" data-label="Catch this">The history claim has no source. You did not give it to the AI. Remove it, or find a trusted source and check it.</li>
              <li data-kind="check" data-label="You check the tips">Four tips match your notes. Two tips are new: "use salt water on the first wash" and "iron on high heat". You are not sure they are right for your fabric, so you ask your printer.</li>
              <li data-kind="user" data-label="Your follow-up">Remove the history line and the two tips I did not give you. Add this story: a customer in London still uses our bedsheet after 5 years of washing.</li>
              <li data-kind="answer" data-label="AI revision">A shorter post with your 4 tips and the customer story near the end.</li>
              <li data-kind="check" data-label="Final human check">You read it aloud. You add a photo of the fabric and one line in your own words. Now it is ready to publish.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Pick one content piece you want to make. Ask AI to split the work into AI tasks and human tasks.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a content marketing coach. You help small teams use AI without losing their human voice. Use simple English.

        My business: [Rangrez Crafts, an online handicrafts store in Manchester that sells block print bedsheets and cushion covers].
        The content I want to make: [a blog post called "How to choose a block print bedsheet"].
        Who it is for: [first-time buyers in Indian cities].

        Please make a table with these columns: Step, What AI can do, What I must do myself, What I must check.
        Use these steps: research, outline, draft, edit, repurpose.

        Then list 3 questions I should answer from my own experience before I start. These answers will make the post different from other shops.

        Do not invent facts about my business or my products.</pre>
            <ul class="ai-try-checks">
              <li>The table has all five steps.</li>
              <li>The "What I must do myself" column includes experience, stories or opinions.</li>
              <li>The "What I must check" column mentions facts, numbers or claims.</li>
              <li>The 3 questions are about your own work, not general facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI do the fast parts: listing, ordering, drafting and reshaping. Keep the human parts for yourself: experience, opinions, stories and the final check. Your own knowledge is what makes content worth reading.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Content Strategy with AI</h1>
        </div>
        <p class="lc-lead">A content strategy is a simple plan for your content. It says why you create content, who it is for, what you will write about, in which formats and where you will share it. Without a plan, people post random things and give up after a few weeks. In this lesson you will build a one-page strategy. You will use AI to draft it and you will check it with your own knowledge.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A one-page content strategy with five parts in order: goals, audience, topics, formats and channels. Example for LedgerLite, a San Francisco accounting software startup: 50 demo requests a month, small business owners, GST and invoice topics, how-to blogs and checklists, shared on Google search, LinkedIn and email.">
            <defs><marker id="cm3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="5" y="8" width="750" height="232" rx="12" fill="none" stroke="#4b4a78" stroke-dasharray="6 4"/>
              <text x="380" y="30" font-weight="700" fill="#c4b5fd">One-page strategy: LedgerLite (made-up SaaS, San Francisco)</text>
              <rect x="15" y="48" width="128" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="79" y="73" font-weight="700">1. Goals</text>
              <rect x="165" y="48" width="128" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="229" y="73" font-weight="700">2. Audience</text>
              <rect x="315" y="48" width="128" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="379" y="73" font-weight="700">3. Topics</text>
              <rect x="465" y="48" width="128" height="40" rx="8" fill="#27274e" stroke="#10b981"/><text x="529" y="73" font-weight="700">4. Formats</text>
              <rect x="615" y="48" width="128" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="679" y="73" font-weight="700">5. Channels</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cm3a)">
                <line x1="145" y1="68" x2="161" y2="68"/>
                <line x1="295" y1="68" x2="311" y2="68"/>
                <line x1="445" y1="68" x2="461" y2="68"/>
                <line x1="595" y1="68" x2="611" y2="68"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <rect x="15" y="100" width="128" height="100" rx="8" fill="#1f1f44"/>
                <text x="79" y="130">50 demo requests</text><text x="79" y="150">a month, within</text><text x="79" y="170">6 months</text>
                <rect x="165" y="100" width="128" height="100" rx="8" fill="#1f1f44"/>
                <text x="229" y="130">Small business</text><text x="229" y="150">owners with 2 to</text><text x="229" y="170">20 staff</text>
                <rect x="315" y="100" width="128" height="100" rx="8" fill="#1f1f44"/>
                <text x="379" y="130">GST filing basics</text><text x="379" y="150">invoices</text><text x="379" y="170">cash flow</text>
                <rect x="465" y="100" width="128" height="100" rx="8" fill="#1f1f44"/>
                <text x="529" y="130">How-to blogs</text><text x="529" y="150">checklists</text><text x="529" y="170">short videos</text>
                <rect x="615" y="100" width="128" height="100" rx="8" fill="#1f1f44"/>
                <text x="679" y="130">Google search</text><text x="679" y="150">LinkedIn</text><text x="679" y="170">email newsletter</text>
              </g>
              <text x="380" y="224" font-size="12" fill="#6ee7b7">Each part follows from the one before it.</text>
              <text x="380" y="262" font-size="11" fill="#9b99b8">Review the page every 3 months and change what is not working.</text>
            </g>
          </svg>
          <figcaption>A content strategy fits on one page: goals, audience, topics, formats and channels.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five parts of a content strategy</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>The question it answers</th><th>Tip</th></tr></thead>
            <tbody>
              <tr><td><strong>Goals</strong></td><td>What should content do for the business?</td><td>Pick one or two goals you can measure, for example "more enquiries" or "more newsletter sign-ups".</td></tr>
              <tr><td><strong>Audience</strong></td><td>Who is it for, and what problems do they have?</td><td>Describe one main group. Use what you learn from real customers.</td></tr>
              <tr><td><strong>Topics</strong></td><td>What will you write about?</td><td>Choose 3 to 5 topic groups (sometimes called "content pillars") that link your audience's problems to what you sell.</td></tr>
              <tr><td><strong>Formats</strong></td><td>In what shape will you publish?</td><td>Pick formats you can make every month, not just once.</td></tr>
              <tr><td><strong>Channels</strong></td><td>Where will people find it?</td><td>Go where your audience already is. Start with one or two channels.</td></tr>
            </tbody>
          </table>
          <p>A small team can add two more lines: how often you will publish, and how you will measure results. You will learn measuring later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>A one-page strategy template</h3>
          <p>Copy this template into a document. Fill it in with your own facts first. Then ask AI to improve it.</p>
          <pre><code>ONE-PAGE CONTENT STRATEGY: [business name]
        Business goal:       [for example, 50 demo requests a month]
        Content goal:        [for example, 2,000 visits a month to how-to posts]
        Main audience:       [who they are, their top 3 problems]
        Topic groups (3-5):  [topic 1], [topic 2], [topic 3]
        Formats:             [blog posts, checklists, short videos]
        Channels:            [Google search, LinkedIn, email newsletter]
        How often:           [for example, 1 blog post and 1 newsletter a week]
        How we measure:      [enquiries, sign-ups, visits]
        Review date:         [every 3 months]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Using AI to draft and test your strategy</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a content strategy for my accounting software.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a content strategist for B2B software.
        Business: LedgerLite, accounting software for small businesses in India.
        Goal: 50 demo requests a month within 6 months.
        Audience: owners of businesses with 2 to 20 staff. Many do their
        own bookkeeping and worry about GST deadlines.
        Team: 1 marketer, 6 hours a week for content.
        Fill in this one-page strategy: [paste the template].
        Then list 3 risks in this plan and 3 questions I should ask customers.</code></pre>
          <p>The better prompt gives the goal, audience and time limit. So the AI suggests a plan a real team can follow. Now check the result:</p>
          <ul class="lc-list">
            <li><strong>Is the goal realistic?</strong> AI does not know your traffic or sales numbers. Use your own data.</li>
            <li><strong>Is the audience real?</strong> Talk to 3 to 5 customers. Do their problems match the plan?</li>
            <li><strong>Can you keep it up?</strong> A plan that needs 20 posts a month will fail if you have 6 hours a week.</li>
            <li><strong>Are the facts correct?</strong> Tax and legal topics (like GST) must be checked by a qualified person before you publish.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: build the strategy in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps for making a one-page content strategy in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down the business goal that content should support.</li>
              <li data-order="2">Describe your main audience and their top problems.</li>
              <li data-order="3">Collect real questions from customers and turn them into 3 to 5 topic groups.</li>
              <li data-order="4">Choose formats you can make regularly with your time and team.</li>
              <li data-order="5">Choose one or two channels where your audience already spends time.</li>
              <li data-order="6">Ask AI to find gaps and risks, then fix the plan yourself.</li>
              <li data-order="7">Set a review date and decide how you will measure results.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-page content strategy for your business. Then check each part against what you know.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a content strategist who helps small businesses. Use simple English.

        My business: [LedgerLite, a San Francisco startup that sells simple accounting software to small businesses in India].
        Business goal: [50 demo requests a month within 6 months].
        Main audience: [owners of businesses with 2 to 20 staff who do their own bookkeeping].
        Time and team: [1 marketer, about 6 hours a week for content].
        Channels I already use: [a website blog and a LinkedIn page].

        Create a one-page content strategy with these parts: business goal, content goal, audience and their top 3 problems, 3 to 5 topic groups, formats, channels, how often to publish, how to measure results, review date.

        Then add:
        - 3 risks or weak points in this plan.
        - 3 questions I should ask real customers to test it.

        Keep the plan realistic for my time. Do not invent statistics. Mark any tax or legal topic that an expert must check.</pre>
            <ul class="ai-try-checks">
              <li>All the parts are there, and each one fits on one line or two.</li>
              <li>The publishing plan fits the time you gave.</li>
              <li>The goals use your numbers, not numbers the AI invented.</li>
              <li>Tax or legal topics are marked for an expert to check.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A content strategy is a short plan that links a business goal to an audience, topics, formats and channels. AI is good at filling in and testing the plan. You must supply the real goals, the real customers and the real time you have.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Brand Voice and Style Guides</h1>
        </div>
        <p class="lc-lead">Brand voice is how your business sounds when it writes or speaks. A style guide is a short document that describes that voice and your writing rules. Without a guide, AI writes in a general, often over-excited tone. In this lesson you will learn to describe your voice with traits, do and don't lists and example sentences. Then you will give the guide to AI, so its drafts sound like you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A style guide for Sweet Crumbs lists its voice, a do rule, a don't rule and an example sentence. The guide goes to an AI assistant. Without the guide, the AI writes: Indulge in our exquisite world-class delicacies. With the guide, it writes: Fresh eggless cakes, baked in London every morning.">
            <defs>
              <marker id="cm4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <marker id="cm4b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#10b981"/></marker>
            </defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="25" width="230" height="210" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="130" y="50" font-weight="700" fill="#c4b5fd">Sweet Crumbs style guide</text>
              <g font-size="11" text-anchor="start">
                <text x="30" y="82" fill="#e2e0f0">Voice: warm, simple, local</text>
                <text x="30" y="112" fill="#6ee7b7">Do: short sentences</text>
                <text x="30" y="130" fill="#6ee7b7">Do: say what is in the cake</text>
                <text x="30" y="160" fill="#fca5a5">Don't: "world-class", "best"</text>
                <text x="30" y="178" fill="#fca5a5">Don't: many exclamation marks</text>
                <text x="30" y="208" fill="#9b99b8">Example: "Baked fresh at 6 am."</text>
              </g>
              <rect x="290" y="100" width="140" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="360" y="126" font-weight="700">AI assistant</text>
              <text x="360" y="145" font-size="11" fill="#9b99b8">reads the guide</text>
              <line x1="247" y1="130" x2="286" y2="130" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cm4a)"/>
              <rect x="470" y="25" width="275" height="80" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="607" y="48" font-size="11" fill="#f9a8d4">Without the guide</text>
              <text x="607" y="70" font-size="12">"Indulge in our exquisite</text>
              <text x="607" y="88" font-size="12">world-class delicacies!!"</text>
              <rect x="470" y="155" width="275" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="607" y="178" font-size="11" fill="#6ee7b7">With the guide</text>
              <text x="607" y="200" font-size="12">"Fresh eggless cakes,</text>
              <text x="607" y="218" font-size="12">baked in London every morning."</text>
              <path d="M432,118 L466,78" stroke="#9b99b8" stroke-width="1.5" stroke-dasharray="4 3" fill="none" marker-end="url(#cm4a)"/>
              <path d="M432,142 L466,182" stroke="#10b981" stroke-width="1.5" fill="none" marker-end="url(#cm4b)"/>
            </g>
          </svg>
          <figcaption>The same AI writes very differently when you give it a clear style guide.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Voice traits</h3>
          <p>Describe your voice with 3 or 4 <strong>traits</strong> (words that describe how you sound). A trait alone is too vague. So add what it means and what it does not mean. Here is an example for Sweet Crumbs, a made-up bakery in London.</p>
          <table class="lc-table">
            <thead><tr><th>Trait</th><th>This means</th><th>This does not mean</th></tr></thead>
            <tbody>
              <tr><td><strong>Warm</strong></td><td>We talk like a friendly neighbour. We use "you" and "we".</td><td>Too casual, or full of slang</td></tr>
              <tr><td><strong>Simple</strong></td><td>Short sentences. Everyday words.</td><td>Childish or boring</td></tr>
              <tr><td><strong>Honest</strong></td><td>We say what is in the cake and when it is baked.</td><td>Big claims like "the best cake in India"</td></tr>
              <tr><td><strong>Local</strong></td><td>We mention London places, festivals and seasons.</td><td>Only for London people. Visitors should understand us too.</td></tr>
            </tbody>
          </table>
          <p>Voice stays the same everywhere. <strong>Tone</strong> (the mood of one piece) can change. A birthday post can be playful. A message about a late delivery should be calm and sorry.</p>
        </div>
        <div class="lc-card">
          <h3>What goes in a style guide</h3>
          <p>Keep it short: one or two pages. A short guide is easier for people and AI to follow.</p>
          <pre><code>STYLE GUIDE: [business name]
        Who we write for:  [main audience in one line]
        Voice traits:      [trait]: means [...], not [...]  (3 or 4 traits)
        Do:                [4 to 6 rules, e.g. "Use short sentences"]
        Don't:             [4 to 6 rules, e.g. "No 'world-class' or 'best'"]
        Words we use:      [e.g. "eggless", "baked fresh", "order"]
        Words we avoid:    [e.g. "cheap", "hurry", "limited time only"]
        Spelling and format: [e.g. British spelling, prices as Rs 450 or ₹450]
        Good examples:     [3 real sentences or posts that sound like us]
        Bad examples:      [2 sentences that do not sound like us, and why]</code></pre>
          <p>The examples are the most useful part. AI copies a style much better from examples than from adjectives.</p>
        </div>
        <div class="lc-card">
          <h3>Giving the guide to AI</h3>
          <p>Paste the guide at the start of your prompt. Many AI tools also let you save instructions, for example in a project or a custom assistant. Check your tool's current help pages for how this works.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an Instagram caption for our new mango cake. Make it fun.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Follow this style guide: [paste the Sweet Crumbs guide]
        Write 3 Instagram captions for our new eggless mango cake.
        Facts: made with Alphonso mango pulp, 500 g and 1 kg sizes,
        orders need 1 day's notice. Price: [your price].
        Max 40 words each. At most one emoji. Use only these facts.</code></pre>
          <p>After AI writes, check three things. Does it follow the do and don't lists? Did it add any claims or facts you did not give? Would a regular customer believe you wrote it?</p>
        </div>
        <div class="lc-card">
          <h3>Activity: on voice or off voice?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sweet Crumbs' voice is warm, simple, honest and local. Sort each sentence.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="on" data-label="On voice"></div>
              <div data-sorter-target="bucket" data-bucket="off" data-label="Off voice"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="on" data-why="Short, warm and specific about when the cakes are baked.">Our cakes are baked fresh every morning in Islington.</li>
              <li data-bucket="off" data-why="&quot;Best in the world&quot; is a big claim you cannot prove. It breaks the honest trait.">The best cakes in the whole world, guaranteed!!!</li>
              <li data-bucket="on" data-why="Calm and honest tone for a problem. The voice stays warm.">Sorry, your order is 30 minutes late. We will call you as soon as it leaves.</li>
              <li data-bucket="off" data-why="Long words and a formal style do not fit a simple, neighbourly voice.">We endeavour to deliver unparalleled confectionery experiences to discerning patrons.</li>
              <li data-bucket="on" data-why="Local and warm. It links the product to a festival its customers celebrate.">Planning a Ganesh Chaturthi get-together? Our modak cake serves 10.</li>
              <li data-bucket="off" data-why="Pushy words like &quot;hurry&quot; are on the avoid list.">HURRY! Order NOW or miss out forever!</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a few real pieces of your writing. Ask it to draft a style guide that you can paste into future prompts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a brand writer who helps small businesses write a clear style guide. Use simple English.

        My business: [Sweet Crumbs, a home bakery in London that sells eggless cakes and cookies].
        My audience: [families and office teams in London].
        How I want to sound: [warm, simple, honest, local].
        Words I never want to use: [world-class, best, hurry, cheap].
        Three real examples of my writing:
        1. [Our chocolate cake is back. Baked fresh at 6 am, ready by noon.]
        2. [Thank you, Priya, for the kind words about the rasmalai cake!]
        3. [No eggs, no shortcuts. Just good butter and slow baking.]

        Write a one-page style guide with:
        - 4 voice traits. For each: what it means and what it does not mean.
        - A Do list and a Don't list, 5 points each.
        - Words we use and words we avoid.
        - 3 good example sentences and 2 bad ones, with a reason for each bad one.
        End with one short instruction I can paste above any future prompt.</pre>
            <ul class="ai-try-checks">
              <li>The traits match how you really want to sound.</li>
              <li>The good examples sound like your own writing, not like an advert.</li>
              <li>The "avoid" words include the ones you listed.</li>
              <li>The guide is short enough to paste into a prompt.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI writes in a general voice unless you teach it yours. A short style guide with traits, do and don't lists and real examples fixes most of this. Paste it into every prompt, and still read each draft as your customer would.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Research and Outlines</h1>
        </div>
        <p class="lc-lead">Good content starts with real questions. Before you write, you collect what people actually ask, find trusted sources and choose an angle. An angle is the point of view that makes your piece different. Then you build an outline: a list of headings in order. In this lesson you will use AI to speed up research and outlines. You will also learn why every fact and source from AI must be checked.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Three sources, customer questions, search tools and sales and support, feed a question bank. The question bank leads to picking an angle, first-time visitors. The angle leads to an outline for Backwater Trails, a Boston travel agency, where each heading answers a real question.">
            <defs><marker id="cm5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="40" width="170" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="100" y="67">Customer questions</text>
              <rect x="15" y="108" width="170" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="100" y="135">Search tools</text>
              <rect x="15" y="176" width="170" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="100" y="203">Sales and support</text>
              <rect x="222" y="98" width="140" height="64" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="292" y="124" font-weight="700">Question bank</text>
              <text x="292" y="144" font-size="11" fill="#9b99b8">30 real questions</text>
              <rect x="394" y="98" width="140" height="64" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="464" y="124" font-weight="700">Pick an angle</text>
              <text x="464" y="144" font-size="11" fill="#9b99b8">first-time visitors</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cm5a)">
                <path d="M187,62 L218,112"/>
                <line x1="187" y1="130" x2="218" y2="130"/>
                <path d="M187,198 L218,148"/>
                <line x1="364" y1="130" x2="390" y2="130"/>
                <line x1="536" y1="130" x2="562" y2="130"/>
              </g>
              <rect x="566" y="25" width="180" height="210" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="656" y="48" font-weight="700" fill="#f9a8d4">Outline</text>
              <g font-size="11" text-anchor="start">
                <text x="576" y="76">H1: Backwaters, first visit</text>
                <text x="576" y="104">H2: Houseboat or day trip?</text>
                <text x="576" y="130">H2: Best months to go?</text>
                <text x="576" y="156">H2: What does it cost?</text>
                <text x="576" y="182">H2: Is it safe with kids?</text>
                <text x="576" y="214" fill="#9b99b8">Notes: facts to check</text>
              </g>
              <text x="380" y="266" font-size="12" fill="#6ee7b7">Each heading answers a real question. Example: Backwater Trails, Boston (made up).</text>
            </g>
          </svg>
          <figcaption>Collect real questions, choose an angle, then turn the questions into headings.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where to find real questions</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What to look for</th><th>Example for Backwater Trails</th></tr></thead>
            <tbody>
              <tr><td><strong>Customers</strong></td><td>Emails, WhatsApp messages, reviews, phone calls</td><td>"Can my parents, who are over 70, stay on a houseboat?"</td></tr>
              <tr><td><strong>Sales and support team</strong></td><td>The questions they answer every week</td><td>"Is the houseboat air-conditioned at night?"</td></tr>
              <tr><td><strong>Google Search Console</strong></td><td>A free Google tool. Its Performance report shows the search words that brought people to your site.</td><td>"kerala houseboat one night price"</td></tr>
              <tr><td><strong>Google search itself</strong></td><td>The "People also ask" box and the suggestions that appear as you type</td><td>"Is Vembanad Lake good for a first houseboat trip?"</td></tr>
              <tr><td><strong>Communities</strong></td><td>Travel forums, Reddit, Quora and social groups</td><td>"Is the monsoon a bad time for the backwaters?"</td></tr>
            </tbody>
          </table>
          <p>Put all the questions in one spreadsheet: your <strong>question bank</strong>. Add a column for the source and a column for the buyer journey stage. Remove personal details such as names and phone numbers before you share or paste the list anywhere.</p>
        </div>
        <div class="lc-card">
          <h3>What AI can and cannot do in research</h3>
          <ul class="lc-list">
            <li><strong>AI can</strong> suggest more questions, group your questions into themes, suggest angles and point out gaps.</li>
            <li><strong>AI cannot</strong> reliably tell you how many people search for something. Use a search tool for that.</li>
            <li><strong>AI can make up sources.</strong> It may give a report name, a statistic or a link that does not exist. Open every source yourself. If you cannot find it, do not use it.</li>
            <li><strong>AI may be out of date.</strong> Prices, rules and opening seasons change. Check them with the official source or your own team.</li>
          </ul>
          <p>Some AI tools can search the web and show links. This helps, but you must still open each link and check that it says what the AI claims.</p>
        </div>
        <div class="lc-card">
          <h3>Outlines that answer real questions</h3>
          <p>An outline is the plan of your article. A good outline uses the reader's questions as headings. H1 is the main title. H2s are the main sections.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an outline for a blog about Kerala backwaters.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a travel content writer for Backwater Trails, a Boston agency.
        Reader: a family visiting Kerala for the first time.
        Angle: honest, practical advice from a local team.
        Here are real customer questions: [paste 10-15 questions]
        Make an outline with an H1 and 5-7 H2 headings.
        Each H2 must answer one or more of these questions.
        Under each H2, list 2-3 points and mark facts I must check.
        Suggest where our own experience or a customer story fits.</code></pre>
          <p>Now read the outline as a first-time visitor. Are the most important questions near the top? Is anything missing? Remove any section that does not answer a real question.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a research session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Google Search Console">You open the Performance report and look at the queries (search words) for the last 3 months.</li>
              <li data-kind="result" data-label="What it shows">Many searches like "houseboat with kids kerala" and "best time for backwaters". Your site has no page that answers them well.</li>
              <li data-kind="user" data-label="Your prompt">Here are 25 questions from our customers and Search Console, with names removed. Group them into themes. Suggest 3 angles for a guide for first-time family visitors.</li>
              <li data-kind="answer" data-label="AI reply">Five themes: safety, cost, timing, houseboat vs day trip, food. Three angles. One says "Kerala tourism grew 40% last year, according to a government report."</li>
              <li data-kind="warn" data-label="Catch this">You did not give that number. The AI did not name the report or give a link. Do not use it unless you find the real source.</li>
              <li data-kind="check" data-label="You decide">You choose the angle "honest advice from a local team" and ask your guides which questions families ask most on the boat.</li>
              <li data-kind="answer" data-label="AI outline">An outline with 6 H2 headings, each linked to real questions, and a list of facts to check: prices, safety rules and seasons.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own customer questions, or use the sample ones. Ask AI to group them, suggest angles and build an outline.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a content researcher and writer for a small business. Use simple English.

        My business: [Backwater Trails, a travel agency in Boston that sells Kerala backwater trips].
        The reader: [families visiting Kerala for the first time].
        Real questions from my customers:
        [Is a houseboat safe with small children? Which months are best? Is one night enough? How much does a houseboat cost? Is there AC at night? Is Vembanad Lake a good base? What food is served on board? Can we go in the monsoon?]

        Please:
        1. Group the questions into 3 to 5 themes.
        2. Suggest 3 angles for one article. Say who each angle suits best.
        3. For the best angle, write an outline: one H1 and 5 to 7 H2 headings. Each H2 must answer at least one of my questions. Add 2 or 3 points under each H2.
        4. List every fact that I must check before publishing, such as prices, seasons and safety rules.

        Do not invent statistics, prices or sources. If you are not sure, write "check this".</pre>
            <ul class="ai-try-checks">
              <li>Every H2 heading links to at least one real question.</li>
              <li>No made-up numbers, prices or report names.</li>
              <li>The list of facts to check includes prices, seasons and safety.</li>
              <li>The angle fits your reader, not every possible reader.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Start with real questions from real people, not with what AI thinks people ask. Use AI to group questions, suggest angles and build the outline. Then open every source and check every fact yourself.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Writing Blog Posts with AI</h1>
        </div>
        <p class="lc-lead">AI can write a full blog post in seconds. But a post written in one go is often long, general and a little dull. It may also contain facts that are not true. In this lesson you will learn a better way. You will draft the post one section at a time. You will add your own examples and numbers. Then you will edit it until it sounds like you. This gives you posts that readers trust and search engines value.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Five steps: start with an outline, let AI draft one section, add your own examples and data, edit for voice and clarity, then check facts and prices. Steps two to four repeat for each section.">
            <defs><marker id="cm6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="34" fill="#9b99b8" font-size="12">Write one section at a time. Your own knowledge goes in at step 3.</text>
              <rect x="10" y="60" width="120" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="70" y="86" font-weight="700">1. Outline</text>
              <text x="70" y="105" font-size="11" fill="#9b99b8">headings + notes</text>
              <rect x="165" y="60" width="120" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="225" y="86" font-weight="700">2. AI drafts</text>
              <text x="225" y="105" font-size="11" fill="#9b99b8">one section</text>
              <rect x="320" y="60" width="120" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="86" font-weight="700">3. Add yours</text>
              <text x="380" y="105" font-size="11" fill="#9b99b8">examples, data</text>
              <rect x="475" y="60" width="120" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="535" y="86" font-weight="700">4. Edit</text>
              <text x="535" y="105" font-size="11" fill="#9b99b8">voice, clarity</text>
              <rect x="630" y="60" width="120" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="690" y="86" font-weight="700">5. Check</text>
              <text x="690" y="105" font-size="11" fill="#9b99b8">facts, prices</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cm6a)">
                <line x1="132" y1="90" x2="161" y2="90"/>
                <line x1="287" y1="90" x2="316" y2="90"/>
                <line x1="442" y1="90" x2="471" y2="90"/>
                <line x1="597" y1="90" x2="626" y2="90"/>
                <path d="M535,123 Q380,175 229,126" stroke-dasharray="5 4"/>
              </g>
              <text x="380" y="176" font-size="11.5" fill="#c4b5fd">repeat for each section</text>
              <text x="380" y="218" fill="#6ee7b7">Result: a post that sounds like you and is true.</text>
            </g>
          </svg>
          <figcaption>Draft, add, edit, and repeat for each section. Check everything before you publish.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why one section at a time?</h3>
          <p>When you ask AI for a whole post in one prompt, a few problems are common:</p>
          <ul class="lc-list">
            <li><strong>It is general.</strong> The text could be about any bakery in any city.</li>
            <li><strong>It repeats itself.</strong> The same idea shows up in three sections.</li>
            <li><strong>It makes things up.</strong> AI may add a statistic or a "study" that does not exist.</li>
            <li><strong>It is hard to edit.</strong> A long draft is tiring to fix all at once.</li>
          </ul>
          <p>When you work section by section, you stay in control. You read each part before you move on. You also have a clear place to add your own stories and numbers.</p>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <p>Here is an example from <strong>Sweet Crumbs</strong>, a made-up home bakery in London. The post is "How to Choose an Eggless Birthday Cake".</p>
          <pre><code>Weak:
        Write a blog post about eggless birthday cakes.</code></pre>
          <pre><code>Better:
        You are helping me write a blog post for Sweet Crumbs, a home bakery
        in London. Readers are parents planning a child's birthday.
        Here is my outline: [paste outline].
        Write only section 2, "How many kilos do you need?".
        Use about 150 words, short sentences and a friendly tone.
        Use this real information from me:
        - 1 kg feeds about 10 to 12 children in my experience.
        - Our 1 kg chocolate truffle cake costs ₹950.
        Do not add any statistics, studies or facts I did not give you.
        If you need a fact you do not have, write [CHECK: ...] instead.</code></pre>
          <p>The better prompt gives the reader, the outline, one section, the length, the tone and your own facts. The <code>[CHECK: ...]</code> rule is useful. It shows you where AI wanted a fact it did not have.</p>
        </div>
        <div class="lc-card">
          <h3>Add what only you know</h3>
          <p>AI has read a lot of general text. It has not worked in your bakery. Your own knowledge is what makes a post useful and different.</p>
          <table class="lc-table">
            <thead><tr><th>Add this</th><th>Example for Sweet Crumbs</th></tr></thead>
            <tbody>
              <tr><td><strong>Your experience</strong></td><td>"Cream cakes melt fast in May. For outdoor parties we suggest a ganache cake."</td></tr>
              <tr><td><strong>Your own data</strong></td><td>"Last Diwali, most of our orders were for 500 g gift cakes." (from your own order book)</td></tr>
              <tr><td><strong>Real customer questions</strong></td><td>"Can you write the name in Marathi?" Yes, and here is how to ask for it.</td></tr>
              <tr><td><strong>Local details</strong></td><td>Delivery areas such as Islington and Camden, and how early to order.</td></tr>
              <tr><td><strong>Your opinion</strong></td><td>"We think fresh fruit cakes are the best choice for very young children."</td></tr>
            </tbody>
          </table>
          <p><strong>Editing checklist:</strong></p>
          <ul class="lc-list">
            <li>Cut repeated ideas and shorten long sentences.</li>
            <li>Remove filler phrases such as "in today's fast-paced world".</li>
            <li>Check every price, date and fact.</li>
            <li>Read the post aloud once. If a sentence does not sound like you, rewrite it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: draft one section with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">Write section 3 of my Sweet Crumbs post, "Cream or fondant?". About 150 words. Use only the facts I give you. Facts: fondant holds shape longer; many children prefer cream; we charge ₹200 extra for fondant designs.</li>
              <li data-kind="answer" data-label="AI draft">A clear, friendly section. But it ends with: "Studies show 78% of London parents prefer cream cakes."</li>
              <li data-kind="warn" data-label="Catch the mistake">You never gave AI this number. There is no such study. Remove the sentence. Made-up statistics damage trust.</li>
              <li data-kind="user" data-label="Add your own example">Replace the last sentence with this: "Last month, one mother in Camden asked for a cream base with a small fondant crown on top. It was a good mix of both."</li>
              <li data-kind="answer" data-label="AI revises">The section now ends with your real story. It feels local and personal.</li>
              <li data-kind="check" data-label="You check">You check the ₹200 price against your price list. You read the section aloud and cut one long sentence.</li>
              <li data-kind="result" data-label="Ready">Section 3 is done. You move on to section 4 with the same steps.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft one section of a blog post, using only facts you give it. Then look for the [CHECK] notes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a blog writer for small businesses. Write in simple, friendly English with short sentences.

        Business: [Sweet Crumbs, a home bakery in London that sells eggless cakes]
        Readers: [parents planning a child's birthday party]
        Blog post title: [How to Choose an Eggless Birthday Cake]
        Section to write now: [How early should you order?]

        Facts from me (use only these):
        - [We need at least 2 days' notice for custom designs.]
        - [Plain cakes can be ready the next day.]
        - [Festival weeks like Diwali get busy, so order 5 days ahead.]

        Rules:
        1. Write only this one section, about 150 words.
        2. Do not add any statistics, studies, prices or facts I did not give you.
        3. If you need a fact you do not have, write [CHECK: what I should add] instead.
        4. Add one place where I can put a short story from my own experience. Mark it [MY STORY].
        5. After the section, list 2 questions a reader might still have.</pre>
            <ul class="ai-try-checks">
              <li>The section uses only your facts. There are no new numbers or "studies".</li>
              <li>There are [CHECK] or [MY STORY] notes for you to fill in.</li>
              <li>Sentences are short and the tone fits your brand.</li>
              <li>The reader questions are real questions your customers ask.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI write the first draft of one section at a time. You add the parts AI cannot know: your experience, your numbers and your opinions. Then you edit and check every fact before you publish.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Case Studies and Customer Stories</h1>
        </div>
        <p class="lc-lead">A case study is a true story about how one customer solved a problem with your product or service. People trust stories from other customers more than your own claims. In this lesson you will learn which questions to ask in a customer interview. You will use a simple structure: problem, solution, result. You will also learn why permission and honesty matter most, and where AI can go wrong.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="An interview gives the customer's own words. These go into a case study draft with three parts: problem, solution and result. The customer checks the draft and gives written approval. Only then do you publish.">
            <defs><marker id="cm7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="100" width="130" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="80" y="125" font-weight="700">Interview</text>
              <text x="80" y="144" font-size="11" fill="#9b99b8">customer's words</text>
              <rect x="185" y="15" width="250" height="212" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="310" y="38" font-weight="700" fill="#c4b5fd">Case study draft</text>
              <rect x="205" y="50" width="210" height="46" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="310" y="69" font-weight="700">Problem</text>
              <text x="310" y="86" font-size="11" fill="#9b99b8">life before, the pain</text>
              <rect x="205" y="110" width="210" height="46" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="310" y="129" font-weight="700">Solution</text>
              <text x="310" y="146" font-size="11" fill="#9b99b8">what they did, and how</text>
              <rect x="205" y="170" width="210" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="310" y="189" font-weight="700">Result</text>
              <text x="310" y="206" font-size="11" fill="#9b99b8">real, checked numbers</text>
              <rect x="475" y="100" width="140" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="545" y="125" font-weight="700">Customer checks</text>
              <text x="545" y="144" font-size="11" fill="#9b99b8">written approval</text>
              <rect x="650" y="100" width="100" height="60" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="700" y="125" font-weight="700">Publish</text>
              <text x="700" y="144" font-size="11" fill="#9b99b8">site + sales</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cm7a)">
                <line x1="147" y1="130" x2="181" y2="130"/>
                <line x1="437" y1="130" x2="471" y2="130"/>
                <line x1="617" y1="130" x2="646" y2="130"/>
              </g>
              <text x="380" y="256" fill="#fcd34d">No approval, no publish. Never invent quotes or numbers.</text>
            </g>
          </svg>
          <figcaption>A case study moves from the customer's words, to a clear structure, to their approval.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Interview questions that get good stories</h3>
          <p>Our example is <strong>LedgerLite</strong>, a made-up accounting software startup in San Francisco. Its customer is Mehta Fabrics, a made-up textile shop in Birmingham. Ask open questions. Let the customer talk. Record the call only if they agree.</p>
          <ul class="lc-list">
            <li><strong>Before:</strong> "How did you manage your accounts before? What was the hardest part?"</li>
            <li><strong>Trigger:</strong> "What made you look for a new tool at that time?"</li>
            <li><strong>Choice:</strong> "What other options did you look at? Why did you choose us?"</li>
            <li><strong>Using it:</strong> "What was the first month like? What surprised you?"</li>
            <li><strong>After:</strong> "What has changed? Do you have numbers, for example hours saved per week?"</li>
            <li><strong>Advice:</strong> "What would you tell a shop owner like you?"</li>
          </ul>
          <p>AI is good at writing these questions for a new customer type. Ask it for 10 questions, then pick the best 6.</p>
        </div>
        <div class="lc-card">
          <h3>From notes to draft with AI</h3>
          <p>After the interview, give AI your notes or the transcript (the written text of the call). Remove private details first, such as phone numbers, bank details and GST numbers. Here are sample notes:</p>
          <pre><code>Customer: Mehta Fabrics, Birmingham (12 staff)
        Before: invoices in a notebook, month-end took 3 days, missed payments
        Why LedgerLite: WhatsApp payment reminders, easy for staff
        After: month-end takes about 1 day (customer's own estimate)
        Quote (exact words): "Now I know who owes me money every morning."</code></pre>
          <p>A good prompt tells AI to use <strong>only</strong> these notes. It must keep the quote word for word. It must write <code>[ASK CUSTOMER]</code> where a fact is missing. AI often wants to make results sound bigger, for example "cut costs by 50%". If the customer did not say it, delete it.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it answers</th><th>Length</th></tr></thead>
            <tbody>
              <tr><td><strong>Headline</strong></td><td>Who got what result</td><td>1 line</td></tr>
              <tr><td><strong>Problem</strong></td><td>What was hard before?</td><td>1 short paragraph</td></tr>
              <tr><td><strong>Solution</strong></td><td>What did they do, and how did they start?</td><td>1 to 2 paragraphs</td></tr>
              <tr><td><strong>Result</strong></td><td>What changed? Use their real numbers and a quote.</td><td>1 paragraph</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Permission and honesty</h3>
          <ul class="lc-list">
            <li>Get <strong>written permission</strong> to use the customer's name, logo, photo and quotes.</li>
            <li>Send the final draft to the customer. Publish only after they approve it.</li>
            <li>If they want privacy, use a general name such as "a textile shop in Birmingham". Say so honestly.</li>
            <li>Never change a quote so it says more than the customer said.</li>
            <li>Do not suggest that every customer will get the same result.</li>
          </ul>
          <p>Advertising and consumer protection rules in many countries apply to testimonials and customer stories. In India, the Consumer Protection Act and the 2022 guidelines on misleading advertisements cover them. In the US, the FTC (Federal Trade Commission) has rules on endorsements and a rule against fake reviews and testimonials. This is general education, not legal advice. Check the current rules that apply to you.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: ready to publish?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each part of the LedgerLite case study. Is it fine to publish, or must you fix it first?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine to publish"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix first"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="It is the customer's exact words, and they approved it in writing.">A quote the customer said on the call and approved by email</li>
              <li data-bucket="fix" data-why="AI added words the customer never said. Keep quotes exact.">A quote that AI "improved" to sound more exciting</li>
              <li data-bucket="fix" data-why="The customer never gave this number. AI guessed it. Delete it or ask the customer.">"Mehta Fabrics cut its costs by 50%" (written by AI)</li>
              <li data-bucket="ok" data-why="It comes from the customer and is labelled as their estimate.">"Month-end now takes about 1 day, says the owner"</li>
              <li data-bucket="fix" data-why="You need permission to use a customer's logo.">The customer's logo, added without asking</li>
              <li data-bucket="fix" data-why="One story cannot promise results for everyone. This claim can mislead buyers.">"Every LedgerLite customer saves 2 days a month"</li>
              <li data-bucket="ok" data-why="The customer asked for privacy, and the story is still true.">An anonymous story about "a textile shop in Birmingham", with permission</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn interview notes into a first draft of a case study. The AI must use only your notes and mark any missing facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a B2B content writer. Write a short, honest case study in simple English.

        My company: [LedgerLite, an accounting software startup in San Francisco]
        Customer: [Mehta Fabrics, a textile shop in Birmingham with 12 staff]

        Interview notes (use ONLY these facts):
        - Before: [invoices in a notebook; month-end took 3 days; payments were often late]
        - Why they chose us: [WhatsApp payment reminders; easy for staff to learn]
        - After: [month-end takes about 1 day, the owner's own estimate]
        - Exact quote: ["Now I know who owes me money every morning."]

        Write:
        1. A headline that states the real result.
        2. Problem (1 paragraph), Solution (2 paragraphs), Result (1 paragraph).
        3. Put the quote in the Result section, word for word.

        Rules:
        - Do not add any numbers, claims or quotes that are not in my notes.
        - Where a useful fact is missing, write [ASK CUSTOMER: question].
        - Do not say other customers will get the same result.
        - At the end, list what I must get customer approval for.</pre>
            <ul class="ai-try-checks">
              <li>All numbers and the quote match your notes exactly.</li>
              <li>Missing facts are marked [ASK CUSTOMER], not guessed.</li>
              <li>There are no big claims such as "cut costs by 50%".</li>
              <li>The approval list includes the name, quote and any logo.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A case study works because it is true. Use AI to plan questions and shape the draft. Keep the customer's exact words and real numbers, and publish only with their written approval.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Newsletters and Long-Form Guides</h1>
        </div>
        <p class="lc-lead">A newsletter is a regular email with useful content for people who chose to get it. A long-form guide is a detailed piece that fully answers one big question. Together they build trust over time. In this lesson you will learn a simple newsletter structure and a few regular formats. You will also learn how to turn a guide into a lead magnet: a free, useful resource that people get when they join your email list.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 230" role="img" aria-label="A long guide becomes a lead magnet such as a checklist. People get it through a sign-up form with clear consent. A welcome email delivers the file. Then they get a regular newsletter. A regular issue has a main story, quick tips, a reader question and one call to action.">
            <defs><marker id="cm8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="120" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="70" y="56" font-weight="700">Long guide</text>
              <text x="70" y="75" font-size="11" fill="#9b99b8">helpful, detailed</text>
              <rect x="165" y="30" width="120" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="225" y="56" font-weight="700">Lead magnet</text>
              <text x="225" y="75" font-size="11" fill="#9b99b8">checklist or PDF</text>
              <rect x="320" y="30" width="120" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="56" font-weight="700">Sign-up form</text>
              <text x="380" y="75" font-size="11" fill="#9b99b8">clear consent</text>
              <rect x="475" y="30" width="120" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="535" y="56" font-weight="700">Welcome email</text>
              <text x="535" y="75" font-size="11" fill="#9b99b8">sends the file</text>
              <rect x="630" y="30" width="120" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="690" y="56" font-weight="700">Newsletter</text>
              <text x="690" y="75" font-size="11" fill="#9b99b8">fixed format</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cm8a)">
                <line x1="132" y1="60" x2="161" y2="60"/>
                <line x1="287" y1="60" x2="316" y2="60"/>
                <line x1="442" y1="60" x2="471" y2="60"/>
                <line x1="597" y1="60" x2="626" y2="60"/>
                <line x1="690" y1="92" x2="690" y2="132"/>
              </g>
              <text x="10" y="170" text-anchor="start" font-weight="700" fill="#c4b5fd">A regular issue:</text>
              <rect x="140" y="140" width="140" height="44" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="210" y="167">Main story</text>
              <rect x="295" y="140" width="140" height="44" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="365" y="167">3 quick tips</text>
              <rect x="450" y="140" width="140" height="44" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="520" y="167">Reader question</text>
              <rect x="605" y="140" width="140" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="675" y="167">One CTA</text>
              <text x="380" y="214" font-size="12" fill="#6ee7b7">Same sections every time, so readers know what to expect.</text>
            </g>
          </svg>
          <figcaption>A guide brings new subscribers. A newsletter with a fixed format keeps them reading.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Regular newsletter formats</h3>
          <p>A regular format means each issue follows the same pattern. This makes writing faster. It also helps readers know what they will get. Here are ideas for <strong>LedgerLite</strong>, a made-up accounting software startup in San Francisco that serves small shops.</p>
          <table class="lc-table">
            <thead><tr><th>Format</th><th>What it is</th><th>LedgerLite example</th></tr></thead>
            <tbody>
              <tr><td><strong>Tip of the week</strong></td><td>One practical tip, explained well</td><td>"How to follow up on a late payment politely"</td></tr>
              <tr><td><strong>Reader question</strong></td><td>Answer one real question from a subscriber</td><td>"Should I keep paper bills after I scan them?"</td></tr>
              <tr><td><strong>Monthly checklist</strong></td><td>What to do this month</td><td>"Month-end steps for a small shop"</td></tr>
              <tr><td><strong>Customer spotlight</strong></td><td>A short, approved customer story</td><td>"How a Birmingham textile shop tracks dues"</td></tr>
              <tr><td><strong>Round-up</strong></td><td>3 to 5 useful links with one line each</td><td>New blog posts and helpful free tools</td></tr>
            </tbody>
          </table>
          <p>Each issue should have <strong>one</strong> CTA (call to action: the one thing you want the reader to do next). Too many buttons confuse people.</p>
        </div>
        <div class="lc-card">
          <h3>Writing long-form guides with AI</h3>
          <p>A long guide can have 2,000 words or more. Write it the same way as a blog post, but in chapters. Ask AI for a chapter outline first. Then draft one chapter at a time and add your own knowledge.</p>
          <pre><code>Weak:
        Write a complete guide to accounting for small shops.

        Better:
        You are helping LedgerLite write a guide called
        "Month-End Accounts for Small Shops: A Simple Guide".
        Readers: shop owners in India with 2 to 20 staff, no finance training.
        Suggest 6 chapters. For each chapter, give 3 questions it answers.
        Mark any tax or legal topic with [CHECK WITH CA].
        Do not write the chapters yet.</code></pre>
          <p>Tax rules, due dates and legal terms change. AI may give an old date or a wrong rule. Check every tax or legal point with official sources or a chartered accountant. Also say clearly in the guide that it is general information, not tax advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: turn a guide into a lead magnet</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in the right order to turn LedgerLite's month-end guide into a lead magnet.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Choose the most useful part of the guide: the month-end steps.</li>
              <li data-order="2">Ask AI to turn those steps into a one-page checklist.</li>
              <li data-order="3">Check every step and every tax point with your accountant.</li>
              <li data-order="4">Design the checklist as a PDF, for example in Canva.</li>
              <li data-order="5">Add a sign-up form with a clear consent line to the guide page.</li>
              <li data-order="6">Set up a welcome email that sends the PDF and says what emails come next.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a regular newsletter format and draft one issue. Then check the facts and the single CTA.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a newsletter editor for a small business. Use simple, warm English and short sentences.

        Business: [LedgerLite, an accounting software startup in San Francisco]
        Readers: [small shop owners in India who are not finance experts]
        How often: [every 2 weeks]
        Goal of the newsletter: [build trust and get readers to try our free month-end checklist]

        Please:
        1. Suggest a fixed format for every issue with 4 sections. Give each section a name and a purpose.
        2. Draft issue 1 using that format. Topic: [following up on late payments politely].
        3. Include exactly one CTA (call to action) at the end.
        4. Suggest 3 subject lines.

        Rules:
        - Do not state any tax rules, due dates or legal facts. If a point needs one, write [CHECK WITH CA].
        - Do not invent statistics or customer stories.
        - Keep issue 1 under 350 words.</pre>
            <ul class="ai-try-checks">
              <li>The format has the same 4 sections you could reuse every issue.</li>
              <li>There is only one CTA.</li>
              <li>Tax or legal points are marked [CHECK WITH CA], not stated as facts.</li>
              <li>There are no made-up numbers or stories.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use a long guide to attract new subscribers, and a newsletter with a fixed format to keep them. AI helps you plan, outline and draft. You check every fact, especially tax and legal points, and ask for clear consent.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Video and Podcast Content</h1>
        </div>
        <p class="lc-lead">Videos and podcasts help people see and hear the person behind a business. They take more effort than a blog post. AI can make that effort smaller. It can help you plan scripts, write show notes and turn one episode into an article and short clips. In this lesson you will learn each of these jobs. You will also learn what you must check, because speech-to-text tools and AI both make mistakes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="You record an episode or video. A tool turns speech into a transcript. You check names, places and facts. Then the checked transcript becomes show notes, a blog article and short clips.">
            <defs><marker id="cm9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="95" width="120" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="70" y="121" font-weight="700">Record</text>
              <text x="70" y="140" font-size="11" fill="#9b99b8">episode or video</text>
              <rect x="165" y="95" width="120" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="225" y="121" font-weight="700">Transcript</text>
              <text x="225" y="140" font-size="11" fill="#9b99b8">speech to text</text>
              <rect x="320" y="95" width="120" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="121" font-weight="700">You check</text>
              <text x="380" y="140" font-size="11" fill="#9b99b8">names, places</text>
              <rect x="520" y="25" width="225" height="50" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="632" y="46" font-weight="700">Show notes</text>
              <text x="632" y="64" font-size="11" fill="#9b99b8">summary, timestamps, links</text>
              <rect x="520" y="100" width="225" height="50" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="632" y="121" font-weight="700">Blog article</text>
              <text x="632" y="139" font-size="11" fill="#9b99b8">rewritten to read well</text>
              <rect x="520" y="175" width="225" height="50" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="632" y="196" font-weight="700">Short clips</text>
              <text x="632" y="214" font-size="11" fill="#9b99b8">best moments, with captions</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cm9a)">
                <line x1="132" y1="125" x2="161" y2="125"/>
                <line x1="287" y1="125" x2="316" y2="125"/>
                <path d="M442,115 L516,54"/>
                <line x1="442" y1="125" x2="516" y2="125"/>
                <path d="M442,135 L516,196"/>
              </g>
              <text x="225" y="198" font-size="12" fill="#fcd34d">Timestamps and quotes must come</text>
              <text x="225" y="216" font-size="12" fill="#fcd34d">from the real recording.</text>
            </g>
          </svg>
          <figcaption>Check the transcript once. Then one recording can feed several pieces of content.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Scripts for short videos</h3>
          <p>Our example is <strong>Backwater Trails</strong>, a made-up travel agency in Boston. It makes short videos about Kerala trips. A script is the written plan of what you will say and show. A simple structure for a short video is:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it does</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Hook</strong></td><td>The first few seconds. It makes people stay.</td><td>"Most people see the backwaters the wrong way."</td></tr>
              <tr><td><strong>Points</strong></td><td>2 or 3 clear, useful ideas</td><td>Book a smaller boat. Go in the morning. Try a village walk.</td></tr>
              <tr><td><strong>CTA</strong></td><td>One next step (call to action)</td><td>"Save this for your Kerala trip."</td></tr>
            </tbody>
          </table>
          <p>Ask AI to write the script <em>for speaking</em>. Spoken lines are shorter and simpler than written ones. Always read the script aloud before you record. Change any line that sounds stiff.</p>
          <pre><code>Weak:
        Write a video script about Kerala backwaters.

        Better:
        Write a 45-second vertical video script for Backwater Trails,
        a Boston travel agency. Audience: families from San Francisco and Los Angeles.
        Structure: hook (1 line), 3 tips, 1 CTA. Two columns: SAY and SHOW.
        Use short spoken sentences. Do not mention prices or opening times.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Show notes and articles from a recording</h3>
          <p>Many recording, meeting and video tools can create a <strong>transcript</strong> (the words of the recording as text). Features change often, so check your tool's current help pages. With a transcript, AI can help you write:</p>
          <ul class="lc-list">
            <li><strong>Show notes:</strong> the text under a podcast episode or video. It has a short summary, the main topics with timestamps, the guest's name and useful links.</li>
            <li><strong>A blog article:</strong> the same ideas, rewritten to read well. Spoken words are messy, so the article needs clear headings and full sentences.</li>
            <li><strong>Clip ideas:</strong> short moments that make sense on their own.</li>
          </ul>
          <p><strong>What to check:</strong> Speech-to-text tools often get names and places wrong. "Kuttanad" may become "Cut a nod". AI can also make up timestamps or quotes. Take every timestamp from the real recording. Get the guest's permission before you use their name, voice or clips in other places.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: show notes from a podcast episode</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Transcribe">You upload episode 12 of the Backwater Trails podcast to a transcription tool. The guest is a houseboat owner from Kuttanad.</li>
              <li data-kind="result" data-label="Transcript">You get a text file with timestamps. One line says "we sail from Cut a nod every morning".</li>
              <li data-kind="warn" data-label="Wrong place name">"Cut a nod" should be "Kuttanad". You fix all place names and the guest's name before you give the text to AI.</li>
              <li data-kind="user" data-label="Your prompt">Write show notes from this checked transcript: a 3-sentence summary, 5 topics with the timestamps from the transcript, and one quote copied exactly.</li>
              <li data-kind="answer" data-label="AI draft">A clear summary and 5 topics. But one timestamp says 38:10, and the episode is only 32 minutes long.</li>
              <li data-kind="check" data-label="You check">You find the real time of that topic in the transcript. You also check that the quote matches the recording word for word.</li>
              <li data-kind="result" data-label="Ready">The show notes are correct. The guest approves them, and you publish the episode.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a short transcript into show notes, clip ideas and a blog outline. If you have no transcript, the AI will use a sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a podcast producer for a small business. Use simple English.

        Business: [Backwater Trails, a travel agency in Boston]
        Episode title: [Monsoon in Kerala: Is It a Good Time to Visit?]
        Guest: [a houseboat owner from Kuttanad]

        Transcript (checked by me):
        [Paste your transcript here with timestamps. If this is empty, write a short sample transcript of about 10 lines and label it SAMPLE.]

        Please write:
        1. Show notes: a 3-sentence summary and a list of the main topics. Use only timestamps that appear in the transcript. If there are none, write [ADD TIME].
        2. Three ideas for short clips. For each, give the start and end lines from the transcript and one caption line.
        3. A blog article outline with 4 headings based on the episode.

        Rules:
        - Copy any quote exactly. Do not change the guest's words.
        - Do not add facts, prices or weather claims that are not in the transcript.
        - List any names or places I should double-check for spelling.</pre>
            <ul class="ai-try-checks">
              <li>Every timestamp is in the transcript. None are made up.</li>
              <li>Quotes match the transcript word for word.</li>
              <li>Names and places are spelled correctly, for example Kuttanad.</li>
              <li>The clip ideas make sense on their own, without the full episode.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Check the transcript first, then let AI turn one recording into show notes, an article and clips. Timestamps, quotes, names and places must come from the real recording, and guests must agree to how you use their words.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Repurposing Content</h1>
        </div>
        <p class="lc-lead">Repurposing means turning one piece of content into new formats for other channels. One good blog post can become a carousel, a short video, an email and more. This saves time and helps more people see your best ideas. In this lesson you will learn how to plan this with a repurposing table. You will also learn how AI can change the format for each channel while you keep the facts the same.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A pillar blog post about block printing sits in the centre. Arrows lead to six new pieces: an Instagram carousel, a reel script, an email newsletter, a LinkedIn post, a Pinterest pin and a WhatsApp update for opted-in buyers.">
            <defs><marker id="cm10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="290" y="98" width="180" height="64" rx="12" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="380" y="124" font-weight="700">Pillar blog post</text>
              <text x="380" y="144" font-size="11" fill="#9b99b8">block printing guide</text>
              <rect x="20" y="20" width="170" height="46" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="105" y="39" font-weight="700">Instagram carousel</text>
              <text x="105" y="56" font-size="11" fill="#9b99b8">5 steps, 5 slides</text>
              <rect x="20" y="107" width="170" height="46" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="105" y="126" font-weight="700">Reel script</text>
              <text x="105" y="143" font-size="11" fill="#9b99b8">short how-to video</text>
              <rect x="20" y="194" width="170" height="46" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="105" y="213" font-weight="700">Email newsletter</text>
              <text x="105" y="230" font-size="11" fill="#9b99b8">story + link</text>
              <rect x="570" y="20" width="170" height="46" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="655" y="39" font-weight="700">LinkedIn post</text>
              <text x="655" y="56" font-size="11" fill="#9b99b8">business lesson</text>
              <rect x="570" y="107" width="170" height="46" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="655" y="126" font-weight="700">Pinterest pin</text>
              <text x="655" y="143" font-size="11" fill="#9b99b8">photo + short tip</text>
              <rect x="570" y="194" width="170" height="46" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="655" y="213" font-weight="700">WhatsApp update</text>
              <text x="655" y="230" font-size="11" fill="#9b99b8">opted-in buyers only</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cm10a)">
                <path d="M288,112 L194,52"/>
                <line x1="288" y1="130" x2="194" y2="130"/>
                <path d="M288,148 L194,208"/>
                <path d="M472,112 L566,52"/>
                <line x1="472" y1="130" x2="566" y2="130"/>
                <path d="M472,148 L566,208"/>
              </g>
              <text x="380" y="262" font-size="12" fill="#6ee7b7">Change the format for each channel. Keep the facts the same.</text>
            </g>
          </svg>
          <figcaption>One strong pillar post can feed six channels, each in its own format.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with a pillar piece</h3>
          <p>A <strong>pillar piece</strong> is a long, detailed piece of content that other pieces come from. It could be a blog post, a guide or a podcast episode. Choose one that is already doing well, or one that answers a common customer question.</p>
          <p>Our example is <strong>Rangrez Crafts</strong>, a made-up handicrafts store in Manchester. Its pillar post is "How Hand Block Printing Is Done: 5 Steps". It explains carving the wooden block, mixing colours, printing, drying and washing.</p>
          <p>Good repurposing is <strong>not</strong> copy and paste. Each channel has its own style:</p>
          <ul class="lc-list">
            <li>Instagram carousels work best with one short idea per slide.</li>
            <li>Short videos need a strong hook and spoken language.</li>
            <li>LinkedIn readers often like a business or craft lesson.</li>
            <li>Email readers want a personal story and a clear link.</li>
          </ul>
          <p>Platform features and limits change often. Check each platform's current help pages for sizes and lengths.</p>
        </div>
        <div class="lc-card">
          <h3>A repurposing table</h3>
          <p>Plan everything in one table, for example in a Google Sheet. Then you can see what is done and what is still left.</p>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>Format</th><th>Angle</th><th>CTA</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>Instagram</td><td>Carousel</td><td>One step per slide</td><td>Save this post</td><td>Draft</td></tr>
              <tr><td>Instagram / YouTube Shorts</td><td>Short video script</td><td>Watch a block being printed</td><td>Read the full guide</td><td>To do</td></tr>
              <tr><td>Email</td><td>Newsletter story</td><td>Meet our printer, Meena ji</td><td>Shop the new cushion covers</td><td>To do</td></tr>
              <tr><td>LinkedIn</td><td>Text post</td><td>Why we pay artisans per piece plus a bonus</td><td>Visit our website</td><td>To do</td></tr>
              <tr><td>WhatsApp</td><td>Short update</td><td>New prints are here</td><td>Reply to order</td><td>Opted-in list only</td></tr>
            </tbody>
          </table>
          <p>Ask AI to fill the Angle and CTA columns, then to write each piece one by one. Give it the full pillar post each time. Tell it not to add facts that are not in the post.</p>
          <pre><code>Weak:
        Turn this into social media posts.

        Better:
        Here is our blog post: [paste post].
        Write a 5-slide Instagram carousel for Rangrez Crafts.
        One step per slide, under 25 words each. Slide 1 is a hook.
        Use only facts from the post. Suggest a photo for each slide.</code></pre>
          <p><strong>Still your job:</strong> check that details such as prices, artisan names and product facts are the same in every version. If you update the pillar post, update the other pieces too. Only message people on WhatsApp or by email if they agreed to hear from you.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: good repurposing or lazy copying?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Rangrez Crafts is repurposing its block printing guide. Sort each idea.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good repurposing"></div>
              <div data-sorter-target="bucket" data-bucket="lazy" data-label="Lazy copying"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="Each slide holds one step. That fits how people read carousels.">Turn the 5 printing steps into a 5-slide carousel</li>
              <li data-bucket="lazy" data-why="A 1,500-word post does not work as a caption. Few people will read it.">Paste the whole blog post as an Instagram caption</li>
              <li data-bucket="lazy" data-why="Each channel has its own style and readers. The same text rarely works everywhere.">Post the same text with the same hashtags on LinkedIn, Instagram and Pinterest</li>
              <li data-bucket="good" data-why="It gives email readers a personal story and a clear reason to click.">Write an email about the printer's day, with a link to the full guide</li>
              <li data-bucket="good" data-why="A short vertical video with captions suits people who watch without sound.">Cut a short video of a block being printed, with captions</li>
              <li data-bucket="lazy" data-why="Old copies now show the wrong price. Keep all versions up to date.">Change the price in the blog post but leave the old price in the carousel</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a repurposing table for one of your pieces, and draft the first item.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a content marketer who repurposes content for small businesses. Use simple English.

        Business: [Rangrez Crafts, a handicrafts store in Manchester that sells hand block printed textiles]
        Pillar piece: [a blog post called "How Hand Block Printing Is Done: 5 Steps"]
        Main points of the piece: [1. carve the wooden block; 2. mix natural colours; 3. print by hand; 4. dry in the sun; 5. wash and finish]
        Channels I use: [Instagram, email newsletter, LinkedIn, WhatsApp Business (opted-in customers only)]

        Please:
        1. Make a repurposing table with these columns: Channel, Format, Angle, CTA.
        2. Give each channel a different angle. Do not just shorten the same text.
        3. Then write the first item in full: a 5-slide Instagram carousel, one step per slide, under 25 words per slide, with a photo idea for each slide.

        Rules:
        - Use only the points I gave you. Do not add prices, history, dates or claims.
        - If a fact would help, write [ADD FACT] instead of guessing.</pre>
            <ul class="ai-try-checks">
              <li>Each channel has a different angle and format, not the same text.</li>
              <li>The carousel has one step per slide and stays short.</li>
              <li>There are no new facts, prices or history claims. Missing facts say [ADD FACT].</li>
              <li>WhatsApp and email ideas are only for people who agreed to hear from you.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Repurposing means changing the format, not the facts. Plan it in a table, let AI adapt the pillar piece for each channel, and check that every version shows the same correct details.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Editing and Fact-Checking AI Content</h1>
        </div>
        <p class="lc-lead">AI writes fast, but it can also be wrong. It can invent facts, numbers, quotes and sources that sound real. If you publish them, your readers lose trust in your brand. In this lesson you will learn a simple five-step check for every AI draft: facts, numbers, quotes, tone and originality. You will also learn how AI itself can help you find the risky parts.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Five checks in a row: facts, numbers, quotes, tone and originality. Under each is a typical mistake. All checks lead to a human sign-off before publishing.">
            <defs><marker id="cm11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Five checks for every AI draft</text>
              <rect x="15" y="40" width="130" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="80" y="66" font-weight="700">1. Facts</text><text x="80" y="88" font-size="11" fill="#9b99b8">names, dates</text>
              <rect x="165" y="40" width="130" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="230" y="66" font-weight="700">2. Numbers</text><text x="230" y="88" font-size="11" fill="#9b99b8">stats, prices</text>
              <rect x="315" y="40" width="130" height="64" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="66" font-weight="700">3. Quotes</text><text x="380" y="88" font-size="11" fill="#9b99b8">who said it?</text>
              <rect x="465" y="40" width="130" height="64" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="530" y="66" font-weight="700">4. Tone</text><text x="530" y="88" font-size="11" fill="#9b99b8">brand voice</text>
              <rect x="615" y="40" width="130" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="680" y="66" font-weight="700">5. Originality</text><text x="680" y="88" font-size="11" fill="#9b99b8">plagiarism check</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cm11a)">
                <line x1="147" y1="72" x2="161" y2="72"/><line x1="297" y1="72" x2="311" y2="72"/><line x1="447" y1="72" x2="461" y2="72"/><line x1="597" y1="72" x2="611" y2="72"/>
              </g>
              <g font-size="11" fill="#fca5a5">
                <text x="80" y="128">wrong year</text><text x="230" y="128">made-up "72%"</text><text x="380" y="128">invented quote</text><text x="530" y="128">too salesy</text><text x="680" y="128">copied lines</text>
              </g>
              <line x1="80" y1="148" x2="680" y2="148" stroke="#4b4a78" stroke-width="1.5"/>
              <line x1="380" y1="148" x2="380" y2="178" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cm11a)"/>
              <rect x="230" y="182" width="300" height="44" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="209" font-weight="700">Human sign-off, then publish</text>
            </g>
          </svg>
          <figcaption>Check every AI draft in five steps. A person always gives the final approval.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes wrong in AI drafts</h3>
          <p>AI models predict likely words. They do not look up the truth unless a tool gives them real sources. So a draft can look perfect and still contain errors. A <strong>hallucination</strong> (a fact, number or source that the AI made up) is the most common problem.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Example in a Sweet Crumbs blog draft</th><th>How to check</th></tr></thead>
            <tbody>
              <tr><td>Wrong fact</td><td>"Sweet Crumbs opened in 2012." (It opened in 2016.)</td><td>Check your own records</td></tr>
              <tr><td>Made-up number</td><td>"72% of London families now order cakes online."</td><td>Find the original survey, or remove it</td></tr>
              <tr><td>Invented quote</td><td>"Chef Anjali Rao says eggless cakes taste better."</td><td>Ask: did this person really say it? Where?</td></tr>
              <tr><td>Risky claim</td><td>"The healthiest cakes in India."</td><td>Remove "best", "only" and health claims you cannot prove</td></tr>
              <tr><td>Wrong tone</td><td>"Unleash a world of decadent delight!"</td><td>Compare with your brand voice guide</td></tr>
              <tr><td>Copied text</td><td>Two sentences match a recipe site word for word</td><td>Run a plagiarism checker and rewrite in your own words</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Use AI to find claims, not to confirm them</h3>
          <p>AI is good at <em>listing</em> the claims in a draft. It is not a safe judge of whether they are true. Ask it to make a checklist. Then you check each item against a real source.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is this article accurate?</code></pre>
          <p>The AI will often say "Yes, it looks accurate." That answer is not a check.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>List every checkable claim in this draft: names, dates, numbers,
        prices, quotes, and any "first", "best" or "only" claims.
        For each one, give a risk level (High, Medium, Low) and say
        what kind of source I should use to check it.
        Do not tell me a claim is true. Just list it.</code></pre>
          <p>Good sources are your own records, the original report or government page, and the person who is quoted. A random blog that repeats the same number is not proof.</p>
        </div>
        <div class="lc-card">
          <h3>Tone and originality</h3>
          <ul class="lc-list">
            <li><strong>Tone:</strong> Read the draft aloud. Cut hype words and long sentences. Add one real example from your business, such as a customer question you hear every week.</li>
            <li><strong>Plagiarism check:</strong> A plagiarism checker compares your text with pages on the web. Use one before you publish long pieces. Rewrite any close matches in your own words.</li>
            <li><strong>AI detectors:</strong> Tools that claim to spot AI-written text are not reliable. They can flag human writing as AI and miss AI writing. Never use a detector score to judge anyone's work.</li>
            <li><strong>Privacy:</strong> Do not paste private customer details or secret company data into a public AI tool while editing.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: edit a real draft</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Ask for a claim list">The Sweet Crumbs owner pastes a draft called "5 Eggless Cakes for Diwali". She asks the AI to list every checkable claim with a risk level.</li>
              <li data-kind="answer" data-label="AI lists claims">The AI lists six claims. They include the founding year, "30% fewer calories" and a quote from "Chef Anjali Rao".</li>
              <li data-kind="check" data-label="Check own facts">She checks her shop records. Sweet Crumbs opened in 2016, not 2012. She fixes the year.</li>
              <li data-kind="warn" data-label="Made-up number">"30% fewer calories" has no source. She cannot find one, so she removes the number.</li>
              <li data-kind="warn" data-label="Invented quote">No chef gave that quote. She deletes it. She adds a real customer comment, with the customer's permission.</li>
              <li data-kind="tool" data-label="Plagiarism checker">She runs the edited draft through a plagiarism checker.</li>
              <li data-kind="result" data-label="Two matches">Two sentences in the recipe section closely match another website.</li>
              <li data-kind="check" data-label="Rewrite and sign off">She rewrites those sentences in her own words. She reads the post aloud, cuts the hype and approves it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a draft (or use the sample) and ask the AI to build a fact-check table. Then check the risky claims yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful fact-checking editor for a small business blog.
        Below is a draft written with AI help. Do not rewrite it yet.

        Tasks:
        1. List every checkable claim: facts, names, dates, numbers, prices, quotes, and any "first", "best" or "only" claims.
        2. Give each claim a risk level (High, Medium, Low) and say why.
        3. Say what kind of source I should use to check it.
        4. Mark anything that looks invented, such as a statistic with no source or a quote with no clear speaker.
        5. List sentences that do not match this tone: [friendly, simple, no hype].

        Output: a table with columns Claim | Risk | Why | How to check. Then a short list of tone fixes.
        Never say a claim is true unless I gave you the source.

        Draft:
        [Paste your draft here. Sample: "Backwater Trails has run houseboat tours on the Kerala backwaters since 1985. 90% of our guests give us 5 stars. Kerala's tourism board calls us the best houseboat operator in India. Monsoon trips are always 50% cheaper."]</pre>
            <ul class="ai-try-checks">
              <li>Every number, date and quote in the draft appears in the table</li>
              <li>The AI does not say any claim is "confirmed" or "true"</li>
              <li>"Best" and "always" claims are marked as high risk</li>
              <li>You still check each high-risk claim against a real source</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can find the claims in a draft, but only a person with real sources can check them. If you cannot prove a fact, number or quote, remove it before you publish.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Content Distribution</h1>
        </div>
        <p class="lc-lead">A great article that nobody sees does not help your business. <strong>Distribution</strong> means sharing your content in the places where your audience already spends time. In this lesson you will learn the main channels: email, social media, communities, partners and search. You will also use AI to write a different message for each channel, and to plan when to share.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 275" role="img" aria-label="One article in the centre-left sends arrows to five channels: email newsletter, social media, communities, partners and search. Each channel has a short note on how to use it.">
            <defs><marker id="cm12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="100" width="170" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="105" y="127" text-anchor="middle" font-weight="700">One article</text>
              <text x="105" y="148" text-anchor="middle" font-size="11" fill="#9b99b8">LedgerLite GST guide</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cm12a)">
                <path d="M192,132 L296,34"/><path d="M192,132 L296,86"/><path d="M192,132 L296,138"/><path d="M192,132 L296,190"/><path d="M192,132 L296,242"/>
              </g>
              <rect x="300" y="15" width="200" height="38" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="400" y="39" text-anchor="middle">Email newsletter</text>
              <rect x="300" y="67" width="200" height="38" rx="8" fill="#27274e" stroke="#ec4899"/><text x="400" y="91" text-anchor="middle">Social media</text>
              <rect x="300" y="119" width="200" height="38" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="400" y="143" text-anchor="middle">Communities</text>
              <rect x="300" y="171" width="200" height="38" rx="8" fill="#27274e" stroke="#10b981"/><text x="400" y="195" text-anchor="middle">Partners</text>
              <rect x="300" y="223" width="200" height="38" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="400" y="247" text-anchor="middle">Search (SEO)</text>
              <g font-size="11.5" fill="#9b99b8">
                <text x="518" y="38">your own list: you control it</text>
                <text x="518" y="90">short posts, clips, carousels</text>
                <text x="518" y="142">answer questions, no spam</text>
                <text x="518" y="194">guest posts, joint events</text>
                <text x="518" y="246">helps people find it later</text>
              </g>
            </g>
          </svg>
          <figcaption>Share one article in several places. Change the message for each channel.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Owned, earned and paid channels</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it means</th><th>Examples</th></tr></thead>
            <tbody>
              <tr><td><strong>Owned</strong></td><td>Channels you control and publish on yourself</td><td>Your website, email list, your own social media pages, WhatsApp Channel</td></tr>
              <tr><td><strong>Earned</strong></td><td>Other people share or mention your content for free</td><td>A blogger links to your guide, a newsletter features you, a customer shares your post</td></tr>
              <tr><td><strong>Paid</strong></td><td>You pay a platform to show your content to more people</td><td>Boosted posts, Meta ads, Google Ads, LinkedIn ads</td></tr>
            </tbody>
          </table>
          <p>Your email list is very valuable. Social platforms can change what they show at any time. Your list stays yours. Always follow email and privacy rules, and only email people who agreed to hear from you.</p>
        </div>
        <div class="lc-card">
          <h3>One article, five messages</h3>
          <p>LedgerLite (a San Francisco accounting app) wrote "The GST Invoice Checklist for Freelancers". Each channel needs a different message. AI is very good at this rewriting work.</p>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>Message style</th></tr></thead>
            <tbody>
              <tr><td>Email</td><td>Subject line plus 3 short lines on why it matters, then a link</td></tr>
              <tr><td>LinkedIn</td><td>A short post with one useful tip from the checklist</td></tr>
              <tr><td>Instagram</td><td>A carousel (a post of several swipeable slides) with 5 checklist points</td></tr>
              <tr><td>Freelancer community</td><td>A full answer to a member's GST question. Link only if the rules allow it.</td></tr>
              <tr><td>Partner</td><td>A guest post for a co-working space's newsletter</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write social posts for my article.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is my article: [paste]. Audience: freelancers in India.
        Write: 1 email (subject + 60 words), 1 LinkedIn post (80 words,
        one tip), and 5 short slide texts for an Instagram carousel.
        Use a friendly, simple tone. No hashtags except two at the end.
        Do not add facts that are not in the article.</code></pre>
        </div>
        <div class="lc-card">
          <h3>What you must still decide</h3>
          <ul class="lc-list">
            <li><strong>Community rules:</strong> Many groups do not allow links or promotion. Read the rules first. Give real help, not just a link.</li>
            <li><strong>Timing:</strong> Your own analytics show when your audience is active. Do not trust general "best time to post" claims from AI.</li>
            <li><strong>Facts:</strong> Check that every short post still says the same thing as the article. Short versions can drop important details.</li>
            <li><strong>Spacing:</strong> Share the same article more than once over a few weeks, with a new angle each time.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: owned, earned or paid?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each way of sharing content into the right channel type.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="owned" data-label="Owned"></div>
              <div data-sorter-target="bucket" data-bucket="earned" data-label="Earned"></div>
              <div data-sorter-target="bucket" data-bucket="paid" data-label="Paid"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="owned" data-why="Sweet Crumbs controls its own email list and what it sends.">Sweet Crumbs emails its new cake guide to its subscribers</li>
              <li data-bucket="earned" data-why="Someone else chose to share it. Sweet Crumbs did not pay.">A London food blogger links to the Sweet Crumbs cake guide</li>
              <li data-bucket="paid" data-why="LedgerLite pays LinkedIn to show the post to more people.">LedgerLite boosts a LinkedIn post about its GST guide</li>
              <li data-bucket="owned" data-why="It is Backwater Trails' own account. It decides what to post there.">Backwater Trails posts its monsoon guide on its own Instagram page</li>
              <li data-bucket="earned" data-why="Another newsletter chose to feature the guide.">A Manchester travel newsletter features the Rangrez Crafts block-printing guide</li>
              <li data-bucket="paid" data-why="Ads are paid reach.">Rangrez Crafts runs Meta ads that send people to its gift guide</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI for a two-week plan to share one article across several channels, with a ready message for each.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a content distribution planner for a small business.

        Business: [Rangrez Crafts, a Manchester handicrafts store that sells online]
        Article: [How to Care for Block-Printed Cotton Bedsheets]
        Main points of the article: [wash in cold water, dry in shade, use mild soap, iron inside out]
        Audience: [home decor buyers in Indian cities, aged 25 to 45]
        Channels I use: [email list, Instagram, Facebook page, one WhatsApp Channel, one partner blog]

        Make a 2-week distribution plan as a table with columns:
        Day | Channel | Message angle | Ready-to-use text | Link or no link

        Rules:
        - Use each channel at least once. Share the article 6 to 8 times in total.
        - Use a different angle each time (a tip, a question, a mistake to avoid).
        - Keep social texts under 60 words. Friendly and simple tone.
        - Use only the facts in the main points above. Do not invent numbers.
        - Add one line on what to check before posting in any online group.</pre>
            <ul class="ai-try-checks">
              <li>Every channel you listed is used, with a different angle</li>
              <li>No new facts or numbers appear that are not in the article</li>
              <li>The texts fit each channel (short for social, a subject line for email)</li>
              <li>You check group rules and your own analytics before you post</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Spend time sharing, not only creating. One good article shared well in five places often does more than five articles that nobody sees.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Measuring Content</h1>
        </div>
        <p class="lc-lead">How do you know if your content works? You measure it. In this lesson you will learn four levels of content results: traffic, engagement, leads and sales. You will see where to find each number and how to calculate simple rates in a spreadsheet. Then AI can turn your numbers into a short monthly report. You will also learn why you must check the AI's maths.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 262" role="img" aria-label="A content funnel with four levels: traffic, engagement, leads and sales. Each level is smaller than the one above. Notes on the right show sample numbers and where to find them.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="30" y="16" width="400" height="48" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="230" y="45" font-weight="700">Traffic: 4,200 visits</text>
              <rect x="70" y="76" width="320" height="48" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="230" y="105" font-weight="700">Engagement: 1m 45s avg</text>
              <rect x="110" y="136" width="240" height="48" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="230" y="165" font-weight="700">Leads: 74 sign-ups</text>
              <rect x="150" y="196" width="160" height="48" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="230" y="225" font-weight="700">Sales: 11</text>
              <g text-anchor="start" font-size="12" fill="#9b99b8">
                <text x="460" y="37">Did people find it?</text><text x="460" y="54" font-size="11">Search Console, GA4</text>
                <text x="460" y="97">Did they read it?</text><text x="460" y="114" font-size="11">GA4 engagement time, scroll</text>
                <text x="460" y="157">Did they take a step?</text><text x="460" y="174" font-size="11">email sign-ups, enquiries</text>
                <text x="460" y="217">Did it help a sale?</text><text x="460" y="234" font-size="11">GA4 attribution paths, shop data</text>
              </g>
            </g>
          </svg>
          <figcaption>Sample monthly numbers for Rangrez Crafts' blog. Fewer people reach each level, and that is normal.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four levels and where to find them</h3>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Useful numbers</th><th>Where to find them</th></tr></thead>
            <tbody>
              <tr><td>Traffic</td><td>Visits, clicks from search, impressions (how often your page appeared in search results)</td><td>Google Analytics 4 (GA4), Google Search Console</td></tr>
              <tr><td>Engagement</td><td>Average engagement time, engagement rate (the share of visits that lasted over 10 seconds, had a key event or viewed 2 or more pages)</td><td>GA4</td></tr>
              <tr><td>Leads</td><td>Email sign-ups, contact forms, WhatsApp enquiries from the page</td><td>Your email platform, GA4 key events (the actions you mark as important)</td></tr>
              <tr><td>Sales</td><td>Sales where the content helped</td><td>GA4 attribution reports, your shop or CRM (customer records system)</td></tr>
            </tbody>
          </table>
          <p>An <strong>assisted conversion</strong> is a sale or sign-up where your content played a part earlier, but was not the last click. For example, a customer reads a pottery guide, leaves, and buys a week later through an ad. GA4 has no report called "assisted conversions". Its attribution paths report shows which channels (such as organic search or email) came early or in the middle of a path. It does not show single articles. So you may also need UTM links (tags added to a link to show where a visit came from). You can also ask buyers "How did you find us?". Report names and settings change often, so check the tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Rangrez Crafts, one month</h3>
          <table class="lc-table">
            <thead><tr><th>Article</th><th>Visits</th><th>Avg. engagement time</th><th>Email sign-ups</th><th>Sign-up rate</th></tr></thead>
            <tbody>
              <tr><td>Block-print bedsheet care guide</td><td>2,400</td><td>1m 50s</td><td>48</td><td>2.0%</td></tr>
              <tr><td>Manchester gift ideas under ₹2,000</td><td>1,100</td><td>0m 40s</td><td>5</td><td>0.45%</td></tr>
              <tr><td>How blue pottery is made</td><td>700</td><td>3m 10s</td><td>21</td><td>3.0%</td></tr>
            </tbody>
          </table>
          <p>Calculate rates in the spreadsheet, not in the AI chat. If visits are in column B and sign-ups in column D, use this formula and format the cell as a percentage:</p>
          <pre><code>=D2/B2</code></pre>
          <p>What the numbers suggest: the pottery article has the least traffic but the best sign-up rate. It may deserve more promotion. The gift article gets visits but people leave fast. Its opening may not match what searchers want.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what you must check</h3>
          <ul class="lc-list">
            <li><strong>AI helps:</strong> it spots patterns, writes a clear summary for your team and suggests next steps to test.</li>
            <li><strong>Check the maths:</strong> AI can make calculation mistakes. Compare every rate it gives with your spreadsheet.</li>
            <li><strong>Check the story:</strong> AI may give reasons that sound sure but are guesses. Treat its reasons as ideas to test.</li>
            <li><strong>Protect data:</strong> Share totals only. Never paste customer names, emails or phone numbers into a public AI tool.</li>
            <li><strong>Small numbers:</strong> A change from 2 to 4 sign-ups is "100% growth", but it may be chance. Look at several months.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: build a monthly content report</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for a monthly content report in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Decide the goal and pick 3 to 5 numbers that match it</li>
              <li data-order="2">Export the numbers from GA4, Search Console and your email platform</li>
              <li data-order="3">Remove any customer names or contact details. Keep totals only.</li>
              <li data-order="4">Calculate the rates in a spreadsheet and check them</li>
              <li data-order="5">Ask AI to summarise the patterns and suggest actions</li>
              <li data-order="6">Check the AI's claims against your numbers, then choose next month's actions</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI a small table of content numbers and ask for a short report with actions. Then check its rates in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a content marketing analyst. Write a short monthly content report for [Rangrez Crafts, a Manchester handicrafts store].
        Goal of our content: [get email sign-ups from people who may buy later].

        Data for [August] (totals only):
        Article | Visits | Avg engagement time | Email sign-ups | Assisted sales
        [Block-print bedsheet care guide | 2400 | 1m 50s | 48 | 6]
        [Manchester gift ideas under Rs 2000 | 1100 | 0m 40s | 5 | 1]
        [How blue pottery is made | 700 | 3m 10s | 21 | 4]

        Please:
        1. Calculate the sign-up rate (sign-ups divided by visits) for each article. Show the working.
        2. Give the 3 most important findings in plain English.
        3. Suggest 3 actions for next month, with a reason for each.
        4. List what this data cannot tell us, and what else we should track.

        Rules: keep it under 250 words. Use only the numbers above. Mark any reason that is a guess as "Guess:".</pre>
            <ul class="ai-try-checks">
              <li>The rates match your own spreadsheet (for example 48 / 2400 = 2.0%)</li>
              <li>The findings use only the numbers you gave</li>
              <li>Guesses are clearly marked, not stated as facts</li>
              <li>Each action links to a finding and can be tested next month</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Measure the level that matches your goal. Visits show reach, but sign-ups and assisted sales show business value. Let AI write the summary, but let your spreadsheet do the maths.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Copyright, Originality and AI Disclosure</h1>
        </div>
        <p class="lc-lead">When you use AI for content, three questions come up. Who owns what the AI made? Are you using other people's work fairly? Do you need to tell people that AI helped? In this lesson you will learn the general picture in India and the US. You will also learn simple habits for sources and AI images, and when to disclose AI help. This lesson is general education only. It is not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Three boxes from left to right: AI output only, AI plus your changes, and your work with AI help. An arrow below shows that more human creative work gives a stronger claim to copyright.">
            <defs><marker id="cm14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="225" height="140" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="132" y="46" font-weight="700">AI output only</text>
              <text x="132" y="72" font-size="11.5" fill="#9b99b8">you wrote a prompt,</text>
              <text x="132" y="88" font-size="11.5" fill="#9b99b8">AI made the rest</text>
              <text x="132" y="118" font-size="12" fill="#fca5a5">US: not protected</text>
              <text x="132" y="140" font-size="12" fill="#fcd34d">India: not settled</text>
              <rect x="267" y="20" width="225" height="140" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="46" font-weight="700">AI + your changes</text>
              <text x="380" y="72" font-size="11.5" fill="#9b99b8">you select, arrange</text>
              <text x="380" y="88" font-size="11.5" fill="#9b99b8">and rewrite a lot</text>
              <text x="380" y="118" font-size="12" fill="#fcd34d">US: your parts can count</text>
              <text x="380" y="140" font-size="12" fill="#fcd34d">India: not settled</text>
              <rect x="515" y="20" width="225" height="140" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="627" y="46" font-weight="700">Your work, AI helps</text>
              <text x="627" y="72" font-size="11.5" fill="#9b99b8">you write it; AI checks</text>
              <text x="627" y="88" font-size="11.5" fill="#9b99b8">grammar or ideas</text>
              <text x="627" y="118" font-size="12" fill="#6ee7b7">US: normally protected</text>
              <text x="627" y="140" font-size="12" fill="#6ee7b7">India: normally protected</text>
              <line x1="30" y1="188" x2="730" y2="188" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cm14a)"/>
              <text x="380" y="212" font-size="12">more human creative work = stronger claim to copyright</text>
              <text x="380" y="236" font-size="11" fill="#9b99b8">A general picture only. Not legal advice. Rules are still changing.</text>
            </g>
          </svg>
          <figcaption>The more real creative work a person adds, the stronger the claim to copyright.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who owns AI-made content?</h3>
          <p><strong>Copyright</strong> is the legal right that stops others from copying a creative work without permission. Rules for AI content differ by country and are still changing. Here is the general picture in 2026.</p>
          <ul class="lc-list">
            <li><strong>United States:</strong> In a January 2025 report, the US Copyright Office says copyright needs a human author. A prompt alone, even a long one, is usually not enough. The parts a person creates, selects, arranges or changes can still be protected. Courts agree. In <em>Thaler v. Perlmutter</em>, a US appeals court ruled that a work made only by AI cannot be registered. In March 2026 the US Supreme Court declined to hear the case, so that ruling stands.</li>
            <li><strong>India:</strong> The Copyright Act, 1957 has a rule for "computer-generated" works. It names the person who causes the work to be created as the author. Courts have not clearly said how this applies to modern AI tools. In December 2025, a DPIIT (Department for Promotion of Industry and Internal Trade) committee published a working paper on using copyrighted works to train AI. A second paper on who owns AI output was planned. Check for the latest official guidance.</li>
            <li><strong>Your AI tool's terms:</strong> Each tool has its own terms on who may use the output and for what. Read them before you use output in paid work.</li>
          </ul>
          <p>What this means for you: add your own ideas, examples, photos and edits. Keep your drafts and notes, as they show your human work. For important cases, ask a qualified intellectual property lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Using sources and images fairly</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Safer habit</th></tr></thead>
            <tbody>
              <tr><td>You want to use a fact from a report</td><td>Say it in your own words, name the source and link to it</td></tr>
              <tr><td>You want to quote someone</td><td>Quote a short part only, exactly, with the name and source</td></tr>
              <tr><td>You like a competitor's article</td><td>Do not ask AI to "rephrase" it. Write your own angle with your own experience.</td></tr>
              <tr><td>You need a photo</td><td>Use your own photos or images with a clear licence. "Found on Google" is not a licence.</td></tr>
              <tr><td>You make an AI image</td><td>Avoid real people, logos, brand characters and copies of a known artwork. Check the image for strange details.</td></tr>
            </tbody>
          </table>
          <p>AI can also repeat text from its training data by mistake. Run long pieces through a plagiarism checker before you publish.</p>
        </div>
        <div class="lc-card">
          <h3>When to disclose AI help</h3>
          <p><strong>Disclosure</strong> means telling your audience that AI was used. The need depends on the platform, the country and how real the content looks.</p>
          <ul class="lc-list">
            <li><strong>Realistic images, audio and video:</strong> Big platforms such as YouTube, Instagram and Facebook ask creators to label realistic AI-made or altered content. Check each platform's current help pages.</li>
            <li><strong>India:</strong> Amendments to the IT Rules came into force in February 2026. They cover "synthetically generated information": AI-made or altered images, audio or video that look real. Such content must carry a clear label. Large social media platforms must ask users to declare it when they upload. Normal editing, such as fixing colour or reducing noise, is not covered.</li>
            <li><strong>People and reviews:</strong> Never create fake customers, fake reviews or fake testimonials with AI. Consumer protection rules in India and the US treat these as misleading. Never make a real person appear to say something they did not say.</li>
            <li><strong>Text:</strong> Grammar help and editing usually need no label. If AI wrote most of a piece, a short note builds trust, for example: "Drafted with AI help. Checked and edited by our team."</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: use it, fix it or drop it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each piece of content by what you should do before publishing.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK to use"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix, credit or label first"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="The team checked the facts and added its own experience. The work is theirs.">A LedgerLite GST guide drafted with AI, then fact-checked and rewritten by the team</li>
              <li data-bucket="fix" data-why="Using a number from a report is fine, but you must name and link the source.">A statistic from a government report, pasted with no source</li>
              <li data-bucket="no" data-why="Rewording someone else's article is still copying their work and ideas.">A competitor's blog post that AI "rephrased" for Sweet Crumbs</li>
              <li data-bucket="no" data-why="This is a fake testimonial. It misleads customers.">A realistic AI video of a "happy guest" praising Backwater Trails</li>
              <li data-bucket="fix" data-why="Realistic AI video usually needs a label on the platform. Check its rules.">A realistic AI video of a Kerala houseboat at sunset for a reel</li>
              <li data-bucket="no" data-why="You have no licence. Ask the owner for permission or use a licensed image.">A craft photo found through an image search, with no licence</li>
              <li data-bucket="ok" data-why="Rangrez Crafts owns these photos, so it can use them.">Rangrez Crafts' own photos of its artisans, taken with their permission</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to review a planned post for source, image and disclosure risks. Use its list to guide your own checks.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful content editor. You are not a lawyer, so do not give legal advice.
        Review my planned post for originality, fair use of sources, images and AI disclosure.

        Business: [Backwater Trails, a Boston travel agency]
        Post: [a blog post "7 Things to Pack for a Kerala Monsoon Trip", drafted with AI and edited by me]
        Sources used: [one fact from a tourism website, one quote from a travel magazine, no links yet]
        Images: [2 AI-generated images of houseboats, 1 photo from a free stock site, 1 photo found on social media]
        Where it will go: [our blog, Instagram and YouTube Shorts]

        Please give:
        1. A table: Item | Possible risk | What to do before publishing.
        2. Which items need a source link or credit.
        3. Which images I should replace, and why.
        4. Where a note or label about AI use may be needed. Tell me to check each platform's current rules.
        5. One short, honest AI-use note I could add to the blog post.
        End with a reminder to ask a qualified professional for legal questions.</pre>
            <ul class="ai-try-checks">
              <li>The photo from social media is flagged as needing permission</li>
              <li>The AI does not claim to know exact laws or give legal advice</li>
              <li>Each source gets a clear "credit and link" action</li>
              <li>You check the real platform rules yourself before posting</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Your own experience, photos and edits make content original and easier to protect. Credit your sources, use images you have rights to, and be honest when AI made something look real.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Capstone: A Content Plan and First Article</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole course together. You will pick one business and build four things: a one-page content strategy, a 3-month content calendar, one full article and a repurposing plan. You can use your own business or one of the course examples. At each step, AI helps you draft and you make the decisions and check the facts.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 225" role="img" aria-label="Four steps in a row: strategy, calendar, article and repurpose. A loop arrow goes from repurpose back to strategy, labelled measure monthly and adjust.">
            <defs><marker id="cm15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="40" width="160" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="95" y="72" font-weight="700">1. Strategy</text><text x="95" y="96" font-size="11" fill="#9b99b8">goal, audience, topics</text>
              <rect x="205" y="40" width="160" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="285" y="72" font-weight="700">2. Calendar</text><text x="285" y="96" font-size="11" fill="#9b99b8">3 months, 2 a week</text>
              <rect x="395" y="40" width="160" height="80" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="475" y="72" font-weight="700">3. Article</text><text x="475" y="96" font-size="11" fill="#9b99b8">drafted and checked</text>
              <rect x="585" y="40" width="160" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="72" font-weight="700">4. Repurpose</text><text x="665" y="96" font-size="11" fill="#9b99b8">5+ pieces, 4 channels</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cm15a)">
                <line x1="177" y1="80" x2="201" y2="80"/><line x1="367" y1="80" x2="391" y2="80"/><line x1="557" y1="80" x2="581" y2="80"/>
                <path d="M665,122 L665,170 L95,170 L95,126"/>
              </g>
              <rect x="280" y="156" width="200" height="28" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="175" font-size="12">Measure monthly, adjust</text>
              <text x="380" y="210" font-size="11" fill="#9b99b8">You decide and check at every step. AI drafts.</text>
            </g>
          </svg>
          <figcaption>The capstone in four steps. Your results each month feed back into the strategy.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: a one-page strategy</h3>
          <p>Choose a business: your own, or Sweet Crumbs (a London bakery), Rangrez Crafts (a Manchester handicrafts store), Backwater Trails (a Boston travel agency) or LedgerLite (a San Francisco accounting app). Then fill in this template with AI help.</p>
          <pre><code>Business:       Sweet Crumbs, home bakery in London
        Goal:           50 custom-cake enquiries from the website in 3 months
        Audience:       parents planning birthdays, office party planners
        Top questions:  How early should I order? Eggless options? Delivery areas?
        Content pillars: 1) Party planning  2) Eggless baking  3) Behind the scenes
        Formats:        blog posts, Instagram reels, a monthly email
        Channels:       website, Instagram, email list, 2 local parent groups
        Measure:        enquiries, email sign-ups, top pages in GA4</code></pre>
          <p>Content pillars are the 3 or 4 main themes you write about again and again. Make sure the goal is one you can measure.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2 and 3: calendar and first article</h3>
          <p>Ask AI for a 12-week calendar. Then cut it to what your team can really publish. Two good pieces a week is better than five rushed ones.</p>
          <table class="lc-table">
            <thead><tr><th>Week</th><th>Pillar</th><th>Main piece</th><th>Channel</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Party planning</td><td>Blog: How to Order a Birthday Cake in London (First Article)</td><td>Website, email</td></tr>
              <tr><td>2</td><td>Eggless baking</td><td>Reel: 3 myths about eggless cakes</td><td>Instagram</td></tr>
              <tr><td>3</td><td>Behind the scenes</td><td>Blog: A day in our kitchen</td><td>Website, Instagram</td></tr>
            </tbody>
          </table>
          <p>For the first article, follow the process from this course. Research real customer questions. Make an outline. Draft section by section. Add your own examples, prices and photos. Then run the five checks: facts, numbers, quotes, tone and originality.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: the repurposing plan and final check</h3>
          <table class="lc-table">
            <thead><tr><th>From the article</th><th>New piece</th><th>Channel</th></tr></thead>
            <tbody>
              <tr><td>"How early to order" section</td><td>Reel with a simple timeline</td><td>Instagram</td></tr>
              <tr><td>Checklist of details to share</td><td>Downloadable one-page checklist</td><td>Website, email</td></tr>
              <tr><td>Top 3 tips</td><td>Newsletter section</td><td>Email</td></tr>
              <tr><td>Delivery areas answer</td><td>Helpful reply (if group rules allow)</td><td>Local parent groups</td></tr>
              <tr><td>Customer photo story</td><td>Carousel, with the customer's permission</td><td>Instagram</td></tr>
            </tbody>
          </table>
          <p>Before you finish, check these points:</p>
          <ul class="lc-list">
            <li>Every fact and price is correct.</li>
            <li>No private customer data went into a public AI tool.</li>
            <li>Sources are credited, and images are yours or licensed.</li>
            <li>You know which numbers you will measure each month.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: walk through a capstone session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Ask for a strategy">The Sweet Crumbs owner gives the AI her goal, audience and top customer questions. She asks for a one-page strategy.</li>
              <li data-kind="answer" data-label="Draft strategy">The AI suggests three content pillars, formats, channels and numbers to measure.</li>
              <li data-kind="check" data-label="Add real details">She adds her real delivery areas and price range. She removes a channel she has no time for.</li>
              <li data-kind="answer" data-label="12-week calendar">The AI drafts a calendar with five posts every week.</li>
              <li data-kind="warn" data-label="Too much work">Five posts a week is too many for a two-person bakery. She cuts it to two pieces a week.</li>
              <li data-kind="tool" data-label="Draft and check">She drafts the first article section by section, then builds a fact-check table and runs a plagiarism checker.</li>
              <li data-kind="result" data-label="Issues found">The check finds a wrong delivery charge and one sentence that closely matches another site.</li>
              <li data-kind="check" data-label="Fix and publish">She fixes both, adds her own cake photos, publishes the article and schedules the repurposed pieces.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Start your capstone. This prompt gives you a strategy, a 3-month calendar, an outline for your first article and a repurposing plan in one go.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a content marketing coach for small businesses.
        Help me start a 3-month content plan.

        Business: [LedgerLite, a San Francisco accounting app for freelancers and small shops]
        Goal: [100 free-trial sign-ups from content in 3 months]
        Audience: [freelancers and small shop owners in India who find GST and invoices confusing]
        Top customer questions: [How do I make a GST invoice? When do I need GST registration? How do I track expenses?]
        Team time: [2 content pieces per week]
        Channels: [website blog, LinkedIn, email list, Instagram]

        Please create:
        1. A one-page strategy: goal, audience, 3 content pillars, formats, channels and 4 numbers to measure.
        2. A 12-week calendar table: Week | Pillar | Title | Format | Channel. Keep to the team time.
        3. A detailed outline for the first article, with H2 headings and notes on where I should add my own examples.
        4. A repurposing plan for that article: 5 new pieces and their channels.
        Do not invent statistics or legal rules. Write [CHECK] next to anything about tax or law that an expert must check.</pre>
            <ul class="ai-try-checks">
              <li>The calendar fits your team time (about 24 pieces, not 60)</li>
              <li>Every item links to one of the 3 pillars and the goal</li>
              <li>Tax or legal points are marked [CHECK] for an expert, such as a chartered accountant</li>
              <li>The outline leaves space for your own examples and experience</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A content plan works when it is small enough to follow. Use AI to draft fast, then spend your time on real details, checking and sharing. Measure each month and improve the plan.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

module AiSocialMediaMarketingContent
  # Units (sidebar dividers): 1–4 Social Media and AI Basics · 5–9 Creating Content · 10–14 Growing and Measuring · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">How Social Media Marketing Works</h1>
        </div>
        <p class="lc-lead">Social media marketing means using platforms like Instagram, Facebook, LinkedIn, YouTube and X to reach people and grow a business. Every post should have a clear <strong>goal</strong>. In this lesson, you will learn the four main goals. You will also see how platforms differ, and how organic and paid posts differ. This helps you decide what to post before you ask AI to write anything.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A funnel with four stages: awareness, engagement, leads and sales. Next to each stage is what you measure: reach and followers, likes and saves, DMs and link clicks, and orders and revenue.">
            <defs><marker id="smm1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <polygon points="30,20 470,20 430,80 70,80" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="250" y="55">Awareness: people see you</text>
              <polygon points="70,86 430,86 390,146 110,146" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="250" y="121">Engagement: people react</text>
              <polygon points="110,152 390,152 350,212 150,212" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="250" y="187">Leads: people enquire</text>
              <polygon points="150,218 350,218 310,278 190,278" fill="#1f1f44" stroke="#10b981"/>
              <text x="250" y="253">Sales: people buy</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm1a)">
                <line x1="455" y1="50" x2="495" y2="50"/>
                <line x1="415" y1="116" x2="495" y2="116"/>
                <line x1="375" y1="182" x2="495" y2="182"/>
                <line x1="335" y1="248" x2="495" y2="248"/>
              </g>
              <g text-anchor="start" font-size="12">
                <text x="505" y="54" fill="#93c5fd">Reach, impressions, followers</text>
                <text x="505" y="120" fill="#c4b5fd">Likes, comments, saves, shares</text>
                <text x="505" y="186" fill="#fcd34d">DMs, link clicks, form fills</text>
                <text x="505" y="252" fill="#6ee7b7">Orders, bookings, revenue</text>
              </g>
              <text x="380" y="302" font-size="11" fill="#9b99b8">Organic posts and paid ads can both work at every stage.</text>
            </g>
          </svg>
          <figcaption>The four goals of social media marketing, and what you measure for each one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four goals</h3>
          <p>A goal tells you what "success" means for a post or a campaign (a group of posts with one aim). Here is how a made-up home bakery in Maharashtra, <strong>Sweet Crumb Bakery</strong>, might use each goal.</p>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>What it means</th><th>Sweet Crumb example</th><th>What to measure</th></tr></thead>
            <tbody>
              <tr><td><strong>Awareness</strong></td><td>More people learn that you exist</td><td>A Reel showing the bakery kitchen at 6 am</td><td>Reach (how many different people saw it), new followers</td></tr>
              <tr><td><strong>Engagement</strong></td><td>People react and talk to you</td><td>A poll: "Chocolate or mango for our next cake?"</td><td>Comments, saves, shares</td></tr>
              <tr><td><strong>Leads</strong></td><td>People show interest and share contact details or ask to buy</td><td>"DM us to pre-order a birthday cake"</td><td>DMs, WhatsApp enquiries, form fills</td></tr>
              <tr><td><strong>Sales</strong></td><td>People pay you</td><td>A weekend offer with an order link</td><td>Orders, revenue (money from sales)</td></tr>
            </tbody>
          </table>
          <p>One post usually has one main goal. A new business often starts with awareness. A business with many followers may focus on leads and sales.</p>
        </div>
        <div class="lc-card">
          <h3>Platforms and audiences</h3>
          <p>Each platform has its own kind of content and its own users. The table gives a general picture. Your own audience may be different, so always check your account insights (the numbers the platform shows about your followers).</p>
          <table class="lc-table">
            <thead><tr><th>Platform</th><th>Common content</th><th>Often good for</th></tr></thead>
            <tbody>
              <tr><td>Instagram</td><td>Reels, photos, carousels, Stories</td><td>Food, fashion, travel, crafts, local shops</td></tr>
              <tr><td>Facebook</td><td>Posts, groups, events, videos</td><td>Local communities, older audiences, events</td></tr>
              <tr><td>LinkedIn</td><td>Text posts, documents, articles</td><td>B2B (selling to other businesses), jobs, expert advice</td></tr>
              <tr><td>YouTube Shorts</td><td>Short vertical videos</td><td>How-to tips, product demos, reaching new people</td></tr>
              <tr><td>X</td><td>Short text posts, threads</td><td>News, quick updates, public conversations</td></tr>
            </tbody>
          </table>
          <p>Platform features and ranking rules (the algorithm: the system that decides who sees a post) change often. Describe them in general terms, and check each platform's help pages for current details.</p>
        </div>
        <div class="lc-card">
          <h3>Organic vs paid</h3>
          <ul class="lc-list">
            <li><strong>Organic</strong> posts are free to publish. They reach your followers and some new people. Growth is usually slow.</li>
            <li><strong>Paid</strong> posts are ads. You pay the platform (for example through Meta Ads Manager) to show them to a chosen audience. You get results faster, but you spend money.</li>
          </ul>
          <p>Most small businesses start with organic posts. They learn which posts work, and then pay to promote the best ones. AI can help you plan both. But you decide the budget and the goal.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me a social media strategy for my bakery.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run Sweet Crumb, a home bakery in Maharashtra. I sell cakes and cookies.
        Most orders come on WhatsApp. I have 800 Instagram followers.
        My main goal for the next 3 months is more birthday cake leads.
        Suggest which platforms to focus on and 3 types of posts for this goal.
        For each post type, say which number I should measure.</code></pre>
          <p>The better prompt gives the business, the audience size, the goal and the output you want. The AI's answer is still a suggestion. You check it against your own results.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: match the post to its goal</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each post by its main goal.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="aware" data-label="Awareness"></div>
              <div data-sorter-target="bucket" data-bucket="engage" data-label="Engagement"></div>
              <div data-sorter-target="bucket" data-bucket="lead" data-label="Leads"></div>
              <div data-sorter-target="bucket" data-bucket="sale" data-label="Sales"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="aware" data-why="It shows the brand to new people. It does not ask them to do anything yet.">A short Reel introducing a new Rajasthan handicrafts store</li>
              <li data-bucket="engage" data-why="A question invites comments and replies.">"Which colour should our next block-print scarf be? Tell us in the comments."</li>
              <li data-bucket="lead" data-why="The person shares interest and contact details, but has not paid yet.">"Fill this form to get a free trip plan for the Kerala hills."</li>
              <li data-bucket="sale" data-why="It has a price, a deadline and a way to buy.">"Diwali gift box, ₹999, order by Friday using the link in bio."</li>
              <li data-bucket="engage" data-why="Saves and shares are engagement. The post gives value and invites a reaction.">A carousel of "5 tips to store cookies" that asks people to save it</li>
              <li data-bucket="lead" data-why="A free demo request is a lead for a software company.">A LinkedIn post from a SaaS startup: "Book a free demo"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to suggest a goal, platforms and numbers to track for a small business. Change the details in brackets to your own business.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a social media marketing adviser for small businesses in India.

        My business: [Sweet Crumb, a home bakery in Maharashtra that sells cakes and cookies]
        My customers: [families and young working people in our city]
        Where I am now: [800 Instagram followers, no Facebook page, most orders come on WhatsApp]
        My budget for ads: [small, or none for now]

        Please do these things:
        1. Suggest ONE main goal for the next 3 months (awareness, engagement, leads or sales) and explain why in 2 sentences.
        2. Suggest 1 or 2 platforms to focus on, and why.
        3. Say whether I should start with organic posts, paid ads or both.
        4. Give 3 numbers I should track each week for this goal.

        Answer in a short table and a few bullet points. Use simple English. Do not give exact posting times, exact reach numbers or platform statistics. If you are not sure about something, say so.</pre>
            <ul class="ai-try-checks">
              <li>Is there only one main goal, and does it fit the business?</li>
              <li>Do the numbers to track match the goal (for example DMs for leads)?</li>
              <li>Did the AI avoid made-up statistics or "best time to post" claims?</li>
              <li>Does the advice fit your real budget?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Decide the goal first, then the platform, then the post. AI writes better posts when you tell it the goal and the audience. The numbers you measure must match that goal.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Where AI Helps on Social Media</h1>
        </div>
        <p class="lc-lead">AI assistants such as Claude or ChatGPT can save you hours every week on social media. They can suggest ideas, write first drafts, turn one post into many, draft replies and explain your numbers. But AI can also make mistakes, sound generic or invent facts. In this lesson, you will learn where AI helps most and how to keep your brand voice. You will also learn what you must always check.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Five social media jobs where AI makes the first draft: ideas, drafts, repurposing, replies and analytics. Under each job is what a person must check. At the bottom, you decide, edit and post.">
            <defs><marker id="smm2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" fill="#9b99b8">AI makes the first draft. You check and decide.</text>
              <rect x="25" y="40" width="130" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="90" y="65" font-weight="700">Ideas</text><text x="90" y="85" font-size="11" fill="#9b99b8">post topics</text>
              <rect x="170" y="40" width="130" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="235" y="65" font-weight="700">Drafts</text><text x="235" y="85" font-size="11" fill="#9b99b8">captions, scripts</text>
              <rect x="315" y="40" width="130" height="60" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="65" font-weight="700">Repurposing</text><text x="380" y="85" font-size="11" fill="#9b99b8">one idea, many posts</text>
              <rect x="460" y="40" width="130" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="525" y="65" font-weight="700">Replies</text><text x="525" y="85" font-size="11" fill="#9b99b8">comments, DMs</text>
              <rect x="605" y="40" width="130" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="670" y="65" font-weight="700">Analytics</text><text x="670" y="85" font-size="11" fill="#9b99b8">summaries</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm2a)">
                <line x1="90" y1="102" x2="90" y2="126"/><line x1="235" y1="102" x2="235" y2="126"/><line x1="380" y1="102" x2="380" y2="126"/><line x1="525" y1="102" x2="525" y2="126"/><line x1="670" y1="102" x2="670" y2="126"/>
              </g>
              <g font-size="11.5" fill="#fcd34d">
                <rect x="25" y="130" width="130" height="60" rx="10" fill="#27274e"/><text x="90" y="155">Fits your brand?</text><text x="90" y="175">Not copied?</text>
                <rect x="170" y="130" width="130" height="60" rx="10" fill="#27274e"/><text x="235" y="155">Facts and prices?</text><text x="235" y="175">Right tone?</text>
                <rect x="315" y="130" width="130" height="60" rx="10" fill="#27274e"/><text x="380" y="155">Fits the platform?</text><text x="380" y="175">Nothing lost?</text>
                <rect x="460" y="130" width="130" height="60" rx="10" fill="#27274e"/><text x="525" y="155">Kind and correct?</text><text x="525" y="175">Needs a person?</text>
                <rect x="605" y="130" width="130" height="60" rx="10" fill="#27274e"/><text x="670" y="155">Numbers match?</text><text x="670" y="175">Enough data?</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm2a)">
                <line x1="90" y1="192" x2="90" y2="216"/><line x1="235" y1="192" x2="235" y2="216"/><line x1="380" y1="192" x2="380" y2="216"/><line x1="525" y1="192" x2="525" y2="216"/><line x1="670" y1="192" x2="670" y2="216"/>
              </g>
              <rect x="25" y="220" width="710" height="44" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="247" fill="#6ee7b7">You decide, edit and post. You own the result.</text>
            </g>
          </svg>
          <figcaption>AI helps with five common jobs. A person checks every one before it goes live.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI does well</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>How AI helps</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Ideas</strong></td><td>Gives many post ideas quickly</td><td>20 ideas for a Kerala travel agency in monsoon season</td></tr>
              <tr><td><strong>Drafts</strong></td><td>Writes first versions of captions, hooks and video scripts</td><td>3 caption options for a houseboat Reel</td></tr>
              <tr><td><strong>Repurposing</strong></td><td>Turns one piece of content into posts for other platforms</td><td>A blog post becomes a LinkedIn post and an Instagram carousel</td></tr>
              <tr><td><strong>Replies</strong></td><td>Drafts polite answers to common comments and DMs</td><td>A reply to "What is the price for 2 nights?"</td></tr>
              <tr><td><strong>Analytics</strong></td><td>Summarises an insights export (a file of your post numbers) in plain words</td><td>"Which 3 posts got the most saves last month?"</td></tr>
            </tbody>
          </table>
          <p>In all five jobs, AI gives you a <em>first draft</em>. It does not replace your knowledge of your business and your customers.</p>
        </div>
        <div class="lc-card">
          <h3>Keeping your brand voice</h3>
          <p>Your <strong>brand voice</strong> is the way your brand talks: friendly or formal, playful or calm. Without guidance, AI often writes in a generic style. It may use too many emoji, big claims or words your brand never uses.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an Instagram caption for our houseboat trip.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You write for Backwater Trails, a small travel agency in Kerala.
        Our voice: warm, calm and helpful. Short sentences. At most 2 emoji.
        We never say "best in Kerala" or use words like "cheapest".
        Write 3 caption options for a Reel about a 1-night Kerala houseboat trip.
        Price: from ₹8,500 for 2 people. Call to action: DM us for dates.</code></pre>
          <p>The better prompt gives the voice, the rules, the real price and the action you want. You will build a full brand voice guide later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>What you must always check</h3>
          <table class="lc-table">
            <thead><tr><th>Risk</th><th>Example</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>Wrong facts or prices</td><td>AI writes "₹6,500" when your price is ₹8,500</td><td>Check every number, date and offer</td></tr>
              <tr><td>Invented claims</td><td>"Rated No. 1 by travellers in 2025"</td><td>Delete any claim you cannot prove</td></tr>
              <tr><td>Copied content</td><td>A caption very close to a competitor's post</td><td>Rewrite it in your own words</td></tr>
              <tr><td>Wrong tone</td><td>A joke in a reply to an angry customer</td><td>Read it as the customer would</td></tr>
              <tr><td>Private data</td><td>Pasting customer names and phone numbers into a public AI tool</td><td>Remove personal details before you paste</td></tr>
            </tbody>
          </table>
          <p>AI can sound very sure even when it is wrong. You are responsible for everything you post.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a caption session with checks</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">Write a short Instagram caption for Backwater Trails. 1-night Kerala houseboat, from ₹8,500 for 2 people. Warm, calm voice. End with "DM us for dates".</li>
              <li data-kind="answer" data-label="AI draft">Voted Kerala's No. 1 houseboat experience! 🌴🛶✨🔥 Float through the backwaters from just ₹6,500. DM us for dates!</li>
              <li data-kind="warn" data-label="Problem 1">"Voted Kerala's No. 1" is an invented claim. Nobody voted. Remove it.</li>
              <li data-kind="warn" data-label="Problem 2">The price is wrong. The real price starts at ₹8,500, not ₹6,500.</li>
              <li data-kind="user" data-label="Your follow-up">Remove the "No. 1" claim. Use the price ₹8,500. Use at most 2 emoji and a calm tone.</li>
              <li data-kind="answer" data-label="AI draft 2">Slow mornings, quiet water and fresh Kerala lunch on board 🌴 Our 1-night Kerala houseboat trip starts from ₹8,500 for 2 people. DM us for dates.</li>
              <li data-kind="check" data-label="You check">Price correct. No invented claims. Tone is calm. Is lunch really included? You check with the houseboat partner before posting.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>List your weekly social media tasks and ask AI where it can help. The answer also tells you what you must check for each task.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a social media coach who helps small businesses use AI safely.

        My business: [Backwater Trails, a small travel agency in Kerala]
        My weekly social media tasks:
        - [Think of 4 post ideas]
        - [Write captions for 4 Instagram posts]
        - [Answer about 30 comments and DMs]
        - [Turn one blog post into a LinkedIn post]
        - [Look at last week's post numbers]

        For each task, make a table with these columns:
        1. Task
        2. How AI can help (one sentence)
        3. What I must check before posting or sending
        4. Should a person do this task fully? (Yes or No, with a short reason)

        After the table, give 3 simple rules for using AI safely on social media. Include one rule about private customer data. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Does every task have a clear "what to check" item?</li>
              <li>Does the AI say that some replies (for example complaints) need a person?</li>
              <li>Is there a rule about not pasting private customer data?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI for the first draft, not the final word. Give it your brand voice and real facts. Then check every number, claim and tone before anything goes live.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Knowing Your Audience</h1>
        </div>
        <p class="lc-lead">Good posts speak to real people with real problems. Before you ask AI to write posts, you need to know who your audience is and what they care about. In this lesson, you will use AI to build simple personas and find your customers' questions. Then you will check the results with real comments and data.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Four sources: comments, DMs and questions, reviews, and page insights go into AI, which groups and summarises them. This gives a draft persona. You check it with real comments and data, and update it if it is wrong.">
            <defs><marker id="smm3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="170" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="105" y="47">Comments</text>
              <rect x="20" y="80" width="170" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="105" y="107">DMs and questions</text>
              <rect x="20" y="140" width="170" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="105" y="167">Reviews</text>
              <rect x="20" y="200" width="170" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="105" y="227">Page insights</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm3a)">
                <line x1="192" y1="42" x2="246" y2="118"/>
                <line x1="192" y1="102" x2="246" y2="126"/>
                <line x1="192" y1="162" x2="246" y2="140"/>
                <line x1="192" y1="222" x2="246" y2="148"/>
                <line x1="402" y1="132" x2="436" y2="132"/>
                <line x1="582" y1="132" x2="606" y2="132"/>
              </g>
              <rect x="250" y="97" width="150" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="325" y="127">AI groups</text><text x="325" y="147">and summarises</text>
              <rect x="440" y="97" width="140" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="510" y="127">Draft persona</text><text x="510" y="147" font-size="11" fill="#9b99b8">a first guess</text>
              <rect x="610" y="97" width="135" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="677" y="127" font-size="12">Check with real</text><text x="677" y="147" font-size="12">comments, data</text>
              <path d="M677,169 L677,205 L510,205 L510,173" fill="none" stroke="#10b981" stroke-width="1.5" marker-end="url(#smm3a)"/>
              <text x="593" y="226" font-size="11" fill="#9b99b8">update the persona if wrong</text>
            </g>
          </svg>
          <figcaption>AI helps you turn scattered customer messages into a persona. Real data tells you if it is right.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a persona is</h3>
          <p>A <strong>persona</strong> is a short description of one typical group of customers. It has a made-up name, but it is based on real information. It helps you and the AI write for real people, not for "everyone".</p>
          <p>Here is a persona for a made-up Rajasthan handicrafts store, <strong>Rang Mahal Crafts</strong>, which sells block-print cushion covers and scarves online.</p>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Name</td><td>"Gifting Garima"</td></tr>
              <tr><td>Who</td><td>Works in an office in a big city. Buys gifts for family and colleagues.</td></tr>
              <tr><td>Wants</td><td>Handmade gifts that look special and arrive on time</td></tr>
              <tr><td>Pain points</td><td>Worries about colour fading, late delivery and fake "handmade" claims</td></tr>
              <tr><td>Common questions</td><td>"Is this hand block-printed?" "Can you deliver before Diwali?" "Do you gift-wrap?"</td></tr>
              <tr><td>Where she is</td><td>Instagram, some Facebook</td></tr>
            </tbody>
          </table>
          <p>A <strong>pain point</strong> is a problem the customer wants to solve. Posts that answer pain points are often the most useful ones.</p>
        </div>
        <div class="lc-card">
          <h3>Finding questions and pain points with AI</h3>
          <p>Your comments, DMs and reviews are full of real customer questions. AI can read many of them and group them quickly. First, remove names, phone numbers, addresses and order numbers. Do not paste private customer data into a public AI tool.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Who is my target audience?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are 40 comments and DMs from our Instagram page (names removed).
        We sell hand block-printed cushion covers and scarves from Rajasthan.
        Group them into the 5 most common questions or worries.
        For each group, give the count and 2 example comments.
        Do not add anything that is not in the comments.</code></pre>
          <p>The weak prompt makes AI guess. The better prompt makes AI work from your real customer words.</p>
        </div>
        <div class="lc-card">
          <h3>Checking with real comments and data</h3>
          <p>An AI persona is a first guess. It can be wrong, or it can use stereotypes (fixed, unfair ideas about a group of people). Check it before you use it.</p>
          <ul class="lc-list">
            <li><strong>Insights:</strong> does the age range and city list in your account insights match the persona?</li>
            <li><strong>Counts:</strong> count a few groups yourself. Did AI say "many people ask about delivery" when only 2 did?</li>
            <li><strong>Sales:</strong> do your real buyers look like the persona? Check your order list (without sharing it with AI).</li>
            <li><strong>Ask:</strong> talk to 3 or 4 real customers, or run a poll in Stories.</li>
          </ul>
          <p>Update the persona every few months. Your audience changes as your business grows.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a persona in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps for building an audience persona in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Collect recent comments, DMs and reviews</li>
              <li data-order="2">Remove names, phone numbers and other personal details</li>
              <li data-order="3">Ask AI to group the common questions and pain points</li>
              <li data-order="4">Ask AI to draft a persona from those groups</li>
              <li data-order="5">Compare the persona with your insights and real sales</li>
              <li data-order="6">Fix the persona and add it to your future AI prompts</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a set of anonymised customer comments. Ask it to find the main questions and draft two personas.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketing researcher helping a small online business.

        Business: [Rang Mahal Crafts, a Rajasthan store selling hand block-printed cushion covers and scarves online]
        Here are real customer comments (names removed):
        [1. Is this really hand block-printed?
        2. Will the colour fade after washing?
        3. Can you deliver to Maharashtra before Diwali?
        4. Do you gift-wrap? I need 10 for my office team.
        5. Price is a bit high, any offer?
        6. Loved the scarf, my mother wears it daily.
        7. Do you ship to Dubai?
        8. How do I wash it?]

        Tasks:
        1. Group the comments into 3 to 5 topics. Give the count for each topic.
        2. List the main pain points in plain words.
        3. Draft 2 short personas (name, who, wants, pain points, common questions).
        4. List 3 things I should check in my real insights or sales data before I trust these personas.

        Use only what the comments show. Mark anything you are guessing with "(guess)".</pre>
            <ul class="ai-try-checks">
              <li>Do the topic counts add up to the number of comments?</li>
              <li>Are guesses clearly marked, not stated as facts?</li>
              <li>Do the personas avoid stereotypes about age, gender or city?</li>
              <li>Are the checks things you can really do with your own data?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI turns your customers' own words into a persona quickly. But a persona is only useful if real comments and data support it. Check it, fix it and then use it in every prompt.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Brand Voice for Social Posts</h1>
        </div>
        <p class="lc-lead">Your <strong>brand voice</strong> is how your brand sounds in every post, caption and reply. A clear voice helps people recognise you and trust you. In this lesson, you will write a short brand voice guide and compare on-brand and off-brand posts. Then you will give the guide to AI, so its drafts sound like you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A brand voice guide for Sweet Crumb Bakery is added to a prompt. Prompt plus guide gives an on-brand post that is warm and simple. Prompt only gives an off-brand post that is loud and full of hype.">
            <defs><marker id="smm4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="280" height="230" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="160" y="46" font-size="13" font-weight="700" fill="#c4b5fd">Sweet Crumb voice guide</text>
              <g text-anchor="start">
                <text x="38" y="78">We are: warm, simple, local</text>
                <text x="38" y="106">We are not: pushy, loud</text>
                <text x="38" y="134">Say: fresh, baked today</text>
                <text x="38" y="162">Avoid: "best ever", "OMG"</text>
                <text x="38" y="190">Emoji: 0 to 2 per post</text>
                <text x="38" y="218">Always: price in ₹, pickup info</text>
              </g>
              <rect x="330" y="50" width="130" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="395" y="77" font-size="13">Prompt + guide</text>
              <rect x="330" y="175" width="130" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="395" y="202" font-size="13">Prompt only</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm4a)">
                <line x1="302" y1="72" x2="326" y2="72"/>
                <line x1="462" y1="72" x2="486" y2="72"/>
                <line x1="462" y1="197" x2="486" y2="197"/>
              </g>
              <rect x="490" y="20" width="250" height="105" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="615" y="42" font-weight="700" fill="#6ee7b7">On-brand</text>
              <text x="615" y="66">Fresh from our oven at 7 am:</text>
              <text x="615" y="86">banana walnut loaf, soft and</text>
              <text x="615" y="106">warm. ₹350. Collect from us.</text>
              <rect x="490" y="145" width="250" height="105" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="615" y="167" font-weight="700" fill="#f9a8d4">Off-brand</text>
              <text x="615" y="191">OMG!!! The BEST cake in</text>
              <text x="615" y="211">the UNIVERSE!!! Buy now</text>
              <text x="615" y="231">or regret it forever!!!</text>
            </g>
          </svg>
          <figcaption>The same request gives very different posts. The voice guide makes the difference.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in a brand voice guide</h3>
          <p>A brand voice guide is a short document, often one page. It describes how your brand writes. Keep it short enough to paste into an AI prompt.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Sweet Crumb Bakery example</th></tr></thead>
            <tbody>
              <tr><td>Three personality words</td><td>Warm, simple, local</td></tr>
              <tr><td>We are / we are not</td><td>Friendly, not pushy. Proud, not boastful.</td></tr>
              <tr><td>Words we use</td><td>fresh, baked today, made with jaggery, pre-order</td></tr>
              <tr><td>Words we avoid</td><td>"best ever", "cheapest", "OMG", "guaranteed"</td></tr>
              <tr><td>Style rules</td><td>Short sentences. 0 to 2 emoji. No ALL CAPS. Price in ₹.</td></tr>
              <tr><td>Language mix</td><td>English with a few Marathi or Hindi words our customers use, like "mast"</td></tr>
              <tr><td>Example posts</td><td>2 or 3 real posts that you liked</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>On-brand and off-brand posts</h3>
          <table class="lc-table">
            <thead><tr><th>Post</th><th>On-brand?</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>"Our mango cheesecake is back for the season. Made with Alphonso mango pulp. ₹450. DM to pre-order."</td><td>Yes</td><td>Warm, simple, gives price and action</td></tr>
              <tr><td>"HURRY!!! Only 3 left!!! Don't miss out!!!"</td><td>No</td><td>Pushy, ALL CAPS, too much punctuation</td></tr>
              <tr><td>"We are pleased to inform our esteemed customers that new products are available."</td><td>No</td><td>Too formal and cold for this brand</td></tr>
              <tr><td>"Rainy evening, hot chai, and our jaggery cookies. Mast combination. ₹220 a box."</td><td>Yes</td><td>Local, friendly, uses a word customers use</td></tr>
            </tbody>
          </table>
          <p>Brand voice is not only for posts. Replies to comments and DMs must use the same voice.</p>
        </div>
        <div class="lc-card">
          <h3>Giving the guide to AI</h3>
          <p>AI copies the style you show it. A short guide plus 2 example posts works much better than one word like "friendly".</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a friendly post about our new cookies.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Follow this brand voice guide:
        [paste your guide here]
        Here are 2 posts in our voice:
        1. "Rainy evening, hot chai, and our jaggery cookies. Mast combination. ₹220 a box."
        2. "Fresh from our oven at 7 am: banana walnut loaf. ₹350. Collect from us."
        Write 3 Instagram captions for our new ragi chocolate cookies, ₹250 a box.
        After each caption, list any rule from the guide you were not sure about.</code></pre>
          <p>Many AI assistants let you save instructions or files in a project, so you do not paste the guide every time. Check your tool's current help pages for how this works. Even with a guide, read every draft. AI can still slip into hype or add facts you did not give it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: on-brand or off-brand?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sweet Crumb's voice is warm, simple and local, with 0 to 2 emoji. Sort each post.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="on" data-label="On-brand"></div>
              <div data-sorter-target="bucket" data-bucket="off" data-label="Off-brand"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="on" data-why="Warm and simple, with a price and a clear action.">"Birthday this weekend? Our chocolate truffle cake is ₹900 for 1 kg. DM us by Thursday."</li>
              <li data-bucket="off" data-why="ALL CAPS and hype words break the style rules.">"THE GREATEST CAKE EVER MADE!!! 🔥🔥🔥🔥"</li>
              <li data-bucket="off" data-why="A claim like this needs proof. The guide also bans words like 'guaranteed'.">"Guaranteed the healthiest cookies in India."</li>
              <li data-bucket="on" data-why="Local, friendly and honest about a sold-out item.">"Sorry friends, the banana loaf sold out by 10 am today. Fresh batch tomorrow at 7."</li>
              <li data-bucket="off" data-why="Too formal and cold for a warm, local brand.">"Kindly be informed that orders shall be accepted henceforth."</li>
              <li data-bucket="on" data-why="Uses the brand's words (fresh, jaggery) and one emoji.">"Fresh jaggery cookies, still warm 🍪 ₹220 a box, collect from us."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste two or three of your own posts. AI will draft a short brand voice guide and then test it with new captions.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a brand writer for small businesses.

        My business: [Sweet Crumb, a home bakery in Maharashtra]
        My customers: [families and young working people nearby]
        Here are 3 posts that sound like us:
        [1. "Rainy evening, hot chai, and our jaggery cookies. Mast combination. ₹220 a box."
        2. "Fresh from our oven at 7 am: banana walnut loaf. ₹350. Collect from us."
        3. "Sorry friends, the banana loaf sold out by 10 am today. Fresh batch tomorrow at 7."]

        Tasks:
        1. Write a one-page brand voice guide with: 3 personality words, "we are / we are not", words to use, words to avoid, style rules (emoji, punctuation, length) and language mix.
        2. Write 2 captions for [a new ragi chocolate cookie, ₹250 a box] that follow the guide.
        3. Write 1 off-brand caption for the same product, and explain which rules it breaks.

        Base the guide only on the example posts. Do not invent prices or claims.</pre>
            <ul class="ai-try-checks">
              <li>Does the guide match how your example posts really sound?</li>
              <li>Do the new captions follow the emoji and style rules?</li>
              <li>Are the price and product details exactly what you gave?</li>
              <li>Are there no invented claims like "healthiest" or "best"?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A short brand voice guide with real example posts is the best way to make AI drafts sound like you. Save it, reuse it in every prompt, and still read every draft before you post.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Post Ideas and Content Pillars</h1>
        </div>
        <p class="lc-lead">Many people stop posting because they run out of ideas. <strong>Content pillars</strong> solve this problem. In this lesson, you will choose 3 to 5 pillars and use AI to fill them with post ideas. You will also balance trend and evergreen posts, and avoid copying.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A brand goal for Backwater Trails sits on top of four content pillars: teach, behind the scenes, customer stories and offers. Each pillar has two example post ideas. At the bottom, each idea is labelled evergreen or trend and checked for copying.">
            <defs><marker id="smm5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="80" y="15" width="600" height="44" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="42">Backwater Trails: help families plan easy Kerala trips</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm5a)">
                <line x1="120" y1="61" x2="120" y2="81"/><line x1="300" y1="61" x2="300" y2="81"/><line x1="480" y1="61" x2="480" y2="81"/><line x1="640" y1="61" x2="640" y2="81"/>
              </g>
              <rect x="40" y="85" width="160" height="160" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="120" y="110" font-weight="700" fill="#93c5fd">Teach</text>
              <rect x="220" y="85" width="160" height="160" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="300" y="110" font-weight="700" fill="#c4b5fd">Behind the scenes</text>
              <rect x="400" y="85" width="160" height="160" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="480" y="110" font-weight="700" fill="#6ee7b7">Customer stories</text>
              <rect x="580" y="85" width="160" height="160" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="660" y="110" font-weight="700" fill="#f9a8d4">Offers</text>
              <g font-size="11.5">
                <text x="120" y="145">Monsoon packing list</text><text x="120" y="162" font-size="10.5" fill="#9b99b8">evergreen</text>
                <text x="120" y="197">Houseboat or resort?</text><text x="120" y="214" font-size="10.5" fill="#9b99b8">evergreen</text>
                <text x="300" y="145">Checking a houseboat</text><text x="300" y="162" font-size="10.5" fill="#9b99b8">evergreen</text>
                <text x="300" y="197">Trending audio Reel</text><text x="300" y="214" font-size="10.5" fill="#fcd34d">trend</text>
                <text x="480" y="145">A family's first trip</text><text x="480" y="162" font-size="10.5" fill="#9b99b8">evergreen</text>
                <text x="480" y="197">Review of the week</text><text x="480" y="214" font-size="10.5" fill="#9b99b8">evergreen</text>
                <text x="660" y="145">Onam weekend deal</text><text x="660" y="162" font-size="10.5" fill="#fcd34d">seasonal</text>
                <text x="660" y="197">Early booking offer</text><text x="660" y="214" font-size="10.5" fill="#fcd34d">seasonal</text>
              </g>
              <rect x="40" y="265" width="700" height="44" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="390" y="292" font-size="12.5">For every idea: does it fit a pillar? Is it your own? Is it still timely?</text>
            </g>
          </svg>
          <figcaption>Pillars sit under your brand goal. Each pillar holds many ideas, and each idea gets checked.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What content pillars are</h3>
          <p>Content pillars are the 3 to 5 main topics you post about again and again. They connect your posts to your goal and your audience. When you need an idea, you pick a pillar and think inside it.</p>
          <p>Here are pillars for a made-up Kerala travel agency, <strong>Backwater Trails</strong>. The share of posts is only an example, not a rule.</p>
          <table class="lc-table">
            <thead><tr><th>Pillar</th><th>Purpose</th><th>Example share</th></tr></thead>
            <tbody>
              <tr><td>Teach</td><td>Answer customer questions and build trust</td><td>About 40%</td></tr>
              <tr><td>Behind the scenes</td><td>Show the real people and places</td><td>About 20%</td></tr>
              <tr><td>Customer stories</td><td>Show proof from happy travellers (with their permission)</td><td>About 20%</td></tr>
              <tr><td>Offers</td><td>Turn interest into bookings</td><td>About 20%</td></tr>
            </tbody>
          </table>
          <p>Good pillars come from your audience's questions and pain points. If families often ask "Is a houseboat safe for kids?", that belongs in the Teach pillar.</p>
        </div>
        <div class="lc-card">
          <h3>Making idea lists with AI</h3>
          <p>AI is very good at making long idea lists. Give it your pillars, your audience and the season. Ask for specific ideas, not general topics.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me post ideas for a travel agency.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>We are Backwater Trails, a travel agency in Kerala. Our audience is families
        from Karnataka and Tamil Nadu planning 3 to 4 day Kerala trips.
        Our pillars: Teach, Behind the scenes, Customer stories, Offers.
        Give 5 specific post ideas for each pillar for the monsoon season.
        For each idea, give the format (Reel, carousel or photo)
        and label it "evergreen" or "trend".</code></pre>
          <p>AI will give you more ideas than you need. Pick the ones that fit your brand and that you can really make. Remove any idea that promises something you do not offer.</p>
        </div>
        <div class="lc-card">
          <h3>Trends, evergreen posts and copying</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Evergreen post</th><th>Trend post</th></tr></thead>
            <tbody>
              <tr><td>What it is</td><td>Useful for months, like a packing list</td><td>Uses a popular topic, format or sound right now</td></tr>
              <tr><td>Strength</td><td>Keeps getting saves and shares over time</td><td>Can reach new people quickly</td></tr>
              <tr><td>Risk</td><td>Can feel plain if you do not add your own view</td><td>Old in a few days; may not fit your brand</td></tr>
              <tr><td>AI's limit</td><td>Works well from your notes</td><td>AI may not know what is trending today. Check the platform yourself.</td></tr>
            </tbody>
          </table>
          <p><strong>Avoid copying.</strong> It is fine to see what topics competitors cover. It is not fine to copy their words, photos, videos or designs. AI can also produce text that is close to existing posts. Rewrite ideas in your own words, use your own photos, and use music only from the platform's own audio library or with the right permission. Check each platform's current rules on music and content use.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from pillars to a checked idea list</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">Our pillars are Teach, Behind the scenes, Customer stories and Offers. Give 3 monsoon post ideas for each pillar for Backwater Trails, Kerala.</li>
              <li data-kind="answer" data-label="AI ideas (part)">Teach: "What to pack for a Kerala monsoon trip". Behind the scenes: "A day with our houseboat crew". Offers: "Use our famous slogan 'God's Own Backwaters' in an offer post".</li>
              <li data-kind="warn" data-label="Problem">That slogan sounds very close to a well-known state tourism slogan. It is not ours. Do not use it.</li>
              <li data-kind="thought" data-label="You think">"A day with our houseboat crew" is good, but we need the crew's permission to film them.</li>
              <li data-kind="tool" data-label="You open Instagram">You look at Reels in your area to see which sounds and formats are popular this week.</li>
              <li data-kind="result" data-label="What you see">One trending sound fits a "before and after the rain" video. Another trend is a joke format that does not fit your calm voice.</li>
              <li data-kind="check" data-label="You decide">Keep the packing list (evergreen), the crew Reel (after permission) and the rain video (trend). Drop the copied slogan and the joke trend.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to suggest content pillars for a business and fill them with ideas. Then pick the ideas you would really post.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a social media content planner.

        Business: [Backwater Trails, a small travel agency in Kerala]
        Audience: [families from Karnataka and Tamil Nadu planning short Kerala trips]
        Main goal: [more trip enquiries on Instagram DMs]
        Season or event coming up: [monsoon and Onam]
        Common customer questions: [Is a houseboat safe for kids? What does a 3-day trip cost? What should we pack?]

        Tasks:
        1. Suggest 4 content pillars. For each, give one sentence on its purpose.
        2. Give 5 specific post ideas for each pillar. For each idea, give the format (Reel, carousel, photo or Story) and label it "evergreen", "seasonal" or "trend".
        3. Mark the 5 ideas you think fit the goal best, and say why.

        Rules: Do not copy slogans or content from other brands. Do not claim that any trend is popular right now; write "check if still trending" instead. Do not invent prices or awards.</pre>
            <ul class="ai-try-checks">
              <li>Do the pillars connect to the audience's real questions?</li>
              <li>Are the ideas specific (a real post you could make), not just topics?</li>
              <li>Did the AI avoid copied slogans and invented awards or prices?</li>
              <li>Are trend ideas marked "check if still trending"?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Pillars turn "What do I post today?" into "Which pillar is next?" AI can fill each pillar with many ideas in seconds. You choose the ones that fit your brand, are your own work and are still timely.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Content Calendars</h1>
        </div>
        <p class="lc-lead">A <strong>content calendar</strong> is a plan that shows what you will post, where and when. It stops the daily "what should we post today?" panic. It also helps you get ready for festivals, sales and events early. In this lesson, you will use AI to draft weekly and monthly calendars as a table. You will mix formats, add Indian festivals and events, and check that the plan is realistic for your team.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A one-week calendar for a made-up home bakery. Each day has a format, a topic and a content pillar. Monday is a tips carousel, Wednesday and Friday are Reels, Tuesday and Saturday are Stories, Thursday is a customer review post and Sunday is a rest day.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">One week of posts for a made-up home bakery</text>
              <rect x="12" y="40" width="100" height="28" rx="6" fill="#27274e"/><text x="62" y="59" font-weight="700">Mon</text>
              <rect x="118" y="40" width="100" height="28" rx="6" fill="#27274e"/><text x="168" y="59" font-weight="700">Tue</text>
              <rect x="224" y="40" width="100" height="28" rx="6" fill="#27274e"/><text x="274" y="59" font-weight="700">Wed</text>
              <rect x="330" y="40" width="100" height="28" rx="6" fill="#27274e"/><text x="380" y="59" font-weight="700">Thu</text>
              <rect x="436" y="40" width="100" height="28" rx="6" fill="#27274e"/><text x="486" y="59" font-weight="700">Fri</text>
              <rect x="542" y="40" width="100" height="28" rx="6" fill="#27274e"/><text x="592" y="59" font-weight="700">Sat</text>
              <rect x="648" y="40" width="100" height="28" rx="6" fill="#27274e"/><text x="698" y="59" font-weight="700">Sun</text>
              <rect x="12" y="76" width="100" height="126" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="118" y="76" width="100" height="126" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <rect x="224" y="76" width="100" height="126" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="330" y="76" width="100" height="126" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <rect x="436" y="76" width="100" height="126" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="542" y="76" width="100" height="126" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="648" y="76" width="100" height="126" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <g font-weight="700">
                <text x="62" y="104">Carousel</text><text x="168" y="104">Story</text><text x="274" y="104">Reel</text><text x="380" y="104">Photo post</text><text x="486" y="104">Reel</text><text x="592" y="104">Story</text><text x="698" y="104" fill="#9b99b8">No post</text>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="62" y="130">5 tips for</text><text x="62" y="146">soft bread</text>
                <text x="168" y="130">Poll: cake</text><text x="168" y="146">or cookies?</text>
                <text x="274" y="130">Our kitchen</text><text x="274" y="146">at 5 a.m.</text>
                <text x="380" y="130">A customer</text><text x="380" y="146">review</text>
                <text x="486" y="130">New: millet</text><text x="486" y="146">cookies</text>
                <text x="592" y="130">Weekend</text><text x="592" y="146">offer</text>
                <text x="698" y="130">Rest day,</text><text x="698" y="146">reply to DMs</text>
              </g>
              <g font-size="11">
                <text x="62" y="186" fill="#c4b5fd">Tips</text>
                <text x="168" y="186" fill="#6ee7b7">Community</text>
                <text x="274" y="186" fill="#93c5fd">Behind scenes</text>
                <text x="380" y="186" fill="#6ee7b7">Community</text>
                <text x="486" y="186" fill="#fcd34d">Products</text>
                <text x="592" y="186" fill="#fcd34d">Products</text>
                <text x="698" y="186" fill="#9b99b8">none</text>
              </g>
              <g font-size="11.5" text-anchor="start">
                <rect x="90" y="222" width="12" height="12" rx="2" fill="#8b5cf6"/><text x="108" y="233">Tips</text>
                <rect x="230" y="222" width="12" height="12" rx="2" fill="#3b82f6"/><text x="248" y="233">Behind the scenes</text>
                <rect x="420" y="222" width="12" height="12" rx="2" fill="#10b981"/><text x="438" y="233">Community</text>
                <rect x="580" y="222" width="12" height="12" rx="2" fill="#f59e0b"/><text x="598" y="233">Products</text>
              </g>
              <text x="380" y="260" font-size="11.5" fill="#9b99b8">Mix formats and pillars. Leave time to reply to people.</text>
            </g>
          </svg>
          <figcaption>A good week mixes formats (Reel, carousel, Story, photo) and content pillars. It also leaves time for replies.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in a content calendar</h3>
          <p>Most teams keep the calendar in a spreadsheet, such as Google Sheets or Excel. Each row is one post. Each column holds one detail.</p>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>What it means</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Date</strong></td><td>The day you plan to post</td><td>Wed 7 Oct</td></tr>
              <tr><td><strong>Platform</strong></td><td>Where the post goes</td><td>Instagram</td></tr>
              <tr><td><strong>Format</strong></td><td>The type of post: Reel, carousel (several slides people swipe), Story, photo or text post</td><td>Reel</td></tr>
              <tr><td><strong>Pillar</strong></td><td>The content pillar: one of your 3 to 5 main topic groups</td><td>Behind the scenes</td></tr>
              <tr><td><strong>Topic / hook</strong></td><td>What the post is about, and its first line</td><td>"Our kitchen at 5 a.m."</td></tr>
              <tr><td><strong>Goal</strong></td><td>What you want: awareness, engagement, leads or sales</td><td>Engagement</td></tr>
              <tr><td><strong>Owner and status</strong></td><td>Who makes it, and how far it has got</td><td>Priya · Draft</td></tr>
            </tbody>
          </table>
          <p>A <strong>weekly</strong> calendar has the full details. A <strong>monthly</strong> calendar is lighter. It shows key dates, themes and how many posts of each format you plan.</p>
        </div>
        <div class="lc-card">
          <h3>Ask AI for a table, not a list of ideas</h3>
          <p>A weak prompt gets a random list. A better prompt gives the AI your pillars, your formats, your real capacity (how many posts your team can really make) and the output shape.</p>
          <pre><code>Weak:
        Make a social media calendar for my bakery.

        Better:
        You are a social media planner for Sweet Crumb Bakery, a small home bakery in Maharashtra.
        Goal this month: more weekend orders on Instagram.
        Pillars: Tips, Behind the scenes, Community, Products.
        We can make at most 2 Reels, 2 carousels and 4 Stories a week.
        Make a 2-week calendar as a table with these columns:
        Date | Platform | Format | Pillar | Topic | Hook (first line) | Goal.
        Mix formats and pillars. Leave Sunday free.
        Mark any festival or local event with "CHECK DATE".</code></pre>
          <p>Ask for the table in a format you can paste into a spreadsheet. Then ask the AI to change single rows. For example: "Swap Thursday's post for something about our new millet cookies."</p>
        </div>
        <div class="lc-card">
          <h3>Festivals and events in India</h3>
          <p>Festivals and events bring big interest. Examples are Diwali, Holi, Eid, Onam, Pongal, Durga Puja, Christmas, Raksha Bandhan, Independence Day and Republic Day. Local events matter too. In Maharashtra, Ganesh Chaturthi is a very big festival. Cricket matches, school exams and sale seasons also change what people look at.</p>
          <ul class="lc-list">
            <li><strong>Plan early.</strong> Start festive posts two to four weeks before. Bakeries and gift shops get orders well before the day.</li>
            <li><strong>Check every date yourself.</strong> Many festival dates change every year, and AI often gets them wrong. Use a current calendar.</li>
            <li><strong>Only join festivals that fit your brand.</strong> A forced post feels fake. Be respectful with religious festivals and national symbols.</li>
            <li><strong>Keep your normal pillars running.</strong> A calendar full of festival greetings gets boring.</li>
          </ul>
          <p>Before you use the plan, check: Are the dates right? Can your team really make this much content? Are the offers and prices approved? Is there stock for the products you promote?</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a monthly calendar</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Choose the month's goal and how many posts your team can really make</li>
              <li data-order="2">List key dates: festivals, local events, sales and product launches</li>
              <li data-order="3">Decide your pillars and your mix of formats</li>
              <li data-order="4">Ask AI to draft the calendar as a table with fixed columns</li>
              <li data-order="5">Check dates, facts, offers and workload, and edit the rows</li>
              <li data-order="6">Copy it into your spreadsheet and review it every week</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-month calendar for your business. Then check the dates and the workload before you use it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a social media planner for a small business in India.
        Business: [a home bakery in Maharashtra]
        Main platform: [Instagram], second platform: [Facebook]
        Goal for the month: [more weekend cake orders]
        Content pillars: [Tips, Behind the scenes, Community, Products]
        Team capacity per week: [2 Reels, 2 carousels, 3 Stories]
        Month: [November]

        Make a content calendar for the month as a table with these columns:
        Week | Day | Platform | Format | Pillar | Topic | Hook (first line) | Goal.

        Rules:
        - Never plan more posts than the team capacity.
        - Mix formats and pillars across each week.
        - Add Indian festivals or local events that suit this business. Write "CHECK DATE" next to each one.
        - Start festival posts two to four weeks before the day.
        - Leave one day a week with no post.
        After the table, list 3 things I should check before I use this plan.</pre>
            <ul class="ai-try-checks">
              <li>Festival dates: check each one on a current calendar</li>
              <li>The number of posts per week matches your real capacity</li>
              <li>Formats and pillars are mixed, not the same every day</li>
              <li>Offers and products in the plan are real and approved</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A calendar is only useful if your team can follow it. Let AI draft the table fast. Then you fix the dates, the offers and the workload.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Captions and Hooks</h1>
        </div>
        <p class="lc-lead">People scroll fast. Your first line decides if they stop or move on. This first line is called the <strong>hook</strong>. The <strong>caption</strong> is the text that goes with your post. In this lesson, you will use AI to write many hooks quickly. You will also shape captions for each platform, add a clear call to action and use hashtags sensibly.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="The four parts of a caption. The hook is the first line that stops the scroll. The body gives the value. The call to action asks for one next step. A few relevant hashtags come last.">
            <defs><marker id="smm7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="30" y="16" width="350" height="264" rx="14" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="205" y="38" font-size="11" fill="#9b99b8">Caption for a made-up bakery post</text>
              <rect x="46" y="50" width="318" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="205" y="77" font-weight="700">Your bread goes hard by evening?</text>
              <rect x="46" y="104" width="318" height="76" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="205" y="130">Here is why it happens,</text>
              <text x="205" y="150">and 3 easy fixes you can</text>
              <text x="205" y="170">try at home tonight.</text>
              <rect x="46" y="190" width="318" height="36" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="205" y="213">Save this for your next bake.</text>
              <rect x="46" y="236" width="318" height="32" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="205" y="257" fill="#fcd34d">#FreshBakes #HomeBaking</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm7a)">
                <line x1="366" y1="72" x2="432" y2="72"/>
                <line x1="366" y1="142" x2="432" y2="142"/>
                <line x1="366" y1="208" x2="432" y2="208"/>
                <line x1="366" y1="252" x2="432" y2="252"/>
              </g>
              <g text-anchor="start">
                <text x="440" y="68" font-weight="700" fill="#f9a8d4">Hook: stops the scroll</text>
                <text x="440" y="86" font-size="11" fill="#9b99b8">Often the only line people see first</text>
                <text x="440" y="138" font-weight="700" fill="#c4b5fd">Body: gives the value</text>
                <text x="440" y="156" font-size="11" fill="#9b99b8">Short lines, one idea each</text>
                <text x="440" y="204" font-weight="700" fill="#6ee7b7">CTA: one clear next step</text>
                <text x="440" y="222" font-size="11" fill="#9b99b8">Save, comment, visit or send a DM</text>
                <text x="440" y="250" font-weight="700" fill="#fcd34d">Hashtags: few, relevant</text>
                <text x="440" y="268" font-size="11" fill="#9b99b8">Describe the topic, do not spam</text>
              </g>
            </g>
          </svg>
          <figcaption>Hook, body, call to action and hashtags. Each part has one job.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Hooks: the first line</h3>
          <p>On most platforms, people see only the first line or two before a "more" link. So the hook must give a reason to keep reading. AI is good at hooks because it can write 20 options in seconds. You then choose the best two or three.</p>
          <table class="lc-table">
            <thead><tr><th>Hook type</th><th>Example (made-up Kerala travel agency)</th></tr></thead>
            <tbody>
              <tr><td><strong>Question</strong></td><td>"Going to the hills in the monsoon? Read this first."</td></tr>
              <tr><td><strong>Problem</strong></td><td>"Most people pack too much for a hill trip."</td></tr>
              <tr><td><strong>Number or list</strong></td><td>"3 houseboat mistakes that cost you a good trip."</td></tr>
              <tr><td><strong>Myth</strong></td><td>"No, Kerala is not only for honeymoons."</td></tr>
              <tr><td><strong>Story</strong></td><td>"Our guest missed the last ferry. Here is what we did."</td></tr>
            </tbody>
          </table>
          <p>A good hook is clear and true. The post must deliver what the hook promises. A hook that tricks people is called <strong>clickbait</strong>. It may get a click, but it loses trust.</p>
        </div>
        <div class="lc-card">
          <h3>One idea, a caption for each platform</h3>
          <p>Each platform has its own habits. Features and limits change often, so check each platform's current help pages.</p>
          <table class="lc-table">
            <thead><tr><th>Platform</th><th>Caption style that usually works</th></tr></thead>
            <tbody>
              <tr><td><strong>Instagram</strong></td><td>Strong first line, short lines, emojis in moderation. For most accounts, links in captions cannot be clicked, so people say "link in bio". Instagram has tested clickable caption links for some accounts, so check the current help pages.</td></tr>
              <tr><td><strong>Facebook</strong></td><td>Friendly and local. A question at the end often starts a conversation.</td></tr>
              <tr><td><strong>LinkedIn</strong></td><td>Professional and useful. Share a lesson, a result or an opinion. Fewer emojis.</td></tr>
              <tr><td><strong>YouTube Shorts</strong></td><td>A short, searchable title. The video itself does most of the work.</td></tr>
              <tr><td><strong>X</strong></td><td>Very short and direct. One point per post.</td></tr>
            </tbody>
          </table>
          <pre><code>Weak:
        Write a caption for my bread post.

        Better:
        You write captions for Sweet Crumb Bakery, a friendly home bakery in Maharashtra.
        Post: a carousel with 3 tips to keep bread soft.
        Write 10 hooks of different types (question, problem, number, myth).
        Then write one Instagram caption and one Facebook caption.
        Each caption: hook, 3 to 5 short lines, one call to action.
        Add 3 to 5 relevant hashtags for Instagram only.
        Do not invent facts, prices or health claims.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Calls to action and hashtags</h3>
          <p>A <strong>CTA</strong> (call to action) tells people the one thing to do next. Match it to your goal. For engagement, ask people to save or comment. For sales, ask them to order or send a DM (direct message). One CTA works better than three.</p>
          <p>A <strong>hashtag</strong> is a word with # in front, such as #FreshBakes. It groups posts on the same topic. Nobody knows a perfect number of hashtags, and the advice keeps changing. Some platforms also set a limit. For example, Instagram now allows only a small number of hashtags on each post, so check its current help pages. Use a few that clearly describe your post and your place. Do not add popular tags that have nothing to do with your post.</p>
          <p>You must still check: Is every fact true? Does the tone match your brand voice? Does the hook make a promise the post keeps? Did the AI add a claim like "best in town" that you cannot prove?</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sort the hooks</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">These hooks are for a made-up Rajasthan handicrafts store. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="strong" data-label="Strong hook"></div>
              <div data-sorter-target="bucket" data-bucket="weak" data-label="Weak hook"></div>
              <div data-sorter-target="bucket" data-bucket="mislead" data-label="Misleading: do not use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="strong" data-why="It names a real problem and promises a clear, useful answer.">"Is your block print real or machine-made? Check these 3 signs."</li>
              <li data-bucket="strong" data-why="A short story hook makes people want to know what happens next.">"This bedsheet took our artisan 9 days. Here is why."</li>
              <li data-bucket="weak" data-why="It gives no reason to stop scrolling. It could be any shop.">"Check out our new products!"</li>
              <li data-bucket="weak" data-why="A plain greeting says nothing about the post.">"Hello everyone, hope you are well."</li>
              <li data-bucket="mislead" data-why="This is a claim you cannot prove. It may also break advertising rules.">"The only 100% authentic crafts shop in India!"</li>
              <li data-bucket="mislead" data-why="If there is no real sale ending tonight, this fake urgency breaks trust.">"Last chance! Everything free tonight only!"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for hooks and platform captions for one of your posts. Then pick the best hook and check every claim.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a social media copywriter for a small business.
        Business: [a handicrafts store in Rajasthan that sells hand block-printed bedsheets]
        Brand voice: [warm, proud of our artisans, simple English]
        The post: [a carousel showing how one bedsheet is printed by hand]
        Goal: [more saves and DMs]

        1. Write 10 hooks (first lines). Use at least 4 types: question, problem, number, story, myth. Keep each under 12 words.
        2. Mark your top 2 hooks and say why in one line each.
        3. Write one caption for Instagram and one for LinkedIn using your top hook.
           Each caption: hook, 3 to 5 short lines, one call to action.
        4. For Instagram only, suggest 3 to 5 relevant hashtags.

        Rules: no clickbait, no fake urgency, no claims like "best" or "only".
        If you need a fact you do not have, write [ADD FACT] instead of guessing.</pre>
            <ul class="ai-try-checks">
              <li>Each hook is true, and the post delivers what it promises</li>
              <li>No invented facts, prices or claims like "best" or "only"</li>
              <li>The LinkedIn caption sounds different from the Instagram one</li>
              <li>Each caption has only one call to action</li>
              <li>Hashtags are few and match the post</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI for volume: many hooks, many versions. Use your judgement for the choice: the hook must be true, on-brand and kept by the post.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Reels and Shorts Scripts</h1>
        </div>
        <p class="lc-lead">Reels (on Instagram and Facebook) and Shorts (on YouTube) are short vertical videos. They are one of the main ways new people find small businesses. A short video still needs a plan. In this lesson, you will use AI to write a 30-second script with a hook, value and a call to action. You will also make a shot list, on-screen text and captions, and check that you can really film it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A 30-second video script in three parts. The hook runs from 0 to 3 seconds, the value from 3 to 25 seconds and the call to action from 25 to 30 seconds. Each part lists what to say, what to show and the on-screen text, for a made-up Kerala travel agency.">
            <defs><marker id="smm8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="180" height="40" rx="8" fill="#27274e" stroke="#ec4899"/><text x="110" y="45" font-weight="700" fill="#f9a8d4">HOOK · 0 to 3 s</text>
              <rect x="240" y="20" width="300" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="390" y="45" font-weight="700" fill="#c4b5fd">VALUE · 3 to 25 s</text>
              <rect x="580" y="20" width="160" height="40" rx="8" fill="#27274e" stroke="#10b981"/><text x="660" y="45" font-weight="700" fill="#6ee7b7">CTA · 25 to 30 s</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm8a)">
                <line x1="202" y1="40" x2="236" y2="40"/>
                <line x1="542" y1="40" x2="576" y2="40"/>
              </g>
              <rect x="20" y="72" width="180" height="140" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="240" y="72" width="300" height="140" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="580" y="72" width="160" height="140" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <g font-size="11" fill="#9b99b8">
                <text x="110" y="96">SAY</text><text x="390" y="96">SAY</text><text x="660" y="96">SAY</text>
                <text x="110" y="138">SHOW</text><text x="390" y="138">SHOW</text><text x="660" y="138">SHOW</text>
                <text x="110" y="180">ON-SCREEN TEXT</text><text x="390" y="180">ON-SCREEN TEXT</text><text x="660" y="180">ON-SCREEN TEXT</text>
              </g>
              <text x="110" y="114">"The hills in one bag?"</text>
              <text x="110" y="156">Open bag on a bed</text>
              <text x="110" y="198" fill="#fcd34d">1 bag. 4 days.</text>
              <text x="390" y="114">3 tips, one per shot</text>
              <text x="390" y="156">Rain jacket, shoes, medicine kit</text>
              <text x="390" y="198" fill="#fcd34d">Tip 1 · Tip 2 · Tip 3</text>
              <text x="660" y="114">"DM us for the plan"</text>
              <text x="660" y="156">Bag zipped shut</text>
              <text x="660" y="198" fill="#fcd34d">DM us "HILLS"</text>
              <text x="380" y="244" font-size="11.5" fill="#9b99b8">Add captions too. Many people watch with the sound off.</text>
            </g>
          </svg>
          <figcaption>A 30-second script: grab attention fast, give real value, then ask for one action.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The 30-second structure</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Time</th><th>Its job</th><th>Example (made-up Kerala travel agency)</th></tr></thead>
            <tbody>
              <tr><td><strong>Hook</strong></td><td>0 to 3 seconds</td><td>Make people stop scrolling. Show movement or a clear question right away.</td><td>"Going to the hills with just one bag?"</td></tr>
              <tr><td><strong>Value</strong></td><td>3 to 25 seconds</td><td>Give the tips, the story or the demo. One point per shot.</td><td>Rain jacket, grip shoes, a small medicine kit</td></tr>
              <tr><td><strong>CTA</strong></td><td>25 to 30 seconds</td><td>Ask for one action.</td><td>"DM us HILLS for our 4-day plan."</td></tr>
            </tbody>
          </table>
          <p>Spoken words go fast. A 30-second video only fits about 60 to 80 spoken words. AI often writes too much. Always read the script aloud with a timer.</p>
        </div>
        <div class="lc-card">
          <h3>Shot list, on-screen text and captions</h3>
          <p>A <strong>shot list</strong> is a list of every clip you need to film, in order. It saves time on the day you film. <strong>On-screen text</strong> is the short text you place on the video. <strong>Captions</strong> (subtitles) show the spoken words as text. Many editing apps can make captions for you automatically.</p>
          <pre><code>Time    | Say                            | Show (shot)                | On-screen text
        0-3 s   | "The hills in one bag?"        | Close-up: open bag on bed  | 1 bag. 4 days.
        3-10 s  | "Tip 1: a light rain jacket."  | Hand folds a thin jacket   | Tip 1: rain jacket
        10-17 s | "Tip 2: shoes with grip."      | Shoes on a wet path        | Tip 2: grip shoes
        17-25 s | "Tip 3: a small medicine kit." | Kit goes into side pocket  | Tip 3: medicine kit
        25-30 s | "DM us HILLS for the plan!"    | Bag zipped, thumbs up      | DM us "HILLS"</code></pre>
          <p>Check the automatic captions before you post. They often misspell names of places, dishes and people, such as "Vembanad" or "appam".</p>
        </div>
        <div class="lc-card">
          <h3>Prompting for a script you can film</h3>
          <pre><code>Weak:
        Write a Reel about Kerala.

        Better:
        You write short video scripts for Backwater Trails, a small travel agency in Kerala.
        Topic: 3 packing tips for a monsoon trip to the Kerala hills.
        Length: 30 seconds, at most 75 spoken words.
        Filming: one person with a phone, at home, no drone, no actors.
        Output a table: Time | Say | Show (shot) | On-screen text.
        Then give a caption for the post and one call to action.</code></pre>
          <p>The filming line matters. Without it, AI may suggest drone shots or crowds you cannot film. You must also check:</p>
          <ul class="lc-list">
            <li><strong>Claims.</strong> Remove anything you cannot prove, like "cheapest in Kerala".</li>
            <li><strong>Music.</strong> Use audio from the platform's own library, or music you have rights to. Business accounts may have fewer music choices. Check the platform's rules.</li>
            <li><strong>People.</strong> Get permission before you film customers or staff.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a script session with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">Write a 30-second Reel script for Backwater Trails: 3 packing tips for the Kerala hills in the monsoon. Table: Time, Say, Show, On-screen text.</li>
              <li data-kind="answer" data-label="AI draft">The AI gives a neat table with a hook, 3 tips and a CTA. The hook says: "Kerala's cheapest hill packages are here!"</li>
              <li data-kind="warn" data-label="Catch the problem">You cannot prove "cheapest", and the video is about packing, not prices. The hook does not match the post.</li>
              <li data-kind="tool" data-label="Timer">You read the script aloud with the stopwatch on your phone.</li>
              <li data-kind="result" data-label="Time taken">It takes 48 seconds. The script is far too long for 30 seconds.</li>
              <li data-kind="user" data-label="Your follow-up">Cut it to 70 spoken words. Change the hook to a question about packing. Remove all price claims.</li>
              <li data-kind="check" data-label="Final check">The new script takes 29 seconds. You check the tips are sensible, every shot is easy to film, and there is one CTA.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a 30-second script, shot list and caption for your business. Then read it aloud with a timer.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You write short vertical video scripts (Instagram Reels and YouTube Shorts) for a small business.
        Business: [a travel agency in Kerala]
        Topic: [3 packing tips for a monsoon trip to the Kerala hills]
        Audience: [young couples and families from Indian cities]
        Filming: [one person with a phone, no drone, no actors]
        Goal: [more DMs asking for trip plans]

        Write a 30-second script with at most 75 spoken words:
        - Hook (0 to 3 seconds): a question or a surprising line.
        - Value (3 to 25 seconds): one tip per shot.
        - Call to action (25 to 30 seconds): one clear action.

        Output:
        1. A table: Time | Say | Show (shot) | On-screen text (max 6 words).
        2. A shot list I can film in 20 minutes.
        3. A post caption with one call to action.
        4. The spoken word count.
        Do not invent prices, offers or claims like "best" or "cheapest".</pre>
            <ul class="ai-try-checks">
              <li>Read it aloud: does it fit in about 30 seconds?</li>
              <li>The hook appears in the first 3 seconds</li>
              <li>Every shot is possible with your phone and people</li>
              <li>No unproven claims, prices or offers</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A short video is short on words, not short on planning. Let AI draft the script and shot list. Then time it, film-test it and remove any claim you cannot prove.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Images and Carousels with AI</h1>
        </div>
        <p class="lc-lead">A <strong>carousel</strong> is a post with several images or slides that people swipe through. Carousels are good for tips, steps and stories, and people often save them. In this lesson, you will use AI to outline a carousel and write a design brief for a design tool such as Canva. You will also learn when AI images are fine, when to label them, and how to write alt text.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Top row: a six-slide carousel for a made-up Rajasthan crafts store, from a cover hook through signs 1 to 4 to a call to action. Bottom row: the workflow from an AI outline to a design brief, a design tool, and a human check with alt text.">
            <defs><marker id="smm9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="100" height="100" rx="8" fill="#27274e" stroke="#ec4899"/>
              <rect x="144" y="20" width="100" height="100" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="268" y="20" width="100" height="100" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="392" y="20" width="100" height="100" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="516" y="20" width="100" height="100" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="640" y="20" width="100" height="100" rx="8" fill="#27274e" stroke="#10b981"/>
              <g font-size="10.5" fill="#9b99b8">
                <text x="70" y="42">Slide 1</text><text x="194" y="42">Slide 2</text><text x="318" y="42">Slide 3</text><text x="442" y="42">Slide 4</text><text x="566" y="42">Slide 5</text><text x="690" y="42">Slide 6</text>
              </g>
              <g font-size="11.5">
                <text x="70" y="72" font-weight="700">Real print?</text><text x="70" y="90" font-weight="700">4 signs</text>
                <text x="194" y="72">Sign 1</text><text x="194" y="90">Small gaps</text>
                <text x="318" y="72">Sign 2</text><text x="318" y="90">Colour bleed</text>
                <text x="442" y="72">Sign 3</text><text x="442" y="90">Back side</text>
                <text x="566" y="72">Sign 4</text><text x="566" y="90">Uneven repeat</text>
                <text x="690" y="72" font-weight="700">Save + visit</text><text x="690" y="90" font-weight="700">our shop</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm9a)">
                <line x1="121" y1="70" x2="141" y2="70"/>
                <line x1="245" y1="70" x2="265" y2="70"/>
                <line x1="369" y1="70" x2="389" y2="70"/>
                <line x1="493" y1="70" x2="513" y2="70"/>
                <line x1="617" y1="70" x2="637" y2="70"/>
              </g>
              <text x="380" y="146" font-size="11.5" fill="#9b99b8">One idea per slide · hook first · call to action last</text>
              <rect x="20" y="172" width="160" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="100" y="196" font-weight="700">1 AI outline</text><text x="100" y="214" font-size="10.5" fill="#9b99b8">text for each slide</text>
              <rect x="206" y="172" width="160" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="286" y="196" font-weight="700">2 Design brief</text><text x="286" y="214" font-size="10.5" fill="#9b99b8">size, colours, images</text>
              <rect x="392" y="172" width="160" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="472" y="196" font-weight="700">3 Design tool</text><text x="472" y="214" font-size="10.5" fill="#9b99b8">Canva-style template</text>
              <rect x="578" y="172" width="160" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="658" y="196" font-weight="700">4 Human check</text><text x="658" y="214" font-size="10.5" fill="#9b99b8">facts, label, alt text</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm9a)">
                <line x1="181" y1="200" x2="203" y2="200"/>
                <line x1="367" y1="200" x2="389" y2="200"/>
                <line x1="553" y1="200" x2="575" y2="200"/>
              </g>
              <text x="380" y="256" font-size="11.5" fill="#9b99b8">AI writes and suggests. You design, check and publish.</text>
            </g>
          </svg>
          <figcaption>A carousel outline turns into a design brief. The design tool makes the slides, and a person checks them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Outline the carousel first</h3>
          <p>Write the words before you design anything. AI is very good at this part. Follow these simple rules:</p>
          <ul class="lc-list">
            <li><strong>Slide 1 is the hook.</strong> Big text, few words. It must make people swipe.</li>
            <li><strong>One idea per slide.</strong> Keep each slide to one short heading and one or two lines.</li>
            <li><strong>The last slide is the call to action.</strong> For example: save, share, or visit the shop.</li>
          </ul>
          <pre><code>Weak:
        Make a carousel about block printing.

        Better:
        You plan Instagram carousels for Rang Mahal Crafts, a small handicrafts store in Rajasthan.
        Topic: how to tell real hand block print from machine print.
        Make 6 slides. Slide 1 is a hook. Slide 6 is a call to action.
        For each slide give: heading (max 6 words), body (max 20 words), image idea.
        Use only common, well-known signs. Mark anything unsure with [CHECK].</code></pre>
          <p>Check the facts with your own artisans or suppliers. AI can sound sure and still be wrong about crafts, materials and history.</p>
        </div>
        <div class="lc-card">
          <h3>Write a design brief</h3>
          <p>A <strong>design brief</strong> is a short set of instructions for whoever makes the design. That may be you, a designer, or the AI features inside a design tool. Many design tools, such as Canva, now have AI features that suggest layouts or make images. Features change often, so check the tool's current help pages.</p>
          <pre><code>DESIGN BRIEF: "Real block print? 4 signs"
        Format:   carousel, 6 slides (check the platform's current recommended size)
        Colours:  indigo, off-white, rust red (our brand colours)
        Fonts:    one bold font for headings, one simple font for body text
        Logo:     small, bottom corner, every slide
        Images:   our own photos of fabric close-ups (slides 2 to 5)
        Text:     large enough to read on a phone; body text max 20 words
        Slide 6:  "Visit our shop to see more."</code></pre>
        </div>
        <div class="lc-card">
          <h3>AI images: when to use them and how to label them</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>Backgrounds, patterns, icons, simple drawings</td><td>AI images are usually fine here.</td></tr>
              <tr><td>A realistic scene that did not happen</td><td>You may use it, but label it as AI-made. Some platforms ask you to add a label or add one themselves.</td></tr>
              <tr><td>Your real product, your shop, real customers</td><td>Use real photos. An AI picture of a product can mislead buyers.</td></tr>
              <tr><td>Real people, famous characters, other brands' logos</td><td>Do not make them with AI. This can break laws and platform rules.</td></tr>
            </tbody>
          </table>
          <p>Platform rules and Indian rules about AI-made content are changing. In 2026, India changed its IT Rules so that platforms must ask users to declare AI-made content and must label it clearly. Check the current rules for each platform before you post. Also look closely at every AI image. Hands, text and small details are often wrong.</p>
        </div>
        <div class="lc-card">
          <h3>Alt text</h3>
          <p><strong>Alt text</strong> is a short written description of an image. Screen readers read it aloud for people who are blind or have low vision. Most big platforms let you add alt text to images. AI can draft it quickly, but you must check that it describes <em>your</em> image correctly.</p>
          <pre><code>Weak alt text:  "image of fabric"
        Better:         "Close-up of an indigo cotton sheet with a hand-printed flower
                        pattern. Small gaps show where the wooden block was pressed."</code></pre>
          <p>Describe what is in the picture and why it matters. Do not stuff it with hashtags or sales words.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: AI image or real photo?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">For each image, decide what is the right choice.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="AI image is fine"></div>
              <div data-sorter-target="bucket" data-bucket="label" data-label="AI is OK, but label it"></div>
              <div data-sorter-target="bucket" data-bucket="real" data-label="Use a real photo"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="A plain decorative background does not show anything real, so it cannot mislead.">A soft pattern behind the text on a tips slide</li>
              <li data-bucket="ok" data-why="Simple icons are decoration. Nobody thinks they are photos.">Small icons for "Tip 1", "Tip 2" and "Tip 3"</li>
              <li data-bucket="label" data-why="It looks like a real photo of a real moment, so tell people it is AI-made.">A realistic picture of a family on a Kerala houseboat for a mood post</li>
              <li data-bucket="real" data-why="Buyers must see the real product. An AI version may look different from what they get.">The saree that a customer will actually buy</li>
              <li data-bucket="real" data-why="A fake customer photo is a fake review. Use a real photo, with the customer's permission.">A photo for a customer review post</li>
              <li data-bucket="real" data-why="Showing a place that looks different from the real one misleads visitors.">A picture of your own shop</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a carousel, a design brief and alt text in one go. Then check the facts and adjust the brief to your brand.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a social media designer's assistant.
        Business: [a handicrafts store in Rajasthan]
        Brand colours: [indigo, off-white, rust red]
        Carousel topic: [how to tell real hand block print from machine print]
        Platform: [Instagram]

        1. Outline a 6-slide carousel. Slide 1 is a hook. Slide 6 is one call to action.
           For each slide: heading (max 6 words), body (max 20 words), image idea.
           For each image idea, say "real photo" or "AI image is fine".
        2. Write a short design brief for a Canva-style tool: format, colours, fonts, logo, text size.
           Say that I must check the current recommended size on the platform.
        3. Write alt text (max 25 words) for slides 1 and 2.
        4. List any fact in the slides that I should check with an expert. Mark them [CHECK].
        Do not suggest AI images of real products, real people or other brands' logos.</pre>
            <ul class="ai-try-checks">
              <li>Facts marked [CHECK] are confirmed with someone who knows the craft</li>
              <li>Real products and places use real photos</li>
              <li>Each slide has one idea and little text</li>
              <li>Alt text describes the image plainly, with no hashtags</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI write the outline, the brief and the alt text. Use real photos for real things. Label realistic AI images, and check every slide before you post.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Repurposing One Idea Everywhere</h1>
        </div>
        <p class="lc-lead"><strong>Repurposing</strong> means turning one piece of content into many pieces for different platforms. One blog post or video can become a carousel, a Reel, a LinkedIn post and more. This saves a lot of time. In this lesson, you will use AI to adapt one idea to each platform. You will change the length, tone and format, and check that no facts get lost or changed.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="One blog post from a made-up Kerala travel agency goes to an AI step that adapts length, tone and format. It becomes five pieces: an Instagram carousel, a Reel or Short script, a LinkedIn post, an X post and a Facebook post. A person checks the facts.">
            <defs><marker id="smm10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="96" width="200" height="88" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="120" y="122" font-size="11" fill="#9b99b8">SOURCE</text>
              <text x="120" y="144" font-weight="700">One blog post</text>
              <text x="120" y="164">"7 Days in Kerala"</text>
              <line x1="222" y1="140" x2="262" y2="140" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm10a)"/>
              <rect x="266" y="100" width="150" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="341" y="128" font-weight="700" fill="#c4b5fd">AI adapts</text>
              <text x="341" y="148" font-size="11">length, tone</text>
              <text x="341" y="164" font-size="11">and format</text>
              <text x="341" y="208" font-size="11" fill="#6ee7b7">You check facts</text>
              <text x="341" y="224" font-size="11" fill="#6ee7b7">in every version</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm10a)" fill="none">
                <path d="M418,130 L466,40"/>
                <path d="M418,136 L466,92"/>
                <path d="M418,140 L466,144"/>
                <path d="M418,146 L466,196"/>
                <path d="M418,152 L466,248"/>
              </g>
              <rect x="470" y="20" width="270" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="605" y="45">Instagram carousel · 6 slides</text>
              <rect x="470" y="72" width="270" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="605" y="97">Reel or Short · 30 s script</text>
              <rect x="470" y="124" width="270" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="605" y="149">LinkedIn · a business lesson</text>
              <rect x="470" y="176" width="270" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="605" y="201">X · one short, sharp point</text>
              <rect x="470" y="228" width="270" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="605" y="253">Facebook · post + a question</text>
            </g>
          </svg>
          <figcaption>One strong idea, many versions. Each version fits its platform, and each one is checked.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Adapt, do not copy and paste</h3>
          <p>Posting the same text everywhere rarely works. People on LinkedIn expect a different style from people on Instagram. So you keep the <em>idea</em> and the <em>facts</em>, but change everything else.</p>
          <table class="lc-table">
            <thead><tr><th>Platform</th><th>Length</th><th>Tone</th><th>From "7 Days in Kerala"</th></tr></thead>
            <tbody>
              <tr><td><strong>Instagram carousel</strong></td><td>6 short slides</td><td>Visual, friendly</td><td>One slide for each stop on the trip</td></tr>
              <tr><td><strong>Reel / Short</strong></td><td>About 30 seconds</td><td>Quick, lively</td><td>"7 days in Kerala in 30 seconds"</td></tr>
              <tr><td><strong>LinkedIn</strong></td><td>A few short paragraphs</td><td>Professional</td><td>What we learned planning trips for working families</td></tr>
              <tr><td><strong>X</strong></td><td>One or two sentences</td><td>Direct</td><td>The single most useful tip</td></tr>
              <tr><td><strong>Facebook</strong></td><td>Short post</td><td>Warm, local</td><td>A tip plus "Where would you go first?"</td></tr>
            </tbody>
          </table>
          <p>You do not need every platform. Choose the two or three where your customers really spend time.</p>
        </div>
        <div class="lc-card">
          <h3>A prompt that keeps the facts safe</h3>
          <p>The biggest risk in repurposing is that AI changes facts. It may round a price, change the number of days, or add a place the blog never mentioned. So give it the source text and a clear rule.</p>
          <pre><code>Weak:
        Turn my blog into social posts.

        Better:
        You repurpose content for Backwater Trails, a small travel agency in Kerala.
        Below is our blog post "7 Days in Kerala".
        First, list the key facts (places, days, prices, dates) as bullet points.
        Then write: a 6-slide Instagram carousel outline, a 30-second Reel script,
        a LinkedIn post (max 150 words) and a Facebook post with a question.
        Use ONLY facts from the list. Do not add new places, prices or claims.
        End each version with one call to action that fits the platform.

        [paste the blog post here]</code></pre>
          <p>The "list the key facts first" step is useful. You can compare each version against that list.</p>
        </div>
        <div class="lc-card">
          <h3>What you must check</h3>
          <ul class="lc-list">
            <li><strong>Facts carried over correctly.</strong> Days, prices, dates and place names match the source.</li>
            <li><strong>Still current.</strong> An old blog may have old prices or offers. Update them before you post.</li>
            <li><strong>Right tone.</strong> The LinkedIn version should not read like an Instagram caption.</li>
            <li><strong>Spread out in time.</strong> Post the versions over days or weeks, not all in one hour.</li>
            <li><strong>Link back.</strong> Where it makes sense, point people to the full blog or video.</li>
          </ul>
          <p>Only repurpose content that you own or have permission to use. Rewriting someone else's blog with AI is still copying.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a repurposing workflow</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of repurposing one blog post in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Pick one strong piece that people already liked</li>
              <li data-order="2">Ask AI to list its key facts and main points</li>
              <li data-order="3">Choose the platforms and a format for each one</li>
              <li data-order="4">Ask AI for each version, using only the listed facts</li>
              <li data-order="5">Check facts, tone and prices in every version</li>
              <li data-order="6">Schedule the versions over several days and link back to the source</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste one of your own blog posts or video scripts into the prompt. If you leave it empty, the AI will make up a short example to show the method.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You repurpose content for a small business's social media.
        Business: [a travel agency in Kerala]
        Brand voice: [friendly, helpful, simple English]
        Platforms: [Instagram, LinkedIn, Facebook]

        Source content:
        [Paste your blog post or video script here. If this is empty, write a short 150-word sample blog called "5 Days in Kerala" and use it.]

        Steps:
        1. List the key facts from the source (places, days, prices, dates) as bullet points.
        2. Write an Instagram carousel outline: 6 slides, a heading and one line each.
        3. Write a LinkedIn post (max 150 words) with a professional lesson.
        4. Write a Facebook post (max 80 words) that ends with a question.
        5. Suggest a posting order over one week.

        Rules: use only facts from step 1. Do not add new places, prices or claims.
        One call to action per version. Show which fact each version uses.</pre>
            <ul class="ai-try-checks">
              <li>Every fact in each version appears in the fact list</li>
              <li>No new prices, places or claims were added</li>
              <li>Each version has a different length and tone</li>
              <li>Prices and offers from an old source are still current</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Repurposing multiplies your work, and it multiplies your mistakes too. Make AI list the facts first, adapt from that list, and check every version against it.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Comments, DMs and Community</h1>
        </div>
        <p class="lc-lead">People judge a brand by how it replies. A kind, fast reply can turn a complaint into a loyal customer. A careless reply can go viral for the wrong reason. In this lesson, you will learn to sort comments and DMs (direct messages: private messages sent to your account). You will use AI to draft replies and build a list of saved answers. You will also learn when a person must reply, not AI.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A new comment or DM is sorted into four groups: simple question, praise, complaint, and risky or sensitive. Each group has a different action, from AI drafts that you approve to a person-only reply.">
            <defs><marker id="smm11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="120" width="150" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="95" y="146" font-weight="700">New comment</text>
              <text x="95" y="166" font-weight="700">or DM</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#smm11a)">
                <line x1="172" y1="140" x2="246" y2="47"/>
                <line x1="172" y1="146" x2="246" y2="116"/>
                <line x1="172" y1="154" x2="246" y2="184"/>
                <line x1="172" y1="160" x2="246" y2="253"/>
                <line x1="452" y1="45" x2="516" y2="45"/>
                <line x1="452" y1="115" x2="516" y2="115"/>
                <line x1="452" y1="185" x2="516" y2="185"/>
                <line x1="452" y1="255" x2="516" y2="255"/>
              </g>
              <rect x="250" y="20" width="200" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="350" y="41" font-weight="700">Simple question</text>
              <text x="350" y="59" font-size="11" fill="#9b99b8">price, timing, stock</text>
              <rect x="250" y="90" width="200" height="50" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="350" y="111" font-weight="700">Praise or thanks</text>
              <text x="350" y="129" font-size="11" fill="#9b99b8">a happy customer</text>
              <rect x="250" y="160" width="200" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="350" y="181" font-weight="700">Complaint</text>
              <text x="350" y="199" font-size="11" fill="#9b99b8">late order, bad item</text>
              <rect x="250" y="230" width="200" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="350" y="251" font-weight="700">Risky or sensitive</text>
              <text x="350" y="269" font-size="11" fill="#9b99b8">health, legal, abuse</text>
              <rect x="520" y="20" width="225" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="632" y="41">AI drafts, you approve</text>
              <text x="632" y="59" font-size="11" fill="#9b99b8">use your saved FAQ answers</text>
              <rect x="520" y="90" width="225" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="632" y="111">Short thanks, your words</text>
              <text x="632" y="129" font-size="11" fill="#9b99b8">not the same reply to all</text>
              <rect x="520" y="160" width="225" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="632" y="181">You reply, AI helps draft</text>
              <text x="632" y="199" font-size="11" fill="#9b99b8">say sorry, move details to DM</text>
              <rect x="520" y="230" width="225" height="50" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="632" y="251">A person only</text>
              <text x="632" y="269" font-size="11" fill="#9b99b8">manager, support or legal</text>
            </g>
          </svg>
          <figcaption>Sort first, then reply. The more serious the message, the more a person must be in charge.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI does well, and what you must do</h3>
          <p>Community management means looking after the people who follow and talk to your brand. It includes replies, DMs, reviews and group chats. AI saves time here, but it does not know your orders, your stock or your customer.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>AI can help</th><th>You must</th></tr></thead>
            <tbody>
              <tr><td>Common questions</td><td>Draft replies from your FAQ list</td><td>Check facts: prices, timings, delivery areas</td></tr>
              <tr><td>Praise</td><td>Suggest a few different thank-you lines</td><td>Keep it personal, not copy-paste</td></tr>
              <tr><td>Complaints</td><td>Draft a calm reply that says sorry</td><td>Check the order, decide the fix, approve the words</td></tr>
              <tr><td>Themes</td><td>Group 200 comments into topics</td><td>Read a sample yourself to confirm</td></tr>
              <tr><td>Other languages</td><td>Translate a Hindi or Marathi comment</td><td>Ask a native speaker to check anything important</td></tr>
            </tbody>
          </table>
          <p><strong>Saved replies:</strong> Write down your 10 most common questions. Ask AI to draft short answers in your brand voice. Check each fact, then save the list. Some platforms have saved replies or automatic DM tools. Features change, so check the platform's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <p>A complaint on the post of a made-up home bakery in Maharashtra: <em>"Ordered cupcakes for my daughter's party. Half were squashed. Not happy."</em></p>
          <pre><code>Weak:
        Reply to this angry customer.</code></pre>
          <pre><code>Better:
        You reply to comments for [Sweet Crumb Bakery].
        Tone: warm, calm, no excuses.
        Complaint: "Ordered cupcakes for my daughter's party. Half were squashed. Not happy."
        Write a public reply under 40 words.
        Say sorry once. Do not promise a refund in public.
        Ask them to DM their order number so we can help.
        Give 2 versions.</code></pre>
          <p>The better prompt gives the brand, the tone, the rules and the length. It also moves the details to a private chat. Order numbers and phone numbers should never be in public comments.</p>
          <p><strong>Privacy rule:</strong> Do not paste customer names, phone numbers, addresses or order details into a public AI tool. Write <code>[name]</code> or <code>[order]</code> instead. Follow your company's rules on which AI tools you may use.</p>
        </div>
        <div class="lc-card">
          <h3>When a person must reply</h3>
          <ul class="lc-list">
            <li><strong>Health and safety:</strong> food poisoning, allergies, injuries, a faulty product.</li>
            <li><strong>Legal words:</strong> "consumer court", "lawyer", "police complaint", "fraud".</li>
            <li><strong>Abuse or threats:</strong> hide, report or block using the platform's tools. Do not argue.</li>
            <li><strong>Money:</strong> refunds, failed payments, wrong charges.</li>
            <li><strong>Media or big accounts:</strong> a journalist or a well-known person is asking.</li>
            <li><strong>Someone in distress:</strong> a person who seems upset or unsafe needs a human, not a template.</li>
          </ul>
          <p>For these, AI may help you think about wording. But a person reads the full story, decides what to do and sends the reply.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: handle a complaint step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Comment arrives">On the bakery's Instagram post: "Ordered a birthday cake for Saturday. It came two hours late and the name was spelt wrong. Very disappointed."</li>
              <li data-kind="thought" data-label="Sort it">This is a complaint, not a simple question. A person must approve the reply. First, you check the order in your own order book.</li>
              <li data-kind="user" data-label="Your prompt">Draft a short public reply to this complaint for Sweet Crumb Bakery. Warm, sorry, no excuses. Do not promise a refund. Ask them to DM their order number. Under 50 words.</li>
              <li data-kind="answer" data-label="AI draft">"We're really sorry. A late cake with the wrong name on a birthday is not okay. We want to make this right. Please DM us your order number and we will call you today. Team Sweet Crumb"</li>
              <li data-kind="warn" data-label="Catch this">The draft promises a call "today". Is someone free to call today? Only promise what your team can really do.</li>
              <li data-kind="check" data-label="Before posting">You change it to "within 24 hours" and read the tone again. Then you post it. A real team member handles the DM.</li>
              <li data-kind="result" data-label="Later">You add "late delivery" to a simple complaint log. If it happens again, the fix is in the kitchen or delivery, not in the reply.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to sort four comments and draft replies. Check that it does not answer the risky one or invent facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are the community manager for [Sweet Crumb Bakery, a home bakery in Maharashtra]. Our brand voice is [warm, simple and a little playful]. We never argue in public. We never promise refunds in a comment.

        Draft a reply to each comment below.
        1. [Do you deliver on Sundays?]
        2. [Best chocolate cake in town!!]
        3. [Ordered cupcakes, half were squashed. Not happy.]
        4. [Your cake gave my son a stomach ache. I will complain to the food department.]

        For each comment:
        - Label it: simple question, praise, complaint, or risky.
        - Write a public reply under 40 words, in the brand voice.
        - If it is risky, do not write a full reply. Write "Needs a person" and one line on who should handle it.
        - If a fact is missing (delivery areas, timings), write [check] instead of guessing.

        Give the answer as a table with these columns: comment number, label, reply, what a person must check.</pre>
            <ul class="ai-try-checks">
              <li>The health complaint is marked "Needs a person", not answered in full</li>
              <li>No invented facts: missing delivery areas or timings show [check]</li>
              <li>No refund is promised in public</li>
              <li>Replies sound human and are not all the same</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is fast at drafting replies, but trust is built by people. Sort every message first. Let AI help with simple ones, and keep a person in charge of complaints and anything risky.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Influencer and Creator Marketing</h1>
        </div>
        <p class="lc-lead">A creator (also called an influencer) is a person who makes content for an audience that trusts them. When a creator talks about your product, their followers may listen more than they listen to an ad. In this lesson, you will use AI to plan how to find creators, write outreach messages and prepare a brief. You will also learn why paid posts must be clearly marked, including the influencer rules of ASCI in India.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 230" role="img" aria-label="Six steps of a creator campaign: find, check fit, outreach, brief, disclose and measure. Below, AI helps with shortlists and drafts, and you decide who to trust, the fee, the contract and the disclosure.">
            <defs><marker id="smm12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="110" height="64" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="65" y="46" font-weight="700">Find</text>
              <text x="65" y="68" font-size="11" fill="#9b99b8">search, lists</text>
              <rect x="136" y="20" width="110" height="64" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="191" y="46" font-weight="700">Check fit</text>
              <text x="191" y="68" font-size="11" fill="#9b99b8">audience, values</text>
              <rect x="262" y="20" width="110" height="64" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="317" y="46" font-weight="700">Outreach</text>
              <text x="317" y="68" font-size="11" fill="#9b99b8">short, personal</text>
              <rect x="388" y="20" width="110" height="64" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="443" y="46" font-weight="700">Brief</text>
              <text x="443" y="68" font-size="11" fill="#9b99b8">goal, dos, don'ts</text>
              <rect x="514" y="20" width="110" height="64" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="569" y="46" font-weight="700">Disclose</text>
              <text x="569" y="68" font-size="11" fill="#9b99b8">clear "Ad" label</text>
              <rect x="640" y="20" width="110" height="64" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="695" y="46" font-weight="700">Measure</text>
              <text x="695" y="68" font-size="11" fill="#9b99b8">codes, links</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm12a)">
                <line x1="120" y1="52" x2="133" y2="52"/>
                <line x1="246" y1="52" x2="259" y2="52"/>
                <line x1="372" y1="52" x2="385" y2="52"/>
                <line x1="498" y1="52" x2="511" y2="52"/>
                <line x1="624" y1="52" x2="637" y2="52"/>
              </g>
              <rect x="10" y="110" width="360" height="100" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="190" y="136" font-weight="700" fill="#c4b5fd">AI helps with</text>
              <text x="190" y="160">search ideas and fit checklists</text>
              <text x="190" y="180">outreach drafts and briefs</text>
              <text x="190" y="200">tables for the results</text>
              <rect x="390" y="110" width="360" height="100" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="570" y="136" font-weight="700" fill="#fcd34d">You decide</text>
              <text x="570" y="160">which creators are real and a good fit</text>
              <text x="570" y="180">the fee, the contract, the claims</text>
              <text x="570" y="200">that every paid post is marked</text>
            </g>
          </svg>
          <figcaption>A creator campaign has six steps. AI speeds up the writing. You make the trust and money decisions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Finding and checking creators</h3>
          <p>Small brands often work with smaller creators. People call them "nano" or "micro" creators. The follower ranges vary between agencies. Smaller creators often have a close, local audience and lower fees.</p>
          <p><strong>Be careful:</strong> AI assistants cannot reliably see live accounts. They may invent creator names, follower counts or past brand deals. Use AI for search ideas and checklists. Then find real creators yourself on the platforms, in your own followers, or through creator marketplaces some platforms offer.</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>What to look for</th></tr></thead>
            <tbody>
              <tr><td>Audience</td><td>Are the followers in your city or country? Do they match your customer?</td></tr>
              <tr><td>Real engagement</td><td>Real comments with real questions, not only emojis or "nice pic"</td></tr>
              <tr><td>Values and past posts</td><td>Nothing that would embarrass your brand</td></tr>
              <tr><td>Past paid posts</td><td>Do they clearly mark ads? This shows they are careful.</td></tr>
              <tr><td>Content quality</td><td>Would you be happy to share their video on your own page?</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Outreach messages and briefs</h3>
          <p>Example: a made-up Rajasthan handicrafts store, <em>Rang Mahal Crafts</em>, wants to promote block-print cushion covers before Diwali.</p>
          <pre><code>Weak:
        Write a message asking an influencer to promote my shop.</code></pre>
          <pre><code>Better:
        Write a short Instagram DM (under 80 words) from Meera at
        [Rang Mahal Crafts, Rajasthan] to a home decor creator named [creator].
        Mention one of their recent posts: [their post about a balcony makeover].
        Offer: [a paid Reel plus free cushion covers]. Fee to be discussed.
        Say clearly that the post must be marked as a paid partnership.
        Friendly, not pushy. No fake praise.</code></pre>
          <p>Once a creator agrees, send a <strong>brief</strong>: a short document that explains what you need.</p>
          <pre><code>CREATOR BRIEF
        Brand: Rang Mahal Crafts, Rajasthan (hand block-printed home decor)
        Goal: more visits to our festive collection page
        Audience: home lovers aged 25-45 in Indian cities
        Key message: hand-printed by Rajasthan artisans, made to order
        Deliverables: 1 Reel (30-45 sec) and 2 Stories, by [date]
        Must include: a clear paid partnership label at the start, our link
        Do not: make claims we cannot prove, copy other brands' content
        Approval: send the draft to us 2 days before posting
        Payment and usage rights: as agreed in the contract</code></pre>
          <p>AI can draft these fast. You fill in the real fee, dates and contract terms. Get the contract checked by someone qualified if the deal is large.</p>
        </div>
        <div class="lc-card">
          <h3>Disclosure: marking paid posts in India</h3>
          <p>In India, ASCI (the Advertising Standards Council of India) has guidelines for influencer advertising. The guidelines are updated from time to time. In general terms:</p>
          <ul class="lc-list">
            <li><strong>Material connection:</strong> any benefit between the brand and the creator. This includes money, free products, gifts, trips, discounts, affiliate commission or being an employee. If there is one, the post must be disclosed.</li>
            <li><strong>Clear labels:</strong> ASCI accepts labels such as "Ad", "Advertisement", "Sponsored", "Collaboration", "Partnership", "Employee", "Free gift" and "Affiliate". Platform tools such as a paid partnership tag also help.</li>
            <li><strong>Upfront and easy to see:</strong> the label goes at the start. It should not be hidden in a long list of hashtags or under "more". Videos, live streams and podcasts have their own rules about showing or saying the label.</li>
            <li><strong>Virtual influencers:</strong> AI-made or computer-made characters must tell people they are not real humans.</li>
            <li><strong>Health and finance:</strong> creators who give expert health or money advice (for example, treatment or investment tips) need suitable qualifications or registration, and must show them. General awareness posts have lighter rules.</li>
            <li><strong>Shared responsibility:</strong> both the brand and the creator are responsible. Claims in the post must be true, even with an "Ad" label.</li>
          </ul>
          <p>This is general education, not legal advice. Read the current guidelines on the ASCI website (ascionline.in) before a campaign. Government rules also apply. The Department of Consumer Affairs has published endorsement guidelines for celebrities and influencers under consumer protection law. They also ask for clear, upfront disclosure. Other countries have their own rules. For a big campaign, ask a qualified lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: does this post need a disclosure label?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each post. Does the creator need to mark it as an ad or partnership?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="yes" data-label="Needs a label"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="No label needed"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="yes" data-why="A free product is a benefit. It is a material connection, even without money.">The bakery sent a creator a free cake box, and she posts about it</li>
              <li data-bucket="yes" data-why="Payment is the clearest material connection.">A creator is paid ₹15,000 to make a Reel about a travel agency</li>
              <li data-bucket="no" data-why="The customer paid with their own money. There is no deal or benefit from the brand.">A customer tags a bakery in a photo of a cake they bought themselves</li>
              <li data-bucket="yes" data-why="Working for the brand is a connection. Labels like &quot;Employee&quot; exist for this.">A company's employee praises its new app on a personal account</li>
              <li data-bucket="yes" data-why="Commission from a link is a benefit. Labels like &quot;Affiliate&quot; exist for this.">A creator earns commission on sales from a link in her post</li>
              <li data-bucket="yes" data-why="A free stay is a benefit, like a free product.">A hotel gives a travel creator a free weekend stay, and he posts a review</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for an outreach message, a fit checklist and a creator brief for a small brand.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a creator marketing assistant for [Rang Mahal Crafts, a handicrafts store in Rajasthan that sells hand block-printed cushion covers and bedsheets]. We want to work with [2 or 3 small home decor creators in India] before [Diwali].

        Please write:
        1. A checklist of 6 things to check before we pick a creator (audience, real engagement, values, and so on).
        2. A friendly Instagram DM under 80 words to a creator named [creator name]. Mention their recent post about [a balcony makeover]. Say the fee is to be discussed. Say the post must be clearly marked as a paid partnership.
        3. A one-page creator brief with: goal, audience, key message, deliverables, must include, do not, approval steps, and dates.

        Rules:
        - Do not invent real creator names, follower numbers or prices. Use [brackets] for anything I must fill in.
        - The brief must ask for a clear disclosure label such as "Ad" or "Paid partnership" at the start of the post.
        - No claims we cannot prove, such as "best in India".</pre>
            <ul class="ai-try-checks">
              <li>No real creator names or follower counts are made up</li>
              <li>The fee, dates and contract details are left in [brackets] for you</li>
              <li>The brief asks for a clear, upfront paid partnership label</li>
              <li>The DM is short, personal and not pushy</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can write the messages and the brief, but it cannot tell you who to trust. Check every creator yourself. Make sure every paid, gifted or affiliate post is clearly marked at the start.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Social Media Analytics</h1>
        </div>
        <p class="lc-lead">Analytics tells you what happened to your posts: how many people saw them and what they did next. Every platform has an insights page, and most let you export the numbers. In this lesson, you will learn the main metrics (numbers you measure) in plain words. You will read a sample export with AI and check its maths in a spreadsheet. Then you will turn the numbers into one clear decision.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A sample insights dashboard for a made-up Kerala travel agency. Four tiles show reach, engagement rate, saves and link clicks. A bar chart shows engagement rate by post format. A side box lists questions to check.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="24" text-anchor="start" fill="#9b99b8">Backwater Trails, Kerala: last 30 days (sample data)</text>
              <rect x="16" y="40" width="170" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="101" y="78" font-size="22" font-weight="700">48,200</text>
              <text x="101" y="104" font-size="12" fill="#9b99b8">Reach</text>
              <rect x="202" y="40" width="170" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="287" y="78" font-size="22" font-weight="700">3.8%</text>
              <text x="287" y="104" font-size="12" fill="#9b99b8">Engagement rate</text>
              <rect x="388" y="40" width="170" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="473" y="78" font-size="22" font-weight="700">1,120</text>
              <text x="473" y="104" font-size="12" fill="#9b99b8">Saves</text>
              <rect x="574" y="40" width="170" height="80" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="659" y="78" font-size="22" font-weight="700">640</text>
              <text x="659" y="104" font-size="12" fill="#9b99b8">Link clicks</text>
              <text x="16" y="156" text-anchor="start" font-weight="700">Engagement rate by format</text>
              <text x="16" y="183" text-anchor="start" font-size="12">Carousels</text>
              <rect x="130" y="170" width="244" height="16" rx="3" fill="#8b5cf6"/>
              <text x="382" y="183" text-anchor="start" font-size="12">6.1%</text>
              <text x="16" y="209" text-anchor="start" font-size="12">Reels</text>
              <rect x="130" y="196" width="196" height="16" rx="3" fill="#3b82f6"/>
              <text x="334" y="209" text-anchor="start" font-size="12">4.9%</text>
              <text x="16" y="235" text-anchor="start" font-size="12">Single images</text>
              <rect x="130" y="222" width="96" height="16" rx="3" fill="#22d3ee"/>
              <text x="234" y="235" text-anchor="start" font-size="12">2.4%</text>
              <text x="16" y="261" text-anchor="start" font-size="12">Text posts</text>
              <rect x="130" y="248" width="52" height="16" rx="3" fill="#10b981"/>
              <text x="190" y="261" text-anchor="start" font-size="12">1.3%</text>
              <rect x="574" y="146" width="170" height="126" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="659" y="170" font-weight="700" fill="#f9a8d4">Ask before acting</text>
              <text x="659" y="196">Which goal?</text>
              <text x="659" y="218">How many posts?</text>
              <text x="659" y="240">Same time period?</text>
              <text x="659" y="262">Same formula?</text>
            </g>
          </svg>
          <figcaption>A sample dashboard with made-up numbers. The questions on the right matter as much as the numbers.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main metrics in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>What it means</th><th>Useful for</th></tr></thead>
            <tbody>
              <tr><td><strong>Reach</strong></td><td>How many different accounts saw your post</td><td>Awareness</td></tr>
              <tr><td><strong>Impressions or views</strong></td><td>How many times the post was shown in total. One person can count more than once.</td><td>Awareness</td></tr>
              <tr><td><strong>Engagements</strong></td><td>Actions on the post: likes, comments, shares, saves</td><td>Interest</td></tr>
              <tr><td><strong>Engagement rate</strong></td><td>Engagements divided by reach (or by followers), shown as a percentage</td><td>Comparing posts of different sizes</td></tr>
              <tr><td><strong>Saves</strong></td><td>People kept the post to see again. Often a sign of useful content.</td><td>Value</td></tr>
              <tr><td><strong>Shares</strong></td><td>People sent the post to others</td><td>Word of mouth</td></tr>
              <tr><td><strong>CTR (click-through rate)</strong></td><td>The share of people who saw the post and clicked your link</td><td>Leads and sales</td></tr>
            </tbody>
          </table>
          <p>Platforms use different names and formulas, and they change them. For example, some now show "views" where they once showed "impressions". Check each platform's help pages for the exact meaning. There is no single engagement rate formula. Pick one and use the same one every month.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: four posts from an export</h3>
          <p>Here is a small, made-up export for <em>Backwater Trails</em>, a Kerala travel agency. Its goal this month is enquiries (leads), so link clicks matter most.</p>
          <table class="lc-table">
            <thead><tr><th>Post</th><th>Reach</th><th>Likes</th><th>Comments</th><th>Shares</th><th>Saves</th><th>Link clicks</th><th>Eng. rate</th><th>Click rate</th></tr></thead>
            <tbody>
              <tr><td>Houseboat tour Reel</td><td>9,800</td><td>410</td><td>36</td><td>88</td><td>140</td><td>62</td><td>6.9%</td><td>0.63%</td></tr>
              <tr><td>Hill trip packing list (carousel)</td><td>4,200</td><td>150</td><td>12</td><td>40</td><td>210</td><td>35</td><td>9.8%</td><td>0.83%</td></tr>
              <tr><td>Team photo</td><td>1,900</td><td>95</td><td>8</td><td>2</td><td>3</td><td>4</td><td>5.7%</td><td>0.21%</td></tr>
              <tr><td>Monsoon offer (image)</td><td>3,100</td><td>60</td><td>15</td><td>6</td><td>12</td><td>48</td><td>3.0%</td><td>1.55%</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet with Reach in column B, likes to saves in columns C to F, and clicks in G, use these formulas in row 2:</p>
          <pre><code>Engagement rate:  =(C2+D2+E2+F2)/B2
        Click rate:       =G2/B2</code></pre>
          <p>Format both as percentages. Now look: the offer post has the <em>lowest</em> engagement rate but the <em>best</em> click rate. For a leads goal, it did well. The packing list got many saves, so it is useful content. Always read the numbers against your goal.</p>
        </div>
        <div class="lc-card">
          <h3>Reading an export with AI</h3>
          <pre><code>Weak:
        Here are my Instagram stats. Are they good?</code></pre>
          <pre><code>Better:
        You are a social media analyst. Our goal this month is [enquiries].
        Below is our insights export for [30] days.
        1. Calculate engagement rate as (likes+comments+shares+saves)/reach,
           and click rate as link clicks/reach. Show your working.
        2. Rank the posts by the metric that matches our goal.
        3. Give 3 patterns you see, and say how sure you are about each.
        4. Suggest one change to try next month.
        [paste the table, with no personal data]</code></pre>
          <ul class="lc-list">
            <li><strong>Check the maths.</strong> AI can make calculation mistakes. Do the key numbers again in your spreadsheet.</li>
            <li><strong>Remove personal data.</strong> Delete commenter names, usernames and messages before you paste an export.</li>
            <li><strong>AI sees numbers, not reasons.</strong> It does not know that you ran an ad, or that a festival fell that week. Tell it, or add those notes yourself.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: put the analysis steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Arrange these steps for a monthly analytics review.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down your goal for the month and the question you want answered</li>
              <li data-order="2">Export the insights for the month from the platform</li>
              <li data-order="3">Remove personal data such as usernames and comments</li>
              <li data-order="4">Ask AI to calculate the rates, show its working and find patterns</li>
              <li data-order="5">Check the key numbers again in your spreadsheet</li>
              <li data-order="6">Choose one change to try next month and note it down</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste this sample export (or your own, without personal data) and ask AI to analyse it against a goal.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a social media analyst for [Backwater Trails, a small travel agency in Kerala]. Our goal this month is [enquiries from people planning a Kerala trip].

        Here is our insights export (sample data):
        Post | Format | Reach | Likes | Comments | Shares | Saves | Link clicks
        Houseboat tour | Reel | 9800 | 410 | 36 | 88 | 140 | 62
        Hill trip packing list | Carousel | 4200 | 150 | 12 | 40 | 210 | 35
        Team photo | Image | 1900 | 95 | 8 | 2 | 3 | 4
        Monsoon offer | Image | 3100 | 60 | 15 | 6 | 12 | 48

        1. For each post, calculate engagement rate = (likes + comments + shares + saves) / reach, and click rate = link clicks / reach. Show the working.
        2. Say which post did best for our goal, and why.
        3. Give 3 patterns. For each, say if it is a strong pattern or only a guess, because there are only 4 posts.
        4. Suggest one simple change to try next month.
        Also give me the spreadsheet formulas I can use to check the numbers.</pre>
            <ul class="ai-try-checks">
              <li>Engagement rates are about 6.9%, 9.8%, 5.7% and 3.0%</li>
              <li>The best post is chosen by the goal (clicks), not only by likes</li>
              <li>It admits that 4 posts is too few for strong conclusions</li>
              <li>You re-check the numbers with the formulas in a spreadsheet</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Numbers only matter when you read them against your goal. Let AI do the first pass. Check its maths yourself, and end every review with one clear change to try.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Testing and Improving</h1>
        </div>
        <p class="lc-lead">Guessing what works is slow. Testing is faster. A test means you change one thing, keep everything else the same, and compare the results. In this lesson, you will plan simple tests, such as hook A against hook B. You will use AI to find patterns in your best and worst posts. You will also learn why small numbers can fool you, so you do not change your plan for the wrong reason.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Hook A reached 820 accounts and got 14 saves. Hook B reached 910 accounts and got 19 saves. The difference is only 5 saves, which is too small to be sure, so the test should be repeated.">
            <defs><marker id="smm14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="300" height="140" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="170" y="46" font-weight="700" fill="#93c5fd">Hook A</text>
              <text x="170" y="72">"Why our bread takes 36 hours"</text>
              <text x="170" y="104" fill="#9b99b8">Reach: 820</text>
              <text x="170" y="126" fill="#9b99b8">Saves: 14</text>
              <text x="170" y="148" font-weight="700">Save rate: 1.7%</text>
              <rect x="440" y="20" width="300" height="140" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="590" y="46" font-weight="700" fill="#f9a8d4">Hook B</text>
              <text x="590" y="72">"Stop buying bread that lasts weeks"</text>
              <text x="590" y="104" fill="#9b99b8">Reach: 910</text>
              <text x="590" y="126" fill="#9b99b8">Saves: 19</text>
              <text x="590" y="148" font-weight="700">Save rate: 2.1%</text>
              <circle cx="380" cy="90" r="26" fill="#27274e" stroke="#9b99b8"/>
              <text x="380" y="95" font-weight="700">vs</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#smm14a)">
                <line x1="170" y1="162" x2="250" y2="194"/>
                <line x1="590" y1="162" x2="510" y2="194"/>
              </g>
              <rect x="120" y="198" width="520" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="222" font-weight="700" fill="#fcd34d">Only 5 more saves. Too small to be sure.</text>
              <text x="380" y="242" font-size="12" fill="#9b99b8">Repeat the test with more posts before you change your plan.</text>
            </g>
          </svg>
          <figcaption>Hook B looks better, but the numbers are small (made-up sample). One test is a hint, not proof.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How to run a simple test</h3>
          <p>An A/B test compares two versions, A and B, that differ in only one thing. On organic posts (free posts, not ads) you usually test over several posts. Ad tools, such as Meta Ads Manager, have built-in A/B test features. Some platforms also let you try a Reel with non-followers first. Features change, so check the tool's current help pages.</p>
          <pre><code>TEST PLAN
        Question:   Does a question hook get more saves than a statement hook?
        Change:     only the first line (the hook)
        Keep same:  format (carousel), type of topic, posting time, no ads
        Measure:    save rate = saves / reach
        Run:        [4] pairs of posts over [4] weeks
        Decide:     switch only if the question hook wins most pairs
        Result:     [fill in after the test]</code></pre>
          <table class="lc-table">
            <thead><tr><th>Things you can test</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Hook</td><td>A question against a bold statement</td></tr>
              <tr><td>Format</td><td>Carousel against Reel for the same tip</td></tr>
              <tr><td>Cover or first image</td><td>Product photo against a face</td></tr>
              <tr><td>Call to action</td><td>"Save this" against "Send to a friend"</td></tr>
              <tr><td>Posting time</td><td>Morning against evening, for your own audience</td></tr>
            </tbody>
          </table>
          <p>There is no single "best time" or "best hook" for everyone. Your own tests tell you what works for your audience.</p>
        </div>
        <div class="lc-card">
          <h3>Learning from top posts with AI</h3>
          <p>Export your last 30 to 50 posts. Mark the top 10 and bottom 10 by the metric that fits your goal. Then ask AI for patterns.</p>
          <pre><code>You are a social media analyst. Below are our 10 best and 10 worst
        posts by [save rate], with format, topic, hook and posting day.
        List 3 patterns that the best posts share.
        For each pattern, write it as an idea to test, not as a fact.
        Suggest one A/B test for each idea, changing only one thing.
        [paste the table, with no personal data]</code></pre>
          <p>AI is good at spotting patterns in a table. But a pattern is a guess, not a cause. Maybe the top posts all went out in a festival week. Maybe one was shared by a big page. Turn each pattern into a test.</p>
        </div>
        <div class="lc-card">
          <h3>Avoiding false conclusions</h3>
          <ul class="lc-list">
            <li><strong>Small numbers:</strong> a difference of a few saves or clicks can happen by chance. Treat it as a hint and repeat the test.</li>
            <li><strong>One-off events:</strong> festivals, news, a big share or a paid boost can lift one post. Note them next to the numbers.</li>
            <li><strong>Changing two things:</strong> if you change the hook and the format together, you cannot tell which one worked.</li>
            <li><strong>Platform changes:</strong> reach can go up or down for everyone when a platform changes how it shows posts.</li>
            <li><strong>Wrong metric:</strong> more likes do not help if your goal is enquiries.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: act now or test more?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each finding. Is it strong enough to act on, or is it too early to say?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="act" data-label="Good enough to act on"></div>
              <div data-sorter-target="bucket" data-bucket="wait" data-label="Too early to say"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="wait" data-why="One post each and a gap of 5 saves can easily happen by chance.">Hook B got 19 saves and hook A got 14, on one post each</li>
              <li data-bucket="act" data-why="The same result again and again over many weeks is a much stronger sign.">Over 8 weeks, checklist carousels got more saves than your other posts, again and again</li>
              <li data-bucket="wait" data-why="The big share probably caused the reach, not the song. One viral post is not a pattern.">One Reel went viral after a big page shared it, so every Reel should use that song</li>
              <li data-bucket="wait" data-why="Festival weeks are different. March will not behave like Diwali week.">The Diwali post got the best reach of the year, so post the same way in March</li>
              <li data-bucket="act" data-why="Only one thing changed, and the result repeated in 4 out of 5 pairs.">Question hooks beat statement hooks in 4 out of 5 test pairs, with everything else the same</li>
              <li data-bucket="wait" data-why="Reach goes up and down from week to week. Look at a longer period first.">Reach was lower this week than last week, so the new caption style failed</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a small set of test results and ask what you can and cannot conclude. Then ask it to plan a better test.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful social media analyst for [Sweet Crumb Bakery, a home bakery in Maharashtra]. We tested two hook styles on Instagram carousels. Everything else stayed the same. Here are the results (sample data):

        Post | Hook style | Reach | Saves
        1 | Question | 820 | 21
        2 | Statement | 910 | 14
        3 | Question | 760 | 17
        4 | Statement | 1040 | 19
        5 | Question | 880 | 12
        6 | Statement | 700 | 10

        1. Calculate the save rate (saves / reach) for each post and the average for each hook style. Show your working.
        2. Tell me honestly what we can and cannot conclude from 6 posts.
        3. List other things that might explain the difference (for example days, topics, or one post being shared).
        4. Design a better test for the next [4] weeks, changing only one thing, with a clear rule for deciding the winner.
        Use simple English and a table.</pre>
            <ul class="ai-try-checks">
              <li>Save rates are calculated correctly (check 2 of them yourself)</li>
              <li>It does not claim a clear winner from only 6 posts</li>
              <li>The new test changes only one thing</li>
              <li>The decision rule is written before the test starts</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Change one thing, test it more than once, and decide your rule before you look at the results. AI can find patterns fast, but treat each pattern as an idea to test, not as proof.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Capstone: A 30-Day Social Media Plan</h1>
        </div>
        <p class="lc-lead">In this capstone, you will build a complete 30-day social media plan with AI. You will bring together what you learned in this course: audience, content pillars, a calendar, captions, Reel scripts and measurement. You can use your own business or one of the sample businesses. At the end, you will have a plan you can really use, and you will have checked every part of it yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Six steps in a loop: 1 audience, 2 pillars, 3 calendar, 4 five captions, 5 two Reel scripts, 6 measure. After 30 days, you review and start again. At every step you check facts, dates, claims and brand voice.">
            <defs>
              <marker id="smm15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <marker id="smm15b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#fb7185"/></marker>
            </defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="40" y="30" width="200" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="140" y="60" font-weight="700">1. Audience</text>
              <text x="140" y="82" font-size="11" fill="#9b99b8">who, problems, questions</text>
              <rect x="280" y="30" width="200" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="60" font-weight="700">2. Pillars</text>
              <text x="380" y="82" font-size="11" fill="#9b99b8">3 or 4 main themes</text>
              <rect x="520" y="30" width="200" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="620" y="60" font-weight="700">3. Calendar</text>
              <text x="620" y="82" font-size="11" fill="#9b99b8">30 days in a table</text>
              <rect x="520" y="160" width="200" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="620" y="190" font-weight="700">4. Five captions</text>
              <text x="620" y="212" font-size="11" fill="#9b99b8">hooks and calls to action</text>
              <rect x="280" y="160" width="200" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="190" font-weight="700">5. Two Reel scripts</text>
              <text x="380" y="212" font-size="11" fill="#9b99b8">30 seconds, shot list</text>
              <rect x="40" y="160" width="200" height="70" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="140" y="190" font-weight="700">6. Measure</text>
              <text x="140" y="212" font-size="11" fill="#9b99b8">goal, metrics, review date</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#smm15a)">
                <line x1="242" y1="65" x2="276" y2="65"/>
                <line x1="482" y1="65" x2="516" y2="65"/>
                <line x1="620" y1="102" x2="620" y2="156"/>
                <line x1="518" y1="195" x2="486" y2="195"/>
                <line x1="278" y1="195" x2="246" y2="195"/>
              </g>
              <line x1="140" y1="158" x2="140" y2="106" stroke="#fb7185" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#smm15b)"/>
              <text x="152" y="136" text-anchor="start" font-size="12" fill="#fda4af">review after 30 days</text>
              <text x="380" y="262" font-size="12" fill="#9b99b8">At every step: you check facts, dates, claims and brand voice.</text>
            </g>
          </svg>
          <figcaption>The plan has six parts. The measurement results feed into the next month's plan.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Your brief</h3>
          <p>Choose a business. Use your own, or pick a sample one: <em>Backwater Trails</em>, a made-up travel agency in Kerala, or <em>Sweet Crumb Bakery</em>, a made-up home bakery in Maharashtra. Then decide three things before you start:</p>
          <ul class="lc-list">
            <li><strong>One main goal</strong> for the 30 days, for example enquiries, followers in your city, or online orders.</li>
            <li><strong>One or two platforms.</strong> A small team does better on two platforms done well than on five done badly.</li>
            <li><strong>Your real time.</strong> How many hours a week can you spend? Plan only what you can make.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Part of the plan</th><th>What it must include</th></tr></thead>
            <tbody>
              <tr><td>Audience</td><td>1 or 2 short personas (a description of a typical customer), their problems and questions</td></tr>
              <tr><td>Content pillars</td><td>3 or 4 themes you post about again and again, linked to your goal</td></tr>
              <tr><td>Calendar</td><td>A table for 30 days: date, platform, pillar, format, topic, call to action</td></tr>
              <tr><td>Captions</td><td>5 finished captions with a hook, value and a call to action</td></tr>
              <tr><td>Reel scripts</td><td>2 scripts of about 30 seconds, with a shot list and on-screen text</td></tr>
              <tr><td>Measurement plan</td><td>The metrics for your goal, your starting numbers, one test, and a review date</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Build it step by step</h3>
          <p>Work in one AI chat so it remembers the earlier parts. Paste your brand voice guide at the start. Ask for one part at a time and check each part before you move on.</p>
          <pre><code>Step 1: Create 2 short personas for [business] on [platform].
                Use these real customer questions: [paste 5 to 10 questions].
        Step 2: Suggest 4 content pillars that support the goal [goal].
        Step 3: Make a 30-day calendar table starting [date]:
                date, platform, pillar, format, topic, call to action.
                Maximum [4] posts a week. Mark festivals as [check date].
        Step 4: Write captions for the 5 most important posts in the calendar.
        Step 5: Write 2 Reel scripts of 30 seconds: hook, value, call to action,
                with a shot list and on-screen text.
        Step 6: Write a measurement plan: metrics for [goal], a table for
                starting numbers, one A/B test, and a review date.</code></pre>
          <p>Copy the final plan into a document or spreadsheet. A calendar is easier to use in a spreadsheet, where you can add a "Status" column.</p>
        </div>
        <div class="lc-card">
          <h3>Final checks before you use the plan</h3>
          <ul class="lc-list">
            <li><strong>Facts and prices</strong> are correct and current. AI may have guessed them.</li>
            <li><strong>Festival and event dates</strong> are checked for this year. Many Indian festival dates change every year.</li>
            <li><strong>Brand voice:</strong> every caption sounds like your brand, and nothing is copied from other accounts.</li>
            <li><strong>Claims:</strong> no promises you cannot keep, such as "cheapest in Kerala" or "guaranteed results".</li>
            <li><strong>Disclosure:</strong> any creator post that is paid, gifted or affiliate is clearly marked.</li>
            <li><strong>AI images:</strong> labelled where the platform or your own policy asks for it.</li>
            <li><strong>Privacy:</strong> no customer names, photos or messages are used without permission.</li>
            <li><strong>Workload:</strong> the number of posts fits the time you really have.</li>
            <li><strong>Starting numbers</strong> are written down, so you can compare after 30 days.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a planning session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">Make a 30-day Instagram calendar for Backwater Trails, Kerala, starting 1 November. Goal: enquiries for winter trips. Pillars: trip ideas, travel tips, customer stories, offers. Maximum 4 posts a week.</li>
              <li data-kind="answer" data-label="AI draft">A table with 30 rows. It has a post every single day, a "Kerala Piravi" post on 1 November, and a "Christmas houseboat offer" at ₹9,999 per couple.</li>
              <li data-kind="warn" data-label="Catch this">It ignored your limit: 30 posts, not about 17. The offer price is made up. It was never in your prompt.</li>
              <li data-kind="check" data-label="You check">You check the Kerala Piravi date on a trusted calendar. It is 1 November every year, so that post stays. You ask the owner for the real offer price and dates.</li>
              <li data-kind="user" data-label="Your fix">Keep only 4 posts a week, spread evenly. Replace the offer price with [price]. Add a column for "status".</li>
              <li data-kind="tool" data-label="Spreadsheet">You paste the new table into Google Sheets and add a "Week" column. You count the posts in each week with =COUNTIF(B:B,"Week 1").</li>
              <li data-kind="result" data-label="Result">A calendar the team can really follow, with checked dates and a real offer. Next: captions for the 5 key posts.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use this prompt to create the first full draft of your 30-day plan. Then check every part with the list above.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a social media strategist for a small business. Create a 30-day social media plan.

        Business: [Backwater Trails, a small travel agency in Kerala]
        Main goal: [enquiries for winter trips]
        Platforms: [Instagram and Facebook]
        Time available: [5 hours a week, so a maximum of 4 posts a week]
        Brand voice: [friendly, helpful, local, no hype]
        Start date: [1st of next month]

        Include:
        1. Two short audience personas with their main questions.
        2. Four content pillars linked to the goal.
        3. A 30-day calendar table: date, platform, pillar, format, topic, call to action.
        4. Five finished captions for the most important posts.
        5. Two 30-second Reel scripts with hook, value, call to action, shot list and on-screen text.
        6. A measurement plan: metrics for the goal, a table for starting numbers, one A/B test, and a review date.

        Rules: Do not invent prices, offers or festival dates. Write [check] instead. No claims like "best" or "guaranteed". Mark any creator post as a paid partnership.</pre>
            <ul class="ai-try-checks">
              <li>The calendar respects the posting limit you set</li>
              <li>Prices, offers and festival dates show [check] or are correct</li>
              <li>Captions and scripts match the brand voice and the goal</li>
              <li>The measurement plan matches the goal and has a review date</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can draft a full month of content in minutes. The plan becomes useful when you check the facts, cut it to the time you really have, and measure the results. Then use what you learn to plan the next month.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

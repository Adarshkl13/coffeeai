module AiEmailMarketingContent
  # Units (sidebar dividers): 1–4 Email and AI Basics · 5–9 Writing Emails · 10–14 Automation and Results · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">How Email Marketing Works</h1>
        </div>
        <p class="lc-lead">Email marketing means sending useful emails to people who asked to hear from you. It is one of the few channels you fully control. Social media apps decide who sees your posts. Your email list stays with you. In this lesson you will learn the basic parts: the list, campaigns, automations and consent. You will use these words in every later lesson.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="People join through a sign-up form with consent. They become your list. You send them campaigns, which are one-off emails, and automations, which are sent when someone does something. Emails reach the inbox and create opens, clicks and sales.">
            <defs><marker id="em1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="100" width="140" height="54" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="90" y="123" font-weight="700">Sign-up form</text>
              <text x="90" y="142" font-size="11" fill="#9b99b8">with clear consent</text>
              <rect x="200" y="100" width="130" height="54" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="265" y="123" font-weight="700">Your list</text>
              <text x="265" y="142" font-size="11" fill="#9b99b8">subscribers</text>
              <rect x="380" y="28" width="190" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="475" y="53" font-weight="700">Campaign</text>
              <text x="475" y="73" font-size="11" fill="#9b99b8">one send, many people</text>
              <rect x="380" y="162" width="190" height="64" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="475" y="187" font-weight="700">Automation</text>
              <text x="475" y="207" font-size="11" fill="#9b99b8">sent when someone acts</text>
              <rect x="610" y="100" width="135" height="54" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="677" y="123" font-weight="700">Inbox</text>
              <text x="677" y="142" font-size="11" fill="#9b99b8">opens, clicks, sales</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#em1a)">
                <line x1="162" y1="127" x2="196" y2="127"/>
                <path d="M332,120 L376,64"/>
                <path d="M332,134 L376,190"/>
                <path d="M572,64 L606,118"/>
                <path d="M572,190 L606,138"/>
              </g>
              <text x="380" y="258" font-size="12" fill="#6ee7b7">Consent first: only email people who said yes.</text>
            </g>
          </svg>
          <figcaption>People join your list with consent. You reach them with campaigns and automations.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main parts</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it means</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>List</strong></td><td>The people who agreed to get your emails. Each person is a subscriber.</td><td>1,200 customers of a home bakery in Maharashtra</td></tr>
              <tr><td><strong>Email platform</strong></td><td>A tool that stores your list, sends emails and shows reports. Examples are Mailchimp, Brevo and Zoho Campaigns.</td><td>The bakery uses a free plan to start</td></tr>
              <tr><td><strong>Campaign</strong></td><td>One email that you send to many people at one time.</td><td>"Diwali gift boxes are here"</td></tr>
              <tr><td><strong>Automation</strong></td><td>An email that the platform sends by itself when something happens. The "something" is called a trigger.</td><td>A welcome email when someone joins</td></tr>
              <tr><td><strong>Segment</strong></td><td>A smaller group inside your list, chosen by a rule.</td><td>Only people who bought cakes this year</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Why email still works</h3>
          <ul class="lc-list">
            <li><strong>You own the list.</strong> A social app can change its rules. Your list stays with you, and you can move it to another platform.</li>
            <li><strong>People asked for it.</strong> Subscribers chose to hear from you. So they are often more interested than a random visitor.</li>
            <li><strong>It is low cost.</strong> One email can reach thousands of people for a small fee.</li>
            <li><strong>You can measure it.</strong> Reports show who clicked and who bought.</li>
          </ul>
          <p>Email is not magic. It works when your emails are useful and you send them to the right people.</p>
        </div>
        <div class="lc-card">
          <h3>Consent comes first</h3>
          <p><strong>Consent</strong> means the person clearly agreed to get your emails. Many countries have laws about this. Examples are India's DPDP Act (Digital Personal Data Protection Act), the GDPR in Europe and anti-spam laws in other countries. Most of these rules ask for three things:</p>
          <ul class="lc-list">
            <li>Only email people who agreed.</li>
            <li>Show who you are in every email.</li>
            <li>Give an easy way to unsubscribe (stop getting emails) in every email.</li>
          </ul>
          <p>Big inbox providers such as Gmail and Yahoo also have rules for people who send a lot of email. They ask for easy unsubscribing and a few technical settings. You will learn these later in this course. This lesson is general education, not legal advice. For your business, check with a qualified lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: campaign or automation?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each email. Is it a campaign (you send it once to a group) or an automation (it is sent by a trigger)?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="campaign" data-label="Campaign"></div>
              <div data-sorter-target="bucket" data-bucket="auto" data-label="Automation"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="auto" data-why="The trigger is joining the list. Each new person gets it at a different time.">A welcome email sent right after someone signs up</li>
              <li data-bucket="campaign" data-why="You plan it and send it to many people at one time.">A Diwali sale email sent to the whole list on one day</li>
              <li data-bucket="auto" data-why="The trigger is leaving items in the cart without paying.">A reminder to a shopper who left items in the cart</li>
              <li data-bucket="campaign" data-why="You write it and send it once a month to all subscribers.">A monthly newsletter with new recipes</li>
              <li data-bucket="auto" data-why="The trigger is the date in each person's profile.">A birthday discount sent on each customer's birthday</li>
              <li data-bucket="campaign" data-why="It is a one-time send to a chosen group.">An email about a new shop in Gujarat, sent to customers in Gujarat only</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain email marketing for your own business. You will get a simple starter plan with campaigns and automations.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly email marketing teacher for small business owners who are new to email.

        My business: [Sweet Crumbs, a home bakery in Maharashtra that sells eggless cakes and cookies].
        My customers: [local families and office teams who order for birthdays and festivals].
        My list today: [about 300 customers who agreed to get emails when they ordered].

        Please:
        1. Explain in 5 short, simple sentences how email marketing could help my business.
        2. Suggest 3 campaigns (one-off emails) I could send in the next 3 months. Give each a goal.
        3. Suggest 2 automations (emails sent by a trigger). Name the trigger for each.
        4. List 3 consent and unsubscribe rules I should follow. Say that this is not legal advice.

        Use simple English. Do not invent statistics or promise results. Use a table for points 2 and 3.</pre>
            <ul class="ai-try-checks">
              <li>Campaigns are one-off sends. Automations each have a clear trigger.</li>
              <li>The answer mentions consent and an unsubscribe link.</li>
              <li>There are no made-up statistics or promised sales numbers.</li>
              <li>The ideas fit your real business and customers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Email marketing has three parts: a list of people who said yes, campaigns you send once, and automations that run by themselves. Get consent first. Everything else in this course builds on that.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Where AI Helps in Email</h1>
        </div>
        <p class="lc-lead">AI assistants such as Claude or ChatGPT can save you hours in email work. They can suggest ideas, write first drafts, give you many subject lines and help you read reports. But AI can also make up facts, prices and dates. In this lesson you will learn where AI helps most, how to keep your brand voice, and what you must always check before you press send.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Five jobs where AI helps: ideas, drafts, subject lines, segments and report reading. All of them lead to one step where you check facts, prices, dates, brand voice and consent before you send.">
            <defs><marker id="em2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" text-anchor="start" font-size="12" fill="#c4b5fd">AI gives you a fast first version</text>
              <rect x="20" y="40" width="128" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="84" y="65" font-weight="700">Ideas</text><text x="84" y="84" font-size="11" fill="#9b99b8">topics, offers</text>
              <rect x="166" y="40" width="128" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="230" y="65" font-weight="700">Drafts</text><text x="230" y="84" font-size="11" fill="#9b99b8">first versions</text>
              <rect x="312" y="40" width="128" height="60" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="376" y="65" font-weight="700">Subject lines</text><text x="376" y="84" font-size="11" fill="#9b99b8">many options</text>
              <rect x="458" y="40" width="128" height="60" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="522" y="65" font-weight="700">Segments</text><text x="522" y="84" font-size="11" fill="#9b99b8">who gets what</text>
              <rect x="604" y="40" width="128" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="668" y="65" font-weight="700">Reports</text><text x="668" y="84" font-size="11" fill="#9b99b8">find patterns</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#em2a)">
                <line x1="84" y1="102" x2="84" y2="146"/>
                <line x1="230" y1="102" x2="230" y2="146"/>
                <line x1="376" y1="102" x2="376" y2="146"/>
                <line x1="522" y1="102" x2="522" y2="146"/>
                <line x1="668" y1="102" x2="668" y2="146"/>
              </g>
              <rect x="20" y="150" width="712" height="54" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="376" y="173" font-weight="700" fill="#6ee7b7">You check and decide</text>
              <text x="376" y="193" font-size="12" fill="#9b99b8">facts · prices · dates · brand voice · consent · the final send</text>
              <text x="376" y="236" font-size="12">AI is fast. You are responsible for every email you send.</text>
            </g>
          </svg>
          <figcaption>AI helps with five jobs. Every job ends with a person checking the work.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI does well, and what you must check</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>How AI helps</th><th>What you check</th></tr></thead>
            <tbody>
              <tr><td>Ideas</td><td>Lists topics, offers and themes for the month</td><td>Do they fit your business and season?</td></tr>
              <tr><td>Drafts</td><td>Writes a first version in seconds</td><td>Facts, prices, dates, links and tone</td></tr>
              <tr><td>Subject lines</td><td>Gives 10 or 20 options to choose from</td><td>No false promises or misleading words</td></tr>
              <tr><td>Segments</td><td>Suggests groups from a table of customer data</td><td>Use only data you may use. Remove names and emails before you paste.</td></tr>
              <tr><td>Reports</td><td>Explains numbers and spots patterns</td><td>Check every calculation in a spreadsheet</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Keep your brand voice</h3>
          <p>Your <strong>brand voice</strong> is the way your business sounds: friendly, formal, playful or calm. If you give AI no guidance, it writes in a general style. Many AI emails then sound the same. Give AI a short voice guide and a sample email you like.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an email about our new cake flavours.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You write emails for Sweet Crumbs, a home bakery in Maharashtra.
        Voice: warm, simple, like a neighbour talking. Short sentences. No hype words.
        Here is an email we liked: [paste a past email].
        Task: write a 120-word email about 2 new eggless flavours:
        mango cheesecake and filter coffee cake. Price: [your price].
        Goal: get readers to click "See the menu".
        Do not invent prices, discounts or delivery times.</code></pre>
          <p>The better prompt gives a role, a voice, an example, the facts and one goal. It also tells AI what not to invent.</p>
        </div>
        <div class="lc-card">
          <h3>Safety rules for AI in email</h3>
          <ul class="lc-list">
            <li><strong>Do not paste private customer data</strong> (names, emails, phone numbers, orders) into public AI tools. Use made-up or anonymised data (data with names and contact details removed).</li>
            <li><strong>Check every fact.</strong> AI can make up prices, dates, reviews and statistics that sound real.</li>
            <li><strong>Read the whole email before you send.</strong> One wrong date in a campaign reaches your whole list.</li>
            <li><strong>Keep a human decision.</strong> You choose the offer, the audience and the final words.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: order an AI email workflow</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of writing one campaign email with AI in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Decide the goal of the email and who will get it</li>
              <li data-order="2">Write a prompt with your voice guide, facts and goal</li>
              <li data-order="3">Ask AI for a draft and 10 subject line options</li>
              <li data-order="4">Edit the draft so it sounds like your brand</li>
              <li data-order="5">Check prices, dates, links and the unsubscribe link</li>
              <li data-order="6">Send a test email to yourself and read it on a phone</li>
              <li data-order="7">Schedule or send the campaign</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to write a short brand voice guide for your business. You can paste this guide at the top of every email prompt.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a brand writer who helps small businesses sound clear and human in emails.

        My business: [Rang Haath Crafts, an online handicrafts store in Rajasthan that sells block print bedsheets and cushion covers].
        My customers: [women aged 25 to 50 in Indian cities who like handmade home decor].
        How I want to sound: [warm, proud of our artisans, simple, never pushy].
        Words I never want to use: [cheap, hurry, best in the world].

        Write a brand voice guide for my emails with:
        1. Three words that describe my voice, each with one sentence of meaning.
        2. A "Do" list and a "Don't" list, 4 points each.
        3. One example sentence that fits my voice and one that does not.
        4. A 60-word sample email opening in my voice.

        Keep it under 250 words. Use simple English. Do not invent facts about my business, such as awards or customer numbers.</pre>
            <ul class="ai-try-checks">
              <li>The guide uses your words and avoids the words you banned.</li>
              <li>The sample email does not invent awards, prices or customer numbers.</li>
              <li>The do and don't lists are clear enough to reuse in other prompts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast first-draft writer, not the sender. Give it your voice, your facts and one goal. Then check every fact and read the full email before it goes to your list.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Growing Your List the Right Way</h1>
        </div>
        <p class="lc-lead">A good email list is made of people who really want your emails. You grow it with sign-up forms, a reason to join and clear consent. You never grow it by buying lists. In this lesson you will learn how to plan a sign-up form, create a lead magnet with AI and get consent the right way.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 262" role="img" aria-label="Left side, the right way: a lead magnet, a sign-up form with clear consent, a confirmation email, and an engaged list. Right side, the wrong way: a bought list, no consent, spam reports and bounces, and emails that land in spam.">
            <defs>
              <marker id="em3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#10b981"/></marker>
              <marker id="em3b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#ec4899"/></marker>
            </defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="365" height="242" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="192" y="34" font-weight="700" fill="#6ee7b7">The right way</text>
              <rect x="42" y="50" width="300" height="34" rx="8" fill="#27274e"/><text x="192" y="72">Lead magnet: free recipe PDF</text>
              <rect x="42" y="100" width="300" height="34" rx="8" fill="#27274e"/><text x="192" y="122">Sign-up form with clear consent</text>
              <rect x="42" y="150" width="300" height="34" rx="8" fill="#27274e"/><text x="192" y="172">Confirm email (double opt-in)</text>
              <rect x="42" y="200" width="300" height="34" rx="8" fill="#27274e" stroke="#10b981"/><text x="192" y="222" fill="#6ee7b7">Engaged list that trusts you</text>
              <g stroke="#10b981" stroke-width="1.5" marker-end="url(#em3a)">
                <line x1="192" y1="85" x2="192" y2="97"/>
                <line x1="192" y1="135" x2="192" y2="147"/>
                <line x1="192" y1="185" x2="192" y2="197"/>
              </g>
              <rect x="385" y="10" width="365" height="242" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="567" y="34" font-weight="700" fill="#f9a8d4">The wrong way</text>
              <rect x="417" y="50" width="300" height="34" rx="8" fill="#27274e"/><text x="567" y="72">Buy 10,000 email addresses</text>
              <rect x="417" y="100" width="300" height="34" rx="8" fill="#27274e"/><text x="567" y="122">Nobody on it said yes</text>
              <rect x="417" y="150" width="300" height="34" rx="8" fill="#27274e"/><text x="567" y="172">Spam reports and bounces</text>
              <rect x="417" y="200" width="300" height="34" rx="8" fill="#27274e" stroke="#ec4899"/><text x="567" y="222" fill="#fca5a5">Your emails go to spam</text>
              <g stroke="#ec4899" stroke-width="1.5" marker-end="url(#em3b)">
                <line x1="567" y1="85" x2="567" y2="97"/>
                <line x1="567" y1="135" x2="567" y2="147"/>
                <line x1="567" y1="185" x2="567" y2="197"/>
              </g>
            </g>
          </svg>
          <figcaption>A slow, honest list grows into trust. A bought list damages your sender reputation.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Sign-up forms and lead magnets</h3>
          <p>A <strong>sign-up form</strong> is a short form where people enter their email to join your list. You can place it on your website, in your Instagram bio link, at your shop counter (with a QR code) or at checkout.</p>
          <p>A <strong>lead magnet</strong> is a free, useful thing you give in return for the email address. It should match what you sell.</p>
          <table class="lc-table">
            <thead><tr><th>Business</th><th>Lead magnet idea</th></tr></thead>
            <tbody>
              <tr><td>Home bakery in Maharashtra</td><td>"5 eggless tea-time recipes" PDF</td></tr>
              <tr><td>Handicrafts store in Rajasthan</td><td>"How to care for block print cotton" guide</td></tr>
              <tr><td>SaaS startup in Karnataka</td><td>A free invoice template for freelancers</td></tr>
              <tr><td>Travel agency in Kerala</td><td>"3-day Kerala monsoon trip plan" checklist</td></tr>
            </tbody>
          </table>
          <p>Keep the form short. Often an email address and a first name are enough. Tell people what they will get and how often.</p>
        </div>
        <div class="lc-card">
          <h3>Getting consent the right way</h3>
          <ul class="lc-list">
            <li><strong>Say clearly what they are joining.</strong> For example: "Get our monthly recipes and offers. Unsubscribe any time."</li>
            <li><strong>Do not pre-tick the consent box.</strong> People should choose to join.</li>
            <li><strong>Use double opt-in if you can.</strong> This means the person gets a confirmation email and clicks a link to join. It keeps fake and mistyped addresses out.</li>
            <li><strong>Keep a record.</strong> Most email platforms save the date and the form where each person joined.</li>
            <li><strong>Link to your privacy policy.</strong> It explains how you use their data.</li>
          </ul>
          <p>Laws such as India's DPDP Act and Europe's GDPR have rules about consent. This is general education, not legal advice. Ask a qualified lawyer about your business.</p>
        </div>
        <div class="lc-card">
          <h3>Why you should never buy a list</h3>
          <p>A bought list is full of people who never asked for your emails. Many addresses are old or fake. People mark your emails as spam. Inbox providers see this and start sending your emails to the spam folder, even for your real subscribers. Most email platforms do not allow bought lists at all. Buying a list can also break privacy and anti-spam laws.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me ideas to get 10,000 emails fast.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run a travel agency in Kerala. Suggest 5 honest ways to grow my
        email list with people who want Kerala trip ideas. For each, give
        the place (website, Instagram, office), the offer, and the consent
        text for the form. No bought lists and no pre-ticked boxes.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: grow or harm?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Does each idea grow your list the right way, or harm it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Right way"></div>
              <div data-sorter-target="bucket" data-bucket="bad" data-label="Harms your list"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="A useful free gift that matches the business, given for a clear sign-up.">Offer a free recipe PDF for joining the list</li>
              <li data-bucket="bad" data-why="These people never agreed. Expect spam reports, bounces and possible legal trouble.">Buy a list of 5,000 emails of people in your city</li>
              <li data-bucket="bad" data-why="Consent must be a clear choice. A pre-ticked box is not.">Add a consent box at checkout that is already ticked</li>
              <li data-bucket="good" data-why="The confirmation step keeps fake and mistyped addresses out.">Send a confirmation email before adding someone</li>
              <li data-bucket="bad" data-why="Handing over a visiting card is not consent to marketing emails.">Add everyone from a pile of visiting cards to the newsletter</li>
              <li data-bucket="good" data-why="People choose to scan and join, and you can tell them what they will get.">Put a QR code sign-up at your shop counter</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a lead magnet and the text for your sign-up form. Then check that the consent text is clear and honest.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email marketing coach who helps small businesses grow their email list honestly.

        My business: [Backwater Trails, a travel agency in Kerala that sells Kerala tour packages and houseboat trips].
        My ideal subscriber: [families and couples in Indian cities who are planning a Kerala holiday].
        Where people find me: [my website, Instagram and my office].

        Please give me:
        1. Three lead magnet ideas that match my business. For each, give a title and 1 sentence on why it helps.
        2. For the best idea, write the sign-up form text: a headline (max 8 words), one short line on what they get and how often, the button text, and a consent line with an unsubscribe note.
        3. Three places to show the form.
        4. Two things I must never do to grow my list.

        Use simple English. Do not invent statistics. Add a note that consent rules vary by country and this is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>The consent line says what people get, how often, and that they can unsubscribe.</li>
              <li>The lead magnet matches what you actually sell.</li>
              <li>The answer does not suggest bought lists or pre-ticked boxes.</li>
              <li>There are no invented sign-up rates or statistics.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A small list of people who said yes is worth more than a big list of strangers. Give a useful reason to join, ask clearly, and never buy a list.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Email Metrics Explained</h1>
        </div>
        <p class="lc-lead">Every email platform shows a report after you send. The report is full of numbers called metrics. In this lesson you will learn what each main metric means and how to calculate it. You will also learn why open rate is less reliable today. Then you will use AI to explain a report, and check its maths yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A funnel for one campaign: 5,000 sent, 4,900 delivered, 1,960 opened, 147 clicked, 12 ordered. On the side: 100 bounced, 15 unsubscribed, 2 spam reports. A note says opens are less reliable because of privacy features.">
            <defs><marker id="em4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="520" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="280" y="43">Sent: 5,000</text>
              <rect x="30" y="66" width="500" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="280" y="89">Delivered: 4,900 (98% of sent)</text>
              <rect x="90" y="112" width="380" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="280" y="135">Opened: 1,960 (40%) *</text>
              <rect x="155" y="158" width="250" height="36" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="280" y="181">Clicked: 147 (3%)</text>
              <rect x="195" y="204" width="170" height="36" rx="8" fill="#27274e" stroke="#10b981"/><text x="280" y="227">Ordered: 12</text>
              <rect x="570" y="20" width="175" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="657" y="43">Bounced: 100</text>
              <rect x="570" y="112" width="175" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="657" y="135">Unsubscribed: 15</text>
              <rect x="570" y="158" width="175" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="657" y="181">Spam reports: 2</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#em4a)">
                <line x1="542" y1="38" x2="566" y2="38"/>
              </g>
              <text x="657" y="90" font-size="11" fill="#9b99b8">list health signals</text>
              <text x="380" y="268" font-size="11.5" fill="#fcd34d">* Privacy features can count opens that did not really happen.</text>
            </g>
          </svg>
          <figcaption>One sample campaign from sent to ordered, with the list health numbers on the side. All numbers are made up.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main metrics</h3>
          <p>Platforms calculate some metrics in slightly different ways. Check your platform's help pages. The common versions are below. The numbers use the sample campaign in the diagram.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>What it means</th><th>How to calculate</th><th>Sample</th></tr></thead>
            <tbody>
              <tr><td>Delivery rate</td><td>Share of emails that reached a mail server and did not bounce</td><td>delivered ÷ sent</td><td>4,900 ÷ 5,000 = 98%</td></tr>
              <tr><td>Bounce rate</td><td>Share of emails that could not be delivered. The address may be wrong or the inbox full.</td><td>bounced ÷ sent</td><td>100 ÷ 5,000 = 2%</td></tr>
              <tr><td>Open rate</td><td>Share of people who opened the email (as far as the platform can tell)</td><td>unique opens ÷ delivered</td><td>1,960 ÷ 4,900 = 40%</td></tr>
              <tr><td>Click rate</td><td>Share of people who clicked a link</td><td>unique clicks ÷ delivered</td><td>147 ÷ 4,900 = 3%</td></tr>
              <tr><td>Click-to-open rate</td><td>Of the people who opened, how many clicked</td><td>unique clicks ÷ unique opens</td><td>147 ÷ 1,960 = 7.5%</td></tr>
              <tr><td>Conversion rate</td><td>Share of clickers who did the goal, such as buying</td><td>orders ÷ unique clicks (some tools divide by delivered)</td><td>12 ÷ 147 ≈ 8.2%</td></tr>
              <tr><td>Unsubscribe rate</td><td>Share of people who left your list after this email</td><td>unsubscribes ÷ delivered</td><td>15 ÷ 4,900 ≈ 0.31%</td></tr>
            </tbody>
          </table>
          <p>"Unique" means each person is counted once, even if they opened or clicked many times. Conversion is often tracked in your shop or in Google Analytics 4, not only in the email platform.</p>
        </div>
        <div class="lc-card">
          <h3>Why open rate is less reliable now</h3>
          <p>An email platform counts an open when a tiny hidden image in the email loads. Some privacy features load these images by themselves. Apple Mail Privacy Protection is one well-known example. So an email can be counted as "opened" when no person read it. Other mail apps block images, so real opens are sometimes missed.</p>
          <ul class="lc-list">
            <li>Use open rate only to compare your own emails over time, and with care.</li>
            <li>Trust clicks, replies and orders more. A person must act for these to count.</li>
            <li>Watch unsubscribes and spam reports. They show if people are unhappy.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: check an AI report summary</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">Here are my campaign numbers: sent 5,000, bounced 100, unique opens 1,960, unique clicks 147, orders 12, unsubscribes 15. Calculate delivery, open, click and unsubscribe rates and explain them simply.</li>
              <li data-kind="answer" data-label="AI reply">Delivery rate 98%. Open rate 40%. Click rate 2.94%. Unsubscribe rate 0.3%. Your open rate is excellent, so your subject line worked very well.</li>
              <li data-kind="tool" data-label="Spreadsheet">You type the numbers into a sheet. Delivered is in B3 (4,900) and unique clicks in B5 (147). You use <code>=B5/B3</code> for click rate.</li>
              <li data-kind="result" data-label="Sheet shows">Click rate = 3.0%. The AI divided clicks by sent (5,000), not by delivered (4,900).</li>
              <li data-kind="warn" data-label="Problem 1">The AI used a different base (the number you divide by) for click rate. Small differences like this add up when you compare campaigns.</li>
              <li data-kind="warn" data-label="Problem 2">"Your subject line worked very well" is too sure. Privacy features can inflate opens, so a 40% open rate proves little alone.</li>
              <li data-kind="check" data-label="Your decision">You write down the formulas you use and keep them the same for every campaign. You judge the email mainly by clicks and orders.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own campaign numbers (or use the sample) and ask AI to explain them. Then check every number with a calculator or spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email marketing analyst who explains reports to beginners.

        Here are the results of one email campaign for [Sweet Crumbs, a home bakery in Maharashtra]:
        - Emails sent: [5,000]
        - Bounced: [100]
        - Unique opens: [1,960]
        - Unique clicks: [147]
        - Orders from the email: [12]
        - Unsubscribes: [15]
        - Spam complaints: [2]

        Please:
        1. Make a table with each metric, the formula you used, and the result. Use delivered emails (sent minus bounced) as the base for open, click and unsubscribe rates.
        2. Explain each result in one simple sentence.
        3. Add a warning about why open rate may not be reliable.
        4. Suggest 2 things to test in the next email. Base them only on these numbers.

        Show your working for every calculation. Do not compare my numbers to "industry averages" unless you name a real source, and say that averages vary.</pre>
            <ul class="ai-try-checks">
              <li>Every rate uses the base you asked for. Check each one in a spreadsheet.</li>
              <li>The answer warns that open rate can be inflated by privacy features.</li>
              <li>There are no invented industry averages without a source.</li>
              <li>The test ideas follow from your numbers, not from general guesses.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Metrics are only useful if you calculate them the same way every time. Trust actions like clicks and orders more than opens. Let AI explain the numbers, but always check the maths yourself.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Subject Lines and Preview Text</h1>
        </div>
        <p class="lc-lead">In the inbox, people see three things before they open your email: the sender name, the subject line and the preview text. These few words decide if your email gets opened or ignored. In this lesson you will use AI to write many options, choose the best ones, test them, and avoid spammy words and false promises.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 262" role="img" aria-label="A phone inbox. The top email shows the sender name Sweet Crumbs, the subject line Diwali boxes: order by 25 October, and the preview text Eggless sweets, packed fresh in Maharashtra. Labels explain each part.">
            <defs><marker id="em5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="30" y="10" width="340" height="242" rx="18" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="50" y="34" font-size="12" font-weight="700" fill="#9b99b8">Inbox</text>
              <rect x="45" y="44" width="310" height="86" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="60" y="68" font-weight="700">Sweet Crumbs</text>
              <text x="60" y="92">Diwali boxes: order by 25 Oct</text>
              <text x="60" y="115" font-size="12" fill="#9b99b8">Eggless sweets, packed fresh in Maharashtra</text>
              <rect x="45" y="142" width="310" height="46" rx="8" fill="#27274e"/>
              <rect x="60" y="154" width="140" height="8" rx="4" fill="#4b4a78"/><rect x="60" y="170" width="240" height="8" rx="4" fill="#3a3966"/>
              <rect x="45" y="196" width="310" height="46" rx="8" fill="#27274e"/>
              <rect x="60" y="208" width="120" height="8" rx="4" fill="#4b4a78"/><rect x="60" y="224" width="220" height="8" rx="4" fill="#3a3966"/>
              <rect x="440" y="30" width="300" height="46" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="456" y="50" font-weight="700" fill="#c4b5fd">Sender name</text>
              <text x="456" y="67" font-size="11" fill="#9b99b8">who it is from: build trust</text>
              <rect x="440" y="96" width="300" height="46" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="456" y="116" font-weight="700" fill="#fcd34d">Subject line</text>
              <text x="456" y="133" font-size="11" fill="#9b99b8">the main reason to open</text>
              <rect x="440" y="162" width="300" height="46" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="456" y="182" font-weight="700" fill="#6ee7b7">Preview text</text>
              <text x="456" y="199" font-size="11" fill="#9b99b8">extra detail that supports the subject</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#em5a)">
                <path d="M212,63 L436,53"/>
                <path d="M270,88 L436,119"/>
                <path d="M300,111 L436,185"/>
              </g>
            </g>
          </svg>
          <figcaption>The sender name, subject line and preview text work as a team. Many phones show only the first few words.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What makes a good subject line</h3>
          <p>The <strong>subject line</strong> is the title of your email. The <strong>preview text</strong> (also called preheader) is the short line shown after or below the subject in many inboxes. If you leave it empty, the inbox often shows the first words of your email, such as "View in browser".</p>
          <ul class="lc-list">
            <li><strong>Be clear first.</strong> Say what is inside. Clever but unclear lines often do worse.</li>
            <li><strong>Put key words early.</strong> Phones may cut long subject lines. The number of characters shown depends on the device and app.</li>
            <li><strong>Match the email.</strong> The subject must be true to the content. Never trick people into opening.</li>
            <li><strong>Use the preview text.</strong> Do not repeat the subject. Add a second reason to open.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Use AI to write many options</h3>
          <p>The first idea is rarely the best. AI can give you 15 options in seconds. You then choose the best 2 or 3.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a catchy subject line for my Diwali sale.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write 15 subject lines for a Diwali email from Sweet Crumbs, a home
        bakery in Maharashtra. Offer: eggless sweet boxes, order by 25 October.
        Audience: past customers. Voice: warm and simple.
        Use 5 styles: clear, question, benefit, deadline, curiosity (3 each).
        Keep each under 45 characters. Put the key words first.
        No ALL CAPS, no "FREE!!!", and do not promise a discount we do not offer.
        For the best 3, add preview text that adds new information.</code></pre>
          <p>Check the options yourself. Count the characters. Make sure every date and offer is true.</p>
        </div>
        <div class="lc-card">
          <h3>Avoid spammy words and false promises</h3>
          <p>Spam filters look at many signals, such as your sender reputation and whether people report you. The words alone rarely decide it. But some styles look like spam to people and to filters, and false claims can break consumer protection and anti-spam laws.</p>
          <table class="lc-table">
            <thead><tr><th>Avoid</th><th>Why</th><th>Try instead</th></tr></thead>
            <tbody>
              <tr><td>"FREE!!! ACT NOW!!!"</td><td>ALL CAPS and many "!" look like spam</td><td>"Free delivery in Maharashtra this weekend"</td></tr>
              <tr><td>"Re: your order" (when there is no order)</td><td>Fake replies trick people</td><td>"Your Diwali box menu is here"</td></tr>
              <tr><td>"Last chance!" (sent every week)</td><td>False urgency breaks trust</td><td>Use a real deadline: "Orders close Friday"</td></tr>
              <tr><td>"Guaranteed to double your sales"</td><td>A promise you cannot prove</td><td>"3 ways to plan your festive orders"</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Testing subject lines</h3>
          <p>An <strong>A/B test</strong> means you send two versions to two small random groups. The platform then sends the winner to the rest of the list. Many platforms offer this. Check your platform's help pages for how it works.</p>
          <ul class="lc-list">
            <li>Test one change at a time, for example a question against a plain statement.</li>
            <li>Choose the winner by clicks when you can, because open counts are less reliable.</li>
            <li>A small list gives noisy results. One test is a hint, not a rule.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: send, fix or never?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">A Rajasthan handicrafts store has these subject line ideas. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="send" data-label="Good to send"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Needs a fix"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never send"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="send" data-why="Clear, specific and honest. The key words come first.">New block print bedsheets from our Rajasthan artisans</li>
              <li data-bucket="fix" data-why="ALL CAPS and many exclamation marks look like spam. Keep the offer and write it calmly.">MEGA SALE!!! 50% OFF!!! OPEN NOW!!!</li>
              <li data-bucket="never" data-why="A fake reply tricks people. It is misleading.">Re: your refund (sent to people with no refund)</li>
              <li data-bucket="fix" data-why="Too long. The key words may be cut on a phone. Shorten it and put the offer first.">We are very happy to share that our brand new winter collection of quilts is finally here</li>
              <li data-bucket="never" data-why="It says only today, but the sale runs all month. That is false urgency.">Only today! (for a sale that runs all month)</li>
              <li data-bucket="send" data-why="A real deadline and a clear benefit.">Free shipping on cushion covers until Sunday</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for subject lines and preview text for your next email. Then pick two to test.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email copywriter who writes honest, clear subject lines.

        Business: [Rang Haath Crafts, an online handicrafts store in Rajasthan].
        Email topic: [our new winter quilt collection, hand block printed].
        Offer (only if real): [free shipping until Sunday].
        Audience: [past customers who bought bedsheets].
        Voice: [warm, proud of our artisans, never pushy].

        Please:
        1. Write 12 subject lines in 4 styles: clear, benefit, question, deadline (3 each).
        2. Keep each under 45 characters and show the character count.
        3. Pick the best 3 and write preview text for each (under 80 characters). The preview must add new information, not repeat the subject.
        4. Suggest one A/B test between two of them and say which metric to use to pick the winner.

        Rules: no ALL CAPS words, at most one "!" in total, no fake "Re:" or "Fwd:", no false urgency, and no offers I did not give you.</pre>
            <ul class="ai-try-checks">
              <li>Count the characters yourself. AI often counts them wrong.</li>
              <li>No subject line promises an offer or deadline you did not give.</li>
              <li>The preview text adds something new instead of repeating the subject.</li>
              <li>The test suggestion uses clicks, not only opens.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A subject line is a promise about what is inside. Use AI to write many options, then choose the clearest honest one. Test with care and judge by clicks, not only opens.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Writing Emails That Get Clicks</h1>
        </div>
        <p class="lc-lead">A good subject line gets your email opened. The email itself must then get a <strong>click</strong>. In this lesson, you will learn a simple structure for emails that people act on: one goal, a short hook, a clear body and one call to action. You will also learn to write for small phone screens, and to use AI to draft and improve your emails quickly. Clicks matter because they lead to bookings, orders and sign-ups.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A phone screen showing the parts of a marketing email from top to bottom: sender name, hook, short body, one call-to-action button, a P.S. line and a footer with the address and unsubscribe link. Notes on the right explain each part.">
            <defs><marker id="em6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="40" y="10" width="250" height="320" rx="20" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <rect x="60" y="30" width="210" height="34" rx="6" fill="#27274e"/><text x="165" y="52">From: Sweet Crumbs</text>
              <rect x="60" y="72" width="210" height="40" rx="6" fill="#27274e" stroke="#f59e0b"/><text x="165" y="97">Hook: why read now</text>
              <rect x="60" y="120" width="210" height="60" rx="6" fill="#27274e"/><text x="165" y="146">Body: 3 short lines</text><text x="165" y="165" font-size="11" fill="#9b99b8">one idea only</text>
              <rect x="85" y="190" width="160" height="36" rx="18" fill="#10b981"/><text x="165" y="213" font-weight="700" fill="#0b0b1e">Book your seat</text>
              <rect x="60" y="236" width="210" height="28" rx="6" fill="#27274e"/><text x="165" y="255" font-size="12">P.S. same link again</text>
              <rect x="60" y="274" width="210" height="40" rx="6" fill="#27274e"/><text x="165" y="298" font-size="12" fill="#9b99b8">Footer: address, unsubscribe</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#em6a)">
                <line x1="330" y1="47" x2="276" y2="47"/>
                <line x1="330" y1="92" x2="276" y2="92"/>
                <line x1="330" y1="150" x2="276" y2="150"/>
                <line x1="330" y1="208" x2="251" y2="208"/>
                <line x1="330" y1="250" x2="276" y2="250"/>
                <line x1="330" y1="294" x2="276" y2="294"/>
              </g>
              <g text-anchor="start">
                <text x="340" y="52">A sender name people know and trust</text>
                <text x="340" y="97">1 or 2 lines: the reason to keep reading</text>
                <text x="340" y="155">One idea, short lines, easy on a phone</text>
                <text x="340" y="213" fill="#6ee7b7">One clear call to action (CTA)</text>
                <text x="340" y="255">Repeat the CTA for people who skim</text>
                <text x="340" y="299" fill="#9b99b8">Honest sender details and an easy way out</text>
              </g>
            </g>
          </svg>
          <figcaption>The parts of a click-friendly email, shown for a made-up home bakery in Maharashtra that runs baking workshops.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>One email, one goal</h3>
          <p>Before you write, finish this sentence: "After reading this email, I want the reader to ___." If you have three answers, you have three emails. An email with many goals gets fewer clicks, because the reader does not know what to do first.</p>
          <p>The goal becomes your <strong>CTA</strong> (call to action: the button or link that asks the reader to do one thing).</p>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Weak CTA</th><th>Clear CTA</th></tr></thead>
            <tbody>
              <tr><td>Fill a baking workshop</td><td>Click here</td><td>Book your seat for Sunday</td></tr>
              <tr><td>Sell a new product</td><td>Learn more</td><td>See the new block-print quilts</td></tr>
              <tr><td>Get a free trial started</td><td>Submit</td><td>Start my free trial</td></tr>
              <tr><td>Get a reply</td><td>Contact us</td><td>Reply with your travel dates</td></tr>
            </tbody>
          </table>
          <p>A clear CTA starts with a verb and says what happens next. You can use the same link two or three times (a button, a text link and a P.S.). It should still point to one goal.</p>
        </div>
        <div class="lc-card">
          <h3>Write for phones</h3>
          <p>Many people read email on a phone, often while doing something else. So make the email easy to scan.</p>
          <ul class="lc-list">
            <li><strong>Short paragraphs.</strong> One to three lines each.</li>
            <li><strong>The main point near the top.</strong> Many readers never scroll.</li>
            <li><strong>A big button.</strong> It must be easy to tap with a thumb.</li>
            <li><strong>Real text, not text inside images.</strong> Some email apps hide images until the reader allows them. Add alt text (a short description of the image) to every image.</li>
            <li><strong>Not too long.</strong> Some email apps cut off very long emails and show a "view entire message" link.</li>
          </ul>
          <p>Always send a test email to yourself. Open it on a phone before you send it to your list.</p>
        </div>
        <div class="lc-card">
          <h3>Weak prompt, better prompt</h3>
          <p>A weak prompt gives the AI nothing to work with:</p>
          <pre><code>Write a marketing email for my bakery workshop.</code></pre>
          <p>The AI will guess the date, price and tone. It may also add several goals. A better prompt gives facts, one goal and rules:</p>
          <pre><code>You are an email copywriter for Sweet Crumbs, a home bakery in Maharashtra.
        Goal: get readers to book a seat at our cupcake workshop.
        Facts: Sunday 18 October, 11 am to 1 pm, home studio, ₹1,200, 12 seats.
        Reader: past customers who like baking at home.
        Write: 1 hook line, a body of 3 short paragraphs, 1 CTA button text, 1 P.S.
        Rules: under 120 words, friendly and simple, no false urgency.
        Only use the facts I gave. Do not invent reviews or numbers.</code></pre>
          <p>After the AI replies, <strong>you</strong> must still check the date, price, seat count and link. Read it aloud. Does it sound like your business? Remove anything the AI made up, such as "our most popular workshop ever".</p>
        </div>
        <div class="lc-card">
          <h3>Activity: helps clicks or hurts clicks?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each email habit.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="helps" data-label="Helps clicks"></div>
              <div data-sorter-target="bucket" data-bucket="hurts" data-label="Hurts clicks"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="helps" data-why="The reader knows exactly what happens when they tap.">A button that says "Book your seat for Sunday"</li>
              <li data-bucket="hurts" data-why="Many goals compete. The reader may do nothing.">Five different offers and five buttons in one email</li>
              <li data-bucket="hurts" data-why="Some email apps hide images, so the message disappears. It is also hard to read on a phone.">The whole message written inside one big image</li>
              <li data-bucket="helps" data-why="Short blocks are easy to scan on a small screen.">Paragraphs of one to three lines</li>
              <li data-bucket="hurts" data-why="It says nothing about what the reader will get.">A link that only says "Click here"</li>
              <li data-bucket="helps" data-why="Skimmers often read the start and the end, so they see the CTA twice.">A P.S. line that repeats the main link</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to draft a short email with one goal and one clear CTA. Change the brackets to your own business, or leave them to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email copywriter for [Sweet Crumbs, a home bakery in Maharashtra].

        The one goal of this email: [get readers to book a seat at our cupcake workshop].
        Facts (use only these): [Sunday 18 October, 11 am to 1 pm, home studio, ₹1,200 per person, 12 seats].
        Readers: [past customers who like baking at home].
        Brand voice: [warm, simple, a little playful].

        Write:
        1. A hook of 1 or 2 lines that gives a reason to keep reading.
        2. A body of 3 short paragraphs (1 to 3 lines each).
        3. Three options for the CTA button text. Each starts with a verb.
        4. A P.S. line that repeats the CTA.

        Rules: under 120 words in total. Easy to read on a phone. One goal only.
        Do not invent reviews, numbers or deadlines.
        At the end, list any facts you were not sure about.</pre>
            <ul class="ai-try-checks">
              <li>The date, time, price and place match your facts exactly.</li>
              <li>There is only one goal, and every CTA points to it.</li>
              <li>No invented reviews, "only 2 seats left" lines or other made-up claims.</li>
              <li>The paragraphs are short enough to read on a phone.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clicks come from clarity. Give each email one goal, put the point near the top and use a CTA that says exactly what happens next. AI writes the first draft fast, but you check every fact and make it sound like you.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Newsletters</h1>
        </div>
        <p class="lc-lead">A <strong>newsletter</strong> is an email you send on a regular schedule, such as every week or every month. It keeps your business in the reader's mind between sales. In this lesson, you will plan a newsletter people want to read and choose a content mix. You will also use AI to turn your blog posts, social posts and customer questions into newsletter sections. This saves hours each month, because you reuse work you have already done.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A repurposing workflow. A blog post, an Instagram post and a customer question go into an AI step that summarises and drafts. The output is a newsletter with four sections: main story, quick tip, customer question and one offer. Then you check facts, links and tone before sending.">
            <defs><marker id="em7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="95" y="22" font-size="11" fill="#9b99b8">Content you already have</text>
              <rect x="20" y="34" width="150" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="95" y="61">Blog post</text>
              <rect x="20" y="102" width="150" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="95" y="129">Instagram post</text>
              <rect x="20" y="170" width="150" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="95" y="197">Customer question</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#em7a)">
                <path d="M172,56 L226,110"/>
                <line x1="172" y1="124" x2="226" y2="124"/>
                <path d="M172,192 L226,138"/>
                <line x1="382" y1="124" x2="436" y2="124"/>
                <line x1="582" y1="124" x2="616" y2="124"/>
              </g>
              <rect x="230" y="94" width="150" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="305" y="120" font-weight="700" fill="#c4b5fd">AI</text><text x="305" y="140" font-size="12">summarise + draft</text>
              <rect x="440" y="20" width="140" height="210" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="510" y="42" font-weight="700" fill="#67e8f9">Newsletter</text>
              <rect x="452" y="54" width="116" height="34" rx="6" fill="#27274e"/><text x="510" y="76" font-size="12">1. Main story</text>
              <rect x="452" y="96" width="116" height="34" rx="6" fill="#27274e"/><text x="510" y="118" font-size="12">2. Quick tip</text>
              <rect x="452" y="138" width="116" height="34" rx="6" fill="#27274e"/><text x="510" y="160" font-size="12">3. Your Q&amp;A</text>
              <rect x="452" y="180" width="116" height="34" rx="6" fill="#27274e"/><text x="510" y="202" font-size="12">4. One offer</text>
              <rect x="620" y="94" width="125" height="60" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="682" y="120" font-weight="700" fill="#6ee7b7">You check</text><text x="682" y="140" font-size="11" fill="#9b99b8">facts, links, tone</text>
            </g>
          </svg>
          <figcaption>Repurposing: AI turns content you already made into newsletter sections. You check it before it goes out.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Plan before you write</h3>
          <p>Answer three questions first. Write the answers in one place, so every issue follows the same plan.</p>
          <ul class="lc-list">
            <li><strong>Who is it for?</strong> For example: "families in Kerala and other states who like short holidays".</li>
            <li><strong>What do they get?</strong> A clear promise, such as "one trip idea and one money-saving tip every month".</li>
            <li><strong>How often?</strong> Pick a schedule you can keep. A good monthly newsletter is better than a weekly one that stops after a month.</li>
          </ul>
          <p>Keep the same day, the same sections and the same sender name. Readers learn what to expect, and they start to look for it.</p>
        </div>
        <div class="lc-card">
          <h3>A content mix that people read</h3>
          <p>If every issue only sells, people stop opening it. Give more help than sales. Here is a sample mix for a made-up Kerala travel agency, Backwater Trails:</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>Example</th><th>Where it comes from</th></tr></thead>
            <tbody>
              <tr><td>Main story</td><td>"A 2-day Lake District plan for families"</td><td>Last month's blog post</td></tr>
              <tr><td>Quick tip</td><td>"Pack a light rain jacket, even in winter"</td><td>An Instagram post</td></tr>
              <tr><td>Your questions</td><td>"Is a houseboat safe for toddlers?"</td><td>A WhatsApp question from a customer</td></tr>
              <tr><td>One offer</td><td>"Early booking for December trips is open"</td><td>Your sales plan</td></tr>
            </tbody>
          </table>
          <p>Only one section sells. The rest help the reader. That is why people keep opening it.</p>
        </div>
        <div class="lc-card">
          <h3>Repurposing with AI</h3>
          <p><strong>Repurposing</strong> means turning one piece of content into a new format. A weak prompt asks for something new from nothing:</p>
          <pre><code>Write a travel newsletter.</code></pre>
          <p>The AI will fill it with general tips that any agency could send. A better prompt gives your own content:</p>
          <pre><code>You are the newsletter editor for Backwater Trails, a travel agency in Kerala.
        Turn the 3 items below into a monthly newsletter with 4 sections:
        main story (80 words + "Read the full guide" link), quick tip (40 words),
        customer question and answer (60 words), one offer (30 words).
        Keep our facts. Do not add prices, dates or claims that are not in my notes.
        Item 1 (blog post): [paste]
        Item 2 (Instagram caption): [paste]
        Item 3 (customer question and my answer): [paste]</code></pre>
          <p>Only paste content you own. Do not paste customer names or phone numbers. Write "a customer asked" instead. After the draft, check every fact, date and link. Then add one personal line, such as a note from the owner.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: make one newsletter issue</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for one newsletter issue in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Choose this month's main topic and the one offer</li>
              <li data-order="2">Collect your blog post, a social post and a customer question</li>
              <li data-order="3">Ask AI to turn them into the four sections, using only your facts</li>
              <li data-order="4">Check every fact, date, price and link in the draft</li>
              <li data-order="5">Add a personal line and write the subject line and preview text</li>
              <li data-order="6">Send a test to yourself, read it on a phone, then schedule it</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own content into the brackets, and let the AI build a newsletter issue. If you leave the brackets, it will use sample content.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are the newsletter editor for [Backwater Trails, a small travel agency in Kerala].
        Readers: [families in Kerala and other states who like short holidays].
        Our promise: [one trip idea and one useful tip every month].

        Turn my content below into one newsletter issue with these sections:
        1. Main story (about 80 words) ending with a "Read the full guide" link placeholder.
        2. Quick tip (about 40 words).
        3. Customer question and answer (about 60 words). Do not use any name.
        4. One offer (about 30 words).
        Also write 3 subject lines (under 50 characters) and 1 preview text line.

        My content:
        Blog post: [A 2-day Lake District plan: a lakeside walk on day 1, a boat trip on Windermere on day 2, stay near town]
        Instagram post: [Pack a light rain jacket for the hills, even in winter]
        Customer question: [Is a houseboat safe for small children? My answer: yes, if you ask for rails and life jackets]
        Offer: [Early booking for December trips is open]

        Rules: friendly and simple. Only use my facts. Do not add prices, dates or claims. Mark anything you are unsure about with [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>Every fact comes from your content. Nothing new has been added.</li>
              <li>Only one section sells. The others help the reader.</li>
              <li>No customer names or private details appear.</li>
              <li>Count the subject line characters yourself. AI often counts wrong.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A newsletter works when it is regular and useful. You do not need new ideas every month. Reuse your blog posts, social posts and customer questions, let AI shape them into sections, and check every fact before you send.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Promotional and Sales Emails</h1>
        </div>
        <p class="lc-lead">Promotional emails sell something: a sale, a new product or a festival offer. They bring in money quickly, but they can also make people unsubscribe if you push too hard. In this lesson, you will write a clear offer, add urgency without lying, plan a festival campaign and set up abandoned-cart emails. You will use AI to draft each email, and you will check that every claim is true.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A timeline of an abandoned-cart sequence. A shopper leaves items in the cart. Email 1 is a reminder a few hours later. Email 2 answers common doubts about a day later. Email 3 is an optional small offer a few days later. If the shopper buys at any point, the emails stop.">
            <defs><marker id="em8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <line x1="30" y1="130" x2="735" y2="130" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#em8a)"/>
              <circle cx="95" cy="130" r="7" fill="#f59e0b"/>
              <circle cx="275" cy="130" r="7" fill="#22d3ee"/>
              <circle cx="455" cy="130" r="7" fill="#22d3ee"/>
              <circle cx="635" cy="130" r="7" fill="#22d3ee"/>
              <rect x="20" y="30" width="150" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="95" y="58" font-weight="700" fill="#fcd34d">Cart left</text><text x="95" y="80" font-size="12" fill="#9b99b8">no purchase</text>
              <rect x="200" y="30" width="150" height="70" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="275" y="58" font-weight="700">Email 1</text><text x="275" y="80" font-size="12">Friendly reminder</text>
              <rect x="380" y="30" width="150" height="70" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="455" y="58" font-weight="700">Email 2</text><text x="455" y="80" font-size="12">Answer doubts</text>
              <rect x="560" y="30" width="150" height="70" rx="8" fill="#1f1f44" stroke="#22d3ee" stroke-dasharray="5 4"/>
              <text x="635" y="58" font-weight="700">Email 3</text><text x="635" y="80" font-size="11.5">Small offer (optional)</text>
              <g font-size="12" fill="#9b99b8">
                <text x="95" y="158">start</text>
                <text x="275" y="158">after a few hours</text>
                <text x="455" y="158">about a day later</text>
                <text x="635" y="158">a few days later</text>
              </g>
              <rect x="180" y="190" width="400" height="50" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="212" font-weight="700" fill="#6ee7b7">Shopper buys? Stop the emails.</text>
              <text x="380" y="230" font-size="11.5" fill="#9b99b8">The exit rule is as important as the emails</text>
            </g>
          </svg>
          <figcaption>A sample abandoned-cart sequence. The timing is an example only. Test what works for your shop.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A clear offer and honest urgency</h3>
          <p>A good sales email answers four questions in the first few lines: <strong>what</strong> is the offer, <strong>who</strong> is it for, <strong>when</strong> does it end, and <strong>how</strong> do I get it?</p>
          <p><strong>Urgency</strong> means giving the reader a reason to act now. It works only when it is true.</p>
          <table class="lc-table">
            <thead><tr><th>Honest urgency</th><th>Misleading urgency</th></tr></thead>
            <tbody>
              <tr><td>"Diwali orders close on 3 November, so we can deliver on time."</td><td>"Last chance!" in every email for three weeks</td></tr>
              <tr><td>"We made 40 gift boxes. 12 are left." (and it is true)</td><td>"Only 2 left!" when you have 200 in stock</td></tr>
              <tr><td>"The 10% discount ends Sunday at midnight."</td><td>A countdown timer that restarts every time the page loads</td></tr>
            </tbody>
          </table>
          <p>Fake urgency harms trust. It can also break consumer protection rules. In India, the Central Consumer Protection Authority's 2023 guidelines on "dark patterns" name false urgency as one problem. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Festival campaigns</h3>
          <p>Festivals such as Diwali, Onam, Eid, Christmas and Raksha Bandhan are busy selling times. Plan a short series, not one email. Here is a sample plan for a made-up Rajasthan handicrafts store, Rang Haath Crafts:</p>
          <table class="lc-table">
            <thead><tr><th>Email</th><th>Timing</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td>1. Teaser</td><td>About 2 weeks before</td><td>Show the new festival collection. Share the last date for delivery.</td></tr>
              <tr><td>2. Launch</td><td>Sale starts</td><td>The full offer, with the end date</td></tr>
              <tr><td>3. Gift guide</td><td>A few days later</td><td>Ideas by budget: under ₹500, under ₹1,500</td></tr>
              <tr><td>4. Last day</td><td>Final order date</td><td>A short, honest reminder</td></tr>
            </tbody>
          </table>
          <p>Leave out people who already bought from the later emails. This is called <strong>excluding buyers</strong>, and most email platforms can do it. Check your platform's help pages for how.</p>
        </div>
        <div class="lc-card">
          <h3>Abandoned-cart emails</h3>
          <p>An <strong>abandoned cart</strong> is when a shopper adds items to the cart but does not pay. Many online store tools can connect to your email platform and send reminder emails. Setup differs between tools, so follow the current help pages.</p>
          <p>A weak prompt for this email:</p>
          <pre><code>Write an email to make people finish buying.</code></pre>
          <p>A better prompt:</p>
          <pre><code>You are an email writer for Rang Haath Crafts, a handicrafts store in Rajasthan.
        Write email 2 of an abandoned-cart sequence. Send time: about a day after the cart was left.
        Goal: answer doubts, not push. Cover: free returns within 7 days, cash on delivery,
        and that each quilt is hand block-printed, so colours can vary slightly.
        CTA: "Go back to my cart". Under 90 words. No discount in this email.
        Only use these facts.</code></pre>
          <p>Check that the facts in the email match your real policies. If you do not offer free returns, the email must not say so.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: planning a Diwali campaign with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">"Plan 4 Diwali emails for Rang Haath Crafts. Offer: 10% off quilts until 3 November. We have 40 gift boxes."</li>
              <li data-kind="answer" data-label="AI reply">The AI gives a teaser, launch, gift guide and last-day email, with subject lines for each.</li>
              <li data-kind="warn" data-label="Mistake">The last-day email says "Only 3 gift boxes left!" The AI made this number up.</li>
              <li data-kind="tool" data-label="Stock sheet">You open your stock spreadsheet.</li>
              <li data-kind="result" data-label="Stock">It shows 26 gift boxes left, not 3.</li>
              <li data-kind="check" data-label="You fix it">You change the line to the true number, or remove it. You also check the end date and the discount in every email.</li>
              <li data-kind="thought" data-label="Your plan">You will exclude buyers from emails 3 and 4, so customers who already bought do not feel pushed.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to plan a short festival campaign with honest urgency. Change the brackets to your own store, festival and offer.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email marketer for [Rang Haath Crafts, a small handicrafts store in Rajasthan].
        Festival: [Diwali].
        Offer: [10% off all block-print quilts and cushion covers].
        Offer ends: [3 November, midnight]. Last date for delivery before the festival: [same day].
        Stock facts: [we made 40 festival gift boxes].
        Readers: [past customers and subscribers who like home decor].

        Plan 4 emails: teaser, launch, gift guide by budget, last day.
        For each email give:
        1. When to send it.
        2. Two subject line options (under 50 characters).
        3. The main message in 3 short lines.
        4. The CTA button text.
        Then say which emails should exclude people who already bought.

        Rules: urgency must be true and based only on my facts. No fake stock numbers, no countdowns that restart, no "last chance" before the real last day. Mark any fact you are unsure about with [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>The discount and end date are the same in every email.</li>
              <li>Every urgency line is true. No stock numbers were invented.</li>
              <li>"Last chance" only appears in the last-day email.</li>
              <li>Buyers are excluded from the later emails.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Sales emails work best when the offer is clear and the urgency is real. AI can plan a full campaign in minutes, but it often adds dramatic claims. Check every date, number and promise against your real stock and policies.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Personalisation</h1>
        </div>
        <p class="lc-lead"><strong>Personalisation</strong> means changing an email so it fits the person who gets it. "Hi Priya" is a start, but a name alone does not make an email useful. Real personalisation uses what people told you (their interests) and what they did (their behaviour). In this lesson, you will learn merge tags, content that changes for each group, and how AI helps you write versions. You will also learn where personalisation becomes creepy or breaks privacy rules.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Four steps of personalisation rising from left to right: name, location or language, interests, and behaviour. Each step gives an example for a made-up handicrafts store. A line at the bottom says to use only data people gave you, for the reason they gave it.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="170" width="170" height="60" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="105" y="193" font-weight="700">1. Name</text><text x="105" y="214" font-size="12" fill="#9b99b8">"Hi Priya"</text>
              <rect x="200" y="125" width="170" height="105" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="285" y="148" font-weight="700">2. Place, language</text><text x="285" y="169" font-size="12" fill="#9b99b8">"Delivery to Kerala</text><text x="285" y="185" font-size="12" fill="#9b99b8">in 3 days"</text>
              <rect x="380" y="80" width="170" height="150" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="465" y="103" font-weight="700">3. Interests</text><text x="465" y="124" font-size="12" fill="#9b99b8">"New blue pottery,</text><text x="465" y="140" font-size="12" fill="#9b99b8">as you asked"</text>
              <rect x="560" y="35" width="180" height="195" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="650" y="58" font-weight="700">4. Behaviour</text><text x="650" y="79" font-size="12" fill="#9b99b8">"Quilts to go with</text><text x="650" y="95" font-size="12" fill="#9b99b8">your last order"</text>
              <text x="380" y="30" font-size="12" fill="#9b99b8">more useful, but needs more care with data</text>
              <text x="380" y="262" font-size="12.5" fill="#fcd34d">Use only data people gave you, for the reason they gave it.</text>
            </g>
          </svg>
          <figcaption>Each step makes the email more useful. Each step also needs more care with customer data.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Merge tags and fallbacks</h3>
          <p>A <strong>merge tag</strong> is a placeholder that your email platform fills with each person's data when it sends the email. For example, in Mailchimp <code>*|FNAME|*</code> becomes the first name. Other platforms use a different format, so check your platform's help pages.</p>
          <p>Always set a <strong>fallback</strong> (the text used when the data is empty). Without one, a person with no saved name may see "Hi ," or even the raw tag.</p>
          <table class="lc-table">
            <thead><tr><th>Data in your list</th><th>Without a fallback</th><th>With fallback "there"</th></tr></thead>
            <tbody>
              <tr><td>First name: Priya</td><td>Hi Priya,</td><td>Hi Priya,</td></tr>
              <tr><td>First name: (empty)</td><td>Hi ,</td><td>Hi there,</td></tr>
              <tr><td>First name: PRIYA S</td><td>Hi PRIYA S,</td><td>Hi PRIYA S, (clean your data)</td></tr>
            </tbody>
          </table>
          <p>Send test emails to a few test contacts, including one with empty fields. Most platforms also have a preview mode that shows the email for one contact.</p>
        </div>
        <div class="lc-card">
          <h3>Beyond the name: interests and behaviour</h3>
          <p>Ask for interests on your sign-up form, for example with tick boxes: "Quilts", "Blue pottery", "Corporate gifts". Then send each group a version that fits. Many platforms can show a different block of content to each group inside one email. This is often called <strong>dynamic content</strong>.</p>
          <p>AI is good at writing these versions. A weak prompt:</p>
          <pre><code>Personalise this email for my customers.</code></pre>
          <p>A better prompt names the groups and the data you have:</p>
          <pre><code>Here is our new-arrivals email for Rang Haath Crafts, a Rajasthan handicrafts store.
        Write 3 versions of the middle paragraph (50 words each), one for each interest group:
        quilts, blue pottery, corporate gifts.
        Keep the subject line, CTA and offer the same in all versions.
        Use the merge tag *|FNAME|* in the greeting. The fallback will be "there".
        Do not mention past purchases or browsing.
        [paste email]</code></pre>
          <p>Do not paste real customer lists into a public AI tool. The AI only needs the group names, not the people.</p>
        </div>
        <div class="lc-card">
          <h3>Privacy limits</h3>
          <ul class="lc-list">
            <li><strong>Use data for the reason people gave it.</strong> An address given for delivery is not permission for anything and everything.</li>
            <li><strong>Do not sound like you are watching.</strong> "We saw you look at this quilt 6 times last night" feels creepy. "Still thinking about the indigo quilt?" is softer.</li>
            <li><strong>Avoid sensitive guesses.</strong> Do not guess health, religion, money problems or similar details from behaviour.</li>
            <li><strong>Follow the law.</strong> Laws such as India's DPDP Act and the EU's GDPR set rules for personal data. This is general information, not legal advice. Ask a qualified professional for your case.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: helpful or creepy?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each personalisation idea for a handicrafts store.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Helpful"></div>
              <div data-sorter-target="bucket" data-bucket="bad" data-label="Creepy or risky"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="The reader chose this interest on the sign-up form.">Showing pottery news to people who ticked "Blue pottery"</li>
              <li data-bucket="bad" data-why="It tells the reader you tracked every visit. It feels like being watched.">"We saw you view this quilt 6 times at 2 am"</li>
              <li data-bucket="ok" data-why="This uses the delivery city to give useful, true information.">Showing the delivery time for the reader's city</li>
              <li data-bucket="bad" data-why="It guesses a private, sensitive detail from behaviour.">"Money tight this month? Here are our cheapest items"</li>
              <li data-bucket="ok" data-why="It is based on a real order and gives care advice the buyer can use.">Care tips for the quilt someone bought last week</li>
              <li data-bucket="bad" data-why="Customer data should not go into a public AI tool. Share group names, not people.">Pasting the full customer list into a free AI chat to "personalise it"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to write interest-based versions of one email, with a merge tag and a fallback. Change the brackets to your own business and groups.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email copywriter for [Rang Haath Crafts, a small handicrafts store in Rajasthan].

        This month's email: [our new winter collection is now online, with free delivery on orders above ₹1,500].
        Our subscribers chose one interest on the sign-up form: [quilts], [blue pottery] or [corporate gifts].

        Write:
        1. One greeting line using the merge tag [*|FNAME|*]. Show the fallback text to use when the name is empty.
        2. Three versions of the middle paragraph (about 50 words each), one for each interest group.
        3. One subject line that works for all groups (under 50 characters).
        4. One CTA button text that is the same for all groups.

        Rules: keep the offer and facts the same in every version. Only use my facts.
        Do not mention browsing history, past orders or any sensitive detail.
        At the end, list 2 things I should test before sending.</pre>
            <ul class="ai-try-checks">
              <li>The merge tag matches your platform's format, and there is a fallback.</li>
              <li>The offer and delivery rule are the same in all three versions.</li>
              <li>Each version truly fits its group, not just a changed word.</li>
              <li>Nothing sounds creepy or guesses private details.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good personalisation is about relevance, not the first name. Use what people chose to tell you, write versions for each group with AI, set fallbacks for empty data, and never make readers feel watched.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Segmentation</h1>
        </div>
        <p class="lc-lead"><strong>Segmentation</strong> means splitting your email list into smaller groups, called segments, based on something they share. You then send each group the emails that fit them. A new subscriber and a customer who has ordered ten times need different messages. In this lesson, you will learn the main types of segments. You will use AI to suggest segments from a table of your list data. Then you will check the counts yourself in a spreadsheet.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A full list of 2,400 contacts for a made-up home bakery in Maharashtra splits into four segments: new subscribers, repeat buyers, inactive contacts and people interested in corporate orders. Each segment shows a sample size and the message it gets.">
            <defs><marker id="em10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="260" y="14" width="240" height="54" rx="10" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="380" y="37" font-weight="700" fill="#67e8f9">Full list</text><text x="380" y="57" font-size="12" fill="#9b99b8">2,400 contacts (sample)</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#em10a)">
                <path d="M300,70 L100,116"/>
                <path d="M350,70 L285,116"/>
                <path d="M410,70 L475,116"/>
                <path d="M460,70 L660,116"/>
              </g>
              <rect x="20" y="120" width="165" height="130" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="102" y="145" font-weight="700">New</text>
              <text x="102" y="165" font-size="11.5" fill="#9b99b8">joined in last 30 days</text>
              <text x="102" y="192" font-size="18" font-weight="700">310</text>
              <text x="102" y="228" font-size="12" fill="#6ee7b7">welcome + best sellers</text>
              <rect x="205" y="120" width="165" height="130" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="287" y="145" font-weight="700">Repeat buyers</text>
              <text x="287" y="165" font-size="11.5" fill="#9b99b8">3 or more orders</text>
              <text x="287" y="192" font-size="18" font-weight="700">420</text>
              <text x="287" y="228" font-size="12" fill="#6ee7b7">early access, thanks</text>
              <rect x="390" y="120" width="165" height="130" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="472" y="145" font-weight="700">Inactive</text>
              <text x="472" y="165" font-size="11.5" fill="#9b99b8">no click in 90 days</text>
              <text x="472" y="192" font-size="18" font-weight="700">880</text>
              <text x="472" y="228" font-size="12" fill="#6ee7b7">"still interested?"</text>
              <rect x="575" y="120" width="165" height="130" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="657" y="145" font-weight="700">Corporate</text>
              <text x="657" y="165" font-size="11.5" fill="#9b99b8">ticked "office orders"</text>
              <text x="657" y="192" font-size="18" font-weight="700">95</text>
              <text x="657" y="228" font-size="12" fill="#6ee7b7">bulk order menu</text>
            </g>
          </svg>
          <figcaption>Sample segments for a made-up home bakery in Maharashtra. One person can be in more than one segment, so the numbers do not add up to 2,400.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four common ways to segment</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Based on</th><th>Example segment</th></tr></thead>
            <tbody>
              <tr><td>Behaviour</td><td>What people do on your site or in your emails</td><td>Clicked the "cakes" link in the last 30 days</td></tr>
              <tr><td>Purchase</td><td>What and how often they buy</td><td>3 or more orders; spent over ₹5,000 in total</td></tr>
              <tr><td>Interest</td><td>What they told you, for example on a form</td><td>Ticked "office orders"</td></tr>
              <tr><td>Activity</td><td>How recently they engaged</td><td>No click in 90 days (inactive)</td></tr>
            </tbody>
          </table>
          <p>Be careful with opens. Some email apps, such as Apple Mail with Mail Privacy Protection, can load emails automatically. This can count an "open" even when nobody read the email. So clicks and purchases are safer signs of real activity.</p>
          <p>Start with two or three segments that change what you send. A segment is only useful if it gets a different message.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to suggest segments</h3>
          <p>Export a few columns from your email platform or store into a spreadsheet. Remove names, emails and phone numbers first. Use a customer ID instead. Then paste a small sample into the AI.</p>
          <pre><code>ID    Joined       Orders  Total ₹  Days since last click  Interest
        C001  2026-09-10   1       650      3                      cakes
        C002  2025-03-02   7       8,400    12                     cakes
        C003  2024-11-20   2       1,100    140                    cookies
        C004  2026-01-15   0       0        95                     office orders
        C005  2025-06-08   4       3,900    40                     office orders</code></pre>
          <p>A weak prompt: <em>"Segment my customers."</em> A better prompt:</p>
          <pre><code>You are an email marketer for Sweet Crumbs, a bakery in Maharashtra.
        Below is a sample of our list (IDs only, no personal data).
        Suggest 3 to 5 segments. For each one give: a name, a clear rule using
        these columns, the message it should get, and a Google Sheets COUNTIFS
        formula to count it. Say if a segment is likely too small to be useful.</code></pre>
          <p>The AI may say "C003 is a repeat buyer" or give a wrong count. Always check the rules and numbers yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Check the counts in a spreadsheet</h3>
          <p>Say your full export has Orders in column C and "Days since last click" in column E. You can count segments like this:</p>
          <pre><code>Repeat buyers (3+ orders):              =COUNTIF(C:C,"&gt;=3")
        Inactive (no click in 90+ days):        =COUNTIF(E:E,"&gt;=90")
        Active repeat buyers (both rules):      =COUNTIFS(C:C,"&gt;=3",E:E,"&lt;90")</code></pre>
          <p>Compare these counts with the AI's numbers and with your email platform's segment count. If they are very different, check the rule and the data. Then build the segment inside your email platform, because that is where the list updates each day.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: building segments with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Export">You export customer ID, orders, total spent, days since last click and interest into a spreadsheet. You delete names and emails.</li>
              <li data-kind="user" data-label="Your prompt">"Suggest 4 segments from this sample, with a rule, a message and a COUNTIFS formula for each."</li>
              <li data-kind="answer" data-label="AI reply">The AI suggests: New, Repeat buyers (3+ orders), Inactive (no click in 90+ days) and Corporate. It says about 600 people are repeat buyers.</li>
              <li data-kind="tool" data-label="Spreadsheet">You run =COUNTIF(C:C,"&gt;=3") on the full export.</li>
              <li data-kind="result" data-label="Real count">The spreadsheet shows 420, not 600.</li>
              <li data-kind="warn" data-label="Mistake">The AI only saw a small sample. It guessed the size of the full list. Never trust AI counts for data it has not seen.</li>
              <li data-kind="check" data-label="You decide">You keep the four rules, use your own counts and build the segments in your email platform.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to suggest segments from a small, anonymous sample of list data. Replace the sample with your own columns, or keep it to see how it works.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email marketing adviser for [Sweet Crumbs, a home bakery in Maharashtra].
        Below is a small sample of our email list. It has IDs only, no personal data.
        Columns: ID | Joined | Orders | Total spent (₹) | Days since last click | Interest
        [C001 | 2026-09-10 | 1 | 650 | 3 | cakes
        C002 | 2025-03-02 | 7 | 8400 | 12 | cakes
        C003 | 2024-11-20 | 2 | 1100 | 140 | cookies
        C004 | 2026-01-15 | 0 | 0 | 95 | office orders
        C005 | 2025-06-08 | 4 | 3900 | 40 | office orders
        C006 | 2026-08-30 | 0 | 0 | 20 | cookies]

        Tasks:
        1. Suggest 3 to 5 segments. For each: a short name, an exact rule using these columns, and which sample IDs fit it.
        2. For each segment, suggest the kind of email it should get.
        3. Give a Google Sheets COUNTIFS formula for each rule. Assume the columns are A to F in the order above.
        4. Say which segment might be too small to be useful.

        Rules: do not guess the size of my full list. Use clicks and orders, not opens, to judge activity.</pre>
            <ul class="ai-try-checks">
              <li>Each sample ID really matches the rule the AI gave.</li>
              <li>The COUNTIFS formulas use the right columns (for example, Orders is column C).</li>
              <li>Every segment gets a different message. Otherwise it is not needed.</li>
              <li>The AI did not invent counts for your full list.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Segments let you send the right email to the right people. AI is good at suggesting segment ideas and rules from a sample, but it cannot count data it has not seen. Remove personal data before you paste, and check every count in your spreadsheet or email platform.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Welcome and Nurture Sequences</h1>
        </div>
        <p class="lc-lead">A <strong>sequence</strong> is a set of emails that your email platform sends by itself, in order, after something happens. A <strong>welcome sequence</strong> starts when a person joins your list. A <strong>nurture sequence</strong> helps people who are interested but not ready to buy yet. You write these emails once, and they work for every new subscriber. In this lesson, you will map a sequence, choose the timing and use AI to write each email.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A welcome sequence. A person joins the list, then gets five emails on day 0, 2, 4, 7 and 10. An exit rule stops the emails when the person buys. Buyers move to customer emails. People who do not buy move to a nurture sequence.">
            <defs><marker id="em11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="110" height="70" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="65" y="60" font-weight="700">Trigger</text>
              <text x="65" y="80" font-size="11" fill="#9b99b8">joins the list</text>
              <rect x="138" y="30" width="108" height="70" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="192" y="50" font-size="11" fill="#9b99b8">Day 0</text>
              <text x="192" y="70" font-weight="700">Welcome</text>
              <text x="192" y="88" font-size="11" fill="#9b99b8">send the gift</text>
              <rect x="264" y="30" width="108" height="70" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="318" y="50" font-size="11" fill="#9b99b8">Day 2</text>
              <text x="318" y="70" font-weight="700">Our story</text>
              <text x="318" y="88" font-size="11" fill="#9b99b8">why we exist</text>
              <rect x="390" y="30" width="108" height="70" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="444" y="50" font-size="11" fill="#9b99b8">Day 4</text>
              <text x="444" y="70" font-weight="700">Best sellers</text>
              <text x="444" y="88" font-size="11" fill="#9b99b8">3 top picks</text>
              <rect x="516" y="30" width="108" height="70" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="570" y="50" font-size="11" fill="#9b99b8">Day 7</text>
              <text x="570" y="70" font-weight="700">Reviews</text>
              <text x="570" y="88" font-size="11" fill="#9b99b8">real buyers</text>
              <rect x="642" y="30" width="108" height="70" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="696" y="50" font-size="11" fill="#9b99b8">Day 10</text>
              <text x="696" y="70" font-weight="700">First offer</text>
              <text x="696" y="88" font-size="11" fill="#9b99b8">a small code</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#em11a)">
                <line x1="121" y1="65" x2="136" y2="65"/>
                <line x1="247" y1="65" x2="262" y2="65"/>
                <line x1="373" y1="65" x2="388" y2="65"/>
                <line x1="499" y1="65" x2="514" y2="65"/>
                <line x1="625" y1="65" x2="640" y2="65"/>
                <line x1="444" y1="102" x2="444" y2="130"/>
                <line x1="300" y1="178" x2="283" y2="202"/>
                <line x1="590" y1="178" x2="600" y2="202"/>
              </g>
              <rect x="138" y="134" width="612" height="44" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="444" y="161">Exit rule: stop the welcome emails as soon as the person buys</text>
              <rect x="138" y="206" width="290" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="283" y="233">Buys: move to customer emails</text>
              <rect x="450" y="206" width="300" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="600" y="233">No sale yet: move to nurture</text>
            </g>
          </svg>
          <figcaption>A sequence has a trigger, a set of emails with delays, and an exit rule. Map all three before you write any email.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Welcome sequence or nurture sequence?</h3>
          <p>Every sequence has three parts. The <strong>trigger</strong> is the action that starts it, for example a sign-up. The <strong>delay</strong> is the wait between two emails. The <strong>exit rule</strong> is the action that stops it, for example a purchase.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Welcome sequence</th><th>Nurture sequence</th></tr></thead>
            <tbody>
              <tr><td><strong>Trigger</strong></td><td>A person joins your list</td><td>The welcome emails end with no sale, or a person downloads a guide</td></tr>
              <tr><td><strong>Goal</strong></td><td>Say hello, deliver what you promised, build trust, get a first sale</td><td>Stay helpful until the person is ready to buy</td></tr>
              <tr><td><strong>Length</strong></td><td>Often 3 to 6 emails over one or two weeks</td><td>Often 4 to 8 emails, spread over a few weeks</td></tr>
              <tr><td><strong>Example</strong></td><td>A Rajasthan handicrafts store welcomes a new subscriber</td><td>A software startup in Karnataka sends tips to free-trial users</td></tr>
            </tbody>
          </table>
          <p>Send the first welcome email right away. People expect it within minutes of signing up. After that, a gap of two or three days between emails is a common starting point. Test what works for your list.</p>
        </div>
        <div class="lc-card">
          <h3>Map the sequence first</h3>
          <p>Write a simple map in a spreadsheet before you write any email. Here is a map for <em>Rang Haath Crafts</em>, a made-up handicrafts store in Rajasthan. Its sign-up form promises a free guide to caring for block-print cotton.</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Day</th><th>Goal</th><th>Main idea</th><th>Call to action</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>0</td><td>Deliver the gift</td><td>Thank you, here is your care guide</td><td>Download the guide</td></tr>
              <tr><td>2</td><td>2</td><td>Build trust</td><td>Meet our artisans in Rajasthan</td><td>Watch a 1-minute video</td></tr>
              <tr><td>3</td><td>4</td><td>Show products</td><td>Our 3 best-selling quilts</td><td>See the quilts</td></tr>
              <tr><td>4</td><td>7</td><td>Remove doubt</td><td>Customer reviews and our return policy</td><td>Read the reviews</td></tr>
              <tr><td>5</td><td>10</td><td>First sale</td><td>A welcome code for the first order</td><td>Shop with the code</td></tr>
            </tbody>
          </table>
          <p>A <strong>call to action</strong> (CTA) is the one thing you ask the reader to do, usually a button. Give each email one goal and one main CTA.</p>
          <p>Add the exit rule to the map. If a person buys after email 3, they should not get email 5 with the discount code. That would feel careless, and it gives away money you did not need to.</p>
        </div>
        <div class="lc-card">
          <h3>Write each email with AI</h3>
          <p>AI is good at turning your map into drafts. Give it the map, your brand voice and your facts. Do not ask for "a welcome series" with no details.</p>
          <pre><code>Weak:
        Write a welcome email series for my shop.</code></pre>
          <pre><code>Better:
        You write emails for [Rang Haath Crafts], a handicrafts store in [Rajasthan].
        Voice: warm, simple, proud of our artisans. No hype.
        Here is my sequence map: [paste the table].
        Write email 3 only. Include: subject line, preview text,
        body under 120 words, and one button text.
        Use only the facts in the map. Write [check] if you need a fact I did not give.</code></pre>
          <p>Write one email at a time. Then ask AI to read all five together and check that they do not repeat each other.</p>
          <p><strong>What you must still check:</strong></p>
          <ul class="lc-list">
            <li>Prices, product names, codes and dates are real and correct.</li>
            <li>The discount code works and has the right end date.</li>
            <li>Every link and button goes to the right page.</li>
            <li>The tone is the same in all emails.</li>
            <li>The trigger, delays and exit rule are set up correctly in your email platform. Send test emails to yourself first.</li>
          </ul>
          <p>Most email platforms (such as Mailchimp, Brevo or Zoho Campaigns) have a tool for automated emails. The names and steps differ, so check your platform's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a sequence in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps in the order you would do them.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Choose the goal and the trigger of the sequence</li>
              <li data-order="2">Map the emails, the delays and the exit rule in a table</li>
              <li data-order="3">Ask AI to draft each email from the map, one at a time</li>
              <li data-order="4">Check facts, codes, links and tone in every draft</li>
              <li data-order="5">Set up the automation in your email platform and send test emails to yourself</li>
              <li data-order="6">Turn it on, then review clicks and sales after a few weeks</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to map a welcome sequence for your business and draft the first email. Change the details in [brackets], or leave them to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email marketer for [Rang Haath Crafts, a small handicrafts store in Rajasthan that sells block-print quilts and bedsheets online].
        New subscribers get [a free guide to caring for block-print cotton].
        Brand voice: [warm, simple, proud of our artisans].

        Task 1: Map a 5-email welcome sequence as a table with these columns:
        email number, send day, goal, main idea, call to action.
        Send email 1 right away. Add an exit rule for people who buy.

        Task 2: Write email 1 in full:
        - 3 subject line options (under 45 characters)
        - preview text (under 90 characters)
        - body under 120 words, easy to read on a phone
        - one button text

        Rules: Do not invent prices, discounts, reviews or delivery times. Write [check] where a real fact is needed.</pre>
            <ul class="ai-try-checks">
              <li>Email 1 is sent right away and delivers the promised gift</li>
              <li>Each email has one goal and one call to action</li>
              <li>There is an exit rule, so buyers do not get the first-order offer</li>
              <li>No invented prices, reviews or delivery times: missing facts show [check]</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Plan the sequence before you write it. A clear map with a trigger, delays and an exit rule makes AI drafts better. It also stops mistakes like sending a discount to someone who already bought.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Deliverability Basics</h1>
        </div>
        <p class="lc-lead">A great email is useless if it lands in the spam folder. <strong>Deliverability</strong> means how well your emails reach the inbox. Inbox providers such as Gmail, Yahoo and Outlook decide where each email goes. In this lesson, you will learn what they look at, what SPF, DKIM and DMARC mean in simple words, and how to keep your list clean. You will also see how AI can help, and where it cannot.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Your email goes through identity checks (SPF, DKIM, DMARC), then the inbox provider looks at your sender reputation (complaints, bounces, engagement, history). Then it goes to the inbox or the spam folder.">
            <defs><marker id="em12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="80" width="130" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="75" y="110" font-weight="700">Your email</text>
              <text x="75" y="130" font-size="11" fill="#9b99b8">from your domain</text>
              <rect x="175" y="40" width="170" height="150" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="260" y="66" font-weight="700">Identity checks</text>
              <text x="260" y="100" font-size="12">SPF: allowed server?</text>
              <text x="260" y="128" font-size="12">DKIM: signature OK?</text>
              <text x="260" y="156" font-size="12">DMARC: rule if fail</text>
              <rect x="380" y="40" width="170" height="150" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="465" y="66" font-weight="700">Sender reputation</text>
              <text x="465" y="94" font-size="12" fill="#9b99b8">spam complaints</text>
              <text x="465" y="116" font-size="12" fill="#9b99b8">bounces</text>
              <text x="465" y="138" font-size="12" fill="#9b99b8">opens and clicks</text>
              <text x="465" y="160" font-size="12" fill="#9b99b8">sending history</text>
              <rect x="590" y="40" width="160" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="670" y="66" font-weight="700" fill="#6ee7b7">Inbox</text>
              <text x="670" y="86" font-size="11" fill="#9b99b8">checks pass + trust</text>
              <rect x="590" y="130" width="160" height="60" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="670" y="156" font-weight="700" fill="#f9a8d4">Spam folder</text>
              <text x="670" y="176" font-size="11" fill="#9b99b8">fails or complaints</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#em12a)">
                <line x1="141" y1="115" x2="172" y2="115"/>
                <line x1="346" y1="115" x2="377" y2="115"/>
                <line x1="551" y1="105" x2="587" y2="75"/>
                <line x1="551" y1="125" x2="587" y2="155"/>
              </g>
              <text x="380" y="222" font-size="12" fill="#9b99b8">The inbox provider (Gmail, Yahoo, Outlook) decides, not your email platform.</text>
            </g>
          </svg>
          <figcaption>First the inbox provider checks that the email really comes from you. Then it checks if people trust your emails.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What decides inbox or spam</h3>
          <p>Your <strong>sender reputation</strong> is how much inbox providers trust your emails. It is built from how people react to your emails over time.</p>
          <table class="lc-table">
            <thead><tr><th>Signal</th><th>What it means</th><th>Good sign</th></tr></thead>
            <tbody>
              <tr><td><strong>Spam complaints</strong></td><td>People click "Report spam"</td><td>Very few complaints</td></tr>
              <tr><td><strong>Hard bounces</strong></td><td>The email address does not exist, so the email comes back</td><td>Almost none</td></tr>
              <tr><td><strong>Soft bounces</strong></td><td>A short-term problem, for example a full inbox</td><td>Low, and not the same people every time</td></tr>
              <tr><td><strong>Engagement</strong></td><td>People open, click, reply or move your email out of spam</td><td>Steady or growing</td></tr>
              <tr><td><strong>Sending pattern</strong></td><td>How many emails you send, and how often</td><td>Regular, with no sudden jumps</td></tr>
            </tbody>
          </table>
          <p>The biggest cause of complaints is emailing people who did not ask for your emails. A bought list damages your reputation fast. Only email people who gave you consent.</p>
        </div>
        <div class="lc-card">
          <h3>SPF, DKIM and DMARC in simple words</h3>
          <p><strong>Authentication</strong> means proving that an email really comes from your business. It uses records in your <strong>domain's DNS settings</strong> (the settings for your website address, such as <code>ranghaath.in</code>). Your email platform tells you which records to add. You or your web person add them where you manage your domain.</p>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><strong>SPF</strong> (Sender Policy Framework)</td><td>A list of the servers that may send email for your domain</td></tr>
              <tr><td><strong>DKIM</strong> (DomainKeys Identified Mail)</td><td>A digital signature on each email. It shows the email came from your domain and was not changed on the way.</td></tr>
              <tr><td><strong>DMARC</strong></td><td>Your rule for failed checks: do nothing, send to spam, or reject. It also sends you reports.</td></tr>
            </tbody>
          </table>
          <p>Send from an address on your own domain, such as <code>hello@ranghaath.in</code>. Do not send marketing email from a free Gmail or Yahoo address through an email platform. It cannot pass these checks.</p>
          <p><strong>Rules from Gmail and Yahoo:</strong> Since 2024, both have stricter rules for bulk senders. Gmail's rules apply to senders of around 5,000 or more emails a day to Gmail addresses. In general, they ask you to:</p>
          <ul class="lc-list">
            <li>Set up SPF, DKIM and DMARC, with your "From" domain matching the checked domain.</li>
            <li>Offer one-click unsubscribe, plus a clear unsubscribe link in the email.</li>
            <li>Stop emailing people quickly after they unsubscribe (Gmail and Yahoo say within two days).</li>
            <li>Keep the spam complaint rate very low. Google shows your rate in its free Postmaster Tools.</li>
          </ul>
          <p>Since May 2025, Microsoft has similar rules for senders of more than 5,000 emails a day to Outlook.com addresses. Even a small sender should follow these rules. The details and limits change, so check each provider's current sender guidelines.</p>
        </div>
        <div class="lc-card">
          <h3>Clean your list, and let AI help</h3>
          <p><strong>List cleaning</strong> means removing addresses that hurt your reputation. Remove hard bounces at once. Most platforms do this for you. For people who have not opened or clicked in a long time (for example six months), send a short <strong>re-engagement email</strong>: "Do you still want our emails?" If they do not respond, stop emailing them.</p>
          <p>Remember that opens are not fully reliable. Some email apps, such as Apple Mail, can load emails automatically. So a person may look "active" when they are not. Clicks are a better sign.</p>
          <p><strong>Example:</strong> <em>Backwater Trails</em>, a made-up travel agency in Kerala, sees more emails going to spam. Its report (sample numbers): 8,000 sent, 3% hard bounces, 2,900 people with no click in a year. A better prompt for AI:</p>
          <pre><code>You are an email deliverability adviser for a small travel agency.
        Report: 8,000 sent, 3% hard bounces, 0.2% spam complaints,
        2,900 subscribers with no click in 12 months.
        SPF: set up. DKIM: set up. DMARC: [not set up].
        List the 5 most likely problems and a fix for each, most urgent first.
        Say what I should check in my email platform or Postmaster Tools.</code></pre>
          <p>AI can explain terms, read a DMARC report you paste in, and draft a re-engagement email. But AI cannot see your real reputation or your DNS records. Check the facts in your email platform and in tools like Google Postmaster Tools. Do not paste subscriber email addresses into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: helps or hurts deliverability?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each action. Does it help or hurt your chance of reaching the inbox?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="help" data-label="Helps"></div>
              <div data-sorter-target="bucket" data-bucket="hurt" data-label="Hurts"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="help" data-why="SPF, DKIM and DMARC prove the email is really from you. Gmail and Yahoo require them for bulk senders.">Setting up SPF, DKIM and DMARC for your domain</li>
              <li data-bucket="hurt" data-why="People on a bought list never asked for your emails. Many will report spam, and many addresses will bounce.">Buying a list of 20,000 email addresses</li>
              <li data-bucket="help" data-why="Removing people who never engage lowers bounces and complaints.">Sending a re-engagement email, then removing people who do not respond</li>
              <li data-bucket="hurt" data-why="If unsubscribing is hard, people press 'Report spam' instead.">Hiding the unsubscribe link in tiny grey text</li>
              <li data-bucket="hurt" data-why="A sudden jump in volume looks like spam. Increase sending slowly.">Sending 50,000 emails from a new domain on its first day</li>
              <li data-bucket="help" data-why="Emails people want get clicks and replies. That builds trust with inbox providers.">Sending useful emails at a steady, expected rate</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a deliverability check-up plan and a re-engagement email. Change the details in [brackets], or leave them to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email deliverability adviser. Explain things in simple English for a small business owner with no technical skills.

        My business: [Backwater Trails, a travel agency in Kerala].
        Email platform: [a common email platform].
        List size: [8,000]. We send [one newsletter a week].
        Problem: [more of our emails go to spam. Hard bounces are 3%. About 2,900 people have not clicked in 12 months.]
        Setup: SPF [yes], DKIM [yes], DMARC [not sure].

        Please give me:
        1. A check-up list of 6 to 8 items, most urgent first. For each item, say where I check it (my email platform, my domain settings or Google Postmaster Tools).
        2. SPF, DKIM and DMARC explained in one sentence each.
        3. A short re-engagement email (subject line plus body under 80 words) that asks inactive people if they still want our emails.

        Do not invent numbers or limits. If a rule may have changed, tell me to check the provider's current guidelines.</pre>
            <ul class="ai-try-checks">
              <li>The plan puts authentication and removing bad addresses near the top</li>
              <li>SPF, DKIM and DMARC explanations are simple and correct</li>
              <li>The re-engagement email makes it easy to stay or leave</li>
              <li>No made-up limits or numbers are presented as official rules</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Inbox providers ask two questions: "Is this email really from you?" and "Do people want it?" Authentication answers the first. Consent, useful emails and a clean list answer the second.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">A/B Tests and Email Reports</h1>
        </div>
        <p class="lc-lead">An <strong>A/B test</strong> sends two versions of an email to two small, random groups. Then you see which version works better. An <strong>email report</strong> shows what happened after you sent a campaign. In this lesson, you will plan a fair test, read a report with AI and check the maths yourself. AI is quick at explaining numbers, but it can make calculation mistakes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A list of 10,000 is split. 1,000 get version A, 1,000 get version B, and 8,000 wait. The clicks of A and B are compared. The winner is sent to the other 8,000.">
            <defs><marker id="em13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="100" width="120" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="70" y="126" font-weight="700">Your list</text>
              <text x="70" y="146" font-size="11" fill="#9b99b8">10,000 people</text>
              <rect x="170" y="20" width="150" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="245" y="46" font-weight="700">Version A</text>
              <text x="245" y="66" font-size="11" fill="#9b99b8">1,000 people</text>
              <rect x="170" y="110" width="150" height="60" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="245" y="136" font-weight="700">Version B</text>
              <text x="245" y="156" font-size="11" fill="#9b99b8">1,000 people</text>
              <rect x="170" y="190" width="150" height="60" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="245" y="216" font-weight="700">The rest</text>
              <text x="245" y="236" font-size="11" fill="#9b99b8">8,000 people wait</text>
              <rect x="370" y="55" width="160" height="80" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="450" y="85" font-weight="700">Compare</text>
              <text x="450" y="105" font-size="11" fill="#9b99b8">one metric, chosen</text>
              <text x="450" y="121" font-size="11" fill="#9b99b8">before the test</text>
              <rect x="580" y="55" width="170" height="80" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="665" y="90" font-weight="700" fill="#6ee7b7">Winner</text>
              <text x="665" y="110" font-size="11" fill="#9b99b8">if the gap is clear</text>
              <rect x="580" y="190" width="170" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="665" y="216" font-weight="700">Send winner</text>
              <text x="665" y="236" font-size="11" fill="#9b99b8">to the 8,000</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#em13a)">
                <line x1="131" y1="120" x2="167" y2="60"/>
                <line x1="131" y1="130" x2="167" y2="140"/>
                <line x1="131" y1="140" x2="167" y2="210"/>
                <line x1="321" y1="55" x2="367" y2="85"/>
                <line x1="321" y1="135" x2="367" y2="110"/>
                <line x1="531" y1="95" x2="577" y2="95"/>
                <line x1="665" y1="136" x2="665" y2="187"/>
              </g>
              <line x1="321" y1="220" x2="577" y2="220" stroke="#9b99b8" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="450" y="212" font-size="11" fill="#9b99b8">waits for the result</text>
            </g>
          </svg>
          <figcaption>A fair A/B test changes one thing, uses random groups and picks the metric before the test starts.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How to run a fair A/B test</h3>
          <ul class="lc-list">
            <li><strong>Change one thing only.</strong> For example, the subject line, the offer or the button text. If you change three things, you will not know which one made the difference.</li>
            <li><strong>Choose the metric first.</strong> A <strong>metric</strong> is the number you use to judge, such as click rate or orders.</li>
            <li><strong>Use random groups of a good size.</strong> Very small groups give results that are mostly luck.</li>
            <li><strong>Send both versions at the same time.</strong> Otherwise the day or hour may cause the difference.</li>
            <li><strong>Write down the result.</strong> Keep a simple test log, so you learn over time.</li>
          </ul>
          <p>Open rate is less reliable now. Some email apps, such as Apple Mail with Mail Privacy Protection, load emails automatically. This can count an "open" even if the person never read the email. So many marketers judge even subject line tests by clicks. Most email platforms have a built-in A/B test tool. Check your platform's current help pages for how it picks a winner.</p>
          <p>AI helps you write the versions. Ask it for two subject lines that differ in one clear way, for example "question vs direct benefit".</p>
        </div>
        <div class="lc-card">
          <h3>The numbers in an email report</h3>
          <p>Platforms use slightly different definitions, so check your platform's help pages. These are common ones. "Unique" means each person is counted once.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>What it means</th><th>How to calculate</th></tr></thead>
            <tbody>
              <tr><td><strong>Delivered</strong></td><td>Emails that did not bounce</td><td>sent minus bounces</td></tr>
              <tr><td><strong>Click rate</strong></td><td>Share of people who clicked a link</td><td>unique clicks ÷ delivered</td></tr>
              <tr><td><strong>Conversion rate</strong></td><td>Share of clickers who did the goal, such as buying</td><td>orders ÷ unique clicks (some tools use ÷ delivered)</td></tr>
              <tr><td><strong>Unsubscribe rate</strong></td><td>Share of people who left the list</td><td>unsubscribes ÷ delivered</td></tr>
              <tr><td><strong>Revenue per email</strong></td><td>Money made for each delivered email</td><td>revenue ÷ delivered</td></tr>
            </tbody>
          </table>
          <p><strong>Worked example:</strong> <em>Sweet Crumbs</em>, a made-up bakery in Maharashtra, tested two Diwali subject lines. Sample data in a spreadsheet:</p>
          <pre><code>   A          B           C              D        E
        1  Version    Delivered   Unique clicks  Orders   Revenue (₹)
        2  A          1,200       54             9        10,800
        3  B          1,180       71             11       12,650

        Click rate A:          =C2/B2   gives 4.5%
        Click rate B:          =C3/B3   gives 6.0%
        Revenue per email A:   =E2/B2   gives ₹9.00
        Revenue per email B:   =E3/B3   gives ₹10.72</code></pre>
          <p>B has a higher click rate. But the orders are 9 and 11. A gap of two orders is too small to be sure. It could be luck. Many platforms and free online A/B test calculators show if a gap is likely to be real. With small numbers, repeat the test before you make it a rule.</p>
        </div>
        <div class="lc-card">
          <h3>Read reports with AI, then check the maths</h3>
          <pre><code>Weak:
        Here is my report. How did we do?</code></pre>
          <pre><code>Better:
        You are an email analyst for a small bakery.
        Here is our A/B test data: [paste the table, no customer names or emails].
        Our goal metric was click rate, chosen before the test.
        1. Show each calculation with its formula.
        2. Say which version did better, and if the gap may be luck.
        3. Suggest one next test. Keep it under 150 words.</code></pre>
          <p>Asking AI to "show each calculation" lets you check its work. Always recalculate the key numbers in your spreadsheet. AI tools can add or divide wrongly, round badly or mix up rows. Paste only numbers, never subscriber lists or personal details.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check an AI report</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="You ask">Here is my A/B test. A: 1,200 delivered, 54 clicks, 9 orders. B: 1,180 delivered, 71 clicks, 11 orders. Which version won?</li>
              <li data-kind="answer" data-label="AI replies">B won clearly. Click rate A is 4.5% and B is 6.9%. B also got more orders. Use B's style for all future emails.</li>
              <li data-kind="tool" data-label="Spreadsheet">You type <code>=71/1180</code> and <code>=54/1200</code> into two cells.</li>
              <li data-kind="result" data-label="Spreadsheet shows">B: 6.0%. A: 4.5%.</li>
              <li data-kind="warn" data-label="Mistake 1">The AI said 6.9% for B. The real click rate is 6.0%. Always recalculate key numbers.</li>
              <li data-kind="warn" data-label="Mistake 2">"B won clearly" is too strong. 11 orders vs 9 orders is a small gap. One small test is not a rule for all future emails.</li>
              <li data-kind="check" data-label="Your decision">You write in the test log: "B had a higher click rate. Gap may be luck. Repeat with a bigger group next month."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan an A/B test and read a sample report. Change the numbers in [brackets] to your own, or leave them as they are.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email marketing analyst. Use simple English.

        Business: [Sweet Crumbs, a bakery in Maharashtra]. Campaign: [Diwali sweets box].
        Goal metric (chosen before the test): [click rate].

        Test results:
        Version A, subject "[Your Diwali sweets box is ready]": delivered [1,200], unique clicks [54], orders [9], revenue [₹10,800]
        Version B, subject "[Which Diwali box will you pick?]": delivered [1,180], unique clicks [71], orders [11], revenue [₹12,650]

        Please:
        1. Calculate click rate, conversion rate (orders / unique clicks) and revenue per delivered email for each version. Show every formula.
        2. Say which version did better on the goal metric.
        3. Say clearly if the gap could be luck, and why.
        4. Suggest 2 next A/B tests. Each must change only one thing.
        5. Give a 3-line summary I can send to my manager.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate the click rates yourself: A is 4.5% and B is about 6.0%</li>
              <li>The AI shows its formulas and uses delivered, not sent</li>
              <li>It says a small gap in orders could be luck</li>
              <li>Each suggested test changes only one thing</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A test is only useful if it is fair and the maths is right. Change one thing, choose your metric first, and check every key number in your own spreadsheet before you decide.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Rules, Consent and Unsubscribes</h1>
        </div>
        <p class="lc-lead">Email marketing has rules. Many countries have laws about consent, privacy and unsubscribes. Gmail and Yahoo also have their own rules for senders. Following them keeps you legal, protects your sender reputation and builds trust. In this lesson, you will learn the main ideas behind these rules in simple words. You will also use AI to check your emails and forms. <strong>This lesson is general education, not legal advice.</strong> For real decisions, ask a qualified lawyer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A sample marketing email with five parts labelled: clear sender name, honest subject line, why the reader gets this email, real business contact details, and an easy unsubscribe that is honoured fast.">
            <defs><marker id="em14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="20" y="20" width="400" height="260" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="40" y="56"><tspan fill="#9b99b8">From:</tspan> Rang Haath Crafts</text>
              <text x="40" y="84"><tspan fill="#9b99b8">Subject:</tspan> New block-print quilts are here</text>
              <line x1="30" y1="98" x2="410" y2="98" stroke="#4b4a78"/>
              <rect x="40" y="112" width="340" height="10" rx="4" fill="#27274e"/>
              <rect x="40" y="130" width="360" height="10" rx="4" fill="#27274e"/>
              <rect x="40" y="148" width="300" height="10" rx="4" fill="#27274e"/>
              <rect x="40" y="166" width="120" height="22" rx="6" fill="#8b5cf6"/>
              <text x="100" y="181" text-anchor="middle" font-size="11">See the quilts</text>
              <line x1="30" y1="192" x2="410" y2="192" stroke="#4b4a78"/>
              <text x="40" y="209" font-size="11" fill="#9b99b8">You get this because you joined on our website.</text>
              <text x="40" y="232" font-size="11" fill="#9b99b8">Rang Haath Crafts, [street address], Rajasthan</text>
              <text x="40" y="258" font-size="11" fill="#22d3ee">Unsubscribe  |  Email preferences</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#em14a)">
                <line x1="462" y1="52" x2="222" y2="52"/>
                <line x1="462" y1="80" x2="360" y2="80"/>
                <line x1="462" y1="205" x2="385" y2="205"/>
                <line x1="462" y1="228" x2="340" y2="228"/>
                <line x1="462" y1="254" x2="265" y2="254"/>
              </g>
              <text x="470" y="56" fill="#c4b5fd">Clear sender name you own</text>
              <text x="470" y="84" fill="#93c5fd">Honest subject, no false claims</text>
              <text x="470" y="209" fill="#6ee7b7">Why they get this email</text>
              <text x="470" y="232" fill="#fcd34d">Real business contact details</text>
              <text x="470" y="258" fill="#f9a8d4">Easy unsubscribe, honoured fast</text>
            </g>
          </svg>
          <figcaption>An honest marketing email says who it is from, tells the truth in the subject, and makes leaving easy.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main ideas behind email rules</h3>
          <p>Laws differ by country, but most share the same basic ideas. Here are some you may meet:</p>
          <ul class="lc-list">
            <li><strong>India: the DPDP Act</strong> (Digital Personal Data Protection Act, 2023). The government notified the DPDP Rules in November 2025. They come into force in phases. Most duties for businesses, such as consent and notice, are due by May 2027. The government has discussed moving some dates earlier, so check the current status.</li>
            <li><strong>Europe and the UK: GDPR</strong> and related e-privacy rules. These may apply if you email people who live there, even from India.</li>
            <li><strong>USA: CAN-SPAM Act.</strong> It asks for honest sender details and subject lines, and a clear sign that the email is an ad. It also asks for a postal address and a working way to opt out. Opt-outs must be honoured within 10 business days.</li>
            <li><strong>Gmail and Yahoo sender rules.</strong> These are not laws, but they decide if your email reaches the inbox. Bulk senders need authentication and one-click unsubscribe.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>What it means in practice</th></tr></thead>
            <tbody>
              <tr><td><strong>Consent</strong></td><td>People agree clearly, by their own action, to get your marketing emails</td></tr>
              <tr><td><strong>Notice</strong></td><td>You tell people, in plain language, what data you collect and why</td></tr>
              <tr><td><strong>Purpose</strong></td><td>You use the data only for what you told them</td></tr>
              <tr><td><strong>Easy withdrawal</strong></td><td>Leaving is as easy as joining</td></tr>
              <tr><td><strong>Honesty</strong></td><td>A true sender name, true subject lines and real contact details</td></tr>
              <tr><td><strong>Safety</strong></td><td>You protect the data and delete what you no longer need</td></tr>
            </tbody>
          </table>
          <p>Under the DPDP Act, consent should be free, specific, informed, unconditional and unambiguous (clear, with no doubt), given by a clear action. Data about children (under 18 in the Act) needs a parent's consent. Ask a lawyer how these rules apply to your business.</p>
        </div>
        <div class="lc-card">
          <h3>Consent on your sign-up form</h3>
          <p>A <strong>pre-ticked box</strong> (a box that is already ticked) is not clear consent. Silence or "you did not say no" is not consent either.</p>
          <pre><code>Weak:
        [x] I agree to the terms and to receive offers   (already ticked)</code></pre>
          <pre><code>Better:
        [ ] Yes, send me Rang Haath Crafts emails about new products and offers,
            about 2 per month. I can unsubscribe at any time.
            Read how we use your data: [privacy notice link]</code></pre>
          <p><strong>Keep a record</strong> of each consent: the date, where they signed up (for example the website footer form) and the exact words they agreed to. Most email platforms store some of this. Check what yours keeps.</p>
          <p>Never buy or rent email lists. Do not add people from WhatsApp groups, business cards or customer files to your marketing list without clear consent.</p>
        </div>
        <div class="lc-card">
          <h3>Unsubscribes, and how AI can help</h3>
          <ul class="lc-list">
            <li>Put a clear unsubscribe link in every marketing email. Do not ask people to log in first.</li>
            <li>Support <strong>one-click unsubscribe</strong> (people leave with one click, with no extra steps). Most email platforms add this for you.</li>
            <li>Stop marketing emails quickly. Gmail and Yahoo ask bulk senders to do it within two days.</li>
            <li>Keep unsubscribed addresses on a <strong>suppression list</strong> (a "do not email" list), so no one adds them back by mistake.</li>
            <li>A <strong>preference centre</strong> (a page where people choose which emails they get) can keep people who only want fewer emails.</li>
          </ul>
          <p><strong>Transactional emails</strong>, such as order receipts and password resets, are different from marketing emails. Do not hide a sales pitch inside them.</p>
          <p><strong>How AI helps:</strong> it can draft plain-language consent text, a first draft of a privacy notice, and check an email against a checklist. It cannot tell you what the law requires for your business, and it may be wrong or out of date. A qualified lawyer should review your privacy notice and consent wording. Never paste your subscriber list or customer data into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: OK or a problem?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each practice. Is it OK, or is it a problem?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK"></div>
              <div data-sorter-target="bucket" data-bucket="problem" data-label="Problem"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="problem" data-why="A pre-ticked box is not a clear action by the person. It is not clear consent.">A pre-ticked "Send me offers" box at checkout</li>
              <li data-bucket="ok" data-why="The person chooses by their own action, and knows what they will get.">An empty checkbox with a clear sentence about which emails they will get</li>
              <li data-bucket="problem" data-why="Leaving should be easy. Gmail and Yahoo expect one-click unsubscribe for bulk senders.">An unsubscribe link that asks people to log in first</li>
              <li data-bucket="ok" data-why="This stops you from emailing them again by mistake.">Keeping unsubscribed addresses on a "do not email" list</li>
              <li data-bucket="problem" data-why="The subject line is false. It tricks people into opening a sales email.">The subject "Your order has shipped" on a sales email</li>
              <li data-bucket="problem" data-why="Those people never agreed to get your marketing emails.">Adding everyone from a WhatsApp group to your email list</li>
              <li data-bucket="ok" data-why="A record shows who agreed, when, where and to what.">Saving the date, form and wording of each sign-up</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check a sign-up form and a marketing email against a simple checklist. Replace the [bracketed] text with your own, or leave it to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help small businesses follow good email marketing practice. This is a general check, not legal advice.

        Business: [Rang Haath Crafts, an online handicrafts store in Rajasthan]. We email people in [India and the UK].

        Our sign-up form says: "[Enter your email for 10% off. (Box already ticked) I agree to terms and marketing.]"

        Our latest email:
        From: [offers@gmail.com]
        Subject: [Re: your order]
        Body: [Big sale! 40% off all quilts today only.]
        Footer: [no address, no unsubscribe link]

        Please:
        1. Check the form and the email against these points: clear consent by an action, plain-language notice, honest sender, honest subject line, business contact details, easy unsubscribe.
        2. Make a table: point, OK or problem, why, suggested fix.
        3. Rewrite the consent checkbox text and the email footer.
        4. List 3 questions I should ask a lawyer about India's DPDP Act and GDPR.
        Do not state exact legal penalties or deadlines.</pre>
            <ul class="ai-try-checks">
              <li>The pre-ticked box and the "Re: your order" subject are marked as problems</li>
              <li>The new footer has contact details and an unsubscribe link</li>
              <li>The answer says it is not legal advice and suggests a lawyer</li>
              <li>No exact fines or dates are stated as facts</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good email rules come down to respect: ask clearly, tell the truth, and let people leave easily. AI can help you check your forms and emails, but a qualified lawyer should confirm what the law requires for your business.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Capstone: Build an Email Campaign</h1>
        </div>
        <p class="lc-lead">In this capstone, you will plan a complete email campaign for one business. You will make five parts: a list plan, a 5-email welcome sequence, a few segments, one promotion and a report plan. You can use your own business, a client, or the example business below. AI will help you draft each part. You will check every fact, offer and rule before anything is "ready to send".</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Five steps of the capstone in a row: list plan, welcome series, segments, one promotion and report plan. Below them, a bar says to check facts, offers, links, consent and tone at every step.">
            <defs><marker id="em15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="40" width="130" height="90" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="75" y="66" font-size="11" fill="#9b99b8">Step 1</text>
              <text x="75" y="90" font-weight="700">List plan</text>
              <text x="75" y="110" font-size="11" fill="#9b99b8">form + consent</text>
              <rect x="157" y="40" width="130" height="90" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="222" y="66" font-size="11" fill="#9b99b8">Step 2</text>
              <text x="222" y="90" font-weight="700">Welcome series</text>
              <text x="222" y="110" font-size="11" fill="#9b99b8">map, then draft</text>
              <rect x="304" y="40" width="130" height="90" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="369" y="66" font-size="11" fill="#9b99b8">Step 3</text>
              <text x="369" y="90" font-weight="700">Segments</text>
              <text x="369" y="110" font-size="11" fill="#9b99b8">3 to 4 groups</text>
              <rect x="451" y="40" width="130" height="90" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="516" y="66" font-size="11" fill="#9b99b8">Step 4</text>
              <text x="516" y="90" font-weight="700">One promotion</text>
              <text x="516" y="110" font-size="11" fill="#9b99b8">offer + dates</text>
              <rect x="598" y="40" width="130" height="90" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="663" y="66" font-size="11" fill="#9b99b8">Step 5</text>
              <text x="663" y="90" font-weight="700">Report plan</text>
              <text x="663" y="110" font-size="11" fill="#9b99b8">metrics + formulas</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#em15a)">
                <line x1="141" y1="85" x2="155" y2="85"/>
                <line x1="288" y1="85" x2="302" y2="85"/>
                <line x1="435" y1="85" x2="449" y2="85"/>
                <line x1="582" y1="85" x2="596" y2="85"/>
              </g>
              <rect x="10" y="170" width="718" height="44" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="369" y="197">Check at every step: facts, offers, links, consent and tone</text>
            </g>
          </svg>
          <figcaption>Build the campaign in five steps. AI drafts each part, and you check it before you move on.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief</h3>
          <p>Example business: <em>Backwater Trails</em>, a made-up travel agency in Kerala. It sells houseboat stays and 3-day Kerala trips. It has about 2,000 past enquiries who agreed to get emails. It wants more bookings for the October to March season. You may use your own business instead.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What you make</th><th>It is done when</th></tr></thead>
            <tbody>
              <tr><td><strong>1. List plan</strong></td><td>Sign-up form text, a lead magnet (a free gift for signing up), consent wording</td><td>The consent box is not pre-ticked, and the notice is in plain words</td></tr>
              <tr><td><strong>2. Welcome series</strong></td><td>A map of 5 emails, then all 5 drafts</td><td>Each email has one goal and one CTA (call to action), plus an exit rule</td></tr>
              <tr><td><strong>3. Segments</strong></td><td>3 or 4 groups, such as past travellers, families, and people who never clicked</td><td>Each segment has a rule your email platform can use</td></tr>
              <tr><td><strong>4. Promotion</strong></td><td>One offer email and one reminder, with an A/B test idea</td><td>The offer, dates and terms are real and approved</td></tr>
              <tr><td><strong>5. Report plan</strong></td><td>Metrics, formulas and a date to review</td><td>You know what "success" means before you send</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Work through the parts with AI</h3>
          <p>Use one conversation with AI, and give it the brief first. Then ask for one part at a time. Short, focused prompts give better drafts than one huge request.</p>
          <pre><code>Part 3 prompt:
        Here is a sample of our list columns (no names or emails):
        last trip date, trip type, number of travellers, last click date, city.
        Suggest 4 segments for a season campaign.
        For each: the rule, why it matters, and the main message.</code></pre>
          <pre><code>Part 4 prompt:
        Write a promotion email for [our 3-day Kerala trip].
        Offer: [check with owner]. Last date to book: [check with owner].
        Honest urgency only. No false "only 2 seats left" claims.
        Give 2 subject lines that differ in one way, for an A/B test.</code></pre>
          <p>Write "[check with owner]" where you do not know a fact yet. Never let AI invent a price, a discount, a review or a deadline.</p>
        </div>
        <div class="lc-card">
          <h3>The report plan and the final check</h3>
          <p>Plan your report before you send. Set up a simple spreadsheet like this:</p>
          <pre><code>Email | Sent | Delivered | Unique clicks | Bookings | Revenue (₹) | Unsubscribes
        Click rate:        =D2/C2
        Conversion rate:   =E2/D2
        Unsubscribe rate:  =G2/C2
        Revenue per email: =F2/C2
        Review date:       7 days after the last email</code></pre>
          <p>Judge the campaign mainly on clicks and bookings. Opens are less reliable because some email apps load emails automatically.</p>
          <p><strong>Final check before you send:</strong></p>
          <ul class="lc-list">
            <li>All prices, dates, offers and trip details are checked with the owner.</li>
            <li>Every email has a clear sender, an honest subject and an unsubscribe link.</li>
            <li>Only people who gave consent are on the list.</li>
            <li>Your sending domain has SPF, DKIM and DMARC set up.</li>
            <li>You sent test emails to yourself and clicked every link on a phone.</li>
            <li>No customer data was pasted into a public AI tool.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: order the campaign steps</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the capstone work in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the brief: business, audience, goal and season</li>
              <li data-order="2">Plan the sign-up form, lead magnet and consent wording</li>
              <li data-order="3">Map and draft the 5-email welcome sequence</li>
              <li data-order="4">Choose segments and write the promotion for them</li>
              <li data-order="5">Set up the report sheet and decide what success means</li>
              <li data-order="6">Check facts, offers, links and rules, then send test emails</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a first draft of the whole campaign plan. Replace the [bracketed] details with your own business, or leave them to see the example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email marketing planner for small businesses. Use simple English.

        Business: [Backwater Trails, a travel agency in Kerala selling houseboat stays and 3-day Kerala trips].
        List: [about 2,000 past enquiries who agreed to get emails].
        Goal: [more bookings for the October to March season].
        Brand voice: [friendly, calm, local expert].

        Make a campaign plan with 5 parts:
        1. List plan: sign-up form text, one lead magnet idea, consent checkbox text (not pre-ticked).
        2. Welcome sequence: a table of 5 emails (send day, goal, main idea, CTA) and an exit rule.
        3. Segments: 3 or 4 segments, each with a rule and a main message.
        4. Promotion: one email and one reminder, with 2 subject lines for an A/B test.
        5. Report plan: metrics, spreadsheet formulas and a review date.

        Do not invent prices, discounts, reviews or deadlines. Write [check with owner] instead. End with a 6-point checklist to finish before sending.</pre>
            <ul class="ai-try-checks">
              <li>All 5 parts are there, and each email has one clear goal</li>
              <li>The consent text is not pre-ticked and uses plain words</li>
              <li>No invented prices, discounts or deadlines: they show [check with owner]</li>
              <li>The report plan uses clicks and bookings, not only opens</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can draft a full campaign in minutes, but you make it real. Plan with a clear brief, build one part at a time, and check every fact, offer and rule before you press send.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

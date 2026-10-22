module AiForFreelancersContent
  # Units (sidebar dividers): 1–4 Freelancing Basics · 5–9 Winning Clients · 10–14 Running Your Freelance Business · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">How Freelancing Works</h1>
        </div>
        <p class="lc-lead">A <strong>freelancer</strong> sells a skill to many clients, one project at a time. There is no boss and no fixed salary. In this lesson, you will learn the basic words of freelance work. You will see the two ways to find clients: platforms and direct work. You will also see why freelance income goes up and down, and how to plan for it. You will follow Sneha, a made-up graphic designer in Kerala, through the whole course.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 305" role="img" aria-label="Top: the five steps of one freelance project, from offering a service to getting paid. Bottom: a bar chart of Sneha's made-up income for her first six months, from 12,000 to 60,000 rupees, with an average of 35,667 rupees, below her goal of 60,000 rupees.">
            <defs><marker id="fr1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-weight="700">One freelance project, step by step</text>
              <rect x="12" y="34" width="128" height="58" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="76" y="58">Offer a service</text><text x="76" y="78" font-size="11" fill="#9b99b8">logo, brand kit</text>
              <rect x="162" y="34" width="128" height="58" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="226" y="58">Client finds you</text><text x="226" y="78" font-size="11" fill="#9b99b8">platform or direct</text>
              <rect x="312" y="34" width="128" height="58" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="376" y="58">Agree the scope</text><text x="376" y="78" font-size="11" fill="#9b99b8">work, price, dates</text>
              <rect x="462" y="34" width="128" height="58" rx="9" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="526" y="58">Do the work</text><text x="526" y="78" font-size="11" fill="#9b99b8">drafts, changes</text>
              <rect x="612" y="34" width="128" height="58" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="676" y="58">Invoice, get paid</text><text x="676" y="78" font-size="11" fill="#9b99b8">advance + balance</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr1a)">
                <line x1="141" y1="63" x2="158" y2="63"/><line x1="291" y1="63" x2="308" y2="63"/><line x1="441" y1="63" x2="458" y2="63"/><line x1="591" y1="63" x2="608" y2="63"/>
              </g>
              <text x="270" y="136" font-weight="700">Sneha's first six months (made-up income)</text>
              <line x1="66" y1="160" x2="478" y2="160" stroke="#10b981" stroke-width="1.5" stroke-dasharray="6 4"/>
              <text x="484" y="164" text-anchor="start" font-size="11" fill="#6ee7b7">goal ₹60k</text>
              <line x1="66" y1="201" x2="478" y2="201" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="3 3"/>
              <text x="484" y="205" text-anchor="start" font-size="11" fill="#fcd34d">avg ₹35.7k</text>
              <line x1="66" y1="260" x2="478" y2="260" stroke="#4b4a78"/>
              <g fill="#3b82f6" fill-opacity="0.75">
                <rect x="80" y="230" width="44" height="30"/><rect x="150" y="190" width="44" height="70"/><rect x="220" y="218" width="44" height="42"/>
                <rect x="290" y="160" width="44" height="100"/><rect x="360" y="240" width="44" height="20"/><rect x="430" y="165" width="44" height="95"/>
              </g>
              <g font-size="11">
                <text x="102" y="276">M1</text><text x="172" y="276">M2</text><text x="242" y="276">M3</text><text x="312" y="276">M4</text><text x="382" y="276">M5</text><text x="452" y="276">M6</text>
              </g>
              <g font-size="10.5" fill="#9b99b8">
                <text x="102" y="292">₹18k</text><text x="172" y="292">₹42k</text><text x="242" y="292">₹25k</text><text x="312" y="292">₹60k</text><text x="382" y="292">₹12k</text><text x="452" y="292">₹57k</text>
              </g>
              <rect x="560" y="150" width="185" height="120" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="652" y="174" font-weight="700" fill="#f9a8d4">Income is uneven</text>
              <text x="652" y="198" font-size="12">Average: ₹35,667</text>
              <text x="652" y="218" font-size="12">Lowest: ₹12,000</text>
              <text x="652" y="238" font-size="12">Highest: ₹60,000</text>
              <text x="652" y="258" font-size="12" fill="#6ee7b7">Plan a cash buffer</text>
            </g>
          </svg>
          <figcaption>Every project follows the same five steps. But projects do not arrive evenly, so monthly income goes up and down.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Meet Sneha, and the words you will use</h3>
          <p>Sneha is 26 and lives in Kerala. She worked for two years as a graphic designer at a made-up agency, Coastline Creative. Now she is going freelance. She wants to design brand identities for small cafés and food brands. A <strong>brand identity</strong> is the look of a business: its logo, colours, fonts and style.</p>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Plain meaning</th><th>Sneha's example</th></tr></thead>
            <tbody>
              <tr><td><strong>Service</strong></td><td>The work you sell</td><td>Logo design, brand identity, social media templates</td></tr>
              <tr><td><strong>Client</strong></td><td>The person or business that pays you</td><td>A café owner in Karnataka</td></tr>
              <tr><td><strong>Brief</strong></td><td>The client's description of what they want</td><td>"A fresh logo for our second outlet"</td></tr>
              <tr><td><strong>Scope</strong></td><td>The exact work you agree to do, and what is not included</td><td>2 logo ideas, 2 rounds of changes, final files</td></tr>
              <tr><td><strong>Proposal</strong> or <strong>quote</strong></td><td>Your written offer: the work, the price and the dates</td><td>₹15,000, ready in 7 working days</td></tr>
              <tr><td><strong>Advance</strong></td><td>Part of the fee paid before you start</td><td>50% before the first draft</td></tr>
              <tr><td><strong>Invoice</strong></td><td>A bill that asks the client to pay</td><td>An invoice for the balance after final files</td></tr>
              <tr><td><strong>Retainer</strong></td><td>A fixed monthly fee for ongoing work</td><td>8 social posts a month for one café</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Two ways to find work: platforms and direct</h3>
          <p>A <strong>platform</strong> is a website that connects freelancers with clients, such as Upwork or Fiverr. <strong>Direct work</strong> means the client comes to you without a platform. For example, through a friend, LinkedIn or Instagram.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Platform work</th><th>Direct work</th></tr></thead>
            <tbody>
              <tr><td><strong>How clients find you</strong></td><td>They search the platform or post a job</td><td>Referrals (a person recommends you), your posts, your network</td></tr>
              <tr><td><strong>Payment</strong></td><td>Through the platform. It keeps a fee.</td><td>Straight to your bank (for example by UPI or bank transfer). You keep the full fee.</td></tr>
              <tr><td><strong>Trust</strong></td><td>Platform reviews help new freelancers</td><td>Trust comes from people who know your work</td></tr>
              <tr><td><strong>Your job</strong></td><td>Follow the platform's rules</td><td>Write your own contract, invoice and follow up on payments</td></tr>
              <tr><td><strong>Competition</strong></td><td>Many freelancers bid for the same job</td><td>Less competition, but it takes time to build</td></tr>
            </tbody>
          </table>
          <p>Most freelancers use both. Sneha plans to get most work directly, from cafés and food brands she can reach. She will use platforms to find some clients from other countries.</p>
        </div>
        <div class="lc-card">
          <h3>Income goes up and down: plan for it</h3>
          <p>A salary arrives on the same day every month. Freelance income does not. Look at Sneha's made-up first six months: ₹18,000, ₹42,000, ₹25,000, ₹60,000, ₹12,000 and ₹57,000.</p>
          <ul class="lc-list">
            <li><strong>Total:</strong> ₹2,14,000. <strong>Average:</strong> ₹2,14,000 ÷ 6 = ₹35,667 a month.</li>
            <li>Her goal is ₹60,000 a month. She reached it only once. This is normal in the first year.</li>
            <li>Her personal costs are ₹33,000 a month. She saved ₹1,50,000 before leaving her job. That covers about 4.5 months of personal costs (₹1,50,000 ÷ ₹33,000 = 4.55).</li>
          </ul>
          <p>Freelancers make income steadier in three ways. They take an <strong>advance</strong> before starting. They look for <strong>retainers</strong>. And they keep finding new clients, even in busy months.</p>
          <p>AI can explain these ideas and do quick sums. But always check its maths with a calculator. A weak prompt is too vague:</p>
          <pre><code>Should I become a freelancer?</code></pre>
          <p>A better prompt gives the AI your made-up numbers and a clear task:</p>
          <pre><code>You are a practical freelance coach. I am a graphic designer in Kerala.
        My personal costs are ₹33,000 a month. I have ₹1,50,000 saved.
        Show how many months my savings last if I earn nothing.
        Then list 5 ways freelancers make income steadier. Show your maths.</code></pre>
          <p>This is general education, not financial advice. Only you can decide when to leave a job.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: platform work or direct work?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each way of getting a client into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="platform" data-label="Platform work"></div>
              <div data-sorter-target="bucket" data-bucket="direct" data-label="Direct work"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="platform" data-why="The client found her through a marketplace, and payment goes through it.">A UK tea seller orders Sneha's logo package on a freelance marketplace</li>
              <li data-bucket="direct" data-why="A referral is a person recommending you. No platform is involved.">A stall owner Sneha worked for tells a bakery owner about her</li>
              <li data-bucket="platform" data-why="She answers a job post on a platform, so the platform's rules and fees apply.">Sneha sends a proposal to a job post for "café menu design"</li>
              <li data-bucket="direct" data-why="A former colleague is part of her own network. She agrees terms and payment herself.">An ex-colleague from her agency asks her to design a restaurant logo</li>
              <li data-bucket="direct" data-why="The client saw her own post and messaged her. She handles the contract and invoice.">A Karnataka café owner sees her LinkedIn post and emails her</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to explain freelancing for your own skill and to do a simple money check. Use made-up or rounded numbers, not your bank details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical freelance coach for beginners in India. This is general education, not financial advice.

        About me:
        - Skill: [graphic design: logos and brand identities]
        - State: [Kerala]
        - Clients I want: [small cafés and food brands]
        - Personal costs: [₹33,000] a month
        - Savings: [₹1,50,000]
        - Income goal: [₹60,000] a month

        Please do these 4 things:
        1. Explain in simple words how one freelance project works for my skill, from first message to final payment.
        2. Compare platform work and direct work for me in a short table: how clients find me, payment, trust, and my extra jobs.
        3. Calculate how many months my savings cover my personal costs if I earn nothing. Show the sum.
        4. List 5 practical ways to make my monthly income steadier, with one example each for my kind of client.

        Use short sentences. Do not invent statistics about freelancers or my market.</pre>
            <ul class="ai-try-checks">
              <li>Check the savings sum with a calculator (₹1,50,000 ÷ ₹33,000 is about 4.5 months).</li>
              <li>The answer should not contain made-up statistics about freelancing.</li>
              <li>The project steps should include a clear scope and an advance payment.</li>
              <li>The ideas should fit your real clients, not only big companies.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Freelancing is a small business with one worker: you. Every project needs a clear scope and a payment plan. Because income is uneven, plan with your average month, not your best month.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Where AI Helps Freelancers</h1>
        </div>
        <p class="lc-lead">As a freelancer, you do every job yourself. You do the client work, but also the sales, the emails and the admin. An AI assistant (a chat tool such as Claude) can draft, sort and explain. That saves you hours each week. In this lesson, you will learn four areas where AI helps freelancers most. You will also learn three risks: client data, telling clients about AI use, and quality.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four areas where AI helps: proposals, research, client messages and admin. The work flows from your notes, to an AI draft, to your check, to you sending it. Three risks to manage: client data, telling clients about AI, and quality.">
            <defs><marker id="fr2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700">Four areas where AI helps</text>
              <rect x="15" y="34" width="170" height="54" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="100" y="56" font-weight="700" fill="#c4b5fd">Proposals</text><text x="100" y="76" font-size="11" fill="#9b99b8">first drafts</text>
              <rect x="200" y="34" width="170" height="54" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="285" y="56" font-weight="700" fill="#93c5fd">Research</text><text x="285" y="76" font-size="11" fill="#9b99b8">client's business</text>
              <rect x="385" y="34" width="170" height="54" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="470" y="56" font-weight="700" fill="#67e8f9">Client messages</text><text x="470" y="76" font-size="11" fill="#9b99b8">clear and polite</text>
              <rect x="570" y="34" width="170" height="54" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="655" y="56" font-weight="700" fill="#6ee7b7">Admin</text><text x="655" y="76" font-size="11" fill="#9b99b8">lists, invoices, notes</text>
              <text x="380" y="118" font-weight="700">The safe way to use it</text>
              <rect x="30" y="130" width="150" height="44" rx="9" fill="#27274e" stroke="#4b4a78"/><text x="105" y="157">Your notes</text>
              <rect x="220" y="130" width="150" height="44" rx="9" fill="#27274e" stroke="#8b5cf6"/><text x="295" y="157">AI draft</text>
              <rect x="410" y="130" width="150" height="44" rx="9" fill="#27274e" stroke="#f59e0b"/><text x="485" y="157">You check, edit</text>
              <rect x="600" y="130" width="140" height="44" rx="9" fill="#27274e" stroke="#10b981"/><text x="670" y="157">You send</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr2a)">
                <line x1="182" y1="152" x2="216" y2="152"/><line x1="372" y1="152" x2="406" y2="152"/><line x1="562" y1="152" x2="596" y2="152"/>
              </g>
              <text x="380" y="206" font-weight="700" fill="#f9a8d4">Three risks to manage</text>
              <rect x="15" y="218" width="232" height="64" rx="9" fill="#1f1f44" stroke="#ec4899"/>
              <text x="131" y="243" font-weight="700">Client data</text><text x="131" y="266" font-size="11.5" fill="#9b99b8">keep private files out</text>
              <rect x="264" y="218" width="232" height="64" rx="9" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="243" font-weight="700">Telling clients</text><text x="380" y="266" font-size="11.5" fill="#9b99b8">say how you use AI</text>
              <rect x="513" y="218" width="232" height="64" rx="9" fill="#1f1f44" stroke="#ec4899"/>
              <text x="629" y="243" font-weight="700">Quality</text><text x="629" y="266" font-size="11.5" fill="#9b99b8">check facts, names, images</text>
            </g>
          </svg>
          <figcaption>AI gives you a fast first draft. You add the facts, check the result and make the final decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four areas where AI saves you time</h3>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>How AI helps</th><th>What you still do</th></tr></thead>
            <tbody>
              <tr><td><strong>Proposals</strong></td><td>Turns your notes into a clear first draft. Suggests questions to ask the client.</td><td>Set the price, the dates and the scope. Add real proof of your work.</td></tr>
              <tr><td><strong>Research</strong></td><td>Lists what to look at on a client's website and social pages. Explains a new industry in simple words.</td><td>Visit the real pages yourself. AI may not have current facts about a small business.</td></tr>
              <tr><td><strong>Client messages</strong></td><td>Drafts polite replies, reminders and "no" messages. Fixes grammar and tone.</td><td>Make it sound like you. Check every promise, date and number.</td></tr>
              <tr><td><strong>Admin</strong></td><td>Makes checklists, task lists and invoice wording. Summarises your meeting notes.</td><td>Check totals and tax details. Ask a CA (chartered accountant) about tax.</td></tr>
            </tbody>
          </table>
          <p>AI can also help with your creative work, for example with mood-board ideas. But clients pay for <em>your</em> skill and judgement. Use AI to save time on the tasks around your craft.</p>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <p>Karthik owns Brew Theory, a made-up café in Karnataka. He emails Sneha: "We open a second outlet in March. Can you do our branding? What does it cost?" Sneha wants a quick, clear reply.</p>
          <p>A weak prompt:</p>
          <pre><code>Write a reply to a client who wants branding.</code></pre>
          <p>The AI does not know her services, her prices or her rules. So it guesses. A better prompt gives facts and limits:</p>
          <pre><code>You are helping me, a freelance brand designer in Kerala, reply to a new enquiry.
        Client: owner of a specialty café in Karnataka, opening a second outlet in March.
        His question: "Can you do our branding? What does it cost?"
        My facts: Brand Identity package ₹45,000. Takes 3 to 4 weeks. 3 rounds of changes.
        I need a 30-minute call first to understand the brief.
        Write a warm, short email (under 120 words). Offer two call times.
        Do not promise anything that is not in my facts.</code></pre>
          <p>Notice what Sneha did <em>not</em> paste: Karthik's phone number, his email address or any private files. The AI does not need them to write a good draft.</p>
        </div>
        <div class="lc-card">
          <h3>Three risks, and how to manage them</h3>
          <ul class="lc-list">
            <li><strong>Client data.</strong> Clients may share private plans, sales figures or unreleased designs. Some ask you to sign an NDA (non-disclosure agreement: a promise to keep their information secret). Do not paste private client details into a public AI tool. Remove names and numbers, or use made-up ones. Check your tool's data and privacy settings in its current help pages.</li>
            <li><strong>Telling clients about AI use.</strong> Some clients are happy for you to use AI. Others do not allow it, or do not allow AI-made images. Ask early, and follow their wishes. Write a short note that says how you use AI. For example: "I use AI to draft emails and research. All design work is my own." Rules on who owns AI-made images are still unclear in many places. So do not promise full ownership of AI-made artwork without checking with a lawyer.</li>
            <li><strong>Quality.</strong> AI can invent facts, prices, dates and features. Its writing can sound general, like everyone else's. AI images can have spelling errors in text or strange details. Read every draft, check every fact and edit it into your own voice.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Sneha replies to Brew Theory</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sneha's prompt">Sneha pastes the text of Karthik's question and her package facts: ₹45,000, 3 to 4 weeks, 3 rounds of changes. She leaves out his phone number and email address.</li>
              <li data-kind="answer" data-label="AI draft">The AI writes a friendly 110-word email. It thanks Karthik, explains the Brand Identity package and offers two call times.</li>
              <li data-kind="warn" data-label="A mistake to catch">The draft says "delivered in 10 days with unlimited revisions". Sneha never said this. It would cost her many unpaid hours.</li>
              <li data-kind="check" data-label="Sneha fixes it">She changes it to "3 to 4 weeks, with 3 rounds of changes". She checks the price again: ₹45,000.</li>
              <li data-kind="check" data-label="Her own voice">She reads it aloud. She replaces "We are delighted to assist" with "I'd love to help with your new outlet". It now sounds like her.</li>
              <li data-kind="tool" data-label="Send and note">She sends the email from her own account. She adds Brew Theory to her client list with the date and "call booked".</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to sort your weekly freelance tasks by how much it can help, and to point out the risks. Change the task list to your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced freelance business coach. I am a [freelance graphic designer in Kerala] who works with [small cafés and food brands].

        Here are my weekly tasks:
        [- Reply to new client enquiries
        - Write proposals and quotes
        - Research a new client's business
        - Create logo ideas and designs
        - Send project updates to clients
        - Make invoices and chase late payments
        - Post my work on LinkedIn and Instagram
        - Keep track of my income and costs]

        Make a table with these columns: Task | How AI can help | What I must do myself | Risk to watch (client data, telling clients about AI use, or quality).

        Then pick the 3 tasks where AI saves me the most time. For each one, write a short, safe example prompt I can reuse. The prompts must not include private client details.

        Use simple English. Do not suggest AI for work the client pays me to do by hand.</pre>
            <ul class="ai-try-checks">
              <li>Every task should have a "what I must do myself" part, such as checking prices or dates.</li>
              <li>The example prompts should not ask you to paste private client data.</li>
              <li>The answer should mention asking clients about AI use, not hiding it.</li>
              <li>Check that the advice about tax or contracts says to ask a CA or lawyer.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI for the work around your craft: drafts, research, messages and admin. Keep private client data out, tell clients how you use AI, and check every fact and promise before you send it.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Choosing Your Niche and Services</h1>
        </div>
        <p class="lc-lead">A <strong>niche</strong> is the small, clear group of clients you serve best. "I design anything for anyone" is hard to remember. "I design brand identities for small cafés" is easy to remember and easy to recommend. In this lesson, you will learn how to choose a niche from your skills and real demand. Then you will turn your work into <strong>service packages</strong>: fixed sets of work with a clear price.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A Venn diagram: your niche sits where your skills, real demand and clients who can pay overlap. An arrow leads to Sneha's three packages: Starter Logo 15,000 rupees, Brand Identity 45,000 rupees and Social Media Kit 12,000 rupees.">
            <defs><marker id="fr3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <circle cx="150" cy="120" r="80" fill="#8b5cf6" fill-opacity="0.18" stroke="#8b5cf6"/>
              <circle cx="250" cy="120" r="80" fill="#3b82f6" fill-opacity="0.18" stroke="#3b82f6"/>
              <circle cx="200" cy="200" r="80" fill="#10b981" fill-opacity="0.18" stroke="#10b981"/>
              <text x="118" y="100" fill="#c4b5fd" font-weight="700">Your skills</text>
              <text x="282" y="100" fill="#93c5fd" font-weight="700">Real demand</text>
              <text x="200" y="250" fill="#6ee7b7" font-weight="700">Clients can pay</text>
              <text x="200" y="152" font-weight="700" fill="#fcd34d">Niche</text>
              <line x1="335" y1="150" x2="408" y2="150" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr3a)"/>
              <text x="580" y="30" font-weight="700">Sneha's packages</text>
              <rect x="420" y="44" width="320" height="58" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="436" y="68" text-anchor="start" font-weight="700">Starter Logo</text><text x="724" y="68" text-anchor="end" fill="#fcd34d">₹15,000</text>
              <text x="436" y="90" text-anchor="start" font-size="11" fill="#9b99b8">2 ideas, 2 rounds, final files</text>
              <rect x="420" y="116" width="320" height="58" rx="9" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="436" y="140" text-anchor="start" font-weight="700">Brand Identity</text><text x="724" y="140" text-anchor="end" fill="#fcd34d">₹45,000</text>
              <text x="436" y="162" text-anchor="start" font-size="11" fill="#9b99b8">logo system, colours, menu, guide</text>
              <rect x="420" y="188" width="320" height="58" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="436" y="212" text-anchor="start" font-weight="700">Social Media Kit</text><text x="724" y="212" text-anchor="end" fill="#fcd34d">₹12,000</text>
              <text x="436" y="234" text-anchor="start" font-size="11" fill="#9b99b8">10 posts, 3 stories, 5 covers</text>
              <text x="580" y="276" font-size="12" fill="#9b99b8">Niche: cafés and food brands</text>
            </g>
          </svg>
          <figcaption>Your niche is where your skills, real demand and ability to pay meet. Packages turn that niche into clear offers.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a good niche looks like</h3>
          <p>A niche joins two things: <strong>who</strong> you serve and <strong>what</strong> you do for them. It should still leave enough clients to keep you busy.</p>
          <table class="lc-table">
            <thead><tr><th>Too broad</th><th>A clear niche</th><th>Why it works</th></tr></thead>
            <tbody>
              <tr><td>Sneha: "Graphic designer"</td><td>"Brand identities for small cafés and food brands"</td><td>She did food packaging at her agency. Many new cafés open in South Indian cities.</td></tr>
              <tr><td>Rohan: "Web developer"</td><td>"Fast websites for small restaurants and cafés"</td><td>He can build menus, online ordering links and maps. His clients need the same things.</td></tr>
              <tr><td>A made-up writer: "Content writer"</td><td>"Blog posts for Indian travel homestays"</td><td>She knows travel and writes in English and Malayalam.</td></tr>
            </tbody>
          </table>
          <p>Notice something useful. Sneha and Rohan serve the same type of client. A café that needs a brand often needs a website too. They can refer clients to each other.</p>
          <p>A niche is not a life sentence. Test it for a few months. Keep it if clients respond. Change it if they do not.</p>
        </div>
        <div class="lc-card">
          <h3>Check demand honestly</h3>
          <p><strong>Demand</strong> means people who need your service and will pay for it. AI can help you plan your research. But AI cannot tell you the real number of cafés in your city. If it gives a number, treat it as a guess. Check it against a real source, or label it "estimate".</p>
          <p>A weak prompt asks the AI for facts it cannot know:</p>
          <pre><code>How many cafés in Kerala need a logo? Is this a good market?</code></pre>
          <p>A better prompt asks the AI for a research plan that you carry out yourself:</p>
          <pre><code>I am a brand designer in Kerala. I want to serve small cafés and food brands.
        Make a 2-week plan to check real demand without spending money.
        Include: places to look (maps, delivery apps, job posts, local groups),
        10 questions to ask café owners, and signs that the niche is working.
        Do not give me market size numbers. I will collect real evidence.</code></pre>
          <p>Sneha did this. She listed 25 new cafés and bakeries near her. She talked to 8 owners. Five said their logo or menu looked "home-made". Three asked her for a price. That is real evidence, from her own small survey.</p>
        </div>
        <div class="lc-card">
          <h3>Turn your work into packages</h3>
          <p>A <strong>package</strong> lists the deliverables (the exact things the client gets), the time and the price. Packages make it easy for clients to say yes. They also protect you from endless extra work.</p>
          <table class="lc-table">
            <thead><tr><th>Package</th><th>Deliverables</th><th>Time</th><th>Price</th></tr></thead>
            <tbody>
              <tr><td><strong>Starter Logo</strong></td><td>2 logo ideas, 2 rounds of changes, final logo in colour and black and white, files for print and web</td><td>7 working days</td><td>₹15,000</td></tr>
              <tr><td><strong>Brand Identity</strong></td><td>Logo system (main, short and icon versions), colour palette, 2 fonts, 1-page menu, business card, 12-page brand guide, 3 rounds of changes</td><td>3 to 4 weeks</td><td>₹45,000</td></tr>
              <tr><td><strong>Social Media Kit</strong></td><td>10 editable Canva post templates, 3 story templates, 5 highlight covers, a 1-page style note</td><td>5 working days</td><td>₹12,000</td></tr>
            </tbody>
          </table>
          <p>Also write what is <strong>not included</strong>. For example: printing, photography, a website and extra rounds of changes. Sneha sells an extra round of changes for ₹3,000.</p>
          <p>These are made-up prices for teaching. The pricing lesson later in this course shows how Sneha checks that each price covers her costs and time.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: choose a niche step by step</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Sneha's steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">List her skills and past work, such as food packaging at the agency</li>
              <li data-order="2">List client groups she knows and likes, such as cafés and bakeries</li>
              <li data-order="3">Check real demand: list local cafés and talk to 8 owners</li>
              <li data-order="4">Choose one niche to test: brand identities for small cafés and food brands</li>
              <li data-order="5">Turn her work into 3 packages with deliverables, time and price</li>
              <li data-order="6">Review after her first few clients and adjust the niche or packages</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to suggest niche ideas and draft three service packages for your skill. Then check that you can really deliver each one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a freelance business coach. Help me choose a niche and create service packages.

        About me:
        - Skill: [graphic design]
        - Past work: [2 years at a design agency, mostly food packaging and logos]
        - Clients I enjoy: [small cafés, bakeries and food brands]
        - State: [Kerala], but I can work online

        Please:
        1. Suggest 3 niche ideas. Each must say who I serve and what I do for them, in one line.
        2. For each niche, list 3 ways I can check real demand myself this month. Do not give market size numbers.
        3. For the niche that fits me best, draft 3 packages: a small starter package, a main package and an add-on or smaller package.
        For each package, give: name, who it is for, deliverables (exact items), number of revision rounds, time to deliver, and what is not included.
        4. Leave the price as [price to decide]. I will work it out from my costs.

        Use simple English and a table for the packages.</pre>
            <ul class="ai-try-checks">
              <li>Each niche names both a client group and a service.</li>
              <li>The answer should not include made-up market sizes or statistics.</li>
              <li>Each package has exact deliverables and a fixed number of revision rounds.</li>
              <li>Each package lists what is not included.</li>
              <li>Check that you can really deliver every item in the time given.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A clear niche makes you easy to find and easy to recommend. Check demand with real conversations, not AI guesses. Then sell clear packages, with exact deliverables and a list of what is not included.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Building a Portfolio</h1>
        </div>
        <p class="lc-lead">A <strong>portfolio</strong> is a collection of your best work. Clients look at it before they contact you. A strong portfolio does more than show pretty pictures. It explains the client's problem, what you did and what happened. This is called a <strong>case study</strong>. In this lesson, you will learn to write short case studies with AI's help. You will also learn the honesty rules: client permission, clear labels and truth about AI use.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A case study has three parts: the problem, the work and the result, shown with Sneha's made-up Kayal Foods packaging project. Below, a checklist to use before you publish: written permission, your role stated, concept work labelled, AI use explained, no private data, and true results.">
            <defs><marker id="fr4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700">A case study in three parts (Kayal Foods, made-up)</text>
              <rect x="20" y="36" width="220" height="90" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="130" y="62" font-weight="700" fill="#f9a8d4">1. Problem</text>
              <text x="130" y="86" font-size="11.5">Old packs looked dated</text>
              <text x="130" y="106" font-size="11.5" fill="#9b99b8">hard to spot on shelves</text>
              <rect x="270" y="36" width="220" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="62" font-weight="700" fill="#c4b5fd">2. Work</text>
              <text x="380" y="86" font-size="11.5">Lead designer on the pack</text>
              <text x="380" y="106" font-size="11.5" fill="#9b99b8">3 pack sizes, new colours</text>
              <rect x="520" y="36" width="220" height="90" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="630" y="62" font-weight="700" fill="#6ee7b7">3. Result</text>
              <text x="630" y="86" font-size="11.5">New packs went on sale</text>
              <text x="630" y="106" font-size="11.5" fill="#9b99b8">only true, checked facts</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr4a)">
                <line x1="242" y1="81" x2="266" y2="81"/><line x1="492" y1="81" x2="516" y2="81"/>
              </g>
              <rect x="20" y="146" width="720" height="130" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="172" font-weight="700" fill="#fcd34d">Before you publish, check:</text>
              <g font-size="12.5" text-anchor="start">
                <circle cx="52" cy="199" r="8" fill="none" stroke="#10b981"/><path d="M48,199 L51,202 L57,195" stroke="#10b981" stroke-width="1.8" fill="none"/>
                <text x="68" y="203">Written permission from the client</text>
                <circle cx="52" cy="227" r="8" fill="none" stroke="#10b981"/><path d="M48,227 L51,230 L57,223" stroke="#10b981" stroke-width="1.8" fill="none"/>
                <text x="68" y="231">Your role is stated clearly</text>
                <circle cx="52" cy="255" r="8" fill="none" stroke="#10b981"/><path d="M48,255 L51,258 L57,251" stroke="#10b981" stroke-width="1.8" fill="none"/>
                <text x="68" y="259">Concept work is labelled</text>
                <circle cx="412" cy="199" r="8" fill="none" stroke="#10b981"/><path d="M408,199 L411,202 L417,195" stroke="#10b981" stroke-width="1.8" fill="none"/>
                <text x="428" y="203">AI use is explained</text>
                <circle cx="412" cy="227" r="8" fill="none" stroke="#10b981"/><path d="M408,227 L411,230 L417,223" stroke="#10b981" stroke-width="1.8" fill="none"/>
                <text x="428" y="231">No private data or sales figures</text>
                <circle cx="412" cy="255" r="8" fill="none" stroke="#10b981"/><path d="M408,255 L411,258 L417,251" stroke="#10b981" stroke-width="1.8" fill="none"/>
                <text x="428" y="259">Results are true, not guessed</text>
              </g>
            </g>
          </svg>
          <figcaption>Tell each project as a short story: problem, work, result. Then run the honesty checks before you publish it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in your portfolio</h3>
          <p>You do not need many projects. Three to five good pieces, close to your niche, are enough to start. Here are Sneha's three made-up pieces.</p>
          <table class="lc-table">
            <thead><tr><th>Project</th><th>Type</th><th>What she can show</th><th>How she labels it</th></tr></thead>
            <tbody>
              <tr><td><strong>Kayal Foods</strong> packaging refresh (banana chips brand)</td><td>Agency project</td><td>The final packs. Not sales numbers or internal documents.</td><td>"Done at Coastline Creative. My role: lead pack designer, working with the art director."</td></tr>
              <tr><td><strong>Kappa Corner</strong> logo, stall board and menu (a snack stall in Kerala)</td><td>Low-cost real project (₹5,000)</td><td>The logo, board, menu and a short quote from the owner, Joseph</td><td>"Client project, 2026." Joseph agreed in writing to the quote.</td></tr>
              <tr><td><strong>Kaapi Kadha</strong> filter-coffee brand</td><td>Self-started practice project</td><td>Logo, cup and bag design, 3 Instagram posts</td><td>"Concept project, not a real client." She states that she used AI for mood-board ideas only.</td></tr>
            </tbody>
          </table>
          <p>A <strong>concept project</strong> (a practice project with no real client) is fine. Many new freelancers use them. Just label it clearly, so nobody thinks it was paid work.</p>
        </div>
        <div class="lc-card">
          <h3>Write a case study with AI's help</h3>
          <p>A case study has three parts. <strong>Problem:</strong> what the client needed. <strong>Work:</strong> what you did and why. <strong>Result:</strong> what happened after. AI is good at turning rough notes into clear, short text. But AI often adds impressive results that nobody measured. You must stop that.</p>
          <p>A weak prompt invites made-up claims:</p>
          <pre><code>Write an impressive case study for my packaging design project.</code></pre>
          <p>A better prompt gives your notes and strict rules:</p>
          <pre><code>Turn my notes into a portfolio case study of about 150 words.
        Use three headings: Problem, Work, Result.
        Notes: agency project at Coastline Creative for Kayal Foods, a banana chips brand.
        Old packs looked dated and were hard to spot on shop shelves.
        My role: lead pack designer, with the art director.
        Work: new colour system, clearer brand name, 3 pack sizes.
        Result: the new packs went on sale, and the client used the design on all 3 sizes.
        Rules: use only these facts. Do not add sales numbers, percentages or quotes.</code></pre>
          <p>Here is the kind of <strong>Result</strong> line Sneha keeps: "The new packs went on sale across all three sizes." It is true and she can prove it. She does not write "sales grew 40%", because nobody gave her that number.</p>
        </div>
        <div class="lc-card">
          <h3>Permission and honesty rules</h3>
          <ul class="lc-list">
            <li><strong>Agency work.</strong> Your old employer and its client may own the work. Check your job contract and any NDA (non-disclosure agreement). Ask the agency, and if needed the client, for written permission before you show it.</li>
            <li><strong>Your role.</strong> Say exactly what you did. "Lead pack designer, with the art director" is honest. "I rebranded Kayal Foods" is not, if a team did it.</li>
            <li><strong>Quotes and testimonials.</strong> A testimonial is a client's words about your work. Use only real words, with the client's permission. Never write one with AI and present it as real.</li>
            <li><strong>AI use.</strong> If AI helped with any part of the work, say which part. Clients are paying for your skill, so they deserve to know.</li>
            <li><strong>Private details.</strong> Blur or remove prices, phone numbers, sales figures and anything marked confidential.</li>
          </ul>
          <p>This is general guidance, not legal advice. If you are unsure who owns a piece of work, ask a lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: can Sneha show it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each item into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK to show"></div>
              <div data-sorter-target="bucket" data-bucket="ask" data-label="Ask permission first"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not show"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="It is her own practice work and it is clearly labelled, so nobody is misled.">The Kaapi Kadha designs, labelled "Concept project, not a real client"</li>
              <li data-bucket="ok" data-why="Joseph has already agreed in writing, so she has permission.">The Kappa Corner logo and menu, which Joseph agreed she can show</li>
              <li data-bucket="ask" data-why="The agency and its client may own this work. She needs written permission first.">The final Kayal Foods packs, before she has asked the agency</li>
              <li data-bucket="ask" data-why="A private message is not a public testimonial. She must ask before she publishes it.">A kind WhatsApp message from a client, used as a testimonial</li>
              <li data-bucket="no" data-why="Sales figures are the client's private information. Permission to show the design does not cover them.">A Kayal Foods sales report that shows the new packs sold well</li>
              <li data-bucket="no" data-why="A made-up review is dishonest, even if it sounds like something a client might say.">A client review that AI wrote to "fill the gap"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your rough notes about one project. Ask the AI to turn them into an honest case study, and to point out what is missing.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an editor who helps freelancers write honest portfolio case studies.

        My project notes:
        - Project: [logo, stall board and menu for Kappa Corner, a small snack stall in Kerala]
        - Type: [real client, low-cost project] (or: agency project / concept project)
        - My role: [I did all the design work myself]
        - Problem: [the stall had a hand-painted board and no logo; tourists did not notice it]
        - Work: [simple logo, bright board design in English and Malayalam, 1-page menu with prices]
        - Result I can prove: [the owner now uses the logo on paper bags and a new board]
        - Client quote with permission: [a short quote from Joseph, the owner, agreed in writing]
        - AI use: [none in the final design]

        Please:
        1. Write a case study of about 150 words with the headings Problem, Work and Result.
        2. Use only my facts. Do not add numbers, percentages or quotes that I did not give.
        3. Add a one-line label at the top, such as "Client project" or "Concept project".
        4. List 3 questions I should ask the client to make the case study stronger, and any permission I still need.</pre>
            <ul class="ai-try-checks">
              <li>The case study uses only your facts. Look for invented numbers or quotes and remove them.</li>
              <li>It has a clear label: client, agency or concept project.</li>
              <li>Your role is described honestly.</li>
              <li>The questions include asking for permission to use the client's name or words.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good case study tells a true story: problem, work, result. Use AI to write it clearly, but give it only real facts. Get permission, label concept work and be open about AI use.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Finding Clients</h1>
        </div>
        <p class="lc-lead">Good work does not sell itself. Clients must first know that you exist. In this lesson, you will compare three places to find clients: Upwork, Fiverr and LinkedIn. You will write a profile that a client understands in five seconds. You will also learn <strong>warm outreach</strong>: short, personal messages to people who already know you. And you will learn how <strong>referrals</strong> (clients or friends recommending you) bring in work. AI helps you draft all of this faster.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Four sources of clients: platforms, LinkedIn, referrals and warm outreach. They lead into Sneha's made-up month of warm outreach: 20 messages, 6 replies, 3 calls and 1 project.">
            <defs><marker id="fr5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="125" y="24" font-weight="700">Where clients come from</text>
              <rect x="15" y="40" width="220" height="50" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="125" y="61" font-weight="700" fill="#93c5fd">Platforms</text><text x="125" y="79" font-size="11" fill="#9b99b8">Upwork, Fiverr</text>
              <rect x="15" y="100" width="220" height="50" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="125" y="121" font-weight="700" fill="#67e8f9">LinkedIn</text><text x="125" y="139" font-size="11" fill="#9b99b8">profile, Service Page, posts</text>
              <rect x="15" y="160" width="220" height="50" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="125" y="181" font-weight="700" fill="#6ee7b7">Referrals</text><text x="125" y="199" font-size="11" fill="#9b99b8">past clients, Rohan</text>
              <rect x="15" y="220" width="220" height="50" rx="9" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="125" y="241" font-weight="700" fill="#fcd34d">Warm outreach</text><text x="125" y="259" font-size="11" fill="#9b99b8">people who know you</text>
              <g stroke="#9b99b8" stroke-width="1.5">
                <line x1="236" y1="65" x2="270" y2="65"/><line x1="236" y1="125" x2="270" y2="125"/><line x1="236" y1="185" x2="270" y2="185"/><line x1="236" y1="245" x2="270" y2="245"/>
                <line x1="270" y1="65" x2="270" y2="245"/>
                <line x1="270" y1="75" x2="324" y2="75" marker-end="url(#fr5a)"/>
              </g>
              <text x="530" y="24" font-weight="700">Sneha's month of warm outreach (made-up)</text>
              <path d="M330,50 L730,50 L690,100 L370,100 Z" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="530" y="80">20 messages sent</text>
              <path d="M372,110 L688,110 L648,160 L412,160 Z" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="530" y="140">6 replies (30%)</text>
              <path d="M414,170 L646,170 L606,220 L454,220 Z" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="530" y="200">3 calls (half)</text>
              <path d="M456,230 L604,230 L570,275 L490,275 Z" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="530" y="257" font-weight="700" fill="#6ee7b7">1 project</text>
            </g>
          </svg>
          <figcaption>Use a few channels, not all of them. Track your messages, so you know what works. In this made-up month, 20 warm messages led to 1 project.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three platforms compared</h3>
          <p>Each platform works in a different way. Features and fees change often, so always check the platform's current help and fee pages before you start.</p>
          <table class="lc-table">
            <thead><tr><th>Platform</th><th>How you get work</th><th>Good for</th><th>Costs to check</th></tr></thead>
            <tbody>
              <tr><td><strong>Upwork</strong></td><td>Clients post jobs. You send proposals, which use "Connects" (credits for applying). You can also list fixed-price services in its Project Catalog.</td><td>Clients from many countries, larger projects, clients who want to compare proposals</td><td>A service fee on your earnings and the cost of Connects. Check the current fee page.</td></tr>
              <tr><td><strong>Fiverr</strong></td><td>You create "gigs": fixed-price services, often with up to three packages. Buyers find your gig and order it.</td><td>Clear, packaged services, such as a Starter Logo</td><td>Fiverr keeps a share of each order. Check the current fee page.</td></tr>
              <tr><td><strong>LinkedIn</strong></td><td>Your profile, your posts and a free Service Page. Clients can send you a request for a proposal. You agree terms and payment outside LinkedIn.</td><td>Business owners, marketing managers and people from your past jobs</td><td>A basic profile and Service Page are free. Paid plans are optional.</td></tr>
            </tbody>
          </table>
          <p>Two rules for platforms. First, read their terms. Some do not allow you to move a client off the platform to avoid fees. Second, the platform owns the relationship. So also build your own direct channels.</p>
          <p>Sneha keeps it simple. She uses LinkedIn and warm outreach for Indian cafés and food brands. She lists her Starter Logo as a fixed-price service on one platform, to reach clients abroad.</p>
        </div>
        <div class="lc-card">
          <h3>A profile a client understands in five seconds</h3>
          <p>A café owner does not search for "creative visual storyteller". They search for "logo for my café". Your headline should say who you help and what you do.</p>
          <table class="lc-table">
            <thead><tr><th>Weak headline</th><th>Better headline</th></tr></thead>
            <tbody>
              <tr><td>Passionate creative | Designer | Dreamer</td><td>Brand identity designer for cafés and food brands | Logos, menus, packaging | Kerala and online</td></tr>
            </tbody>
          </table>
          <p>A weak prompt gives a weak profile:</p>
          <pre><code>Write a LinkedIn profile for a designer.</code></pre>
          <p>A better prompt gives real facts and proof:</p>
          <pre><code>Write a LinkedIn "About" section (under 150 words) for me.
        I am a brand identity designer in Kerala for small cafés and food brands.
        Proof: 2 years at Coastline Creative (lead designer on Kayal Foods packs),
        a logo and menu for Kappa Corner, and a concept brand called Kaapi Kadha.
        Packages: Starter Logo, Brand Identity, Social Media Kit.
        End with one clear next step: "Message me for a free 20-minute call."
        Use only these facts. Do not add numbers of clients or awards.</code></pre>
          <p>AI may still add claims like "trusted by dozens of brands". Delete anything that is not true.</p>
        </div>
        <div class="lc-card">
          <h3>Warm outreach and referrals</h3>
          <p><strong>Cold outreach</strong> means messaging strangers. <strong>Warm outreach</strong> means messaging people who already know you: ex-colleagues, past clients, friends who run businesses. Warm messages get more replies, because trust already exists.</p>
          <p>Sneha's warm list has 20 people. It includes 6 ex-colleagues, 5 friends with food businesses and Joseph from Kappa Corner. It also includes Rohan, a freelance web developer in Rajasthan. Rohan builds websites for cafés. They agree to refer clients to each other. Each still quotes and invoices their own work.</p>
          <p>Good warm messages follow four rules:</p>
          <ul class="lc-list">
            <li><strong>Personal.</strong> Mention something real you share, such as a past project.</li>
            <li><strong>Short.</strong> Four or five lines. It should fit on one phone screen.</li>
            <li><strong>One clear ask.</strong> "Do you know a café that needs a new logo?" is easy to answer.</li>
            <li><strong>No pressure.</strong> Accept "no" politely. Do not send the same message again and again.</li>
          </ul>
          <p>Sneha tracks her messages in a simple spreadsheet. In one made-up month: 20 messages, 6 replies (6 ÷ 20 = 30%), 3 calls (half of the replies) and 1 project. That is 1 project for every 20 messages. Now she knows roughly how many messages she needs each month.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a warm message to a bakery</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sneha's prompt">Joseph tells Sneha that Mariam, who runs Pavizham Bakes in Kerala, needs a logo. Sneha asks the AI: "Write a short WhatsApp message to Mariam. Joseph from Kappa Corner referred me. I design logos for cafés and bakeries. Ask if she has 15 minutes for a call this week."</li>
              <li data-kind="answer" data-label="AI draft">The AI writes a friendly message. It mentions Joseph, introduces Sneha and asks for a short call.</li>
              <li data-kind="warn" data-label="A claim to remove">The draft also says: "I have helped over 30 bakeries increase their sales." This is not true. Sneha has 3 portfolio pieces and no sales data.</li>
              <li data-kind="check" data-label="Use real proof">Sneha replaces it with a true line: "I recently designed the logo and menu for Kappa Corner." She adds a link to that case study.</li>
              <li data-kind="check" data-label="Make it short">She cuts the message to 4 lines, so it fits on one phone screen. She removes the price, which she will discuss on the call.</li>
              <li data-kind="tool" data-label="Send and track">She sends it from her WhatsApp Business app. In her outreach sheet, she adds: Mariam, Pavizham Bakes, referral from Joseph, sent today, follow up in 5 days.</li>
              <li data-kind="result" data-label="Reply">Mariam replies the next day and books a call. Sneha thanks Joseph for the referral.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to draft your client-finding kit: a headline, a short profile and three warm messages. Use only true facts about yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a freelance marketing coach. Help me find my first clients honestly.

        About me:
        - Service: [brand identity design for small cafés and food brands]
        - Location: [Kerala, working with clients across India and online]
        - Real proof: [2 years at a design agency (lead designer on a snack brand's packaging), a logo and menu for a small snack stall, one concept brand project]
        - Packages: [Starter Logo, Brand Identity, Social Media Kit]
        - Warm contacts: [ex-colleagues, friends who run food businesses, a past client, a web developer friend who builds café websites]

        Please write:
        1. 3 LinkedIn headline options (under 200 characters each) that say who I help and what I do.
        2. A LinkedIn "About" section under 150 words, ending with one clear next step.
        3. A short description for a LinkedIn Service Page or a fixed-price platform listing (under 80 words).
        4. 3 warm messages (under 60 words each): one to an ex-colleague, one to a friend who owns a café, and one to the web developer about referring clients to each other.

        Rules: use only my facts. Do not invent client numbers, results, reviews or awards. Use simple, friendly English.</pre>
            <ul class="ai-try-checks">
              <li>Delete any claim that is not true, such as numbers of clients or sales results.</li>
              <li>Each headline says who you help and what you do.</li>
              <li>Each warm message is personal, short and has one clear ask.</li>
              <li>Before you post on a platform, check its current rules and fee page yourself.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clients come from a few channels, not everywhere. Pick one or two platforms, a clear profile and steady warm outreach. Track your messages, use only true proof, and let AI speed up the drafting.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Writing Winning Proposals</h1>
        </div>
        <p class="lc-lead">A <strong>proposal</strong> is your written offer to a client. It says what you will do, by when, and for how much. Many clients compare three or four proposals. The one that wins is often not the cheapest. It is the one that shows you understood the brief. In this lesson, you will read a real-looking brief, ask good questions and write a clear proposal. You will compare a weak and a strong proposal for Sneha's made-up client, Brew Theory. AI will help you draft faster, but you will set the facts.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A weak proposal next to a strong proposal for Brew Theory. The weak one is vague, has a price range, unlimited changes and no next step. The strong one names the client's goal, asks two questions, lists the scope and proof, gives one price and offers a call. Below, the six parts of a strong proposal: brief, questions, scope, proof, price and next step.">
            <defs><marker id="fr6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700">Two proposals for the same brief (Brew Theory, made-up)</text>
              <rect x="15" y="36" width="355" height="172" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="192" y="60" font-weight="700" fill="#f9a8d4">Weak proposal</text>
              <rect x="390" y="36" width="355" height="172" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="567" y="60" font-weight="700" fill="#6ee7b7">Strong proposal</text>
              <g font-size="12" text-anchor="start">
                <text x="32" y="86">"Dear Sir, I am a passionate designer"</text>
                <text x="32" y="106">No sign she read the brief</text>
                <text x="32" y="126">"I can do all your design needs"</text>
                <text x="32" y="146">Price: ₹30,000 to ₹60,000?</text>
                <text x="32" y="166">"Unlimited changes!"</text>
                <text x="32" y="186">No dates, no next step</text>
                <text x="407" y="86">"Hi Karthik: one brand for 2 outlets"</text>
                <text x="407" y="106">2 questions about the brief</text>
                <text x="407" y="126">Scope: what is in, what is not</text>
                <text x="407" y="146">Proof: Kaapi Kadha, Kayal Foods</text>
                <text x="407" y="166">₹45,000, 3 rounds, 3 to 4 weeks</text>
                <text x="407" y="186">Next step: a 30-minute call</text>
              </g>
              <text x="380" y="236" font-weight="700">Six parts of a strong proposal</text>
              <rect x="18" y="248" width="104" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="70" y="273">Brief</text>
              <rect x="142" y="248" width="104" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="194" y="273">Questions</text>
              <rect x="266" y="248" width="104" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="318" y="273">Scope</text>
              <rect x="390" y="248" width="104" height="40" rx="8" fill="#27274e" stroke="#10b981"/><text x="442" y="273">Proof</text>
              <rect x="514" y="248" width="104" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="566" y="273">Price</text>
              <rect x="638" y="248" width="104" height="40" rx="8" fill="#27274e" stroke="#ec4899"/><text x="690" y="273">Next step</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr6a)">
                <line x1="123" y1="268" x2="139" y2="268"/><line x1="247" y1="268" x2="263" y2="268"/><line x1="371" y1="268" x2="387" y2="268"/><line x1="495" y1="268" x2="511" y2="268"/><line x1="619" y1="268" x2="635" y2="268"/>
              </g>
            </g>
          </svg>
          <figcaption>The strong proposal is not longer. It is more specific: it uses the client's own words, one clear price and one clear next step.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: read the brief before you write</h3>
          <p>A <strong>brief</strong> is the client's description of what they want. Read it twice. Mark what is clear and what is missing. Here is the made-up brief Karthik sends Sneha:</p>
          <pre><code>Hi Sneha, I saw your Kaapi Kadha post on LinkedIn.
        We run Brew Theory, a specialty café in Karnataka.
        We open our second outlet across town in March.
        Our logo was made in a hurry four years ago.
        We want a proper brand: logo, menu, cups, signs.
        Budget is around ₹40,000 to ₹50,000. Can you send a proposal?
        Karthik</code></pre>
          <table class="lc-table">
            <thead><tr><th>The brief says</th><th>What it tells Sneha</th><th>What she still needs to ask</th></tr></thead>
            <tbody>
              <tr><td>"Second outlet in March"</td><td>A firm deadline. Both outlets must look the same.</td><td>The exact opening date</td></tr>
              <tr><td>"Logo made in a hurry"</td><td>He wants a fresh start, not a small change</td><td>Is there anything he wants to keep, such as colours?</td></tr>
              <tr><td>"Logo, menu, cups, signs"</td><td>Her Brand Identity package covers the logo and a 1-page menu. Cups and signs are extra work.</td><td>Does he need cup and sign designs now, or later?</td></tr>
              <tr><td>"₹40,000 to ₹50,000"</td><td>Her ₹45,000 package fits</td><td>Nothing. Do not ask for more money before you understand the job.</td></tr>
            </tbody>
          </table>
          <p>AI can help here. Paste the brief without phone numbers or email addresses. Ask the AI: "List what is clear, what is missing, and 5 questions I should ask." Then pick the two or three questions that matter most.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: a weak proposal and a strong proposal</h3>
          <p>Here is a weak proposal. Many clients receive messages like this every week:</p>
          <pre><code>Dear Sir, I am a highly creative and passionate designer.
        I can do all your design needs: logo, menu, cups, signs, website.
        My price will be around ₹30,000 to ₹60,000, depending.
        Unlimited changes until you are happy! Please let me know.</code></pre>
          <p>It does not use his name or his goal. The price is a guess. "Unlimited changes" can mean weeks of unpaid work. There is no next step. Now the strong version:</p>
          <pre><code>Hi Karthik,

        Thank you for the brief, and congratulations on the new outlet.

        What I understood: you want one clear brand for both outlets before
        the March opening. Your current logo no longer fits the café you run.

        My plan: the Brand Identity package
        - Logo system: main logo, short version and icon
        - Colour palette and 2 fonts
        - 1-page menu design and a business card
        - 12-page brand guide, so every printer and staff member uses
          the brand the same way
        - 3 rounds of changes, and final files for print and web

        Not included (I can quote these separately): cup and bag designs,
        signboard artwork, printing, photography and a website.

        Timeline: 3 to 4 weeks from the advance.
        Week 1 mood board. Week 2 two logo ideas. Week 3 logo system,
        colours, menu and card. Week 4 brand guide and final files.

        Price: ₹45,000. 50% (₹22,500) to start. The rest is paid in two
        parts: on logo approval and before the final files.

        Why me: you saw Kaapi Kadha (a concept project, not a client).
        At Coastline Creative, I was lead pack designer for Kayal Foods.
        Portfolio: [link]

        Two questions: Who will approve the designs? Do you want to keep
        anything from the current logo?

        Next step: a 30-minute call on Tuesday or Thursday at 11 am?
        This offer is valid for 14 days.

        Sneha</code></pre>
          <p>Notice the "Not included" line. Karthik asked for cups and signs. Sneha does not pretend her package covers them. She offers to quote them separately, so there is no surprise later.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: let AI draft, then check every line</h3>
          <p>A weak prompt makes the AI guess your prices and your proof:</p>
          <pre><code>Write a proposal for a café that wants branding.</code></pre>
          <p>A better prompt gives the brief, your package and strict rules:</p>
          <pre><code>You are helping me write a freelance proposal. Keep it under 300 words.
        Brief (contact details removed): [paste the brief]
        My package: Brand Identity, ₹45,000, 3 to 4 weeks, 3 rounds of changes.
        Deliverables: [list]. Not included: [list].
        Payment: 50% advance, the rest on logo approval and before final files.
        Proof: [only real projects, with honest labels]
        Use headings: What I understood, My plan, Not included, Timeline,
        Price, Why me, Two questions, Next step.
        Use only my facts. Do not add numbers of clients, awards or results.</code></pre>
          <p>Before you send, check these yourself:</p>
          <ul class="lc-list">
            <li><strong>Numbers.</strong> The price, advance and dates match your package. ₹22,500 is exactly 50% of ₹45,000.</li>
            <li><strong>Proof.</strong> Every project is real and labelled honestly. Remove any claim the AI added.</li>
            <li><strong>Promises.</strong> No "unlimited" anything. No dates you cannot meet.</li>
            <li><strong>Tax.</strong> If you are registered for GST, say whether the price includes it. Ask a CA (chartered accountant) if you are not sure.</li>
            <li><strong>Voice.</strong> Read it aloud. It should sound like you, not like a template.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: keep it or fix it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sneha's AI draft has these lines. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep it"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix or remove it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fix" data-why="Unlimited changes can mean weeks of unpaid work. Her package has 3 rounds.">"Unlimited changes until you are happy"</li>
              <li data-bucket="keep" data-why="One clear price with the exact advance. ₹22,500 is 50% of ₹45,000.">"Price: ₹45,000. 50% (₹22,500) to start."</li>
              <li data-bucket="fix" data-why="This is not true. The AI invented it. Sneha has three portfolio pieces.">"I have designed brands for 50+ cafés across India"</li>
              <li data-bucket="keep" data-why="It answers the brief honestly. Karthik asked for cups and signs, which the package does not cover.">"Not included: cup designs, signboard artwork, printing"</li>
              <li data-bucket="keep" data-why="Good questions show she read the brief and help her plan the work.">"Who will approve the designs? Do you want to keep anything from the current logo?"</li>
              <li data-bucket="fix" data-why="A price range looks like a guess. Give one price for a clear scope.">"My fee will be somewhere between ₹30,000 and ₹60,000"</li>
              <li data-bucket="keep" data-why="An honest label. Karthik found her through this post, so it is strong proof.">"You saw Kaapi Kadha (a concept project, not a client)"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a client brief (remove names, phone numbers and emails). Ask the AI to find the gaps and draft a proposal from your own package facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced freelancer who helps others write clear, honest proposals.

        Client brief (contact details removed):
        [We run a specialty café in Karnataka and open a second outlet in March. Our logo was made in a hurry. We want a proper brand: logo, menu, cups, signs. Budget is around ₹40,000 to ₹50,000.]

        My offer:
        - Package: [Brand Identity], price [₹45,000], time [3 to 4 weeks]
        - Deliverables: [logo system, colour palette, 2 fonts, 1-page menu, business card, 12-page brand guide, 3 rounds of changes]
        - Not included: [cups, signboard artwork, printing, photography, website]
        - Payment: [50% advance, the rest in two parts: on logo approval and before final files]
        - Real proof: [a concept coffee brand (not a real client); lead pack designer for a snack brand at an agency]

        Please:
        1. List what the brief makes clear, what is missing, and the 3 most useful questions to ask.
        2. Write a proposal under 300 words with these headings: What I understood, My plan, Not included, Timeline, Price, Why me, Questions, Next step.
        3. After the proposal, list every number and claim in it, so I can check them.

        Rules: use only my facts. Do not invent clients, results or awards. Use simple, warm English.</pre>
            <ul class="ai-try-checks">
              <li>The price, advance and timeline match your offer exactly.</li>
              <li>The "Not included" part answers any extras the client asked for.</li>
              <li>Remove any proof or result that the AI invented.</li>
              <li>The proposal ends with one clear next step, such as a call.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A winning proposal shows the client you understood their goal. Use their words, give one clear scope and price, show honest proof and end with one next step. Let AI draft it, but you check every number and claim.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Pricing Your Work</h1>
        </div>
        <p class="lc-lead">Many new freelancers pick a price by looking at what others charge. Then they wonder why they are busy but still short of money. In this lesson, you will compare three ways to price: hourly, per project and by value. You will work out an hourly rate from your real costs, a tax set-aside and your unbilled time. Then you will use that rate to quote a real package. You will follow Sneha's made-up numbers step by step. AI can explain and calculate, but you check every sum.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: Sneha's rate calculation. Costs and savings of 51,500 rupees, divided by 0.9 for a 10 percent tax set-aside, gives 57,222 rupees. Rounded up to a goal of 60,000 rupees, divided by 80 billable hours, gives 750 rupees an hour. Middle: her 160 working hours, only 80 of them billable. Bottom: the Brand Identity quote, 55 hours times 750 rupees is 41,250 rupees, priced at 45,000 rupees.">
            <defs><marker id="fr7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-weight="700">Sneha's hourly rate, step by step (made-up numbers)</text>
              <rect x="20" y="32" width="165" height="58" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="102" y="54" font-size="11" fill="#9b99b8">Costs + savings</text><text x="102" y="76" font-weight="700">₹51,500</text>
              <rect x="205" y="32" width="165" height="58" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="287" y="54" font-size="11" fill="#9b99b8">÷ 0.9 (10% tax set-aside)</text><text x="287" y="76" font-weight="700">₹57,222</text>
              <rect x="390" y="32" width="165" height="58" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="472" y="54" font-size="11" fill="#9b99b8">Goal, rounded up</text><text x="472" y="76" font-weight="700">₹60,000</text>
              <rect x="575" y="32" width="165" height="58" rx="9" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="657" y="54" font-size="11" fill="#9b99b8">÷ 80 billable hours</text><text x="657" y="76" font-weight="700" fill="#6ee7b7">₹750 an hour</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr7a)">
                <line x1="186" y1="61" x2="201" y2="61"/><line x1="371" y1="61" x2="386" y2="61"/><line x1="556" y1="61" x2="571" y2="61"/>
              </g>
              <text x="380" y="120" font-weight="700">Her 160 working hours a month</text>
              <rect x="20" y="130" width="360" height="32" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/>
              <text x="200" y="151" font-weight="700">80 billable (client work)</text>
              <rect x="380" y="130" width="135" height="32" fill="#27274e" stroke="#4b4a78"/>
              <text x="447" y="150" font-size="11">Finding clients 30</text>
              <rect x="515" y="130" width="90" height="32" fill="#27274e" stroke="#4b4a78"/>
              <text x="560" y="150" font-size="11">Admin 20</text>
              <rect x="605" y="130" width="90" height="32" fill="#27274e" stroke="#4b4a78"/>
              <text x="650" y="150" font-size="11">Learning 20</text>
              <rect x="695" y="130" width="45" height="32" fill="#27274e" stroke="#4b4a78"/>
              <text x="717" y="150" font-size="11">10</text>
              <text x="560" y="180" font-size="11" fill="#9b99b8">80 unbilled hours (10 = extra revisions, buffer)</text>
              <text x="380" y="204" font-size="12" fill="#f9a8d4">Common mistake: ₹60,000 ÷ 160 hours = ₹375. That is half the real need.</text>
              <text x="380" y="232" font-weight="700">Using the rate: Brand Identity for Brew Theory</text>
              <rect x="20" y="244" width="330" height="44" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="185" y="271">55 hours × ₹750 = ₹41,250</text>
              <rect x="410" y="244" width="330" height="44" rx="9" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="575" y="271" fill="#fcd34d">Package price ₹45,000 (₹818 an hour)</text>
              <line x1="352" y1="266" x2="405" y2="266" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr7a)"/>
            </g>
          </svg>
          <figcaption>Start from what you need, not from what others charge. Divide by billable hours only, then use the rate to check each package price.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three ways to price</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>How it works</th><th>Good when</th><th>Risk</th></tr></thead>
            <tbody>
              <tr><td><strong>Hourly</strong></td><td>You charge for each hour you work</td><td>The work is hard to define, such as ongoing design support</td><td>The client cannot predict the total. If you work faster, you earn less.</td></tr>
              <tr><td><strong>Per project</strong></td><td>One fixed price for a clear scope</td><td>The deliverables are clear, as in a package</td><td>If the work takes longer than planned, your real hourly rate drops</td></tr>
              <tr><td><strong>Value</strong></td><td>You price on what the result is worth to the client</td><td>The work matters a lot to the client's business, and you understand how</td><td>You need real facts from the client. Guessing their value is not enough.</td></tr>
            </tbody>
          </table>
          <p>Here is Sneha's Brand Identity work for Brew Theory, priced two ways:</p>
          <ul class="lc-list">
            <li><strong>Hourly:</strong> 55 hours × ₹750 = ₹41,250. If she gets faster and needs only 45 hours, she earns just ₹33,750.</li>
            <li><strong>Per project:</strong> ₹45,000 fixed. At 45 hours, that is ₹1,000 an hour. But at 65 hours, it is only ₹692 an hour. That is below her minimum of ₹715.</li>
          </ul>
          <p>So project pricing rewards skill, but only with a clear scope. The scope lesson later in this course shows how to protect it.</p>
          <p><strong>Value pricing</strong> is about the result, not the hours. Karthik's new brand will appear on two outlets, menus and signs for years. That is why ₹45,000 is fair, even though the hours cost ₹41,250. Do not invent the client's sales to justify a price. Ask them what the result is worth to them.</p>
        </div>
        <div class="lc-card">
          <h3>Work out your hourly rate</h3>
          <p>You need four numbers. Your monthly costs. A <strong>tax set-aside</strong> (money you keep aside for tax). Your income goal. Your <strong>billable hours</strong> (hours you can charge clients for). Sneha uses a spreadsheet:</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>Item</th><th>Value or formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Personal costs a month</td><td>33000</td><td>₹33,000</td></tr>
              <tr><td>2</td><td>Business costs a month</td><td>10500</td><td>₹10,500</td></tr>
              <tr><td>3</td><td>Savings goal a month</td><td>8000</td><td>₹8,000</td></tr>
              <tr><td>4</td><td>Needed before tax</td><td><code>=SUM(B1:B3)</code></td><td>₹51,500</td></tr>
              <tr><td>5</td><td>Tax set-aside (planning assumption)</td><td>10%</td><td>10%</td></tr>
              <tr><td>6</td><td>Required revenue</td><td><code>=B4/(1-B5)</code></td><td>₹57,222</td></tr>
              <tr><td>7</td><td>Income goal (rounded up)</td><td>60000</td><td>₹60,000</td></tr>
              <tr><td>8</td><td>Billable hours a month</td><td>80</td><td>80</td></tr>
              <tr><td>9</td><td>Hourly rate at goal</td><td><code>=B7/B8</code></td><td>₹750</td></tr>
              <tr><td>10</td><td>Minimum hourly rate</td><td><code>=B6/B8</code></td><td>₹715</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Why divide by 0.9?</strong> If 10% of income goes aside for tax, ₹51,500 must be the other 90%. So ₹51,500 ÷ 0.9 = ₹57,222.</li>
            <li><strong>The 10% is only a made-up planning number.</strong> It is not a tax rate. Your real tax depends on your income and situation. Ask a CA (chartered accountant). This is general education, not tax advice.</li>
            <li><strong>Why only 80 hours?</strong> Sneha works 160 hours a month. But 80 of them go on finding clients, admin, learning and extra revisions. Nobody pays for those hours.</li>
          </ul>
          <p>AI is helpful here, but it often makes maths mistakes. A weak prompt:</p>
          <pre><code>What should a graphic designer in India charge per hour?</code></pre>
          <p>The AI will give a general range. That range does not know your costs. A better prompt:</p>
          <pre><code>Help me work out my freelance hourly rate. Show each step.
        Monthly costs: personal ₹33,000, business ₹10,500, savings ₹8,000.
        Keep 10% of income aside for tax (a planning assumption only).
        Income goal: round up to the next ₹5,000.
        I work 160 hours a month, but only 80 are billable.
        Give the rate at my goal and my minimum rate.
        Then give me Google Sheets formulas so I can check the maths.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Quote a package with your rate</h3>
          <p>Sneha estimates the hours for the Brand Identity package. She uses notes from her past projects, not a guess.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Hours</th><th>Task</th><th>Hours</th></tr></thead>
            <tbody>
              <tr><td>Kick-off and research</td><td>6</td><td>Colours and fonts</td><td>4</td></tr>
              <tr><td>Mood board</td><td>4</td><td>1-page menu</td><td>5</td></tr>
              <tr><td>2 logo ideas</td><td>12</td><td>Business card</td><td>2</td></tr>
              <tr><td>3 rounds of changes</td><td>9</td><td>12-page brand guide</td><td>5</td></tr>
              <tr><td>Logo system</td><td>6</td><td>Final files</td><td>2</td></tr>
              <tr><td colspan="3"><strong>Total</strong></td><td><strong>55</strong></td></tr>
            </tbody>
          </table>
          <p>55 hours × ₹750 = ₹41,250. She prices the package at ₹45,000. The extra ₹3,750 covers risk, such as a slow client or a hard brief. Her effective rate is ₹45,000 ÷ 55 = ₹818 an hour.</p>
          <p><strong>What if the client asks for a lower price?</strong> Suppose Karthik asks for ₹40,000. For the same 55 hours, that is only ₹727 an hour. So Sneha changes the <em>scope</em>, not her rate. She offers 2 rounds of changes and no business card. That saves about 5 hours. Now 50 hours for ₹40,000 is ₹800 an hour.</p>
          <p>The same rule works for small budgets. Mariam of Pavizham Bakes has about ₹20,000. Sneha offers the Starter Logo at ₹15,000 now. The Social Media Kit (₹12,000) can come later, when Mariam is ready.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sneha checks her rate with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sneha's prompt">Sneha gives the AI her costs (₹51,500 with savings), a 10% tax set-aside and 160 working hours a month. She asks for her hourly rate.</li>
              <li data-kind="answer" data-label="AI's answer">The AI rounds her goal to ₹60,000. Then it says: "₹60,000 ÷ 160 hours = ₹375 an hour."</li>
              <li data-kind="warn" data-label="A mistake to catch">The AI divided by all 160 hours. But only 80 hours are billable. At ₹375, Sneha would earn just ₹30,000 a month from 80 paid hours.</li>
              <li data-kind="check" data-label="Sneha corrects it">She replies: "Only 80 hours are billable. Please recalculate." The new answer is ₹750 an hour, with a minimum of ₹715.</li>
              <li data-kind="tool" data-label="Spreadsheet check">She types the numbers into Google Sheets with <code>=B4/(1-B5)</code> and <code>=B7/B8</code>.</li>
              <li data-kind="result" data-label="Sheet result">The sheet shows ₹57,222 required revenue, ₹750 at her goal and ₹715 minimum. It matches.</li>
              <li data-kind="check" data-label="Test a package">She checks her Brand Identity price: 55 hours × ₹750 = ₹41,250. Her ₹45,000 price is above it, so the package works.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to work out your own hourly rate and check one package price. Use rounded numbers, not your bank statements.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful freelance pricing coach. This is general education, not tax or financial advice.

        My numbers (monthly, in ₹):
        - Personal costs: [33,000]
        - Business costs: [10,500]
        - Savings goal: [8,000]
        - Tax set-aside: [10%] of income (a planning assumption, not a tax rate)
        - Working hours: [160]. Billable hours: [80]
        - One package I sell: [Brand Identity] at [₹45,000], estimated [55] hours

        Please:
        1. Calculate, step by step: money needed before tax, required revenue (needed ÷ (1 − set-aside)), a goal rounded up to the next ₹5,000, my rate at the goal and my minimum rate. Divide by billable hours only.
        2. Give Google Sheets formulas for each step, with the cell each value goes in.
        3. Check my package: hours × goal rate, and price ÷ hours. Is the price high enough?
        4. Show my real hourly rate if the package takes 20% more hours than planned.
        5. Suggest 2 ways to cut scope, not price, for a client with a smaller budget.

        Show every sum so I can check it.</pre>
            <ul class="ai-try-checks">
              <li>Check that the rate is divided by billable hours, not all working hours.</li>
              <li>Redo each sum with a calculator or the spreadsheet formulas.</li>
              <li>The answer should call the tax set-aside an assumption and say to ask a CA.</li>
              <li>The scope ideas remove work, not just lower the price.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Price from your needs: costs plus savings, a tax set-aside, then divide by billable hours only. Use that rate to check every package. When a client has less money, cut the scope, not your rate.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Discovery Calls and Scoping</h1>
        </div>
        <p class="lc-lead">A <strong>discovery call</strong> is a short first call where you learn what the client really needs. A <strong>scope document</strong> then writes down exactly what you will deliver, and what you will not. Together they prevent most client problems: surprise requests, unclear feedback and unpaid extra work. In this lesson, you will plan a discovery call. You will turn your notes into a scope document with AI's help. You will also write a clear "out of scope" list. You will follow Sneha's call with Karthik of Brew Theory.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three stages: before the call, research and questions; during the 30-minute call, listen and take notes; after the call, AI drafts a summary and Sneha checks it. This leads to a scope document with two columns: in scope, such as the logo system, menu and brand guide; and out of scope, such as cups, signboard artwork, printing and the website.">
            <defs><marker id="fr8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-weight="700">From first call to a signed-off scope</text>
              <rect x="20" y="34" width="210" height="62" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="125" y="58" font-weight="700" fill="#c4b5fd">1. Before the call</text>
              <text x="125" y="80" font-size="11" fill="#9b99b8">research, 10 questions</text>
              <rect x="275" y="34" width="210" height="62" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="58" font-weight="700" fill="#93c5fd">2. The 30-min call</text>
              <text x="380" y="80" font-size="11" fill="#9b99b8">listen, ask, take notes</text>
              <rect x="530" y="34" width="210" height="62" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="635" y="58" font-weight="700" fill="#67e8f9">3. After the call</text>
              <text x="635" y="80" font-size="11" fill="#9b99b8">AI summary, you check</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr8a)">
                <line x1="232" y1="65" x2="270" y2="65"/><line x1="487" y1="65" x2="525" y2="65"/>
                <line x1="635" y1="98" x2="635" y2="118"/>
              </g>
              <rect x="20" y="124" width="720" height="164" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="146" font-weight="700" fill="#fcd34d">Scope document: Brew Theory brand identity</text>
              <rect x="36" y="158" width="336" height="118" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="204" y="178" font-weight="700" fill="#6ee7b7">In scope</text>
              <rect x="388" y="158" width="336" height="118" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="556" y="178" font-weight="700" fill="#f9a8d4">Out of scope</text>
              <g font-size="12" text-anchor="start">
                <text x="52" y="202">Logo system: main, short, icon</text>
                <text x="52" y="222">Colours, 2 fonts, business card</text>
                <text x="52" y="242">1-page menu, 12-page brand guide</text>
                <text x="52" y="262">3 rounds of changes, final files</text>
                <text x="404" y="202">Cup, bag and signboard designs</text>
                <text x="404" y="222">Printing and photography</text>
                <text x="404" y="242">Website (Sneha refers Rohan)</text>
                <text x="404" y="262">Writing the menu text and prices</text>
              </g>
            </g>
          </svg>
          <figcaption>The call gives you the facts. The scope document turns them into a clear, written agreement on what is in and what is out.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Plan the discovery call</h3>
          <p>Before the call, Sneha looks at Brew Theory's Instagram page, Google Maps photos and current menu. She writes about 10 questions. She keeps the call to 30 minutes and lets Karthik talk most of the time.</p>
          <p>AI helps her prepare. A weak prompt:</p>
          <pre><code>Give me questions to ask a client.</code></pre>
          <p>A better prompt gives the situation and asks for groups of questions:</p>
          <pre><code>I am a brand identity designer. I have a 30-minute discovery call
        with the owner of a specialty café opening a second outlet in March.
        Write 10 short, open questions in these groups: goals, customers,
        deliverables, timeline, budget, who decides, practical details.
        Mark the 5 most important. Use simple, friendly English.</code></pre>
          <p>Here are Sneha's questions, with Karthik's made-up answers from the call:</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Question</th><th>Karthik's answer (notes)</th></tr></thead>
            <tbody>
              <tr><td><strong>Goals</strong></td><td>What should the new brand do for you?</td><td>Look like one café in two places. Feel warm and modern.</td></tr>
              <tr><td><strong>Customers</strong></td><td>Who are your regular customers?</td><td>Young office workers and people who work from the café</td></tr>
              <tr><td><strong>Deliverables</strong></td><td>What must be ready on opening day?</td><td>Logo, menu, business cards. Cups and a signboard would be nice.</td></tr>
              <tr><td><strong>Timeline</strong></td><td>What is the exact opening date?</td><td>Mid-March. The printer needs files 3 weeks before.</td></tr>
              <tr><td><strong>Budget</strong></td><td>Is ₹45,000 for the Brand Identity package comfortable?</td><td>Yes, for now. Cups and signs can wait.</td></tr>
              <tr><td><strong>Who decides</strong></td><td>Who approves the designs?</td><td>Karthik alone, within 3 working days</td></tr>
              <tr><td><strong>Practical</strong></td><td>What should we keep from the old brand?</td><td>The name and the deep green colour. Drop the old coffee-bean icon.</td></tr>
            </tbody>
          </table>
          <p>At the end of the call, Sneha repeats the main points back to Karthik. She asks: "Did I miss anything?"</p>
        </div>
        <div class="lc-card">
          <h3>Turn your notes into a scope document</h3>
          <p>If you want to record the call or use an AI note-taker, ask the client first. Before you paste notes into an AI tool, remove phone numbers, private plans and anything confidential. A good prompt:</p>
          <pre><code>Turn my discovery call notes into a one-page scope document.
        Headings: Goal, Deliverables, Not included, Timeline and milestones,
        Client will provide, Feedback and approvals, Price and payment.
        Package facts: Brand Identity, ₹45,000, 3 rounds of changes, 3 to 4 weeks.
        Notes: [paste notes, with private details removed]
        Use only my notes and package facts. Mark anything unclear with [CHECK].</code></pre>
          <p>Here is the scope document Sneha sends, after checking every line:</p>
          <pre><code>SCOPE: Brew Theory brand identity (both outlets)
        Goal: one warm, modern brand for both outlets.
        Deliverables: logo system (main, short, icon); colour palette
          (keeping deep green); 2 fonts; 1-page menu design;
          business card; 12-page brand guide; print and web files.
        Changes: 3 rounds. A round = one combined list of feedback.
          Extra rounds: ₹3,000 each.
        Timeline: 4 weeks from the advance. Final files at least
          3 weeks before the opening date.
        Client will provide: menu text and prices; the printer's file
          requirements; one set of feedback within 3 working days.
        Not included: cup, bag and signboard designs; printing;
          photography; website; writing menu text.
        Price: ₹45,000. 50% advance, 25% on logo approval, 25% before final files.</code></pre>
          <p>She asks Karthik to reply "Approved" by email. Now they both have the same written picture of the job.</p>
        </div>
        <div class="lc-card">
          <h3>Why "out of scope" matters so much</h3>
          <p>Most arguments with clients start with a silent assumption. Karthik may think "brand" includes cups. Sneha may think it does not. An <strong>out of scope</strong> list (work that is not included) removes the guessing.</p>
          <table class="lc-table">
            <thead><tr><th>Out of scope item</th><th>Why Sneha lists it</th><th>What she offers instead</th></tr></thead>
            <tbody>
              <tr><td>Cup, bag and signboard designs</td><td>Karthik mentioned them in the brief</td><td>A separate quote after the logo is approved</td></tr>
              <tr><td>Social media templates</td><td>Many cafés expect them</td><td>Her Social Media Kit, ₹12,000</td></tr>
              <tr><td>Website</td><td>A new outlet often needs a new page</td><td>A referral to Rohan, a web developer in Rajasthan, who quotes separately</td></tr>
              <tr><td>Printing and photography</td><td>These are other people's services and costs</td><td>Print-ready files for Karthik's own printer</td></tr>
              <tr><td>Writing menu text and prices</td><td>Menu content is the client's decision</td><td>She designs the text Karthik gives her</td></tr>
            </tbody>
          </table>
          <p>AI may suggest adding "small extras" to look generous. Be careful. Each extra is time you are not paid for. If you choose to give one, write it down as a one-time extra.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from call to scope</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Sneha's steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Look at Brew Theory's Instagram, map photos and current menu</li>
              <li data-order="2">Use AI to draft about 10 questions, then pick the most important</li>
              <li data-order="3">On the call, ask before recording or using a note-taker</li>
              <li data-order="4">Ask about goals, deliverables, timeline, budget and who approves</li>
              <li data-order="5">Repeat the main points back and ask "Did I miss anything?"</li>
              <li data-order="6">Remove private details and ask AI to turn the notes into a scope draft</li>
              <li data-order="7">Check every line, then send it for Karthik's written approval</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste notes from a real or practice client call (remove private details). Ask the AI to build a scope document with a clear "not included" list.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced freelance project manager. Help me write a clear scope document.

        My service: [brand identity design]
        My package: [Brand Identity, ₹45,000, 3 to 4 weeks, 3 rounds of changes]
        Package deliverables: [logo system, colour palette, 2 fonts, 1-page menu, business card, 12-page brand guide, final files]

        Discovery call notes (private details removed):
        [Café opening a second outlet in mid-March. Wants one brand for both outlets, warm and modern. Keep the name and the deep green colour. Needs logo, menu, business cards for opening day. Cups and a signboard "would be nice". Owner approves alone, within 3 working days. Printer needs files 3 weeks before opening.]

        Please:
        1. Write a one-page scope document with headings: Goal, Deliverables, Not included, Timeline, Client will provide, Feedback and approvals, Price and payment.
        2. In "Not included", list every item the client mentioned that my package does not cover, and suggest what I can offer instead.
        3. Mark anything unclear with [CHECK].
        4. List 3 follow-up questions for the client.

        Use only my notes and package facts. Do not add deliverables for free.</pre>
            <ul class="ai-try-checks">
              <li>Every deliverable matches your package. Nothing extra was added for free.</li>
              <li>Items the client mentioned but you do not include are in "Not included".</li>
              <li>The timeline works back from the client's real deadline.</li>
              <li>Check each [CHECK] item with the client before you send the final version.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good discovery call gives you the facts, and a scope document fixes them in writing. Always list what is not included. Get the client's written approval before you start.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Contracts and Terms</h1>
        </div>
        <p class="lc-lead">A <strong>contract</strong> is a written agreement between you and your client. It says what you will do, what the client will pay, and what happens if something goes wrong. A clear contract protects both sides. It also makes you look professional. In this lesson, you will learn the main terms a freelance contract needs: scope, payment, milestones, revisions, ownership, cancellation and late fees. You will see how Sneha builds a plain-English template for Brew Theory with AI's help. This lesson is general education, not legal advice. A qualified lawyer must check your template before you use it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: the Brew Theory payment plan. At signing, a 50 percent advance of 22,500 rupees. On logo approval, 25 percent, 11,250 rupees. Before the final files, 25 percent, 11,250 rupees. When paid in full, ownership of the final designs passes to the client. Below: six terms every contract needs: scope, payment, revisions, ownership, cancellation and late fees.">
            <defs><marker id="fr9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-weight="700">Brew Theory contract: payments and ownership (made-up)</text>
              <rect x="20" y="34" width="165" height="62" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="102" y="58" font-weight="700" fill="#c4b5fd">Sign + advance</text>
              <text x="102" y="80" font-size="12">50% = ₹22,500</text>
              <rect x="205" y="34" width="165" height="62" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="287" y="58" font-weight="700" fill="#93c5fd">Logo approved</text>
              <text x="287" y="80" font-size="12">25% = ₹11,250</text>
              <rect x="390" y="34" width="165" height="62" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="472" y="58" font-weight="700" fill="#67e8f9">Before final files</text>
              <text x="472" y="80" font-size="12">25% = ₹11,250</text>
              <rect x="575" y="34" width="165" height="62" rx="9" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="657" y="58" font-weight="700" fill="#6ee7b7">Paid in full</text>
              <text x="657" y="80" font-size="12">ownership passes</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr9a)">
                <line x1="186" y1="65" x2="201" y2="65"/><line x1="371" y1="65" x2="386" y2="65"/><line x1="556" y1="65" x2="571" y2="65"/>
              </g>
              <text x="380" y="126" font-weight="700">Six terms every freelance contract needs</text>
              <rect x="20" y="138" width="230" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="135" y="161" font-weight="700">Scope</text>
              <text x="135" y="183" font-size="11" fill="#9b99b8">deliverables + not included</text>
              <rect x="265" y="138" width="230" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="161" font-weight="700">Payment</text>
              <text x="380" y="183" font-size="11" fill="#9b99b8">50 / 25 / 25, due in 7 days</text>
              <rect x="510" y="138" width="230" height="60" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="625" y="161" font-weight="700">Revisions</text>
              <text x="625" y="183" font-size="11" fill="#9b99b8">3 rounds, extra round ₹3,000</text>
              <rect x="20" y="210" width="230" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="135" y="233" font-weight="700">Ownership (IP)</text>
              <text x="135" y="255" font-size="11" fill="#9b99b8">passes on full payment</text>
              <rect x="265" y="210" width="230" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="233" font-weight="700">Cancellation</text>
              <text x="380" y="255" font-size="11" fill="#9b99b8">pay for the stages reached</text>
              <rect x="510" y="210" width="230" height="60" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="625" y="233" font-weight="700">Late payment</text>
              <text x="625" y="255" font-size="11" fill="#9b99b8">work pauses, late fee applies</text>
              <text x="380" y="290" font-size="12" fill="#f9a8d4">General education only. A lawyer must check your template.</text>
            </g>
          </svg>
          <figcaption>Money and ownership move together. The client pays in stages, and the rights to the final designs pass only when the last payment arrives.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main terms, in plain words</h3>
          <p>You do not need long legal language. You need clear terms that both sides understand. Here are the terms Sneha uses for Brew Theory:</p>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>What it means</th><th>Sneha's term for Brew Theory</th></tr></thead>
            <tbody>
              <tr><td><strong>Scope</strong></td><td>The exact work you will deliver, and what is not included</td><td>Her signed-off scope document is attached to the contract</td></tr>
              <tr><td><strong>Advance</strong></td><td>Money paid before work starts</td><td>50% (₹22,500). Work starts when it arrives.</td></tr>
              <tr><td><strong>Milestones</strong></td><td>Stages of the project, each with a payment</td><td>25% (₹11,250) on logo approval. 25% (₹11,250) before final files.</td></tr>
              <tr><td><strong>Payment terms</strong></td><td>When each invoice must be paid</td><td>Within 7 days of the invoice</td></tr>
              <tr><td><strong>Revisions</strong></td><td>Rounds of changes the price includes</td><td>3 rounds. A round is one combined list of feedback. Extra rounds cost ₹3,000 each.</td></tr>
              <tr><td><strong>IP (intellectual property)</strong></td><td>Who owns the designs and can use them</td><td>Rights to the final designs pass to Brew Theory on full payment</td></tr>
              <tr><td><strong>Cancellation</strong></td><td>What happens if the project stops early</td><td>The client pays for the stages reached. Paid money is not returned.</td></tr>
              <tr><td><strong>Late fees</strong></td><td>What happens if a payment is late</td><td>Work pauses when an invoice is 7 days late. A fixed late fee applies (amount checked with her lawyer).</td></tr>
            </tbody>
          </table>
          <p>The payments add up: ₹22,500 + ₹11,250 + ₹11,250 = ₹45,000. Always check that your stages add up to the full price.</p>
        </div>
        <div class="lc-card">
          <h3>Ownership, cancellation and late payment</h3>
          <p>These three terms cause the most problems. Write them carefully.</p>
          <ul class="lc-list">
            <li><strong>Ownership on full payment.</strong> Until Karthik pays the full ₹45,000, Sneha owns the designs. After that, Brew Theory gets the rights to the final logo system and brand files. This protects her if the last payment never comes.</li>
            <li><strong>Unused ideas.</strong> Sneha shows two logo ideas. Karthik picks one. The idea he does not pick stays with Sneha. Write this down.</li>
            <li><strong>Portfolio use.</strong> Ask for the right to show the final work in your portfolio after the launch. The client can say no. Respect their answer.</li>
            <li><strong>Cancellation.</strong> If Karthik stops before logo approval, Sneha keeps the ₹22,500 advance for the work done. If he stops after logo approval, he pays the second stage too. Then she has received ₹33,750 in total.</li>
            <li><strong>Late payment.</strong> If an invoice is more than 7 days late, Sneha pauses work. The deadline moves by the same number of days. A fixed late fee is added.</li>
          </ul>
          <p>In India, a micro or small business with Udyam registration may have extra protection for late payments from business buyers, under the MSMED Act. Ask a CA (chartered accountant) or lawyer how this applies to you.</p>
          <p>Foreign clients need extra care. Hartley Tea Co, a tea seller run by Emma Hartley, is in the UK. Sneha's quote is £450 (about ₹49,500 at an example rate of £1 = ₹110). The contract should state the currency and how Emma will pay. It should also say which country's law applies. A lawyer should decide this wording.</p>
        </div>
        <div class="lc-card">
          <h3>Draft a template with AI, then ask a lawyer</h3>
          <p>AI can turn your terms into clear, plain English. But AI can also invent laws, copy terms from other countries, or leave out important points. A weak prompt:</p>
          <pre><code>Write me a freelance design contract.</code></pre>
          <p>The AI will guess your terms and may use foreign legal wording. A better prompt gives your real terms and asks for gaps:</p>
          <pre><code>Turn my terms into a plain-English contract template for a freelance
        graphic designer in India. Use short numbered clauses and simple words.
        Terms: [scope document attached]; 50% advance, 25% on logo approval,
        25% before final files; invoices due in 7 days; 3 rounds of changes,
        extra rounds ₹3,000; rights pass on full payment; unused ideas stay
        with me; cancellation: client pays for stages reached; late payment:
        work pauses and a fixed late fee applies.
        Do not name any law or section. Mark any clause a lawyer should
        check with [LAWYER]. Then list 5 questions I should ask my lawyer.</code></pre>
          <p>Here are two of the plain clauses Sneha ends up with:</p>
          <pre><code>4. Payment. The client pays 50% before work starts, 25% when the
           logo is approved and 25% before the final files are sent.
           Each invoice is due within 7 days. [LAWYER]
        7. Ownership. When the full fee is paid, the client owns the rights
           to the final designs. Designs the client did not choose stay
           with the designer. [LAWYER]</code></pre>
          <p>Before you use any template, remember these points:</p>
          <ul class="lc-list">
            <li>A qualified lawyer must check it once. Then you can reuse it for many clients.</li>
            <li>Do not paste a client's private details into a public AI tool. Add names and amounts yourself at the end.</li>
            <li>Get it signed before work starts. Many freelancers use e-signature tools. Ask your lawyer what counts as a valid signature.</li>
            <li>This lesson is not legal advice. Laws and rules change, so check with a professional.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: is this term clear?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">An AI draft gave Sneha these contract lines. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="clear" data-label="Clear and fair"></div>
              <div data-sorter-target="bucket" data-bucket="vague" data-label="Too vague"></div>
              <div data-sorter-target="bucket" data-bucket="risky" data-label="Risky for Sneha"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="clear" data-why="Exact amounts at exact stages. They add up to ₹45,000.">"50% (₹22,500) before work starts, 25% on logo approval, 25% before final files"</li>
              <li data-bucket="vague" data-why="What counts as reasonable? Say 3 rounds, and the price of an extra round.">"The designer will make reasonable changes"</li>
              <li data-bucket="risky" data-why="If the client never pays the last stage, they still own the designs. Rights should pass on full payment.">"The client owns all designs from the first day"</li>
              <li data-bucket="clear" data-why="It says how the term works and what it costs.">"3 rounds of changes. Extra rounds cost ₹3,000 each."</li>
              <li data-bucket="vague" data-why="No date means no deadline. Say within 7 days of the invoice.">"Payment is due soon after delivery"</li>
              <li data-bucket="risky" data-why="She would lose money for work already done. The advance should cover work to logo approval.">"The client may cancel at any time for a full refund"</li>
              <li data-bucket="clear" data-why="It links late payment to a pause and a new deadline.">"If an invoice is 7 days late, work pauses and the deadline moves"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to turn your own terms into a plain-English contract checklist and draft. Then take the result to a lawyer.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a freelancer prepare a plain-English contract template. This is general education, not legal advice. A qualified lawyer will check the final version.

        About me: [freelance graphic designer in Kerala, India]
        Service: [Brand Identity package, ₹45,000, 3 to 4 weeks]
        My terms:
        - Scope: [deliverables and "not included" list from my scope document]
        - Payment: [50% advance, 25% on logo approval, 25% before final files; invoices due in 7 days]
        - Revisions: [3 rounds; extra rounds ₹3,000 each]
        - Ownership: [rights to final designs pass on full payment; unused ideas stay with me; I may show the work in my portfolio if the client agrees]
        - Cancellation: [client pays for the stages reached; paid money is not returned]
        - Late payment: [work pauses when an invoice is 7 days late; a fixed late fee]

        Please:
        1. Check that my payment stages add up to the full price. Show the sum.
        2. Write short numbered clauses in simple English, one for each term.
        3. List any important term I have missed.
        4. Mark every clause a lawyer must check with [LAWYER].
        5. Write 5 questions I should ask my lawyer.

        Do not name any law or section number. Do not invent legal rules.</pre>
            <ul class="ai-try-checks">
              <li>The payment stages add up to the full price.</li>
              <li>Ownership passes only on full payment.</li>
              <li>The AI did not name laws or rules you cannot check.</li>
              <li>The answer says a lawyer must check the template before you use it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good contract is clear, not long. Write down the scope, staged payments, revisions, ownership on full payment, cancellation and late fees. Use AI to draft it in plain English. Then have a qualified lawyer check it once, and reuse it for every client.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Client Communication</h1>
        </div>
        <p class="lc-lead">Good work is not enough. Clients also judge you by how you communicate. Clear updates build trust. Calm replies to hard messages keep projects on track. In this lesson, you will learn to write regular updates, handle difficult messages and say no politely. You will also learn to handle <strong>scope creep</strong> (small extra requests that slowly grow the job without extra pay). You will follow Sneha as Karthik of Brew Theory asks for "just a few menu designs extra". AI can draft your messages, but they must sound like you and state only true facts.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: four steps for a scope creep request. The request arrives, Sneha checks the scope document, estimates the hours, 5 plus 4 plus 6 equals 15, and offers options. Middle: three options. A, all 3 menus now for 11,250 rupees extra and 4 more working days. B, the drinks board only for 3,000 rupees. C, the menus after the opening with a separate quote. Bottom: Karthik picks in writing, a change order is signed, a 50 percent advance is paid, and work starts.">
            <defs><marker id="fr10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-weight="700">"Just a few menu designs extra": from request to a written yes</text>
              <rect x="20" y="32" width="165" height="56" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="102" y="54" font-weight="700">1. Request arrives</text>
              <text x="102" y="75" font-size="11" fill="#9b99b8">3 more menus</text>
              <rect x="205" y="32" width="165" height="56" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="287" y="54" font-weight="700">2. Check scope</text>
              <text x="287" y="75" font-size="11" fill="#9b99b8">1-page menu only</text>
              <rect x="390" y="32" width="165" height="56" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="472" y="54" font-weight="700">3. Estimate hours</text>
              <text x="472" y="75" font-size="11" fill="#9b99b8">5 + 4 + 6 = 15 hours</text>
              <rect x="575" y="32" width="165" height="56" rx="9" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="657" y="54" font-weight="700">4. Offer options</text>
              <text x="657" y="75" font-size="11" fill="#9b99b8">not just yes or no</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr10a)">
                <line x1="186" y1="60" x2="201" y2="60"/><line x1="371" y1="60" x2="386" y2="60"/><line x1="556" y1="60" x2="571" y2="60"/>
              </g>
              <text x="380" y="114" font-weight="700">Options for Karthik (15 hours × ₹750 = ₹11,250)</text>
              <rect x="20" y="126" width="230" height="66" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="135" y="152" font-weight="700" fill="#6ee7b7">A. All 3 menus now</text>
              <text x="135" y="174" font-size="11" fill="#9b99b8">+₹11,250 and +4 working days</text>
              <rect x="265" y="126" width="230" height="66" rx="9" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="152" font-weight="700" fill="#93c5fd">B. Drinks board only</text>
              <text x="380" y="174" font-size="11" fill="#9b99b8">+₹3,000 (4 hours)</text>
              <rect x="510" y="126" width="230" height="66" rx="9" fill="#27274e" stroke="#ec4899"/>
              <text x="625" y="152" font-weight="700" fill="#f9a8d4">C. After the opening</text>
              <text x="625" y="174" font-size="11" fill="#9b99b8">a separate quote later</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr10a)">
                <line x1="135" y1="193" x2="135" y2="218"/><line x1="380" y1="193" x2="380" y2="218"/><line x1="625" y1="193" x2="625" y2="218"/>
              </g>
              <rect x="20" y="222" width="720" height="62" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="248" font-weight="700" fill="#fcd34d">Karthik picks in writing, then a change order, a 50% advance, and work starts</text>
              <text x="380" y="270" font-size="12" fill="#9b99b8">Option A: advance ₹5,625. New project total ₹56,250.</text>
            </g>
          </svg>
          <figcaption>Scope creep is handled with facts and choices. Check the scope, count the hours, then let the client choose, in writing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Regular updates stop most worries</h3>
          <p>Clients worry when they hear nothing. A short weekly update answers their questions before they ask. Sneha sends Karthik an update every Friday. It always has the same four parts:</p>
          <pre><code>Hi Karthik, here is this week's update on the Brew Theory brand.

        Done: the mood board is approved. Two logo ideas are ready.
        Next week: you choose one logo idea. I then build the logo system.
        Needed from you: your feedback on the logo ideas by Wednesday.
        Dates: we are on track for final files on [date].

        Thanks,
        Sneha</code></pre>
          <p>AI can turn your rough notes into an update like this. Give it your notes and the four headings. Then check the dates and facts yourself. Only you know what is really done.</p>
          <p><strong>Keep your own voice.</strong> AI drafts often sound stiff or too excited. Give the AI two or three of your real past messages, with private details removed. Add simple voice rules, for example:</p>
          <pre><code>My voice: short sentences, warm and direct. I start with "Hi [name],".
        I never write "Dear Sir" or "I hope this email finds you well".
        No more than one exclamation mark. No promises I did not make.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Scope creep: "just a few menu designs extra"</h3>
          <p>In week 3, Karthik sends this made-up message:</p>
          <pre><code>Loving the logo! Can you also do just a few menu designs extra?
        A breakfast menu, a drinks board and a takeaway menu. Should be quick
        since the style is ready.</code></pre>
          <p>The scope document includes a 1-page menu only. So these are new work. Sneha estimates the hours:</p>
          <table class="lc-table">
            <thead><tr><th>Extra item</th><th>Hours</th><th>At ₹750 an hour</th></tr></thead>
            <tbody>
              <tr><td>Breakfast menu (1 page)</td><td>5</td><td>₹3,750</td></tr>
              <tr><td>Drinks board</td><td>4</td><td>₹3,000</td></tr>
              <tr><td>Takeaway menu (2 sides)</td><td>6</td><td>₹4,500</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>15</strong></td><td><strong>₹11,250</strong></td></tr>
            </tbody>
          </table>
          <p>Time matters too. Sneha has about 4 billable hours a day (80 hours ÷ 20 days). So 15 hours is about 4 more working days. This month she also has a Starter Logo for Pavizham Bakes: 55 + 18 = 73 hours. Adding 15 makes 88 hours, which is more than her 80. So she cannot fit the menus in for free, or without moving a date.</p>
          <p>Two weak replies:</p>
          <pre><code>Sure, no problem! Will send soon.          (15 unpaid hours)
        No. That is not in the contract.            (true, but cold)</code></pre>
          <p>A strong reply thanks him, states the fact and gives choices:</p>
          <pre><code>Hi Karthik, thank you. I am glad you like the logo!

        The three menus are not part of our scope, which has one menu page.
        They are about 15 hours of work. Here are three options:
        A. All three now: ₹11,250, and final files move by 4 working days.
        B. The drinks board only now: ₹3,000. The final date stays the same.
        C. All three after the opening, with a separate quote.

        Tell me which you prefer. I will send a short change order to sign.
        Sneha</code></pre>
          <p>A <strong>change order</strong> is a short written note that adds work, price and time to the agreed scope. For option A, Sneha asks for a 50% advance of ₹5,625. The new project total is ₹45,000 + ₹11,250 = ₹56,250.</p>
          <p>Why can option B keep the date? It is only 4 hours. Sneha checks she can fit it in the 7 spare hours she has this month (80 − 73).</p>
        </div>
        <div class="lc-card">
          <h3>Difficult messages and saying no</h3>
          <p>Hard messages go better when you stay calm, stick to facts and offer a way forward. Here are some common cases:</p>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>What to say (in short)</th></tr></thead>
            <tbody>
              <tr><td>Feedback is late</td><td>"I need your feedback by Wednesday to keep the final date. If it comes later, the date moves by the same number of days."</td></tr>
              <tr><td>A fourth round of changes</td><td>"We have used the 3 rounds in our plan. An extra round is ₹3,000. Shall I go ahead?"</td></tr>
              <tr><td>An urgent weekend request</td><td>"I do not work weekends. I can start on Monday morning and send it by Tuesday."</td></tr>
              <tr><td>Payment is late</td><td>"A friendly reminder: invoice [number] was due on [date]. As in our contract, I will pause work until it is paid."</td></tr>
              <tr><td>A job you cannot do well</td><td>"Website work is not my skill. I can introduce Rohan, a web developer I trust."</td></tr>
            </tbody>
          </table>
          <p>Before you send any AI draft, check these points:</p>
          <ul class="lc-list">
            <li><strong>Facts.</strong> Every price, date and number matches your scope and contract.</li>
            <li><strong>Promises.</strong> The AI did not add a promise you cannot keep, such as "no extra charge".</li>
            <li><strong>Tone.</strong> Polite and calm. Never blame the client.</li>
            <li><strong>Privacy.</strong> You did not paste client contact details or private plans into a public AI tool.</li>
            <li><strong>Timing.</strong> For an angry message, wait a little. Reply when you are calm.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Sneha answers the menu request</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sneha's prompt">Sneha pastes Karthik's message, without his contact details. She asks the AI for a friendly reply in her voice.</li>
              <li data-kind="answer" data-label="AI's first draft">"Of course! I would love to design the extra menus. I will send them with the final files, at no extra charge."</li>
              <li data-kind="warn" data-label="A mistake to catch">The draft gives away 15 hours of work for free. It also promises the same final date, which she cannot meet.</li>
              <li data-kind="tool" data-label="Check the scope document">Sneha opens her approved scope document and contract.</li>
              <li data-kind="result" data-label="What it says">Deliverables include one 1-page menu only. Extra work needs a change order.</li>
              <li data-kind="check" data-label="Count the cost">Sneha estimates 5 + 4 + 6 = 15 hours. At ₹750 an hour, that is ₹11,250 and about 4 more working days.</li>
              <li data-kind="user" data-label="Better prompt">"Rewrite the reply. Thank him, say the menus are outside our scope, and give options A, B and C with these prices. No free work."</li>
              <li data-kind="answer" data-label="New draft">The AI writes a warm reply with three clear options and a note that a change order will follow.</li>
              <li data-kind="check" data-label="Final check">Sneha checks each price, reads it aloud and changes two lines to sound like her. Then she sends it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a client request that goes beyond your scope (remove names and contact details). Ask the AI to reply in your voice with clear options.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced freelancer who writes calm, friendly client messages.

        My work: [brand identity designer]. My hourly rate: [₹750].
        What my scope includes: [logo system, colours, 2 fonts, one 1-page menu, business card, brand guide, 3 rounds of changes]
        The client's message: [Loving the logo! Can you also do just a few menu designs extra? A breakfast menu, a drinks board and a takeaway menu. Should be quick since the style is ready.]
        My hour estimates for the extra work: [breakfast menu 5, drinks board 4, takeaway menu 6]
        Time impact: [about 4 billable hours a day]

        My voice: short sentences, warm and direct. Start with "Hi [name],". No "Dear Sir". At most one exclamation mark.

        Please:
        1. Calculate the total extra hours, price and extra working days. Show the sums.
        2. Write a reply under 150 words. Thank the client, say clearly that this is outside the agreed scope, and give 3 options: all now with the new price and date, a smaller part now, or later with a separate quote.
        3. Say that a short change order will follow for their approval.
        4. Write a 3-line change order for the first option.

        Rules: no free work, no promises I did not give you, no blame.</pre>
            <ul class="ai-try-checks">
              <li>Redo the hours, price and days yourself.</li>
              <li>The reply clearly says the work is outside the agreed scope.</li>
              <li>It offers choices and does not give work away for free.</li>
              <li>It sounds like you. Change any stiff or over-excited lines.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Communicate early and often, with the same simple update each week. When a client asks for more, check the scope, count the hours and offer choices in writing. Let AI draft your messages, but you set the facts and keep your own voice.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Managing Projects and Time</h1>
        </div>
        <p class="lc-lead">When you sell a package, you also sell a number of hours. If a project takes longer than planned, your real hourly rate falls. In this lesson, you will learn to split a project into tasks, give each task an hour budget and track your time. You will compare planned and real hours every week. You will also plan deadlines and use AI to build task lists and weekly plans. You will follow Sneha as she works on two projects at once.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: five steps to manage a project: split it into tasks, estimate hours, plan the week, track time, then compare and act. Bottom: a bar chart of Sneha's Brew Theory project after week 2. Planned against used hours: kick-off 3 and 3, research 6 and 8, logo concepts 14 and 17. A summary box says 28 of 55 hours are used, and the project is heading for 60 hours, which means 750 rupees an hour.">
            <defs><marker id="fr11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-weight="700">Five steps to manage a project</text>
              <rect x="12" y="34" width="128" height="58" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="76" y="58">Split into tasks</text><text x="76" y="78" font-size="11" fill="#9b99b8">9 tasks, 55 h</text>
              <rect x="162" y="34" width="128" height="58" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="226" y="58">Estimate hours</text><text x="226" y="78" font-size="11" fill="#9b99b8">a budget per task</text>
              <rect x="312" y="34" width="128" height="58" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="376" y="58">Plan the week</text><text x="376" y="78" font-size="11" fill="#9b99b8">20 billable hours</text>
              <rect x="462" y="34" width="128" height="58" rx="9" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="526" y="58">Track time</text><text x="526" y="78" font-size="11" fill="#9b99b8">every work block</text>
              <rect x="612" y="34" width="128" height="58" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="676" y="58">Compare, act</text><text x="676" y="78" font-size="11" fill="#9b99b8">every Friday</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr11a)">
                <line x1="141" y1="63" x2="158" y2="63"/><line x1="291" y1="63" x2="308" y2="63"/><line x1="441" y1="63" x2="458" y2="63"/><line x1="591" y1="63" x2="608" y2="63"/>
              </g>
              <text x="230" y="130" font-weight="700">Brew Theory after week 2 (hours)</text>
              <g text-anchor="start" font-size="12">
                <text x="20" y="165">Kick-off call</text>
                <text x="20" y="205">Research</text>
                <text x="20" y="245">Logo concepts</text>
              </g>
              <g fill="#3b82f6">
                <rect x="160" y="148" width="36" height="11"/><rect x="160" y="188" width="72" height="11"/><rect x="160" y="228" width="168" height="11"/>
              </g>
              <g fill="#f59e0b">
                <rect x="160" y="161" width="36" height="11"/><rect x="160" y="201" width="96" height="11"/><rect x="160" y="241" width="204" height="11"/>
              </g>
              <g text-anchor="start" font-size="10.5" fill="#9b99b8">
                <text x="202" y="158">3</text><text x="202" y="171">3</text>
                <text x="238" y="198">6</text><text x="262" y="211">8</text>
                <text x="334" y="238">14</text><text x="370" y="251">17</text>
              </g>
              <rect x="20" y="272" width="12" height="10" fill="#3b82f6"/><text x="38" y="281" text-anchor="start" font-size="11">Planned</text>
              <rect x="110" y="272" width="12" height="10" fill="#f59e0b"/><text x="128" y="281" text-anchor="start" font-size="11">Used</text>
              <rect x="460" y="130" width="285" height="150" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="602" y="155" font-weight="700" fill="#f9a8d4">Budget: 55 hours</text>
              <text x="602" y="180" font-size="12">Used so far: 28 h (51%)</text>
              <text x="602" y="202" font-size="12">Left: 27 h. Still planned: 32 h</text>
              <text x="602" y="224" font-size="12">Heading for 60 h: ₹750 an hour</text>
              <text x="602" y="246" font-size="12" fill="#fcd34d">At 63 h or more: under ₹715</text>
              <text x="602" y="268" font-size="12" fill="#6ee7b7">Act now, not at the end</text>
            </g>
          </svg>
          <figcaption>A weekly check shows the problem early. Sneha is 5 hours over plan after two weeks, so she can still fix it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A task list with an hour budget</h3>
          <p>Sneha has two projects this month. Brew Theory, a made-up café in Karnataka, bought her Brand Identity package for ₹45,000. She planned 55 hours for it. Pavizham Bakes, a made-up home bakery in Kerala, bought a Starter Logo for ₹15,000. She planned 18 hours. Together that is 73 billable hours, inside her 80 for the month.</p>
          <p>A <strong>time budget</strong> is the number of hours you planned when you set the price. Sneha splits the Brand Identity package into tasks. Each task gets part of the 55 hours and a target week. Here she groups the tasks by week, so a few task budgets differ from her first pricing estimate. The total is still 55 hours. A <strong>milestone</strong> is a point where the client sees work and gives feedback.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Hours</th><th>Week</th></tr></thead>
            <tbody>
              <tr><td>Kick-off call and brief notes</td><td>3</td><td>1</td></tr>
              <tr><td>Research and mood board</td><td>6</td><td>1</td></tr>
              <tr><td>Logo system concepts (main, short, icon). <strong>Milestone:</strong> first presentation</td><td>14</td><td>2</td></tr>
              <tr><td>Colour palette and 2 fonts</td><td>4</td><td>3</td></tr>
              <tr><td>3 rounds of changes (3 hours each)</td><td>9</td><td>2 to 4</td></tr>
              <tr><td>Menu design (1 page)</td><td>5</td><td>3</td></tr>
              <tr><td>Business card</td><td>2</td><td>3</td></tr>
              <tr><td>12-page brand guide</td><td>8</td><td>4</td></tr>
              <tr><td>Final files and handover. <strong>Milestone:</strong> delivery</td><td>4</td><td>4</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>55</strong></td><td>3 to 4 weeks</td></tr>
            </tbody>
          </table>
          <p>AI is good at the first draft of a list like this. But only you know how long your work really takes. After a few projects, use your own tracked hours to set better budgets.</p>
        </div>
        <div class="lc-card">
          <h3>Track your time, then compare every week</h3>
          <p>Sneha writes down every work block in a simple sheet. You can also use a timer app or a task board such as Trello, Asana or Notion. Features and plans change, so check each tool's current help pages. A plain spreadsheet is enough to start.</p>
          <table class="lc-table">
            <thead><tr><th>A: Date</th><th>B: Client</th><th>C: Task</th><th>D: Hours</th></tr></thead>
            <tbody>
              <tr><td>8 Oct</td><td>Brew Theory</td><td>Logo system concepts</td><td>3.5</td></tr>
              <tr><td>8 Oct</td><td>Pavizham Bakes</td><td>Research and mood board</td><td>1.5</td></tr>
            </tbody>
          </table>
          <p>On a second sheet, she adds up the hours with formulas that work in Excel and Google Sheets:</p>
          <pre><code>Hours used on one task:   =SUMIFS(Log!D:D, Log!B:B, "Brew Theory", Log!C:C, "Logo system concepts")
        Hours used on the project: =SUMIF(Log!B:B, "Brew Theory", Log!D:D)
        Hours left:                =55 - [hours used]
        Real hourly rate:          =45000 / [total hours at the end]</code></pre>
          <p>After week 2, she has used 28 hours. The finished tasks were planned at 23 hours, so she is 5 hours over. Two hours came from extra research she chose to do. Three hours came from Karthik, the owner, who asked for an extra icon version on a call. That is outside the agreed scope, and worth ₹2,250 of her time (3 × ₹750).</p>
          <table class="lc-table">
            <thead><tr><th>Total hours on the project</th><th>Real hourly rate (₹45,000 ÷ hours)</th></tr></thead>
            <tbody>
              <tr><td>55 (the plan)</td><td>₹818</td></tr>
              <tr><td>60 (where she is heading)</td><td>₹750, her goal rate</td></tr>
              <tr><td>63</td><td>₹714, below her ₹715 minimum</td></tr>
              <tr><td>65</td><td>₹692</td></tr>
            </tbody>
          </table>
          <p>The price already had a small cushion. But a few more unplanned hours would push her below her minimum rate. So she acts now. She tells Karthik that the extra icon is outside the scope and offers it as a paid extra. She also keeps her research time shorter on the next project.</p>
        </div>
        <div class="lc-card">
          <h3>Plan the week and the deadlines with AI</h3>
          <p>Sneha works about 20 billable hours a week (80 in a month of 4 weeks). She plans backwards from each deadline. She adds one buffer day before each delivery. She also allows for client waiting time: Karthik may take 2 or 3 days to send feedback.</p>
          <p>A weak prompt gives the AI nothing to work with:</p>
          <pre><code>Make me a schedule for my design projects.</code></pre>
          <p>A better prompt gives the tasks, the hours, the limits and the format:</p>
          <pre><code>You are a project planner for a freelance designer.
        I have 20 billable hours a week, Monday to Friday.
        Project 1: Brand Identity. Due 30 October. Client feedback takes 2-3 days.
        Remaining tasks and hours: colours and fonts 4, menu 5, business card 2,
        3 rounds of changes 9, brand guide 8, final files 4.
        Project 2: Starter Logo, 16 hours left. Due 16 October.
        Make a week-by-week plan in a table: week | project | task | hours.
        Keep each week at 20 hours or less. Add one buffer day before each due date.
        Show the total hours per week, and warn me if a plan does not fit.</code></pre>
          <p>Now check the answer. Add up the hours in each week yourself. Check the dates on a calendar. AI often makes small mistakes with sums and dates. Do not paste client emails or private files into the prompt. The task names and hours are enough.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sneha's Friday time check</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">Sneha opens her time log. The SUMIF formula shows 28 hours used on Brew Theory. The budget is 55 hours.</li>
              <li data-kind="result" data-label="What the sheet shows">Kick-off: 3 of 3 hours. Research: 8 of 6. Logo concepts: 17 of 14. She is 5 hours over plan for the finished tasks.</li>
              <li data-kind="user" data-label="Sneha's prompt">She pastes only the task names and hours into the AI. She asks: "Where am I over? Can the rest fit in the 27 hours left? Suggest options."</li>
              <li data-kind="answer" data-label="AI reply">The AI says 32 hours are still planned but only 27 are left. It suggests three options. One is: "Cut one round of changes to save 3 hours."</li>
              <li data-kind="warn" data-label="A mistake to catch">Her contract promises 3 rounds of changes. She cannot cut work she promised. The AI does not know her contract, so she rejects this option.</li>
              <li data-kind="check" data-label="Sneha decides">She checks the sums herself: 28 + 32 = 60 hours, which is ₹750 an hour. She offers Karthik the extra icon as a paid extra. She keeps next week's research short.</li>
              <li data-kind="tool" data-label="Next week's plan">She updates her task list: 14 hours for Brew Theory and 6 for Pavizham Bakes. That is 20 billable hours.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to turn one of your packages into a task list with an hour budget and a weekly plan. Then check every sum and date yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical project planner for freelancers.

        My package: [Brand Identity for a café]
        Price: [₹45,000]. Hour budget: [55 hours]
        What the client gets: [logo system, colour palette, 2 fonts, 1-page menu, business card, 12-page brand guide, 3 rounds of changes]
        Deadline: [4 weeks from the start]
        My billable hours a week: [20]
        Client feedback usually takes: [2 to 3 days]

        Please do 4 things:
        1. Split the package into tasks. Give each task hours. The total must equal my hour budget exactly.
        2. Mark the milestones where the client sees work and gives feedback.
        3. Make a week-by-week plan in a table: week | task | hours. Keep each week within my billable hours. Add one buffer day before delivery.
        4. Show my real hourly rate if the project takes the budget, 10% more hours, or 20% more hours. Show the sums.

        Use short sentences. Say clearly if the plan does not fit the deadline.</pre>
            <ul class="ai-try-checks">
              <li>Add up the task hours yourself. They must equal your budget.</li>
              <li>Check the hourly rate sums with a calculator (price ÷ hours).</li>
              <li>Every item the client was promised must have a task.</li>
              <li>Each week must stay within your billable hours.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Your price is only as good as your hour budget. Split each project into tasks, track your time and compare it every week. A problem found in week 2 can be fixed. A problem found at the end just lowers your pay.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Invoices, Payments and Taxes</h1>
        </div>
        <p class="lc-lead">You finish the work, but you are not done until the money is in your bank. In this lesson, you will learn what a clear invoice contains and how clients in India and abroad pay you. You will also learn the basic tax words every Indian freelancer meets: GST, the LUT for foreign clients, TDS, advance tax and the presumptive scheme. This lesson is general education only. It is <strong>not tax advice</strong>. Tax rules change, so ask a CA (chartered accountant) about your own case.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Three rows, one for each of Sneha's clients. Pavizham Bakes in Kerala: 15,000 rupees in two invoices of 7,500, paid by UPI or bank. Brew Theory in Karnataka: 45,000 rupees as a 22,500 advance and two invoices of 11,250, paid by bank transfer, watch for TDS. Hartley Tea Co in the UK: 450 pounds, invoice in pounds with export wording, paid by wire or a payment platform, keep the FIRC or FIRA. Bottom: set aside 10 percent of every payment for tax and ask a CA.">
            <defs><marker id="fr12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <g font-weight="700" fill="#9b99b8" font-size="12">
                <text x="97" y="22">Client</text><text x="297" y="22">Invoice</text><text x="487" y="22">Payment</text><text x="670" y="22">Watch for</text>
              </g>
              <rect x="12" y="34" width="170" height="56" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="97" y="57" font-weight="700">Pavizham Bakes</text><text x="97" y="77" font-size="11" fill="#9b99b8">Kerala, ₹15,000</text>
              <rect x="212" y="34" width="170" height="56" rx="9" fill="#27274e" stroke="#4b4a78"/>
              <text x="297" y="57">₹7,500 advance</text><text x="297" y="77" font-size="11" fill="#9b99b8">₹7,500 balance</text>
              <rect x="412" y="34" width="150" height="56" rx="9" fill="#27274e" stroke="#4b4a78"/>
              <text x="487" y="67">UPI or bank</text>
              <rect x="592" y="34" width="156" height="56" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="670" y="67">Keep records</text>
              <rect x="12" y="110" width="170" height="56" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="97" y="133" font-weight="700">Brew Theory</text><text x="97" y="153" font-size="11" fill="#9b99b8">Karnataka, ₹45,000</text>
              <rect x="212" y="110" width="170" height="56" rx="9" fill="#27274e" stroke="#4b4a78"/>
              <text x="297" y="133">₹22,500 advance</text><text x="297" y="153" font-size="11" fill="#9b99b8">then 2 × ₹11,250</text>
              <rect x="412" y="110" width="150" height="56" rx="9" fill="#27274e" stroke="#4b4a78"/>
              <text x="487" y="143">Bank transfer</text>
              <rect x="592" y="110" width="156" height="56" rx="9" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="670" y="133">TDS</text><text x="670" y="153" font-size="11" fill="#9b99b8">if over the limit</text>
              <rect x="12" y="186" width="170" height="56" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="97" y="209" font-weight="700">Hartley Tea Co</text><text x="97" y="229" font-size="11" fill="#9b99b8">UK, £450</text>
              <rect x="212" y="186" width="170" height="56" rx="9" fill="#27274e" stroke="#4b4a78"/>
              <text x="297" y="209">Invoice in £</text><text x="297" y="229" font-size="11" fill="#9b99b8">export wording</text>
              <rect x="412" y="186" width="150" height="56" rx="9" fill="#27274e" stroke="#4b4a78"/>
              <text x="487" y="209">Wire or platform</text><text x="487" y="229" font-size="11" fill="#9b99b8">≈ ₹49,500 at ₹110</text>
              <rect x="592" y="186" width="156" height="56" rx="9" fill="#1f1f44" stroke="#ec4899"/>
              <text x="670" y="209">FIRC or FIRA</text><text x="670" y="229" font-size="11" fill="#9b99b8">proof from abroad</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr12a)">
                <line x1="184" y1="62" x2="208" y2="62"/><line x1="384" y1="62" x2="408" y2="62"/><line x1="564" y1="62" x2="588" y2="62"/>
                <line x1="184" y1="138" x2="208" y2="138"/><line x1="384" y1="138" x2="408" y2="138"/><line x1="564" y1="138" x2="588" y2="138"/>
                <line x1="184" y1="214" x2="208" y2="214"/><line x1="384" y1="214" x2="408" y2="214"/><line x1="564" y1="214" x2="588" y2="214"/>
              </g>
              <rect x="12" y="262" width="736" height="46" rx="9" fill="#1f1f44" stroke="#10b981" stroke-dasharray="5 4"/>
              <text x="380" y="283" font-weight="700" fill="#6ee7b7">Every payment: move 10% to a tax savings account</text>
              <text x="380" y="300" font-size="11" fill="#9b99b8">10% is a planning assumption, not a tax rate. A CA works out the real amount.</text>
            </g>
          </svg>
          <figcaption>Each client type needs a slightly different invoice and different checks. One habit stays the same: save part of every payment for tax.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes on a clear invoice</h3>
          <p>An <strong>invoice</strong> is a bill that asks the client to pay. A clear invoice gets paid faster. Sneha takes a 50% advance before she starts. So a small project has two invoices: one for the advance and one for the balance. Brew Theory's bigger project has three: 50% to start, 25% on logo approval and 25% before the final files.</p>
          <pre><code>INVOICE                          Invoice no: SN-2026-021
        From: Sneha [surname], Kerala          PAN: [her PAN]
        To:   Pavizham Bakes (Mariam [surname]), Kerala
        Date: [date]                       Due: 7 days from the date

        Description                                        Amount (₹)
        Starter Logo: 2 logo concepts, 2 rounds of changes,
        final logo files (PNG, SVG, PDF)                      15,000
        Less: advance received on [date]                      -7,500
        Balance due                                            7,500

        Pay by: UPI [her UPI ID] or bank transfer [account details]
        Final files are sent when the balance is paid.</code></pre>
          <ul class="lc-list">
            <li><strong>Always include:</strong> a unique invoice number in order, the date and due date, your details and the client's details, a clear description, the amount and how to pay.</li>
            <li><strong>Only if you are GST-registered:</strong> your GSTIN (GST number), the service code, and the GST lines. Never add a GST line if you are not registered.</li>
            <li><strong>Where AI helps:</strong> it can draft invoice wording, a polite payment reminder or a template layout. It must not invent GST numbers, tax lines or rates. You fill in and check those.</li>
          </ul>
          <p>You can make invoices in a spreadsheet or an invoicing app, such as Zoho Invoice. Features and plans change, so check the app's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>GST and foreign clients, in general words</h3>
          <p><strong>GST</strong> (Goods and Services Tax) is a tax on the supply of goods and services in India. You must register once your yearly turnover (total sales) passes a limit. For services, the limit is ₹20 lakh in most states, including Kerala, and ₹10 lakh in a few states. Some situations need registration even below the limit. Some freelancers also register by choice, because business clients want GST invoices. A CA can tell you what applies to you.</p>
          <p>If Sneha reaches her goal every month, she earns ₹7,20,000 a year (₹60,000 × 12). That is about 36% of the ₹20 lakh limit. Income from foreign clients also counts towards the limit.</p>
          <p><strong>Foreign clients.</strong> Emma Hartley runs Hartley Tea Co in the UK. She will pay Sneha £450. At an example rate of £1 = ₹110, that is about ₹49,500. The real rate changes daily. Here is how the rules work in general:</p>
          <ul class="lc-list">
            <li><strong>Export of services:</strong> work for a client abroad, paid in foreign currency, can count as an export. Exports of services are "zero-rated" under GST, which means no GST is charged, if all the conditions are met.</li>
            <li><strong>LUT (Letter of Undertaking):</strong> a GST-registered freelancer usually files an LUT on the GST portal once every financial year. It lets you export without paying GST first. The invoice then carries a line such as "Supply meant for export under LUT without payment of IGST".</li>
            <li><strong>Proof of payment:</strong> keep proof that the money came from abroad. A bank gives a FIRC (Foreign Inward Remittance Certificate). Payment platforms often give a FIRA (Foreign Inward Remittance Advice).</li>
            <li><strong>Payment platforms:</strong> bank wires and online platforms have different fees and exchange rates. Compare the rupees you actually receive, not only the listed fee. Check each platform's current fee page.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Income tax: TDS, advance tax and the presumptive scheme</h3>
          <p>India's new Income-tax Act, 2025 applies from 1 April 2026. Most ideas stay the same, but section numbers changed. Many websites and AI tools still use the old numbers, so ask your CA which rules apply to your year.</p>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Plain meaning</th><th>Sneha's example</th></tr></thead>
            <tbody>
              <tr><td><strong>TDS</strong> (Tax Deducted at Source)</td><td>Some business clients keep back part of your fee. They pay it to the government against your PAN. For professional fees it was section 194J. From 1 April 2026 it sits in section 393 of the new Act. The usual rate for professional fees is 10%, above a yearly limit per client (currently ₹50,000).</td><td>On a ₹12,000 invoice with 10% TDS, she receives ₹10,800. The ₹1,200 is tax already paid for her. Brew Theory's ₹45,000 is below ₹50,000. If Karthik also buys the ₹12,000 kit in the same year, the total is ₹57,000, so TDS may apply.</td></tr>
              <tr><td><strong>Advance tax</strong></td><td>You pay income tax during the year, not all at the end. It applies when your tax for the year, after TDS, is ₹10,000 or more. The usual dates are 15 June, 15 September, 15 December and 15 March.</td><td>If she uses the presumptive scheme, she can usually pay it all by 15 March.</td></tr>
              <tr><td><strong>Presumptive scheme</strong></td><td>Old section 44ADA. The new Act moves it to a new section number, so ask your CA for the current one. Eligible professionals declare at least 50% of their receipts as income, with simpler records. The receipts limit is ₹50 lakh, or ₹75 lakh if cash receipts are 5% or less.</td><td>₹7,20,000 in receipts means ₹3,60,000 of declared income. Her CA must confirm her design work counts as a "profession" for this scheme.</td></tr>
            </tbody>
          </table>
          <p>Check TDS in your tax statement on the income tax portal, such as the AIS (Annual Information Statement). Also ask clients for their TDS certificate. Some clients treat design as contract work under a different rule and rate, so ask your CA.</p>
          <p><strong>A simple habit:</strong> Sneha moves 10% of every payment to a separate savings account. Her sheet uses <code>=C2*10%</code>. The ₹22,500 advance means ₹2,250 saved. Hartley's ₹49,500 means ₹4,950. Her real tax may be lower or higher. The money stays saved until her CA works out the real amount.</p>
          <p>A weak prompt: <code>How much tax do I pay as a freelancer?</code> AI may give old rules or a wrong number. A better prompt asks it to <em>explain terms and list questions for your CA</em>, not to decide your tax.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which topic is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each item into the right topic.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="inv" data-label="Invoice basics"></div>
              <div data-sorter-target="bucket" data-bucket="tds" data-label="TDS"></div>
              <div data-sorter-target="bucket" data-bucket="exp" data-label="Foreign client"></div>
              <div data-sorter-target="bucket" data-bucket="adv" data-label="Advance tax"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="inv" data-why="Every invoice needs a unique number in order, a date and a due date.">A unique number, the date and a due date</li>
              <li data-bucket="tds" data-why="The client kept back 10% and paid it to the government against Sneha's PAN.">A client pays ₹10,800 on a ₹12,000 invoice</li>
              <li data-bucket="exp" data-why="A FIRC or FIRA is proof that money came from abroad.">A bank document that shows money came from the UK</li>
              <li data-bucket="exp" data-why="This line is used by GST-registered freelancers who filed an LUT for exports.">"Supply meant for export under LUT without payment of IGST"</li>
              <li data-bucket="adv" data-why="Advance tax is paid during the year. Under the presumptive scheme, it can usually be paid by 15 March.">A tax payment made before 15 March</li>
              <li data-bucket="tds" data-why="Tax kept back by clients shows in your tax statement, such as the AIS, on the income tax portal.">Checking the AIS to see tax paid against your PAN</li>
              <li data-bucket="inv" data-why="A clear description and the payment details help the client pay quickly.">A clear list of the work and your UPI or bank details</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to draft an invoice for one of your projects and a list of questions to take to your CA. Use made-up or rounded numbers.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an admin helper for a freelancer in India. Do not give tax advice or tax amounts. Explain terms in simple words.

        My details:
        - Service: [freelance graphic design]
        - State: [Kerala]
        - GST-registered: [no]
        - Expected yearly receipts: [₹7,20,000]

        Project to invoice:
        - Client: [Pavizham Bakes, a home bakery in Kerala]
        - Work: [Starter Logo: 2 concepts, 2 rounds of changes, final files]
        - Fee: [₹15,000]. Advance already paid: [₹7,500]
        - Payment by: [UPI or bank transfer]

        Please do 3 things:
        1. Write a clear invoice layout for the balance. Leave blanks like [PAN] for my details. Add no GST lines if I am not registered.
        2. Write a short, polite payment reminder for 3 days after the due date.
        3. List 8 questions to ask my CA about GST, foreign clients and the LUT, TDS, advance tax and the presumptive scheme. Note that India's new Income-tax Act applies from 1 April 2026.</pre>
            <ul class="ai-try-checks">
              <li>The balance must be correct (fee minus advance).</li>
              <li>There must be no GST line if you are not registered.</li>
              <li>The AI should not tell you a tax amount or rate as a fact.</li>
              <li>Take the questions to a CA. Do not act on AI answers about tax.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clear invoices and good records are your job. Tax decisions are your CA's job. Keep every invoice, payment proof and TDS certificate, and save part of every payment. Then tax time is a simple meeting, not a crisis.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Getting Repeat Work and Referrals</h1>
        </div>
        <p class="lc-lead">Finding a new client takes many messages and calls. A happy client can hire you again or tell a friend about you. That is much easier. In this lesson, you will learn to follow up after a project, ask for feedback, and get honest testimonials with the client's permission. You will also learn how referrals work and how to offer a retainer: a fixed monthly fee for regular work. AI can draft these messages. You make sure they are true, polite and in your own voice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Top: a follow-up timeline after a project. Day 0: deliver files and the final invoice. Week 2: check in and ask for feedback. Month 1: ask for a testimonial with permission. Month 3: share a useful idea and offer more work. Bottom: a client ladder from one project, to a repeat project, to a monthly retainer of 10,000 rupees for 12 hours, which is 833 rupees an hour.">
            <defs><marker id="fr13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-weight="700">After the project: a follow-up timeline</text>
              <line x1="100" y1="62" x2="640" y2="62" stroke="#4b4a78" stroke-width="2"/>
              <g font-size="11" fill="#9b99b8">
                <text x="100" y="44">Day 0</text><text x="280" y="44">Week 2</text><text x="460" y="44">Month 1</text><text x="640" y="44">Month 3</text>
              </g>
              <circle cx="100" cy="62" r="8" fill="#8b5cf6"/><circle cx="280" cy="62" r="8" fill="#3b82f6"/><circle cx="460" cy="62" r="8" fill="#22d3ee"/><circle cx="640" cy="62" r="8" fill="#10b981"/>
              <g font-weight="700">
                <text x="100" y="92">Deliver files</text><text x="280" y="92">Check in</text><text x="460" y="92">Testimonial</text><text x="640" y="92">Useful idea</text>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="100" y="110">final invoice</text><text x="280" y="110">ask for feedback</text><text x="460" y="110">with permission</text><text x="640" y="110">offer more work</text>
              </g>
              <text x="380" y="150" font-weight="700">From one project to steady work</text>
              <rect x="12" y="164" width="220" height="64" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="122" y="189">One project</text><text x="122" y="210" font-size="11" fill="#9b99b8">Pavizham: logo, ₹15,000</text>
              <rect x="270" y="164" width="220" height="64" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="189">Repeat project</text><text x="380" y="210" font-size="11" fill="#9b99b8">Pavizham: kit, ₹12,000</text>
              <rect x="528" y="164" width="220" height="64" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="638" y="189">Retainer</text><text x="638" y="210" font-size="11" fill="#9b99b8">Brew Theory: ₹10,000 a month</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr13a)">
                <line x1="234" y1="196" x2="266" y2="196"/><line x1="492" y1="196" x2="524" y2="196"/>
              </g>
              <rect x="12" y="246" width="736" height="52" rx="9" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="268" font-weight="700" fill="#fcd34d">Retainer maths: 12 hours a month for ₹10,000 = ₹833 an hour</text>
              <text x="380" y="288" font-size="11" fill="#9b99b8">12 h × ₹750 = ₹9,000 at her goal rate. Minimum 3 months = ₹30,000.</text>
            </g>
          </svg>
          <figcaption>Planned follow-ups turn one project into repeat work. A retainer gives Sneha steady monthly income.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Follow up with a plan, not by luck</h3>
          <p>Many freelancers deliver the files and never write again. Then the client forgets them. Sneha adds a "next follow-up" date to her client sheet for every finished project.</p>
          <table class="lc-table">
            <thead><tr><th>When</th><th>Message</th><th>Goal</th></tr></thead>
            <tbody>
              <tr><td>Day 0</td><td>Final files, a short guide to the files, the balance invoice</td><td>A smooth finish</td></tr>
              <tr><td>Week 2</td><td>"Are the files working for your printer and your posts?" plus 3 feedback questions</td><td>Fix small problems and learn</td></tr>
              <tr><td>Month 1</td><td>Ask for a testimonial, with permission</td><td>Honest proof for your portfolio</td></tr>
              <tr><td>Month 3</td><td>One useful idea for their business, and an offer of a next step</td><td>Repeat work</td></tr>
            </tbody>
          </table>
          <p>In her sheet, column E holds the follow-up date. The formula <code>=IF(TODAY()&gt;=E2, "Follow up today", "")</code> shows who needs a message.</p>
          <p>A weak prompt makes a pushy sales message:</p>
          <pre><code>Write a message asking my old client for more work.</code></pre>
          <p>A better prompt gives real details and one clear ask:</p>
          <pre><code>You are helping me write a WhatsApp message to a past client.
        Client: Mariam, owner of a home bakery in Kerala. I designed her logo 3 months ago.
        She said she might want Instagram templates later.
        Facts: my Social Media Kit is ₹12,000. It has 10 post templates,
        3 story templates, 5 highlight covers and a 1-page style note. It takes 5 working days.
        Write a friendly message under 70 words. Ask how the new logo is working.
        Offer the kit as one idea, with no pressure. Do not invent any results.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Testimonials: real words, with permission</h3>
          <p>A <strong>testimonial</strong> is a short quote from a happy client about your work. It is strong proof for new clients. It must be real, and the client must agree to its use.</p>
          <p>Mariam sent Sneha a long WhatsApp voice note in Malayalam and English. Sneha typed out the main points. She asked the AI to shorten them to two sentences <em>without changing the meaning</em>. Then she sent the draft to Mariam:</p>
          <pre><code>Hi Mariam, thank you for your kind words! I shortened them to this:
        "Sneha understood my bakery from the first call. The new logo looks
        good on my boxes, my stickers and my Instagram."
        May I use this on my website and LinkedIn, with your name and Pavizham Bakes?
        Please change anything you like, or say no. That is completely fine.</code></pre>
          <ul class="lc-list">
            <li><strong>Get written approval</strong> of the exact final words, the name and where you will use them. Save the message.</li>
            <li><strong>Never invent</strong> a testimonial, and never mix two clients' words into one quote. Do not add results the client did not state, such as "sales went up 40%".</li>
            <li><strong>Remove it</strong> if the client later asks you to.</li>
          </ul>
          <p><strong>Referrals.</strong> A referral is when someone recommends you. Joseph from Kappa Corner sent Mariam to Sneha, so Sneha thanked him with a personal message. Referrals also go both ways. Karthik's new outlet needs a website, so Sneha introduces Rohan, a web developer in Rajasthan. Rohan quotes and invoices his own work. If partners ever agree a referral fee, they tell the client.</p>
        </div>
        <div class="lc-card">
          <h3>Offer a retainer</h3>
          <p>A <strong>retainer</strong> is a fixed monthly fee for a set amount of regular work. It makes income steadier. After the final files are delivered, Karthik needs new social posts every month. Sneha offers a retainer.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Sneha's offer to Brew Theory</th></tr></thead>
            <tbody>
              <tr><td>Work each month</td><td>8 post designs and 4 story designs, 1 round of changes each</td></tr>
              <tr><td>Hour budget</td><td>12 hours (12 × ₹750 = ₹9,000 at her goal rate)</td></tr>
              <tr><td>Fee</td><td>₹10,000 a month, invoiced at the start of the month (₹833 an hour)</td></tr>
              <tr><td>Minimum term</td><td>3 months (₹30,000 in total), then month to month</td></tr>
              <tr><td>Rules</td><td>Unused hours do not carry over. Extra work is ₹750 an hour, agreed first. 30 days' notice to end.</td></tr>
            </tbody>
          </table>
          <p>The retainer is ₹10,000 of her ₹60,000 goal (16.7%). It uses 12 of her 80 billable hours (15%). That leaves room for other clients. One client taking most of your hours is risky: if they leave, most of your income leaves too.</p>
          <p>AI can draft the offer and the terms. Put the final terms in a written agreement, and have your contract template checked by a lawyer. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from final files to repeat work</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Sneha's steps after the Pavizham Bakes project in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Deliver the final files and send the balance invoice</li>
              <li data-order="2">Two weeks later, check the files work and ask 3 feedback questions</li>
              <li data-order="3">Shorten Mariam's own words into a draft testimonial</li>
              <li data-order="4">Send the draft and ask for written permission to use it</li>
              <li data-order="5">Add the approved quote to the portfolio and thank Joseph for the referral</li>
              <li data-order="6">After about three months, suggest the Social Media Kit as a next step</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to write a follow-up plan and messages for one of your past clients. Check every fact before you send anything.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly client-care coach for freelancers.

        About me: [freelance graphic designer in Kerala]
        Past client: [Mariam, owner of a home bakery]
        Project: [Starter Logo, finished 2 weeks ago]
        What the client said: [she is happy and might want Instagram templates later]
        My next offer: [Social Media Kit, ₹12,000, 10 post templates, 3 story templates, 5 highlight covers]
        Retainer idea: [8 posts and 4 stories a month for ₹10,000, minimum 3 months]

        Please write:
        1. A follow-up plan in a table: when | message | goal (for 3 months).
        2. A check-in message with 3 short feedback questions (under 80 words).
        3. A testimonial request that asks for permission to use her words, name and business name, and makes it easy to say no.
        4. A short, no-pressure offer of the next project or the retainer.

        Use simple, warm English. Do not invent results, numbers or quotes.</pre>
            <ul class="ai-try-checks">
              <li>The testimonial request must ask for permission and allow a "no".</li>
              <li>No message should invent results, such as sales growth.</li>
              <li>Prices and package details must match your real offer.</li>
              <li>Each message should have one clear ask, not three.</li>
              <li>Edit the words so they sound like you.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Your best future clients are often your past clients and the people they know. Follow up on a plan, ask for honest feedback and use testimonials only with written permission. A small retainer can make your income much steadier.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Growing and Protecting Yourself</h1>
        </div>
        <p class="lc-lead">Once clients come back and refer friends, a new problem starts: too much work at old prices. In this lesson, you will learn when and how to raise your rates, and how to tell clients politely. You will also learn to protect your time and health, keep client information safe, and write a short note that tells clients how you use AI. A freelance business lasts only if you protect the person who runs it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four panels. Raise rates: for new clients, Starter Logo goes from 15,000 to 16,500 rupees, Brand Identity from 45,000 to 49,500 and Social Media Kit from 12,000 to 13,200. Protect your time: a busy month has 87 hours booked against a limit of 80, so 7 hours move to next month. Protect client data: remove names and numbers, keep private files out of public AI tools, use backups and two-step login. Be open about AI: a short AI-use note, follow each client's rules, and the final design work is her own.">
            <defs><marker id="fr14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-weight="700">Grow and protect your freelance business</text>
              <rect x="12" y="34" width="362" height="122" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="193" y="58" font-weight="700" fill="#c4b5fd">Raise rates (new clients, +10%)</text>
              <g text-anchor="start" font-size="12">
                <text x="32" y="86">Starter Logo</text><text x="32" y="112">Brand Identity</text><text x="32" y="138">Social Media Kit</text>
              </g>
              <g text-anchor="end" font-size="12">
                <text x="250" y="86" fill="#9b99b8">₹15,000</text><text x="250" y="112" fill="#9b99b8">₹45,000</text><text x="250" y="138" fill="#9b99b8">₹12,000</text>
                <text x="354" y="86" fill="#6ee7b7">₹16,500</text><text x="354" y="112" fill="#6ee7b7">₹49,500</text><text x="354" y="138" fill="#6ee7b7">₹13,200</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr14a)">
                <line x1="258" y1="82" x2="286" y2="82"/><line x1="258" y1="108" x2="286" y2="108"/><line x1="258" y1="134" x2="286" y2="134"/>
              </g>
              <rect x="386" y="34" width="362" height="122" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="567" y="58" font-weight="700" fill="#fcd34d">Protect your time</text>
              <text x="567" y="80" font-size="11.5" fill="#9b99b8">A busy month: billable hours booked</text>
              <rect x="406" y="92" width="320" height="18" rx="4" fill="#27274e"/>
              <rect x="406" y="92" width="256" height="18" rx="4" fill="#3b82f6"/>
              <rect x="662" y="92" width="22" height="18" fill="#ec4899"/>
              <line x1="662" y1="86" x2="662" y2="116" stroke="#e2e0f0" stroke-width="2"/>
              <text x="534" y="130" font-size="11.5">Limit: 80 h</text>
              <text x="690" y="130" font-size="11.5" fill="#f9a8d4">87 h</text>
              <text x="567" y="148" font-size="11.5" fill="#6ee7b7">Move 7 h to next month, or say no</text>
              <rect x="12" y="168" width="362" height="120" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="193" y="192" font-weight="700" fill="#67e8f9">Protect client data</text>
              <g font-size="12">
                <text x="193" y="220">Remove names and numbers</text>
                <text x="193" y="244">No private files in public AI tools</text>
                <text x="193" y="268">Backups and two-step login</text>
              </g>
              <rect x="386" y="168" width="362" height="120" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="567" y="192" font-weight="700" fill="#6ee7b7">Be open about AI</text>
              <g font-size="12">
                <text x="567" y="220">A short AI-use note for clients</text>
                <text x="567" y="244">Follow each client's rules</text>
                <text x="567" y="268">Final design work is her own</text>
              </g>
            </g>
          </svg>
          <figcaption>Growth brings more work. Sneha protects her income with better prices, her health with a clear limit, and her clients with safe data habits and honesty about AI.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Raise your rates at the right time</h3>
          <p>Many freelancers wait too long to raise their prices. Good signs that it is time:</p>
          <ul class="lc-list">
            <li>You are booked out, and new enquiries have to wait.</li>
            <li>Your tracked hours show your real rate is near your minimum.</li>
            <li>Your costs went up, or your skills and portfolio got much better.</li>
            <li>You have not changed your prices for a year.</li>
          </ul>
          <p>After a year of freelancing, Sneha has a busy month. She has a Brand Identity (55 hours), a Starter Logo (18 hours) and a Social Media Kit (14 hours). That is 87 billable hours, but her limit is 80. Two more enquiries are waiting. So she raises her prices by 10% for new clients from 1 January 2027.</p>
          <table class="lc-table">
            <thead><tr><th>Package</th><th>Old price</th><th>New price</th><th>Hours</th><th>New rate per hour</th></tr></thead>
            <tbody>
              <tr><td>Starter Logo</td><td>₹15,000</td><td>₹16,500</td><td>18</td><td>₹917</td></tr>
              <tr><td>Brand Identity</td><td>₹45,000</td><td>₹49,500</td><td>55</td><td>₹900</td></tr>
              <tr><td>Social Media Kit</td><td>₹12,000</td><td>₹13,200</td><td>14</td><td>₹943</td></tr>
              <tr><td>Extra round of changes</td><td>₹3,000</td><td>₹3,300</td><td>3</td><td>₹1,100</td></tr>
            </tbody>
          </table>
          <p>In her sheet, the formula <code>=B2*1.1</code> gives each new price. Her rate at the income goal becomes ₹825 an hour (₹66,000 ÷ 80). Projects already agreed keep the old price. Brew Theory's retainer rises from ₹10,000 to ₹11,000 a month, but only after the 3-month minimum and with 30 days' written notice.</p>
          <p>A weak prompt gives a message that sounds nervous or rude:</p>
          <pre><code>Write a message telling clients my prices are going up.</code></pre>
          <p>A better prompt gives the facts and the tone:</p>
          <pre><code>Write a short, warm email to a regular client, Karthik, who owns a café.
        Facts: my monthly retainer goes from ₹10,000 to ₹11,000 from 1 February 2027.
        This is 30 days' notice. The work stays the same: 8 posts and 4 stories a month.
        Thank him for the work so far. Do not apologise too much. Do not invent reasons.
        Invite him to a short call if he has questions. Under 100 words.</code></pre>
          <p>Some clients may leave after a rise. That is normal. Check your bookings for two or three months, then decide if the new price works.</p>
        </div>
        <div class="lc-card">
          <h3>Protect your time and your health</h3>
          <p><strong>Burnout</strong> means being tired in body and mind for a long time because of too much work. It lowers your quality, and it can make you miss deadlines. Freelancers are at risk because there is no manager to say "stop".</p>
          <ul class="lc-list">
            <li><strong>Set a limit:</strong> Sneha keeps 80 billable hours a month, about 20 a week. When a month is full, new work starts the next month.</li>
            <li><strong>Use a waitlist:</strong> "Thank you! I am fully booked this month. I can start on 3 February. Shall I keep that slot for you?"</li>
            <li><strong>Keep rest days:</strong> Sundays are off, and she does not answer client messages after 7 pm. She says this in her welcome message.</li>
            <li><strong>Keep your buffer:</strong> her ₹1,50,000 savings cover about 4.5 months of personal costs (₹1,50,000 ÷ ₹33,000). That lets her say no to bad-fit work.</li>
            <li><strong>Do not rely on one client:</strong> if one client gives you most of your income, losing them is a crisis.</li>
          </ul>
          <p>AI can draft waitlist replies and weekly plans. It cannot tell you how tired you are. If stress or poor sleep goes on for weeks, talk to a doctor or a counsellor.</p>
        </div>
        <div class="lc-card">
          <h3>Keep client information safe, and be open about AI</h3>
          <p><strong>Confidentiality</strong> means keeping a client's private information secret. Some clients ask you to sign an NDA (non-disclosure agreement: a written promise to keep their information secret). Even without an NDA, treat briefs, sales figures and unreleased designs as private.</p>
          <ul class="lc-list">
            <li>Keep client files in one safe place, with backups. Use strong passwords and two-step login (a code on your phone as well as a password).</li>
            <li>Before you use a public AI tool, remove names, phone numbers, prices and anything under an NDA. Check the tool's current privacy settings and help pages. Settings such as "use my chats to improve the model" can often be changed.</li>
            <li>If a client gives you personal data, such as a customer list, use it only for their project. India's DPDP Act 2023 (Digital Personal Data Protection Act) and its Rules set duties for handling personal data. Many duties start in stages, so ask a lawyer what applies to you.</li>
          </ul>
          <p>An <strong>AI-use note</strong> is a short statement that tells clients how you use AI. Sneha adds hers to every proposal:</p>
          <pre><code>How I use AI
        I use AI tools to help draft emails, plan tasks and research ideas.
        I may use an AI image tool for early mood-board ideas.
        All logos and final artwork are designed by me.
        I never put your private files or data into public AI tools.
        If you prefer no AI use on your project, tell me and I will follow that.</code></pre>
          <p>Keep the note true. If you use AI images in a final design, say so. Who owns AI-made images is still unclear in many countries, so check with a lawyer before you promise full ownership. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what can Sneha paste into a public AI tool?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each item by what Sneha should do before using a public AI tool.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine as it is"></div>
              <div data-sorter-target="bucket" data-bucket="clean" data-label="Remove details first"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not paste"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="These are her own public prices. There is no client information in them.">Her own package list and prices</li>
              <li data-bucket="ok" data-why="Task names and hours from her time log say nothing private about a client.">Task names and hours from her time log</li>
              <li data-bucket="clean" data-why="She can remove the owner's phone number and sales figures and keep the design needs.">A client brief with the owner's phone number and sales figures</li>
              <li data-bucket="clean" data-why="She can remove names and private details, then ask for help with the tone of her reply.">A client's angry email, to help her draft a calm reply</li>
              <li data-bucket="no" data-why="Work under an NDA must stay private. Removing details is not enough for unreleased designs.">Unreleased pack designs from a project under an NDA</li>
              <li data-bucket="no" data-why="This is other people's personal data. It is used only for the client's project, never pasted into a public tool.">A client's customer list with names and phone numbers</li>
              <li data-bucket="no" data-why="Passwords and bank details must never go into any AI tool.">A client's website login and bank details</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to review your prices, work out new ones and draft a polite notice for your clients. Check every sum yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a pricing coach for freelancers. Do not give tax or legal advice. Do not invent market rates.

        My income goal: [₹60,000 a month]
        My billable hours: [80 a month]
        My packages (price, planned hours): [Starter Logo ₹15,000, 18 h; Brand Identity ₹45,000, 55 h; Social Media Kit ₹12,000, 14 h]
        Signs of demand: [87 hours booked next month; 2 enquiries waiting]
        Planned rise: [10%] for new clients from [1 January 2027]

        Please do 4 things:
        1. Make a table: package | old price | new price | hours | old rate per hour | new rate per hour. Show the sums.
        2. Say if my signs of demand support this rise, and name 2 risks.
        3. Write a polite notice for existing clients, under 90 words. Say that agreed projects keep the old price.
        4. Write a short waitlist reply for new enquiries when I am fully booked.

        Use simple, friendly English.</pre>
            <ul class="ai-try-checks">
              <li>Check each new price and rate per hour with a calculator.</li>
              <li>The notice must say that agreed projects keep the old price.</li>
              <li>The AI should not invent "market rates" or other freelancers' prices.</li>
              <li>Edit the messages so they sound like you.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Growth is not only more clients. Raise your prices when demand shows you can. Keep a clear limit on your hours. Protect every client's data, and tell clients honestly how you use AI. These habits protect both your income and your name.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Capstone: A Freelance Business Kit for Sneha</h1>
        </div>
        <p class="lc-lead">In this capstone, you will put the whole course together into one freelance business kit. A <strong>business kit</strong> is a folder of ready documents you use again and again: your niche, packages, a case study, a proposal template, a pricing sheet, a contract checklist, client messages and admin sheets. You will see Sneha's kit, check its numbers, and use AI to build one piece at a time. At the end, you will start your own kit.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Sneha's freelance business kit in three columns. Set up: niche line, three packages, portfolio case study. Win clients: proposal template, pricing sheet, contract checklist. Run the work: client messages, time tracker, invoice template and CA questions, follow-up plan and AI-use note. Bottom: for every piece, AI drafts and Sneha checks facts, numbers and promises.">
            <defs><marker id="fr15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-weight="700">Sneha's freelance business kit</text>
              <text x="127" y="46" font-weight="700" fill="#c4b5fd">1. Set up</text>
              <text x="380" y="46" font-weight="700" fill="#93c5fd">2. Win clients</text>
              <text x="633" y="46" font-weight="700" fill="#6ee7b7">3. Run the work</text>
              <g fill="#1f1f44" stroke="#8b5cf6">
                <rect x="12" y="58" width="230" height="40" rx="8"/><rect x="12" y="108" width="230" height="40" rx="8"/><rect x="12" y="158" width="230" height="40" rx="8"/>
              </g>
              <text x="127" y="83">Niche line</text>
              <text x="127" y="133">3 packages and prices</text>
              <text x="127" y="183">Portfolio case study</text>
              <g fill="#1f1f44" stroke="#3b82f6">
                <rect x="265" y="58" width="230" height="40" rx="8"/><rect x="265" y="108" width="230" height="40" rx="8"/><rect x="265" y="158" width="230" height="40" rx="8"/>
              </g>
              <text x="380" y="83">Proposal template</text>
              <text x="380" y="133">Pricing sheet</text>
              <text x="380" y="183">Contract checklist</text>
              <g fill="#1f1f44" stroke="#10b981">
                <rect x="518" y="58" width="230" height="40" rx="8"/><rect x="518" y="108" width="230" height="40" rx="8"/><rect x="518" y="158" width="230" height="40" rx="8"/><rect x="518" y="208" width="230" height="40" rx="8"/>
              </g>
              <text x="633" y="83">Client messages</text>
              <text x="633" y="133">Time tracker</text>
              <text x="633" y="183" font-size="12">Invoice, CA questions</text>
              <text x="633" y="233" font-size="12">Follow-ups, AI-use note</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fr15a)">
                <line x1="243" y1="128" x2="261" y2="128"/><line x1="496" y1="128" x2="514" y2="128"/>
              </g>
              <rect x="12" y="260" width="736" height="32" rx="8" fill="#27274e" stroke="#f59e0b" stroke-dasharray="5 4"/>
              <text x="380" y="281" fill="#fcd34d">Every piece: AI drafts, Sneha checks the facts, numbers and promises</text>
            </g>
          </svg>
          <figcaption>Ten pieces in three groups. Each one is reused for every new client, then improved with what Sneha learns.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What is in Sneha's kit</h3>
          <table class="lc-table">
            <thead><tr><th>Piece</th><th>Sneha's version</th></tr></thead>
            <tbody>
              <tr><td>Niche line</td><td>"Brand identities for small cafés and food brands in South India"</td></tr>
              <tr><td>Packages</td><td>Starter Logo ₹15,000 (18 h), Brand Identity ₹45,000 (55 h), Social Media Kit ₹12,000 (14 h). Extra round of changes ₹3,000.</td></tr>
              <tr><td>Portfolio case study</td><td>Kappa Corner: problem, work, result. Joseph reused the design on paper bags and a new board. His quote is used with written permission. Kayal Foods says "done at Coastline Creative" with her role. Kaapi Kadha is labelled "Concept project, not a real client".</td></tr>
              <tr><td>Proposal template</td><td>The client's goal in their words, questions, scope, what is not included, proof, price, timeline, next step. Example: Brew Theory, ₹45,000, paid 50% at the start, 25% on logo approval and 25% before final files.</td></tr>
              <tr><td>Pricing sheet</td><td>Costs to income goal to hourly rate (see below), plus a check of each package.</td></tr>
              <tr><td>Contract checklist</td><td>Scope, payment terms and advance, rounds of changes, who owns the designs and when, cancellation, confidentiality, AI use. Her template is checked by a lawyer.</td></tr>
              <tr><td>Client messages</td><td>Kick-off, weekly update, a scope change reply, saying no politely, a payment reminder, a waitlist reply.</td></tr>
              <tr><td>Time tracker</td><td>Task list with an hour budget per package, a time log and <code>SUMIF</code> totals.</td></tr>
              <tr><td>Invoice and CA questions</td><td>Invoice layout (GST lines only if registered), foreign-client wording to confirm with a CA, a 10% tax savings habit, questions for her CA.</td></tr>
              <tr><td>Follow-ups and AI-use note</td><td>A 3-month follow-up plan, a testimonial request that asks permission, a retainer offer and her short AI-use note.</td></tr>
            </tbody>
          </table>
          <p>Each piece is a short document or one sheet. It does not need to be long. It needs to be true and ready to use.</p>
        </div>
        <div class="lc-card">
          <h3>The pricing sheet: check every number</h3>
          <p>The pricing sheet holds the numbers that the rest of the kit depends on. Sneha builds it in Google Sheets. The same formulas work in Excel.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>A: Item</th><th>B: Value or formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Personal costs a month</td><td>33000</td><td>₹33,000</td></tr>
              <tr><td>2</td><td>Business costs a month</td><td>10500</td><td>₹10,500</td></tr>
              <tr><td>3</td><td>Savings a month</td><td>8000</td><td>₹8,000</td></tr>
              <tr><td>4</td><td>Money needed before tax</td><td><code>=SUM(B1:B3)</code></td><td>₹51,500</td></tr>
              <tr><td>5</td><td>Tax set-aside (planning only)</td><td>10%</td><td>10%</td></tr>
              <tr><td>6</td><td>Required revenue</td><td><code>=B4/(1-B5)</code></td><td>₹57,222</td></tr>
              <tr><td>7</td><td>Income goal</td><td><code>=CEILING(B6, 5000)</code></td><td>₹60,000</td></tr>
              <tr><td>8</td><td>Billable hours a month</td><td>80</td><td>80</td></tr>
              <tr><td>9</td><td>Hourly rate at the goal</td><td><code>=B7/B8</code></td><td>₹750</td></tr>
              <tr><td>10</td><td>Minimum hourly rate</td><td><code>=B6/B8</code></td><td>₹715</td></tr>
            </tbody>
          </table>
          <p>A package check sits below: price ÷ hours. Starter Logo is ₹833 an hour, Brand Identity ₹818 and the Social Media Kit ₹857. All are above ₹750, so each price has a small cushion. One Brand Identity and one Starter Logo make ₹60,000 in 73 billable hours.</p>
          <p>The 10% is a planning assumption, not a tax rate. For foreign clients, the sheet converts at the day's rate. For example, £450 at £1 = ₹110 is about ₹49,500. The real rate changes every day.</p>
        </div>
        <div class="lc-card">
          <h3>Build the kit with AI, one piece at a time</h3>
          <p>Do not ask the AI for the whole kit in one message. You will get long, general text that you cannot check. Build one piece at a time. Give the AI your real facts and a clear format.</p>
          <p>A weak prompt:</p>
          <pre><code>Write a proposal for a tea company that wants social media designs.</code></pre>
          <p>A better prompt uses the kit:</p>
          <pre><code>You are helping a freelance designer in Kerala write a proposal.
        Use my template headings: Your goal | Questions | Scope | Not included |
        Proof | Price | Timeline | Next step.
        Client: a small online tea seller in the UK. Brief: a Social Media Kit and
        one tea-tin label, for a new winter range.
        My kit: 10 post templates, 3 story templates, 5 highlight covers, a 1-page
        style note. Price agreed on the call: £450 for the kit and the label.
        Payment: 50% at the start, 50% before final files. 2 rounds of changes.
        Proof: use only this: "Portfolio: Kappa Corner case study and Kaapi Kadha
        (concept project)". Add my AI-use note at the end.
        Do not add taxes, results or claims I did not give you.</code></pre>
          <p>Keep a working order. Start with the niche and packages, because every other piece uses them. Then do the pricing sheet, case study and proposal. Finish with the contract checklist, messages and admin sheets. Save each checked piece in one folder with a date, such as "Proposal template, v2, Jan 2027".</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sneha uses her kit for Hartley Tea Co</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sneha's prompt">Sneha pastes the better prompt above. It has her template headings, her Social Media Kit facts and a short summary of Emma's brief. There are no email addresses or private details.</li>
              <li data-kind="answer" data-label="AI draft">The AI writes a clear proposal under her headings. It adds: "I have designed for over 20 tea brands in the UK."</li>
              <li data-kind="warn" data-label="A mistake to catch">That claim is invented. Sneha has no tea clients in the UK. She deletes it and keeps only her real proof: the Kappa Corner case study and the Kaapi Kadha concept, labelled as a concept.</li>
              <li data-kind="warn" data-label="Another mistake">The draft also adds "GST at 18% will be added". Sneha is not GST-registered, and Emma is abroad. She deletes the line and adds the question to her CA list.</li>
              <li data-kind="tool" data-label="Pricing sheet">She checks the quote in her pricing sheet. £450 at the example rate of ₹110 is about ₹49,500. She checks the real rate on the day.</li>
              <li data-kind="check" data-label="Contract checklist">She checks the proposal against her checklist: scope, 2 rounds of changes, 50% advance, final files after full payment, the AI-use note. Everything matches.</li>
              <li data-kind="result" data-label="Saved to the kit">She edits the words into her own voice and sends it. She saves the proposal as a new example for foreign clients in her kit folder.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Final check before you use your kit</h3>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>What to look for</th></tr></thead>
            <tbody>
              <tr><td>Honesty</td><td>No invented results, clients or reviews. Testimonials used with written permission. Concept work and agency work labelled clearly. AI use described truthfully.</td></tr>
              <tr><td>Numbers</td><td>Every sum worked out again in your sheet. Prices, hours and payment splits the same in every document.</td></tr>
              <tr><td>Legal and tax</td><td>Contract template checked by a lawyer. Tax questions taken to a CA. The kit is not legal or tax advice.</td></tr>
              <tr><td>Privacy</td><td>No client names, files or personal data pasted into public AI tools.</td></tr>
              <tr><td>Your voice</td><td>Every message reads like you, not like a general AI text.</td></tr>
            </tbody>
          </table>
          <p>Review the kit every six months. Use your time tracker to update hour budgets. Update prices, case studies and messages as your business grows.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use this prompt to start your own freelance business kit. Change the details in brackets, then check every number and promise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a business coach for freelancers. Help me start a freelance business kit: short documents I can reuse with every client.

        About me: [freelance graphic designer in Kerala]
        Niche: [brand identities for small cafés and food brands in South India]
        Packages (price, hours): [Starter Logo ₹15,000, 18 h; Brand Identity ₹45,000, 55 h; Social Media Kit ₹12,000, 14 h]
        Money needed a month: [₹51,500]. Tax set-aside for planning: [10%]. Billable hours: [80 a month]
        Best past project: [a logo, board and menu for a small snack stall]

        Please give me:
        1. A pricing sheet: required revenue = needed ÷ (1 − set-aside), a goal rounded up to the next ₹5,000, the hourly rate at the goal, the minimum rate, and each package's rate per hour. Show every sum.
        2. A one-page proposal template with [blanks].
        3. A contract checklist of 8 points to review with a lawyer.
        4. Four short message templates: kick-off, weekly update, scope change, payment reminder.
        5. A 3-line AI-use note for clients.

        Use simple English. Do not invent results, reviews, laws or tax rules.</pre>
            <ul class="ai-try-checks">
              <li>Check the pricing sums: with the sample data, ₹57,222 required, ₹60,000 goal, ₹750 and ₹715 an hour.</li>
              <li>The proposal template must not contain invented proof or results.</li>
              <li>The contract checklist is a list for a lawyer, not a finished contract.</li>
              <li>The AI-use note must be true for how you really work.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A freelance business kit turns everything you learned into ready tools. AI helps you draft each piece quickly. Your job is to keep every piece honest, correct and in your own voice, and to improve it after every project.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

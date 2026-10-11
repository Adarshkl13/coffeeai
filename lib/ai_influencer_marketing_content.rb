module AiInfluencerMarketingContent
  # Units (sidebar dividers): 1–4 Influencer Marketing Basics · 5–9 Finding and Briefing Creators · 10–14 Running and Measuring Campaigns · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">How Influencer Marketing Works</h1>
        </div>
        <p class="lc-lead">Influencer marketing means a brand works with a creator to reach the creator's followers. The followers trust the creator, so they listen. In this lesson you will learn the creator tiers, from nano to mega. You will learn the main goals, content formats and deal types: paid, gifted and affiliate. Through this course you will follow Farah, the marketing lead of Zari &amp; Co. Zari &amp; Co is a made-up ethnic wear brand in Gujarat that sells online. Farah is planning its first real influencer campaign for Diwali 2026.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Left: five creator tiers with common follower ranges. Nano 1K to 10K has the closest bond but small reach. Micro 10K to 100K has strong niche trust. Mid-tier 100K to 500K mixes reach and trust. Macro 500K to 1M has wide reach and costs more. Mega 1M plus has celebrity reach. Right: how a deal works. The brand Zari and Co makes a paid, gifted or affiliate deal. The creator makes a reel or story. Followers see it labelled as an ad. They take action: visit, use a code or buy.">
            <defs><marker id="inf1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="200" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Creator tiers (common ranges)</text>
              <text x="580" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">How a deal works</text>
              <rect x="30" y="40" width="340" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="46" y="65" font-weight="700">Nano: 1K–10K</text>
              <text x="356" y="65" font-size="11" fill="#9b99b8" text-anchor="end">closest bond, small reach</text>
              <rect x="30" y="88" width="340" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="46" y="113" font-weight="700">Micro: 10K–100K</text>
              <text x="356" y="113" font-size="11" fill="#9b99b8" text-anchor="end">strong niche trust</text>
              <rect x="30" y="136" width="340" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="46" y="161" font-weight="700">Mid-tier: 100K–500K</text>
              <text x="356" y="161" font-size="11" fill="#9b99b8" text-anchor="end">reach plus some trust</text>
              <rect x="30" y="184" width="340" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="46" y="209" font-weight="700">Macro: 500K–1M</text>
              <text x="356" y="209" font-size="11" fill="#9b99b8" text-anchor="end">wide reach, costs more</text>
              <rect x="30" y="232" width="340" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="46" y="257" font-weight="700">Mega: 1M+</text>
              <text x="356" y="257" font-size="11" fill="#9b99b8" text-anchor="end">celebrity reach</text>
              <text x="200" y="300" font-size="11" fill="#9b99b8" text-anchor="middle">Ranges vary by agency. Bigger is not always better.</text>
              <g text-anchor="middle">
                <rect x="420" y="40" width="320" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="580" y="65">Brand: Zari &amp; Co (Gujarat)</text>
                <rect x="420" y="98" width="320" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="580" y="123">Deal: paid, gifted or affiliate</text>
                <rect x="420" y="156" width="320" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="580" y="181">Creator makes a reel or story</text>
                <rect x="420" y="214" width="320" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="580" y="239">Followers see it, labelled as an ad</text>
                <rect x="420" y="272" width="320" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="580" y="297">Action: visit, use a code, buy</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inf1a)">
                <line x1="580" y1="81" x2="580" y2="95"/>
                <line x1="580" y1="139" x2="580" y2="153"/>
                <line x1="580" y1="197" x2="580" y2="211"/>
                <line x1="580" y1="255" x2="580" y2="269"/>
              </g>
            </g>
          </svg>
          <figcaption>Creators come in five common tiers. Every deal follows the same path: brand, deal, content, audience, action.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What influencer marketing is</h3>
          <p>A <strong>creator</strong> (also called an influencer) is a person who posts content that a group of people follow and trust. A brand gives the creator money, products or a share of sales. In return, the creator makes content about the brand for their followers.</p>
          <p>It works because people trust a person more than an ad. Tanya is a made-up fashion creator in Rajasthan. When she styles a lehenga, her followers see a real person wearing it. That feels closer than a banner ad.</p>
          <p>Two words you will use in every lesson:</p>
          <ul class="lc-list">
            <li><strong>Reach</strong>: the number of different people who saw a post.</li>
            <li><strong>Engagement</strong>: the actions people take on a post, such as likes, comments, shares and saves.</li>
          </ul>
          <p>Creators are often grouped by follower count. These <strong>tiers</strong> are common, but agencies use different ranges:</p>
          <table class="lc-table">
            <thead><tr><th>Tier</th><th>Followers</th><th>Good for</th><th>Watch out for</th><th>Made-up example</th></tr></thead>
            <tbody>
              <tr><td>Nano</td><td>1,000–10,000</td><td>Close, local trust. Often happy with gifted deals.</td><td>Small reach. You need many of them.</td><td>Harleen, festive home and outfits, Punjab (8,500)</td></tr>
              <tr><td>Micro</td><td>10,000–1,00,000</td><td>Strong trust in one niche. Good value.</td><td>More work to manage many creators.</td><td>Tanya, fashion, Rajasthan (48,000)</td></tr>
              <tr><td>Mid-tier</td><td>1,00,000–5,00,000</td><td>Reach and trust together.</td><td>Higher fees. Check the audience carefully.</td><td>Ishita, fashion, West Bengal (1,65,000)</td></tr>
              <tr><td>Macro</td><td>5,00,000–10,00,000</td><td>Wide reach for launches.</td><td>Costly. Followers may be less engaged.</td><td>A fashion YouTuber</td></tr>
              <tr><td>Mega</td><td>10,00,000+</td><td>Fame and big awareness.</td><td>Very costly. Hard to measure sales.</td><td>A film or TV actor</td></tr>
            </tbody>
          </table>
          <p>All creators, numbers and handles in this course are made up. Real rates vary a lot. Always ask each creator for their own rate card.</p>
        </div>
        <div class="lc-card">
          <h3>Goals and formats</h3>
          <p>Every campaign starts with a goal. The four common goals are:</p>
          <ul class="lc-list">
            <li><strong>Awareness</strong>: more people learn your brand exists.</li>
            <li><strong>Consideration</strong>: people visit your page, save posts and ask questions.</li>
            <li><strong>Sales</strong>: people buy, often with a creator's promo code or link.</li>
            <li><strong>Content</strong>: you get good photos and videos that you may reuse in ads, with the creator's permission.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Format</th><th>What it is</th><th>Best for</th></tr></thead>
            <tbody>
              <tr><td>Reel or short video</td><td>A vertical video, usually under one minute</td><td>Reach and showing the product in use</td></tr>
              <tr><td>Story</td><td>A post that disappears after 24 hours. It can carry a link sticker.</td><td>Clicks, codes and quick offers</td></tr>
              <tr><td>Carousel or photo post</td><td>One or more photos in a single post</td><td>Styling ideas that people save</td></tr>
              <tr><td>YouTube video</td><td>A longer video, or a section of one about your product</td><td>Detailed reviews and "how to wear" guides</td></tr>
              <tr><td>Live stream</td><td>A real-time video where viewers can ask questions</td><td>Launches and try-on sessions</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Deal types: paid, gifted and affiliate</h3>
          <table class="lc-table">
            <thead><tr><th>Deal</th><th>How it works</th><th>Zari &amp; Co example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Paid</strong></td><td>A fixed fee for agreed content</td><td>Tanya gets ₹18,000 for one reel and two stories.</td></tr>
              <tr><td><strong>Gifted</strong></td><td>Free product, no fee. The creator may or may not post.</td><td>Sweet Crumbs, a made-up bakery in Maharashtra, sends a free Diwali hamper to a local food creator.</td></tr>
              <tr><td><strong>Affiliate</strong></td><td>A commission (a share of each sale) through the creator's link or code</td><td>After Diwali, Harleen joins Zari &amp; Co's affiliate programme and earns 8% on each order that uses her code.</td></tr>
              <tr><td><strong>Hybrid</strong></td><td>A mix, such as a smaller fee plus commission</td><td>As a brand ambassador in 2027, Pooja gets a monthly fee plus 5% of her code's sales.</td></tr>
            </tbody>
          </table>
          <p>Two rules apply to every deal type:</p>
          <ul class="lc-list">
            <li><strong>Every paid or gifted post must be labelled as an ad.</strong> A free product counts, even if the creator did not ask for it. The rules lesson explains how.</li>
            <li><strong>Gifts and fees have tax rules.</strong> In India, businesses may need to deduct tax (TDS) on some benefits they give creators, including free products. The contracts lesson covers this in general words. Ask a chartered accountant for your case.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Your first AI prompt for influencer marketing</h3>
          <p>An AI assistant such as Claude can help you think through options. It needs your details to give useful answers.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Should I do influencer marketing?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am Farah, marketing lead at Zari &amp; Co, an online ethnic wear brand
        in Gujarat. Our products cost ₹1,800 to ₹6,000. Our buyers are mostly
        women aged 22 to 40 in Indian cities. Our goal is Diwali sales.
        Compare nano, micro and mid-tier creators for us. Compare paid,
        gifted and affiliate deals. Give one risk for each option.
        Do not invent rates or statistics.</code></pre>
          <p>The AI does not know real creator rates or your customers. Use its answer as a list of options. Then decide with your own data.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: name the deal type</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up deal into the right deal type.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="paid" data-label="Paid"></div>
              <div data-sorter-target="bucket" data-bucket="gifted" data-label="Gifted"></div>
              <div data-sorter-target="bucket" data-bucket="affiliate" data-label="Affiliate"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="paid" data-why="A fixed fee for agreed content is a paid deal.">Ishita gets ₹55,000 for one Diwali reel for Zari &amp; Co.</li>
              <li data-bucket="gifted" data-why="Free product with no fee is a gifted deal. If she posts, she must still label it.">Sweet Crumbs sends a free Diwali hamper to a local food creator. No fee is paid.</li>
              <li data-bucket="affiliate" data-why="Payment depends on sales through the creator's code, so it is affiliate.">Harleen earns 8% of every order that uses her affiliate code.</li>
              <li data-bucket="paid" data-why="A set fee for a set number of posts is paid, even when the fee is small.">Tanya is paid ₹18,000 for one reel and two stories.</li>
              <li data-bucket="gifted" data-why="The creator gets the product free and no money changes hands.">A made-up Gujarat creator receives a kurta set to keep, with no fee and no promise to post.</li>
              <li data-bucket="affiliate" data-why="A unique link that pays a share of each sale is an affiliate deal.">Kabir, a made-up tech creator, gets a unique link from a gadget brand and earns 10% of each sale made through it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to suggest a starting creator mix and deal types for your own brand. Then check the ideas against your budget and goals.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an influencer marketing adviser for small Indian brands. Use simple English.

        My brand: [Zari &amp; Co, an online ethnic wear brand in Gujarat].
        Products and prices: [sarees, lehengas and kurta sets, ₹1,800 to ₹6,000].
        Customers: [women aged 22 to 40 in Indian cities].
        Main goal: [Diwali sales].
        Rough budget: [₹6,00,000 for one campaign].

        Please:
        1. Explain the five creator tiers (nano, micro, mid-tier, macro, mega) in one line each.
        2. Suggest a starting mix of tiers for my goal and budget. Explain why in 3 short points.
        3. For each tier in your mix, suggest a deal type (paid, gifted, affiliate or hybrid) and one risk.
        4. List 3 questions I should answer before I contact any creator.

        Show steps 2 and 3 as one table. Do not invent creator names, rates or statistics. Remind me that every paid or gifted post must be labelled as an ad.</pre>
            <ul class="ai-try-checks">
              <li>The mix fits your goal (sales needs codes or links, not only reach).</li>
              <li>No made-up creator names, rates or statistics.</li>
              <li>Each deal type has a clear risk.</li>
              <li>It mentions that paid and gifted posts need an ad label.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Influencer marketing borrows a creator's trust. Choose the tier and deal type that match your goal, not the biggest follower count. Every paid or gifted post must be labelled, because that trust depends on honesty.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Where AI Helps Brands</h1>
        </div>
        <p class="lc-lead">AI can save you hours on an influencer campaign. It can help you plan, search, vet, brief, track and report. But it can also invent numbers, repeat bias and leak private data. In this lesson you will learn where AI helps at each stage, and where a person must decide. You will also see what went wrong when Farah at Zari &amp; Co trusted an AI list without checking it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Six campaign stages in a row: Plan, Discover, Vet, Brief, Track and Report. Under each stage are two tasks AI can help with, such as drafting goals, suggesting search terms, spotting patterns, drafting a brief, naming tracking links and summarising results. Below them, a red band lists the risks: made-up numbers, bias, private data and over-automation. A green band says what you decide: pick creators, check real data, approve claims and sign contracts.">
            <defs><marker id="inf2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">One campaign, six stages: what AI can help with</text>
              <rect x="15" y="36" width="110" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="70" y="61" font-weight="700">Plan</text>
              <rect x="139" y="36" width="110" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="194" y="61" font-weight="700">Discover</text>
              <rect x="263" y="36" width="110" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="318" y="61" font-weight="700">Vet</text>
              <rect x="387" y="36" width="110" height="40" rx="8" fill="#27274e" stroke="#10b981"/><text x="442" y="61" font-weight="700">Brief</text>
              <rect x="511" y="36" width="110" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="566" y="61" font-weight="700">Track</text>
              <rect x="635" y="36" width="110" height="40" rx="8" fill="#27274e" stroke="#ec4899"/><text x="690" y="61" font-weight="700">Report</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inf2a)">
                <line x1="126" y1="56" x2="136" y2="56"/>
                <line x1="250" y1="56" x2="260" y2="56"/>
                <line x1="374" y1="56" x2="384" y2="56"/>
                <line x1="498" y1="56" x2="508" y2="56"/>
                <line x1="622" y1="56" x2="632" y2="56"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <rect x="15" y="86" width="110" height="52" rx="6" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="4 3"/>
                <text x="70" y="107">draft goals</text><text x="70" y="125">budget maths</text>
                <rect x="139" y="86" width="110" height="52" rx="6" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="4 3"/>
                <text x="194" y="107">search terms</text><text x="194" y="125">hashtag ideas</text>
                <rect x="263" y="86" width="110" height="52" rx="6" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="4 3"/>
                <text x="318" y="107">spot patterns</text><text x="318" y="125">group comments</text>
                <rect x="387" y="86" width="110" height="52" rx="6" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="4 3"/>
                <text x="442" y="107">first draft</text><text x="442" y="125">dos and don'ts</text>
                <rect x="511" y="86" width="110" height="52" rx="6" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="4 3"/>
                <text x="566" y="107">link names</text><text x="566" y="125">sheet formulas</text>
                <rect x="635" y="86" width="110" height="52" rx="6" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="4 3"/>
                <text x="690" y="107">summaries</text><text x="690" y="125">next steps</text>
              </g>
              <rect x="15" y="156" width="730" height="42" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="182" fill="#f9a8d4">Risks: made-up numbers · bias · private data · over-automation</text>
              <rect x="15" y="212" width="730" height="42" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="238" fill="#6ee7b7">You decide: pick creators, check real data, approve claims, sign contracts</text>
            </g>
          </svg>
          <figcaption>AI can help at every stage. The risks are the same at every stage, and the final decisions stay with you.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI helps, stage by stage</h3>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>How AI helps</th><th>What you must still check</th></tr></thead>
            <tbody>
              <tr><td>Plan</td><td>Drafts goals and KPIs (key performance indicators: the numbers that show success). Does budget maths.</td><td>Are the targets based on your real past results?</td></tr>
              <tr><td>Discover</td><td>Suggests search terms and hashtags in English, Hindi, Gujarati or Tamil. Sorts a longlist you give it.</td><td>Does each creator really exist? Open every profile yourself.</td></tr>
              <tr><td>Vet</td><td>Groups comments you paste. Spots odd patterns in numbers you give it.</td><td>Are the numbers from the creator's own insights, not guessed?</td></tr>
              <tr><td>Brief</td><td>Writes a first draft of the brief, key messages and a do and don't list.</td><td>Are the product claims true? Is the ad label rule included?</td></tr>
              <tr><td>Track</td><td>Suggests promo code names, tracking link names and spreadsheet formulas.</td><td>Do the links and codes actually work? Test each one.</td></tr>
              <tr><td>Report</td><td>Summarises results and suggests next steps.</td><td>Does every number in the summary match your sheet?</td></tr>
            </tbody>
          </table>
          <p>Many influencer platforms now have AI features, such as creator search or "fake follower" scores. Treat these scores as estimates, not facts. Features change often, so check each tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Four risks you must manage</h3>
          <ul class="lc-list">
            <li><strong>Made-up data.</strong> A general AI assistant cannot see live follower counts or private insights. It may invent handles, numbers or past brand deals. Only use numbers from the creator's own insights screenshots, the live profile or a tool you trust.</li>
            <li><strong>Bias.</strong> AI may suggest only big, English-speaking, metro creators. It may favour one skin tone, body type or gender. Ask on purpose for regional, size-inclusive and diverse creators.</li>
            <li><strong>Private data.</strong> Do not paste creator phone numbers, PAN or bank details, contracts or customer lists into public AI tools. India's Digital Personal Data Protection Act, 2023 and its Rules (notified in November 2025) set duties for handling personal data. Many duties start in phases, so check the current rules.</li>
            <li><strong>Over-automation.</strong> Sending hundreds of AI-written messages to creators feels like spam. Auto-approving content can let a false claim go live. Creators are people. Keep the relationship human.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: grouping comments safely</h3>
          <p>Farah wants to know what Meera's followers think about saree reels. Meera is a made-up saree draping creator in Gujarat. Farah copies 20 public comments from one reel. She removes all usernames first.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is Meera a good influencer?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below are 20 public comments from one saree draping reel.
        I removed the usernames. Group them into: questions about the
        product, real praise, generic or spam-like comments, and complaints.
        Count each group. Quote 2 examples per group. Use only these
        comments. Do not guess the creator's follower count or reach.
        [paste the 20 comments here]</code></pre>
          <p>The AI found 9 product questions, such as "Which fabric is this?" That is a good sign. Real followers ask real questions. But 20 comments is a small sample. Farah will also check Meera's insights screenshots before she decides.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Farah's AI creator list</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Farah asks">"List 10 Gujarat fashion creators with their follower counts and engagement rates."</li>
              <li data-kind="answer" data-label="AI replies">The AI gives a neat table of 10 handles, each with followers and an engagement rate.</li>
              <li data-kind="warn" data-label="The mistake">The AI cannot see live Instagram data. Some handles and numbers may be invented, even though they look exact.</li>
              <li data-kind="tool" data-label="Farah checks">She searches each handle on Instagram and opens every profile.</li>
              <li data-kind="result" data-label="What she finds">3 handles do not exist. 4 real accounts show very different follower counts. 3 look close.</li>
              <li data-kind="check" data-label="Real data">She asks the real creators for insights screenshots. They show reach, audience cities and age groups.</li>
              <li data-kind="answer" data-label="Better use of AI">She pastes only the checked numbers and asks the AI to sort and compare them. Now the AI works on facts.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build an "AI use plan" for your campaign. It should say where AI helps, what a person checks and what data must never be pasted.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful influencer marketing manager. Use simple English.

        I am planning an influencer campaign for [Zari &amp; Co, an online ethnic wear brand in Gujarat]. The campaign is for [Diwali 2026]. My team is [3 people]. We use [a general AI assistant, spreadsheets and Instagram].

        Make an "AI use plan" as a table with these columns:
        - Campaign stage (plan, discover, vet, brief, track, report)
        - A task AI can help with
        - What a person must check before using the result
        - Data we must NOT paste into a public AI tool

        Then add:
        1. Three warning signs that an AI answer contains made-up creator data.
        2. Two ways to reduce bias when AI suggests creators.
        3. One task we should never fully automate, and why.

        Do not name real creators. Do not invent statistics.</pre>
            <ul class="ai-try-checks">
              <li>Every stage has a human check, not only an AI task.</li>
              <li>The "do not paste" column includes phone numbers, bank or PAN details and customer lists.</li>
              <li>The warning signs include exact-looking numbers with no source.</li>
              <li>No real creator names or made-up statistics.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to draft, sort and summarise. Never use it as the source of creator facts. Give it checked data, keep private data out, and keep the final decisions with a person.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Rules and Disclosure</h1>
        </div>
        <p class="lc-lead">In India, creator posts that a brand pays for or gifts must be clearly labelled as ads. Brands share the responsibility with creators. In this lesson you will learn the main rules in India. They come from ASCI (the Advertising Standards Council of India) and the CCPA (Central Consumer Protection Authority). You will learn how to label posts, how to check claims, and the extra rules for health and finance creators. This is general education, not legal advice. Rules change, so always check the current versions.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A decision tree. Question: did the brand give anything of value, such as money, a free product, a discount, a trip, or a job or family link? If no, and the creator bought it and shares an honest view, no ad label is needed. If yes, there is a material connection and the post is an ad that must be labelled. Then three checks: label it upfront with a word such as ad plus the platform tool; make sure every claim is true and the brand has proof; and for health or money tips, use only a qualified creator.">
            <defs><marker id="inf3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="120" y="14" width="520" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="37" font-weight="700">Did the brand give anything of value?</text>
              <text x="380" y="57" font-size="11" fill="#9b99b8">money, free product, discount, trip, job or family link</text>
              <rect x="40" y="118" width="280" height="56" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="180" y="141">Creator bought it, honest view</text>
              <text x="180" y="161" font-size="11" fill="#9b99b8">not an ad: no label needed</text>
              <rect x="440" y="118" width="280" height="56" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="580" y="141" font-weight="700">Material connection</text>
              <text x="580" y="161" font-size="11" fill="#9b99b8">it is an ad: it must be labelled</text>
              <text x="224" y="90" font-size="12" fill="#9b99b8">No</text>
              <text x="536" y="90" font-size="12" fill="#f9a8d4">Yes</text>
              <rect x="30" y="232" width="220" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="140" y="257">Label it upfront</text>
              <text x="140" y="277" font-size="11" fill="#9b99b8">#ad plus the platform tool</text>
              <rect x="270" y="232" width="220" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="257">Is every claim true?</text>
              <text x="380" y="277" font-size="11" fill="#9b99b8">the brand must have proof</text>
              <rect x="510" y="232" width="220" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="620" y="257">Health or money tips?</text>
              <text x="620" y="277" font-size="11" fill="#9b99b8">qualified creator only</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inf3a)">
                <line x1="300" y1="69" x2="200" y2="114"/>
                <line x1="460" y1="69" x2="560" y2="114"/>
                <line x1="530" y1="175" x2="160" y2="228"/>
                <line x1="580" y1="175" x2="400" y2="228"/>
                <line x1="620" y1="175" x2="620" y2="228"/>
              </g>
            </g>
          </svg>
          <figcaption>Any material connection makes a post an ad. Then label it, check the claims, and check the creator's qualifications for health or money advice.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who sets the rules in India</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What it is</th><th>What it covers</th></tr></thead>
            <tbody>
              <tr><td>ASCI Code and ASCI Guidelines for Influencer Advertising in Digital Media</td><td>Rules from India's advertising self-regulation body</td><td>How to disclose ads, where labels go, virtual influencers, and health and finance creators</td></tr>
              <tr><td>CCPA Guidelines for Prevention of Misleading Advertisements and Endorsements for Misleading Advertisements, 2022</td><td>Government guidelines under the Consumer Protection Act, 2019</td><td>Misleading ads, and endorsers' duties such as disclosure and due diligence</td></tr>
              <tr><td>"Endorsement Know-hows!" (January 2023)</td><td>A guide from the Department of Consumer Affairs for celebrities and influencers</td><td>How to disclose on social media, and using the product before endorsing it</td></tr>
              <tr><td>Platform tools</td><td>Instagram's "Paid partnership" label and YouTube's "includes paid promotion" setting</td><td>A standard label shown by the app. Use it together with your own label.</td></tr>
            </tbody>
          </table>
          <p>A <strong>material connection</strong> is any link between the brand and the creator that could change how people see the post. It includes money, free products (even ones sent without asking), discounts, trips, hotel stays, awards, and family or job links. If there is a material connection, the post is an ad.</p>
        </div>
        <div class="lc-card">
          <h3>How to label a post</h3>
          <p>ASCI's guidelines allow labels such as <strong>Advertisement, Ad, Sponsored, Collaboration, Partnership, Employee, Free gift</strong> and <strong>Affiliate</strong>. The platform tags "Paid Partnership" (Instagram) and "Includes Paid Promotion" (YouTube) are also on the list. The government know-hows allow words such as "advertisement", "ad", "sponsored", "paid promotion" and "paid". Many brands use <code>#ad</code> because it is short and clear under both.</p>
          <ul class="lc-list">
            <li><strong>Upfront and hard to miss.</strong> Put the label at the start of the caption. Not only in the bio, not at the end, and not hidden after "more".</li>
            <li><strong>Not buried.</strong> Do not hide it inside a long group of hashtags or links.</li>
            <li><strong>On the picture or video</strong> when the post has no caption, such as a story. For short videos, ASCI sets a minimum time on screen. A video of 15 seconds or less needs the label for at least 3 seconds. A video under 2 minutes needs it for one third of its length. A longer video needs it for the whole part about the brand.</li>
            <li><strong>Live streams:</strong> ASCI asks you to announce it at the start and the end, and to add it to the caption if the video stays up. The government know-hows ask for the label to show throughout the stream.</li>
            <li><strong>Same language</strong> as the post, or English, so the audience understands it.</li>
            <li><strong>Use the platform tool too.</strong> Turn on the paid partnership label or the paid promotion setting, and add your own label.</li>
            <li><strong>Virtual influencers</strong> (computer-made characters) must also say clearly that they are not real people.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Made-up caption</th><th>OK?</th></tr></thead>
            <tbody>
              <tr><td>"Loving my Diwali look! ... #festive #ootd #saree #zariandco #ad" (label at the end, among hashtags)</td><td>No. The label is buried.</td></tr>
              <tr><td>"#ad Zari &amp; Co sent me this Roshni Edit saree for Diwali. Here is how I styled it..."</td><td>Yes. Clear, first line, honest.</td></tr>
              <tr><td>A story with a link sticker and no label, because "the bio says I work with brands"</td><td>No. The label must be on the story itself.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Brand responsibility, claims, and health and finance</h3>
          <p>ASCI's guidelines make <strong>both the brand and the creator</strong> responsible. The brand must make sure the post follows the rules. It must ask the creator to edit or delete a post that breaks them. So Farah cannot say, "The label was Tanya's job."</p>
          <ul class="lc-list">
            <li><strong>Claims must be true and provable.</strong> If a reel says "pure silk" or "handwoven in Gujarat", Zari &amp; Co must have proof. A "50% off" offer must be a real discount.</li>
            <li><strong>Creators should check claims too.</strong> The rules ask creators to use the product and check that the brand can prove its claims.</li>
            <li><strong>Health and finance creators need qualifications.</strong> ASCI updated its guidelines in 2025. Health or nutrition advice should come from qualified people, such as doctors, dieticians or physiotherapists. Investment advice needs the right registration, such as with SEBI. They must show their qualification clearly. Sweet Crumbs is a made-up bakery in Maharashtra. It should not pay a creator to say "this cake is safe for diabetics".</li>
            <li><strong>Penalties.</strong> Under the Consumer Protection Act, 2019, the CCPA can fine advertisers and endorsers for misleading ads. It can also stop an endorser from endorsing for a period. ASCI can ask for posts to be changed or removed.</li>
          </ul>
          <p>AI can help you check a caption against a checklist. But AI can be wrong about the law. Do not ask it "Is this legal?" and trust the answer. For real decisions, ask a lawyer who knows advertising law.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follows the rules or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up post. Does it follow the disclosure rules?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Follows the rules"></div>
              <div data-sorter-target="bucket" data-bucket="bad" data-label="Breaks the rules"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="The label is first, clear and uses an allowed word. The platform tool adds a second label.">Kavya's reel caption starts with "#ad" and the paid partnership label is turned on.</li>
              <li data-bucket="bad" data-why="A free product is a material connection, even without a fee. The post needs a label such as Free gift or #ad.">Harleen posts a gifted kurta set with no label, because "I was not paid money."</li>
              <li data-bucket="bad" data-why="The label is buried among hashtags at the end. It must be upfront.">Ishita's caption ends with 25 hashtags. "#sponsored" is number 19.</li>
              <li data-bucket="ok" data-why="There is no material connection. She bought it herself, so it is not an ad.">Pooja bought a saree with her own money, with no link to the brand, and posts an honest review.</li>
              <li data-bucket="bad" data-why="A label only in the bio is easy to miss. Each ad needs its own label.">A creator's bio says "I work with brands", but her paid stories carry no label.</li>
              <li data-bucket="bad" data-why="Health claims need proof and a qualified creator. A food creator cannot promise a medical benefit.">A food creator says a paid-for cake "controls blood sugar".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a draft creator caption and ask AI to check it against a disclosure and claims checklist. Treat the answer as a first check, not legal advice.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful compliance reviewer for influencer posts in India. Use simple English. This is a first check, not legal advice.

        Brand: [Zari &amp; Co, an online ethnic wear brand].
        Deal: [the creator was paid and also got a free saree].
        Format: [Instagram reel, 30 seconds, with a caption].
        Draft caption: ["Diwali ready! This pure silk saree is the softest ever and 70% off only today 😍 #diwali #saree #ootd #zariandco #ad"]

        Check the draft against this list:
        1. Is there a clear ad label (such as #ad or Paid partnership) at the start, not buried in hashtags?
        2. Should the label also appear on the video? For how long, based on ASCI's guidelines for short videos?
        3. Which claims need proof from the brand? List each one.
        4. Are there health, finance or "best ever" claims that could mislead?
        5. Is the discount claim clear and checkable?

        Then write an improved caption in the same tone. Finally, list what a person must still check before approval.</pre>
            <ul class="ai-try-checks">
              <li>The improved caption puts the ad label in the first line.</li>
              <li>"Pure silk", "softest ever" and "70% off" are flagged as claims that need proof.</li>
              <li>The AI does not say the post is "legal" or "guaranteed safe".</li>
              <li>It tells you to turn on the platform's paid partnership tool too.</li>
              <li>For a 30-second reel, a label on the video should stay for one third of it (10 seconds).</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> If the brand gave anything of value, the post is an ad. Label it upfront, back every claim with proof, and use qualified creators for health or money advice. The brand shares the blame when a creator gets it wrong.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Setting Goals and a Budget</h1>
        </div>
        <p class="lc-lead">A campaign without a clear goal cannot be measured. A campaign without a budget plan runs out of money early. In this lesson you will choose between awareness and sales goals, and pick KPIs (key performance indicators: the numbers that show success). You will split a budget and write a one-page campaign plan. You will follow Farah as she plans the ₹6,00,000 Diwali campaign for Zari &amp; Co. All numbers are made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Top: three goals with their KPIs. Awareness uses reach, views and cost per 1,000 reach. Consideration uses engagement rate, saves and link clicks. Sales uses orders, cost per acquisition and ROAS. Bottom: the made-up Zari and Co Diwali budget of 6 lakh rupees as a bar. Creator fees 4,20,000 rupees (70 percent), gifted outfits 36,000 (6 percent), paid ads 90,000 (15 percent), tools 18,000 (3 percent) and contingency 36,000 (6 percent). Plan: 300 orders, cost per acquisition 2,000 rupees, ROAS 1.4. Diwali is Sunday 8 November 2026.">
            <defs><marker id="inf4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="40" y="16" width="200" height="84" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="140" y="42" font-weight="700">Awareness</text>
              <text x="140" y="64" font-size="11" fill="#9b99b8">reach, views</text>
              <text x="140" y="82" font-size="11" fill="#9b99b8">cost per 1,000 reach</text>
              <rect x="280" y="16" width="200" height="84" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="42" font-weight="700">Consideration</text>
              <text x="380" y="64" font-size="11" fill="#9b99b8">engagement rate, saves</text>
              <text x="380" y="82" font-size="11" fill="#9b99b8">link clicks</text>
              <rect x="520" y="16" width="200" height="84" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="620" y="42" font-weight="700">Sales</text>
              <text x="620" y="64" font-size="11" fill="#9b99b8">orders, CPA</text>
              <text x="620" y="82" font-size="11" fill="#9b99b8">ROAS</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inf4a)">
                <line x1="242" y1="58" x2="276" y2="58"/>
                <line x1="482" y1="58" x2="516" y2="58"/>
              </g>
              <text x="380" y="140" font-weight="700" fill="#c4b5fd">Zari &amp; Co Diwali budget: ₹6,00,000 (made up)</text>
              <rect x="40" y="154" width="476" height="38" fill="#8b5cf6"/>
              <rect x="516" y="154" width="41" height="38" fill="#ec4899"/>
              <rect x="557" y="154" width="102" height="38" fill="#3b82f6"/>
              <rect x="659" y="154" width="20" height="38" fill="#f59e0b"/>
              <rect x="679" y="154" width="41" height="38" fill="#10b981"/>
              <text x="278" y="178" font-weight="700" fill="#ffffff">Creator fees 70%</text>
              <text x="608" y="178" font-weight="700" fill="#ffffff">Ads 15%</text>
              <g text-anchor="start" font-size="12">
                <rect x="40" y="212" width="14" height="14" fill="#8b5cf6"/><text x="62" y="224">Creator fees ₹4,20,000</text>
                <rect x="290" y="212" width="14" height="14" fill="#ec4899"/><text x="312" y="224">Gifted outfits ₹36,000</text>
                <rect x="540" y="212" width="14" height="14" fill="#3b82f6"/><text x="562" y="224">Paid ads ₹90,000</text>
                <rect x="40" y="240" width="14" height="14" fill="#f59e0b"/><text x="62" y="252">Tools ₹18,000</text>
                <rect x="290" y="240" width="14" height="14" fill="#10b981"/><text x="312" y="252">Contingency ₹36,000</text>
              </g>
              <text x="380" y="294" font-size="12" fill="#9b99b8">Plan: 300 orders · CPA ₹2,000 · ROAS 1.4 · Diwali: Sun 8 Nov 2026</text>
            </g>
          </svg>
          <figcaption>Pick the goal first, then the KPIs that prove it. Split the budget so creator fees, ads and a safety margin are all covered.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Awareness or sales? Choose one main goal</h3>
          <p>You can have more than one goal, but one must lead. The main goal decides which creators you pick and what you measure.</p>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>KPIs</th><th>What the KPI means</th></tr></thead>
            <tbody>
              <tr><td>Awareness</td><td>Reach, impressions, cost per 1,000 reach</td><td><strong>Impressions</strong> are the total number of times a post was shown, including repeat views. Reach counts each person once.</td></tr>
              <tr><td>Consideration</td><td>Engagement rate, saves, link clicks</td><td><strong>Engagement rate</strong> is engagements divided by reach (or by followers), times 100.</td></tr>
              <tr><td>Sales</td><td>Orders, CPA, ROAS</td><td><strong>CPA</strong> (cost per acquisition) is spend divided by orders. <strong>ROAS</strong> (return on ad spend) is revenue divided by spend.</td></tr>
            </tbody>
          </table>
          <p>Zari &amp; Co sells online, and Diwali is its biggest season. So Farah picks <strong>sales</strong> as the main goal. Awareness and new customers are second goals.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: turn the goal into numbers</h3>
          <p>A target should come from simple planning maths, not a wish. Farah uses her made-up planning assumptions. Next year she will use real results from this campaign instead.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Calculation</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Planned creator reach</td><td>Sum of each post's usual reach</td><td>4,31,000</td></tr>
              <tr><td>Clicks from creator posts</td><td>4,31,000 × 1.2%</td><td>5,172</td></tr>
              <tr><td>Ad impressions</td><td>₹90,000 ÷ ₹150 CPM × 1,000</td><td>6,00,000</td></tr>
              <tr><td>Clicks from ads</td><td>6,00,000 × 0.8% CTR</td><td>4,800</td></tr>
              <tr><td>Total clicks</td><td>5,172 + 4,800</td><td>9,972 (about 10,000)</td></tr>
              <tr><td>Orders</td><td>9,972 × 3% conversion rate</td><td>about 300</td></tr>
              <tr><td>Target CPA</td><td>₹6,00,000 ÷ 300</td><td>₹2,000</td></tr>
              <tr><td>Planned revenue</td><td>300 × ₹2,800 average order value</td><td>₹8,40,000</td></tr>
              <tr><td>Planned ROAS</td><td>₹8,40,000 ÷ ₹6,00,000</td><td>1.4</td></tr>
            </tbody>
          </table>
          <p>CPM is the cost per 1,000 impressions. CTR (click-through rate) is clicks divided by impressions. Conversion rate is orders divided by clicks. The 4,31,000 reach is not unique people, because some people follow more than one creator.</p>
          <p><strong>Be honest about the result.</strong> Zari &amp; Co keeps about 50% of each sale as gross margin (made up). So it needs a ROAS of 2.0 (1 ÷ 0.5) just to cover the spend from first orders. A plan of 1.4 means the first orders will not pay back the campaign. Farah still goes ahead, because she wants new customers who will buy again. The founder agrees to this before any money is spent.</p>
          <p>You can put this in a spreadsheet. If B2 is spend and B3 is orders, CPA is <code>=B2/B3</code>. If B4 is revenue, ROAS is <code>=B4/B2</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Split the budget</h3>
          <table class="lc-table">
            <thead><tr><th>Budget line</th><th>₹</th><th>Share</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Creator fees (including rights to use some reels in ads)</td><td>4,20,000</td><td>70%</td><td>The main cost: 7 creators plus a group of 10 nano creators</td></tr>
              <tr><td>Gifted outfits (20 × ₹1,800 cost)</td><td>36,000</td><td>6%</td><td>Every creator gets an outfit, plus spares for reshoots</td></tr>
              <tr><td>Paid partnership ads</td><td>90,000</td><td>15%</td><td>Boost the best creator posts to more people</td></tr>
              <tr><td>Tools and tracking</td><td>18,000</td><td>3%</td><td>An influencer tool for one month and link tracking</td></tr>
              <tr><td>Contingency</td><td>36,000</td><td>6%</td><td>Reshoots, late changes and surprises</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>6,00,000</strong></td><td><strong>100%</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>Remember costs that are easy to forget: shipping gifts, GST on invoices, TDS paperwork, agency fees and your team's time. Ask your accountant how tax applies to your deals.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a budget for my influencer campaign.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>My total budget is ₹6,00,000 for a Diwali influencer campaign.
        Main goal: 300 orders. Split the budget into creator fees, gifted
        product, paid ads, tools and contingency. Show ₹ and % for each line.
        Check that the lines add up to ₹6,00,000. Explain each choice in
        one sentence. Use only the numbers I give you.</code></pre>
          <p>Always add up the AI's table yourself. AI tools sometimes make simple addition mistakes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the plan in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Farah's planning steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Choose one main goal: Diwali sales.</li>
              <li data-order="2">Pick KPIs that prove the goal: orders, CPA and ROAS.</li>
              <li data-order="3">Set targets with planning maths: about 300 orders.</li>
              <li data-order="4">Split the ₹6,00,000 budget, including a contingency.</li>
              <li data-order="5">Work back from Diwali (Sun 8 Nov 2026) to set the posting dates.</li>
              <li data-order="6">Write a one-page plan and get the founder's sign-off.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft goals, KPIs, a budget split and a timeline for your campaign. Then check every number yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an influencer campaign planner. Use simple English.

        Brand: [Zari &amp; Co, an online ethnic wear brand in Gujarat].
        Campaign: [Diwali 2026. Diwali is on Sunday 8 November 2026].
        Total budget: [₹6,00,000].
        Average order value: [₹2,800]. Gross margin: [50%].
        Planning assumptions: [creator posts reach 4,31,000 people in total; 1.2% of them click; ads cost ₹150 per 1,000 impressions with a 0.8% click rate; 3% of clicks become orders].

        Please make a one-page plan with:
        1. One main goal and two supporting goals.
        2. KPIs for each goal, with a one-line meaning.
        3. The planning maths step by step: clicks, orders, CPA, revenue and ROAS. Show each calculation.
        4. The break-even ROAS (1 ÷ gross margin), and whether my plan reaches it.
        5. A budget split table (₹ and %) that adds up exactly to my total.
        6. A timeline that works back from the festival date.

        Use only my numbers. Say clearly which numbers are assumptions.</pre>
            <ul class="ai-try-checks">
              <li>The budget lines add up exactly to your total.</li>
              <li>CPA = spend ÷ orders and ROAS = revenue ÷ spend are calculated correctly.</li>
              <li>The break-even ROAS is 1 ÷ gross margin (2.0 at 50%).</li>
              <li>The timeline leaves time for delivery before the festival.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Pick one main goal, then build the targets from simple maths. Split the budget with a contingency, and compare the plan with your break-even ROAS. Say honestly what the campaign can and cannot pay back.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Finding the Right Creators</h1>
        </div>
        <p class="lc-lead">The right creator is not the one with the most followers. It is the one whose followers are your customers, whose style suits your product, and whose values match yours. In this lesson you will learn the three kinds of fit and ways to search for creators. You will also score a longlist in a spreadsheet. Farah has a longlist of 10 made-up creators. You will help her build a shortlist for Zari &amp; Co's Diwali campaign.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A funnel of four steps from left to right. Search: hashtags, location tags, people who tag you and creator tools. Longlist: 10 creators. Fit check: 9 go on. Vetting: the next step. Below are the three fit questions. Audience fit: who follows them? Content fit: style, language and quality. Values fit: honest and brand-safe?">
            <defs><marker id="inf5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="160" height="150" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="100" y="62" font-weight="700">Search</text>
              <text x="100" y="92" font-size="11" fill="#9b99b8">hashtags, location</text>
              <text x="100" y="112" font-size="11" fill="#9b99b8">people who tag you</text>
              <text x="100" y="132" font-size="11" fill="#9b99b8">creator tools</text>
              <text x="100" y="152" font-size="11" fill="#9b99b8">customer ideas</text>
              <rect x="215" y="45" width="160" height="120" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="295" y="95" font-weight="700">Longlist</text>
              <text x="295" y="117" font-size="12" fill="#9b99b8">10 creators</text>
              <rect x="410" y="60" width="160" height="90" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="490" y="100" font-weight="700">Fit check</text>
              <text x="490" y="122" font-size="12" fill="#9b99b8">9 go on</text>
              <rect x="605" y="75" width="140" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="675" y="101" font-weight="700">Vetting</text>
              <text x="675" y="120" font-size="11" fill="#9b99b8">next step</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inf5a)">
                <line x1="182" y1="105" x2="211" y2="105"/>
                <line x1="377" y1="105" x2="406" y2="105"/>
                <line x1="572" y1="105" x2="601" y2="105"/>
              </g>
              <rect x="20" y="206" width="230" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="135" y="231" font-weight="700">Audience fit</text>
              <text x="135" y="251" font-size="11" fill="#9b99b8">who follows them? where?</text>
              <rect x="265" y="206" width="230" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="231" font-weight="700">Content fit</text>
              <text x="380" y="251" font-size="11" fill="#9b99b8">style, language, quality</text>
              <rect x="510" y="206" width="230" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="625" y="231" font-weight="700">Values fit</text>
              <text x="625" y="251" font-size="11" fill="#9b99b8">honest and brand-safe?</text>
              <text x="380" y="288" font-size="11" fill="#9b99b8">Every creator on the longlist is checked on all three kinds of fit.</text>
            </g>
          </svg>
          <figcaption>Search widely, then narrow down on fit. Creators who pass the fit check go on to vetting for fake followers and other risks.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of fit</h3>
          <table class="lc-table">
            <thead><tr><th>Fit</th><th>The question</th><th>Where to find the answer</th></tr></thead>
            <tbody>
              <tr><td><strong>Audience fit</strong></td><td>Are their followers your buyers? Check country, city, age and gender.</td><td>The creator's own insights screenshots (the private data the app shows the creator)</td></tr>
              <tr><td><strong>Content fit</strong></td><td>Does their style, language and quality suit your product?</td><td>Their last 20–30 posts, and their past brand posts</td></tr>
              <tr><td><strong>Values fit</strong></td><td>Are they honest and safe for your brand? Do they label ads?</td><td>Past posts, comments, news and how they handle criticism</td></tr>
            </tbody>
          </table>
          <p>Two made-up examples show why all three matter:</p>
          <ul class="lc-list">
            <li><strong>Kabir</strong> runs Byte-Size Kabir, a popular tech channel. His content is good and his values are fine. But most of his audience is young men who want phone reviews. He is a poor audience fit for sarees.</li>
            <li><strong>Riya</strong> runs Tiffin Tales, a cooking page. Her audience is mostly women in Indian cities, which fits. But she never posts fashion. Her content fit is weak. Farah may test one festive cooking reel with Riya in a Zari outfit.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Where to search, and how AI helps</h3>
          <ul class="lc-list">
            <li><strong>Hashtags and keywords</strong>, in English and regional languages: <code>#sareedraping</code>, <code>#gujaratfashion</code>, "Diwali outfit ideas", "Navratri look".</li>
            <li><strong>Location tags</strong> for your key regions, such as Gujarat, Rajasthan or Tamil Nadu.</li>
            <li><strong>People who already tag you.</strong> Happy customers with a following are often the best fit.</li>
            <li><strong>Ask your customers</strong> which creators they follow, with a short survey or story poll.</li>
            <li><strong>Creator tools and marketplaces</strong>, such as influencer platforms or a platform's own creator marketplace where available. Check each tool's current help pages.</li>
          </ul>
          <p>AI is good at ideas and sorting. It can suggest search terms in Gujarati, Hindi or Tamil, and sort a longlist you give it. It is bad at facts about real creators. It may invent handles. Build the longlist yourself from real profiles.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Find me the best fashion influencers in India.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I sell ethnic wear online (₹1,800 to ₹6,000) to women aged 22 to 40.
        Give me 15 search terms and hashtags to find micro creators
        (10,000 to 1,00,000 followers) who post saree, lehenga and festive
        outfit content. Include terms in Hindi, Gujarati and Tamil.
        Do not name any creators. I will search myself.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Worked example: Farah's longlist</h3>
          <p>Farah found 10 creators (all made up). She asked each one for insights screenshots. Average reach is per reel over the last 90 days.</p>
          <table class="lc-table">
            <thead><tr><th>Creator</th><th>Niche, city</th><th>Followers</th><th>Avg reach</th><th>Audience in India</th><th>Women</th><th>Rate per reel</th></tr></thead>
            <tbody>
              <tr><td>Tanya @tanyainrajasthan</td><td>Fashion, Rajasthan</td><td>48,000</td><td>21,000</td><td>94%</td><td>78%</td><td>₹18,000</td></tr>
              <tr><td>Riya @tiffintales</td><td>Cooking, Maharashtra</td><td>86,000</td><td>30,000</td><td>91%</td><td>69%</td><td>₹22,000</td></tr>
              <tr><td>Meera @meera.drapes</td><td>Saree draping, Gujarat</td><td>32,000</td><td>15,500</td><td>96%</td><td>85%</td><td>₹12,000</td></tr>
              <tr><td>Aanya &amp; Dev @aanyaanddev</td><td>Couple, festivals, Uttar Pradesh</td><td>2,40,000</td><td>64,000</td><td>89%</td><td>64%</td><td>₹75,000</td></tr>
              <tr><td>Ishita @ishitawears</td><td>Fashion, West Bengal</td><td>1,65,000</td><td>52,000</td><td>92%</td><td>81%</td><td>₹55,000</td></tr>
              <tr><td>Pooja @poojaplusstyle</td><td>Size-inclusive fashion, Karnataka</td><td>72,000</td><td>34,000</td><td>93%</td><td>88%</td><td>₹25,000</td></tr>
              <tr><td>Naina @glamwithnaina</td><td>Fashion, Uttar Pradesh</td><td>3,10,000</td><td>9,000</td><td>38%</td><td>61%</td><td>₹60,000</td></tr>
              <tr><td>Harleen @harleenhomestyle</td><td>Festive home and outfits, Punjab</td><td>8,500</td><td>4,800</td><td>97%</td><td>83%</td><td>₹4,000</td></tr>
              <tr><td>Sana @sanastyled</td><td>Fashion, Telangana</td><td>95,000</td><td>18,000</td><td>90%</td><td>76%</td><td>₹30,000</td></tr>
              <tr><td>Kavya @kavyainsilk</td><td>Silk sarees, Tamil Nadu</td><td>58,000</td><td>26,000</td><td>95%</td><td>80%</td><td>₹16,000</td></tr>
            </tbody>
          </table>
          <p>Naina has the most followers, but only 38% of her audience is in India. Zari &amp; Co ships only in India, so she fails audience fit. The other 9 go on to vetting. Vetting may still remove some of them.</p>
          <p>A useful value check is <strong>cost per 1,000 reach</strong>: rate ÷ average reach × 1,000. Kavya costs about ₹615 per 1,000 people reached (₹16,000 ÷ 26,000 × 1,000). Aanya &amp; Dev cost about ₹1,172. Naina would cost about ₹6,667.</p>
          <p>To score fit, rate each creator from 1 to 5 on each kind of fit. Then weight the scores. In a sheet with audience in B2, content in C2 and values in D2:</p>
          <pre><code>=ROUND(B2*0.4 + C2*0.35 + D2*0.25, 2)</code></pre>
          <p>Tanya scores 5, 5 and 4, which gives 4.75. Riya scores 3, 2 and 5, which gives 3.15. Naina scores 1, 4 and 3, which gives 2.55. The weights are Farah's choice. Write them down, so everyone scores the same way.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: shortlist, test or not a fit?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Zari &amp; Co sells ethnic wear to women in India. Sort each made-up creator.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="short" data-label="Shortlist"></div>
              <div data-sorter-target="bucket" data-bucket="test" data-label="Test small"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not a fit"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="short" data-why="A strong fit on audience, content and location. The brand is also based in Gujarat.">Meera: saree draping in Gujarati and Hindi, Gujarat, 96% India, 85% women.</li>
              <li data-bucket="short" data-why="Silk sarees in Tamil and English reach a new region with a good audience match and low cost per reach.">Kavya: silk sarees in Tamil and English, Tamil Nadu, 95% India.</li>
              <li data-bucket="test" data-why="The audience fits, but she does not post fashion. One small test reel is a safer step.">Riya: cooking, mostly women in Indian cities, never posts outfits.</li>
              <li data-bucket="no" data-why="Good content, but his audience is mostly young men who want phone reviews.">Kabir: tech reviews, mostly men aged 18 to 24.</li>
              <li data-bucket="no" data-why="Most of her audience is outside India, where Zari &amp; Co does not ship.">Naina: 3,10,000 followers, but only 38% of her audience is in India.</li>
              <li data-bucket="short" data-why="Her audience and content match, and she brings size-inclusive styling that many buyers want.">Pooja: size-inclusive fashion, Karnataka, 88% women.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a small longlist and ask AI to score fit with a clear rubric. The AI should flag missing data, not guess it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an influencer research assistant. Use simple English.

        My brand: [Zari &amp; Co, online ethnic wear, ₹1,800 to ₹6,000, ships only in India].
        My buyers: [women aged 22 to 40 in Indian cities].
        Campaign: [Diwali sales].

        My longlist (all numbers are from the creators' own insights):
        [Tanya | fashion, Rajasthan | 48,000 followers | avg reach 21,000 | 94% India | 78% women | ₹18,000 per reel
        Riya | cooking, Maharashtra | 86,000 | 30,000 | 91% India | 69% women | ₹22,000
        Naina | fashion, Uttar Pradesh | 3,10,000 | 9,000 | 38% India | 61% women | ₹60,000
        Kavya | silk sarees, Tamil Nadu | 58,000 | 26,000 | 95% India | 80% women | ₹16,000]

        Please:
        1. Score each creator 1 to 5 on audience fit and content fit, with one reason each. Leave values fit as "needs checking".
        2. Work out cost per 1,000 reach (rate ÷ reach × 1,000) for each.
        3. Put them in a table, sorted from best to worst fit.
        4. List any data that is missing before I can decide.

        Use only my data. Do not add follower counts or facts from memory.</pre>
            <ul class="ai-try-checks">
              <li>Cost per 1,000 reach is correct (Tanya about ₹857, Kavya about ₹615).</li>
              <li>Naina's 38% India audience is flagged as a problem.</li>
              <li>Values fit is left for you to check, not guessed.</li>
              <li>No new facts or numbers that you did not give.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Search widely, but choose on fit: audience, content and values. Score every creator with the same written rubric, and use real insights data. A big follower count with the wrong audience is money spent on the wrong people.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Vetting Creators and Spotting Fake Followers</h1>
        </div>
        <p class="lc-lead">Vetting means checking a creator before you pay them. You check that their followers are real, their audience is where you sell, and their past posts are honest. Some accounts buy fake followers or fake likes. If you pay them, your money reaches nobody. In this lesson you will learn the signals to check, how to get real data, and how AI can help you spot patterns. You will vet two made-up creators from Farah's longlist for Zari &amp; Co: Naina and Sana.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 360" role="img" aria-label="A vetting scorecard comparing three made-up creators. Meera: reach is 48.4 percent of followers, 96 percent of her audience is in India, engagement rate by reach is 11 percent, follower growth is steady, 86 percent of sampled comments are real, and past ads are labelled. Result: pass. Naina: reach is only 2.9 percent of followers, 38 percent of her audience is in India, engagement rate by reach is 12.2 percent, she gained 92,000 followers in 4 days, only 10 percent of comments are real. Result: remove. Sana: reach is 18.9 percent of followers, 90 percent in India, engagement rate by reach is 42.2 percent, growth is steady, 72 percent of comments come from one group of about 40 accounts, and three past ads had no label. Result: remove.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="22" font-size="14" font-weight="700" fill="#c4b5fd" text-anchor="middle">Farah's vetting scorecard (made-up data)</text>
              <rect x="20" y="34" width="230" height="34" rx="6" fill="#27274e" stroke="#4b4a78"/>
              <text x="32" y="56" font-weight="700">Signal</text>
              <rect x="260" y="34" width="160" height="34" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="340" y="56" font-weight="700" text-anchor="middle">Meera</text>
              <rect x="430" y="34" width="150" height="34" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="505" y="56" font-weight="700" text-anchor="middle">Naina</text>
              <rect x="590" y="34" width="150" height="34" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="665" y="56" font-weight="700" text-anchor="middle">Sana</text>
              <g fill="#1f1f44" stroke="#4b4a78">
                <rect x="20" y="76" width="230" height="32" rx="6"/><rect x="20" y="114" width="230" height="32" rx="6"/>
                <rect x="20" y="152" width="230" height="32" rx="6"/><rect x="20" y="190" width="230" height="32" rx="6"/>
                <rect x="20" y="228" width="230" height="32" rx="6"/><rect x="20" y="266" width="230" height="32" rx="6"/>
              </g>
              <text x="32" y="97">Reach as % of followers</text>
              <text x="32" y="135">Audience in India</text>
              <text x="32" y="173">Engagement rate by reach</text>
              <text x="32" y="211">Follower growth</text>
              <text x="32" y="249">Real comments (sample of 50)</text>
              <text x="32" y="287">Past ads labelled</text>
              <g fill="#1f1f44" stroke="#10b981">
                <rect x="260" y="76" width="160" height="32" rx="6"/><rect x="260" y="114" width="160" height="32" rx="6"/>
                <rect x="260" y="152" width="160" height="32" rx="6"/><rect x="260" y="190" width="160" height="32" rx="6"/>
                <rect x="260" y="228" width="160" height="32" rx="6"/><rect x="260" y="266" width="160" height="32" rx="6"/>
                <rect x="430" y="152" width="150" height="32" rx="6"/><rect x="430" y="266" width="150" height="32" rx="6"/>
                <rect x="590" y="114" width="150" height="32" rx="6"/><rect x="590" y="190" width="150" height="32" rx="6"/>
              </g>
              <g fill="#1f1f44" stroke="#ec4899">
                <rect x="430" y="76" width="150" height="32" rx="6"/><rect x="430" y="114" width="150" height="32" rx="6"/>
                <rect x="430" y="190" width="150" height="32" rx="6"/><rect x="430" y="228" width="150" height="32" rx="6"/>
                <rect x="590" y="76" width="150" height="32" rx="6"/><rect x="590" y="152" width="150" height="32" rx="6"/>
                <rect x="590" y="228" width="150" height="32" rx="6"/><rect x="590" y="266" width="150" height="32" rx="6"/>
              </g>
              <g text-anchor="middle">
                <text x="340" y="97">48.4%</text><text x="505" y="97" fill="#f9a8d4">2.9%</text><text x="665" y="97" fill="#f9a8d4">18.9%</text>
                <text x="340" y="135">96%</text><text x="505" y="135" fill="#f9a8d4">38%</text><text x="665" y="135">90%</text>
                <text x="340" y="173">11.0%</text><text x="505" y="173">12.2%</text><text x="665" y="173" fill="#f9a8d4">42.2%</text>
                <text x="340" y="211">steady</text><text x="505" y="211" fill="#f9a8d4">+92K in 4 days</text><text x="665" y="211">steady</text>
                <text x="340" y="249">86%</text><text x="505" y="249" fill="#f9a8d4">10%</text><text x="665" y="249" fill="#f9a8d4">72% from 1 group</text>
                <text x="340" y="287">yes</text><text x="505" y="287">yes</text><text x="665" y="287" fill="#f9a8d4">3 ads unlabelled</text>
                <rect x="260" y="308" width="160" height="34" rx="8" fill="#10b981"/>
                <text x="340" y="330" font-size="13" font-weight="700" fill="#0b1020">Pass</text>
                <rect x="430" y="308" width="150" height="34" rx="8" fill="#ec4899"/>
                <text x="505" y="330" font-size="13" font-weight="700" fill="#0b1020">Remove</text>
                <rect x="590" y="308" width="150" height="34" rx="8" fill="#ec4899"/>
                <text x="665" y="330" font-size="13" font-weight="700" fill="#0b1020">Remove</text>
              </g>
              <text x="32" y="330" fill="#9b99b8">Pink = red flag</text>
            </g>
          </svg>
          <figcaption>No single number proves fake followers. A pattern of red flags does. Naina shows a fake-follower pattern. Sana shows fake engagement and hidden ads.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The signals to check</h3>
          <p>Fake followers are accounts that do not belong to real, interested people. They are often bought in bulk. Fake engagement is likes and comments that are bought or swapped. Both make a creator look bigger than they are. Check these signals for every creator:</p>
          <table class="lc-table">
            <thead><tr><th>Signal</th><th>How to work it out</th><th>Normal (Farah's longlist)</th><th>Red flag</th></tr></thead>
            <tbody>
              <tr><td>Reach as % of followers</td><td>Average reach ÷ followers × 100</td><td>About 27% to 57%</td><td>Very low. Many followers never see the posts.</td></tr>
              <tr><td>ER by followers</td><td>Engagements ÷ followers × 100</td><td>About 2% to 7%</td><td>Very low, or much higher than similar creators</td></tr>
              <tr><td>ER by reach</td><td>Engagements ÷ reach × 100</td><td>About 6% to 13%</td><td>Far above peers. It may mean bought or swapped likes.</td></tr>
              <tr><td>Follower growth</td><td>A follower-history chart from a tool, or the creator's insights</td><td>Slow and steady, or a jump after a viral post</td><td>A sudden jump with no viral post, giveaway or press that week</td></tr>
              <tr><td>Audience location</td><td>Top countries and cities in insights</td><td>Mostly where you sell</td><td>Large shares from countries that do not fit the content</td></tr>
              <tr><td>Comment quality</td><td>Read 50 comments across recent posts</td><td>Questions and specific praise</td><td>"Nice 🔥", emoji only, the same accounts every time</td></tr>
              <tr><td>Past ads</td><td>Scroll back through recent brand posts</td><td>Clearly labelled, such as #ad or Paid partnership</td><td>Brand posts with no label</td></tr>
            </tbody>
          </table>
          <p>ER means engagement rate. Engagements are likes, comments, shares and saves. The "normal" ranges above come from Farah's own made-up longlist. They are not industry rules. Build your ranges from creators of a similar size and niche.</p>
          <p>One odd number can have an honest reason. A creator may have gained followers after a reel went viral. Look for a <strong>pattern</strong> of several red flags. Then ask the creator before you decide.</p>
        </div>
        <div class="lc-card">
          <h3>Get real data, then let AI find the patterns</h3>
          <p>A creator's <strong>insights</strong> are the private statistics the app shows them: reach, audience countries, cities, age and gender. You cannot see these yourself. Ask the creator for them.</p>
          <ul class="lc-list">
            <li>Ask for insights for the <strong>last 90 days</strong>, including top countries, top cities and age groups.</li>
            <li>Ask for a short <strong>screen recording</strong> that scrolls through the insights. It is harder to edit than a screenshot.</li>
            <li>Read comments yourself on the <strong>live profile</strong>. Check the follower history in a tool that tracks public follower counts.</li>
            <li>Influencer tools often give a "fake follower" or "audience quality" score. These are estimates. Each tool uses its own method, so check its current help pages.</li>
          </ul>
          <p>A general AI assistant cannot see a creator's account. It is useful once you give it real numbers. It can work out rates, compare creators and group comments.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Does @glamwithnaina have fake followers?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below is vetting data for 3 creators, from their own insights
        and my own checks. For each creator, work out reach as a % of
        followers, ER by followers and ER by reach. Compare them with each
        other. List every red flag and say which number shows it. Suggest
        one honest reason for each flag, and one question to ask the creator.
        Do not say anyone "has fake followers". Say "needs checking".
        [paste the table here, with no phone numbers or personal details]</code></pre>
          <p>The AI does the maths and lists patterns. You still read the comments, talk to the creator and make the decision.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Naina and Sana</h3>
          <p>All names and numbers here are made up. Naina had already failed the audience fit check. Farah still vets her, because the founder liked her big follower count. Farah wants clear reasons on paper.</p>
          <p><strong>Naina (@glamwithnaina), 3,10,000 followers: a fake-follower pattern</strong></p>
          <ul class="lc-list">
            <li>Her average reach is 9,000. That is only 2.9% of her followers (9,000 ÷ 3,10,000 × 100). Most followers never see her posts.</li>
            <li>Her ER by followers is 0.35% (1,100 ÷ 3,10,000 × 100). Similar creators on the longlist show about 2% to 7%.</li>
            <li>A follower-history tool shows 2,18,000 followers on 11 August 2026 and 3,10,000 on 15 August. That is 92,000 new followers in 4 days, a 42.2% jump. She had no viral post that week.</li>
            <li>Only 38% of her audience is in India. Large shares come from countries where her Hindi and English content makes little sense.</li>
            <li>Farah reads 50 comments. 38 are generic, such as "Nice 🔥", "Wow" or emoji only. 7 are unrelated spam. Only 5 (10%) are real questions or specific praise. Many commenters have no posts of their own.</li>
          </ul>
          <p><strong>Sana (@sanastyled), 95,000 followers: fake engagement and hidden ads</strong></p>
          <ul class="lc-list">
            <li>Her ER by reach is 42.2% (7,600 ÷ 18,000 × 100). The other creators on the longlist show about 6% to 13%.</li>
            <li>Her reach is 18.9% of followers. That is low next to her very high engagement. Real, excited fans usually bring more reach, not less.</li>
            <li>On every post, most likes and comments arrive in the first 10 minutes. They come from the same group of about 40 accounts. In Farah's sample of 50 comments, 36 (72%) came from this group. This looks like an <strong>engagement pod</strong>: a group that likes and comments on each other's posts to push them up in the feed.</li>
            <li>In September 2026, Sana posted three reels for a rival ethnic wear brand. None had #ad or the paid partnership label. This breaks the disclosure rules and is a values risk for Zari &amp; Co.</li>
          </ul>
          <p><strong>Decision:</strong> Farah removes both. She writes down the numbers behind each reason. She does not accuse anyone in public. She sends a short, polite "not this time" message. The other 8 creators pass, with normal checks.</p>
          <p>Compare Meera. Her reach is 48.4% of followers. 43 of her 50 sampled comments (86%) are real questions or specific praise, such as "Which fabric is this?" That is what healthy engagement looks like.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: vetting Sana step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Farah collects data">Sana sends a screen recording of her insights. Farah notes 95,000 followers, 18,000 average reach and 7,600 average engagements per reel.</li>
              <li data-kind="user" data-label="Farah asks AI">"Here are the numbers for Sana and 7 other creators. Work out ER by reach and reach as a % of followers. Flag anything far from the group."</li>
              <li data-kind="answer" data-label="AI replies">Sana's ER by reach is 42.2%. The others are between 6.5% and 12.7%. Her reach is 18.9% of followers, the lowest except Naina.</li>
              <li data-kind="thought" data-label="Farah thinks">Very high engagement with low reach is unusual. Real fans usually share posts, which brings more reach.</li>
              <li data-kind="check" data-label="Farah checks by hand">She opens Sana's last 5 reels. The same group of about 40 accounts comments within 10 minutes on every one.</li>
              <li data-kind="warn" data-label="Second red flag">She finds three September reels for a rival brand with no ad label and no paid partnership label.</li>
              <li data-kind="result" data-label="Decision">Farah removes Sana from the shortlist. She records the numbers and reasons in her vetting sheet.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste vetting data for a few creators and ask AI to calculate the signals and flag patterns. Then check each flag yourself before you decide.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful influencer vetting analyst. Use simple English.

        My brand: [Zari &amp; Co, online ethnic wear, ships only in India].
        Data from each creator's own insights (average per reel, last 90 days):
        [Tanya | 48,000 followers | reach 21,000 | engagements 2,100 | 94% India | follower growth steady
        Naina | 3,10,000 followers | reach 9,000 | engagements 1,100 | 38% India | +92,000 followers in 4 days, no viral post
        Sana | 95,000 followers | reach 18,000 | engagements 7,600 | 90% India | same 40 accounts comment within 10 minutes
        Kavya | 58,000 followers | reach 26,000 | engagements 2,300 | 95% India | follower growth steady]

        Please:
        1. For each creator, calculate reach as % of followers, ER by followers and ER by reach. Show the working.
        2. Put the results in a table and compare each creator with the others.
        3. List every red flag, the number that shows it, and one possible honest reason.
        4. Give 2 polite questions I can ask each flagged creator.
        5. Say what I must check by hand before I decide.

        Do not say anyone "has fake followers". Use "needs checking". Use only my data.</pre>
            <ul class="ai-try-checks">
              <li>The maths is right: Naina's reach is 2.9% of followers and Sana's ER by reach is 42.2%.</li>
              <li>Flags are linked to numbers, not guesses.</li>
              <li>The wording is fair: "needs checking", not "fake".</li>
              <li>It tells you to read comments and check follower history yourself.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fake followers and fake engagement show up as patterns: low reach, sudden jumps, odd audience countries, generic comments and too-perfect engagement. Get real insights data, let AI do the maths, and make the final call yourself with written reasons.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Writing Creator Briefs</h1>
        </div>
        <p class="lc-lead">A creator brief is a short document that tells a creator what the brand needs. It covers the goal, the key messages, the rules and the dates. A good brief gives clear facts and still leaves room for the creator's own style. A weak brief leads to wrong claims, missed dates and posts that feel like ads nobody wants to watch. In this lesson you will write a one-page brief with AI's help. You will follow Farah as she briefs creators for Zari &amp; Co's "Roshni Edit" Diwali campaign.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A one-page creator brief for the made-up Roshni Edit Diwali campaign, shown as eight boxes. About the brand and campaign. Goal and audience. Three key messages. Must do and never do. Your creative freedom. Disclosure: hashtag ad first plus the paid partnership label. Deliverables and dates: drafts by 12 October, live 16 October to 3 November. Tracking: your promo code and your link.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="14" width="720" height="312" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="42" font-size="15" font-weight="700" fill="#c4b5fd" text-anchor="middle">Roshni Edit creator brief (one page)</text>
              <rect x="40" y="58" width="330" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="56" y="81" font-weight="700">1. Brand and campaign</text>
              <text x="56" y="101" font-size="11" fill="#9b99b8">Zari &amp; Co, Gujarat · Diwali 2026</text>
              <rect x="390" y="58" width="330" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="406" y="81" font-weight="700">2. Goal and audience</text>
              <text x="406" y="101" font-size="11" fill="#9b99b8">sales · women 22 to 40 in India</text>
              <rect x="40" y="122" width="330" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="56" y="145" font-weight="700">3. Three key messages</text>
              <text x="56" y="165" font-size="11" fill="#9b99b8">collection · designed in Gujarat · order by 1 Nov</text>
              <rect x="390" y="122" width="330" height="56" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="406" y="145" font-weight="700">4. Must do and never do</text>
              <text x="406" y="165" font-size="11" fill="#9b99b8">true claims only · no "pure silk" unless listed</text>
              <rect x="40" y="186" width="330" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="56" y="209" font-weight="700">5. Your creative freedom</text>
              <text x="56" y="229" font-size="11" fill="#9b99b8">your words, language, story and setting</text>
              <rect x="390" y="186" width="330" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="406" y="209" font-weight="700">6. Disclosure</text>
              <text x="406" y="229" font-size="11" fill="#9b99b8">#ad first line + paid partnership label</text>
              <rect x="40" y="250" width="330" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="56" y="273" font-weight="700">7. Deliverables and dates</text>
              <text x="56" y="293" font-size="11" fill="#9b99b8">drafts by 12 Oct · live 16 Oct to 3 Nov</text>
              <rect x="390" y="250" width="330" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="406" y="273" font-weight="700">8. Tracking</text>
              <text x="406" y="293" font-size="11" fill="#9b99b8">your promo code + your own link</text>
            </g>
          </svg>
          <figcaption>A good brief fits on one page. It gives the facts, the rules and the dates, and it says clearly where the creator is free to be creative.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in a brief</h3>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>What to write</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td>Brand and campaign</td><td>Who you are, the campaign name, the products</td><td>The creator can explain you in one sentence.</td></tr>
              <tr><td>Goal and audience</td><td>The main goal (for example sales) and who should act</td><td>The creator knows whether to push the code or tell a story.</td></tr>
              <tr><td>Key messages</td><td>Two or three points, in plain words</td><td>More than three points get lost in a 30-second reel.</td></tr>
              <tr><td>Must do and never do</td><td>Facts, claims and brand rules</td><td>It stops false claims and brand safety problems.</td></tr>
              <tr><td>Creative freedom</td><td>What the creator decides</td><td>Their followers trust their voice, not your script.</td></tr>
              <tr><td>Disclosure</td><td>The ad label and the platform tool</td><td>The brand shares responsibility for a missing label.</td></tr>
              <tr><td>Deliverables and dates</td><td>Formats, draft dates, posting windows</td><td>Late posts miss the festival.</td></tr>
              <tr><td>Tracking</td><td>The creator's promo code and link</td><td>You can measure what each creator brought.</td></tr>
            </tbody>
          </table>
          <p>Keep the brief short. A creator may get many briefs in October. A clear page gets read. A ten-page deck often does not.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: part of Farah's brief</h3>
          <p>This is the core of the made-up "Roshni Edit" brief. Farah sends it on Monday 5 October 2026.</p>
          <pre><code>KEY MESSAGES (use your own words)
        1. The Roshni Edit: festive sarees, lehengas and kurta sets
           for Diwali, from ₹1,800.
        2. Designed by Zari &amp; Co in Gujarat.
        3. Order by Sunday 1 November for delivery before Diwali.
           Your code [TANYA10] gives 10% off until 10 November.

        MUST DO
        - Start the caption with #ad and turn on the paid partnership label.
        - Show the outfit clearly in natural light for at least 5 seconds.
        - Use the fabric name exactly as it appears on the product page.
        - Put your own link in the story link sticker.

        NEVER DO
        - Do not say "pure silk" or "handwoven" unless the product page says so.
        - Do not promise delivery dates other than "order by 1 November".
        - Do not compare prices with other brands.
        - Do not use filters that change the colour of the outfit.
        - Do not film lit diyas or candles close to the dupatta.</code></pre>
          <p>Every claim in the key messages is one Zari &amp; Co can prove. The "from ₹1,800" price matches the website. The dates match the delivery plan. If the brief had said "the finest silk in India", the creator would repeat a claim nobody can prove.</p>
          <table class="lc-table">
            <thead><tr><th>Date (2026)</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td>Mon 5 Oct</td><td>Brief sent</td></tr>
              <tr><td>Thu 8 Oct</td><td>Outfits delivered to every creator</td></tr>
              <tr><td>Mon 12 Oct</td><td>First reel drafts due. Farah replies within 48 hours.</td></tr>
              <tr><td>Fri 16 Oct to Thu 22 Oct</td><td>Reel 1 and its 2 stories go live</td></tr>
              <tr><td>Mon 26 Oct to Sun 1 Nov</td><td>Reel 2 and its 2 stories go live, before the last Diwali order date</td></tr>
              <tr><td>Tue 3 Nov</td><td>Last day for any campaign post</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Using AI to draft and adapt briefs</h3>
          <p>AI is good at turning your notes into a clear first draft. It can also adapt one brief for different creators. But it may add claims you cannot prove, or invent dates. Give it the facts and tell it not to add any.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an influencer brief for my Diwali sale.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a one-page creator brief using ONLY the facts below.
        Sections: brand, goal, 3 key messages, must do, never do, creative
        freedom, disclosure, dates, tracking. Short sentences.
        Then write a 3-line note to adapt it for each creator:
        Meera (saree draping, Gujarati and Hindi), Pooja (size-inclusive
        fashion) and Riya (cooking, festive recipe in a Zari outfit).
        Do not add any product claims, prices or dates I did not give.
        [paste your facts: products, prices, proven claims, dates, codes]</code></pre>
          <p>Then read the draft line by line. Check each claim against the product page. Check each date against your delivery plan. Make sure the disclosure section is still there. AI drafts sometimes drop it.</p>
          <p>Creative freedom matters. Meera may drape the saree step by step in Gujarati. Riya may cook a festive recipe while wearing the kurta set. Pooja may show how the lehenga fits a fuller figure. These choices belong to them. The brief sets the facts and the rules, not the script.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: where does it belong in the brief?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up line from Farah's notes.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="must" data-label="Must do"></div>
              <div data-sorter-target="bucket" data-bucket="free" data-label="Creator's choice"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never do"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="must" data-why="Disclosure is not optional. The label must come first, with the platform tool turned on.">Start the caption with #ad and turn on the paid partnership label.</li>
              <li data-bucket="free" data-why="The creator knows how her followers talk. Her own language and words make the post believable.">Speak in Gujarati, Hindi or English, in your own words.</li>
              <li data-bucket="never" data-why="Zari &amp; Co can only claim what the product page shows. Pure silk must be proven.">Call the art silk saree "pure silk" because it sounds better.</li>
              <li data-bucket="must" data-why="The last order date for Diwali delivery is a fact the buyer needs.">Say "order by 1 November for Diwali delivery".</li>
              <li data-bucket="free" data-why="The setting and story are creative choices. The brand only needs the outfit shown clearly.">Film at home, at a family puja or on a rooftop at sunset.</li>
              <li data-bucket="never" data-why="A filter that changes the colour misleads the buyer about what they will receive.">Use a filter that turns the maroon saree bright red.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn your campaign facts into a one-page creator brief. Then check every claim and date against your own records.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced influencer campaign manager. Write in simple English.

        Write a one-page creator brief using ONLY these facts:
        Brand: [Zari &amp; Co, an online ethnic wear brand in Gujarat].
        Campaign: [Roshni Edit, for Diwali 2026. Diwali is Sunday 8 November].
        Products: [festive sarees, lehengas and kurta sets, from ₹1,800].
        Main goal: [sales from the creator's code and link].
        Audience: [women aged 22 to 40 in Indian cities].
        Claims we can prove: [designed in Gujarat; fabric names as on each product page].
        Dates: [drafts due 12 Oct; posts live 16 Oct to 3 Nov; last order date for Diwali delivery 1 Nov].
        Creator: [Tanya, a fashion creator in Rajasthan, Hindi and English]. Code: [TANYA10, 10% off, valid to 10 Nov].
        Deliverables: [2 reels, each with 2 stories that have a link sticker].

        Sections: brand, goal, 3 key messages, must do, never do, your creative freedom, disclosure, deliverables and dates, tracking.
        In disclosure, say: start the caption with #ad, and turn on the platform's paid partnership label.
        Do not add claims, prices or dates that are not above. At the end, list anything I should still confirm.</pre>
            <ul class="ai-try-checks">
              <li>No new claims such as "pure silk", "best quality" or "free delivery".</li>
              <li>All dates and the code match what you gave.</li>
              <li>The disclosure section is there and puts #ad first.</li>
              <li>The creative freedom section gives real choices to the creator.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A brief sets the facts, the rules and the dates. The creator sets the story and the voice. Give AI only proven facts to work with, and check every claim and date before you send the brief.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Contracts, Rates and Usage Rights</h1>
        </div>
        <p class="lc-lead">A written contract protects both the brand and the creator. It says what the creator will post, what the brand will pay and when, and how the brand may reuse the content. In this lesson you will learn the main parts of a creator contract. You will learn how rates are set, what usage rights and whitelisting mean, and how exclusivity works. You will also learn the basics of TDS on fees and gifted products in India. You will follow Farah as she agrees Tanya's made-up deal. This is general education, not legal or tax advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top: six parts of Tanya's made-up contract. Deliverables: 2 reels and 4 stories. Fees: 36,000 rupees plus 9,000 rupees for usage rights. Usage rights: partnership ads for 60 days. Exclusivity: no other ethnic wear brand from 16 October to 10 November. Approval and disclosure: hashtag ad first and a draft review with at most 2 feedback rounds. Tax and invoices: TDS and GST, ask a chartered accountant. Bottom: the payment timeline. Sign and pay 50 percent, posts go live, insights shared, then pay the last 50 percent within 15 days.">
            <defs><marker id="inf8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Tanya's contract (made up): six parts</text>
              <rect x="20" y="36" width="230" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="135" y="60" font-weight="700">Deliverables</text>
              <text x="135" y="80" font-size="11" fill="#9b99b8">2 reels + 4 stories</text>
              <rect x="265" y="36" width="230" height="58" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="60" font-weight="700">Fees</text>
              <text x="380" y="80" font-size="11" fill="#9b99b8">₹36,000 + ₹9,000 usage rights</text>
              <rect x="510" y="36" width="230" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="625" y="60" font-weight="700">Usage rights</text>
              <text x="625" y="80" font-size="11" fill="#9b99b8">partnership ads for 60 days</text>
              <rect x="20" y="106" width="230" height="58" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="135" y="130" font-weight="700">Exclusivity</text>
              <text x="135" y="150" font-size="11" fill="#9b99b8">no rival ethnic wear to 10 Nov</text>
              <rect x="265" y="106" width="230" height="58" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="130" font-weight="700">Approval and disclosure</text>
              <text x="380" y="150" font-size="11" fill="#9b99b8">#ad first · draft review</text>
              <rect x="510" y="106" width="230" height="58" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="625" y="130" font-weight="700">Tax and invoices</text>
              <text x="625" y="150" font-size="11" fill="#9b99b8">TDS, GST: ask a CA</text>
              <text x="380" y="200" font-weight="700" fill="#c4b5fd">Payment timeline</text>
              <rect x="20" y="214" width="162" height="58" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="101" y="238" font-weight="700">Sign</text>
              <text x="101" y="258" font-size="11" fill="#9b99b8">pay 50%: ₹22,500</text>
              <rect x="206" y="214" width="162" height="58" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="287" y="238" font-weight="700">Posts go live</text>
              <text x="287" y="258" font-size="11" fill="#9b99b8">16 Oct to 1 Nov</text>
              <rect x="392" y="214" width="162" height="58" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="473" y="238" font-weight="700">Insights shared</text>
              <text x="473" y="258" font-size="11" fill="#9b99b8">7 days after each post</text>
              <rect x="578" y="214" width="162" height="58" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="659" y="238" font-weight="700">Pay last 50%</text>
              <text x="659" y="258" font-size="11" fill="#9b99b8">within 15 days</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inf8a)">
                <line x1="184" y1="243" x2="202" y2="243"/>
                <line x1="370" y1="243" x2="388" y2="243"/>
                <line x1="556" y1="243" x2="574" y2="243"/>
              </g>
              <text x="380" y="306" font-size="11" fill="#9b99b8">Amounts before TDS. All names and numbers are made up. Not legal or tax advice.</text>
            </g>
          </svg>
          <figcaption>A creator contract has six main parts. Paying half upfront and half after the posts and insights is fair to both sides.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in a creator contract</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it says</th><th>Tanya's deal (made up)</th></tr></thead>
            <tbody>
              <tr><td>Deliverables</td><td>Exactly what the creator posts, where and when</td><td>2 reels, each with 2 stories that have a link sticker. Reel 1 from 16 to 22 Oct, reel 2 from 26 Oct to 1 Nov.</td></tr>
              <tr><td>Fees and payment terms</td><td>The amount, and when it is paid</td><td>₹45,000 in total. 50% (₹22,500) on signing. 50% within 15 days after the last post and the insights.</td></tr>
              <tr><td>Usage rights</td><td>How the brand may reuse the content, where, and for how long</td><td>Partnership ads for 60 days. Reposts on Zari &amp; Co's own page with credit for 12 months.</td></tr>
              <tr><td>Exclusivity</td><td>Brands the creator will not work with for a period</td><td>No other ethnic wear brand from 16 Oct to 10 Nov 2026</td></tr>
              <tr><td>Approval and disclosure</td><td>Draft review, the ad label, keeping posts live</td><td>One draft review per reel, with at most 2 feedback rounds. #ad first plus the paid partnership label. Posts stay up for at least 6 months.</td></tr>
              <tr><td>Reporting</td><td>What data the creator shares</td><td>Insights screenshots 7 days after each post: reach, impressions, link clicks</td></tr>
              <tr><td>Ending the deal</td><td>What happens if either side breaks the terms</td><td>For example, a missing label or a post that breaks the brief</td></tr>
              <tr><td>Tax and invoices</td><td>Invoice details, TDS and GST</td><td>Tanya sends an invoice. Zari &amp; Co's accountant handles TDS.</td></tr>
            </tbody>
          </table>
          <p>Use a contract template that a lawyer has checked. Then fill in each creator's details. Even a gifted deal should have a short written agreement, because the creator must still label the post.</p>
        </div>
        <div class="lc-card">
          <h3>Rates, usage rights and whitelisting</h3>
          <p>Creators set their own rates. A rate usually depends on reach, niche, the number of deliverables, usage rights, exclusivity and the season. Festive months are busy, so rates may be higher. Ask each creator for their rate card. Never trust an AI's guess about what a creator "should" charge.</p>
          <p>Compare value with the <strong>cost per 1,000 reach</strong>: rate ÷ average reach × 1,000. Tanya's rate of ₹18,000 and her average reach of 21,000 give about ₹857 per 1,000 people reached.</p>
          <table class="lc-table">
            <thead><tr><th>Tanya's line</th><th>Calculation</th><th>₹</th></tr></thead>
            <tbody>
              <tr><td>Content fee</td><td>2 reels × ₹18,000</td><td>36,000</td></tr>
              <tr><td>Usage rights add-on (60 days of ads)</td><td>25% of the content fee</td><td>9,000</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>45,000</strong></td></tr>
              <tr><td>Paid on signing</td><td>50% of ₹45,000</td><td>22,500</td></tr>
              <tr><td>Paid after the posts and insights</td><td>50% of ₹45,000</td><td>22,500</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Usage rights</strong> are the brand's permission to reuse the creator's content. Posting on the creator's own page is not the same as using it in your ads. Ads need extra rights, and usually an extra fee.</li>
            <li><strong>Whitelisting</strong> means the creator lets the brand run ads from the creator's own handle. On Instagram and Facebook, these are called <strong>partnership ads</strong>. The creator can give permission for one post, or for their account. Permissions can usually be removed later. Check Meta's current help pages for the steps.</li>
            <li><strong>Exclusivity</strong> stops the creator from working with rivals for a time. Keep it narrow: one category and a short period. Wide exclusivity costs the creator income, so it should cost you more.</li>
            <li><strong>Who owns the content</strong> depends on the contract and on copyright law. Do not assume. Write down who owns it and what each side may do with it.</li>
          </ul>
          <p>Farah pays extra for usage rights only for Tanya, Pooja and Ishita. Their reels will be boosted as partnership ads.</p>
        </div>
        <div class="lc-card">
          <h3>TDS on fees and gifted products: the basics</h3>
          <p>TDS (tax deducted at source) means the payer deducts some income tax before paying and deposits it with the government. The following is general education, not tax advice. Tax rules change often. Ask a chartered accountant (CA) for your case.</p>
          <ul class="lc-list">
            <li><strong>Creator fees.</strong> A business paying a creator for services may need to deduct TDS. The rule and rate depend on the type of payment and the amounts. Your CA decides this.</li>
            <li><strong>Gifted products.</strong> India has a TDS rule on benefits or perquisites given to someone in the course of their business or profession. It was section 194R of the Income-tax Act, 1961. From 1 April 2026, the new Income-tax Act, 2025 covers it in section 393(1), with the same rate and limit.</li>
            <li><strong>Kept or returned?</strong> In 2022, the tax department explained this rule for social media influencers. If an influencer returns a product after using it for content, it is not treated as a benefit. If they keep it, it is a benefit, and TDS may apply.</li>
            <li><strong>Limits.</strong> At the time of writing, the benefit rule applies when the total value given to one person in a financial year is more than ₹20,000. The rate is 10%. Check the current figures before you rely on them.</li>
            <li><strong>No cash to deduct from.</strong> When the benefit is only a product, there is no payment to deduct tax from. Your CA will explain how to handle it.</li>
            <li><strong>GST.</strong> If a creator is registered for GST, their invoice may include GST. Your accountant decides how you handle it.</li>
          </ul>
          <p>Zari &amp; Co's nano creators each get ₹4,000 and an outfit to keep. So Farah lists every outfit given, with its value, for her accountant. The value may not be her cost price, so she asks the CA.</p>
          <p><strong>Privacy:</strong> creators send PAN and bank details for payment. This is personal data. Store it safely and share it only with the people who need it. Never paste it into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI for a term sheet, not the final contract</h3>
          <p>A <strong>term sheet</strong> is a short summary of the agreed deal. AI can turn your emails into a clear term sheet. It can also list questions to ask your lawyer. It should not write your final contract alone. It may miss Indian rules or add terms you did not agree.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an influencer contract.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Turn these agreed terms into a one-page term sheet with headings:
        deliverables, dates, fees and payment, usage rights, exclusivity,
        approval, disclosure, reporting, ending the deal.
        Then list anything missing or unclear, and 5 questions for my
        lawyer. Do not add terms I did not give. Do not give tax advice.
        [paste terms, with no PAN, bank or phone details]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: from agreement to payment</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Farah's contract steps with Tanya in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree deliverables, dates and the fee with Tanya by email.</li>
              <li data-order="2">Ask AI to turn the emails into a term sheet, with no personal details.</li>
              <li data-order="3">Check the term sheet against the brief and fix any gaps.</li>
              <li data-order="4">Fill in the lawyer-checked contract template and send it.</li>
              <li data-order="5">Both sign. Tanya sends her invoice. Farah pays 50%.</li>
              <li data-order="6">The posts go live and Tanya shares her insights.</li>
              <li data-order="7">Farah pays the last 50% within 15 days, with TDS handled by the accountant.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a made-up deal into a term sheet and a checklist of open questions. Use it to prepare for your lawyer and accountant, not to replace them.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an influencer partnerships manager in India. Use simple English. This is not legal or tax advice.

        Agreed deal (made up):
        Brand: [Zari &amp; Co, online ethnic wear].
        Creator: [Tanya, fashion creator, Rajasthan].
        Deliverables: [2 Instagram reels, each with 2 stories that have a link sticker].
        Dates: [reel 1 live 16 to 22 Oct 2026; reel 2 live 26 Oct to 1 Nov 2026].
        Fee: [₹18,000 per reel, plus ₹9,000 for 60 days of partnership ads].
        Payment: [50% on signing, 50% within 15 days after the last post and insights].
        Exclusivity: [no other ethnic wear brand, 16 Oct to 10 Nov 2026].
        Gift: [one outfit she keeps].

        Please:
        1. Write a one-page term sheet with clear headings. Show the total fee and each payment.
        2. Explain usage rights and partnership ads in 3 plain sentences.
        3. List terms that are missing, such as reporting, approval, disclosure and ending the deal.
        4. Write 4 questions for my lawyer and 3 for my accountant, including TDS on the fee and the gifted outfit.
        Do not state tax rates. Do not add terms I did not give.</pre>
            <ul class="ai-try-checks">
              <li>The total is ₹45,000, paid as ₹22,500 and ₹22,500.</li>
              <li>It lists missing terms instead of inventing them.</li>
              <li>Tax questions go to an accountant. It does not give tax rates as advice.</li>
              <li>It says clearly that ads need usage rights beyond the organic post.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Put every deal in writing: deliverables, dates, fees, usage rights, exclusivity and disclosure. Pay extra for extra rights, pay on time, and let a lawyer and a CA check the contract and the tax. AI can summarise the deal, but people sign it.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Content Approval and Brand Safety</h1>
        </div>
        <p class="lc-lead">Before a creator post goes live, someone at the brand should check it. After it goes live, someone should watch the comments. Brand safety means keeping your brand away from false claims, harmful content and angry comment threads that nobody answers. In this lesson you will learn a simple review process, a claims check, comment moderation and a crisis plan. You will see how AI helps at each step. You will follow Farah as she reviews drafts for Zari &amp; Co's "Roshni Edit" campaign.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Top: a six-step review flow. Draft in by 12 October. Check against a checklist. Feedback in at most 2 rounds. Approve in writing. Go live, and check the live post within 1 hour. Watch comments for 72 hours. If a problem is found, the crisis plan has three levels. Small: reply kindly and fix fast. Growing: pause ads and hold the next post. Serious: the founder decides and a statement is prepared.">
            <defs><marker id="inf9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Review before, watch after</text>
              <rect x="15" y="36" width="110" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="70" y="60" font-weight="700">Draft in</text><text x="70" y="80" font-size="11" fill="#9b99b8">by 12 Oct</text>
              <rect x="139" y="36" width="110" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="194" y="60" font-weight="700">Check</text><text x="194" y="80" font-size="11" fill="#9b99b8">use a checklist</text>
              <rect x="263" y="36" width="110" height="58" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="318" y="60" font-weight="700">Feedback</text><text x="318" y="80" font-size="11" fill="#9b99b8">max 2 rounds</text>
              <rect x="387" y="36" width="110" height="58" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="442" y="60" font-weight="700">Approve</text><text x="442" y="80" font-size="11" fill="#9b99b8">in writing</text>
              <rect x="511" y="36" width="110" height="58" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="566" y="60" font-weight="700">Go live</text><text x="566" y="80" font-size="11" fill="#9b99b8">check in 1 hour</text>
              <rect x="635" y="36" width="110" height="58" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="690" y="60" font-weight="700">Watch</text><text x="690" y="80" font-size="11" fill="#9b99b8">comments 72 h</text>
              <rect x="280" y="140" width="200" height="44" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="167" font-weight="700">Problem found?</text>
              <rect x="20" y="226" width="230" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="135" y="250" font-weight="700">Small</text><text x="135" y="270" font-size="11" fill="#9b99b8">reply kindly, fix fast</text>
              <rect x="265" y="226" width="230" height="60" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="250" font-weight="700">Growing</text><text x="380" y="270" font-size="11" fill="#9b99b8">pause ads, hold next post</text>
              <rect x="510" y="226" width="230" height="60" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="625" y="250" font-weight="700">Serious</text><text x="625" y="270" font-size="11" fill="#9b99b8">founder decides, statement</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inf9a)">
                <line x1="126" y1="65" x2="136" y2="65"/>
                <line x1="250" y1="65" x2="260" y2="65"/>
                <line x1="374" y1="65" x2="384" y2="65"/>
                <line x1="498" y1="65" x2="508" y2="65"/>
                <line x1="622" y1="65" x2="632" y2="65"/>
                <line x1="680" y1="96" x2="484" y2="156"/>
                <line x1="320" y1="185" x2="150" y2="222"/>
                <line x1="380" y1="185" x2="380" y2="222"/>
                <line x1="440" y1="185" x2="610" y2="222"/>
              </g>
            </g>
          </svg>
          <figcaption>Every draft goes through the same six steps. If something goes wrong after posting, the crisis plan says what to do at each level.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to check in every draft</h3>
          <p>Review a draft for facts and rules, not for style. The creator knows how to talk to their followers. Rewriting their voice makes the post feel like an ad. Use the same checklist for every creator:</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>What to look for</th></tr></thead>
            <tbody>
              <tr><td>Disclosure</td><td>#ad (or another clear label) in the first line. The paid partnership label will be turned on. A label on screen for stories and videos with no caption.</td></tr>
              <tr><td>Claims</td><td>Every claim matches the product page and the brief. Fabric names, prices and discounts are exact.</td></tr>
              <tr><td>Product accuracy</td><td>The right product, in true colours. No filter that changes how it looks.</td></tr>
              <tr><td>Code, link and dates</td><td>The right code, the right discount, the right last order date</td></tr>
              <tr><td>Safety and respect</td><td>No unsafe acts (such as a lit diya near fabric). No jokes about body type, religion, caste or region.</td></tr>
              <tr><td>Music and other people</td><td>Music allowed by the platform for branded content. Permission from anyone else shown.</td></tr>
            </tbody>
          </table>
          <p>Give feedback in one message, as a numbered list. Limit it to two rounds. Then approve in writing, so everyone knows which version is final. Remember that ASCI's guidelines make the brand share responsibility for the post.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Tanya's first draft</h3>
          <p>Tanya's made-up draft caption for reel 1:</p>
          <pre><code>Diwali ready ✨ This pure silk Roshni saree is sooo soft!
        Use TANYA10 for 20% off and get it before Diwali, guaranteed!
        #diwali #saree #ootd #zariandco #ad</code></pre>
          <p>Farah pastes the caption, the product page facts and the brief rules into her AI assistant. She asks it to list every problem. It finds four. Farah checks each one herself:</p>
          <ul class="lc-list">
            <li><strong>"Pure silk"</strong>: the product page says art silk. This is a false claim.</li>
            <li><strong>"20% off"</strong>: TANYA10 gives 10% off. Buyers would feel cheated at checkout.</li>
            <li><strong>"Guaranteed" before Diwali</strong>: the brief only allows "order by 1 November for Diwali delivery".</li>
            <li><strong>#ad at the end</strong>: it is buried among hashtags. It must come first.</li>
          </ul>
          <p>Tanya's fixed caption keeps her voice and fixes the facts:</p>
          <pre><code>#ad Diwali ready ✨ The Roshni Edit art silk saree from @zariandco
        is sooo soft! Order by 1 Nov for Diwali delivery.
        Code TANYA10 = 10% off till 10 Nov.</code></pre>
          <p>Not every problem is the creator's fault. Meera's first draft showed a saree from last year's range, because the courier sent the wrong parcel. It was Zari &amp; Co's mistake. Farah paid ₹12,000 from the contingency budget for a reshoot. Fixing your own mistakes fairly keeps creators happy to work with you again.</p>
        </div>
        <div class="lc-card">
          <h3>Comment moderation and a crisis plan</h3>
          <p>Comments on a creator's post belong to the creator's page. So agree the rules in the brief. For Zari &amp; Co, the creator answers styling questions. Zari &amp; Co's customer-care person answers order and delivery questions from the brand account.</p>
          <ul class="lc-list">
            <li><strong>Platform tools.</strong> Instagram's Hidden Words can hide comments that contain words you list. You can also turn off comments on a post. YouTube Studio can hold possibly inappropriate comments for review and has a blocked words list. Settings change, so check each platform's current help pages.</li>
            <li><strong>Do not hide honest complaints.</strong> Hide spam and abuse. Reply to real complaints kindly and quickly.</li>
            <li><strong>Use AI to sort, not to reply alone.</strong> Copy comments without usernames. Ask AI to group them into questions, praise, complaints and spam. AI can draft replies. A person reads and approves each one.</li>
            <li><strong>Brand safety.</strong> Look at each creator's recent posts before their post goes live. If a creator is in a public controversy, pause and talk before posting.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Example in Farah's plan</th><th>Action</th><th>Who decides</th></tr></thead>
            <tbody>
              <tr><td>Small</td><td>One buyer says the colour looks different in real life</td><td>Reply within 24 hours and offer help</td><td>Customer care</td></tr>
              <tr><td>Growing</td><td>Many comments on one reel say orders are late</td><td>Pause paid ads on that reel. Post an honest update. Fix the delivery issue.</td><td>Farah</td></tr>
              <tr><td>Serious</td><td>A creator's old offensive post goes viral, or a false claim spreads</td><td>Pause all campaign ads and upcoming posts. Talk to the creator. Prepare a short statement.</td><td>Founder and Farah, within 24 hours</td></tr>
            </tbody>
          </table>
          <p>Write the plan before the campaign starts. In a crisis, there is no time to decide who is in charge.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: approve, change or escalate?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up situation from the Roshni Edit campaign.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Approve"></div>
              <div data-sorter-target="bucket" data-bucket="change" data-label="Ask for a change"></div>
              <div data-sorter-target="bucket" data-bucket="stop" data-label="Stop and escalate"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Label first, true claims and the creator's own voice. Nothing needs to change.">Kavya's draft: #ad first, fabric named as on the product page, her own Tamil voiceover.</li>
              <li data-bucket="change" data-why="The discount is wrong. It is a simple fix before posting.">A caption says TANYA10 gives 20% off.</li>
              <li data-bucket="change" data-why="Unsafe acts should not appear in a brand post. A small change fixes it.">Riya's recipe reel shows a lit diya right next to the dupatta.</li>
              <li data-bucket="ok" data-why="Honest fit and styling in her usual style is exactly what her audience trusts.">Pooja's draft shows how the lehenga fits her, in her usual fun style.</li>
              <li data-bucket="stop" data-why="Content that mocks people is a serious brand safety risk. It needs a senior decision, not a quick edit.">A draft makes a joke about people from one religion.</li>
              <li data-bucket="stop" data-why="Many complaints on a live post is a growing problem. Follow the crisis plan: pause ads and fix the cause.">Dozens of comments on a live reel say orders have not arrived.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a draft caption and your product facts. Ask AI to review it against a brand checklist. Then check every point it raises yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful content reviewer for influencer posts in India. Use simple English. This is a first check, not legal advice.

        Product facts (from our product page): [Roshni Edit saree, art silk, maroon, ₹3,200].
        Brief rules: [#ad in the first line; paid partnership label on; code TANYA10 = 10% off until 10 Nov; say "order by 1 Nov for Diwali delivery"; no "pure silk"; no filters that change colours; no price comparisons].
        Draft caption: ["Diwali ready ✨ This pure silk Roshni saree is sooo soft! Use TANYA10 for 20% off and get it before Diwali, guaranteed! #diwali #saree #ootd #zariandco #ad"]

        Please:
        1. List every problem as a table: problem, which rule or fact it breaks, suggested fix.
        2. Mark each problem as "must fix" or "suggestion".
        3. Write one fixed caption that keeps the creator's tone and emoji.
        4. List what I must still check in the video itself.
        5. Draft a short, friendly feedback message to the creator as a numbered list.

        Use only the facts above. Do not invent new product details.</pre>
            <ul class="ai-try-checks">
              <li>It catches "pure silk", "20% off", "guaranteed" and the buried #ad.</li>
              <li>The fixed caption starts with #ad and uses only true facts.</li>
              <li>The creator's tone is kept, not replaced with ad language.</li>
              <li>It reminds you to check the video for colour, the on-screen label and safety.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Review drafts for facts and rules, not for style. Approve in writing, check the live post, and watch the comments. Write a crisis plan before launch, so everyone knows who acts when something goes wrong.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Tracking Campaigns</h1>
        </div>
        <p class="lc-lead">If you cannot track a campaign, you cannot tell which creators brought sales. You only have a feeling. In this lesson you will set up four kinds of tracking: promo codes, UTM links, affiliate links and platform insights. Then you will build a tracking sheet with formulas that work out the key numbers for each creator. You will follow Farah as she sets up tracking for Zari &amp; Co's "Roshni Edit" Diwali campaign. She must finish before the first post goes live on 16 October 2026.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="How one made-up creator post is tracked. Tanya's reel and 2 stories lead to two tracks: the promo code TANYA10, and a link sticker with a UTM link ending in utm_content equals tanya_reel1. Both lead to an order on the Zari and Co website, where the order records the code or the utm_content. Orders go into a tracking sheet with one row per source. Insights screenshots from the creator, with reach, impressions and clicks, also go into the sheet.">
            <defs><marker id="inf10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">One post, two tracks, one row in the sheet</text>
              <rect x="20" y="120" width="160" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="100" y="146" font-weight="700">Tanya's post</text>
              <text x="100" y="166" font-size="11" fill="#9b99b8">reel + 2 stories</text>
              <rect x="215" y="50" width="190" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="310" y="76" font-weight="700">Promo code</text>
              <text x="310" y="96" font-size="11" fill="#9b99b8">TANYA10 (10% off)</text>
              <rect x="215" y="190" width="190" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="310" y="216" font-weight="700">UTM link in sticker</text>
              <text x="310" y="236" font-size="11" fill="#9b99b8">utm_content=tanya_reel1</text>
              <rect x="440" y="120" width="150" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="515" y="146" font-weight="700">Order placed</text>
              <text x="515" y="166" font-size="11" fill="#9b99b8">code or utm_content</text>
              <rect x="610" y="115" width="135" height="70" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="677" y="143" font-weight="700">Tracking sheet</text>
              <text x="677" y="163" font-size="11" fill="#9b99b8">one row per source</text>
              <rect x="215" y="270" width="375" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="402" y="295" font-size="12">Insights screenshots: reach, impressions, clicks</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inf10a)">
                <line x1="182" y1="140" x2="212" y2="92"/>
                <line x1="182" y1="160" x2="212" y2="208"/>
                <line x1="407" y1="92" x2="437" y2="138"/>
                <line x1="407" y1="208" x2="437" y2="162"/>
                <line x1="592" y1="150" x2="607" y2="150"/>
                <line x1="592" y1="290" x2="672" y2="189"/>
              </g>
            </g>
          </svg>
          <figcaption>Each creator gets their own code and their own link. Orders and insights meet in one tracking sheet, where each order is counted only once.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four ways to track creator results</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What it is</th><th>What it catches</th><th>What it misses</th></tr></thead>
            <tbody>
              <tr><td>Promo code</td><td>A discount code for one creator, such as TANYA10</td><td>Buyers who type the code at checkout, even days later</td><td>Buyers who forget the code. Codes shared on coupon websites.</td></tr>
              <tr><td>UTM link</td><td>A web link with tags that tell your analytics tool where a visitor came from</td><td>Clicks and orders from that link, in your analytics tool</td><td>People who see the post but visit your site later another way</td></tr>
              <tr><td>Affiliate link</td><td>A unique link from an affiliate tool that records sales and works out commission</td><td>Sales through that link, often with commission reports</td><td>The same gaps as UTM links. Tool rules vary, so check its help pages.</td></tr>
              <tr><td>Platform insights</td><td>The creator's own statistics for each post</td><td>Reach, impressions, engagement, link clicks or sticker taps</td><td>Sales. You must ask the creator to share them.</td></tr>
            </tbody>
          </table>
          <p>Use at least two methods together. Farah gives each creator a code and a link. The nano group gets codes such as ROSHNI-HARLEEN and ROSHNI-N02. All codes give 10% off and work from 16 October to 10 November 2026.</p>
        </div>
        <div class="lc-card">
          <h3>UTM links: the naming rules</h3>
          <p>UTM tags are small labels added to the end of a link. Google Analytics and many other tools read them. Here is Tanya's made-up link for her first reel:</p>
          <pre><code>https://zariandco.example/roshni?utm_source=instagram&amp;utm_medium=influencer&amp;utm_campaign=diwali26_roshni&amp;utm_content=tanya_reel1</code></pre>
          <table class="lc-table">
            <thead><tr><th>Tag</th><th>Meaning</th><th>Zari &amp; Co value</th></tr></thead>
            <tbody>
              <tr><td>utm_source</td><td>The site or app the visitor came from</td><td>instagram</td></tr>
              <tr><td>utm_medium</td><td>The type of marketing</td><td>influencer (creator posts) or paid_social (ads)</td></tr>
              <tr><td>utm_campaign</td><td>The campaign name</td><td>diwali26_roshni</td></tr>
              <tr><td>utm_content</td><td>Which creator and which post</td><td>tanya_reel1, meera_reel1, nano_harleen, ad_tanya</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Use lowercase and underscores, never spaces.</strong> Analytics tools may treat "Instagram" and "instagram" as two different sources.</li>
            <li><strong>Keep one naming list</strong> in the sheet and copy links from it. Do not type them by hand.</li>
            <li><strong>Find the results.</strong> In Google Analytics 4, the traffic acquisition report can show campaign names. utm_content appears as "manual ad content". Add it as an extra column or use an exploration. Menus change, so check the current help pages.</li>
            <li><strong>Test every link and code</strong> before the post goes live.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make tracking links for my influencers.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Make a table of UTM links. Base URL: https://zariandco.example/roshni
        utm_source=instagram, utm_medium=influencer, utm_campaign=diwali26_roshni.
        utm_content = creator name + post, lowercase with underscores:
        tanya_reel1, tanya_reel2, meera_reel1, meera_reel2, riya_reel1.
        Columns: creator, post, utm_content, full link. No spaces or capitals.</code></pre>
          <p>Check the AI's links carefully. A missing "&amp;" or a typo breaks the tracking for that post.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the tracking sheet</h3>
          <p>Farah builds a sheet with one row per source: each creator, the nano group and the paid ads. Columns A to H hold the raw data. Columns I to N hold formulas. Here is row 2 for Tanya, with her made-up final numbers:</p>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>What it holds</th><th>Tanya</th></tr></thead>
            <tbody>
              <tr><td>B Cost</td><td>Fee plus usage rights</td><td>₹45,000</td></tr>
              <tr><td>C Reach</td><td>From insights, all posts added</td><td>47,200</td></tr>
              <tr><td>D Impressions</td><td>From insights</td><td>61,000</td></tr>
              <tr><td>E Engagements</td><td>Likes + comments + shares + saves</td><td>4,650</td></tr>
              <tr><td>F Link clicks</td><td>From insights or analytics</td><td>1,020</td></tr>
              <tr><td>G Orders</td><td>Counted from the orders export</td><td>41</td></tr>
              <tr><td>H Revenue</td><td>Value of those orders</td><td>₹1,17,000</td></tr>
            </tbody>
          </table>
          <pre><code>I  CPM (cost per 1,000 impressions)  =IFERROR(B2/D2*1000,"")  → ₹737.7
        J  ER by reach                        =IFERROR(E2/C2,"")       → 9.85%
        K  CTR (clicks ÷ impressions)         =IFERROR(F2/D2,"")       → 1.67%
        L  Conversion rate (orders ÷ clicks)  =IFERROR(G2/F2,"")       → 4.02%
        M  CPA (cost ÷ orders)                =IFERROR(B2/G2,"")       → ₹1,097.6
        N  ROAS (revenue ÷ cost)              =IFERROR(H2/B2,"")       → 2.60</code></pre>
          <p>Format J, K and L as percentages. IFERROR shows a blank instead of an error when a cell is still empty.</p>
          <p><strong>Count each order once.</strong> Farah exports orders from her store into a tab called Orders. Column B has the code, column C has the utm_content and column D has the order value. Column E gives the credit. The rule: use the code if there is one, otherwise use the link. A small table called Links matches each code and utm_content to a creator.</p>
          <pre><code>Orders!E2  =IF(B2&lt;&gt;"", VLOOKUP(B2,Links!A:B,2,FALSE),
                   IFERROR(VLOOKUP(C2,Links!A:B,2,FALSE),"Not tracked"))
        G2 (orders)   =COUNTIF(Orders!E:E,"Tanya")
        H2 (revenue)  =SUMIF(Orders!E:E,"Tanya",Orders!D:D)</code></pre>
          <p>Tanya's 41 orders are 26 with the code only, 9 with the link only and 6 with both. The 6 are counted once, not twice. You will study all the results in the measuring lesson.</p>
          <p><strong>What tracking misses.</strong> Some people see a reel, then search for Zari &amp; Co on Google days later. Those orders show as "Not tracked". So tracked orders are the minimum a creator brought, not the full total. Farah also checks every Monday whether any code has leaked to coupon websites.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: testing the links before launch</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Farah asks AI">"Make the full list of 25 UTM links from my naming list: 22 creator posts and 3 paid ads."</li>
              <li data-kind="answer" data-label="AI replies">A table of 25 links, one per post or ad, with creator, post and utm_content columns.</li>
              <li data-kind="tool" data-label="Farah tests">On Thursday 15 October, she opens every link on her phone. She checks the real-time report in her analytics tool.</li>
              <li data-kind="result" data-label="What she sees">24 links show correctly. One shows the source as "Instagram" with a capital I, on a separate row.</li>
              <li data-kind="warn" data-label="The mistake">Someone had edited meera_reel1 by hand. Its results would split across two rows.</li>
              <li data-kind="check" data-label="Fix and retest">She copies the link again from the naming list and retests it. She also places a test order with MEERA10 to check that the code works.</li>
              <li data-kind="result" data-label="Ready">All 25 links and 17 codes work. She sends each creator only their own link and code.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a tracking plan for your campaign: codes, UTM links and the sheet formulas. Then test every link and code yourself before launch.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketing analyst who sets up influencer tracking. Use simple English.

        Brand website: [https://zariandco.example/roshni]
        Campaign: [diwali26_roshni, posts live 16 Oct to 3 Nov 2026].
        Creators and posts: [Tanya 2 reels, Meera 2 reels, Riya 1 reel].
        Codes: [one per creator, 10% off, such as TANYA10].

        Please:
        1. Write naming rules for utm_source, utm_medium, utm_campaign and utm_content (lowercase, underscores).
        2. Make a table: creator, post, promo code, utm_content, full UTM link.
        3. Design a tracking sheet: columns for cost, reach, impressions, engagements, link clicks, orders and revenue, then formulas for CPM, ER by reach, CTR, conversion rate, CPA and ROAS. Use Google Sheets formulas with IFERROR.
        4. Give a rule so an order with both a code and a link is counted only once.
        5. Write a 6-point test checklist to use before launch.
        6. Explain in 3 sentences what this tracking will miss.

        Do not invent results. Leave number cells empty.</pre>
            <ul class="ai-try-checks">
              <li>Every link uses lowercase and has no spaces.</li>
              <li>CPA = cost ÷ orders and ROAS = revenue ÷ cost in the formulas.</li>
              <li>There is a clear rule to count each order once.</li>
              <li>It says tracked orders are a minimum, not the full total.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Give every creator their own code and link, name links with strict rules, and test everything before launch. Count each order once in one sheet. Remember that tracking shows the minimum a creator brought, not everything.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Measuring Results and ROI</h1>
        </div>
        <p class="lc-lead">When a campaign ends, your boss will ask one question: was it worth the money? In this lesson you will calculate the main influencer metrics: engagement rate, CPM, CPE, cost per acquisition and ROAS. You will work through the made-up results of Farah's "Roshni Edit" Diwali campaign for Zari &amp; Co. You will see why EMV is not revenue. You will also learn how AI can help with the report without making up numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Top row: the made-up Roshni Edit results as a flow. Media spend 5,10,000 rupees led to 12,07,700 impressions, 11,870 link clicks, 323 orders and 9,11,000 rupees of revenue. Between the steps are the metrics: CPM 422.3 rupees, CTR 0.98 percent, conversion rate 2.72 percent and average order value 2,820 rupees. Bottom row: the all-in view including gifts, tools and a reshoot, total 5,76,000 rupees. All-in CPA is 1,783.3 rupees, beating the 2,000 rupee target. All-in ROAS is 1.58, above the plan of 1.4 but below break-even of 2.0. 64.1 percent of orders came from new customers. An EMV tile shows 18,40,000 rupees as a tool estimate that is not revenue.">
            <defs><marker id="inf11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Roshni Edit results: from spend to orders (made up)</text>
              <rect x="20" y="44" width="128" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="84" y="66" font-size="12" fill="#9b99b8">Media spend</text>
              <text x="84" y="90" font-size="15" font-weight="700">₹5,10,000</text>
              <rect x="168" y="44" width="128" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="232" y="66" font-size="12" fill="#9b99b8">Impressions</text>
              <text x="232" y="90" font-size="15" font-weight="700">12,07,700</text>
              <rect x="316" y="44" width="128" height="60" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="66" font-size="12" fill="#9b99b8">Link clicks</text>
              <text x="380" y="90" font-size="15" font-weight="700">11,870</text>
              <rect x="464" y="44" width="128" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="528" y="66" font-size="12" fill="#9b99b8">Orders</text>
              <text x="528" y="90" font-size="15" font-weight="700">323</text>
              <rect x="612" y="44" width="128" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="676" y="66" font-size="12" fill="#9b99b8">Revenue</text>
              <text x="676" y="90" font-size="15" font-weight="700">₹9,11,000</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inf11a)">
                <line x1="150" y1="74" x2="164" y2="74"/>
                <line x1="298" y1="74" x2="312" y2="74"/>
                <line x1="446" y1="74" x2="460" y2="74"/>
                <line x1="594" y1="74" x2="608" y2="74"/>
              </g>
              <g font-size="12" fill="#22d3ee">
                <text x="158" y="128">CPM ₹422.3</text>
                <text x="306" y="128">CTR 0.98%</text>
                <text x="454" y="128">CR 2.72%</text>
                <text x="602" y="128">AOV ₹2,820</text>
              </g>
              <text x="380" y="158" font-size="12" fill="#9b99b8">All-in view: media + gifts ₹36,000 + tools ₹18,000 + reshoot ₹12,000 = ₹5,76,000</text>
              <rect x="20" y="172" width="171" height="96" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="105.5" y="196" font-size="12" fill="#9b99b8">All-in CPA</text>
              <text x="105.5" y="226" font-size="20" font-weight="700">₹1,783.3</text>
              <text x="105.5" y="252" font-size="11" fill="#10b981">target ₹2,000: beaten</text>
              <rect x="203" y="172" width="171" height="96" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="288.5" y="196" font-size="12" fill="#9b99b8">All-in ROAS</text>
              <text x="288.5" y="226" font-size="20" font-weight="700">1.58</text>
              <text x="288.5" y="252" font-size="11" fill="#f59e0b">plan 1.4, break-even 2.0</text>
              <rect x="386" y="172" width="171" height="96" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="471.5" y="196" font-size="12" fill="#9b99b8">New customers</text>
              <text x="471.5" y="226" font-size="20" font-weight="700">64.1%</text>
              <text x="471.5" y="252" font-size="11" fill="#9b99b8">207 of 323 orders</text>
              <rect x="569" y="172" width="171" height="96" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="6 4"/>
              <text x="654.5" y="196" font-size="12" fill="#9b99b8">EMV (tool estimate)</text>
              <text x="654.5" y="226" font-size="20" font-weight="700" fill="#9b99b8">₹18,40,000</text>
              <text x="654.5" y="252" font-size="11" fill="#ec4899">not revenue: never add it</text>
            </g>
          </svg>
          <figcaption>The top row shows the funnel and its metrics. The bottom row shows the all-in numbers Farah reports. EMV sits apart, because it is not money.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The metrics, with one worked row</h3>
          <p>Each metric answers one question. Here is Tanya's made-up row: cost ₹45,000 (two reels plus usage rights), reach 47,200, impressions 61,000, engagements 4,650, link clicks 1,020, orders 41 and revenue ₹1,17,000.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>What it means</th><th>Formula</th><th>Tanya (made up)</th></tr></thead>
            <tbody>
              <tr><td>ER by reach</td><td>How many people who saw the post reacted to it</td><td>engagements ÷ reach × 100</td><td>4,650 ÷ 47,200 = 9.85%</td></tr>
              <tr><td>CPM</td><td>Cost per 1,000 impressions</td><td>cost ÷ impressions × 1,000</td><td>₹737.7</td></tr>
              <tr><td>CPE</td><td>Cost per engagement (like, comment, share or save)</td><td>cost ÷ engagements</td><td>₹9.68</td></tr>
              <tr><td>CPC</td><td>Cost per link click</td><td>cost ÷ clicks</td><td>₹44.1</td></tr>
              <tr><td>CTR</td><td>Click-through rate: share of impressions that became clicks</td><td>clicks ÷ impressions × 100</td><td>1.67%</td></tr>
              <tr><td>Conversion rate</td><td>Share of clicks that became orders</td><td>orders ÷ clicks × 100</td><td>4.02%</td></tr>
              <tr><td>CPA</td><td>Cost per acquisition: cost for each order</td><td>cost ÷ orders</td><td>₹1,097.6</td></tr>
              <tr><td>ROAS</td><td>Return on ad spend: revenue for each ₹1 spent</td><td>revenue ÷ cost</td><td>2.60</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, put one source per row. If B is cost, C reach, D impressions, E engagements, G orders and H revenue, then use these formulas in row 2:</p>
          <pre><code>ER by reach:  =E2/C2        (format as %)
        CPM:          =B2/D2*1000
        CPE:          =B2/E2
        CPA:          =IFERROR(B2/G2,"no orders")
        ROAS:         =H2/B2</code></pre>
          <p>Engagement tells you people liked the content. CPA and ROAS tell you if it sold. For a sales goal, CPA and ROAS matter most.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the Roshni Edit results</h3>
          <p>All numbers are made up. Orders count a creator's code or link, counted once per order. Creator costs include the usage-rights fees.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Cost ₹</th><th>CPM ₹</th><th>CPE ₹</th><th>ER by reach</th><th>Orders</th><th>Revenue ₹</th><th>CPA ₹</th><th>ROAS</th></tr></thead>
            <tbody>
              <tr><td>Tanya</td><td>45,000</td><td>737.7</td><td>9.68</td><td>9.85%</td><td>41</td><td>1,17,000</td><td>1,097.6</td><td>2.60</td></tr>
              <tr><td>Meera</td><td>24,000</td><td>623.4</td><td>7.27</td><td>11.07%</td><td>22</td><td>58,300</td><td>1,090.9</td><td>2.43</td></tr>
              <tr><td>Kavya</td><td>32,000</td><td>456.5</td><td>6.53</td><td>8.84%</td><td>31</td><td>89,900</td><td>1,032.3</td><td>2.81</td></tr>
              <tr><td>Pooja</td><td>60,000</td><td>650.1</td><td>8.82</td><td>9.51%</td><td>58</td><td>1,56,600</td><td>1,034.5</td><td>2.61</td></tr>
              <tr><td>Ishita</td><td>1,22,000</td><td>931.3</td><td>16.94</td><td>7.35%</td><td>36</td><td>1,08,000</td><td>3,388.9</td><td>0.89</td></tr>
              <tr><td>Aanya &amp; Dev</td><td>75,000</td><td>688.1</td><td>14.71</td><td>5.80%</td><td>14</td><td>49,000</td><td>5,357.1</td><td>0.65</td></tr>
              <tr><td>Riya</td><td>22,000</td><td>650.9</td><td>12.94</td><td>6.18%</td><td>6</td><td>15,600</td><td>3,666.7</td><td>0.71</td></tr>
              <tr><td>Nano group (10)</td><td>40,000</td><td>769.2</td><td>7.14</td><td>13.66%</td><td>27</td><td>70,200</td><td>1,481.5</td><td>1.75</td></tr>
              <tr><td>Paid partnership ads</td><td>90,000</td><td>145.2</td><td>9.68</td><td>3.00%</td><td>88</td><td>2,46,400</td><td>1,022.7</td><td>2.74</td></tr>
              <tr><td><strong>Total media</strong></td><td><strong>5,10,000</strong></td><td>422.3</td><td>10.50</td><td>6.32%</td><td><strong>323</strong></td><td><strong>9,11,000</strong></td><td>1,578.9</td><td>1.79</td></tr>
            </tbody>
          </table>
          <p><strong>Now add the costs that are not in the table.</strong> Gifted outfits cost ₹36,000, tools ₹18,000 and one reshoot ₹12,000. The all-in spend is ₹5,76,000, and ₹24,000 of the budget was not used.</p>
          <ul class="lc-list">
            <li><strong>All-in CPA</strong> = ₹5,76,000 ÷ 323 = <strong>₹1,783.3</strong>. The target was ₹2,000, so Farah beat it.</li>
            <li><strong>All-in ROAS</strong> = ₹9,11,000 ÷ ₹5,76,000 = <strong>1.58</strong>. The plan was 1.4, so this is better than planned.</li>
            <li><strong>Break-even check.</strong> With a 50% gross margin, Zari &amp; Co keeps ₹4,55,500 from the revenue. That is ₹1,20,500 less than the spend. So first orders did not pay back the campaign.</li>
            <li><strong>New customers.</strong> 207 of the 323 orders came from first-time buyers (64.1%, goal 60%). The cost per new customer was ₹5,76,000 ÷ 207 = ₹2,782.6.</li>
          </ul>
          <p><strong>What the table teaches.</strong> The four micro creators with strong fit (Tanya, Meera, Kavya and Pooja) had a CPA near ₹1,000 to ₹1,100. The two big names, Ishita and Aanya &amp; Dev, gave a lot of reach but a high CPA. Riya's cooking audience did not buy clothes. Farah reports all of this honestly, including the ₹1,20,500 gap.</p>
        </div>
        <div class="lc-card">
          <h3>Why EMV is not revenue, and other traps</h3>
          <p>Many influencer tools show <strong>EMV</strong> (earned media value). EMV is the tool's guess of what the same reach or engagement would have cost if you had bought it as ads. Each tool uses its own formula, so EMV numbers from two tools do not match.</p>
          <p>Farah's tool shows a made-up EMV of ₹18,40,000. If she divided it by her spend, she would get "3.19". That number is wrong and misleading. Nobody paid Zari &amp; Co ₹18,40,000. Never add EMV to revenue or put it inside ROAS. If you show it at all, label it "tool estimate, not money".</p>
          <p>Your real numbers can also be off. Check these limits and write them in the report:</p>
          <ul class="lc-list">
            <li><strong>Code leaks.</strong> A creator code may appear on a coupon website. Then people who never saw the creator use it, and sales look higher.</li>
            <li><strong>Missed sales.</strong> Some people watch a reel, then buy days later without the code or link. Sales look lower.</li>
            <li><strong>Overlap.</strong> Reach is added across posts, so one person can be counted many times. It is not the number of unique people.</li>
            <li><strong>Sales that would have happened anyway.</strong> Diwali is a busy season. Some buyers would have bought without the campaign.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Using AI for the report, safely</h3>
          <p>AI is good at turning a results table into a clear summary. It is not reliable at maths. It can also mix up rows. Give it the table, ask for formulas, then recalculate the key numbers yourself.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here is my campaign data. Was it a success?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a marketing analyst. Below is a made-up results table for
        an influencer campaign (cost, impressions, engagements, clicks,
        orders, revenue for each source). Calculate CPM, CPE, CPA and ROAS
        for each row. Show each formula once. Then add ₹66,000 of other
        costs and give all-in CPA and ROAS. Our gross margin is 50%.
        Compare ROAS with break-even. Do not use EMV as revenue.
        Say which numbers you are unsure about.</code></pre>
          <p>Share only totals by source with the AI. Do not paste customer names, phone numbers or addresses from your order list.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what should Farah do next time?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use the made-up results. Sort each source by what Farah should do in the next campaign.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="scale" data-label="Scale up"></div>
              <div data-sorter-target="bucket" data-bucket="test" data-label="Test again, changed"></div>
              <div data-sorter-target="bucket" data-bucket="drop" data-label="Drop for this goal"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="scale" data-why="The most orders of any creator (58), a low CPA and a ROAS of 2.61, well above break-even 2.0.">Pooja: CPA ₹1,034.5, ROAS 2.61</li>
              <li data-bucket="scale" data-why="A strong fit with the lowest CPA of all creators. Her ROAS of 2.81 was also the best.">Kavya: CPA ₹1,032.3, ROAS 2.81</li>
              <li data-bucket="drop" data-why="A CPA of ₹5,357.1 is far above the ₹2,000 target. For a sales goal, this is the weakest paid creator.">Aanya &amp; Dev: CPA ₹5,357.1, ROAS 0.65</li>
              <li data-bucket="drop" data-why="Only 6 orders. A cooking audience did not buy clothes. The test answered its question.">Riya: 6 orders, ROAS 0.71</li>
              <li data-bucket="test" data-why="The highest ER by reach (13.66%) and a fair CPA. Better briefs or codes could lift sales.">Nano group: ER by reach 13.66%, ROAS 1.75</li>
              <li data-bucket="test" data-why="Organic sales were weak, but her reel may work better as ad content. Test it before paying the same fee again.">Ishita: reach 98,000, CPA ₹3,388.9</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate the metrics for a results table. Then recalculate two rows yourself to check its maths.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketing analyst. Use simple English.

        Made-up influencer results:
        [Source | Cost ₹ | Impressions | Engagements | Clicks | Orders | Revenue ₹
        Tanya | 45,000 | 61,000 | 4,650 | 1,020 | 41 | 1,17,000
        Pooja | 60,000 | 92,300 | 6,800 | 1,450 | 58 | 1,56,600
        Ishita | 1,22,000 | 1,31,000 | 7,200 | 1,180 | 36 | 1,08,000
        Riya | 22,000 | 33,800 | 1,700 | 290 | 6 | 15,600]
        Other costs not in the table: [₹66,000 for gifts, tools and a reshoot].
        Gross margin: [50%].

        Please:
        1. For each row, calculate CPM, CPE, CPC, CTR, conversion rate, CPA and ROAS. Show each formula once, then one table.
        2. Add up the totals. Then give all-in CPA and ROAS including the other costs.
        3. Work out break-even ROAS (1 ÷ gross margin) and compare.
        4. Rank the sources by CPA and suggest one next step for each.
        5. List 3 reasons the tracked sales may be too high or too low.

        Round money to 1 decimal place. Do not use EMV as revenue.</pre>
            <ul class="ai-try-checks">
              <li>Tanya's CPA is ₹1,097.6 and ROAS is 2.60 (with the sample data).</li>
              <li>All-in CPA is ₹3,15,000 ÷ 141 = ₹2,234.0 and all-in ROAS is 1.26.</li>
              <li>Break-even ROAS is 2.0 at a 50% margin.</li>
              <li>EMV is not added to revenue anywhere.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Judge a sales campaign on all-in CPA and ROAS, and compare ROAS with break-even. Engagement and EMV describe attention, not money. Recalculate the AI's numbers, and write down the limits of your tracking.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Long-Term Creator Programmes</h1>
        </div>
        <p class="lc-lead">One campaign gives you one burst of attention. A long-term programme lets the same creators talk about your brand month after month. Their followers start to trust the brand, and the creators learn your products well. In this lesson you will learn three kinds of programme: ambassadors, affiliate programmes and a creator community. You will follow Farah as she plans a six-month programme for Zari &amp; Co after Diwali, with honest numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three columns show three kinds of long-term programme in Farah's made-up plan. Affiliate programme: many nano creators apply and get vetted, earn 8 percent commission per order, get a gifted outfit on approval, and have their own code paid monthly. Ambassadors: 4 micro creators on a 6-month retainer plus 5 percent commission, making 1 reel and 2 stories a month, reviewed at month 3 and month 6. Community: a private group for creators, an early look at new designs, feedback on fit and fabric, and resharing customer posts. An arrow below runs from January 2027 to June 2027: more trust and repeat buyers over time, and every post is still labelled.">
            <defs><marker id="inf12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd">Three kinds of long-term programme (Farah's made-up plan)</text>
              <rect x="20" y="40" width="226" height="190" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="133" y="68" font-size="14" font-weight="700">Affiliate programme</text>
              <text x="133" y="90" fill="#9b99b8">many nano creators</text>
              <text x="133" y="122">Apply, then get vetted</text>
              <text x="133" y="146">8% commission per order</text>
              <text x="133" y="170">Gifted outfit on approval</text>
              <text x="133" y="194">Own code, paid monthly</text>
              <rect x="267" y="40" width="226" height="190" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="68" font-size="14" font-weight="700">Ambassadors</text>
              <text x="380" y="90" fill="#9b99b8">4 micro creators</text>
              <text x="380" y="122">6-month retainer</text>
              <text x="380" y="146">plus 5% commission</text>
              <text x="380" y="170">1 reel + 2 stories a month</text>
              <text x="380" y="194">Review at month 3 and 6</text>
              <rect x="514" y="40" width="226" height="190" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="627" y="68" font-size="14" font-weight="700">Community</text>
              <text x="627" y="90" fill="#9b99b8">creators and customers</text>
              <text x="627" y="122">Private group for creators</text>
              <text x="627" y="146">Early look at new designs</text>
              <text x="627" y="170">Feedback on fit and fabric</text>
              <text x="627" y="194">Reshare customer posts</text>
              <text x="40" y="254" text-anchor="start" fill="#9b99b8">Jan 2027</text>
              <text x="720" y="254" text-anchor="end" fill="#9b99b8">Jun 2027</text>
              <line x1="40" y1="264" x2="716" y2="264" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#inf12a)"/>
              <text x="380" y="288" fill="#9b99b8">More trust and repeat buyers over time. Every post is still labelled.</text>
            </g>
          </svg>
          <figcaption>Most brands mix these three. Ambassadors give steady content, affiliates give reach at low fixed cost, and a community keeps everyone close to the brand.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of programme</h3>
          <table class="lc-table">
            <thead><tr><th>Programme</th><th>How it works</th><th>Good for</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Ambassadors</strong></td><td>A few creators work with you for months. They get a monthly fee (a <strong>retainer</strong>) and often a commission.</td><td>Trust from repeat mentions. Steady content. Easier planning.</td><td>A fixed cost even in slow months. Needs regular reviews.</td></tr>
              <tr><td><strong>Affiliate programme</strong></td><td>Many creators get their own code or link. They earn a commission (a share) on each sale.</td><td>Low fixed cost. You pay mostly when sales happen.</td><td>Codes can leak to coupon sites. You must still vet every creator.</td></tr>
              <tr><td><strong>Community</strong></td><td>A private group for creators and loyal customers. Early access, feedback and resharing their posts.</td><td>Loyalty, product ideas and real customer content.</td><td>Takes time to run. Reshares need the owner's permission.</td></tr>
            </tbody>
          </table>
          <p><strong>The rules do not relax over time.</strong> Every paid, gifted or affiliate post still needs a clear label, such as #ad or "Affiliate", at the start. Long-term creators sometimes forget, because the brand feels like a friend. Check their posts every month.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Farah's ambassador plan</h3>
          <p>The Diwali results showed four micro creators with the lowest CPA. Farah invites Tanya, Meera, Kavya and Pooja to be ambassadors from January to June 2027. All numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Ambassador</th><th>One-off rate per reel ₹</th><th>Monthly retainer ₹</th><th>6-month retainer ₹</th></tr></thead>
            <tbody>
              <tr><td>Tanya</td><td>18,000</td><td>14,000</td><td>84,000</td></tr>
              <tr><td>Meera</td><td>12,000</td><td>9,000</td><td>54,000</td></tr>
              <tr><td>Kavya</td><td>16,000</td><td>12,000</td><td>72,000</td></tr>
              <tr><td>Pooja</td><td>25,000</td><td>19,000</td><td>1,14,000</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>54,000</strong></td><td><strong>3,24,000</strong></td></tr>
            </tbody>
          </table>
          <p>Each month, each ambassador makes 1 reel and 2 stories. The retainer is lower per reel because the work is guaranteed for six months. Each creator also earns 5% commission on her code's sales. The creators agreed to these terms. Farah does not ask for exclusivity, because that would need higher pay.</p>
          <p><strong>Planning maths.</strong> At Diwali, the four made 8 reels and got 152 orders: 19 per reel. January to June is not festive, so Farah plans for half: 9.5 orders per reel.</p>
          <ul class="lc-list">
            <li>Orders: 4 ambassadors × 6 reels × 9.5 = 228 orders. Revenue at ₹2,800 each = ₹6,38,400.</li>
            <li>Cost: retainers ₹3,24,000 + commission ₹31,920 (5% of revenue) + 24 gifted outfits ₹43,200 = ₹3,99,120.</li>
            <li>Planned CPA = ₹3,99,120 ÷ 228 = ₹1,750.5. Planned ROAS = ₹6,38,400 ÷ ₹3,99,120 = 1.60.</li>
          </ul>
          <p>A ROAS of 1.60 is still below break-even (2.0). Farah says this openly. The programme is meant to build repeat buyers. For example, suppose 25% of the 207 Diwali new customers buy once more at ₹2,800. That is about 52 orders and ₹1,45,600 revenue, or ₹72,800 of gross profit. This is an assumption, so she will track real repeat orders.</p>
          <p><strong>Review rule.</strong> At month 3, Farah checks each ambassador's CPA. If it is above ₹2,000 for two months in a row, they agree on changes together. The contract allows either side to end with notice. Ask a lawyer to check the contract, and your accountant about TDS on retainers, commissions and gifts. This is general information, not legal or tax advice.</p>
        </div>
        <div class="lc-card">
          <h3>Affiliate programme and community, with AI help</h3>
          <p>For reach at low fixed cost, Farah opens an affiliate programme for nano creators. Harleen from the Diwali nano group joins first.</p>
          <ul class="lc-list">
            <li><strong>Apply and vet.</strong> Every applicant goes through the same fake-follower and disclosure checks as before. A commission-only deal does not remove the need to vet.</li>
            <li><strong>Simple terms.</strong> 8% commission per order (₹224 on a ₹2,800 order), one gifted outfit after approval, and payment once a month.</li>
            <li><strong>One code and one link each.</strong> Track them the same way as the Diwali campaign, so you can compare.</li>
          </ul>
          <p>AI can help you run the programme. It can suggest monthly content themes, draft a welcome guide, and summarise each creator's monthly numbers. Keep a person in charge of every message to a creator. Do not send automatic mass messages. They feel cold and can break platform rules.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an ambassador programme for my brand.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run marketing for Zari &amp; Co, a made-up ethnic wear brand in Gujarat.
        Draft a one-page welcome guide for 4 ambassadors (January to June 2027).
        Each month: 1 reel and 2 stories. Pay: a monthly retainer plus 5%
        commission, paid on a fixed date. Include: monthly themes (wedding
        season, Holi, summer cotton), the #ad label rule, how to ask for help,
        and the review at month 3. Use a friendly, respectful tone.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: launch the programme in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Farah's steps for starting the ambassador programme in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Review the Diwali results and pick creators with low CPA and strong fit.</li>
              <li data-order="2">Set the programme goal, budget and planned CPA and ROAS.</li>
              <li data-order="3">Offer terms to each creator: retainer, commission, content per month, notice.</li>
              <li data-order="4">Sign contracts with labels, usage rights and payment dates written in.</li>
              <li data-order="5">Share the welcome guide, codes and a monthly content calendar.</li>
              <li data-order="6">Check posts and numbers every month, and review at month 3.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to design a six-month creator programme for your brand. Then check the maths and make sure the pay is fair.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an influencer programme manager for Indian D2C brands. Use simple English.

        Brand: [Zari &amp; Co, a made-up online ethnic wear brand in Gujarat].
        Best creators from the last campaign: [4 micro creators with CPA near ₹1,050].
        Their one-off rates per reel: [₹18,000, ₹12,000, ₹16,000 and ₹25,000].
        Average order value: [₹2,800]. Gross margin: [50%].
        Programme length: [January to June 2027]. Budget: [about ₹4,00,000].

        Please design:
        1. The mix: ambassadors, an affiliate programme and a community. Say who each is for.
        2. Terms for ambassadors: content per month, retainer, commission and notice.
        3. Planning maths: orders, revenue, total cost, CPA and ROAS. Show each step.
        4. A review rule with a clear number that triggers a change.
        5. Five monthly content themes that fit the season.

        Remind me that every post needs an ad label. Say which numbers are assumptions.</pre>
            <ul class="ai-try-checks">
              <li>Total cost includes retainers, commission and gifts, and adds up.</li>
              <li>CPA = cost ÷ orders and ROAS = revenue ÷ cost are correct.</li>
              <li>ROAS is compared with break-even (2.0 at a 50% margin).</li>
              <li>The pay is fair for the work asked, and the label rule is included.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Choose long-term partners from real results, not follower counts. Agree fair terms, plan with honest maths, and review on a fixed date with a clear rule. Trust builds over months, but every post still needs its label.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Creator Content in Ads</h1>
        </div>
        <p class="lc-lead">A good creator reel can reach far more people when you run it as a paid ad. In this lesson you will learn the main ways to use creator content in ads: partnership ads, whitelisting and reusing content on your own page. You will learn what permissions and labels you need. You will also see how Farah tested three creator ads for Zari &amp; Co, and moved money to the winners.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Top: four steps of a partnership ad. The creator posts a labelled reel. The creator allows ads using an ad code or partner access. The brand runs the ad and both names are shown. The brand tests, then moves money to the winners. Bottom: a bar chart of Farah's made-up Diwali ad test. ad_pooja had a ROAS of 3.36 and CPA of 833.3 rupees. ad_tanya had a ROAS of 2.80 and CPA of 1,000 rupees. ad_ishita had a ROAS of 1.79 and CPA of 1,562.5 rupees. A dashed line marks break-even ROAS of 2.0. Only ad_ishita is below it.">
            <defs><marker id="inf13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">How a partnership ad works, and Farah's test (made up)</text>
              <g text-anchor="middle">
                <rect x="20" y="40" width="165" height="54" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="102.5" y="63" font-weight="700">Creator posts</text>
                <text x="102.5" y="83" font-size="11" fill="#9b99b8">labelled reel</text>
                <rect x="205" y="40" width="165" height="54" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="287.5" y="63" font-weight="700">Creator allows ads</text>
                <text x="287.5" y="83" font-size="11" fill="#9b99b8">ad code or partner access</text>
                <rect x="390" y="40" width="165" height="54" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="472.5" y="63" font-weight="700">Brand runs the ad</text>
                <text x="472.5" y="83" font-size="11" fill="#9b99b8">both names shown</text>
                <rect x="575" y="40" width="165" height="54" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="657.5" y="63" font-weight="700">Test, then scale</text>
                <text x="657.5" y="83" font-size="11" fill="#9b99b8">move money to winners</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inf13a)">
                <line x1="187" y1="67" x2="201" y2="67"/>
                <line x1="372" y1="67" x2="386" y2="67"/>
                <line x1="557" y1="67" x2="571" y2="67"/>
              </g>
              <text x="380" y="130" font-size="12" fill="#9b99b8" text-anchor="middle">Diwali test: ₹10,000 per ad for 5 days, then ₹60,000 more, mostly to the best two</text>
              <text x="150" y="171" text-anchor="end">ad_pooja</text>
              <rect x="165" y="152" width="380" height="28" rx="4" fill="#10b981" opacity="0.85"/>
              <text x="555" y="171" font-size="12">ROAS 3.36, CPA ₹833.3</text>
              <text x="150" y="216" text-anchor="end">ad_tanya</text>
              <rect x="165" y="197" width="317" height="28" rx="4" fill="#3b82f6" opacity="0.85"/>
              <text x="492" y="216" font-size="12">ROAS 2.80, CPA ₹1,000</text>
              <text x="150" y="261" text-anchor="end">ad_ishita</text>
              <rect x="165" y="242" width="202" height="28" rx="4" fill="#ec4899" opacity="0.85"/>
              <text x="492" y="261" font-size="12">ROAS 1.79, CPA ₹1,562.5</text>
              <line x1="391" y1="145" x2="391" y2="278" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="391" y="296" font-size="11" fill="#f59e0b" text-anchor="middle">break-even ROAS 2.0</text>
            </g>
          </svg>
          <figcaption>The creator gives permission, the brand runs and tests the ads, then puts more money behind the winners. Ad costs here exclude the usage-rights fees.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three ways to use creator content in ads</h3>
          <table class="lc-table">
            <thead><tr><th>Way</th><th>What it means (in general words)</th><th>What you need</th></tr></thead>
            <tbody>
              <tr><td><strong>Partnership ads</strong></td><td>On Instagram and Facebook, the brand runs a creator's post as an ad. The ad shows both the creator's and the brand's names.</td><td>The creator's permission in the app, for example an ad code for one post, or wider partner access.</td></tr>
              <tr><td><strong>Whitelisting</strong></td><td>An older, general industry word. The creator lets the brand run ads that appear from the creator's own account.</td><td>Written permission and a clear contract. Today this is often done through partnership ad tools.</td></tr>
              <tr><td><strong>Reuse on the brand's page</strong></td><td>The brand posts or advertises the creator's video from its own account.</td><td>Usage rights in the contract: which content, where, and for how long.</td></tr>
            </tbody>
          </table>
          <p>Other platforms have similar tools. YouTube lets brands run creator videos as ads through its creator partnership tools in Google Ads. TikTok calls its version Spark Ads, but TikTok is blocked in India. Names and steps change often, so check each platform's current help pages.</p>
          <p><strong>Why brands do this.</strong> A creator's reel often looks more real than a studio ad. People already trust the creator's face and voice. You can also test several creators and keep the best.</p>
        </div>
        <div class="lc-card">
          <h3>Permissions, rights and labels</h3>
          <p>Before you spend money, get these points in writing:</p>
          <ul class="lc-list">
            <li><strong>Which content.</strong> Name the exact reels. Zari &amp; Co paid for usage rights on Tanya's, Pooja's and Ishita's reels.</li>
            <li><strong>How long.</strong> Zari &amp; Co paid for 60 days of ad use. When the time ends, stop the ads.</li>
            <li><strong>Which platforms,</strong> and whether the ad runs from the creator's handle or the brand's page.</li>
            <li><strong>Edits allowed.</strong> Trimming or adding a caption is usually fine if agreed. Do not change the meaning of what the creator said.</li>
            <li><strong>No AI changes to the person.</strong> Do not use AI to change a creator's face, body, voice or words without clear written consent.</li>
          </ul>
          <p><strong>The ad must still be clearly an ad.</strong> Platforms add labels such as "Sponsored" and show the partnership. Keep the creator's own #ad label in the video or caption too. Every claim in the ad, such as "pure silk", must be true and provable. Ads also bring many new comments. Plan who will answer questions and hide abusive comments.</p>
          <p>The creator can usually remove permission in the app. Talk to them before any change. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Farah's ad test</h3>
          <p>Farah had ₹90,000 for paid partnership ads. She ran a simple test. All numbers are made up.</p>
          <ol class="lc-list">
            <li><strong>Test:</strong> three ads, ₹10,000 each, for the first 5 days. Same audience, same budget, only the creator changes.</li>
            <li><strong>Scale:</strong> the remaining ₹60,000 went ₹25,000 to Pooja, ₹20,000 to Tanya and ₹15,000 to Ishita.</li>
          </ol>
          <table class="lc-table">
            <thead><tr><th>Ad (utm_content)</th><th>Cost ₹</th><th>Impressions</th><th>CTR</th><th>Orders</th><th>Revenue ₹</th><th>CPA ₹</th><th>ROAS</th></tr></thead>
            <tbody>
              <tr><td>ad_pooja</td><td>35,000</td><td>2,35,000</td><td>0.96%</td><td>42</td><td>1,17,600</td><td>833.3</td><td>3.36</td></tr>
              <tr><td>ad_tanya</td><td>30,000</td><td>2,05,000</td><td>0.83%</td><td>30</td><td>84,000</td><td>1,000.0</td><td>2.80</td></tr>
              <tr><td>ad_ishita</td><td>25,000</td><td>1,80,000</td><td>0.64%</td><td>16</td><td>44,800</td><td>1,562.5</td><td>1.79</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>90,000</strong></td><td>6,20,000</td><td>0.82%</td><td>88</td><td>2,46,400</td><td>1,022.7</td><td>2.74</td></tr>
            </tbody>
          </table>
          <p><strong>Read it honestly.</strong> The usage-rights fees (₹31,000) sit in the creator rows, not here. If you add them, the ads cost ₹1,21,000. ROAS falls to 2.04 and CPA rises to ₹1,375. That is still good, but less exciting.</p>
          <p>Ishita's reel did better as an ad (ROAS 1.79) than as her organic post (ROAS 0.89). So her content has value for ads, even though her own post sold little.</p>
          <p><strong>How AI helps.</strong> AI can suggest opening lines for ad captions, draft three caption versions, and summarise daily results. It cannot tell you which ad will win. Only the test can.</p>
          <pre><code>Here are 5 days of made-up results for three creator ads (cost,
        impressions, clicks, orders, revenue). Calculate CTR, CPA and ROAS
        for each. Tell me if 5 days and these order counts are enough to
        decide. Suggest how to split the remaining ₹60,000, and explain why.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: set up a partnership ad</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="check" data-label="Farah checks the contract">Pooja's contract gives Zari &amp; Co 60 days of ad use for her two reels. The reel has #ad at the start and the paid partnership label.</li>
              <li data-kind="user" data-label="Farah asks Pooja">"Could you share the partnership ad code for reel 1, as agreed in our contract? We plan to run it from 18 Oct for up to 60 days."</li>
              <li data-kind="result" data-label="Pooja replies">Pooja turns on the ad code option for that reel in the app and shares the code with Farah.</li>
              <li data-kind="tool" data-label="Ads tool">Farah adds the code in her ads tool. She sets ₹10,000 for 5 days and uses the link with utm_medium=paid_social and utm_content=ad_pooja.</li>
              <li data-kind="warn" data-label="A mistake to catch">The designer suggests using AI to make Pooja look slimmer in the ad. Farah says no. That changes the creator's body without consent and goes against Pooja's size-inclusive message.</li>
              <li data-kind="check" data-label="Day 5 review">ad_pooja has the lowest CPA of the three ads. Farah moves ₹25,000 more to it and puts a reminder to stop all ads on day 60.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a small, fair test of creator content in ads. Then check the permissions and the maths.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a paid social media planner for Indian D2C brands. Use simple English.

        Brand: [Zari &amp; Co, a made-up online ethnic wear brand in Gujarat].
        Creator reels we have ad rights for: [3 reels from 3 fashion creators, 60 days of use].
        Ad budget: [₹90,000]. Average order value: [₹2,800]. Gross margin: [50%].
        Goal: [orders before Diwali, 8 November 2026].

        Please give me:
        1. A test plan: how much per ad, for how many days, and what stays the same.
        2. The numbers to compare (CTR, CPA, ROAS) and the formula for each.
        3. A rule for moving the rest of the budget to the winners.
        4. A permissions checklist to finish before any ad goes live.
        5. Three caption openings for one ad, each with #ad at the start.

        Remind me to include the usage-rights fees when I judge the ads. Do not invent real platform prices.</pre>
            <ul class="ai-try-checks">
              <li>The test budget plus the scale budget adds up to your total.</li>
              <li>Only one thing changes between the test ads.</li>
              <li>The checklist covers content, time limit, platforms and edits.</li>
              <li>Every caption is clearly labelled as an ad.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Creator content can make strong ads, but only with written permission, a clear time limit and a visible ad label. Test a few creators with the same budget, move money to the winners, and count the usage-rights fees when you judge them.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Privacy, Fairness and Ethics</h1>
        </div>
        <p class="lc-lead">An influencer campaign handles real people's data, money and images. Some of those people may be children. In this lesson you will learn four ethical checks: protect creator data, pay fairly, work with diverse creators, and take extra care with children. You will see how Farah applies each check at Zari &amp; Co, and how AI can help or harm. This lesson is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A two by two grid of four checks for an honest, fair campaign. One, creator data and privacy: collect only what you need, keep PAN and bank details safe, never paste them into public AI tools. Two, fair pay and fair treatment: pay the agreed fee on time, pay extra for ad rights and extra work, use the same rules for every creator. Three, diverse creators and less bias: different regions, languages and body types, check AI search results for bias, no skin or body edits in ads. Four, children in content: the child's welfare comes first, written consent from a parent, no tracking or targeting of children.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Four checks for an honest, fair campaign</text>
              <rect x="20" y="40" width="350" height="112" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="36" y="66" font-size="14" font-weight="700">1. Creator data and privacy</text>
              <text x="36" y="90">Collect only what you need</text>
              <text x="36" y="112">Keep PAN and bank details safe</text>
              <text x="36" y="134">Never paste them into public AI tools</text>
              <rect x="390" y="40" width="350" height="112" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="406" y="66" font-size="14" font-weight="700">2. Fair pay and fair treatment</text>
              <text x="406" y="90">Pay the agreed fee on time</text>
              <text x="406" y="112">Pay extra for ad rights and extra work</text>
              <text x="406" y="134">Use the same rules for every creator</text>
              <rect x="20" y="170" width="350" height="112" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="36" y="196" font-size="14" font-weight="700">3. Diverse creators, less bias</text>
              <text x="36" y="220">Regions, languages and body types</text>
              <text x="36" y="242">Check AI search results for bias</text>
              <text x="36" y="264">No skin or body edits in ads</text>
              <rect x="390" y="170" width="350" height="112" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="406" y="196" font-size="14" font-weight="700">4. Children in content</text>
              <text x="406" y="220">The child's welfare comes first</text>
              <text x="406" y="242">Written consent from a parent</text>
              <text x="406" y="264">No tracking or targeting of children</text>
            </g>
          </svg>
          <figcaption>Four checks to run on every campaign plan before it goes live.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>1. Creator data and privacy</h3>
          <p>To run the Diwali campaign, Zari &amp; Co collected creator data. That included names, phone numbers, delivery addresses for gifts, PAN and bank details for payments, and screenshots of audience insights. This is <strong>personal data</strong>: information about a person who can be identified.</p>
          <p>In India, the <strong>Digital Personal Data Protection (DPDP) Act, 2023</strong> covers digital personal data. The <strong>DPDP Rules, 2025</strong> were notified in November 2025. Most duties start in phases, planned over about 18 months. The government has discussed bringing some dates forward, so check the current dates and rules with a lawyer.</p>
          <ul class="lc-list">
            <li><strong>Collect only what you need,</strong> and tell the creator why you need it.</li>
            <li><strong>Limit access.</strong> Only the people who pay creators should see PAN and bank details.</li>
            <li><strong>Delete what you no longer need,</strong> keeping only what the law or your accountant says you must keep.</li>
            <li><strong>Keep it out of public AI tools.</strong> When you ask AI to summarise results, use creator first names and totals only.</li>
            <li><strong>Customers' data stays private.</strong> Tell creators how many orders their code brought. Never share buyer names or phone numbers.</li>
            <li><strong>No scraping of followers.</strong> Do not copy a creator's followers' details to build your own marketing list.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>2. Fair pay and 3. diverse creators</h3>
          <p><strong>Fair pay.</strong> Creators are small businesses. Treat them the way you want suppliers to treat you.</p>
          <ul class="lc-list">
            <li>Write the fee, deliverables and payment date in the contract. Then pay on that date.</li>
            <li>Pay separately for ad use, extra time and exclusivity. Do not ask for "just one more story" for free.</li>
            <li>A gifted-only deal is fine only when the creator chooses it freely. Do not use it to avoid paying for real work.</li>
            <li>Use the same pricing logic for every creator. Base it on work and results, not gender, region, language or body type.</li>
          </ul>
          <p><strong>Fair treatment of rejected creators.</strong> Naina and Sana were removed during vetting. Farah keeps factual notes, such as "38% of audience in India". She does not share rumours or post about them. To each, she says, "Not a fit for this campaign."</p>
          <p><strong>Diverse creators.</strong> AI discovery tools learn from past data. They may favour English content, big cities, fair skin or slim bodies. Farah's shortlist covers Rajasthan, Gujarat, Tamil Nadu, West Bengal, Karnataka, Uttar Pradesh, Maharashtra and Punjab. It includes Hindi, Gujarati and Tamil creators, and Pooja's size-inclusive audience. Pooja's code and link brought 58 orders, the most of any creator. Diversity reached real buyers.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Find me the best-looking fashion influencers.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Review this made-up shortlist of 8 creators (city, language, niche,
        audience). Our buyers are women aged 22 to 40 across India. Which
        regions, languages, ages and body types are missing? Suggest search
        terms to fill the gaps. Do not judge creators on their looks.</code></pre>
        </div>
        <div class="lc-card">
          <h3>4. Children and influencer marketing</h3>
          <p>A parent creator offers Zari &amp; Co a Diwali reel with her 8-year-old daughter in matching outfits. The reel is for adult buyers, but a child appears in it. Farah says yes, with these safeguards:</p>
          <ul class="lc-list">
            <li><strong>Written consent from the parent,</strong> and the child is happy to take part. The parent can stop at any time.</li>
            <li><strong>A short, relaxed shoot.</strong> No school hours, no pressure, no repeated retakes.</li>
            <li><strong>No child's details.</strong> No name, school or location in the post.</li>
            <li><strong>The child does not sell.</strong> No lines like "ask your parents to buy this".</li>
          </ul>
          <p>Know the wider rules in general terms:</p>
          <ul class="lc-list">
            <li>The CCPA's 2022 guidelines on misleading ads have extra conditions for ads aimed at children. For example, ads must not exaggerate a product so that children expect too much.</li>
            <li>Under the DPDP Act, a child is anyone under 18. Processing a child's personal data needs verifiable consent from a parent or guardian. Tracking, behavioural monitoring and targeted ads aimed at children are not allowed, with some exceptions in the Rules.</li>
            <li>ASCI's Code also has rules for ads that involve or target children.</li>
          </ul>
          <p>If your product is for children, get legal advice before you plan the campaign.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fair, or needs fixing?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up practice. Is it fair and safe, or does it need fixing?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fair and safe"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Needs fixing"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fix" data-why="PAN and bank details are sensitive. Keep them out of public AI tools.">The team pastes the creator payment sheet, with PAN numbers, into a free AI chatbot to "tidy it up".</li>
              <li data-bucket="ok" data-why="Sharing totals helps the creator without exposing any customer's data.">Farah tells Meera that MEERA10 brought 22 orders, without any buyer names.</li>
              <li data-bucket="fix" data-why="Extra work needs extra pay. Asking for free content is unfair.">Ask Kavya for two extra stories "as a favour", with no extra pay.</li>
              <li data-bucket="ok" data-why="Written consent, no personal details and no selling lines protect the child.">A reel with a creator's daughter, with written parent consent and no name or school shown.</li>
              <li data-bucket="fix" data-why="Changing a creator's body without consent is dishonest and harmful.">Use AI to lighten a creator's skin tone in the ad version of her reel.</li>
              <li data-bucket="ok" data-why="A diverse shortlist reaches more real buyers and reduces bias.">Check the AI's creator suggestions and add missing regions and languages.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a campaign plan for privacy, fairness and ethics risks. Then decide which fixes you will make.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an ethics reviewer for influencer campaigns in India. Use simple English. This is general guidance, not legal advice.

        My made-up campaign plan:
        [Brand: Zari &amp; Co, an online ethnic wear brand in Gujarat.
        Creators: 7 micro and mid-tier creators and 10 nano creators. Nano creators get ₹4,000 and a gifted outfit.
        We collect creators' phone, address, PAN and bank details in a shared spreadsheet.
        We found creators with an AI tool that ranked "most attractive" profiles first.
        One reel will feature a creator's 8-year-old daughter.
        We plan to reuse all reels in ads "for as long as we like".]

        Please:
        1. List every risk under four headings: creator data, fair pay, diversity and bias, children.
        2. For each risk, give a simple fix I can do this week.
        3. Say which risks need a lawyer or accountant to check.
        4. Give me a 6-point checklist to use before the next campaign.

        Do not quote exact law sections unless you are sure. Tell me to check the current rules.</pre>
            <ul class="ai-try-checks">
              <li>It flags the shared spreadsheet with PAN and bank details.</li>
              <li>It flags open-ended ad use and asks for a clear time limit and fee.</li>
              <li>It flags the "most attractive" ranking as a bias risk.</li>
              <li>It covers parent consent and privacy for the child.</li>
              <li>It does not claim to give legal advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An honest campaign protects the people in it. Keep creator and customer data private, pay fairly for every piece of work, check AI tools for bias, and put a child's welfare above any reel. When the law is unclear, ask a professional.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Capstone: An Influencer Campaign for Zari & Co</h1>
        </div>
        <p class="lc-lead">In this capstone you will bring the whole course together. You will build a full influencer campaign plan and an ROI report, using Farah's "Roshni Edit" Diwali campaign as the model. The plan covers goals, budget, a vetted creator shortlist, a brief and a tracking sheet. The report shows what happened, what it cost and what to do next. You can then use the same steps for your own brand.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Six steps from plan to report for the made-up Roshni Edit campaign. Step 1, goals and budget: 300 orders at a CPA of 2,000 rupees, budget 6,00,000 rupees. Step 2, shortlist and vet: 10 creators checked, Naina and Sana removed. Step 3, brief and contract: brief sent 5 October 2026, hashtag ad plus partnership label. Step 4, track: one code and UTM link each, content live 16 October to 3 November. Step 5, measure: 323 orders, all-in CPA 1,783.3 rupees. Step 6, report and decide: ROAS 1.58 against break-even 2.0, scale micro creators.">
            <defs><marker id="inf15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd">The Roshni Edit capstone: from plan to report (made up)</text>
              <rect x="20" y="40" width="210" height="84" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="125" y="66" font-size="13" font-weight="700">1. Goals and budget</text>
              <text x="125" y="90">300 orders, CPA ₹2,000</text>
              <text x="125" y="110" fill="#9b99b8">Budget ₹6,00,000</text>
              <rect x="275" y="40" width="210" height="84" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="66" font-size="13" font-weight="700">2. Shortlist and vet</text>
              <text x="380" y="90">10 creators checked</text>
              <text x="380" y="110" fill="#9b99b8">Naina and Sana removed</text>
              <rect x="530" y="40" width="210" height="84" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="635" y="66" font-size="13" font-weight="700">3. Brief and contract</text>
              <text x="635" y="90">Brief sent 5 Oct 2026</text>
              <text x="635" y="110" fill="#9b99b8">#ad + partnership label</text>
              <rect x="530" y="170" width="210" height="84" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="635" y="196" font-size="13" font-weight="700">4. Track</text>
              <text x="635" y="220">One code + UTM link each</text>
              <text x="635" y="240" fill="#9b99b8">Live 16 Oct to 3 Nov</text>
              <rect x="275" y="170" width="210" height="84" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="196" font-size="13" font-weight="700">5. Measure</text>
              <text x="380" y="220">323 orders</text>
              <text x="380" y="240" fill="#9b99b8">All-in CPA ₹1,783.3</text>
              <rect x="20" y="170" width="210" height="84" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="125" y="196" font-size="13" font-weight="700">6. Report and decide</text>
              <text x="125" y="220">ROAS 1.58 vs break-even 2.0</text>
              <text x="125" y="240" fill="#9b99b8">Scale micro creators</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inf15a)">
                <line x1="232" y1="82" x2="271" y2="82"/>
                <line x1="487" y1="82" x2="526" y2="82"/>
                <line x1="635" y1="126" x2="635" y2="166"/>
                <line x1="528" y1="212" x2="489" y2="212"/>
                <line x1="273" y1="212" x2="234" y2="212"/>
              </g>
            </g>
          </svg>
          <figcaption>The capstone follows six steps. The top row is the plan. The bottom row is the work during and after the campaign.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Part 1: the campaign plan</h3>
          <p>Here is Farah's one-page plan in short. All names and numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>Farah's plan for the Roshni Edit</th></tr></thead>
            <tbody>
              <tr><td>Goals</td><td>Main: 300 orders from creator codes and links. Also: 4,31,000 planned organic reach, and at least 60% of orders from new customers.</td></tr>
              <tr><td>Targets</td><td>CPA ₹2,000 (₹6,00,000 ÷ 300). Planned ROAS 1.4 (₹8,40,000 ÷ ₹6,00,000). Break-even ROAS 2.0 at a 50% margin. The founder accepts that first orders will not pay back the spend.</td></tr>
              <tr><td>Budget</td><td>₹6,00,000: creator fees ₹4,20,000 (70%), gifted outfits ₹36,000 (6%), paid partnership ads ₹90,000 (15%), tools ₹18,000 (3%), contingency ₹36,000 (6%).</td></tr>
              <tr><td>Shortlist and vetting</td><td>Longlist of 10. Removed Naina (fake-follower pattern: +92,000 followers in 4 days, reach 2.9% of followers, only 38% of audience in India) and Sana (engagement pod and unlabelled ads). Chosen: Tanya, Meera, Kavya, Pooja, Ishita, Aanya &amp; Dev, Riya (a test) and a nano group of 10 led by Harleen.</td></tr>
              <tr><td>Brief and contract</td><td>Brief sent 5 Oct 2026. Each deliverable is 1 reel and 2 stories with a link sticker. #ad at the start plus the paid partnership label. Claims checked. 60 days of ad use for Tanya, Pooja and Ishita.</td></tr>
              <tr><td>Timeline</td><td>Content live 16 Oct to 3 Nov 2026. Last order date for Diwali delivery 1 Nov. Codes valid 16 Oct to 10 Nov. Diwali is Sunday 8 Nov 2026.</td></tr>
              <tr><td>Tracking</td><td>One 10% code per creator (TANYA10, MEERA10 and so on; ROSHNI-HARLEEN and ROSHNI-N02 to N10 for nano creators). One UTM link each, for example <code>utm_campaign=diwali26_roshni&amp;utm_content=tanya_reel1</code> on zariandco.example.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Part 2: the ROI report</h3>
          <p>A good report fits on one page. It starts with the answer, shows the numbers, and ends with decisions. Here is Farah's, using a template you can copy.</p>
          <pre><code>ROSHNI EDIT, DIWALI 2026: RESULTS (made-up data)

        1. Summary
           323 orders (target 300). All-in CPA ₹1,783.3 (target ₹2,000).
           All-in ROAS 1.58 (plan 1.4, break-even 2.0).
           64.1% of orders from new customers (goal 60%).

        2. Spend
           Media ₹5,10,000 + gifts ₹36,000 + tools ₹18,000
           + reshoot ₹12,000 = ₹5,76,000. Unspent: ₹24,000.

        3. What worked
           Tanya, Meera, Kavya, Pooja: CPA ₹1,032 to ₹1,098, ROAS 2.43 to 2.81.
           Paid partnership ads: CPA ₹1,022.7 (before usage fees).

        4. What did not
           Ishita CPA ₹3,388.9, Aanya &amp; Dev ₹5,357.1: reach, few sales.
           Riya: 6 orders. Cooking audience did not buy clothes.

        5. The honest gap
           Gross profit ₹4,55,500 vs spend ₹5,76,000: ₹1,20,500 short
           on first orders. We need repeat buyers to recover this.

        6. Limits of the data
           Last-click codes and links only. Reach is not unique people.
           EMV (₹18,40,000, tool estimate) is not revenue.

        7. Next steps
           Ambassador programme with the 4 best micro creators.
           Use big-name reels as ad content. Stop cooking creators for fashion.</code></pre>
          <p>Every number above comes from the made-up results table and was recalculated by hand. Do the same with yours.</p>
        </div>
        <div class="lc-card">
          <h3>Part 3: check before you send</h3>
          <ul class="lc-list">
            <li><strong>Numbers.</strong> Recalculate CPA and ROAS in a spreadsheet. Make sure the budget lines add up. Use all-in spend, not only creator fees.</li>
            <li><strong>Honesty.</strong> Show the break-even gap. Keep EMV apart from revenue. Say what the tracking cannot see.</li>
            <li><strong>Disclosure proof.</strong> Keep a screenshot of each post showing the #ad label and the partnership label.</li>
            <li><strong>Privacy.</strong> No customer names, phone numbers or creator PAN details in the report or in any AI chat.</li>
            <li><strong>Fairness.</strong> Every creator was paid the agreed fee on the agreed date.</li>
            <li><strong>Not advice.</strong> Legal and tax points in your plan are general. A lawyer or chartered accountant must check your case.</li>
          </ul>
          <p>AI can draft the plan and the report quickly. You still own every number, claim and decision in them.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Farah writes the report with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">Farah exports totals by source: cost, reach, impressions, engagements, clicks, orders and revenue. She removes all customer details.</li>
              <li data-kind="user" data-label="Farah's prompt">"Here is our made-up results table and ₹66,000 of other costs. Calculate CPA and ROAS per source and all-in. Compare with break-even ROAS 2.0. Draft a one-page report with 7 sections."</li>
              <li data-kind="answer" data-label="AI draft">The AI drafts the report. It says "All-in ROAS 1.79" and adds "EMV ROAS 3.19: an excellent result".</li>
              <li data-kind="warn" data-label="Two mistakes">1.79 is the media-only ROAS. All-in ROAS is ₹9,11,000 ÷ ₹5,76,000 = 1.58. The "EMV ROAS" treats a tool estimate as revenue, so Farah deletes it.</li>
              <li data-kind="check" data-label="Farah checks">She recalculates every figure in her spreadsheet. She adds the ₹1,20,500 break-even gap and the tracking limits.</li>
              <li data-kind="result" data-label="Sent">The founder gets a one-page report with the true numbers and three clear next steps.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a full campaign plan and ROI report for your own brand. Replace the brackets with your details, or use the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an influencer campaign manager in India. Use simple English.

        Brand: [Sweet Crumbs, a made-up bakery in Maharashtra; owner Anjali].
        Campaign: [Diwali gift hampers, ₹1,200 each; sell online in Maharashtra].
        Budget: [₹1,50,000]. Gross margin: [40%].
        Made-up results after the campaign:
        [Creator A (food, 25K followers): cost ₹30,000, 38 orders
        Creator B (lifestyle, 1.2L followers): cost ₹60,000, 21 orders
        Nano group of 5: cost ₹20,000, 30 orders
        Paid partnership ads: cost ₹25,000, 45 orders
        Gifts and tools: ₹9,000]

        Please write:
        1. A one-page plan: main goal, target CPA and ROAS, break-even ROAS, budget split, creator vetting checks, brief points with the #ad rule, and a tracking sheet layout (codes and UTM links).
        2. A one-page ROI report: CPA and ROAS per source and all-in, the break-even gap, what worked, tracking limits and 3 next steps.

        Show each formula once. Do not treat EMV as revenue.</pre>
            <ul class="ai-try-checks">
              <li>All-in spend is ₹1,44,000, all-in CPA is about ₹1,074.6 and all-in ROAS is about 1.12 (with the sample).</li>
              <li>Break-even ROAS is 2.5 at a 40% margin.</li>
              <li>Creator B has the highest CPA (about ₹2,857.1).</li>
              <li>The plan includes ad labels, vetting and a tracking sheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A strong influencer campaign is a chain: clear goals, a vetted shortlist, an honest brief, clean tracking and a truthful report. AI speeds up every link. You check every number, every label and every claim before anyone else sees them.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

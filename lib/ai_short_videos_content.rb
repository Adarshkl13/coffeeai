module AiShortVideosContent
  # Units (sidebar dividers): 1–4 Short Video Basics · 5–9 Scripts, Filming and Editing · 10–14 Posting and Growing · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">How Short Video Platforms Work</h1>
        </div>
        <p class="lc-lead">Instagram Reels and YouTube Shorts are short, vertical videos that people watch in a feed. They swipe up to see the next one. Most viewers do not follow you yet, so every video must win a stranger's attention in a few seconds. In this lesson, you will learn how these feeds work in general. You will also learn the numbers that tell you if a video worked: views, watch time, completion rate, shares, saves and follows. You need these numbers before AI can help you in a useful way.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A flow: you post a Reel or Short. The app shows it to a few people, both followers and new people. Viewers watch to the end, watch again, share, save, follow or swipe away. When many people keep watching and sharing, more people can see it. When most swipe away, reach slows down.">
            <defs><marker id="sv1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="40" width="150" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="95" y="68" font-weight="700">You post</text>
              <text x="95" y="88" font-size="11" fill="#9b99b8">a Reel or a Short</text>
              <rect x="210" y="40" width="170" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="295" y="68" font-weight="700">Shown to a few</text>
              <text x="295" y="88" font-size="11" fill="#9b99b8">followers + new people</text>
              <rect x="420" y="20" width="320" height="150" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="580" y="44" font-weight="700">What viewers do</text>
              <g text-anchor="start" font-size="12.5">
                <text x="440" y="72" fill="#6ee7b7">Watch to the end</text>
                <text x="600" y="72" fill="#6ee7b7">Watch again</text>
                <text x="440" y="100" fill="#6ee7b7">Share or save</text>
                <text x="600" y="100" fill="#6ee7b7">Follow you</text>
                <text x="440" y="128" fill="#fca5a5">Swipe away fast</text>
                <text x="600" y="128" fill="#fcd34d">Like or comment</text>
              </g>
              <text x="580" y="156" font-size="11" fill="#9b99b8">the app notices these actions</text>
              <rect x="420" y="205" width="150" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="495" y="232" font-weight="700" fill="#6ee7b7">More people</text>
              <text x="495" y="252" font-size="11" fill="#9b99b8">can see it</text>
              <rect x="590" y="205" width="150" height="64" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="665" y="232" font-weight="700" fill="#f9a8d4">Reach slows</text>
              <text x="665" y="252" font-size="11" fill="#9b99b8">most swiped away</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sv1a)">
                <line x1="172" y1="72" x2="206" y2="72"/>
                <line x1="382" y1="72" x2="416" y2="72"/>
                <line x1="495" y1="172" x2="495" y2="201"/>
                <line x1="665" y1="172" x2="665" y2="201"/>
                <path d="M418,237 L295,237 L295,108" stroke-dasharray="5 4"/>
              </g>
              <text x="355" y="228" font-size="11" fill="#9b99b8">shown more</text>
              <text x="380" y="292" font-size="11" fill="#9b99b8">Apps describe these signals only in general words. Check their current help pages.</text>
            </g>
          </svg>
          <figcaption>A short video is shown to a small group first. What those viewers do helps decide if more people see it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Reels, Shorts and similar apps</h3>
          <p>A <strong>feed</strong> is the endless list of videos you swipe through. On Reels and Shorts, the app picks the next video for you. It can pick a video from someone you do not follow. This is why a small account can reach thousands of people with one good video.</p>
          <table class="lc-table">
            <thead><tr><th>App</th><th>Where people watch</th><th>Length in general</th></tr></thead>
            <tbody>
              <tr><td><strong>Instagram Reels</strong></td><td>The Reels tab, the main feed, Explore, your profile</td><td>Many accounts can make Reels of up to 3 minutes in the app. Some accounts can post longer Reels.</td></tr>
              <tr><td><strong>YouTube Shorts</strong></td><td>The Shorts feed, your channel, search results</td><td>Vertical or square videos up to 3 minutes count as Shorts (since October 2024).</td></tr>
              <tr><td><strong>Facebook Reels and similar apps</strong></td><td>Their own short video feeds</td><td>Each app has its own limits</td></tr>
            </tbody>
          </table>
          <p>Length limits, music rules and features change often. Check the app's current help pages before you plan a series. Also remember: the limit is not a target. Short videos of 15 to 45 seconds are a good place to start. Your own numbers will tell you what works for you.</p>
        </div>
        <div class="lc-card">
          <h3>The numbers that tell you if a video worked</h3>
          <p>Both apps show insights (the numbers about each video). The names differ a little between apps. Here are the ones you will use in this course.</p>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>What it means</th><th>What it tells you</th></tr></thead>
            <tbody>
              <tr><td><strong>Views</strong></td><td>How many times the video was played. Each app counts views in its own way.</td><td>How far it travelled</td></tr>
              <tr><td><strong>Average watch time</strong></td><td>Total watch time divided by views</td><td>How long a typical person stayed</td></tr>
              <tr><td><strong>Average % viewed</strong></td><td>Average watch time divided by the video length</td><td>Fair way to compare long and short videos</td></tr>
              <tr><td><strong>Completion rate</strong></td><td>The share of views that reached the end. You can read it at the last second of the retention graph (the line showing how many people are still watching).</td><td>Did the video keep its promise?</td></tr>
              <tr><td><strong>Shares and saves</strong></td><td>People sent it to someone, or kept it for later</td><td>It was useful or fun enough to pass on</td></tr>
              <tr><td><strong>Follows</strong></td><td>New followers or subscribers who came from this video</td><td>People want more from you</td></tr>
            </tbody>
          </table>
          <p><strong>Worked example (made-up numbers).</strong> Sweet Crumbs is a small bakery in Maharashtra. The owner is Anjali, and her helper Diya films the videos. Compare two of their Reels:</p>
          <table class="lc-table">
            <thead><tr><th>Reel</th><th>Length</th><th>Views</th><th>Avg watch time</th><th>Avg % viewed</th><th>Completion</th><th>Shares</th><th>Follows</th></tr></thead>
            <tbody>
              <tr><td>Meet Anjali: why I started Sweet Crumbs</td><td>45 s</td><td>1,200</td><td>9.0 s</td><td>20%</td><td>8%</td><td>3</td><td>5</td></tr>
              <tr><td>Plain sponge to rasmalai cake</td><td>18 s</td><td>7,400</td><td>13.1 s</td><td>73%</td><td>55%</td><td>140</td><td>62</td></tr>
            </tbody>
          </table>
          <p>Check the maths: 9.0 ÷ 45 = 0.20, so 20%. And 13.1 ÷ 18 = 0.73, so 73%. To compare shares fairly, use shares per 1,000 views: 140 ÷ 7,400 × 1,000 = 18.9. The first Reel gets 3 ÷ 1,200 × 1,000 = 2.5. The cake Reel was shorter, showed the result early and gave people something to share.</p>
        </div>
        <div class="lc-card">
          <h3>What this means for your videos</h3>
          <ul class="lc-list">
            <li><strong>Strangers come first.</strong> Most viewers do not know you. The video must make sense without your profile or your last post.</li>
            <li><strong>The first seconds decide a lot.</strong> If people swipe away at once, the rest of your video does not matter.</li>
            <li><strong>Useful or fun gets shared.</strong> A share brings new viewers who trust the friend who sent it.</li>
            <li><strong>Never buy views or followers.</strong> Fake numbers break the apps' rules. They also fill your account with people who will never buy.</li>
          </ul>
          <p>Nobody outside the apps knows the exact ranking rules. Be careful with any tip that claims a secret "algorithm hack". This includes tips from AI.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How do I beat the Instagram algorithm?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run a small bakery in Maharashtra. Here are the numbers for my last 2 Reels:
        Reel A: 45 s, 1,200 views, average watch time 9.0 s, 3 shares, 5 follows.
        Reel B: 18 s, 7,400 views, average watch time 13.1 s, 140 shares, 62 follows.
        Work out average % viewed and shares per 1,000 views for each.
        Show your maths. Then give 3 possible reasons why B did better.
        Do not claim any secret algorithm rules. Say what I should test next.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Diya reads her Reel insights</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Diya opens insights">Diya opens Instagram on her phone. She taps the rasmalai cake Reel, then taps "View insights".</li>
              <li data-kind="result" data-label="What the app shows">Views 7,400. Average watch time 13.1 seconds. Likes 610, shares 140, saves 185, follows 62. The retention graph ends at about 55%.</li>
              <li data-kind="check" data-label="Diya checks the maths">The Reel is 18 seconds long. 13.1 ÷ 18 = 0.73, so people watched 73% of it on average. 55% of views reached the end.</li>
              <li data-kind="user" data-label="Diya asks AI">"Here are the numbers for my best and worst Reels. Explain in simple words why the cake Reel did better. Show your maths."</li>
              <li data-kind="answer" data-label="AI replies">The cake Reel was shorter. It showed the change from plain to decorated at once. The Meet Anjali Reel started with a long hello, and most people left before the story began.</li>
              <li data-kind="warn" data-label="A claim to catch">The AI also says: "Always post at 7 pm, because the algorithm favours evening posts." It gives no source. Diya does not trust this. She will test posting times with her own numbers.</li>
              <li data-kind="check" data-label="Diya writes one lesson">Her note for Anjali: "Show the cake in the first second. Keep it under 30 seconds. Try this for the next 3 videos."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste the numbers from your last three short videos and ask AI to compare them. If you have no videos yet, send the prompt as it is and study the example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a short video coach for small creators and businesses in India. Use simple English.

        My account: [Sweet Crumbs, a bakery in Maharashtra, 2,340 Instagram followers]
        My goal: [more cake orders from people who watch my Reels]

        My last 3 videos:
        [1) Meet Anjali: 45 s long, 1,200 views, average watch time 9.0 s, 3 shares, 2 saves, 5 follows
        2) Plain sponge to rasmalai cake: 18 s, 7,400 views, average watch time 13.1 s, 140 shares, 185 saves, 62 follows
        3) 5 cakes under 600 rupees: 30 s, 2,900 views, average watch time 12.0 s, 60 shares, 95 saves, 14 follows]

        Please:
        1. Make a table with average % viewed (average watch time / length) and shares, saves and follows per 1,000 views. Show the maths for one row.
        2. Name the strongest and weakest video, and give 2 likely reasons for each.
        3. Suggest one small change to test in my next video.

        Rules: Do not invent algorithm rules or statistics. If something is only a guess, say "guess".</pre>
            <ul class="ai-try-checks">
              <li>Redo one calculation yourself. For example, 13.1 ÷ 18 should give about 73%.</li>
              <li>Did the AI compare videos per 1,000 views, not only by total views?</li>
              <li>Did it avoid "secret algorithm" claims and fixed posting times?</li>
              <li>Is the suggested change small enough to test in one video?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Short video feeds show your work to strangers first. What those strangers do (watch, share, save, follow or swipe away) matters more than your follower count. Learn to read these numbers yourself, and compare videos fairly with percentages and "per 1,000 views".
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Where AI Helps with Short Videos</h1>
        </div>
        <p class="lc-lead">Making one good Reel or Short takes many small jobs: an idea, a hook, a script, a shot list, filming, editing, captions and posting. AI can save you time in most of them. It is quick with lists, first drafts and captions. But it cannot taste your cake, stand in your kitchen or know your customers. In this lesson, you will see which jobs to give AI, which jobs to keep, and the risks to watch for.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Eight steps to make a short video, in two rows: ideas, hook, script, shot list, film, edit, captions, post and review. Ideas, hook, script and captions are marked AI drafts, you choose. Shot list, edit and post and review are marked AI helps, you check. Film is marked you do it.">
            <defs><marker id="sv2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="150" height="76" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="95" y="46" font-weight="700">1 Ideas</text>
              <text x="95" y="66" font-size="11" fill="#9b99b8">AI: a long list</text>
              <text x="95" y="82" font-size="11" fill="#9b99b8">you: pick 3</text>
              <rect x="210" y="20" width="150" height="76" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="46" font-weight="700">2 Hook</text>
              <text x="285" y="66" font-size="11" fill="#9b99b8">AI: 10 options</text>
              <text x="285" y="82" font-size="11" fill="#9b99b8">you: pick a true one</text>
              <rect x="400" y="20" width="150" height="76" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="475" y="46" font-weight="700">3 Script</text>
              <text x="475" y="66" font-size="11" fill="#9b99b8">AI: first draft</text>
              <text x="475" y="82" font-size="11" fill="#9b99b8">you: your words</text>
              <rect x="590" y="20" width="150" height="76" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="665" y="46" font-weight="700">4 Shot list</text>
              <text x="665" y="66" font-size="11" fill="#9b99b8">AI: list of shots</text>
              <text x="665" y="82" font-size="11" fill="#9b99b8">you: fit your space</text>
              <rect x="20" y="150" width="150" height="76" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="95" y="176" font-weight="700">5 Film</text>
              <text x="95" y="196" font-size="11" fill="#9b99b8">you: real product,</text>
              <text x="95" y="212" font-size="11" fill="#9b99b8">real people</text>
              <rect x="210" y="150" width="150" height="76" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="285" y="176" font-weight="700">6 Edit</text>
              <text x="285" y="196" font-size="11" fill="#9b99b8">AI: cuts, clean sound</text>
              <text x="285" y="212" font-size="11" fill="#9b99b8">you: watch it all</text>
              <rect x="400" y="150" width="150" height="76" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="475" y="176" font-weight="700">7 Captions</text>
              <text x="475" y="196" font-size="11" fill="#9b99b8">AI: auto captions</text>
              <text x="475" y="212" font-size="11" fill="#9b99b8">you: fix every error</text>
              <rect x="590" y="150" width="150" height="76" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="665" y="176" font-weight="700">8 Post + review</text>
              <text x="665" y="196" font-size="11" fill="#9b99b8">AI: explain numbers</text>
              <text x="665" y="212" font-size="11" fill="#9b99b8">you: decide next</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sv2a)">
                <line x1="172" y1="58" x2="206" y2="58"/>
                <line x1="362" y1="58" x2="396" y2="58"/>
                <line x1="552" y1="58" x2="586" y2="58"/>
                <path d="M665,98 L665,120 L95,120 L95,146"/>
                <line x1="172" y1="188" x2="206" y2="188"/>
                <line x1="362" y1="188" x2="396" y2="188"/>
                <line x1="552" y1="188" x2="586" y2="188"/>
              </g>
              <g font-size="11.5" text-anchor="start">
                <rect x="40" y="254" width="14" height="14" rx="3" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="62" y="265">AI drafts, you choose</text>
                <rect x="280" y="254" width="14" height="14" rx="3" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="302" y="265">AI helps, you check</text>
                <rect x="510" y="254" width="14" height="14" rx="3" fill="#1f1f44" stroke="#10b981"/>
                <text x="532" y="265">You do it</text>
              </g>
            </g>
          </svg>
          <figcaption>AI helps in almost every step. You still choose, film, check and decide.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Jobs AI does well, and what you still do</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>How AI helps</th><th>What you must still do</th></tr></thead>
            <tbody>
              <tr><td>Ideas</td><td>Lists 20 ideas from your menu, your customers' questions or a festival</td><td>Pick ideas you can film this week, with your real products</td></tr>
              <tr><td>Hooks</td><td>Writes 10 opening lines in different styles, also in Hinglish</td><td>Pick one that is true. The video must keep the promise.</td></tr>
              <tr><td>Scripts</td><td>Turns an idea into a 20-second script with beats (small moments)</td><td>Rewrite it in your own words, so it sounds like you</td></tr>
              <tr><td>Shot list</td><td>Lists the shots to film, including B-roll (extra shots such as hands, close-ups and the shop front)</td><td>Check it fits your kitchen, your light and your time</td></tr>
              <tr><td>Editing tools</td><td>Apps such as Instagram Edits, Descript or Premiere Pro can cut silences, add captions and clean up voice</td><td>Watch the full edit. Auto tools sometimes cut the wrong part.</td></tr>
              <tr><td>Captions and post text</td><td>Writes the on-screen text, post caption and hashtags</td><td>Fix spelling, prices and names. Auto captions often get Indian names and Hinglish wrong.</td></tr>
              <tr><td>Reviewing numbers</td><td>Explains your insights and suggests what to test</td><td>Check the maths and make the final decision</td></tr>
            </tbody>
          </table>
          <p>Editing apps change their AI features often. Check each tool's current help pages for what it can do today.</p>
        </div>
        <div class="lc-card">
          <h3>Give AI a brief, not one line</h3>
          <p>A <strong>brief</strong> is a short note with the facts AI needs: who you are, who watches, the goal and your rules. Without it, AI writes the same ideas it gives everyone.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me viral Reel ideas for a bakery.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You help Sweet Crumbs, a small bakery in Maharashtra. Owner: Anjali.
        Viewers: working people and parents in Maharashtra who order birthday cakes.
        Goal: more cake orders on WhatsApp before Christmas 2026.
        What works for us: before-and-after cake videos under 20 seconds.
        What fails: videos that start with "Hi everyone".
        We can film: our kitchen, cake decorating, the shop counter.
        Give 10 Reel ideas. For each: the first 2 seconds on screen,
        a one-line hook, and the format. Only use products we make.
        Anjali speaks in Hinglish, so give 3 hooks in Hinglish too.</code></pre>
          <p>The better prompt gives the business, the viewers, the goal, what worked before and the limits. You will get ideas you can film tomorrow.</p>
        </div>
        <div class="lc-card">
          <h3>Risks to watch for</h3>
          <ul class="lc-list">
            <li><strong>Everyone sounds the same.</strong> Many creators ask AI for the same hooks. Add your own stories, words and jokes.</li>
            <li><strong>Wrong facts.</strong> AI can invent health claims ("sugar-free and good for diabetics"), prices or dates. Check every claim.</li>
            <li><strong>Fake product shots.</strong> Do not show an AI-made cake as if you baked it. Customers will expect the cake they saw.</li>
            <li><strong>Faces and voices.</strong> Do not copy a real person's face or voice with AI. You need their clear permission, and some uses are never allowed.</li>
            <li><strong>Private data.</strong> Do not paste customer names, phone numbers or WhatsApp chats into a public AI tool. Remove personal details first.</li>
            <li><strong>Burnout.</strong> AI makes it easy to plan 30 videos. Plan only what you can film well.</li>
          </ul>
          <p>Riya, a home-cooking creator in Maharashtra with the channel "Tiffin Tales", uses AI for lists and first drafts. She always rewrites scripts in her own Marathi-English mix. Her viewers come back for her voice, not for AI's voice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one Reel, made with AI help</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Diya's steps for one Sweet Crumbs Reel in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write a short brief: goal, viewers, product and rules</li>
              <li data-order="2">Ask AI for 15 ideas, then pick 3 that she can film this week</li>
              <li data-order="3">Ask AI for hooks for the best idea, and pick one that is true</li>
              <li data-order="4">Ask AI for a 20-second script, then rewrite it in Anjali's words</li>
              <li data-order="5">Film the real cake, using a shot list</li>
              <li data-order="6">Edit with auto captions, then fix every caption error</li>
              <li data-order="7">Post it, then check the numbers after a few days</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use this prompt to get 10 video ideas you can really film. Change the brackets to your own business or channel.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a short video producer who helps small Indian brands and creators. Use simple English.

        About me: [Sweet Crumbs, a small bakery in Maharashtra. Owner Anjali, helper Diya films on a phone.]
        My viewers: [working people and parents in Maharashtra who order birthday cakes]
        My goal for the next month: [more cake orders on WhatsApp]
        What I can film: [our kitchen, cake decorating, the shop counter, happy customers who agree to be filmed]
        What worked before: [before-and-after cake videos under 20 seconds]
        What did not work: [videos that start with a long hello]

        Give me 10 short video ideas as a table with these columns:
        Idea | Format (tutorial, before-and-after, list, story, trend or talking head) | What is on screen in the first 2 seconds | Hook line (under 12 words) | Why it fits my goal

        Rules:
        - Only use real products and real scenes I listed. No AI-made product shots.
        - No health claims, fake prices or made-up customer reviews.
        - Mark with * any idea that needs a person's permission to film.</pre>
            <ul class="ai-try-checks">
              <li>Can you film every idea this week with what you have?</li>
              <li>Does the first 2 seconds show something interesting, not a hello?</li>
              <li>Did the AI avoid claims you cannot prove, such as "healthiest cake in town"?</li>
              <li>Would you say these hook lines in your own voice? Rewrite any that sound robotic.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI make the lists and first drafts. You bring the real product, the real place, your own voice and the final check. A good brief (who, for whom, goal, rules) turns generic AI ideas into videos you can film tomorrow.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Rules for Short Video Creators</h1>
        </div>
        <p class="lc-lead">A short video can break a rule in a few seconds: a song you do not have rights to, an AI face that looks real, or a free gift you did not mention. The result can be a muted video, a copyright claim, a removed post or a complaint. In this lesson, you will learn four areas to check before you post: music, AI labels, ad disclosure and people's likeness (their face and voice). This is general education, not legal advice. Rules change, so check the platform's current help pages.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A check before posting with four questions. Using a song? Use the app's music library or music you have rights to. Realistic AI face, voice or scene? Turn on the platform's AI label. Money, free gift or discount from a brand? Add an ad label upfront. A real person's face or voice? Get their permission and never fake a celebrity.">
            <defs><marker id="sv3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="170" y="18" font-size="11.5" fill="#9b99b8">Before you post, ask:</text>
              <text x="560" y="18" font-size="11.5" fill="#9b99b8">If yes, do this:</text>
              <rect x="20" y="30" width="300" height="54" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="170" y="62">Using a song or sound?</text>
              <rect x="380" y="30" width="360" height="54" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="560" y="53" font-size="12">Use the app's music library, or</text>
              <text x="560" y="71" font-size="12">music you have the rights to</text>
              <rect x="20" y="96" width="300" height="54" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="170" y="128">Realistic AI face, voice or scene?</text>
              <rect x="380" y="96" width="360" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="560" y="119" font-size="12">Turn on the app's AI label when posting</text>
              <text x="560" y="137" font-size="12">(Meta "AI info", YouTube altered content)</text>
              <rect x="20" y="162" width="300" height="54" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="170" y="194">Money, gift or discount from a brand?</text>
              <rect x="380" y="162" width="360" height="54" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="560" y="185" font-size="12">Add a clear ad label, such as #Ad,</text>
              <text x="560" y="203" font-size="12">at the start, where nobody can miss it</text>
              <rect x="20" y="228" width="300" height="54" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="170" y="260">A real person's face or voice?</text>
              <rect x="380" y="228" width="360" height="54" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="560" y="251" font-size="12">Get their permission first.</text>
              <text x="560" y="269" font-size="12">Never fake a celebrity or a customer.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sv3a)">
                <line x1="322" y1="57" x2="376" y2="57"/>
                <line x1="322" y1="123" x2="376" y2="123"/>
                <line x1="322" y1="189" x2="376" y2="189"/>
                <line x1="322" y1="255" x2="376" y2="255"/>
              </g>
              <g font-size="10.5" fill="#9b99b8">
                <text x="349" y="51">yes</text><text x="349" y="117">yes</text><text x="349" y="183">yes</text><text x="349" y="249">yes</text>
              </g>
            </g>
          </svg>
          <figcaption>Four quick questions to ask before every post. Each "yes" has a clear action.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>1. Music and sounds</h3>
          <p>Songs are protected by copyright (the legal right of the owner to control copies). A song on your phone is not free to use in a video. In India, the Copyright Act, 1957 allows "fair dealing" only for narrow uses such as review or reporting. A song playing under a cake ad is not one of them.</p>
          <ul class="lc-list">
            <li><strong>Use the app's own music library.</strong> Instagram and YouTube have licences for songs inside their apps. Add music there, not in an outside editor.</li>
            <li><strong>Business accounts may see fewer songs.</strong> On Instagram, business accounts usually get a smaller library of music cleared for commercial use. Sweet Crumbs is a business, so Diya uses that library or original audio.</li>
            <li><strong>Shorts have song limits.</strong> In a Short of up to 3 minutes, most library songs can play for up to 90 seconds. Some tracks have shorter limits. Check YouTube's current help pages.</li>
            <li><strong>Copyright claims.</strong> On YouTube, Content ID (the system that finds copyrighted audio) can block a Short or send its earnings to the owner. YouTube has changed its rules for claims on longer Shorts over time, so check the current YouTube Help pages before you use music you do not own.</li>
            <li><strong>The safest sound is your own.</strong> A voiceover, kitchen sounds or royalty-free music with a clear licence (for example, from the YouTube Audio Library).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>2. AI labels</h3>
          <p>Platforms want viewers to know when realistic content was made or changed with AI. The rules focus on content that could fool a viewer.</p>
          <table class="lc-table">
            <thead><tr><th>Platform</th><th>What it asks, in general</th></tr></thead>
            <tbody>
              <tr><td><strong>YouTube</strong></td><td>When you upload in YouTube Studio, disclose "altered or synthetic content" if the video looks real but was made or meaningfully changed with AI. Examples: a real person saying words they never said, or a realistic fake event. Clearly unreal content, such as animation, and AI help with scripts, ideas or captions do not need it. YouTube may add a label itself.</td></tr>
              <tr><td><strong>Instagram and Facebook (Meta)</strong></td><td>Meta shows an "AI info" label on some content. It asks you to use its AI label option when you post photorealistic video or realistic audio that was made or changed with AI. Meta may also add a label when it finds AI signals in the file. One such signal is C2PA Content Credentials (a standard tag that records how a file was made).</td></tr>
              <tr><td><strong>India</strong></td><td>Amendments to the IT Rules, in force since 20 February 2026, cover "synthetically generated information" (AI-made or AI-changed content). Platforms must label it, and large platforms ask users to declare it. Check the current rules and your app's upload screen.</td></tr>
            </tbody>
          </table>
          <p>A simple habit: if a viewer could believe an AI-made scene is real, turn on the label.</p>
        </div>
        <div class="lc-card">
          <h3>3. Ads and collaborations: the ASCI guidelines</h3>
          <p>ASCI (the Advertising Standards Council of India) has guidelines for influencer advertising on social media. You must add a disclosure label when there is a <strong>material connection</strong> with a brand. This means any link that could affect what you say: money, free products, discounts, a trip or a job. It applies even if your review is honest.</p>
          <ul class="lc-list">
            <li><strong>Labels ASCI lists:</strong> Advertisement, Ad, Sponsored, Collaboration, Partnership, Employee, Free gift, Affiliate, or the platform's own paid partnership tag. Use English or the language of the video.</li>
            <li><strong>Placement:</strong> upfront and easy to see. Not only in your bio, not at the end, not hidden among hashtags, and not behind "more".</li>
            <li><strong>On-screen label for videos without text:</strong> for videos of 15 seconds or less, keep it for at least 3 seconds. For videos over 15 seconds and under 2 minutes, keep it for one third of the video. For 2 minutes or more, keep it while the brand is shown or talked about.</li>
            <li><strong>Virtual influencers</strong> (AI or computer-made characters) must also say clearly that they are not real humans.</li>
          </ul>
          <p><strong>Example:</strong> Anjali sends Riya a free Christmas hamper. Riya posts a Reel about it. Riya must add a label such as "#Ad" or "Free gift" in the first line and on screen. Sweet Crumbs, as the advertiser, should make sure she does. Check the latest ASCI guidelines before a campaign.</p>
        </div>
        <div class="lc-card">
          <h3>4. Faces, voices and deepfakes</h3>
          <p>A <strong>deepfake</strong> is an AI-made video or voice that makes a real person seem to say or do something they did not. Indian courts, including High Courts, have protected celebrities' names, faces and voices from misuse. These are called personality rights.</p>
          <ul class="lc-list">
            <li>Never use a film star's face, voice or name to sell your product without a written deal.</li>
            <li>Ask customers before you film them. Ask a parent before you film a child.</li>
            <li>Never make fake customer reviews or AI "customers". It misleads buyers.</li>
            <li>Never buy fake views, followers or comments. It breaks the apps' rules.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: label or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each video by what it needs before posting.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ad" data-label="Add an ad label"></div>
              <div data-sorter-target="bucket" data-bucket="ai" data-label="Turn on the AI label"></div>
              <div data-sorter-target="bucket" data-bucket="none" data-label="No label needed"></div>
              <div data-sorter-target="bucket" data-bucket="stop" data-label="Do not post it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ad" data-why="A free product is a material connection under ASCI's guidelines, even with no payment.">Riya films the free cake hamper Sweet Crumbs sent her</li>
              <li data-bucket="none" data-why="Using AI to help write or correct text is production help. It does not make realistic fake content.">Diya uses AI to fix the spelling in a Reel's caption</li>
              <li data-bucket="ai" data-why="A realistic AI voice that sounds like a real person saying new words could fool viewers. It needs the AI label, and Anjali's permission.">An AI voice copy of Anjali reads a script she never recorded, with her OK</li>
              <li data-bucket="ad" data-why="Kabir keeps a product the brand gave him. That is a material connection, so he needs a clear label.">Kabir reviews a phone the brand sent him to keep</li>
              <li data-bucket="none" data-why="She bought it herself and has no link with the brand. ASCI does not treat this as an ad.">Anjali praises a mixer she bought herself, with no link to the brand</li>
              <li data-bucket="stop" data-why="A fake customer misleads buyers. A label does not make it acceptable.">An AI-made realistic customer saying the cakes are the best in town</li>
              <li data-bucket="stop" data-why="This uses a celebrity's likeness without permission. It can break personality rights and platform rules.">An AI clip of a famous actor tasting a Sweet Crumbs cake</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe a video you plan to post. Ask AI to make a rules checklist for it. Use the answer as a starting point, then check the platforms' help pages.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful content compliance helper for Indian creators. Give general education, not legal advice. Use simple English.

        My account type: [Instagram business account and a YouTube channel for a bakery]
        The video I plan to post: [A 25-second Reel and Short. Riya, a food creator, tastes our Christmas plum cake. We gave her the cake hamper free. Background music: a popular Hindi film song Diya added in an editing app. We used AI to make the voiceover in a realistic voice that sounds like our owner Anjali, with her permission.]

        Please make a checklist table with these columns:
        Area (music, AI label, ad disclosure, faces and voices, claims) | Problem in my plan | What to do instead | Where to check (name the platform's help page or ASCI in general words)

        Then list the 3 most urgent fixes.
        Rules: Do not invent exact laws, fines or numbers. If a rule may have changed, say "check the current rule".</pre>
            <ul class="ai-try-checks">
              <li>Did the AI spot the song problem and suggest the app's library or original audio?</li>
              <li>Did it say Riya needs a label such as #Ad or Free gift, placed upfront?</li>
              <li>Did it say the realistic AI voice needs the platform's AI label?</li>
              <li>Did it avoid made-up fines, section numbers or dates?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Before every post, ask four questions: music, AI, ads and people. Use the app's music library, label realistic AI, disclose any brand link upfront, and get permission for faces and voices. When a rule is unclear, check the platform's help pages or ask a qualified professional.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Formats That Work</h1>
        </div>
        <p class="lc-lead">A <strong>format</strong> is a repeatable shape for a video, such as a tutorial or a before-and-after. Viewers recognise a format in the first seconds and know what they will get. Using formats also makes your work faster, because you do not start from zero each time. In this lesson, you will learn six common formats, see how each one did for a made-up bakery, and choose a format for your goal.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Six format tiles. Tutorial opens with the problem and is good for saves and subscribers. Before-and-after opens with a peek at the result and is good for views and shares. List opens with the number and topic and is good for saves and shares. Story opens with the tense moment and is good for trust and follows. Trend opens with a known sound or joke and is good for reach if it fits. Talking head opens with a bold line and is good for expertise.">
            <g font-family="inherit" font-size="11.5" fill="#e2e0f0" text-anchor="start">
              <rect x="12" y="12" width="236" height="132" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="28" y="40" font-size="14" font-weight="700" fill="#93c5fd">Tutorial</text>
              <text x="28" y="66">Opens with: the problem</text>
              <text x="28" y="88">Good for: saves, subscribers</text>
              <text x="28" y="124" fill="#9b99b8">Sweet Crumbs completion: 41%</text>
              <rect x="262" y="12" width="236" height="132" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="278" y="40" font-size="14" font-weight="700" fill="#6ee7b7">Before-and-after</text>
              <text x="278" y="66">Opens with: a peek at the result</text>
              <text x="278" y="88">Good for: views, shares</text>
              <text x="278" y="124" fill="#9b99b8">Sweet Crumbs completion: 57.5%</text>
              <rect x="512" y="12" width="236" height="132" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="528" y="40" font-size="14" font-weight="700" fill="#fcd34d">List</text>
              <text x="528" y="66">Opens with: number + topic</text>
              <text x="528" y="88">Good for: saves, shares</text>
              <text x="528" y="124" fill="#9b99b8">Sweet Crumbs completion: 22%</text>
              <rect x="12" y="156" width="236" height="132" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="28" y="184" font-size="14" font-weight="700" fill="#f9a8d4">Story</text>
              <text x="28" y="210">Opens with: the tense moment</text>
              <text x="28" y="232">Good for: trust, follows</text>
              <text x="28" y="268" fill="#9b99b8">Sweet Crumbs completion: 18%</text>
              <rect x="262" y="156" width="236" height="132" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="278" y="184" font-size="14" font-weight="700" fill="#67e8f9">Trend</text>
              <text x="278" y="210">Opens with: a known sound or joke</text>
              <text x="278" y="232">Good for: reach, if it fits you</text>
              <text x="278" y="268" fill="#9b99b8">Sweet Crumbs completion: 44%</text>
              <rect x="512" y="156" width="236" height="132" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="528" y="184" font-size="14" font-weight="700" fill="#c4b5fd">Talking head</text>
              <text x="528" y="210">Opens with: a bold first line</text>
              <text x="528" y="232">Good for: expertise, trust</text>
              <text x="528" y="268" fill="#9b99b8">Sweet Crumbs completion: 9%</text>
            </g>
          </svg>
          <figcaption>Six common short video formats, what each one opens with, what it is good for, and the made-up Sweet Crumbs results.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Six formats, with examples</h3>
          <table class="lc-table">
            <thead><tr><th>Format</th><th>What it is</th><th>Sweet Crumbs example</th><th>Creator example</th></tr></thead>
            <tbody>
              <tr><td><strong>Tutorial</strong></td><td>Teaches one small skill or fixes one problem</td><td>"Why your eggless sponge sinks: 3 fixes"</td><td>Kabir ("Byte-Size Kabir"): "Free up phone storage in 3 taps"</td></tr>
              <tr><td><strong>Before-and-after</strong></td><td>Shows a clear change from start to finish</td><td>Plain sponge to rasmalai cake in 18 seconds</td><td>Riya ("Tiffin Tales"): leftover rice to lemon rice</td></tr>
              <tr><td><strong>List</strong></td><td>A short numbered list</td><td>"5 cakes under ₹600 for office birthdays"</td><td>Riya: "3 tiffin ideas in 10 minutes"</td></tr>
              <tr><td><strong>Story</strong></td><td>A real moment with a problem and an ending</td><td>The 40-cupcake order that almost went wrong</td><td>Kabir: the day his laptop died before a client call</td></tr>
              <tr><td><strong>Trend</strong></td><td>Your version of a popular sound, joke or style</td><td>"POV: cake order 1 hour before the party"</td><td>Kabir: a trending sound over a tech fail</td></tr>
              <tr><td><strong>Talking head</strong></td><td>You speak to the camera</td><td>Anjali answers: "Can you make a cake without an oven?"</td><td>Kabir: "Do not buy this phone if you only use WhatsApp"</td></tr>
            </tbody>
          </table>
          <p>Many good videos mix formats. For example, a tutorial can open with a before-and-after shot.</p>
        </div>
        <div class="lc-card">
          <h3>What the Sweet Crumbs numbers say</h3>
          <p>Diya grouped the last 8 videos by format (made-up numbers). "Per 1,000 views" means the count divided by views, times 1,000. It lets you compare videos with different view counts.</p>
          <table class="lc-table">
            <thead><tr><th>Format</th><th>Videos</th><th>Average views</th><th>Average completion</th><th>Shares per 1,000</th><th>Follows per 1,000</th></tr></thead>
            <tbody>
              <tr><td>Before-and-after</td><td>2</td><td>8,600</td><td>57.5%</td><td>14.5</td><td>7.7</td></tr>
              <tr><td>Tutorial</td><td>1</td><td>5,200</td><td>41%</td><td>8.7</td><td>6.5</td></tr>
              <tr><td>Trend</td><td>1</td><td>3,600</td><td>44%</td><td>6.9</td><td>1.1</td></tr>
              <tr><td>List</td><td>1</td><td>2,900</td><td>22%</td><td>20.7</td><td>4.8</td></tr>
              <tr><td>Story</td><td>1</td><td>2,100</td><td>18%</td><td>14.3</td><td>10.0</td></tr>
              <tr><td>Talking head</td><td>2</td><td>1,350</td><td>9%</td><td>3.0</td><td>3.0</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Before-and-after</strong> won on views, completion and follows. The finished cake appeared in the first second.</li>
            <li><strong>The list</strong> had the most shares per 1,000. People sent the price list to colleagues. But 5 items made it slow, so completion was low. Next time: 3 items.</li>
            <li><strong>The trend</strong> got likes but almost no follows. People came for the joke, not the bakery.</li>
            <li><strong>The story</strong> got few views but the most follows per 1,000. People who stayed liked the team.</li>
            <li><strong>Talking head</strong> failed because both videos began with "Hi everyone". The format is fine. The opening was weak.</li>
          </ul>
          <p>Eight videos is a small sample. Treat these results as clues to test, not as proof.</p>
        </div>
        <div class="lc-card">
          <h3>Choose the format for your goal</h3>
          <table class="lc-table">
            <thead><tr><th>Your goal</th><th>Formats to try</th><th>Number to watch</th></tr></thead>
            <tbody>
              <tr><td>Reach new people</td><td>Before-and-after, trend (only if it fits your brand)</td><td>Views, shares</td></tr>
              <tr><td>Be useful and remembered</td><td>Tutorial, list</td><td>Saves, shares</td></tr>
              <tr><td>Build trust and followers</td><td>Story, talking head with a strong start</td><td>Follows per 1,000 views</td></tr>
              <tr><td>Get orders or enquiries</td><td>Product demo in any format, with a clear next step</td><td>DMs, WhatsApp messages, "saw your Reel" orders</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What type of Reels should I make?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>My bakery wants more birthday cake orders in Maharashtra.
        By format, my last videos got this completion rate and follows per 1,000 views:
        before-and-after 57.5% and 7.7, tutorial 41% and 6.5, trend 44% and 1.1,
        list 22% and 4.8, story 18% and 10.0, talking head 9% and 3.0.
        Suggest a mix of 6 videos for the next 2 weeks.
        Explain each choice using my numbers. Note where my sample is too small.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: pick the best format</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each video idea into the format that fits it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="tut" data-label="Tutorial"></div>
              <div data-sorter-target="bucket" data-bucket="ba" data-label="Before-and-after"></div>
              <div data-sorter-target="bucket" data-bucket="list" data-label="List"></div>
              <div data-sorter-target="bucket" data-bucket="story" data-label="Story"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ba" data-why="The value is the visible change from plain to finished. Show a peek of the result first.">A plain white cake becomes a unicorn cake</li>
              <li data-bucket="tut" data-why="It teaches steps that solve one problem.">Kabir shows how to stop spam calls in 3 settings</li>
              <li data-bucket="list" data-why="Several short, separate ideas in a numbered list are easy to save.">Riya's 3 tiffin ideas that take 10 minutes</li>
              <li data-bucket="story" data-why="It has a problem, tension and an ending. That is a story.">Anjali saves a wedding order after the power cut at midnight</li>
              <li data-bucket="tut" data-why="It explains a cause and a fix. People save it to use later.">Why cookies spread in the oven, and how to stop it</li>
              <li data-bucket="ba" data-why="The messy start and the clean end make a clear change.">Riya's messy kitchen counter to clean in 15 seconds</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a two-week format mix from your own results. If you have no results yet, keep the sample numbers.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a short video strategist for small Indian brands and creators. Use simple English.

        My account: [Sweet Crumbs, a bakery in Maharashtra. 2,340 Instagram followers, 410 YouTube subscribers.]
        My goal for the next 2 weeks: [more followers who might order cakes, and more WhatsApp enquiries]
        I can make: [3 videos a week]

        My results by format (completion rate, shares per 1,000 views, follows per 1,000 views):
        [Before-and-after: 57.5%, 14.5, 7.7 (2 videos)
        Tutorial: 41%, 8.7, 6.5 (1 video)
        Trend: 44%, 6.9, 1.1 (1 video)
        List: 22%, 20.7, 4.8 (1 video)
        Story: 18%, 14.3, 10.0 (1 video)
        Talking head: 9%, 3.0, 3.0 (2 videos, both started with a long hello)]

        Please:
        1. Suggest a mix of 6 videos by format, and explain each choice with my numbers.
        2. For each video, give one idea and what appears in the first 2 seconds.
        3. For the weak formats, suggest one fix to test.
        4. Warn me where the sample is too small to be sure.</pre>
            <ul class="ai-try-checks">
              <li>Does each choice use the numbers you gave, not general advice?</li>
              <li>Did the AI notice that the story had few views but many follows per 1,000?</li>
              <li>Did it warn that one or two videos per format is a small sample?</li>
              <li>Can you really film all 6 ideas in two weeks?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Pick the format from your goal, then check your own numbers. Compare formats with rates, such as completion and follows per 1,000 views, not only views. A weak result often means a weak opening, not a bad format.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Hooks in the First Seconds</h1>
        </div>
        <p class="lc-lead">A <strong>hook</strong> is the opening of your video: what people see, read and hear in the first one to three seconds. In a fast feed, it decides if a viewer stays or swipes. In this lesson, you will learn common hook types and compare weak and strong hooks. You will also use AI to write a long list of hooks. You will also learn the most important rule: the rest of the video must keep the hook's promise.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A timeline of the first three seconds with three layers. See: a knife cuts into a soft eggless sponge. Read: on-screen text, Why eggless sponges sink. Hear: Your sponge sinks? Check these 3 things. All three lead to the viewer's choice: stay or swipe.">
            <defs><marker id="sv5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <g font-size="11" fill="#9b99b8">
                <text x="150" y="22">0 s</text><text x="287" y="22">1 s</text><text x="423" y="22">2 s</text><text x="560" y="22">3 s</text>
              </g>
              <g stroke="#4b4a78" stroke-dasharray="3 4">
                <line x1="150" y1="30" x2="150" y2="220"/><line x1="287" y1="30" x2="287" y2="220"/><line x1="423" y1="30" x2="423" y2="220"/><line x1="560" y1="30" x2="560" y2="220"/>
              </g>
              <rect x="20" y="40" width="110" height="46" rx="8" fill="#27274e"/><text x="75" y="68" font-weight="700" fill="#6ee7b7">See</text>
              <rect x="150" y="40" width="410" height="46" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="355" y="68">Close-up: a knife cuts the soft sponge</text>
              <rect x="20" y="106" width="110" height="46" rx="8" fill="#27274e"/><text x="75" y="134" font-weight="700" fill="#fcd34d">Read</text>
              <rect x="150" y="106" width="410" height="46" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="355" y="134">On screen: "Why eggless sponges sink"</text>
              <rect x="20" y="172" width="110" height="46" rx="8" fill="#27274e"/><text x="75" y="200" font-weight="700" fill="#c4b5fd">Hear</text>
              <rect x="150" y="172" width="410" height="46" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="355" y="200">"Your sponge sinks? Check these 3 things."</text>
              <rect x="600" y="86" width="140" height="86" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="670" y="118" font-weight="700">Viewer</text>
              <text x="670" y="138" font-weight="700">decides:</text>
              <text x="670" y="158" fill="#f9a8d4">stay or swipe</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sv5a)">
                <path d="M562,63 L580,63 L580,115 L596,115"/>
                <line x1="562" y1="129" x2="596" y2="129"/>
                <path d="M562,195 L580,195 L580,143 L596,143"/>
              </g>
              <text x="380" y="252" font-size="11.5" fill="#9b99b8">All three layers make the same promise. Many people watch with the sound off,</text>
              <text x="380" y="270" font-size="11.5" fill="#9b99b8">so the picture and the text must work without the voice.</text>
            </g>
          </svg>
          <figcaption>A strong hook uses the picture, the text and the voice together, all in the first three seconds.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Common hook types</h3>
          <table class="lc-table">
            <thead><tr><th>Hook type</th><th>How it works</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Result first</strong></td><td>Show the finished thing at once, then show how</td><td>Sweet Crumbs: the finished rasmalai cake, then "Here's how it started"</td></tr>
              <tr><td><strong>Problem or question</strong></td><td>Name a problem the viewer has</td><td>"Your eggless sponge sinks in the middle?"</td></tr>
              <tr><td><strong>Mistake</strong></td><td>Point out a common error</td><td>Kabir: "Stop charging your phone like this."</td></tr>
              <tr><td><strong>Number</strong></td><td>Promise a short, clear list</td><td>Riya: "3 tiffin ideas in 10 minutes"</td></tr>
              <tr><td><strong>Story moment</strong></td><td>Start in the middle of the tense part</td><td>"Midnight. Wedding at 10 am. And the power went off."</td></tr>
              <tr><td><strong>Surprise</strong></td><td>Show or say something unexpected, and explain it</td><td>"This cake has no oven, no eggs and no mixer."</td></tr>
            </tbody>
          </table>
          <p>The hook has three layers: the first picture, the on-screen text and the first spoken line. Many people scroll with the sound off, so the picture and text must work alone.</p>
        </div>
        <div class="lc-card">
          <h3>Weak hooks and strong hooks</h3>
          <table class="lc-table">
            <thead><tr><th>Weak hook</th><th>Why it is weak</th><th>Stronger hook</th></tr></thead>
            <tbody>
              <tr><td>"Hi everyone, I'm Anjali from Sweet Crumbs."</td><td>A stranger does not know you yet. Nothing happens.</td><td>Show the ragi cookie snapping in half. Text: "Ragi cookies that are actually crunchy"</td></tr>
              <tr><td>"Today I will talk about cake tips."</td><td>Too general. No clear promise.</td><td>"Your eggless sponge sinks? Check these 3 things."</td></tr>
              <tr><td>"Wait till the end!!!"</td><td>Asks for patience but gives no reason</td><td>Show 1 second of the finished cake, then cut back to the plain sponge</td></tr>
              <tr><td>"The BEST cake in India."</td><td>A claim you cannot prove</td><td>"Our most-ordered birthday cake this month, from plain to finished"</td></tr>
            </tbody>
          </table>
          <p><strong>Hinglish works too.</strong> Match the language your viewers use. For example: "Cake beech mein baith jaata hai? Yeh 3 galtiyan check karo." Anjali says this naturally, so it sounds real.</p>
          <p><strong>Keep the promise.</strong> If the hook says "3 things", show 3 things. A hook that tricks people (clickbait) makes them swipe away and stop trusting you. Never use false urgency, such as "Only 2 cakes left!" when it is not true.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to write many hooks, then choose</h3>
          <p>AI is very good at giving you 20 hooks in 20 seconds. Your job is to choose, check and test.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a catchy hook for my cake video.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Video: an 18-second Reel. A plain sponge becomes a rasmalai cake.
        Viewers: people in Maharashtra who order birthday cakes.
        Write 10 hooks, 2 each of: result first, question, surprise, number, story moment.
        For each: the first picture, on-screen text (max 6 words), spoken line (max 10 words).
        Give 3 in Hinglish. Do not promise anything the video does not show.</code></pre>
          <p><strong>How to test hooks.</strong> Keep a simple log of each video's hook type and its completion rate. Some apps show how many people swiped away early (for example, a "skip rate" or "swiped away" number). Instagram also lets some accounts test a Reel with non-followers first (a "trial reel"). Check the current help pages. Change only the hook when you test, so you know what made the difference.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: strong, weak or misleading?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each hook for a Sweet Crumbs or creator video.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="strong" data-label="Strong hook"></div>
              <div data-sorter-target="bucket" data-bucket="weak" data-label="Weak hook"></div>
              <div data-sorter-target="bucket" data-bucket="mislead" data-label="Misleading hook"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="strong" data-why="It names a real problem and makes a clear promise the video can keep.">"Your eggless sponge sinks? Check these 3 things."</li>
              <li data-bucket="weak" data-why="A stranger does not know you yet, and nothing happens on screen.">"Hi friends, welcome back to my channel!"</li>
              <li data-bucket="mislead" data-why="It is a health claim the bakery cannot prove. It could mislead people with diabetes.">"This cake is safe for diabetics!" (It has sugar.)</li>
              <li data-bucket="strong" data-why="The finished result in the first second makes people want to see how it was made.">The finished rasmalai cake for 1 second, then the plain sponge</li>
              <li data-bucket="weak" data-why="It gives no reason to stay. The promise is vague.">"Wait for it..." over a shot of an empty table</li>
              <li data-bucket="mislead" data-why="False urgency tricks viewers. It breaks trust and may break advertising rules.">"Last 2 cakes left, order now!" when the shop has plenty</li>
              <li data-bucket="strong" data-why="A specific mistake with a clear topic makes the viewer check their own habit.">Kabir: "Stop charging your phone like this."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get 10 hooks for one of your videos, in different styles. Then choose the one that is true, clear and sounds like you.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a hook writer for short vertical videos (Instagram Reels and YouTube Shorts) for Indian viewers. Use simple English.

        My video: [a 20-second video. Diya pipes buttercream flowers onto a plain birthday cake for Sweet Crumbs, a bakery in Maharashtra.]
        Viewers: [parents and office teams in Maharashtra who order birthday cakes]
        Language: [English, plus 3 hooks in Hinglish]

        Write 10 hooks: 2 each of result first, question, mistake, surprise and story moment.
        Make a table with: Hook type | First picture on screen | On-screen text (max 6 words) | Spoken line (max 10 words)

        Then:
        1. Mark any hook that promises something the video does not show.
        2. Pick your top 3 and explain why in one line each.

        Rules: No health claims, no "best in India" claims and no false urgency. Write lines a real person would say.</pre>
            <ul class="ai-try-checks">
              <li>Does every hook work with the sound off, through the picture and text?</li>
              <li>Is every promise kept by the video you described?</li>
              <li>Are the on-screen texts really 6 words or fewer?</li>
              <li>Do the Hinglish hooks sound natural? Say them aloud to check.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The hook is the first picture, the first text and the first line, all in about three seconds. Show something interesting at once, make one clear promise and keep it. Let AI give you many options, then choose the true one that sounds like you.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Writing Short Scripts</h1>
        </div>
        <p class="lc-lead">A good hook gets people to stay for three seconds. A good script keeps them to the end. In a short video, every second must do a job. In this lesson, you will learn simple structures for 15-, 30- and 60-second videos. You will plan each video in beats (small moments), fit your words to the time, and end with one clear call to action. You will also use AI to draft scripts and then make them sound like you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Three timelines. 15 seconds: hook from 0 to 2 seconds, the change from 2 to 12, reveal and call to action from 12 to 15, about 30 to 35 words. 30 seconds: hook from 0 to 3, three items of about 7 seconds each, payoff and call to action from 24 to 30, about 60 to 70 words. 60 seconds: hook from 0 to 3, setup to 10, problem to 25, turning point to 42, ending to 54, call to action to 60, about 120 to 140 words.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <g text-anchor="start">
                <text x="20" y="52" font-size="15" font-weight="700">15 s</text>
                <text x="20" y="70" font-size="10.5" fill="#9b99b8">30–35 words</text>
                <text x="20" y="142" font-size="15" font-weight="700">30 s</text>
                <text x="20" y="160" font-size="10.5" fill="#9b99b8">60–70 words</text>
                <text x="20" y="232" font-size="15" font-weight="700">60 s</text>
                <text x="20" y="250" font-size="10.5" fill="#9b99b8">120–140 words</text>
              </g>
              <rect x="130" y="30" width="80" height="44" rx="6" fill="#1f1f44" stroke="#ec4899"/>
              <text x="170" y="57" fill="#f9a8d4">Hook</text>
              <rect x="210" y="30" width="400" height="44" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="410" y="57">The change: plain to finished</text>
              <rect x="610" y="30" width="120" height="44" rx="6" fill="#1f1f44" stroke="#10b981"/>
              <text x="670" y="57" fill="#6ee7b7">Reveal + CTA</text>
              <g font-size="10" fill="#9b99b8">
                <text x="134" y="88">0</text><text x="210" y="88">2 s</text><text x="610" y="88">12 s</text><text x="722" y="88">15 s</text>
              </g>
              <rect x="130" y="120" width="60" height="44" rx="6" fill="#1f1f44" stroke="#ec4899"/>
              <text x="160" y="147" fill="#f9a8d4">Hook</text>
              <rect x="190" y="120" width="140" height="44" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="260" y="147">Item 1</text>
              <rect x="330" y="120" width="140" height="44" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="400" y="147">Item 2</text>
              <rect x="470" y="120" width="140" height="44" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="540" y="147">Item 3</text>
              <rect x="610" y="120" width="120" height="44" rx="6" fill="#1f1f44" stroke="#10b981"/>
              <text x="670" y="147" fill="#6ee7b7">Payoff + CTA</text>
              <g font-size="10" fill="#9b99b8">
                <text x="134" y="178">0</text><text x="190" y="178">3 s</text><text x="330" y="178">10 s</text><text x="470" y="178">17 s</text><text x="610" y="178">24 s</text><text x="722" y="178">30 s</text>
              </g>
              <rect x="130" y="210" width="30" height="44" rx="6" fill="#1f1f44" stroke="#ec4899"/>
              <text x="145" y="236" font-size="10" fill="#f9a8d4">Hook</text>
              <rect x="160" y="210" width="70" height="44" rx="6" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="195" y="237">Setup</text>
              <rect x="230" y="210" width="150" height="44" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="305" y="237">Problem</text>
              <rect x="380" y="210" width="170" height="44" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="465" y="237">Turning point</text>
              <rect x="550" y="210" width="120" height="44" rx="6" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="610" y="237">Ending</text>
              <rect x="670" y="210" width="60" height="44" rx="6" fill="#1f1f44" stroke="#10b981"/>
              <text x="700" y="237" fill="#6ee7b7">CTA</text>
              <g font-size="10" fill="#9b99b8">
                <text x="134" y="268">0</text><text x="230" y="268">10 s</text><text x="380" y="268">25 s</text><text x="550" y="268">42 s</text><text x="670" y="268">54 s</text><text x="722" y="268">60 s</text>
              </g>
              <text x="380" y="298" font-size="11" fill="#9b99b8">Times are guides, not rules. Cut any beat that does not earn its place.</text>
            </g>
          </svg>
          <figcaption>Three script shapes. The hook (pink) comes first and the call to action (green) comes last. The middle beats change with the length.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Beats, word budgets and the script table</h3>
          <p>A <strong>beat</strong> is one small moment in a video, such as "show the plain sponge" or "name the price". A short script is a list of beats with times. Write it as a table with four columns, so you plan the picture, the text and the voice together.</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Picture</th><th>On-screen text</th><th>Voice or sound</th></tr></thead>
            <tbody>
              <tr><td>0–2 s</td><td>What the viewer sees</td><td>Short words on the video</td><td>What you say, or the music or kitchen sound</td></tr>
            </tbody>
          </table>
          <p><strong>Fit your words to the time.</strong> Many people speak about 2 to 2.5 words per second in a relaxed video. That gives a rough word budget:</p>
          <table class="lc-table">
            <thead><tr><th>Length</th><th>Spoken words (rough)</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>15 seconds</td><td>About 30–35, or none</td><td>Before-and-after, one quick tip, a trend with your twist</td></tr>
              <tr><td>30 seconds</td><td>About 60–70</td><td>A 3-item list, a short tutorial</td></tr>
              <tr><td>60 seconds</td><td>About 120–140</td><td>A story, a tutorial with a few steps</td></tr>
            </tbody>
          </table>
          <p>Aim a little under the budget. Pauses, laughs and the first silent second all take time. Your own pace may be faster or slower. Read the script aloud with a stopwatch before you film.</p>
        </div>
        <div class="lc-card">
          <h3>Worked examples: a 15-second and a 30-second script</h3>
          <p>Sweet Crumbs is a bakery in Maharashtra (made-up). Its before-and-after videos had the best average completion rate (the share of views that reached the end): 57.5%. Its 5-item list had only 22%, so the next list has 3 items. Here are both scripts.</p>
          <p><strong>15 seconds, before-and-after, no voice (the spare video for a busy week):</strong></p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Picture</th><th>On-screen text</th><th>Sound</th></tr></thead>
            <tbody>
              <tr><td>0–1 s</td><td>The finished chocolate drip cake turns slowly</td><td>"Plain to party in 15 seconds"</td><td>A track from the app's music library starts</td></tr>
              <tr><td>1–3 s</td><td>Cut to the plain sponge on the turntable</td><td>"Plain sponge"</td><td>Music</td></tr>
              <tr><td>3–11 s</td><td>5 fast shots: crumb coat, ganache drip, piping, sprinkles, candle</td><td>No text. Let the picture work.</td><td>The scrape of the spatula</td></tr>
              <tr><td>11–13 s</td><td>Close-up of the drip on the finished cake</td><td>"Eggless · 1 kg · ₹950"</td><td>Music</td></tr>
              <tr><td>13–15 s</td><td>Anjali's hands close the cake box</td><td>"WhatsApp us: DRIP"</td><td>Box closing sound</td></tr>
            </tbody>
          </table>
          <p><strong>30 seconds, a 3-item list, Anjali's voiceover (54 words):</strong></p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Picture</th><th>On-screen text</th><th>Voice</th></tr></thead>
            <tbody>
              <tr><td>0–3 s</td><td>Three cakes in a row on the counter</td><td>"3 office cakes under ₹600"</td><td>"Office birthday, small budget? 3 eggless cakes under ₹600."</td></tr>
              <tr><td>3–10 s</td><td>A knife cuts the pineapple cake</td><td>"1. Pineapple · ₹450"</td><td>"One: pineapple. Light, fresh, and nobody says no. ₹450 for half a kilo."</td></tr>
              <tr><td>10–17 s</td><td>A slice of chocolate truffle lifts out</td><td>"2. Chocolate truffle · ₹520"</td><td>"Two: chocolate truffle. The safe pick for a big team. ₹520."</td></tr>
              <tr><td>17–24 s</td><td>Rasmalai cake with saffron on top</td><td>"3. Rasmalai · ₹580"</td><td>"Three: rasmalai. Our most-ordered cake in September. ₹580."</td></tr>
              <tr><td>24–30 s</td><td>All three cakes, then the shop sign</td><td>"All 500 g, eggless · WhatsApp: OFFICE"</td><td>"All three are eggless. Order a day before. WhatsApp us the word OFFICE."</td></tr>
            </tbody>
          </table>
          <p>Before filming, Anjali checks two facts. Are the prices right today? Was rasmalai really the most-ordered cake in September? She checks her order book. If she is not sure, she cuts the claim.</p>
        </div>
        <div class="lc-card">
          <h3>Calls to action that match your goal</h3>
          <p>A <strong>call to action</strong> (CTA) is the one thing you ask the viewer to do next. Put it at the end, after you have given value. Ask for one thing only.</p>
          <table class="lc-table">
            <thead><tr><th>Your goal</th><th>CTA example</th><th>Avoid</th></tr></thead>
            <tbody>
              <tr><td>Enquiries and orders</td><td>"WhatsApp us the word OFFICE."</td><td>"Like, share, subscribe, follow and DM us!"</td></tr>
              <tr><td>Saves</td><td>"Save this for the next office birthday."</td><td>Asking for a save before you show anything useful</td></tr>
              <tr><td>Follows</td><td>"Follow for one cake fix every week."</td><td>"Follow for more" in the first second</td></tr>
              <tr><td>Comments</td><td>"Which one would your team pick: 1, 2 or 3?"</td><td>"Comment below" with no question</td></tr>
            </tbody>
          </table>
          <p><strong>Use a code word to count results.</strong> Sweet Crumbs wants 25 enquiries that mention a video in two weeks. Last time it got 11. So each video gets its own code word, such as OFFICE for the list video. Diya counts the code words in WhatsApp messages. Anjali also asks every customer "Where did you see us?" Together, these show which video brought each enquiry.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a script for a cake Reel.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a 30-second script for a Reel and a Short for Sweet Crumbs, a bakery in Maharashtra.
        Format: a list of 3 eggless cakes under ₹600 for office birthdays.
        Cakes: pineapple ₹450, chocolate truffle ₹520, rasmalai ₹580 (all 500 g).
        Make a table: Time | Picture | On-screen text (max 6 words) | Voice.
        Hook in the first 3 seconds: show the cakes, no hello.
        Voice: 55 to 65 words, simple English with a little Hinglish.
        End with one CTA: WhatsApp us the word OFFICE.
        Give the word count. Mark any claim I must check.</code></pre>
          <p>Then rewrite the draft in your own words. Read it aloud. If a line sounds like an advert, say it the way you would say it to a customer at the counter.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a 60-second story</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">The old story Reel, "The 40-cupcake order that almost went wrong", began with "So last week..." and only 18% of views reached the end. Diya rewrites it as a 60-second story for the idea bank. Put the beats of the new 60-second version in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Hook (0–3 s): split frosting in the bowl. "40 cupcakes. 2 hours to go. And the frosting split."</li>
              <li data-order="2">Setup (3–10 s): a school farewell order, 40 cupcakes, ready by 4 pm</li>
              <li data-order="3">Problem (10–25 s): the kitchen is hot, and the second batch of buttercream splits too</li>
              <li data-order="4">Turning point (25–42 s): Anjali chills the bowl and switches to whipped ganache. Diya pipes fast.</li>
              <li data-order="5">Ending (42–54 s): 40 cupcakes boxed at 3:40 pm, and the teacher's thank-you message (shared with her permission)</li>
              <li data-order="6">CTA (54–60 s): "Big order for a school or office? WhatsApp us the word BULK."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn one of your video ideas into two scripts, a 15-second and a 30-second version, as tables you can film from.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a script writer for Instagram Reels and YouTube Shorts for small Indian businesses and creators. Use simple English.

        Business or channel: [Sweet Crumbs, a bakery in Maharashtra]
        Video idea: [why eggless sponge cakes sink, and 3 fixes]
        Format: [tutorial]
        Viewers: [home bakers and parents in Maharashtra]
        Language of the voice: [English with some Hinglish]
        Goal and call to action: [more followers. CTA: follow for one cake fix every week]

        Write two versions: 15 seconds and 30 seconds.
        For each, make a table: Time | Picture | On-screen text (max 6 words) | Voice
        Rules:
        - The first 2 seconds show the problem or the result. No hello.
        - Voice: under 35 words for 15 s, under 70 words for 30 s. Give the word count.
        - One CTA only, at the end.
        - Write lines a real person would say aloud.
        - List any fact or claim I must check (prices, times, health claims) under the table.</pre>
            <ul class="ai-try-checks">
              <li>Count the words yourself. Is each version inside its budget?</li>
              <li>Does the first beat show something, not a greeting?</li>
              <li>Is there only one CTA, and does it match your goal?</li>
              <li>Are the baking fixes correct? Check them with your own experience.</li>
              <li>Read the voice lines aloud with a stopwatch. Rewrite any line that sounds unnatural.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Plan a short video as timed beats: hook, value, payoff, one call to action. Fit your words to the length (about 2 to 2.5 words per second) and cut any beat that does not help. Let AI draft the table, then check every fact and rewrite it in your own voice.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Filming on a Phone</h1>
        </div>
        <p class="lc-lead">You do not need a costly camera for Reels and Shorts. A recent phone, good light, clear sound and a steady frame are enough. Viewers forgive a simple video. They do not forgive a dark picture or a voice they cannot hear. In this lesson, you will set up a small filming corner, film in vertical format, and make a B-roll list (extra shots you cut in between). AI can plan your shots, but only you can see your light and hear your room.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Left: a top view of a filming corner in a bakery. Daylight comes from a window on the left onto the counter with the cake. A phone on an overhead arm films top-down. A white card on the right bounces light back. Anjali wears a clip-on mic. The fan, mixer and AC are off while she talks. Right: a vertical 9 by 16 frame. App icons cover the top, buttons cover the right side and the post caption covers the bottom. The cake and the text go in the safe area in the middle.">
            <defs><marker id="sv7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#fcd34d"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="400" height="300" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="220" y="44" font-size="13" font-weight="700">Top view: Diya's filming corner</text>
              <text x="34" y="66" font-size="11" fill="#67e8f9" text-anchor="start">Window light</text>
              <rect x="34" y="74" width="16" height="200" rx="3" fill="#164e63" stroke="#22d3ee"/>
              <g stroke="#fcd34d" stroke-width="1.5" fill="none" marker-end="url(#sv7a)">
                <line x1="54" y1="150" x2="104" y2="150"/>
                <line x1="54" y1="175" x2="104" y2="175"/>
                <line x1="54" y1="200" x2="104" y2="200"/>
              </g>
              <rect x="145" y="80" width="110" height="28" rx="6" fill="#27274e" stroke="#8b5cf6"/>
              <text x="200" y="98" font-size="11">Phone, top-down</text>
              <rect x="110" y="120" width="180" height="110" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="200" y="168" font-weight="700">Counter</text>
              <text x="200" y="188" font-size="11" fill="#9b99b8">cake on turntable</text>
              <rect x="302" y="130" width="12" height="90" rx="2" fill="#e2e0f0"/>
              <text x="322" y="170" font-size="11" text-anchor="start">White card</text>
              <text x="322" y="186" font-size="11" fill="#9b99b8" text-anchor="start">bounces light</text>
              <text x="200" y="262" font-size="11">Anjali, clip-on mic</text>
              <text x="220" y="300" font-size="11" fill="#fca5a5">Fan, mixer, AC: off while talking</text>
              <text x="549" y="22" font-size="12" font-weight="700">9:16 vertical frame</text>
              <rect x="470" y="30" width="158" height="282" rx="14" fill="#1f1f44" stroke="#9b99b8"/>
              <rect x="472" y="32" width="154" height="32" rx="12" fill="#27274e"/>
              <rect x="596" y="64" width="30" height="190" fill="#27274e"/>
              <rect x="472" y="254" width="154" height="56" rx="12" fill="#27274e"/>
              <rect x="480" y="72" width="108" height="174" rx="6" fill="none" stroke="#10b981" stroke-dasharray="5 4"/>
              <text x="534" y="150" font-weight="700" fill="#6ee7b7">Safe area</text>
              <text x="534" y="168" font-size="10.5" fill="#9b99b8">cake + text here</text>
              <g font-size="11" text-anchor="start" fill="#9b99b8">
                <text x="640" y="52">Top: app icons</text>
                <text x="640" y="160">Right: buttons</text>
                <text x="640" y="286">Bottom: caption</text>
              </g>
              <g stroke="#4b4a78" stroke-width="1">
                <line x1="628" y1="48" x2="636" y2="48"/>
                <line x1="628" y1="156" x2="636" y2="156"/>
                <line x1="628" y1="282" x2="636" y2="282"/>
              </g>
            </g>
          </svg>
          <figcaption>Left: soft window light, a white card, a steady phone and a quiet room. Right: keep the cake and text away from the parts the app covers.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Light, sound and a steady phone</h3>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Do this</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td><strong>Light</strong></td><td>Film near a window with soft daylight. Switch off the yellow ceiling bulb. Put a white card or chart paper on the other side.</td><td>Mixed light makes cream look orange or blue. The card fills the dark side.</td></tr>
              <tr><td><strong>Colour</strong></td><td>Turn off beauty filters and strong colour effects.</td><td>Customers expect the cake to look like the video.</td></tr>
              <tr><td><strong>Focus</strong></td><td>On many phones, you can press and hold on the screen to lock focus and exposure (brightness). Wipe the lens first.</td><td>The phone stops changing brightness when a white cake enters. Flour dust makes the video hazy.</td></tr>
              <tr><td><strong>Sound</strong></td><td>Use a clip-on mic, or keep the phone close. Switch off the fan, mixer and AC while Anjali talks. Record voiceovers before the shop opens.</td><td>Viewers leave faster for bad sound than for a simple picture.</td></tr>
              <tr><td><strong>Steady</strong></td><td>Use a phone stand or an overhead arm. Do not zoom with your fingers. Move the phone closer instead.</td><td>Finger zoom lowers the quality. Shaky video is hard to watch.</td></tr>
            </tbody>
          </table>
          <p>Use the main back camera for product shots. It is usually better than the front camera. Film in 1080p or 4K and keep the same setting for every clip. Phones differ, so check your phone's camera settings.</p>
        </div>
        <div class="lc-card">
          <h3>Vertical framing and the safe area</h3>
          <p>Reels and Shorts are <strong>vertical</strong>: 9:16 (taller than wide), for example 1080 × 1920 pixels. Hold the phone upright. The app covers some parts of the screen with icons, buttons and the post caption. The middle is the <strong>safe area</strong>, where nothing covers your video. Some editing apps show guides for it.</p>
          <ul class="lc-list">
            <li><strong>Top-down shots</strong> work well for decorating. The phone looks straight down at the cake.</li>
            <li><strong>Eye-level shots</strong> work for Anjali talking. Put the lens at her eye height and keep her face in the upper middle.</li>
            <li><strong>Close-ups</strong> sell food: the drip, the crumb, a slice lifting out.</li>
            <li><strong>Leave 2 seconds</strong> before and after each action. It gives the editor space to cut.</li>
            <li><strong>Film each action 2 or 3 times</strong>, so you can pick the best take.</li>
          </ul>
          <p><strong>People and privacy.</strong> Ask customers before they appear on camera. Keep order slips, phone numbers and WhatsApp screens out of the frame. Tie your hair and keep the counter clean. Viewers notice.</p>
        </div>
        <div class="lc-card">
          <h3>Plan your shots and B-roll with AI</h3>
          <p><strong>B-roll</strong> means extra shots you cut in between the main action: hands, close-ups, the shop sign, the oven. Good B-roll hides cuts and keeps the picture changing. Sweet Crumbs will open Christmas plum cake pre-orders in November. Diya starts filming B-roll now, while the fruit is soaking.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me a shot list for a cake video.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I film Reels and Shorts on a phone for Sweet Crumbs, a small bakery in Maharashtra.
        Topic: Christmas plum cake. Pre-orders open in November.
        My space: one counter near a window, an oven, a shop counter. Light is best 10 am to 1 pm.
        Make a B-roll list of 15 shots I can film in October. Table:
        Shot | Angle (top-down, eye level, close-up) | Length to film | Tip for light or sound.
        Only real scenes from a bakery. No customer faces unless marked "needs permission".</code></pre>
          <p>Diya's list, after she checked it against her real kitchen:</p>
          <table class="lc-table">
            <thead><tr><th>Shot</th><th>Angle</th><th>Film for</th></tr></thead>
            <tbody>
              <tr><td>Dry fruits soaking in a glass jar</td><td>Close-up, side light from the window</td><td>10 s</td></tr>
              <tr><td>Anjali's hands folding fruit into the batter</td><td>Top-down</td><td>15 s</td></tr>
              <tr><td>Tins going into the oven</td><td>Eye level</td><td>10 s</td></tr>
              <tr><td>Knife slicing a cooled plum cake</td><td>Close-up</td><td>3 takes of 8 s</td></tr>
              <tr><td>Wrapping a cake in paper with a ribbon</td><td>Top-down</td><td>15 s</td></tr>
              <tr><td>"Pre-orders open" board on the shop counter</td><td>Eye level</td><td>8 s</td></tr>
            </tbody>
          </table>
          <p>AI cannot see your room. It may suggest a ring light you do not own or a shot your kitchen cannot fit. Cross out those shots, then film.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what is the problem?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Diya checks her test clips. Sort each problem into light, sound or framing.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="light" data-label="Light problem"></div>
              <div data-sorter-target="bucket" data-bucket="sound" data-label="Sound problem"></div>
              <div data-sorter-target="bucket" data-bucket="frame" data-label="Framing problem"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="light" data-why="The warm bulb mixes with daylight. Switch the bulb off and film near the window.">The white cream looks orange in the video</li>
              <li data-bucket="sound" data-why="The fan and mixer noise drowns her voice. Switch them off or record the voice later.">Anjali's voice is hard to hear over the mixer and fan</li>
              <li data-bucket="frame" data-why="The app's buttons and caption cover the bottom and right. Keep the cake in the safe area.">The cake's name on the board is hidden under the app's caption area</li>
              <li data-bucket="light" data-why="The phone changes exposure when the white cake moves in. Lock focus and exposure first.">The picture gets darker every time the white cake enters</li>
              <li data-bucket="frame" data-why="A horizontal clip becomes a small strip in a vertical feed. Hold the phone upright.">The decorating clip was filmed with the phone sideways</li>
              <li data-bucket="sound" data-why="A hard, empty room causes echo. Move closer, use a clip-on mic or add soft things like cloth.">Anjali's voice echoes in the empty storeroom</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe your space and your next video. Ask AI for a shot list, a B-roll list and a setup checklist for your phone.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a phone filmmaking coach for small Indian businesses and creators. Use simple English. Assume I only have a phone, a phone stand and a cheap clip-on mic.

        My next video: [a 30-second Reel and Short: 3 eggless office cakes under Rs 600]
        Where I film: [a small bakery kitchen with one window, a yellow ceiling bulb, a noisy exhaust fan and a shop counter]
        Best time for daylight: [10 am to 1 pm]
        Who appears: [the owner Anjali's hands and voice; no customers]

        Please give:
        1. A setup checklist (light, sound, focus, steady phone), max 8 items, in the order I should do them.
        2. A shot list table: Shot | Angle (top-down, eye level, close-up) | Film for (seconds) | Takes.
        3. 6 B-roll shots I can film in the same session.
        4. Three things to check on my phone screen before I start recording.
        Rules: No equipment I did not list. Keep all shots vertical (9:16). Mark any shot that shows a person who must agree first.</pre>
            <ul class="ai-try-checks">
              <li>Can you film every shot in your real space and light?</li>
              <li>Did the AI avoid gear you do not have, such as a ring light or a gimbal?</li>
              <li>Does the checklist deal with your noise sources, such as the fan?</li>
              <li>Are all shots vertical, with the product in the safe area?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good phone video comes from soft light, clear sound, a steady phone and vertical framing with the product in the safe area. Film extra B-roll and several takes. AI can plan the shots, but you must check them against your real room.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Editing with AI Tools</h1>
        </div>
        <p class="lc-lead">Editing turns ten minutes of clips into a tight 15 seconds. Phone editing apps now have AI features that do slow jobs for you. They cut silences, make captions, clean up your voice and remove backgrounds. In this lesson, you will learn what these features do, which tools you may come across, and a simple edit order. You will also learn what AI edits get wrong, so you can check before you post.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A funnel from raw clips to the final video. Raw clips: 14 clips, 11 minutes 20 seconds. Selects: best takes, 2 minutes. Rough cut: 40 seconds. Final: 15 seconds. Beside each stage, what AI does and what you check: film each action 2 or 3 times; AI finds silences and repeat takes, you keep takes with the real cake; AI auto cuts and beat syncs, you put the finished cake at second 0; AI adds captions and cleans the voice, you fix every caption and check colour; finally you watch on a phone with the sound off and keep the raw clips.">
            <defs><marker id="sv8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="30" y="20" width="340" height="50" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="200" y="50">Raw clips: 14 clips, 11 min 20 s</text>
              <rect x="65" y="95" width="270" height="50" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="200" y="125">Selects: best takes, 2 min</text>
              <rect x="100" y="170" width="200" height="50" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="200" y="200">Rough cut: 40 s</text>
              <rect x="135" y="245" width="130" height="50" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="200" y="275" font-weight="700" fill="#6ee7b7">Final: 15 s</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sv8a)">
                <line x1="200" y1="72" x2="200" y2="91"/>
                <line x1="200" y1="147" x2="200" y2="166"/>
                <line x1="200" y1="222" x2="200" y2="241"/>
              </g>
              <g stroke="#4b4a78" stroke-width="1" stroke-dasharray="4 4">
                <line x1="372" y1="45" x2="398" y2="45"/>
                <line x1="337" y1="120" x2="398" y2="120"/>
                <line x1="302" y1="195" x2="398" y2="195"/>
                <line x1="267" y1="270" x2="398" y2="270"/>
              </g>
              <g font-size="11.5" text-anchor="start">
                <rect x="400" y="20" width="340" height="50" rx="8" fill="#27274e"/>
                <text x="414" y="41">You: film each action 2 or 3 times</text>
                <text x="414" y="59" fill="#9b99b8">Leave 2 s before and after</text>
                <rect x="400" y="95" width="340" height="50" rx="8" fill="#27274e"/>
                <text x="414" y="116" fill="#c4b5fd">AI: finds silences and repeat takes</text>
                <text x="414" y="134" fill="#9b99b8">You: keep the takes with the real cake</text>
                <rect x="400" y="170" width="340" height="50" rx="8" fill="#27274e"/>
                <text x="414" y="191" fill="#c4b5fd">AI: auto cut, template, beat sync</text>
                <text x="414" y="209" fill="#9b99b8">You: put the finished cake at second 0</text>
                <rect x="400" y="245" width="340" height="50" rx="8" fill="#27274e"/>
                <text x="414" y="266" fill="#c4b5fd">AI: captions, voice clean-up</text>
                <text x="414" y="284" fill="#9b99b8">You: fix captions, watch with sound off</text>
              </g>
            </g>
          </svg>
          <figcaption>Editing is a funnel. AI speeds up each step. You decide what stays and check the result.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI editing features do</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>What it does</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Auto cut / silence removal</strong></td><td>Finds pauses, repeat takes or highlights and cuts them for you</td><td>It can cut the best moment, such as the first slice</td></tr>
              <tr><td><strong>Text-based editing</strong></td><td>Makes a transcript (a written copy of the speech). You delete words and the video is cut to match.</td><td>Cutting too many "umm"s can make speech sound jumpy</td></tr>
              <tr><td><strong>Auto captions</strong></td><td>Turns speech into on-screen text</td><td>Names, prices and Hinglish often come out wrong</td></tr>
              <tr><td><strong>Templates and beat sync</strong></td><td>Ready-made styles. Cuts land on the beat of the music.</td><td>The template's song may not be cleared for a business account</td></tr>
              <tr><td><strong>Background removal</strong></td><td>Cuts a person or object out of the background</td><td>Rough edges around hair and cream</td></tr>
              <tr><td><strong>Voice clean-up</strong></td><td>Reduces fan noise and echo</td><td>Too much makes the voice sound robotic</td></tr>
              <tr><td><strong>Auto reframe</strong></td><td>Turns a wide video into a vertical one and follows the subject</td><td>It may cut off the cake or the hands</td></tr>
              <tr><td><strong>AI voices and AI-made clips</strong></td><td>Reads text in a made voice, or makes new images and video</td><td>Never use them to fake your product or a real person. Label realistic AI content.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Tools you may come across</h3>
          <p>These tools change their features often. The notes below are general. Check each app's current help pages before you rely on a feature.</p>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>In general</th></tr></thead>
            <tbody>
              <tr><td><strong>Instagram Edits</strong></td><td>Meta's free phone app for editing Reels. It has templates, captions and effects, and can post straight to Instagram.</td></tr>
              <tr><td><strong>YouTube Create</strong> and the Shorts camera</td><td>Google's free editing app, on Android and iPhone in many countries, including India. The YouTube app also has basic Shorts editing. Check if they are available on your phone.</td></tr>
              <tr><td><strong>CapCut</strong></td><td>A popular editing app in many countries. At the time of writing, it is not officially available in India. It has been blocked there since 2020. Do not install copies from unknown websites.</td></tr>
              <tr><td><strong>Canva</strong></td><td>Templates for text, posters and simple video edits</td></tr>
              <tr><td><strong>Descript</strong></td><td>Edits video by editing the transcript. Can remove filler words and clean up voice.</td></tr>
              <tr><td><strong>Adobe Premiere Pro, DaVinci Resolve</strong></td><td>Desktop editors with AI features such as captions, speech clean-up and reframing</td></tr>
            </tbody>
          </table>
          <p>Pick one phone app and learn it well. Switching tools every week costs more time than it saves.</p>
        </div>
        <div class="lc-card">
          <h3>A simple edit order, and what must stay true</h3>
          <ol class="lc-list">
            <li><strong>Pick selects.</strong> Keep only the best take of each shot.</li>
            <li><strong>Put the hook first.</strong> Move the best moment, such as the finished cake, to second 0.</li>
            <li><strong>Trim tight.</strong> Start each shot when the action starts. Cut the moment it ends.</li>
            <li><strong>Add text and captions.</strong> Then fix every caption error.</li>
            <li><strong>Sound.</strong> Clean the voice lightly. Keep music much quieter than the voice.</li>
            <li><strong>Colour.</strong> Small fixes only. The cake must look like the real cake.</li>
            <li><strong>Check and export.</strong> Watch it on your phone twice, once with the sound off. Export in 9:16 with no watermark.</li>
          </ol>
          <p><strong>Keep it honest.</strong> Do not use AI to add decorations you did not make, hide cracks or change the cake's colour. The customer will expect what they saw. If you use a realistic AI-made scene, turn on the platform's AI label. Keep your raw clips and project files, so you can re-edit later.</p>
          <p>You can also ask an AI assistant to plan the edit before you open the app.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How do I edit my Reel?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I have 14 clips (11 min 20 s) for a 15-second before-and-after Reel.
        Clips: finished drip cake turning (3 takes), plain sponge (2), crumb coat (2),
        ganache drip (3), piping (2), sprinkles (1), closing the box (1).
        Make an edit plan: Time | Clip | Length | On-screen text | Sound.
        The finished cake must appear at second 0. Total exactly 15 seconds.
        Suggest where a quick cut helps and where one slow shot is better.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Diya edits the drip cake Reel</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Import the clips">Diya opens her editing app and imports 14 clips, 11 minutes 20 seconds in all.</li>
              <li data-kind="tool" data-label="Try auto cut">She taps an auto-edit feature. It picks highlights and adds a template with a popular song and beat sync.</li>
              <li data-kind="result" data-label="The rough cut">The app makes a 40-second rough cut. The cuts land on the beat.</li>
              <li data-kind="warn" data-label="Problems to catch">The finished cake appears only at second 31. The template song may not be cleared for a business account. The auto colour filter makes the chocolate look purple.</li>
              <li data-kind="check" data-label="Diya fixes it">She moves the finished cake to second 0 and trims each decorating shot to about 1.5 seconds. She removes the song and turns the filter off.</li>
              <li data-kind="user" data-label="Diya asks AI">"Here is my edit, shot by shot with times. Where does it feel slow? Keep it at 15 seconds."</li>
              <li data-kind="answer" data-label="AI replies">The 2-second crumb coat shot is the slowest part. Cut it to 1 second and give the extra second to the final close-up of the drip.</li>
              <li data-kind="check" data-label="Final checks">Diya exports in 9:16. She watches it on her phone twice, once with the sound off. She adds music later, inside each app, from its own library.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>List your clips and ask AI for a shot-by-shot edit plan. Then build the edit in your app and check it with the list at the end.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a short video editor who teaches beginners. Use simple English. I edit on a phone.

        Video: [a 15-second before-and-after Reel and Short for Sweet Crumbs, a bakery in Maharashtra]
        Goal: [people watch to the end and WhatsApp us the word DRIP]
        My clips: [finished chocolate drip cake turning (3 takes), plain sponge on turntable (2), crumb coat (2), ganache drip (3), piping (2), sprinkles (1), hands closing the cake box (1)]
        Sound: [no voice; music added later inside each app]

        Please give:
        1. An edit plan table: Time | Clip | Length (seconds) | On-screen text (max 6 words) | Sound. The best-looking result must be at second 0. Total exactly [15] seconds.
        2. Which AI features in a typical phone editing app could help (for example auto captions, voice clean-up, templates), and one risk for each.
        3. A 6-point checklist to use before I export.
        Rules: Describe features in general words. Do not suggest changing how the cake really looks.</pre>
            <ul class="ai-try-checks">
              <li>Add up the lengths. Do they total exactly 15 seconds?</li>
              <li>Is the finished result at second 0?</li>
              <li>Did the AI name a risk for each feature, such as wrong captions or robotic voice?</li>
              <li>Does the checklist include watching with the sound off and checking colours?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI editing features save time on cutting, captions and sound, but they do not know what matters in your video. Put the best moment first, trim tight, keep the product's real look, and watch the full edit on a phone before you post.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Captions, On-Screen Text and Subtitles</h1>
        </div>
        <p class="lc-lead">Many people watch short videos with the sound off, on a bus or in an office. Some viewers are deaf or hard of hearing. Others speak a different language. Text on the screen helps all of them. In this lesson, you will learn the kinds of text on a short video and how to make them easy to read. You will also write for Hinglish and Marathi viewers and check auto captions before you post.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Before and after. Before: auto captions in small text at the bottom of the screen, under the app's caption area, with two errors: chocolate trouble instead of truffle, and 5 20 instead of 520 rupees. After: big, bold captions in two lines on a dark box in the safe area: 2. Chocolate truffle, 520 rupees for 500 g. A list shows what Diya fixed: the product name, the price, two lines at most, moved above the app's caption area, and a dark box behind the text.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="135" y="24" font-weight="700" fill="#fca5a5">Before: auto captions</text>
              <rect x="40" y="36" width="190" height="290" rx="16" fill="#1f1f44" stroke="#9b99b8"/>
              <rect x="52" y="56" width="166" height="150" rx="8" fill="#27274e"/>
              <text x="135" y="136" font-size="11" fill="#9b99b8">video: chocolate cake</text>
              <rect x="42" y="262" width="186" height="62" rx="14" fill="#312e5a" opacity="0.9"/>
              <g font-size="10" text-anchor="start">
                <text x="54" y="286">two chocolate <tspan fill="#fca5a5" font-weight="700">trouble</tspan> the safe</text>
                <text x="54" y="302">pick for a big team <tspan fill="#fca5a5" font-weight="700">5 20</tspan></text>
              </g>
              <text x="385" y="24" font-weight="700" fill="#6ee7b7">After: checked</text>
              <rect x="290" y="36" width="190" height="290" rx="16" fill="#1f1f44" stroke="#9b99b8"/>
              <rect x="302" y="56" width="166" height="150" rx="8" fill="#27274e"/>
              <text x="385" y="136" font-size="11" fill="#9b99b8">video: chocolate cake</text>
              <rect x="304" y="198" width="162" height="52" rx="8" fill="#0b0b1f" stroke="#10b981"/>
              <text x="385" y="219" font-size="12.5" font-weight="700">2. Chocolate truffle</text>
              <text x="385" y="239" font-size="12.5" font-weight="700" fill="#fcd34d">₹520 for 500 g</text>
              <rect x="292" y="262" width="186" height="62" rx="14" fill="#312e5a" opacity="0.9"/>
              <text x="620" y="60" font-size="13" font-weight="700">What Diya fixed</text>
              <g font-size="11.5" text-anchor="start">
                <text x="512" y="96"><tspan fill="#6ee7b7">✓</tspan> Name: trouble → truffle</text>
                <text x="512" y="126"><tspan fill="#6ee7b7">✓</tspan> Price: 5 20 → ₹520</text>
                <text x="512" y="156"><tspan fill="#6ee7b7">✓</tspan> Two lines at most</text>
                <text x="512" y="186"><tspan fill="#6ee7b7">✓</tspan> Big, bold text</text>
                <text x="512" y="216"><tspan fill="#6ee7b7">✓</tspan> Dark box for contrast</text>
                <text x="512" y="246"><tspan fill="#6ee7b7">✓</tspan> Above the app's caption area</text>
              </g>
              <text x="620" y="300" font-size="10.5" fill="#9b99b8">Shaded bottom = where the app</text>
              <text x="620" y="316" font-size="10.5" fill="#9b99b8">shows your name and caption</text>
            </g>
          </svg>
          <figcaption>Auto captions were small, low on the screen and wrong on the two most important words. The checked version is short, big and correct.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four kinds of text, and how to make them readable</h3>
          <table class="lc-table">
            <thead><tr><th>Text</th><th>What it is</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Captions</strong></td><td>The spoken words as text, in the same language</td><td>"Two: chocolate truffle. ₹520."</td></tr>
              <tr><td><strong>Subtitles</strong></td><td>The spoken words translated into another language</td><td>Marathi text under an English voiceover</td></tr>
              <tr><td><strong>On-screen text</strong></td><td>Short headline text you add, such as the hook or a price</td><td>"3 office cakes under ₹600"</td></tr>
              <tr><td><strong>Post caption</strong></td><td>The text under the post, with details and hashtags</td><td>Prices, how to order, the code word</td></tr>
            </tbody>
          </table>
          <p><strong>Burned-in captions</strong> are part of the picture, so everyone sees them. <strong>Closed captions</strong> are a separate text track that viewers can switch on or off. YouTube lets you add subtitle tracks in several languages in YouTube Studio. Instagram can make auto captions that viewers can turn off. Check each app's current help pages for the languages it supports.</p>
          <ul class="lc-list">
            <li><strong>Two lines at most</strong>, and a few words per line.</li>
            <li><strong>Big, bold and plain fonts.</strong> Fancy script fonts are hard to read on a small screen.</li>
            <li><strong>Strong contrast.</strong> White text on white cream disappears. Add a dark box or an outline.</li>
            <li><strong>Inside the safe area.</strong> Keep text away from the app's buttons and post caption.</li>
            <li><strong>In time with the voice.</strong> Each line should stay long enough to read twice.</li>
            <li><strong>Digits for numbers and prices</strong> (₹450, 500 g) in every language. They are fast to read.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Hinglish, Marathi and other Indian languages</h3>
          <p>Sweet Crumbs is in Maharashtra. Its viewers speak English, Hindi, Marathi and a mix. Diya chooses the text language by the viewer, not by habit.</p>
          <ul class="lc-list">
            <li><strong>Hinglish in Roman letters</strong> works for a mixed city audience. Pick one spelling style and keep it, for example always "kya", never "kia".</li>
            <li><strong>Marathi in Devanagari</strong> works for a Marathi-first video. It feels local and personal.</li>
            <li><strong>Extra subtitle tracks</strong> on YouTube let one Short serve more languages.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>English</th><th>Hinglish</th><th>Marathi</th></tr></thead>
            <tbody>
              <tr><td>Does your sponge sink in the middle?</td><td>Sponge beech mein baith jaata hai?</td><td>तुमचा स्पंज मधोमध बसतो का?</td></tr>
              <tr><td>Don't keep opening the oven door.</td><td>Oven ka door baar baar mat kholo.</td><td>ओव्हनचं दार सारखं सारखं उघडू नका.</td></tr>
              <tr><td>Order one day before.</td><td>Ek din pehle order karo.</td><td>एक दिवस आधी ऑर्डर द्या.</td></tr>
            </tbody>
          </table>
          <p>AI can translate captions quickly. But AI translations in Indian languages can sound bookish or get words wrong. Ask for everyday spoken language, then ask a native speaker to read it. Diya asks her cousin to check every Marathi line. Some apps now offer AI translation or dubbing. If a realistic AI voice speaks for you, check the platform's AI label rules.</p>
        </div>
        <div class="lc-card">
          <h3>Checking auto captions</h3>
          <p>Diya turned on auto captions for the 30-second office cakes video. Here is what the app heard, next to what Anjali said.</p>
          <table class="lc-table">
            <thead><tr><th>Auto caption</th><th>What Anjali said</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td>"...₹450 for half a kilo" shown as "<strong>4:50</strong> for half a kilo"</td><td>₹450</td><td>Looks like a time, not a price</td></tr>
              <tr><td>"Two: chocolate <strong>trouble</strong>"</td><td>truffle</td><td>Wrong product, and a funny word</td></tr>
              <tr><td>"The safe pick for a big team. <strong>5 20</strong>"</td><td>₹520</td><td>The price is unclear</td></tr>
              <tr><td>"Three: <strong>Ross Malay</strong>"</td><td>rasmalai</td><td>Wrong product name</td></tr>
              <tr><td>"<strong>What's up as</strong> the word office"</td><td>WhatsApp us</td><td>The call to action is lost</td></tr>
            </tbody>
          </table>
          <p>That is 5 errors in 54 spoken words, so about 9 in 10 words were right. But all 5 errors hit prices, product names or the call to action. These are the most important words in the video. A high accuracy score does not mean the captions are safe to post.</p>
          <p><strong>Check in this order:</strong> numbers and prices, names (Sweet Crumbs, rasmalai, ragi), the call to action, then line breaks and timing. Watch once with the sound off, reading only.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Fix my captions.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is an auto caption transcript of my 30-second bakery Reel.
        Fix only real errors. Do not rewrite my words.
        Glossary (always spell these exactly): Sweet Crumbs, rasmalai,
        chocolate truffle, eggless, WhatsApp, OFFICE, ₹450, ₹520, ₹580.
        Break it into caption lines of max 2 lines and about 6 words per line.
        List every change you made in a table: Before | After | Reason.</code></pre>
          <p>Remove customer names and phone numbers from any transcript before you paste it into an AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fix it or leave it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Diya finds these issues in her captions. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="must" data-label="Must fix: wrong meaning"></div>
              <div data-sorter-target="bucket" data-bucket="read" data-label="Fix for readability"></div>
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK to leave"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="must" data-why="A wrong number changes the order. A customer could ask for 14 cupcakes.">Anjali said "40 cupcakes" but the caption says "14 cupcakes"</li>
              <li data-bucket="must" data-why="The brand name is wrong. People cannot search for you.">The caption says "Sweet Crimes" instead of "Sweet Crumbs"</li>
              <li data-bucket="read" data-why="Long captions cover the cake and are hard to read. Split them into short lines.">One caption is four lines long and covers the cake</li>
              <li data-bucket="read" data-why="Low contrast makes text disappear. Add a dark box or an outline.">White caption text sits on top of white cream</li>
              <li data-bucket="ok" data-why="These are Anjali's real words. Captions should match what she said, not make it formal.">Anjali says "chalo" and the caption shows "chalo"</li>
              <li data-bucket="read" data-why="Mixed spellings slow people down. Pick one style and keep it.">"kya" in one line and "kia" in the next</li>
              <li data-bucket="must" data-why="Wrong words in the call to action lose the enquiry.">"What's up as" instead of "WhatsApp us" in the call to action</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste an auto caption transcript from your video, or use the sample. Ask AI to fix only real errors and make readable caption lines in two languages.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a caption editor for Instagram Reels and YouTube Shorts in India. Use simple English.

        Auto caption transcript: [Office birthday small budget 3 egg less cakes under 600. One pineapple light fresh and nobody says no 4:50 for half a kilo. Two chocolate trouble the safe pick for a big team 5 20. Three Ross Malay our most ordered cake in September 580. All three are eggless order a day before what's up as the word office.]

        Glossary (spell exactly): [Sweet Crumbs, rasmalai, chocolate truffle, eggless, WhatsApp, OFFICE, prices with the ₹ sign]
        Second language: [Marathi, in everyday spoken style]

        Please:
        1. Fix only real errors. Keep the speaker's own words.
        2. Give a table of changes: Before | After | Reason.
        3. Split the fixed text into caption lines: max 2 lines, about 6 words per line.
        4. Translate the caption lines into the second language. Keep prices in digits.
        5. List any word you are not sure about, so a native speaker can check it.</pre>
            <ul class="ai-try-checks">
              <li>Are all prices shown as ₹450, ₹520 and ₹580, not as times?</li>
              <li>Did the AI keep the speaker's words, or did it rewrite them?</li>
              <li>Is every caption line short enough for two lines on a phone?</li>
              <li>Ask a native speaker to check the translation before you post.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Captions make your video work with the sound off and for more people. Keep text short, big, high-contrast and in the safe area. Always check auto captions: numbers, names and the call to action first. For Hinglish and Indian languages, use AI for speed and a native speaker for the final check.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Trends, Audio and Timing</h1>
        </div>
        <p class="lc-lead">A trend is a sound, joke, format or edit style that many people use at the same time. A trend can bring new viewers fast, but the wrong trend brings viewers who never come back. In this lesson, you will learn how to decide if a trend fits you and how to use audio you are allowed to use. You will also find good posting times from your own numbers. There is no magic posting time that works for every account.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A decision path for a trend. First question: does it fit your brand, with your product in the first 2 seconds? If no, skip it. If yes, second question: is the audio allowed for a business account? If no, swap the audio for your own voice or a library track, then continue. If yes, third question: is it fresh and kind, not mocking anyone? If no, skip it. If yes, post your version at a time chosen from your insights.">
            <defs><marker id="sv10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="100" y="26" font-size="11.5" fill="#9b99b8">Found a trend?</text>
              <rect x="20" y="40" width="160" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="100" y="72" font-weight="700">Fits your brand?</text>
              <text x="100" y="94" font-size="11" fill="#9b99b8">product in first 2 s</text>
              <rect x="215" y="40" width="160" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="295" y="72" font-weight="700">Audio allowed?</text>
              <text x="295" y="94" font-size="11" fill="#9b99b8">for business accounts</text>
              <rect x="410" y="40" width="160" height="80" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="490" y="72" font-weight="700">Fresh and kind?</text>
              <text x="490" y="94" font-size="11" fill="#9b99b8">not mocking anyone</text>
              <rect x="605" y="40" width="145" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="677" y="72" font-weight="700" fill="#6ee7b7">Post your version</text>
              <text x="677" y="94" font-size="11" fill="#9b99b8">time: your insights</text>
              <rect x="20" y="190" width="160" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="100" y="214" font-weight="700" fill="#f9a8d4">Skip it</text>
              <text x="100" y="233" font-size="11" fill="#9b99b8">brings no buyers</text>
              <rect x="215" y="190" width="160" height="56" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="295" y="214" font-weight="700" fill="#67e8f9">Swap the audio</text>
              <text x="295" y="233" font-size="11" fill="#9b99b8">your voice or library</text>
              <rect x="430" y="190" width="140" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="500" y="214" font-weight="700" fill="#f9a8d4">Skip it</text>
              <text x="500" y="233" font-size="11" fill="#9b99b8">protect your brand</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sv10a)">
                <line x1="182" y1="66" x2="211" y2="66"/>
                <line x1="377" y1="66" x2="406" y2="66"/>
                <line x1="572" y1="66" x2="601" y2="66"/>
                <line x1="100" y1="122" x2="100" y2="186"/>
                <line x1="295" y1="122" x2="295" y2="186"/>
                <line x1="500" y1="122" x2="500" y2="186"/>
                <path d="M377,205 L393,205 L393,108 L406,108" stroke-dasharray="4 3"/>
              </g>
              <g font-size="10.5" fill="#9b99b8">
                <text x="196" y="58">yes</text><text x="391" y="58">yes</text><text x="586" y="58">yes</text>
                <text x="114" y="158">no</text><text x="309" y="158">no</text><text x="514" y="158">no</text>
              </g>
              <text x="380" y="284" font-size="11" fill="#9b99b8">A trend should bring the right viewers, not only likes. Sweet Crumbs' "POV" trend Reel</text>
              <text x="380" y="302" font-size="11" fill="#9b99b8">got likes on 9.2% of views but only 1.1 follows per 1,000 views.</text>
            </g>
          </svg>
          <figcaption>Three questions before you join a trend. A "no" on audio means you change the sound. A "no" on fit or kindness means you skip it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Using trends well</h3>
          <p>Sweet Crumbs' trend Reel, "POV: cake order 1 hour before the party", got many likes but almost no follows. The joke was about any party, not about this bakery. A trend works better when your product and your world are at the centre of it.</p>
          <ul class="lc-list">
            <li><strong>Find trends inside the apps.</strong> Watch your own feed. Tap the audio name to see how many videos use it. On Instagram, some sounds in the music library are marked as trending.</li>
            <li><strong>Do not ask AI what is trending today.</strong> Most AI assistants do not know this week's trends unless they can search the web. Even then, check inside the app.</li>
            <li><strong>Do ask AI to adapt a trend.</strong> Describe the trend and your business, and ask for 5 versions where your product is the point.</li>
            <li><strong>Be quick, but not careless.</strong> Trends fade fast. A trend with your own twist can still work a little later.</li>
            <li><strong>Skip trends that mock</strong> a religion, a region, a body type or a real person. Skip anything that uses a celebrity's voice or face to sell.</li>
          </ul>
          <p><strong>Example.</strong> A "what I asked for vs what I got" trend is popular. Diya adapts it: "Your sketch vs our cake". A customer's pencil sketch from WhatsApp appears first, then the finished cake. The customer agreed, and Diya hid the name and number. This is a before-and-after video in trend style, so it fits the bakery's best format.</p>
        </div>
        <div class="lc-card">
          <h3>Licensed audio in practice</h3>
          <p>The rules lesson explained music rights. Here is how Diya handles audio every week.</p>
          <ul class="lc-list">
            <li><strong>Add music inside each app.</strong> Export the video without music. Then add a track from Instagram's library for the Reel, and from YouTube's library for the Short. Each app's licence covers music added in that app.</li>
            <li><strong>Check the business library.</strong> Sweet Crumbs has a business account, so it sees fewer songs. If a trending song is missing, do not add it from another app.</li>
            <li><strong>Original audio is safe.</strong> Anjali's voice, kitchen sounds, or royalty-free music with a clear licence.</li>
            <li><strong>Voice first.</strong> Keep music much quieter than speech.</li>
            <li><strong>Keep a no-music copy.</strong> If a sound is removed later, the app may mute your video. You can then re-post with a new track.</li>
          </ul>
          <p>Music rules differ by app, country and account type, and they change often. Check each app's current help pages. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Timing: use your own numbers</h3>
          <p>You will see posts that say "always post at 7 pm". Nobody outside the apps knows a best time for every account. Short videos can also keep getting views for days, so the exact hour may matter less than you think. Your own insights are the best guide.</p>
          <ul class="lc-list">
            <li><strong>Instagram:</strong> in the professional dashboard, the follower insights can show your followers' most active hours and days, once you have enough followers.</li>
            <li><strong>YouTube Studio:</strong> in Analytics, the Audience tab can show "When your viewers are on YouTube", once the channel has enough data.</li>
          </ul>
          <p>Diya noted the posting time of the last 8 videos (made-up numbers). Day posts went out between 11 am and 2 pm. Evening posts went out between 7:30 pm and 9 pm.</p>
          <table class="lc-table">
            <thead><tr><th>Slot</th><th>Videos</th><th>Average views</th><th>Average completion</th></tr></thead>
            <tbody>
              <tr><td>Day (11 am – 2 pm)</td><td>#1, #3, #6, #7</td><td>4,575</td><td>31.75%</td></tr>
              <tr><td>Evening (7:30 – 9 pm)</td><td>#2, #4, #5, #8</td><td>3,850</td><td>32.75%</td></tr>
            </tbody>
          </table>
          <p>Check the maths: (1,200 + 5,200 + 2,100 + 9,800) ÷ 4 = 4,575. The two slots are close, and each group mixes different formats. Now compare within one format. The before-and-after at 8:30 pm got 7,400 views. The one at 2 pm got 9,800. The talking heads were weak at 11 am (1,200) and at 8 pm (1,500). The format mattered much more than the hour.</p>
          <p><strong>Diya's timing test for 30 September to 13 October.</strong> Instagram says her followers are most active from 1 to 2 pm and 8 to 10 pm (made-up). She posts one before-and-after at 1 pm and the other at 8:30 pm. She does the same with the two tutorials. She compares each pair 2 days after posting, the same age she uses for every post. Two pairs are a small test, so she will repeat it before she decides.</p>
          <p>For a bakery, the customer's decision time matters too. People often plan weekend birthdays midweek. Posting cake ideas on a Wednesday or Thursday is a guess worth testing, not a rule.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Diya checks a trend and a time</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Diya finds a trend">She sees many Reels in her feed using the "what I asked for vs what I got" idea. She taps the audio name.</li>
              <li data-kind="result" data-label="The audio check">The song many people use is not in the music library of Sweet Crumbs' business account.</li>
              <li data-kind="user" data-label="Diya asks AI">"Adapt the 'what I asked for vs what I got' trend for Sweet Crumbs, a bakery in Maharashtra. Our product must be the point. No copyrighted song."</li>
              <li data-kind="answer" data-label="AI replies">Idea: "Your sketch vs our cake". Show the customer's sketch, then the cake. Sound: Anjali says "Challenge accepted", then kitchen sounds and a library track.</li>
              <li data-kind="warn" data-label="A claim to catch">The AI adds: "This trend is going viral right now. Post it today at 6:47 pm for the best reach." It cannot know either fact. Diya ignores it.</li>
              <li data-kind="check" data-label="Permission">Diya asks the customer if she may show the sketch. She hides the name and phone number in the WhatsApp screenshot.</li>
              <li data-kind="tool" data-label="Insights">She opens Instagram's follower insights. The most active times are 1 to 2 pm and 8 to 10 pm.</li>
              <li data-kind="check" data-label="Diya's decision">The plan already has its two before-and-afters, and no trend video. Diya adds this idea to the idea bank for the next plan, in the 8:30 pm slot.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe a trend you saw in the app and your own insights. Ask AI to adapt the trend to your business and plan a fair timing test.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a short video strategist for small Indian brands and creators. Use simple English.

        My business: [Sweet Crumbs, a bakery in Maharashtra with an Instagram business account and a YouTube channel]
        A trend I saw in the app: [people show "what I asked for vs what I got"]
        Audio I can use: [original audio or the app's music library only]
        My followers' most active times (from my insights): [1 to 2 pm and 8 to 10 pm]
        Videos I will post in the next 2 weeks: [2 before-and-after, 2 tutorials, 1 list, 1 story]

        Please:
        1. Give 3 versions of the trend where my product is the point. For each: first 2 seconds, on-screen text, sound, and whether it needs someone's permission.
        2. Say which version fits my goal of more followers and orders, and why.
        3. Plan a simple posting-time test using my two time slots. Compare only videos of the same format. Say how many days after posting I should compare them.
        Rules: Do not claim what is trending today. Do not give a "best time to post" without my data.</pre>
            <ul class="ai-try-checks">
              <li>Is your product the centre of every trend version?</li>
              <li>Does each version use sound you are allowed to use?</li>
              <li>Does the timing test compare the same formats, after the same number of days?</li>
              <li>Did the AI avoid "best time" claims and "going viral now" claims?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Join a trend only when your product can be the point, the audio is allowed and the joke is kind. Add music inside each app from its own library. For timing, ignore magic hours: read your own insights, test two slots with the same format, and compare after the same number of days.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Repurposing Long Content</h1>
        </div>
        <p class="lc-lead">If you already make long videos, podcasts or blog posts, you have many short videos hidden inside them. <strong>Repurposing</strong> means reusing one piece of content in a new form. In this lesson, you will learn how to find good clips in long content, how AI clipping tools help, and how to keep each clip honest. The key skill is <strong>keeping the context</strong>: a clip must not change what the speaker meant, or cut off a warning, a price condition or the ending.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A timeline of Riya's 18 minute 40 second long video, A week of school tiffins for 500 rupees. Four parts are marked as clips. Clip 1, 40 seconds, poha in 8 minutes. Clip 2, 30 seconds, the 500 rupee shopping list. Clip 3, 45 seconds, peanut chutney toast: the AI tool cut off the nut warning, so Riya moved the start back. Clip 4, 30 seconds, the soggy sandwich fix. Below, a context check for every clip.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="18" font-size="12" fill="#9b99b8">Riya's long video: "A week of school tiffins for ₹500" (18 min 40 s)</text>
              <g font-size="10.5" fill="#9b99b8">
                <text x="40" y="38">0:00</text><text x="222" y="38">5:00</text><text x="404" y="38">10:00</text><text x="586" y="38">15:00</text><text x="716" y="38">18:40</text>
              </g>
              <rect x="40" y="44" width="680" height="24" rx="6" fill="#27274e" stroke="#4b4a78"/>
              <rect x="80" y="44" width="24" height="24" fill="#8b5cf6"/>
              <rect x="155" y="44" width="19" height="24" fill="#3b82f6"/>
              <rect x="380" y="44" width="27" height="24" fill="#ec4899"/>
              <rect x="550" y="44" width="19" height="24" fill="#f59e0b"/>
              <g stroke="#9b99b8" stroke-width="1.2" fill="none">
                <line x1="92" y1="70" x2="102" y2="108"/>
                <line x1="165" y1="70" x2="287" y2="108"/>
                <line x1="393" y1="70" x2="472" y2="108"/>
                <line x1="559" y1="70" x2="657" y2="108"/>
              </g>
              <rect x="20" y="110" width="165" height="112" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="102" y="134" font-weight="700">Clip 1 · 40 s</text>
              <text x="102" y="154" font-size="12">Poha in 8 minutes</text>
              <text x="102" y="174" font-size="11" fill="#9b99b8">1:05 to 1:45</text>
              <text x="102" y="194" font-size="11" fill="#6ee7b7">Full recipe, result first</text>
              <rect x="205" y="110" width="165" height="112" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="287" y="134" font-weight="700">Clip 2 · 30 s</text>
              <text x="287" y="154" font-size="12">₹500 shopping list</text>
              <text x="287" y="174" font-size="11" fill="#9b99b8">3:10 to 3:40</text>
              <text x="287" y="194" font-size="11" fill="#6ee7b7">Prices checked again</text>
              <rect x="390" y="110" width="165" height="112" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="472" y="134" font-weight="700">Clip 3 · 45 s</text>
              <text x="472" y="154" font-size="12">Peanut chutney toast</text>
              <text x="472" y="174" font-size="11" fill="#9b99b8">9:20 to 10:05</text>
              <text x="472" y="194" font-size="11" fill="#f9a8d4">AI cut the nut warning</text>
              <text x="472" y="211" font-size="11" fill="#f9a8d4">Riya moved the start back</text>
              <rect x="575" y="110" width="165" height="112" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="657" y="134" font-weight="700">Clip 4 · 30 s</text>
              <text x="657" y="154" font-size="12">Soggy sandwich fix</text>
              <text x="657" y="174" font-size="11" fill="#9b99b8">14:00 to 14:30</text>
              <text x="657" y="194" font-size="11" fill="#6ee7b7">Ends with the fix</text>
              <rect x="20" y="240" width="720" height="50" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="261" font-size="12">Context check for every clip: does it make sense alone? Is a warning,</text>
              <text x="380" y="279" font-size="12">price or condition cut off? Does it end with the payoff? Would the speaker agree?</text>
            </g>
          </svg>
          <figcaption>One long video can give four short videos. Each clip needs a person to check that nothing important was cut off.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What makes a good clip</h3>
          <p>Riya is a home-cooking creator in Maharashtra. Her YouTube channel is "Tiffin Tales". Her long video "A week of school tiffins for ₹500" is 18 minutes and 40 seconds long. Inside it, there are many small moments that work on their own. A good clip has five things:</p>
          <ul class="lc-list">
            <li><strong>One idea.</strong> One recipe, one tip or one story. Not three half-ideas.</li>
            <li><strong>It stands alone.</strong> A stranger understands it without the long video.</li>
            <li><strong>A strong start.</strong> The first second shows the result or the problem. You may add new hook text on screen.</li>
            <li><strong>A payoff at the end.</strong> The clip ends when the tip, recipe or story is complete.</li>
            <li><strong>A sensible length.</strong> Usually 20 to 60 seconds. Shorts can be longer, but shorter clips are easier to watch to the end.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Long content</th><th>Short video idea</th></tr></thead>
            <tbody>
              <tr><td>Riya's 18-minute tiffin video</td><td>One recipe per clip, with the finished tiffin box in the first second</td></tr>
              <tr><td>An episode of "The Monsoon Mic", a Kerala podcast by Anu and Joel</td><td>The best 40-second story, with captions and a waveform or video of the hosts</td></tr>
              <tr><td>Kabir's 12-minute phone review on "Byte-Size Kabir"</td><td>"3 things I did not like", as a quick list</td></tr>
              <tr><td>Meera's newsletter "Slow Roads" about a Rajasthan stepwell</td><td>A 30-second voiceover over her own photos and clips</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>How AI clipping tools help</h3>
          <p>Many editing tools, such as Descript and Adobe Premiere Pro, have AI features for clips. In general, they can:</p>
          <ul class="lc-list">
            <li>Make a <strong>transcript</strong> (the spoken words as text, with times) so you can search for moments.</li>
            <li>Suggest "highlight" clips and give each a score.</li>
            <li><strong>Reframe</strong> a wide video into vertical 9:16, keeping the speaker's face in the frame.</li>
            <li>Add auto captions, which you must still check.</li>
          </ul>
          <p>YouTube can also let you make a Short from part of your own long video, and link a Short to a longer video. Features change often, so check each tool's current help pages.</p>
          <p>You can also paste a transcript into an AI assistant and ask for clip ideas. Remove any private details first.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Find viral clips in this video.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is the transcript of my 18-minute cooking video, with timestamps.
        Suggest 4 clips of 20 to 60 seconds for Reels and Shorts.
        For each clip give: start and end time, the one idea, a new on-screen hook
        (max 6 words), and why it makes sense without the long video.
        Flag any clip that cuts off a warning, a condition, a price detail
        or the ending. Do not change my words or add claims I did not make.</code></pre>
          <p>AI suggestions are a starting point. Tools often pick the loudest or funniest moment, not the most complete one. Watch every clip from start to end before you post it.</p>
        </div>
        <div class="lc-card">
          <h3>Keep the context</h3>
          <p><strong>Worked example.</strong> The AI tool suggested a peanut chutney clip from 9:32 to 10:05. But at 9:20, Riya says: "Skip this one if your child's school does not allow nuts, or if anyone has a nut allergy." The AI clip left this out. Riya moved the start back to 9:20, so the clip is 45 seconds, not 33. She also added the words "Contains peanuts" on screen for the whole clip.</p>
          <table class="lc-table">
            <thead><tr><th>Context trap</th><th>Example</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>A warning is cut off</td><td>The nut allergy line</td><td>Start the clip earlier, or add the warning on screen</td></tr>
              <tr><td>A price condition is cut off</td><td>"₹500 for the week" was for one child, without fruit</td><td>Add "for 1 child, fruit not included" on screen</td></tr>
              <tr><td>A joke sounds serious</td><td>Joel teases a café he loves, but the clip ends before he says so</td><td>Include the whole joke, or choose another moment</td></tr>
              <tr><td>A time word goes out of date</td><td>"Order by this Sunday"</td><td>Cut the line, or say the real date on screen</td></tr>
              <tr><td>A paid part loses its label</td><td>A sponsored product appears in the clip</td><td>Add the ad label to the clip too</td></tr>
            </tbody>
          </table>
          <p><strong>Rights and people.</strong> Clip only your own content, or content you have permission to use. Ask podcast guests before you post clips of them. Also, do not post many near-identical clips with little change. YouTube's inauthentic content policy covers mass-produced or repetitive content. Make each clip a complete, useful video.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: post, fix or skip?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each clip idea by what it needs before posting.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="post" data-label="Good to post"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix the context first"></div>
              <div data-sorter-target="bucket" data-bucket="skip" data-label="Do not post"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="post" data-why="It is one complete recipe with a clear start and end. It makes sense alone.">Riya's 40-second poha clip, from raw ingredients to the finished plate</li>
              <li data-bucket="fix" data-why="The clip leaves out a safety warning. Start earlier or add the warning on screen.">An AI-picked peanut chutney clip that starts just after the nut allergy warning</li>
              <li data-bucket="fix" data-why="Without the end of the joke, it sounds like a real insult. Include the whole moment.">Joel's joke about a local café, cut before he says he loves the place</li>
              <li data-bucket="fix" data-why="The clip ends before the payoff, so viewers feel cheated. End it after the answer.">A clip that ends on "and the secret ingredient is..."</li>
              <li data-bucket="skip" data-why="The guest said no. Respect it, even if the moment is great.">A Monsoon Mic guest's personal story, after she asked you not to share it on social media</li>
              <li data-bucket="skip" data-why="You do not own this footage. Re-uploading it can break copyright and platform rules.">Twenty clips cut from a TV channel's cooking show</li>
              <li data-bucket="post" data-why="It is one clear tip from your own video, and it ends with the fix.">Riya's 30-second soggy sandwich fix, ending with the crisp sandwich</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a short part of your own transcript, or use the sample. Ask AI for clips, and ask it to flag any context risk.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a short video editor who repurposes long videos and podcasts into Reels and Shorts. Use simple English.

        My long content: [an 18-minute YouTube cooking video, "A week of school tiffins for 500 rupees", by Riya of Tiffin Tales, Maharashtra]
        Transcript part with timestamps:
        [1:05 Monday is poha. It takes 8 minutes...
        3:10 Here is my shopping list for the week, for one child, fruit not included...
        9:20 Skip this one if your child's school does not allow nuts...
        9:32 Peanut chutney toast. Toast the bread, spread the chutney...
        14:00 Is your sandwich soggy by lunch? Do this one thing...]

        Suggest up to 4 clips of 20 to 60 seconds. Make a table:
        Start | End | One idea | New on-screen hook (max 6 words) | Context risk | How to fix it

        Rules:
        - Never change what I said or add new claims.
        - Flag any clip that cuts off a warning, condition, price detail or the payoff.
        - If the transcript is too short to judge, say what else you need.</pre>
            <ul class="ai-try-checks">
              <li>Does the peanut chutney clip start at 9:20, with the nut warning?</li>
              <li>Does the shopping list clip keep "for one child, fruit not included"?</li>
              <li>Does each clip end with a payoff, not in the middle of a step?</li>
              <li>Watch each real clip yourself before posting. AI only saw the text.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Long content is full of short videos, and AI can find the moments fast. But a clip is only good if it still means what the speaker meant. Check every clip for cut-off warnings, conditions, jokes and endings, and clip only content you have the right to use.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Short Video Analytics</h1>
        </div>
        <p class="lc-lead">Analytics are the numbers that show what happened after you posted. They tell you what to make more of, and what to change. In this lesson, you will learn the main short video numbers and how to calculate them. Then you will follow a full worked example: Sweet Crumbs' results for two weeks, checked against their goals. You will also see how to use AI to explain your numbers without trusting its maths blindly.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 322" role="img" aria-label="A goals dashboard for Sweet Crumbs, 30 September to 13 October. Average completion 44.2 percent, goal 40 percent or more: met. Instagram followers plus 131, goal plus 150: missed by 19. YouTube subscribers plus 78, goal plus 60: met. Video enquiries 19, goal 25: missed by 6. Below, a bar chart of completion rate by format, old 8 videos against new 12 posts: before-and-after 57.5 and 57.75 percent, tutorial 41 and 37.5 percent, list 22 and 46 percent, story 18 and 28.5 percent.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="18" font-size="12" fill="#9b99b8">Sweet Crumbs, 30 Sep to 13 Oct 2026: goals check (made-up numbers)</text>
              <rect x="13" y="28" width="176" height="128" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="101" y="50" font-size="12" fill="#9b99b8">Avg completion</text>
              <text x="101" y="84" font-size="24" font-weight="700">44.2%</text>
              <text x="101" y="104" font-size="11" fill="#9b99b8">goal 40%+ · was 32%</text>
              <rect x="29" y="114" width="144" height="8" rx="4" fill="#27274e"/><rect x="29" y="114" width="144" height="8" rx="4" fill="#10b981"/>
              <text x="101" y="142" font-size="11.5" font-weight="700" fill="#6ee7b7">Met</text>
              <rect x="199" y="28" width="176" height="128" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="287" y="50" font-size="12" fill="#9b99b8">Instagram followers</text>
              <text x="287" y="84" font-size="24" font-weight="700">+131</text>
              <text x="287" y="104" font-size="11" fill="#9b99b8">goal +150 (87%)</text>
              <rect x="215" y="114" width="144" height="8" rx="4" fill="#27274e"/><rect x="215" y="114" width="126" height="8" rx="4" fill="#f59e0b"/>
              <text x="287" y="142" font-size="11.5" font-weight="700" fill="#fcd34d">Missed by 19</text>
              <rect x="385" y="28" width="176" height="128" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="473" y="50" font-size="12" fill="#9b99b8">YouTube subscribers</text>
              <text x="473" y="84" font-size="24" font-weight="700">+78</text>
              <text x="473" y="104" font-size="11" fill="#9b99b8">goal +60 (130%)</text>
              <rect x="401" y="114" width="144" height="8" rx="4" fill="#27274e"/><rect x="401" y="114" width="144" height="8" rx="4" fill="#10b981"/>
              <text x="473" y="142" font-size="11.5" font-weight="700" fill="#6ee7b7">Met</text>
              <rect x="571" y="28" width="176" height="128" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="659" y="50" font-size="12" fill="#9b99b8">Video enquiries</text>
              <text x="659" y="84" font-size="24" font-weight="700">19</text>
              <text x="659" y="104" font-size="11" fill="#9b99b8">goal 25 · was 11</text>
              <rect x="587" y="114" width="144" height="8" rx="4" fill="#27274e"/><rect x="587" y="114" width="109" height="8" rx="4" fill="#f59e0b"/>
              <text x="659" y="142" font-size="11.5" font-weight="700" fill="#fcd34d">Missed by 6</text>
              <text x="20" y="182" font-size="12" fill="#9b99b8" text-anchor="start">Completion rate by format: old 8 videos vs new 12 posts</text>
              <g font-size="12" text-anchor="start">
                <text x="20" y="210">Before-and-after</text>
                <text x="20" y="238">Tutorial</text>
                <text x="20" y="266">List</text>
                <text x="20" y="294">Story</text>
              </g>
              <g fill="#4b4a78">
                <rect x="160" y="194" width="253" height="10" rx="2"/>
                <rect x="160" y="222" width="180" height="10" rx="2"/>
                <rect x="160" y="250" width="97" height="10" rx="2"/>
                <rect x="160" y="278" width="79" height="10" rx="2"/>
              </g>
              <g fill="#8b5cf6">
                <rect x="160" y="206" width="254" height="10" rx="2"/>
                <rect x="160" y="234" width="165" height="10" rx="2"/>
                <rect x="160" y="262" width="202" height="10" rx="2"/>
                <rect x="160" y="290" width="125" height="10" rx="2"/>
              </g>
              <g font-size="10.5" fill="#9b99b8" text-anchor="start">
                <text x="419" y="203">57.5%</text><text x="346" y="231">41%</text><text x="263" y="259">22%</text><text x="245" y="287">18%</text>
              </g>
              <g font-size="10.5" fill="#c4b5fd" text-anchor="start">
                <text x="420" y="215">57.75%</text><text x="342" y="243">37.5%</text><text x="368" y="271">46%</text><text x="291" y="299">28.5%</text>
              </g>
              <line x1="336" y1="190" x2="336" y2="304" stroke="#10b981" stroke-dasharray="4 3"/>
              <text x="336" y="316" font-size="10.5" fill="#6ee7b7">40% goal</text>
              <g font-size="11.5" text-anchor="start">
                <rect x="560" y="200" width="14" height="10" rx="2" fill="#4b4a78"/><text x="582" y="209">Old 8 videos</text>
                <rect x="560" y="224" width="14" height="10" rx="2" fill="#8b5cf6"/><text x="582" y="233">New 12 posts</text>
              </g>
            </g>
          </svg>
          <figcaption>Two goals met and two missed. The short list and the story with a strong first line improved the most.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The numbers and how to calculate them</h3>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>What it means</th><th>How to calculate</th></tr></thead>
            <tbody>
              <tr><td><strong>Views</strong></td><td>How many times the video was played. Each app counts views in its own way.</td><td>Read it from the app</td></tr>
              <tr><td><strong>Total watch time</strong></td><td>All the time people spent watching</td><td>Views × average watch time</td></tr>
              <tr><td><strong>Average watch time</strong></td><td>How long a typical view lasted</td><td>Total watch time ÷ views</td></tr>
              <tr><td><strong>Average % viewed</strong></td><td>How much of the video a typical view covered</td><td>Average watch time ÷ length</td></tr>
              <tr><td><strong>Completion rate</strong></td><td>The share of views that reached the end</td><td>Read the retention graph (the line showing how many people are still watching) at the last second</td></tr>
              <tr><td><strong>Shares, saves, follows per 1,000 views</strong></td><td>A fair way to compare videos with different views</td><td>Count ÷ views × 1,000</td></tr>
              <tr><td><strong>Enquiries per 1,000 views</strong></td><td>How well a video brings customers who message you</td><td>Enquiries that named the video ÷ views × 1,000</td></tr>
            </tbody>
          </table>
          <p>Instagram shows saves for Reels. At the time of writing, YouTube Studio does not show a saves number for Shorts. App screens change, so check the current help pages if you cannot find a number.</p>
          <p>Diya keeps a Google Sheet with one row per post. Columns: C = length (s), D = views, E = average watch time (s), F = completion rate, G = shares, I = follows. Her formulas for row 2:</p>
          <pre><code>Average % viewed:       =E2/C2
        Shares per 1,000:       =G2/D2*1000
        Follows per 1,000:      =I2/D2*1000
        Total watch time (min): =D2*E2/60
        Average completion:     =AVERAGE(F2:F13)</code></pre>
        </div>
        <div class="lc-card">
          <h3>The two-week results</h3>
          <p>Sweet Crumbs posted 6 new videos from 30 September to 11 October. Each one went up as a Reel and as a Short, so there are 12 posts. Diya read every post's numbers 2 days after posting, so all posts had the same time to collect views. All numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Video (format, length)</th><th>App</th><th>Views</th><th>Avg watch</th><th>Avg % viewed</th><th>Completion</th><th>Shares</th><th>Saves</th><th>Follows</th></tr></thead>
            <tbody>
              <tr><td>9</td><td>Plain cake to jungle-theme kids' cake (before-and-after, 19 s)</td><td>Reel</td><td>8,200</td><td>13.9 s</td><td>73%</td><td>56%</td><td>150</td><td>160</td><td>50</td></tr>
              <tr><td>9</td><td>Same video</td><td>Short</td><td>7,600</td><td>14.3 s</td><td>75%</td><td>58%</td><td>80</td><td>n/a</td><td>24</td></tr>
              <tr><td>10</td><td>Why eggless cupcakes crack on top: 2 fixes (tutorial, 32 s)</td><td>Reel</td><td>3,400</td><td>19.2 s</td><td>60%</td><td>38%</td><td>40</td><td>120</td><td>20</td></tr>
              <tr><td>10</td><td>Same video</td><td>Short</td><td>4,800</td><td>20.5 s</td><td>64%</td><td>40%</td><td>35</td><td>n/a</td><td>16</td></tr>
              <tr><td>11</td><td>3 cakes under ₹600 for office birthdays (list, 30 s)</td><td>Reel</td><td>4,100</td><td>19.2 s</td><td>64%</td><td>47%</td><td>95</td><td>140</td><td>16</td></tr>
              <tr><td>11</td><td>Same video</td><td>Short</td><td>2,600</td><td>18.6 s</td><td>62%</td><td>45%</td><td>30</td><td>n/a</td><td>5</td></tr>
              <tr><td>12</td><td>The cake box slid off the scooter (story, 40 s)</td><td>Reel</td><td>2,700</td><td>19.6 s</td><td>49%</td><td>31%</td><td>40</td><td>25</td><td>27</td></tr>
              <tr><td>12</td><td>Same video</td><td>Short</td><td>1,900</td><td>17.2 s</td><td>43%</td><td>26%</td><td>12</td><td>n/a</td><td>7</td></tr>
              <tr><td>13</td><td>Crunchy ragi cookies: 2 mistakes to avoid (tutorial, 28 s)</td><td>Reel</td><td>2,300</td><td>15.1 s</td><td>54%</td><td>35%</td><td>22</td><td>70</td><td>11</td></tr>
              <tr><td>13</td><td>Same video</td><td>Short</td><td>3,100</td><td>16.5 s</td><td>59%</td><td>37%</td><td>18</td><td>n/a</td><td>9</td></tr>
              <tr><td>14</td><td>Plain cupcakes to a birthday cupcake board (before-and-after, 20 s)</td><td>Reel</td><td>6,900</td><td>14.6 s</td><td>73%</td><td>57%</td><td>120</td><td>130</td><td>41</td></tr>
              <tr><td>14</td><td>Same video</td><td>Short</td><td>8,400</td><td>15.4 s</td><td>77%</td><td>60%</td><td>90</td><td>n/a</td><td>19</td></tr>
            </tbody>
          </table>
          <p>Totals: 56,000 views (Reels 27,600, Shorts 28,400), 3,380 likes and 732 shares. Reels brought 165 new followers. Shorts brought 80 new subscribers.</p>
        </div>
        <div class="lc-card">
          <h3>Worked maths: checking the goals</h3>
          <ul class="lc-list">
            <li><strong>Completion rate, goal 40% or more.</strong> Add the 12 completion rates: 56 + 58 + 38 + 40 + 47 + 45 + 31 + 26 + 35 + 37 + 57 + 60 = 530. Then 530 ÷ 12 = 44.17%. The old 8 videos averaged 32.25%. <strong>Met.</strong></li>
            <li><strong>Instagram, goal +150.</strong> The account went from 2,340 to 2,471. So 2,471 − 2,340 = 131, and 131 ÷ 150 = 87% of the goal. Reels brought 165 follows, but 165 − 131 = 34 people unfollowed. <strong>Missed by 19.</strong></li>
            <li><strong>YouTube, goal +60.</strong> From 410 to 488, so +78. That is 78 ÷ 60 = 130% of the goal. <strong>Met.</strong></li>
            <li><strong>Enquiries, goal 25.</strong> Anjali asked every customer "Where did you see us?" and got 19 who named a video. That is up from 11, a rise of 8 ÷ 11 = 73%. <strong>Missed by 6.</strong></li>
          </ul>
          <p>Now look closer, by format and by enquiries:</p>
          <table class="lc-table">
            <thead><tr><th>Format (new posts)</th><th>Avg completion</th><th>Shares / 1,000</th><th>Follows / 1,000</th><th>Enquiries</th><th>Enquiries / 1,000 views</th></tr></thead>
            <tbody>
              <tr><td>Before-and-after (#9, #14)</td><td>57.75%</td><td>14.1</td><td>4.3</td><td>6 + 4 = 10</td><td>0.38 and 0.26</td></tr>
              <tr><td>Tutorial (#10, #13)</td><td>37.5%</td><td>8.5</td><td>4.1</td><td>1 + 1 = 2</td><td>0.12 and 0.19</td></tr>
              <tr><td>List of 3 (#11)</td><td>46%</td><td>18.7</td><td>3.1</td><td>5</td><td>0.75</td></tr>
              <tr><td>Story (#12)</td><td>28.5%</td><td>11.3</td><td>7.4</td><td>2</td><td>0.43</td></tr>
            </tbody>
          </table>
          <p>Example: the list got 5 enquiries from 4,100 + 2,600 = 6,700 views. So 5 ÷ 6,700 × 1,000 = 0.75, the best of all six videos. The price list helped people decide to order.</p>
          <p><strong>What Diya decides for the next two weeks:</strong> make 2 list videos with real prices, because they bring orders. Cut tutorials from about 30 seconds to 20–25, since both were under 40% completion. Keep before-and-after for reach. Keep one story a fortnight for follows: the story Reel got 27 ÷ 2,700 × 1,000 = 10.0 follows per 1,000. End every video with "WhatsApp us to order".</p>
          <p><strong>Be fair with comparisons.</strong> The old 8 videos had more days to collect views, so compare rates, not totals. One list video and one story are small samples. Treat these as clues to test again.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Diya's review with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Diya collects the numbers">On 13 October, Diya copies the numbers of all 12 posts into her Google Sheet. She adds the enquiry count per video from Anjali's notebook.</li>
              <li data-kind="result" data-label="The sheet shows">Average completion 44.17%. Total views 56,000. Instagram 2,471 followers. YouTube 488 subscribers.</li>
              <li data-kind="user" data-label="Diya asks AI">"Here is my table and my 4 goals. Check each goal, show your maths, and suggest 3 changes for the next two weeks. Say where my sample is too small."</li>
              <li data-kind="answer" data-label="AI replies">"Completion goal met at 44.17%. YouTube goal met at +78. Enquiries missed: 19 of 25. The list video had the most enquiries per 1,000 views."</li>
              <li data-kind="warn" data-label="A mistake to catch">The AI also says: "Instagram goal met: Reels brought 165 followers." Diya checks the account: 2,471 − 2,340 = 131. Some people unfollowed. The goal was missed.</li>
              <li data-kind="warn" data-label="A weak claim">The AI says Shorts beat Reels because they had 28,400 views, not 27,600. The gap is only 800 views, about 3%. Diya does not treat it as a real difference.</li>
              <li data-kind="check" data-label="Diya writes the decisions">Two list videos with prices, tutorials under 25 seconds, before-and-after for reach, one story, and "WhatsApp us" at the end of each.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own numbers and goals, or keep the sample. Ask AI to check each goal with clear maths. Then redo one calculation yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a short video analytics coach for small Indian businesses and creators. Use simple English.

        My goals for [30 Sep to 13 Oct]: [average completion 40% or more; +150 Instagram followers; +60 YouTube subscribers; 25 enquiries that mention a video]
        Account change: [Instagram 2,340 to 2,471; YouTube 410 to 488]
        Enquiries that named a video: [19]

        My posts, 5 of 12 shown (video, app, length s, views, avg watch s, completion %, shares, follows):
        [Jungle cake, Reel, 19, 8200, 13.9, 56, 150, 50
        Jungle cake, Short, 19, 7600, 14.3, 58, 80, 24
        3 cakes under 600, Reel, 30, 4100, 19.2, 47, 95, 16
        Cupcakes crack, Reel, 32, 3400, 19.2, 38, 40, 20
        Cake box story, Reel, 40, 2700, 19.6, 31, 40, 27]

        Please:
        1. Make a table with average % viewed and shares and follows per 1,000 views.
        2. Check each goal as met or missed. Show the maths in one line each.
        3. Name 3 changes to test next, each tied to a number.
        4. Say where the sample is too small to be sure.

        Rules: Use account changes for follower goals, not follows from posts. Do not invent benchmarks or algorithm rules.</pre>
            <ul class="ai-try-checks">
              <li>Redo one number: 13.9 ÷ 19 should give about 73%.</li>
              <li>Did the AI use 2,471 − 2,340 = 131 for Instagram, not the follows from posts?</li>
              <li>Is every suggested change linked to a real number in your table?</li>
              <li>Did it warn that one or two videos per format is a small sample?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Compare videos with rates: average % viewed, completion rate and counts per 1,000 views. Check each goal with simple maths you can redo yourself. The number that matters most for a business is often not views, but enquiries or orders per 1,000 views.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Short Videos for Brands and Businesses</h1>
        </div>
        <p class="lc-lead">For a business, a short video has one extra job: it should help someone buy. That means showing the real product, clear facts and an easy next step. It also means extra care with customers who appear in your videos and with anyone you give something to. In this lesson, you will learn the main types of business videos. You will write a product demo, and film customer videos with consent. You will also learn when to add a disclosure label under the ASCI guidelines. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A 24-second product demo for the Sweet Crumbs Christmas plum cake in four parts. 0 to 2 seconds, the result: a knife cuts the cake and the fruit shows. 2 to 10 seconds, how it is made: soaked fruit, batter, tins and the oven. 10 to 18 seconds, the facts: 500 grams, eggless option, sample price 650 rupees. 18 to 24 seconds, how to order: pre-orders open in November, WhatsApp us. Below, four checks before posting: are the claims true, are the price and size right, did people agree, and was anything given, which needs a clear label.">
            <defs><marker id="sv13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-size="12" fill="#9b99b8">A 24-second product demo: Sweet Crumbs Christmas plum cake</text>
              <rect x="20" y="34" width="150" height="104" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="95" y="56" font-size="11" fill="#9b99b8">0 to 2 s</text>
              <text x="95" y="78" font-weight="700" fill="#6ee7b7">The result</text>
              <text x="95" y="100" font-size="11">Knife cuts the cake,</text>
              <text x="95" y="117" font-size="11">fruit shows</text>
              <rect x="190" y="34" width="180" height="104" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="280" y="56" font-size="11" fill="#9b99b8">2 to 10 s</text>
              <text x="280" y="78" font-weight="700" fill="#93c5fd">How it is made</text>
              <text x="280" y="100" font-size="11">Soaked fruit, batter,</text>
              <text x="280" y="117" font-size="11">tins, the oven</text>
              <rect x="390" y="34" width="170" height="104" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="475" y="56" font-size="11" fill="#9b99b8">10 to 18 s</text>
              <text x="475" y="78" font-weight="700" fill="#c4b5fd">The facts</text>
              <text x="475" y="100" font-size="11">500 g · eggless option</text>
              <text x="475" y="117" font-size="11">sample price ₹650</text>
              <rect x="580" y="34" width="160" height="104" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="660" y="56" font-size="11" fill="#9b99b8">18 to 24 s</text>
              <text x="660" y="78" font-weight="700" fill="#fcd34d">How to order</text>
              <text x="660" y="100" font-size="11">Pre-orders open in</text>
              <text x="660" y="117" font-size="11">November: WhatsApp us</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sv13a)">
                <line x1="171" y1="86" x2="187" y2="86"/>
                <line x1="371" y1="86" x2="387" y2="86"/>
                <line x1="561" y1="86" x2="577" y2="86"/>
              </g>
              <text x="20" y="170" font-size="12" fill="#9b99b8" text-anchor="start">Before you post, check:</text>
              <rect x="17" y="180" width="170" height="64" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="102" y="206" font-weight="700">Claims true?</text>
              <text x="102" y="226" font-size="11" fill="#9b99b8">eggless, no preservatives</text>
              <rect x="202" y="180" width="170" height="64" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="287" y="206" font-weight="700">Price, size right?</text>
              <text x="287" y="226" font-size="11" fill="#9b99b8">same as the menu</text>
              <rect x="387" y="180" width="170" height="64" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="472" y="206" font-weight="700">People agreed?</text>
              <text x="472" y="226" font-size="11" fill="#9b99b8">customers, staff, children</text>
              <rect x="572" y="180" width="170" height="64" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="657" y="206" font-weight="700">Anything given?</text>
              <text x="657" y="226" font-size="11" fill="#9b99b8">then add a clear label</text>
            </g>
          </svg>
          <figcaption>A product demo shows the result, how it is made, the facts and how to order. Four checks come before posting.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Types of short videos for a business</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Sweet Crumbs example</th><th>What to watch</th></tr></thead>
            <tbody>
              <tr><td><strong>Product demo</strong></td><td>Cutting the Christmas plum cake to show the fruit inside</td><td>Show the real product and the real size</td></tr>
              <tr><td><strong>Behind the scenes</strong></td><td>Diya soaking dried fruit for the plum cakes</td><td>A clean kitchen. No order slips with phone numbers in the shot.</td></tr>
              <tr><td><strong>Question answer</strong></td><td>"Can you write the name in Marathi on the cake?"</td><td>Answer only what you really offer</td></tr>
              <tr><td><strong>Customer video</strong></td><td>A customer picks up a birthday cake and opens the box</td><td>Consent first. Never fake customers.</td></tr>
              <tr><td><strong>Offer or news</strong></td><td>"Plum cake pre-orders are open"</td><td>Dates, prices and limits must match what you will really do</td></tr>
              <tr><td><strong>Creator collaboration</strong></td><td>Riya of "Tiffin Tales" tries a free Christmas hamper</td><td>She needs a clear ad label. You must check she adds it.</td></tr>
            </tbody>
          </table>
          <p>Every business video needs a <strong>call to action</strong> (the one next step you want viewers to take). For Sweet Crumbs, it is "WhatsApp us to order", with the number in the bio and in the caption.</p>
        </div>
        <div class="lc-card">
          <h3>Write a product demo that sells honestly</h3>
          <p>AI is good at turning your facts into a tight script. It is also quick to add claims you never gave it, such as "healthy", "best in town" or "no preservatives". Every claim must be true, and you must be able to prove it. ASCI's guidelines also ask influencers to check that a brand can back up its claims.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a Reel script to sell my plum cake.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a 24-second Reel script for Sweet Crumbs' Christmas plum cake.
        Facts (use only these): 500 g, eggless option, dried fruit soaked for
        2 weeks, sample price ₹650, pre-orders open in November on WhatsApp.
        Beats: 0-2 s result first, 2-10 s how it is made, 10-18 s the facts,
        18-24 s how to order. Give on-screen text (max 6 words) for each beat.
        Do not add health claims, "best" claims or any fact not listed above.</code></pre>
          <p><strong>The script Anjali approved:</strong></p>
          <pre><code>0-2 s   Knife cuts the plum cake. Fruit shows.  Text: "Our Christmas plum cake"
        2-10 s  Fruit soaking, batter, tins, oven.       Text: "Fruit soaked for 2 weeks"
        10-18 s Anjali holds a 500 g cake.               Text: "500 g · eggless option"
                Voice: "Five hundred grams, and we make an eggless one too."
        18-24 s The shop counter with gift boxes.        Text: "Pre-orders open in November"
                Voice: "WhatsApp us to book yours."</code></pre>
          <p>Anjali checked each fact against her recipe book and price list before filming.</p>
        </div>
        <div class="lc-card">
          <h3>Customer videos: consent first</h3>
          <p>Real customers build trust better than any ad line. But they are people, not props. Before you film or post a customer:</p>
          <ul class="lc-list">
            <li><strong>Ask before you film.</strong> Say where the video will go (Reels, Shorts) and for how long it will stay up.</li>
            <li><strong>Get a clear yes in writing.</strong> A short WhatsApp message is a simple record.</li>
            <li><strong>Children need a parent's yes.</strong> Many parents will say no. Respect it.</li>
            <li><strong>Hide private details.</strong> Blur phone numbers, addresses and names on order slips or chat screenshots.</li>
            <li><strong>Remove it if they ask.</strong> Consent can be taken back.</li>
            <li><strong>Never fake it.</strong> No scripted "reviews" from friends posing as customers. No AI-made customers. Do not use AI to change what a customer said.</li>
          </ul>
          <p>If a customer posts their own Reel about your cake, ask before you repost it, and credit them.</p>
        </div>
        <div class="lc-card">
          <h3>Disclosure: when to add a label</h3>
          <p>Under the ASCI influencer guidelines, a <strong>material connection</strong> (money, a free product, a discount, a job or a family link) needs a clear disclosure label. Common labels: Ad, Collaboration, Partnership, Free gift, Employee. Use the platform's paid partnership tool as well, not instead.</p>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>Riya posts a 30-second Reel about the free hamper on her own account</td><td>"Free gift" or "Ad" in the first line of the caption and on screen. ASCI's timing rule is for videos without text, but it is a good guide here. For a video over 15 seconds and under 2 minutes, keep the on-screen label for one third of it: 30 ÷ 3 = 10 seconds. Sweet Crumbs should check she does this.</td></tr>
              <tr><td>Diya praises the bakery's cakes on her personal Instagram</td><td>She works there, so she adds "Employee"</td></tr>
              <tr><td>A customer, Aarti, got 20% off her order for being in a Sweet Crumbs Reel</td><td>It is the bakery's own ad, but viewers may think her praise was unpaid. Say it on screen: "Aarti got a discount for this video."</td></tr>
              <tr><td>Sweet Crumbs uses an AI avatar to present offers</td><td>Say clearly that it is not a real person, and turn on the platform's AI label</td></tr>
            </tbody>
          </table>
          <p>Rules and platform tools change. Check the latest ASCI guidelines and each platform's help pages before a campaign.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: ready to post?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each Sweet Crumbs video by what it needs.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ready" data-label="Ready to post"></div>
              <div data-sorter-target="bucket" data-bucket="consent" data-label="Get consent first"></div>
              <div data-sorter-target="bucket" data-bucket="label" data-label="Add a disclosure"></div>
              <div data-sorter-target="bucket" data-bucket="stop" data-label="Do not post"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ready" data-why="Real product, true facts, a correct price and no other people in it.">A plum cake demo filmed in the shop's kitchen, with the real price on screen</li>
              <li data-bucket="consent" data-why="Children need a parent's clear yes before they appear in a business video.">A customer's child blowing out candles at the counter. The parent was not asked.</li>
              <li data-bucket="label" data-why="The discount is a material connection. Viewers should know her praise was rewarded.">Aarti praises her cake. She got 20% off for being in the video. The video does not say so.</li>
              <li data-bucket="label" data-why="A label hidden among many hashtags at the end is easy to miss. It must be upfront and on screen.">Riya's Reel about the free hamper, with #ad hidden among 25 hashtags at the end</li>
              <li data-bucket="stop" data-why="A fake customer misleads buyers. No label makes it acceptable.">An AI-made "happy customer" saying "Best cake in town!"</li>
              <li data-bucket="consent" data-why="It shows a real person's name and phone number. Ask them, and blur the private details.">A screenshot of a customer's WhatsApp review, showing her name and number</li>
              <li data-bucket="label" data-why="She works at the bakery, which is a material connection. The label is Employee.">Diya praises the bakery's cakes on her personal Instagram</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Plan three business videos with AI, with a consent and disclosure check for each. Change the brackets to your own business.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a short video planner for small Indian businesses. Use simple English. Give general education, not legal advice.

        My business: [Sweet Crumbs, a bakery in Maharashtra]
        Product to promote: [Christmas plum cake, 500 g, eggless option, sample price 650 rupees, pre-orders open in November on WhatsApp]
        People I could film: [our staff, a regular customer, a food creator we would send a free hamper to]

        Plan 3 short videos: a product demo, a customer video and a creator collaboration.
        For each, give:
        1. The first 2 seconds on screen and a hook (max 10 words)
        2. Beats with seconds, for a 20 to 30 second video
        3. The call to action
        4. Consent needed (who, and how to record their yes)
        5. Disclosure needed under the ASCI influencer guidelines (which label, where, how long on screen)

        Rules: Use only the facts I gave. No health or "best" claims. No fake or AI-made customers. If a rule may have changed, say "check the current ASCI guidelines".</pre>
            <ul class="ai-try-checks">
              <li>Did the AI use only your facts, with no new claims such as "healthy"?</li>
              <li>Does the creator video have an upfront label, such as "Free gift" or "Ad"?</li>
              <li>For a 30-second video, is the on-screen label shown for about 10 seconds?</li>
              <li>Does the customer video include a clear, written yes before filming?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A business video should show the real product, true facts and one clear next step. Real customers build trust only when they agreed to appear and nothing was hidden. If anyone got something for the video, say so clearly and early.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">A Weekly Short Video System</h1>
        </div>
        <p class="lc-lead">Good short videos come from a steady habit, not from bursts of energy. A <strong>weekly system</strong> is a fixed plan for when you plan, film, edit, post and review. It saves time, because you do similar jobs together. It also protects you from burnout (being so tired of the work that you stop). In this lesson, you will build a weekly system with batching, templates and an idea bank, and see where AI saves the most time.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Diya's week for Sweet Crumbs. Monday: plan, pick 3 ideas, AI drafts and Anjali rewrites, 60 minutes. Tuesday: film 3 videos and B-roll from 7:30 to 9:30 am, edit video 1, review last week, 185 minutes. Wednesday: post video 1 as a Reel and a Short, edit video 2, 60 minutes. Thursday: edit video 3 and check captions, 45 minutes. Friday: post video 2 and schedule video 3 for Sunday, 30 minutes. Saturday: shop day, no video work. Sunday: video 3 posts by schedule, reply to comments, 15 minutes. Below: an idea bank, templates and a spare video. Total about 6 hours 35 minutes a week.">
            <g font-family="inherit" font-size="11" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="10" width="100" height="30" rx="8" fill="#27274e"/><text x="62" y="30" font-size="13" font-weight="700">Mon</text>
              <rect x="118" y="10" width="100" height="30" rx="8" fill="#27274e"/><text x="168" y="30" font-size="13" font-weight="700">Tue</text>
              <rect x="224" y="10" width="100" height="30" rx="8" fill="#27274e"/><text x="274" y="30" font-size="13" font-weight="700">Wed</text>
              <rect x="330" y="10" width="100" height="30" rx="8" fill="#27274e"/><text x="380" y="30" font-size="13" font-weight="700">Thu</text>
              <rect x="436" y="10" width="100" height="30" rx="8" fill="#27274e"/><text x="486" y="30" font-size="13" font-weight="700">Fri</text>
              <rect x="542" y="10" width="100" height="30" rx="8" fill="#27274e"/><text x="592" y="30" font-size="13" font-weight="700">Sat</text>
              <rect x="648" y="10" width="100" height="30" rx="8" fill="#27274e"/><text x="698" y="30" font-size="13" font-weight="700">Sun</text>
              <rect x="12" y="48" width="100" height="146" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="62" y="72" font-size="12.5" font-weight="700" fill="#c4b5fd">Plan</text>
              <text x="62" y="94">Pick 3 ideas</text>
              <text x="62" y="112">AI drafts,</text>
              <text x="62" y="130">Anjali rewrites</text>
              <text x="62" y="182" fill="#9b99b8">60 min</text>
              <rect x="118" y="48" width="100" height="146" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="168" y="72" font-size="12.5" font-weight="700" fill="#6ee7b7">Film</text>
              <text x="168" y="92">3 videos</text>
              <text x="168" y="108">+ B-roll</text>
              <text x="168" y="124">7:30 to 9:30</text>
              <text x="168" y="140">Edit video 1</text>
              <text x="168" y="156">Review 20 min</text>
              <text x="168" y="182" fill="#9b99b8">185 min</text>
              <rect x="224" y="48" width="100" height="146" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="274" y="72" font-size="12.5" font-weight="700" fill="#fcd34d">Post 1</text>
              <text x="274" y="94">Reel + Short</text>
              <text x="274" y="112">Edit video 2</text>
              <text x="274" y="182" fill="#9b99b8">60 min</text>
              <rect x="330" y="48" width="100" height="146" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="72" font-size="12.5" font-weight="700" fill="#93c5fd">Edit</text>
              <text x="380" y="94">Edit video 3</text>
              <text x="380" y="112">Check captions</text>
              <text x="380" y="182" fill="#9b99b8">45 min</text>
              <rect x="436" y="48" width="100" height="146" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="486" y="72" font-size="12.5" font-weight="700" fill="#fcd34d">Post 2</text>
              <text x="486" y="94">Reel + Short</text>
              <text x="486" y="112">Schedule 3</text>
              <text x="486" y="130">for Sunday</text>
              <text x="486" y="182" fill="#9b99b8">30 min</text>
              <rect x="542" y="48" width="100" height="146" rx="8" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="5 4"/>
              <text x="592" y="72" font-size="12.5" font-weight="700" fill="#9b99b8">Shop day</text>
              <text x="592" y="94" fill="#9b99b8">No video work</text>
              <text x="592" y="182" fill="#9b99b8">0 min</text>
              <rect x="648" y="48" width="100" height="146" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="698" y="72" font-size="12.5" font-weight="700" fill="#fcd34d">Post 3</text>
              <text x="698" y="94">Goes out by</text>
              <text x="698" y="112">schedule</text>
              <text x="698" y="130">Reply to</text>
              <text x="698" y="148">comments</text>
              <text x="698" y="182" fill="#9b99b8">15 min</text>
              <rect x="12" y="210" width="230" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="127" y="232" font-size="12.5" font-weight="700">Idea bank</text>
              <text x="127" y="252" fill="#9b99b8">one sheet, ideas + status</text>
              <rect x="265" y="210" width="230" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="232" font-size="12.5" font-weight="700">Templates</text>
              <text x="380" y="252" fill="#9b99b8">script, caption, edit, cover</text>
              <rect x="518" y="210" width="230" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="633" y="232" font-size="12.5" font-weight="700">1 spare video</text>
              <text x="633" y="252" fill="#9b99b8">ready for a busy week</text>
              <text x="380" y="290" font-size="11.5" fill="#9b99b8">About 6 h 35 min a week for 3 videos, each posted as a Reel and a Short</text>
            </g>
          </svg>
          <figcaption>Diya's weekly system: one planning session, one filming session, short editing slots, fixed posting days and one free shop day.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Batching: do similar jobs together</h3>
          <p><strong>Batching</strong> means doing the same kind of job for several videos in one session. Setting up to film takes time: clean the counter, set the light, wear the apron, charge the phone. If you set up once and film three videos, you save two setups.</p>
          <p>Diya films every Tuesday from 7:30 to 9:30 am, before the shop opens and while the window light is soft. Her batch list for the second week:</p>
          <pre><code>BATCH FILM: Tuesday 6 Oct, 7:30-9:30 am
        1. Story: "The cake box slid off the scooter" (40 s)
           Anjali's first line to camera, the scooter, the rescue, the party table
        2. Tutorial: "Crunchy ragi cookies: 2 mistakes to avoid" (28 s)
           Close-up of the snap first, then 2 mistakes and 2 fixes
        3. Before-and-after: "Plain cupcakes to a birthday cupcake board" (20 s)
           Finished board for 1 second, then plain cupcakes, then piping
        B-ROLL (10 min at the end): plum cake fruit soaking, cake tins,
        gift boxes. Save to the "Christmas" folder for November.</code></pre>
          <p>By 13 October, these B-roll slots gave Diya 14 plum cake clips, ready for the pre-order videos in November.</p>
        </div>
        <div class="lc-card">
          <h3>Templates: stop starting from zero</h3>
          <p>A <strong>template</strong> is a saved pattern you fill in each time. It keeps your videos consistent and cuts decisions.</p>
          <ul class="lc-list">
            <li><strong>Script template:</strong> result first (0–2 s), 2 or 3 beats, payoff, call to action.</li>
            <li><strong>Edit template:</strong> saved in your editing app, such as Instagram Edits or Canva. Same caption font, colours, text position and end card.</li>
            <li><strong>Cover template:</strong> the same layout for every cover frame, so your profile grid looks tidy.</li>
            <li><strong>Caption template:</strong> the text under the post.</li>
          </ul>
          <pre><code>[Hook line, repeated from the video]
        [One useful fact or tip, 1-2 lines]
        [Price or detail, if it is a product]
        WhatsApp us to order: link in bio
        #SweetCrumbs #MaharashtraBakery #[product] #[format tag]</code></pre>
          <p>AI can fill a template in seconds. Ask it to use only the facts you give. Then read each caption before you post it.</p>
        </div>
        <div class="lc-card">
          <h3>The idea bank</h3>
          <p>An <strong>idea bank</strong> is one list of every video idea, with its status. When you plan on Monday, you pick from it. You never face an empty page.</p>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>Format</th><th>Source</th><th>Priority</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>3 eggless cakes for kids' parties</td><td>List</td><td>Analytics: lists bring enquiries</td><td>High</td><td>Ready to film</td></tr>
              <tr><td>Can you write the name in Marathi?</td><td>Question answer</td><td>Customer question</td><td>Medium</td><td>Idea</td></tr>
              <tr><td>Plum cake: fruit soaking to finished cake</td><td>Before-and-after</td><td>Christmas pre-orders</td><td>High</td><td>B-roll ready</td></tr>
              <tr><td>Why buttercream melts in the summer heat</td><td>Tutorial</td><td>Customer question</td><td>Low</td><td>Idea</td></tr>
              <tr><td>The midnight power cut order</td><td>Story</td><td>Anjali's memory</td><td>Medium</td><td>Script drafted</td></tr>
            </tbody>
          </table>
          <p>Good sources: customer questions from DMs, your analytics, festivals and seasons, and comments. When you ask AI to turn DMs into ideas, remove names and phone numbers first. To count ready list videos in Google Sheets: <code>=COUNTIFS(B:B,"List",E:E,"Ready to film")</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Avoid burnout</h3>
          <ul class="lc-list">
            <li><strong>Set a minimum and a target.</strong> Sweet Crumbs' target is 3 videos a week. The minimum is 2. In a very busy week, 2 is still a success.</li>
            <li><strong>Keep one spare video.</strong> A finished video "in the bank" covers a sick day or a big order.</li>
            <li><strong>Plan for busy seasons.</strong> November and December bring plum cake and Christmas orders. Diya films extra in October, so December can be lighter.</li>
            <li><strong>Box the time.</strong> Stop at the planned time. More editing rarely fixes a weak idea.</li>
            <li><strong>Use AI to save time, not to post more.</strong> More posts of lower quality do not help. Near-identical posts can also break platform rules on mass-produced content.</li>
            <li><strong>Take a day off.</strong> Diya does no video work on Saturday, the busiest shop day.</li>
          </ul>
          <p>Both Instagram and YouTube let you schedule posts. Check the apps' current help pages for how scheduling works for your account.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one week in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Diya's weekly loop in order, from planning to review.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Monday: pick 3 ideas from the idea bank, using last week's numbers</li>
              <li data-order="2">Monday: AI drafts 3 scripts from the template, and Anjali rewrites them in her words</li>
              <li data-order="3">Tuesday: batch-film all 3 videos, plus 10 minutes of B-roll</li>
              <li data-order="4">Tuesday to Thursday: edit with the saved template and fix every auto caption</li>
              <li data-order="5">Wednesday, Friday and Sunday: post each video as a Reel and a Short</li>
              <li data-order="6">Two days after each post: copy its numbers into the sheet</li>
              <li data-order="7">Next Tuesday: review the numbers and add new ideas to the idea bank</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Tell AI how much time you really have. Ask it to build a weekly system that fits your life, not an ideal one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a planning coach for small creators and businesses who make short videos. Use simple English.

        About me: [Sweet Crumbs, a bakery in Maharashtra. Diya films and edits on her phone.]
        Time I have for video work: [about 6 to 7 hours a week]
        Busy days I cannot use: [Saturday; Sunday afternoon]
        Target: [3 videos a week, each posted as a Reel and a Short]. Minimum: [2 a week]
        Best time to film: [7:30 to 9:30 am on weekdays, before the shop opens]
        Busy season coming: [Christmas plum cake pre-orders in November]

        Please give me:
        1. A day-by-day table: Day | Task | Minutes. Add the total minutes.
        2. A script template and a caption template I can reuse.
        3. Idea bank columns, and 5 starter ideas for my business.
        4. Five rules to avoid burnout, including a plan for the busy season.

        Rules: Keep the total within my time. Mark which tasks AI can draft and which I must do myself.</pre>
            <ul class="ai-try-checks">
              <li>Add up the minutes yourself. Is the total within your real time?</li>
              <li>Does it avoid your busy days?</li>
              <li>Does it batch filming into one session instead of every day?</li>
              <li>Does the busy-season plan lower the target or film extra videos in advance?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A simple weekly system beats bursts of effort. Plan once, film in one batch, edit with templates, post on fixed days and review every week. Keep a spare video and a minimum target, so a busy week does not break the habit.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Capstone: A Two-Week Reels and Shorts Plan for Sweet Crumbs</h1>
        </div>
        <p class="lc-lead">In this capstone, you bring the whole course together. You will build a complete two-week plan for Sweet Crumbs, the made-up bakery in Maharashtra, for 30 September to 13 October 2026. The plan has six parts: the format mix, 10 hooks, 3 scripts, captions, an edit checklist and the metrics to track. Every choice comes from the bakery's own numbers. At the end, you will use one prompt to build the same plan for your own account.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 316" role="img" aria-label="The two-week plan as a calendar. Week 1: Wednesday 30 September, before-and-after, jungle-theme kids' cake. Friday 2 October, tutorial, cupcakes crack, 2 fixes. Sunday 4 October, list of 3, 3 cakes under 600 rupees. Week 2: Wednesday 7 October, story, the cake box slid off. Friday 9 October, tutorial, ragi cookies, 2 mistakes. Sunday 11 October, before-and-after, cupcake birthday board. Each video shows the cake in the first seconds. Goals by 13 October: completion 40 percent or more, plus 150 Instagram followers and plus 60 YouTube subscribers, 25 enquiries, and plum cake B-roll for November.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="18" font-size="12" fill="#9b99b8">Sweet Crumbs: 6 videos, each posted as a Reel and a Short (12 posts)</text>
              <g font-size="12" font-weight="700" fill="#9b99b8">
                <text x="205" y="42">Wednesday</text><text x="421" y="42">Friday</text><text x="637" y="42">Sunday</text>
              </g>
              <rect x="12" y="52" width="80" height="80" rx="8" fill="#27274e"/><text x="52" y="97" font-weight="700">Week 1</text>
              <rect x="12" y="142" width="80" height="80" rx="8" fill="#27274e"/><text x="52" y="187" font-weight="700">Week 2</text>
              <rect x="102" y="52" width="206" height="80" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="205" y="74" font-weight="700" fill="#6ee7b7">30 Sep · Before-and-after</text>
              <text x="205" y="94" font-size="11.5">Jungle-theme kids' cake</text>
              <text x="205" y="114" font-size="11" fill="#9b99b8">First: finished cake, 1 s</text>
              <rect x="318" y="52" width="206" height="80" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="421" y="74" font-weight="700" fill="#93c5fd">2 Oct · Tutorial</text>
              <text x="421" y="94" font-size="11.5">Cupcakes crack: 2 fixes</text>
              <text x="421" y="114" font-size="11" fill="#9b99b8">First: cracked top, close-up</text>
              <rect x="534" y="52" width="206" height="80" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="637" y="74" font-weight="700" fill="#fcd34d">4 Oct · List of 3</text>
              <text x="637" y="94" font-size="11.5">3 cakes under ₹600</text>
              <text x="637" y="114" font-size="11" fill="#9b99b8">First: all 3 cakes + prices</text>
              <rect x="102" y="142" width="206" height="80" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="205" y="164" font-weight="700" fill="#f9a8d4">7 Oct · Story</text>
              <text x="205" y="184" font-size="11.5">The cake box slid off</text>
              <text x="205" y="204" font-size="11" fill="#9b99b8">First: the rescued cake</text>
              <rect x="318" y="142" width="206" height="80" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="421" y="164" font-weight="700" fill="#93c5fd">9 Oct · Tutorial</text>
              <text x="421" y="184" font-size="11.5">Ragi cookies: 2 mistakes</text>
              <text x="421" y="204" font-size="11" fill="#9b99b8">First: the cookie snaps</text>
              <rect x="534" y="142" width="206" height="80" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="637" y="164" font-weight="700" fill="#6ee7b7">11 Oct · Before-and-after</text>
              <text x="637" y="184" font-size="11.5">Cupcake birthday board</text>
              <text x="637" y="204" font-size="11" fill="#9b99b8">First: finished board, 1 s</text>
              <text x="12" y="244" font-size="11.5" fill="#9b99b8" text-anchor="start">Goals by 13 October:</text>
              <rect x="13" y="252" width="176" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="101" y="274" font-weight="700">Completion 40%+</text>
              <text x="101" y="293" font-size="11" fill="#9b99b8">was about 32%</text>
              <rect x="199" y="252" width="176" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="287" y="274" font-weight="700">+150 IG · +60 YT</text>
              <text x="287" y="293" font-size="11" fill="#9b99b8">followers, subscribers</text>
              <rect x="385" y="252" width="176" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="473" y="274" font-weight="700">25 enquiries</text>
              <text x="473" y="293" font-size="11" fill="#9b99b8">that name a video (was 11)</text>
              <rect x="571" y="252" width="176" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="659" y="274" font-weight="700">Plum cake B-roll</text>
              <text x="659" y="293" font-size="11" fill="#9b99b8">for November pre-orders</text>
            </g>
          </svg>
          <figcaption>The plan on one page: six videos on fixed days, each opening with the cake or the result, and four goals to check on 13 October.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Part 1: the brief and the format mix</h3>
          <p>Start with a brief. It holds the facts that every prompt in this plan will use.</p>
          <pre><code>BRIEF: Sweet Crumbs, a bakery in Maharashtra. Owner Anjali, helper Diya.
        Sells: custom birthday cakes (eggless options), cupcakes, cookies
        (new: ragi cookies). Christmas plum cake pre-orders open in November.
        Accounts on 29 Sep 2026: Instagram 2,340 followers, YouTube 410 subscribers.
        Last 8 videos: before-and-after best (57.5% completion), list got most
        shares per 1,000 (20.7) but 5 items was slow (22%), story got most
        follows per 1,000 (10.0) but started slowly, talking head that
        opened with "Hi everyone" was weakest (9%). Average completion 32.25%.
        Rules: real products only, no health or "best" claims, app music library
        for business accounts or original audio, consent for any customer.</code></pre>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Format</th><th>Video</th><th>Length</th><th>Why, from the numbers</th></tr></thead>
            <tbody>
              <tr><td>Wed 30 Sep</td><td>Before-and-after</td><td>Plain cake to jungle-theme kids' cake</td><td>19 s</td><td>Best format for views, completion and follows</td></tr>
              <tr><td>Fri 2 Oct</td><td>Tutorial</td><td>Why eggless cupcakes crack on top: 2 fixes</td><td>32 s</td><td>The sponge tutorial held 65% average viewed</td></tr>
              <tr><td>Sun 4 Oct</td><td>List of 3</td><td>3 cakes under ₹600 for office birthdays</td><td>30 s</td><td>Most shares and saves. Fix: 3 items, not 5.</td></tr>
              <tr><td>Wed 7 Oct</td><td>Story</td><td>The cake box slid off the scooter</td><td>40 s</td><td>Best follows per 1,000. Fix: strong first line.</td></tr>
              <tr><td>Fri 9 Oct</td><td>Tutorial</td><td>Crunchy ragi cookies: 2 mistakes to avoid</td><td>28 s</td><td>Gives the new cookies a second try, without a long hello</td></tr>
              <tr><td>Sun 11 Oct</td><td>Before-and-after</td><td>Plain cupcakes to a birthday cupcake board</td><td>20 s</td><td>Second strong reach video</td></tr>
            </tbody>
          </table>
          <p>No trend video this time. The trend Reel got likes but only 1.1 follows per 1,000 views.</p>
        </div>
        <div class="lc-card">
          <h3>Part 2: 10 hooks</h3>
          <p>Diya asked AI for 30 hooks, then chose 10. Each one is true, works with the sound off and shows the cake early.</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Video</th><th>Hook type</th><th>On-screen text</th><th>Spoken line</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Jungle cake</td><td>Result first</td><td>From plain to jungle party</td><td>(no voice, kitchen sounds)</td></tr>
              <tr><td>2</td><td>Jungle cake</td><td>Surprise</td><td>This lion is made of sugar</td><td>"Yes, you can eat the lion."</td></tr>
              <tr><td>3</td><td>Cupcakes crack</td><td>Problem</td><td>Cupcakes cracking on top?</td><td>"Two fixes. Both take one minute."</td></tr>
              <tr><td>4</td><td>Cupcakes crack</td><td>Mistake (Hinglish)</td><td>Cupcake phat jaata hai?</td><td>"Oven ka temperature check karo."</td></tr>
              <tr><td>5</td><td>3 cakes</td><td>Number</td><td>3 office cakes under ₹600</td><td>"Save this for the next birthday at work."</td></tr>
              <tr><td>6</td><td>3 cakes</td><td>Question</td><td>Office birthday tomorrow?</td><td>"Three cakes, all under 600 rupees."</td></tr>
              <tr><td>7</td><td>Cake box story</td><td>Story moment</td><td>Party in 40 minutes...</td><td>"The cake box slid off the scooter."</td></tr>
              <tr><td>8</td><td>Cake box story</td><td>Story moment (Hinglish)</td><td>Party 40 minute mein</td><td>"Aur cake box scooter se gir gaya."</td></tr>
              <tr><td>9</td><td>Ragi cookies</td><td>Mistake</td><td>Soft ragi cookies? 2 mistakes</td><td>"Your ragi cookies should snap like this."</td></tr>
              <tr><td>10</td><td>Cupcake board</td><td>Result first</td><td>12 cupcakes, 1 message</td><td>(no voice, the board turns slowly)</td></tr>
            </tbody>
          </table>
          <p>Hooks 1, 3, 5, 7, 9 and 10 are the first choices. The others are backups to test later. Anjali said each spoken line aloud and changed any that did not sound like her.</p>
        </div>
        <div class="lc-card">
          <h3>Part 3: three scripts with captions</h3>
          <p><strong>Script 1: before-and-after (19 s)</strong></p>
          <pre><code>0-1 s    Finished jungle cake turns slowly.    Text: "From plain to jungle party"
        1-4 s    Plain white cake on the turntable.    Text: "It started like this"
        4-15 s   Fast cuts: green leaves piped, sugar lion and giraffe placed,
                 "Happy Birthday" topper.
        15-19 s  Anjali's hands add a candle.          Text: "Kids' theme cakes · eggless option"
        Audio: kitchen sounds + a track from the app's music library for businesses.
        CAPTION: From plain to jungle party in 19 seconds. Theme cakes for kids,
        with eggless options. WhatsApp us to order: link in bio.
        #SweetCrumbs #MaharashtraBakery #KidsBirthdayCake</code></pre>
          <p><strong>Script 2: list of 3 (30 s, sample prices)</strong></p>
          <pre><code>0-3 s    All 3 cakes with price cards.               Text: "3 office cakes under ₹600"
        3-10 s   Pineapple, 500 g.                           Text: "1. Pineapple · ₹450"
        10-17 s  Chocolate truffle, 500 g.                   Text: "2. Chocolate truffle · ₹520"
        17-24 s  Rasmalai, 500 g.                            Text: "3. Rasmalai · ₹580"
        24-30 s  Anjali: "All three are eggless. WhatsApp us the word OFFICE."
        CAPTION: 3 office birthday cakes under ₹600: pineapple ₹450,
        chocolate truffle ₹520, rasmalai ₹580 (500 g each, eggless). Save this
        and send it to whoever orders the cake. WhatsApp us: link in bio.</code></pre>
          <p><strong>Script 3: story (40 s)</strong></p>
          <pre><code>0-3 s    The rescued cake on the party table.
                 Anjali (voice): "The cake box slid off the scooter. Party in 40 minutes."
        3-12 s   Diya's real photo of the dented box. Text: "Real photo, that evening"
        12-30 s  Back in the kitchen: new top layer, fast re-piping, box on Diya's lap.
        30-37 s  Arrival with 5 minutes to spare. The family agreed to this shot.
        37-40 s  Text: "Now every cake travels in a non-slip tray"
                 Anjali: "Need a birthday cake? WhatsApp us."
        CAPTION: The cake box slid off the scooter, 40 minutes before the party.
        Here is how we saved it. WhatsApp us for birthday cakes: link in bio.</code></pre>
          <p>If you re-create a scene for a story, say "Re-created" on screen. Viewers should know what is real.</p>
        </div>
        <div class="lc-card">
          <h3>Part 4: the edit checklist and the metrics</h3>
          <p><strong>Edit checklist (Diya ticks it for every video):</strong></p>
          <ul class="lc-list">
            <li>The cake or the result is on screen in the first 2 seconds. No "Hi everyone".</li>
            <li>Hook text appears in the first second, away from the app's buttons.</li>
            <li>Every auto caption is fixed: names, prices and Hinglish words.</li>
            <li>Prices and sizes match the menu. No health or "best" claims.</li>
            <li>Music comes from the app's library for businesses, or is original audio.</li>
            <li>Customers in the video agreed in writing. No phone numbers or addresses show.</li>
            <li>Any realistic AI visuals or voices have the platform's AI label (none are planned).</li>
            <li>The video ends with "WhatsApp us" and is within 2 seconds of its planned length.</li>
            <li>Exported in vertical 9:16, then posted as a Reel and as a Short.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Number to track</th><th>How to calculate</th><th>Target</th></tr></thead>
            <tbody>
              <tr><td>Keep people watching</td><td>Completion rate of each post</td><td>Read the retention graph at the last second. Then average the 12 posts.</td><td>40% or more</td></tr>
              <tr><td>Grow the accounts</td><td>Follower and subscriber counts</td><td>Count on 13 Oct − 2,340 (Instagram) and − 410 (YouTube)</td><td>+150 and +60</td></tr>
              <tr><td>Get orders</td><td>Enquiries that name a video</td><td>Anjali asks "Where did you see us?" and notes the video</td><td>25 (was 11)</td></tr>
              <tr><td>Be useful</td><td>Shares and saves per 1,000 views</td><td>Count ÷ views × 1,000</td><td>Compare with the old list: 20.7 shares per 1,000</td></tr>
            </tbody>
          </table>
          <p>Diya reads each post's numbers 2 days after posting, so posts are compared at the same age. She reviews on Tuesday 6 October and Tuesday 13 October. You saw how this plan turned out in the analytics lesson: completion reached 44.17% and YouTube beat its goal, while Instagram and enquiries fell short.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: building the plan with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Diya sends the brief">She pastes the brief and the 8-video results, and asks: "Suggest 6 videos for 30 Sep to 13 Oct. Explain each choice with my numbers."</li>
              <li data-kind="answer" data-label="AI suggests a mix">2 before-and-after, 2 tutorials, 1 list and 1 story, plus a trend video "using a viral Bollywood song".</li>
              <li data-kind="warn" data-label="Catch the problem">Sweet Crumbs is a business account, so that song may not be cleared for it. The trend also brought only 1.1 follows per 1,000 views. Diya drops it.</li>
              <li data-kind="user" data-label="Diya asks for hooks">"Write 30 hooks for these 6 videos. Mix types. Give 5 in Hinglish. Max 6 words on screen."</li>
              <li data-kind="warn" data-label="A claim to remove">One hook says "India's healthiest ragi cookies". Nobody can prove that. Diya changes it to "Soft ragi cookies? 2 mistakes".</li>
              <li data-kind="tool" data-label="Diya builds the sheet">She puts the 6 videos, dates, hooks and the edit checklist into her Google Sheet, next to the idea bank.</li>
              <li data-kind="check" data-label="Anjali's final check">Anjali reads each script aloud, rewrites lines in her own Hinglish, and checks every price against the menu.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use this prompt to build your own two-week plan. Replace the brackets with your account, numbers and goals. Then check every part against your real data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a short video strategist for small Indian brands and creators. Use simple English.

        Brief: [Sweet Crumbs, a bakery in Maharashtra. Birthday cakes with eggless options, cupcakes, ragi cookies. Plum cake pre-orders in November.]
        Accounts now: [Instagram 2,340 followers, YouTube 410 subscribers]
        Past results by format (completion, follows per 1,000 views): [before-and-after 57.5%, 7.7; tutorial 41%, 6.5; list 22%, 4.8; story 18%, 10.0; trend 44%, 1.1; talking head 9%, 3.0]
        Goals for [the next 2 weeks]: [6 videos; completion 40%+; +150 followers; 25 enquiries]
        Time: [about 6 hours a week]

        Make a two-week plan with:
        1. Format mix: 6 videos with dates, lengths and a reason from my numbers
        2. 10 hooks: on-screen text (max 6 words) and spoken line, 2 in Hinglish
        3. 3 full scripts with seconds, and a caption for each
        4. An edit checklist of 8 items
        5. A metrics table: goal, number, how to calculate, target

        Rules: Real products only. No health or "best" claims. Music from the app's library or original audio. Mark guesses as guesses.</pre>
            <ul class="ai-try-checks">
              <li>Does every format choice quote one of your numbers?</li>
              <li>Does every script show the product or result in the first 2 seconds?</li>
              <li>Are the metrics formulas right, such as count ÷ views × 1,000?</li>
              <li>Can you film all 6 videos in the time you gave?</li>
              <li>Did it avoid claims, prices or facts you did not provide?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good short video plan starts from your own numbers and your goal, not from trends. Choose formats with data and keep only true hooks. Script in beats and check every edit with a list. Decide in advance how you will measure success.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

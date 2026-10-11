module AiYoutubeCreatorsContent
  # Units (sidebar dividers): 1–4 YouTube Basics · 5–9 Planning and Making Videos · 10–14 Packaging and Growing · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">How YouTube Works for Creators</h1>
        </div>
        <p class="lc-lead">People find YouTube videos in three main ways: they <strong>search</strong>, they <strong>browse</strong> their Home page, or they click a <strong>suggested</strong> video. In this lesson, you will learn how each way works. You will also learn the key numbers in YouTube Studio (the free dashboard for your channel). We will use a made-up channel, <strong>Tiffin Tales</strong>, as our example all through this course. Riya runs it from her home kitchen in Maharashtra. She makes quick Hindi-English lunch-box recipes for working people and students. You need these basics first. Without them, AI advice about "growth" is only guessing.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three ways viewers find a video: YouTube search, Browse features and Suggested videos. Each leads to an impression, where the thumbnail and title are shown. Then the viewer clicks (CTR), watches (average view duration) and may come back (returning viewers).">
            <defs><marker id="yt1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="200" height="54" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="115" y="43" font-weight="700">YouTube search</text>
              <text x="115" y="62" font-size="11" fill="#9b99b8">types 'office tiffin'</text>
              <rect x="15" y="95" width="200" height="54" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="115" y="118" font-weight="700">Browse features</text>
              <text x="115" y="137" font-size="11" fill="#9b99b8">Home page, Subscriptions</text>
              <rect x="15" y="170" width="200" height="54" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="115" y="193" font-weight="700">Suggested videos</text>
              <text x="115" y="212" font-size="11" fill="#9b99b8">next to or after a video</text>
              <text x="15" y="250" font-size="11" fill="#9b99b8" text-anchor="start">Also: Shorts feed, External, Playlists</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#yt1a)">
                <line x1="215" y1="47" x2="265" y2="118"/>
                <line x1="215" y1="122" x2="265" y2="135"/>
                <line x1="215" y1="197" x2="265" y2="152"/>
              </g>
              <rect x="270" y="100" width="180" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="360" y="128" font-weight="700">Impression</text>
              <text x="360" y="150" font-size="11" fill="#9b99b8">thumbnail + title shown</text>
              <rect x="510" y="20" width="235" height="62" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="627" y="44" font-weight="700">1. Click</text>
              <text x="627" y="65" font-size="11" fill="#9b99b8">CTR: 26,300 shown, 1,552 clicks</text>
              <rect x="510" y="115" width="235" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="627" y="139" font-weight="700">2. Watch</text>
              <text x="627" y="160" font-size="11" fill="#9b99b8">avg view duration 4:25 of 9:40</text>
              <rect x="510" y="210" width="235" height="62" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="627" y="234" font-weight="700">3. Come back</text>
              <text x="627" y="255" font-size="11" fill="#9b99b8">returning viewers: about 22%</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#yt1a)">
                <line x1="450" y1="125" x2="505" y2="60"/>
                <line x1="627" y1="82" x2="627" y2="110"/>
                <line x1="627" y1="177" x2="627" y2="205"/>
              </g>
              <text x="380" y="292" font-size="11" fill="#9b99b8">Made-up numbers from Riya's video "5 Office Tiffins in 15 Minutes"</text>
            </g>
          </svg>
          <figcaption>Viewers reach your video from search, browse or suggestions. Then three things matter: do they click, do they watch, and do they come back?</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three main ways people find your video</h3>
          <p>YouTube Analytics (the numbers section of YouTube Studio) has a report called <strong>traffic sources</strong>. It shows where your views came from. Here are Riya's made-up numbers for the last 28 days, for her long videos.</p>
          <table class="lc-table">
            <thead><tr><th>Traffic source (name in YouTube Analytics)</th><th>How the viewer finds you</th><th>Riya's share</th><th>What usually helps</th></tr></thead>
            <tbody>
              <tr><td><strong>Browse features</strong></td><td>Home page, Subscriptions feed, Watch Later</td><td>34%</td><td>A clear thumbnail and title. Videos your viewers are glad they watched.</td></tr>
              <tr><td><strong>Suggested videos</strong></td><td>Next to or after another video</td><td>27%</td><td>Videos that fit what your viewers already watch. Playlists and end screens.</td></tr>
              <tr><td><strong>YouTube search</strong></td><td>The viewer types words, for example "office tiffin recipe"</td><td>18%</td><td>Titles and descriptions that use the words people really type</td></tr>
              <tr><td><strong>External</strong></td><td>Links on WhatsApp, Instagram, websites</td><td>9%</td><td>Sharing in the right places, with a reason to click</td></tr>
              <tr><td>Others</td><td>Channel pages 4%, Playlists 3%, Direct or unknown 3%, Notifications 2%</td><td>12%</td><td>A tidy channel page and good playlists</td></tr>
            </tbody>
          </table>
          <p>Shorts (vertical videos, now up to 3 minutes long) get most views from the Shorts feed. It is a separate source. Report names can change, so check YouTube's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Think about the viewer, not the "algorithm"</h3>
          <p>YouTube says its recommendations try to match each viewer with videos they will want to watch. It learns from what viewers do. They click or skip, watch or leave, like, subscribe, or tell YouTube "Not interested". Nobody outside YouTube knows the exact rules. So be careful with "secret algorithm hacks", from people or from AI.</p>
          <p>A better question is: <em>"Who is this video for, and will they be glad they watched it?"</em> Look at two of Riya's made-up videos:</p>
          <table class="lc-table">
            <thead><tr><th>Video</th><th>CTR</th><th>Average % viewed</th><th>What happened</th></tr></thead>
            <tbody>
              <tr><td>Hostel Student Tiffin: ₹50 a Day</td><td>7.8% (her best)</td><td>31%</td><td>The title promised a full ₹50 day. The video spent 3 minutes on a shopping list first. Many viewers left early.</td></tr>
              <tr><td>Leftover Roti Wrap: 10-Min Lunch Box</td><td>6.4%</td><td>55% (her best)</td><td>The video started cooking in the first 20 seconds. It gave viewers what the title said.</td></tr>
            </tbody>
          </table>
          <p>More clicks are good only when the video keeps the title's promise. You will work on this in the titles and scripts lessons.</p>
        </div>
        <div class="lc-card">
          <h3>The key numbers, with a worked example</h3>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>Plain meaning</th><th>Riya's video "5 Office Tiffins in 15 Minutes"</th></tr></thead>
            <tbody>
              <tr><td><strong>Impressions</strong></td><td>How many times YouTube showed your thumbnail to people on YouTube</td><td>26,300</td></tr>
              <tr><td><strong>Impressions CTR</strong></td><td>Click-through rate: the share of impressions that became views</td><td>5.9%</td></tr>
              <tr><td><strong>Views</strong></td><td>How many times the video was watched. Views also come from links and shares, not only impressions.</td><td>1,893</td></tr>
              <tr><td><strong>Average view duration</strong></td><td>How long a view lasts, on average</td><td>4:25 (of a 9:40 video)</td></tr>
              <tr><td><strong>Average percentage viewed</strong></td><td>Average view duration ÷ video length</td><td>46%</td></tr>
              <tr><td><strong>Watch time</strong></td><td>Total time all viewers spent watching, in hours</td><td>about 139 hours</td></tr>
              <tr><td><strong>Returning viewers</strong></td><td>People who watched your channel before and came back</td><td>Channel: 2,100 of 9,600 viewers (about 22%)</td></tr>
            </tbody>
          </table>
          <p>Here is the maths. It is a simplified model. YouTube has its own detailed rules for what it counts.</p>
          <pre><code>Views from impressions  = 26,300 × 5.9%  = about 1,552
        Views from outside      = 341   (WhatsApp shares, links, direct visits)
        Total views             = 1,552 + 341   = 1,893
        Average % viewed        = 4:25 ÷ 9:40   = 265 s ÷ 580 s = about 46%
        Watch time              = 1,893 × 265 s = 501,645 s ÷ 3,600 = about 139 hours</code></pre>
          <p>AI assistants can explain these numbers well. But they sometimes get the maths wrong. Check the sums in a spreadsheet. For example, in Google Sheets: <code>=ROUND(B2*C2, 0)</code> for views from impressions, if B2 has impressions and C2 has the CTR as a percentage.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Why is my YouTube channel not growing?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are the numbers for my last 3 videos: impressions, CTR,
        average view duration and length. Work out views from
        impressions and average % viewed. Show your working.
        Tell me which video is best at getting clicks and which is
        best at keeping viewers. Do not guess secret algorithm rules.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: where did this view come from?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each view of Riya's videos into the traffic source YouTube Analytics would use.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="search" data-label="YouTube search"></div>
              <div data-sorter-target="bucket" data-bucket="browse" data-label="Browse features"></div>
              <div data-sorter-target="bucket" data-bucket="suggested" data-label="Suggested videos"></div>
              <div data-sorter-target="bucket" data-bucket="external" data-label="External"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="search" data-why="The viewer typed words into YouTube's search box. That is YouTube search.">A student types "hostel tiffin recipe" into YouTube and clicks her video</li>
              <li data-bucket="browse" data-why="The Home page is a browse feature. YouTube showed the video without a search.">Her video appears on a viewer's Home page after they watched other lunch-box videos</li>
              <li data-bucket="suggested" data-why="Videos shown next to another video are suggested videos.">Her roti wrap video shows up beside another creator's paratha video</li>
              <li data-bucket="external" data-why="The click came from a link outside YouTube, in WhatsApp.">Her aunt shares the link in a family WhatsApp group</li>
              <li data-bucket="browse" data-why="The Subscriptions feed is one of the browse features.">A subscriber opens the Subscriptions feed and sees the new upload</li>
              <li data-bucket="suggested" data-why="YouTube picked her video to play after another one ended. That is a suggestion.">After a paneer recipe ends, YouTube offers her sandwich video next</li>
              <li data-bucket="external" data-why="An embedded video on a website counts as an outside source.">A food blog embeds her meal-prep video in a post</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain your own numbers in plain words and do the maths. Replace the sample data in brackets with numbers from your YouTube Studio, or keep Riya's to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly YouTube analytics coach. Explain things in simple English.

        My channel: [Tiffin Tales, quick Hindi-English lunch-box recipes, 2,340 subscribers]
        Traffic sources, last 28 days: [Browse features 34%, Suggested videos 27%, YouTube search 18%, External 9%, others 12%]
        Three recent videos (length | impressions | CTR | average view duration):
        [Roti Wrap | 7:20 | 22,800 | 6.4% | 4:02
        Hostel Tiffin Rs 50 a Day | 10:20 | 41,500 | 7.8% | 3:10
        Rajma Rice | 11:05 | 12,400 | 3.1% | 3:22]

        Please:
        1. Explain each number in one plain sentence.
        2. For each video, work out views from impressions (impressions x CTR) and average percentage viewed (average view duration / length). Show your working.
        3. Which video is best at getting clicks? Which is best at keeping viewers? Give possible reasons.
        4. Suggest 2 small things I could test in my next videos.
        5. List what this data cannot tell me.
        Do not claim secret algorithm rules. Say clearly when you are guessing.</pre>
            <ul class="ai-try-checks">
              <li>With the sample data, views from impressions should be about 1,459, 3,237 and 384.</li>
              <li>Average % viewed should be about 55%, 31% and 30%. Check any number it gives with a calculator.</li>
              <li>It should not invent "algorithm rules" or promise results.</li>
              <li>Its test ideas should fit your viewers, not a general channel.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An impression gives you a chance. The click is only the start. What viewers do after they click tells you if the video worked for them. Make videos for a clear viewer, then use the numbers to learn what they liked.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Where AI Helps Creators</h1>
        </div>
        <p class="lc-lead">AI can help at almost every step of making a video. It can suggest ideas, sum up research, draft a script outline, cut silences in your edit and offer title options. It also brings real risks. Your videos can start to sound like everyone else's. AI can state wrong facts. Some AI uses need a label on YouTube. In this lesson, you will learn where AI saves time and where you must stay in charge. You will also make a <strong>voice sheet</strong>: a one-page guide that helps AI drafts sound like you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 265" role="img" aria-label="Six steps of making a video: idea, research, script, film, edit and package. Under each step, one row shows how AI helps and another row shows what you still decide.">
            <defs><marker id="yt2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="30" width="108" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="66" y="55" font-weight="700">Idea</text>
              <rect x="137" y="30" width="108" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="191" y="55" font-weight="700">Research</text>
              <rect x="262" y="30" width="108" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="316" y="55" font-weight="700">Script</text>
              <rect x="387" y="30" width="108" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="441" y="55" font-weight="700">Film</text>
              <rect x="512" y="30" width="108" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="566" y="55" font-weight="700">Edit</text>
              <rect x="637" y="30" width="108" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="691" y="55" font-weight="700">Package</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#yt2a)">
                <line x1="121" y1="50" x2="134" y2="50"/>
                <line x1="246" y1="50" x2="259" y2="50"/>
                <line x1="371" y1="50" x2="384" y2="50"/>
                <line x1="496" y1="50" x2="509" y2="50"/>
                <line x1="621" y1="50" x2="634" y2="50"/>
              </g>
              <text x="12" y="88" font-size="11" fill="#c4b5fd" text-anchor="start">AI helps</text>
              <g font-size="11">
                <rect x="12" y="95" width="108" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="66" y="118">30 ideas</text><text x="66" y="136">in a minute</text>
                <rect x="137" y="95" width="108" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="191" y="118">summaries,</text><text x="191" y="136">questions</text>
                <rect x="262" y="95" width="108" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="316" y="118">outline,</text><text x="316" y="136">hook options</text>
                <rect x="387" y="95" width="108" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="441" y="118">shot list,</text><text x="441" y="136">checklist</text>
                <rect x="512" y="95" width="108" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="566" y="118">cut silences,</text><text x="566" y="136">captions</text>
                <rect x="637" y="95" width="108" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="691" y="118">title and</text><text x="691" y="136">thumbnail ideas</text>
              </g>
              <text x="12" y="164" font-size="11" fill="#6ee7b7" text-anchor="start">You decide</text>
              <g font-size="11">
                <rect x="12" y="170" width="108" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="66" y="193">pick what</text><text x="66" y="211">fits viewers</text>
                <rect x="137" y="170" width="108" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="191" y="193">check every</text><text x="191" y="211">fact</text>
                <rect x="262" y="170" width="108" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="316" y="193">your stories,</text><text x="316" y="211">your words</text>
                <rect x="387" y="170" width="108" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="441" y="193">your face,</text><text x="441" y="211">your kitchen</text>
                <rect x="512" y="170" width="108" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="566" y="193">final cut</text><text x="566" y="211">and pacing</text>
                <rect x="637" y="170" width="108" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="691" y="193">an honest</text><text x="691" y="211">promise</text>
              </g>
              <text x="380" y="252" font-size="12" fill="#9b99b8">The AI drafts. You choose, check and add yourself.</text>
            </g>
          </svg>
          <figcaption>AI can help at every step. The choices, the facts and the personality stay with you.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI can do at each step</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>How AI helps</th><th>What you still do</th></tr></thead>
            <tbody>
              <tr><td><strong>Ideas</strong></td><td>Lists many ideas and new angles on one topic</td><td>Pick ideas your viewers really ask for. Check them against search and comments.</td></tr>
              <tr><td><strong>Research</strong></td><td>Sums up long articles. Lists questions a viewer might have.</td><td>Check every fact in a reliable source. AI can make up facts.</td></tr>
              <tr><td><strong>Script</strong></td><td>Drafts an outline and several hook options (the first 15 to 30 seconds)</td><td>Add your own stories, jokes and words. Read it aloud.</td></tr>
              <tr><td><strong>Filming</strong></td><td>Turns a script into a shot list and a checklist</td><td>Film the real food, your real hands and your real kitchen</td></tr>
              <tr><td><strong>Editing</strong></td><td>Editing tools such as Descript, CapCut, Adobe Premiere Pro and DaVinci Resolve have AI features. Examples: cutting silences, auto captions and cleaning up audio.</td><td>Watch the full edit. Fix caption mistakes, especially Hindi words.</td></tr>
              <tr><td><strong>Packaging</strong></td><td>Suggests titles, a description, chapters and thumbnail ideas</td><td>Choose a title that is true to the video. Design a thumbnail with your real dish.</td></tr>
              <tr><td><strong>After upload</strong></td><td>Groups comments by topic. Explains your analytics.</td><td>Reply as yourself. Do not paste viewers' private details into AI tools.</td></tr>
            </tbody>
          </table>
          <p>AI features in these tools change often. Check each tool's current help pages before you plan around a feature.</p>
        </div>
        <div class="lc-card">
          <h3>Four risks to watch</h3>
          <ul class="lc-list">
            <li><strong>Sameness.</strong> Ask AI for "lunch box ideas" and you get the ideas thousands of channels already made. Viewers have no reason to pick you.</li>
            <li><strong>Wrong facts.</strong> AI may say a recipe has "25 g protein" or quote a study that does not exist. On a food or health channel, this hurts viewers' trust fast.</li>
            <li><strong>Policy problems.</strong> Realistic AI scenes may need a label on YouTube. Mass-produced, template videos can lose monetisation. AI music or images can bring copyright questions. The policies lesson covers this.</li>
            <li><strong>Losing your voice.</strong> Viewers come back for Riya: her home kitchen, her Hinglish, her mother-in-law's tips. A polished but generic script removes the reason they subscribed.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Keep your voice with a voice sheet</h3>
          <p>A voice sheet is a short note about how you talk. You paste it into every AI prompt. Here is Riya's.</p>
          <pre><code>VOICE SHEET: Tiffin Tales (Riya, Maharashtra)
        Who I am: office admin, I cook my own tiffin before 8 am.
        How I sound: warm, practical, like an elder sister. Short sentences.
        Language: Hinglish. Hindi for feelings, English for steps and timings.
        Phrases I use: "chalo, shuru karte hain", "ekdum easy", "dabba ready!"
        Words I never use: "delectable", "culinary journey", "game-changer"
        I always: say total time and cost, show the tiffin opened at 1 pm.
        Stories I can tell: my first office tiffin that leaked in the bus.</code></pre>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a script for a poha video.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is my voice sheet: [paste]. Here are 2 paragraphs from
        my old scripts: [paste]. Write an OUTLINE (not a full script)
        for "Poha 3 Ways for Kids' Tiffin". Leave gaps marked
        [MY STORY] where I will add my own experience. Mark every
        fact I must check with (CHECK).</code></pre>
          <p>The better prompt asks for an outline, not a finished script. You fill in the parts only you can give.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Riya drafts hooks with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Riya asks">"Here is my voice sheet. Give me 5 hook options (the first 20 seconds) for my video 'Sunday Meal Prep: 5 Tiffins in 1 Hour'. My viewers are office workers and students."</li>
              <li data-kind="answer" data-label="AI replies">Five hooks. One says: "Studies show meal prep saves 5 hours a week!" Another says: "Welcome to a delicious culinary journey."</li>
              <li data-kind="warn" data-label="Catch the mistake">The AI gave no source for the "5 hours" claim. It may be made up. Riya deletes it. She will only say what she timed herself.</li>
              <li data-kind="check" data-label="Riya checks the voice">"Culinary journey" is on her "never use" list. She reads the other hooks aloud. Two sound like her. Three do not.</li>
              <li data-kind="thought" data-label="Riya decides">She mixes her two favourite hooks. She adds a real detail: her own timer on the kitchen shelf.</li>
              <li data-kind="tool" data-label="Phone test">She records the hook on her phone and times it.</li>
              <li data-kind="result" data-label="Final hook, 14 seconds">"5 tiffins. 1 hour. 1 Sunday. Timer on hai. Chalo, shuru karte hain!"</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a voice sheet from samples of how you really talk. Paste 3 short samples from your own videos, voice notes or posts. You can also keep Riya's samples to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a script editor for YouTube creators. Help me keep my own voice when I use AI.

        Below are 3 short samples of how I really talk. Study only these samples.

        Sample 1: [Chalo, aaj ka dabba ekdum easy hai. 15 minute, bas. Office bus 8:20 ki hai, toh time waste nahi karenge.]
        Sample 2: [Honestly, my first tiffin leaked all over my laptop bag. Tab se I always use this steel box with a tight lid.]
        Sample 3: [Total cost? Around 40 rupees. And at 1 pm it still tastes fresh, promise.]

        Make a one-page Voice Sheet with:
        1. How I sound: 3 simple words, each with one example line from my samples.
        2. Phrases I repeat.
        3. My sentence length and language mix (for example Hindi-English).
        4. 5 words or phrases that would NOT sound like me.
        5. 5 rules an AI must follow when it drafts for me.

        Then rewrite this generic line in my voice: "In today's video, we will explore some delicious and healthy lunch box recipes."

        Do not invent facts about my life. If something is not in the samples, leave it out.</pre>
            <ul class="ai-try-checks">
              <li>The phrases it lists really appear in your samples.</li>
              <li>It does not invent personal details, such as your job or family.</li>
              <li>Read the rewritten line aloud. Does it sound like you on camera?</li>
              <li>Save the sheet and paste it into your future script prompts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI do the first draft and the slow, boring jobs. Keep the parts only you can give: your taste, your stories, your face and your judgement. Those are the reasons people subscribe to you and not to someone else.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">YouTube Policies and AI</h1>
        </div>
        <p class="lc-lead">YouTube allows creators to use AI tools. But some AI uses come with rules. In this lesson, you will learn four areas: when you must label realistic AI content, what YouTube means by "inauthentic content", how monetisation (earning money from your videos) works in general, and copyright basics. Breaking these rules can mean removed videos, lost income or strikes on your channel. YouTube updates its policies often. So treat this lesson as a map, and check YouTube's current help pages before you publish. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 305" role="img" aria-label="A decision tree. You used AI or edited real footage. Does the result look realistic? If no, no label is needed. If yes, does it show a real person, a real event or place, or a scene that never happened? If yes, turn on disclosure in YouTube Studio. If no, usually no label is needed.">
            <defs><marker id="yt3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="230" y="12" width="300" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="37">You used AI or edited real footage</text>
              <rect x="230" y="80" width="300" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="105">Does the result look realistic?</text>
              <rect x="15" y="162" width="200" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="115" y="187" font-weight="700">No label needed</text>
              <text x="115" y="207" font-size="11" fill="#9b99b8">cartoon, animation, fantasy</text>
              <rect x="240" y="162" width="280" height="60" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="187" font-size="12">Real person, real event or place,</text>
              <text x="380" y="207" font-size="12">or a scene that never happened?</text>
              <rect x="545" y="162" width="200" height="60" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="645" y="187" font-weight="700">Turn on disclosure</text>
              <text x="645" y="207" font-size="11" fill="#9b99b8">in YouTube Studio</text>
              <rect x="200" y="252" width="360" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="279" font-size="12">Usually no label: script help, colour fix, captions</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#yt3a)">
                <line x1="380" y1="52" x2="380" y2="76"/>
                <line x1="230" y1="105" x2="118" y2="158"/>
                <line x1="380" y1="120" x2="380" y2="158"/>
                <line x1="520" y1="192" x2="541" y2="192"/>
                <line x1="380" y1="222" x2="380" y2="248"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="160" y="122">No</text>
                <text x="398" y="145" text-anchor="start">Yes</text>
                <text x="531" y="184">Yes</text>
                <text x="392" y="240" text-anchor="start">No</text>
              </g>
            </g>
          </svg>
          <figcaption>A simple way to decide on YouTube's altered or synthetic content label. When you are not sure, check YouTube's current help pages.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>1. Labelling realistic AI content</h3>
          <p>When you upload a video in YouTube Studio, a setting asks if your video has <strong>altered or synthetic content</strong>. This means realistic content that was changed or made with AI or other tools. The name and place of this setting can change. At the time of writing, YouTube asks you to say "yes" when realistic content does one of these things:</p>
          <ul class="lc-list">
            <li>It makes a real person seem to say or do something they did not.</li>
            <li>It changes footage of a real event or a real place.</li>
            <li>It shows a realistic scene that never happened.</li>
          </ul>
          <p>You usually do not need the label for clearly unrealistic content, such as cartoons. You also do not need it for small edits, like colour fixes and filters, or for AI help with ideas, scripts or captions. When you say yes, YouTube shows viewers a label. YouTube may also add a label itself. Creators who keep hiding realistic AI content can face penalties, including removal from the Partner Program.</p>
          <table class="lc-table">
            <thead><tr><th>What the creator did</th><th>Label?</th></tr></thead>
            <tbody>
              <tr><td>Riya used an AI assistant to draft her script outline</td><td>No. This is production help.</td></tr>
              <tr><td>Riya used an AI tool to remove the kitchen fan noise</td><td>No. This is a small edit.</td></tr>
              <tr><td>Riya made a realistic AI clip of a busy street tiffin stall at sunrise. It is not real footage.</td><td>Yes. It is a realistic scene that never happened.</td></tr>
              <tr><td>Kabir made a realistic AI clip of a phone launch that has not happened, to explain rumours</td><td>Yes. He should also say it clearly in the video.</td></tr>
              <tr><td>Kabir uses a cartoon robot mascot made with AI</td><td>No. It is clearly not real.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>2. Inauthentic content and monetisation</h3>
          <p>In July 2025, YouTube renamed its "repetitious content" policy to <strong>inauthentic content</strong>. It is part of the rules for channels that earn money. In general, it covers content that is mass-produced or repetitive. Examples are videos made from a template with little change between them, or videos that are easy to make in large numbers. YouTube has said that using AI is fine. The problem is low-effort videos that add no original value.</p>
          <p>A separate <strong>reused content</strong> policy covers other people's material. You need to add real commentary, changes or teaching value to it.</p>
          <table class="lc-table">
            <thead><tr><th>Lower risk</th><th>Higher risk</th></tr></thead>
            <tbody>
              <tr><td>Riya cooks on camera. AI helps her with the script and captions.</td><td>A channel uploads 5 videos a day: AI voice over stock photos, "Top 10 Tiffin Ideas", same template every time</td></tr>
              <tr><td>Kabir reacts to a phone launch and adds his own tests and opinions</td><td>A channel re-uploads other creators' clips with only background music added</td></tr>
            </tbody>
          </table>
          <p>YouTube's monetisation policies also warn about AI-made personas giving advice on sensitive topics, like health or money. On a food channel, be careful with health claims too.</p>
        </div>
        <div class="lc-card">
          <h3>3. The Partner Program, in general words</h3>
          <p>The <strong>YouTube Partner Program (YPP)</strong> lets channels earn from ads and other features. At the time of writing, the main route needs 1,000 subscribers. You also need one of two things. The first is 4,000 public watch hours on long videos in the last 12 months. The second is 10 million public Shorts views in the last 90 days. In some countries, a lower first level gives fewer features, such as fan funding. You must also follow YouTube's policies and have no active Community Guidelines strikes. You need 2-Step Verification and a linked AdSense account. People at YouTube review your channel.</p>
          <p>Riya has 2,340 subscribers but about 1,610 watch hours. So she is not yet eligible on the long-video route. These numbers change, so check YouTube's current YPP help page.</p>
        </div>
        <div class="lc-card">
          <h3>4. Copyright and people's faces and voices</h3>
          <ul class="lc-list">
            <li><strong>Music.</strong> Do not use film songs or popular tracks without a licence. Even a song playing on the radio in your kitchen can be detected. Use YouTube's Audio Library or properly licensed music. Read the licence of any AI music tool.</li>
            <li><strong>Claims and strikes.</strong> A <strong>Content ID claim</strong> means a rights owner's system matched your video. The owner may then block it or take its ad money. A <strong>copyright strike</strong> follows a legal takedown request. Three active strikes can end a channel.</li>
            <li><strong>AI images and music.</strong> Rules differ by country. For example, the US Copyright Office says purely AI-generated material is not protected by copyright. India's fair dealing rules (in the Copyright Act, 1957) are narrow. Ask a lawyer before you depend on them.</li>
            <li><strong>Faces and voices.</strong> Never use AI to copy a celebrity's face or voice, or to show a fake endorsement. Indian courts have protected celebrities' personality rights, including their voice and likeness. Get written consent before you show any real person.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: label, no label or do not publish?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Riya and Kabir are planning their next videos. Sort each plan.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="label" data-label="Turn on the AI label"></div>
              <div data-sorter-target="bucket" data-bucket="none" data-label="No label needed"></div>
              <div data-sorter-target="bucket" data-bucket="stop" data-label="Do not publish this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="none" data-why="Cleaning up audio is a small production edit. It does not change what really happened.">An AI tool removes background noise from Riya's voice</li>
              <li data-bucket="none" data-why="AI help with ideas and scripts is production help. It is not shown as realistic footage.">An AI assistant drafts the outline of Riya's script</li>
              <li data-bucket="label" data-why="It looks real, but the scene never happened. That needs the altered or synthetic label.">A realistic AI clip of a crowded street tiffin stall, used as background footage</li>
              <li data-bucket="none" data-why="A cartoon is clearly not real, so viewers will not be misled.">A cartoon tiffin-box mascot made with AI</li>
              <li data-bucket="stop" data-why="This is a fake endorsement using a real person's likeness. It can mislead viewers and break personality rights.">A realistic AI video of a famous chef praising Tiffin Tales</li>
              <li data-bucket="label" data-why="A realistic event that never happened needs the label. Kabir should also say it on screen.">Kabir shows a realistic AI clip of a phone launch that has not happened</li>
              <li data-bucket="stop" data-why="Copying another creator's video breaks copyright. It also fails the reused content policy.">Download another creator's recipe video and add an AI voice-over</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Before you upload, ask AI to check your plan against YouTube's rules. List how you made your video in the brackets, or keep Riya's example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful YouTube policy checker for small creators. You are not a lawyer, and you must say so.

        My video: [Sunday Meal Prep: 5 Tiffins in 1 Hour, for a Hindi-English cooking channel]
        How I made it:
        [1. An AI assistant wrote the first draft of my script.
        2. An editing tool cut my silences and made captions.
        3. Background music from an AI music tool.
        4. A realistic AI clip of a street tiffin stall at sunrise. It is not real footage.
        5. A 5-second clip of a Bollywood song in the intro.
        6. Thumbnail: my real photo with an AI-made background.]

        For each item, tell me:
        a) Might it need the altered or synthetic content label in YouTube Studio? Why?
        b) Any copyright or music risk?
        c) Any inauthentic or reused content risk?
        Then give me a short tick-box checklist for before I upload.
        Mark any rule I must confirm on YouTube's current help pages. Do not state exact rules you are not sure about.</pre>
            <ul class="ai-try-checks">
              <li>Item 4 (the realistic scene that never happened) should be flagged for the label.</li>
              <li>Item 5 (the film song) should be flagged as a copyright risk.</li>
              <li>It should say to check the AI music tool's licence.</li>
              <li>It should tell you to confirm rules on YouTube's help pages, and say it is not legal advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Using AI on YouTube is allowed. Hiding realistic AI content is not. Mass-producing low-effort videos is a problem too, and so is using other people's work, face or voice. When you are unsure about a label, it is safer to disclose. Always check YouTube's current help pages.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Finding Your Niche and Audience</h1>
        </div>
        <p class="lc-lead">A <strong>niche</strong> is the clear topic and audience your channel serves. When a new viewer finds your channel, they should quickly understand what they will get. That helps them decide to subscribe. In this lesson, you will build three things with AI's help. First, <strong>audience personas</strong>: short profiles of typical viewers. Second, <strong>content pillars</strong>: 3 or 4 main types of video you make again and again. Third, a <strong>channel promise</strong>: one line that says what every video gives the viewer. You will build them from your real data, not from AI's guesses.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 315" role="img" aria-label="Three overlapping circles: what you know and love, what viewers search and ask for, and what you can make every week. The overlap is your niche. An arrow leads to Riya's niche and channel promise.">
            <defs><marker id="yt4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <circle cx="160" cy="120" r="90" fill="#8b5cf6" fill-opacity="0.14" stroke="#8b5cf6" stroke-width="1.5"/>
              <circle cx="300" cy="120" r="90" fill="#3b82f6" fill-opacity="0.14" stroke="#3b82f6" stroke-width="1.5"/>
              <circle cx="230" cy="215" r="90" fill="#10b981" fill-opacity="0.14" stroke="#10b981" stroke-width="1.5"/>
              <text x="125" y="95">What you</text>
              <text x="125" y="112">know and love</text>
              <text x="335" y="95">What viewers</text>
              <text x="335" y="112">search and ask</text>
              <text x="230" y="262">What you can make</text>
              <text x="230" y="279">every week</text>
              <text x="230" y="160" font-weight="700" fill="#f0abfc">Niche</text>
              <line x1="394" y1="150" x2="424" y2="150" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#yt4a)"/>
              <rect x="430" y="40" width="315" height="240" rx="12" fill="#1f1f44" stroke="#d946ef"/>
              <g text-anchor="start" font-size="12">
                <text x="448" y="70" font-size="13" font-weight="700" fill="#f0abfc">Riya's niche</text>
                <text x="448" y="95">Quick Hinglish lunch-box recipes</text>
                <text x="448" y="115">for working people and students</text>
                <text x="448" y="150" font-size="13" font-weight="700" fill="#f0abfc">Channel promise</text>
                <text x="448" y="175">One tested tiffin every Saturday,</text>
                <text x="448" y="195">ready in 15 minutes,</text>
                <text x="448" y="215">still tasty at 1 pm.</text>
                <text x="448" y="255" font-size="11" fill="#9b99b8">Made-up example channel: Tiffin Tales</text>
              </g>
            </g>
          </svg>
          <figcaption>Your niche sits where your skills, your viewers' needs and your real weekly time meet.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Is your niche the right size?</h3>
          <p>A niche that is too wide gives viewers no reason to pick you. A niche that is too narrow runs out of ideas. A simple test: can you list 50 video ideas for it, and would one clear viewer want most of them?</p>
          <table class="lc-table">
            <thead><tr><th>Creator</th><th>Too wide</th><th>About right</th><th>Too narrow</th></tr></thead>
            <tbody>
              <tr><td>Riya (Tiffin Tales)</td><td>Cooking videos</td><td>15-minute Hinglish tiffins for working people and students</td><td>Only Jain rajma tiffins</td></tr>
              <tr><td>Kabir (Byte-Size Kabir)</td><td>Tech</td><td>Short, simple explainers of phones and apps for Indian students</td><td>Reviews of one brand's phone chargers</td></tr>
            </tbody>
          </table>
          <p>Riya also has three made-up rival channels. <em>Dabba Diaries by Sana</em> makes polished Hindi office tiffins but no weekly meal prep. <em>Hostel Chef Arjun</em> makes budget Shorts but no full-week plans. <em>Healthy Lunch Lab</em> is in English with costly ingredients. Her gap: quick, low-cost Hinglish tiffins with weekly plans.</p>
        </div>
        <div class="lc-card">
          <h3>Build personas from real data</h3>
          <p>A persona is a short, made-up profile of a typical viewer. It must be based on real facts. Start with YouTube Analytics (the Audience tab) and your comments. Riya's made-up data for the last 28 days:</p>
          <ul class="lc-list">
            <li>Age: 25–34 is 38%, 18–24 is 31%, 35–44 is 18%. Women 58%, men 42%.</li>
            <li>Top states: Maharashtra 14%, Karnataka 12%, Telangana 9%, Gujarat 7%.</li>
            <li>9,600 viewers. About 22% were returning viewers (they had watched before).</li>
            <li>Repeated comment questions: "Will it stay fresh till 1 pm?", "Jain version please", "I only have one induction plate in my PG".</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Create audience personas for my cooking channel.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is my YouTube audience data: [age, gender, cities,
        returning viewers]. Here are 10 real comment questions, with
        names removed: [paste]. Build 2 viewer personas from ONLY this
        data. For each, give: age range, day routine, main problem,
        when they watch, and one real comment that fits them.
        Mark anything you guessed with (GUESS).</code></pre>
          <p>Riya's two personas, after she edited the AI draft:</p>
          <table class="lc-table">
            <thead><tr><th>Persona</th><th>Life</th><th>Main problem</th></tr></thead>
            <tbody>
              <tr><td><strong>Sneha, 28</strong></td><td>IT analyst at a tech park in Maharashtra. Leaves home at 8:15 am. Watches at night on her phone.</td><td>"I'm bored of dal-rice, but I only have 15 minutes."</td></tr>
              <tr><td><strong>Aman, 20</strong></td><td>Engineering student in a PG in Karnataka. One induction plate. About ₹50 a day for lunch.</td><td>"I want home food that is cheap and fast."</td></tr>
            </tbody>
          </table>
          <p>Personas are useful guesses, not facts. Check them against new comments often. Never paste viewers' names, phone numbers or other private details into an AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Content pillars and your channel promise</h3>
          <p>Pillars help you plan. They also let a viewer see a pattern on your channel page. Riya chose her pillars by looking at her last 8 videos (made-up numbers):</p>
          <table class="lc-table">
            <thead><tr><th>Pillar</th><th>For whom</th><th>Evidence</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>15-Minute Office Tiffins</td><td>Sneha</td><td>"5 Office Tiffins in 15 Minutes": 1,893 views. "Roti Wrap": 55% viewed.</td><td>Main pillar</td></tr>
              <tr><td>Budget Student Tiffins</td><td>Aman</td><td>"Hostel Tiffin ₹50 a Day": 7.8% CTR, 3,759 views, but only 31% viewed</td><td>Keep. Start cooking sooner.</td></tr>
              <tr><td>Sunday Meal Prep</td><td>Both</td><td>"Sunday Meal Prep": 370 watch hours, the most of any video</td><td>Keep, once a month</td></tr>
              <tr><td>Kids' Tiffins</td><td>Parents (few viewers)</td><td>"Poha 3 Ways": 1,070 views, 45% viewed</td><td>Test 2 more, then decide</td></tr>
            </tbody>
          </table>
          <p>A channel promise follows a simple pattern:</p>
          <pre><code>[What viewers get] + [for whom] + [how often or how fast] + [your special point]

        Riya: "Quick Hinglish tiffins for busy workers and students.
        One tested tiffin every Saturday, ready in 15 minutes,
        still tasty at 1 pm."</code></pre>
          <p>Use the promise in your channel description, banner and channel trailer. Only promise what you can really deliver every week.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a niche plan in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Riya's steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Open the Audience tab in YouTube Analytics and note age, cities and returning viewers</li>
              <li data-order="2">Read 50 recent comments and list the questions people repeat</li>
              <li data-order="3">Ask AI to draft 2 personas from this data, with no private details</li>
              <li data-order="4">Check the personas against real comments and fix the guesses</li>
              <li data-order="5">Choose 3 or 4 content pillars that serve the personas</li>
              <li data-order="6">Write a one-line channel promise and add it to the channel page</li>
              <li data-order="7">After 8 more videos, compare the numbers for each pillar</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn your audience data and comments into personas, pillars and a channel promise. Replace the brackets with your data, or keep Riya's to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a YouTube channel strategist. Use simple English.

        My channel: [Tiffin Tales: quick Hindi-English lunch-box recipes, 6 months old, 2,340 subscribers]
        What I know and love: [fast home cooking, Maharashtrian food, cooking on a small budget]
        Time I have: [one long video a week, filmed on Saturday mornings]
        Audience data: [age 25-34: 38%, 18-24: 31%; women 58%; top states Maharashtra, Karnataka, Telangana; 22% returning viewers]
        Real comment questions: ["Will it stay fresh till 1 pm?" / "Jain version please" / "I have only one induction plate in my PG" / "Tiffin ideas for my diabetic father?"]
        My best videos: [Sunday meal prep (most watch time), 5 office tiffins in 15 minutes (most views after the hostel video)]

        Please give me:
        1. My niche in one sentence. Say if it seems too wide or too narrow.
        2. Two viewer personas, based ONLY on the data above. Mark guesses with (GUESS).
        3. Three or four content pillars, each with 3 example video titles.
        4. Three options for a one-line channel promise.
        5. One risk in my plan, for example a topic that needs expert checking.</pre>
            <ul class="ai-try-checks">
              <li>The personas use your data and comments. Guesses are marked.</li>
              <li>Each pillar links to a real viewer need or comment.</li>
              <li>The promise is something you can really deliver every week.</li>
              <li>It flags health topics, like tiffins for diabetes, as needing an expert's check.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A clear niche tells a new viewer what your next video will give them. That is a reason to subscribe. Build your personas and pillars from real data and comments. Then use AI to organise them, not to invent them.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Video Ideas and Research</h1>
        </div>
        <p class="lc-lead">Good videos start with good ideas. AI can give you 30 ideas in a minute, but most will be ideas every other channel has made. In this lesson, you will learn to use AI for new angles. Then you will check its ideas with real signals: YouTube search, your comments, trends tools and similar channels. You will score ideas in a simple spreadsheet. You will also learn to check facts before you film. On a cooking channel, a wrong food safety or health claim can hurt a viewer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Five idea sources: AI brainstorm, YouTube search box, your comments, trends tools and similar channels. They feed a long list of 30 ideas. Each idea is scored on demand, fit, ease and freshness. The top 5 go to a shortlist, and facts are checked before filming.">
            <defs><marker id="yt5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="175" height="32" rx="7" fill="#1f1f44" stroke="#8b5cf6"/><text x="102" y="41">AI brainstorm</text>
              <rect x="15" y="64" width="175" height="32" rx="7" fill="#1f1f44" stroke="#3b82f6"/><text x="102" y="85">YouTube search box</text>
              <rect x="15" y="108" width="175" height="32" rx="7" fill="#1f1f44" stroke="#3b82f6"/><text x="102" y="129">Your comments</text>
              <rect x="15" y="152" width="175" height="32" rx="7" fill="#1f1f44" stroke="#3b82f6"/><text x="102" y="173">Trends tools</text>
              <rect x="15" y="196" width="175" height="32" rx="7" fill="#1f1f44" stroke="#3b82f6"/><text x="102" y="217">Similar channels</text>
              <g stroke="#9b99b8" stroke-width="1.3" fill="none" marker-end="url(#yt5a)">
                <line x1="190" y1="36" x2="228" y2="108"/>
                <line x1="190" y1="80" x2="228" y2="114"/>
                <line x1="190" y1="124" x2="228" y2="120"/>
                <line x1="190" y1="168" x2="228" y2="126"/>
                <line x1="190" y1="212" x2="228" y2="132"/>
                <line x1="337" y1="120" x2="360" y2="120"/>
                <line x1="489" y1="120" x2="512" y2="120"/>
                <line x1="616" y1="120" x2="638" y2="120"/>
              </g>
              <rect x="232" y="85" width="105" height="70" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="284" y="113" font-size="13" font-weight="700">Long list</text>
              <text x="284" y="133" font-size="11" fill="#9b99b8">30 ideas</text>
              <rect x="364" y="75" width="125" height="90" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="426" y="103" font-size="13" font-weight="700">Score each</text>
              <text x="426" y="123" font-size="11" fill="#9b99b8">demand, fit,</text>
              <text x="426" y="140" font-size="11" fill="#9b99b8">ease, freshness</text>
              <rect x="516" y="85" width="100" height="70" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="566" y="113" font-size="13" font-weight="700">Shortlist</text>
              <text x="566" y="133" font-size="11" fill="#9b99b8">top 5</text>
              <rect x="642" y="85" width="108" height="70" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="696" y="113" font-size="13" font-weight="700">Check facts</text>
              <text x="696" y="133" font-size="11" fill="#9b99b8">before filming</text>
              <text x="380" y="258" fill="#9b99b8">AI suggests ideas. Real searches, comments and your numbers decide.</text>
            </g>
          </svg>
          <figcaption>Collect ideas from many places, score them and check the facts before you film.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Brainstorm with AI, but know its limits</h3>
          <p>AI is good at <strong>angles</strong>: new ways to present a topic. It is weak at knowing what people search for today. Most AI assistants cannot see YouTube's live data. Some can search the web, but they can still misread what they find. So if AI says "this is trending in India", treat it as a guess until you check.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me 50 cooking video ideas.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>My channel: quick Hinglish lunch-box recipes for office workers
        and students in India. My pillars: 15-minute office tiffins,
        budget student tiffins, Sunday meal prep.
        Here are 8 real questions from my comments: [paste].
        Give me 20 video ideas. Link each idea to one comment and one
        pillar. For each idea, give 2 different angles.
        Do not claim anything is trending. I will check that myself.</code></pre>
          <p>Here are angles one AI chat might suggest for one recipe, moong dal chilla:</p>
          <table class="lc-table">
            <thead><tr><th>Angle</th><th>Example title idea</th></tr></thead>
            <tbody>
              <tr><td>One base, many results</td><td>1 Batter, 3 Chilla Tiffins for the Week</td></tr>
              <tr><td>A test</td><td>Does Chilla Stay Soft Till 1 PM? I Tested 3 Ways</td></tr>
              <tr><td>A budget</td><td>₹30 Protein Tiffin for Students</td></tr>
              <tr><td>A comparison</td><td>Chilla vs Sandwich: Which Tiffin Keeps Better?</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Check ideas with real signals</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What it shows</th><th>How to use it</th></tr></thead>
            <tbody>
              <tr><td><strong>YouTube search box</strong></td><td>Suggestions appear as you type, for example "jain tiffin recipe for…"</td><td>Note the words people use. Suggestions differ by person and place.</td></tr>
              <tr><td><strong>Search results</strong></td><td>Which videos already exist on a topic</td><td>Look for gaps: old videos, no Hinglish, too long, no budget focus</td></tr>
              <tr><td><strong>Your comments</strong></td><td>Real questions from your own viewers</td><td>Count repeated questions. They are your strongest ideas.</td></tr>
              <tr><td><strong>Google Trends</strong></td><td>Interest in a search term over time, compared to its own peak</td><td>Compare terms and seasons. It does not show exact search numbers.</td></tr>
              <tr><td><strong>Similar channels</strong></td><td>Their most popular videos</td><td>Learn which topics work. Never copy their titles, scripts or thumbnails.</td></tr>
              <tr><td><strong>YouTube Studio</strong></td><td>Some channels see a research area that shows what viewers search for</td><td>Features and availability change. Check YouTube's current help pages.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Score your ideas, then check the facts</h3>
          <p>Give each idea a score from 1 to 5 on four things. <strong>Demand</strong>: real proof that people want it. <strong>Fit</strong>: it matches your pillars. <strong>Ease</strong>: you can make it well this week. <strong>Freshness</strong>: your angle is new. Demand matters most, so count it twice. In Google Sheets, put the scores in columns B to E and use:</p>
          <pre><code>=2*B2 + C2 + D2 + E2</code></pre>
          <table class="lc-table">
            <thead><tr><th>Idea (Riya, made-up scores)</th><th>Demand</th><th>Fit</th><th>Ease</th><th>Fresh</th><th>Score</th></tr></thead>
            <tbody>
              <tr><td>One Induction Plate: 5 Hostel Tiffins</td><td>5</td><td>5</td><td>4</td><td>4</td><td><strong>23</strong></td></tr>
              <tr><td>Jain Tiffin Week: No Onion, No Garlic</td><td>4</td><td>5</td><td>4</td><td>5</td><td><strong>22</strong></td></tr>
              <tr><td>Will It Stay Fresh Till 1 PM? 6 Tiffins Tested</td><td>4</td><td>5</td><td>3</td><td>5</td><td>21</td></tr>
              <tr><td>Tiffin Ideas for Diabetic Parents</td><td>4</td><td>3</td><td>3</td><td>3</td><td>17</td></tr>
              <tr><td>Viral Korean Kimbap Tiffin</td><td>3</td><td>2</td><td>3</td><td>2</td><td>13</td></tr>
            </tbody>
          </table>
          <p>The score helps you think. It does not make the decision for you. Before filming, list every fact the video will state and check it:</p>
          <ul class="lc-list">
            <li><strong>Food safety</strong> ("stays fresh till 1 pm"): test it yourself. Read reliable food safety guidance. Say how you kept the tiffin, for example in an insulated bag.</li>
            <li><strong>Nutrition</strong> ("high protein", grams, calories): use food labels or a reliable nutrition database. Do not trust AI's numbers.</li>
            <li><strong>Health</strong> (the diabetic tiffin idea): ask a qualified dietitian to review it. Say clearly that it is not medical advice.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Riya researches her next video</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Riya asks AI">"Here are 8 questions from my comments. Give me 20 ideas, each linked to a comment and a pillar."</li>
              <li data-kind="answer" data-label="AI replies">20 ideas. Idea 7 says: "Japanese bento boxes are the number 1 food search in India this month."</li>
              <li data-kind="warn" data-label="Catch the mistake">The AI cannot see this month's searches. It gave no source. Riya treats the claim as false until she checks it.</li>
              <li data-kind="tool" data-label="YouTube search">She types "induction plate tiffin" and "jain tiffin" into YouTube and notes the suggestions.</li>
              <li data-kind="result" data-label="What she sees">Few Hinglish videos on these topics. Most are over 20 minutes or several years old.</li>
              <li data-kind="tool" data-label="Google Trends">She compares "tiffin recipe" and "lunch box recipe" in India over the past 5 years.</li>
              <li data-kind="check" data-label="Score and decide">In her sheet, "One Induction Plate: 5 Hostel Tiffins" scores 23. It becomes next Saturday's video. The diabetic idea waits for a dietitian's review.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn your real comments into scored video ideas. Paste questions from your own comments into the brackets, or keep Riya's to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a YouTube content researcher. Use simple English.

        My channel: [Tiffin Tales: quick Hindi-English lunch-box recipes for office workers and students in India]
        My pillars: [15-minute office tiffins; budget student tiffins; Sunday meal prep]
        Real questions from my comments (names removed):
        ["Will it stay fresh till 1 pm?" / "Jain version please" / "I have only one induction plate" / "Can I make these the night before?" / "Tiffin for my diabetic father?" / "Something without paneer, it's costly" / "Ideas that don't smell in office?"]

        Please:
        1. Group the questions into 3 or 4 themes.
        2. Give 10 video ideas. Link each to a theme and a pillar, and give a title idea.
        3. For each idea, give 2 search phrases I can type into YouTube to check demand.
        4. Make a table: Idea | Demand | Fit | Ease | Freshness (score 1-5 each), and Score = 2 x Demand + Fit + Ease + Freshness.
        5. List every fact or health claim I must check before filming.

        Do not claim search numbers or trends. Mark your scores as guesses for me to change.</pre>
            <ul class="ai-try-checks">
              <li>Every idea links back to a real comment, not a generic topic.</li>
              <li>Check the score maths: for example 2 x 4 + 5 + 3 + 5 = 21.</li>
              <li>It does not invent search numbers or "trending" claims.</li>
              <li>Health ideas, like the diabetic tiffin, are flagged for expert review.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI gives you many ideas quickly. Real viewers' searches and questions tell you which ones to make. Check every fact before you film, because your viewers trust you.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Writing Scripts with AI</h1>
        </div>
        <p class="lc-lead">A script is your plan for what you say and show, and in what order. A good script helps viewers stay until the end. In this lesson, you will learn four parts of a YouTube script: the <strong>hook</strong> (the first 15 to 30 seconds), the <strong>structure</strong>, <strong>retention beats</strong> and your own <strong>voice</strong>. You will see a weak hook next to a strong one. You will also learn to use AI as a script editor, not as the writer. Riya is scripting her next video, "One Induction Plate: 5 Hostel Tiffins". It was the top idea in her research sheet.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Riya's script plan for a 9-minute video. Five parts in order: hook from 0:00 to 0:25, promise from 0:25 to 0:45, five tiffins step by step from 0:45 to 7:20, payoff from 7:20 to 8:30 and next video from 8:30 to 9:00. The middle part has four retention beats: a counter on screen, a quick story, a cost pop-up and a tease of the payoff.">
            <defs><marker id="yt6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="12" fill="#9b99b8">Riya's plan: "One Induction Plate: 5 Hostel Tiffins" (about 9 minutes)</text>
              <rect x="15" y="45" width="120" height="70" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="75" y="72" font-weight="700">Hook</text>
              <text x="75" y="90" font-size="11" fill="#9b99b8">0:00-0:25</text>
              <text x="75" y="106" font-size="11" fill="#9b99b8">show the result</text>
              <rect x="150" y="45" width="120" height="70" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="210" y="72" font-weight="700">Promise</text>
              <text x="210" y="90" font-size="11" fill="#9b99b8">0:25-0:45</text>
              <text x="210" y="106" font-size="11" fill="#9b99b8">who it is for</text>
              <rect x="285" y="45" width="220" height="70" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="395" y="72" font-weight="700">5 tiffins, step by step</text>
              <text x="395" y="90" font-size="11" fill="#9b99b8">0:45-7:20</text>
              <text x="395" y="106" font-size="11" fill="#9b99b8">a beat every 60-90 seconds</text>
              <rect x="520" y="45" width="110" height="70" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="575" y="72" font-weight="700">Payoff</text>
              <text x="575" y="90" font-size="11" fill="#9b99b8">7:20-8:30</text>
              <text x="575" y="106" font-size="11" fill="#9b99b8">open at 1 pm</text>
              <rect x="645" y="45" width="100" height="70" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="695" y="72" font-weight="700">Next video</text>
              <text x="695" y="90" font-size="11" fill="#9b99b8">8:30-9:00</text>
              <text x="695" y="106" font-size="11" fill="#9b99b8">end screen</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#yt6a)">
                <line x1="135" y1="80" x2="147" y2="80"/>
                <line x1="270" y1="80" x2="282" y2="80"/>
                <line x1="505" y1="80" x2="517" y2="80"/>
                <line x1="630" y1="80" x2="642" y2="80"/>
              </g>
              <g stroke="#f59e0b" stroke-width="1.3" fill="none">
                <line x1="395" y1="115" x2="395" y2="140"/>
                <line x1="100" y1="140" x2="655" y2="140"/>
              </g>
              <g stroke="#f59e0b" stroke-width="1.3" fill="none" marker-end="url(#yt6a)">
                <line x1="100" y1="140" x2="100" y2="161"/>
                <line x1="285" y1="140" x2="285" y2="161"/>
                <line x1="470" y1="140" x2="470" y2="161"/>
                <line x1="655" y1="140" x2="655" y2="161"/>
              </g>
              <rect x="15" y="165" width="170" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="100" y="186" font-size="12" font-weight="700">Counter on screen</text>
              <text x="100" y="204" font-size="11" fill="#9b99b8">"Tiffin 2 of 5"</text>
              <rect x="200" y="165" width="170" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="285" y="186" font-size="12" font-weight="700">A quick story</text>
              <text x="285" y="204" font-size="11" fill="#9b99b8">my leaking tiffin</text>
              <rect x="385" y="165" width="170" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="470" y="186" font-size="12" font-weight="700">Cost pop-up</text>
              <text x="470" y="204" font-size="11" fill="#9b99b8">"₹38 for this one"</text>
              <rect x="570" y="165" width="170" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="655" y="186" font-size="12" font-weight="700">Tease the payoff</text>
              <text x="655" y="204" font-size="11" fill="#9b99b8">"1 pm test at the end"</text>
              <text x="380" y="245" font-size="12" fill="#fbbf24">Retention beats: small planned moments that give viewers a reason to stay</text>
              <text x="380" y="275" font-size="12" fill="#9b99b8">Write the hook word for word. Use bullet points for the rest, in your own words.</text>
            </g>
          </svg>
          <figcaption>Riya's script plan. The hook shows the result, the middle keeps a steady rhythm, and the payoff keeps the title's promise.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The hook: the first 15 to 30 seconds</h3>
          <p>Many viewers decide in the first seconds if they will stay. The hook must do three things. It must show the viewer they are in the right video. It must give a reason to keep watching. It must sound like you.</p>
          <p>Riya learned this from her own numbers (made-up numbers). "Hostel Student Tiffin: ₹50 a Day" had her best CTR (click-through rate: the share of people who saw the thumbnail and clicked), 7.8%. But viewers watched only 31% of it on average. The video spent 3 minutes on a shopping list before any cooking. Here is that old hook next to her new one.</p>
          <table class="lc-table">
            <thead><tr><th>Weak hook (old ₹50 video)</th><th>Strong hook (new induction plate video)</th></tr></thead>
            <tbody>
              <tr><td>"Namaste doston, welcome back to Tiffin Tales! Aaj ka video bahut special hai. Pehle main aapko bataati hoon ki maine market se kya kya liya..."</td><td>"5 tiffins. 1 induction plate. ₹230 for the whole week. Aur kya 1 baje tak fresh rahenge? End mein khol ke dikhaungi. Chalo, shuru karte hain!"</td></tr>
              <tr><td>Starts with a greeting and a promise of "special"</td><td>Starts with the result: 5 tiffins, 1 plate, the cost</td></tr>
              <tr><td>The shopping list comes before the cooking</td><td>The list goes on screen for 15 seconds. Cooking starts before 0:45.</td></tr>
              <tr><td>No question to wait for</td><td>An open question ("still fresh at 1 pm?") that the end answers</td></tr>
            </tbody>
          </table>
          <p>The ₹230 figure is made up for this course. In a real video, Riya uses the total from her real bill.</p>
        </div>
        <div class="lc-card">
          <h3>Structure and retention beats</h3>
          <p><strong>Audience retention</strong> is the share of viewers still watching at each moment of your video. YouTube Studio shows it as a graph. A clear structure stops the big drops. For a recipe video, a simple structure works well:</p>
          <ol class="lc-list">
            <li><strong>Hook:</strong> show the finished result and the main promise.</li>
            <li><strong>Promise:</strong> say who the video is for and what they will get. Keep it short.</li>
            <li><strong>Main part:</strong> the steps, in the order the viewer needs them.</li>
            <li><strong>Payoff:</strong> deliver what the title promised. For Riya, she opens all 5 tiffins at 1 pm.</li>
            <li><strong>Next video:</strong> point to one related video, for example her Sunday meal prep video.</li>
          </ol>
          <p>A <strong>retention beat</strong> is a small planned moment that gives the viewer a new reason to stay. Examples are a counter ("Tiffin 3 of 5"), a short true story, a cost on screen, a mistake to avoid or a reminder of the payoff. Riya plans one beat every 60 to 90 seconds. Do not promise a payoff you will not show. That feels like a trick, and viewers leave.</p>
          <p>Riya does not write every word. She writes the hook and the payoff word for word. For the rest she writes bullet points and talks naturally. That keeps her Hinglish real.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI as a script editor</h3>
          <p>AI is good at outlines, hook options and spotting slow parts. It is bad at your life, your kitchen and your costs. So give AI your voice sheet, your facts and your structure. Ask it to leave gaps for your stories.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a YouTube script about hostel tiffin recipes.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are my script editor. Here is my voice sheet: [paste].
        Video: "One Induction Plate: 5 Hostel Tiffins", about 9 min.
        Viewer: a student in a PG with one induction plate and about
        ₹50 a day for lunch. My 5 recipes and real costs: [paste].
        1. Write 3 hook options (under 25 seconds) in my Hinglish.
           Each must show the result in the first line.
        2. Write a bullet outline: hook, promise, 5 tiffins, 1 pm
           payoff, next video. Add a retention beat every 60-90 s.
        3. Leave [MY STORY] gaps. Mark facts to check with (CHECK).
        Do not add health claims or costs I did not give you.</code></pre>
          <p>Then read the draft aloud. Cut any line you would never say. Check every cost, time and food claim yourself. AI often adds phrases like "nutritious and delicious" or "perfect for everyone". Delete them. They sound like every other channel.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: strong hook, weak hook or broken promise?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">The AI gave Riya these opening lines for her induction plate video. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="strong" data-label="Strong hook"></div>
              <div data-sorter-target="bucket" data-bucket="weak" data-label="Weak hook"></div>
              <div data-sorter-target="bucket" data-bucket="broken" data-label="Breaks a promise or a fact"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="strong" data-why="It shows the result at once and asks a question the video answers at the end.">"5 tiffins, 1 induction plate. Will they still taste good at 1 pm? Main end mein khol ke dikhaungi."</li>
              <li data-bucket="weak" data-why="A long greeting gives new viewers no reason to stay. Say hello after the hook, if at all.">"Hello friends, welcome back! Please like, share and subscribe before we start today's video."</li>
              <li data-bucket="broken" data-why="The AI made up this statistic. Riya has no source, so she must delete it.">"90% of hostel students skip lunch. Here is how to fix it."</li>
              <li data-bucket="strong" data-why="It speaks to one clear viewer and their real problem, in Riya's voice.">"PG mein sirf ek induction plate hai? Perfect. Aaj ka poora week plan isi pe banega."</li>
              <li data-bucket="weak" data-why="Generic words like this could be on any cooking channel. There is no result and no question.">"Today we will explore some delicious and healthy recipes for students."</li>
              <li data-bucket="broken" data-why="The video does not show a 5-minute method. The hook promises something the video will not deliver.">"Each of these tiffins takes only 5 minutes!" (they take 12 to 15 minutes)</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write hook options and a bullet outline in your voice. Replace the brackets with your own video, voice and facts, or keep Riya's to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a YouTube script editor. Use simple English, and Hinglish where my voice sheet uses it.

        My voice sheet: [Warm, practical, like an elder sister. Short sentences. Hindi for feelings, English for steps and timings. Phrases: "chalo, shuru karte hain", "ekdum easy", "dabba ready!" Never say: "delectable", "culinary journey", "game-changer".]
        Video title: [One Induction Plate: 5 Hostel Tiffins]
        Length: [about 9 minutes]
        Viewer: [a student in a PG with one induction plate and about Rs 50 a day for lunch]
        My facts (use only these): [5 recipes: masala oats upma, besan chilla roll, dal khichdi, soya pulao, peanut poha. Total cost Rs 230. Each takes 12-15 minutes. I open all 5 at 1 pm at the end.]

        Please give me:
        1. Three hook options, each under 25 seconds when spoken. The first line must show the result.
        2. A bullet outline with rough times: hook, promise, main steps, payoff, next video.
        3. A retention beat every 60-90 seconds, marked [BEAT].
        4. Gaps marked [MY STORY] where only I can add a real experience.
        5. A list of every fact I must check before filming.
        Do not invent costs, times, statistics or health claims.</pre>
            <ul class="ai-try-checks">
              <li>Each hook shows the result in its first line, not a greeting.</li>
              <li>It uses only your facts. There are no new statistics, costs or health claims.</li>
              <li>The payoff at the end matches the title's promise.</li>
              <li>Read the hooks aloud. Delete any line you would never say.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Your hook makes a promise, and the rest of the script keeps it. Show the result early, plan small reasons to stay, and deliver the payoff you teased. Let AI suggest structure, but the stories, facts and words must be yours.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Filming and Editing with AI Tools</h1>
        </div>
        <p class="lc-lead">Editing often takes longer than filming. Many editing apps now have AI features that do the slow jobs. They can cut silences, remove retakes, clean up noisy audio and make captions. In this lesson, you will learn what these features do, in general words. You will also learn what they get wrong and what you must still check yourself. We follow Riya as she films and edits "One Induction Plate: 5 Hostel Tiffins" on a Saturday.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 285" role="img" aria-label="An editing workflow in six steps: raw footage, transcript, cut silences, clean audio, captions and your review. Below, a bar compares 48 minutes of raw footage with a final video of 9 minutes 10 seconds.">
            <defs><marker id="yt7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="30" width="108" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="66" y="55" font-weight="700">Raw footage</text>
              <text x="66" y="75" font-size="11" fill="#9b99b8">48 minutes</text>
              <rect x="137" y="30" width="108" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="191" y="55" font-weight="700">Transcript</text>
              <text x="191" y="75" font-size="11" fill="#9b99b8">edit by text</text>
              <rect x="262" y="30" width="108" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="316" y="55" font-weight="700">Cut silences</text>
              <text x="316" y="75" font-size="11" fill="#9b99b8">retakes, "umm"</text>
              <rect x="387" y="30" width="108" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="441" y="55" font-weight="700">Clean audio</text>
              <text x="441" y="75" font-size="11" fill="#9b99b8">fan, cooker hiss</text>
              <rect x="512" y="30" width="108" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="566" y="55" font-weight="700">Captions</text>
              <text x="566" y="75" font-size="11" fill="#9b99b8">fix Hindi words</text>
              <rect x="637" y="30" width="108" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="691" y="55" font-weight="700">You review</text>
              <text x="691" y="75" font-size="11" fill="#9b99b8">watch it all</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#yt7a)">
                <line x1="121" y1="60" x2="134" y2="60"/>
                <line x1="246" y1="60" x2="259" y2="60"/>
                <line x1="371" y1="60" x2="384" y2="60"/>
                <line x1="496" y1="60" x2="509" y2="60"/>
                <line x1="621" y1="60" x2="634" y2="60"/>
              </g>
              <text x="316" y="112" font-size="11" fill="#c4b5fd">AI features do these steps. You check each one.</text>
              <text x="140" y="155" font-size="12" text-anchor="end">Raw footage</text>
              <rect x="150" y="138" width="560" height="26" rx="5" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
              <text x="430" y="156" font-size="12">48 minutes, 2 phone angles</text>
              <text x="140" y="199" font-size="12" text-anchor="end">Final video</text>
              <rect x="150" y="182" width="107" height="26" rx="5" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/>
              <text x="270" y="200" font-size="12" text-anchor="start">9:10 after cuts</text>
              <text x="380" y="240" font-size="12" fill="#9b99b8">Made-up example. Editing time: about 6 hours before, about 3.5 hours with AI features.</text>
              <text x="380" y="266" font-size="12" fill="#9b99b8">AI makes the first cut. You still watch every second before you publish.</text>
            </g>
          </svg>
          <figcaption>AI features turn 48 minutes of raw footage into a rough cut faster. The final check is always a person watching the whole video.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Before you film: a shot list from your script</h3>
          <p>A <strong>shot list</strong> is a list of every shot you need to film. <strong>B-roll</strong> means extra footage shown while you talk, such as a close-up of tadka in the pan. AI can turn your script outline into a shot list in a minute. You then fix it for your real kitchen.</p>
          <pre><code>Turn my script outline into a shot list for a phone shoot.
        Kitchen: one induction plate, a window on the left, no tripod
        for overhead shots. Group shots by location so I move the
        phone as few times as possible. For each tiffin, add 2 B-roll
        shots and one "tiffin closed, then opened at 1 pm" shot.
        Outline: [paste]</code></pre>
          <p>Riya's simple filming rules: film near the window in the morning. Record a 10-second "room tone" (the kitchen with nobody talking). Say "cut" out loud after a mistake, then repeat the line. This makes retakes easy to find later.</p>
        </div>
        <div class="lc-card">
          <h3>AI editing features, in general words</h3>
          <p>Tools such as Descript, CapCut, Adobe Premiere Pro and DaVinci Resolve have AI features like these. Names, menus and plans change often. Check each tool's current help pages.</p>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>What it does</th><th>What to check</th></tr></thead>
            <tbody>
              <tr><td><strong>Text-based editing</strong></td><td>Turns your speech into a transcript. You delete words in the text and the video is cut to match.</td><td>Hinglish words may be wrong in the transcript. Watch the cut, not only the text.</td></tr>
              <tr><td><strong>Silence and filler removal</strong></td><td>Finds long pauses and filler words such as "umm" and removes them</td><td>Too many cuts feel rushed. Keep pauses for the sizzle or the tiffin reveal.</td></tr>
              <tr><td><strong>Audio clean-up</strong></td><td>Reduces background noise, such as the fan, traffic or cooker whistle. Makes your voice clearer.</td><td>Set it too strong and your voice sounds robotic. Listen with earphones.</td></tr>
              <tr><td><strong>Auto captions</strong></td><td>Makes captions (on-screen text of what is said) from the audio</td><td>Food words often go wrong. Read every line.</td></tr>
              <tr><td><strong>Auto reframe</strong></td><td>Crops a wide video to vertical for Shorts and Reels, following the action</td><td>Check that the pan and your hands stay in the frame.</td></tr>
              <tr><td><strong>AI music and voice</strong></td><td>Makes background music, or re-creates words in a cloned voice</td><td>Read the licence. Only clone your own voice. A realistic change to what a real person said may need YouTube's AI label.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Captions: the mistakes to catch</h3>
          <p>Auto captions help viewers who watch without sound. They also help viewers who are hard of hearing. But speech tools often struggle with Hinglish and food words. Here is part of Riya's made-up auto caption file, and her fixes.</p>
          <table class="lc-table">
            <thead><tr><th>Auto caption said</th><th>Riya meant</th></tr></thead>
            <tbody>
              <tr><td>"add one spoon zero"</td><td>"add one spoon jeera"</td></tr>
              <tr><td>"now the car is ready"</td><td>"now the tadka is ready"</td></tr>
              <tr><td>"pour ha is soft"</td><td>"poha is soft"</td></tr>
              <tr><td>"cost 380 rupees"</td><td>"cost 38 rupees"</td></tr>
            </tbody>
          </table>
          <p>The last error is the most dangerous. A wrong number misleads viewers. AI can help you find likely mistakes in a caption file. You still decide every fix, because only you know what you said.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Riya's Saturday edit</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Import">Riya imports 48 minutes of footage into her editing app. It makes a transcript.</li>
              <li data-kind="tool" data-label="Remove retakes">She searches the transcript for "cut" and deletes each bad take with the line before it.</li>
              <li data-kind="result" data-label="Silence removal">The app removes long pauses and filler words. The rough cut is now 10:40.</li>
              <li data-kind="warn" data-label="Catch the mistake">The app also cut the 3 quiet seconds when she opens the tiffins at 1 pm. That pause was the payoff. She puts it back.</li>
              <li data-kind="tool" data-label="Audio clean-up">She turns on noise reduction for the fan. At full strength her voice sounds like a robot, so she lowers it.</li>
              <li data-kind="check" data-label="Caption check">She reads the auto captions. She fixes "zero" to "jeera" and "380 rupees" to "38 rupees".</li>
              <li data-kind="check" data-label="Final watch">She watches the full 9:10 cut on her phone, with sound and without. Then she exports.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find likely mistakes in your auto captions. Paste a few lines from your own caption file, or keep Riya's sample to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful caption checker for a Hindi-English (Hinglish) cooking channel.

        Video topic: [5 hostel tiffins cooked on one induction plate]
        Words I often use: [jeera, tadka, poha, besan, chilla, khichdi, soya, dabba, induction plate, rupees]

        Auto captions (with times):
        [00:52 add one spoon zero and wait for it to crackle
        01:10 now the car is ready so add the onions
        02:31 pour ha is soft after 2 minutes
        03:05 this whole tiffin cost 380 rupees
        04:12 mix the base and with little water]

        Please:
        1. Make a table: Time | Caption now | Likely correct text | How sure you are (high, medium, low).
        2. Only suggest fixes for words that seem wrong. Keep my Hinglish style. Do not rewrite whole lines.
        3. Flag every number separately. I must check numbers against my own notes.
        4. List any line you cannot fix without hearing the audio.</pre>
            <ul class="ai-try-checks">
              <li>It suggests "jeera", "tadka", "poha" and "besan" where the captions went wrong.</li>
              <li>It flags "380 rupees" as a number to check, not a fact to trust.</li>
              <li>It does not rewrite your lines into formal English.</li>
              <li>Play the video at each time and confirm every fix yourself.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI editing features save hours on the boring parts: pauses, retakes, noise and captions. They do not know which pause matters or which number is right. Let the tool make the first cut, then watch every second yourself.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Titles That Get Clicks Honestly</h1>
        </div>
        <p class="lc-lead">Your title and thumbnail work together. They are the first thing a viewer sees. A good title makes the right viewer curious. It also tells the truth about the video. In this lesson, you will learn the difference between curiosity and clickbait. You will learn simple title patterns, and how to use AI to write options. Then you will learn how to test titles, instead of guessing.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 265" role="img" aria-label="A scale from too flat to honest curiosity to clickbait. Too flat titles are clear but give no reason to click. Honest curiosity titles make you curious and the video delivers. Clickbait titles get clicks, then viewers leave.">
            <defs><marker id="yt8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <line x1="30" y1="36" x2="728" y2="36" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#yt8a)"/>
              <text x="30" y="24" font-size="11" fill="#9b99b8" text-anchor="start">less curiosity</text>
              <text x="728" y="24" font-size="11" fill="#9b99b8" text-anchor="end">more hype</text>
              <rect x="15" y="55" width="235" height="155" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="132" y="80" font-weight="700">Too flat</text>
              <text x="132" y="110" font-size="11">"Hostel Recipes Video"</text>
              <text x="132" y="130" font-size="11">"My Tiffin Vlog #27"</text>
              <text x="132" y="170" font-size="11" fill="#9b99b8">clear, but gives no</text>
              <text x="132" y="188" font-size="11" fill="#9b99b8">reason to click now</text>
              <rect x="262" y="55" width="236" height="155" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="80" font-weight="700" fill="#6ee7b7">Honest curiosity</text>
              <text x="380" y="110" font-size="11">"1 Induction Plate, 5 Hostel Tiffins"</text>
              <text x="380" y="130" font-size="11">"Does Chilla Stay Soft Till 1 PM?"</text>
              <text x="380" y="170" font-size="11" fill="#9b99b8">makes you curious,</text>
              <text x="380" y="188" font-size="11" fill="#9b99b8">and the video delivers</text>
              <rect x="510" y="55" width="235" height="155" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="627" y="80" font-weight="700">Clickbait</text>
              <text x="627" y="110" font-size="11">"Hostel Food Hack NOBODY Knows!"</text>
              <text x="627" y="130" font-size="11">"₹10 Tiffin?! (SHOCKING)"</text>
              <text x="627" y="170" font-size="11" fill="#9b99b8">gets clicks, then</text>
              <text x="627" y="188" font-size="11" fill="#9b99b8">viewers feel tricked</text>
              <text x="380" y="245" font-size="12" fill="#9b99b8">The test: do the first 30 seconds show what the title promised?</text>
            </g>
          </svg>
          <figcaption>Aim for the middle: a title that makes the right viewer curious and that the video fully delivers.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Curiosity or clickbait?</h3>
          <p><strong>Curiosity</strong> means the title raises a question the viewer wants answered, and the video answers it. <strong>Clickbait</strong> means the title promises something the video does not give, or it exaggerates. Clickbait may win clicks for one video. But viewers leave early, and they trust your next title less. YouTube's policies also forbid misleading titles and thumbnails. Check YouTube's current help pages on spam and deceptive practices.</p>
          <p>Riya's own data shows this (made-up numbers):</p>
          <table class="lc-table">
            <thead><tr><th>Video</th><th>CTR</th><th>Average % viewed</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>Hostel Student Tiffin: ₹50 a Day</td><td>7.8%</td><td>31%</td><td>A strong promise, but the video did not keep it quickly</td></tr>
              <tr><td>Leftover Roti Wrap: 10-Min Lunch Box</td><td>6.4%</td><td>55%</td><td>A clear promise that the video kept at once</td></tr>
              <tr><td>Rajma Rice Without Pressure Cooker?</td><td>3.1%</td><td>30%</td><td>A vague question. It did not say who it helps or why.</td></tr>
            </tbody>
          </table>
          <p>The ₹50 title was not a lie. But the video made viewers wait 3 minutes for what the title promised. A title's promise includes <em>when</em> the viewer gets it.</p>
        </div>
        <div class="lc-card">
          <h3>Title patterns that work honestly</h3>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Riya's example</th><th>Must be true</th></tr></thead>
            <tbody>
              <tr><td>Number + result</td><td>5 Office Tiffins in 15 Minutes</td><td>All 5 are shown, and each takes about 15 minutes</td></tr>
              <tr><td>Limit + result</td><td>1 Induction Plate, 5 Hostel Tiffins</td><td>She uses only one plate</td></tr>
              <tr><td>A real test</td><td>Does Chilla Stay Soft Till 1 PM? I Tested 3 Ways</td><td>She really tested it, and shows the answer</td></tr>
              <tr><td>Budget</td><td>₹230 for 5 Hostel Tiffins (Full Week)</td><td>The cost comes from her real bill</td></tr>
              <tr><td>For whom + problem</td><td>Jain Office Tiffin: No Onion, No Garlic</td><td>Every recipe really is Jain</td></tr>
            </tbody>
          </table>
          <p>Simple rules help too. Put the main words first, because long titles get cut off on phones. YouTube allows up to 100 characters, but shorter titles are easier to read. Use the words viewers really type, such as "tiffin" or "lunch box". A Hinglish title can work if your viewers search that way. The title and thumbnail should add to each other, not repeat the same words.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me viral titles for my hostel tiffin video.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is what my video really shows: [summary]. The first 30
        seconds show: [hook]. Write 10 titles under 60 characters.
        Use 4 different patterns. For each, say what promise it makes
        and whether the first 30 seconds keep it. Do not use words
        like SHOCKING, NOBODY or SECRET, and no claims I cannot prove.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Test titles, do not guess</h3>
          <p>You cannot know the best title before viewers see it. So test. An A/B test compares options by showing each one to part of the audience. At the time of writing, YouTube Studio on a computer lets eligible channels A/B test up to 3 titles, thumbnails or both. YouTube picks the winner by <strong>watch time share</strong>. That is the share of total watch time that came from each option. So a clickbait title that gets clicks but loses viewers will not win. Some video types, such as Shorts, cannot be tested. Eligibility and details change, so check YouTube's current help pages.</p>
          <p>Test one idea at a time. For her induction plate video, Riya tests three titles with the same thumbnail:</p>
          <ul class="lc-list">
            <li>A: "1 Induction Plate, 5 Hostel Tiffins"</li>
            <li>B: "₹230 for 5 Hostel Tiffins (One Induction Plate)"</li>
            <li>C: "PG Cooking: 5 Tiffins on 1 Induction Plate"</li>
          </ul>
          <p>All three are true to the video. She will let the test finish before she decides. She writes the result in her notes so her next titles learn from it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: honest curiosity, clickbait or too flat?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">An AI suggested these titles. Sort each one, thinking about what Riya's videos really show.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="honest" data-label="Honest curiosity"></div>
              <div data-sorter-target="bucket" data-bucket="bait" data-label="Clickbait"></div>
              <div data-sorter-target="bucket" data-bucket="flat" data-label="Too flat"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="honest" data-why="It raises a real question, and the video shows the 1 pm test.">Does Chilla Stay Soft Till 1 PM? I Tested 3 Ways</li>
              <li data-bucket="bait" data-why="The recipes take 12 to 15 minutes. The title promises something false.">5 Hostel Tiffins in 5 Minutes Each!</li>
              <li data-bucket="flat" data-why="It is true, but it gives no result, no viewer and no reason to click.">Tiffin Tales Episode 27</li>
              <li data-bucket="honest" data-why="It names the viewer and the limit, and the video keeps both.">PG Cooking: 5 Tiffins on 1 Induction Plate</li>
              <li data-bucket="bait" data-why="Capital letters and a doctor claim she cannot prove. It is misleading and risky on a food channel.">Doctors HATE This Tiffin Trick</li>
              <li data-bucket="flat" data-why="It names the dish but gives no reason to choose this video over others.">Rajma Rice Recipe</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for honest title options and a test plan. Describe what your video really shows, or keep Riya's video to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a YouTube packaging coach. You care about honest titles. Use simple English.

        Channel: [Tiffin Tales, Hinglish lunch-box recipes for office workers and students in India]
        What the video really shows: [5 tiffins cooked on one induction plate in a PG-style kitchen. Total cost Rs 230 from my bill. Each takes 12-15 minutes. At the end I open all 5 at 1 pm.]
        What the first 30 seconds show: [all 5 tiffins, the plate and the cost]
        Words my viewers type: [hostel tiffin, PG cooking, induction recipes, lunch box]

        Please:
        1. Write 10 titles under 60 characters, using at least 4 patterns (number + result, limit, test, budget, for whom).
        2. For each title, write the promise it makes, and "kept in first 30 s: yes/no".
        3. Remove any title that exaggerates or uses words like SHOCKING, NOBODY or SECRET.
        4. Pick 3 very different honest titles for an A/B test, and say what each one tests.
        Do not invent facts that are not in my description.</pre>
            <ul class="ai-try-checks">
              <li>Every title matches what the video really shows, including the times and cost.</li>
              <li>No title uses hype words or claims you cannot prove.</li>
              <li>The main words come first, and titles are short enough to read on a phone.</li>
              <li>The 3 test titles are truly different ideas, not the same title with small changes.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A title is a promise. Curiosity makes the right viewer click, and honesty makes them stay. Use AI to write many options, remove any that exaggerate, and let a real test decide between the honest ones.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Thumbnails with AI</h1>
        </div>
        <p class="lc-lead">A thumbnail is the small picture that viewers see before they click. Most people see it on a phone, at a very small size. In this lesson, you will learn simple design basics for thumbnails. You will learn how AI can help with ideas and design, and where AI images become a problem. You will learn the rules on honesty and people's faces. Finally, you will learn how to test thumbnails in YouTube Studio. Riya starts with her weakest video: "Rajma Rice Without Pressure Cooker?", which had a 3.1% CTR.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Two thumbnail sketches for Riya's rajma video. Thumbnail A, the old one, has three lines of small text and a tiny dish. Thumbnail B, the new one, has one big bowl of rajma, Riya's real face and two big words: no cooker.">
            <defs><marker id="yt9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="30" y="40" width="300" height="169" rx="6" fill="#27274e" stroke="#9b99b8"/>
              <text x="180" y="72" font-size="10">Rajma Rice Without Pressure Cooker?</text>
              <text x="180" y="88" font-size="10">Easy Recipe | Full Video | Hindi</text>
              <text x="180" y="104" font-size="10">Tiffin Tales Episode 1</text>
              <circle cx="250" cy="160" r="22" fill="#92400e" stroke="#b45309"/>
              <rect x="70" y="140" width="90" height="40" rx="4" fill="#1f1f44" stroke="#9b99b8" stroke-dasharray="3 3"/>
              <text x="115" y="165" font-size="10" fill="#9b99b8">dark kitchen</text>
              <line x1="345" y1="125" x2="415" y2="125" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#yt9a)"/>
              <rect x="430" y="40" width="300" height="169" rx="6" fill="#1f1f44" stroke="#d946ef" stroke-width="2"/>
              <text x="640" y="78" font-size="26" font-weight="700" fill="#fde047">NO COOKER</text>
              <circle cx="515" cy="140" r="55" fill="#b45309" stroke="#f59e0b"/>
              <text x="515" y="137" font-size="12" fill="#fff7ed">real rajma</text>
              <text x="515" y="153" font-size="12" fill="#fff7ed">bowl</text>
              <circle cx="670" cy="145" r="40" fill="#f59e0b" fill-opacity="0.35" stroke="#f59e0b"/>
              <text x="670" y="142" font-size="12">Riya's</text>
              <text x="670" y="158" font-size="12">real face</text>
              <text x="180" y="235" font-weight="700">A: old thumbnail</text>
              <text x="180" y="254" font-size="11" fill="#9b99b8">small text, dish hard to see</text>
              <text x="580" y="235" font-weight="700">B: new thumbnail</text>
              <text x="580" y="254" font-size="11" fill="#9b99b8">one big dish, real face, 2 words</text>
              <text x="380" y="287" font-size="12" fill="#9b99b8">Sketches, not real designs. Always test at phone size before you upload.</text>
            </g>
          </svg>
          <figcaption>The old thumbnail tries to say everything in small text. The new one shows one clear thing that viewers can see at a glance.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Design basics that work at phone size</h3>
          <ul class="lc-list">
            <li><strong>One main subject.</strong> One dish, one face or one clear comparison. Not five things.</li>
            <li><strong>Few words.</strong> Two to four big words at most. Do not repeat the whole title. Add to it.</li>
            <li><strong>Strong contrast.</strong> A bright dish on a plain, darker background. Light text with a dark outline.</li>
            <li><strong>Real emotion.</strong> If you show your face, show a real reaction, like tasting the food.</li>
            <li><strong>A steady style.</strong> Use the same fonts and colours so viewers know your videos.</li>
            <li><strong>The phone test.</strong> Shrink the thumbnail to about the size of a matchbox. Can you still read it?</li>
          </ul>
          <p>Use a 16:9 shape for long videos. At the time of writing, you need a verified YouTube account to upload custom thumbnails. Size and file limits change, so check YouTube's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and where it becomes a problem</h3>
          <p>AI can help at three stages. First, it can suggest concepts from your title and video. Second, design tools such as Canva or Adobe Firefly have AI features to remove or extend backgrounds and fix lighting. Third, image tools such as Midjourney or Ideogram can make images from text. Check each tool's current help pages and licence terms.</p>
          <table class="lc-table">
            <thead><tr><th>Use</th><th>Fine?</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>AI suggests 5 thumbnail concepts from your title</td><td>Yes</td><td>You still design with your real photos</td></tr>
              <tr><td>AI removes the messy background behind your real rajma bowl</td><td>Yes</td><td>The dish is still the real one from the video</td></tr>
              <tr><td>AI makes a perfect-looking rajma bowl that you never cooked</td><td>Risky</td><td>Viewers expect to see that dish. It can mislead them.</td></tr>
              <tr><td>A famous chef's face, or another creator's face, added with AI</td><td>No</td><td>It uses a real person's likeness without consent. It suggests a fake endorsement.</td></tr>
              <tr><td>Your friend appears in the thumbnail</td><td>Only with consent</td><td>Ask first, and keep a written yes</td></tr>
            </tbody>
          </table>
          <p>Thumbnails must also follow YouTube's Community Guidelines and its rules against misleading content. A thumbnail that shows something not in the video can break these rules. This is general education, not legal advice.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a viral thumbnail for my rajma video.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Title: "Rajma Rice Without Pressure Cooker?". My real photos: a
        close-up of the rajma bowl, and me tasting it. Give me 3
        thumbnail concepts. For each: main subject, up to 3 words of
        text (not the title), colours, and where my face goes.
        Everything shown must be in the video.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Test your thumbnails in YouTube Studio</h3>
          <p>At the time of writing, YouTube Studio on a computer lets eligible channels A/B test up to 3 thumbnails, 3 titles or combinations. YouTube shows each option to part of the audience. It then reports a winner by <strong>watch time share</strong>. This is the share of total watch time that came from viewers who saw each option. Results can also be "performed the same" or unclear. Check YouTube's current help pages for eligibility and details.</p>
          <p>Riya tested 3 thumbnails on her old rajma video. The title stayed the same. These are made-up results:</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Design</th><th>Watch time share</th></tr></thead>
            <tbody>
              <tr><td>A (old)</td><td>Small text, dark kitchen, tiny dish</td><td>27%</td></tr>
              <tr><td>B</td><td>Big rajma bowl, her real face, "NO COOKER"</td><td><strong>41% (winner)</strong></td></tr>
              <tr><td>C</td><td>Big rajma bowl, no face, "NO COOKER"</td><td>32%</td></tr>
            </tbody>
          </table>
          <p>The shares add up to 100%. The test tells Riya what worked for this video and these viewers. It does not prove that faces always win. She will test the idea again on other videos.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from idea to tested thumbnail</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Riya's thumbnail steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">While filming, take bright close-up photos of the real dish and of herself tasting it</li>
              <li data-order="2">Ask AI for 3 thumbnail concepts that use only things shown in the video</li>
              <li data-order="3">Design the concepts in a design tool, using AI only to clean the background</li>
              <li data-order="4">Shrink each design to phone size and check the words are readable</li>
              <li data-order="5">Check each design against the video: is every item really in it?</li>
              <li data-order="6">Start an A/B test in YouTube Studio with the 3 designs</li>
              <li data-order="7">Note the winner and what it suggests for her next thumbnails</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a thumbnail brief with 3 honest concepts you can test. Describe your video and your real photos, or keep Riya's example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a YouTube thumbnail designer who cares about honesty. Use simple English.

        Video title: [Rajma Rice Without Pressure Cooker?]
        What the video shows: [rajma cooked in a normal pot after overnight soaking, packed in a steel tiffin]
        Real photos I have: [close-up of the rajma bowl; me tasting it and smiling; the tiffin opened at 1 pm]
        My channel style: [warm yellow and deep red, one bold font]
        Viewers: [office workers and students in India, mostly on phones]

        Please give me a thumbnail brief with 3 different concepts. For each concept:
        1. The main subject, from my real photos only.
        2. Up to 3 words of text that add to the title, not repeat it.
        3. Layout: where the subject, face and text go.
        4. Colours and contrast.
        5. What this concept tests (for example face vs no face).
        Then give me a 5-point checklist for the phone-size test.
        Do not suggest fake dishes, other people's faces or claims that are not in the video.</pre>
            <ul class="ai-try-checks">
              <li>Every concept uses only your real photos and things shown in the video.</li>
              <li>The text has 3 words or fewer, and does not repeat the title.</li>
              <li>The 3 concepts test clearly different ideas.</li>
              <li>No concept uses a celebrity's face or a claim you cannot prove.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good thumbnail shows one clear, true thing at phone size. AI can suggest concepts and clean up your real photos. It should not invent a dish you never cooked or borrow someone's face. Test honest options, and let watch time pick the winner.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Descriptions, Chapters and Captions</h1>
        </div>
        <p class="lc-lead">After the title and thumbnail, three more things help viewers find and use your video. The <strong>description</strong> is the text under your video. <strong>Chapters</strong> split the video into named parts. <strong>Captions and subtitles</strong> put the words on screen, in your language or others. In this lesson, you will learn to write each one with AI's help. You will also learn about AI dubbing, which adds audio in other languages. Riya is packaging "One Induction Plate: 5 Hostel Tiffins".</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 275" role="img" aria-label="Left: a description mock-up with two top lines, chapters with timestamps, ingredients and costs, music credit and hashtags. Right: a language flow from Hinglish audio to auto captions, then subtitles in English and Marathi, then auto dubbing if the channel is eligible.">
            <defs><marker id="yt10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="400" height="240" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <g text-anchor="start" font-size="11">
                <text x="32" y="44" font-size="13" font-weight="700" fill="#c4b5fd">Description</text>
                <text x="32" y="66">5 hostel tiffins on one induction plate, ₹230 in total.</text>
                <text x="32" y="83">PG mein ho? Ye poora week plan tumhare liye.</text>
                <line x1="32" y1="95" x2="398" y2="95" stroke="#9b99b8" stroke-dasharray="4 3"/>
                <text x="32" y="111" fill="#9b99b8">Above the line: seen before viewers tap "more"</text>
                <text x="32" y="133">0:00 5 tiffins, 1 plate: the plan</text>
                <text x="32" y="149">0:45 Tiffin 1: Masala Oats Upma</text>
                <text x="32" y="165">2:05 Tiffin 2: Besan Chilla Roll</text>
                <text x="32" y="181">... 7:20 The 1 pm test</text>
                <text x="32" y="203">Ingredients and cost of each tiffin</text>
                <text x="32" y="221">Music: YouTube Audio Library</text>
                <text x="32" y="239">#hosteltiffin #lunchbox</text>
              </g>
              <rect x="440" y="20" width="305" height="46" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="592" y="40" font-weight="700">Original audio: Hinglish</text>
              <text x="592" y="57" font-size="11" fill="#9b99b8">Riya's real voice</text>
              <rect x="440" y="84" width="305" height="46" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="592" y="104" font-weight="700">Auto captions</text>
              <text x="592" y="121" font-size="11" fill="#9b99b8">fix words like jeera, poha, tadka</text>
              <rect x="440" y="148" width="305" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="592" y="168" font-weight="700">Subtitles: English, Marathi</text>
              <text x="592" y="185" font-size="11" fill="#9b99b8">a fluent person checks them</text>
              <rect x="440" y="212" width="305" height="46" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="592" y="232" font-weight="700">Auto dubbing</text>
              <text x="592" y="249" font-size="11" fill="#9b99b8">only if eligible; review first</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#yt10a)">
                <line x1="592" y1="66" x2="592" y2="81"/>
                <line x1="592" y1="130" x2="592" y2="145"/>
                <line x1="592" y1="194" x2="592" y2="209"/>
              </g>
            </g>
          </svg>
          <figcaption>A clear description with chapters on the left. On the right, your words move from captions to subtitles to, sometimes, dubbed audio.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Descriptions: write for people first</h3>
          <p>The first one or two lines matter most. Viewers see them before they tap "more", and they can appear in search results. Say what the video gives and who it is for, using the words people really type. Below that, add useful details.</p>
          <ul class="lc-list">
            <li>The top lines: the promise and the viewer, in plain words</li>
            <li>Chapters (see the next card)</li>
            <li>Ingredients and the cost of each tiffin, from her real bill</li>
            <li>Links to related videos or a playlist, such as her Sunday meal prep video</li>
            <li>Credits for music, and any disclosures, such as a paid brand deal</li>
            <li>Two or three relevant hashtags</li>
          </ul>
          <p>Do not stuff the description with long lists of keywords or tags. YouTube's spam policies do not allow this. Check YouTube's current help pages for the rules and the character limit.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an SEO description for my video with lots of keywords.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a YouTube description for my video. Start with 2 short
        lines that say what the viewer gets and who it is for, in my
        Hinglish voice. Then add my chapters, ingredients and costs
        exactly as I give them: [paste]. Use the words "hostel tiffin"
        and "induction plate" naturally, once each. No keyword lists.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Chapters: the rules and a worked example</h3>
          <p>Chapters let viewers jump to the part they want. They also show your structure at a glance. To add chapters, you type timestamps in the description. At the time of writing, YouTube's rules are:</p>
          <ul class="lc-list">
            <li>The first timestamp must be <code>0:00</code>.</li>
            <li>You need at least three timestamps, in order from first to last.</li>
            <li>Each chapter must be at least 10 seconds long.</li>
          </ul>
          <p>YouTube can also make automatic chapters for some videos. Your own chapters usually have better names. Check YouTube's current help pages, because rules can change. Here are Riya's chapters for her 9:10 video (made-up times):</p>
          <pre><code>0:00 5 tiffins, 1 plate: the plan
        0:25 Shopping list and cost
        0:45 Tiffin 1: Masala Oats Upma
        2:05 Tiffin 2: Besan Chilla Roll
        3:20 Tiffin 3: One-Pot Dal Khichdi
        4:40 Tiffin 4: Soya Pulao
        6:00 Tiffin 5: Peanut Poha
        7:20 The 1 pm test: opening all 5
        8:30 Total cost and next week's plan</code></pre>
          <p>AI cannot see your video. If you ask it for chapters without a transcript that has times, it will guess the times. Give it the transcript from your editing app. Then click every chapter on the published video to check it.</p>
        </div>
        <div class="lc-card">
          <h3>Captions, subtitles and AI dubbing</h3>
          <p><strong>Captions</strong> show the words spoken in the video's own language. <strong>Subtitles</strong> are a translation into another language. YouTube can make automatic captions for many languages, including Hindi. They often make mistakes with Hinglish and food words, so edit them in YouTube Studio. You can also upload your own caption file from your editing app.</p>
          <p>For subtitles in other languages, AI translation is a fast first draft. Riya's viewers are mostly in India (91%), with some in the UAE (3%) and the USA (2%). So she adds English subtitles first, then Marathi for her Marathi-speaking viewers. A fluent friend checks each file. Machine translation can miss the meaning of words like "dabba" or "tadka".</p>
          <p><strong>AI dubbing</strong> adds a new audio track in another language, made by AI. At the time of writing, YouTube offers automatic dubbing to eligible channels. Dubbed videos are marked as auto-dubbed. Viewers can switch back to the original audio. Creators can choose to review dubs before they are published. Supported languages, voice quality and eligibility change often, so check YouTube's current help pages.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Good for</th><th>What to check</th></tr></thead>
            <tbody>
              <tr><td>Edited auto captions</td><td>Viewers who watch without sound. Viewers who are hard of hearing.</td><td>Food words and numbers</td></tr>
              <tr><td>Translated subtitles</td><td>Viewers in other states and countries</td><td>A fluent person reads them before you publish</td></tr>
              <tr><td>AI dubbing</td><td>Viewers who prefer to listen in their own language</td><td>Listen before it goes live. Wrong words or tone can confuse viewers.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: Riya packages her video</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Riya asks AI">"Write a description and chapters for my 9-minute video 'One Induction Plate: 5 Hostel Tiffins'."</li>
              <li data-kind="answer" data-label="AI replies">A description that starts "In this delicious culinary video..." and chapters at 0:00, 1:30, 3:00, 4:30, 6:00 and 7:30.</li>
              <li data-kind="warn" data-label="Catch the mistake">The AI never saw her video, so the chapter times are guesses. "Culinary" is also on her "never use" list.</li>
              <li data-kind="tool" data-label="Editing app">She exports the transcript with times and pastes it into a new prompt, with her voice sheet.</li>
              <li data-kind="result" data-label="Better draft">The new chapters start at 0:00, 0:25, 0:45 and so on, with 9 chapters in all. The top lines are in her Hinglish.</li>
              <li data-kind="check" data-label="Rules check">Each chapter is longer than 10 seconds. The first one is 0:00. The costs match her bill.</li>
              <li data-kind="check" data-label="Captions">She fixes the auto captions in YouTube Studio. She asks a friend to read the Marathi subtitles before publishing them.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn a short transcript with times into a description and chapters. Paste your own transcript, or keep Riya's sample to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a YouTube packaging helper. Use simple English, and Hinglish only in the top 2 lines.

        Video title: [One Induction Plate: 5 Hostel Tiffins]
        Video length: [9:10]
        Viewer: [students in a PG or hostel with one induction plate]
        Transcript start times (use ONLY these times):
        [0:00 hook, all 5 tiffins shown
        0:25 shopping list and total cost Rs 230
        0:45 tiffin 1 masala oats upma
        2:05 tiffin 2 besan chilla roll
        3:20 tiffin 3 one-pot dal khichdi
        4:40 tiffin 4 soya pulao
        6:00 tiffin 5 peanut poha
        7:20 opening all 5 tiffins at 1 pm
        8:30 total cost and next week's plan]

        Please write:
        1. Two top lines: what the viewer gets and who it is for.
        2. Chapters with short, clear names. The first must be 0:00. Each chapter must be at least 10 seconds.
        3. A short "what you need" section with a [cost] gap for each tiffin. Do not invent prices.
        4. Two or three hashtags.
        5. One English subtitle line for this Hinglish sentence: "Chalo, shuru karte hain, dabba ready in 15 minutes!"
        Then list anything I must check before I publish.</pre>
            <ul class="ai-try-checks">
              <li>The chapters use only your times, start at 0:00 and are in order.</li>
              <li>No chapter is shorter than 10 seconds.</li>
              <li>It leaves cost gaps instead of inventing prices.</li>
              <li>There is no keyword stuffing, and the top lines sound like you.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The description, chapters and captions help the right viewers find your video and use it. AI writes fast first drafts, but it cannot see your video. Give it real times and facts, follow YouTube's chapter rules, and have a person check every translation.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Reading YouTube Analytics</h1>
        </div>
        <p class="lc-lead">YouTube Analytics (the numbers section of YouTube Studio) tells you what viewers really did with your videos. In this lesson, you will read five key numbers: impressions, CTR, average view duration, the audience retention graph and returning viewers. You will work through the made-up numbers from Riya's last 8 videos on <strong>Tiffin Tales</strong>. You will learn to spot two different problems: a video that people do not click, and a video that people click but leave. You will also use AI to explain the numbers, and a spreadsheet to check its maths.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="An audience retention graph comparing two of Riya's videos. The Roti Wrap video falls slowly and keeps 55 percent on average. The Hostel 50 rupee video falls fast during a shopping list from 0:20 to 3:20 and keeps only 31 percent on average.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="85" y="40" width="137" height="200" fill="#f59e0b" fill-opacity="0.10"/>
              <text x="153" y="56" font-size="11" fill="#f59e0b" text-anchor="middle">shopping list</text>
              <text x="153" y="70" font-size="11" fill="#f59e0b" text-anchor="middle">0:20 to 3:20</text>
              <text x="70" y="24" font-size="11" fill="#9b99b8">Viewers still watching</text>
              <g stroke="#4b4b7a" stroke-width="1">
                <line x1="70" y1="40" x2="70" y2="240"/>
                <line x1="70" y1="240" x2="540" y2="240"/>
                <line x1="70" y1="140" x2="540" y2="140" stroke-dasharray="3 4"/>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="end">
                <text x="62" y="44">100%</text>
                <text x="62" y="144">50%</text>
                <text x="62" y="244">0%</text>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="70" y="258">start</text>
                <text x="305" y="258">middle</text>
                <text x="540" y="258">end</text>
                <text x="305" y="280">Point in the video</text>
              </g>
              <polyline points="70,40 94,68 117,84 164,100 211,112 258,122 305,130 352,140 399,150 446,160 493,174 540,200" fill="none" stroke="#10b981" stroke-width="2.5"/>
              <polyline points="70,40 84,76 117,132 164,162 220,180 258,186 305,190 352,192 399,196 446,200 493,206 540,224" fill="none" stroke="#f59e0b" stroke-width="2.5"/>
              <rect x="565" y="40" width="180" height="200" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <g text-anchor="start">
                <text x="578" y="64" font-weight="700" fill="#10b981">Roti Wrap (7:20)</text>
                <text x="578" y="84" font-size="11" fill="#9b99b8">average viewed: 55%</text>
                <text x="578" y="100" font-size="11" fill="#9b99b8">cooking starts at 0:20</text>
                <text x="578" y="132" font-weight="700" fill="#f59e0b">Hostel ₹50 (10:20)</text>
                <text x="578" y="152" font-size="11" fill="#9b99b8">average viewed: 31%</text>
                <text x="578" y="168" font-size="11" fill="#9b99b8">54% left at 1:02</text>
                <text x="578" y="184" font-size="11" fill="#9b99b8">30% left at 3:18</text>
                <text x="578" y="222" font-size="11" fill="#9b99b8">Made-up numbers</text>
              </g>
            </g>
          </svg>
          <figcaption>An audience retention graph shows the share of viewers still watching at each moment. The Hostel video loses most viewers during a long shopping list at the start.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five numbers and what they tell you</h3>
          <p>Open YouTube Studio, then Analytics. You can see numbers for the whole channel or for one video. Tab names and layouts change, so check YouTube's current help pages if you cannot find something.</p>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>Plain meaning</th><th>The question it answers</th></tr></thead>
            <tbody>
              <tr><td><strong>Impressions</strong></td><td>How many times YouTube showed your thumbnail to viewers on YouTube</td><td>Is YouTube giving my video a chance?</td></tr>
              <tr><td><strong>Impressions CTR</strong></td><td>Click-through rate: views from impressions ÷ impressions</td><td>Do my title and thumbnail make people want to click?</td></tr>
              <tr><td><strong>Average view duration (AVD)</strong></td><td>How long a view lasts, on average. Average percentage viewed = AVD ÷ video length.</td><td>Does the video keep the title's promise?</td></tr>
              <tr><td><strong>Audience retention graph</strong></td><td>The share of viewers still watching at each moment of the video</td><td>Where exactly do people leave, skip or rewatch?</td></tr>
              <tr><td><strong>Returning viewers</strong></td><td>People who watched your channel before and came back</td><td>Do viewers want more from me?</td></tr>
            </tbody>
          </table>
          <p>Views from links on WhatsApp or Instagram have no impression. So they do not count in CTR. That is why Riya's model adds "views from outside" separately.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Riya's last 8 videos</h3>
          <p>Here are Riya's made-up numbers. First, she works out her channel CTR. She uses the totals, not the average of the 8 percentages.</p>
          <pre><code>Channel CTR = views from impressions ÷ impressions
                    = 11,586 ÷ 191,900 = about 6.0%

        Simple average of the 8 CTRs = 44.0 ÷ 8 = 5.5%   (less useful)</code></pre>
          <p>Why use the totals? The simple average treats a video with 12,400 impressions the same as one with 41,500. The totals give each impression the same weight. In Google Sheets, with impressions in D2:D9 and views from impressions in E2:E9, use <code>=SUM(E2:E9)/SUM(D2:D9)</code>.</p>
          <p>Next, she compares each video with her own channel, not with other channels. She uses two lines: CTR of 6.0% and 45% average viewed.</p>
          <table class="lc-table">
            <thead><tr><th>Video</th><th>CTR</th><th>Avg % viewed</th><th>Watch hours</th><th>What it suggests</th></tr></thead>
            <tbody>
              <tr><td>Rajma Rice Without Pressure Cooker?</td><td>3.1%</td><td>30%</td><td>30</td><td>Both weak: few clicks, slow start</td></tr>
              <tr><td>Moong Dal Chilla Tiffin</td><td>4.2%</td><td>49%</td><td>64</td><td>Good video, weak packaging (title and thumbnail)</td></tr>
              <tr><td>Paneer Bhurji Sandwich</td><td>5.2%</td><td>54%</td><td>58</td><td>Good video, weak packaging</td></tr>
              <tr><td>Leftover Roti Wrap</td><td>6.4%</td><td>55%</td><td>119</td><td>Working well</td></tr>
              <tr><td>Hostel Student Tiffin: ₹50 a Day</td><td>7.8%</td><td>31%</td><td>198</td><td>Clicks without satisfaction: the start broke the promise</td></tr>
              <tr><td>Sunday Meal Prep</td><td>6.8%</td><td>48%</td><td>370</td><td>Working well: 35% of all 1,044 watch hours</td></tr>
            </tbody>
          </table>
          <p>These lines are Riya's own choice. There is no official "good" CTR. CTR often falls when YouTube shows a video to more new people. So always read CTR next to impressions and watch time.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is 4.2% a good CTR?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are my last 8 videos: title, impressions, CTR, length,
        average view duration and views. Work out my channel CTR from
        the totals. Put each video in one group: good packaging and
        good retention, only one of the two, or neither. Show your
        working. Compare only with my own channel average.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Read the retention graph, then do a "what if"</h3>
          <p>Open one video's analytics and find the audience retention graph. Look for these shapes:</p>
          <ul class="lc-list">
            <li><strong>A steep drop in the first 30 seconds:</strong> the start did not match the title or thumbnail.</li>
            <li><strong>A dip in the middle:</strong> a slow or boring part. Viewers skipped it or left.</li>
            <li><strong>A spike:</strong> viewers went back to watch a part again, for example a recipe step.</li>
            <li><strong>A drop near the end:</strong> normal, as the video closes. It is a bigger problem if it starts early.</li>
          </ul>
          <p>In the Hostel video, only 54% of viewers were still watching at 1:02. By 3:18, only 30% were left. That is the shopping list part. Riya plans a fix: start cooking in the first 20 seconds, and show the shopping list as on-screen text. How much could this help? A rough "what if":</p>
          <pre><code>Now:        AVD 3:10 = 190 s  → 3,759 × 190 ÷ 3,600 = about 198 hours
        If 45%:     45% × 620 s = 279 s (4:39)
                    3,759 × 279 ÷ 3,600 = about 291 hours</code></pre>
          <p>This is a guess, not a promise. Better retention can also change how many people YouTube shows the video to. Now look at returning viewers. In the last 28 days, 2,100 of 9,600 viewers were returning. That is 2,100 ÷ 9,600 = about 22%. So about 78% were new. Riya adds playlists and end screens (links shown in the last seconds) to invite new viewers to watch a second video.</p>
          <p>AI can explain graphs and suggest reasons. But it cannot see your screen unless you share the numbers, and it can get sums wrong. Check every calculation in your spreadsheet. Your own analytics are fine to share, but do not paste viewers' names or private messages.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what does each video's data say?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Riya's channel CTR is 6.0%. She treats 45% average viewed as good for her channel. Sort each made-up video.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pack" data-label="Fix the title or thumbnail"></div>
              <div data-sorter-target="bucket" data-bucket="start" data-label="Fix the start or the promise"></div>
              <div data-sorter-target="bucket" data-bucket="good" data-label="Working well: make more"></div>
              <div data-sorter-target="bucket" data-bucket="both" data-label="Both weak"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pack" data-why="Viewers who click stay for 49%, which is good. Few people click (4.2%). The packaging is the weak part.">Moong Dal Chilla: CTR 4.2%, 49% viewed</li>
              <li data-bucket="pack" data-why="54% viewed is one of her best. The 5.2% CTR is below her channel's 6.0%. Better packaging could bring more viewers.">Paneer Bhurji Sandwich: CTR 5.2%, 54% viewed</li>
              <li data-bucket="start" data-why="Many people click, but most leave early. The title's promise and the start of the video do not match.">Hostel ₹50 a Day: CTR 7.8%, 31% viewed</li>
              <li data-bucket="good" data-why="Both numbers are above her lines. The quick start keeps viewers.">Leftover Roti Wrap: CTR 6.4%, 55% viewed</li>
              <li data-bucket="good" data-why="Good CTR and good retention on a long video. It earned the most watch time.">Sunday Meal Prep: CTR 6.8%, 48% viewed</li>
              <li data-bucket="both" data-why="Low CTR and low retention. Both the packaging and the slow start need work.">Rajma Rice: CTR 3.1%, 30% viewed</li>
              <li data-bucket="pack" data-why="45% viewed meets her line. The 4.6% CTR is below her average, so the title and thumbnail need work first.">Poha 3 Ways: CTR 4.6%, 45% viewed</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to diagnose your recent videos from your own numbers. Replace the table with numbers from YouTube Studio, or keep Riya's made-up data to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a YouTube analytics coach for small creators. Use simple English and show all your maths.

        My channel: [Tiffin Tales, quick Hindi-English lunch-box recipes]
        Returning viewers, last 28 days: [2,100 of 9,600 viewers]
        My videos (title | length | impressions | CTR | average view duration):
        [Rajma Rice | 11:05 | 12,400 | 3.1% | 3:22
        Paneer Sandwich | 6:45 | 15,200 | 5.2% | 3:38
        Roti Wrap | 7:20 | 22,800 | 6.4% | 4:02
        Hostel Tiffin Rs 50 | 10:20 | 41,500 | 7.8% | 3:10
        Sunday Meal Prep | 14:30 | 38,200 | 6.8% | 6:55]

        Please:
        1. Work out views from impressions for each video, and my channel CTR from the totals.
        2. Work out average percentage viewed (average view duration / length).
        3. Put each video in one group: good packaging and good retention, packaging problem, start or promise problem, or both weak. Compare only with my own averages.
        4. For the weakest video, suggest 2 changes to test next time.
        5. Explain my returning viewer share in one sentence, with one idea to raise it.
        Do not invent algorithm rules or benchmarks. Say when you are guessing.</pre>
            <ul class="ai-try-checks">
              <li>With the sample data, the channel CTR should be about 6.5% (8,468 ÷ 130,100), because this sample has only 5 videos.</li>
              <li>Average % viewed should be about 30%, 54%, 55%, 31% and 48%.</li>
              <li>Returning viewers should be about 22%.</li>
              <li>It should not claim a "good CTR" for all channels. Check every sum in a spreadsheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Read CTR and retention together. Low CTR with good retention means fix the packaging. High CTR with poor retention means the video broke its promise. Compare each video with your own channel, and check AI's maths before you act.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Community and Comments</h1>
        </div>
        <p class="lc-lead">Comments are where viewers tell you what they need next. A warm reply can turn a new viewer into a returning one. But comments also bring spam, scams and sometimes hate. In this lesson, you will learn to sort comments quickly and use AI to draft replies in your own voice. You will also use community posts and set up YouTube's moderation tools. You will also learn a calm plan for handling hate. Riya's made-up channel <strong>Tiffin Tales</strong> got 412 comments in the last 28 days. She cannot answer them all, so she needs a system.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A comment sorting flow. 412 new comments are sorted into five groups: questions and requests 222, praise 131, fair criticism 12, spam and scams 38, and hate or abuse 9. Each group has its own action.">
            <defs><marker id="yt12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="125" width="130" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="80" y="150" font-weight="700">New comments</text>
              <text x="80" y="170" font-size="11" fill="#9b99b8">412 in 28 days</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#yt12a)">
                <line x1="145" y1="155" x2="186" y2="40"/>
                <line x1="145" y1="155" x2="186" y2="100"/>
                <line x1="145" y1="155" x2="186" y2="160"/>
                <line x1="145" y1="155" x2="186" y2="220"/>
                <line x1="145" y1="155" x2="186" y2="280"/>
                <line x1="400" y1="40" x2="436" y2="40"/>
                <line x1="400" y1="100" x2="436" y2="100"/>
                <line x1="400" y1="160" x2="436" y2="160"/>
                <line x1="400" y1="220" x2="436" y2="220"/>
                <line x1="400" y1="280" x2="436" y2="280"/>
              </g>
              <rect x="190" y="20" width="210" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="295" y="45">Questions, requests: 222</text>
              <rect x="190" y="80" width="210" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="295" y="105">Praise: 131</text>
              <rect x="190" y="140" width="210" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="295" y="165">Fair criticism: 12</text>
              <rect x="190" y="200" width="210" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="295" y="225">Spam and scams: 38</text>
              <rect x="190" y="260" width="210" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="295" y="285">Hate or abuse: 9</text>
              <g font-size="12">
                <rect x="440" y="20" width="305" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="592" y="45">Reply in your voice, add to idea list</text>
                <rect x="440" y="80" width="305" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="592" y="105">Heart it, short thanks, pin the best</text>
                <rect x="440" y="140" width="305" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="592" y="165">Thank them, check it, fix if true</text>
                <rect x="440" y="200" width="305" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="592" y="225">Remove, add words to blocked list</text>
                <rect x="440" y="260" width="305" height="40" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="592" y="285">Do not reply. Remove, report, hide user</text>
              </g>
            </g>
          </svg>
          <figcaption>Sort comments first, then act. Riya's made-up numbers: most comments are questions and praise. Only a few need moderation.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Sort first, then reply</h3>
          <p>Riya used to reply to comments in the order they came. That took hours. Now she sorts them first. Here are her made-up numbers for the last 28 days:</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Count</th><th>Share</th><th>Example (made up)</th><th>Her action</th></tr></thead>
            <tbody>
              <tr><td>Questions</td><td>168</td><td>41%</td><td>"Can I make the chilla batter the night before?"</td><td>Reply within 2 days. Pin the best answer.</td></tr>
              <tr><td>Praise</td><td>131</td><td>32%</td><td>"Made the roti wrap today, my son finished it!"</td><td>Heart it. Reply to some with a real detail.</td></tr>
              <tr><td>Requests</td><td>54</td><td>13%</td><td>"Jain version please"</td><td>Short reply. Add to her idea sheet.</td></tr>
              <tr><td>Spam and scams</td><td>38</td><td>9%</td><td>"Earn ₹5,000 daily from home, message me on Telegram"</td><td>Remove. Never click the link.</td></tr>
              <tr><td>Fair criticism</td><td>12</td><td>3%</td><td>"You said 15 minutes. It took me 25."</td><td>Thank them. Check it. Fix it in the next video.</td></tr>
              <tr><td>Hate or abuse</td><td>9</td><td>2%</td><td>"Ugly kitchen, ugly voice. Stop making videos."</td><td>Do not reply. Remove, report or hide the user.</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>412</strong></td><td><strong>100%</strong></td><td></td><td></td></tr>
            </tbody>
          </table>
          <p>The requests are very useful. Riya counts them each month. For example, "Jain version" came up many times. It became a video idea. Fair criticism is useful too. It is not hate, even when it feels unkind.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to group comments and draft replies</h3>
          <p>You can copy comments into an AI assistant to group them and draft replies. Remove usernames first. Never paste phone numbers, addresses or private messages. AI drafts are a start. Read each reply and change it so it sounds like you.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write replies to these comments.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is my voice sheet: [paste]. Here are 30 comments from my
        latest video, usernames removed: [paste].
        1. Group them: question, praise, request, fair criticism,
           spam, hate.
        2. Draft short replies (1-2 lines, Hinglish) for questions and
           criticism only. Mark facts I must check with (CHECK).
        3. Do not draft replies to hate or spam. List them for me.
        4. List repeated requests as video ideas.</code></pre>
          <p>Be careful with food and health answers. If a viewer asks "Is this safe for my diabetic father?", do not let AI answer. Riya replies: "Please ask your doctor or a dietitian. I am a home cook, not a health expert."</p>
          <p><strong>Community posts</strong> (on the Posts tab of your channel) let you share text, pictures and polls with subscribers between videos. Riya runs a poll each Wednesday: "Next Saturday: Jain tiffin week or one induction plate tiffins?" Who can post, and where posts appear, can change. Check YouTube's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Moderation tools and a plan for hate</h3>
          <p>YouTube Studio has moderation settings. At the time of writing, they include these. Names and options change, so check YouTube's current help pages.</p>
          <ul class="lc-list">
            <li><strong>Hold comments for review:</strong> YouTube can hold comments that may be inappropriate. You approve or remove them.</li>
            <li><strong>Blocked words:</strong> comments with these words are held for review. Riya adds scam words, for example "telegram", "earn daily" and "whatsapp me".</li>
            <li><strong>Hide user from channel:</strong> that person's comments stop appearing to others.</li>
            <li><strong>Moderators:</strong> you can give a trusted person access to manage comments. Riya's cousin helps on busy weeks.</li>
            <li><strong>Report:</strong> send comments that break YouTube's Community Guidelines to YouTube.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Fair criticism</th><th>Hate or abuse</th></tr></thead>
            <tbody>
              <tr><td>About your video or your facts</td><td>About you as a person, your looks, religion, caste, gender or accent</td></tr>
              <tr><td>"The audio was too low." "It took me 25 minutes."</td><td>Insults, slurs, threats, posting your personal details</td></tr>
              <tr><td>Reply politely. Fix it if true.</td><td>Do not reply or argue. Remove, report, hide the user.</td></tr>
            </tbody>
          </table>
          <p>For threats or stalking, take screenshots with the date and time. Report the comment to YouTube. In India, you can also report cybercrime on the National Cyber Crime Reporting Portal (cybercrime.gov.in), by calling the helpline 1930, or through your local police. If you feel unsafe, contact the police at once. Also protect yourself: take breaks from comments, and let a moderator read them first on hard days.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Riya handles a bad comment day</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="YouTube Studio">Riya opens the Comments page after her Saturday upload. 52 new comments are waiting.</li>
              <li data-kind="result" data-label="What she sees">Most are questions. One says: "You said 15 minutes. It took me 25." Another insults her accent. Three are "earn money daily" links.</li>
              <li data-kind="user" data-label="Riya asks AI">She pastes the comments, with usernames removed, and her voice sheet. "Group these. Draft replies only for questions and criticism."</li>
              <li data-kind="answer" data-label="AI replies">It groups the comments and drafts 20 replies. One reply says: "Yes, this tiffin stays fresh for 12 hours!"</li>
              <li data-kind="warn" data-label="Catch the mistake">Riya never tested 12 hours. She only tested until 1 pm in an insulated bag. She changes the reply to say exactly that.</li>
              <li data-kind="check" data-label="The criticism">She times the recipe again. It took her 19 minutes with washing. She replies with thanks and changes the next title to "20 minutes".</li>
              <li data-kind="thought" data-label="The hate and spam">She does not reply to the insult. She removes it and hides the user. She removes the scam links and adds "earn daily" to her blocked words.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste real comments from your channel, with usernames removed, or keep Riya's samples. AI will sort them and draft replies you can edit.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a community manager for a small YouTube channel. Use simple English.

        My channel: [Tiffin Tales, quick Hindi-English lunch-box recipes]
        How I sound: [warm, practical, like an elder sister; Hinglish; short sentences]
        Comments from my latest video (usernames removed):
        [1. Can I make the chilla batter the night before?
        2. Made the roti wrap today, my son loved it!
        3. You said 15 minutes. It took me 25.
        4. Earn Rs 5000 daily from home, message me on Telegram
        5. Jain version please, no onion garlic
        6. Is this safe for my diabetic father?
        7. Ugly kitchen, ugly voice. Stop making videos.
        8. Audio was very low in the second half.]

        Please:
        1. Put each comment in one group: question, praise, request, fair criticism, spam, hate.
        2. Draft a 1-2 line reply in my voice for questions, praise, requests and criticism.
        3. For spam and hate, write no reply. Tell me which moderation action fits.
        4. For any health question, reply that I am not a health expert and they should ask a doctor.
        5. List video ideas from the requests. Mark facts I must check with (CHECK).</pre>
            <ul class="ai-try-checks">
              <li>Comments 4 and 7 get no reply, only a moderation action.</li>
              <li>Comment 3 is treated as fair criticism, not hate.</li>
              <li>The health reply (comment 6) sends the viewer to a doctor and gives no medical advice.</li>
              <li>Replies make no claims you have not tested, such as how long food stays fresh.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Sort comments before you reply. Answer questions and fair criticism well, because they build trust and give you video ideas. Do not argue with hate. Remove it, report it and protect yourself. Let AI draft replies, but check every fact and keep your own voice.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Making Money</h1>
        </div>
        <p class="lc-lead">Creators earn money in several ways. The main ones are ads through the YouTube Partner Program, channel memberships, brand deals and affiliate links. In this lesson, you will learn how each one works in general words. You will work out how far Riya's made-up channel <strong>Tiffin Tales</strong> is from the Partner Program. You will also learn to check a brand deal and to label paid content, as ASCI (the Advertising Standards Council of India) asks. Rules and numbers change often, so check each platform's current help pages. This lesson is general education, not financial, tax or legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 295" role="img" aria-label="Riya's progress to the YouTube Partner Program long-video route. Subscribers: 2,340 of 1,000, done. Watch hours: 1,610 of 4,000, about 40 percent. Below, four ways to earn: ads and memberships need the Partner Program; brand deals and affiliate links do not, but they need disclosure.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="15" y="26" font-weight="700">Partner Program, long-video route (at the time of writing)</text>
              <text x="15" y="63">Subscribers</text>
              <rect x="150" y="48" width="440" height="20" rx="5" fill="#27274e"/>
              <rect x="150" y="48" width="440" height="20" rx="5" fill="#10b981"/>
              <text x="602" y="63" font-size="12">2,340 of 1,000: done</text>
              <text x="15" y="99">Watch hours</text>
              <rect x="150" y="84" width="440" height="20" rx="5" fill="#27274e"/>
              <rect x="150" y="84" width="177" height="20" rx="5" fill="#f59e0b"/>
              <text x="602" y="99" font-size="12">1,610 of 4,000 (40%)</text>
              <text x="150" y="128" font-size="11" fill="#9b99b8">Gap: 2,390 hours. About 19 more videos at her pace of about 130 hours each.</text>
              <g text-anchor="middle">
                <rect x="15" y="150" width="170" height="95" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="100" y="178" font-weight="700">Ads</text>
                <text x="100" y="200" font-size="11" fill="#f59e0b">needs the YPP</text>
                <text x="100" y="220" font-size="11" fill="#9b99b8">earnings follow RPM</text>
                <rect x="202" y="150" width="170" height="95" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="287" y="178" font-weight="700">Memberships</text>
                <text x="287" y="200" font-size="11" fill="#f59e0b">needs the YPP</text>
                <text x="287" y="220" font-size="11" fill="#9b99b8">monthly fan support</text>
                <rect x="389" y="150" width="170" height="95" rx="10" fill="#1f1f44" stroke="#10b981"/>
                <text x="474" y="178" font-weight="700">Brand deals</text>
                <text x="474" y="200" font-size="11" fill="#10b981">no YPP needed</text>
                <text x="474" y="220" font-size="11" fill="#9b99b8">label it, e.g. #ad</text>
                <rect x="576" y="150" width="170" height="95" rx="10" fill="#1f1f44" stroke="#10b981"/>
                <text x="661" y="178" font-weight="700">Affiliate links</text>
                <text x="661" y="200" font-size="11" fill="#10b981">no YPP needed</text>
                <text x="661" y="220" font-size="11" fill="#9b99b8">say you earn a share</text>
                <text x="380" y="278" font-size="11" fill="#9b99b8">Made-up channel numbers. Check YouTube's current thresholds and ASCI's current guidelines.</text>
              </g>
            </g>
          </svg>
          <figcaption>Riya already has enough subscribers. Watch hours are her gap. Brand deals and affiliate links do not need the Partner Program, but they must be clearly labelled.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How far is Riya from the Partner Program?</h3>
          <p>The <strong>YouTube Partner Program (YPP)</strong> lets channels earn from ads and other features. At the time of writing, the main route needs 1,000 subscribers. It also needs one of two things. The first is 4,000 public watch hours on long videos in the last 12 months. The second is 10 million public Shorts views in the last 90 days. You must follow YouTube's policies, and YouTube reviews your channel. In some countries, a lower first level gives fewer features, such as fan funding. Check YouTube's current YPP help page for the exact rules in your country.</p>
          <p>Here is Riya's made-up maths for the long-video route:</p>
          <pre><code>Subscribers:  2,340  (needs 1,000)  → done
        Watch hours:  1,610  (needs 4,000)  → 1,610 ÷ 4,000 = about 40%
        Gap:          4,000 − 1,610 = 2,390 hours

        Her pace: last 8 videos earned 1,044 hours → 1,044 ÷ 8 = about 130 each
        Videos needed at this pace:  2,390 ÷ 130.5 = 18.3 → about 19 videos
        If each video earns 160:     2,390 ÷ 160   = 14.9 → about 15 videos</code></pre>
          <p>This is a rough plan, not a promise. Old videos keep earning some hours, which helps. But only the last 12 months count. Her channel is 6 months old, so all her hours count for now. At the time of writing, watch time from the Shorts feed does not count toward the 4,000 hours. So her Shorts help her find viewers, but not with this number directly.</p>
          <p>Ads pay in a different way from what many people think. <strong>CPM</strong> (cost per mille) is what advertisers pay for 1,000 ad impressions. <strong>RPM</strong> (revenue per mille) is what you earn for every 1,000 views, after YouTube's share, from all sources. RPM changes a lot by topic, country and season. A made-up example: if Riya's RPM were ₹40, her last 8 videos (14,084 views) would earn about 14,084 ÷ 1,000 × 40 = ₹563. That is why small creators often earn more from other sources first.</p>
        </div>
        <div class="lc-card">
          <h3>Memberships, brand deals and affiliate links</h3>
          <table class="lc-table">
            <thead><tr><th>Way to earn</th><th>How it works</th><th>Riya's idea</th><th>What to watch</th></tr></thead>
            <tbody>
              <tr><td><strong>Channel memberships</strong></td><td>Fans pay monthly for perks. It is a Partner Program feature.</td><td>Later: a monthly printable tiffin plan and a members' live Q&amp;A</td><td>Only promise perks you can deliver every month</td></tr>
              <tr><td><strong>Brand deals</strong></td><td>A brand pays you, or sends free products, to feature them</td><td>Tiffin boxes, spices, insulated lunch bags she really uses</td><td>Test every claim. Label it clearly. Read the contract.</td></tr>
              <tr><td><strong>Affiliate links</strong></td><td>You share a special link. You earn a small share when someone buys.</td><td>Links to the steel tiffin and the induction plate she uses</td><td>Say that you earn from the link. Commission rates are often small.</td></tr>
            </tbody>
          </table>
          <p>A made-up affiliate example: her Meal Prep video had 3,208 views. If 2% clicked the link, that is about 64 clicks. If 5% of them bought a ₹600 tiffin at a 4% commission, she earns 3 × ₹24 = ₹72. These rates are made up. Real rates vary a lot, so check each programme's current terms.</p>
          <p><strong>A brand deal to check.</strong> A made-up brand, SteelNest, emails Riya. They offer ₹8,000 and a free box set for a 60-second mention in her next Sunday Meal Prep video. They want her to say "keeps food hot for 8 hours". Riya checks five things:</p>
          <ul class="lc-list">
            <li><strong>Is the claim true?</strong> She tests the box herself and asks the brand for proof. She will only say what she tested.</li>
            <li><strong>Does it fit her viewers?</strong> Yes. Her viewers carry tiffins to office and college.</li>
            <li><strong>What rights do they want?</strong> Can they use her face in their own ads? For how long? That should cost more.</li>
            <li><strong>Payment and deadlines:</strong> when she gets paid, and how many changes they can ask for.</li>
            <li><strong>Tax:</strong> this money is income. Gifts from brands can also have tax rules. She asks a chartered accountant.</li>
          </ul>
          <p>AI can help her write a polite reply, list questions and build a media kit (a one-page summary of her channel for brands). The media kit uses her real numbers: 2,340 subscribers, about 1,760 average views per video (14,084 ÷ 8), 38% of viewers aged 25–34, and 91% from India. She must never inflate these numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Label paid content: ASCI and YouTube</h3>
          <p>ASCI's guidelines for influencer advertising apply when you have a "material connection" with a brand. That means payment, free products, a free trip, a discount or a commission. In general words, at the time of writing:</p>
          <ul class="lc-list">
            <li>Use a clear label, such as <strong>#ad</strong>, #advertisement, #sponsored or #partnership. Put it where people cannot miss it, not hidden among other hashtags.</li>
            <li>In a video, show and say the label in the video itself. Keep it on screen while you talk about the brand. A line only in the description is not enough.</li>
            <li>Check the brand's claims before you repeat them. You are responsible for what you say.</li>
            <li>A virtual or AI-made influencer must tell viewers that it is not a real person.</li>
            <li>Health and money advice has stricter rules, including relevant qualifications. Check ASCI's current guidelines.</li>
          </ul>
          <p>YouTube also has a <strong>paid promotion</strong> setting in YouTube Studio. Turn it on when your video includes a sponsorship, product placement or endorsement. Riya's disclosure line, said at the start of the brand segment: <em>"Yeh part SteelNest ke saath ek paid partnership hai, yaani ad hai. Box maine khud 2 hafte use karke dekha hai."</em> The "#ad" label stays on screen during this part. This is not legal advice. For contracts, ask a lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: does this need an ad label?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each situation from Riya's channel. Use ASCI's idea of a "material connection".</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="label" data-label="Label it (#ad or similar)"></div>
              <div data-sorter-target="bucket" data-bucket="none" data-label="No ad label needed"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="label" data-why="Payment is a clear material connection. Label it in the video and turn on paid promotion in YouTube Studio.">SteelNest pays ₹8,000 for a 60-second mention</li>
              <li data-bucket="label" data-why="A free product is a material connection, even without money. Viewers should know.">A spice brand sends free masala boxes, and Riya reviews them</li>
              <li data-bucket="label" data-why="She earns a commission when viewers buy. That is a material connection, so she must say so.">Her description has an affiliate link to her induction plate</li>
              <li data-bucket="none" data-why="She bought it herself, has no link and no deal. There is no material connection.">She shows the kadhai she bought herself, with no link or deal</li>
              <li data-bucket="label" data-why="A free trip is a benefit from the brand. It is a material connection.">A tiffin company pays for her trip to their factory, and she films it</li>
              <li data-bucket="none" data-why="Asking viewers to subscribe is about her own channel. No brand is involved.">She asks viewers to subscribe and turn on notifications</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check a brand offer and draft a reply with the right disclosure. Change the brackets to your own offer, or keep Riya's made-up one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful talent manager for small Indian YouTube creators. You are not a lawyer or a tax adviser, and you must say so.

        My channel: [Tiffin Tales, Hindi-English lunch-box recipes, 2,340 subscribers, about 1,760 average views per video, viewers mostly aged 25-34 in India]
        The offer: [SteelNest, a steel tiffin brand, offers Rs 8,000 and a free box set for a 60-second mention in my next Sunday Meal Prep video. They want me to say "keeps food hot for 8 hours". They also want to use my clip in their Instagram ads.]

        Please:
        1. List the risks and the questions I should ask before I agree (claims, usage rights, payment, deadlines, exclusivity).
        2. Tell me how to test the "8 hours" claim myself before I say anything like it.
        3. Draft a polite reply email in simple English.
        4. Write a disclosure line for the video, in Hinglish, that follows ASCI's influencer guidelines in general terms. Say where it should appear.
        5. Remind me which settings or rules to check on YouTube's and ASCI's current pages, and when to ask a chartered accountant or a lawyer.</pre>
            <ul class="ai-try-checks">
              <li>The disclosure is in the video itself (shown and said), not only in the description.</li>
              <li>It tells you to test the "8 hours" claim, not to repeat it.</li>
              <li>It asks about using your face and clip in their ads, and for how long.</li>
              <li>It says it is not legal or tax advice. It does not invent exact fees or tax rates.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Do the maths before you dream about ad money. Riya needs about 2,390 more watch hours, so brand deals and affiliate links may come first. Every paid connection needs a clear label that viewers cannot miss. Your viewers' trust is worth more than any one deal.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">A Content System</h1>
        </div>
        <p class="lc-lead">Most small creators do not stop because of bad ideas. They stop because they get tired. A <strong>content system</strong> is a fixed, simple way of working each week. It has four parts: a content calendar, batching (doing the same kind of task in one sitting), templates, and a plan to turn each long video into Shorts. In this lesson, you will build one for Riya's made-up channel <strong>Tiffin Tales</strong>. She has a full-time office job. She has only Saturday mornings and a few evenings. So her system must save time without making her videos worse.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="One long video, Sunday Meal Prep at 14 minutes 30 seconds, becomes three Shorts and one community post. Below, a two-week batching cycle: film two videos on one Saturday, edit one each week, and use the free Saturday to plan and script.">
            <defs><marker id="yt14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="60" width="190" height="90" rx="10" fill="#27274e" stroke="#d946ef"/>
              <text x="110" y="88" font-weight="700">1 long video</text>
              <text x="110" y="110" font-size="12">Sunday Meal Prep</text>
              <text x="110" y="130" font-size="11" fill="#9b99b8">14:30, Saturday 11 am</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#yt14a)">
                <line x1="205" y1="105" x2="276" y2="35"/>
                <line x1="205" y1="105" x2="276" y2="80"/>
                <line x1="205" y1="105" x2="276" y2="125"/>
                <line x1="205" y1="105" x2="276" y2="170"/>
              </g>
              <g font-size="12">
                <rect x="280" y="17" width="270" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="415" y="40">Short 1: 0:00 to 0:45, the reveal</text>
                <rect x="280" y="62" width="270" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="415" y="85">Short 2: 6:10 to 7:05, batter trick</text>
                <rect x="280" y="107" width="270" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="415" y="130">Short 3: 12:40 to 13:30, 1 pm test</text>
                <rect x="280" y="152" width="270" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="415" y="175">Post: poll for next week's video</text>
              </g>
              <rect x="575" y="17" width="170" height="171" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="660" y="42" font-weight="700">Each Short</text>
              <g font-size="11" fill="#9b99b8">
                <text x="660" y="68">vertical (9:16)</text>
                <text x="660" y="92">hook in first second</text>
                <text x="660" y="116">captions on</text>
                <text x="660" y="140">makes sense alone</text>
                <text x="660" y="164">links to the full video</text>
              </g>
              <text x="15" y="220" font-size="11" fill="#9b99b8" text-anchor="start">Two-week batching cycle</text>
              <g font-size="12">
                <rect x="15" y="230" width="165" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="97" y="252">Sat A: film</text>
                <text x="97" y="270" font-size="11" fill="#9b99b8">2 videos, 1 setup</text>
                <rect x="205" y="230" width="165" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="287" y="252">Week 1 evenings</text>
                <text x="287" y="270" font-size="11" fill="#9b99b8">edit video 1</text>
                <rect x="395" y="230" width="165" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="477" y="252">Sat B: plan</text>
                <text x="477" y="270" font-size="11" fill="#9b99b8">ideas, 2 scripts</text>
                <rect x="585" y="230" width="160" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="665" y="252">Week 2 evenings</text>
                <text x="665" y="270" font-size="11" fill="#9b99b8">edit video 2, Shorts</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#yt14a)">
                <line x1="180" y1="255" x2="201" y2="255"/>
                <line x1="370" y1="255" x2="391" y2="255"/>
                <line x1="560" y1="255" x2="581" y2="255"/>
              </g>
            </g>
          </svg>
          <figcaption>Top: one long video gives several smaller pieces. Bottom: filming two videos in one sitting frees the next Saturday for planning.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where does the time go?</h3>
          <p>Riya logged her hours for one video. Then she planned a system with batching, templates and AI help. These are made-up numbers:</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Before (hours)</th><th>With a system (hours)</th><th>What changed</th></tr></thead>
            <tbody>
              <tr><td>Ideas and research</td><td>1.5</td><td>0.75</td><td>One idea session a month. AI groups comment requests.</td></tr>
              <tr><td>Script</td><td>2.5</td><td>1.5</td><td>A script template and her voice sheet. AI drafts the outline.</td></tr>
              <tr><td>Filming</td><td>2.5</td><td>1.75</td><td>Two videos in one setup: lights, camera and shopping once</td></tr>
              <tr><td>Editing</td><td>4</td><td>3</td><td>AI cuts silences and makes captions. She still checks every cut.</td></tr>
              <tr><td>Title, thumbnail, description</td><td>1</td><td>0.75</td><td>A Canva thumbnail template and a description template</td></tr>
              <tr><td>Shorts</td><td>1</td><td>0.75</td><td>Clips marked while editing, not searched for later</td></tr>
              <tr><td><strong>Total per video</strong></td><td><strong>12.5</strong></td><td><strong>8.5</strong></td><td>4 hours saved a week</td></tr>
            </tbody>
          </table>
          <p>Riya keeps the saved time for two things. She keeps one extra finished video in reserve (a buffer), for weeks when she is sick or busy. She also replies to comments. Her rule: the system must never cut the parts only she can do, such as testing recipes and telling her own stories.</p>
        </div>
        <div class="lc-card">
          <h3>A simple content calendar</h3>
          <p>A content calendar is a table of what you will publish and when. Riya keeps hers in Google Sheets. She rotates her pillars so each type of viewer gets something. Here is a made-up month:</p>
          <table class="lc-table">
            <thead><tr><th>Week</th><th>Saturday 11 am long video</th><th>Pillar</th><th>Shorts (Tue and Thu)</th><th>Wednesday post</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>One Induction Plate: 5 Hostel Tiffins</td><td>Budget Student</td><td>2 clips from this video</td><td>Poll: Jain week or no-paneer week?</td></tr>
              <tr><td>2</td><td>5 No-Smell Office Tiffins</td><td>15-Minute Office</td><td>2 clips</td><td>Photo: this week's tiffin at 1 pm</td></tr>
              <tr><td>3</td><td>Jain Tiffin Week: No Onion, No Garlic</td><td>15-Minute Office</td><td>2 clips</td><td>Question: your biggest tiffin problem?</td></tr>
              <tr><td>4</td><td>Sunday Meal Prep: 5 Tiffins in 1 Hour, Part 2</td><td>Sunday Meal Prep</td><td>2 clips</td><td>Poll: next month's meal prep theme</td></tr>
            </tbody>
          </table>
          <p>Her sheet has these columns: Date, Title, Pillar, Status (Idea, Scripted, Filmed, Edited, Scheduled, Published), Shorts and Notes. Two helpful formulas:</p>
          <pre><code>Days until publish:        =A2-TODAY()
        Videos ready in reserve:   =COUNTIF(D2:D30,"Edited")+COUNTIF(D2:D30,"Scheduled")</code></pre>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make me a YouTube content calendar.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>My pillars: [3 pillars]. I publish 1 long video every Saturday
        at 11 am and 2 Shorts a week. I can film only on Saturday
        mornings. Here are 12 ideas from my comments: [paste].
        Make a 4-week calendar table: date, title, pillar, film date,
        edit dates, Shorts to cut. Rotate the pillars. Plan filming
        in batches of 2. Keep one week free as a buffer.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Turning long videos into Shorts</h3>
          <p>Shorts are vertical videos, up to 3 minutes long at the time of writing. They reach people in the Shorts feed who may not know your channel. A good Short is not a random cut. It must make sense on its own, with a clear start and end.</p>
          <ul class="lc-list">
            <li><strong>Mark clips while editing.</strong> Riya adds a marker at any moment that is surprising, useful or fun.</li>
            <li><strong>Reframe to vertical (9:16).</strong> Many editing tools, such as CapCut, Descript and Adobe Premiere Pro, have AI features that can suggest clips or reframe them. Check each clip by eye. AI often cuts off hands or food.</li>
            <li><strong>Start with the result.</strong> Show the finished tiffin in the first second, then how to make it.</li>
            <li><strong>Add captions and check them.</strong> Auto captions often get Hindi words wrong.</li>
            <li><strong>Link to the full video.</strong> Shorts can link to a related video. Check YouTube's current help pages for how.</li>
          </ul>
          <p>Reusing your own videos is fine. But the inauthentic content policy covers mass-produced, repetitive videos. So do not post the same clip again and again with small changes. Each Short should give the viewer something new.</p>
          <p><strong>Templates save time every week.</strong> Riya keeps four: a script template (hook, promise, steps, 1 pm test, next video), a description template, a Canva thumbnail layout and a pinned comment. She fills them in. She does not copy last week's words.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: turn one long video into a Short</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Riya's steps for making a Short from her Meal Prep video in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">While editing the long video, mark moments that are surprising or useful</li>
              <li data-order="2">Ask AI to suggest 3 Shorts from the chapter list, each with a hook line</li>
              <li data-order="3">Pick the best clip and check that it makes sense without the long video</li>
              <li data-order="4">Reframe it to vertical 9:16 and check that hands and food stay in frame</li>
              <li data-order="5">Add captions and fix the Hindi words by hand</li>
              <li data-order="6">Link the Short to the full video and schedule it for Tuesday</li>
              <li data-order="7">After a week, compare it with her other Shorts and note what worked</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI the chapter list of one of your long videos. It will suggest Shorts and a 4-week calendar. Replace the brackets with your own video, or keep Riya's made-up one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a YouTube content planner for a creator with a full-time job. Use simple English.

        My channel: [Tiffin Tales, quick Hindi-English lunch-box recipes]
        My pillars: [15-minute office tiffins; budget student tiffins; Sunday meal prep]
        My time: [film on Saturday mornings only; edit on 3 weekday evenings, 1 hour each]
        My schedule: [1 long video every Saturday at 11 am, 2 Shorts a week]
        Chapters of my latest long video, [Sunday Meal Prep: 5 Tiffins in 1 Hour, 14:30]:
        [0:00 The 5 tiffins reveal
        1:10 Shopping list and cost
        2:30 Chopping everything at once
        6:10 One batter, two tiffins
        9:00 Rice and dal in one cooker
        12:40 Opening a tiffin at 1 pm
        13:30 Storage tips]

        Please:
        1. Suggest 3 Shorts from these chapters: start and end time (under 60 seconds each), the hook for the first second, and on-screen text.
        2. Say why each Short makes sense on its own.
        3. Make a 4-week calendar table: date, long video title, pillar, film day, edit days, Shorts.
        4. Plan filming in batches of 2 and keep one finished video in reserve.
        Do not promise views or growth.</pre>
            <ul class="ai-try-checks">
              <li>Each Short's start and end times fall inside the chapters you gave.</li>
              <li>Each Short has a clear start and end, not a random cut.</li>
              <li>The calendar fits your real free time and rotates your pillars.</li>
              <li>There is a buffer week or a reserve video in the plan.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good system makes the boring parts fast so you have energy for the parts only you can do. Plan in a calendar, film in batches, use templates, and cut Shorts that make sense alone. A steady, simple routine works better than a few busy weeks followed by a long break.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Capstone: A Launch Plan for Tiffin Tales</h1>
        </div>
        <p class="lc-lead">In this capstone, you will put the whole course together into one launch plan. You will follow Riya as she plans the next 90 days of her made-up channel <strong>Tiffin Tales</strong>. Her plan has seven parts: her niche and promise, 10 video ideas, one full script, title options, a thumbnail brief, a description and a 13-week (about 90-day) calendar with honest targets. AI helps her draft every part. She makes every decision and checks every fact and number. At the end, you will use one prompt to build the same plan for your own channel.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A 90-day plan in three phases. Days 1 to 30: fix and set up. Days 31 to 60: grow the pillars. Days 61 to 90: do more of what worked. Target: 13 long videos and 26 Shorts. Watch hours grow from about 1,610 to about 3,300 at today's pace.">
            <defs><marker id="yt15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">Tiffin Tales: 90-day launch plan (13 weeks)</text>
              <rect x="15" y="40" width="230" height="170" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="130" y="66" font-weight="700">Days 1 to 30</text>
              <text x="130" y="86" font-size="12" fill="#93c5fd">Fix and set up</text>
              <rect x="265" y="40" width="230" height="170" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="66" font-weight="700">Days 31 to 60</text>
              <text x="380" y="86" font-size="12" fill="#c4b5fd">Grow the pillars</text>
              <rect x="515" y="40" width="230" height="170" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="630" y="66" font-weight="700">Days 61 to 90</text>
              <text x="630" y="86" font-size="12" fill="#6ee7b7">Do more of what worked</text>
              <g font-size="11" fill="#9b99b8">
                <text x="130" y="114">new promise, banner, trailer</text>
                <text x="130" y="136">4 long videos, 8 Shorts</text>
                <text x="130" y="158">templates, blocked words</text>
                <text x="130" y="180">film in batches of 2</text>
                <text x="380" y="114">Jain week, 1 pm fresh test</text>
                <text x="380" y="136">4 long videos, 8 Shorts</text>
                <text x="380" y="158">playlists, end screens</text>
                <text x="380" y="180">day-30 review, media kit</text>
                <text x="630" y="114">5 long videos, 10 Shorts</text>
                <text x="630" y="136">more of the best pillar</text>
                <text x="630" y="158">brand talks, #ad rules</text>
                <text x="630" y="180">day-60 and day-90 reviews</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#yt15a)">
                <line x1="245" y1="125" x2="261" y2="125"/>
                <line x1="495" y1="125" x2="511" y2="125"/>
              </g>
              <rect x="15" y="228" width="730" height="60" rx="10" fill="#27274e" stroke="#d946ef"/>
              <text x="380" y="252" font-size="12">Total: 13 long videos, 26 Shorts, 3 reviews</text>
              <text x="380" y="274" font-size="12" fill="#9b99b8">Watch hours: about 1,610 now, about 3,300 by day 90 at today's pace (made-up)</text>
            </g>
          </svg>
          <figcaption>Riya's plan has three 30-day phases. Each phase ends with a review of her analytics before she plans the next one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Part 1: Niche, promise and 10 video ideas</h3>
          <p><strong>Niche:</strong> quick Hinglish lunch-box recipes for working people and students. <strong>Promise:</strong> "One tested tiffin every Saturday, ready in 15 minutes, still tasty at 1 pm." Her gap against the three made-up rival channels: low-cost Hinglish tiffins, weekly meal-prep plans and Maharashtrian food.</p>
          <p>Riya asked AI for 30 ideas linked to her comments. She scored them with her Demand, Fit, Ease and Freshness sheet and kept these 10:</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Video idea</th><th>Pillar</th><th>Why (evidence)</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>One Induction Plate: 5 Hostel Tiffins</td><td>Budget Student</td><td>Repeated PG comments. Scored 23.</td></tr>
              <tr><td>2</td><td>Jain Tiffin Week: No Onion, No Garlic</td><td>15-Minute Office</td><td>Repeated requests. Scored 22.</td></tr>
              <tr><td>3</td><td>Will It Stay Fresh Till 1 PM? 6 Tiffins Tested</td><td>15-Minute Office</td><td>Her most common question</td></tr>
              <tr><td>4</td><td>₹50 Student Tiffins, Cooking Starts in 20 Seconds</td><td>Budget Student</td><td>Hostel video: 7.8% CTR but 31% viewed</td></tr>
              <tr><td>5</td><td>5 No-Smell Office Tiffins</td><td>15-Minute Office</td><td>Comment request</td></tr>
              <tr><td>6</td><td>1 Batter, 3 Chilla Tiffins for the Week</td><td>Sunday Meal Prep</td><td>Chilla video: 49% viewed</td></tr>
              <tr><td>7</td><td>High-Protein Tiffins Without Paneer</td><td>15-Minute Office</td><td>"Paneer is costly" comments</td></tr>
              <tr><td>8</td><td>3 Kids' Tiffins That Come Back Empty</td><td>Kids' (test)</td><td>Decides if the kids' pillar stays</td></tr>
              <tr><td>9</td><td>Sunday Meal Prep: Jain Week</td><td>Sunday Meal Prep</td><td>Meal Prep: 370 watch hours</td></tr>
              <tr><td>10</td><td>Maharashtrian Tiffins: Thalipeeth and Zunka</td><td>15-Minute Office</td><td>Gap in rival channels</td></tr>
            </tbody>
          </table>
          <p>Before filming, she checks every nutrition claim (idea 7) with food labels or a reliable nutrition source. She tests every freshness claim (idea 3) herself.</p>
        </div>
        <div class="lc-card">
          <h3>Part 2: The first video pack</h3>
          <p>Her first video is idea 1. AI drafted an outline from her voice sheet. She rewrote it in her own words and read it aloud. Here is the final script, with the cooking steps shortened:</p>
          <pre><code>ONE INDUCTION PLATE: 5 HOSTEL TIFFINS   (9:10)

        0:00  HOOK   [Riya holds up 5 open tiffins]
              "5 tiffins. 1 induction plate. ₹230 for the whole week.
               Aur kya 1 baje tak fresh rahenge? End mein khol ke dikhaungi.
               Chalo, shuru karte hain!"
        0:25  PROMISE  "PG waalon, yeh video aapke liye hai. Bas itna chahiye."
              Shopping list and total cost as on-screen text.
              [MY STORY: my first PG room, and my one steel plate]
        0:45  TIFFIN 1  Masala oats upma. Cooking starts now. [BEAT: "Tiffin 1 of 5"]
        2:05  TIFFIN 2  Besan chilla roll. Tip: make the batter at night.
        3:20  TIFFIN 3  One-pot dal khichdi. [BEAT: my leaking-tiffin story]
        4:40  TIFFIN 4  Soya pulao. "Protein bhi, budget bhi." [BEAT: "₹38 for this one"]
        6:00  TIFFIN 5  Peanut poha. [BEAT: "1 pm test next!"]
        7:20  1 PM TEST  Open all 5 tiffins at 1 pm. Honest taste notes.
        8:30  COST + NEXT  Total cost on screen (CHECK: her real bill).
              "Agla video: Sunday Meal Prep. Subscribe kar lo!"
              End screen: Sunday Meal Prep video.</code></pre>
          <p>The shopping list appears as on-screen text at 0:25, not as a 3-minute talk. That fixes the problem from her Hostel video.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Riya's choice</th></tr></thead>
            <tbody>
              <tr><td><strong>Title options</strong></td><td>1. 1 Induction Plate, 5 Hostel Tiffins<br>2. ₹230 for 5 Hostel Tiffins (One Induction Plate)<br>3. PG Cooking: 5 Tiffins on 1 Induction Plate<br><em>All three match what the first 25 seconds show. She A/B tests them in YouTube Studio with the same thumbnail.</em></td></tr>
              <tr><td><strong>Thumbnail brief</strong></td><td>Her real photo: 5 open steel tiffins in front of the induction plate. Her face on the right, smiling. Text: "FRESH AT 1 PM?" in yellow, which adds to the title and does not repeat it. Real food only, no AI-made food. Check it at phone size.</td></tr>
              <tr><td><strong>Description</strong></td><td>First 2 lines: "5 hostel tiffins on one induction plate, ₹230 for the whole week. Cost of each tiffin and a 1 pm taste test included." Then the 9 chapters from the script times above. The first one is 0:00, and each is longer than 10 seconds. Then the full ingredient list and a link to her meal-prep playlist.</td></tr>
            </tbody>
          </table>
          <p>This video has no sponsor. If a later video has one, she will say and show "#ad" in the video and turn on the paid promotion setting. She uses no realistic AI scenes, so no altered or synthetic label is needed.</p>
        </div>
        <div class="lc-card">
          <h3>Part 3: The 90-day plan and honest targets</h3>
          <table class="lc-table">
            <thead><tr><th>Phase</th><th>Publish</th><th>Main work</th><th>Review questions</th></tr></thead>
            <tbody>
              <tr><td><strong>Days 1–30</strong> (weeks 1–4)</td><td>4 long videos, 8 Shorts</td><td>New channel promise, banner and trailer. Templates. Blocked words. Film 2 videos per sitting.</td><td>Is the CTR of new videos at or above her 6.0% channel CTR?</td></tr>
              <tr><td><strong>Days 31–60</strong> (weeks 5–8)</td><td>4 long videos, 8 Shorts</td><td>Jain week, 1 pm fresh test. One playlist per pillar. End screens. A media kit.</td><td>Do new videos keep 45% or more viewed? Which pillar leads?</td></tr>
              <tr><td><strong>Days 61–90</strong> (weeks 9–13)</td><td>5 long videos, 10 Shorts</td><td>More of the best pillar. First brand talks, with #ad rules. Plan the next 90 days.</td><td>Have returning viewers grown from about 22%?</td></tr>
            </tbody>
          </table>
          <p><strong>Two kinds of targets.</strong> Upload targets are things she controls: 13 long videos, 26 Shorts, replies to questions within 2 days and 3 reviews. Learning targets show what works: CTR, average % viewed and returning viewers. She cannot control these directly, so she learns from them rather than panicking.</p>
          <p><strong>The watch-hour maths (made-up):</strong></p>
          <pre><code>At today's pace:    13 videos × 130.5 hours = about 1,697 hours
                            1,610 + 1,697 = about 3,300 hours by day 90
        If videos improve:  13 × 160 = 2,080 → 1,610 + 2,080 = 3,690 hours
        Still needed for 4,000: about 19 videos at today's pace</code></pre>
          <p>So the Partner Program will probably come after this plan, not during it. Riya writes that down. It stops her from chasing tricks or buying fake views, which break YouTube's rules and can end a channel. At each review, she pastes her new numbers into AI and checks its maths in her sheet.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Riya builds her plan with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Riya asks">She pastes her niche, pillars, 8-video table, audience data and top comments. "Make a 90-day launch plan. I can film only on Saturday mornings."</li>
              <li data-kind="answer" data-label="AI replies">A 13-week plan with 2 long videos a week. It says: "Follow this plan and you will reach 4,000 watch hours by day 60."</li>
              <li data-kind="warn" data-label="Catch the mistakes">Two long videos a week does not fit her Saturday-only time. And no one can promise watch hours.</li>
              <li data-kind="tool" data-label="Her spreadsheet">She checks the maths: 1,610 + 13 × 130.5 = about 3,300 hours by day 90.</li>
              <li data-kind="result" data-label="The honest answer">Not 4,000 by day 60. At today's pace, she needs about 19 more videos.</li>
              <li data-kind="check" data-label="She edits the plan">One long video and 2 Shorts a week, filmed in batches of 2. Upload targets she controls, plus 3 reviews.</li>
              <li data-kind="thought" data-label="Riya decides">She books her 3 review dates in her calendar and starts with the induction plate video.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build your own 90-day launch plan in one go. Fill in the brackets with your channel's details, or keep Riya's made-up details to see a full example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a YouTube launch coach for small creators. Use simple English. Be honest about what is uncertain.

        My channel: [Tiffin Tales, quick Hindi-English lunch-box recipes for office workers and students]
        Numbers: [2,340 subscribers; about 1,610 public watch hours; last 8 videos earned about 130 watch hours each; channel CTR 6.0%; 22% returning viewers]
        My pillars: [15-minute office tiffins; budget student tiffins; Sunday meal prep]
        Top comment requests: [Jain versions; will it stay fresh till 1 pm; one induction plate cooking]
        My time: [film Saturday mornings only; 3 weekday evenings for editing]

        Please give me:
        1. My niche and a one-line channel promise.
        2. 10 video ideas in a table: title, pillar, the comment or number behind it.
        3. A full script outline for idea 1, with a 20-second hook. Mark [MY STORY] gaps and (CHECK) facts.
        4. 3 honest title options, a thumbnail brief and a description with chapters.
        5. A 13-week plan: long videos, Shorts, main tasks, 3 review dates.
        6. Watch hours at my current pace by week 13. Show the maths. No promises.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers, week-13 watch hours should be about 1,610 + 13 × 130 = about 3,300.</li>
              <li>The plan fits your real time. It does not ask for more videos than you can film.</li>
              <li>Titles match what the video shows in the first 20 seconds.</li>
              <li>Facts, costs and health claims are marked for you to check. Nothing promises views or income.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A launch plan turns everything in this course into weekly actions. Base it on your real data and real comments. Set targets you control, review your numbers every 30 days, and check AI's maths. Keep your own voice, label AI and paid content, and never buy fake views. That is how a small channel grows in a way that lasts.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

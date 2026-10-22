module AiForPodcastsContent
  # Units (sidebar dividers): 1–4 Podcast Basics · 5–9 Planning and Recording · 10–14 Editing and Growing · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">How Podcasts Work</h1>
        </div>
        <p class="lc-lead">A podcast is a show that people follow and play on their phones, often while they travel, cook or walk. In this lesson you will learn how an episode gets from your microphone to a listener's app. You will learn three key words: <strong>host</strong>, <strong>RSS feed</strong> and <strong>directory</strong>. You will also see where audio and video podcasts go today: Spotify, Apple Podcasts and YouTube. Our example is <em>The Monsoon Mic</em>, a made-up new Kerala podcast. It is hosted by Anu and Joel and launches in November 2026.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="An episode is recorded, edited and uploaded to a podcast host. The host makes an RSS feed. Apple Podcasts, Spotify and other apps read the feed. The video version is also uploaded straight to YouTube.">
            <defs><marker id="pd1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="110" width="110" height="52" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="75" y="133" font-weight="700">Record</text>
              <text x="75" y="151" font-size="11" fill="#9b99b8">audio + video</text>
              <rect x="160" y="110" width="110" height="52" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="215" y="133" font-weight="700">Edit</text>
              <text x="215" y="151" font-size="11" fill="#9b99b8">final files</text>
              <rect x="300" y="110" width="130" height="52" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="365" y="133" font-weight="700">Podcast host</text>
              <text x="365" y="151" font-size="11" fill="#9b99b8">stores the files</text>
              <rect x="460" y="110" width="110" height="52" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="515" y="133" font-weight="700">RSS feed</text>
              <text x="515" y="151" font-size="11" fill="#9b99b8">episode list</text>
              <rect x="610" y="40" width="140" height="46" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="680" y="68">Apple Podcasts</text>
              <rect x="610" y="113" width="140" height="46" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="680" y="141">Spotify</text>
              <rect x="610" y="186" width="140" height="46" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="680" y="214">Other apps</text>
              <rect x="610" y="244" width="140" height="46" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="680" y="272">YouTube</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pd1a)">
                <line x1="132" y1="136" x2="156" y2="136"/>
                <line x1="272" y1="136" x2="296" y2="136"/>
                <line x1="432" y1="136" x2="456" y2="136"/>
                <line x1="572" y1="128" x2="606" y2="66"/>
                <line x1="572" y1="136" x2="606" y2="136"/>
                <line x1="572" y1="144" x2="606" y2="206"/>
                <path d="M215,164 L215,267 L606,267"/>
              </g>
              <text x="410" y="258" font-size="11" fill="#f9a8d4">video uploaded straight to YouTube</text>
              <text x="365" y="30" font-size="12" fill="#9b99b8">Example: The Monsoon Mic (made up)</text>
              <text x="590" y="30" font-size="11" fill="#9b99b8">apps read the feed</text>
            </g>
          </svg>
          <figcaption>One upload to your host reaches many apps through the RSS feed. YouTube usually gets its own video upload.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Audio podcasts and video podcasts</h3>
          <p>A <strong>show</strong> is the whole podcast, for example <em>The Monsoon Mic</em>. An <strong>episode</strong> is one part of the show. People <strong>follow</strong> (or subscribe to) a show. Their app then shows each new episode.</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it is</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><strong>Audio podcast</strong></td><td>Sound only, usually an MP3 file</td><td>Listening while driving, cooking or at the gym. Cheap and fast to make.</td></tr>
              <tr><td><strong>Video podcast</strong></td><td>The same talk, filmed with one or more cameras</td><td>YouTube, Spotify video, short clips for Reels and Shorts. Viewers see faces, places and objects.</td></tr>
            </tbody>
          </table>
          <p>Many shows now make both. They film the talk and also publish the sound as an audio episode. Anu and Joel plan to do this. They will film each guest in their kitchen, shop or boat. The audio will still make sense without the picture.</p>
          <p><strong>A simple rule:</strong> if listeners cannot see the video, the words must still explain everything. Joel says "Sarala Chechi is lifting a big pot of fish curry", not "look at this".</p>
        </div>
        <div class="lc-card">
          <h3>Hosting and the RSS feed</h3>
          <p>A <strong>podcast host</strong> is a service that stores your episode files. You upload each episode there once. The host then makes your <strong>RSS feed</strong>: a public web address with a list of all your episodes in a standard format. Podcast apps check this feed often. When a new episode appears, they show it to your followers.</p>
          <p>A <strong>directory</strong> is an app or catalogue where people find shows, such as Apple Podcasts or Spotify. You submit your RSS feed to each directory once. After that, new episodes appear on their own.</p>
          <p>What the RSS feed carries:</p>
          <table class="lc-table">
            <thead><tr><th>For the whole show</th><th>For each episode</th></tr></thead>
            <tbody>
              <tr><td>Show name, description, cover art</td><td>Episode title and number</td></tr>
              <tr><td>Category (for example Society and Culture)</td><td>Show notes (the text description)</td></tr>
              <tr><td>Language, owner name and email</td><td>The audio (or video) file</td></tr>
              <tr><td>Explicit content setting</td><td>Publish date and length</td></tr>
            </tbody>
          </table>
          <p>Most hosts also give you download statistics and a simple website for the show. Some hosts are free and some are paid. Before you choose, check each host's current plans, video support and export options. You want to be able to move your show later without losing followers.</p>
        </div>
        <div class="lc-card">
          <h3>Where audio and video podcasts go today</h3>
          <table class="lc-table">
            <thead><tr><th>Platform</th><th>How your show usually gets there</th><th>Video</th></tr></thead>
            <tbody>
              <tr><td><strong>Apple Podcasts</strong></td><td>Submit your RSS feed once through Apple's podcaster website</td><td>Supports video episodes. Some hosting partners can also send a newer streaming video format.</td></tr>
              <tr><td><strong>Spotify</strong></td><td>Submit your RSS feed, or host the show with Spotify's own creator tool</td><td>Video can be uploaded in Spotify's creator tool, or sent by some partner hosts</td></tr>
              <tr><td><strong>YouTube</strong></td><td>Upload videos to your channel and mark a playlist as a podcast in YouTube Studio</td><td>Video first. In some countries, YouTube can also read an RSS feed and turn audio into a still-image video.</td></tr>
              <tr><td><strong>Other apps</strong></td><td>Many apps read public RSS feeds. Some need you to submit the feed.</td><td>Mostly audio</td></tr>
            </tbody>
          </table>
          <p>These features change often. Check each platform's current help pages before you set up your show. For example, check that YouTube's RSS option is still offered in your country.</p>
          <p><strong>The Monsoon Mic's plan:</strong> the audio goes to a paid podcast host. The host sends it to Apple Podcasts, Spotify and other apps. Joel uploads the full video episodes and clips straight to their YouTube channel.</p>
          <p>AI can explain these steps in simple words. But AI tools may know old versions of platform rules. Compare this weak prompt and a better one:</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How do I put my podcast on Spotify?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am starting a video and audio podcast in Kerala, India.
        Explain in simple steps how a new show usually gets onto
        Spotify, Apple Podcasts and YouTube.
        For each step, tell me which help page I should read to
        check the current rules, because features may have changed.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: publish the first episode</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Anu and Joel's steps for publishing their first episode in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Record the talk with Sarala Chechi, the toddy-shop cook</li>
              <li data-order="2">Edit the video and export an audio file</li>
              <li data-order="3">Upload the audio, title and show notes to the podcast host</li>
              <li data-order="4">The host adds the episode to the RSS feed</li>
              <li data-order="5">Apple Podcasts and Spotify read the feed and show the new episode</li>
              <li data-order="6">Check the episode in each app on a phone: sound, title, cover art</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a simple setup plan for your own show. Then check each step on the platforms' current help pages.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly podcast coach for beginners. Use simple English and short sentences.

        My show: [The Monsoon Mic, a Kerala podcast about local people, food, boats and small businesses].
        Hosts: [Anu and Joel]. Language: [English with some Malayalam].
        Format: [video and audio; we film each talk and also want an audio version].
        Where we want to be: [Spotify, Apple Podcasts, YouTube].
        Launch month: [November 2026].

        Please give me:
        1. A 5-line explanation of what a podcast host and an RSS feed do, using my show as the example.
        2. A table with one row per platform: how my show gets there, audio or video, and the name of the help page I should read to check the current steps.
        3. A checklist of 8 things to prepare before I submit my feed (for example cover art, show description, category, language).
        4. Three questions I should ask before I choose a podcast host.

        If you are not sure a feature still works the same way today, say so clearly.</pre>
            <ul class="ai-try-checks">
              <li>Did it explain the host and the RSS feed correctly and simply?</li>
              <li>Did it avoid stating exact prices or limits as facts?</li>
              <li>Did it mark features that may have changed and point you to help pages?</li>
              <li>Open the real help pages. Do the steps still match?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> You upload an episode to your host once, and the RSS feed carries it to many apps. YouTube is the main exception: you usually upload video there yourself. Platform features change often, so always check the current help pages.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Where AI Helps with Podcasts</h1>
        </div>
        <p class="lc-lead">Making a podcast has many small jobs: research, planning, recording, editing, writing show notes and making clips. AI can save you hours on many of them. But AI can also make mistakes, invent facts or copy a voice without permission. In this lesson you will see where AI helps at each stage and what a person must still do. You will also learn the main risks, so you can avoid them from the start.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Six podcast stages in a row: research, outline, record, edit, show notes and clips. Under each stage: what AI does and what you check. A warning bar lists the risks: invented facts, wrong names and voice clones without consent.">
            <defs><marker id="pd2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="92" text-anchor="start" font-size="11" fill="#c4b5fd">AI does</text>
              <text x="12" y="162" text-anchor="start" font-size="11" fill="#6ee7b7">You check</text>
              <rect x="80" y="20" width="100" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="130" y="45" font-weight="700">Research</text>
              <rect x="193" y="20" width="100" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="243" y="45" font-weight="700">Outline</text>
              <rect x="306" y="20" width="100" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="356" y="45" font-weight="700">Record</text>
              <rect x="419" y="20" width="100" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="469" y="45" font-weight="700">Edit</text>
              <rect x="532" y="20" width="100" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="582" y="45" font-weight="700">Show notes</text>
              <rect x="645" y="20" width="100" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="695" y="45" font-weight="700">Clips</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pd2a)">
                <line x1="181" y1="40" x2="191" y2="40"/>
                <line x1="294" y1="40" x2="304" y2="40"/>
                <line x1="407" y1="40" x2="417" y2="40"/>
                <line x1="520" y1="40" x2="530" y2="40"/>
                <line x1="633" y1="40" x2="643" y2="40"/>
              </g>
              <g font-size="11">
                <rect x="80" y="72" width="100" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="130" y="91">finds leads,</text><text x="130" y="106">questions</text>
                <rect x="193" y="72" width="100" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="243" y="91">drafts a</text><text x="243" y="106">segment plan</text>
                <rect x="306" y="72" width="100" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="356" y="91">little help;</text><text x="356" y="106">people talk</text>
                <rect x="419" y="72" width="100" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="469" y="91">transcript,</text><text x="469" y="106">cuts fillers</text>
                <rect x="532" y="72" width="100" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="582" y="91">drafts notes,</text><text x="582" y="106">chapters</text>
                <rect x="645" y="72" width="100" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="695" y="91">suggests</text><text x="695" y="106">moments</text>
                <rect x="80" y="142" width="100" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="130" y="161">real sources</text><text x="130" y="176">for each fact</text>
                <rect x="193" y="142" width="100" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="243" y="161">fits your</text><text x="243" y="176">guest + style</text>
                <rect x="306" y="142" width="100" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="356" y="161">sound levels,</text><text x="356" y="176">consent</text>
                <rect x="419" y="142" width="100" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="469" y="161">meaning kept,</text><text x="469" y="176">no bad cuts</text>
                <rect x="532" y="142" width="100" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="582" y="161">names, links,</text><text x="582" y="176">timestamps</text>
                <rect x="645" y="142" width="100" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="695" y="161">context,</text><text x="695" y="176">guest is OK</text>
              </g>
              <rect x="80" y="208" width="665" height="46" rx="10" fill="#2a1f3a" stroke="#ec4899"/>
              <text x="412" y="228" font-weight="700" fill="#f9a8d4">Risks to watch</text>
              <text x="412" y="246" font-size="11.5">invented facts · wrong names and spellings · voice clones without consent · private data</text>
            </g>
          </svg>
          <figcaption>AI helps at almost every stage. A person checks every stage before the episode goes out.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI does well, and what you still do</h3>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>How AI helps</th><th>What you must still do</th></tr></thead>
            <tbody>
              <tr><td><strong>Research</strong></td><td>Lists topics, background questions and places to look</td><td>Find the real source for every fact. AI can invent dates, numbers and "quotes".</td></tr>
              <tr><td><strong>Outline</strong></td><td>Drafts a segment plan and question list</td><td>Make it fit your guest, your time and your own style</td></tr>
              <tr><td><strong>Recording</strong></td><td>Some tools clean up sound or show levels</td><td>The talk itself is human. Listen, react and follow up.</td></tr>
              <tr><td><strong>Editing</strong></td><td>Makes a <strong>transcript</strong> (the words of the talk as text) so you can edit by deleting words. Removes "um" and long pauses.</td><td>Listen to every cut. Make sure no cut changes what the guest meant.</td></tr>
              <tr><td><strong>Show notes</strong></td><td>Drafts a summary, chapters (sections with start times) and titles</td><td>Check names, spellings, links and times against the episode</td></tr>
              <tr><td><strong>Clips</strong></td><td>Suggests short moments for Reels and Shorts, adds captions</td><td>Check the clip is fair out of context and the guest is happy with it</td></tr>
            </tbody>
          </table>
          <p>Tools such as Descript, Adobe Premiere Pro, DaVinci Resolve and CapCut have AI features for transcripts, filler words and captions. Features differ and change often, so check each tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>The main risks</h3>
          <ul class="lc-list">
            <li><strong>Invented facts.</strong> AI may say an old waterfront building is "400 years old" with no source. If you repeat it on air, your listeners trust a wrong fact.</li>
            <li><strong>Wrong names and words.</strong> Transcripts often misspell Malayalam words and names. For example, "karimeen" (pearl spot fish) may become "carry mean".</li>
            <li><strong>Voice cloning.</strong> Some tools can copy a voice from a short recording. Never copy a guest's voice, or anyone else's, without clear written consent. The consent lesson covers this in detail.</li>
            <li><strong>Private data.</strong> Do not paste a guest's phone number, address or private stories into public AI tools. Check your tool's privacy settings first.</li>
            <li><strong>Losing your voice.</strong> If AI writes all your questions and intros, your show sounds like every other show. Listeners come for Anu and Joel, not for AI.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: one episode, with and without AI</h3>
          <p>Joel timed the work on a practice episode (made-up numbers). He edited the same 40-minute talk twice:</p>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Without AI</th><th>With AI help</th><th>Joel's check</th></tr></thead>
            <tbody>
              <tr><td>Research and questions</td><td>3 hours</td><td>1.5 hours</td><td>Found real sources for 6 facts</td></tr>
              <tr><td>Rough edit</td><td>4 hours</td><td>1.5 hours</td><td>Listened to every cut</td></tr>
              <tr><td>Show notes and chapters</td><td>1 hour</td><td>20 minutes</td><td>Fixed 4 misspelt names</td></tr>
              <tr><td>3 social clips</td><td>2 hours</td><td>45 minutes</td><td>Replaced 1 clip that sounded unfair</td></tr>
            </tbody>
          </table>
          <p>AI saved Joel about 6 hours on this episode (10 hours down to about 4). But he still spent real time checking. Without the checks, the episode would have had wrong names and one unfair clip.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write show notes for my podcast.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is the transcript of our episode with Sarala, a cook
        at a toddy shop by the Kerala backwaters. Draft show notes: a 3-sentence
        summary, 5 chapters with start times from the transcript,
        and a list of every name and Malayalam word you found,
        so I can check the spellings. Do not add facts that are
        not in the transcript.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: who should do this job?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each task for The Monsoon Mic.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI drafts, person checks"></div>
              <div data-sorter-target="bucket" data-bucket="human" data-label="A person does it"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not do it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="AI is fast at this. You still check the names and times.">Draft chapters and a summary from the episode transcript</li>
              <li data-bucket="human" data-why="Real listening and follow-up questions need a person in the room.">Talk with Thomas, the houseboat owner, during the interview</li>
              <li data-bucket="ai" data-why="AI can suggest moments. You choose clips that are fair to the guest.">Suggest five 45-second moments for Instagram Reels</li>
              <li data-bucket="no" data-why="This copies his voice without consent. It may also break platform rules and the law.">Clone the ferry captain's voice to add a line he never said</li>
              <li data-bucket="human" data-why="Only the guest can give consent. A person must ask and keep the signed form.">Get the spice trader's signed permission to publish the talk</li>
              <li data-bucket="no" data-why="Private guest details should not go into public AI tools.">Paste the guest's home address and phone number into a free chatbot</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to map where it can help in your podcast workflow. Then mark the checks you will always do yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a podcast production coach. Use simple English.

        My show: [The Monsoon Mic, a weekly video and audio podcast from Kerala about local people, food, boats and small businesses].
        Team: [2 hosts, Anu and Joel. Joel edits. No other staff.]
        Time we have each week: [about 12 hours in total].
        Our biggest problem: [editing and show notes take too long].

        Please make a table with these columns: Stage, What AI can help with, What a person must check, Risk if we skip the check.
        Use these stages: research, outline, guest prep, recording, editing, transcript, show notes, clips, promotion.

        Then give me:
        1. The 3 stages where AI would save us the most time, and why.
        2. Two things we should never hand to AI (for example consent or copying a voice).
        3. A 5-point weekly checklist we can print and use before each episode goes live.</pre>
            <ul class="ai-try-checks">
              <li>Does every stage have a clear human check?</li>
              <li>Does it say never to clone a voice without written consent?</li>
              <li>Does it warn about invented facts and misspelt names?</li>
              <li>Is the checklist short enough to use every week?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI for the slow, repeated jobs: transcripts, drafts, chapters and clip ideas. Keep the human jobs human: the conversation, the facts, the consent and your own voice.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Planning Your Show</h1>
        </div>
        <p class="lc-lead">Many podcasts stop after a few episodes. Often the show had no clear plan. In this lesson you will make a one-page show plan with six parts: concept, audience, format, length, schedule and name. You will use AI to test your ideas and suggest options. You will also see what you must decide yourself. Anu and Joel use this plan for <em>The Monsoon Mic</em>.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A one-page show plan for The Monsoon Mic with six boxes. Concept: Kerala's untold local stories. Audience: local people and Malayalis away from home. Format: two hosts and one guest. Length: 35 to 45 minutes. Schedule: weekly on Tuesdays. Name: The Monsoon Mic.">
            <defs><marker id="pd3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="740" height="270" rx="14" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="38" font-weight="700" fill="#c4b5fd">One-page show plan: The Monsoon Mic</text>
              <rect x="30" y="56" width="225" height="92" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="142" y="80" font-size="11" fill="#9b99b8">1. CONCEPT</text>
              <text x="142" y="104">Kerala's untold</text>
              <text x="142" y="124">local stories</text>
              <rect x="268" y="56" width="225" height="92" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="80" font-size="11" fill="#9b99b8">2. AUDIENCE</text>
              <text x="380" y="104">Local people and</text>
              <text x="380" y="124">Malayalis away from home</text>
              <rect x="506" y="56" width="225" height="92" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="618" y="80" font-size="11" fill="#9b99b8">3. FORMAT</text>
              <text x="618" y="104">2 hosts + 1 guest,</text>
              <text x="618" y="124">video and audio</text>
              <rect x="30" y="164" width="225" height="92" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="142" y="188" font-size="11" fill="#9b99b8">4. LENGTH</text>
              <text x="142" y="212">35 to 45 minutes</text>
              <text x="142" y="232" font-size="11" fill="#9b99b8">plus 3 to 4 short clips</text>
              <rect x="268" y="164" width="225" height="92" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="188" font-size="11" fill="#9b99b8">5. SCHEDULE</text>
              <text x="380" y="212">Weekly, Tuesday 7 am</text>
              <text x="380" y="232" font-size="11" fill="#9b99b8">8 episodes from 3 Nov 2026</text>
              <rect x="506" y="164" width="225" height="92" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="618" y="188" font-size="11" fill="#9b99b8">6. NAME</text>
              <text x="618" y="212" font-weight="700">The Monsoon Mic</text>
              <text x="618" y="232" font-size="11" fill="#9b99b8">checked on all apps</text>
            </g>
          </svg>
          <figcaption>Six decisions on one page. If you cannot fill a box in one line, the idea needs more work.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Concept and audience</h3>
          <p>The <strong>concept</strong> is what your show is about and why it is different. Write it as a one-sentence promise to the listener. The <strong>audience</strong> is the group of people you make the show for. Be specific. "Everyone" is not an audience.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Too vague</th><th>Clear</th></tr></thead>
            <tbody>
              <tr><td><strong>Concept</strong></td><td>"A podcast about Kerala"</td><td>"Every week, we sit down with one local person whose work you have seen, but whose story you have never heard."</td></tr>
              <tr><td><strong>Audience</strong></td><td>"People who like stories"</td><td>"People aged 22 to 45 in Kerala, and Malayalis in other cities and the Gulf who miss home"</td></tr>
            </tbody>
          </table>
          <p>AI is good at testing a concept. Ask it to act as a listener and say what is unclear. But AI does not know your city or your listeners. Talk to five real people from your audience before you decide.</p>
        </div>
        <div class="lc-card">
          <h3>Format, length and schedule</h3>
          <table class="lc-table">
            <thead><tr><th>Choice</th><th>Common options</th><th>The Monsoon Mic</th></tr></thead>
            <tbody>
              <tr><td><strong>Format</strong></td><td>Solo, two co-hosts, interview, panel, storytelling (narrated)</td><td>Two hosts plus one guest, filmed on location when possible</td></tr>
              <tr><td><strong>Length</strong></td><td>Short (10 to 20 min), medium (30 to 45), long (60+)</td><td>35 to 45 minutes, so it fits a commute or a cooking session</td></tr>
              <tr><td><strong>Schedule</strong></td><td>Weekly, every two weeks, monthly, or seasons</td><td>A season of 8 weekly episodes, every Tuesday at 7 am IST</td></tr>
              <tr><td><strong>Language</strong></td><td>One language, or a mix</td><td>English with some Malayalam, explained for non-Malayalam listeners</td></tr>
            </tbody>
          </table>
          <p>A <strong>season</strong> is a fixed set of episodes with a break after it. Seasons help small teams. Anu and Joel can record most of Season 1 before launch. This gives them a buffer (spare finished episodes) if a guest cancels.</p>
          <p>Choose a schedule you can keep for a year, not just a month. Listeners trust a show that arrives on time.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing a name</h3>
          <p>A good podcast name is easy to say, spell and search. It hints at the topic. AI can give you 30 ideas in a minute. But you must check each name yourself:</p>
          <ul class="lc-list">
            <li>Search for it on Spotify, Apple Podcasts and YouTube. Is another show already using it?</li>
            <li>Check if the Instagram handle and a web address are free.</li>
            <li>Say it out loud to five people. Can they spell it after hearing it once?</li>
            <li>Check it does not copy a brand or trade mark. For a business, ask a lawyer about trade mark searches. This is not legal advice.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me podcast names.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Suggest 15 names for a weekly Kerala podcast about local people,
        food, boats and small businesses. English with some Malayalam.
        Names must be 1 to 4 words, easy to spell, and easy to say for
        people outside Kerala. For each name, give one line on the feeling
        it creates. Do not use names of real brands or existing shows.</code></pre>
          <p>AI cannot see every existing show. So "do not use existing names" is a request, not a guarantee. You still search.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Anu plans the show with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Anu asks">"Here is our concept and audience for a Kerala podcast. Act as a Malayali listener in Dubai. What is unclear? Would you follow this show?"</li>
              <li data-kind="answer" data-label="AI replies">The AI says the concept is clear. It asks: "Will I understand the Malayalam parts?" It also suggests a 25-minute length.</li>
              <li data-kind="thought" data-label="Anu thinks">The Malayalam question is useful. The length advice is a guess. AI does not know how our listeners commute.</li>
              <li data-kind="tool" data-label="Anu checks">She sends a short Google Form to 20 friends and relatives in Kerala, Karnataka and the Gulf.</li>
              <li data-kind="result" data-label="Form results">14 people reply. Most listen while driving or cooking. Most say 30 to 45 minutes is fine.</li>
              <li data-kind="check" data-label="Decision">They keep 35 to 45 minutes. They add one rule: every Malayalam phrase is explained in English.</li>
              <li data-kind="warn" data-label="Watch out">AI also said "podcasts under 30 minutes get more listens". It gave no source. Anu does not use this claim.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to help you fill a one-page show plan and test it. Then check the ideas with real people from your audience.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced podcast producer. Use simple English.

        Help me make a one-page show plan.
        My idea: [a podcast about the local people, food, boats and small businesses of our town].
        Hosts: [Anu, a former radio presenter, and Joel, a video editor].
        Language: [English with some Malayalam].
        Who I think will listen: [people aged 22 to 45 in Kerala, and Malayalis living in other cities and the Gulf].
        Time we have: [about 12 hours a week between us].

        Please give me:
        1. Three possible one-sentence concepts (promises to the listener). Say which is strongest and why.
        2. A clear audience description in 2 sentences.
        3. A recommended format, episode length and schedule we can keep for a year, with one reason for each.
        4. 10 show name ideas, each 1 to 4 words.
        5. Five questions I should ask 5 real listeners to test this plan.

        Do not invent statistics about podcast listeners. If you give a general tip, say it is a tip, not a fact.</pre>
            <ul class="ai-try-checks">
              <li>Is each concept one clear sentence, not a list of topics?</li>
              <li>Is the schedule realistic for your time each week?</li>
              <li>Search the name ideas on Spotify, Apple Podcasts and YouTube.</li>
              <li>Did it avoid made-up numbers about listeners?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A show plan fits on one page: concept, audience, format, length, schedule and name. AI helps you create and test options quickly. Your real audience and your real weekly time make the final decision.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Consent, Rights and Voice Cloning</h1>
        </div>
        <p class="lc-lead">A podcast is full of other people's voices, faces and music. Before you publish, you need permission for each one. In this lesson you will learn five things: guest release forms, music licences, consent for AI voices, platform disclosure labels and personality rights. You will set simple rules for your show before the first recording. This lesson is general education, not legal advice. For real contracts, talk to a qualified lawyer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A decision tree with three branches. Guest's recorded voice: is there a signed release form? Yes, use it. No, ask first. AI copy of a voice: is there written consent and a label? Yes, use and disclose. No, do not use. Music or sound: does the licence cover this use? Yes, use and credit. No, do not use.">
            <defs><marker id="pd4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="230" y="12" width="300" height="38" rx="10" fill="#27274e" stroke="#c4b5fd"/>
              <text x="380" y="36" font-weight="700">Before you publish a voice or sound</text>
              <rect x="20" y="84" width="220" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="130" y="109">Guest's recorded voice</text>
              <rect x="270" y="84" width="220" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="380" y="109">AI copy of a voice</text>
              <rect x="520" y="84" width="220" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="630" y="109">Music or sound effect</text>
              <rect x="20" y="152" width="220" height="40" rx="8" fill="#27274e" stroke="#9b99b8"/><text x="130" y="177">Signed release form?</text>
              <rect x="270" y="152" width="220" height="40" rx="8" fill="#27274e" stroke="#9b99b8"/><text x="380" y="177">Written consent + label?</text>
              <rect x="520" y="152" width="220" height="40" rx="8" fill="#27274e" stroke="#9b99b8"/><text x="630" y="177">Licence covers this use?</text>
              <rect x="20" y="228" width="104" height="40" rx="8" fill="#123a2e" stroke="#10b981"/><text x="72" y="253" font-size="12">Yes: use it</text>
              <rect x="136" y="228" width="104" height="40" rx="8" fill="#3a1f2a" stroke="#ec4899"/><text x="188" y="253" font-size="12">No: ask first</text>
              <rect x="270" y="228" width="104" height="40" rx="8" fill="#123a2e" stroke="#10b981"/><text x="322" y="253" font-size="12">Yes: disclose</text>
              <rect x="386" y="228" width="104" height="40" rx="8" fill="#3a1f2a" stroke="#ec4899"/><text x="438" y="253" font-size="12">No: do not</text>
              <rect x="520" y="228" width="104" height="40" rx="8" fill="#123a2e" stroke="#10b981"/><text x="572" y="253" font-size="12">Yes: credit it</text>
              <rect x="636" y="228" width="104" height="40" rx="8" fill="#3a1f2a" stroke="#ec4899"/><text x="688" y="253" font-size="12">No: do not</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pd4a)">
                <path d="M300,51 L130,80"/>
                <line x1="380" y1="51" x2="380" y2="80"/>
                <path d="M460,51 L630,80"/>
                <line x1="130" y1="125" x2="130" y2="148"/>
                <line x1="380" y1="125" x2="380" y2="148"/>
                <line x1="630" y1="125" x2="630" y2="148"/>
                <line x1="100" y1="193" x2="76" y2="224"/>
                <line x1="160" y1="193" x2="184" y2="224"/>
                <line x1="350" y1="193" x2="326" y2="224"/>
                <line x1="410" y1="193" x2="434" y2="224"/>
                <line x1="600" y1="193" x2="576" y2="224"/>
                <line x1="660" y1="193" x2="684" y2="224"/>
              </g>
              <text x="380" y="292" font-size="11" fill="#9b99b8">General education, not legal advice. Keep a copy of every form and licence.</text>
            </g>
          </svg>
          <figcaption>Three questions protect your show: did the guest agree, did the voice owner agree, and does the licence cover it?</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Guest release forms</h3>
          <p>A <strong>release form</strong> is a short written agreement. The guest says you may record, edit and publish their voice, face and words. Ask for it <em>before</em> you record, not after. Use simple words, and give it in the guest's language if needed. Anu and Joel have English and Malayalam versions.</p>
          <p>A simple release form usually covers these points:</p>
          <pre><code>GUEST RELEASE: THE MONSOON MIC (sample checklist)
        [ ] Guest name, date and episode topic
        [ ] Permission to record audio and video
        [ ] Permission to edit (cut for length, remove mistakes)
        [ ] Where it will appear: podcast apps, YouTube, clips on
            Instagram and other social media, show notes, transcripts
        [ ] Translation or subtitles into other languages
        [ ] Use of AI tools for editing and transcripts
        [ ] NO AI copy of the guest's voice or face (unless a separate
            written agreement says so)
        [ ] How the guest can ask to fix a factual mistake
        [ ] Payment or gift, if any
        [ ] Guest signature and date</code></pre>
          <p>AI can draft a plain-English form from this list. But a form is a legal document. Ask a lawyer to review your final version once. Then use it for every guest.</p>
          <p><strong>Also be fair.</strong> A signed form is not the only rule. If a guest shares something painful or private, ask again before you publish it. Ammini, the bakery owner, talked about losing her shop in the 2018 floods. Anu asked her which parts she was comfortable sharing.</p>
        </div>
        <div class="lc-card">
          <h3>Music licensing</h3>
          <p>Music is protected by <strong>copyright</strong>: the law that gives creators control over copies of their work. You need a <strong>licence</strong> (written permission, often paid) to use most music.</p>
          <ul class="lc-list">
            <li><strong>Film songs and popular songs</strong> are almost never free to use. Even a few seconds can cause a copyright claim.</li>
            <li><strong>"Royalty-free" does not mean free of rules.</strong> It usually means you pay once. Read what the licence allows: podcasts, YouTube, ads, clips.</li>
            <li><strong>Keep proof.</strong> Save each licence or receipt with the track name. YouTube's system may flag music, and you may need to show your licence.</li>
            <li><strong>AI music tools</strong> have their own terms. Check if you may use the output in a public podcast and on YouTube.</li>
          </ul>
          <p>India's Copyright Act 1957 has a narrow idea called <strong>fair dealing</strong> (limited use for things like criticism, review or news). Do not assume background music is fair dealing. Ask a lawyer if you are unsure.</p>
        </div>
        <div class="lc-card">
          <h3>AI voices, consent and disclosure</h3>
          <p><strong>Voice cloning</strong> means an AI tool learns a person's voice and then speaks new words in that voice. It can fix a wrong word or make a translated version. It can also make a person "say" things they never said.</p>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Safe approach</th></tr></thead>
            <tbody>
              <tr><td>Joel misread a date. They want to fix it with an AI copy of <em>his own</em> voice.</td><td>Joel agrees in writing. They say in the show notes that one line was fixed with AI.</td></tr>
              <tr><td>Fix a guest's words with an AI copy of the guest's voice</td><td>Do not. Re-record the line with the guest, or cut it, or explain it in your own voice.</td></tr>
              <tr><td>A voice that sounds like a famous actor reads the intro</td><td>Never. This can break personality rights and platform rules.</td></tr>
              <tr><td>AI dubbing of an episode into Hindi or Tamil</td><td>Only with each speaker's written consent, and with a clear label</td></tr>
            </tbody>
          </table>
          <p><strong>Platform disclosure:</strong> YouTube asks you to disclose altered or synthetic content that looks or sounds real, using a setting in YouTube Studio. Instagram and Facebook may show an "AI info" label. India has updated its IT Rules to cover labels on synthetic (AI-made) audio and video that looks real. Platforms may label it, and they may ask you to declare it when you upload. Check the current official text. Rules differ by platform and change often. Check each platform's current help pages.</p>
          <p><strong>Personality rights</strong> protect a person's name, face, voice and likeness from use without permission. Indian courts have protected well-known people against unauthorised use of their voice and likeness, including AI copies. So never copy a real person's voice for your show. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: OK, ask first, or do not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each plan for The Monsoon Mic.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK to use"></div>
              <div data-sorter-target="bucket" data-bucket="ask" data-label="Get permission first"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not do it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="He signed a release that covers podcast apps, YouTube and clips.">Publish Thomas's houseboat interview after he signed the release form</li>
              <li data-bucket="ok" data-why="The licence allows this use, and they keep a copy of it.">Use a track from their paid music library whose licence covers podcasts and YouTube</li>
              <li data-bucket="ask" data-why="Even your co-host must agree in writing. Then tell listeners in the show notes.">Use an AI copy of Joel's voice to fix one wrong date</li>
              <li data-bucket="ask" data-why="The release covers clips, but this moment is painful. Ask Ammini again before posting it.">Post a Reel of Ammini crying about the 2018 flood</li>
              <li data-bucket="ask" data-why="The photo belongs to someone else. Ask the guest and the photographer.">Use a photo from the spice trader's Facebook page as episode art</li>
              <li data-bucket="no" data-why="Popular film songs need a licence, and a short clip is still a copy.">Play 20 seconds of a hit Malayalam film song as the intro, with no licence</li>
              <li data-bucket="no" data-why="This copies a real person's voice without consent. It can break personality rights and platform rules.">Make an AI voice that sounds like a famous film star read the trailer</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a plain-English guest release form and your show's consent rules. Then take the draft to a lawyer for review.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a small podcast team write clear consent documents. You are not a lawyer, and this is not legal advice. Use simple English.

        Our show: [The Monsoon Mic, a video and audio podcast from Kerala, India].
        Where episodes appear: [Spotify, Apple Podcasts, YouTube, and short clips on Instagram].
        Guests: [local cooks, boat owners and shop owners; some prefer Malayalam].

        Please give me:
        1. A one-page guest release form draft in plain English. Cover: recording, editing, where it is published, clips, transcripts and translation, AI editing tools, a clear "no AI voice or face copy" line, and how the guest can report a factual mistake.
        2. Our show's 5 consent rules for AI voices and music, in one line each.
        3. A short line we can add to show notes when we fix a host's line with AI.
        4. Eight questions we should ask a lawyer before we use the form.

        Mark any part that may depend on Indian law or platform rules with [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>Does the form clearly say "no AI copy of the guest's voice or face"?</li>
              <li>Is it simple enough for a guest to read in two minutes?</li>
              <li>Did it avoid claiming to be legal advice?</li>
              <li>Are the legal and platform points marked [CHECK] for a lawyer?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Get consent before you record, license every piece of music, and never copy a voice without written permission. Label AI changes where platforms ask. Set these rules once, and follow them for every episode.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Research and Episode Outlines</h1>
        </div>
        <p class="lc-lead">A good episode feels relaxed, but it is planned. In this lesson you will build a <strong>segment plan</strong>: the parts of an episode, with a time and a goal for each part. You will also build a <strong>fact file</strong>: a list of every fact you plan to say, with its source. AI can draft both quickly. But AI also gets facts wrong in a confident voice. So you will learn to check every claim before it goes on air.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A 40-minute segment plan as a timeline. Cold open 0 to 1 minute, welcome 1 to 3, guest story 3 to 17, deep dive 17 to 32, quick-fire questions 32 to 37, wrap-up 37 to 40. The deep dive has 3 facts to check.">
            <defs><marker id="pd5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="26" font-weight="700" fill="#c4b5fd">Episode 3 plan: Pepper, Price and Patience (40 min)</text>
              <text x="20" y="65">Cold open</text>
              <text x="20" y="99">Welcome</text>
              <text x="20" y="133">Guest story</text>
              <text x="20" y="167">Deep dive</text>
              <text x="20" y="201">Quick-fire</text>
              <text x="20" y="235">Wrap-up</text>
              <g stroke="#4b4a78" stroke-width="1">
                <line x1="210" y1="44" x2="210" y2="250"/>
                <line x1="340" y1="44" x2="340" y2="250"/>
                <line x1="470" y1="44" x2="470" y2="250"/>
                <line x1="600" y1="44" x2="600" y2="250"/>
                <line x1="730" y1="44" x2="730" y2="250"/>
              </g>
              <rect x="210" y="50" width="13" height="22" rx="3" fill="#8b5cf6"/>
              <text x="230" y="66" font-size="11" fill="#9b99b8">a 1-minute hook from the talk</text>
              <rect x="223" y="84" width="26" height="22" rx="3" fill="#3b82f6"/>
              <text x="256" y="100" font-size="11" fill="#9b99b8">who, where, why today</text>
              <rect x="249" y="118" width="182" height="22" rx="3" fill="#10b981"/>
              <text x="340" y="134" font-size="11" text-anchor="middle" fill="#0b1b16">Haris's family story</text>
              <rect x="431" y="152" width="195" height="22" rx="3" fill="#f59e0b"/>
              <text x="528" y="168" font-size="11" text-anchor="middle" fill="#2a1a00">how pepper prices work</text>
              <text x="422" y="168" font-size="11" text-anchor="end" fill="#f9a8d4">3 facts to check</text>
              <rect x="626" y="186" width="65" height="22" rx="3" fill="#ec4899"/>
              <rect x="691" y="220" width="39" height="22" rx="3" fill="#22d3ee"/>
              <text x="684" y="236" font-size="11" text-anchor="end" fill="#9b99b8">next week's guest</text>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="210" y="268">0</text>
                <text x="340" y="268">10</text>
                <text x="470" y="268">20</text>
                <text x="600" y="268">30</text>
                <text x="730" y="268">40 min</text>
              </g>
              <text x="380" y="298" font-size="12" text-anchor="middle" fill="#9b99b8">Every segment has a goal, 3 to 5 questions, and facts from the fact file</text>
            </g>
          </svg>
          <figcaption>A segment plan shows where the time goes. The deep dive usually holds the most facts, so it needs the most checking.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The segment plan</h3>
          <p>A <strong>segment</strong> is one part of an episode with its own job. A segment plan stops two problems: talking too long at the start, and rushing the best story at the end. Here is Anu and Joel's plan for Episode 3. Their guest is Haris Sait, a made-up third-generation spice trader in the old spice market.</p>
          <table class="lc-table">
            <thead><tr><th>Segment</th><th>Time</th><th>Goal</th><th>Example question</th></tr></thead>
            <tbody>
              <tr><td>Cold open</td><td>0:00 to 1:00</td><td>Hook the listener with one strong moment from the talk</td><td>(a clip, chosen after recording)</td></tr>
              <tr><td>Welcome</td><td>1:00 to 3:00</td><td>Say who the guest is and why this story matters</td><td>"Haris, what does your shop smell like at 6 am?"</td></tr>
              <tr><td>Guest story</td><td>3:00 to 17:00</td><td>His family's 70 years in the trade</td><td>"What did your grandfather teach you about pepper?"</td></tr>
              <tr><td>Deep dive</td><td>17:00 to 32:00</td><td>How pepper is bought, graded and priced</td><td>"What happens on a day when the price falls?"</td></tr>
              <tr><td>Quick-fire</td><td>32:00 to 37:00</td><td>Five fast, fun questions</td><td>"Pepper or cardamom?"</td></tr>
              <tr><td>Wrap-up</td><td>37:00 to 40:00</td><td>Thank the guest, tease next week</td><td>"Next week: the Chinese fishing nets at dawn."</td></tr>
            </tbody>
          </table>
          <p>Times are a guide, not a rule. If Haris tells a great story, let it run and cut elsewhere in the edit.</p>
        </div>
        <div class="lc-card">
          <h3>Asking AI for an outline</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a podcast outline about spices.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>We host The Monsoon Mic, a 40-minute Kerala podcast. Our guest
        is a spice trader in the old spice market whose family has run a shop
        for 3 generations. Make a segment plan: cold open, welcome,
        guest story, deep dive on how pepper is bought and priced,
        quick-fire, wrap-up. Give each segment a time, a goal and
        4 open questions. Then list every fact you used as a separate
        line marked NEEDS SOURCE. Do not invent numbers or dates.</code></pre>
          <p>The better prompt gives the length, the guest, the segments and the rules. The last two lines matter most. They make the AI show its facts, so you can check them.</p>
          <p>AI questions are a first draft. Rewrite them in your own words. Add questions only you would ask. For example, Joel remembers buying pepper there with his grandmother.</p>
        </div>
        <div class="lc-card">
          <h3>The fact file: check every claim</h3>
          <p>A <strong>claim</strong> is any statement that could be true or false: a date, a number, a "first" or a "biggest". Put each one in a simple table before you record.</p>
          <table class="lc-table">
            <thead><tr><th>Claim (from the AI draft)</th><th>What we found</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>"Vasco da Gama reached India in 1598."</td><td>History sources say he reached the Kerala coast in May 1498, not 1598.</td><td><strong>Wrong: fixed</strong></td></tr>
              <tr><td>"Pepper was once called black gold."</td><td>A common nickname in many history books</td><td>OK: say it as a nickname</td></tr>
              <tr><td>"Pepper prices fell 30% this year."</td><td>No source. The AI made it up.</td><td><strong>Cut.</strong> Ask Haris, or check the Spices Board of India website.</td></tr>
              <tr><td>"Haris's shop opened in 1956."</td><td>Only Haris knows</td><td>Ask the guest before recording</td></tr>
            </tbody>
          </table>
          <p>Simple rules for checking:</p>
          <ul class="lc-list">
            <li>Find the <strong>original source</strong>: an official website, a published book, a museum or a government body. A blog that repeats a fact is weaker.</li>
            <li>If you cannot find a source, cut the claim, or say who said it: "Haris says his grandfather sold to ships from Aden."</li>
            <li>Never repeat a statistic just because the AI sounded sure.</li>
            <li>Check spellings of names and places with the guest. Write them in the fact file for the show notes later.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Joel researches Episode 3</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Joel asks">"Draft a segment plan and a fact list for our spice trader episode. Mark every fact NEEDS SOURCE."</li>
              <li data-kind="answer" data-label="AI replies">The AI gives 6 segments, 24 questions and 7 facts. One fact says pepper prices fell 30% this year.</li>
              <li data-kind="warn" data-label="Watch out">The AI gives no source for the 30% figure. It may be made up. Joel marks it "cut unless found".</li>
              <li data-kind="tool" data-label="Joel searches">He looks for pepper price information on the Spices Board of India website and in recent news.</li>
              <li data-kind="result" data-label="What he finds">Prices change often, and he cannot confirm the 30% figure. He cuts it.</li>
              <li data-kind="thought" data-label="Joel thinks">Haris knows real prices from his own shop. That is better than any number from AI.</li>
              <li data-kind="check" data-label="Final plan">He adds a question: "How did your prices change this year?" Now the fact comes from the guest, in his own words.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a segment plan and a fact file for your next episode. Then check every claim before you record.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a podcast producer and researcher. Use simple English.

        Show: [The Monsoon Mic, a Kerala podcast about local people, food, boats and small businesses].
        Episode length: [40 minutes].
        Guest: [Rajan, a ferry boat driver who has worked on one harbour ferry route for 30 years].
        What makes this guest interesting: [he has seen the city change from the water every day].

        Please give me:
        1. A segment plan table: segment, start and end time, goal, and 3 to 4 open questions (not yes/no questions).
        2. A fact file table: every fact or claim you used, why it matters, and the kind of source that could confirm it. Mark each one NEEDS SOURCE.
        3. Three facts that only the guest can confirm. Turn each into a question for him.
        4. Two follow-up questions for the most emotional part of his story.

        Rules: do not invent numbers, dates, quotes or "firsts". If you are not sure of something, write "unsure".</pre>
            <ul class="ai-try-checks">
              <li>Do the segment times add up to the episode length?</li>
              <li>Is every date, number or "first" in the fact file marked NEEDS SOURCE?</li>
              <li>Find a real source for each fact, or cut it.</li>
              <li>Are the questions open, and do they sound like you?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A segment plan tells you where the time goes. A fact file tells you what you know and how you know it. Let AI draft both, but every fact needs a real source or the guest's own words before it goes on air.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Finding and Preparing Guests</h1>
        </div>
        <p class="lc-lead">A great guest makes a great episode. But good guests do not appear by chance. You find them, invite them with respect and prepare them well. In this lesson you will write three things: an <strong>outreach message</strong> (your first invitation), a <strong>guest brief</strong> and a <strong>question list</strong>. AI can draft each one in minutes. You will make each one personal and correct. Our example is Rajan Pillai, the made-up ferry captain in Episode 5 of <em>The Monsoon Mic</em>.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Five steps to prepare a guest: find, pre-call, invite, brief and record. For each step, a row shows what AI can draft, such as a message or a question list, and a row shows what only a person can do, such as meeting real people and checking facts.">
            <defs><marker id="pd6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="28" font-size="12" fill="#9b99b8">Preparing Rajan, the ferry captain (Episode 5, made up)</text>
              <rect x="15" y="48" width="120" height="56" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="75" y="72" font-weight="700">1 Find</text>
              <text x="75" y="91" font-size="11" fill="#9b99b8">a real story</text>
              <rect x="165" y="48" width="120" height="56" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="225" y="72" font-weight="700">2 Pre-call</text>
              <text x="225" y="91" font-size="11" fill="#9b99b8">15-minute chat</text>
              <rect x="315" y="48" width="120" height="56" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="375" y="72" font-weight="700">3 Invite</text>
              <text x="375" y="91" font-size="11" fill="#9b99b8">message + visit</text>
              <rect x="465" y="48" width="120" height="56" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="525" y="72" font-weight="700">4 Brief</text>
              <text x="525" y="91" font-size="11" fill="#9b99b8">3 days before</text>
              <rect x="615" y="48" width="120" height="56" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="675" y="72" font-weight="700">5 Record</text>
              <text x="675" y="91" font-size="11" fill="#9b99b8">Sat 14 Nov</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pd6a)">
                <line x1="137" y1="76" x2="161" y2="76"/>
                <line x1="287" y1="76" x2="311" y2="76"/>
                <line x1="437" y1="76" x2="461" y2="76"/>
                <line x1="587" y1="76" x2="611" y2="76"/>
              </g>
              <rect x="15" y="132" width="720" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="27" y="151" font-size="12" font-weight="700" fill="#c4b5fd" text-anchor="start">AI can draft</text>
              <g font-size="11">
                <text x="75" y="178">guest-type ideas</text>
                <text x="225" y="178">call questions</text>
                <text x="375" y="178">message draft</text>
                <text x="525" y="178">brief + questions</text>
                <text x="675" y="178">day-of checklist</text>
              </g>
              <rect x="15" y="208" width="720" height="62" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="27" y="227" font-size="12" font-weight="700" fill="#6ee7b7" text-anchor="start">Only you can</text>
              <g font-size="11">
                <text x="75" y="254">meet real people</text>
                <text x="225" y="254">hear their voice</text>
                <text x="375" y="254">ask with respect</text>
                <text x="525" y="254">check every fact</text>
                <text x="675" y="254">listen and react</text>
              </g>
            </g>
          </svg>
          <figcaption>AI drafts the paperwork at each step. People do the finding, the asking and the checking.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Finding the right guest</h3>
          <p>A good guest has a real story and knows their subject from daily life. They can talk for 40 minutes. They do not need to be famous. Anu and Joel look for people the town sees every day but never hears.</p>
          <ul class="lc-list">
            <li><strong>Your own network.</strong> Ask family, friends and early listeners. Rajan came through Anu's uncle Mohan, who takes his ferry every morning.</li>
            <li><strong>In person.</strong> Visit the jetty, the market or the shop. Many local guests do not read long emails, but they will talk to you face to face.</li>
            <li><strong>Other guests.</strong> At the end of each recording, ask: "Who should we talk to next?"</li>
          </ul>
          <p>AI can help you think of <em>kinds</em> of guests. For example: "Suggest 10 kinds of local workers whose day starts before 6 am." But do not ask AI to find real people or their phone numbers. It may invent names, jobs and contact details.</p>
          <p><strong>The pre-interview call.</strong> Before you book, have a short call of about 15 minutes. It is a chat, not the interview. Listen for three things:</p>
          <ul class="lc-list">
            <li>Does the guest tell stories with detail, or give one-line answers?</li>
            <li>Which language is the guest most comfortable in? Rajan speaks English well, but he tells his best stories in Malayalam.</li>
            <li>Is there any topic the guest does not want to discuss? Rajan is happy to talk about the 2018 floods. He asked them not to discuss his salary.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The outreach message</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a message inviting a guest to my podcast.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a short WhatsApp message (under 90 words) from Anu,
        co-host of The Monsoon Mic, a Kerala podcast about local people.
        It invites Rajan, who has driven a harbour ferry
        for 30 years. Anu's uncle Mohan takes his ferry every day.
        Say why his story matters, how long it takes (about 90 minutes
        with setup), where we can record, and that he can say no.
        Warm and respectful. No flattery, no pressure.</code></pre>
          <p>Here is the message after Anu edited the AI draft in her own words:</p>
          <pre><code>Namaskaram Rajan chetta, I am Anu, Mohan's niece. You may know
        my uncle from the 7:30 ferry. My friend Joel and I make The
        Monsoon Mic, a podcast about local people. We would love to hear
        about your 30 years on the harbour ferry. It takes about 90 minutes,
        at a time and place that suits you. We bring a small thank-you
        gift. You can say no, of course. Can I call you this week?</code></pre>
          <ul class="lc-list">
            <li><strong>Say who you are</strong> and how you know them. A shared contact builds trust.</li>
            <li><strong>Give one specific reason</strong> for choosing them. "30 years on the harbour ferry" is better than "your amazing story".</li>
            <li><strong>Follow up once</strong> after about five days. If there is still no reply, stop.</li>
            <li><strong>Check any translation.</strong> Anu also sent a Malayalam version. AI Malayalam can sound stiff or too formal, so a fluent speaker must check it. Anu wrote her own.</li>
            <li><strong>Protect privacy.</strong> Use the guest's first name in AI prompts. Never paste their phone number or address.</li>
          </ul>
          <p>Keep a simple tracker in Google Sheets or Excel. Anu and Joel use one row per guest:</p>
          <table class="lc-table">
            <thead><tr><th>A: Guest</th><th>B: Episode</th><th>C: Record date</th><th>D: Status</th></tr></thead>
            <tbody>
              <tr><td>Sarala</td><td>1</td><td>10/10/2026</td><td>Form signed</td></tr>
              <tr><td>Rajan</td><td>5</td><td>14/11/2026</td><td>Brief sent</td></tr>
              <tr><td>Babu and Liya</td><td>8</td><td>(not set)</td><td>Asked</td></tr>
            </tbody>
          </table>
          <pre><code>Signed forms so far:        =COUNTIF(D2:D9,"Form signed")
        Days until Rajan records:   =C3-TODAY()</code></pre>
        </div>
        <div class="lc-card">
          <h3>The guest brief</h3>
          <p>A <strong>guest brief</strong> is a one-page note you send the guest a few days before recording. It tells them what will happen, so they arrive relaxed. Share the topics, not the exact questions. If a guest practises answers, they often sound stiff.</p>
          <pre><code>GUEST BRIEF: THE MONSOON MIC, EPISODE 5 (sent Wed 11 Nov)
        When:    Saturday 14 November, 3 pm (about 90 minutes)
        Where:   The ferry office near the jetty (quiet after the shift)
        Who:     Anu (asks about your life), Joel (asks how things work)
        Topics:  How you started on the ferry. A normal day on the water.
                 How the city has changed. The 2018 floods.
        Bring:   Any old photos of the ferry or the jetty, if you like
        Form:    Our release form (English and Malayalam) is attached.
                 Please read it before the day. We sign it together.
        Our promise: We edit for length, not to change your meaning.
                 We never make an AI copy of your voice.
                 You can tell us if we get a fact wrong.
        Language: English or Malayalam, whatever feels natural.
        Contact: Anu, [phone number]</code></pre>
          <p>AI can turn your notes into a neat brief like this. Then you check every line. Is the date right? Did the AI add a promise you cannot keep, such as "you can approve the final edit"?</p>
        </div>
        <div class="lc-card">
          <h3>The host prep sheet and question list</h3>
          <p>The <strong>host prep sheet</strong> is only for Anu and Joel. It holds the things the guest does not need to see: how to say names, facts to confirm, topics to avoid and the question list.</p>
          <table class="lc-table">
            <thead><tr><th>Segment</th><th>Who asks</th><th>Question</th></tr></thead>
            <tbody>
              <tr><td>Welcome</td><td>Anu</td><td>"What is the first sound you hear when you reach the jetty?"</td></tr>
              <tr><td>Guest story</td><td>Anu</td><td>"Tell me about your very first day driving the ferry." (must ask)</td></tr>
              <tr><td>Deep dive</td><td>Joel</td><td>"How do you bring the boat in when the tide is strong?"</td></tr>
              <tr><td>Deep dive</td><td>Anu</td><td>"Tell me about the floods in 2018. What did you see from the water?" (must ask)</td></tr>
              <tr><td>Quick-fire</td><td>Joel</td><td>"Monsoon or summer on the water?"</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li>Write most questions as story prompts: "Tell me about…", "Walk me through…".</li>
            <li>Mark two or three questions as "must ask". Everything else can change on the day.</li>
            <li>Keep two spare questions per segment in case an answer is short.</li>
            <li>Put facts to confirm on the sheet, for example "the year he started (ask)". They came from your fact file.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: what goes where?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Anu is preparing Rajan's episode. Sort each item.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="guest" data-label="Guest brief (send to Rajan)"></div>
              <div data-sorter-target="bucket" data-bucket="host" data-label="Host prep sheet (only hosts)"></div>
              <div data-sorter-target="bucket" data-bucket="out" data-label="Leave it out"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="guest" data-why="He needs to know when and where to come, and how long it takes.">Saturday 14 November, 3 pm, at the ferry office, about 90 minutes</li>
              <li data-bucket="guest" data-why="Topics help him think of stories without sounding rehearsed.">The four topics: his start, a normal day, the changing city, the floods</li>
              <li data-bucket="guest" data-why="He should read the form before the day, not for the first time at the jetty.">The release form in English and Malayalam</li>
              <li data-bucket="host" data-why="This is for the hosts. It helps them respect his wishes on air.">A note: do not ask about his salary</li>
              <li data-bucket="host" data-why="Facts to confirm are a host job. Ask him gently during the talk.">The year he started on the ferry: confirm with him</li>
              <li data-bucket="out" data-why="Exact questions make answers sound stiff. Send topics instead.">The full list of exact questions, so he can practise his answers</li>
              <li data-bucket="out" data-why="Private details should never go into a public AI tool. Use his first name only.">His home address and phone number, pasted into an AI chat to draft the brief</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft an invitation, a guest brief and a question list for your next guest. Then make each one personal and check every detail.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly podcast producer. Use simple English.

        Show: [The Monsoon Mic, a weekly 40-minute Kerala podcast about local people]. Hosts: [Anu, who asks warm personal questions, and Joel, who asks how things work].
        Guest: [Rajan, who has driven a harbour ferry for 30 years]. How we know him: [Anu's uncle takes his ferry every morning].
        Recording: [Saturday 14 November, 3 pm, about 90 minutes, at the ferry office near the jetty].
        We offer: [a small thank-you gift, the episode link, and a chance to correct any factual mistake].

        Please write:
        1. A WhatsApp invitation under 90 words. Warm, not pushy, no flattery. Say he can say no.
        2. A one-page guest brief: when, where, who, topics (not exact questions), what to bring, the release form, and a line that we never make an AI copy of his voice.
        3. 12 open questions grouped by segment: welcome, guest story, deep dive, quick-fire. Mark who asks each (Anu or Joel). Mark 3 as MUST ASK.
        4. Five questions for a 15-minute pre-interview call.

        Do not invent facts about the guest. Write [ASK] where you need information from him.</pre>
            <ul class="ai-try-checks">
              <li>Is the invitation under 90 words, and would you send it in your own name?</li>
              <li>Does the brief list topics, not exact questions?</li>
              <li>Did it invent any facts about the guest instead of writing [ASK]?</li>
              <li>Does the brief include the release form and the "no AI voice copy" line?</li>
              <li>Are most questions open story prompts, not yes/no questions?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Find guests in real life, not through AI. Then let AI draft the invitation, the brief and the questions. Make each one personal, check every detail, and send the guest topics, not a script.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Recording Good Audio</h1>
        </div>
        <p class="lc-lead">Listeners forgive a simple video. They do not forgive bad sound. If the audio has echo, hum or distortion, many people stop listening. AI editing tools can clean up some problems later. But they cannot fully rescue a distorted or distant recording. In this lesson you will learn four things: microphones, rooms, levels and remote recording. You will follow Anu and Joel as they record Episode 1 in a busy toddy-shop kitchen.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A recorder level meter from minus 60 to 0 dB. Below minus 24 is too quiet. From minus 24 to minus 6 is good, with speech peaks near minus 12. Above minus 6 risks clipping. Below the meter, three boxes list checks for the mic, the room and the recorder.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="12" fill="#9b99b8">The recorder's level meter (dBFS)</text>
              <g font-size="11" fill="#9b99b8">
                <text x="60" y="50">-60</text>
                <text x="316" y="50">-24</text>
                <text x="529" y="50">-12</text>
                <text x="636" y="50">-6</text>
                <text x="700" y="50">0</text>
              </g>
              <rect x="60" y="58" width="256" height="34" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="316" y="58" width="320" height="34" fill="#123a2e" stroke="#10b981"/>
              <rect x="636" y="58" width="64" height="34" fill="#3a1f2a" stroke="#ec4899"/>
              <path d="M529,98 L521,110 L537,110 z" fill="#f59e0b"/>
              <text x="188" y="80" font-size="12" fill="#93c5fd">too quiet</text>
              <text x="440" y="80" font-size="12" fill="#6ee7b7">good speech</text>
              <g font-size="11">
                <text x="188" y="128" fill="#9b99b8">boosting it later adds noise</text>
                <text x="529" y="128" fill="#fcd34d">aim for peaks near here</text>
                <text x="668" y="128" fill="#f9a8d4">clipping</text>
              </g>
              <rect x="20" y="150" width="230" height="112" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="135" y="176" font-weight="700">Mic</text>
              <rect x="265" y="150" width="230" height="112" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="176" font-weight="700">Room</text>
              <rect x="510" y="150" width="230" height="112" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="625" y="176" font-weight="700">Recorder</text>
              <g font-size="11" fill="#c9c7e0">
                <text x="135" y="202">One mic per person</text>
                <text x="135" y="222">About a fist from the mouth</text>
                <text x="135" y="242">Speak across it, not into it</text>
                <text x="380" y="202">Fan, AC and fridge off</text>
                <text x="380" y="222">Soft things absorb echo</text>
                <text x="380" y="242">Phones on flight mode</text>
                <text x="625" y="202">Each mic on its own track</text>
                <text x="625" y="222">WAV, 48 kHz, 24-bit</text>
                <text x="625" y="242">Headphones on all the time</text>
              </g>
            </g>
          </svg>
          <figcaption>Set the gain so speech peaks near -12 on the meter. Then fix the mic and the room before you press record.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Microphones and where to put them</h3>
          <table class="lc-table">
            <thead><tr><th>Mic type</th><th>What it does well</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Dynamic mic</strong></td><td>Picks up the voice close to it and less of the room. Good for noisy places.</td><td>You must speak close to it</td></tr>
              <tr><td><strong>Condenser mic</strong></td><td>Detailed, bright sound in a quiet, treated room</td><td>Picks up fans, traffic and echo</td></tr>
              <tr><td><strong>Clip-on (lavalier) mic</strong></td><td>Small mic clipped to clothing. Hidden on video. Moves with the speaker.</td><td>Rubbing on cloth, and more room sound</td></tr>
              <tr><td><strong>Phone mic</strong></td><td>Always with you. Fine as a backup recording.</td><td>Far away, so it records the room more than the voice</td></tr>
            </tbody>
          </table>
          <p>Their recording places are noisy: traffic, crows, boats and kitchens. So Anu and Joel chose two <strong>dynamic mics</strong> with stands. Sarala and Anu use them. Joel wears a wired clip-on mic that he already owned from his video work. Their portable recorder has four mic inputs. It records each mic on its own <strong>track</strong> (a separate audio file). Later, Joel can fix one voice without touching the others.</p>
          <ul class="lc-list">
            <li>Keep each dynamic mic about a fist (around 10 cm) from the mouth.</li>
            <li>Point it at the mouth from a little to the side. This reduces "p" and "b" pops.</li>
            <li>Keep the distance the same all through. If Sarala leans back, Anu gently moves the stand.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The room: fight echo and noise</h3>
          <p><strong>Echo</strong> is sound bouncing off hard walls, floors and glass. <strong>Noise</strong> is any sound that is not the voices: fans, a fridge, traffic, rain. Your ears ignore these sounds in person. The microphone does not.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Fix before you record</th></tr></thead>
            <tbody>
              <tr><td>Ceiling fan or AC hum</td><td>Switch it off while recording. Take short breaks for air on hot days.</td></tr>
              <tr><td>Fridge hum in the kitchen</td><td>Ask the owner before you unplug it. Put a note on the door to plug it back in.</td></tr>
              <tr><td>Echo in a bare room</td><td>Add soft things: cushions, curtains, a rug. Joel hangs moving blankets in his spare room.</td></tr>
              <tr><td>Monsoon rain on a tin roof</td><td>Move to a room with a concrete roof, or pick another day</td></tr>
              <tr><td>Wind on the jetty or a boat</td><td>Use a foam or furry windscreen, and record the main talk indoors</td></tr>
              <tr><td>Phones buzzing</td><td>Every phone on flight mode, including the guest's (ask politely)</td></tr>
            </tbody>
          </table>
          <p>Some real sounds help the story. The sizzle of fish frying tells listeners where they are. Record those sounds <em>separately</em>, for a minute, with nobody talking. Joel adds them under the talk in the edit. On Rajan's day, they will record 10 minutes of sound on the ferry, with the ferry operator's permission. The main talk happens in the quiet ferry office.</p>
        </div>
        <div class="lc-card">
          <h3>Levels and recorder settings</h3>
          <p><strong>Gain</strong> is how much the recorder boosts the mic signal. The <strong>level meter</strong> shows how loud the recording is, in dBFS (decibels below the loudest possible sound). 0 is the top. Above 0 the sound <strong>clips</strong>: it distorts, and it is very hard to repair.</p>
          <ul class="lc-list">
            <li><strong>Sound check.</strong> Each person talks for 30 seconds, at the volume they will use. Set the gain so normal speech peaks around -12. Laughs and loud moments then stay below -6.</li>
            <li><strong>Settings.</strong> Record WAV files (not MP3) at 48 kHz, 24-bit. This is a common setting for video. Some recorders offer "32-bit float", which is safer against clipping. Check your recorder's manual for its options.</li>
            <li><strong>Listen all the time.</strong> Joel wears closed-back headphones for the whole talk. He hears problems, such as a rubbing clip-on mic, while there is still time to fix them.</li>
            <li><strong>Room tone.</strong> Record 30 seconds of silence in the room. The editor uses it to fill gaps smoothly.</li>
            <li><strong>Clap to sync.</strong> Clap once, clearly, in front of both cameras. The clap makes a sharp spike on every track. Joel lines up the audio and video with it.</li>
            <li><strong>Back up.</strong> Before leaving, check the files play. Copy them to a laptop and to cloud storage the same day.</li>
          </ul>
          <p>AI helps before and after the recording. Ask an AI assistant to make a checklist for your location, or to explain a problem ("my recording has a low hum"). But menu names differ on every recorder. If AI tells you to press a button, check the manual.</p>
        </div>
        <div class="lc-card">
          <h3>Remote recording</h3>
          <p>Sometimes a guest cannot be in the room. For Episode 6, Ammini's son Kevin will join by video from Karnataka for about five minutes. He will talk about the day the bakery reopened. He signs his own release form.</p>
          <ul class="lc-list">
            <li><strong>Record each side locally.</strong> Some remote recording tools record each person on their own device and upload the file. A weak internet connection then does not spoil the sound. Check the tool's current help pages.</li>
            <li><strong>Backup on the phone.</strong> Kevin also records a voice memo on his phone, held near his mouth.</li>
            <li><strong>Headphones for everyone.</strong> Without them, the hosts' voices come out of Kevin's speaker and echo back.</li>
            <li><strong>A quiet, soft room.</strong> A bedroom with curtains and a bed sounds better than an empty hall.</li>
            <li><strong>A test call the day before.</strong> Check the link, the mic and the lighting.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: recording day in Sarala's kitchen</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Anu and Joel's steps for recording Episode 1 in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Two days before: charge batteries, back up old files, then clear the memory card</li>
              <li data-order="2">Walk the kitchen: switch off the ceiling fan and find the quietest corner</li>
              <li data-order="3">Set up the mics, recorder and cameras; put every phone on flight mode</li>
              <li data-order="4">Sound check: each person talks for 30 seconds, and Joel sets the gain</li>
              <li data-order="5">Record 30 seconds of room tone, then clap once for the cameras</li>
              <li data-order="6">Record the interview while Joel watches the meters with headphones on</li>
              <li data-order="7">Check the files play, then copy them to the laptop and the cloud</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a recording plan for your next location. Then check each setting in your recorder's manual.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced podcast sound engineer. Use simple English.

        We record: [a 40-minute interview with 3 people: 2 hosts and 1 guest].
        Location: [a small office next to a ferry jetty in Kerala. Tin roof, ceiling fan, boats and horns outside, monsoon rain possible].
        Equipment: [2 dynamic mics with stands, 1 wired clip-on mic, a portable recorder with 4 mic inputs, 2 pairs of closed-back headphones, 2 cameras].

        Please give me:
        1. A table of likely noise and echo problems at this location, with a fix for each.
        2. Where to place the 3 mics and the 3 people. Say who gets which mic and why.
        3. A 30-second sound check script, and the level to aim for on the meter.
        4. A recording-day checklist from arrival to backup, including room tone and a clap for syncing cameras.
        5. A backup plan if one mic or the recorder fails.

        Do not invent button names for my recorder. Tell me which settings to look up in its manual.</pre>
            <ul class="ai-try-checks">
              <li>Is the plan realistic for your equipment, or does it assume gear you do not have?</li>
              <li>Did it avoid made-up button and menu names?</li>
              <li>Does the checklist include room tone, a clap for sync and a same-day backup?</li>
              <li>Check the suggested settings in your recorder's manual.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good audio is decided before you press record. Choose the right mic, keep it close, quieten the room and set the gain with a sound check. AI can clean up small problems later, but it cannot fully rescue distorted or distant sound.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Interviewing Well</h1>
        </div>
        <p class="lc-lead">Your question list gets the talk started. The best moments usually come from what you ask <em>next</em>. In this lesson you will learn to listen for details and ask good follow-up questions. You will also learn how two hosts share one guest, and how to handle painful or private moments. Finally, you will use AI as a practice guest, so you can rehearse before the real interview.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="The follow-up loop: ask an open question, listen all the way to the end, catch one detail, then follow up on it and listen again. A side panel says AI can play a made-up practice guest and review your questions, but details from AI are not facts.">
            <defs><marker id="pd8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="40" y="40" width="180" height="56" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="130" y="64" font-weight="700">1 Ask open</text>
              <text x="130" y="83" font-size="11" fill="#9b99b8">how, what, tell me</text>
              <rect x="300" y="40" width="180" height="56" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="390" y="64" font-weight="700">2 Listen</text>
              <text x="390" y="83" font-size="11" fill="#9b99b8">to the very end</text>
              <rect x="300" y="190" width="180" height="56" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="390" y="214" font-weight="700">3 Catch a detail</text>
              <text x="390" y="233" font-size="11" fill="#9b99b8">a name, a feeling</text>
              <rect x="40" y="190" width="180" height="56" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="130" y="214" font-weight="700">4 Follow up</text>
              <text x="130" y="233" font-size="11" fill="#9b99b8">use their own words</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pd8a)">
                <line x1="222" y1="68" x2="296" y2="68"/>
                <line x1="390" y1="98" x2="390" y2="186"/>
                <line x1="298" y1="218" x2="226" y2="218"/>
                <path d="M200,188 L320,100"/>
              </g>
              <text x="170" y="138" font-size="11" fill="#9b99b8">listen again</text>
              <text x="470" y="148" font-size="11" fill="#9b99b8">repeat</text>
              <rect x="530" y="30" width="210" height="222" rx="12" fill="#27274e" stroke="#22d3ee"/>
              <text x="635" y="58" font-weight="700">Practice with AI</text>
              <g font-size="11" text-anchor="start">
                <text x="546" y="90">AI plays a made-up guest</text>
                <text x="546" y="114">You practise follow-ups</text>
                <text x="546" y="138">AI reviews your questions</text>
                <line x1="546" y1="158" x2="724" y2="158" stroke="#4b4a70"/>
                <text x="546" y="184" fill="#fcd34d">AI details are not facts</text>
                <text x="546" y="208" fill="#fcd34d">Real guests will surprise you</text>
                <text x="546" y="232" fill="#fcd34d">Use your own words on air</text>
              </g>
            </g>
          </svg>
          <figcaption>Ask, listen, catch one detail, follow up. Practise the loop with an AI guest, then use it with real people.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Listen for the detail, then follow up</h3>
          <p>An <strong>open question</strong> invites a story: "Tell me about…", "How did…", "What was it like…". A <strong>closed question</strong> gets a yes, a no or one word: "Do you like your job?" Use open questions most of the time.</p>
          <p>A <strong>follow-up question</strong> picks up something the guest just said. To ask one, you must listen to the end of the answer. Do not read your next question while the guest talks.</p>
          <p>Pushpan, the made-up Chinese fishing net operator, gives short answers. Here is how Anu turns them into stories:</p>
          <table class="lc-table">
            <thead><tr><th>Pushpan says</th><th>Weak next question</th><th>Better follow-up</th></tr></thead>
            <tbody>
              <tr><td>"I start at five."</td><td>"Is that hard?"</td><td>"Walk me through the first ten minutes after you reach the net."</td></tr>
              <tr><td>"Some days the net comes up empty."</td><td>"Moving on to tourists…"</td><td>"What do you do on an empty day? What do you tell your family?"</td></tr>
              <tr><td>"My father's hands were stronger."</td><td>"How old are you?"</td><td>"Tell me about your father's hands."</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Use their own words.</strong> "You said 'empty day'. What does that feel like?"</li>
            <li><strong>Ask for a scene.</strong> "Take me to that morning. What could you hear?" Audio listeners cannot see, so ask for sounds, smells and colours.</li>
            <li><strong>Allow silence.</strong> Wait three seconds after an answer. Guests often add the best part in that pause.</li>
            <li><strong>Ask one question at a time.</strong> Two questions together give you half an answer to each.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Two hosts, one guest</h3>
          <p>Two hosts can make a guest feel like they are facing a panel. Agree on roles before you start:</p>
          <table class="lc-table">
            <thead><tr><th>Anu</th><th>Joel</th></tr></thead>
            <tbody>
              <tr><td>Leads the welcome and the guest story</td><td>Leads the deep dive</td></tr>
              <tr><td>Asks about people, feelings and memories</td><td>Asks how things work: tides, prices, tools</td></tr>
              <tr><td>Watches the time and signals the next segment</td><td>Watches the levels on the recorder</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Use simple hand signals.</strong> A raised finger means "I have a follow-up". A circling hand means "time to move on".</li>
            <li><strong>Nod instead of saying "hmm".</strong> Small "hmm" and "yes" sounds land on your track, on top of the guest's words. They are hard to remove in the edit.</li>
            <li><strong>Do not rescue each other too fast.</strong> If Joel's question gets a short answer, Anu waits before she jumps in.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Practice interviews with AI</h3>
          <p>An AI assistant can play a <strong>practice guest</strong>. You type or speak your questions, and it answers in character. Some assistants also have a voice mode, so you can practise out loud. Check your tool's current help pages.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Pretend to be a fisherman. I will interview you.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Play a made-up Chinese fishing net operator on the Kerala coast, age 55.
        Be shy. Give 1 or 2 sentences to closed or vague questions.
        Give a detailed story only when I ask a specific, open follow-up.
        Once, drift to an unrelated topic so I can practise steering back.
        Answer one question, then wait. When I type END, review my
        questions: which were closed, which follow-ups worked, what I missed.</code></pre>
          <p>What practice is good for, and what it is not:</p>
          <ul class="lc-list">
            <li><strong>Good for:</strong> spotting your closed questions, practising follow-ups, and getting used to steering back from a side topic.</li>
            <li><strong>Not research.</strong> The AI invents details to stay in character. Never use them as facts in your episode.</li>
            <li><strong>Use a made-up character.</strong> Do not ask AI to copy a real guest. Do not paste notes from your private pre-interview call.</li>
            <li><strong>Not a script.</strong> Real guests will surprise you. Practise the habit, not the exact words.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Painful moments, "off the record" and wrong facts</h3>
          <ul class="lc-list">
            <li><strong>Ask before a painful topic.</strong> Before the flood part, Anu tells Ammini: "We can stop any time, and you can tell us later to cut something."</li>
            <li><strong>"Off the record" means off the record.</strong> If a guest says "don't use this", Joel notes the time on the recorder. They cut it in the edit, and they tell the guest it is gone.</li>
            <li><strong>A wrong fact on air.</strong> If a guest says something you believe is wrong, ask gently: "Is that the year, or was it a little later?" Or note the time and check it after. Do not correct a guest harshly on air.</li>
            <li><strong>Mistakes are fine.</strong> If you stumble, pause and ask the question again. The edit will fix it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Anu practises with an AI guest</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Anu sets it up">She pastes the "made-up net operator" practice prompt into her AI assistant. Then she asks: "Do you like your job?"</li>
              <li data-kind="answer" data-label="AI guest">"Yes. It is good work."</li>
              <li data-kind="thought" data-label="Anu thinks">That was a closed question, so she got a closed answer. She tries a scene instead.</li>
              <li data-kind="user" data-label="Anu asks again">"Walk me through the first ten minutes after you reach the net in the morning."</li>
              <li data-kind="answer" data-label="AI guest">A longer answer: the wet ropes, the stones used as weights, and the crows waiting for fish. Then the "guest" says the nets came from China with a famous admiral 600 years ago.</li>
              <li data-kind="warn" data-label="Watch out">The admiral story is a popular tale, not a checked fact. It came from the AI, not from Pushpan. Anu does not add it to her notes as a fact.</li>
              <li data-kind="answer" data-label="AI feedback">After END, the AI lists her 3 closed questions and 1 missed follow-up: she ignored "the crows".</li>
              <li data-kind="check" data-label="Anu decides">She writes five follow-up starters on a card for the real interview, in her own words: "Tell me about…", "You said…", "Take me to…".</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run a full practice interview with an AI guest. Type END when you finish, and read the feedback.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You will play a podcast guest so I can practise interviewing. Use simple English.

        Character: [a Chinese fishing net operator on the Kerala coast, about 55, who has worked the nets since age 18]. This is a made-up person, not a real one.

        How to behave:
        - Be shy at first. Give 1 or 2 sentences to closed or vague questions.
        - Give a longer story with sounds and details only when I ask a specific, open follow-up.
        - Once, drift to an unrelated topic, so I can practise bringing you back politely.
        - Answer only one question at a time, then stop and wait.
        - Stay in character until I type END.

        When I type END, step out of character and give me:
        1. A table: my question, open or closed, what worked, a better version.
        2. The 2 best follow-ups I asked, and why they worked.
        3. Two details you mentioned that I did not follow up.
        4. One habit to practise before my real interview with [a guest who gives short answers].

        Start by saying only: "Ready when you are."</pre>
            <ul class="ai-try-checks">
              <li>Did the AI answer one question at a time and wait?</li>
              <li>Does the feedback quote your real questions, not general tips?</li>
              <li>Remember: anything the AI "guest" said is made up. Do not use it as a fact.</li>
              <li>Write your follow-up starters in your own words for the real interview.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The best moments come from follow-up questions, and follow-ups come from real listening. Use AI as a practice partner to build the habit. On the day, put the list down, listen to the guest and ask about what they just said.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Editing with AI Tools</h1>
        </div>
        <p class="lc-lead">Editing used to mean hours of cutting sound waves by hand. Now many tools let you edit the <strong>transcript</strong> instead: you delete words in the text, and the audio and video follow. AI can also remove filler words and clean up background noise. In this lesson you will learn how these features work in general, and where they go wrong. You will also learn the biggest danger: AI voice features that can put new words in a person's mouth. Joel edits Episode 1 with Sarala as our example.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 285" role="img" aria-label="Transcript-based editing. Before: Sarala's line reads Pinne, um, the kappa is, uh, ready by six. One click removes um and uh, but the Malayalam filler pinne stays, so the editor decides. Three boxes below: remove most filler words but not all, use gentle noise clean-up, and never use an AI voice for guests.">
            <defs><marker id="pd9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="12" fill="#9b99b8">Delete words in the text, and the audio and video follow</text>
              <text x="154" y="46" font-size="10" fill="#67e8f9">Malayalam filler: tool may miss it</text>
              <text x="60" y="75" font-size="12" font-weight="700" fill="#9b99b8">Before</text>
              <rect x="120" y="56" width="68" height="28" rx="6" fill="#1f1f44" stroke="#22d3ee" stroke-dasharray="4 3"/><text x="154" y="75">Pinne,</text>
              <rect x="198" y="56" width="44" height="28" rx="6" fill="#3a2e12" stroke="#f59e0b"/><text x="220" y="75" fill="#fcd34d">um,</text>
              <rect x="252" y="56" width="44" height="28" rx="6" fill="#1f1f44" stroke="#4b4a70"/><text x="274" y="75">the</text>
              <rect x="306" y="56" width="60" height="28" rx="6" fill="#1f1f44" stroke="#4b4a70"/><text x="336" y="75">kappa</text>
              <rect x="376" y="56" width="36" height="28" rx="6" fill="#1f1f44" stroke="#4b4a70"/><text x="394" y="75">is</text>
              <rect x="422" y="56" width="44" height="28" rx="6" fill="#3a2e12" stroke="#f59e0b"/><text x="444" y="75" fill="#fcd34d">uh,</text>
              <rect x="476" y="56" width="60" height="28" rx="6" fill="#1f1f44" stroke="#4b4a70"/><text x="506" y="75">ready</text>
              <rect x="546" y="56" width="36" height="28" rx="6" fill="#1f1f44" stroke="#4b4a70"/><text x="564" y="75">by</text>
              <rect x="592" y="56" width="52" height="28" rx="6" fill="#1f1f44" stroke="#4b4a70"/><text x="618" y="75">six.</text>
              <text x="220" y="100" font-size="10" fill="#fcd34d">filler</text>
              <text x="444" y="100" font-size="10" fill="#fcd34d">filler</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pd9a)">
                <line x1="330" y1="106" x2="330" y2="130"/>
              </g>
              <text x="342" y="123" font-size="11" fill="#9b99b8" text-anchor="start">one click: remove filler words</text>
              <text x="60" y="155" font-size="12" font-weight="700" fill="#9b99b8">After</text>
              <rect x="120" y="136" width="68" height="28" rx="6" fill="#1f1f44" stroke="#22d3ee" stroke-dasharray="4 3"/><text x="154" y="155">Pinne,</text>
              <rect x="198" y="136" width="44" height="28" rx="6" fill="#1f1f44" stroke="#4b4a70"/><text x="220" y="155">the</text>
              <rect x="252" y="136" width="60" height="28" rx="6" fill="#1f1f44" stroke="#4b4a70"/><text x="282" y="155">kappa</text>
              <rect x="322" y="136" width="36" height="28" rx="6" fill="#1f1f44" stroke="#4b4a70"/><text x="340" y="155">is</text>
              <rect x="368" y="136" width="60" height="28" rx="6" fill="#1f1f44" stroke="#4b4a70"/><text x="398" y="155">ready</text>
              <rect x="438" y="136" width="36" height="28" rx="6" fill="#1f1f44" stroke="#4b4a70"/><text x="456" y="155">by</text>
              <rect x="484" y="136" width="52" height="28" rx="6" fill="#1f1f44" stroke="#4b4a70"/><text x="510" y="155">six.</text>
              <text x="556" y="155" font-size="12" fill="#6ee7b7" text-anchor="start">Now listen to each cut</text>
              <rect x="20" y="192" width="230" height="74" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="135" y="216" font-weight="700">Filler words</text>
              <text x="135" y="238" font-size="11" fill="#c9c7e0">Remove most, not all</text>
              <text x="135" y="255" font-size="11" fill="#c9c7e0">Keep pauses that carry feeling</text>
              <rect x="265" y="192" width="230" height="74" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="216" font-weight="700">Noise clean-up</text>
              <text x="380" y="238" font-size="11" fill="#c9c7e0">Use gentle settings</text>
              <text x="380" y="255" font-size="11" fill="#c9c7e0">Compare before and after</text>
              <rect x="510" y="192" width="230" height="74" rx="10" fill="#3a1f2a" stroke="#ec4899"/>
              <text x="625" y="216" font-weight="700">AI voice (overdub)</text>
              <text x="625" y="238" font-size="11" fill="#f9a8d4">Guests: never</text>
              <text x="625" y="255" font-size="11" fill="#f9a8d4">Hosts: written consent only</text>
            </g>
          </svg>
          <figcaption>The tool removed "um" and "uh" but kept the Malayalam filler "pinne". A person listens to every cut and makes the final call.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How transcript-based editing works</h3>
          <p>You import your recording. The tool makes a transcript with <strong>speaker labels</strong> (who said each line). The text is linked to the audio and video. When you delete a sentence in the text, the tool cuts that part of the recording. Tools such as Descript work this way. Adobe Premiere Pro, DaVinci Resolve and CapCut also have text-based editing or AI clean-up features. Features, names and plans change often, so check the tool's current help pages.</p>
          <p>Joel's plan for Episode 1 (made-up numbers): the raw recording is 58 minutes. The final episode should be about 42 minutes.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>What Joel does</th><th>Time saved by AI</th></tr></thead>
            <tbody>
              <tr><td>1. Import and transcribe</td><td>Imports each mic track and both cameras. Checks the speaker labels.</td><td>No manual typing</td></tr>
              <tr><td>2. Big cuts</td><td>Deletes the 6-minute chat before the start, a phone call, and one off-the-record story</td><td>Finds them by reading, not scrubbing</td></tr>
              <tr><td>3. Tighten</td><td>Removes repeated answers and false starts</td><td>Search the text for a word</td></tr>
              <tr><td>4. Clean up</td><td>Filler words, long pauses, light noise reduction</td><td>One-click features, then listening</td></tr>
              <tr><td>5. Full listen</td><td>Anu listens to the whole episode on headphones, without looking at the text</td><td>None. This step is human.</td></tr>
            </tbody>
          </table>
          <p><strong>Keep the original.</strong> Duplicate the project before big changes. Keep the raw files until the episode has been live for a few months. If a guest asks "what exactly did I say?", you can check.</p>
        </div>
        <div class="lc-card">
          <h3>Filler words and pauses</h3>
          <p><strong>Filler words</strong> are sounds like "um", "uh" and "you know" that carry no meaning. Many tools can find them and remove them all with one click. Use this with care:</p>
          <ul class="lc-list">
            <li><strong>Remove most, not all.</strong> If you remove every filler, people can sound rushed and robotic. Joel removes most of the hosts' fillers, and only the distracting ones from guests.</li>
            <li><strong>Malayalam fillers.</strong> Tools are usually trained mostly on English fillers. Sarala says "pinne" (then, so) and "alle?" (isn't it?). The tool may miss them, or cut part of a real word. Decide each one by ear.</li>
            <li><strong>Pauses carry feeling.</strong> Shorten long pauses in chatty parts. But when Sarala pauses before talking about her late husband, keep it. That silence is part of the story.</li>
            <li><strong>Listen to every cut.</strong> Bad cuts cause clicks, cut-off breaths or a sudden change in background sound. On video, a cut makes the picture jump. Joel switches to the other camera at each cut, so the jump is hidden.</li>
          </ul>
          <p>An AI assistant can also help with the plan. Paste a short part of the transcript and ask: "Suggest cuts for length. For each, tell me why and whether it changes the guest's meaning." Never ask it to rewrite what the guest said.</p>
        </div>
        <div class="lc-card">
          <h3>Noise reduction and speech clean-up</h3>
          <p><strong>Noise reduction</strong> lowers steady background sounds, such as a fan or a hum. <strong>Speech enhancement</strong> features go further: they try to make a voice sound like it was recorded in a studio. Many editing tools have one-click versions.</p>
          <ul class="lc-list">
            <li><strong>Go gently.</strong> Strong settings can make voices sound thin, watery or robotic. If the tool has a strength or mix control, start low.</li>
            <li><strong>Apply it track by track.</strong> Joel's clip-on mic picks up more room sound, so his track may need more help than Sarala's.</li>
            <li><strong>Keep the sounds that matter.</strong> AI clean-up may remove the fish sizzling in the pan. If you want it, add the separate recording back under the talk.</li>
            <li><strong>Compare.</strong> Listen before and after on headphones and on a phone speaker. Most people will hear the episode on a phone.</li>
            <li><strong>Even loudness.</strong> <strong>Loudness</strong> is measured in LUFS (a unit for how loud a whole file sounds). Many podcasters aim for about -16 LUFS for stereo. Check your host's current guidance.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The danger of AI voice "overdub"</h3>
          <p>Some editing tools can build an AI copy of a voice from recordings. You then type new words, and the tool "says" them in that voice. Descript has called this feature Overdub. Other tools have other names. Some tools also offer to "regenerate" or smooth a rough cut with AI speech. That also creates new speech in the speaker's voice. Check the tool's current help pages to see exactly what each feature does.</p>
          <p>The danger is simple. With a few keystrokes, you can make a real person say something they never said. A tiny change can change the meaning. "I worked here 22 years" becomes "I worked here 32 years".</p>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>What The Monsoon Mic does</th></tr></thead>
            <tbody>
              <tr><td>A guest says a wrong number</td><td>Ask the guest to record the line again, or cut it, or correct it in a host's voice or the show notes. Never type new words in the guest's voice.</td></tr>
              <tr><td>A cut sounds rough in the guest's line</td><td>Try a different cut point, or switch camera. Do not use AI speech to smooth it.</td></tr>
              <tr><td>Joel misread a date in his intro</td><td>Re-record the line. If that is not possible, use his AI voice only with his written consent, and say so in the show notes.</td></tr>
            </tbody>
          </table>
          <p>Some tools ask the voice owner to record a spoken consent statement before creating a voice. Never get around this with someone else's recording. Turn off automatic AI voice features in your project settings if the tool has them. Keep a short <strong>edit log</strong>: a note of every big cut and any AI voice use, with the time in the episode.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which edits are safe?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Joel is editing Sarala's episode. Sort each edit.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Normal edit"></div>
              <div data-sorter-target="bucket" data-bucket="care" data-label="OK only after careful listening"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not do it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="This is chat before the real start. Cutting it does not change anyone's meaning.">Cut 6 minutes of chat about parking before the interview starts</li>
              <li data-bucket="ok" data-why="She asked for it. Cutting off-the-record parts is a must, and they tell her it is gone.">Cut the story Sarala asked to keep off the record</li>
              <li data-bucket="care" data-why="One click can make her sound rushed, miss Malayalam fillers or cut real words. Listen to each cut.">Remove every filler word in the episode with one click</li>
              <li data-bucket="care" data-why="Strong settings can make her voice sound robotic and remove sounds that set the scene.">Use strong noise reduction on the toddy-shop background chatter</li>
              <li data-bucket="care" data-why="Some silences carry feeling. Keep the ones that are part of the story.">Shorten the long pause before Sarala talks about her late husband</li>
              <li data-bucket="no" data-why="This puts words in her mouth. Ask her to record it again, or correct it in the show notes.">Use an AI voice to change Sarala's "22 years" to "25 years"</li>
              <li data-bucket="no" data-why="Regenerating her line creates new speech in her voice without her consent.">Let the tool "regenerate" a rough cut in Sarala's voice to make it smooth</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to suggest an edit plan for a transcript excerpt. It suggests cuts only. You decide by listening.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced podcast editor. Use simple English.

        Episode length now: [58 minutes]. Target: [about 42 minutes].
        Here is part of the transcript [replace with your own excerpt]:
        [ANU: So, um, Sarala Chechi, how did you start here?
        SARALA: Pinne, um, I came in 2005. No, wait, it was 2004. My husband was the tapper here. Uh, the owner asked if I can cook. I said, I will try.
        JOEL: Hmm, yes, yes.
        SARALA: The first day I burnt the fish curry. (laughs) (long pause) After he died, this kitchen is my home.]

        Please give me:
        1. A table of suggested cuts: the words to cut, why, and "changes meaning? yes/no".
        2. Filler words to remove, and filler words or pauses to KEEP because they carry feeling.
        3. Any Malayalam or local words, and any numbers or dates, that I must check with the guest.
        4. A 6-point checklist for listening to the edit.

        Rules: never rewrite or add words for any speaker. Do not suggest AI voice or regenerated speech to fix anything.</pre>
            <ul class="ai-try-checks">
              <li>Did it suggest cuts only, without rewriting anyone's words?</li>
              <li>Did it keep the pause before the painful part?</li>
              <li>Did it flag "2005 or 2004" as a fact to check with the guest?</li>
              <li>Did it keep or question "Pinne" and "Chechi" instead of deleting them as noise?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI makes editing faster: edit the text, remove fillers, clean up noise. But every cut must keep the speaker's meaning, so a person listens to all of it. Never use an AI voice to put words in a guest's mouth.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Transcripts, Show Notes and Chapters</h1>
        </div>
        <p class="lc-lead">After the edit, your episode needs words around it. A <strong>transcript</strong> helps deaf and hard-of-hearing listeners, and it helps people find your show in search. <strong>Show notes</strong> tell people what the episode is about. <strong>Chapters</strong> let them jump to the part they want. AI can draft all three from your final episode in minutes. But AI transcripts often get names, numbers and Indian-language words wrong. In this lesson you will check a transcript and write show notes and chapters for Episode 1 of <em>The Monsoon Mic</em>.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The final audio file goes to an AI transcript with timestamps. A person checks names, Malayalam words and times, using a spelling list from the guest brief. The checked transcript then feeds three outputs: the transcript, the show notes and the chapters.">
            <defs><marker id="pd10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="120" width="120" height="52" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="80" y="143" font-weight="700">Final audio</text>
              <text x="80" y="161" font-size="11" fill="#9b99b8">exported file</text>
              <rect x="170" y="120" width="140" height="52" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="240" y="143" font-weight="700">AI transcript</text>
              <text x="240" y="161" font-size="11" fill="#9b99b8">with timestamps</text>
              <rect x="340" y="120" width="160" height="52" rx="10" fill="#3a2e12" stroke="#f59e0b"/>
              <text x="420" y="143" font-weight="700">Human check</text>
              <text x="420" y="161" font-size="11" fill="#fcd34d">names, Malayalam, times</text>
              <rect x="340" y="210" width="160" height="46" rx="10" fill="#27274e" stroke="#9b99b8"/>
              <text x="420" y="229" font-weight="700" font-size="12">Spelling list</text>
              <text x="420" y="246" font-size="11" fill="#9b99b8">from the guest brief</text>
              <rect x="560" y="40" width="180" height="52" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="650" y="63" font-weight="700">Transcript</text>
              <text x="650" y="81" font-size="11" fill="#9b99b8">for apps and website</text>
              <rect x="560" y="120" width="180" height="52" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="650" y="143" font-weight="700">Show notes</text>
              <text x="650" y="161" font-size="11" fill="#9b99b8">summary, links, credits</text>
              <rect x="560" y="200" width="180" height="52" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="650" y="223" font-weight="700">Chapters</text>
              <text x="650" y="241" font-size="11" fill="#9b99b8">times from final file</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pd10a)">
                <line x1="142" y1="146" x2="166" y2="146"/>
                <line x1="312" y1="146" x2="336" y2="146"/>
                <line x1="420" y1="208" x2="420" y2="176"/>
                <line x1="502" y1="138" x2="556" y2="70"/>
                <line x1="502" y1="146" x2="556" y2="146"/>
                <line x1="502" y1="154" x2="556" y2="222"/>
              </g>
              <text x="380" y="28" font-size="12" fill="#9b99b8">Episode 1: The Toddy-Shop Kitchen (made up)</text>
              <text x="380" y="286" font-size="11" fill="#9b99b8">Take every time from the FINAL file. A new cold open moves every chapter.</text>
            </g>
          </svg>
          <figcaption>Check the transcript once, carefully. Then the transcript, show notes and chapters all start from correct words and times.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Check the transcript, especially Malayalam words</h3>
          <p>Speech-to-text tools are usually strongest in English. Indian names, places and mixed English and Malayalam speech cause the most errors. Here are made-up errors from the first AI transcript of Episode 1:</p>
          <table class="lc-table">
            <thead><tr><th>AI transcript said</th><th>What was said</th><th>Type of error</th></tr></thead>
            <tbody>
              <tr><td>"Sarah la cheachy"</td><td>Sarala Chechi (Chechi means elder sister, a respectful name)</td><td>Name and Malayalam word</td></tr>
              <tr><td>"carry mean polly chat"</td><td>karimeen pollichathu (pearl spot fish cooked in banana leaf)</td><td>Dish name</td></tr>
              <tr><td>"a cup of fish curry"</td><td>kappa and fish curry (kappa is tapioca)</td><td>A real English phrase, so it looks correct</td></tr>
              <tr><td>"thirty-two years"</td><td>irupathirandu varsham (22 years), said in Malayalam</td><td>Wrong number from a mixed-language line</td></tr>
              <tr><td>ANU: "The first day I burnt the fish curry."</td><td>Sarala said this line</td><td>Wrong speaker label</td></tr>
            </tbody>
          </table>
          <p>The third error is the most dangerous. It is proper English, so a quick read will not catch it. Only listening catches it.</p>
          <ul class="lc-list">
            <li><strong>Use a spelling list.</strong> Start from the names and words in your fact file and guest brief. Some tools let you add a custom word list, so they learn your spellings. Check the tool's current help pages.</li>
            <li><strong>Choose one style.</strong> Anu and Joel write Malayalam words in English letters, with the same spelling every time. The first time a word appears, they add the English meaning in brackets.</li>
            <li><strong>Check every number, date and name by ear.</strong> Play each one back. Do not trust the text.</li>
            <li><strong>Use find-and-replace with care.</strong> Replacing "cup" everywhere would also change "cupboard". Check each change.</li>
            <li><strong>Ask a fluent speaker.</strong> Anu checks the Malayalam lines. If the English meaning is unclear, they ask Sarala.</li>
          </ul>
          <p>Some podcast apps now make their own automatic transcripts. Some hosts let you add your own checked transcript to each episode. Check your host's and each app's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Show notes that help listeners</h3>
          <p>Show notes appear under the episode in every app and on YouTube. People read them to decide whether to listen. Here is the template Anu and Joel use:</p>
          <pre><code>TITLE:      The Toddy-Shop Kitchen, with Sarala Kumaran
        SUMMARY:    2 to 3 sentences. Who, what, and why it matters.
        GUEST:      One line about the guest (checked with the guest)
        CHAPTERS:   00:00 style, from the final file
        LINKS:      Only real links that we opened and tested
        CREDITS:    Music: [track name], licensed from [library]
                    Edited with AI-assisted transcript tools.
                    [If used] One host line was fixed with AI voice,
                    with the host's written consent.
        FOLLOW:     Where to follow the show, and next week's guest
        TRANSCRIPT: Link to the full, checked transcript</code></pre>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write show notes for this episode.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is the checked transcript of Episode 1 of The Monsoon Mic.
        Write show notes using our template. Summary: 3 warm sentences,
        facts only from the transcript. Do not invent links or quotes.
        Where a link is needed, write [LINK]. List every name, place
        and Malayalam word you used, so we can check the spellings.</code></pre>
          <p><strong>Watch out for invented links.</strong> AI may write a web address that looks real, such as a website for the toddy shop. It may not exist. Open every link yourself before you publish.</p>
        </div>
        <div class="lc-card">
          <h3>Chapters and timestamps</h3>
          <p>A <strong>timestamp</strong> is a time in the episode, such as 17:40. <strong>Chapters</strong> are a list of timestamps with short titles. On YouTube, you can add chapters as a list of timestamps in the video description. YouTube has rules, such as starting the list at 00:00. Some podcast hosts also let you add chapters that show in podcast apps. Check YouTube's and your host's current help pages.</p>
          <p>Episode 1 chapters (made-up times, from the final file):</p>
          <pre><code>00:00  Cold open: the first fish curry Sarala burnt
        01:05  Welcome to The Monsoon Mic
        03:10  22 years in a backwater toddy-shop kitchen
        17:40  How karimeen pollichathu is made, step by step
        32:15  Quick-fire questions
        37:30  Thank you, and next week: life on a houseboat</code></pre>
          <ul class="lc-list">
            <li><strong>Use the final file.</strong> If AI makes chapters from the raw recording, every time will be wrong. Adding a cold open or an ad later moves every chapter too.</li>
            <li><strong>Check each time.</strong> Click each timestamp and listen to the first sentence. Does the chapter really start there?</li>
            <li><strong>Write useful titles.</strong> "How karimeen pollichathu is made" helps a listener more than "Part 4".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Joel checks Episode 1</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Joel's tool">He exports the final episode and runs the AI transcript on the final file, not the raw recording.</li>
              <li data-kind="result" data-label="Transcript">The transcript is mostly good. But it shows "a cup of fish curry" and "thirty-two years".</li>
              <li data-kind="check" data-label="Joel listens">He plays both lines. Sarala said "kappa and fish curry" and "irupathirandu varsham", which is 22 years. He fixes both.</li>
              <li data-kind="user" data-label="Joel asks AI">"Here is the checked transcript. Draft show notes with our template and chapters from these timestamps. Write [LINK] where a link is needed."</li>
              <li data-kind="answer" data-label="AI draft">A warm summary, 6 chapters and a links section. One link is a toddy-shop website.</li>
              <li data-kind="warn" data-label="Watch out">Joel searches for the website. It does not exist: the AI invented it. He deletes the link.</li>
              <li data-kind="check" data-label="Final check">He clicks all 6 chapter times on YouTube. One starts 20 seconds early, so he moves it. Anu checks every Malayalam spelling.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft show notes, chapters and a spelling check list from timestamped notes. Then check each line against your final episode.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful podcast producer. Use simple English.

        Show: [The Monsoon Mic, a Kerala podcast]. Episode: [1, "The Toddy-Shop Kitchen"].
        Guest: [Sarala Kumaran, cook at a toddy shop by the Kerala backwaters for 22 years].
        Timestamped notes from the FINAL episode file:
        [00:00 Cold open: Sarala laughs about the first fish curry she burnt.
        01:05 Anu and Joel welcome listeners.
        03:10 Sarala on starting work at the toddy shop, and kappa and fish curry.
        17:40 Joel asks how karimeen pollichathu is made, step by step.
        32:15 Quick-fire questions.
        37:30 Wrap-up. Next week: life on a houseboat in Kerala.]

        Please write:
        1. Three title options, each under 60 characters.
        2. A warm 3-sentence summary, using only facts in the notes above.
        3. Chapters in the form "00:00 Title", using exactly the times above.
        4. A spelling check list: every name, place and Malayalam word, with its English meaning, each marked [CHECK].
        5. A credits section with [music track and licence] and [AI use line] placeholders.

        Do not add links, quotes or facts that are not in the notes. Write [ADD] where something is missing.</pre>
            <ul class="ai-try-checks">
              <li>Do the chapter times match your notes exactly, and start at 00:00?</li>
              <li>Did it add any fact, quote or link that was not in the notes?</li>
              <li>Check each Malayalam meaning with a fluent speaker or the guest.</li>
              <li>Is each title under 60 characters and honest about the episode?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Check the transcript first, by ear, with a spelling list. Everything else is built from it: show notes, chapters, captions and clips. Take every time from the final file, and open every link before you publish.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Clips and Video for Social Media</h1>
        </div>
        <p class="lc-lead">Most new listeners will not find a 42-minute episode on their own. They find a 45-second clip on Instagram Reels or YouTube Shorts first. In this lesson you will learn how to choose strong moments, cut them into vertical clips, add captions and make audiograms for audio-only moments. You will use AI to find candidate moments fast. Then you will make the final choice yourself, because only you can judge if a clip is fair to your guest.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A 42-minute episode bar for Episode 1, The Toddy-Shop Kitchen, with four marked moments at 6:20, 15:40, 24:05 and 34:10. Each moment becomes a vertical clip: a story, a kitchen tip, a big number and a quick-fire answer. Each clip has burned-in captions.">
            <defs><marker id="pd11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Episode 1: The Toddy-Shop Kitchen (42 min) becomes 4 clips</text>
              <rect x="40" y="42" width="680" height="26" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="40" y="84" font-size="11" fill="#9b99b8" text-anchor="start">0:00</text>
              <text x="720" y="84" font-size="11" fill="#9b99b8" text-anchor="end">42:00</text>
              <rect x="142" y="42" width="12" height="26" fill="#8b5cf6"/>
              <rect x="294" y="42" width="13" height="26" fill="#10b981"/>
              <rect x="430" y="42" width="10" height="26" fill="#f59e0b"/>
              <rect x="593" y="42" width="13" height="26" fill="#ec4899"/>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pd11a)">
                <line x1="148" y1="70" x2="122" y2="112"/>
                <line x1="300" y1="70" x2="300" y2="112"/>
                <line x1="435" y1="70" x2="478" y2="112"/>
                <line x1="600" y1="70" x2="655" y2="112"/>
              </g>
              <rect x="60" y="116" width="120" height="176" rx="14" fill="#27274e" stroke="#8b5cf6"/>
              <text x="120" y="140" font-size="11" fill="#c4b5fd">STORY</text>
              <text x="120" y="174" font-size="12">Her burnt first</text>
              <text x="120" y="192" font-size="12">fish curry</text>
              <text x="120" y="222" font-size="11" fill="#9b99b8">06:20 · 45 s</text>
              <rect x="70" y="252" width="100" height="24" rx="5" fill="#1f1f44"/>
              <text x="120" y="268" font-size="10" fill="#e2e0f0">captions</text>
              <rect x="240" y="116" width="120" height="176" rx="14" fill="#27274e" stroke="#10b981"/>
              <text x="300" y="140" font-size="11" fill="#6ee7b7">KITCHEN TIP</text>
              <text x="300" y="174" font-size="12">Coconut oil</text>
              <text x="300" y="192" font-size="12">goes in last</text>
              <text x="300" y="222" font-size="11" fill="#9b99b8">15:40 · 50 s</text>
              <rect x="250" y="252" width="100" height="24" rx="5" fill="#1f1f44"/>
              <text x="300" y="268" font-size="10" fill="#e2e0f0">captions</text>
              <rect x="420" y="116" width="120" height="176" rx="14" fill="#27274e" stroke="#f59e0b"/>
              <text x="480" y="140" font-size="11" fill="#fcd34d">BIG NUMBER</text>
              <text x="480" y="174" font-size="12">80 kg of kappa</text>
              <text x="480" y="192" font-size="12">a day?</text>
              <text x="480" y="222" font-size="11" fill="#9b99b8">24:05 · 35 s</text>
              <rect x="430" y="252" width="100" height="24" rx="5" fill="#1f1f44"/>
              <text x="480" y="268" font-size="10" fill="#e2e0f0">captions</text>
              <rect x="600" y="116" width="120" height="176" rx="14" fill="#27274e" stroke="#ec4899"/>
              <text x="660" y="140" font-size="11" fill="#f9a8d4">QUICK-FIRE</text>
              <text x="660" y="174" font-size="12">Toddy shop or</text>
              <text x="660" y="192" font-size="12">five-star hotel?</text>
              <text x="660" y="222" font-size="11" fill="#9b99b8">34:10 · 50 s</text>
              <rect x="610" y="252" width="100" height="24" rx="5" fill="#1f1f44"/>
              <text x="660" y="268" font-size="10" fill="#e2e0f0">captions</text>
              <text x="380" y="312" font-size="11" fill="#9b99b8">Vertical 9:16 · hook in the first 3 seconds · Malayalam words explained on screen</text>
            </g>
          </svg>
          <figcaption>One episode gives you several short clips. Each clip has one idea, a strong first line and captions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What makes a good clip</h3>
          <p>A <strong>clip</strong> is a short part of your episode, usually 30 to 60 seconds, posted on its own. Most clips are <strong>vertical</strong> (9:16, the shape of a phone screen). They go on Instagram Reels, YouTube Shorts and other short-video apps. YouTube Shorts can now be up to 3 minutes long, but short clips are often easier to finish. Check each app's current help pages for length limits.</p>
          <p>A good clip passes five tests:</p>
          <table class="lc-table">
            <thead><tr><th>Test</th><th>What it means</th><th>Example from Episode 1</th></tr></thead>
            <tbody>
              <tr><td><strong>Hook</strong></td><td>The first 3 seconds make people stop scrolling</td><td>Sarala: "The first fish curry I made here, I burnt it."</td></tr>
              <tr><td><strong>Stands alone</strong></td><td>A stranger understands it without the full episode</td><td>Anu's question is kept at the start, so we know what she is answering</td></tr>
              <tr><td><strong>One idea</strong></td><td>One story, one tip or one surprise. Not three.</td><td>Only the coconut oil tip, not the whole recipe</td></tr>
              <tr><td><strong>Fair to the guest</strong></td><td>The clip does not change what the guest meant</td><td>A joke about the shop owner is left out. Out of context, it sounds rude.</td></tr>
              <tr><td><strong>Clear ending</strong></td><td>It ends on a laugh, a line or a point, not mid-sentence</td><td>Ends on "...and that is why the curry tastes like home."</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Let AI find moments, then you choose</h3>
          <p>Transcript-based editors such as Descript, and video tools such as CapCut and Adobe Premiere Pro, have features that suggest clip moments. You can also paste your transcript into an AI assistant. Features change often, so check each tool's current help pages.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Find viral clips in this transcript.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is the transcript of Episode 1 of The Monsoon Mic, with
        timestamps. Our guest is Sarala, a cook at a toddy shop by the
        Kerala backwaters. Suggest 6 moments for 30- to 60-second vertical
        clips. For each: start and end time, the first line (the hook),
        the one idea, and why a stranger would understand it alone.
        Warn me about any moment that could sound unfair or rude
        out of context. Use only words that are in the transcript.</code></pre>
          <p>The words "viral" and "guaranteed" mean nothing to the AI. It cannot know what will do well. Ask for clear, checkable things instead: times, hooks and risks.</p>
          <p><strong>Joel's final clip plan for Episode 1 (made up):</strong></p>
          <table class="lc-table">
            <thead><tr><th>Clip</th><th>Time</th><th>Joel's decision</th></tr></thead>
            <tbody>
              <tr><td>Her burnt first fish curry</td><td>06:20 to 07:05</td><td>Use. Strong hook, warm ending.</td></tr>
              <tr><td>Coconut oil goes in last</td><td>15:40 to 16:30</td><td>Use. A useful tip people save and share.</td></tr>
              <tr><td>80 kg of kappa (tapioca) a day</td><td>24:05 to 24:40</td><td>Use, after checking. It is Sarala's own number, so the caption says "Sarala says".</td></tr>
              <tr><td>Toddy shop or five-star hotel?</td><td>34:10 to 35:00</td><td>Use. Funny and light.</td></tr>
              <tr><td>Joke about the shop owner</td><td>12:30 to 13:10</td><td><strong>Reject.</strong> The AI ranked it first. Out of context, it sounds rude to him.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Captions, audiograms and labels</h3>
          <p>Many people scroll with the sound off. So every clip needs <strong>captions</strong> (the spoken words shown as text). <strong>Burned-in captions</strong> are part of the video picture, so they show in every app.</p>
          <ul class="lc-list">
            <li><strong>Check every word.</strong> Auto-captions often get Malayalam words wrong. "Kappa" may become "copper". "Karimeen" may become "carry mean".</li>
            <li><strong>Explain Malayalam words once.</strong> Show "meen curry (fish curry)" on screen the first time.</li>
            <li><strong>Keep captions short.</strong> Use one or two lines at a time, in big text.</li>
            <li><strong>Keep the safe zone clear.</strong> Apps put buttons and the caption text near the bottom and right edge. Keep your captions away from those areas.</li>
          </ul>
          <p>An <strong>audiogram</strong> is a short video made from audio only. It shows a still image, a moving sound wave and captions. Use it when you have no video of a moment, for example a phone call with a guest.</p>
          <p><strong>Labels and music:</strong> normal cuts and captions do not usually need an AI label. But if AI changes how a real person looks or sounds, the platform may ask you to disclose it. YouTube has a setting for altered or synthetic content in YouTube Studio. Instagram may show an "AI info" label. Use music only from your licensed library. Check each platform's current help pages, because these rules change.</p>
          <p>Every clip caption should also say where the full episode is: "Full episode with Sarala Chechi: link in bio, and on Spotify, Apple Podcasts and YouTube."</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from episode to posted clip</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Joel's steps for the "coconut oil" clip in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Ask AI to suggest clip moments from the Episode 1 transcript</li>
              <li data-order="2">Watch each suggestion in full and pick the coconut oil tip</li>
              <li data-order="3">Cut 15:40 to 16:30 and reframe it to vertical 9:16 on Sarala's face</li>
              <li data-order="4">Add burned-in captions and fix the Malayalam words by hand</li>
              <li data-order="5">Add the hook as on-screen text and check the music licence</li>
              <li data-order="6">Post on Reels and Shorts with a link to the full episode</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a short part of your own transcript, or use the sample below. Ask AI for a clip plan, then watch each moment before you choose.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a social media editor for a podcast. Use simple English.

        Show: [The Monsoon Mic, a Kerala podcast about local people].
        Guest: [Pushpan, who works a Chinese fishing net on the Kerala coast].
        Where clips go: [Instagram Reels and YouTube Shorts, vertical 9:16].

        Transcript part (with timestamps):
        [06:12] Joel: How early do you start?
        [06:15] Pushpan: Before the first ferry. The water is quiet then.
        [06:24] Anu: And the net is huge.
        [06:27] Pushpan: Bigger than my house. Four of us pull it together. If one man is slow, the whole net is slow.
        [11:40] Pushpan: Tourists think it is a show. For us, it is rice on the table.

        Please give me:
        1. Three clip ideas. For each: start and end time, the hook (first line), the one idea, and an on-screen title under 6 words.
        2. Burned-in captions for the best clip, 1 or 2 short lines at a time.
        3. A post caption under 40 words that says where the full episode is.
        4. Any risk that a clip is unfair to the guest out of context.

        Use only words from the transcript. Do not add facts.</pre>
            <ul class="ai-try-checks">
              <li>Do the start and end times match the transcript?</li>
              <li>Does each clip make sense to a stranger?</li>
              <li>Are the captions word for word, with no added facts?</li>
              <li>Is the clip fair to the guest? Watch it before you decide.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good clip has one idea, a strong first line and captions you have checked. AI finds candidate moments in minutes. You choose the final clips, because you know the full conversation and what is fair to your guest.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Growing Your Audience</h1>
        </div>
        <p class="lc-lead">A new podcast grows one listener at a time. People must find the show, try an episode, follow it and tell others. In this lesson you will write clear titles and descriptions, plan cross-promotion with guests and other creators, start a newsletter and ask for ratings honestly. AI helps you draft titles, share kits and emails quickly. But growth must be real. Never buy plays, followers, ratings or reviews.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A growth loop with four steps: discover, try, follow, and rate and share. An arrow goes from rate and share back to discover. Below, a warning: never buy plays, followers, ratings or reviews.">
            <defs><marker id="pd12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd">The honest growth loop</text>
              <rect x="20" y="48" width="160" height="78" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="100" y="74" font-weight="700">1. Discover</text>
              <text x="100" y="94" font-size="11" fill="#9b99b8">clear titles, clips,</text>
              <text x="100" y="110" font-size="11" fill="#9b99b8">guests share</text>
              <rect x="210" y="48" width="160" height="78" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="290" y="74" font-weight="700">2. Try</text>
              <text x="290" y="94" font-size="11" fill="#9b99b8">trailer, a strong</text>
              <text x="290" y="110" font-size="11" fill="#9b99b8">first 5 minutes</text>
              <rect x="400" y="48" width="160" height="78" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="480" y="74" font-weight="700">3. Follow</text>
              <text x="480" y="94" font-size="11" fill="#9b99b8">ask once, clearly;</text>
              <text x="480" y="110" font-size="11" fill="#9b99b8">newsletter sign-up</text>
              <rect x="590" y="48" width="150" height="78" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="665" y="74" font-weight="700">4. Rate, share</text>
              <text x="665" y="94" font-size="11" fill="#9b99b8">honest ask,</text>
              <text x="665" y="110" font-size="11" fill="#9b99b8">no reward for stars</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pd12a)">
                <line x1="182" y1="87" x2="206" y2="87"/>
                <line x1="372" y1="87" x2="396" y2="87"/>
                <line x1="562" y1="87" x2="586" y2="87"/>
                <path d="M665,128 L665,160 L100,160 L100,131"/>
              </g>
              <text x="380" y="178" font-size="11" fill="#9b99b8">their friends and followers hear about the show</text>
              <rect x="110" y="200" width="540" height="52" rx="10" fill="#3a1f2a" stroke="#ec4899"/>
              <text x="380" y="222" font-weight="700" fill="#f9a8d4">Never buy plays, followers, ratings or reviews</text>
              <text x="380" y="240" font-size="11">Fake numbers break platform rules and fool the people who trust you</text>
            </g>
          </svg>
          <figcaption>Each real listener can bring the next one. Fake numbers break the loop, because bought "listeners" never share.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Titles and descriptions people can find</h3>
          <p>An episode <strong>title</strong> is often the only thing a person sees in the app. Apps may cut long titles on small screens. So put the most useful words first: who, what and where. Keep your creative title, but add the words people would search for.</p>
          <table class="lc-table">
            <thead><tr><th>Working title</th><th>Better public title</th></tr></thead>
            <tbody>
              <tr><td>The Toddy-Shop Kitchen</td><td>The Toddy-Shop Kitchen: 22 Years Cooking by the Backwaters, with Sarala Chechi</td></tr>
              <tr><td>Life on a Houseboat</td><td>Life on a Houseboat: A Kerala Owner on Monsoon, Tourists and Work</td></tr>
              <tr><td>Nets at Dawn</td><td>Nets at Dawn: A Day with a Chinese Fishing Net Operator on the Kerala Coast</td></tr>
            </tbody>
          </table>
          <p>The <strong>description</strong> (show notes) should start with one or two lines that say what the listener will get. Put chapters, links and credits after that.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a catchy title for my podcast episode.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Our episode: Thomas, who owns three houseboats in Kerala,
        talks about the monsoon, tourists and his workers. Our working
        title is "Life on a Houseboat". Suggest 5 public titles under
        80 characters. Start each with the working title. Add the
        words a traveller or a Malayali abroad would search for.
        No clickbait: every title must match what is in the episode.</code></pre>
          <p>Check each title yourself. Is the guest's name spelt right? Does the title promise only what the episode gives?</p>
        </div>
        <div class="lc-card">
          <h3>Cross-promotion and a newsletter</h3>
          <p><strong>Cross-promotion</strong> means you help another creator's audience find you, and you help yours find them. Good partners share your audience but are not the same show.</p>
          <ul class="lc-list">
            <li><strong>Guests.</strong> Send each guest a share kit: a clip, a square image, the episode link and a suggested post. Thomas shares it with his houseboat customers.</li>
            <li><strong>Other creators.</strong> Meera writes <em>Slow Roads</em>, a made-up travel newsletter from Rajasthan. She features the houseboat episode in her Kerala issue. In return, Anu mentions Meera's Kerala travel guide on air, and says it is a swap.</li>
            <li><strong>Local places.</strong> A poster with a QR code at the toddy shop, the spice shop and the ferry jetty, with the owners' permission.</li>
          </ul>
          <p>A <strong>newsletter</strong> is an email you send to people who signed up. It is yours: an app can change its rules, but your email list stays with you. Anu and Joel send <em>Monsoon Mic Letters</em> every Tuesday with the new episode, one photo and one behind-the-scenes story. Tools such as Substack and Beehiiv can host it.</p>
          <p>Two newsletter numbers to know (made-up numbers for their issue on 22 December):</p>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>Meaning</th><th>Calculation</th></tr></thead>
            <tbody>
              <tr><td><strong>Open rate</strong></td><td>Share of delivered emails that were opened</td><td>187 opens ÷ 336 delivered = 55.7%</td></tr>
              <tr><td><strong>Click rate</strong></td><td>Share of delivered emails where someone clicked a link</td><td>41 clickers ÷ 336 delivered = 12.2%</td></tr>
            </tbody>
          </table>
          <p>They had 340 subscribers, but 4 emails bounced (could not be delivered). So they divide by 336, not 340. Some email apps load emails automatically for privacy, and this can count as an open. So treat the open rate as a rough guide. The click rate is more reliable.</p>
        </div>
        <div class="lc-card">
          <h3>Ask for ratings honestly</h3>
          <p>Apple Podcasts lets listeners give a star rating and write a review. Spotify lets listeners rate shows too. Ratings help new people decide to try a show. Check each app's current help pages for how ratings work.</p>
          <p><strong>An honest ask</strong> is short, specific and has no reward attached. Anu's script for the end of Episode 1:</p>
          <pre><code>"If this episode made you hungry, or homesick, please follow
        The Monsoon Mic so you get Thomas's houseboat story next
        Tuesday. And if you have a minute, a rating or a review on
        Apple Podcasts or Spotify helps other people find us.
        Tell us honestly what you think. We read every one."</code></pre>
          <p><strong>Not OK, ever:</strong></p>
          <ul class="lc-list">
            <li>Buying ratings, reviews, plays or followers from any service</li>
            <li>A giveaway where the entry rule is "leave a 5-star review"</li>
            <li>Asking friends and family to write reviews as if they were strangers</li>
            <li>Joining "review swap" groups, or using AI to write fake reviews</li>
          </ul>
          <p>Fake reviews break platform rules, and your show can be removed. In India, fake reviews can also break consumer protection rules. This is general education, not legal advice. By 24 December, their honest asks had brought 41 ratings on Spotify, and 23 ratings with 9 written reviews on Apple Podcasts (made-up numbers). Small, but real.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: honest growth or not OK?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each growth idea for The Monsoon Mic.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Honest growth"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not OK"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="A clear, one-time ask with no reward is honest.">Ask listeners at the end of the episode to rate the show if they enjoyed it</li>
              <li data-bucket="ok" data-why="Guests have a real audience that may like the show. A ready kit makes sharing easy.">Send Haris, the spice trader, a clip and a link to share with his customers</li>
              <li data-bucket="no" data-why="Rewards tied to 5 stars make the ratings fake. Platforms forbid it.">Run a giveaway: leave a 5-star review to win a Kerala spice box</li>
              <li data-bucket="ok" data-why="A swap is fine when both sides say it on air or in print.">Swap mentions with Meera's Slow Roads newsletter, and say it is a swap</li>
              <li data-bucket="no" data-why="Bought followers do not listen or share. It also breaks platform rules.">Pay an online service for 1,000 Spotify followers before launch</li>
              <li data-bucket="no" data-why="These reviews pretend to come from strangers. They mislead new listeners.">Ask AI to write 20 reviews for cousins to post as "new listeners"</li>
              <li data-bucket="ok" data-why="This uses real words people search for, and the title still matches the episode.">Add "Kerala" and "Chinese fishing net" to the Nets at Dawn title</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a growth kit for one episode. Then check every title against the episode and remove anything that is not honest.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a podcast growth coach. Use simple English. Only suggest honest methods.

        Show: [The Monsoon Mic, a weekly Kerala podcast about local people, food, boats and small businesses].
        Audience: [people aged 22 to 45 in Kerala, and Malayalis in other cities and the Gulf].
        Episode: [Pepper, Price and Patience, with Haris, a third-generation spice trader in the old spice market].
        Where we post: [Spotify, Apple Podcasts, YouTube, Instagram, a weekly email newsletter].

        Please give me:
        1. Five public episode titles under 80 characters. Put the useful search words early. No clickbait.
        2. The first 2 lines of the episode description.
        3. A share kit for the guest: a suggested post (under 50 words) and 3 ideas for images or clips.
        4. Two cross-promotion ideas with other creators or local places.
        5. A 20-second, honest ratings ask we can read on air. No rewards for ratings.
        6. A newsletter subject line and a 3-part outline for this week's issue.

        Do not suggest buying followers, plays or reviews, or any review swap.</pre>
            <ul class="ai-try-checks">
              <li>Does every title match what is really in the episode?</li>
              <li>Is the guest's name and every place name spelt correctly?</li>
              <li>Does the ratings ask avoid any reward or "5-star" request?</li>
              <li>Are all ideas honest, with no bought or fake numbers?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Real growth is slow but it lasts. Make your show easy to find with clear titles, help guests and partners share it, and build your own email list. Ask for ratings honestly, and never buy numbers.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Podcast Analytics and Money</h1>
        </div>
        <p class="lc-lead">After launch, you get numbers from many places: your podcast host, Spotify, Apple Podcasts, YouTube and Instagram. Each one counts in its own way. In this lesson you will learn what downloads, average % listened, followers and views really mean. You will read the made-up launch numbers for the first four episodes of <em>The Monsoon Mic</em>, and use AI to summarise them without mistakes. Then you will learn how sponsorships work, and how to label ads under the ASCI guidelines in India.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 305" role="img" aria-label="Bar chart of downloads for Episodes 1 to 4 of The Monsoon Mic. First 7 days: 820, 690, 610 and 880. First 30 days: 1,460, 1,240, 1,130 and 1,620. Three boxes show where each number comes from: the podcast host for downloads, Spotify and Apple dashboards for average percentage listened, and YouTube Studio for views.">
            <defs><marker id="pd13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="20" font-weight="700" fill="#c4b5fd" text-anchor="middle">The Monsoon Mic, Episodes 1 to 4 (made up, checked 24 Dec 2026)</text>
              <rect x="40" y="36" width="10" height="10" fill="#3b82f6"/>
              <text x="56" y="45" font-size="11" fill="#9b99b8">downloads, first 7 days</text>
              <rect x="205" y="36" width="10" height="10" fill="#8b5cf6"/>
              <text x="221" y="45" font-size="11" fill="#9b99b8">first 30 days</text>
              <line x1="40" y1="250" x2="400" y2="250" stroke="#4b4a78"/>
              <rect x="60" y="163.4" width="30" height="86.6" fill="#3b82f6"/>
              <rect x="94" y="95.9" width="30" height="154.1" fill="#8b5cf6"/>
              <rect x="150" y="177.2" width="30" height="72.8" fill="#3b82f6"/>
              <rect x="184" y="119.1" width="30" height="130.9" fill="#8b5cf6"/>
              <rect x="240" y="185.6" width="30" height="64.4" fill="#3b82f6"/>
              <rect x="274" y="130.7" width="30" height="119.3" fill="#8b5cf6"/>
              <rect x="330" y="157.1" width="30" height="92.9" fill="#3b82f6"/>
              <rect x="364" y="79" width="30" height="171" fill="#8b5cf6"/>
              <g font-size="10" text-anchor="middle">
                <text x="75" y="159">820</text>
                <text x="109" y="91">1,460</text>
                <text x="165" y="173">690</text>
                <text x="199" y="115">1,240</text>
                <text x="255" y="181">610</text>
                <text x="289" y="126">1,130</text>
                <text x="345" y="153">880</text>
                <text x="379" y="74">1,620</text>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="92" y="267">Ep 1</text>
                <text x="182" y="267">Ep 2</text>
                <text x="272" y="267">Ep 3</text>
                <text x="362" y="267">Ep 4</text>
              </g>
              <rect x="440" y="40" width="300" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="456" y="64" font-weight="700">Podcast host (RSS apps)</text>
              <text x="456" y="86" font-size="11" fill="#9b99b8">30-day downloads, Eps 1 to 4: 5,450</text>
              <rect x="440" y="114" width="300" height="62" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="456" y="138" font-weight="700">Spotify and Apple dashboards</text>
              <text x="456" y="160" font-size="11" fill="#9b99b8">Average % listened: 62.5% and 67.8%</text>
              <rect x="440" y="188" width="300" height="62" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="456" y="212" font-weight="700">YouTube Studio</text>
              <text x="456" y="234" font-size="11" fill="#9b99b8">30-day views: 6,930 · 25% to 28% viewed</text>
              <text x="380" y="293" font-size="11" fill="#f9a8d4" text-anchor="middle">Each source counts in its own way. Do not add them into one "listeners" number.</text>
            </g>
          </svg>
          <figcaption>Episode 4 was the shortest but had the most downloads. Its most-watched clip went out the same week. Three sources, three kinds of number.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The numbers and what they mean</h3>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>What it means</th><th>Where you see it</th></tr></thead>
            <tbody>
              <tr><td><strong>Downloads</strong></td><td>How many times an episode file was requested by a podcast app. It is not the same as a listen: some downloads are never played. Many hosts filter out repeats and bots using industry guidelines.</td><td>Your podcast host (all apps that read your RSS feed)</td></tr>
              <tr><td><strong>7-day and 30-day downloads</strong></td><td>Downloads in the first 7 or 30 days after an episode goes out. Compare episodes over the <em>same</em> window, or older episodes always look bigger.</td><td>Your podcast host</td></tr>
              <tr><td><strong>Average % listened</strong></td><td>On average, how much of the episode people played. 62% of a 42-minute episode is about 26 minutes.</td><td>Spotify and Apple Podcasts, each for its own listeners only</td></tr>
              <tr><td><strong>Completion rate</strong></td><td>The share of plays that reached (or nearly reached) the end. Apps define and show it differently.</td><td>Some app dashboards</td></tr>
              <tr><td><strong>Followers</strong></td><td>People who follow the show, so new episodes appear for them</td><td>Each app shows its own count</td></tr>
              <tr><td><strong>Views and average view duration</strong></td><td>How often the video was viewed, and the average time watched per view. Average % viewed = average view duration ÷ video length.</td><td>YouTube Studio</td></tr>
              <tr><td><strong>Watch time</strong></td><td>Total time people spent watching: views × average view duration</td><td>YouTube Studio</td></tr>
            </tbody>
          </table>
          <p>Each platform counts in its own way, and some change their methods over time. So compare Spotify with Spotify, and YouTube with YouTube. Check each dashboard's help pages to see exactly how it counts.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the first four episodes</h3>
          <p>All numbers below are made up for teaching. They were checked on Thursday 24 December 2026, so each episode had a full 30 days.</p>
          <table class="lc-table">
            <thead><tr><th>Episode</th><th>Length</th><th>Downloads 7 days</th><th>Downloads 30 days</th><th>Avg % listened (Spotify / Apple)</th><th>YouTube views, 30 days</th><th>Avg view duration (% viewed)</th><th>Clip views, 30 days</th></tr></thead>
            <tbody>
              <tr><td>1 The Toddy-Shop Kitchen</td><td>42 min</td><td>820</td><td>1,460</td><td>62% / 68%</td><td>1,900</td><td>10:55 (26.0%)</td><td>6,200</td></tr>
              <tr><td>2 Life on a Houseboat</td><td>38 min</td><td>690</td><td>1,240</td><td>58% / 63%</td><td>1,350</td><td>9:40 (25.4%)</td><td>4,100</td></tr>
              <tr><td>3 Pepper, Price and Patience</td><td>41 min</td><td>610</td><td>1,130</td><td>66% / 71%</td><td>1,280</td><td>11:30 (28.0%)</td><td>5,300</td></tr>
              <tr><td>4 Nets at Dawn</td><td>36 min</td><td>880</td><td>1,620</td><td>64% / 69%</td><td>2,400</td><td>10:05 (28.0%)</td><td>18,700</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>3,000</strong></td><td><strong>5,450</strong></td><td>Average 62.5% / 67.8%</td><td><strong>6,930</strong></td><td></td><td><strong>34,300</strong></td></tr>
            </tbody>
          </table>
          <p>The trailer had 310 downloads in its first 7 days. Followers grew from 3 November to 24 December: Spotify 150 to 640, Apple Podcasts 60 to 210, YouTube subscribers 90 to 880.</p>
          <p><strong>What Anu and Joel read from this:</strong></p>
          <ul class="lc-list">
            <li>Episode 4 had 11% more 30-day downloads than Episode 1 (1,620 against 1,460). Its top clip, Pushpan lowering the net at dawn, had 11,900 views. The timing suggests the clip helped. It does not prove it.</li>
            <li>Episode 3 had the fewest downloads but the highest % listened. The people who came, stayed.</li>
            <li>YouTube's 25% to 28% viewed is not "worse" than Spotify's 62%. It is a different measure on a different app.</li>
          </ul>
          <p>You can check the sums in a spreadsheet. If the 30-day downloads are in cells D2 to D5, the total is <code>=SUM(D2:D5)</code>. For Episode 1's % viewed, use <code>=(10+55/60)/42</code>, which gives 0.26 (26.0%).</p>
        </div>
        <div class="lc-card">
          <h3>Money: sponsorships and ASCI disclosure</h3>
          <p>A podcast can earn money in a few ways. The most common is a <strong>sponsorship</strong>: a brand pays you to read an ad. YouTube can also share ad revenue through the YouTube Partner Program, once your channel is eligible. Check the current rules. Other ways are listener memberships and live events. Two terms you will hear:</p>
          <ul class="lc-list">
            <li><strong>CPM</strong> (cost per mille): what an advertiser pays for 1,000 downloads or views.</li>
            <li><strong>RPM</strong> (revenue per mille): what you earn for every 1,000 views on YouTube, after the platform's share.</li>
          </ul>
          <p><strong>Worked example (made up):</strong> Backwater Beans, a Kerala coffee roaster, offers ₹4,000 per episode for the first 4 episodes of Season 2. That is ₹16,000 in total. Each episode gets a 45-second ad read by Anu, plus a line in the show notes. Their first 4 episodes averaged 1,362.5 downloads in 30 days (5,450 ÷ 4). So the sponsor pays about ₹2,936 per 1,000 downloads (₹4,000 ÷ 1.3625). Season 1 cost ₹1,25,000. So this deal would pay for only a small part of a season. That is normal for a new show. Do not quit your job for a first sponsor.</p>
          <p><strong>ASCI disclosure.</strong> The Advertising Standards Council of India has guidelines for influencer ads. If a brand pays you, or gives you free products, you must label it clearly. In a podcast, that means:</p>
          <ul class="lc-list">
            <li>Say it out loud at the <em>start</em> of the ad: "This part is a paid ad from Backwater Beans." Say it again at the end of the ad.</li>
            <li>Label it in the video with on-screen text, and turn on YouTube's paid promotion setting.</li>
            <li>Put the label at the start of the show notes and clip captions, for example "#ad" or "Sponsored". Do not hide it in a row of hashtags.</li>
            <li>Only say what is true, and try the product yourself. Ask the brand for proof of any claim, like "India's freshest coffee".</li>
          </ul>
          <p>This is general education, not legal or tax advice. Read the current ASCI guidelines, and ask a chartered accountant about tax on sponsor income.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Joel reads the report with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Joel collects">He exports numbers from the podcast host, Spotify, Apple Podcasts and YouTube Studio into one spreadsheet, one column per source.</li>
              <li data-kind="user" data-label="Joel asks">"Here is our table for Episodes 1 to 4. Summarise what went well and what to try next. Show every calculation."</li>
              <li data-kind="answer" data-label="AI replies">The AI writes: "You reached 12,380 listeners in 30 days (5,450 downloads + 6,930 views)."</li>
              <li data-kind="warn" data-label="Watch out">Downloads and views are different measures from different apps. One person can do both. They are not 12,380 "listeners".</li>
              <li data-kind="tool" data-label="Joel checks">He checks the AI's other sums with <code>=SUM()</code> and <code>=AVERAGE()</code> in the spreadsheet.</li>
              <li data-kind="result" data-label="Result">The sums are right. The average % listened is right: 62.5% on Spotify and 67.8% on Apple.</li>
              <li data-kind="check" data-label="Final report">He keeps each platform in its own row. For sponsors, he writes "5,450 downloads and 6,930 YouTube views", never one merged number.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own numbers, or use the sample below. Ask AI for a clear monthly report, then check every sum in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a podcast analyst. Use simple English and show every calculation.

        Show: [The Monsoon Mic, weekly Kerala podcast, video on YouTube, audio on all apps].
        Numbers (made up, first 30 days of each episode):
        [Ep 1: 42 min, 1,460 downloads, Spotify 62% listened, 1,900 YouTube views, 10:55 average view duration
        Ep 2: 38 min, 1,240 downloads, Spotify 58%, 1,350 views, 9:40
        Ep 3: 41 min, 1,130 downloads, Spotify 66%, 1,280 views, 11:30
        Ep 4: 36 min, 1,620 downloads, Spotify 64%, 2,400 views, 10:05]

        Please give me:
        1. A table with total and average per episode for each number, and YouTube average % viewed.
        2. Three things we learned, each with the number that shows it.
        3. Two small experiments for next month.
        4. A short, honest paragraph for a sponsor pitch, with each platform's number shown separately.
        5. A reminder of how to label a paid ad under India's ASCI guidelines, in 3 bullet points.

        Rules: never add downloads and views into one "listeners" number. Do not invent industry averages. Say "not legal advice" for point 5.</pre>
            <ul class="ai-try-checks">
              <li>Check every total and average in a spreadsheet.</li>
              <li>Is YouTube % viewed correct (average view duration ÷ length)?</li>
              <li>Are downloads and views kept separate everywhere?</li>
              <li>Does the ASCI part say to label the ad clearly, at the start and the end?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every platform counts in its own way, so compare like with like and never merge downloads and views into one "listeners" number. Let AI summarise, but check each sum yourself. When money comes in, label every paid ad clearly and early.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Translation and Dubbing</h1>
        </div>
        <p class="lc-lead">Your podcast can reach people who do not speak your language well. You can translate titles and show notes, add subtitles, or dub the audio into another language. AI makes all three much faster. But AI translation makes quiet mistakes in tone, names and local words. And AI dubbing can put words in a person's voice. In this lesson you will choose the right option, protect every speaker's consent, and get a native speaker to check every language before it goes out.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Four ways to reach new languages, from lower to higher risk: translated titles and show notes, subtitles, dubbing with a stock AI voice, and dubbing with a cloned voice. For each: what it needs and The Monsoon Mic's Season 1 choice. Translated text and subtitles: yes. Stock AI voice: trailer test only. Cloned voice: never for guests.">
            <defs><marker id="pd14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-weight="700" fill="#c4b5fd">Four ways to reach new languages</text>
              <line x1="40" y1="34" x2="716" y2="34" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pd14a)"/>
              <text x="40" y="48" font-size="11" fill="#9b99b8" text-anchor="start">less risk</text>
              <text x="720" y="48" font-size="11" fill="#9b99b8" text-anchor="end">more reach, more risk</text>
              <rect x="20" y="58" width="165" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="102" y="82" font-weight="700">Translated text</text>
              <text x="102" y="100" font-size="11" fill="#9b99b8">titles, show notes</text>
              <rect x="205" y="58" width="165" height="58" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="287" y="82" font-weight="700">Subtitles</text>
              <text x="287" y="100" font-size="11" fill="#9b99b8">on the YouTube video</text>
              <rect x="390" y="58" width="165" height="58" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="472" y="82" font-weight="700">Stock AI voice dub</text>
              <text x="472" y="100" font-size="11" fill="#9b99b8">a voice of no real person</text>
              <rect x="575" y="58" width="165" height="58" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="657" y="82" font-weight="700">Cloned voice dub</text>
              <text x="657" y="100" font-size="11" fill="#9b99b8">copies the speaker</text>
              <g font-size="10" fill="#9b99b8">
                <text x="102" y="146">NEEDS</text><text x="287" y="146">NEEDS</text><text x="472" y="146">NEEDS</text><text x="657" y="146">NEEDS</text>
              </g>
              <rect x="20" y="128" width="165" height="54" rx="8" fill="none" stroke="#4b4a78"/>
              <rect x="205" y="128" width="165" height="54" rx="8" fill="none" stroke="#4b4a78"/>
              <rect x="390" y="128" width="165" height="54" rx="8" fill="none" stroke="#4b4a78"/>
              <rect x="575" y="128" width="165" height="54" rx="8" fill="none" stroke="#4b4a78"/>
              <g font-size="11">
                <text x="102" y="168">native speaker check</text>
                <text x="287" y="168">native check + timing</text>
                <text x="472" y="168">consent, label, check</text>
                <text x="657" y="168">signed consent per voice</text>
              </g>
              <rect x="20" y="196" width="165" height="54" rx="8" fill="#123a2e" stroke="#10b981"/>
              <rect x="205" y="196" width="165" height="54" rx="8" fill="#123a2e" stroke="#10b981"/>
              <rect x="390" y="196" width="165" height="54" rx="8" fill="#3a2e12" stroke="#f59e0b"/>
              <rect x="575" y="196" width="165" height="54" rx="8" fill="#3a1f2a" stroke="#ec4899"/>
              <g font-size="10" fill="#9b99b8">
                <text x="102" y="214">SEASON 1</text><text x="287" y="214">SEASON 1</text><text x="472" y="214">SEASON 1</text><text x="657" y="214">SEASON 1</text>
              </g>
              <g font-size="12">
                <text x="102" y="236">Yes: Hindi, Malayalam</text>
                <text x="287" y="236">Yes: every episode</text>
                <text x="472" y="236">Trailer test only</text>
                <text x="657" y="236">Never for guests</text>
              </g>
              <text x="380" y="276" font-size="11" fill="#9b99b8">No AI copy of any guest's voice. A native speaker checks every language before it goes out.</text>
            </g>
          </svg>
          <figcaption>Start with text and subtitles. Move to dubbing only when you have consent, a clear label and a native speaker to check it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why translate, and your options</h3>
          <p>The Monsoon Mic is in English with some Malayalam. Two groups asked for more (made up). Malayali parents in Kerala and the Gulf wanted Malayalam subtitles for the English parts. Viewers in Karnataka, Maharashtra and north India asked for Hindi.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>What it is</th><th>Effort and risk</th></tr></thead>
            <tbody>
              <tr><td><strong>Translated text</strong></td><td>Titles, descriptions and show notes in another language</td><td>Low. A native speaker checks the words.</td></tr>
              <tr><td><strong>Subtitles</strong></td><td>Translated text shown on the video while people talk. Viewers can turn them on or off.</td><td>Medium. Words and timing must both be right.</td></tr>
              <tr><td><strong>Dubbing</strong></td><td>A new audio track in another language, over or instead of the original voices</td><td>High. It changes what people hear, and whose voice they hear.</td></tr>
              <tr><td><strong>Voice cloning in dubbing</strong></td><td>The new language is spoken in an AI copy of the original speaker's voice</td><td>Highest. Needs written consent from every speaker whose voice is copied.</td></tr>
            </tbody>
          </table>
          <p>YouTube lets you add subtitles and translated titles and descriptions in many languages. It also supports extra audio tracks in other languages for some channels. Some channels are offered automatic AI dubbing. Check YouTube's current help pages, and check if auto-dubbing is switched on for your channel. Podcast apps usually play one audio file per episode. So a Hindi audio version often needs its own feed or episode.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and where it goes wrong</h3>
          <p>AI translates a 40-minute transcript in minutes. It also makes subtitle files with timings. But it often gets tone, local words and names wrong. Here is part of the Hindi subtitle check for Episode 1 (made up).</p>
          <table class="lc-table">
            <thead><tr><th>Original (English)</th><th>AI's Hindi</th><th>Problem</th><th>Ritu's fix</th></tr></thead>
            <tbody>
              <tr><td>"I have cooked here for 22 years."</td><td>मैंने यहाँ बाईस वर्षों तक भोजन पकाया है।</td><td>Too formal. It also sounds like she stopped. She still works there.</td><td>मैं यहाँ 22 साल से खाना बना रही हूँ।</td></tr>
              <tr><td>"Sarala Chechi"</td><td>सरला बहन</td><td>"Chechi" (elder sister) is part of how people know her</td><td>सरला चेची (explained once in the show notes)</td></tr>
              <tr><td>"kappa and meen curry"</td><td>कप्पा और मीन करी</td><td>Hindi viewers will not know these Malayalam words</td><td>कप्पा (टैपिओका) और मछली करी</td></tr>
              <tr><td>"For us, it is rice on the table."</td><td>हमारे लिए, यह मेज़ पर चावल है।</td><td>Word-for-word. It loses the meaning: it is how they earn a living.</td><td>हमारे लिए यह रोज़ी-रोटी है।</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Translate this into Hindi.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Translate these subtitles into everyday spoken Hindi, the kind
        used on YouTube, not formal written Hindi. Keep each line short
        enough to read in 2 seconds. Keep these words as they are:
        Chechi, kappa, karimeen, toddy shop. Add a short meaning in
        brackets the first time. Then list every line where you were
        unsure of the tone or meaning, so a native speaker can check it.</code></pre>
          <p>The glossary (a list of words to keep or translate a set way) is the most useful part. Build one for your show and reuse it every week.</p>
          <p><strong>A native speaker must check every language.</strong> A back-translation (AI translating it back into English) can catch big meaning errors. It cannot catch tone. Anu checks the Malayalam. Ritu, a made-up friend who teaches in north India, checks the Hindi, and the credits thank her. They will add Tamil only when they find a Tamil speaker to check it.</p>
        </div>
        <div class="lc-card">
          <h3>Dubbing and consent</h3>
          <p>The show's rule is clear: no AI copy of any guest's voice. So guest episodes get subtitles, not dubbing. Anu and Joel tested dubbing only on the 90-second trailer. It has only the hosts' voices.</p>
          <ul class="lc-list">
            <li><strong>No cloning.</strong> They used a stock AI voice (a voice made by the tool, not a copy of anyone). Both hosts agreed to it.</li>
            <li><strong>Clear label.</strong> The trailer description says: "Hindi voice: AI-generated. Original in English." The Hindi voice also says this at the start.</li>
            <li><strong>Platform labels.</strong> If a platform asks about altered or synthetic content, answer honestly. YouTube has a setting in YouTube Studio. India's IT Rules now also cover labels for synthetic content. Check the current rules.</li>
            <li><strong>Native check.</strong> Ritu listened to the whole Hindi trailer. The AI voice said "karimeen" wrongly, so they fixed the spelling in the script and tried again.</li>
          </ul>
          <p>If you ever do want to dub a guest with an AI copy of their voice, you need their separate written consent. It must say which languages, where it will be used and for how long. The guest can also say no, and that is fine. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Ritu checks the Hindi subtitles</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Joel prepares">Joel makes Hindi subtitles for Episode 1 with an AI tool, using the show's glossary.</li>
              <li data-kind="result" data-label="Draft ready">The file has 612 subtitle lines. The AI flags 23 lines as "unsure".</li>
              <li data-kind="check" data-label="Ritu watches">Ritu watches the video with the Hindi subtitles on. She checks the 23 flagged lines first, then the rest.</li>
              <li data-kind="warn" data-label="She finds">The AI wrote "22 years" as if Sarala had retired. It also translated "Chechi" as "sister". Neither error was flagged.</li>
              <li data-kind="thought" data-label="Joel thinks">The unflagged mistakes worry Joel. The AI's "unsure" list is a help, not a full check.</li>
              <li data-kind="check" data-label="Timing">Ritu also finds 5 lines that disappear too fast to read. Joel makes them longer.</li>
              <li data-kind="result" data-label="Published">The Hindi subtitles go live, with "Hindi subtitles checked by Ritu" in the description.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to translate a short passage and flag its weak spots. Then give the result to a native speaker to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a subtitle translator for a podcast. Use simple English for your notes.

        Show: [The Monsoon Mic, a Kerala podcast in English with some Malayalam].
        Translate into: [everyday spoken Hindi, as used on YouTube].
        Glossary, keep these words: [Chechi, kappa, toddy shop, karimeen]. Add a short meaning in brackets the first time.

        Lines to translate:
        [1. Sarala: I have cooked here for 22 years.
        2. Sarala: The first fish curry I made here, I burnt it.
        3. Anu: So what is the secret?
        4. Sarala: Coconut oil goes in last. Never first.
        5. Pushpan: Tourists think it is a show. For us, it is rice on the table.]

        Please give me:
        1. A table: line number, original, translation, and a back-translation into English.
        2. Each line short enough to read in about 2 seconds.
        3. A list of lines where the tone, an idiom or a local word may be wrong, with why.
        4. Five questions for the native speaker who will check this.

        Do not add or remove any meaning. If you are unsure, say so.</pre>
            <ul class="ai-try-checks">
              <li>Is the tone everyday speech, not stiff or formal?</li>
              <li>Are the glossary words kept and explained once?</li>
              <li>Did the idiom in line 5 keep its meaning (earning a living)?</li>
              <li>Did a native speaker check every line before you publish?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Translate text and subtitles first; they reach many people with low risk. Dub only with consent and a clear label, and never copy a guest's voice without their written permission. AI drafts the translation, but a native speaker decides if it is right.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Capstone: A Launch Plan for The Monsoon Mic</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole course together into one launch plan. It has six parts: the concept, three episode outlines, a guest pitch, an editing checklist, show notes and a promotion plan. You will follow Anu and Joel as they build the plan for <em>The Monsoon Mic</em>, which launches on Tuesday 3 November 2026. AI drafts each part quickly. You check the facts, keep the consent rules and make the final decisions. Then you will build the same plan for your own show.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 275" role="img" aria-label="A launch timeline from 29 September to 24 December 2026: plan ready, episodes 1 to 3 edited on 13 October, trailer and newsletter on 20 October, episode 1 on 3 November, episodes 2 to 7 every Tuesday, a 30-day check on 3 December, the finale on 22 December and a season review on 24 December. Below, six boxes show the parts of the launch plan.">
            <defs><marker id="pd15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="13" font-weight="700" fill="#c4b5fd">The Monsoon Mic: launch timeline, Season 1</text>
              <line x1="40" y1="110" x2="738" y2="110" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pd15a)"/>
              <circle cx="40" cy="110" r="5" fill="#8b5cf6"/>
              <circle cx="150.7" cy="110" r="5" fill="#3b82f6"/>
              <circle cx="206" cy="110" r="5" fill="#f59e0b"/>
              <circle cx="316.7" cy="110" r="6" fill="#10b981"/>
              <circle cx="372.1" cy="110" r="3" fill="#10b981"/>
              <circle cx="427.4" cy="110" r="3" fill="#10b981"/>
              <circle cx="482.8" cy="110" r="3" fill="#10b981"/>
              <circle cx="538.1" cy="110" r="3" fill="#10b981"/>
              <circle cx="593.5" cy="110" r="3" fill="#10b981"/>
              <circle cx="648.8" cy="110" r="3" fill="#10b981"/>
              <circle cx="554" cy="110" r="5" fill="#22d3ee"/>
              <circle cx="704.2" cy="110" r="5" fill="#ec4899"/>
              <circle cx="720" cy="110" r="5" fill="#c4b5fd"/>
              <text x="40" y="76" font-size="11" fill="#9b99b8" text-anchor="start">29 Sep (today)</text>
              <text x="40" y="94" text-anchor="start">Plan ready</text>
              <text x="206" y="76" font-size="11" fill="#9b99b8">20 Oct</text>
              <text x="206" y="94">Trailer + newsletter</text>
              <text x="510" y="76" font-size="11" fill="#9b99b8">10 Nov to 15 Dec</text>
              <text x="510" y="94">Eps 2 to 7, Tuesdays 7 am</text>
              <text x="745" y="76" font-size="11" fill="#9b99b8" text-anchor="end">22 Dec</text>
              <text x="745" y="94" text-anchor="end">Ep 8 finale</text>
              <text x="150.7" y="134" font-size="11" fill="#9b99b8">13 Oct</text>
              <text x="150.7" y="150">Eps 1 to 3 edited</text>
              <text x="316.7" y="134" font-size="11" fill="#9b99b8">3 Nov, 7 am</text>
              <text x="316.7" y="150" font-weight="700">Ep 1 launch</text>
              <text x="554" y="134" font-size="11" fill="#9b99b8">3 Dec</text>
              <text x="554" y="150">Ep 1 30-day check</text>
              <text x="745" y="134" font-size="11" fill="#9b99b8" text-anchor="end">24 Dec</text>
              <text x="745" y="150" text-anchor="end">Season review</text>
              <text x="380" y="190" font-size="13" font-weight="700" fill="#c4b5fd">Six parts of the launch plan</text>
              <rect x="15" y="204" width="115" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="72.5" y="227">Concept</text><text x="72.5" y="245" font-size="11" fill="#9b99b8">and audience</text>
              <rect x="138" y="204" width="115" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="195.5" y="227">3 episode</text><text x="195.5" y="245" font-size="11" fill="#9b99b8">outlines</text>
              <rect x="261" y="204" width="115" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="318.5" y="227">Guest</text><text x="318.5" y="245" font-size="11" fill="#9b99b8">pitch</text>
              <rect x="384" y="204" width="115" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="441.5" y="227">Editing</text><text x="441.5" y="245" font-size="11" fill="#9b99b8">checklist</text>
              <rect x="507" y="204" width="115" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="564.5" y="227">Show notes</text><text x="564.5" y="245" font-size="11" fill="#9b99b8">template</text>
              <rect x="630" y="204" width="115" height="56" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="687.5" y="227">Promotion</text><text x="687.5" y="245" font-size="11" fill="#9b99b8">plan</text>
            </g>
          </svg>
          <figcaption>The plan fixes the dates first. Then each of the six parts is drafted with AI and checked by the hosts.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief: what goes into the plan</h3>
          <p>A <strong>launch plan</strong> is one short document that says what you will publish, when, and how you will check it. Some things are fixed before AI touches anything. Give these to AI as rules, not as questions:</p>
          <ul class="lc-list">
            <li><strong>Dates:</strong> trailer on Tuesday 20 October, Episode 1 on Tuesday 3 November, then every Tuesday at 7 am IST until Episode 8 on 22 December.</li>
            <li><strong>Budget:</strong> ₹1,25,000 for Season 1 (made up). No spending outside it.</li>
            <li><strong>Consent:</strong> every guest signs a release form before recording. No AI copy of any guest's voice. All music comes from the licensed library.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What AI drafts</th><th>What Anu and Joel decide</th></tr></thead>
            <tbody>
              <tr><td>Concept and audience</td><td>Three wordings of the promise</td><td>The final sentence, tested on real listeners</td></tr>
              <tr><td>3 episode outlines</td><td>Segment plans and fact files</td><td>Their own questions; a source for every fact</td></tr>
              <tr><td>Guest pitch</td><td>A short, warm message</td><td>The tone, the date and what they promise the guest</td></tr>
              <tr><td>Editing checklist</td><td>A list from their rules</td><td>What is a must, every single week</td></tr>
              <tr><td>Show notes</td><td>Summary and chapters from the transcript</td><td>Spellings, times, credits and AI-use note</td></tr>
              <tr><td>Promotion plan</td><td>A week-by-week calendar</td><td>What they can really keep up with 12 hours a week</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Parts 1 to 3: concept, outlines and a guest pitch</h3>
          <p><strong>Concept:</strong> "Every week, Anu and Joel sit down with one local person whose work you have seen but whose story you have never heard." <strong>Audience:</strong> people aged 22 to 45 in Kerala, and Malayalis in other Indian cities and the Gulf who miss home.</p>
          <table class="lc-table">
            <thead><tr><th>Episode</th><th>Cold open idea</th><th>Deep dive</th><th>Check before recording</th></tr></thead>
            <tbody>
              <tr><td>1 The Toddy-Shop Kitchen (Sarala, cook, Kerala backwaters)</td><td>"The first fish curry I made here, I burnt it."</td><td>A day in a toddy-shop kitchen</td><td>Her 22 years and the name of the shop, from Sarala</td></tr>
              <tr><td>2 Life on a Houseboat (Thomas, houseboat owner)</td><td>The sound of rain on the roof at night</td><td>How a houseboat season works</td><td>Any rules or numbers he mentions, from an official source</td></tr>
              <tr><td>3 Pepper, Price and Patience (Haris, spice market)</td><td>The smell of the shop at 6 am</td><td>How pepper is bought and priced</td><td>No price figures from AI; prices in Haris's own words</td></tr>
            </tbody>
          </table>
          <p><strong>Guest pitch</strong> for Episode 5. Anu has already sent Rajan a short WhatsApp invitation. Then she calls him in Malayalam. After the call, she sends this message, in Malayalam and English:</p>
          <pre><code>Namaskaram Rajan chetta,

        Thank you for talking with me today. As I said, we make
        The Monsoon Mic, a weekly podcast about local people.
        We would love to hear your story: 30 years on the ferry
        across the harbour, and how the city looks from
        the water.

        - When: Saturday 14 November, 3 pm, about 90 minutes
        - Where: the ferry office near the jetty, after your shift,
          or wherever you are comfortable
        - What: a relaxed talk with Joel and me, filmed and recorded
        - Before we start, you read and sign a short release form
          (Malayalam and English). You can ask us anything about it.
        - We never make an AI copy of your voice.
        - We cover your travel, and we bring a small thank-you gift.

        It goes out on Tuesday 1 December. Is this OK for you?
        Anu, The Monsoon Mic</code></pre>
          <p>AI drafted this in English. Anu rewrote it in her own words and made the Malayalam version herself.</p>
        </div>
        <div class="lc-card">
          <h3>Parts 4 to 6: checklist, show notes and promotion</h3>
          <p><strong>Editing checklist</strong> (used before every episode goes live):</p>
          <pre><code>[ ] Guest's signed release form is saved
        [ ] We listened to every AI cut; no cut changes the guest's meaning
        [ ] Every Malayalam line is explained in English (audio)
            and subtitled (video)
        [ ] Every fact has a source, or is said in the guest's own words
        [ ] No AI voice of any guest; any AI fix of a host's line has
            written consent and a note in the show notes
        [ ] Music only from our licensed library; licence saved
        [ ] Show notes: names, spellings, links and chapter times checked
        [ ] Hindi and Malayalam subtitles checked by a native speaker
        [ ] Every clip watched in full and fair to the guest</code></pre>
          <p><strong>Show notes for Episode 1:</strong></p>
          <pre><code>The Toddy-Shop Kitchen: 22 Years Cooking by the Backwaters,
        with Sarala Chechi

        For 22 years, Sarala Chechi has cooked fish curry and kappa
        (tapioca) at a toddy shop by the Kerala backwaters. She tells Anu and
        Joel about her first burnt curry, a day in the kitchen and
        why coconut oil goes in last.

        00:00 Cold open: the first fish curry Sarala burnt
        01:05 Welcome to The Monsoon Mic
        03:10 22 years in a backwater toddy-shop kitchen
        17:40 How karimeen pollichathu is made, step by step
        32:15 Quick-fire questions
        37:30 Thank you, and next week: life on a houseboat

        Hosts: Anu and Joel. Music: [track], licensed from [library].
        Cover art: [designer's name].
        We used AI tools to draft the transcript and chapters.
        We checked them by hand.</code></pre>
          <p><strong>Promotion plan:</strong></p>
          <table class="lc-table">
            <thead><tr><th>When</th><th>What</th><th>Where</th></tr></thead>
            <tbody>
              <tr><td>Tue 20 Oct</td><td>Trailer goes live; newsletter sign-up opens</td><td>Podcast apps, YouTube, Instagram</td></tr>
              <tr><td>27 Oct to 2 Nov</td><td>Two trailer clips; Sarala's share kit ready</td><td>Reels, Shorts</td></tr>
              <tr><td>Every Tuesday, 7 am, from 3 Nov</td><td>New episode and <em>Monsoon Mic Letters</em></td><td>All apps, YouTube, email</td></tr>
              <tr><td>Wed, Fri and Sun each week</td><td>Clips 1, 2 and 3 (a 4th on Monday if there is one)</td><td>Reels, Shorts</td></tr>
              <tr><td>Weeks 1 and 3</td><td>An honest ratings ask at the end of the episode</td><td>In the episode</td></tr>
              <tr><td>10 Nov</td><td>Swap with Meera's <em>Slow Roads</em> newsletter for the houseboat episode</td><td>Email</td></tr>
              <tr><td>Thu 3 Dec and Thu 24 Dec</td><td>Check 7-day and 30-day downloads, % listened, YouTube views and followers. Change one thing.</td><td>Spreadsheet</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: build the plan in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for building a launch plan in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the one-line concept and describe the audience</li>
              <li data-order="2">Fix the dates, the budget and the consent rules</li>
              <li data-order="3">Outline the first 3 episodes, with a fact file for each</li>
              <li data-order="4">Send guest pitches and release forms, then record</li>
              <li data-order="5">Write the editing checklist and a show notes template</li>
              <li data-order="6">Plan promotion from the trailer to the final episode</li>
              <li data-order="7">Set review dates and the numbers you will check</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a full launch plan for your own show. Then go through each part and make the final decisions yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced podcast producer. Use simple English and short sentences.

        My show: [a weekly video and audio podcast about local people, food and small businesses in my town in Kerala].
        Hosts: [two friends]. Language: [English with some Malayalam].
        Audience: [people aged 22 to 45 here, and people from here who live in other cities].
        Launch: [trailer on 20 October 2026, Episode 1 on 3 November 2026, 8 weekly episodes].
        Budget: [₹1,25,000]. Time: [12 hours a week in total].
        Rules: a signed release form from every guest; no AI copy of any guest's voice; licensed music only.

        Write a one-page launch plan with these six parts:
        1. Concept: a one-sentence promise and a 2-line audience description.
        2. Outlines for Episodes 1 to 3: guest type, cold open idea, deep dive, and facts to check.
        3. A warm, 120-word guest pitch message.
        4. A 10-point editing checklist.
        5. A show notes template with chapters.
        6. A week-by-week promotion plan from trailer to finale, with 2 review dates and the numbers to check.

        Mark every fact or number I must check with [CHECK]. Do not invent statistics.</pre>
            <ul class="ai-try-checks">
              <li>Do all dates match your real calendar and weekdays?</li>
              <li>Does the plan keep your consent and music rules?</li>
              <li>Can you really do the promotion plan in your weekly time?</li>
              <li>Is every fact and number marked [CHECK] for you to confirm?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A launch plan turns good ideas into dates, checklists and habits. Fix your dates, budget and consent rules first, then let AI draft the parts. You check every fact, keep your own voice and review real numbers after launch.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

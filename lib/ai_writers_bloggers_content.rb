module AiWritersBloggersContent
  # Units (sidebar dividers): 1–4 Writing with AI Basics · 5–9 Planning and Drafting · 10–14 Editing, Publishing and Growing · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Writing in the Age of AI</h1>
        </div>
        <p class="lc-lead">AI assistants such as Claude can write a blog post in seconds. So why should anyone read <em>your</em> post? Because readers come for the things only you have: your trips, your mistakes, the people you met and the way you tell it. In this lesson, you will learn what AI does well for writers and what it cannot do. You will also see how to keep your own voice when you use it. All through this course, we follow <strong>Meera</strong>, a made-up travel writer from Rajasthan. She writes <strong>Slow Roads</strong>, a blog and newsletter about slow, low-cost travel in Rajasthan and North India.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Two columns feed into one blog post. On the left, five things AI does well: idea lists, outline options, grammar and clarity, feedback on a draft and headline options. On the right, five things only the writer brings: real trips and receipts, real people, opinions, voice and humour, and the final fact check.">
            <defs><marker id="wb1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="135" y="30" font-weight="700" fill="#c4b5fd">AI does well</text>
              <text x="625" y="30" font-weight="700" fill="#6ee7b7">Only you bring</text>
              <g font-size="12">
                <rect x="20" y="48" width="230" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="135" y="71">Idea lists</text>
                <rect x="20" y="96" width="230" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="135" y="119">Outline options</text>
                <rect x="20" y="144" width="230" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="135" y="167">Grammar and clarity</text>
                <rect x="20" y="192" width="230" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="135" y="215">Feedback on a draft</text>
                <rect x="20" y="240" width="230" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="135" y="263">Headline options</text>
                <rect x="510" y="48" width="230" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="625" y="71">Your trips and receipts</text>
                <rect x="510" y="96" width="230" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="625" y="119">Real people you met</text>
                <rect x="510" y="144" width="230" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="625" y="167">Your honest opinions</text>
                <rect x="510" y="192" width="230" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="625" y="215">Your voice and humour</text>
                <rect x="510" y="240" width="230" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="625" y="263">The final fact check</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#wb1a)">
                <line x1="250" y1="66" x2="298" y2="140"/>
                <line x1="250" y1="114" x2="298" y2="150"/>
                <line x1="250" y1="162" x2="298" y2="162"/>
                <line x1="250" y1="210" x2="298" y2="174"/>
                <line x1="250" y1="258" x2="298" y2="184"/>
                <line x1="510" y1="66" x2="462" y2="140"/>
                <line x1="510" y1="114" x2="462" y2="150"/>
                <line x1="510" y1="162" x2="462" y2="162"/>
                <line x1="510" y1="210" x2="462" y2="174"/>
                <line x1="510" y1="258" x2="462" y2="184"/>
              </g>
              <rect x="300" y="122" width="160" height="80" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="156" font-weight="700">A Slow Roads</text>
              <text x="380" y="176" font-weight="700">blog post</text>
              <text x="380" y="306" font-size="12" fill="#9b99b8">AI speeds up the work. You make it true, and you make it yours.</text>
            </g>
          </svg>
          <figcaption>AI helps with the "how" of writing. Readers come back for what only you can give: real experience, real people and your own voice.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI can and cannot do for a writer</h3>
          <p>An AI assistant is a tool that predicts likely words. It learned from a huge amount of text. So it writes smooth, average sentences very fast. It does not remember your trip. It was not on the bus. It can also state wrong facts in a confident tone.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Can AI help?</th><th>What you still do</th></tr></thead>
            <tbody>
              <tr><td>Finding ideas for posts</td><td>Yes, very fast. It gives 20 ideas in a minute.</td><td>Pick the ideas your readers need and you can write from experience.</td></tr>
              <tr><td>Planning a post</td><td>Yes. It suggests outlines and sections.</td><td>Change the order to fit your real story.</td></tr>
              <tr><td>Fixing grammar and clarity</td><td>Yes. It finds long sentences and unclear parts.</td><td>Accept only the changes that still sound like you.</td></tr>
              <tr><td>Giving feedback on a draft</td><td>Yes. It can read like a first-time reader.</td><td>Decide which feedback is useful.</td></tr>
              <tr><td>Facts, prices, times, laws</td><td>Only as a starting point</td><td>Check every one in a reliable source.</td></tr>
              <tr><td>Your experience and opinions</td><td>No</td><td>This is your job. It is also why people read you.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: the "AI voice" and Meera's voice</h3>
          <p>Meera asked an AI tool: "Write an intro for a blog post about Hadoti." Here is the kind of answer she got:</p>
          <pre><code>Nestled in the heart of Rajasthan, Hadoti is a hidden gem
        waiting to be discovered. With its breathtaking stepwells
        and rich history, this charming region offers an
        unforgettable experience for every traveller.</code></pre>
          <p>It is correct English. But it could describe any town. It has no fact you can check and no person in it. Words like "hidden gem" and "breathtaking" appear in thousands of travel posts. Now read Meera's own opening:</p>
          <pre><code>The 7:15 bus to Hadoti left at 7:40. Nobody minded. A man
        across the aisle shared his peanuts with me and asked why
        I was going to Hadoti "when the big city has everything". By the
        time we stopped for tea, I had three recommendations for
        kachori and one for a cousin's guesthouse.</code></pre>
          <p>Her version has a real time, a real person and a small funny moment. Only she could write it. This is her <strong>voice</strong>: the way her writing sounds, from her word choices, sentence length, humour and details.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a blog post about Hadoti.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are my notes from a bus trip to Hadoti (times, costs,
        people I met). Do not write the post. Tell me which 3
        moments are the strongest opening, and what details a
        reader would still want to know.</code></pre>
          <p>The better prompt uses AI as a helper. Meera still writes the words.</p>
        </div>
        <div class="lc-card">
          <h3>Three rules for keeping your voice</h3>
          <ul class="lc-list">
            <li><strong>Start from your own material.</strong> Give AI your notes, photos, receipts and first draft. Do not start from an empty prompt.</li>
            <li><strong>Ask for suggestions, not replacements.</strong> "Point out unclear sentences" is safer than "rewrite this".</li>
            <li><strong>Read every AI change out loud.</strong> If it does not sound like you, undo it.</li>
          </ul>
          <p>Remember two more things. AI can be wrong, so check facts before you publish. And do not paste private details into public AI tools, such as a reader's email or a guesthouse owner's phone number.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: AI's job or Meera's job?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Meera is writing a post about a weekend in Hadoti. Sort each task: can AI do it well, or must Meera do it herself?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI can help well"></div>
              <div data-sorter-target="bucket" data-bucket="me" data-label="Meera must do it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Listing ideas is fast for AI. Meera then picks the ones that fit her readers.">List 15 possible titles for the post</li>
              <li data-bucket="me" data-why="Only Meera knows what happened on her trip. AI would have to invent it.">Describe the guesthouse owner who fixed her broken bag</li>
              <li data-bucket="ai" data-why="Finding long or unclear sentences is a good editing job for AI.">Point out sentences that are too long</li>
              <li data-bucket="me" data-why="The real cost comes from her receipts. AI does not know what she paid.">Give the true total cost of the weekend</li>
              <li data-bucket="ai" data-why="AI can suggest structures. Meera changes them to fit her story.">Suggest two ways to organise the sections</li>
              <li data-bucket="me" data-why="An honest opinion must come from the person who was there.">Say whether Hadoti is worth visiting in May heat</li>
              <li data-bucket="me" data-why="AI can make mistakes. The writer is responsible for every fact she publishes.">Do the final check of bus times and prices</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find the details that make your writing yours. Paste one of your own paragraphs in place of Meera's, or keep hers to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a kind, honest writing coach. Use simple English.

        I write [a travel blog about slow, low-cost trips in Rajasthan by bus and train]. My readers are [people who take short, low-budget trips and want honest costs].

        Here is a paragraph I wrote:
        [The 7:15 bus to Hadoti left at 7:40. Nobody minded. A man across the aisle shared his peanuts with me and asked why I was going to Hadoti "when the big city has everything". By the time we stopped for tea, I had three recommendations for kachori and one for a cousin's guesthouse.]

        Please:
        1. Write a generic version of the same paragraph, the way a typical AI would.
        2. Make a table: what my version has that the generic one does not (for example real times, real people, humour).
        3. List any words in my paragraph that sound generic, if there are any.
        4. Give me 5 questions to ask myself before my next post, to find more "only-me" details.
        Do not rewrite my paragraph. Do not add facts I did not give you.</pre>
            <ul class="ai-try-checks">
              <li>Did it leave your paragraph unchanged, as you asked?</li>
              <li>Does the table name real details from your text, not general praise?</li>
              <li>Are the 5 questions about your own experience, not about "SEO tricks"?</li>
              <li>Did it add any facts or places you did not mention? Remove them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI makes average writing cheap and fast. That makes your real experience and your own voice more valuable, not less. Use AI to help with the work around the writing. Keep the true stories, the opinions and the final check for yourself.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Where AI Helps Writers</h1>
        </div>
        <p class="lc-lead">Writing a blog post has many steps: finding an idea, planning, research, drafting, editing and getting feedback. AI can help at each step. But each step also has a risk. Your posts can start to sound like everyone else's. AI can add wrong facts. It can repeat other people's words too closely. In this lesson, you will learn where AI saves Meera real time, and where she must stay in charge.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Six writing steps in a row: ideas, outline, research, draft, edit and feedback. Under each step, one row shows how AI helps and a second row shows the main risk.">
            <defs><marker id="wb2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="20" width="108" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="66" y="45" font-weight="700">Ideas</text>
              <rect x="137" y="20" width="108" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="191" y="45" font-weight="700">Outline</text>
              <rect x="262" y="20" width="108" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="316" y="45" font-weight="700">Research</text>
              <rect x="387" y="20" width="108" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="441" y="45" font-weight="700">Draft</text>
              <rect x="512" y="20" width="108" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="566" y="45" font-weight="700">Edit</text>
              <rect x="637" y="20" width="108" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="691" y="45" font-weight="700">Feedback</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#wb2a)">
                <line x1="121" y1="40" x2="134" y2="40"/>
                <line x1="246" y1="40" x2="259" y2="40"/>
                <line x1="371" y1="40" x2="384" y2="40"/>
                <line x1="496" y1="40" x2="509" y2="40"/>
                <line x1="621" y1="40" x2="634" y2="40"/>
              </g>
              <text x="12" y="80" font-size="11" fill="#c4b5fd" text-anchor="start">AI helps</text>
              <g font-size="11">
                <rect x="12" y="87" width="108" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="66" y="110">20 ideas</text><text x="66" y="128">in a minute</text>
                <rect x="137" y="87" width="108" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="191" y="110">3 possible</text><text x="191" y="128">structures</text>
                <rect x="262" y="87" width="108" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="316" y="110">questions,</text><text x="316" y="128">summaries</text>
                <rect x="387" y="87" width="108" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="441" y="110">help when</text><text x="441" y="128">you are stuck</text>
                <rect x="512" y="87" width="108" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="566" y="110">clarity,</text><text x="566" y="128">grammar</text>
                <rect x="637" y="87" width="108" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="691" y="110">a first-time</text><text x="691" y="128">reader's view</text>
              </g>
              <text x="12" y="163" font-size="11" fill="#f9a8d4" text-anchor="start">Main risk</text>
              <g font-size="11">
                <rect x="12" y="170" width="108" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="66" y="193">same ideas as</text><text x="66" y="211">everyone</text>
                <rect x="137" y="170" width="108" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="191" y="193">a generic</text><text x="191" y="211">shape</text>
                <rect x="262" y="170" width="108" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="316" y="193">made-up facts</text><text x="316" y="211">and sources</text>
                <rect x="387" y="170" width="108" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="441" y="193">sounds like</text><text x="441" y="211">AI, not you</text>
                <rect x="512" y="170" width="108" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="566" y="193">your voice</text><text x="566" y="211">gets flattened</text>
                <rect x="637" y="170" width="108" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="691" y="193">too much</text><text x="691" y="211">praise</text>
              </g>
              <text x="380" y="244" font-size="11" fill="#9b99b8">For every step: you choose, you check, you write the final words.</text>
            </g>
          </svg>
          <figcaption>AI can help at every step of writing a post. Each step has its own risk, so you stay in charge of choices, facts and final words.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Six places AI helps, with a good prompt for each</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>A good way to ask</th><th>What Meera still decides</th></tr></thead>
            <tbody>
              <tr><td><strong>Ideas</strong></td><td>"My readers want low-cost weekend trips by train. Suggest 20 post ideas. Mark the ones that need first-hand experience."</td><td>Which ideas she has really lived</td></tr>
              <tr><td><strong>Outline</strong></td><td>"Here are my trip notes. Suggest 3 different ways to order them."</td><td>The order that fits her story</td></tr>
              <tr><td><strong>Research</strong></td><td>"What questions will a first-time visitor to Hadoti have? List them. Do not answer."</td><td>Where to find true answers</td></tr>
              <tr><td><strong>Draft</strong></td><td>"I am stuck on this section. Ask me 5 questions that help me write it."</td><td>The actual words</td></tr>
              <tr><td><strong>Edit</strong></td><td>"Mark sentences over 20 words and any unclear parts. Do not change my tone."</td><td>Which changes to accept</td></tr>
              <tr><td><strong>Feedback</strong></td><td>"Read this as a tired commuter on a phone. Where would you stop reading?"</td><td>What to fix and what to keep</td></tr>
            </tbody>
          </table>
          <p>Notice the pattern. Each prompt gives context and asks AI to support Meera's work. None of them says "write my post".</p>
        </div>
        <div class="lc-card">
          <h3>The three big risks</h3>
          <ul class="lc-list">
            <li><strong>Sameness.</strong> AI gives the most common answer. If many bloggers ask "top things to do in Mewar", they get similar lists. Readers and search engines have seen those lists many times. Your own angle is what makes a post worth reading.</li>
            <li><strong>Errors.</strong> AI can invent bus times, prices, dates, laws and even sources. This is often called a <em>hallucination</em>: a confident answer that is not true. Check every fact before you publish.</li>
            <li><strong>Plagiarism.</strong> Plagiarism means using someone else's words or ideas as your own without credit. AI output can sometimes be close to text it learned from. If a sentence feels too polished or too specific, search for it in quotes on Google.</li>
          </ul>
          <p>There is a fourth, smaller risk: <strong>flattery</strong>. AI tools often praise your draft too much. Ask for problems directly: "List the 3 weakest parts. Be honest."</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: feedback, not a rewrite</h3>
          <p>Meera had a draft of "Shekhawati Havelis: A Two-Day Slow Walk". It felt slow in the middle. Here are two ways to ask for help.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Improve this blog post.</code></pre>
          <p>The AI rewrote everything. It added "breathtaking frescoes" and "a journey through time". It also added an entry fee that Meera never wrote. Her voice was gone.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are an editor for a travel blog with a plain, honest voice.
        Read my draft below. Do not rewrite it.
        1. Where does the middle feel slow? Quote the first few words.
        2. Which paragraphs could be cut or joined?
        3. What would a first-time visitor still want to know?
        Do not add facts, prices or places.</code></pre>
          <p>The AI said paragraphs 4 to 6 repeated the same idea about painted walls. It also said readers would want to know how she got between the towns. Meera joined three paragraphs into one and added her bus details. She kept every sentence in her own words.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a feedback session with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Meera asks">Here is my draft about going to Hadoti by local bus. Act as a first-time reader. Tell me where you get confused. Do not rewrite it.</li>
              <li data-kind="answer" data-label="AI replies">"The start is strong. In paragraph 3 it is not clear where the bus stand is. You also mention 'the second bus' but never say you changed buses. The bus takes about 3 hours."</li>
              <li data-kind="thought" data-label="Meera thinks">The first two points are useful. But I never wrote how long the bus took. Where did "about 3 hours" come from?</li>
              <li data-kind="warn" data-label="Catch the error">The AI added a travel time that was not in the draft. It may be wrong. Meera's ticket and notes are the real source. She does not use the AI's number.</li>
              <li data-kind="tool" data-label="Meera checks">She opens her notebook and her ticket photo. They show the departure time, the arrival time and the fare she paid.</li>
              <li data-kind="result" data-label="What she finds">Her own notes give a different journey time. She writes her real times into the post and adds the name of the bus stand.</li>
              <li data-kind="check" data-label="Final check">She reads the changed paragraphs aloud. They still sound like her. She saves the version and notes that the times came from her own trip.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get honest editor feedback on a paragraph, without losing your voice. Paste your own paragraph, or keep the sample to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a strict but kind editor for a small blog. My voice is [plain, warm, first person, with real costs and small funny moments]. My reader is [a 31-year-old teacher who reads on her phone and wants honest, low-cost trip advice].

        Here is my draft paragraph:
        [Shekhawati is full of havelis. The havelis have painted walls. Many of the walls are painted with pictures. The pictures show trains, gods and people. Some havelis are open and some are closed. I walked for many hours and saw many havelis. It was very nice and I liked it a lot.]

        Please do NOT rewrite my paragraph. Instead:
        1. List the 3 weakest parts. Quote the exact words.
        2. For each one, explain the problem in one sentence.
        3. Ask me 3 questions that would help me add real details.
        4. List any words that sound vague or repeated.
        5. Tell me one thing that works well, only if something really does.
        Do not add facts, prices or places. Keep your answer under 250 words.</pre>
            <ul class="ai-try-checks">
              <li>Did it quote your exact words instead of rewriting them?</li>
              <li>Are its questions about your real experience (which town, what you saw, what it cost)?</li>
              <li>Did it add any fact, price or place name? If yes, ignore that part.</li>
              <li>Was it honest, or did it only praise you?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The safest and most useful way to use AI is as an assistant who asks questions and points out problems. Ask for ideas, structure and feedback. Keep the facts, the choices and the final words in your own hands.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Honesty, Copyright and Disclosure</h1>
        </div>
        <p class="lc-lead">Readers trust a writer who is honest. That trust is hard to win back once it is lost. In this lesson, you will learn about originality and plagiarism. You will learn who owns AI-written text in India and the US, and what Google and some publishing platforms say about AI content. You will also learn how to tell readers about your AI use in a simple, honest way. This lesson is general education, not legal advice. Laws and platform rules change, so check the current official pages, and ask a qualified lawyer for real decisions.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A decision tree. Did AI create text, images or a translation that you publish? If no, and AI only edited or gave ideas, usually no label is needed but check the platform rules. If yes, does the platform or publisher ask about AI? If yes, declare it as they ask. If no, add a short note for readers. At the bottom: never copy others' words or pretend AI text is your own experience.">
            <defs><marker id="wb3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="180" y="12" width="400" height="54" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="35" font-weight="700">Did AI create text, images or a</text>
              <text x="380" y="55" font-weight="700">translation that you publish?</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#wb3a)">
                <line x1="260" y1="66" x2="190" y2="106"/>
                <line x1="500" y1="66" x2="570" y2="106"/>
                <line x1="170" y1="166" x2="170" y2="196"/>
                <line x1="530" y1="166" x2="482" y2="196"/>
                <line x1="610" y1="166" x2="658" y2="196"/>
              </g>
              <text x="200" y="86" font-size="12" fill="#9b99b8">No</text>
              <text x="560" y="86" font-size="12" fill="#9b99b8">Yes</text>
              <rect x="20" y="110" width="300" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="170" y="133">AI-assisted: you wrote it,</text>
              <text x="170" y="153" font-size="12" fill="#9b99b8">AI only edited or gave ideas</text>
              <rect x="420" y="110" width="320" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="580" y="133">Does the platform or</text>
              <text x="580" y="153">publisher ask about AI?</text>
              <rect x="20" y="200" width="300" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="170" y="223">Usually no label needed</text>
              <text x="170" y="243" font-size="12" fill="#9b99b8">Still check the platform's rules</text>
              <rect x="400" y="200" width="165" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="482" y="223">Yes: declare it</text>
              <text x="482" y="243" font-size="12" fill="#9b99b8">the way they ask</text>
              <rect x="580" y="200" width="165" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="662" y="223">No: add a short</text>
              <text x="662" y="243" font-size="12" fill="#9b99b8">note for readers</text>
              <text x="470" y="186" font-size="11" fill="#9b99b8">Yes</text>
              <text x="652" y="186" font-size="11" fill="#9b99b8">No</text>
              <rect x="20" y="276" width="720" height="42" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="302">Never: copy others' words, or pass off AI text as your own trip.</text>
            </g>
          </svg>
          <figcaption>A simple way to think about disclosure. Platform rules come first. Honesty with readers is always the goal.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Originality and plagiarism</h3>
          <p><strong>Plagiarism</strong> means using someone else's words or ideas as your own, without credit. It is an honesty problem, even when no law is broken. With AI, it can happen in three ways:</p>
          <ul class="lc-list">
            <li>AI output is sometimes close to a text it learned from.</li>
            <li>A writer copies another blog and asks AI to "reword it so it is not plagiarism". This is still copying the other writer's work and research.</li>
            <li>A writer publishes AI text about a place as if it were a first-hand trip report. The reader is misled about experience, even if every word is "new".</li>
          </ul>
          <p>How Meera protects her work:</p>
          <ul class="lc-list">
            <li>She writes from her own notes, photos and receipts.</li>
            <li>When she uses another writer's idea or fact, she credits and links to them.</li>
            <li>She searches any unusual sentence from an AI suggestion in quotes on Google.</li>
            <li>She does not rely on "AI detectors". These tools often give wrong results, both ways.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Who owns AI-written text? India and the US</h3>
          <p><strong>Copyright</strong> is the legal right to control copies of a creative work you made, like a blog post or a book. Here is the general position, as of September 2026:</p>
          <table class="lc-table">
            <thead><tr><th></th><th>United States</th><th>India</th></tr></thead>
            <tbody>
              <tr><td><strong>Main rule</strong></td><td>Copyright needs a human author. The US Copyright Office says purely AI-generated material is not protected.</td><td>The Copyright Act, 1957 protects original works. For a "computer-generated" work, the author is the person who causes the work to be created.</td></tr>
              <tr><td><strong>Prompts</strong></td><td>The Copyright Office's 2025 report says prompts alone are usually not enough to make you the author.</td><td>How the "computer-generated" rule applies to AI tools is not settled yet.</td></tr>
              <tr><td><strong>Your own work</strong></td><td>Your own writing is protected. Your creative choice and arrangement of material, and your real changes to AI text, can also be protected.</td><td>Your own writing is protected. In August 2026, the Indian Copyright Office refused to name an AI system as an author. A person must be the author.</td></tr>
              <tr><td><strong>Recent news</strong></td><td>In March 2026, the US Supreme Court declined to hear the Thaler case. This left the "human author" rule in place.</td><td>A government (DPIIT) committee published a working paper on AI and copyright in December 2025. More policy work may follow.</td></tr>
            </tbody>
          </table>
          <p>What this means for Meera: the parts she writes herself are clearly hers. Text that AI wrote with little change from her may have weak or no protection. Also, if AI output copies someone else's work, she is responsible for what she publishes. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>What Google and publishing platforms say</h3>
          <table class="lc-table">
            <thead><tr><th>Who</th><th>What they say, in general</th></tr></thead>
            <tbody>
              <tr><td><strong>Google Search</strong></td><td>Google says it rewards helpful, reliable content, however it was made. Using AI to make many pages without adding value for users can break its spam policy on "scaled content abuse". Google also suggests telling readers how content was made, where they would expect it.</td></tr>
              <tr><td><strong>Amazon KDP</strong> (Kindle Direct Publishing)</td><td>When you publish a book, KDP asks if it contains AI-generated content: text, images or translations made by an AI tool. You do not need to declare "AI-assisted" content: work you created and only edited, refined or brainstormed with AI.</td></tr>
              <tr><td><strong>Medium</strong></td><td>Medium has said it is for human writing. It limits AI-generated writing in its paid Partner Program and asks writers to disclose AI-assisted stories.</td></tr>
              <tr><td><strong>Magazines, contests, clients</strong></td><td>Many have their own AI rules in their submission guidelines or contracts. Read them before you submit.</td></tr>
              <tr><td><strong>AI images and video</strong></td><td>Many social platforms ask you to label realistic AI images and video. India's 2026 IT Rules changes also require labels for realistic AI-made audio and visual content. They apply mainly to platforms, not to text-only posts.</td></tr>
            </tbody>
          </table>
          <p>These rules change often. Check each platform's current help pages before you publish.</p>
          <p><strong>Telling your readers.</strong> Even when no rule asks, a short, honest note builds trust. Meera added this to her About page:</p>
          <pre><code>How I use AI: I use AI tools to suggest ideas, check my
        grammar and give me feedback on drafts. Every trip, cost
        and opinion on Slow Roads is my own. I check facts myself
        before I publish. If a photo is made with AI, I label it.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: label it, or do not do it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each thing Meera might do with AI. Assume she follows the platform rules described in this lesson.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fine" data-label="Fine, usually no label"></div>
              <div data-sorter-target="bucket" data-bucket="tell" data-label="Declare or tell readers"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not do this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fine" data-why="This is AI-assisted editing of her own writing. Most rules do not ask for a label. She may still mention it on her About page.">Using AI to fix grammar in a post she wrote</li>
              <li data-bucket="fine" data-why="Brainstorming is AI-assisted. She chooses and writes the final title herself.">Asking AI for 20 title ideas, then writing her own</li>
              <li data-bucket="tell" data-why="KDP asks about AI-generated images, and cover art counts. She must answer the question honestly.">An AI-made cover image for her Kindle ebook</li>
              <li data-bucket="tell" data-why="KDP treats AI translations as AI-generated. On her blog, a short note tells readers how the Hindi version was made.">A Hindi version of her post, translated by AI and checked by her</li>
              <li data-bucket="tell" data-why="A realistic AI image could make readers think it is a real photo. Label it clearly, or use her own photo.">An AI-made picture of a Hadoti street at the top of a post</li>
              <li data-bucket="no" data-why="Rewording another writer's post is still using their work without credit. It is plagiarism.">Copying another blog's post and asking AI to "reword it"</li>
              <li data-bucket="no" data-why="She never went there. Presenting AI text as her own trip misleads readers, even with a label.">Publishing an AI-written "my trip to the Thar Desert" without going</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Write your own short "How I use AI" note, and a checklist for each post. Change the details in brackets to match your work.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a blogger be honest with readers about AI use. Use simple English. This is not legal advice.

        About me: I write [Slow Roads, a travel blog and free newsletter about low-cost trips in Rajasthan].
        How I use AI: [I use AI to brainstorm ideas, suggest outlines, check grammar and give feedback on drafts. I write every post myself from my own trips. I sometimes use AI to make a Hindi translation, and I check it.]
        Where I publish: [my own blog, a newsletter, Instagram, and maybe a Kindle ebook later]

        Please write:
        1. A "How I use AI" note for my About page. 60 to 90 words, warm and plain, first person.
        2. A one-line note I can add to a post when AI helped with a translation or an image.
        3. A 6-point checklist I can use before I publish any post (originality, credit, facts, images, platform rules).
        4. A list of questions I should check on each platform's current help pages, because rules change.
        Do not state exact laws or platform rules as facts. Tell me to check the official pages.</pre>
            <ul class="ai-try-checks">
              <li>Is the note true to how you really use AI? Remove anything you do not do.</li>
              <li>Does it sound like you, not like a company policy?</li>
              <li>Does the checklist include giving credit and checking facts?</li>
              <li>Did it avoid stating laws or rules as certain facts?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The laws on AI and copyright are still changing, but honesty is simple. Write from your own experience, give credit, follow each platform's rules and tell readers how you use AI. The more of the work that is truly yours, the stronger your claim to it.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Finding Your Topics and Readers</h1>
        </div>
        <p class="lc-lead">A blog for "everyone" is read by almost no one. Good blogs have a clear <strong>niche</strong> (a narrow subject for a clear group of readers) and a clear picture of who they write for. In this lesson, you will narrow your niche. You will build a reader persona from real data. Then you will make a topic list you can use for months. AI helps you sort data and find patterns. You bring the real data and the final choices.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A funnel from broad to narrow. Travel is too broad. Travel in Rajasthan and North India is still broad. Slow, low-cost trips by bus and train is Meera's niche. Neha, 31, weekend trips under 5,000 rupees is her reader. The funnel leads to a topic list of 12 topics in 4 pillars.">
            <defs><marker id="wb4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g font-size="11" fill="#9b99b8" text-anchor="start">
                <text x="10" y="45">Too broad</text>
                <text x="10" y="100">Still broad</text>
                <text x="10" y="155">Your niche</text>
                <text x="10" y="210">Your reader</text>
              </g>
              <rect x="100" y="20" width="560" height="42" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="380" y="46">Travel</text>
              <rect x="140" y="75" width="480" height="42" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="101">Travel in Rajasthan and North India</text>
              <rect x="180" y="130" width="400" height="42" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="156" font-weight="700">Slow, low-cost trips by bus and train</text>
              <rect x="210" y="185" width="340" height="42" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="211" font-weight="700">Neha, 31: weekend trips under ₹5,000</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#wb4a)">
                <line x1="380" y1="227" x2="380" y2="247"/>
              </g>
              <rect x="230" y="250" width="300" height="42" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="276" font-weight="700">Topic list: 12 topics, 4 pillars</text>
              <text x="675" y="211" font-size="11" fill="#9b99b8">from real data</text>
            </g>
          </svg>
          <figcaption>Narrow the subject until you can picture one real reader. Then plan topics for that reader.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: a clear niche</h3>
          <p>Your niche is where three things meet: what you know from experience, what a group of readers needs, and what few others write about well.</p>
          <table class="lc-table">
            <thead><tr><th>Too broad</th><th>Clear niche</th></tr></thead>
            <tbody>
              <tr><td>Travel blog</td><td>Meera: slow, low-cost trips in Rajasthan and North India by bus and train</td></tr>
              <tr><td>Food blog</td><td>Riya ("Tiffin Tales"): quick lunch-box recipes for working people in Maharashtra</td></tr>
              <tr><td>Tech blog</td><td>Kabir: simple explainers of phone and app features for first-time smartphone users</td></tr>
            </tbody>
          </table>
          <p>A test for your niche: can you name 20 posts you could write from your own experience? If not, it may be too narrow. Could a big travel website write the same posts? If yes, it may be too broad.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: a reader persona from real data</h3>
          <p>A <strong>reader persona</strong> is a short, made-up profile of one typical reader. It is based on real data about your readers. It helps you decide what to write and how to write it. Meera used three sources:</p>
          <ul class="lc-list">
            <li><strong>Her analytics.</strong> Her blog had 6,400 page views (times a page was opened) in the last 30 days. Her top 5 posts got 4,520 of them (70.6%). The top one, "By Local Bus to Hadoti", got 1,450 (22.7%).</li>
            <li><strong>A one-question survey</strong> in her newsletter. 64 readers replied. They could tick more than one answer.</li>
            <li><strong>Reader emails and comments.</strong> She removed names and email addresses before she pasted them into an AI tool.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Survey answer</th><th>Replies</th><th>Share of 64</th></tr></thead>
            <tbody>
              <tr><td>I want weekend trips that cost under ₹5,000</td><td>38</td><td>59%</td></tr>
              <tr><td>I travel only by train or bus</td><td>26</td><td>41%</td></tr>
              <tr><td>I travel solo</td><td>19</td><td>30%</td></tr>
              <tr><td>I read Slow Roads on my phone</td><td>45</td><td>70%</td></tr>
            </tbody>
          </table>
          <p>The shares add up to more than 100% because readers could tick several answers. 64 replies is a small sample, so treat it as a guide, not proof. From this, Meera wrote her persona:</p>
          <pre><code>Neha, 31, school teacher in north India.
        Takes 3 or 4 short trips a year, mostly long weekends.
        Budget: ₹3,000 to ₹6,000 for 2 or 3 days, including travel.
        Goes by train or bus, sometimes alone.
        Wants: quiet places, safe and clean stays, honest costs.
        Tired of: "Top 10" lists that all look the same.
        Reads on her phone on the metro.
        Worries: "Is it safe alone?" "What will it really cost?"</code></pre>
          <p>Check the persona against the data. The AI's first version said "Neha loves luxury heritage hotels". No data showed that. Meera deleted it.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: a topic list with pillars</h3>
          <p><strong>Content pillars</strong> are 3 to 5 main themes your blog covers again and again. They keep your topics focused. Meera's four pillars are budget weekends, slow train and bus journeys, stays and safety, and seasons and slow places.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me blog topics about Rajasthan.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is my reader persona and my 4 content pillars. Suggest
        5 topics per pillar. For each topic, say which of the
        reader's worries it answers. Mark topics that need a
        first-hand trip. Do not suggest "Top 10" list posts.</code></pre>
          <p>Then Meera scored the ideas herself, 1 to 3 on each point:</p>
          <table class="lc-table">
            <thead><tr><th>Topic</th><th>Answers a reader worry</th><th>I have been there</th><th>Few good posts exist</th><th>Total</th></tr></thead>
            <tbody>
              <tr><td>The ₹5,000 long weekend in Hadoti</td><td>3</td><td>3</td><td>2</td><td>8</td></tr>
              <tr><td>Solo woman travel in small Rajasthan towns: what I do</td><td>3</td><td>3</td><td>2</td><td>8</td></tr>
              <tr><td>How I check a guesthouse before I pay</td><td>3</td><td>3</td><td>1</td><td>7</td></tr>
              <tr><td>Luxury palace hotels of Mewar</td><td>1</td><td>1</td><td>1</td><td>3</td></tr>
            </tbody>
          </table>
          <p>AI can suggest topics, but only you can fill in "I have been there". The last topic scores low. It does not fit Neha, and many big websites already cover it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a persona and topic list in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Meera's steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down her niche in one sentence</li>
              <li data-order="2">Collect real data: top posts, a reader survey, reader emails</li>
              <li data-order="3">Remove names and email addresses from reader messages</li>
              <li data-order="4">Ask AI to find patterns and draft a persona</li>
              <li data-order="5">Delete anything in the persona that the data does not support</li>
              <li data-order="6">Ask AI for topic ideas for each content pillar</li>
              <li data-order="7">Score the topics herself and keep the best 12</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn your reader data into a persona and a topic list. Replace the sample data with your own (without names or emails), or keep Meera's to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a content planner for a small blog. Use simple English.

        My niche: [slow, low-cost trips in Rajasthan and North India by bus and train]
        My top posts, last 30 days (page views): [By Local Bus to Hadoti 1,450; Where to Stay in Mewar Under Rs 1,200 a Night 1,120; Shekhawati Havelis: A Two-Day Slow Walk 860]
        Reader survey, 64 replies, more than one answer allowed: [38 want weekend trips under Rs 5,000; 26 travel only by train or bus; 19 travel solo; 45 read on a phone]
        Things readers wrote to me: ["Is it safe for a woman alone in Hadoti?", "What did it really cost?", "Please no more top 10 lists"]

        Please:
        1. Write a reader persona in 8 short lines: name, age, job, city, trips, budget, wants, worries.
        2. After the persona, list which data supports each line. Mark any line that is a guess.
        3. Suggest 4 content pillars.
        4. Suggest 4 topics per pillar. For each, name the reader worry it answers.
        5. Put the 16 topics in a table with empty columns for me to score: "I have been there" and "Few good posts exist".
        Do not invent new survey numbers.</pre>
            <ul class="ai-try-checks">
              <li>Does every line of the persona match your data, or is it marked as a guess?</li>
              <li>Did it keep your survey numbers exactly as you gave them?</li>
              <li>Do the topics fit your niche, or has it drifted to general travel?</li>
              <li>Fill in the "I have been there" column yourself. AI cannot know this.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Picture one real reader before you write. A persona built from real data tells you what to write, what to leave out and how to sound. AI can find patterns in your data, but every line of the persona must come from something your readers actually said or did.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Research and Fact-Checking with AI</h1>
        </div>
        <p class="lc-lead">One wrong bus time or price can send a reader to an empty bus stand. One made-up quote can damage your name for years. In this lesson, you will learn how to use AI to plan research, and how to check every fact yourself. You will learn which sources to trust, how to handle quotes and how to recalculate numbers. AI is a good research assistant. It is not a source.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A six-step fact-checking workflow: draft, list claims, find a source, compare, fix or cut, and save notes. Under each step is a short detail. At the bottom: AI is not a source, and quotes must be real words from real people.">
            <defs><marker id="wb5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="20" width="108" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="66" y="46" font-size="12" font-weight="700">1. Draft</text>
              <rect x="137" y="20" width="108" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="191" y="46" font-size="12" font-weight="700">2. List claims</text>
              <rect x="262" y="20" width="108" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="316" y="46" font-size="12" font-weight="700">3. Find source</text>
              <rect x="387" y="20" width="108" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="441" y="46" font-size="12" font-weight="700">4. Compare</text>
              <rect x="512" y="20" width="108" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="566" y="46" font-size="12" font-weight="700">5. Fix or cut</text>
              <rect x="637" y="20" width="108" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="691" y="46" font-size="12" font-weight="700">6. Save notes</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#wb5a)">
                <line x1="121" y1="42" x2="134" y2="42"/>
                <line x1="246" y1="42" x2="259" y2="42"/>
                <line x1="371" y1="42" x2="384" y2="42"/>
                <line x1="496" y1="42" x2="509" y2="42"/>
                <line x1="621" y1="42" x2="634" y2="42"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <rect x="12" y="80" width="108" height="72" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="66" y="104">your notes</text><text x="66" y="120">and receipts</text><text x="66" y="136">come first</text>
                <rect x="137" y="80" width="108" height="72" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="191" y="104">every number,</text><text x="191" y="120">date, name</text><text x="191" y="136">and quote</text>
                <rect x="262" y="80" width="108" height="72" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="316" y="104">official page,</text><text x="316" y="120">ticket, or</text><text x="316" y="136">the person</text>
                <rect x="387" y="80" width="108" height="72" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="441" y="104">word for word,</text><text x="441" y="120">number for</text><text x="441" y="136">number</text>
                <rect x="512" y="80" width="108" height="72" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="566" y="104">no source?</text><text x="566" y="120">remove it or</text><text x="566" y="136">say "about"</text>
                <rect x="637" y="80" width="108" height="72" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="691" y="104">link, date</text><text x="691" y="120">checked,</text><text x="691" y="136">who said it</text>
              </g>
              <rect x="12" y="176" width="733" height="42" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="378" y="202">AI is not a source. It can point you to sources, which you must open and read.</text>
              <rect x="12" y="224" width="733" height="36" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="378" y="247" font-size="12">Quotes: only real words from real people, with their permission. Never let AI write a quote.</text>
            </g>
          </svg>
          <figcaption>Fact-checking is a routine. List every claim, find a real source, compare it exactly and keep a note of where each fact came from.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Sources: what to trust, and how much</h3>
          <p>A <strong>primary source</strong> is the original place a fact comes from, such as an official website, a ticket or the person who said something. A <strong>secondary source</strong> reports on it, such as a news story, a guidebook or another blog.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Example for Meera</th><th>How to use it</th></tr></thead>
            <tbody>
              <tr><td><strong>Your own records</strong></td><td>Her tickets, receipts, notes and dated photos</td><td>Best for "what happened to me". Say the date: prices change.</td></tr>
              <tr><td><strong>Official sources</strong></td><td>Indian Railways and state bus websites, a monument's official page</td><td>Best for current times, fares and rules. Check close to publishing.</td></tr>
              <tr><td><strong>The person</strong></td><td>A guesthouse owner she interviewed</td><td>Write down their exact words. Ask if you may quote them.</td></tr>
              <tr><td><strong>Secondary sources</strong></td><td>News reports, guidebooks, Wikipedia</td><td>Good for background. Follow them back to the original source when you can.</td></tr>
              <tr><td><strong>AI answers</strong></td><td>A chatbot's reply, even with links</td><td>A starting point only. Open every link. Check it says what the AI claims.</td></tr>
            </tbody>
          </table>
          <p>Some AI tools can search the web and show links. They are useful for finding sources quickly. But they can still link to the wrong page, or describe a page wrongly. For news claims, fact-checking sites and tools such as Google Fact Check Explorer can show if a claim has already been checked.</p>
        </div>
        <div class="lc-card">
          <h3>Quotes: the one rule you never break</h3>
          <p>A <strong>quote</strong> is someone's exact words, shown in quotation marks. Readers believe the person really said them. So:</p>
          <ul class="lc-list">
            <li><strong>Never let AI write a quote.</strong> AI can make up quotes that sound real, and add a real person's name. Publishing them is dishonest and can harm that person.</li>
            <li><strong>Famous sayings need an original source.</strong> Many "famous quotes" online are wrongly credited. If you cannot find where and when the person said it, do not use it.</li>
            <li><strong>Quotes from people you meet:</strong> write them down or record them (with permission), ask if you may use their name, and do not "improve" their words so they mean something new.</li>
            <li><strong>Translated quotes:</strong> if the person spoke in Hindi or Marwari, say that you translated it.</li>
          </ul>
          <p>If you are not sure of the exact words, do not use quotation marks. Describe what the person said instead: "The owner told me the lane floods every August."</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: recalculate every number</h3>
          <p>Meera asked AI to turn her receipts into a cost box for "The ₹5,000 Long Weekend in Hadoti". The AI wrote: "Total: ₹4,810. Well under ₹5,000!" She checked the sum in a spreadsheet. Her costs (made up for this course, from her own receipts):</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Working</th><th>Cost</th></tr></thead>
            <tbody>
              <tr><td>Bus to Hadoti and back</td><td>2 × ₹310</td><td>₹620</td></tr>
              <tr><td>Guesthouse</td><td>2 nights × ₹1,100</td><td>₹2,200</td></tr>
              <tr><td>Food</td><td>3 days × ₹450</td><td>₹1,350</td></tr>
              <tr><td>Auto-rickshaws in town</td><td>from receipts</td><td>₹600</td></tr>
              <tr><td>Entry tickets</td><td>from receipts</td><td>₹350</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>₹5,120</strong></td></tr>
            </tbody>
          </table>
          <p>The AI had counted the bus only one way: ₹5,120 − ₹310 = ₹4,810. The real total is over ₹5,000. So the title "The ₹5,000 Long Weekend" was not true either. Meera changed it to "A Long Weekend in Hadoti for About ₹5,000". She also added: "Costs from my trip in August 2026. Check current fares before you go."</p>
          <p>In Google Sheets or Excel, put the costs in C2 to C6. Then use <code>=SUM(C2:C6)</code> for the total. For a line like the guesthouse, use <code>=2*1100</code>. Never copy a total from AI without doing the sum yourself.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is my Hadoti post accurate?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>List every fact in my draft that a reader could check:
        numbers, prices, times, dates, names, places and quotes.
        Put them in a table with: the claim, the type, and the best
        kind of source to check it. Do not say if they are true.</code></pre>
          <p>The better prompt uses AI to make the checklist. Meera does the checking.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fact-checking a post, step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Meera asks">Here is my Hadoti draft. List every checkable claim in a table. Do not say if they are true.</li>
              <li data-kind="answer" data-label="AI lists claims">The table has 14 claims. They include the bus fare, the guesthouse price, the opening time of a stepwell, the total cost and a quote from the guesthouse owner.</li>
              <li data-kind="tool" data-label="Meera checks">She checks the costs against her receipts. She opens the official page for the opening time. She recalculates the total in a spreadsheet.</li>
              <li data-kind="result" data-label="What she finds">The receipts match. The opening time on the official page is different from her draft. The total is ₹5,120, not ₹4,810.</li>
              <li data-kind="warn" data-label="Catch the problem">The owner's "quote" was an AI line from an earlier draft. The owner never said it. Meera deletes it.</li>
              <li data-kind="thought" data-label="Meera decides">She messages the owner and asks for a few real words about the monsoon. She will quote only what he says, with his permission.</li>
              <li data-kind="check" data-label="Final check">She fixes the time and the total. Then she saves a source note: each claim, its source link or receipt, and the date she checked it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to turn a draft into a fact-check list. Paste a paragraph of your own, or keep the sample. Then you do the checking.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful fact-checking assistant for a blog. Use simple English.

        Here is a paragraph from my draft:
        [I took the 7:15 bus from the city bus stand to Hadoti. The ticket cost Rs 310. My guesthouse was Rs 1,100 a night, and the famous stepwell opens at 8 am. The owner told me, "Hadoti is the most beautiful place in India." In total, my 3-day weekend cost Rs 4,810.]
        My costs: [bus Rs 310 each way, 2 nights at Rs 1,100, food Rs 450 a day for 3 days, auto-rickshaws Rs 600, entry tickets Rs 350]

        Please:
        1. Make a table of every checkable claim: the claim, its type (number, price, time, place, quote, total) and the best kind of source to check it.
        2. Do NOT say whether any claim is true. You may be wrong.
        3. Recalculate the total from my costs. Show each step.
        4. Flag every quote. Remind me I need the person's exact words and permission.
        5. List any claim that needs a date, because it can change (for example prices and times).</pre>
            <ul class="ai-try-checks">
              <li>With the sample costs, the total should be Rs 5,120, not Rs 4,810. Check the sum yourself.</li>
              <li>Did it find every claim, including the bus stand, the opening time and the quote?</li>
              <li>Did it avoid saying claims are true, as you asked?</li>
              <li>Did it flag the owner's words as a quote to confirm?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to plan your checking, never to replace it. Every number, date, name and quote needs a real source that you have opened yourself. If you cannot find one, cut the claim or say "about". Never publish a quote that a real person did not say.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Outlines and Structure</h1>
        </div>
        <p class="lc-lead">A good post is easy to follow. The reader always knows where they are and what comes next. That comes from <strong>structure</strong>: the order of the parts and the job each part does. In this lesson, you will learn common structures for blog posts and personal stories. You will see how Meera asks AI for an outline, and why she changes most of it. AI is quick at giving a shape. Only you know which shape fits your real trip and your reader.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 380" role="img" aria-label="Before and after. On the left, the AI's first outline for a Hadoti post has five generic sections: introduction, history, top 10 attractions, best time to visit and conclusion. An arrow labelled Meera changes it points to her outline on the right with seven sections: the late bus, what it cost, day 1, day 2, is it safe alone, what went wrong, and plan it. A legend shows which sections come from her notes, which moved near the top and which answer a reader worry.">
            <defs><marker id="wb6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="165" y="30" font-weight="700" fill="#c4b5fd">AI's first outline</text>
              <text x="595" y="30" font-weight="700" fill="#6ee7b7">Meera's outline</text>
              <rect x="20" y="48" width="290" height="32" rx="8" fill="#1f1f44" stroke="#9b99b8"/><text x="165" y="69">1. Introduction to Hadoti</text>
              <rect x="20" y="88" width="290" height="32" rx="8" fill="#1f1f44" stroke="#9b99b8"/><text x="165" y="109">2. History of Hadoti</text>
              <rect x="20" y="128" width="290" height="32" rx="8" fill="#1f1f44" stroke="#9b99b8"/><text x="165" y="149">3. Top 10 attractions</text>
              <rect x="20" y="168" width="290" height="32" rx="8" fill="#1f1f44" stroke="#9b99b8"/><text x="165" y="189">4. Best time to visit</text>
              <rect x="20" y="208" width="290" height="32" rx="8" fill="#1f1f44" stroke="#9b99b8"/><text x="165" y="229">5. Conclusion</text>
              <text x="165" y="270" font-size="12" fill="#9b99b8">Could be about any town.</text>
              <text x="165" y="290" font-size="12" fill="#9b99b8">Nothing from her trip.</text>
              <line x1="320" y1="188" x2="438" y2="188" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#wb6a)"/>
              <text x="380" y="176" font-size="12" fill="#9b99b8">Meera changes it</text>
              <rect x="450" y="48" width="290" height="32" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="595" y="69">1. The 7:15 bus that left at 7:40</text>
              <rect x="450" y="88" width="290" height="32" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="595" y="109">2. What it cost: ₹5,120 in total</text>
              <rect x="450" y="128" width="290" height="32" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="595" y="149">3. Day 1: two stepwells, slowly</text>
              <rect x="450" y="168" width="290" height="32" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="595" y="189">4. Day 2: old town and kachori</text>
              <rect x="450" y="208" width="290" height="32" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="595" y="229">5. Is it safe alone? What I did</text>
              <rect x="450" y="248" width="290" height="32" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="595" y="269">6. What went wrong</text>
              <rect x="450" y="288" width="290" height="32" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="595" y="309">7. Plan it: buses, stays, costs</text>
              <g font-size="12" text-anchor="start">
                <rect x="40" y="347" width="14" height="14" rx="3" fill="#1f1f44" stroke="#10b981"/><text x="62" y="359">From her own trip notes</text>
                <rect x="270" y="347" width="14" height="14" rx="3" fill="#1f1f44" stroke="#f59e0b"/><text x="292" y="359">Moved near the top</text>
                <rect x="480" y="347" width="14" height="14" rx="3" fill="#1f1f44" stroke="#ec4899"/><text x="502" y="359">Answers a reader worry</text>
              </g>
            </g>
          </svg>
          <figcaption>AI's first outline was correct but generic. Meera kept the idea of sections and rebuilt them from her notes and her reader's worries.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Common structures for blog posts</h3>
          <p>An <strong>outline</strong> is a list of the sections of a post, in order, with a note on what each one says. Most blog posts use one of a few structures. Pick the one that matches what your reader wants to do.</p>
          <table class="lc-table">
            <thead><tr><th>Structure</th><th>Best when the reader wants to…</th><th>Slow Roads example</th></tr></thead>
            <tbody>
              <tr><td><strong>Trip story with a plan</strong></td><td>feel the trip, then copy it</td><td>A Long Weekend in Hadoti for About ₹5,000</td></tr>
              <tr><td><strong>How-to (steps)</strong></td><td>do a task in the right order</td><td>How I book Rajasthan buses (and what goes wrong)</td></tr>
              <tr><td><strong>Comparison</strong></td><td>choose between two or three options</td><td>Homestays vs hotels under ₹1,500</td></tr>
              <tr><td><strong>Checklist</strong></td><td>check or pack things quickly</td><td>How I check a guesthouse before I pay</td></tr>
              <tr><td><strong>Short list with a point of view</strong></td><td>get a few picks and the reasons</td><td>Five train journeys worth taking slowly</td></tr>
            </tbody>
          </table>
          <p>Some parts help almost every structure. Put a short summary or cost box near the top. Use clear subheadings. End with a "plan it" section: how to get there, where to stay and what it cost. Meera's reader, Neha, reads on her phone on the metro. So she needs to find the answer to "What will it really cost?" without scrolling far.</p>
        </div>
        <div class="lc-card">
          <h3>Story structures for personal posts</h3>
          <p>Some posts are not guides. They are personal essays, like "Why I stopped planning every hour". These need a story shape. A simple one has five parts:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it does</th><th>In Meera's post</th></tr></thead>
            <tbody>
              <tr><td><strong>Before</strong></td><td>Shows how things were</td><td>She planned trips like exams. Every hour had a job.</td></tr>
              <tr><td><strong>Turning point</strong></td><td>Something happens</td><td>A flat tyre outside Mandawa gave her a free afternoon.</td></tr>
              <tr><td><strong>Change</strong></td><td>What she noticed or learned</td><td>The free afternoon was the best part of the trip.</td></tr>
              <tr><td><strong>Now</strong></td><td>How she does it today</td><td>She plans the mornings and leaves the afternoons empty.</td></tr>
              <tr><td><strong>For you</strong></td><td>What the reader can try</td><td>One practical tip for planning a slower weekend.</td></tr>
            </tbody>
          </table>
          <p>AI can suggest a story shape like this. But the turning point must be a real event. If you have no real turning point, write a guide instead.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: an AI outline that Meera changes</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an outline for a blog post about Hadoti.</code></pre>
          <p>The AI gave the five sections on the left of the diagram. It is a correct outline for "a post about Hadoti". It is not an outline for Meera's post. It has a history section she has no notes for. It has a "Top 10" list, which Neha is tired of. It has no costs and nothing about safety.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are an editor. My reader is Neha, 31, a teacher in north India
        who reads on her phone and wants honest costs and safe stays.
        Here are my trip notes from Hadoti. Suggest 2 outlines: one
        story-led, one practical. Under each section, list which of
        my notes it uses. Mark sections with no notes. Do not write
        the post. Do not add facts.</code></pre>
          <p>Then Meera made her own choices:</p>
          <ul class="lc-list">
            <li><strong>She cut</strong> the history section. She had no notes for it, and a short line in the Day 1 section was enough.</li>
            <li><strong>She moved the cost box up</strong> to section 2, because cost is Neha's first worry.</li>
            <li><strong>She added</strong> "Is it safe alone? What I did". She walked alone at dusk and stayed on busy lanes. That is real experience, and 19 of her 64 survey replies came from solo travellers.</li>
            <li><strong>She added</strong> "What went wrong". She missed the return bus by 10 minutes. Honest problems are part of her voice.</li>
          </ul>
          <p>Before you write, test your outline. Does every section have real notes behind it? Does each heading tell a phone reader what the section is about? Would Neha find the cost in the first screen or two?</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from notes to a final outline</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Meera's outline steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Gather her trip notes, receipts and dated photos</li>
              <li data-order="2">Write the post's promise to Neha in one sentence</li>
              <li data-order="3">Pick a structure: trip story, how-to, comparison or checklist</li>
              <li data-order="4">Ask AI for two outline options built from her notes</li>
              <li data-order="5">Cut sections that have no real notes behind them</li>
              <li data-order="6">Add or move sections to answer Neha's worries early</li>
              <li data-order="7">Check that every heading is clear on a phone screen</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get two outline options built only from your own notes. Replace the sample notes with notes from your own trip or topic, or keep Meera's to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an editor who plans posts for [a slow, low-cost travel blog about Rajasthan]. Use simple English.

        My reader: [Neha, 31, a teacher in north India. She reads on her phone. She wants honest costs and safe stays. She worries: "Is it safe alone?" and "What will it really cost?"]
        Post idea: [A long weekend in Hadoti for about Rs 5,000]
        My notes: [7:15 bus left at 7:40; a man shared peanuts; total cost Rs 5,120 from receipts; guesthouse Rs 1,100 a night, hot water worked; two stepwells on day 1; kachori in the old town; walked alone at dusk on busy lanes; missed the return bus by 10 minutes]

        Please:
        1. Give 2 outlines: one story-led, one practical guide. 5 to 7 sections each, with clear headings.
        2. Under each section, list which of my notes it uses.
        3. Mark any section with no notes as "NEEDS MY INPUT".
        4. Say which outline fits my reader better, in 2 sentences.
        5. List 3 questions my reader may still have.
        Do not write the post. Do not add facts, prices or places I did not give you.</pre>
            <ul class="ai-try-checks">
              <li>Does every section link to one of your real notes, or is it marked "NEEDS MY INPUT"?</li>
              <li>Is the cost near the top in at least one outline?</li>
              <li>Did it add any history, prices or places you did not give? Remove them.</li>
              <li>Now change the order yourself. The final outline is your decision.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An AI outline is a first sketch, not a plan. Keep only the sections your real notes can fill. Then order them by what your reader needs first. A post built this way is easy to read and hard to copy.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Drafting in Your Own Voice</h1>
        </div>
        <p class="lc-lead">Your <strong>voice</strong> is the way your writing sounds: your word choices, sentence length, humour and the details you notice. Readers who like your voice come back for it. In this lesson, you will build a voice guide from your own best writing. You will learn how to give AI your samples so its feedback fits your style. You will also learn which parts of a post you should always write yourself, and why AI "in your voice" can be dangerous.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A five-step workflow: three samples of your own writing, then a voice guide, then your own draft, then an AI voice check that flags lines that sound unlike you, then your final version where you accept or undo each change. A bar at the bottom says you write the stories, costs, people and opinions yourself.">
            <defs><marker id="wb7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="30" width="128" height="96" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="76" y="58" font-weight="700">3 samples</text>
              <text x="76" y="84" font-size="11" fill="#9b99b8">your best posts,</text>
              <text x="76" y="102" font-size="11" fill="#9b99b8">not AI text</text>
              <rect x="164" y="30" width="128" height="96" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="228" y="58" font-weight="700">Voice guide</text>
              <text x="228" y="84" font-size="11" fill="#9b99b8">always and never,</text>
              <text x="228" y="102" font-size="11" fill="#9b99b8">with examples</text>
              <rect x="316" y="30" width="128" height="96" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="58" font-weight="700">Your draft</text>
              <text x="380" y="84" font-size="11" fill="#9b99b8">your words,</text>
              <text x="380" y="102" font-size="11" fill="#9b99b8">from your notes</text>
              <rect x="468" y="30" width="128" height="96" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="532" y="58" font-weight="700">AI voice check</text>
              <text x="532" y="84" font-size="11" fill="#9b99b8">flags lines that</text>
              <text x="532" y="102" font-size="11" fill="#9b99b8">sound unlike you</text>
              <rect x="620" y="30" width="128" height="96" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="684" y="58" font-weight="700">Your final</text>
              <text x="684" y="84" font-size="11" fill="#9b99b8">you accept or</text>
              <text x="684" y="102" font-size="11" fill="#9b99b8">undo each change</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#wb7a)">
                <line x1="141" y1="78" x2="161" y2="78"/>
                <line x1="293" y1="78" x2="313" y2="78"/>
                <line x1="445" y1="78" x2="465" y2="78"/>
                <line x1="597" y1="78" x2="617" y2="78"/>
              </g>
              <rect x="12" y="156" width="736" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="181">Always yours: the stories, the costs, the people and the opinions.</text>
              <text x="380" y="228" font-size="12" fill="#9b99b8">AI checks your voice. It must not fake your life.</text>
            </g>
          </svg>
          <figcaption>Build a voice guide from your real writing. Then use AI to check your draft against it, not to write the draft for you.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Build a voice guide from your samples</h3>
          <p>A <strong>voice guide</strong> is a short page that describes how you write. It lists what you always do, what you never do, and gives real examples. Start from 3 pieces of your own writing that readers liked. Do not use AI text as a sample. Meera chose three paragraphs:</p>
          <ul class="lc-list">
            <li><em>"The 7:15 bus to Hadoti left at 7:40. Nobody minded. A man across the aisle shared his peanuts with me…"</em> (By Local Bus to Hadoti)</li>
            <li><em>"I used to plan trips like exams. Every hour had a job. Then a flat tyre outside Mandawa gave me a free afternoon…"</em> (Why I stopped planning every hour)</li>
            <li><em>"I am listing the one where the hot water worked, the owner remembered my name, and the door locked properly."</em> (Where to Stay in Mewar Under ₹1,200 a Night)</li>
          </ul>
          <p>She asked AI to describe the voice in the samples, with evidence. Then she checked each point herself.</p>
          <table class="lc-table">
            <thead><tr><th>Voice feature</th><th>Evidence from her samples</th></tr></thead>
            <tbody>
              <tr><td>First person, like talking to a friend</td><td>"I used to plan trips like exams."</td></tr>
              <tr><td>Short sentences, some very short</td><td>"Nobody minded." "Every hour had a job."</td></tr>
              <tr><td>Real times and costs</td><td>"The 7:15 bus… left at 7:40." "Under ₹1,200 a night."</td></tr>
              <tr><td>Small human moments</td><td>The man who shared his peanuts</td></tr>
              <tr><td>Gentle humour</td><td>"…why I was going to Hadoti 'when the big city has everything'."</td></tr>
              <tr><td>Honest about problems</td><td>"…where the hot water worked… and the door locked properly."</td></tr>
            </tbody>
          </table>
          <p>Here is the voice guide she saved and now pastes into her AI prompts:</p>
          <pre><code>SLOW ROADS VOICE GUIDE
        Who I am: Meera, a librarian in Rajasthan who travels by bus and train.
        Who I write for: Neha, 31, a teacher who reads on her phone.
        Sound: warm, plain, first person, gently funny, honest.
        Sentences: mostly short. Some very short ones ("Nobody minded.").
        Always: real times, real costs, one small human moment per
        section, and what went wrong.
        Never: "hidden gem", "breathtaking", "wanderlust", "nestled",
        "must-visit", "unforgettable". No made-up people or moments.
        Sounds like me: "I plan the mornings and leave the afternoons
        empty on purpose."
        Not me: "Hadoti is a breathtaking hidden gem waiting to be
        discovered."</code></pre>
        </div>
        <div class="lc-card">
          <h3>Warning: AI "in your voice" invents your life</h3>
          <p>Meera tested it. She gave AI her three samples and asked: "Write the intro to my post on booking Rajasthan buses, in my voice." The AI wrote:</p>
          <pre><code>The 6 am bus from the city was late, of course. An old
        uncle offered me a samosa and a lecture on booking apps.</code></pre>
          <p>It sounds like her. The rhythm is right. But the samosa and the uncle never happened. The AI copied the <em>pattern</em> of her samples: a time, a delay, a kind stranger. Then it filled the pattern with made-up events. If she published it, she would be telling readers a false story about her own trip.</p>
          <p>So Meera uses AI to <strong>check</strong> her voice, not to fake it.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write this section in my voice.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is my voice guide and my draft. Quote each sentence that
        does not match the guide, and name the rule it breaks. Do not
        rewrite anything. Do not add details, people or events.</code></pre>
          <p>The AI flagged two sentences. One used "must-visit". One was 34 words long. Meera fixed both in her own words.</p>
        </div>
        <div class="lc-card">
          <h3>When to write it yourself</h3>
          <table class="lc-table">
            <thead><tr><th>Part of the post</th><th>Who writes it</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>The opening moment and personal stories</td><td>You</td><td>Only you were there. AI would invent it.</td></tr>
              <tr><td>Opinions and verdicts ("Is it worth it?")</td><td>You</td><td>Readers trust a real person's judgement.</td></tr>
              <tr><td>Costs and times</td><td>You, from receipts</td><td>AI does not know what you paid.</td></tr>
              <tr><td>Quotes from people you met</td><td>Their real words</td><td>Only with their permission.</td></tr>
              <tr><td>A step list, such as how to book a bus</td><td>AI can turn your notes into steps</td><td>You check every step against what you really did.</td></tr>
              <tr><td>A section where you are stuck</td><td>You, after AI asks you questions</td><td>Good questions unlock your own memories.</td></tr>
            </tbody>
          </table>
          <p>A simple test: if a sentence says "I", "we" or a real person did something, you write it. Also keep private details out of prompts, such as a guesthouse owner's phone number.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: who writes this part?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Meera is drafting "How I book Rajasthan buses (and what goes wrong)". Sort each part of the work.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="me" data-label="Meera writes it herself"></div>
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI can help, Meera checks"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="me" data-why="It is a real event from her trip. AI can only invent one.">The story of the day her bus was cancelled</li>
              <li data-bucket="ai" data-why="AI can turn her rough notes into clear steps. She checks each step against what she did.">Turning her booking notes into a numbered step list</li>
              <li data-bucket="me" data-why="A quote must be the person's real words, used with permission.">What the ticket clerk told her about festival rush</li>
              <li data-bucket="ai" data-why="Checking a draft against a voice guide is a good feedback job. She makes the fixes herself.">Flagging sentences that break her voice guide</li>
              <li data-bucket="me" data-why="Her honest verdict is why readers trust her.">Her opinion on booking online or at the counter</li>
              <li data-bucket="ai" data-why="Questions help her remember details. The answers and words stay hers.">Five questions to help her write a stuck section</li>
              <li data-bucket="me" data-why="Real costs come from her tickets. AI can also add sums wrongly.">The fares she paid on each route</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build your own voice guide from your writing. Paste three short pieces you wrote yourself, or keep Meera's samples to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a writing coach. Use simple English. Be specific, not flattering.

        Here are 3 samples of my own writing:
        Sample 1: [The 7:15 bus to Hadoti left at 7:40. Nobody minded. A man across the aisle shared his peanuts with me and asked why I was going to Hadoti "when the big city has everything".]
        Sample 2: [I used to plan trips like exams. Every hour had a job. Then a flat tyre outside Mandawa gave me a free afternoon, and it was the best part of the trip.]
        Sample 3: [I am not listing the one with the best rooftop photos. I am listing the one where the hot water worked, the owner remembered my name, and the door locked properly.]
        My reader: [a 31-year-old teacher who reads on her phone and wants honest, low-cost trip advice]

        Please write a one-page voice guide with:
        1. 5 to 7 voice features. Quote the exact words from my samples that show each one.
        2. "Always" rules and "Never" rules, including 6 overused words I should avoid.
        3. One sentence that sounds like me and one that does not.
        4. A short prompt I can reuse to check a draft against this guide without rewriting it.
        Do not write new stories or add details about my life.</pre>
            <ul class="ai-try-checks">
              <li>Does each voice feature quote your real words as evidence?</li>
              <li>Do you agree with every rule? Delete any that do not feel like you.</li>
              <li>Did it invent any trips, people or events? Remove them.</li>
              <li>Save the guide and the reusable prompt for your next draft.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A voice guide lets AI give feedback that fits you. But AI that "writes in your voice" copies your style and invents the content. Write the stories, people, costs and opinions yourself. Use AI to check the draft against your guide.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Editing and Rewriting</h1>
        </div>
        <p class="lc-lead">Most good writing is rewritten writing. Editing turns a rough draft into a post that is clear, correct and easy to read on a phone. In this lesson, you will learn the levels of editing, from big changes to small ones. You will learn what readability means and how to improve it. You will also learn AI feedback prompts that point out problems without rewriting your words. That way, you get a sharper post that still sounds like you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four levels of editing, from big to small. Structural edit: order, missing parts and what to cut. Line edit: long sentences and vague words. Copy edit: spelling, names, numbers and style. Read aloud: does it still sound like you. Next to each level is a good way to ask AI, except the last, which you do yourself.">
            <defs><marker id="wb8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="220" y="22" font-weight="700" fill="#c4b5fd">Level of edit</text>
              <text x="572" y="22" font-weight="700" fill="#93c5fd">How to ask AI</text>
              <text x="30" y="48" font-size="11" fill="#9b99b8">Big</text>
              <line x1="30" y1="58" x2="30" y2="252" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#wb8a)"/>
              <text x="30" y="272" font-size="11" fill="#9b99b8">Small</text>
              <rect x="60" y="34" width="320" height="52" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="220" y="56" font-weight="700">1. Structural edit</text>
              <text x="220" y="75" font-size="11" fill="#9b99b8">order, missing parts, what to cut</text>
              <rect x="400" y="34" width="345" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="572" y="65" font-size="12">"What is missing or out of order?"</text>
              <rect x="60" y="96" width="320" height="52" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="220" y="118" font-weight="700">2. Line edit</text>
              <text x="220" y="137" font-size="11" fill="#9b99b8">long sentences, vague words</text>
              <rect x="400" y="96" width="345" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="572" y="127" font-size="12">"Flag sentences over 20 words."</text>
              <rect x="60" y="158" width="320" height="52" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="220" y="180" font-weight="700">3. Copy edit</text>
              <text x="220" y="199" font-size="11" fill="#9b99b8">spelling, names, numbers, style</text>
              <rect x="400" y="158" width="345" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="572" y="189" font-size="12">"List spelling and naming errors."</text>
              <rect x="60" y="220" width="320" height="52" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="220" y="242" font-weight="700">4. Read aloud</text>
              <text x="220" y="261" font-size="11" fill="#9b99b8">does it still sound like you?</text>
              <rect x="400" y="220" width="345" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="572" y="251" font-size="12">You do this one yourself.</text>
            </g>
          </svg>
          <figcaption>Edit from big to small. There is no point polishing a sentence in a section you are about to cut.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of editing</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>What you look at</th><th>Example from Meera's Mewar post</th></tr></thead>
            <tbody>
              <tr><td><strong>Structural edit</strong></td><td>The order of sections, missing parts, repeated parts, what to cut</td><td>The prices of all four guesthouses were spread across the post. She put them in one table near the top.</td></tr>
              <tr><td><strong>Line edit</strong></td><td>Each sentence: length, clear words, rhythm, voice</td><td>A 57-word opening sentence became five short ones.</td></tr>
              <tr><td><strong>Copy edit</strong> and proofreading</td><td>Spelling, grammar, names, numbers and a consistent style</td><td>She had written "Rs 1200", "₹1,200" and "1200 rupees". She chose "₹1,200" everywhere.</td></tr>
            </tbody>
          </table>
          <p>Do them in this order. Take a break between drafting and editing, even one night. Fresh eyes see more. For facts, use your fact-check routine as well. Editing is not the same as checking facts.</p>
        </div>
        <div class="lc-card">
          <h3>Readability: easy to read on a phone</h3>
          <p><strong>Readability</strong> means how easy your text is to read and understand. 45 of Meera's 64 survey replies (70%) said they read Slow Roads on a phone. On a small screen, long sentences and long paragraphs feel even longer.</p>
          <ul class="lc-list">
            <li>Keep most sentences short. Mix in a few longer ones for rhythm.</li>
            <li>Keep paragraphs to 1 to 3 sentences.</li>
            <li>Use clear subheadings, so a reader can jump to the part they need.</li>
            <li>Use everyday words: "cheap" or "low-cost", not "economical".</li>
            <li>Write numbers as digits: "₹1,100", "7:40", "2 nights".</li>
          </ul>
          <p>Readability tools, such as Hemingway Editor or the checks in some blog plugins, highlight long sentences and give a score. A common score is <strong>Flesch Reading Ease</strong>: a higher score means easier text. Treat any score as a guide, not a rule. Meera's very short sentence "Nobody minded." is good writing, even if a tool calls it a fragment.</p>
          <p><strong>Before</strong> (one sentence, 57 words):</p>
          <pre><code>When I arrived in Mewar after a long and tiring journey from
        home on a bus that was very crowded, I started looking for a
        place to stay that would be clean and safe and not too
        expensive, and after checking many different places I finally
        found a guesthouse near the lake that was good for me.</code></pre>
          <p><strong>After</strong> (Meera's own edit, five sentences, 38 words):</p>
          <pre><code>I reached Mewar tired and dusty. The morning bus was full all
        the way. I wanted three things: clean, safe and under ₹1,200.
        It took me four guesthouses to find all three. The fourth was
        near the lake.</code></pre>
          <p>The "after" version is shorter, but it did not lose any facts. It also sounds more like her.</p>
        </div>
        <div class="lc-card">
          <h3>AI feedback prompts that do not rewrite</h3>
          <p>If you say "improve this", most AI tools rewrite everything. Your voice disappears, and new facts can sneak in. Ask for feedback in a table instead. Then you decide on each line.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Edit my blog post and make it better.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a line editor. Here is my voice guide and my draft.
        Do not rewrite the draft. Make a table with 4 columns:
        Original words | Problem | Suggested fix | Why.
        Only include real problems: long sentences, vague words,
        repeats, unclear parts. Keep my short sentences. Do not add
        facts, prices or places.</code></pre>
          <p>The table might look like this. The last column is Meera's own decision:</p>
          <table class="lc-table">
            <thead><tr><th>Original words</th><th>Problem</th><th>Suggested fix</th><th>Meera's decision</th></tr></thead>
            <tbody>
              <tr><td>"a very nice and good room"</td><td>Vague</td><td>Say what was good</td><td>Accept: "a room with a fan that worked and a window on the lake"</td></tr>
              <tr><td>"the door locked properly"</td><td>Too plain</td><td>"the property offered excellent security"</td><td>Reject: hotel-brochure words, not her voice</td></tr>
              <tr><td>"The owner, Mr Sharma, he said…"</td><td>Grammar</td><td>"The owner, Mr Sharma, said…"</td><td>Accept</td></tr>
            </tbody>
          </table>
          <p><strong>When is a full rewrite fine?</strong> When you turn your own finished post into a new format, such as an Instagram caption or a newsletter summary. Even then, check every fact and read it aloud before you use it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: an editing session with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Structural edit">Here is my Mewar guesthouse draft. Do not rewrite it. Tell me what is missing or out of order for a reader who wants to book a room.</li>
              <li data-kind="answer" data-label="AI replies">"The four prices are spread across the post. A reader must scroll to compare. You never say how far each place is from the bus stand."</li>
              <li data-kind="check" data-label="Meera decides">Both points are fair. She moves the prices into one table near the top. She adds the walking time from the bus stand, from her own notes.</li>
              <li data-kind="tool" data-label="Readability tool">She pastes the draft into a readability checker. It highlights 6 long sentences and 2 paragraphs of more than 5 lines.</li>
              <li data-kind="user" data-label="Line edit">Make a table of problems: original words, problem, suggested fix, why. Keep my short sentences. Do not add facts.</li>
              <li data-kind="warn" data-label="Catch the problem">One "fix" changes "the door locked properly" to "excellent security". Another adds "free Wi-Fi", which she never wrote. She rejects both.</li>
              <li data-kind="result" data-label="What changed">She accepted 7 of 12 suggestions and wrote each fix in her own words. The post is shorter, and every fact is still hers.</li>
              <li data-kind="check" data-label="Read aloud">She reads the whole post out loud. One sentence still sounds stiff. She fixes it herself.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get line-edit feedback in a table, and keep full control of your words. Paste your own paragraph, or keep the sample to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful line editor for a small blog. Use simple English.

        My voice: [warm, plain, first person, short sentences, real costs, gentle humour. Never "hidden gem" or "breathtaking".]
        My reader: [reads on a phone on the metro and wants honest, low-cost trip advice]

        My draft:
        [When I arrived in Mewar after a long and tiring journey from home on a bus that was very crowded, I started looking for a place to stay that would be clean and safe and not too expensive. The room was very nice and good. The owner, he was helpful. The door locked properly and the hot water worked, which was very important to me as a solo traveller.]

        Please do NOT rewrite my draft. Instead:
        1. Make a table: Original words | Problem | Suggested fix | Why.
        2. Include only real problems: long sentences, vague words, repeats, grammar.
        3. Keep my short sentences and plain words. Do not "upgrade" my words.
        4. Tell me which paragraph a phone reader might skip, and why.
        5. Do not add any facts, prices, places or features.</pre>
            <ul class="ai-try-checks">
              <li>Did it give a table and leave your draft unchanged?</li>
              <li>Did any "fix" add a fact you did not write, such as Wi-Fi or a price? Reject it.</li>
              <li>Did it try to replace plain words with fancy ones? Reject those too.</li>
              <li>Write the accepted fixes in your own words, then read the result aloud.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Edit from big to small: structure first, then sentences, then spelling and style. Ask AI to point out problems in a table, not to rewrite. You make every change yourself, so the post gets clearer and still sounds like you.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Headlines, Intros and Endings</h1>
        </div>
        <p class="lc-lead">Many readers decide in seconds. They read the headline, then the first two or three lines, and then they stay or leave. The ending decides what they do next. In this lesson, you will learn common headline types and how to write honest ones. You will learn how to open a post with a strong hook and close it with one clear call to action. AI is very good at giving you many options. Your job is to pick the true ones that fit the post.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 318" role="img" aria-label="The parts of a blog post from top to bottom, with Meera's Hadoti post as the example. Headline: A Long Weekend in Hadoti for About 5,000 rupees. Intro hook: the 7:15 bus left at 7:40. Intro promise: what I spent, where I stayed and what I would change. Body: days, costs, safety and what went wrong. Ending: what I would do again. Call to action: reply with your Hadoti question.">
            <defs><marker id="wb9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <line x1="30" y1="24" x2="30" y2="290" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#wb9a)"/>
              <text x="44" y="310" font-size="11" fill="#9b99b8">The reader moves down the post</text>
              <g text-anchor="middle" font-weight="700">
                <rect x="50" y="14" width="180" height="38" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="140" y="38">Headline</text>
                <rect x="50" y="60" width="180" height="38" rx="8" fill="#27274e" stroke="#ec4899"/><text x="140" y="84">Intro: the hook</text>
                <rect x="50" y="106" width="180" height="38" rx="8" fill="#27274e" stroke="#ec4899"/><text x="140" y="130">Intro: the promise</text>
                <rect x="50" y="152" width="180" height="38" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="140" y="176">Body</text>
                <rect x="50" y="198" width="180" height="38" rx="8" fill="#27274e" stroke="#10b981"/><text x="140" y="222">Ending</text>
                <rect x="50" y="244" width="180" height="38" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="140" y="268">Call to action</text>
              </g>
              <g text-anchor="start">
                <rect x="245" y="14" width="500" height="38" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="260" y="38">A Long Weekend in Hadoti for About ₹5,000</text>
                <rect x="245" y="60" width="500" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="260" y="84">The 7:15 bus to Hadoti left at 7:40. Nobody minded.</text>
                <rect x="245" y="106" width="500" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="260" y="130">What I spent, where I stayed, what I would change.</text>
                <rect x="245" y="152" width="500" height="38" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="260" y="176">Days, costs, safety and what went wrong</text>
                <rect x="245" y="198" width="500" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="260" y="222">What I would do again, in two lines</text>
                <rect x="245" y="244" width="500" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="260" y="268">"Reply and tell me your Hadoti question."</text>
              </g>
            </g>
          </svg>
          <figcaption>The headline and intro make a promise. The body keeps it. The ending sums up and asks the reader to do one thing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Headline types, with honest examples</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Slow Roads example</th><th>Works well for</th></tr></thead>
            <tbody>
              <tr><td><strong>How-to</strong></td><td>How I Book Rajasthan Buses (and What Goes Wrong)</td><td>Step-by-step help</td></tr>
              <tr><td><strong>Cost or number</strong></td><td>Where to Stay in Mewar Under ₹1,200 a Night</td><td>Budget readers who want a clear limit</td></tr>
              <tr><td><strong>Question</strong></td><td>Homestay or Hotel Under ₹1,500: Which Is Better?</td><td>Comparisons</td></tr>
              <tr><td><strong>First-person story</strong></td><td>Why I Stopped Planning Every Hour</td><td>Personal essays</td></tr>
              <tr><td><strong>Short list</strong></td><td>Five Train Journeys Worth Taking Slowly</td><td>A few picks with reasons</td></tr>
            </tbody>
          </table>
          <p>Rules for every headline:</p>
          <ul class="lc-list">
            <li><strong>Make it true.</strong> The post must keep the promise. Meera's first title was "The ₹5,000 Long Weekend in Hadoti". Her real total was ₹5,120, so she changed it to "for About ₹5,000".</li>
            <li><strong>Be specific.</strong> A place, a cost, a time or a clear benefit beats "My Amazing Trip".</li>
            <li><strong>Use your reader's words.</strong> Neha searches "stay", not "accommodation".</li>
            <li><strong>Put the main words early.</strong> Search results and phone screens may cut long titles short.</li>
            <li><strong>No clickbait.</strong> Clickbait is a headline that hides or twists the truth to get clicks, like "You Won't Believe This Town!". Readers feel tricked and leave.</li>
          </ul>
          <p>A blog post often has two titles. The <strong>SEO title</strong> (the title search engines may show in results) and the <strong>headline</strong> on the page. Many blog tools let you set them separately. Google may also show a different title from the one you wrote.</p>
        </div>
        <div class="lc-card">
          <h3>Intros: a hook and a promise</h3>
          <p>A <strong>hook</strong> is the first line or two that make a reader want to continue. After the hook, give a <strong>promise</strong>: what the reader will get from this post. Neha reads on the metro. She should know in the first screen if this post answers her question.</p>
          <table class="lc-table">
            <thead><tr><th>Hook type</th><th>Example for "How I check a guesthouse before I pay"</th></tr></thead>
            <tbody>
              <tr><td>A real moment</td><td>"The photos showed a rooftop and a lake view. The room had no lock."</td></tr>
              <tr><td>A reader's problem</td><td>"You booked a clean, safe room. You arrive, and it is neither."</td></tr>
              <tr><td>A clear promise</td><td>"Here are the 8 things I check, in the 10 minutes before I pay."</td></tr>
            </tbody>
          </table>
          <p><strong>Weak intro</strong> (it could start any travel post):</p>
          <pre><code>Rajasthan is a land of colours, culture and history, and it
        offers something for every kind of traveller.</code></pre>
          <p><strong>Better intro</strong> (a real moment, then a promise):</p>
          <pre><code>The photos showed a rooftop and a lake view. The room had no
        lock. Since that night in Mewar, I check 8 things before I
        pay. Here they are, with what each check cost me in time.</code></pre>
          <p>Only use a "real moment" hook if it really happened to you.</p>
        </div>
        <div class="lc-card">
          <h3>Endings and one call to action</h3>
          <p>A <strong>call to action</strong> (CTA) is the one thing you ask the reader to do next. Give one clear CTA. Three requests at once can confuse the reader, so choose the one that matters most.</p>
          <ul class="lc-list">
            <li><strong>Sum up in one or two lines:</strong> "Would I go again? Yes, but in October, and I would book the return bus first."</li>
            <li><strong>Then one CTA</strong>, matched to the post:
              <ul class="lc-list">
                <li>A trip story: "Slow Roads comes out every second Friday. Sign up for the next trip."</li>
                <li>A safety post: "Reply and tell me your question about travelling alone."</li>
                <li>A booking guide: "Next, read Where to Stay in Mewar Under ₹1,200 a Night."</li>
              </ul>
            </li>
          </ul>
          <p><strong>A prompt for many options:</strong></p>
          <pre><code>Here is my finished post. Write 15 headlines: 3 each of
        how-to, cost or number, question, first-person story and short
        list. Mark any headline that promises more than the post
        delivers. Keep each one under 60 characters.</code></pre>
          <p>Then pick one yourself, or mix two. Check the headline against the post one last time.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which headlines would Meera use?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each headline idea from an AI brainstorm.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Strong and honest"></div>
              <div data-sorter-target="bucket" data-bucket="bait" data-label="Misleading or clickbait"></div>
              <div data-sorter-target="bucket" data-bucket="vague" data-label="Too vague"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="It is specific, it matches the post, and it uses the reader's words.">Where to Stay in Mewar Under ₹1,200 a Night</li>
              <li data-bucket="bait" data-why="It hides the place and makes a promise no post can keep.">You Won't Believe This Secret Rajasthan Town!</li>
              <li data-bucket="vague" data-why="It tells the reader nothing about the place, the cost or the benefit.">My Trip</li>
              <li data-bucket="bait" data-why="Her real total was ₹5,120. The headline makes a promise that is not true.">The ₹5,000 Long Weekend in Hadoti</li>
              <li data-bucket="good" data-why="It is a clear how-to promise from real experience.">How I Check a Guesthouse Before I Pay</li>
              <li data-bucket="vague" data-why="It could be any post on any blog.">Some Thoughts on Travel</li>
              <li data-bucket="bait" data-why="She cannot prove this claim. It could also make readers less careful.">Hadoti Is the Safest Place in India for Women</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get headline, intro and ending options for one of your posts. Change the details in brackets, or keep the sample to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an honest headline editor for a small blog. Use simple English.

        My post: [How I check a guesthouse before I pay. 8 checks I do in 10 minutes: the lock, hot water, the fan, the bathroom, the street at night, the owner's answers, the bill, and other guests' reviews.]
        A real moment from my trip: [In Mewar, the photos showed a rooftop and a lake view. The room had no lock.]
        My reader: [a 31-year-old teacher who travels by train, sometimes alone, and wants safe, clean stays]
        My goal for readers: [sign up for my free newsletter]

        Please:
        1. Write 10 headlines: 2 each of how-to, number, question, first-person story and short list. Keep each under 60 characters.
        2. Mark any headline that promises more than my post delivers.
        3. Write 3 intros of 2 to 3 sentences: one with my real moment, one with the reader's problem, one with a clear promise.
        4. Write 2 endings: a one-line sum-up plus one call to action.
        Do not add facts, places or events I did not give you. No clickbait.</pre>
            <ul class="ai-try-checks">
              <li>Does each headline match what your post really contains?</li>
              <li>Did the "real moment" intro use only your moment, with nothing added?</li>
              <li>Does each ending have just one call to action?</li>
              <li>Did it avoid clickbait and words like "secret" or "hidden gem"?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A headline and an intro are a promise to the reader. Let AI give you many options quickly, then choose the ones that are specific and true. End with one clear call to action, so the reader knows what to do next.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">SEO for Bloggers</h1>
        </div>
        <p class="lc-lead"><strong>SEO</strong> (search engine optimisation) means making your post easy for search engines to understand, so they can show it to people who are looking for it. For Meera, it matters a lot. In the last 30 days, 3,712 of her 6,400 page views (58%) came from Google search. In this lesson, you will learn about search intent, keywords and helpful content. You will learn what Google says about AI-made content and "scaled content abuse". You will also learn how to read Google Search Console in simple terms. Search rules and tools change, so check Google's current help pages.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 262" role="img" aria-label="A loop in five steps. A reader searches for a Mewar stay for solo women. The search intent is a safe, cheap guesthouse. A helpful post gives first-hand advice and honest costs. Google shows it, which gives impressions and then clicks. Search Console shows queries, click-through rate and position. An arrow goes back from Search Console to the post: update the post with what you learn. At the bottom: write for people first.">
            <defs><marker id="wb10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="24" width="128" height="90" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="76" y="50" font-weight="700">Reader search</text>
              <text x="76" y="76" font-size="11" fill="#9b99b8">"mewar stay</text>
              <text x="76" y="94" font-size="11" fill="#9b99b8">for solo women"</text>
              <rect x="164" y="24" width="128" height="90" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="228" y="50" font-weight="700">Search intent</text>
              <text x="228" y="76" font-size="11" fill="#9b99b8">wants a safe,</text>
              <text x="228" y="94" font-size="11" fill="#9b99b8">cheap guesthouse</text>
              <rect x="316" y="24" width="128" height="90" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="50" font-weight="700">Helpful post</text>
              <text x="380" y="76" font-size="11" fill="#9b99b8">first-hand advice,</text>
              <text x="380" y="94" font-size="11" fill="#9b99b8">honest costs</text>
              <rect x="468" y="24" width="128" height="90" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="532" y="50" font-weight="700">Google shows it</text>
              <text x="532" y="76" font-size="11" fill="#9b99b8">impressions,</text>
              <text x="532" y="94" font-size="11" fill="#9b99b8">then clicks</text>
              <rect x="620" y="24" width="128" height="90" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="684" y="50" font-weight="700">Search Console</text>
              <text x="684" y="76" font-size="11" fill="#9b99b8">queries, CTR,</text>
              <text x="684" y="94" font-size="11" fill="#9b99b8">position</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#wb10a)">
                <line x1="141" y1="69" x2="161" y2="69"/>
                <line x1="293" y1="69" x2="313" y2="69"/>
                <line x1="445" y1="69" x2="465" y2="69"/>
                <line x1="597" y1="69" x2="617" y2="69"/>
                <path d="M684,114 L684,160 L380,160 L380,120"/>
              </g>
              <text x="532" y="180" font-size="12" fill="#9b99b8">Update the post with what you learn</text>
              <rect x="12" y="204" width="736" height="42" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="230" font-size="12">Write for people first. No mass-made AI pages. No keyword stuffing.</text>
            </g>
          </svg>
          <figcaption>SEO is a loop. Understand what the searcher wants, answer it better than anyone from real experience, then use Search Console data to improve the post.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Search intent: what the searcher really wants</h3>
          <p><strong>Search intent</strong> is the reason behind a search: what the person hopes to find or do. The same topic can have different intents. Your post must match the intent, or it will not help the reader.</p>
          <table class="lc-table">
            <thead><tr><th>Intent</th><th>The searcher wants to…</th><th>Example search</th><th>Best Slow Roads post</th></tr></thead>
            <tbody>
              <tr><td><strong>Know</strong></td><td>learn or understand something</td><td>is hadoti safe for solo female traveller</td><td>Solo woman travel in small Rajasthan towns: what I do</td></tr>
              <tr><td><strong>Do</strong></td><td>complete a task</td><td>bus to hadoti</td><td>By Local Bus to Hadoti</td></tr>
              <tr><td><strong>Compare</strong></td><td>choose between options</td><td>homestay vs hotel mewar</td><td>Homestays vs hotels under ₹1,500</td></tr>
              <tr><td><strong>Go</strong></td><td>reach a site they already know</td><td>slow roads meera blog</td><td>Her home page</td></tr>
            </tbody>
          </table>
          <p>To find the intent, search the words yourself. Look at what already shows up: guides, lists, videos, maps? Look at the "People also ask" questions. AI can guess the intent, but the real search results are better evidence.</p>
        </div>
        <div class="lc-card">
          <h3>Keywords, used naturally</h3>
          <p>A <strong>keyword</strong> is a word or phrase people type into a search engine, such as "mewar guesthouse under 1200". Choose one main keyword for each post, plus a few related questions. Then use them where they help the reader:</p>
          <table class="lc-table">
            <thead><tr><th>Place</th><th>Meera's Mewar post</th></tr></thead>
            <tbody>
              <tr><td>SEO title</td><td>Where to Stay in Mewar Under ₹1,200 a Night</td></tr>
              <tr><td>First paragraph</td><td>"I stayed in four guesthouses in Mewar and paid for all of them myself."</td></tr>
              <tr><td>A subheading</td><td>Staying alone in Mewar: what I checked</td></tr>
              <tr><td>URL slug (the end of the web address)</td><td>/mewar-stay-under-1200</td></tr>
              <tr><td>Image alt text (a short description of an image for people who cannot see it)</td><td>"Small guesthouse room in Mewar with a fan and a window"</td></tr>
              <tr><td>Meta description (a short summary that search results may show)</td><td>"Four guesthouses I paid for myself. Which one had hot water, a good lock and a kind owner."</td></tr>
            </tbody>
          </table>
          <p>Do not repeat the keyword again and again. That is called <strong>keyword stuffing</strong>, and Google treats it as spam. Write for Neha, and the words she searches will appear naturally.</p>
          <p><strong>Careful:</strong> AI tools can suggest keyword ideas, but they do not know real search numbers. If an AI says "2,400 searches a month", do not trust it. Use your own Search Console data, or a keyword tool that shows its data source.</p>
        </div>
        <div class="lc-card">
          <h3>Helpful content and Google's guidance on AI</h3>
          <p>Google says it rewards helpful, reliable content made for people, however that content was made. So using AI is not the problem. Using AI to make lots of low-value pages is. Google's spam policies say:</p>
          <p><em>"Scaled content abuse is when many pages are generated for the primary purpose of manipulating search rankings and not helping users."</em></p>
          <p>One example Google gives is using generative AI tools to make many pages without adding value for users. This applies however the pages were made, by AI or by people.</p>
          <table class="lc-table">
            <thead><tr><th>Scaled content abuse</th><th>Meera's approach</th></tr></thead>
            <tbody>
              <tr><td>50 AI pages called "Best Homestays in [Town]" for towns she never visited</td><td>One post about the four Mewar guesthouses she paid for herself</td></tr>
              <tr><td>Rewording other blogs' posts with AI</td><td>Her own notes, receipts and photos</td></tr>
              <tr><td>Stretching a post to a set word count</td><td>As long as the reader needs, and no longer</td></tr>
            </tbody>
          </table>
          <p>Google's guide to helpful content gives useful questions to ask yourself:</p>
          <ul class="lc-list">
            <li><strong>Who</strong> made it? Is it clear who wrote the post, with a byline and an About page?</li>
            <li><strong>How</strong> was it made? If automation or AI played a big part, would readers expect to be told?</li>
            <li><strong>Why</strong> was it made? The answer should be "to help people", not "to rank".</li>
          </ul>
          <p>Google also talks about <strong>E-E-A-T</strong>: experience, expertise, authoritativeness and trust. It says trust matters most. First-hand experience is Meera's biggest strength. And word count? Google's guide asks if you write to a set length because you heard Google prefers one. Its answer: "(No, we don't.)"</p>
        </div>
        <div class="lc-card">
          <h3>Google Search Console, in simple words</h3>
          <p><strong>Google Search Console</strong> is a free Google tool for website owners. You first prove the site is yours. Then its Performance report shows how your pages appear in Google search. The main numbers are:</p>
          <ul class="lc-list">
            <li><strong>Impressions:</strong> how many times your page appeared in someone's search results.</li>
            <li><strong>Clicks:</strong> how many times someone clicked through to your page.</li>
            <li><strong>CTR</strong> (click-through rate): clicks ÷ impressions, as a percentage.</li>
            <li><strong>Average position:</strong> your page's average place in the results. 1 is the top.</li>
          </ul>
          <p>Here are the top 3 search queries for Meera's Mewar post in the last 28 days (made-up data):</p>
          <table class="lc-table">
            <thead><tr><th>Query</th><th>Impressions</th><th>Clicks</th><th>CTR</th><th>Avg. position</th></tr></thead>
            <tbody>
              <tr><td>cheap stay in mewar</td><td>6,200</td><td>150</td><td>2.4%</td><td>8.1</td></tr>
              <tr><td>mewar guest house for solo female</td><td>1,900</td><td>95</td><td>5.0%</td><td>4.3</td></tr>
              <tr><td>mewar homestay under 1000</td><td>2,400</td><td>36</td><td>1.5%</td><td>11.2</td></tr>
              <tr><td><strong>Total (these 3)</strong></td><td><strong>10,500</strong></td><td><strong>281</strong></td><td><strong>2.7%</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>Check the sums: 150 ÷ 6,200 = 2.4%. 95 ÷ 1,900 = 5.0%. 281 ÷ 10,500 = 2.7%. What Meera decides:</p>
          <ul class="lc-list">
            <li>Solo women are searching for this post. She stayed alone, so she adds a real section: "Staying alone in Mewar: what I checked".</li>
            <li>She has not stayed anywhere under ₹1,000. So she does not write a fake page for that query. She adds it to her topic list for a future trip.</li>
            <li>She does not treat these numbers as exact truth. Search Console clicks and her blog's page views are counted differently, so they will not match.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: improving a post with Search Console</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Search Console">Meera opens the Performance report. She filters by her Mewar post and sets the dates to the last 28 days.</li>
              <li data-kind="result" data-label="What it shows">"mewar guest house for solo female": 1,900 impressions, 95 clicks, average position 4.3. Her post has no section on staying alone.</li>
              <li data-kind="user" data-label="Meera asks AI">Here are my top queries and my outline. Which reader needs does my post miss? Do not invent search numbers.</li>
              <li data-kind="answer" data-label="AI suggests">"Add a section on staying alone. Also create 20 new pages: 'Best homestays under ₹1,000 in [town]' for 20 Rajasthan towns."</li>
              <li data-kind="warn" data-label="Catch the problem">Twenty pages about towns she never stayed in, made to catch searches, is what Google calls scaled content abuse. It would also mislead her readers. She rejects it.</li>
              <li data-kind="thought" data-label="Meera decides">The first idea is good. She writes the new section from her own notes: the lock, the lane at night, and what the owner told her.</li>
              <li data-kind="check" data-label="Final check">She updates the SEO title and meta description to match. She adds "Updated September 2026" and plans to check the query data again in a month.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Make an honest SEO plan for one post. Paste your own Search Console queries if you have them, or keep the sample data to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an SEO helper for a small, honest blog. Use simple English. Follow Google's advice: write for people first.

        My post: [Where to Stay in Mewar Under Rs 1,200 a Night]
        What I really did: [stayed in 4 guesthouses, paid for them myself, travelled alone, checked the lock, hot water and the owner]
        My reader: [a 31-year-old teacher who travels by train, sometimes alone, on a small budget]
        Search Console, last 28 days: [cheap stay in mewar: 6,200 impressions, 150 clicks, position 8.1; mewar guest house for solo female: 1,900 impressions, 95 clicks, position 4.3; mewar homestay under 1000: 2,400 impressions, 36 clicks, position 11.2]

        Please:
        1. For each query, give the search intent in one line and the CTR (clicks ÷ impressions). Show the sum.
        2. Say which query my real experience answers best. Suggest one new section heading for it.
        3. Suggest an SEO title with the main words early, and a meta description under about 155 characters.
        4. Show where the main keyword fits naturally: first paragraph, one subheading, URL, image alt text.
        5. List what I should NOT do, such as keyword stuffing or pages about places I have not stayed.
        Do not invent search volumes or any new data.</pre>
            <ul class="ai-try-checks">
              <li>With the sample data, the CTRs should be about 2.4%, 5.0% and 1.5%. Check the sums.</li>
              <li>Does the new section use only your real experience?</li>
              <li>Did it invent search volumes or "monthly searches"? Ignore them.</li>
              <li>Does the title still make a true promise?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good SEO for a blogger is mostly good writing for a clear reader. Match the search intent, use the reader's words naturally and add real experience that others cannot copy. Google says using AI is not a problem by itself. It does act against many low-value pages made mainly to rank.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Newsletters</h1>
        </div>
        <p class="lc-lead">A newsletter is an email you send to readers who asked for it. Search engines and social apps can change how many people see your posts. Your email list stays with you. In this lesson, you will learn how to choose a newsletter platform, write a welcome email and read your open rate and click rate correctly. Meera sends <strong>Slow Roads</strong> free, every second Friday, to 1,240 subscribers. We use six of her recent issues, #43 to #48, for the maths.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A funnel for Slow Roads issues 43 to 48. 6,896 emails were delivered, 3,253 were opened, which is a 47.2 percent open rate, and 429 people clicked, which is a 6.2 percent click rate and a 13.2 percent click-to-open rate. A warning says Apple Mail Privacy Protection can count opens that nobody read, so clicks and replies are better signals.">
            <defs><marker id="wb11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="26" text-anchor="middle" font-weight="700">Slow Roads, issues #43 to #48 (6 issues added together)</text>
              <text x="20" y="77" font-weight="700">Delivered</text>
              <rect x="130" y="50" width="600" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="430" y="77" text-anchor="middle">6,896 emails</text>
              <text x="20" y="147" font-weight="700">Opened</text>
              <rect x="130" y="120" width="283" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="271" y="147" text-anchor="middle">3,253 opens</text>
              <text x="428" y="147" fill="#c4b5fd">47.2% open rate (a rough sign)</text>
              <text x="20" y="217" font-weight="700">Clicked</text>
              <rect x="130" y="190" width="37" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="182" y="210" fill="#6ee7b7">429 clickers: 6.2% click rate</text>
              <text x="182" y="228" font-size="12" fill="#9b99b8">and 13.2% click-to-open rate (429 ÷ 3,253)</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#wb11a)">
                <line x1="50" y1="84" x2="50" y2="130"/>
                <line x1="50" y1="154" x2="50" y2="200"/>
              </g>
              <rect x="20" y="250" width="720" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="275" text-anchor="middle" font-size="12">Apple Mail Privacy Protection can count an "open" that nobody read. Trust clicks and replies more.</text>
            </g>
          </svg>
          <figcaption>Out of every 100 emails Meera delivered, about 47 were counted as opened and about 6 led to a click. The open number is the least reliable one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Choosing a newsletter platform</h3>
          <p>A newsletter platform stores your list, sends your emails and shows your numbers. Popular ones include Substack, Beehiiv, Kit (it was called ConvertKit), Mailchimp and Buttondown. They change features and prices often. So compare them on what you need, and check each tool's current help pages.</p>
          <table class="lc-table">
            <thead><tr><th>Platform</th><th>In general words</th></tr></thead>
            <tbody>
              <tr><td>Substack</td><td>Made for writers. Your posts live on a web page and go out by email. It has built-in paid subscriptions and a reader app.</td></tr>
              <tr><td>Beehiiv</td><td>Made for newsletters that want to grow. It has growth tools, paid subscriptions and ways to earn from ads.</td></tr>
              <tr><td>Kit</td><td>Made for creators. It is strong on automations, such as a welcome series, and on selling digital products.</td></tr>
              <tr><td>Mailchimp</td><td>A general email marketing tool, used a lot by small businesses and online shops.</td></tr>
              <tr><td>Buttondown</td><td>A simple, lightweight tool that many writers and developers like.</td></tr>
            </tbody>
          </table>
          <p>Before you choose, ask these questions:</p>
          <ul class="lc-list">
            <li><strong>Can I export my list?</strong> You should be able to download your subscribers and move to another tool.</li>
            <li><strong>Does it have a welcome email automation?</strong> An automation is an email the tool sends by itself, for example when someone joins.</li>
            <li><strong>What will it cost at 5,000 subscribers?</strong> Many tools are free at first and charge more as your list grows.</li>
            <li><strong>Can I get paid in my country?</strong> If you may start a paid newsletter later, check that payouts work in India.</li>
          </ul>
          <p>Send emails only to people who signed up. Every email needs a clear unsubscribe link. Never paste your subscriber list into a public AI tool. It is private data.</p>
        </div>
        <div class="lc-card">
          <h3>The welcome email</h3>
          <p>The welcome email goes out the moment someone joins. New subscribers are often at their most interested at this moment. A good welcome email says what they will get, when it will arrive and where to start.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a welcome email for my travel newsletter.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I write Slow Roads, a free newsletter about slow, low-cost
        travel in Rajasthan by bus and train. It goes out every
        second Friday. My readers want weekend trips under ₹5,000
        and honest costs. Here are my 3 voice samples: [paste].
        Suggest a structure for a short welcome email (under 150
        words) and 3 subject line options. List what each part
        must do. Do not write the email. I will write it myself.</code></pre>
          <p>Meera used the structure and wrote this herself:</p>
          <pre><code>Subject: You are on the slow road now

        Hi, I am Meera. I live in Rajasthan and I travel by bus and
        train, mostly on weekends. Every second Friday, I will send
        you one trip, what it really cost, and one thing that went
        wrong.

        If you want to start somewhere, start here:
        1. By local bus to Hadoti (a whole day under ₹400)
        2. Where to stay in Mewar under ₹1,200 a night
        3. Shekhawati havelis: a two-day slow walk

        One question: where do you want to go next? Just hit reply.
        I read every email.</code></pre>
          <p>The three links are her top posts from the last 30 days. The question at the end invites replies. A reply is a much stronger sign of interest than an open.</p>
        </div>
        <div class="lc-card">
          <h3>Open rate and click rate: the maths</h3>
          <ul class="lc-list">
            <li><strong>Delivered</strong>: emails that reached an inbox (bounced emails are removed).</li>
            <li><strong>Open rate</strong> = unique opens ÷ emails delivered. "Unique" means each person counts once.</li>
            <li><strong>Click rate</strong> = unique clickers ÷ emails delivered.</li>
            <li><strong>Click-to-open rate</strong> = unique clickers ÷ unique opens. It shows how many openers found something worth clicking.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Issue</th><th>Subject</th><th>Delivered</th><th>Opens</th><th>Clicks</th><th>Open rate</th><th>Click rate</th><th>Click-to-open</th></tr></thead>
            <tbody>
              <tr><td>#43</td><td>Monsoon in Mewar: 5 quiet mornings</td><td>1,080</td><td>497</td><td>54</td><td>46.0%</td><td>5.0%</td><td>10.9%</td></tr>
              <tr><td>#44</td><td>Mewar out of season</td><td>1,105</td><td>519</td><td>61</td><td>47.0%</td><td>5.5%</td><td>11.8%</td></tr>
              <tr><td>#45</td><td>The ₹2,000 weekend in Shekhawati</td><td>1,130</td><td>565</td><td>93</td><td>50.0%</td><td>8.2%</td><td>16.5%</td></tr>
              <tr><td>#46</td><td>Trains I love in Rajasthan</td><td>1,162</td><td>523</td><td>70</td><td>45.0%</td><td>6.0%</td><td>13.4%</td></tr>
              <tr><td>#47</td><td>Hadoti's stepwells after the rain</td><td>1,198</td><td>551</td><td>66</td><td>46.0%</td><td>5.5%</td><td>12.0%</td></tr>
              <tr><td>#48</td><td>Why I stopped planning every hour</td><td>1,221</td><td>598</td><td>85</td><td>49.0%</td><td>7.0%</td><td>14.2%</td></tr>
              <tr><td><strong>All 6</strong></td><td></td><td><strong>6,896</strong></td><td><strong>3,253</strong></td><td><strong>429</strong></td><td><strong>47.2%</strong></td><td><strong>6.2%</strong></td><td><strong>13.2%</strong></td></tr>
            </tbody>
          </table>
          <p>Worked example for #45: 565 ÷ 1,130 = 0.500, so the open rate is 50.0%. Then 93 ÷ 1,130 = 0.082, so the click rate is 8.2%. In a spreadsheet with Delivered in column C, Opens in D and Clicks in E, use these formulas and format them as percentages:</p>
          <pre><code>Open rate:      =D2/C2
        Click rate:     =E2/C2
        Click-to-open:  =E2/D2
        All 6 issues:   =SUM(E2:E7)/SUM(C2:C7)</code></pre>
          <p>For the total, divide the added-up clicks by the added-up deliveries. This gives 429 ÷ 6,896 = 6.2%. Deliveries grew from 1,080 to 1,221 in ten weeks. That is 141 more, a rise of 13.1%.</p>
          <p><strong>The Apple MPP note.</strong> Apple Mail Privacy Protection (MPP), launched in 2021, can load email images for many Apple Mail users. The platform then counts an "open", even if the person never read the email. Other email apps and privacy tools also block or pre-load images. So use open rate only as a rough trend. Clicks and replies are better signals. By clicks, #45 (a practical budget issue) did best, at 8.2%. That is about 2 points above the 6.2% average. With only six issues, treat this as an idea to test, not a rule.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Meera asks AI about her numbers</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Meera exports">She downloads the report for issues #43 to #48 from her newsletter platform. It has only totals: delivered, opens and clicks. It has no subscriber names or emails.</li>
              <li data-kind="user" data-label="Meera asks">Here are delivered, opens and clicks for 6 of my recent issues. Work out the open rate, click rate and click-to-open rate for each. Which issue did best, and why might that be?</li>
              <li data-kind="answer" data-label="AI replies">"#45 did best. It had the highest open rate, 50.0%, so its subject line clearly made people read it. Your average open rate is 47.2%."</li>
              <li data-kind="warn" data-label="Catch the problem">Open rate is the weakest number. Apple MPP can count opens that nobody read. Also, #48 had 49.0%, very close to #45. The open rate alone does not prove the subject line worked.</li>
              <li data-kind="tool" data-label="Meera checks">She puts =E2/C2 in her spreadsheet for every issue. #45 has 93 clicks from 1,130 delivered: 8.2%. The average is 429 ÷ 6,896 = 6.2%.</li>
              <li data-kind="result" data-label="What she finds">By clicks, #45 is clearly the best. It is the practical budget issue with a real ₹ amount. #48, a personal story, is second at 7.0%.</li>
              <li data-kind="check" data-label="Her decision">She will try two more practical budget issues and compare clicks and replies. She will not call it a rule after six issues.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate your newsletter numbers and find patterns worth testing. Use your own totals, or keep Meera's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful newsletter coach. Use simple English.

        My newsletter is [Slow Roads, a free fortnightly email about low-cost travel in Rajasthan]. Here are my last issues (subject, delivered, unique opens, unique clickers):
        [#43 Monsoon in Mewar: 5 quiet mornings, 1080, 497, 54
        #44 Mewar out of season, 1105, 519, 61
        #45 The ₹2,000 weekend in Shekhawati, 1130, 565, 93
        #46 Trains I love in Rajasthan, 1162, 523, 70
        #47 Hadoti's stepwells after the rain, 1198, 551, 66
        #48 Why I stopped planning every hour, 1221, 598, 85]

        1. Make a table with open rate, click rate and click-to-open rate for each issue, to 1 decimal place. Show the formula once.
        2. Give the totals for all issues: total clicks ÷ total delivered, not an average of the percentages.
        3. Rank the issues by click rate. Suggest 2 possible reasons for the best one, and say these are guesses.
        4. Explain in 2 sentences why open rate is not reliable (Apple Mail Privacy Protection).
        5. Suggest 2 small tests for my next 4 issues.
        Do not invent any numbers I did not give you.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate two rows yourself. For #45, the click rate should be 93 ÷ 1,130 = 8.2%.</li>
              <li>Is the total click rate 429 ÷ 6,896 = 6.2%?</li>
              <li>Does it rank by clicks, not by opens?</li>
              <li>Does it call its reasons guesses, not proven facts?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Your email list is the readership you own. Welcome people warmly, send on a steady schedule and judge each issue by clicks and replies. Open rate is only a rough trend, because privacy features can count opens that nobody read.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Fiction and Creative Writing with AI</h1>
        </div>
        <p class="lc-lead">Fiction is where your own imagination matters most. AI can still help around the story: it can suggest "what if" ideas, keep track of details and act as a first reader. But if AI writes the scenes, the story stops being yours. In this lesson, Meera writes her first short story for a made-up anthology (a book of stories by different writers) from a small press in Rajasthan. You will learn how she uses AI for brainstorming, story notes and feedback, while every sentence stays hers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="On the left, four ways AI can help around a story: what-if ideas, questions about characters, a continuity check against story notes, and reader-style feedback. They point to a central box: your sentences and your choices. On the right, three things to avoid: AI writing whole scenes, copying a living author's style, and hiding AI use when a publisher asks.">
            <defs><marker id="wb12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="130" y="28" font-weight="700" fill="#c4b5fd">AI helps around the story</text>
              <text x="640" y="28" font-weight="700" fill="#f9a8d4">Avoid</text>
              <g font-size="12">
                <rect x="20" y="44" width="220" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="130" y="69">"What if" ideas</text>
                <rect x="20" y="100" width="220" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="130" y="125">Questions about characters</text>
                <rect x="20" y="156" width="220" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="130" y="181">Continuity check with notes</text>
                <rect x="20" y="212" width="220" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="130" y="237">Feedback like a reader</text>
                <rect x="540" y="72" width="200" height="40" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="5 4"/><text x="640" y="97">AI writing whole scenes</text>
                <rect x="540" y="128" width="200" height="40" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="5 4"/><text x="640" y="153">Copying a living author</text>
                <rect x="540" y="184" width="200" height="40" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="5 4"/><text x="640" y="209">Hiding AI use when asked</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#wb12a)">
                <line x1="240" y1="64" x2="298" y2="120"/>
                <line x1="240" y1="120" x2="298" y2="136"/>
                <line x1="240" y1="176" x2="298" y2="160"/>
                <line x1="240" y1="232" x2="298" y2="176"/>
              </g>
              <rect x="300" y="100" width="200" height="96" rx="12" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="400" y="134" font-weight="700">Your sentences,</text>
              <text x="400" y="154" font-weight="700">your choices,</text>
              <text x="400" y="174" font-weight="700">your story</text>
              <text x="380" y="278" font-size="12" fill="#9b99b8">AI can ask, check and react. You imagine and write.</text>
            </g>
          </svg>
          <figcaption>Use AI for the work around a story: ideas to react to, questions, checks and feedback. The words on the page stay yours.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Brainstorming: ask for sparks, not stories</h3>
          <p>Meera wants to write a 2,500-word story set on a Rajasthan bus. She has a real memory to start from: a late bus and a man who shared peanuts. She changes names and details, so no real person can be recognised.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a short story about a bus journey in Rajasthan.</code></pre>
          <p>This gives a finished, average story. It is not hers, and she could not honestly call it her work.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am writing a literary short story (about 2,500 words).
        Setting: a slow local bus to Hadoti. Main
        character: Kamla, 58, a retired conductor on her first
        trip as a passenger. Give me 15 "what if" questions that
        could create a problem for her on this journey. Mix small
        and big ones. Do not write any scenes or dialogue.</code></pre>
          <p>AI gives her a list. One idea is "What if the driver is her old trainee?". Another is "What if she knows the bus will break down halfway?". Most ideas will be ordinary. That is fine. She picks one idea, mixes it with her own memory and changes it. The choice is the creative act.</p>
        </div>
        <div class="lc-card">
          <h3>Story notes: let AI check the details</h3>
          <p>Story notes (some writers call them a "story bible") are a short document of facts about your story. They list characters, places, times and rules. As the draft grows, small mistakes creep in. AI is good at comparing a draft with the notes.</p>
          <table class="lc-table">
            <thead><tr><th>Note</th><th>Meera's story notes (made up)</th></tr></thead>
            <tbody>
              <tr><td>Main character</td><td>Kamla, 58. Retired bus conductor. Widowed. Sharp tongue, soft heart.</td></tr>
              <tr><td>Other people</td><td>Salim, the young driver she once trained. A schoolgirl going to an exam.</td></tr>
              <tr><td>Time and place</td><td>One day in August. The 7:15 bus leaves the city at 7:40. It is raining after the tea stop.</td></tr>
              <tr><td>Rules of the story</td><td>Told by Kamla, in the past tense. No flashbacks longer than one paragraph.</td></tr>
            </tbody>
          </table>
          <pre><code>Here are my story notes and my draft. List every place
        where the draft does not match the notes (names, times,
        weather, point of view). Quote the sentence. Do not
        suggest new wording.</code></pre>
          <p>The AI finds that Salim is called "Saleem" on page 4, and the bus leaves at 8:10 in one scene. Meera fixes both herself.</p>
        </div>
        <div class="lc-card">
          <h3>Feedback, and keeping the work yours</h3>
          <p>Ask AI to react like a reader, not to rewrite. Good questions are: "Where did you get bored?", "What did you expect to happen next?" and "Which character did you care about, and why?". AI feedback is often too kind, so ask for problems first. Then check it with a human reader too, such as a writing group.</p>
          <p><strong>Rules for publishing fiction.</strong> These rules change, so read the current guidelines each time. This is general information, not legal advice.</p>
          <ul class="lc-list">
            <li><strong>Publishers, magazines and contests</strong> set their own rules. Many ask you to state any AI use. Some do not accept AI-generated text at all. Read the submission guidelines before you send.</li>
            <li><strong>Amazon KDP</strong> (Kindle Direct Publishing) asks if your book contains AI-generated content: text, images or translations made by an AI tool. You do not need to declare "AI-assisted" content, which you wrote yourself and only edited or brainstormed with AI.</li>
            <li><strong>Copyright</strong>: the US Copyright Office says material made purely by AI is not protected. Your own sentences are protected. So a story you wrote is safer than one AI wrote.</li>
            <li><strong>Style</strong>: do not ask AI to write "in the style of" a living author. It makes the work less yours and can come close to their words.</li>
          </ul>
          <p>Meera keeps her notes, drafts and AI chats in one folder. If the press asks how she used AI, she can show them. Her answer is simple: "AI suggested ideas and checked details. I wrote every sentence."</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Does it keep the story yours?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Meera is working on her short story. Sort each action: does it keep the story hers, or does it give the story away?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="mine" data-label="Keeps it hers"></div>
              <div data-sorter-target="bucket" data-bucket="away" data-label="Gives it away"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="mine" data-why="A list of what-if questions is raw material. Meera chooses and changes the idea herself.">Asking AI for 15 "what if" questions about Kamla's journey</li>
              <li data-bucket="away" data-why="If AI writes the scene, the words are not hers. She may also have to declare it as AI-generated.">Asking AI to write the ending scene because she is tired</li>
              <li data-bucket="mine" data-why="A continuity check finds mistakes. Meera still writes the fixes.">Asking AI to find places where the draft does not match her story notes</li>
              <li data-bucket="away" data-why="Copying a living author's style makes the story less original and can come close to their words.">Asking AI to rewrite her story "in the style of" a famous living author</li>
              <li data-bucket="mine" data-why="Reader-style questions help her see problems. She decides what to change.">Asking AI "Where did you get bored?" after pasting her draft</li>
              <li data-bucket="away" data-why="Publishers set rules on AI use. Hiding it breaks trust and may break the rules.">Saying "no AI used" on the submission form after AI wrote two pages</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get honest, reader-style feedback on a story scene without letting AI rewrite it. Paste your own scene, or keep the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an honest first reader for literary short stories. Use simple English. Do not rewrite my text.

        Story notes: [Kamla, 58, a retired bus conductor, rides the slow bus to Hadoti as a passenger for the first time. The young driver, Salim, is someone she once trained. Told by Kamla, past tense.]

        My scene:
        [The bus left at 7:40, twenty-five minutes late. I knew it would. I had made it late myself for thirty years. Salim did not look back at me, but he drove slower than he needed to, the way I taught him.]

        Please give me:
        1. Your honest first reaction in 2 sentences.
        2. The 3 biggest problems first (unclear moments, slow parts, anything that does not match the notes). Quote the words.
        3. What you expect to happen next, and one question you want answered.
        4. One thing that works, and why.
        Do not write new sentences or dialogue for me. Do not praise it unless you can say exactly why.</pre>
            <ul class="ai-try-checks">
              <li>Did it avoid rewriting your scene or adding new lines?</li>
              <li>Does it quote your exact words when it names a problem?</li>
              <li>Is the feedback specific, not just general praise?</li>
              <li>Decide for yourself which points to use. You are the author.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In fiction, the choices are the art. Let AI give you sparks, check your details and react like a reader. Write every sentence yourself, keep a record of how you used AI and follow each publisher's rules on disclosure.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Growing and Earning</h1>
        </div>
        <p class="lc-lead">Readers grow when they know when your next post is coming. Money comes later, and only if readers trust you. In this lesson, you will learn how to set a publishing schedule you can keep, and how to reuse one post in several formats. You will also look at three ways writers earn: sponsorships, affiliate links and paid newsletters. You will learn to label paid content the way ASCI (the Advertising Standards Council of India) asks. This is general education, not legal, tax or financial advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: one blog post in the centre, with arrows to four new formats: a newsletter issue, an Instagram carousel, a Pinterest pin and a Reel script. Bottom: three ways to earn. A sponsored post needs a label such as Sponsored or Collaboration. Affiliate links need the label Affiliate. A paid newsletter is your own product.">
            <defs><marker id="wb13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="300" y="68" width="160" height="56" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="92" font-weight="700">One blog post</text>
              <text x="380" y="112" font-size="11" fill="#9b99b8">By bus to Hadoti</text>
              <g font-size="12">
                <rect x="20" y="40" width="200" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="120" y="65">Newsletter issue</text>
                <rect x="20" y="112" width="200" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="120" y="137">Instagram carousel</text>
                <rect x="540" y="40" width="200" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="640" y="65">Pinterest pin</text>
                <rect x="540" y="112" width="200" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="640" y="137">Reel script</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#wb13a)">
                <line x1="300" y1="88" x2="224" y2="64"/>
                <line x1="300" y1="104" x2="224" y2="128"/>
                <line x1="460" y1="88" x2="536" y2="64"/>
                <line x1="460" y1="104" x2="536" y2="128"/>
              </g>
              <line x1="20" y1="180" x2="740" y2="180" stroke="#9b99b8" stroke-dasharray="4 4"/>
              <text x="380" y="204" font-weight="700" fill="#c4b5fd">Ways to earn (label every paid deal and link)</text>
              <rect x="20" y="218" width="230" height="64" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="135" y="244" font-weight="700">Sponsored post</text>
              <text x="135" y="266" font-size="12" fill="#f9a8d4">Label: Sponsored, Collaboration</text>
              <rect x="265" y="218" width="230" height="64" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="244" font-weight="700">Affiliate links</text>
              <text x="380" y="266" font-size="12" fill="#f9a8d4">Label: Affiliate</text>
              <rect x="510" y="218" width="230" height="64" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="625" y="244" font-weight="700">Paid newsletter</text>
              <text x="625" y="266" font-size="12" fill="#6ee7b7">Your own product</text>
            </g>
          </svg>
          <figcaption>Grow by reusing each post in more places. Earn in ways that keep trust, and label every paid deal clearly.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A schedule you can keep, and repurposing</h3>
          <p>Meera published 21 posts in 3 years. That is about one post every 7 weeks, which is hard for readers to follow. She has about 6 hours each weekend. So she picks a plan she can really keep:</p>
          <table class="lc-table">
            <thead><tr><th>What</th><th>How often</th><th>Day</th></tr></thead>
            <tbody>
              <tr><td>Blog post</td><td>2 a month</td><td>1st and 3rd Saturday</td></tr>
              <tr><td>Slow Roads newsletter</td><td>Every second Friday</td><td>Friday morning</td></tr>
              <tr><td>Instagram carousel from each post</td><td>2 a month</td><td>The Monday after a post</td></tr>
            </tbody>
          </table>
          <p><strong>Repurposing</strong> means turning one piece of work into other formats for other places. AI is good at the first draft of this, because the facts are already in your post.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Turn my blog post into social media posts.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is my blog post "By Local Bus to Hadoti".
        Turn it into a 6-slide Instagram carousel. Slide 1: a
        hook under 10 words. Slides 2 to 5: one real fact from the
        post each (time, cost, tip). Slide 6: "Full costs on the
        blog". Use only facts from the post. Keep my voice: short,
        first person, no "hidden gem" or "breathtaking".</code></pre>
          <p>Then Meera checks every cost against the post, adds her own photos and changes lines that do not sound like her. If a platform asks you to label AI-made images or video, follow its current rules.</p>
        </div>
        <div class="lc-card">
          <h3>Sponsorships and ASCI disclosure</h3>
          <p>A made-up guesthouse in Hadoti, "Haveli Nidra", offers Meera two free nights (worth 2 × ₹1,100 = ₹2,200) if she writes about it. This is a <strong>material connection</strong>: any link between a brand and a creator that could affect how readers judge the post. ASCI's influencer guidelines say it includes money, free products, discounts, gifts, trips, hotel stays and family or work relationships. Free products you did not ask for also count.</p>
          <p>ASCI's guidelines, in general words (read the current version on the ASCI website):</p>
          <ul class="lc-list">
            <li>Put the label <strong>up front and where readers cannot miss it</strong>. Not only at the end, in a bio or behind a "more" link.</li>
            <li>Do not hide it in a group of hashtags or links.</li>
            <li>Use a clear label such as Advertisement, Ad, Sponsored, Collaboration, Partnership, Free gift or Affiliate. Use the platform's own paid-partnership tool as well, where there is one.</li>
            <li>Write the label in English or in the same language as the post.</li>
            <li>A label is needed even if your review is honest. If you bought the product yourself and have no link with the brand, no label is needed.</li>
            <li>Check that the brand can back up its claims before you repeat them.</li>
          </ul>
          <pre><code>At the top of the post:
        Collaboration: Haveli Nidra gave me two free nights.
        They did not see this post before it went live. The
        opinions and the problems are my own.</code></pre>
          <p>Meera also writes about the cold shower on night two. Honest problems are why readers trust her. On the blog, Google asks you to mark paid and affiliate links, for example with the <code>rel="sponsored"</code> link attribute. Your blog platform may have a setting for this.</p>
        </div>
        <div class="lc-card">
          <h3>Paid newsletters and affiliate links: honest maths</h3>
          <p>These are made-up numbers to show the maths. They are not a promise of income.</p>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>Maths</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Paid newsletter: 3% of 1,240 readers pay ₹150 a month</td><td>1,240 × 3% = 37.2, so about 37 people. 37 × ₹150</td><td>₹5,550 a month, before fees and tax</td></tr>
              <tr><td>Same, for a year</td><td>₹5,550 × 12</td><td>₹66,600 a year, before fees and tax</td></tr>
              <tr><td>Affiliate link to a ₹1,200 travel bag, 5% commission</td><td>400 clicks × 2.5% buy = 10 buyers. 10 × ₹1,200 × 5%</td><td>₹600</td></tr>
              <tr><td>A sponsor pays ₹5,000 for one slot in an issue delivered to 1,221 people</td><td>₹5,000 ÷ 1,221 × 1,000</td><td>About ₹4,095 per 1,000 delivered</td></tr>
            </tbody>
          </table>
          <p>The last line is a CPM (cost per mille: what a sponsor pays for every 1,000 emails delivered). It helps you compare offers of different sizes.</p>
          <p>Platform fees and payment fees come out first. Income tax and GST may apply. Ask a chartered accountant about your own case. A paid newsletter must give paying readers something extra, such as full cost sheets or a monthly route plan. Affiliate programmes have their own disclosure rules too, so read them.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Label needed or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use ASCI's idea of a "material connection". Sort each case: does Meera need a disclosure label, or not?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="label" data-label="Label needed"></div>
              <div data-sorter-target="bucket" data-bucket="none" data-label="No label needed"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="label" data-why="A free stay is a material connection, even if her review is honest.">A post about Haveli Nidra after two free nights there</li>
              <li data-bucket="label" data-why="She earns a commission when readers buy. Use a label such as Affiliate, near the link.">A packing list with affiliate links to travel bags</li>
              <li data-bucket="none" data-why="She bought it herself and has no link with the brand. ASCI says this is not an advertisement.">Praise for a raincoat she bought with her own money</li>
              <li data-bucket="label" data-why="Family relationships count as a material connection under ASCI's guidelines.">A post recommending her cousin's guesthouse in Hadoti</li>
              <li data-bucket="label" data-why="Free products count even when you did not ask for them.">A mention of a neck pillow a brand sent her without asking</li>
              <li data-bucket="label" data-why="The bus company paid for the space. Readers must know it is an advertisement.">A paid slot for a bus booking app in issue #49</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to think through a sponsorship offer and draft a clear disclosure. Change the details to a real offer you have, or keep the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful adviser for independent bloggers in India. Give general information only, not legal or tax advice. Use simple English.

        My blog and newsletter: [Slow Roads, honest low-cost travel in Rajasthan, 1,240 newsletter subscribers].
        The offer: [a guesthouse in Hadoti offers 2 free nights, worth ₹2,200, if I write a blog post and mention it in one newsletter issue. They want to see the post before it goes live.]

        Please:
        1. List 6 questions I should ask before I say yes.
        2. Point out any part of the offer that could hurt my readers' trust, and suggest what to ask for instead.
        3. Write a short disclosure line for the top of the blog post, and one for the newsletter. Follow ASCI's influencer guidelines in general terms (clear label, up front, not hidden in hashtags). Give each line in English and in simple Hindi.
        4. List which facts or claims I must check myself before I publish.
        5. Tell me to check ASCI's current guidelines, and when to ask a chartered accountant.</pre>
            <ul class="ai-try-checks">
              <li>Is the label clear (for example "Collaboration" or "Sponsored") and placed at the top?</li>
              <li>Does it warn about letting a brand approve your post before publishing?</li>
              <li>Does it avoid promising exact tax rules or legal outcomes?</li>
              <li>Read the Hindi lines yourself. Are they natural and correct?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Growth comes from a steady schedule and reusing good work. Money comes from trust. Label every paid deal and affiliate link clearly and up front. Readers accept a sponsor. They stop trusting you when a sponsor is hidden.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">A Writing Workflow</h1>
        </div>
        <p class="lc-lead">A workflow is the set of steps you follow every time you make a post. With a workflow, you do not start from zero each weekend. You also stop forgetting steps, such as checking a price or adding a disclosure label. In this lesson, you will build four tools: an idea bank, a content calendar, templates and an editing checklist. You will also see where AI saves Meera time, and where she keeps the work for herself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A loop of seven steps. Top row: idea bank, calendar, template and draft. Bottom row, right to left: editing checklist, publish and review numbers. An arrow goes from review numbers back to the idea bank.">
            <defs><marker id="wb14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="150" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="95" y="54" font-weight="700">Idea bank</text><text x="95" y="74" font-size="11" fill="#9b99b8">AI sorts, you pick</text>
              <rect x="210" y="30" width="150" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="285" y="54" font-weight="700">Calendar</text><text x="285" y="74" font-size="11" fill="#9b99b8">dates you can keep</text>
              <rect x="400" y="30" width="150" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="475" y="54" font-weight="700">Template</text><text x="475" y="74" font-size="11" fill="#9b99b8">same shape each time</text>
              <rect x="590" y="30" width="150" height="56" rx="8" fill="#27274e" stroke="#10b981"/><text x="665" y="54" font-weight="700">Draft</text><text x="665" y="74" font-size="11" fill="#9b99b8">you write it</text>
              <rect x="590" y="150" width="150" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="665" y="174" font-weight="700">Edit checklist</text><text x="665" y="194" font-size="11" fill="#9b99b8">facts, voice, labels</text>
              <rect x="400" y="150" width="150" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="475" y="174" font-weight="700">Publish</text><text x="475" y="194" font-size="11" fill="#9b99b8">post, issue, carousel</text>
              <rect x="210" y="150" width="150" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="285" y="174" font-weight="700">Review numbers</text><text x="285" y="194" font-size="11" fill="#9b99b8">clicks, replies</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#wb14a)">
                <line x1="170" y1="58" x2="206" y2="58"/>
                <line x1="360" y1="58" x2="396" y2="58"/>
                <line x1="550" y1="58" x2="586" y2="58"/>
                <line x1="665" y1="86" x2="665" y2="146"/>
                <line x1="590" y1="178" x2="554" y2="178"/>
                <line x1="400" y1="178" x2="364" y2="178"/>
                <path d="M210,178 L95,178 L95,90"/>
              </g>
              <text x="380" y="250" font-size="12" fill="#9b99b8">What you learn from the numbers feeds new ideas back into the bank.</text>
            </g>
          </svg>
          <figcaption>The same seven steps for every post. AI helps most at the idea bank, templates and checklist stages. Meera writes the draft herself.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The idea bank</h3>
          <p>An idea bank is one spreadsheet where every post idea goes. Meera adds ideas from reader emails, survey answers and her trips. AI can tag each idea with a pillar (one of her 4 main topic groups) and spot gaps. Only Meera can fill the "Have I done it?" column.</p>
          <table class="lc-table">
            <thead><tr><th>A: Idea</th><th>B: Pillar</th><th>C: Reader question</th><th>D: Have I done it?</th><th>E: Status</th></tr></thead>
            <tbody>
              <tr><td>The ₹5,000 long weekend in Hadoti</td><td>A</td><td>What will it really cost?</td><td>Yes</td><td>Ready</td></tr>
              <tr><td>How I check a guesthouse before I pay</td><td>C</td><td>Is it safe for me alone?</td><td>Yes</td><td>Ready</td></tr>
              <tr><td>Five train journeys worth taking slowly</td><td>B</td><td>Which trains are worth it?</td><td>3 of 5</td><td>Needs trips</td></tr>
              <tr><td>Monsoon towns in Rajasthan</td><td>D</td><td>Will it be crowded?</td><td>Yes</td><td>Idea</td></tr>
              <tr><td>Sariska Tiger Reserve on a weekend</td><td>A</td><td>What will it really cost?</td><td>No</td><td>Needs trip</td></tr>
            </tbody>
          </table>
          <p>Two useful spreadsheet formulas:</p>
          <pre><code>Ideas in pillar A:            =COUNTIF(B:B,"A")
        Ideas done and ready to write: =COUNTIFS(D:D,"Yes",E:E,"Ready")</code></pre>
        </div>
        <div class="lc-card">
          <h3>A calendar and a time budget</h3>
          <p>A content calendar shows what goes out on which date. First, check your real time. Meera timed one post, step by step, before and after using AI for the helper tasks.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Before (hours)</th><th>With AI help (hours)</th><th>What AI does</th></tr></thead>
            <tbody>
              <tr><td>Ideas</td><td>1</td><td>0.5</td><td>Sorts and tags the idea bank</td></tr>
              <tr><td>Outline</td><td>2</td><td>1.5</td><td>Suggests section orders she changes</td></tr>
              <tr><td>Research</td><td>1</td><td>0.5</td><td>Lists questions to check in real sources</td></tr>
              <tr><td>Draft</td><td>4</td><td>3.5</td><td>Very little. She writes it.</td></tr>
              <tr><td>Edit</td><td>2</td><td>1.5</td><td>Marks long or unclear sentences</td></tr>
              <tr><td>Publish</td><td>1</td><td>0.5</td><td>Drafts alt text and the meta description</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>11</strong></td><td><strong>8</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>Her monthly plan: 2 posts × 8 hours = 16 hours. Add 2 newsletter issues × 3 hours = 6 hours. That is 22 hours. She has 4 weekends × 6 hours = 24 hours. So the plan fits, with 2 hours spare. Notice that AI saved only 3 of the 11 hours per post. The draft still takes the most time, because it stays her job.</p>
        </div>
        <div class="lc-card">
          <h3>Templates and the editing checklist</h3>
          <p>A template is a fixed shape you fill in each time. AI can help you make one from your best posts. Here is Meera's post template:</p>
          <pre><code>POST TEMPLATE: Slow Roads
        1. Opening: one real moment (a time, a person, a problem)
        2. Who this trip is for, in one line
        3. Getting there: bus or train, times, fare, what went wrong
        4. Where I stayed: price, what worked, what did not
        5. What I did: mornings planned, afternoons free
        6. Full cost table (from my receipts)
        7. Safety notes for solo travellers
        8. One honest "skip this if..." line
        9. Ending: one small moment, then a link to a related post</code></pre>
          <p>The editing checklist is the last step before publishing. Meera runs it for every post:</p>
          <pre><code>EDITING CHECKLIST
        [ ] Every price, time and fare checked against my receipts
            or an official source
        [ ] No quote from a real person without their permission
        [ ] No "hidden gem", "breathtaking" or "wanderlust"
        [ ] Read aloud once: does it still sound like me?
        [ ] Disclosure label at the top if there is any free stay,
            gift, sponsor or affiliate link
        [ ] All links work; paid links marked as sponsored
        [ ] Photos have alt text and are mine or licensed
        [ ] No private details (phone numbers, readers' names)</code></pre>
          <p>AI can run a first pass: "Check this draft against my checklist. List every item that fails, and quote the sentence." But Meera ticks the boxes herself. AI cannot see her receipts.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Put the workflow in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Meera is making her next post. Put her workflow steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Pick a "Ready" idea from the idea bank that she has done herself</li>
              <li data-order="2">Put it on the calendar for the 1st Saturday of the month</li>
              <li data-order="3">Copy the post template and fill in her trip notes</li>
              <li data-order="4">Write the draft herself in her own voice</li>
              <li data-order="5">Run the editing checklist and check every price against her receipts</li>
              <li data-order="6">Publish the post, then the newsletter issue and the carousel</li>
              <li data-order="7">Review clicks and replies, and add new reader questions to the idea bank</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build your own post template and editing checklist with AI. Replace the details in brackets with your own, or keep Meera's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical workflow coach for part-time bloggers. Use simple English.

        About me: [I write Slow Roads, a travel blog and fortnightly newsletter about low-cost trips in Rajasthan by bus and train. I have about 6 hours each weekend.]
        My readers want: [honest costs, safe stays, quiet places].
        My voice notes: [first person, short sentences, real times and costs, gentle humour, honest about problems, never "hidden gem" or "breathtaking"].
        Where AI helps me: [ideas, outline options, marking unclear sentences].

        Please make:
        1. A post template with 7 to 9 sections that fits my readers.
        2. An editing checklist of 8 to 10 tick boxes. Include fact checks, my voice, disclosure labels, links, alt text and privacy.
        3. A table of my weekly steps with an honest time estimate for each. Mark which steps AI can help with and which I must do myself.
        4. Two warnings about where AI could make my posts worse.
        Keep each checklist item under 15 words.</pre>
            <ul class="ai-try-checks">
              <li>Does the checklist include checking facts and prices in real sources?</li>
              <li>Does it include a disclosure label check for sponsored or affiliate content?</li>
              <li>Do the time estimates add up to what you really have each week?</li>
              <li>Does it keep the draft as your job, not the AI's?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good workflow makes quality a habit. Keep ideas in one bank, plan only what fits your real hours, and use the same template and checklist every time. Let AI speed up the helper steps. Keep the draft and the final checks as your job.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Capstone: A Month of Content for Slow Roads</h1>
        </div>
        <p class="lc-lead">In this capstone, you plan one full month of content, the way Meera plans October 2026 for Slow Roads. You will put together five pieces: a reader persona, a topic plan, one full blog post outline with a sample section, a newsletter issue and an SEO checklist (SEO: search engine optimisation, which helps the right readers find your post in search). At every step, AI helps with the plan and the checks. Meera brings the trips, the receipts and the words.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Five steps in a row: persona, topic plan, blog post, newsletter and SEO check. Below them, a calendar for October 2026: post 1 on Saturday 3 October, issue 50 on Friday 9 October, post 2 on Saturday 17 October and issue 51 on Friday 23 October.">
            <defs><marker id="wb15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="24" width="124" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="74" y="48" font-weight="700">Persona</text><text x="74" y="68" font-size="11" fill="#9b99b8">Neha, 31</text>
              <rect x="166" y="24" width="124" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="228" y="48" font-weight="700">Topic plan</text><text x="228" y="68" font-size="11" fill="#9b99b8">2 posts, 2 issues</text>
              <rect x="320" y="24" width="124" height="56" rx="8" fill="#27274e" stroke="#10b981"/><text x="382" y="48" font-weight="700">Blog post</text><text x="382" y="68" font-size="11" fill="#9b99b8">outline + sample</text>
              <rect x="474" y="24" width="124" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="536" y="48" font-weight="700">Newsletter</text><text x="536" y="68" font-size="11" fill="#9b99b8">issue #50</text>
              <rect x="628" y="24" width="120" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="688" y="48" font-weight="700">SEO check</text><text x="688" y="68" font-size="11" fill="#9b99b8">before publish</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#wb15a)">
                <line x1="136" y1="52" x2="162" y2="52"/>
                <line x1="290" y1="52" x2="316" y2="52"/>
                <line x1="444" y1="52" x2="470" y2="52"/>
                <line x1="598" y1="52" x2="624" y2="52"/>
              </g>
              <text x="380" y="118" font-weight="700" fill="#c4b5fd">October 2026 at Slow Roads</text>
              <line x1="30" y1="160" x2="730" y2="160" stroke="#9b99b8" stroke-width="2"/>
              <g font-size="12">
                <circle cx="100" cy="160" r="7" fill="#10b981"/><text x="100" y="190" font-weight="700">Sat 3 Oct</text><text x="100" y="208">Post 1: Hadoti</text>
                <circle cx="280" cy="160" r="7" fill="#3b82f6"/><text x="280" y="190" font-weight="700">Fri 9 Oct</text><text x="280" y="208">Issue #50</text>
                <circle cx="460" cy="160" r="7" fill="#10b981"/><text x="460" y="190" font-weight="700">Sat 17 Oct</text><text x="460" y="208">Post 2: guesthouses</text>
                <circle cx="640" cy="160" r="7" fill="#3b82f6"/><text x="640" y="190" font-weight="700">Fri 23 Oct</text><text x="640" y="208">Issue #51</text>
              </g>
              <text x="380" y="250" font-size="12" fill="#9b99b8">Planned time: 22 hours. Available: 24 hours (4 weekends × 6 hours).</text>
            </g>
          </svg>
          <figcaption>Meera's October plan: five capstone pieces, two posts and two newsletter issues, all inside the hours she really has.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1 and 2: the persona and the topic plan</h3>
          <p>Meera starts from her reader persona (a short, made-up profile of a typical reader, built from real data). <strong>Neha, 31</strong>, is a school teacher in north India. She takes 3 or 4 short trips a year by train or bus, sometimes alone. Her budget is ₹3,000 to ₹6,000 for a 2 or 3 day trip. She reads on her phone. She worries: "Is it safe for me alone?", "What will it really cost?" and "Will it be crowded?".</p>
          <p>Next, Meera picks two topics that match both the data and Neha's worries:</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>What</th><th>Why this topic</th></tr></thead>
            <tbody>
              <tr><td>Sat 3 Oct</td><td>Post 1: the long weekend in Hadoti (Pillar A)</td><td>Her top post is the bus trip to Hadoti (1,450 views, 22.7% of all views). 38 of 64 survey readers (59%) want weekends under ₹5,000.</td></tr>
              <tr><td>Mon 5 Oct</td><td>Instagram carousel from post 1</td><td>Instagram brings 14% of her page views.</td></tr>
              <tr><td>Fri 9 Oct</td><td>Newsletter #50, linking to post 1</td><td>Issue #45, a budget issue, had her best click rate (8.2%).</td></tr>
              <tr><td>Sat 17 Oct</td><td>Post 2: How I check a guesthouse before I pay (Pillar C)</td><td>19 of 64 readers (30%) travel solo. Safety is Neha's first worry.</td></tr>
              <tr><td>Mon 19 Oct</td><td>Instagram carousel from post 2</td><td>Same reason as above</td></tr>
              <tr><td>Fri 23 Oct</td><td>Newsletter #51, linking to post 2</td><td>Answers reader replies about safe stays</td></tr>
            </tbody>
          </table>
          <p>Time check: 2 posts × 8 hours + 2 issues × 3 hours = 22 hours. She has 24. The plan fits.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: the blog post outline and a sample</h3>
          <p>AI suggested an outline with the old title "The ₹5,000 Long Weekend in Hadoti". Meera had already changed that title once, to "for About ₹5,000", when she fact-checked the post. Here are her real receipts again (made-up numbers for this course):</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Maths</th><th>Cost</th></tr></thead>
            <tbody>
              <tr><td>Bus to Hadoti and back</td><td>2 × ₹310</td><td>₹620</td></tr>
              <tr><td>Guesthouse, 2 nights (paid by me)</td><td>2 × ₹1,100</td><td>₹2,200</td></tr>
              <tr><td>Food, 3 days</td><td>3 × ₹450</td><td>₹1,350</td></tr>
              <tr><td>Auto-rickshaws in town</td><td>from receipts</td><td>₹600</td></tr>
              <tr><td>Entry tickets</td><td>from receipts</td><td>₹350</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>₹5,120</strong></td></tr>
            </tbody>
          </table>
          <p>The total is ₹5,120, not under ₹5,000. So she does not use the AI's title. For the final post, she goes one step further and puts the exact total in the title. An honest number builds more trust than a round one.</p>
          <pre><code>Title: A Long Weekend in Hadoti for ₹5,120 (Every Receipt)
        1. Opening: the bus that left late, and the first stepwell
        2. Who this is for: 2 or 3 days, bus or train, about ₹5,000
        3. Getting there: bus times, fare, where it stops
           (From further away? Add your train fare.)
        4. Where I stayed: ₹1,100 a night, what worked, what did not
        5. Two slow mornings, two empty afternoons
        6. The full cost table
        7. Safety notes for solo travellers
        8. Skip Hadoti if... (honest line)
        9. Ending, plus a link to "By Local Bus to Hadoti"</code></pre>
          <p>Meera writes every section herself. Here is her sample for section 5 (a made-up example):</p>
          <pre><code>I planned the mornings and nothing else. On Saturday I was
        at the stepwell by 7:30, when the only other visitor was a
        boy feeding pigeons. By ten it was hot, so I went back,
        drank two cups of chai and slept. That empty afternoon cost
        me nothing. It was also the part my feet thanked me for.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Step 4 and 5: the newsletter issue and the SEO checklist</h3>
          <p>Issue #50 goes out on Friday 9 October to about 1,240 subscribers. It is short, has one main link and ends with a question, because clicks and replies are her best signals.</p>
          <pre><code>Subject: Hadoti for ₹5,120, with every receipt

        Hi, it is Meera.

        I wanted to write "Hadoti for under ₹5,000". Then I added
        up my receipts. It came to ₹5,120. So that is the title.

        This fortnight: a long weekend in Hadoti by bus. Two slow
        mornings, two empty afternoons and one guesthouse where the
        hot water actually worked.

        Read the full post, with the cost table:
        [link to the Hadoti post]

        One question: what is your real budget for a long weekend?
        Hit reply. I read every email.</code></pre>
          <p>Before post 1 goes live, Meera runs her SEO checklist:</p>
          <pre><code>SEO CHECKLIST: Hadoti post
        [ ] Search intent: what does Neha want when she searches?
            (a real cost, a plan and safe stays)
        [ ] Main phrase in the title and first paragraph, written
            naturally (check phrases in Google Search Console)
        [ ] Short meta description with the real total, ₹5,120
        [ ] Headings answer real questions (cost, safety, crowds)
        [ ] Cost table in text, not only in an image
        [ ] Links to her related posts (Hadoti bus, Mewar stays)
        [ ] Alt text on every photo; photos are her own
        [ ] "Prices checked in October 2026" line near the table
        [ ] Any paid or affiliate link marked as sponsored
        [ ] Helpful, first-hand content, not AI filler</code></pre>
          <p>Google's guidance rewards helpful, people-first content, however it was made. First-hand details, like real receipts, are exactly what AI cannot copy.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Meera's capstone session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Meera asks">Here is my persona (Neha, 31), my top 5 posts, my survey results and my 12 topics. Suggest 2 posts and 2 newsletter issues for October. Explain each choice using only my data.</li>
              <li data-kind="answer" data-label="AI suggests">"Post 1: The ₹5,000 Long Weekend in Hadoti. Post 2: How I Check a Guesthouse Before I Pay. Hadoti matches your top post and the 59% who want weekends under ₹5,000."</li>
              <li data-kind="tool" data-label="Meera adds up">She adds her real receipts in a spreadsheet: =SUM(C2:C6). Bus ₹620, stay ₹2,200, food ₹1,350, auto-rickshaws ₹600, entry tickets ₹350.</li>
              <li data-kind="result" data-label="The total">₹5,120. The trip cost more than ₹5,000.</li>
              <li data-kind="warn" data-label="Catch the problem">The AI title promises "₹5,000", but her receipts say ₹5,120. Publishing it would break the trust that makes her blog work.</li>
              <li data-kind="check" data-label="Her fix">She renames the post "A Long Weekend in Hadoti for ₹5,120 (Every Receipt)". She uses the true number in the newsletter subject line too.</li>
              <li data-kind="check" data-label="Final check">She runs her editing checklist and SEO checklist, reads the post aloud and puts it on the calendar for Saturday 3 October.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Plan your own month of content. Replace the details in brackets with yours, or keep Meera's to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a content planner for a part-time blogger. Use simple English.

        My blog and newsletter: [Slow Roads: low-cost travel in Rajasthan by bus and train. Free newsletter every second Friday, 1,240 subscribers.]
        My reader persona: [Neha, 31, a teacher in north India. Short trips by train or bus, sometimes alone. Budget ₹3,000 to ₹6,000. Worries: safety, real costs, crowds.]
        My best content: [top post: By Local Bus to Hadoti. Best newsletter by click rate: a ₹2,000 weekend budget issue.]
        My ideas: [Hadoti long weekend; how I check a guesthouse; five slow train journeys; monsoon towns].
        My time: [6 hours each weekend].
        Month: [October 2026].

        Please give me:
        1. A calendar table: 2 blog posts and 2 newsletter issues, with dates and a reason for each choice from my data.
        2. A 9-section outline for post 1, with notes on what only I can add (costs, times, people).
        3. A newsletter issue plan: 3 subject lines, one main link and one reply question.
        4. An 8-point SEO checklist for post 1.
        5. A time check against my hours.
        Do not invent costs, times or facts. Mark every place where I must add my own real details.</pre>
            <ul class="ai-try-checks">
              <li>Does every topic choice point to your own data, not to general trends?</li>
              <li>Did it leave costs and times as gaps for you to fill from your receipts?</li>
              <li>Do the hours in the plan fit the time you really have?</li>
              <li>Is the SEO checklist about helping readers, not tricks?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good month of content starts with a plan built on your own data. It needs a schedule that fits your real hours. It ends with a check of every fact. AI can plan, sort and check with you. Your trips, your receipts and your voice are what readers come back for.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

module GenerativeAiFundamentalsContent
  # Units (sidebar dividers): 1–4 What Generative AI Is · 5–9 Using Generative AI Well · 10–14 Limits, Safety and Ethics · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">What Is Generative AI?</h1>
        </div>
        <p class="lc-lead">Generative AI is AI that creates new things: text, pictures, audio, video and computer code. You ask in plain words, and it makes a first draft for you. In this lesson you will learn what generative AI is and how it differs from older AI that only sorts or predicts. You will also meet two people who use it through this course. Mia Patel is a student in London who uses AI to revise for exams. Tom Rivera is an office assistant at Hudson Lane Realty, a real estate agency in New York. Both are made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Two columns. Left: AI that sorts or predicts. An email goes in and the answer is spam or not spam. A card payment goes in and the answer is a fraud risk. Shows you watched go in and the answer is a next show to try. Your face goes in and the answer is unlock the phone or not. Right: generative AI creates new things. A prompt becomes a new email draft. A prompt becomes a new picture. Your text becomes a spoken voice. A prompt becomes a short video clip. A note at the bottom says both learn patterns from data, both can be wrong, and you check the result.">
            <defs><marker id="gf1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="195" y="26" font-weight="700" fill="#93c5fd" text-anchor="middle">AI that sorts or predicts</text>
              <text x="195" y="46" font-size="11" fill="#9b99b8" text-anchor="middle">The answer is a label or a number</text>
              <text x="570" y="26" font-weight="700" fill="#f9a8d4" text-anchor="middle">Generative AI: creates new things</text>
              <text x="570" y="46" font-size="11" fill="#9b99b8" text-anchor="middle">The answer is new content</text>
              <line x1="380" y1="14" x2="380" y2="266" stroke="#3a3a66" stroke-dasharray="4 4"/>
              <g text-anchor="middle">
                <rect x="30" y="64" width="140" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="100" y="89">An email</text>
                <rect x="200" y="64" width="160" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="280" y="89">Spam or not spam</text>
                <rect x="30" y="116" width="140" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="100" y="141">A card payment</text>
                <rect x="200" y="116" width="160" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="280" y="141">Fraud risk: high</text>
                <rect x="30" y="168" width="140" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="100" y="193">Shows you watched</text>
                <rect x="200" y="168" width="160" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="280" y="193">Next show to try</text>
                <rect x="30" y="220" width="140" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="100" y="245">Your face</text>
                <rect x="200" y="220" width="160" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="280" y="245">Phone unlocks or not</text>
                <rect x="400" y="64" width="140" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="470" y="89">A prompt</text>
                <rect x="570" y="64" width="170" height="40" rx="8" fill="#27274e" stroke="#ec4899"/><text x="655" y="89">New email draft</text>
                <rect x="400" y="116" width="140" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="470" y="141">A prompt</text>
                <rect x="570" y="116" width="170" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="655" y="141">New picture</text>
                <rect x="400" y="168" width="140" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="470" y="193">Your text</text>
                <rect x="570" y="168" width="170" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="655" y="193">Spoken voice</text>
                <rect x="400" y="220" width="140" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="470" y="245">A prompt</text>
                <rect x="570" y="220" width="170" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="655" y="245">Short video clip</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gf1a)">
                <line x1="171" y1="84" x2="197" y2="84"/>
                <line x1="171" y1="136" x2="197" y2="136"/>
                <line x1="171" y1="188" x2="197" y2="188"/>
                <line x1="171" y1="240" x2="197" y2="240"/>
                <line x1="541" y1="84" x2="567" y2="84"/>
                <line x1="541" y1="136" x2="567" y2="136"/>
                <line x1="541" y1="188" x2="567" y2="188"/>
                <line x1="541" y1="240" x2="567" y2="240"/>
              </g>
              <rect x="30" y="276" width="710" height="26" rx="6" fill="#1f1f44" stroke="#10b981"/>
              <text x="385" y="294" font-size="12" text-anchor="middle">Both kinds learn patterns from data. Both can be wrong. You check the result.</text>
            </g>
          </svg>
          <figcaption>Older AI gives a label or a number. Generative AI gives you something new: a draft, a picture, a voice or a clip.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What generative AI means</h3>
          <p><strong>Generative AI</strong> is AI that generates, or creates, new content. It learned patterns from a huge number of examples, such as text, pictures and sound. Then it uses those patterns to make something new that looks or sounds similar.</p>
          <p>Three words you will see in every lesson:</p>
          <ul class="lc-list">
            <li><strong>Model</strong>: the trained AI program that does the work. One app can use several models.</li>
            <li><strong>Prompt</strong>: what you type or say to the AI. For example, "Write a short thank-you email to my landlord."</li>
            <li><strong>Output</strong>: what the AI gives back, such as a draft, a picture or an audio file.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Kind of output</th><th>What it can make</th><th>Made-up example from this course</th></tr></thead>
            <tbody>
              <tr><td>Text</td><td>Emails, summaries, explanations, plans, quiz questions</td><td>Mia gets five practice questions on photosynthesis.</td></tr>
              <tr><td>Images</td><td>Drawings, posters, icons, photo-style pictures</td><td>Tom makes a decorative autumn background for a flyer.</td></tr>
              <tr><td>Audio</td><td>Spoken voice from text, music, sound effects</td><td>Mia turns her own notes into audio for the bus.</td></tr>
              <tr><td>Video</td><td>Short clips from a prompt or a photo</td><td>A five-second animated logo for a slide.</td></tr>
              <tr><td>Code</td><td>Instructions that computers run</td><td>Not in this course. The Build with Generative AI course covers it.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Creating vs sorting and predicting</h3>
          <p>AI is not new. You have used it for years without noticing. Most older AI <strong>sorts</strong> things into groups or <strong>predicts</strong> a number. It does not make anything new.</p>
          <table class="lc-table">
            <thead><tr><th>Everyday example</th><th>What the AI does</th><th>Kind</th></tr></thead>
            <tbody>
              <tr><td>Your email app moves a message to the spam folder</td><td>Sorts: spam or not spam</td><td>Sorts or predicts</td></tr>
              <tr><td>A map app says you will arrive at 9:42</td><td>Predicts a time</td><td>Sorts or predicts</td></tr>
              <tr><td>A streaming app suggests a show</td><td>Predicts what you may like</td><td>Sorts or predicts</td></tr>
              <tr><td>A chatbot writes a reply to a customer email</td><td>Creates new text</td><td>Generative</td></tr>
              <tr><td>A photo app fills the gap after you remove a person</td><td>Creates new pixels (picture dots)</td><td>Generative</td></tr>
            </tbody>
          </table>
          <p>Many apps now mix both kinds. The simple test is this: does the AI give you a label, or does it give you something new?</p>
        </div>
        <div class="lc-card">
          <h3>Meet Mia and Tom: their first prompts</h3>
          <p><strong>Mia</strong> uses Microsoft Copilot through her college account. She also uses the free plan of ChatGPT at home. Her first prompt was very short:</p>
          <pre><code>Explain photosynthesis.</code></pre>
          <p>The answer was long and not at her exam level. So she tried a better prompt:</p>
          <pre><code>I am an A-level Biology student in the UK. Explain photosynthesis
        in simple English. Split it into the light-dependent reactions and
        the light-independent reactions (the Calvin cycle). For each part say:
        where it happens, what goes in, what comes out.
        Then give me 3 exam-style questions. Do not give the answers yet.</code></pre>
          <p><strong>Tom</strong> uses Microsoft Copilot with his work account. It is the only AI tool his agency approves for work. He asked Copilot to draft a rental listing. The draft sounded great, but it said the building had an elevator. The real building is a walk-up, with stairs only.</p>
          <p>This is called a <strong>hallucination</strong>: the AI states something false as if it were true. Generative AI makes likely-sounding content. It does not know your facts unless you give them. So the rule for this whole course is simple: <strong>AI drafts, you check, you decide.</strong></p>
        </div>
        <div class="lc-card">
          <h3>Activity: creates or sorts?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Does the AI create something new, or does it sort or predict? Sort each example.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="gen" data-label="Creates new content"></div>
              <div data-sorter-target="bucket" data-bucket="pred" data-label="Sorts or predicts"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pred" data-why="The answer is a label: spam or not spam. Nothing new is made.">Mia's email app moves a message to the spam folder.</li>
              <li data-bucket="gen" data-why="The AI writes new questions that did not exist before.">Mia asks a chatbot for five quiz questions on photosynthesis.</li>
              <li data-bucket="pred" data-why="The answer is a risk score, which is a prediction.">A bank app flags a card payment as possible fraud.</li>
              <li data-bucket="gen" data-why="Copilot writes a new email draft. Tom still checks it before sending.">Tom asks Copilot to draft a reply to a viewing request.</li>
              <li data-bucket="pred" data-why="The app predicts what you may like. It does not make a new song.">A music app suggests a song you might enjoy.</li>
              <li data-bucket="gen" data-why="Text-to-speech creates new audio of a voice reading your words.">An app reads Mia's typed notes aloud in a natural voice.</li>
              <li data-bucket="gen" data-why="The app paints new pixels to fill the gap, so it creates new content.">A photo app fills in the background after you remove a person.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to explain generative AI for your own life or job. Then check that its ideas are useful and honest about limits.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly teacher who explains technology in simple English. Do not use jargon.

        About me: [I am a student in London revising for my A-level exams].
        Tasks I do most weeks: [reading my class notes, making flashcards, writing practice essays, planning my revision].

        Please:
        1. Explain what generative AI is in 3 short sentences.
        2. Explain how it differs from AI that only sorts or predicts. Give 2 everyday examples of each.
        3. Suggest 3 tasks from my week where generative AI could help. For each task, say what I must still check or decide myself.
        4. Name 1 task where I should not use generative AI, and say why.

        Show step 3 as a table with 3 columns: task, how AI helps, what I check.
        Keep the whole answer under 250 words.</pre>
            <ul class="ai-try-checks">
              <li>The explanation uses simple words you understand.</li>
              <li>The examples are in the right group (creates vs sorts or predicts).</li>
              <li>Every suggested task has something you still check.</li>
              <li>It does not claim AI is always right.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Generative AI creates new content from patterns it learned. It is fast and helpful for first drafts, but it can state false things with confidence. Treat every output as a draft: you check the facts and you make the final decision.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">A Short History of Generative AI</h1>
        </div>
        <p class="lc-lead">Generative AI feels new, but it grew from more than 60 years of work. In this lesson you will follow the main steps: rules, machine learning, deep learning, the Transformer, GPT models, ChatGPT and today's assistants. Knowing this story helps you understand why AI is good at some things and weak at others. It also helps you spot wrong dates when an AI tells you about its own history.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A timeline with eight key moments. 1956: the name artificial intelligence at the Dartmouth workshop. 1966: ELIZA, a rule-based chatbot. 2012: deep learning wins at recognising images. 2017: the Transformer paper, Attention Is All You Need. 2018 to 2020: GPT-1, GPT-2 and GPT-3, bigger models with better text. 2022: image makers such as DALL-E 2 and Midjourney. 30 November 2022: ChatGPT launches, free chat for everyone. 2023 to today: multimodal assistants that handle text, images, voice and files.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="26" font-weight="700" fill="#f9a8d4">Key moments in generative AI</text>
              <line x1="30" y1="150" x2="740" y2="150" stroke="#9b99b8" stroke-width="2"/>
              <g stroke="#9b99b8" stroke-width="1">
                <line x1="75" y1="120" x2="75" y2="144"/>
                <line x1="245" y1="120" x2="245" y2="144"/>
                <line x1="415" y1="120" x2="415" y2="144"/>
                <line x1="585" y1="120" x2="585" y2="144"/>
                <line x1="160" y1="156" x2="160" y2="180"/>
                <line x1="330" y1="156" x2="330" y2="180"/>
                <line x1="500" y1="156" x2="500" y2="180"/>
                <line x1="670" y1="156" x2="670" y2="180"/>
              </g>
              <circle cx="75" cy="150" r="6" fill="#3b82f6"/>
              <circle cx="160" cy="150" r="6" fill="#3b82f6"/>
              <circle cx="245" cy="150" r="6" fill="#22d3ee"/>
              <circle cx="330" cy="150" r="6" fill="#8b5cf6"/>
              <circle cx="415" cy="150" r="6" fill="#8b5cf6"/>
              <circle cx="500" cy="150" r="6" fill="#f59e0b"/>
              <circle cx="585" cy="150" r="6" fill="#ec4899"/>
              <circle cx="670" cy="150" r="6" fill="#10b981"/>
              <text x="75" y="78" font-weight="700" fill="#93c5fd">1956</text>
              <text x="75" y="96">AI is named</text>
              <text x="75" y="112" font-size="11" fill="#9b99b8">Dartmouth workshop</text>
              <text x="245" y="78" font-weight="700" fill="#67e8f9">2012</text>
              <text x="245" y="96">Deep learning</text>
              <text x="245" y="112" font-size="11" fill="#9b99b8">wins at images</text>
              <text x="415" y="78" font-weight="700" fill="#c4b5fd">2018 to 2020</text>
              <text x="415" y="96">GPT-1, GPT-2, GPT-3</text>
              <text x="415" y="112" font-size="11" fill="#9b99b8">bigger models, better text</text>
              <text x="585" y="78" font-weight="700" fill="#f9a8d4">30 Nov 2022</text>
              <text x="585" y="96">ChatGPT launches</text>
              <text x="585" y="112" font-size="11" fill="#9b99b8">free chat for everyone</text>
              <text x="160" y="196" font-weight="700" fill="#93c5fd">1966</text>
              <text x="160" y="214">ELIZA</text>
              <text x="160" y="230" font-size="11" fill="#9b99b8">rule-based chatbot</text>
              <text x="330" y="196" font-weight="700" fill="#c4b5fd">2017</text>
              <text x="330" y="214">Transformer paper</text>
              <text x="330" y="230" font-size="11" fill="#9b99b8">Attention Is All You Need</text>
              <text x="500" y="196" font-weight="700" fill="#fcd34d">2022</text>
              <text x="500" y="214">Image makers</text>
              <text x="500" y="230" font-size="11" fill="#9b99b8">DALL-E 2, Midjourney</text>
              <text x="670" y="196" font-weight="700" fill="#6ee7b7">2023 to today</text>
              <text x="670" y="214">Multimodal assistants</text>
              <text x="670" y="230" font-size="11" fill="#9b99b8">text, images, voice, files</text>
              <rect x="30" y="252" width="710" height="28" rx="6" fill="#1f1f44" stroke="#3a3a66"/>
              <text x="385" y="271" font-size="12" fill="#e2e0f0">Rules → learning from data → deep learning → Transformers → AI that creates</text>
            </g>
          </svg>
          <figcaption>Eight moments that led to today's AI assistants. The biggest changes came after the Transformer in 2017.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From rules to learning (1956 to 2016)</h3>
          <p>The name <strong>artificial intelligence</strong> was used for a summer workshop at Dartmouth College in the US in 1956. Early AI followed <strong>rules</strong> that people wrote by hand.</p>
          <ul class="lc-list">
            <li><strong>Rules (1960s onwards)</strong>: ELIZA (1966) was an early chatbot. It matched words in your message to written rules, then sent back a set reply. It did not understand anything.</li>
            <li><strong>Machine learning</strong>: instead of rules, the computer learns patterns from many examples. A spam filter learns from thousands of emails that people marked as spam.</li>
            <li><strong>Deep learning</strong>: machine learning with a <strong>neural network</strong>. This is many layers of small maths units, loosely based on brain cells. In 2012, a deep learning system called AlexNet won a big image recognition contest by a wide margin.</li>
            <li><strong>Early generative models</strong>: in 2014, researchers introduced GANs (generative adversarial networks: two networks, one makes fakes and one spots them). Within a few years, GANs could make realistic fake faces.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Transformer and GPT (2017 to 2021)</h3>
          <p>In June 2017, researchers at Google shared a paper called <em>"Attention Is All You Need"</em>. It described the <strong>Transformer</strong>, a new design for AI models.</p>
          <p>The key idea is <strong>attention</strong>. The model looks at all the words in a passage together. For each word, it works out which other words matter most. This made models better at language. It also made training on huge amounts of text faster.</p>
          <p>OpenAI used this design for its <strong>GPT</strong> models. GPT means generative pre-trained transformer:</p>
          <ul class="lc-list">
            <li><strong>Generative</strong>: it creates new text.</li>
            <li><strong>Pre-trained</strong>: it first learns from a very large amount of text.</li>
            <li><strong>Transformer</strong>: it uses the 2017 design.</li>
          </ul>
          <p>GPT-1 came in 2018, GPT-2 in 2019 and GPT-3 in 2020. Each one was much bigger and wrote more natural text. In 2020, a method called <strong>diffusion</strong> also improved a lot. It later powered many image makers.</p>
        </div>
        <div class="lc-card">
          <h3>2022 to today: AI for everyone</h3>
          <table class="lc-table">
            <thead><tr><th>When</th><th>What happened</th></tr></thead>
            <tbody>
              <tr><td>April to August 2022</td><td>Image makers reach the public: DALL-E 2 (April), Midjourney (July) and Stable Diffusion (August).</td></tr>
              <tr><td>30 November 2022</td><td>OpenAI launches ChatGPT. Anyone can chat with a large language model for free.</td></tr>
              <tr><td>February to March 2023</td><td>Microsoft adds a chatbot to Bing. OpenAI releases GPT-4. Anthropic releases Claude. Google launches Bard.</td></tr>
              <tr><td>November 2023</td><td>Microsoft renames Bing Chat to Copilot.</td></tr>
              <tr><td>February 2024</td><td>Google renames Bard to Gemini.</td></tr>
              <tr><td>May 2024</td><td>OpenAI shows GPT-4o, one model for text, pictures and audio.</td></tr>
              <tr><td>Late 2024 to today</td><td>Assistants can "think" longer before they answer, search the web, read files and take some actions for you. New models arrive every few months.</td></tr>
            </tbody>
          </table>
          <p>A <strong>large language model</strong> (LLM) is a very big AI model trained on text to read and write language. A <strong>multimodal</strong> assistant can work with more than one kind of content, such as text, pictures and voice.</p>
          <p>Mia asked an AI for a timeline for a class talk. It gave the right year for ChatGPT but said the Transformer paper came out in 2018. She checked the original paper online and fixed it. AI can mix up dates, even about AI.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put history in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Drag these moments into the order they happened, from oldest to newest.</p>
            <ol data-sequence-target="list">
              <li data-order="1">ELIZA, a rule-based chatbot, matches words to written replies (1966).</li>
              <li data-order="2">A deep learning system wins a big image recognition contest (2012).</li>
              <li data-order="3">Google researchers describe the Transformer in "Attention Is All You Need" (2017).</li>
              <li data-order="4">GPT-3 shows that a much bigger model writes far more natural text (2020).</li>
              <li data-order="5">ChatGPT launches and anyone can try it for free (30 November 2022).</li>
              <li data-order="6">Google renames its Bard chatbot to Gemini (February 2024).</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI to make a history timeline. Then compare its dates with the table in this lesson and look for mistakes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a history teacher who explains technology in simple English.

        Make a timeline of generative AI from [1950] to today with 8 to 10 events.
        For each event give:
        - the date (month and year if you know them)
        - what happened, in one plain sentence
        - why it matters for normal people, in one plain sentence

        Use a table. Mark any date you are not fully sure about with "(check)".
        Do not invent quotes or statistics.

        After the table, explain in 3 short sentences how [the work of an office assistant at a small real estate agency in New York] has changed since 2022.
        Finally, tell me the date your own knowledge ends, if you know it.</pre>
            <ul class="ai-try-checks">
              <li>The Transformer paper is in 2017 and ChatGPT is on 30 November 2022.</li>
              <li>Dates it is unsure about are marked "(check)".</li>
              <li>Any date that differs from this lesson: check it in a second, reliable source.</li>
              <li>There are no made-up quotes or numbers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Today's chatbots come from a long line of ideas: rules, learning from data, deep learning and the Transformer. ChatGPT in November 2022 made this technology easy for everyone to use. AI can still get dates wrong, even about its own history, so check facts in a second source.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">How Chatbots Work, in Plain Words</h1>
        </div>
        <p class="lc-lead">A chatbot does not look up answers in a big book of facts. It writes its answer one small piece at a time, by predicting what is likely to come next. In this lesson you will learn the key ideas in plain words: tokens, next-token prediction, training, parameters and the context window. There is no maths. Once you know how a chatbot works, you will know why it can sound sure and still be wrong, and why its answers change each time.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Top: four steps. 1, your prompt, what you type. 2, cut into tokens, small word pieces. 3, pick the next token, a likely next piece. 4, add it and repeat until the answer ends, with a loop arrow back to step 3. Bottom: an example sentence, the light-dependent reactions happen on the dot dot dot. Made-up chances for the next word: thylakoids 70 percent, stroma 20 percent, leaf 6 percent, other words 4 percent. A note says a likely word is not always true.">
            <defs><marker id="gf3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="30" width="165" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="102" y="54">1. Your prompt</text>
                <text x="102" y="73" font-size="11" fill="#9b99b8">what you type</text>
                <rect x="205" y="30" width="165" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="287" y="54">2. Cut into tokens</text>
                <text x="287" y="73" font-size="11" fill="#9b99b8">small word pieces</text>
                <rect x="390" y="30" width="165" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="472" y="54">3. Pick next token</text>
                <text x="472" y="73" font-size="11" fill="#9b99b8">a likely next piece</text>
                <rect x="575" y="30" width="165" height="56" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="657" y="54">4. Add it, repeat</text>
                <text x="657" y="73" font-size="11" fill="#9b99b8">until the answer ends</text>
                <text x="565" y="142" font-size="11" fill="#9b99b8">loop: one token at a time</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gf3a)">
                <line x1="186" y1="58" x2="202" y2="58"/>
                <line x1="371" y1="58" x2="387" y2="58"/>
                <line x1="556" y1="58" x2="572" y2="58"/>
                <path d="M657,87 C657,124 472,124 472,90"/>
              </g>
              <line x1="20" y1="156" x2="740" y2="156" stroke="#3a3a66" stroke-dasharray="4 4"/>
              <text x="20" y="178" font-weight="700" fill="#f9a8d4">Example: which word comes next?</text>
              <text x="20" y="200">"The light-dependent reactions happen on the ..."</text>
              <g text-anchor="end">
                <text x="190" y="228">thylakoids</text>
                <text x="190" y="252">stroma</text>
                <text x="190" y="276">leaf</text>
                <text x="190" y="300">other words</text>
              </g>
              <rect x="200" y="216" width="350" height="16" rx="3" fill="#10b981"/>
              <rect x="200" y="240" width="100" height="16" rx="3" fill="#f59e0b"/>
              <rect x="200" y="264" width="30" height="16" rx="3" fill="#8b5cf6"/>
              <rect x="200" y="288" width="20" height="16" rx="3" fill="#9b99b8"/>
              <g font-size="12">
                <text x="558" y="228">70%</text>
                <text x="308" y="252">20%</text>
                <text x="238" y="276">6%</text>
                <text x="228" y="300">4%</text>
              </g>
              <rect x="600" y="210" width="140" height="92" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <g font-size="11" text-anchor="middle">
                <text x="670" y="232" fill="#9b99b8">Made-up chances,</text>
                <text x="670" y="248" fill="#9b99b8">for teaching only.</text>
                <text x="670" y="270">A likely word is</text>
                <text x="670" y="286">not always true.</text>
              </g>
            </g>
          </svg>
          <figcaption>A chatbot writes one token at a time. Each time, it picks a likely next piece. Sometimes a likely piece is wrong.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Tokens: how a chatbot reads text</h3>
          <p>A chatbot does not read whole words the way you do. It cuts text into <strong>tokens</strong>. A token is a small piece of text: a short word, part of a long word, a number or a punctuation mark.</p>
          <ul class="lc-list">
            <li>A short word like "the" is often one token.</li>
            <li>A long word like "photosynthesis" may be cut into several tokens.</li>
            <li>For English, a common rule of thumb is that one token is about three quarters of a word.</li>
          </ul>
          <p>Mia's photosynthesis notes are about 650 words. That is roughly 870 tokens. Each tool cuts text in its own way, so the exact count differs. Tools measure free-plan limits and file sizes partly in tokens. That is why very long files can hit a limit.</p>
        </div>
        <div class="lc-card">
          <h3>Training, parameters and next-token prediction</h3>
          <p><strong>Training</strong> is how the model learns. It reads a huge amount of text, such as books, websites and articles. Again and again, it guesses the next token, checks the real one and adjusts itself.</p>
          <p>Those adjustments are stored as <strong>parameters</strong>. Parameters are numbers inside the model, like billions of tiny dials. Together they hold the patterns of language the model learned. After this first stage, people train it further with examples and feedback. This teaches it to follow instructions and to answer helpfully.</p>
          <p>When you send a prompt, the model does <strong>next-token prediction</strong>:</p>
          <ol class="lc-list">
            <li>It looks at your prompt and everything before it in the chat.</li>
            <li>It works out how likely each possible next token is.</li>
            <li>It picks one, adds it to the answer, and repeats until the answer is finished.</li>
          </ol>
          <p>This explains Mia's mistake. Her AI summary said the light-dependent reactions happen in the <em>stroma</em>. "Stroma" is a word that often appears near "chloroplast", so it looked likely. But it was wrong. They happen on the <em>thylakoid membranes</em>, as her own notes said. The model predicts likely text. It does not check facts unless it uses a tool such as web search, and even then you must check.</p>
        </div>
        <div class="lc-card">
          <h3>The context window, the cut-off date and changing answers</h3>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>Plain meaning</th><th>What it means for you</th></tr></thead>
            <tbody>
              <tr><td>Context window</td><td>How much text the model can look at in one go: your messages, its replies and any files.</td><td>In a very long chat, early details may be missed. Start a new chat and paste a short summary.</td></tr>
              <tr><td>Training cut-off</td><td>The date the training text ends. The model learned nothing after it.</td><td>For recent news, prices or rules, turn on web search or check an official site.</td></tr>
              <tr><td>Changing answers</td><td>The model picks among likely tokens with a little randomness.</td><td>The same prompt can give different wording. Ask again or compare two answers.</td></tr>
              <tr><td>No memory of facts</td><td>It stores patterns, not a list of checked facts.</td><td>It can sound sure and still be wrong. Check facts, names, numbers and dates.</td></tr>
            </tbody>
          </table>
          <p>Context windows today are large. Many tools can read a whole long report in one go. The exact size depends on the tool and plan, so check the tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow Mia's study session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Mia's prompt">Mia uploads her own file, Bio_Topic5_Photosynthesis_notes.docx. She types: "Summarise these notes in 5 bullet points for A-level revision."</li>
              <li data-kind="thought" data-label="Inside the tool">The tool cuts her notes and question into about 900 tokens. They fit easily in the context window. The model starts predicting the summary, one token at a time.</li>
              <li data-kind="answer" data-label="AI summary">Five neat bullets. Bullet 2 says: "The light-dependent reactions take place in the stroma of the chloroplast."</li>
              <li data-kind="warn" data-label="Hallucination">This is wrong. "Stroma" was a likely-sounding word, not a checked fact. The summary sounds just as sure as when it is right.</li>
              <li data-kind="check" data-label="Mia checks">Mia compares each bullet with her notes and textbook. Her notes say "thylakoid membranes". She replies: "Bullet 2 is wrong. Check it against my notes and fix it."</li>
              <li data-kind="answer" data-label="Fixed summary">The AI corrects bullet 2. The light-dependent reactions are on the thylakoid membranes. The Calvin cycle is in the stroma.</li>
              <li data-kind="user" data-label="Ask again">Mia asks for 3 quiz questions, then asks again. She gets 3 different questions. This is normal: the model picks among likely tokens.</li>
              <li data-kind="check" data-label="Save and own it">Mia copies the corrected summary into her own notes. She writes the quiz answers herself first, then checks them.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask a chatbot to explain how it works, using a real sentence. Then check that it is honest about its limits.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient teacher. I have no technical background. Explain how a chatbot like you writes an answer. Use no maths formulas.

        1. Explain each of these words in one plain sentence: token, training, parameters, next-token prediction, context window, training cut-off.
        2. Use this sentence as an example: "[The light-dependent reactions happen on the ...]". Show 3 possible next words. Explain why the most likely word is not always the correct one. Say clearly that any percentages are only examples.
        3. Explain why I can get a different answer if I ask the same question twice.
        4. Give me 3 practical tips that follow from this. Include one tip for very long chats and one for recent news.

        Keep it under 300 words.</pre>
            <ul class="ai-try-checks">
              <li>Each of the six words has a clear, plain explanation.</li>
              <li>It says a likely answer is not always a true answer.</li>
              <li>Any percentages are marked as examples, not facts.</li>
              <li>The tips cover long chats and recent news.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A chatbot predicts likely text, one token at a time. That is why it writes so fluently, and also why it can be confidently wrong. Give it the facts it needs, keep long chats short, and check anything important.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">How AI Makes Images, Audio and Video</h1>
        </div>
        <p class="lc-lead">Generative AI can also make pictures, voices, music and short videos. In this lesson you will learn how image makers turn random noise into a picture, a method called diffusion. You will also learn how text-to-speech and video tools work. Most importantly, you will learn what each kind of tool is good and bad at. That helps you use these tools for honest, useful work and spot fake content made by others.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top: a prompt, a cosy reading corner by a window with soft lamp light, guides four steps. Step 1 is random noise, coloured dots. Step 2 shows rough, faint shapes. Step 3 shows more detail with fewer dots. Step 4 is the final image of a window, an armchair and a lamp. Bottom: two more flows. Text to speech: your text goes to a voice model and becomes a spoken audio file. Video: a prompt or photo becomes frames that must match, then a short clip that is often only seconds long.">
            <defs><marker id="gf4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="150" y="14" width="460" height="34" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="36" text-anchor="middle">Prompt: "a cosy reading corner by a window, soft lamp light"</text>
              <g stroke="#ec4899" stroke-width="1" stroke-dasharray="3 4" fill="none" opacity="0.6">
                <line x1="300" y1="48" x2="95" y2="78"/>
                <line x1="340" y1="48" x2="285" y2="78"/>
                <line x1="420" y1="48" x2="475" y2="78"/>
                <line x1="460" y1="48" x2="665" y2="78"/>
              </g>
              <rect x="40" y="80" width="110" height="110" rx="6" fill="#1f1f44" stroke="#3a3a66"/>
              <rect x="230" y="80" width="110" height="110" rx="6" fill="#1f1f44" stroke="#3a3a66"/>
              <rect x="420" y="80" width="110" height="110" rx="6" fill="#1f1f44" stroke="#3a3a66"/>
              <rect x="610" y="80" width="110" height="110" rx="6" fill="#1f1f44" stroke="#3a3a66"/>
              <g opacity="0.25"><rect x="242" y="94" width="36" height="40" fill="#3b82f6" fill-opacity="0.5" stroke="#93c5fd"/><line x1="260" y1="94" x2="260" y2="134" stroke="#93c5fd"/><line x1="242" y1="114" x2="278" y2="114" stroke="#93c5fd"/><circle cx="320" cy="118" r="16" fill="#f59e0b" fill-opacity="0.2"/><line x1="320" y1="110" x2="320" y2="172" stroke="#9b99b8" stroke-width="2"/><path d="M310,110 L330,110 L325,96 L315,96 z" fill="#f59e0b"/><rect x="252" y="130" width="14" height="42" rx="5" fill="#db2777"/><rect x="252" y="146" width="52" height="26" rx="6" fill="#ec4899"/><line x1="236" y1="173" x2="334" y2="173" stroke="#9b99b8"/></g>
              <g opacity="0.7"><rect x="432" y="94" width="36" height="40" fill="#3b82f6" fill-opacity="0.5" stroke="#93c5fd"/><line x1="450" y1="94" x2="450" y2="134" stroke="#93c5fd"/><line x1="432" y1="114" x2="468" y2="114" stroke="#93c5fd"/><circle cx="510" cy="118" r="16" fill="#f59e0b" fill-opacity="0.2"/><line x1="510" y1="110" x2="510" y2="172" stroke="#9b99b8" stroke-width="2"/><path d="M500,110 L520,110 L515,96 L505,96 z" fill="#f59e0b"/><rect x="442" y="130" width="14" height="42" rx="5" fill="#db2777"/><rect x="442" y="146" width="52" height="26" rx="6" fill="#ec4899"/><line x1="426" y1="173" x2="524" y2="173" stroke="#9b99b8"/></g>
              <g opacity="1"><rect x="622" y="94" width="36" height="40" fill="#3b82f6" fill-opacity="0.5" stroke="#93c5fd"/><line x1="640" y1="94" x2="640" y2="134" stroke="#93c5fd"/><line x1="622" y1="114" x2="658" y2="114" stroke="#93c5fd"/><circle cx="700" cy="118" r="16" fill="#f59e0b" fill-opacity="0.2"/><line x1="700" y1="110" x2="700" y2="172" stroke="#9b99b8" stroke-width="2"/><path d="M690,110 L710,110 L705,96 L695,96 z" fill="#f59e0b"/><rect x="632" y="130" width="14" height="42" rx="5" fill="#db2777"/><rect x="632" y="146" width="52" height="26" rx="6" fill="#ec4899"/><line x1="616" y1="173" x2="714" y2="173" stroke="#9b99b8"/></g>
              <g>
                <circle cx="93" cy="154" r="2" fill="#ec4899"/><circle cx="129" cy="109" r="1.5" fill="#3b82f6"/><circle cx="60" cy="109" r="1.5" fill="#3b82f6"/><circle cx="88" cy="176" r="1.5" fill="#f59e0b"/><circle cx="94" cy="93" r="1.5" fill="#8b5cf6"/><circle cx="121" cy="141" r="2.5" fill="#ec4899"/><circle cx="106" cy="130" r="2" fill="#8b5cf6"/><circle cx="70" cy="141" r="2" fill="#8b5cf6"/><circle cx="107" cy="150" r="2.5" fill="#8b5cf6"/><circle cx="119" cy="164" r="2.5" fill="#f59e0b"/>
                <circle cx="55" cy="173" r="1.5" fill="#ec4899"/><circle cx="94" cy="87" r="1.5" fill="#8b5cf6"/><circle cx="77" cy="179" r="1.5" fill="#f59e0b"/><circle cx="117" cy="109" r="2.5" fill="#3b82f6"/><circle cx="81" cy="150" r="2" fill="#f59e0b"/><circle cx="142" cy="107" r="1.5" fill="#ec4899"/><circle cx="143" cy="153" r="2" fill="#ec4899"/><circle cx="73" cy="90" r="2" fill="#ec4899"/><circle cx="76" cy="143" r="2" fill="#3b82f6"/><circle cx="139" cy="167" r="2.5" fill="#ec4899"/>
                <circle cx="96" cy="104" r="2" fill="#ec4899"/><circle cx="121" cy="144" r="1.5" fill="#f59e0b"/><circle cx="139" cy="95" r="1.5" fill="#ec4899"/><circle cx="60" cy="106" r="2" fill="#f59e0b"/><circle cx="61" cy="145" r="1.5" fill="#f59e0b"/><circle cx="89" cy="158" r="2.5" fill="#22d3ee"/><circle cx="100" cy="129" r="2" fill="#22d3ee"/><circle cx="85" cy="89" r="2" fill="#f59e0b"/><circle cx="122" cy="165" r="2" fill="#8b5cf6"/><circle cx="100" cy="124" r="2" fill="#9b99b8"/>
                <circle cx="90" cy="177" r="2" fill="#22d3ee"/><circle cx="115" cy="138" r="2" fill="#3b82f6"/><circle cx="75" cy="112" r="1.5" fill="#f59e0b"/><circle cx="108" cy="172" r="2.5" fill="#f59e0b"/><circle cx="52" cy="120" r="2.5" fill="#f59e0b"/><circle cx="139" cy="103" r="2" fill="#3b82f6"/><circle cx="100" cy="162" r="2" fill="#8b5cf6"/><circle cx="138" cy="140" r="2" fill="#3b82f6"/><circle cx="133" cy="107" r="1.5" fill="#ec4899"/><circle cx="122" cy="161" r="2.5" fill="#8b5cf6"/>
                <circle cx="143" cy="171" r="2" fill="#ec4899"/><circle cx="138" cy="142" r="2" fill="#f59e0b"/><circle cx="122" cy="122" r="2" fill="#22d3ee"/><circle cx="87" cy="101" r="2.5" fill="#f59e0b"/><circle cx="62" cy="91" r="2" fill="#8b5cf6"/><circle cx="133" cy="181" r="2" fill="#9b99b8"/><circle cx="86" cy="177" r="2.5" fill="#9b99b8"/><circle cx="88" cy="182" r="2.5" fill="#8b5cf6"/><circle cx="101" cy="104" r="2" fill="#3b82f6"/><circle cx="59" cy="171" r="2" fill="#8b5cf6"/>
                <circle cx="94" cy="111" r="2" fill="#3b82f6"/><circle cx="131" cy="169" r="2.5" fill="#8b5cf6"/><circle cx="123" cy="144" r="2.5" fill="#f59e0b"/><circle cx="73" cy="114" r="1.5" fill="#3b82f6"/><circle cx="135" cy="130" r="2.5" fill="#ec4899"/><circle cx="100" cy="128" r="1.5" fill="#3b82f6"/><circle cx="61" cy="86" r="2.5" fill="#f59e0b"/><circle cx="94" cy="150" r="1.5" fill="#3b82f6"/><circle cx="92" cy="142" r="2.5" fill="#8b5cf6"/><circle cx="89" cy="91" r="2" fill="#8b5cf6"/>
                <circle cx="57" cy="118" r="1.5" fill="#f59e0b"/><circle cx="115" cy="114" r="2" fill="#3b82f6"/><circle cx="107" cy="138" r="1.5" fill="#f59e0b"/><circle cx="104" cy="136" r="1.5" fill="#9b99b8"/><circle cx="129" cy="163" r="1.5" fill="#ec4899"/><circle cx="53" cy="135" r="2.5" fill="#8b5cf6"/><circle cx="79" cy="161" r="1.5" fill="#9b99b8"/><circle cx="107" cy="180" r="2.5" fill="#f59e0b"/><circle cx="89" cy="162" r="1.5" fill="#3b82f6"/><circle cx="72" cy="182" r="1.5" fill="#ec4899"/>
              </g>
              <g>
                <circle cx="333" cy="94" r="1.5" fill="#3b82f6"/><circle cx="315" cy="108" r="1.5" fill="#9b99b8"/><circle cx="270" cy="98" r="1.5" fill="#f59e0b"/><circle cx="291" cy="106" r="2" fill="#22d3ee"/><circle cx="292" cy="107" r="2.5" fill="#3b82f6"/><circle cx="258" cy="104" r="2" fill="#9b99b8"/><circle cx="241" cy="156" r="2" fill="#8b5cf6"/><circle cx="278" cy="132" r="1.5" fill="#9b99b8"/><circle cx="302" cy="98" r="2.5" fill="#8b5cf6"/><circle cx="327" cy="141" r="1.5" fill="#f59e0b"/>
                <circle cx="241" cy="179" r="2" fill="#f59e0b"/><circle cx="291" cy="125" r="2.5" fill="#22d3ee"/><circle cx="273" cy="172" r="2" fill="#3b82f6"/><circle cx="271" cy="101" r="1.5" fill="#8b5cf6"/><circle cx="257" cy="156" r="1.5" fill="#8b5cf6"/><circle cx="320" cy="119" r="2" fill="#22d3ee"/><circle cx="247" cy="133" r="1.5" fill="#8b5cf6"/><circle cx="279" cy="157" r="2" fill="#9b99b8"/><circle cx="255" cy="172" r="2" fill="#22d3ee"/><circle cx="317" cy="119" r="1.5" fill="#f59e0b"/>
                <circle cx="315" cy="160" r="2.5" fill="#ec4899"/><circle cx="295" cy="167" r="2.5" fill="#8b5cf6"/><circle cx="308" cy="99" r="1.5" fill="#f59e0b"/><circle cx="285" cy="153" r="1.5" fill="#8b5cf6"/><circle cx="326" cy="167" r="2" fill="#9b99b8"/><circle cx="273" cy="140" r="1.5" fill="#3b82f6"/><circle cx="327" cy="169" r="2.5" fill="#f59e0b"/><circle cx="302" cy="94" r="2.5" fill="#f59e0b"/><circle cx="293" cy="134" r="2.5" fill="#8b5cf6"/><circle cx="302" cy="108" r="1.5" fill="#ec4899"/>
              </g>
              <g><circle cx="467" cy="114" r="2" fill="#f59e0b"/><circle cx="471" cy="159" r="2" fill="#3b82f6"/><circle cx="462" cy="126" r="1.5" fill="#22d3ee"/><circle cx="462" cy="172" r="2" fill="#ec4899"/><circle cx="505" cy="89" r="2" fill="#22d3ee"/><circle cx="512" cy="132" r="2.5" fill="#f59e0b"/><circle cx="445" cy="136" r="1.5" fill="#9b99b8"/><circle cx="483" cy="173" r="2" fill="#8b5cf6"/><circle cx="437" cy="112" r="2" fill="#22d3ee"/><circle cx="506" cy="127" r="2.5" fill="#22d3ee"/></g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gf4a)">
                <line x1="152" y1="135" x2="226" y2="135"/>
                <line x1="342" y1="135" x2="416" y2="135"/>
                <line x1="532" y1="135" x2="606" y2="135"/>
              </g>
              <g text-anchor="middle">
                <text x="95" y="210">1. Random noise</text>
                <text x="285" y="210">2. Rough shapes</text>
                <text x="475" y="210">3. More detail</text>
                <text x="665" y="210">4. Final image</text>
              </g>
              <line x1="20" y1="224" x2="740" y2="224" stroke="#3a3a66" stroke-dasharray="4 4"/>
              <g text-anchor="middle">
                <rect x="40" y="236" width="200" height="34" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="140" y="258">Text to speech: your text</text>
                <rect x="280" y="236" width="200" height="34" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="380" y="258">Voice model</text>
                <rect x="520" y="236" width="200" height="34" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="620" y="258">Spoken audio file</text>
                <rect x="40" y="284" width="200" height="34" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="140" y="306">Video: prompt or photo</text>
                <rect x="280" y="284" width="200" height="34" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="380" y="306">Frames that must match</text>
                <rect x="520" y="284" width="200" height="34" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="620" y="306">Short clip, often seconds</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gf4a)">
                <line x1="241" y1="253" x2="277" y2="253"/>
                <line x1="481" y1="253" x2="517" y2="253"/>
                <line x1="241" y1="301" x2="277" y2="301"/>
                <line x1="481" y1="301" x2="517" y2="301"/>
              </g>
            </g>
          </svg>
          <figcaption>An image maker starts from random noise and cleans it up in many small steps, guided by your prompt. Voice and video tools follow their own paths.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Images: from noise to picture</h3>
          <p>Many image makers use a method called <strong>diffusion</strong>. Here is the idea in plain words:</p>
          <ol class="lc-list">
            <li><strong>Training</strong>: the model sees a huge number of pictures with captions. Each picture is covered with more and more random noise, like TV static. The model learns to remove the noise, one small step at a time.</li>
            <li><strong>Creating</strong>: when you write a prompt, the tool starts from pure random noise. It removes noise in many steps. At each step, your prompt guides what shapes appear.</li>
          </ol>
          <p>Because each picture starts from different random noise, the same prompt gives a new picture every time. Some newer tools work in other ways, but the advice in this lesson is the same.</p>
          <p>A good image prompt names the <strong>subject</strong>, <strong>setting</strong>, <strong>style</strong>, <strong>light</strong>, <strong>colours</strong> and <strong>shape</strong>. Tom needs a decorative picture for an autumn open-house flyer at Hudson Lane Realty:</p>
          <pre><code>Weak:   a house in autumn

        Better: A flat illustration of autumn leaves around a cosy front door,
                warm orange and deep green colours, soft evening light,
                no people, no text, no real buildings, landscape shape.</code></pre>
          <p>You can make images in ChatGPT, Gemini and Microsoft Copilot, and in specialist tools such as Adobe Firefly and Midjourney. Rules for business use differ by tool and plan, so check the tool's current help pages and terms.</p>
        </div>
        <div class="lc-card">
          <h3>Audio and video</h3>
          <p><strong>Text to speech</strong> (TTS) turns written text into a natural spoken voice. Mia turns her own revision notes into audio. She listens on the bus to college. TTS also helps people who find reading hard. The opposite tool, <strong>speech to text</strong>, writes down what people say.</p>
          <p>Some tools can also copy a real person's voice from a short recording. This is called <strong>voice cloning</strong>. Criminals use cloned voices in scam phone calls. Never copy someone's voice without their clear permission.</p>
          <p><strong>Video generation</strong> makes short clips from a prompt or a photo. It is harder than images, because every frame (single picture in a video) must match the one before. Clips are usually short, often only seconds long. Video features are in some assistants, such as Google's Gemini app on some plans, and in specialist apps. They change fast, so check the tool's current help pages.</p>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Good at</th><th>Often bad at</th><th>What you check</th></tr></thead>
            <tbody>
              <tr><td>Images</td><td>Illustrations, backgrounds, ideas, mood boards</td><td>Words inside pictures, hands, exact logos, correct science diagrams</td><td>Every label, every word, every detail</td></tr>
              <tr><td>Speech (TTS)</td><td>Reading text aloud in clear, natural voices</td><td>Unusual names, technical words, emotion</td><td>Listen to it all; fix how names are said</td></tr>
              <tr><td>Music and sound</td><td>Short background tracks and effects</td><td>Long pieces that stay interesting</td><td>The tool's rules for using it in public</td></tr>
              <tr><td>Video</td><td>Short mood clips, simple animations</td><td>Long scenes, physics, faces that stay the same</td><td>Every frame, and that nothing misleads</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Honest use: never fake what is real</h3>
          <p>Tom's manager, Dana, has a clear rule. AI images may decorate a flyer. They must never show or change what a real home looks like. Adding a garden, removing a crack or brightening a dark room could mislead renters. It may also break advertising rules. Some agencies use "virtual staging" (adding digital furniture to an empty room), but they label it clearly. Ask your manager about the rules where you work.</p>
          <p>The same goes for school. Mia once asked for a labelled diagram of a chloroplast. The picture looked good, but two labels were in the wrong place. She drew her own diagram from the textbook instead.</p>
          <p>Some tools add an invisible watermark or a "Content Credentials" label to AI images. These help, but they are not on every image. You will learn to spot fakes later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fine to try, or do not do it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each use of image, voice or video AI.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine to try (then check)"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not do this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Her own notes, read aloud for her own study. She still listens for mistakes in names.">Mia turns her own notes into audio to listen to on the bus.</li>
              <li data-bucket="ok" data-why="A decorative graphic does not claim to show a real place. Tom checks it has no strange text.">Tom makes an autumn leaves background for an open-house flyer.</li>
              <li data-bucket="no" data-why="This changes what a real home looks like. It misleads renters.">Tom adds a sunny garden to the photo of an apartment that has no garden.</li>
              <li data-bucket="no" data-why="Copying a person's voice without permission is wrong and is a tactic used in scams.">A student copies a friend's voice to make a prank call to her mum.</li>
              <li data-bucket="ok" data-why="It is fine as a starting idea, because she checks every label against her textbook.">Mia asks for a simple sketch of a leaf, then checks each label in her textbook.</li>
              <li data-bucket="no" data-why="An AI video tour that is not of the real rooms gives renters a false picture.">Tom makes an AI video "tour" of an apartment that does not show its real rooms.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI to write image prompts for you. Then paste one into any image tool and check the picture with care.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an expert at writing prompts for AI image tools. Use simple English.

        I need an image for: [a flyer for a free autumn open-house event at a small real estate agency in New York].
        Rules: the image must not show a real building, a real home or real people. No text inside the image.

        Please:
        1. Write 3 different image prompts. Each one must say: subject, setting, style (for example flat illustration, watercolour or photo-style), light, colours and shape (square, portrait or landscape).
        2. For each prompt, say in one line where it would work best.
        3. List 4 things AI image tools often get wrong that I should check before I use the picture.
        4. Write one short line I could print on the flyer to say the image was made with AI.</pre>
            <ul class="ai-try-checks">
              <li>Each prompt has a subject, setting, style, light, colours and shape.</li>
              <li>No prompt asks for a real building, real home or real person.</li>
              <li>The checklist covers things like text, hands and odd details.</li>
              <li>The AI-made label is short and honest.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Image makers clean random noise into a picture, guided by your words. Voice and video tools also create new content that can look and sound real. Use them to decorate and explain, never to fake what is real, and always check every detail.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Meet the Main Tools</h1>
        </div>
        <p class="lc-lead">There are four big AI assistants: ChatGPT, Claude, Gemini and Microsoft Copilot. There are also many tools for pictures, voice and video. In this lesson you will learn what each main assistant is, what free and paid plans usually give you, and how to choose. You will see how Mia picks tools for studying and how Tom follows his agency's rules at work. Tools and prices change often, so you will also learn where to check the current details.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 326" role="img" aria-label="A decision chart. Start: who is the task for? If it is a work or school task, use the tool your boss or college approves, for example Tom uses Copilot with his work account. Then, for any tool, check privacy and history settings, limits on the free plan, web search and file uploads, and the price on the official page. If it is a personal task, free plans are fine to start; pick by what you need most: chat and writing, ChatGPT or Claude; Microsoft apps, Microsoft Copilot; Google apps, Gemini; pictures, Firefly or Midjourney. At the bottom: start free and pay only if you keep hitting limits that matter to you.">
            <defs><marker id="gf5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="250" y="14" width="260" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="37" font-weight="700">Who is the task for?</text>
              <rect x="30" y="86" width="300" height="74" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="180" y="108" font-weight="700" fill="#93c5fd">Work or school task</text>
              <text x="180" y="128" font-size="11">Use the tool your boss or college approves</text>
              <text x="180" y="146" font-size="11" fill="#9b99b8">Tom: Copilot with his work account</text>
              <rect x="430" y="86" width="300" height="74" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="580" y="108" font-weight="700" fill="#6ee7b7">Personal task</text>
              <text x="580" y="128" font-size="11">Free plans are fine to start</text>
              <text x="580" y="146" font-size="11" fill="#9b99b8">Pick by what you need most:</text>
              <rect x="430" y="178" width="148" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="504" y="199" font-size="12" font-weight="700">Chat and writing</text>
              <text x="504" y="217" font-size="11" fill="#9b99b8">ChatGPT or Claude</text>
              <rect x="582" y="178" width="148" height="50" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="656" y="199" font-size="12" font-weight="700">Microsoft apps</text>
              <text x="656" y="217" font-size="11" fill="#9b99b8">Microsoft Copilot</text>
              <rect x="430" y="238" width="148" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="504" y="259" font-size="12" font-weight="700">Google apps</text>
              <text x="504" y="277" font-size="11" fill="#9b99b8">Gemini</text>
              <rect x="582" y="238" width="148" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="656" y="259" font-size="12" font-weight="700">Pictures</text>
              <text x="656" y="277" font-size="11" fill="#9b99b8">Firefly or Midjourney</text>
              <rect x="30" y="178" width="300" height="110" rx="8" fill="#1f1f44" stroke="#3a3a66"/>
              <text x="180" y="200" font-weight="700">For any tool, check:</text>
              <g font-size="12" text-anchor="start">
                <text x="56" y="222">• privacy and history settings</text>
                <text x="56" y="241">• limits on the free plan</text>
                <text x="56" y="260">• web search and file uploads</text>
                <text x="56" y="279">• the price, on the official page</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gf5a)">
                <line x1="330" y1="50" x2="210" y2="84"/>
                <line x1="430" y1="50" x2="550" y2="84"/>
                <line x1="180" y1="160" x2="180" y2="175"/>
                <line x1="504" y1="160" x2="504" y2="175"/>
                <line x1="656" y1="160" x2="656" y2="175"/>
              </g>
              <text x="380" y="314" font-size="12" fill="#9b99b8">Start free. Pay only if you keep hitting limits that matter to you.</text>
            </g>
          </svg>
          <figcaption>For work or school, the approved tool comes first. For personal use, pick by the apps you already use and the task you need.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four main assistants</h3>
          <p>An <strong>AI assistant</strong> is an app or website where you chat with AI. Each one is made by a different company and uses that company's models. All four can write, summarise, explain, read files and pictures, and search the web, even on their free plans (with limits). They differ in their extras.</p>
          <table class="lc-table">
            <thead><tr><th>Assistant</th><th>Made by</th><th>Good to know</th></tr></thead>
            <tbody>
              <tr><td>ChatGPT</td><td>OpenAI</td><td>The best-known chatbot. Can also make images and hold voice conversations. Has a large choice of plans.</td></tr>
              <tr><td>Claude</td><td>Anthropic</td><td>Known for clear writing and for working with long documents. Can create files such as documents and spreadsheets.</td></tr>
              <tr><td>Gemini</td><td>Google</td><td>Works closely with Gmail, Google Docs, Google Drive and Android phones. Some plans can make short videos.</td></tr>
              <tr><td>Microsoft Copilot</td><td>Microsoft</td><td>A free app and website. Also built into Windows and Microsoft 365 apps such as Word, Excel, PowerPoint and Outlook.</td></tr>
            </tbody>
          </table>
          <p><strong>Image tools</strong>: ChatGPT, Gemini and Copilot can make pictures. Specialist tools include Adobe Firefly and Midjourney. Design apps such as Canva also have AI features.</p>
          <p>Each company releases new models every few months. Model names change often, so this course uses the app names. Check the tool's current help pages for what it can do today.</p>
        </div>
        <div class="lc-card">
          <h3>Free and paid plans</h3>
          <p>All four assistants have a <strong>free plan</strong>. Free plans have <strong>usage limits</strong>: after a number of messages, uploads or images, you wait or switch to a simpler model. Paid plans give higher limits, the strongest models and extra features, such as deep research reports or video.</p>
          <table class="lc-table">
            <thead><tr><th>Assistant</th><th>Personal plans (October 2026)</th></tr></thead>
            <tbody>
              <tr><td>ChatGPT</td><td>Free, then Go, Plus and Pro</td></tr>
              <tr><td>Claude</td><td>Free, then Pro and Max</td></tr>
              <tr><td>Gemini</td><td>Free, then Google AI Plus, Google AI Pro and Google AI Ultra</td></tr>
              <tr><td>Microsoft Copilot</td><td>Free app. Microsoft 365 Personal and Family plans include Copilot in Office apps, with a monthly allowance of AI credits.</td></tr>
            </tbody>
          </table>
          <p>In the US, popular paid plans cost about $20 a month. Examples are ChatGPT Plus, Claude Pro and Google AI Pro. Some plans cost less, and the top plans cost much more. UK prices are in pounds and are different. Plans and prices change often. Always check the official pricing page before you pay.</p>
          <p><strong>Work and school plans</strong> are different again. Your employer or college buys them, for example Microsoft 365 Copilot, ChatGPT Business or Gemini in Google Workspace. They usually have stronger data protection and admin controls. That is why Tom must use the tool Hudson Lane Realty approves, and not his personal free account.</p>
        </div>
        <div class="lc-card">
          <h3>How to choose: test with your real task</h3>
          <p>Reviews online go out of date fast. The best test is your own task. Mia ran the same prompt in her college Copilot and in the free plan of ChatGPT. She used a normal study topic and no personal details:</p>
          <pre><code>Make 5 multiple-choice questions on limiting factors in photosynthesis
        for A-level Biology. Give the answers at the end, with one line explaining each.</code></pre>
          <p>Then she compared the two answers:</p>
          <table class="lc-table">
            <thead><tr><th>What to compare</th><th>How to check</th></tr></thead>
            <tbody>
              <tr><td>Correct</td><td>Check every answer against your notes or textbook.</td></tr>
              <tr><td>Followed the format</td><td>Did you get 5 questions, with answers at the end?</td></tr>
              <tr><td>Right level</td><td>Is it at your level, not too easy and not too hard?</td></tr>
              <tr><td>Clear</td><td>Can you understand it on the first read?</td></tr>
              <tr><td>Fits your day</td><td>Does it work in the apps and devices you already use?</td></tr>
            </tbody>
          </table>
          <p>Both tools did well. Mia chose her college Copilot for study, because her college approves it and it works with her college files. She did not need to pay for anything.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: choose and start a tool</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps for choosing an AI assistant in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Check your work or college rules, and which AI tools they approve.</li>
              <li data-order="2">Write down 2 or 3 real tasks you want help with.</li>
              <li data-order="3">Run the same test prompt in 2 tools on free plans, with no private data.</li>
              <li data-order="4">Compare the answers: correct, right format, right level, clear.</li>
              <li data-order="5">Open the settings and check the privacy and chat history options.</li>
              <li data-order="6">Pay for a plan only if you keep hitting limits that matter to you.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI to help you choose tools for your own needs. Then check its advice on the official pricing pages.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a neutral adviser who helps beginners choose AI tools. Do not favour any one company.

        About me: [I am an office assistant at a small real estate agency in New York].
        Devices: [Windows laptop at work, iPhone at home].
        Apps I use most: [Outlook, Word, Excel].
        Tasks I want help with: [drafting emails, writing property listings, summarising long documents].
        Budget: [$0, or up to $20 a month for personal use].
        Rules: [my employer has approved Microsoft Copilot for work].

        Please:
        1. Say which tool I should use for work and which, if any, for personal use. Give 2 reasons each.
        2. Make a table: tool, what it is good at for my tasks, what free-plan limits to expect.
        3. Write one test prompt with no private data that I can run in two tools to compare them.
        4. List 3 privacy settings I should check.

        Do not state exact prices unless you are sure. Remind me to check the official pricing pages.</pre>
            <ul class="ai-try-checks">
              <li>For work, it points you to the tool your employer approves.</li>
              <li>It does not invent features or exact prices, or it tells you to check them.</li>
              <li>The test prompt contains no private or client data.</li>
              <li>It names real privacy settings to check, such as chat history.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The best AI tool is the one your work or school approves and that fits the apps you already use. Test tools with your own real task, start on a free plan, and check prices and privacy settings on the official pages before you pay.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Writing Your First Prompts</h1>
        </div>
        <p class="lc-lead">A prompt is the message you give an AI. A short, vague prompt gets a long, general answer. A clear prompt gets an answer you can use. In this lesson you will learn a simple recipe with three parts: task, context and format. You will compare weak and better prompts from Mia and Tom. You will also learn how to use follow-up questions to fix and improve an answer, instead of starting again.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A prompt recipe. Three parts flow into your prompt: 1, the task, what you want done, for example write a reply; 2, the context, who it is for, why, and the facts it needs; 3, the format, length, layout and tone. Your prompt goes to the AI, which gives a draft. You check the draft. A loop arrow goes from you check back to your prompt, labelled follow-up: make it shorter, fix a fact, add an example.">
            <defs><marker id="gf6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="240" height="60" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="140" y="44" font-weight="700" fill="#f9a8d4">1. Task</text>
              <text x="140" y="65" font-size="11" fill="#9b99b8">What you want done</text>
              <rect x="20" y="100" width="240" height="60" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="140" y="124" font-weight="700" fill="#93c5fd">2. Context</text>
              <text x="140" y="145" font-size="11" fill="#9b99b8">Who it is for, why, the facts</text>
              <rect x="20" y="180" width="240" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="140" y="204" font-weight="700" fill="#6ee7b7">3. Format</text>
              <text x="140" y="225" font-size="11" fill="#9b99b8">Length, layout and tone</text>
              <rect x="320" y="100" width="130" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="385" y="135" font-weight="700">Your prompt</text>
              <rect x="490" y="100" width="110" height="60" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="545" y="126" font-weight="700">AI draft</text>
              <text x="545" y="145" font-size="11" fill="#9b99b8">fast, not final</text>
              <rect x="630" y="100" width="110" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="685" y="126" font-weight="700">You check</text>
              <text x="685" y="145" font-size="11" fill="#9b99b8">facts and fit</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gf6a)">
                <line x1="260" y1="50" x2="318" y2="112"/>
                <line x1="260" y1="130" x2="316" y2="130"/>
                <line x1="260" y1="210" x2="318" y2="148"/>
                <line x1="450" y1="130" x2="486" y2="130"/>
                <line x1="600" y1="130" x2="626" y2="130"/>
                <path d="M685,160 L685,230 L385,230 L385,164"/>
              </g>
              <text x="535" y="252" font-size="12" fill="#fcd34d">Follow-up: make it shorter, fix a fact, add an example</text>
              <text x="380" y="286" font-size="12" fill="#9b99b8">Keep the same chat for follow-ups, so the AI remembers what you asked.</text>
            </g>
          </svg>
          <figcaption>A good prompt has a task, context and a format. Then you check the draft and improve it with follow-up messages.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The recipe: task, context, format</h3>
          <p>The AI only knows what you tell it. It does not know your class, your job or your facts. So a good prompt answers three questions:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>The question it answers</th><th>Example words</th></tr></thead>
            <tbody>
              <tr><td><strong>Task</strong></td><td>What should the AI do?</td><td>Explain, summarise, draft, list, compare, quiz me</td></tr>
              <tr><td><strong>Context</strong></td><td>Who is it for? Why? What facts does it need?</td><td>"I am an A-level student." "Use only these facts."</td></tr>
              <tr><td><strong>Format</strong></td><td>What should the answer look like?</td><td>"5 bullet points", "a table", "under 120 words", "friendly tone"</td></tr>
            </tbody>
          </table>
          <p>You do not need perfect grammar. Plain sentences are fine. Start with the task, add the context, and finish with the format.</p>
          <p>Never put private details in a prompt. Use a placeholder such as <code>[client name]</code> instead of a real name, phone number or email address.</p>
        </div>
        <div class="lc-card">
          <h3>Weak vs better: Mia and Tom</h3>
          <p>Mia's mock exams start on Monday 11 January 2027. She wants a revision plan. Her first prompt was too short:</p>
          <pre><code>Make me a revision timetable.</code></pre>
          <p>The AI did not know her subjects, dates or free time. It guessed all of them. Here is her better prompt:</p>
          <pre><code>Task: Make me a weekly revision timetable.
        Context: I am an A-level student in London. My subjects are Biology,
        Chemistry and Psychology. My mock exams start on Monday 11 January 2027.
        I start revising on Monday 12 October 2026. I can study 2 hours on
        weekdays and 4 hours on Saturdays. Sundays are free.
        Format: A table with days as rows and subjects in the cells.
        Give equal time to each subject. Add one line of tips under the table.</code></pre>
          <p>That is 14 hours a week for 13 weeks, so 182 hours in total. Mia checks the AI's table adds up to 14 hours a week. She does not trust its sums without checking.</p>
          <p>Tom needs to reply to a viewing request for Apartment 3R, 41 Calder Street. His weak prompt:</p>
          <pre><code>Reply to this email.</code></pre>
          <p>His better prompt, in his work Copilot, with no client details:</p>
          <pre><code>Task: Draft a reply to a renter who asked to view an apartment.
        Context: I work at a real estate agency in New York. The apartment is a
        2-bed, 3rd-floor walk-up in Astoria at $3,150 per month, available
        1 November 2026. Viewing times: Thursday 15 October at 5:30pm or
        Saturday 17 October at 11am. Call the renter [Name].
        Format: Under 100 words. Friendly and clear. Ask them to choose a time.
        Do not add facts that are not in this prompt.</code></pre>
          <p>Tom checks the dates, times and rent against his calendar and the fact sheet. Dana approves the wording before he sends it.</p>
        </div>
        <div class="lc-card">
          <h3>Follow-up questions: improve, do not restart</h3>
          <p>The first answer is rarely the final one. Stay in the same chat and send a short follow-up. The AI still sees your earlier messages, so you do not need to repeat everything.</p>
          <table class="lc-table">
            <thead><tr><th>If the answer is…</th><th>Try this follow-up</th></tr></thead>
            <tbody>
              <tr><td>Too long</td><td>"Cut it to 60 words. Keep the viewing times."</td></tr>
              <tr><td>Too hard</td><td>"Explain point 2 again, in simpler words, with an everyday example."</td></tr>
              <tr><td>Wrong</td><td>"The building has no elevator. Fix that and check the rest against my facts."</td></tr>
              <tr><td>Missing something</td><td>"Add one line saying cats are allowed but dogs are not."</td></tr>
              <tr><td>Not what you meant</td><td>"Before you answer again, ask me up to 3 questions about what I need."</td></tr>
            </tbody>
          </table>
          <p>The last one is very useful. When you are not sure what to include, let the AI ask you questions first. Then answer them in one message.</p>
          <p>Start a <strong>new chat</strong> when you change topic. Old messages from another task can confuse the answer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: task, context or format?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each line comes from Mia's or Tom's prompt. Sort it into the part of the recipe it belongs to.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="task" data-label="Task"></div>
              <div data-sorter-target="bucket" data-bucket="context" data-label="Context"></div>
              <div data-sorter-target="bucket" data-bucket="format" data-label="Format"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="task" data-why="It says what the AI must do: make a timetable.">Make me a weekly revision timetable.</li>
              <li data-bucket="context" data-why="It tells the AI who Mia is and what she studies.">I am an A-level student studying Biology, Chemistry and Psychology.</li>
              <li data-bucket="format" data-why="It says how the answer should look: a table.">Use a table with days as rows.</li>
              <li data-bucket="task" data-why="It says what the AI must do: draft a reply.">Draft a reply to a renter who asked to view an apartment.</li>
              <li data-bucket="context" data-why="These are facts the AI needs to write a correct reply.">The apartment is a 3rd-floor walk-up at $3,150 per month.</li>
              <li data-bucket="format" data-why="Length and tone are about the shape of the answer.">Under 100 words, friendly and clear.</li>
              <li data-bucket="context" data-why="It explains Mia's dates and free time, so the plan fits her life.">My mocks start on 11 January 2027 and I can study 2 hours on weekdays.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI as a prompt coach. Give it a weak prompt of your own, and let it help you turn it into a clear one with task, context and format.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly coach who helps beginners write better prompts for AI assistants. Use simple English.

        My weak prompt is: "[Make me a revision timetable.]"
        What I really need: [a weekly plan for my A-level mocks, which start in 13 weeks].

        Please:
        1. Ask me up to 4 short questions about what is missing. Number them. Then stop and wait for my answers.
        2. After I answer, rewrite my prompt with three labelled parts: Task, Context, Format.
        3. Under the new prompt, list 2 follow-up messages I could send to improve the first answer.
        4. Remind me which parts of the answer I must check myself.

        Do not ask me for private details such as my full name, address or phone number.</pre>
            <ul class="ai-try-checks">
              <li>It asks questions first and waits, instead of guessing.</li>
              <li>The new prompt has clear Task, Context and Format parts.</li>
              <li>The follow-ups are short and specific.</li>
              <li>It does not ask for private details.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The AI only knows what you put in the prompt. Say the task, give the context and facts, and describe the format you want. Then improve the answer with short follow-up messages, and check every fact, date and number yourself.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Prompting Patterns That Work</h1>
        </div>
        <p class="lc-lead">You already know the basic recipe: task, context and format. Now you will add five patterns that make answers better again and again. You will give the AI a role, show it examples, ask it to work in steps, set clear limits and improve the answer in rounds. These patterns work in every main assistant. You will see how Mia uses them to study and how Tom uses them to build an email template his manager can approve.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Five prompt patterns shown as cards. 1, give a role: you are an exam tutor. 2, show examples: match this style. 3, ask for steps: show each step. 4, set limits: max 80 words, use only my facts. 5, improve in rounds: now make it warmer. Below, a strip shows rounds: round 1 draft, you check, round 2 better, you check, final, a person approves.">
            <defs><marker id="gf7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="136" height="110" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="88" y="46" font-weight="700" fill="#f9a8d4">1. Role</text>
              <text x="88" y="70" font-size="11">Who the AI</text>
              <text x="88" y="86" font-size="11">should act as</text>
              <text x="88" y="114" font-size="11" fill="#9b99b8">"exam tutor"</text>
              <rect x="166" y="20" width="136" height="110" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="234" y="46" font-weight="700" fill="#93c5fd">2. Examples</text>
              <text x="234" y="70" font-size="11">Show what good</text>
              <text x="234" y="86" font-size="11">looks like</text>
              <text x="234" y="114" font-size="11" fill="#9b99b8">"match this style"</text>
              <rect x="312" y="20" width="136" height="110" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="46" font-weight="700" fill="#6ee7b7">3. Steps</text>
              <text x="380" y="70" font-size="11">Work in order,</text>
              <text x="380" y="86" font-size="11">so you can check</text>
              <text x="380" y="114" font-size="11" fill="#9b99b8">"show each step"</text>
              <rect x="458" y="20" width="136" height="110" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="526" y="46" font-weight="700" fill="#fcd34d">4. Limits</text>
              <text x="526" y="70" font-size="11">Length, facts,</text>
              <text x="526" y="86" font-size="11">what not to do</text>
              <text x="526" y="114" font-size="11" fill="#9b99b8">"max 80 words"</text>
              <rect x="604" y="20" width="136" height="110" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="672" y="46" font-weight="700" fill="#67e8f9">5. Rounds</text>
              <text x="672" y="70" font-size="11">Check, then ask</text>
              <text x="672" y="86" font-size="11">for one change</text>
              <text x="672" y="114" font-size="11" fill="#9b99b8">"now make it warmer"</text>
              <text x="380" y="166" font-size="12" fill="#9b99b8">Improving in rounds</text>
              <rect x="20" y="182" width="120" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="80" y="209" font-size="12">Round 1 draft</text>
              <rect x="175" y="182" width="100" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="225" y="209" font-size="12">You check</text>
              <rect x="310" y="182" width="120" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="370" y="209" font-size="12">Round 2 better</text>
              <rect x="465" y="182" width="100" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="515" y="209" font-size="12">You check</text>
              <rect x="600" y="182" width="140" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="670" y="209" font-size="12">Final: you approve</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gf7a)">
                <line x1="140" y1="204" x2="171" y2="204"/>
                <line x1="275" y1="204" x2="306" y2="204"/>
                <line x1="430" y1="204" x2="461" y2="204"/>
                <line x1="565" y1="204" x2="596" y2="204"/>
              </g>
              <text x="380" y="262" font-size="12" fill="#9b99b8">Change one thing per round. It is easier to see what helped.</text>
              <text x="380" y="284" font-size="12" fill="#9b99b8">You can mix patterns in one prompt.</text>
            </g>
          </svg>
          <figcaption>Five patterns you can add to any prompt. The last one, rounds, turns a first draft into a final answer that you check and approve.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five patterns in one table</h3>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>What it does</th><th>Example line</th></tr></thead>
            <tbody>
              <tr><td><strong>Give a role</strong></td><td>Sets the level, words and point of view.</td><td>"You are a patient A-level Chemistry tutor."</td></tr>
              <tr><td><strong>Show examples</strong></td><td>Shows the style or layout you want. This works better than describing it.</td><td>"Here are 2 replies my manager liked. Match their tone."</td></tr>
              <tr><td><strong>Ask for steps</strong></td><td>Makes the AI work in order. You can check each step.</td><td>"Show each step of the calculation on its own line."</td></tr>
              <tr><td><strong>Set limits</strong></td><td>Controls length, facts and what to avoid.</td><td>"Max 80 words. Use only my facts. Do not promise anything."</td></tr>
              <tr><td><strong>Improve in rounds</strong></td><td>Fixes one thing at a time after you check.</td><td>"Good. Now make the opening warmer. Keep the rest."</td></tr>
            </tbody>
          </table>
          <p>A role does not make the AI an expert. A "tutor" role changes the style of the answer, not how true it is. You still check the facts.</p>
        </div>
        <div class="lc-card">
          <h3>Mia: a role plus steps</h3>
          <p>Mia finds mole calculations hard in Chemistry. A <strong>mole</strong> is a unit chemists use to count particles. She wants to see the method, not just the answer. So she asks for steps:</p>
          <pre><code>You are a patient A-level Chemistry tutor.
        Question: How many moles are in 9.0 g of water?
        Show each step on its own line: the formula, the numbers, the answer.
        Use H = 1.0 and O = 16.0.
        Then give me a similar question to try. Do not give its answer yet.</code></pre>
          <p>The AI shows three steps. The mass of one mole of water is 18.0 g (1.0 + 1.0 + 16.0). Moles = mass ÷ mass of one mole. So 9.0 ÷ 18.0 = 0.50 mol.</p>
          <p>Because each step is on its own line, Mia can check them one by one with her calculator and textbook. If one step is wrong, she can see exactly where. Then she tries the new question herself before asking for the answer.</p>
        </div>
        <div class="lc-card">
          <h3>Tom: examples, limits and rounds</h3>
          <p>Renters often email Hudson Lane Realty to ask if an apartment is still free. Tom wants a <strong>template</strong> (a reusable message with gaps to fill). Dana must approve it. He works in his work Copilot and uses no client details.</p>
          <p>He pastes two short replies Dana wrote and liked. These are his <strong>examples</strong>. Then he sets <strong>limits</strong>:</p>
          <pre><code>You are an assistant at a small, friendly real estate agency in New York.
        Write a reply template for renters who ask if an apartment is available.
        Match the tone of these two examples:
        Example 1: "Hi [Name], thanks for getting in touch! Yes, it's still
        available. Would Thursday at 5:30pm or Saturday at 11am suit you?"
        Example 2: "Hi [Name], great question. The rent includes heat and hot
        water. Happy to show you around this week."
        Limits: max 80 words. Use [gaps] for names, addresses and times.
        Do not promise that an application will be approved.
        Do not describe the kind of person who should live there.</code></pre>
          <p>The limits come from Dana's rules. The agency cannot promise approval. And listings describe the home, never the people.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow Tom's rounds</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Round 1">Tom asks Copilot for a reply template for renters who ask if an apartment is free. He gives a role and a limit of 80 words, but no examples.</li>
              <li data-kind="answer" data-label="Draft 1">A polite reply of about 140 words. It starts "Dear Valued Client" and sounds very formal.</li>
              <li data-kind="check" data-label="Tom checks">Too long: 140 words, not 80. Too formal: Dana's emails are short and friendly. He changes one thing at a time.</li>
              <li data-kind="user" data-label="Round 2">Tom pastes Dana's two example replies. He writes: "Match the tone of these examples. Keep the 80-word limit."</li>
              <li data-kind="answer" data-label="Draft 2">A friendly reply of 74 words with [Name] and [time] gaps. But it ends: "We can get your application approved fast!"</li>
              <li data-kind="warn" data-label="Problem">The agency cannot promise approval. The landlord decides. A promise like this could mislead a renter.</li>
              <li data-kind="user" data-label="Round 3">"Remove the promise about approval. Never promise an application result. Keep everything else."</li>
              <li data-kind="check" data-label="Final check">Tom reads it once more: correct tone, no promises, no people described, all gaps marked. He sends it to Dana, who approves it as a template.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use all five patterns in one prompt to make a study or work aid. Then improve it in one more round.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">Role: You are a [patient A-level Psychology tutor] who uses simple English.

        Task: Make me [5 flashcards on short-term and long-term memory].

        Example of the style I want:
        Front: What is the capacity of short-term memory?
        Back: About 7 items, plus or minus 2 (Miller).

        Steps: First list the 5 key ideas you will cover. Then write the 5 cards.

        Limits:
        - Each back is under 25 words.
        - Use only well-known ideas found in standard textbooks.
        - If you are not sure about a fact, write (check) next to it.

        At the end, ask me one question about what to change in round 2.</pre>
            <ul class="ai-try-checks">
              <li>The cards follow the style of the example.</li>
              <li>It lists the key ideas before the cards.</li>
              <li>Each back keeps to the word limit.</li>
              <li>You check every fact in your notes or textbook, even ones without (check).</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Roles, examples, steps, limits and rounds turn a general answer into one that fits your task. Examples are often the strongest pattern, and limits stop the AI adding things you did not ask for. Improve one thing per round, and always check the final version yourself.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Working with Your Own Files</h1>
        </div>
        <p class="lc-lead">Most AI assistants let you upload a file or a photo and ask questions about it. This is one of the most useful things AI can do. It can summarise long notes, answer questions about a document and explain a picture. In this lesson you will learn how to ask good questions about a file. You will learn how to keep the AI to what the file really says. You will also learn what you must never upload.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Before you upload, sort your file. Green: fine to upload, such as your own notes, public documents, and work files in the tool your work approves. Amber: remove details first, such as names, emails, phone numbers and account numbers. Red: never upload, such as passwords, ID and Social Security numbers, other people's private data, and confidential files in a public tool. Files that pass go to: ask well. Answer only from the file, quote the part you used, say not in the file if it is missing. Then you check the answer against the file.">
            <defs><marker id="gf8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="110" width="110" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="75" y="136" text-anchor="middle" font-weight="700">Your file</text>
              <text x="75" y="155" text-anchor="middle" font-size="11" fill="#9b99b8">or photo</text>
              <rect x="170" y="20" width="300" height="74" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="186" y="42" font-weight="700" fill="#6ee7b7">Fine to upload</text>
              <text x="186" y="62" font-size="11">Your own notes, public documents</text>
              <text x="186" y="80" font-size="11">Work files, only in the approved tool</text>
              <rect x="170" y="103" width="300" height="74" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="186" y="125" font-weight="700" fill="#fcd34d">Remove details first</text>
              <text x="186" y="145" font-size="11">Names, emails, phone numbers</text>
              <text x="186" y="163" font-size="11">Addresses, account numbers</text>
              <rect x="170" y="186" width="300" height="74" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="186" y="208" font-weight="700" fill="#f9a8d4">Never upload</text>
              <text x="186" y="228" font-size="11">Passwords, ID and Social Security numbers</text>
              <text x="186" y="246" font-size="11">Other people's private data, secret files</text>
              <rect x="520" y="40" width="220" height="140" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="630" y="64" text-anchor="middle" font-weight="700" fill="#93c5fd">Then ask well</text>
              <text x="536" y="90" font-size="12">• Answer only from the file</text>
              <text x="536" y="114" font-size="12">• Quote the part you used</text>
              <text x="536" y="138" font-size="12">• If it is missing, say</text>
              <text x="548" y="158" font-size="12">"not in the file"</text>
              <rect x="520" y="200" width="220" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="630" y="227" text-anchor="middle" font-weight="700">You check the answer</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gf8a)">
                <line x1="130" y1="130" x2="166" y2="62"/>
                <line x1="130" y1="140" x2="166" y2="140"/>
                <line x1="130" y1="150" x2="166" y2="218"/>
                <line x1="470" y1="57" x2="516" y2="80"/>
                <line x1="470" y1="140" x2="516" y2="125"/>
                <line x1="630" y1="180" x2="630" y2="196"/>
              </g>
              <text x="380" y="288" text-anchor="middle" font-size="12" fill="#9b99b8">Only green files, and amber files after you remove the details, go to the AI.</text>
            </g>
          </svg>
          <figcaption>Sort every file before you upload it. Then ask questions that keep the AI to what the file really says.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What you can do with a file</h3>
          <p>In ChatGPT, Claude, Gemini and Microsoft Copilot you can usually attach a file with a paperclip or plus button. Most accept documents such as PDF and Word files, spreadsheets and photos. Size limits and the number of uploads differ by tool and plan, so check the tool's current help pages.</p>
          <table class="lc-table">
            <thead><tr><th>You upload</th><th>You can ask for</th><th>Made-up example</th></tr></thead>
            <tbody>
              <tr><td>Long notes or a report</td><td>A summary, key points, a glossary of hard words</td><td>Mia: "Summarise my notes in 5 bullets."</td></tr>
              <tr><td>A document with rules or facts</td><td>Answers to specific questions</td><td>Tom: "Does this building allow pets?"</td></tr>
              <tr><td>Your own notes</td><td>Quiz questions, flashcards, a plan</td><td>Mia: "Make 5 questions from my notes."</td></tr>
              <tr><td>A photo or a screenshot</td><td>An explanation, feedback, the text written out</td><td>Mia: a photo of a graph she drew by hand</td></tr>
            </tbody>
          </table>
          <p>Mia photographs a graph she drew of the rate of photosynthesis against light intensity. She asks: "Is my graph shaped correctly? What labels are missing?" The AI says the shape is right but she forgot the units on the x-axis. She checks this in her textbook, and it is right. Then she fixes the graph herself.</p>
        </div>
        <div class="lc-card">
          <h3>Ask questions that stay inside the file</h3>
          <p>An AI can mix what is in your file with what it learned in training. It can also fill gaps with guesses. You saw this earlier with Mia's photosynthesis notes. So tell it to stay inside the file.</p>
          <p>Tom uploads <code>41_Calder_St_Building_Info.pdf</code> to his work Copilot. It is a made-up 4-page sheet from the landlord, with building rules and no personal details. His weak question:</p>
          <pre><code>Tell me about this building.</code></pre>
          <p>His better question:</p>
          <pre><code>Answer only from the attached building info sheet.
        Questions: 1. Are pets allowed? 2. When is the laundry room open?
        3. Is there bike storage?
        For each answer, quote the sentence from the sheet and give the page.
        If the sheet does not answer a question, write "Not in the sheet".</code></pre>
          <p>The AI answers: cats are allowed and dogs are not (page 2). The laundry room is open 7am to 10pm (page 3). For bike storage it writes "Not in the sheet". That is a good answer. Tom asks the landlord about bike storage instead of guessing.</p>
          <p>Tom still opens pages 2 and 3 and checks that the quotes are really there. AI can quote wrongly, or give the wrong page.</p>
        </div>
        <div class="lc-card">
          <h3>What not to upload</h3>
          <p>When you upload a file, you send a copy of it to the AI company. Some free and personal plans may use your chats and files to improve their models, unless you turn this off in the settings. Work and school accounts usually have stronger protection. For example, Microsoft says prompts in Copilot Chat with a work account are not used to train its foundation models. Check your own tool's privacy pages and your workplace rules.</p>
          <p>Even with good settings, follow these rules:</p>
          <ul class="lc-list">
            <li><strong>Never upload</strong> passwords, bank or card details, ID documents, Social Security or National Insurance numbers, or health records.</li>
            <li><strong>Never upload</strong> other people's private data or work without permission, such as a classmate's essay or a client's form.</li>
            <li><strong>Never upload</strong> confidential work files to a personal or public AI tool.</li>
            <li><strong>Remove details first</strong> from anything that names real people. Replace them with <code>[Name]</code> or <code>[Client A]</code>.</li>
          </ul>
          <p>Tom once nearly uploaded <code>Application_3R_Calder.pdf</code> to get a quick summary. It is a rental application with the applicant's name, Social Security number and pay slips. He stopped. Dana's rule is clear: rental applications never go into any AI tool. In the UK, UK GDPR also sets rules for how personal data is used. This is general information, not legal advice. Ask your manager or a qualified adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: upload it or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Mia and Tom want help with these files. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine to upload"></div>
              <div data-sorter-target="bucket" data-bucket="remove" data-label="Remove details first"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never upload"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="They are Mia's own notes with no personal details, and she uses a tool her college approves.">Mia's own photosynthesis notes, in her college Copilot</li>
              <li data-bucket="ok" data-why="It holds building rules only, no personal data, and Tom uses the work tool Dana approved.">The landlord's building info sheet, in Tom's work Copilot</li>
              <li data-bucket="never" data-why="It contains another person's Social Security number and pay details. Applications never go into AI.">A renter's application with a Social Security number and pay slips</li>
              <li data-bucket="never" data-why="It is someone else's work. Uploading it without permission is not fair, and it may break college rules.">A classmate's Psychology essay that Mia wants to compare with hers</li>
              <li data-bucket="remove" data-why="The question is fine, but the names and phone number must go first. Use [Name] instead.">A renter's email with their name and phone number, to draft a polite reply</li>
              <li data-bucket="never" data-why="Other students' names and marks are their private data. Mia should not share them.">Mia's teacher's mark sheet with other students' names and marks</li>
              <li data-bucket="remove" data-why="The notes are useful, but Mia should remove her full name and home address first.">Mia's revision plan that has her full name and home address at the top</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Practise asking questions that stay inside a document. The prompt includes a short made-up document, so you do not need to upload anything private.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful assistant. Answer ONLY from the document below. Do not use outside knowledge.

        DOCUMENT: [Building info sheet, 41 Calder Street, Astoria (made up).
        Page 1: The building has 5 floors and no elevator.
        Page 2: Cats are allowed. Dogs are not allowed.
        Page 3: The laundry room is in the basement and is open 7am to 10pm.
        Page 4: Trash goes in the bins behind the building.]

        Questions:
        1. [Are dogs allowed?]
        2. [When is the laundry room open?]
        3. [Is there a gym?]

        For each answer:
        - Quote the exact sentence you used and give the page number.
        - If the document does not answer it, write "Not in the document".
        Finally, list one question I should ask a person instead of the AI.</pre>
            <ul class="ai-try-checks">
              <li>Every answer quotes a real sentence from the document.</li>
              <li>The page numbers match the document.</li>
              <li>It writes "Not in the document" for the gym, instead of guessing.</li>
              <li>It adds nothing from outside the document.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Uploading a file lets AI summarise and answer questions about your own material. Tell it to answer only from the file, quote its source and say when something is missing. Sort every file before you upload it: never share passwords, ID numbers, other people's data or confidential work files.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Checking AI Answers</h1>
        </div>
        <p class="lc-lead">AI answers look neat and sound sure, even when they are wrong. So checking is not an extra step. It is part of using AI. In this lesson you will learn what hallucinations look like and how to check facts, numbers and sources. You will also learn lateral reading, the method professional fact checkers use. You will also learn how much checking each task needs, so you check carefully where it matters.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Left: how much to check depends on the risk. Low risk, such as ideas, rewording and a first draft: a quick read is enough. Medium risk, such as summaries and study explanations: check against your notes or the file. High risk, such as facts, numbers, dates, health, law, money and anything about people: check two trusted sources. Right: lateral reading in four steps. Pick out the claim. Open new tabs and search it. See what trusted sources say. Then keep it, fix it or drop it.">
            <defs><marker id="gf9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="200" y="26" text-anchor="middle" font-weight="700">How much to check?</text>
              <rect x="20" y="40" width="360" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="36" y="63" font-weight="700" fill="#6ee7b7">Low risk: a quick read</text>
              <text x="36" y="83" font-size="11">Ideas, rewording, a first draft</text>
              <text x="36" y="100" font-size="11" fill="#9b99b8">Does it make sense and fit the task?</text>
              <rect x="20" y="120" width="360" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="36" y="143" font-weight="700" fill="#fcd34d">Medium risk: check against the source</text>
              <text x="36" y="163" font-size="11">Summaries, study explanations</text>
              <text x="36" y="180" font-size="11" fill="#9b99b8">Compare line by line with your notes or file</text>
              <rect x="20" y="200" width="360" height="70" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="36" y="223" font-weight="700" fill="#f9a8d4">High risk: two trusted sources</text>
              <text x="36" y="243" font-size="11">Facts, numbers, dates, health, law, money, people</text>
              <text x="36" y="260" font-size="11" fill="#9b99b8">Read laterally, ask an expert if needed</text>
              <text x="580" y="26" text-anchor="middle" font-weight="700" fill="#93c5fd">Lateral reading</text>
              <g text-anchor="middle">
                <rect x="460" y="40" width="240" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="580" y="67">1. Pick out the claim</text>
                <rect x="460" y="102" width="240" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="580" y="129">2. Open new tabs, search it</text>
                <rect x="460" y="164" width="240" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="580" y="191">3. What do trusted sources say?</text>
                <rect x="460" y="226" width="240" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="580" y="253">4. Keep, fix or drop it</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gf9a)">
                <line x1="580" y1="84" x2="580" y2="98"/>
                <line x1="580" y1="146" x2="580" y2="160"/>
                <line x1="580" y1="208" x2="580" y2="222"/>
              </g>
              <text x="380" y="298" text-anchor="middle" font-size="12" fill="#9b99b8">The higher the risk, the more you check. You own the result, not the AI.</text>
            </g>
          </svg>
          <figcaption>Match your checking to the risk. For high-risk facts, leave the AI answer and see what trusted sources say: this is lateral reading.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What hallucinations look like</h3>
          <p>A <strong>hallucination</strong> is when AI states something false as if it were true. It is not lying on purpose. It predicts likely-looking text. Watch for these common kinds:</p>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Made-up example from this course</th><th>How to check</th></tr></thead>
            <tbody>
              <tr><td>Wrong fact</td><td>"The light-dependent reactions happen in the stroma."</td><td>Your notes, textbook or the original file</td></tr>
              <tr><td>Made-up source</td><td>A study or book that does not exist</td><td>Search the exact title in a library search or a search engine</td></tr>
              <tr><td>Wrong sum</td><td>"13 weeks × 14 hours = 172 hours"</td><td>A calculator or a spreadsheet formula</td></tr>
              <tr><td>Wrong date or day</td><td>"Open house on Sunday 17 October 2026"</td><td>A calendar: 17 October 2026 is a Saturday</td></tr>
              <tr><td>Extra detail</td><td>"Served by the N, W and R trains"</td><td>The official source, such as the transit operator's map</td></tr>
            </tbody>
          </table>
          <p>Mia's revision plan said 13 weeks of 14 hours makes 172 hours. She typed <code>=13*14</code> into a spreadsheet cell. It showed 182. AI chatbots can make simple maths slips, so check every number that matters.</p>
        </div>
        <div class="lc-card">
          <h3>Checking sources: Mia's made-up reference</h3>
          <p>Mia wants evidence for her Psychology essay plan. She asks for a study that shows self-testing helps memory. The AI gives this reference:</p>
          <pre><code>Hartley, S. and Moss, D. (2019). Self-testing and recall in
        sixth-form students. Journal of Revision Science, 12(3), 45-58.</code></pre>
          <p>It looks real. It has authors, a year, a journal and page numbers. But Mia searches for the exact title in her college library search and on the web. She finds nothing. She cannot find the journal either. The AI made the whole reference up. (In this course, it is a made-up example.)</p>
          <p>Mia then finds the testing effect in her Psychology textbook. It gives a real reference she can check. She uses that one in her plan.</p>
          <ul class="lc-list">
            <li>Never copy a reference from AI into your work without finding the real source yourself.</li>
            <li>Some assistants search the web and show links. Open the link. Check that the page really says what the AI claims.</li>
            <li>A link can be real while the summary of it is wrong.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Lateral reading: check like a fact checker</h3>
          <p>In a 2017 study, Stanford researchers compared how historians, students and professional fact checkers judged websites. The fact checkers did best. They read <strong>laterally</strong>: they left the page quickly and opened new tabs to see what other sources said. The others mostly stayed on the page and judged it by how it looked.</p>
          <p>You can do the same with an AI answer. Tom's manager, Dana, asks him to add the nearby subway lines to the Calder Street listing. Copilot says the nearest station, Astoria-Ditmars Blvd, has "the N, W and R trains". Tom reads laterally:</p>
          <ol class="lc-list">
            <li>He picks out the claim: N, W and R trains at Astoria-Ditmars Blvd.</li>
            <li>He opens a new tab and goes to the official MTA website (the agency that runs the New York subway).</li>
            <li>It shows the N train at all times and the W train on weekdays. The R train does not stop there.</li>
            <li>He fixes the line to "N train, plus the W on weekdays" and Dana approves it.</li>
          </ol>
          <p>Good sources depend on the topic. Use official sites for rules, transport and government facts. Use textbooks and your teacher for study. Use well-known news sites for recent events.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: your checking routine</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Mia's routine for checking an important AI answer in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Decide how risky the task is: low, medium or high.</li>
              <li data-order="2">Pick out each fact, number, date, name and source in the answer.</li>
              <li data-order="3">Check each one against the original: her notes, the file or the textbook.</li>
              <li data-order="4">Search the claims she cannot check there in new tabs, using trusted sources.</li>
              <li data-order="5">Fix or delete anything that is wrong or that she cannot find.</li>
              <li data-order="6">Ask a teacher or expert about anything still unclear before she relies on it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to make a checklist of claims in an answer. The AI does not do the checking for you. It helps you see what you must check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful fact-checking coach. Use simple English.

        Here is an answer I got from an AI:
        "[Photosynthesis happens in the chloroplasts. The light-dependent reactions take place in the stroma and release oxygen. The Calvin cycle uses the enzyme rubisco to fix carbon dioxide. A 2019 study by Hartley and Moss showed students who self-test remember 40% more.]"

        Please:
        1. List every claim I can check, one per row.
        2. Make a table: claim, type (fact, number, date, name or source), risk (low, medium, high), the best kind of source to check it.
        3. Mark any claim that looks wrong or may be made up, and say why.
        4. Do not say that a claim is true just because you think so. Tell me how I can check it myself.</pre>
            <ul class="ai-try-checks">
              <li>Every claim in the answer is in the table.</li>
              <li>It flags the stroma claim (the light-dependent reactions are on the thylakoid membranes).</li>
              <li>It warns that the study and the 40% may be made up.</li>
              <li>The sources it suggests are real kinds of sources, such as a textbook or library search.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can invent facts, sums, dates and even whole references, and it sounds just as sure when it is wrong. Match your checking to the risk. For anything important, go to the original source, read laterally in new tabs and fix what does not match. You own the final result.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Why AI Gets Things Wrong</h1>
        </div>
        <p class="lc-lead">You know that AI can be wrong. In this lesson you will learn why. There are four main reasons. It makes up facts to fill gaps. Its knowledge can be out of date. It copies bias from its training data. And it can agree with you too easily. When you know the reason, you know what to watch for and how to write prompts that avoid the problem. You will see each reason in Mia's studies and Tom's work.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Four reasons AI gets things wrong, each with what to do. Made-up facts: it predicts likely text, not checked facts; give it your facts and check sources. Out of date: its training stops at a cut-off date; use web search and official sites. Bias from data: it copies patterns in its training data, fair or not; look for stereotypes and who is missing. Agrees too easily: it can follow your hint, even when you are wrong; ask neutral questions and ask for the other side.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="350" height="120" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="38" y="46" font-weight="700" fill="#f9a8d4">1. Made-up facts</text>
              <text x="38" y="70" font-size="12">It predicts likely text, not checked facts.</text>
              <text x="38" y="90" font-size="12">It fills gaps with guesses.</text>
              <text x="38" y="122" font-size="11" fill="#9b99b8">Do: give it your facts, check sources</text>
              <rect x="390" y="20" width="350" height="120" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="408" y="46" font-weight="700" fill="#93c5fd">2. Out of date</text>
              <text x="408" y="70" font-size="12">Its training stops at a cut-off date.</text>
              <text x="408" y="90" font-size="12">Rules, prices and news change after that.</text>
              <text x="408" y="122" font-size="11" fill="#9b99b8">Do: use web search, check official sites</text>
              <rect x="20" y="156" width="350" height="120" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="38" y="182" font-weight="700" fill="#fcd34d">3. Bias from data</text>
              <text x="38" y="206" font-size="12">It copies patterns in its training data,</text>
              <text x="38" y="226" font-size="12">fair or not.</text>
              <text x="38" y="258" font-size="11" fill="#9b99b8">Do: look for stereotypes and who is missing</text>
              <rect x="390" y="156" width="350" height="120" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="408" y="182" font-weight="700" fill="#6ee7b7">4. Agrees too easily</text>
              <text x="408" y="206" font-size="12">It can follow your hint,</text>
              <text x="408" y="226" font-size="12">even when you are wrong.</text>
              <text x="408" y="258" font-size="11" fill="#9b99b8">Do: ask neutral questions, ask for the other side</text>
              <text x="380" y="304" text-anchor="middle" font-size="12" fill="#9b99b8">All four can happen in a fluent, confident answer. Knowing the reason tells you what to check.</text>
            </g>
          </svg>
          <figcaption>Four common reasons for wrong AI answers, and what you can do about each one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Made-up facts: filling the gaps</h3>
          <p>A chatbot always produces an answer. When it does not have the facts, it still writes something likely-looking. This happens most with:</p>
          <ul class="lc-list">
            <li>Small, specific details, such as page numbers, references, exact quotes and figures.</li>
            <li>Things about you or your work that it was never told. For example, what your teacher said in class.</li>
            <li>Requests for something that does not exist. If you ask for "the study that proves X", it may invent one.</li>
          </ul>
          <p>That is why Tom's weak listing prompt produced an elevator and an in-unit washer. The AI had no facts, so it filled the gaps with features that are common in listings. The fix is to give it the facts, ask it to write <code>[CHECK]</code> when something is missing, and check sources yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Out of date: Tom and the broker fee</h3>
          <p>A model learns from text up to its <strong>training cut-off</strong> (the date its training text ends). It knows nothing after that, unless the tool searches the web for you. Rules, prices and tools change all the time.</p>
          <p>Tom asked a quick question in a chat where web search did not run:</p>
          <pre><code>Who pays the broker fee when someone rents an apartment in New York City?</code></pre>
          <p>The answer said the renter usually pays, often 12 to 15 percent of a year's rent. That used to be common. But a New York City law called the <strong>FARE Act</strong> took effect on 11 June 2025. Under it, a broker who represents the landlord cannot charge the renter a broker fee. Listings must also show any fees the renter has to pay.</p>
          <p>Tom checked the City's official FAQ page on broker fees and asked Dana. Hudson Lane Realty represents the landlord for 41 Calder Street. So the renter of Apartment 3R pays no broker fee. This is general information, not legal advice. Dana, a licensed broker, makes the decision.</p>
          <p>Lesson for you: for laws, prices, products and news, turn on web search or go straight to the official website. Ask the AI: "What is your training cut-off, and could this have changed since then?"</p>
        </div>
        <div class="lc-card">
          <h3>Bias from training data</h3>
          <p><strong>Bias</strong> here means answers that unfairly favour or leave out some groups of people. AI learns from huge amounts of text and pictures made by people. If that data has stereotypes, the AI can repeat them.</p>
          <p>Tom asked an image tool for a decorative picture of "a friendly real estate agent shaking hands with a customer". All four pictures showed a young man in a dark suit. Real estate agents are of all ages, genders and backgrounds. Tom wrote a more specific prompt, and he checks every set of pictures for stereotypes before using one.</p>
          <p>Text can be biased too. The phrase "Ideal for young professionals" in Tom's first draft describes people, not the home. In housing adverts, that kind of wording can break fair housing rules. Dana's rule is to describe the home only.</p>
          <p>Ask yourself: who is shown, who is missing, and would this wording feel fair to everyone? You will look at bias in more depth later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Agreeing too easily</h3>
          <p>Chatbots are trained to be helpful and polite. Sometimes that makes them agree with you when you are wrong. This is called <strong>sycophancy</strong> (telling people what they want to hear). In April 2025, OpenAI rolled back an update to ChatGPT because it had become too flattering and agreeable. Companies work on this problem, but it has not gone away.</p>
          <p>Mia tested it. A leading question gave a wrong answer:</p>
          <pre><code>Leading: The Calvin cycle happens on the thylakoid membranes, right?
        AI:      Yes, that's right! ...                      (wrong)

        Neutral: Where in the chloroplast does the Calvin cycle happen?
        AI:      In the stroma. ...                          (correct)</code></pre>
          <p>Not every tool will make this mistake every time. But a hint in your question can push the answer. Ask neutral questions. If you push back with "Are you sure?", a correct answer may also change. So decide using your notes and textbook, not the AI's mood.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: why did it go wrong?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each problem comes from one main reason. Sort it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="made" data-label="Made-up facts"></div>
              <div data-sorter-target="bucket" data-bucket="old" data-label="Out of date"></div>
              <div data-sorter-target="bucket" data-bucket="bias" data-label="Bias from data"></div>
              <div data-sorter-target="bucket" data-bucket="agree" data-label="Agrees too easily"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="made" data-why="The AI had no reference to give, so it invented a likely-looking one.">The AI gives Mia a reference to a journal that does not exist.</li>
              <li data-bucket="old" data-why="The rule changed in June 2025. The answer came from older training data, with no web search.">The AI says New York renters usually pay the broker fee.</li>
              <li data-bucket="bias" data-why="The pictures repeat a stereotype from the training data.">Every picture of "a real estate agent" shows a young man in a suit.</li>
              <li data-bucket="agree" data-why="Mia's question hinted at the answer, and the AI followed her hint.">Mia asks "It's the thylakoid, right?" and the AI says yes, wrongly.</li>
              <li data-bucket="made" data-why="The prompt had no facts about the building, so the AI filled the gap.">A listing draft says the walk-up building has an elevator.</li>
              <li data-bucket="agree" data-why="The answer was correct, but it changed when Tom pushed back.">Tom says "Are you sure?" and the AI changes a correct answer.</li>
              <li data-bucket="old" data-why="Apps and prices change after the training cut-off.">The AI recommends an app that was shut down earlier this year.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI to challenge an idea instead of agreeing with it. You will also see how it handles its own cut-off date.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an honest study and work coach. Do not just agree with me. Use simple English.

        My idea: "[The best way to revise for my exams is to re-read my notes many times.]"

        Please:
        1. Give the strongest points for my idea and the strongest points against it.
        2. Tell me if any part of my idea is wrong or weak. Be direct and polite.
        3. Suggest a better approach in 3 steps.
        4. Tell me your training cut-off date if you know it. Say if anything in your answer could have changed since then.
        5. Mark any fact you are not sure about with (check).

        Do not invent studies, statistics or quotes. If you mention research, describe it in general words so I can look it up.</pre>
            <ul class="ai-try-checks">
              <li>It gives points against your idea, not only praise.</li>
              <li>It does not invent studies, numbers or quotes.</li>
              <li>It says something about its cut-off date or what may have changed.</li>
              <li>You check any research it describes in your textbook or a trusted source.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI gets things wrong for four main reasons. It fills gaps with guesses, its knowledge has a cut-off date, it copies bias, and it can agree too easily. Give it facts, check recent topics on official sites, look for stereotypes and ask neutral questions.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Privacy and Safety</h1>
        </div>
        <p class="lc-lead">Generative AI is useful, but it brings two new risks. First, what you type into an AI tool may be stored, read by staff or used to train future models. Second, criminals now use AI to fake voices, photos and videos. In this lesson you will learn what never to share with an AI tool. You will also learn which settings to check, and how to spot deepfakes and voice scams. You will see how Tom stops a fake call that sounds like his manager, and how Mia's family uses a safe word.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A five-step safety flow. One: an urgent request arrives by call, text or video. Two: spot the red flags: rush, secrecy and money. Three: stop and hang up, do not reply. Four: call back on a number you already have saved. Five: report it, for example to the FTC in the US or Report Fraud in the UK. Below, two panels. Red flags in a call or message: must act now and tell no one; new bank details or gift cards; the voice or video seems a bit off; a number you do not know. Never paste into a public AI tool: passwords and bank details; ID numbers such as a Social Security or National Insurance number; health or private family information; client or classmate data.">
            <defs><marker id="gf11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="132" height="64" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="86" y="56" font-weight="700">Urgent request</text>
              <text x="86" y="76" font-size="11" fill="#9b99b8">call, text or video</text>
              <rect x="167" y="30" width="132" height="64" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="233" y="56" font-weight="700">Spot red flags</text>
              <text x="233" y="76" font-size="11" fill="#9b99b8">rush, secrecy, money</text>
              <rect x="314" y="30" width="132" height="64" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="56" font-weight="700">Stop. Hang up</text>
              <text x="380" y="76" font-size="11" fill="#9b99b8">do not reply</text>
              <rect x="461" y="30" width="132" height="64" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="527" y="56" font-weight="700">Call back</text>
              <text x="527" y="76" font-size="11" fill="#9b99b8">on a saved number</text>
              <rect x="608" y="30" width="132" height="64" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="674" y="56" font-weight="700">Report it</text>
              <text x="674" y="76" font-size="11" fill="#9b99b8">FTC / Report Fraud</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gf11a)">
                <line x1="152" y1="62" x2="164" y2="62"/>
                <line x1="299" y1="62" x2="311" y2="62"/>
                <line x1="446" y1="62" x2="458" y2="62"/>
                <line x1="593" y1="62" x2="605" y2="62"/>
              </g>
              <rect x="20" y="124" width="350" height="156" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="195" y="150" font-weight="700" fill="#fcd34d">Red flags in a call or message</text>
              <rect x="390" y="124" width="350" height="156" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="565" y="150" font-weight="700" fill="#f9a8d4">Never paste into a public AI tool</text>
              <g font-size="12" text-anchor="start">
                <text x="44" y="180">• Must act now, tell no one</text>
                <text x="44" y="205">• New bank details or gift cards</text>
                <text x="44" y="230">• Voice or video seems a bit off</text>
                <text x="44" y="255">• A number you do not know</text>
                <text x="414" y="180">• Passwords and bank details</text>
                <text x="414" y="205">• ID numbers (SSN, NI number)</text>
                <text x="414" y="230">• Health or private family details</text>
                <text x="414" y="255">• Client or classmate data</text>
              </g>
            </g>
          </svg>
          <figcaption>A familiar voice is no longer proof. Stop, call back on a number you already have, and report it. Keep private data out of public AI tools.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What never to share with an AI tool</h3>
          <p>When you type into an AI tool, your words go to the company's computers. Depending on the tool and your settings, chats may be stored, checked by staff for safety, or used to train future models. So treat a public AI tool like a stranger. Only share what you would be happy for a stranger to read.</p>
          <table class="lc-table">
            <thead><tr><th>Never share</th><th>Examples</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Log-in details</td><td>Passwords, PINs, security codes</td><td>Anyone who sees them can use your accounts.</td></tr>
              <tr><td>Money details</td><td>Bank card numbers, account numbers</td><td>They can be used for fraud.</td></tr>
              <tr><td>ID numbers</td><td>US Social Security number (SSN), UK National Insurance (NI) number, passport number</td><td>They can be used to steal your identity.</td></tr>
              <tr><td>Health and family matters</td><td>Medical details, private family problems</td><td>This is very sensitive, and you cannot take it back.</td></tr>
              <tr><td>Other people's data</td><td>Client names and phone numbers, classmates' work, a marked paper with names</td><td>It is not yours to share. Privacy laws such as UK GDPR may apply.</td></tr>
              <tr><td>Confidential work files</td><td>Contracts, price lists, internal emails</td><td>Your employer decides where they may go.</td></tr>
            </tbody>
          </table>
          <p>You can usually still get help without the private parts. Replace them with placeholders. Compare Tom's two prompts:</p>
          <pre><code>Weak (shares client data):
        Write a reply to Sarah Klein, 917-555-0148, sarah.k@example.com,
        about her request to view 3R.

        Better (no personal data):
        Write a short, friendly reply to [Client] who asked to view a
        2-bedroom apartment. Offer two times: Thursday 15 October at 5:30pm
        or Saturday 17 October at 11am.
        Ask them to confirm by replying to this email.</code></pre>
          <p>Tom adds the real name later, in his work email. Even in his approved work tool, he follows his rule: no client contact details, ID or money details unless Dana says the task is approved.</p>
        </div>
        <div class="lc-card">
          <h3>Check your data and history settings</h3>
          <p>Each assistant has privacy settings. Two matter most: whether your chats can be used to <strong>train</strong> (improve) the company's models, and whether your chats are <strong>saved</strong> in your history. Look for these settings by name. Names and menus change, so check the tool's current help pages.</p>
          <table class="lc-table">
            <thead><tr><th>Assistant</th><th>Training setting to look for</th><th>Chat that is not saved to history</th></tr></thead>
            <tbody>
              <tr><td>ChatGPT</td><td>"Improve the model for everyone" (in Data Controls)</td><td>Temporary Chat</td></tr>
              <tr><td>Claude</td><td>"Help improve Claude" (in Privacy settings)</td><td>Incognito chat</td></tr>
              <tr><td>Gemini</td><td>"Keep Activity" (it used to be called Gemini Apps Activity)</td><td>Temporary chat</td></tr>
              <tr><td>Microsoft Copilot (free app)</td><td>"Model training" settings for text and for voice (in Privacy settings)</td><td>Check the current help pages</td></tr>
            </tbody>
          </table>
          <p>Three things to know:</p>
          <ul class="lc-list">
            <li>Turning training off does not delete old chats. Delete them yourself if you need to.</li>
            <li>"Temporary" or "incognito" chats are still kept for a short time, for safety checks. They are not a safe place for secrets.</li>
            <li><strong>Work and school accounts</strong> often have stronger protection. For example, Microsoft says prompts in Microsoft 365 Copilot with a work account are not used to train its foundation models. This is one reason Tom uses only his work account for work.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Deepfakes and voice scams</h3>
          <p>A <strong>deepfake</strong> is a fake photo, video or voice recording made with AI. It shows a real person saying or doing something they never did. A <strong>voice clone</strong> copies someone's voice from a short recording, for example a video posted online. Scammers use these to sound like your boss or a family member.</p>
          <p><strong>Tom's call (made up).</strong> On Thursday 1 October 2026, at about 4:40 pm, Tom gets a call from an unknown number. The voice sounds exactly like Dana. "Dana" says her phone died and she is at a closing. She asks Tom to email new bank details to the new tenant of Apartment 2F, 41 Calder Street. The tenant should use them for the $5,600 move-in payment: first month's rent of $2,800 plus a $2,800 security deposit. She says to do it now and not to bother anyone. Tom notices three red flags: rush, secrecy and new payment details. He hangs up and calls Dana on the number saved in his phone. Dana is at a showing. She made no call. Hudson Lane's rule is simple: payment details are never changed by phone, text or email alone.</p>
          <p><strong>Mia's family safe word (made up).</strong> Mia posts revision videos online, so her voice is easy to copy. Her mum gets a voice message that sounds like Mia. It asks for £300 for a "lost phone", sent to a new account. Mum asks for the family safe word. The caller cannot give it. Mia was at college the whole time.</p>
          <table class="lc-table">
            <thead><tr><th>What to do</th><th>Why it works</th></tr></thead>
            <tbody>
              <tr><td>Hang up and call back on a number you already have</td><td>The scammer cannot answer the real person's phone.</td></tr>
              <tr><td>Agree a family or team safe word</td><td>A cloned voice does not know your secret word.</td></tr>
              <tr><td>Never pay by gift cards, crypto or a "new" account because a voice asked</td><td>Real bosses and families do not need this. Scammers ask for it because the money is hard to get back.</td></tr>
              <tr><td>Report it</td><td>US: the FTC at ReportFraud.ftc.gov. England, Wales and Northern Ireland: Report Fraud (it replaced Action Fraud). In the UK, forward scam texts to 7726. Tell your bank at once if you paid.</td></tr>
            </tbody>
          </table>
          <p>Do not rely on spotting a deepfake by eye or ear. Good fakes have no obvious mistakes. Some tools can check for hidden AI labels. For example, the Gemini app can check whether an image, video or audio file has Google's SynthID watermark. But no label does not prove that something is real. The call back is the check that works.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: step through Tom's fake call</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="result" data-label="The call">An unknown number calls at 4:40 pm. The voice sounds just like Dana: "My phone died. I'm at a closing."</li>
              <li data-kind="warn" data-label="Red flags">"Email the 2F tenant our new bank details for the $5,600 move-in payment. Do it now. Don't bother anyone." Rush, secrecy and new payment details.</li>
              <li data-kind="thought" data-label="Tom thinks">The voice sounds right, but voices can be cloned. Our rule says payment details are never changed by phone alone.</li>
              <li data-kind="check" data-label="Call back">Tom says he will call back. He hangs up and rings Dana on the number saved in his phone.</li>
              <li data-kind="result" data-label="The truth">Dana answers from a showing. She made no call and there are no new bank details.</li>
              <li data-kind="tool" data-label="Report">Dana reports the call to the FTC at ReportFraud.ftc.gov. She also phones the 2F tenant to warn them: "We will never change payment details by email."</li>
              <li data-kind="answer" data-label="Lesson">No money was lost. The call back on a known number stopped the scam in two minutes.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI to help you write a simple scam safety plan for your family or team. Do not include real names, numbers or account details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly consumer safety adviser. Use simple English.

        Help me write a one-page scam safety plan for [my family: me, my parents and my grandmother, who lives alone]. We live in [London, UK].

        Our worry: criminals can now use AI to copy a person's voice or face. They call or send a voice message, say there is an emergency, and ask for money fast.

        Please include:
        1. 5 red flags to watch for in a call, text or video.
        2. How to choose a family safe word, and 3 rules for using it.
        3. A "first 10 minutes" checklist if a worrying call comes in.
        4. Where to report a scam in [the UK], with a note to check the official website.
        5. 3 privacy settings to check in AI chat apps.

        Do not ask me for any real names, phone numbers or bank details. Do not claim that anyone can always spot a deepfake by eye or ear. Use short headings and bullet points.</pre>
            <ul class="ai-try-checks">
              <li>It tells you to hang up and call back on a number you already have.</li>
              <li>It does not ask for real names, numbers or account details.</li>
              <li>Check the reporting places on the official websites for your country.</li>
              <li>It does not promise that you can always spot a fake.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Keep private data out of public AI tools, and check your training and history settings. When a call or message asks for money or details in a rush, do not trust the voice or face. Hang up and call back on a number you already have.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Copyright and Honest Use</h1>
        </div>
        <p class="lc-lead">When AI helps you make something, two questions come up. Who owns the result? And is it honest to hand it in or publish it as your work? In this lesson you will learn, in general words, how copyright treats AI output in the US and the UK. You will also learn the honesty rules that schools and workplaces use, and how to say when you used AI. This is general education, not legal advice. For a real legal question, ask a qualified adviser.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Who owns it? A general US view, not legal advice. Three boxes from less to more of your own work. Prompt only: you type a prompt and AI makes it; in the US it usually has no copyright. AI draft plus your changes: you select, edit and rewrite; your own parts may be protected. Your own work: AI only quizzed you or explained things; it is protected as normal. A panel underneath says always: follow your school or work rules, say when you used AI, and do not copy other people's work.">
            <defs><marker id="gf12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="12" fill="#9b99b8">Who owns it? A general US view, not legal advice</text>
              <rect x="20" y="36" width="220" height="100" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="130" y="62" font-weight="700" fill="#f9a8d4">Prompt only</text>
              <text x="130" y="88" font-size="11">You type a prompt, AI makes it</text>
              <text x="130" y="112" font-size="11" fill="#9b99b8">Usually no copyright</text>
              <rect x="270" y="36" width="220" height="100" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="62" font-weight="700" fill="#fcd34d">AI draft + your changes</text>
              <text x="380" y="88" font-size="11">You select, edit and rewrite</text>
              <text x="380" y="112" font-size="11" fill="#9b99b8">Your own parts may be protected</text>
              <rect x="520" y="36" width="220" height="100" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="630" y="62" font-weight="700" fill="#6ee7b7">Your own work</text>
              <text x="630" y="88" font-size="11">AI only quizzed or explained</text>
              <text x="630" y="112" font-size="11" fill="#9b99b8">Protected as normal</text>
              <line x1="40" y1="160" x2="716" y2="160" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#gf12a)"/>
              <text x="40" y="182" font-size="11" fill="#9b99b8" text-anchor="start">Less of your own work</text>
              <text x="720" y="182" font-size="11" fill="#9b99b8" text-anchor="end">More of your own work</text>
              <rect x="20" y="204" width="720" height="80" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="228" font-weight="700" fill="#c4b5fd">Always, whatever the law says:</text>
              <g font-size="12">
                <text x="140" y="260">Follow your school or work rules</text>
                <text x="380" y="260">Say when you used AI</text>
                <text x="620" y="260">Do not copy others' work</text>
              </g>
            </g>
          </svg>
          <figcaption>The more of the work is truly yours, the stronger your claim to it. Honesty rules apply in every case.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who owns AI output? (general words, not legal advice)</h3>
          <p><strong>Copyright</strong> is the legal right to control copies of a creative work, such as a text, picture or song. Normally, the person who creates the work owns the copyright. With AI, the law is still developing, and it differs by country.</p>
          <table class="lc-table">
            <thead><tr><th>Where</th><th>General position (October 2026)</th></tr></thead>
            <tbody>
              <tr><td>United States</td><td>The US Copyright Office says copyright needs a <strong>human author</strong>. Its January 2025 report says a prompt alone is usually not enough. Your own parts can be protected: your writing, your edits, and how you select and arrange material.</td></tr>
              <tr><td>United Kingdom</td><td>UK law has an old special rule for "computer-generated works". In March 2026 the government said it would prefer to remove this rule. The law has not changed yet, so check current guidance.</td></tr>
              <tr><td>European Union</td><td>The EU AI Act includes transparency rules. From 2 August 2026, AI providers must start to mark AI-generated content, with some parts phased in later. People who publish deepfakes must say they are AI-made.</td></tr>
            </tbody>
          </table>
          <p>Most AI tools say in their terms that you may use the output. That does not mean the output has copyright protection. It also does not mean the output is free of other people's rights. AI can produce text or pictures that look very close to existing work, logos or famous characters. Check before you publish, and read the tool's current terms.</p>
          <p><strong>Tom's example.</strong> The autumn-leaves background on Tom's open-house flyer was made with AI from a prompt. In the US it probably has no copyright. That is fine for a decorative graphic. Tom adds a small note in the flyer file: "Background graphic made with AI." The listing text is different. Tom wrote and edited it from the fact sheet, and Dana approved it.</p>
        </div>
        <div class="lc-card">
          <h3>Honest use at school</h3>
          <p><strong>Academic honesty</strong> means the work you hand in shows what <em>you</em> know and can do. Handing in AI writing as your own is cheating, even if the AI wrote it for you for free.</p>
          <p>Mia's college rule (made up) says: AI may be used to explain topics, quiz yourself and plan revision. AI must not write coursework or homework you hand in. If you use AI for an assessed task, say so. In the UK, the exam boards' group JCQ (Joint Council for Qualifications) has similar guidance for assessed work. It says using AI without saying so can count as <strong>malpractice</strong> (breaking exam rules), with serious penalties.</p>
          <p><strong>Mia's Psychology essay (made up).</strong> Her homework was "Evaluate the multi-store model of memory" (16 marks), due Friday 2 October 2026. On Monday 28 September she used her college Copilot to quiz her and to explain rehearsal. Then she closed the chat and wrote every word herself. She added this note at the end:</p>
          <pre><code>AI use: I used Microsoft Copilot (college account) on 28 September 2026
        to quiz me on the multi-store model and to explain rehearsal.
        I did not use AI to write any part of this essay.</code></pre>
          <p>A good AI-use note says: which tool, when, and what you used it for. Some colleges ask for a citation in a style such as APA or MLA. Both styles publish guidance on citing generative AI. Ask your teacher which one to use.</p>
          <p><strong>A warning about AI detectors.</strong> Some schools use tools that guess if text was written by AI. These guesses can be wrong. A 2023 study by Stanford researchers found that some detectors wrongly flagged writing by non-native English speakers much more often. Your best protection is honesty: keep your notes, drafts and your AI-use note.</p>
        </div>
        <div class="lc-card">
          <h3>Honest use at work</h3>
          <table class="lc-table">
            <thead><tr><th>Do</th><th>Do not</th></tr></thead>
            <tbody>
              <tr><td>Follow your employer's AI policy and approved tools.</td><td>Pass off AI work as an expert's checked work.</td></tr>
              <tr><td>Check facts, numbers and names before anything goes out.</td><td>Ask AI to copy a competitor's text, a logo or a famous character.</td></tr>
              <tr><td>Say when an image is AI-made or edited, as Dana's virtual staging rule requires.</td><td>Use AI images that change how a real home, product or person looks.</td></tr>
              <tr><td>Get approval from the right person before publishing.</td><td>Paste in someone else's work to "rewrite" it as yours.</td></tr>
            </tbody>
          </table>
          <p>A simple test: would you be comfortable telling your teacher, manager or client exactly how AI helped? If not, change what you are doing.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what does Mia's college rule allow?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Mia's rule: AI may explain, quiz and plan. It must not write work she hands in. If she uses AI for an assessed task, she says so. Sort each action.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine for study"></div>
              <div data-sorter-target="bucket" data-bucket="say" data-label="Fine, but say so"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not allowed"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Quizzing yourself for revision is allowed, and nothing is handed in.">Ask Copilot to quiz her on memory models before a class test.</li>
              <li data-bucket="ok" data-why="Planning revision is allowed by the rule.">Ask AI to make a 13-week revision timetable for her mocks.</li>
              <li data-bucket="say" data-why="It helped with an assessed task, so she writes an AI-use note.">Ask AI to explain rehearsal while she works on her marked essay.</li>
              <li data-bucket="say" data-why="She fixes the mistakes herself, but AI helped with assessed work. She checks the teacher allows it and says so.">Ask AI to list spelling mistakes in her own essay, then fix them herself.</li>
              <li data-bucket="no" data-why="The AI would be writing part of the work she hands in.">Paste an AI paragraph into her essay and change a few words.</li>
              <li data-bucket="no" data-why="The plan and conclusion are part of the work. AI must not write them.">Ask AI to write her essay plan and conclusion for her.</li>
              <li data-bucket="ok" data-why="Making flashcards from her own notes is study help.">Ask AI to turn her own notes into 20 flashcards.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Check a planned use of AI against your own school or work rule, and get a draft AI-use note. If your rule is unclear, ask your teacher or manager.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an adviser on honest use of AI at school and work. Use simple English. You are not a lawyer, so do not give legal advice.

        My rule (copied word for word): [AI may be used to explain topics, quiz yourself and plan revision. AI must not write coursework or homework you hand in. If you use AI for an assessed task, say so.]

        My task: [a marked Psychology homework essay on the multi-store model of memory].

        How I used or plan to use AI:
        - [Asked it to quiz me on the model]
        - [Asked it to explain rehearsal in simple words]
        - [Want it to write my conclusion]

        Please:
        1. Make a table: each use, "allowed", "allowed but say so" or "not allowed", and the words in my rule that decide it.
        2. Suggest an honest way to do anything that is not allowed.
        3. Draft a 2 to 3 sentence AI-use note with the tool name, the date and what I used it for.
        4. List anything the rule does not cover, so I can ask my teacher.

        Use only my rule. Do not invent extra rules.</pre>
            <ul class="ai-try-checks">
              <li>Each decision points to words in your rule, not invented rules.</li>
              <li>Writing the work you hand in is marked "not allowed".</li>
              <li>The AI-use note names the tool, the date and how you used it.</li>
              <li>Unclear cases go to your teacher or manager, not to the AI.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Copyright for AI output depends on how much of the work is truly yours, and the law is still changing. Honesty does not change: follow your school or work rules, do your own thinking, and say clearly when and how you used AI.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Bias, Fairness and Responsible Use</h1>
        </div>
        <p class="lc-lead">AI is trained on text and pictures that people made. That data includes people's unfair ideas, and some groups appear much more than others. So AI output can repeat stereotypes or leave people out, often without you noticing. In this lesson you will see examples of biased output and learn simple ways to check for it. You will also learn why people, not AI, must make decisions about other people. You will watch Tom catch unfair words in a listing, and Mia notice who is missing from her results.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Before and after. Left box, the AI draft of a listing: 2-bed, renovated kitchen, marked fine; hardwood floors, heat included, marked fine; perfect for young professionals, marked as a problem; not suited to families with kids, marked as a problem; cats allowed, no dogs, marked fine. An arrow labelled describe the home, not the people leads to the right box, after Tom's check: 2-bed, renovated kitchen; hardwood floors, heat included; 8 minutes' walk to the subway; cats allowed, no dogs. Below: the swap test asks whether the text would change if the group changed; if yes, it may be biased. Also ask who is left out and who is pushed away.">
            <defs><marker id="gf13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="280" height="196" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="160" y="46" font-weight="700" fill="#f9a8d4" text-anchor="middle">AI draft</text>
              <g font-size="12">
                <text x="38" y="78">✓ 2-bed, renovated kitchen</text>
                <text x="38" y="106">✓ Hardwood floors, heat included</text>
                <text x="38" y="134" fill="#f9a8d4">✗ Perfect for young professionals</text>
                <text x="38" y="162" fill="#f9a8d4">✗ Not suited to families with kids</text>
                <text x="38" y="190">✓ Cats allowed, no dogs</text>
              </g>
              <rect x="460" y="20" width="280" height="196" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="600" y="46" font-weight="700" fill="#6ee7b7" text-anchor="middle">After Tom's check</text>
              <g font-size="12">
                <text x="478" y="78">✓ 2-bed, renovated kitchen</text>
                <text x="478" y="106">✓ Hardwood floors, heat included</text>
                <text x="478" y="134">✓ 8 minutes' walk to the subway</text>
                <text x="478" y="162">✓ Cats allowed, no dogs</text>
              </g>
              <line x1="310" y1="140" x2="452" y2="140" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#gf13a)"/>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="380" y="110">Describe the home,</text>
                <text x="380" y="126">not the people</text>
              </g>
              <rect x="20" y="234" width="720" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <g font-size="12" text-anchor="middle">
                <text x="380" y="257">Swap test: would the text change if the group changed? If yes, it may be biased.</text>
                <text x="380" y="277" fill="#9b99b8">Also ask: who is left out, and who is pushed away?</text>
              </g>
            </g>
          </svg>
          <figcaption>Tom keeps the facts about the home and removes words about who should live there.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What bias looks like in AI output</h3>
          <p><strong>Bias</strong> means a result that is unfair to a group of people, or that leans one way without a good reason. AI does not mean to be unfair. It repeats patterns from its training data. If the data shows mostly men as scientists, AI will tend to show men as scientists. Researchers and journalists have reported patterns like these in many AI tools.</p>
          <table class="lc-table">
            <thead><tr><th>What happened (made up)</th><th>The bias</th><th>The fix</th></tr></thead>
            <tbody>
              <tr><td>Mia asks an image tool for "a scientist in a lab". All 4 pictures show older white men.</td><td>A stereotype about who does science.</td><td>She asks for a mix of ages, genders and backgrounds, and checks the result.</td></tr>
              <tr><td>Mia asks a chatbot for "5 famous biologists". All 5 are men from Europe or the US.</td><td>People left out.</td><td>She asks for a wider list, then checks each name in her textbook and the college library.</td></tr>
              <tr><td>Tom asks Copilot to "make the 3R listing more appealing". It adds "Perfect for young professionals. Not suited to families with kids."</td><td>A preference for some tenants and against families.</td><td>Tom deletes both sentences and describes only the home.</td></tr>
              <tr><td>A chatbot summarises famous Psychology studies for Mia. It does not say that many used small groups from one country.</td><td>Results from one group shown as true for everyone.</td><td>She asks: "Who took part? Does this apply to other people?" This is also a good point for her essays.</td></tr>
            </tbody>
          </table>
          <p>Bias can also hide in small words. A job advert asking for a "young, energetic guy" excludes older people and women. A description that says "native English speaker" when the job only needs clear English can exclude people unfairly.</p>
        </div>
        <div class="lc-card">
          <h3>Fairness rules you should know (not legal advice)</h3>
          <p>Some unfair results are not only wrong. They can break the law. Here are two examples, in general words:</p>
          <ul class="lc-list">
            <li><strong>US housing:</strong> the Fair Housing Act says housing adverts must not show a preference for or against some groups. These are race, colour, religion, sex, disability, familial status (having children) and national origin. New York State and New York City protect more groups, such as people paying with a housing voucher. That is why Dana's rule is: describe the home, never the people.</li>
            <li><strong>UK:</strong> the Equality Act 2010 protects people from discrimination at work, in education and in services. It covers nine "protected characteristics", including age, disability, race, religion or belief, sex and sexual orientation.</li>
          </ul>
          <p>If you use AI for anything about people, such as adverts, job posts, feedback or choosing between applicants, ask a qualified professional which rules apply. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>How to check for bias, and why people decide</h3>
          <p>Start with a prompt that sets fair rules. Then check the output yourself. Compare Tom's prompts:</p>
          <pre><code>Weak:
        Make this listing more appealing.

        Better:
        Improve the wording of this listing. Describe only the home: rooms,
        features, location and rules such as pets. Do not mention or suggest
        what kind of person, age, family or background would suit it.
        Do not add any facts. List every change you made.</code></pre>
          <p>Then use these checks:</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Ask yourself</th></tr></thead>
            <tbody>
              <tr><td>Swap test</td><td>If I change the group (man to woman, young to old), does the answer change? It should not, unless there is a real reason.</td></tr>
              <tr><td>Who is missing?</td><td>Which people, places or views are not in the answer?</td></tr>
              <tr><td>Loaded words</td><td>Are there words about age, family, gender, religion, origin or health that the task does not need?</td></tr>
              <tr><td>Second opinion</td><td>Would a colleague or teacher from a different background read it the same way?</td></tr>
            </tbody>
          </table>
          <p>You can ask AI to review text for biased wording. It may find useful points, but it can also miss things. You make the final check.</p>
          <p><strong>Human judgement</strong> means a person thinks about the facts and the people involved, then decides and takes responsibility. AI must never be the one that decides who gets a home, a job, a grade or a loan. At Hudson Lane, the landlord and Dana decide on tenants, using the same fair rules for everyone. AI only helps with wording.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check an AI draft for bias</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Tom's bias check for an AI-written listing in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write a prompt that says: describe the home only, add no facts.</li>
              <li data-order="2">Read the draft and mark any words about people, age, family or background.</li>
              <li data-order="3">Do the swap test: would the text change for a different group?</li>
              <li data-order="4">Remove or rewrite the unfair words, and check every fact against the fact sheet.</li>
              <li data-order="5">Ask Dana to review the final text.</li>
              <li data-order="6">Dana approves it before it is published.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI to review a short text for biased wording. Use the sample below, or paste a text with no private data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fairness reviewer. Use simple English. You are not a lawyer, so do not give legal advice.

        Review this text for wording that is unfair to any group of people.

        Text: [Larch Street Cafe, Camden, London, is hiring! We want a young, energetic guy to join our team. Must be a native English speaker. Recent graduates preferred. No mums with school runs, please: shifts start at 7 am.]

        Please:
        1. Make a table: the exact words, which group they may exclude, and why it is a problem.
        2. Do a swap test: say how the text treats different ages, genders and family situations.
        3. Rewrite the text so it describes only the real needs of the job, such as shift times and skills.
        4. List 2 questions a person should check with an HR adviser or other qualified professional.

        Do not add facts that are not in the text.</pre>
            <ul class="ai-try-checks">
              <li>It flags "young", "guy", "native English speaker", "recent graduates" and "no mums".</li>
              <li>The rewrite keeps the real needs, such as the 7 am start, without excluding groups.</li>
              <li>It does not invent new facts about the job.</li>
              <li>It says a person and a qualified adviser make the final check.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI repeats the patterns in its training data, including unfair ones. Set fair rules in your prompt, use the swap test, ask who is missing, and keep decisions about people with people.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Generative AI and Your Future</h1>
        </div>
        <p class="lc-lead">Many people ask: will AI take my job? A more useful question is: which of my tasks will change? Every job is a mix of tasks. AI can speed up some of them, such as first drafts. Others still need a person: meeting people, making judgements and taking responsibility. In this lesson you will learn how to look at your own tasks and which skills matter more now. You will also learn how to keep learning as the tools change. You will see Tom's task audit and Mia's learning plan.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A bar chart of Tom's working week in hours, before AI and with AI including checking time. Drafting listings: 6 hours before, 3.5 with AI. Inquiry emails: 8 before, 5 with AI. Booking showings: 5 and 5. Flyers: 3 and 2. Client calls and showings: 10 and 10. Filing and admin: 8 and 7. A side panel says: saved 7.5 hours a week, about 19 percent, used for more client calls and licence study.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="20" y="24" font-size="13" font-weight="700">Tom's week: hours per task (his own estimate)</text>
              <rect x="220" y="36" width="12" height="10" fill="#3b82f6"/>
              <text x="238" y="45" font-size="11" fill="#9b99b8">Before AI</text>
              <rect x="320" y="36" width="12" height="10" fill="#ec4899"/>
              <text x="338" y="45" font-size="11" fill="#9b99b8">With AI, including checking</text>
              <g text-anchor="end">
                <text x="210" y="81">Drafting listings</text>
                <text x="210" y="121">Inquiry emails</text>
                <text x="210" y="161">Booking showings</text>
                <text x="210" y="201">Flyers</text>
                <text x="210" y="241">Client calls, showings</text>
                <text x="210" y="281">Filing and admin</text>
              </g>
              <rect x="220" y="66" width="180" height="11" rx="2" fill="#3b82f6"/>
              <rect x="220" y="79" width="105" height="11" rx="2" fill="#ec4899"/>
              <rect x="220" y="106" width="240" height="11" rx="2" fill="#3b82f6"/>
              <rect x="220" y="119" width="150" height="11" rx="2" fill="#ec4899"/>
              <rect x="220" y="146" width="150" height="11" rx="2" fill="#3b82f6"/>
              <rect x="220" y="159" width="150" height="11" rx="2" fill="#ec4899"/>
              <rect x="220" y="186" width="90" height="11" rx="2" fill="#3b82f6"/>
              <rect x="220" y="199" width="60" height="11" rx="2" fill="#ec4899"/>
              <rect x="220" y="226" width="300" height="11" rx="2" fill="#3b82f6"/>
              <rect x="220" y="239" width="300" height="11" rx="2" fill="#ec4899"/>
              <rect x="220" y="266" width="240" height="11" rx="2" fill="#3b82f6"/>
              <rect x="220" y="279" width="210" height="11" rx="2" fill="#ec4899"/>
              <g font-size="10" fill="#9b99b8">
                <text x="406" y="76">6</text><text x="331" y="89">3.5</text>
                <text x="466" y="116">8</text><text x="376" y="129">5</text>
                <text x="376" y="156">5</text><text x="376" y="169">5</text>
                <text x="316" y="196">3</text><text x="286" y="209">2</text>
                <text x="526" y="236">10</text><text x="526" y="249">10</text>
                <text x="466" y="276">8</text><text x="436" y="289">7</text>
              </g>
              <text x="220" y="318" font-size="11" fill="#9b99b8">Total: 40 hours before, 32.5 hours with AI</text>
              <rect x="570" y="90" width="170" height="170" rx="8" fill="#27274e" stroke="#10b981"/>
              <g text-anchor="middle">
                <text x="655" y="122" font-size="12" fill="#9b99b8">Time saved</text>
                <text x="655" y="152" font-size="22" font-weight="700" fill="#6ee7b7">7.5 h</text>
                <text x="655" y="174" font-size="12" fill="#9b99b8">a week, about 19%</text>
                <text x="655" y="208" font-size="11">Used for:</text>
                <text x="655" y="226" font-size="11">more client calls</text>
                <text x="655" y="244" font-size="11">and licence study</text>
              </g>
            </g>
          </svg>
          <figcaption>AI shortened Tom's writing tasks. Tasks with people and calendars stayed the same. The saved time went to work only a person can do.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Jobs are made of tasks</h3>
          <p>A <strong>task audit</strong> is a simple list of the tasks in your week, with the hours each one takes. It helps you see where AI can help and where it cannot. Tom tracked his work for 4 weeks in September 2026. These are his own made-up estimates, not a study:</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Hours before AI</th><th>Hours with AI (including checking)</th><th>Saved</th></tr></thead>
            <tbody>
              <tr><td>Drafting listings</td><td>6</td><td>3.5</td><td>2.5</td></tr>
              <tr><td>Inquiry emails</td><td>8</td><td>5</td><td>3</td></tr>
              <tr><td>Booking showings</td><td>5</td><td>5</td><td>0</td></tr>
              <tr><td>Flyers</td><td>3</td><td>2</td><td>1</td></tr>
              <tr><td>Client calls and showings support</td><td>10</td><td>10</td><td>0</td></tr>
              <tr><td>Filing and admin</td><td>8</td><td>7</td><td>1</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>40</strong></td><td><strong>32.5</strong></td><td><strong>7.5</strong></td></tr>
            </tbody>
          </table>
          <p>Tom keeps the audit in a spreadsheet. Tasks are in column A, rows 2 to 7. Column B is hours before, C is hours with AI, and D is hours saved. Row 8 holds the totals:</p>
          <pre><code>D2:  =B2-C2           (copy down to D7; D2 shows 2.5)
        B8:  =SUM(B2:B7)      shows 40
        C8:  =SUM(C2:C7)      shows 32.5
        D8:  =SUM(D2:D7)      shows 7.5
        D9:  =D8/B8           shows 0.1875 (format as % to see 18.75%)</code></pre>
          <p>Notice two things. First, Tom counts his checking time. A draft he must fix is not free. Second, the time saved did not disappear. Tom and Dana agreed to use it for more client calls and for Tom's study towards his real estate salesperson licence.</p>
        </div>
        <div class="lc-card">
          <h3>Skills that matter more now</h3>
          <p>The World Economic Forum's <em>Future of Jobs Report 2025</em> asked employers which skills are growing. AI and big data came top. Technological literacy (being comfortable with new technology) was also near the top. Human skills such as analytical thinking, creative thinking, resilience, curiosity and lifelong learning stayed important or grew. In short: you need both AI skills and human skills.</p>
          <table class="lc-table">
            <thead><tr><th>Skill</th><th>What it means</th><th>Mia</th><th>Tom</th></tr></thead>
            <tbody>
              <tr><td>Asking well</td><td>Clear prompts with task, context and format</td><td>Asks for exam-style questions at A-level</td><td>Gives AI a fact sheet and limits</td></tr>
              <tr><td>Checking</td><td>Testing AI output against real sources</td><td>Checks summaries against her notes</td><td>Checks listings against the fact sheet</td></tr>
              <tr><td>Subject knowledge</td><td>Knowing your field well enough to spot errors</td><td>Knew the stroma claim was wrong</td><td>Knows fair housing rules from Dana</td></tr>
              <tr><td>Judgement and ethics</td><td>Deciding what is right, fair and safe</td><td>Writes her own essays</td><td>Never changes a real home in a picture</td></tr>
              <tr><td>People skills</td><td>Listening, explaining, building trust</td><td>Explains topics to her study group</td><td>Shows homes and answers clients' worries</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>How to keep learning</h3>
          <p>AI tools change every few months. You do not need to follow every headline. A small, steady habit works better. Mia's plan:</p>
          <ul class="lc-list">
            <li><strong>20 minutes a week:</strong> try one new feature on a real study task, with no private data.</li>
            <li><strong>Keep a log:</strong> one line about what worked and what went wrong.</li>
            <li><strong>Use official sources:</strong> the tool's help pages and release notes, not rumours on social media.</li>
            <li><strong>Talk to people:</strong> ask her teachers how AI is used in the subjects she may study at university.</li>
            <li><strong>Next step:</strong> the Generative AI Tools and Applications course, after her mocks.</li>
          </ul>
          <p>Be careful with big claims about AI and jobs. Some articles are guesses or adverts. Ask: who wrote this, what is their evidence, and are they selling something? This is the same checking skill you use for AI answers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: AI drafts, or a person leads?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">For each task, can AI make a first draft that a person checks, or must a person lead?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI drafts, a person checks"></div>
              <div data-sorter-target="bucket" data-bucket="human" data-label="A person must lead"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="AI is fast at drafts from a fact sheet. Tom still checks every fact and Dana approves.">Writing a first draft of a listing from a fact sheet.</li>
              <li data-bucket="human" data-why="Meeting people, answering their worries and building trust needs a person.">Showing an apartment to a family and answering their questions.</li>
              <li data-bucket="human" data-why="Choosing a tenant is a decision about people. It must follow fair housing rules and be made by people.">Deciding which applicant gets the apartment.</li>
              <li data-bucket="ai" data-why="AI can summarise. Mia checks the summary against the original.">Summarising a long reading for Mia's Psychology class.</li>
              <li data-bucket="ai" data-why="AI can make practice questions. Mia checks the answers in her textbook.">Making 10 practice questions from Mia's own notes.</li>
              <li data-bucket="human" data-why="AI can suggest ideas, but this is Mia's life choice. She decides with her family and teachers.">Choosing what Mia will study at university.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Do a quick task audit of your own week, and get a small learning plan. Use estimates and no private data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical career coach. Use simple English.

        My role: [office assistant at a small real estate agency in New York].
        My weekly tasks and hours: [drafting listings 6, inquiry emails 8, booking showings 5, flyers 3, client calls 10, filing 8].

        Please:
        1. Make a table: task, hours now, how generative AI could help (or "little help"), what I must still check or do myself, and estimated hours with AI. Include checking time in the estimate. Label all hours as estimates.
        2. Add a total row and the estimated hours saved.
        3. Suggest the best use of the saved time in my role.
        4. Name 3 skills to build, with one reason each.
        5. Write a 4-week learning plan, 20 minutes a week, with one small practice task each week.

        Do not invent statistics or studies about jobs. If you mention a trend, say it is general and that I should check a trusted source.</pre>
            <ul class="ai-try-checks">
              <li>Check the totals and the hours saved with a calculator.</li>
              <li>Tasks with people and decisions stay with you.</li>
              <li>Hours are labelled as estimates and include checking time.</li>
              <li>It does not invent job statistics or studies.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI changes tasks before it changes jobs. Look at your own tasks, count checking time honestly, and use saved time for work only people can do. Build both AI skills and human skills, and keep learning in small, steady steps.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Capstone: Your Personal Generative AI Toolkit</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole course together into one personal toolkit. A toolkit is a short, written set of choices you can use every day. It has four parts: the tools you use, a library of prompts that work, a routine for checking answers, and your personal rules. Mia and Tom each built one. By the end of this lesson you will have a first version of your own, on one page.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 314" role="img" aria-label="My AI toolkit in the centre, joined to four parts. Tools: the approved tool for work or school, plus one personal tool. Prompt library: tested prompts with placeholders, and what to check for each. Checking routine: facts, numbers, sources, fairness and privacy, checked every time. Personal rules: what AI may and may not do for you, and when you say you used it. At the bottom: review your toolkit every 3 months.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g stroke="#9b99b8" stroke-width="1.5">
                <line x1="260" y1="65" x2="300" y2="132"/>
                <line x1="500" y1="65" x2="460" y2="132"/>
                <line x1="260" y1="235" x2="300" y2="168"/>
                <line x1="500" y1="235" x2="460" y2="168"/>
              </g>
              <rect x="20" y="20" width="240" height="90" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="140" y="48" font-weight="700" fill="#93c5fd">1. Tools</text>
              <text x="140" y="72" font-size="11">The approved tool for work or school</text>
              <text x="140" y="92" font-size="11" fill="#9b99b8">plus one personal tool</text>
              <rect x="500" y="20" width="240" height="90" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="620" y="48" font-weight="700" fill="#c4b5fd">2. Prompt library</text>
              <text x="620" y="72" font-size="11">Tested prompts with [placeholders]</text>
              <text x="620" y="92" font-size="11" fill="#9b99b8">and what to check for each</text>
              <rect x="290" y="126" width="180" height="48" rx="10" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="380" y="156" font-weight="700" fill="#f9a8d4">My AI toolkit</text>
              <rect x="20" y="190" width="240" height="90" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="140" y="218" font-weight="700" fill="#6ee7b7">3. Checking routine</text>
              <text x="140" y="242" font-size="11">Facts, numbers, sources, fairness,</text>
              <text x="140" y="262" font-size="11" fill="#9b99b8">privacy: every time</text>
              <rect x="500" y="190" width="240" height="90" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="620" y="218" font-weight="700" fill="#fcd34d">4. Personal rules</text>
              <text x="620" y="242" font-size="11">What AI may and may not do for me</text>
              <text x="620" y="262" font-size="11" fill="#9b99b8">and when I say I used it</text>
              <text x="380" y="304" font-size="12" fill="#9b99b8">Review your toolkit every 3 months. Tools and rules change.</text>
            </g>
          </svg>
          <figcaption>Four parts make one toolkit. Keep it on one page so you actually use it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Part 1: choose your tools</h3>
          <p>Start with your rules, not with the newest app. If your school or employer approves a tool, use that one for school or work. Then choose at most one personal tool for everything else. Fewer tools means fewer settings to check and fewer places where your data goes.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Mia (student, London)</th><th>Tom (office assistant, New York)</th></tr></thead>
            <tbody>
              <tr><td>Main tool</td><td>Microsoft Copilot with her college account</td><td>Microsoft Copilot with his work account (the only approved work tool)</td></tr>
              <tr><td>Personal tool</td><td>Free plan of ChatGPT, for personal study only</td><td>Free plan of Claude, for personal things only</td></tr>
              <tr><td>Never</td><td>Other people's work or personal details in any tool</td><td>Client data in his personal tool; client contact, ID or money details in any tool unless Dana approves</td></tr>
              <tr><td>Settings checked</td><td>Training and chat history settings in both tools</td><td>Training and chat history settings in Claude</td></tr>
              <tr><td>Cost</td><td>Nothing</td><td>Nothing: his employer pays for work Copilot</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Part 2: build a prompt library</h3>
          <p>A <strong>prompt library</strong> is a saved list of prompts that worked well for you. You reuse them instead of starting from nothing each time. Keep it in a simple document or note. Use [square brackets] for the parts that change. Each entry has the same columns:</p>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>Use it for</th><th>Tool</th><th>What I check</th><th>Last tested</th></tr></thead>
            <tbody>
              <tr><td>Quiz me</td><td>Exam practice on one topic</td><td>College Copilot</td><td>Answers against my notes and textbook</td><td>5 Oct 2026</td></tr>
              <tr><td>Explain simply</td><td>A topic I do not understand</td><td>College Copilot</td><td>Key facts against my textbook</td><td>29 Sep 2026</td></tr>
              <tr><td>Listing from fact sheet</td><td>New rental listings</td><td>Work Copilot</td><td>Every fact against the fact sheet; no words about people</td><td>6 Oct 2026</td></tr>
              <tr><td>Viewing reply</td><td>Answering viewing requests</td><td>Work Copilot</td><td>Times, address, no client data in the prompt</td><td>2 Oct 2026</td></tr>
            </tbody>
          </table>
          <p>Here is Mia's "Quiz me" prompt in full. It has a role, a task, context, limits and a format:</p>
          <pre><code>You are an A-level [Biology] tutor in the UK.
        Quiz me on [limiting factors in photosynthesis].
        Ask me 5 questions, one at a time. Wait for my answer each time.
        After each answer, tell me if I am right and explain in 2 sentences.
        Use only A-level content. If you are not sure of a fact, say so.
        At the end, list the topics I should revise again.</code></pre>
          <p>The "Last tested" column matters. Tools change, so a prompt that worked in March may work differently in October. Test your main prompts again every few months.</p>
        </div>
        <div class="lc-card">
          <h3>Part 3 and Part 4: a checking routine and personal rules</h3>
          <p>A <strong>checking routine</strong> is the same short list of checks you do every time, before you use an AI answer. Make it short enough that you really do it:</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Question</th></tr></thead>
            <tbody>
              <tr><td>Facts</td><td>Does every fact match my source (notes, textbook, fact sheet)?</td></tr>
              <tr><td>Numbers</td><td>Did I recalculate every number and date myself?</td></tr>
              <tr><td>Sources</td><td>Do the quotes and links really exist and say this?</td></tr>
              <tr><td>Fairness</td><td>Does it pass the swap test? Is anyone left out or pushed away?</td></tr>
              <tr><td>Privacy and honesty</td><td>Did I keep private data out? Do I need to say I used AI?</td></tr>
            </tbody>
          </table>
          <p><strong>Personal rules</strong> are your own short promises about how you use AI. Write 3 to 5. Mia's rules:</p>
          <ol class="lc-list">
            <li>AI explains and quizzes me. It does not write work I hand in.</li>
            <li>I check every fact against my notes or textbook.</li>
            <li>I try the question myself before I ask AI for the answer.</li>
            <li>I never upload other people's work or personal details.</li>
            <li>I follow my college's AI rule and say when I used AI.</li>
          </ol>
          <p>Tom's rules are similar, but built around work. He uses only the approved tool and keeps client data out. He checks every listing fact and describes the home, never the people. Dana approves before anything goes public.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Tom uses his toolkit on a new listing</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Prompt library">Tom opens his "Listing from fact sheet" prompt. He pastes the facts for Apartment 4L, 41 Calder Street. The facts are: 1 bedroom, 1 bathroom, about 600 sq ft, 4th-floor walk-up, $2,450 a month. It is available on 1 December 2026, with heat and hot water included and shared laundry in the basement.</li>
              <li data-kind="user" data-label="Prompt">He runs it in Copilot with his work account. The prompt says: use only these facts, write [CHECK] if something is missing, describe the home, not the people.</li>
              <li data-kind="answer" data-label="AI draft">The draft has a headline and 110 words. It says "Pets: [CHECK]" and ends with "Perfect for a couple."</li>
              <li data-kind="check" data-label="Facts">Tom checks every fact against the fact sheet. Rent, floor, size, date and laundry are all right.</li>
              <li data-kind="warn" data-label="Fairness">"Perfect for a couple" describes people, not the home. It fails the swap test. Tom deletes it.</li>
              <li data-kind="check" data-label="Missing fact">The pet policy is missing from the fact sheet. Tom does not guess. He checks the landlord's building info sheet: cats allowed, dogs not allowed. He adds this line.</li>
              <li data-kind="result" data-label="Approval">Dana reads and approves the listing. Tom updates "Last tested" to 6 Oct 2026 in his prompt library.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build the first version of your own toolkit. Change the brackets to fit your life, or run it as it is to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a coach who helps beginners use generative AI safely. Use simple English.

        About me: [I am a student in London studying for A-levels in Biology, Chemistry and Psychology].
        AI tools I may use: [Microsoft Copilot through my college account; the free plan of ChatGPT at home].
        My school or work AI rule: [AI may explain and quiz me, but must not write work I hand in. I must say when I used AI].
        My 3 main tasks: [revising for exams, understanding hard topics, planning my week].

        Build my one-page AI toolkit with 4 parts:
        1. Tools: which tool for which task, and why. Put the approved tool first.
        2. Prompt library: 3 reusable prompts with [placeholders]. Each has a role, task, context and format, plus a line "What I check".
        3. Checking routine: 5 checks I do every time.
        4. Personal rules: 5 short rules, including privacy and saying when I used AI.

        Do not invent features or prices. Keep it under 450 words.</pre>
            <ul class="ai-try-checks">
              <li>The approved school or work tool comes first.</li>
              <li>Each prompt has a role, task, context and format, and a "What I check" line.</li>
              <li>The checking routine includes checking facts against a real source.</li>
              <li>The rules cover privacy and saying when you used AI, and match your real rule.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good toolkit is short and personal: approved tools, tested prompts, a checking routine you really do, and clear rules. AI drafts, you check, you decide. Review your toolkit every few months, because the tools will keep changing.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

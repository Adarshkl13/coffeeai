module AiForBrandingContent
  # Units (sidebar dividers): 1–4 Brand Basics · 5–9 Name, Look and Voice · 10–14 Bringing the Brand Online · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">What a Brand Is</h1>
        </div>
        <p class="lc-lead">Many people think a brand is a logo. A logo is only one small part. Your <strong>brand</strong> is what customers remember, feel and tell others about your business. In this lesson, you will learn four parts of a brand: the promise, the personality, the positioning and the look. You will see them in three small made-up businesses. Across this course, you will follow <strong>Lakshmi</strong> in Kerala. She is starting a home-made Kerala pickle brand from her mother's recipes. It has no name yet. By the end of the course, it will have a full brand kit.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Five parts feed into a brand: logo and look, promise, personality, positioning and experience. Together they become what customers remember and tell others. Example: a customer says the pickle tastes like home and arrives safe.">
            <defs><marker id="br1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="136" height="62" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="78" y="46" font-weight="700">Logo + look</text>
              <text x="78" y="66" font-size="11" fill="#9b99b8">colours, jar, label</text>
              <rect x="158" y="20" width="136" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="226" y="46" font-weight="700">Promise</text>
              <text x="226" y="66" font-size="11" fill="#9b99b8">what you always do</text>
              <rect x="306" y="20" width="136" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="374" y="46" font-weight="700">Personality</text>
              <text x="374" y="66" font-size="11" fill="#9b99b8">how you sound</text>
              <rect x="454" y="20" width="136" height="62" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="522" y="46" font-weight="700">Positioning</text>
              <text x="522" y="66" font-size="11" fill="#9b99b8">why pick you</text>
              <rect x="602" y="20" width="136" height="62" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="670" y="46" font-weight="700">Experience</text>
              <text x="670" y="66" font-size="11" fill="#9b99b8">taste, packing</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#br1a)">
                <line x1="78" y1="84" x2="250" y2="150"/>
                <line x1="226" y1="84" x2="310" y2="150"/>
                <line x1="374" y1="84" x2="374" y2="150"/>
                <line x1="522" y1="84" x2="440" y2="150"/>
                <line x1="670" y1="84" x2="500" y2="150"/>
              </g>
              <rect x="160" y="154" width="430" height="62" rx="12" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="375" y="180" font-weight="700" fill="#6ee7b7">Your brand</text>
              <text x="375" y="202" font-size="12">what customers remember and tell others</text>
              <line x1="375" y1="218" x2="375" y2="244" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#br1a)"/>
              <text x="375" y="268" fill="#fcd34d">"Tastes like home, and it arrived safe."</text>
              <text x="375" y="288" font-size="11" fill="#9b99b8">a made-up customer, Karnataka</text>
            </g>
          </svg>
          <figcaption>The logo is only one part. The four parts in this lesson, plus the real experience, become the brand: what people say about you when you are not in the room.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Brand and logo are not the same</h3>
          <p>A <strong>logo</strong> is a mark: a symbol, a word in a special font, or both. It helps people spot you. A <strong>brand</strong> is bigger. It is the feeling and the reputation behind the logo. A shop with a beautiful logo and rude staff has a bad brand. A home seller with no logo but great, reliable food can have a strong brand.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Plain meaning</th><th>Example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Brand promise</strong></td><td>What customers can always expect from you</td><td>Sweet Crumbs (London, owner Anjali): "Eggless cakes, baked fresh the same morning."</td></tr>
              <tr><td><strong>Personality</strong></td><td>How your brand would behave if it were a person</td><td>Chai Chowk (Leeds, founder Aman): lively, quick and friendly.</td></tr>
              <tr><td><strong>Positioning</strong></td><td>The place you want to hold in a customer's mind, compared to other choices</td><td>Lakshmi: "Real Kerala home pickles for Malayalis living outside Kerala."</td></tr>
              <tr><td><strong>Look</strong></td><td>Logo, colours, fonts, photos, packing</td><td>A glass jar with a simple label and a hand-drawn chilli</td></tr>
            </tbody>
          </table>
          <p>Customers meet your brand at many <strong>touchpoints</strong> (places where they meet your business). For Lakshmi, these are the jar, the label, the WhatsApp chat, the taste, the delivery and the price. Each touchpoint either keeps the promise or breaks it.</p>
        </div>
        <div class="lc-card">
          <h3>The brand promise: small, clear and kept</h3>
          <p>A good promise is short and specific. Most importantly, you can keep it every single day. A promise you break is worse than no promise.</p>
          <table class="lc-table">
            <thead><tr><th>Weak promise</th><th>Why it is weak</th><th>Stronger promise</th></tr></thead>
            <tbody>
              <tr><td>"Best pickles in India."</td><td>Nobody can check it. Every seller says it.</td><td>"Small batches from my mother's recipe, in sesame oil."</td></tr>
              <tr><td>"Always fresh."</td><td>Fresh how? Customers cannot see it.</td><td>"Every jar shows the date it was made."</td></tr>
              <tr><td>"Superfast service!"</td><td>Chai Chowk cannot keep this at 6 pm rush hour.</td><td>"Your chai in about 5 minutes, even when we are busy."</td></tr>
            </tbody>
          </table>
          <p>Notice that the stronger promises are also honest. Never put a claim in your promise that you cannot prove. Words like "No. 1", "award-winning" or "doctor-approved" need real proof.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI fits in this first step</h3>
          <p>AI is useful for thinking out loud. It can explain branding terms in your own business context. It can suggest promise options and point out touchpoints you forgot. But it does not know your customers, your costs or your kitchen. You decide what is true.</p>
          <pre><code>Weak prompt:
        Make a brand for my pickle business.

        Better prompt:
        I make Kerala pickles at home in Kerala: mango, lime, garlic and fish.
        Small batches, my mother's recipes, sesame oil. I sell to 3 local
        shops and on WhatsApp. Write 3 short brand promise options that I
        can keep every day. For each one, tell me what I must do daily to
        keep it. Do not invent facts about my business.</code></pre>
          <p>The better prompt gives facts, a clear task and a limit. The weak prompt gets a generic answer, such as "Taste the Tradition!". Hundreds of brands could use that line.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which part of the brand is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each example into the part of the brand it shows.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="look" data-label="Look"></div>
              <div data-sorter-target="bucket" data-bucket="promise" data-label="Promise"></div>
              <div data-sorter-target="bucket" data-bucket="personality" data-label="Personality"></div>
              <div data-sorter-target="bucket" data-bucket="positioning" data-label="Positioning"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="look" data-why="Colours, drawings and labels are the visual side of the brand.">A green and gold label with a drawing of a pickle jar</li>
              <li data-bucket="promise" data-why="It says what the customer can always expect.">Every jar tastes the same as the last one</li>
              <li data-bucket="personality" data-why="It describes how the brand behaves and talks, like a person.">Warm and homely, like chatting with a favourite aunty back home</li>
              <li data-bucket="positioning" data-why="It names who the brand is for and the need it meets.">For Malayalis outside Kerala who miss home pickles</li>
              <li data-bucket="promise" data-why="It is a clear, daily commitment that customers can check.">Sweet Crumbs: eggless cakes baked fresh the same morning</li>
              <li data-bucket="personality" data-why="Lively, quick and funny are personality traits.">Chai Chowk sounds lively and quick, with a little Indori humour</li>
              <li data-bucket="positioning" data-why="It compares the brand with other choices and says why it is different.">Unlike factory pickles, made in small batches from a family recipe</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain the parts of a brand using your own business. Change the details in [square brackets], or send it as it is to see Lakshmi's example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly brand coach for small businesses in India.

        My business: [home-made Kerala pickles: mango, lime, garlic and fish. Small batches, my mother's recipes, cooked in sesame oil. I sell to 3 local shops and on WhatsApp.]
        My main customers: [Malayali families living outside Kerala who miss home food]

        Please do this, in simple English:
        1. In 3 short lines, explain the difference between my logo and my brand. Use my business as the example.
        2. Write 3 brand promise options (12 words or fewer each). Each must be something I can keep every day. Under each, write what I must do daily to keep it.
        3. Suggest 4 personality words for my brand, and 2 words it should never be.
        4. List 5 touchpoints (places where customers meet my brand). Give one small, low-cost improvement for each.

        Rules: Do not invent facts, awards, sales numbers or customer reviews. Avoid claims like "best" or "No. 1". If you need more information, ask me up to 3 questions at the end.</pre>
            <ul class="ai-try-checks">
              <li>Each promise is specific and something you can really keep every day.</li>
              <li>No invented claims such as "best in India", awards or reviews.</li>
              <li>The touchpoints are real places your customers meet you.</li>
              <li>The personality words fit how you actually talk to customers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A logo helps people find you. A brand makes them come back. Start with a promise you can keep every day, then make every touchpoint keep it.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Where AI Helps in Branding</h1>
        </div>
        <p class="lc-lead">AI can give you fifty name ideas in a minute. It can draft label text, suggest colours and describe a mood for your brand. This saves hours for a small business owner. But AI also brings risks: dull ideas that every brand uses, ideas too close to real brands, and images with unclear rights. In this lesson, you will learn four jobs where AI helps in branding. You will also learn the checks you must do yourself before you use anything.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A five-step workflow: your brief, AI drafts, you choose, you check, you use it. On the left, what AI is good at. On the right, four risks to check: generic ideas, copying, trademark clashes and image rights.">
            <defs><marker id="br2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="128" height="58" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="74" y="44" font-weight="700">1. Your brief</text>
              <text x="74" y="63" font-size="11" fill="#9b99b8">real facts</text>
              <rect x="163" y="20" width="128" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="227" y="44" font-weight="700">2. AI drafts</text>
              <text x="227" y="63" font-size="11" fill="#9b99b8">many options</text>
              <rect x="316" y="20" width="128" height="58" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="44" font-weight="700">3. You choose</text>
              <text x="380" y="63" font-size="11" fill="#9b99b8">keep 2 or 3</text>
              <rect x="469" y="20" width="128" height="58" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="533" y="44" font-weight="700">4. You check</text>
              <text x="533" y="63" font-size="11" fill="#9b99b8">risks below</text>
              <rect x="622" y="20" width="128" height="58" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="686" y="44" font-weight="700">5. You use it</text>
              <text x="686" y="63" font-size="11" fill="#9b99b8">and test it</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#br2a)">
                <line x1="140" y1="49" x2="159" y2="49"/>
                <line x1="293" y1="49" x2="312" y2="49"/>
                <line x1="446" y1="49" x2="465" y2="49"/>
                <line x1="599" y1="49" x2="618" y2="49"/>
                <line x1="533" y1="80" x2="533" y2="116"/>
              </g>
              <rect x="10" y="120" width="300" height="165" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="160" y="146" font-weight="700" fill="#93c5fd">AI is good at</text>
              <g text-anchor="start" font-size="12">
                <text x="30" y="176">• many name ideas, fast</text>
                <text x="30" y="202">• mood board ideas</text>
                <text x="30" y="228">• first drafts of copy</text>
                <text x="30" y="254">• explaining terms simply</text>
              </g>
              <rect x="330" y="120" width="420" height="165" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="540" y="146" font-weight="700" fill="#fcd34d">Risks you must check</text>
              <g text-anchor="start" font-size="12">
                <text x="350" y="176">• Generic: sounds like every other brand</text>
                <text x="350" y="202">• Copying: too close to a real brand</text>
                <text x="350" y="228">• Trademark clash: a similar name exists</text>
                <text x="350" y="254">• Image rights: ownership can be unclear</text>
              </g>
            </g>
          </svg>
          <figcaption>AI speeds up steps 2 and 3. Steps 1, 4 and 5 are your job, because only you know the facts and carry the risk.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four branding jobs where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>How AI helps</th><th>What you still do</th></tr></thead>
            <tbody>
              <tr><td><strong>Names</strong></td><td>Gives long lists of names in different styles and languages</td><td>Check meaning with native speakers. Search trademarks, domains and social handles.</td></tr>
              <tr><td><strong>Ideas</strong></td><td>Suggests taglines, packaging ideas, launch ideas and story angles</td><td>Pick ideas that fit your real business. Drop the dull ones.</td></tr>
              <tr><td><strong>Mood boards</strong></td><td>Describes a look and feel. AI image tools can make sample pictures for it.</td><td>Use them only for direction. Check the tool's terms before you use any image in public.</td></tr>
              <tr><td><strong>Copy</strong></td><td>Drafts label text, an "About us" page, a WhatsApp welcome message and social bios</td><td>Check every fact and claim. Edit it so it sounds like you.</td></tr>
            </tbody>
          </table>
          <p>A <strong>mood board</strong> is a page of pictures, colours and textures that shows how a brand should feel. <strong>Copy</strong> is the written text used in marketing, such as labels, posts and web pages.</p>
        </div>
        <div class="lc-card">
          <h3>The risks, with Lakshmi's examples</h3>
          <ul class="lc-list">
            <li><strong>Generic results.</strong> Lakshmi asked for pickle brand names. The AI gave "Spice Heaven" and "Taste of Kerala". Many sellers could already use names like these. They also do not tell her story.</li>
            <li><strong>Copying.</strong> AI learns from a huge amount of text and images. It can repeat a real brand's name, slogan or style without telling you.</li>
            <li><strong>Trademark clashes.</strong> A <strong>trademark</strong> is a name, logo or sign that the law protects for one business. AI cannot reliably check trademark records. If it says "this name is unique", do not believe it. You will learn the real search in the trademark lesson.</li>
            <li><strong>Rights in AI images.</strong> In the US, an image made only by AI, with no real human creative work, cannot get copyright. In India, the rules for AI-made images are not settled yet. Each tool also has its own terms. Do not use AI images that copy a real brand, artist or person. Check the tool's current terms. This is not legal advice; ask a lawyer for important uses.</li>
            <li><strong>Private data.</strong> Do not paste customer phone numbers, addresses or order lists into public AI tools.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>A prompt that reduces the risks</h3>
          <p>You cannot remove the risks with a prompt. But a good prompt gives better material and asks the AI to flag weak ideas.</p>
          <pre><code>Weak prompt:
        Give me catchy taglines for pickles.

        Better prompt:
        I make Kerala pickles at home in Kerala from my mother's recipes,
        in small batches of about 40 jars, cooked in sesame oil.
        Write 8 taglines of 8 words or fewer. Use my real facts.
        After the list, mark any line that sounds generic or that many
        brands might already use. Do not claim that any line is unique.</code></pre>
          <p>Then do your own check. Search each line you like on the web in quotes. For example, search <code>"taste of tradition" pickle</code>. If many sellers use it, drop it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Lakshmi's tagline session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Lakshmi asks">"Give me 5 taglines for my Kerala pickle brand."</li>
              <li data-kind="answer" data-label="AI replies">"1. Taste the Tradition. 2. Pickled with Love. 3. Kerala in a Jar. 4. Amma's Recipe, Small Batches. 5. The Spice of Home." It adds: "All of these are original."</li>
              <li data-kind="warn" data-label="Mistake to catch">The AI cannot know if a line is original. It has no reliable view of every brand, shop and trademark.</li>
              <li data-kind="tool" data-label="Web search">Lakshmi searches each line in quotes with the word "pickle".</li>
              <li data-kind="result" data-label="What she finds">In this made-up example, lines 1, 2 and 3 appear on many food products and posts. Line 4 is less common and uses her real facts.</li>
              <li data-kind="check" data-label="Lakshmi decides">She keeps line 4 as a draft. She will test it with five customers and check it again once the name is chosen.</li>
              <li data-kind="user" data-label="Follow-up">"Write 6 more lines like number 4. Use only these facts: small batches, sesame oil, my mother's recipes, Kerala."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to make a simple plan for using AI in your branding, with the checks for each task. Change the [bracketed] details to your business.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical branding adviser for small businesses in India.

        My business: [a home-made Kerala pickle brand. Mango, lime, garlic and fish pickles, small batches, my mother's recipes. Sold in local shops and on WhatsApp. No name or logo yet.]
        My budget: [very small, I will do most work myself]

        Make a table with these columns: Branding task | How AI can help | What I must check myself | Risk (low, medium or high) | Free or low-cost tool type to use.
        Include these tasks: business name, tagline, logo ideas, colours and fonts, label text, WhatsApp welcome message, social media bio, product photos.

        After the table, give me:
        - 3 things I should never ask AI to decide for me, and why.
        - 3 kinds of data I should not paste into a public AI tool.

        Use simple English. Name tool types in general words (for example "an AI image tool" or "a design app"). Do not claim that AI can check trademarks.</pre>
            <ul class="ai-try-checks">
              <li>Every task has a real human check, not "AI handles it".</li>
              <li>Names and logos are marked higher risk, with trademark and copying checks.</li>
              <li>It does not say AI can confirm that a name is free or unique.</li>
              <li>The private data list includes customer details such as phone numbers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI for speed and variety, never for the final word. AI suggests, you decide, and real sources check. Whatever you publish, you are responsible for it.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Brand Strategy: Purpose, Audience and Positioning</h1>
        </div>
        <p class="lc-lead">Before you choose a name or colours, you need a plan. <strong>Brand strategy</strong> answers three questions. Why does your business exist? Who is it for? Why should those people choose you over other options? In this lesson, you will write a purpose, describe a target customer and study competitors. Then you will write a positioning statement. You will also see how AI can help you think, and where you must test its ideas with real customers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A positioning map with price on the vertical axis and factory-made to home-made on the horizontal axis. Kerala Gold Pickles is factory-made and low price. Heritage Jar Co. is high price. Chechi's Homemade is home-made and low price. Lakshmi's brand sits home-made at a middle price. On the right, Lakshmi's positioning statement in six parts.">
            <defs><marker id="br3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="10" y="10" width="505" height="280" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <line x1="40" y1="150" x2="490" y2="150" stroke="#9b99b8" stroke-width="1.2"/>
              <line x1="265" y1="275" x2="265" y2="28" stroke="#9b99b8" stroke-width="1.2" marker-end="url(#br3a)"/>
              <text x="42" y="168" fill="#9b99b8" font-size="11">Factory-made</text>
              <text x="490" y="168" fill="#9b99b8" font-size="11" text-anchor="end">Home-made</text>
              <text x="273" y="36" fill="#9b99b8" font-size="11">Higher price</text>
              <text x="273" y="278" fill="#9b99b8" font-size="11">Lower price</text>
              <circle cx="140" cy="222" r="8" fill="#ec4899"/>
              <text x="140" y="248" text-anchor="middle">Kerala Gold Pickles</text>
              <circle cx="395" cy="66" r="8" fill="#8b5cf6"/>
              <text x="395" y="92" text-anchor="middle">Heritage Jar Co.</text>
              <circle cx="425" cy="222" r="8" fill="#f59e0b"/>
              <text x="425" y="248" text-anchor="middle">Chechi's Homemade</text>
              <circle cx="400" cy="128" r="10" fill="#10b981" stroke="#6ee7b7" stroke-width="2"/>
              <text x="416" y="124" font-weight="700" fill="#6ee7b7">Lakshmi</text>
              <text x="300" y="206" fill="#9b99b8" font-size="11">all made up</text>
              <rect x="530" y="10" width="220" height="280" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="640" y="36" text-anchor="middle" font-weight="700" fill="#6ee7b7">Positioning statement</text>
              <g font-size="11.5">
                <text x="545" y="70"><tspan fill="#93c5fd">For:</tspan> Malayalis outside Kerala</text>
                <text x="545" y="108"><tspan fill="#93c5fd">Who:</tspan> miss home pickles</text>
                <text x="545" y="146"><tspan fill="#93c5fd">Brand is:</tspan> Kerala home pickles</text>
                <text x="545" y="184"><tspan fill="#93c5fd">That:</tspan> taste like Amma's</text>
                <text x="545" y="222"><tspan fill="#93c5fd">Unlike:</tspan> factory pickles</text>
                <text x="545" y="260"><tspan fill="#93c5fd">Because:</tspan> small batches</text>
              </g>
            </g>
          </svg>
          <figcaption>A positioning map shows where each brand sits in customers' minds. Lakshmi aims for home taste with reliable quality at a middle price. The statement on the right puts that in words.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Purpose and target customer</h3>
          <p>Your <strong>purpose</strong> is why your business exists, beyond making money. Keep it to one sentence that a child could understand.</p>
          <ul class="lc-list">
            <li>Lakshmi: "To bring the taste of a Kerala home kitchen to Malayalis wherever they live."</li>
            <li>Chai Chowk (Aman, Leeds): "To give busy people a proper cup of chai and a hot snack, fast."</li>
          </ul>
          <p>Your <strong>target customer</strong> is the person you serve best. "Everyone who eats pickles" is not a target. It is too wide to guide any decision. Lakshmi's first guess:</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Lakshmi's answer (a guess to test)</th></tr></thead>
            <tbody>
              <tr><td>Who?</td><td>Malayali families living outside Kerala, for example in Karnataka, Tamil Nadu or Maharashtra</td></tr>
              <tr><td>What do they want?</td><td>The taste of home pickles, which they cannot find in local shops</td></tr>
              <tr><td>What worries them?</td><td>Oily or very salty factory pickles; jars that leak in the parcel</td></tr>
              <tr><td>When do they buy?</td><td>Before festivals such as Onam, or when relatives cannot bring jars from Kerala</td></tr>
              <tr><td>Second group</td><td>Busy young professionals in Kerala and Karnataka who like home-made food but have no time to make it</td></tr>
            </tbody>
          </table>
          <p>AI can help you write a <strong>persona</strong> (a short, made-up profile of a typical customer). But a persona from AI is only a guess. Test it by talking to 10 to 15 real people who fit it. Never let AI invent market size numbers for you. If you need numbers, find a real, named source.</p>
        </div>
        <div class="lc-card">
          <h3>Competitors: how they look and sound</h3>
          <p>A <strong>competitor</strong> is any other choice your customer has. Lakshmi studied three (all made up for this course):</p>
          <table class="lc-table">
            <thead><tr><th>Brand</th><th>Look</th><th>Sound</th><th>Price</th></tr></thead>
            <tbody>
              <tr><td>Kerala Gold Pickles</td><td>Bright red and yellow label, busy design, plastic jar</td><td>Loud: "Best Quality! Since 1985!"</td><td>₹90 to ₹120 for 400 g</td></tr>
              <tr><td>Heritage Jar Co.</td><td>Small glass jars, brown paper labels, thin elegant font</td><td>Polished English: "artisanal", "curated"</td><td>₹450 to ₹600 for 250 g</td></tr>
              <tr><td>Chechi's Homemade</td><td>Handwritten labels on reused jars</td><td>Friendly Malayalam voice notes on WhatsApp</td><td>₹150 for 250 g, often sold out</td></tr>
            </tbody>
          </table>
          <p>Lakshmi sees a gap. She can offer real home taste like Chechi's, with steady quality and safe shipping. She can do it at a middle price, around ₹190 to ₹240 for 250 g. Her difference must be <strong>true</strong>, <strong>important to customers</strong> and <strong>hard to copy</strong>. "Tasty" fails the last test. "My mother's family recipes, made in small batches" passes all three.</p>
        </div>
        <div class="lc-card">
          <h3>Writing the positioning statement</h3>
          <p>A <strong>positioning statement</strong> is a private sentence for you and your team. It is not a slogan for customers. It guides every later choice: the name, the colours, the words and the price.</p>
          <pre><code>For [target customer]
        who [need or problem],
        [brand] is a [category]
        that [main benefit].
        Unlike [main alternatives],
        we [proof: the reason to believe].</code></pre>
          <p>Lakshmi's draft:</p>
          <pre><code>For Malayali families living outside Kerala who miss the pickles of home,
        [Lakshmi's brand] is a home-made Kerala pickle brand
        that tastes like Amma's kitchen.
        Unlike factory pickles, every jar is made in small batches from a
        family recipe in sesame oil, with a clear label and leak-proof packing.</code></pre>
          <p>Use AI to draft several versions and to find weak spots. A strong prompt gives your facts and competitors. It also asks the AI to list the <em>guesses</em> in each statement, so you know what to test with customers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the strategy in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Lakshmi's strategy steps in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the purpose in one simple sentence</li>
              <li data-order="2">Describe the target customer as a first guess</li>
              <li data-order="3">Talk to 10 to 15 real customers to test the guess</li>
              <li data-order="4">List competitors and note how they look, sound and price</li>
              <li data-order="5">Choose a difference that is true, important and hard to copy</li>
              <li data-order="6">Write the positioning statement and share it with a few customers</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft positioning statements for your business and to show you what still needs testing. Replace the [bracketed] parts with your own details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a brand strategist who works with small Indian businesses.

        My business: [home-made Kerala pickles: mango, lime, garlic, fish. Small batches, my mother's recipes, sesame oil. Price about Rs 190 to 240 for 250 g.]
        Target customer (my guess): [Malayali families living outside Kerala who miss home pickles]
        Competitors: [a cheap factory brand with a loud label; a premium gourmet brand at Rs 450 to 600; a WhatsApp home seller who often runs out]

        Please:
        1. Write 3 different positioning statements using: For / who / is a / that / Unlike / we.
        2. Under each, list the guesses it depends on (for example "customers care about sesame oil").
        3. Pick the strongest one and explain why in 2 lines.
        4. Write 6 open questions I can ask real customers to test the guesses. Do not ask leading questions.

        Rules: Use simple English. Do not invent market size, statistics or customer quotes. Mark anything that needs proof with [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>Each statement names a specific customer, not "everyone".</li>
              <li>The difference is true for your business and not just "tasty" or "quality".</li>
              <li>There are no invented numbers or quotes; claims needing proof are marked [CHECK].</li>
              <li>The customer questions are open, such as "What do you miss about...", not "Would you buy...".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Positioning is a choice about who you are for, and who you are not for. AI can write many versions quickly. Only real customers can tell you which one is true.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Brand Personality and Values</h1>
        </div>
        <p class="lc-lead">Two pickle brands can sell the same mango pickle and still feel very different. One feels like a loud supermarket. The other feels like your aunt's kitchen. That difference is <strong>brand personality</strong>: the human traits people feel in your words, pictures and service. <strong>Values</strong> are the rules your business will not break. In this lesson, you will describe a personality in plain words and back each value with real actions. You will also turn both into a simple do and don't list that anyone can follow.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Five personality sliders for Lakshmi's brand: close to traditional rather than modern, a little playful, slightly premium, quiet rather than loud, and very friendly rather than formal. On the right, her five personality words: warm, homely, honest, cheerful and proud of Kerala.">
            <defs><marker id="br4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="10" y="10" width="585" height="270" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="350" y="36" text-anchor="middle" font-weight="700" fill="#93c5fd">Where Lakshmi's brand sits</text>
              <g text-anchor="end">
                <text x="165" y="74">Traditional</text>
                <text x="165" y="118">Serious</text>
                <text x="165" y="162">Everyday</text>
                <text x="165" y="206">Quiet</text>
                <text x="165" y="250">Formal</text>
              </g>
              <g text-anchor="start">
                <text x="535" y="74">Modern</text>
                <text x="535" y="118">Playful</text>
                <text x="535" y="162">Premium</text>
                <text x="535" y="206">Loud</text>
                <text x="535" y="250">Friendly</text>
              </g>
              <g stroke="#4b4a78" stroke-width="6" stroke-linecap="round">
                <line x1="185" y1="70" x2="515" y2="70"/>
                <line x1="185" y1="114" x2="515" y2="114"/>
                <line x1="185" y1="158" x2="515" y2="158"/>
                <line x1="185" y1="202" x2="515" y2="202"/>
                <line x1="185" y1="246" x2="515" y2="246"/>
              </g>
              <g fill="#10b981" stroke="#6ee7b7" stroke-width="2">
                <circle cx="268" cy="70" r="9"/>
                <circle cx="383" cy="114" r="9"/>
                <circle cx="383" cy="158" r="9"/>
                <circle cx="251" cy="202" r="9"/>
                <circle cx="465" cy="246" r="9"/>
              </g>
              <rect x="610" y="10" width="140" height="270" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="680" y="40" text-anchor="middle" font-weight="700" fill="#6ee7b7">We are</text>
              <g text-anchor="middle">
                <text x="680" y="84">Warm</text>
                <text x="680" y="124">Homely</text>
                <text x="680" y="164">Honest</text>
                <text x="680" y="204">Cheerful</text>
                <text x="680" y="244">Proud of Kerala</text>
              </g>
            </g>
          </svg>
          <figcaption>Sliders turn a vague feeling into clear choices. Lakshmi's brand is traditional, quiet and very friendly, with a little fun.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Personality in plain words</h3>
          <p>Ask yourself: "If my brand walked into a family function, how would it behave?" Then pick 3 to 5 simple words. Each word needs a short meaning, so everyone reads it the same way.</p>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>What it means for Lakshmi's brand</th><th>Example line</th></tr></thead>
            <tbody>
              <tr><td>Warm</td><td>We talk like family, not like a company</td><td>"Your jars are packed and on the way. Enjoy them with hot rice!"</td></tr>
              <tr><td>Homely</td><td>Real kitchen, real people, simple words</td><td>"Amma is cutting the mangoes for this week's batch."</td></tr>
              <tr><td>Honest</td><td>We say exactly what is inside and what is not</td><td>"Salt, sesame oil, chilli and vinegar. That is how the pickle keeps."</td></tr>
              <tr><td>Cheerful</td><td>A light smile, never silly jokes</td><td>"Warning: the garlic pickle will not last the week."</td></tr>
              <tr><td>Proud of Kerala</td><td>A few Malayalam words, always with the meaning</td><td>"Kadumanga (tender mango) season is here."</td></tr>
            </tbody>
          </table>
          <p>Compare two other made-up brands. Chai Chowk in Leeds is lively, quick and a bit cheeky: "Chai ready in five. Poha ready now." Sweet Crumbs in London is warm and careful: "Tell us the name for the cake. We will write it neatly."</p>
        </div>
        <div class="lc-card">
          <h3>Values need proof</h3>
          <p>Value words are easy to write. Every brand says "quality" and "trust". A value only means something when you can point to an action. For each value, write what you do and what you never do.</p>
          <table class="lc-table">
            <thead><tr><th>Value</th><th>What we do (proof)</th><th>What we never do</th></tr></thead>
            <tbody>
              <tr><td>Honest</td><td>Full ingredient list on every label</td><td>Buy or fake reviews; say "no preservatives" when salt and vinegar are used to preserve it</td></tr>
              <tr><td>Small batch</td><td>About 40 jars per batch, with the batch date on the label</td><td>Buy ready-made pickle and relabel it</td></tr>
              <tr><td>Family recipe</td><td>Amma's recipes, with the same oil and spices every time</td><td>Change the recipe to cheaper oil without telling customers</td></tr>
              <tr><td>Care</td><td>Leak-proof packing; reply to every message the same day</td><td>Ignore complaints or blame the courier</td></tr>
            </tbody>
          </table>
          <p>Food labels and health claims have legal rules in India. Before you print a claim such as "no preservatives", check the FSSAI labelling rules or ask a food-compliance expert. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Do and don't lists, with AI's help</h3>
          <p>A do and don't list makes the personality usable. A friend who helps with Instagram, or a shop owner who prints a poster, can follow it. AI is good at turning your words into a clear list. It is also good at testing it: ask it to rewrite one message in the right style and in the wrong style.</p>
          <table class="lc-table">
            <thead><tr><th>Do</th><th>Don't</th></tr></thead>
            <tbody>
              <tr><td>Use short, simple English with a few Malayalam words</td><td>Use ALL CAPS, many "!!!" or fake "last day" offers</td></tr>
              <tr><td>Show real photos of the kitchen, jars and hands at work</td><td>Use stock photos of perfect mangoes</td></tr>
              <tr><td>Say "we" and "you"</td><td>Use fancy words such as "artisanal" or "curated"</td></tr>
              <tr><td>Name ingredients and dates clearly</td><td>Claim "best" or "No. 1" without proof</td></tr>
            </tbody>
          </table>
          <pre><code>Weak prompt:
        What personality should my brand have?

        Better prompt:
        My brand personality is warm, homely, honest, cheerful and proud
        of Kerala. Write a do and don't list (6 each) for my WhatsApp
        messages and Instagram posts. Then rewrite this message twice:
        once in my brand style, once in a style that breaks the rules.
        Message: "Fish pickle is back in stock. Order now."</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: does it fit the brand?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Lakshmi's brand is warm, homely, honest, cheerful and proud of Kerala. Sort each item.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fits" data-label="Fits the brand"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Does not fit"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fits" data-why="Simple, warm and honest. It names real facts.">"Made the way Amma makes it. Small batches, sesame oil, nothing hidden."</li>
              <li data-bucket="no" data-why="Loud capitals and fake urgency break the quiet, honest personality.">"MEGA SALE!!! BUY 2 GET 1!!! LAST DAY, HURRY!!!"</li>
              <li data-bucket="fits" data-why="A real, homely photo shows the family recipe. Ask her permission first.">A real photo of Lakshmi's mother stirring the mango pickle</li>
              <li data-bucket="no" data-why="An unproven claim breaks the honest value, and may break advertising rules.">"India's No. 1 pickle brand"</li>
              <li data-bucket="fits" data-why="It shows care and takes responsibility.">"Sorry the jar leaked. A new one goes out today, free."</li>
              <li data-bucket="no" data-why="Fancy words sound like a premium gourmet brand, not a home kitchen.">"Curated artisanal heritage condiments for the discerning palate"</li>
              <li data-bucket="no" data-why="A perfect stock photo is not real or homely, and customers can tell.">A stock photo of a shiny mango from a picture website</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a personality and values sheet for your brand. Change the [bracketed] parts to your own business.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a brand coach for small Indian businesses. Use simple English.

        My business: [a home-made Kerala pickle brand, made from my mother's recipes in small batches]
        My customers: [Malayali families living outside Kerala, and busy young professionals]
        How I want to feel to customers: [like family, trustworthy, a little fun, proud of Kerala]
        What I do not want: [loud offers, fancy words, fake claims]

        Please make:
        1. 5 personality words. For each: a one-line meaning and one example sentence in my brand's voice.
        2. 5 personality sliders (such as Traditional to Modern). Place my brand on each from 1 to 10 and give one reason.
        3. 4 values. For each: what I do (a real action I can prove) and what I never do.
        4. A do and don't list for my messages and photos (6 of each).
        5. One WhatsApp message saying "[Fish pickle is back in stock]", written in my brand's voice.

        Do not invent facts about my business. If a value has no clear proof, write [ADD PROOF].</pre>
            <ul class="ai-try-checks">
              <li>Every value has a real action you can prove, or is marked [ADD PROOF].</li>
              <li>The example sentences sound like you, not like a big company.</li>
              <li>The WhatsApp message has no fake urgency or unproven claims.</li>
              <li>The slider positions match the personality words (no clashes such as "quiet" and 9/10 loud).</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Personality is how you sound. Values are what you do. A value without a proof action is only a nice word, so write the action next to it.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Naming Your Business</h1>
        </div>
        <p class="lc-lead">A name is the part of your brand that people say, type and remember. A good name fits your story, is easy to say and stands out from competitors. You can protect it, and it has no bad meaning in your customers' languages. In this lesson, you will learn the main naming styles and use AI to make a long list. Then you will shortlist with a simple score and check sound and meaning in Malayalam, Hindi and English. You will follow Lakshmi as she names her pickle brand. Every name in this lesson is made up for teaching.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A naming funnel. 60 ideas from AI and Lakshmi become a longlist of 20, then a shortlist of 7, then 3 finalists after language checks and first searches, then 1 name: Kochu Bharani. Notes on the right explain the filter at each step.">
            <defs><marker id="br5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="30" y="20" width="460" height="42" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="260" y="46" font-weight="700">60 ideas</text>
              <rect x="70" y="74" width="380" height="42" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="260" y="100" font-weight="700">20 on the longlist</text>
              <rect x="110" y="128" width="300" height="42" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="260" y="154" font-weight="700">7 on the shortlist</text>
              <rect x="150" y="182" width="220" height="42" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="260" y="208" font-weight="700">3 finalists</text>
              <rect x="180" y="236" width="160" height="42" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="260" y="262" font-weight="700" fill="#6ee7b7">Kochu Bharani</text>
              <g text-anchor="start" font-size="12" fill="#9b99b8">
                <text x="510" y="46">AI lists + your own ideas</text>
                <text x="510" y="100">drop generic, hard to say</text>
                <text x="510" y="154">score: story, sound, stands out</text>
                <text x="510" y="208">language checks + first search</text>
                <text x="510" y="262">then full trademark checks</text>
              </g>
            </g>
          </svg>
          <figcaption>AI is most useful at the wide top of the funnel. People, languages and official searches do the narrowing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Naming styles</h3>
          <table class="lc-table">
            <thead><tr><th>Style</th><th>Made-up example</th><th>Good</th><th>Watch out</th></tr></thead>
            <tbody>
              <tr><td><strong>Descriptive</strong> (says what you sell)</td><td>Tasty Home Pickles</td><td>Clear at once</td><td>Hard to protect as a trademark; many similar names</td></tr>
              <tr><td><strong>Suggestive</strong> (hints at the story)</td><td>Kochu Bharani ("little pickle jar")</td><td>Memorable, tells a story</td><td>Needs a short explanation for some buyers</td></tr>
              <tr><td><strong>Invented</strong> (a new word)</td><td>Bharanika</td><td>Usually the easiest style to protect</td><td>Means nothing at first; you must build the meaning</td></tr>
              <tr><td><strong>Local-language word</strong></td><td>Kanthari Kitchen (kanthari: a small, very hot Kerala chilli)</td><td>Feels local and proud</td><td>Popular words are often already used</td></tr>
              <tr><td><strong>Founder or family name</strong></td><td>Lakshmi's Kitchen</td><td>Personal and warm</td><td>Common first names clash often; harder if you sell the business</td></tr>
            </tbody>
          </table>
          <p>In general, trademark offices find names that only describe the product harder to register. Invented and suggestive names are usually stronger. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>AI name lists and their limits</h3>
          <p>AI is great for volume and variety. Give it your brief, not just your product.</p>
          <pre><code>Weak prompt:
        Suggest names for a pickle business.

        Better prompt:
        Suggest 20 names for a home-made Kerala pickle brand.
        Customers: Malayali families outside Kerala. Personality: warm,
        homely, honest, proud of Kerala. Mix styles: suggestive, invented,
        Malayalam words and founder names. Avoid "Spice", "Taste" and
        "Amma". For each, give the meaning and how to say it.</code></pre>
          <p>Know the limits before you trust the list:</p>
          <ul class="lc-list">
            <li><strong>AI repeats common words.</strong> Expect many "Spice", "Masala" and "Heritage" names.</li>
            <li><strong>AI can get Indian-language meanings wrong.</strong> It may mistranslate a Malayalam word or invent a meaning. Treat every meaning as a guess until a native speaker confirms it.</li>
            <li><strong>AI cannot check if a name is free.</strong> If it says "available" or "unique", ignore that line.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Shortlisting with a simple score</h3>
          <p>Lakshmi cut 60 ideas to a longlist of 20, then to 7. She scored each from 1 to 5 on three questions. Does it fit the story? Is it easy to say outside Kerala? Does it stand out from other pickle brands?</p>
          <table class="lc-table">
            <thead><tr><th>Name (made up)</th><th>Meaning</th><th>Story</th><th>Easy to say</th><th>Stands out</th><th>Total /15</th></tr></thead>
            <tbody>
              <tr><td>Kochu Bharani</td><td>"Little pickle jar" (kochu: small; bharani: the old ceramic pickle jar)</td><td>5</td><td>4</td><td>4</td><td><strong>13</strong></td></tr>
              <tr><td>Bharanika</td><td>Invented, from "bharani"</td><td>3</td><td>4</td><td>5</td><td><strong>12</strong></td></tr>
              <tr><td>Amma's Jar</td><td>"Mother's jar"</td><td>4</td><td>5</td><td>1</td><td>10</td></tr>
              <tr><td>Kanthari Kitchen</td><td>Kanthari: a small, very hot chilli</td><td>3</td><td>4</td><td>2</td><td>9</td></tr>
              <tr><td>Pazhama</td><td>"The old ways, tradition"</td><td>4</td><td>2</td><td>3</td><td>9</td></tr>
              <tr><td>Ruchikoottu</td><td>"A mix of tastes"</td><td>3</td><td>2</td><td>2</td><td>7</td></tr>
              <tr><td>Uppilitta</td><td>"Put in salt, pickled"</td><td>3</td><td>1</td><td>2</td><td>6</td></tr>
            </tbody>
          </table>
          <p>"Amma" and "Ruchi" are very common in Indian food names, so they score low on standing out. A spreadsheet helps: put the scores in columns C, D and E, and use <code>=SUM(C2:E2)</code> for the total. The score only guides you. The decision is still yours.</p>
        </div>
        <div class="lc-card">
          <h3>Sound and meaning checks in Malayalam, Hindi and English</h3>
          <p>Lakshmi's customers speak Malayalam, English and often Hindi. Her buyers in Karnataka and Tamil Nadu may also hear the name in Kannada or Tamil. She tested the top names with real people. She said each name aloud on a phone call, because people often hear a name before they read it.</p>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>Malayalam</th><th>Hindi</th><th>English</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Kochu Bharani</td><td>Warm, homely. Bharani is also a birth star: a good sign.</td><td>No bad meaning found. Sounds a little like "bharna" (to fill).</td><td>Easy after hearing it once.</td><td>Pass</td></tr>
              <tr><td>Bharanika</td><td>Clearly linked to the jar</td><td>Sounds like a girl's name</td><td>Easy to say</td><td>Pass (runner-up)</td></tr>
              <tr><td>Kanthari Kitchen</td><td>Strong, spicy</td><td>Word is not known; no bad meaning found</td><td>Easy</td><td>Pass, but suggests "very hot"</td></tr>
              <tr><td>Pazhama</td><td>Nice meaning</td><td>Anjali (London) heard "pyjama"</td><td>Also heard as "pyjama"</td><td>Fail</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li>Ask at least two or three native speakers of each language. Include younger people, who know current slang.</li>
            <li>Check English spellings people might type: Kochu or Kochoo, Bharani or Bharni. You will need these for web and trademark searches.</li>
            <li>Do a first search on the IP India public trademark search (wordmark and phonetic). Pickles fall in Class 29 of the trademark classes; chutneys and spices are in Class 30. The trademark lesson covers this in detail.</li>
          </ul>
          <p><strong>Lakshmi's decision:</strong> "Kochu Bharani", with the line "Kerala Home Pickles" under it. It tells the small-batch story and sounds warm. It passed her language checks, and her first search showed no identical name. That is not a clearance. A first search can miss similar marks, so she will do the full checks and ask a trademark lawyer before printing labels. Her <strong>FSSAI</strong> registration or licence (the food safety permission every food business in India needs) is a separate thing. It does not protect her brand name.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Lakshmi's naming session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Lakshmi asks">She gives the AI her brand brief and asks for 60 names in five styles, with meanings.</li>
              <li data-kind="answer" data-label="AI replies">The list includes "Kerala Spice Co.", "Pazhama" and "Kochu Bharani". It adds: "All these names are available to register."</li>
              <li data-kind="warn" data-label="Mistake to catch">The AI cannot check trademark records, domains or shops. "Available" is a guess. She ignores it.</li>
              <li data-kind="check" data-label="Sound test">She reads 7 names aloud on calls to her mother, a Hindi-speaking friend and two customers in Karnataka.</li>
              <li data-kind="result" data-label="What she learns">Her friend Anjali in London hears "Pazhama" as "pyjama" and laughs. That name is out.</li>
              <li data-kind="tool" data-label="IP India search">She runs a wordmark and a phonetic search for "Kochu Bharani" and "Bharani" in Class 29.</li>
              <li data-kind="result" data-label="What the search shows">In this made-up example, several marks contain "Bharani", but none is the same as "Kochu Bharani".</li>
              <li data-kind="thought" data-label="Lakshmi thinks">The full name stands out more than "Bharani" alone. A first search is not a clearance.</li>
              <li data-kind="check" data-label="Decision">She picks "Kochu Bharani" as the working name and plans a lawyer's check before she prints labels.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a long list of names with meanings and risks, then a scored shortlist. Change the [bracketed] brief to your own business.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a naming expert for small Indian brands.

        Brand brief:
        - Business: [home-made Kerala pickles: mango, lime, garlic and fish; small batches; my mother's recipes]
        - Customers: [Malayali families living outside Kerala; busy young professionals]
        - Personality: [warm, homely, honest, cheerful, proud of Kerala]
        - Languages my customers speak: [Malayalam, English, Hindi]
        - Avoid: [the words "Spice", "Taste" and "Amma"; names longer than 3 words]

        Tasks:
        1. Give 20 names. Mix these styles: descriptive, suggestive, invented, local-language word, founder name. Label each style.
        2. For each name, give its meaning, a simple guide to saying it, and any bad or funny meaning in the languages above. If you are not sure, write NOT SURE.
        3. Pick your top 5. Score each from 1 to 5 on: fits the story, easy to say, stands out. Show a table.
        4. For the top 5, list what I must check next with real people and official searches.

        Never say a name is available, unique or free to register. You cannot check that.</pre>
            <ul class="ai-try-checks">
              <li>The names mix styles and are not all "Spice" or "Masala" names.</li>
              <li>Meanings in Malayalam or Hindi are treated as guesses; confirm them with native speakers.</li>
              <li>No name is called "available", "unique" or "free to register".</li>
              <li>The next checks include an IP India trademark search, a domain and social handles.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI make the list long, and let people and official searches make it short. Say every name aloud to speakers of your customers' languages before you fall in love with it.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Checking Names: Trademarks and Domains</h1>
        </div>
        <p class="lc-lead">You have a name you like. Before you print labels, you must check that nobody else already uses it for similar goods. You also need a website address and social media names that match. In this lesson, you will run a first trademark search on the IP India portal. You will choose the right classes and check domains and handles. You will follow Lakshmi as she checks "Kochu Bharani". This lesson is general information, not legal advice. A trademark attorney should run a full search before you file or print.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A name check workflow. Step 1 is a trademark search on IP India. Step 2 is choosing classes 29, 30 and 35. Step 3 is domains, step 4 is social handles and step 5 is a web search. Then step 6 is a lawyer's full search, step 7 is filing the application and step 8 is using the symbols: TM now, and the R symbol only after registration. A note says AI can plan the searches but cannot search the register.">
            <defs><marker id="br6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="134" height="58" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="77" y="44" font-weight="700">1. Trademark</text>
              <text x="77" y="63" font-size="11" fill="#9b99b8">IP India search</text>
              <rect x="161" y="20" width="134" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="228" y="44" font-weight="700">2. Classes</text>
              <text x="228" y="63" font-size="11" fill="#9b99b8">29, 30 and 35</text>
              <rect x="312" y="20" width="134" height="58" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="379" y="44" font-weight="700">3. Domains</text>
              <text x="379" y="63" font-size="11" fill="#9b99b8">.in and .com</text>
              <rect x="463" y="20" width="134" height="58" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="530" y="44" font-weight="700">4. Handles</text>
              <text x="530" y="63" font-size="11" fill="#9b99b8">Instagram, WhatsApp</text>
              <rect x="614" y="20" width="134" height="58" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="681" y="44" font-weight="700">5. Web search</text>
              <text x="681" y="63" font-size="11" fill="#9b99b8">name + "pickle"</text>
              <rect x="10" y="130" width="230" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="125" y="154" font-weight="700">6. Lawyer's full search</text>
              <text x="125" y="173" font-size="11" fill="#9b99b8">similar marks, all risks</text>
              <rect x="265" y="130" width="230" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="154" font-weight="700">7. File the application</text>
              <text x="380" y="173" font-size="11" fill="#9b99b8">IP India e-filing</text>
              <rect x="520" y="130" width="230" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="635" y="154" font-weight="700">8. Use the symbols</text>
              <text x="635" y="173" font-size="11" fill="#9b99b8">TM now; ® only after registration</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#br6a)">
                <line x1="146" y1="49" x2="157" y2="49"/>
                <line x1="297" y1="49" x2="308" y2="49"/>
                <line x1="448" y1="49" x2="459" y2="49"/>
                <line x1="599" y1="49" x2="610" y2="49"/>
                <path d="M681,80 V104 H125 V126"/>
                <line x1="242" y1="159" x2="261" y2="159"/>
                <line x1="497" y1="159" x2="516" y2="159"/>
              </g>
              <text x="380" y="118" font-size="11" fill="#9b99b8">next: with a trademark attorney</text>
              <rect x="10" y="215" width="740" height="60" rx="10" fill="#27274e" stroke="#f59e0b" stroke-dasharray="5 4"/>
              <text x="380" y="240" font-weight="700" fill="#fcd34d">AI can plan the searches and list spellings.</text>
              <text x="380" y="261" font-size="12" fill="#9b99b8">It cannot search the trademark register, and it cannot tell you a name is safe to use.</text>
            </g>
          </svg>
          <figcaption>Do the first five checks yourself. Then a trademark attorney runs the full search before you file and print.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a trademark is, and why classes matter</h3>
          <p>A <strong>trademark</strong> is a name, logo or sign that tells buyers the goods come from you. If another business already has a similar mark for similar goods, they may ask you to stop. Then you must change your labels, jars, website and social pages. That costs far more than a search.</p>
          <p>Trademarks are grouped into <strong>classes</strong>. India uses the international <strong>Nice Classification</strong>. It has 45 classes: 1 to 34 are goods and 35 to 45 are services. You search, and later file, in the classes that match what you sell.</p>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>What it covers (in short)</th><th>Why it matters for Kochu Bharani</th></tr></thead>
            <tbody>
              <tr><td><strong>29</strong></td><td>Pickles, preserved fruits and vegetables, fish-based foods</td><td>Her main class: mango, lime, garlic and fish pickle</td></tr>
              <tr><td><strong>30</strong></td><td>Chutneys and relishes, spices</td><td>Matters if she later sells chutney powders or masalas</td></tr>
              <tr><td><strong>35</strong></td><td>Retail and online store services (usually)</td><td>May matter when she opens her own online store</td></tr>
            </tbody>
          </table>
          <p>The same name can sometimes exist in very different classes, for example a "Bharani" textile shop. But similar names in the same or related classes are a real risk. A trademark attorney should confirm which classes she files in.</p>
        </div>
        <div class="lc-card">
          <h3>Running a first search on IP India</h3>
          <p>The IP India <strong>Public Search of Trade Marks</strong> page is free to use. At the time of writing, it asks you to log in with a one-time password (OTP) sent to your email or mobile first. Pages change, so follow the steps you see on the site. It offers three search types:</p>
          <ul class="lc-list">
            <li><strong>Wordmark:</strong> searches the words in a mark. You choose "Start With", "Contains" or "Match With". Use "Contains" for a wide search.</li>
            <li><strong>Phonetic:</strong> finds marks that sound similar, even with different spelling. "Kochu Bharani" and "Kochoo Bharni" sound alike.</li>
            <li><strong>Vienna Code:</strong> searches logos and pictures by their codes. You will use it once you have a logo.</li>
          </ul>
          <p>The page also has "Class Details", a list of "Well Known Marks" and a link to an AI-based search. Treat any result as a first look only. AI cannot search the register for you, but it can plan your search.</p>
          <pre><code>Weak prompt:
        Is Kochu Bharani available as a trademark?

        Better prompt:
        I plan to search the IP India public trademark search for my
        pickle brand name "Kochu Bharani". List (1) spellings people
        might type, (2) similar-sounding versions for a phonetic
        search, (3) single words to search with "Contains", and
        (4) the classes I should ask a trademark attorney about.
        Do not tell me whether the name is available.</code></pre>
          <p>The weak prompt asks the AI a question it cannot answer. It may still reply "Yes, it looks available", which is a guess. The better prompt gives the AI a job it can do well.</p>
          <p><strong>Lakshmi's first search (made-up results for teaching):</strong></p>
          <table class="lc-table">
            <thead><tr><th>Search</th><th>Class</th><th>What she found</th><th>Her note</th></tr></thead>
            <tbody>
              <tr><td>Wordmark, Contains: "Kochu Bharani"</td><td>29</td><td>No identical mark</td><td>First check only</td></tr>
              <tr><td>Wordmark, Contains: "Bharani"</td><td>29, 30</td><td>Several marks with "Bharani" in them</td><td>Show these to the attorney</td></tr>
              <tr><td>Phonetic: "Kochu Bharani"</td><td>29</td><td>One mark that sounds a little close</td><td>Ask if it is a risk</td></tr>
              <tr><td>Wordmark, Contains: "Bharanika"</td><td>29</td><td>No identical mark</td><td>Keep as the runner-up</td></tr>
            </tbody>
          </table>
          <p>She saves screenshots with the date of each search. She does not say the name is "free". A first search can miss marks that are pending, spelled differently or used without registration.</p>
        </div>
        <div class="lc-card">
          <h3>Domains, social handles and the other names you need</h3>
          <p>A <strong>domain</strong> is your website address, such as kochubharani.in. A <strong>handle</strong> is your user name on a social app, such as @kochubharani. Try to get the same name everywhere, so customers find you easily.</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Where</th><th>Lakshmi's made-up result</th><th>Next step</th></tr></thead>
            <tbody>
              <tr><td>.in domain</td><td>Any domain registrar</td><td>kochubharani.in could be bought</td><td>Buy it once the attorney's search is done</td></tr>
              <tr><td>.com domain</td><td>Any domain registrar</td><td>kochubharani.com is already taken</td><td>Use the .in address as the main one</td></tr>
              <tr><td>Instagram and Facebook</td><td>Search in each app</td><td>Nobody uses @kochubharani yet</td><td>Claim it on Instagram now; use the same name for the Facebook Page</td></tr>
              <tr><td>WhatsApp Business profile name</td><td>The WhatsApp Business app</td><td>She can set the name herself</td><td>Use "Kochu Bharani". If the app offers her a username, try to get kochubharani</td></tr>
              <tr><td>Google Business Profile</td><td>Google Maps and Search</td><td>No business with this name nearby</td><td>Set up later with the name "Kochu Bharani" only</td></tr>
              <tr><td>Web and marketplace search</td><td>Search "Kochu Bharani pickle"</td><td>A small restaurant in another state uses "Bharani"</td><td>Tell the attorney</td></tr>
            </tbody>
          </table>
          <p>Buying a domain or a handle does not give you trademark rights. Registering your business does not either. Her <strong>FSSAI</strong> registration is also separate. Every food business in India needs FSSAI registration or a licence. Small businesses usually get Basic Registration, and bigger ones need a State or Central Licence. The type depends on turnover and the kind of business, and the limits change, so she will check the current rules on the FoSCoS portal. The FSSAI number is for her food business. It does not protect her brand name.</p>
          <p><strong>The TM and ® symbols:</strong> you can use TM next to a name you claim as your mark, filed or not. Use ® only after the mark is registered. Using ® on a mark that is not registered is not allowed in India. This is not legal advice; ask a trademark attorney.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Lakshmi's name check session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Lakshmi asks AI">She asks for spellings, sound-alike versions and a search plan for "Kochu Bharani" in India.</li>
              <li data-kind="answer" data-label="AI replies">It lists Kochoo Bharani, Kochu Bharni and Kochubharani. It suggests Classes 29 and 30. It ends: "This name looks free to register."</li>
              <li data-kind="warn" data-label="Mistake to catch">The AI has not searched any register. She deletes the last line and keeps the search plan.</li>
              <li data-kind="tool" data-label="IP India search">She logs in with an OTP and runs Wordmark "Contains" and Phonetic searches in Class 29, then Class 30.</li>
              <li data-kind="result" data-label="What she sees">No identical mark. Several marks contain "Bharani". One sounds a little close. (Made-up results.)</li>
              <li data-kind="tool" data-label="Domains and apps">She checks .in and .com domains, Instagram, Facebook and a web search for the name with "pickle".</li>
              <li data-kind="thought" data-label="Lakshmi thinks">Kochubharani.com is taken, but kochubharani.in and @kochubharani are open. One name everywhere is easy for customers.</li>
              <li data-kind="check" data-label="Next step">She sends her screenshots to a trademark attorney for a full search before she orders labels.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a search plan and a checklist for your own name. Then do the searches yourself and take the results to a trademark attorney.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a small business owner in India prepare a first name check. You are not a lawyer and you cannot search any register.

        My brand name: [Kochu Bharani]
        What I sell: [home-made Kerala pickles: mango, lime, garlic, fish. Later maybe chutney powders and my own online store]
        Where I sell: [local shops near my home, WhatsApp orders, courier across India]

        Please give me:
        1. 8 to 10 spellings and sound-alike versions to use in the IP India Wordmark and Phonetic searches.
        2. Single words from the name to search with "Contains".
        3. The Nice classes I should discuss with a trademark attorney, with one line each on why.
        4. A checklist table for domains (.in, .com), Instagram, Facebook, WhatsApp Business and a web search. Columns: Check, Where, Result (leave blank), Backup idea.
        5. 5 questions to ask a trademark attorney.

        Never say the name is available, free or safe. End with: "Not legal advice. A trademark attorney should run a full search."</pre>
            <ul class="ai-try-checks">
              <li>The AI does not claim the name is available, free or safe to use.</li>
              <li>Pickles are placed in Class 29; chutneys and spices in Class 30; an online store usually in Class 35.</li>
              <li>The spelling list includes real sound-alikes, not only the exact name.</li>
              <li>The result column is blank, because only your own searches can fill it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A first search can only tell you "no problem found yet". It never proves a name is safe. Save your results, get a trademark attorney's full search, and only then print labels and use ® after registration.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Logos with AI and Design Tools</h1>
        </div>
        <p class="lc-lead">A logo is the small picture or word design that customers see on every jar, post and parcel. It must be simple, clear at a tiny size and yours to use. In this lesson, you will learn the main logo types and write a logo brief. You will use AI image tools and Canva to explore ideas. You will also learn why a designer usually redraws an AI idea before you print it, and what is still unclear about rights in AI images. You will follow Lakshmi as she plans the Kochu Bharani logo.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A logo workflow: 1 write a logo brief, 2 get rough AI ideas, 3 choose one or two directions, 4 a designer redraws them as clean vector files. Step 5 tests the logo before printing: a simple pickle jar mark shown at shop sign size, jar label size and WhatsApp icon size, in one colour, and on a cream label.">
            <defs><marker id="br7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="170" height="58" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="95" y="44" font-weight="700">1. Logo brief</text>
              <text x="95" y="63" font-size="11" fill="#9b99b8">story, words, uses</text>
              <rect x="200" y="20" width="170" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="285" y="44" font-weight="700">2. AI ideas</text>
              <text x="285" y="63" font-size="11" fill="#9b99b8">many rough sketches</text>
              <rect x="390" y="20" width="170" height="58" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="475" y="44" font-weight="700">3. You choose</text>
              <text x="475" y="63" font-size="11" fill="#9b99b8">1 or 2 directions</text>
              <rect x="580" y="20" width="170" height="58" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="665" y="44" font-weight="700">4. Designer redraws</text>
              <text x="665" y="63" font-size="11" fill="#9b99b8">clean vector files</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#br7a)">
                <line x1="182" y1="49" x2="196" y2="49"/>
                <line x1="372" y1="49" x2="386" y2="49"/>
                <line x1="562" y1="49" x2="576" y2="49"/>
                <line x1="665" y1="80" x2="665" y2="106"/>
              </g>
              <rect x="10" y="110" width="740" height="178" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="24" y="134" text-anchor="start" font-weight="700" fill="#fcd34d">5. Test before you print</text>
              <g transform="translate(95,200) scale(1.3)">
                <path d="M-10,-24 h20 v6 c14,4 24,14 24,28 c0,16 -12,24 -34,24 c-22,0 -34,-8 -34,-24 c0,-14 10,-24 24,-28 z" fill="#5C3317" stroke="#C8962E" stroke-width="2"/>
                <ellipse cx="0" cy="-26" rx="14" ry="5" fill="#2F6B3A"/>
                <path d="M-30,4 Q0,14 30,4" fill="none" stroke="#C8962E" stroke-width="3"/>
              </g>
              <g transform="translate(235,208) scale(0.8)">
                <path d="M-10,-24 h20 v6 c14,4 24,14 24,28 c0,16 -12,24 -34,24 c-22,0 -34,-8 -34,-24 c0,-14 10,-24 24,-28 z" fill="#5C3317" stroke="#C8962E" stroke-width="2"/>
                <ellipse cx="0" cy="-26" rx="14" ry="5" fill="#2F6B3A"/>
                <path d="M-30,4 Q0,14 30,4" fill="none" stroke="#C8962E" stroke-width="3"/>
              </g>
              <circle cx="355" cy="212" r="20" fill="#FBF4E4"/>
              <g transform="translate(355,213) scale(0.4)">
                <path d="M-10,-24 h20 v6 c14,4 24,14 24,28 c0,16 -12,24 -34,24 c-22,0 -34,-8 -34,-24 c0,-14 10,-24 24,-28 z" fill="#5C3317" stroke="#C8962E" stroke-width="2"/>
                <ellipse cx="0" cy="-26" rx="14" ry="5" fill="#2F6B3A"/>
                <path d="M-30,4 Q0,14 30,4" fill="none" stroke="#C8962E" stroke-width="3"/>
              </g>
              <g transform="translate(480,205) scale(0.9)">
                <path d="M-10,-24 h20 v6 c14,4 24,14 24,28 c0,16 -12,24 -34,24 c-22,0 -34,-8 -34,-24 c0,-14 10,-24 24,-28 z" fill="#e2e0f0"/>
                <ellipse cx="0" cy="-26" rx="14" ry="5" fill="#e2e0f0"/>
                <path d="M-30,4 Q0,14 30,4" fill="none" stroke="#1f1f44" stroke-width="3"/>
              </g>
              <rect x="575" y="150" width="110" height="100" rx="10" fill="#FBF4E4"/>
              <g transform="translate(630,203) scale(0.9)">
                <path d="M-10,-24 h20 v6 c14,4 24,14 24,28 c0,16 -12,24 -34,24 c-22,0 -34,-8 -34,-24 c0,-14 10,-24 24,-28 z" fill="#5C3317" stroke="#C8962E" stroke-width="2"/>
                <ellipse cx="0" cy="-26" rx="14" ry="5" fill="#2F6B3A"/>
                <path d="M-30,4 Q0,14 30,4" fill="none" stroke="#C8962E" stroke-width="3"/>
              </g>
              <g font-size="12" fill="#9b99b8">
                <text x="95" y="272">Shop sign</text>
                <text x="235" y="272">Jar label</text>
                <text x="355" y="272">WhatsApp icon</text>
                <text x="480" y="272">One colour</text>
                <text x="630" y="272">On a cream label</text>
              </g>
            </g>
          </svg>
          <figcaption>AI is useful for early ideas. A designer turns the best idea into clean files, and you test it at every real size before printing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Logo types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it is</th><th>Made-up example</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><strong>Wordmark</strong></td><td>The name in a special lettering</td><td>"Kochu Bharani" in a rounded font</td><td>New brands, because people learn the name</td></tr>
              <tr><td><strong>Lettermark</strong></td><td>Initials only</td><td>"KB"</td><td>Long names that are already well known</td></tr>
              <tr><td><strong>Symbol</strong> (icon)</td><td>A simple picture with no words</td><td>A small bharani jar shape</td><td>App icons, jar lids, stickers</td></tr>
              <tr><td><strong>Combination mark</strong></td><td>A symbol and the name together</td><td>Jar symbol + "Kochu Bharani" + "Kerala Home Pickles"</td><td>Most small businesses</td></tr>
              <tr><td><strong>Emblem</strong> (badge)</td><td>The name inside a shape, like a seal</td><td>A round badge with the name around a jar</td><td>Labels and stamps; hard to read when small</td></tr>
            </tbody>
          </table>
          <p><strong>Lakshmi's choice:</strong> a combination mark. The jar symbol stands alone on the WhatsApp profile picture and the jar lid. The full logo goes on the label, the website and the shop poster.</p>
        </div>
        <div class="lc-card">
          <h3>Write a logo brief first</h3>
          <p>A <strong>logo brief</strong> is a one-page note that says what the logo must do. It helps you, the AI and a designer aim at the same thing. Lakshmi's brief:</p>
          <pre><code>LOGO BRIEF: Kochu Bharani
        Name: Kochu Bharani ("little pickle jar")
        Line under it: Kerala Home Pickles
        Story: Amma's family recipes, small batches, sesame oil
        Personality: warm, homely, honest, cheerful, quietly proud of Kerala
        Idea to explore: the traditional ceramic pickle jar (bharani)
        Avoid: mango photos, bright red and yellow (like factory brands),
               thin serif letters on kraft paper (like gourmet brands),
               chillies and flames (not all our pickles are very hot)
        Must work: 2 cm on a jar lid, WhatsApp profile circle,
                   one colour on a courier box, A3 shop poster
        Files needed: SVG and PDF (vector), PNG with a clear background
        Also: a Malayalam version of the name, checked by a native speaker</code></pre>
          <p>Write the brief yourself. AI can help you tidy it or ask you questions you missed. It should not invent your story.</p>
        </div>
        <div class="lc-card">
          <h3>AI image tools and Canva</h3>
          <p>Many AI assistants can now make images from a text prompt. There are also separate AI image generators. Canva has AI tools that make images and suggest designs, as well as ready-made logo templates. Features change often, so check each tool's current help pages.</p>
          <pre><code>Weak prompt:
        Make a logo for my pickle brand Kochu Bharani.

        Better prompt:
        Draw 4 rough logo symbol ideas based on a traditional Kerala
        ceramic pickle jar (bharani). Flat, simple shapes, 2 colours
        only: deep brown and banana-leaf green on a cream background.
        No text, no shadows, no gradients, no mango or chilli.
        Each idea must still be clear at the size of a phone app icon.</code></pre>
          <p>The better prompt asks for <strong>no text</strong>. AI image tools often spell words wrongly, and Malayalam letters are often broken or made up. Add the name later in Canva or let the designer set it.</p>
          <table class="lc-table">
            <thead><tr><th>Common problem in AI logo images</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>Wrong or broken letters</td><td>Ask for symbols only; set the name in a real font</td></tr>
              <tr><td>Too much detail</td><td>Shrink it to 2 cm. If it turns into a blob, simplify it</td></tr>
              <tr><td>Looks like clip art or a known logo</td><td>Drop it; do an image search and a Vienna Code search later</td></tr>
              <tr><td>A pixel image (PNG or JPG) only</td><td>A designer redraws it as a <strong>vector</strong> file (made of lines and curves, so it stays sharp at any size)</td></tr>
              <tr><td>Different every time you ask</td><td>Treat it as a sketch, not the final design</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Why a designer redraws AI ideas, and who owns the logo</h3>
          <p>Lakshmi picks one jar idea. She hires Sneha, a local freelance graphic designer, to redraw it. Sneha draws clean vector shapes and sets the name in a licensed font. She adds the Malayalam name, and makes full-colour, one-colour and white versions. She also tests the logo at each real size.</p>
          <p><strong>Rights in AI images are not settled everywhere.</strong> In the US, the Copyright Office and the courts say copyright needs a human author. An image made only by AI, from a prompt, cannot be registered. In India, the law also expects a human author, but there is no clear rule yet for images made mostly by AI. Each AI tool also has its own terms of use. A logo drawn by a person, based on your idea, gives you a clearer claim.</p>
          <ul class="lc-list">
            <li>Ask your designer for a short written agreement that transfers the rights in the final logo to you.</li>
            <li>Canva's licence terms limit the use of its templates and stock elements in a trademark logo. Check the current terms before you build a logo from a template.</li>
            <li>Once the logo is final, a trademark attorney can search for similar logos using Vienna Codes.</li>
          </ul>
          <p>This is general information, not legal advice. Ask a lawyer about rights in your own logo.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from idea to final logo</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Lakshmi's logo steps in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write a one-page logo brief with the story, words to avoid and real sizes</li>
              <li data-order="2">Ask an AI image tool for rough symbol ideas with no text</li>
              <li data-order="3">Shrink the best ideas to 2 cm and pick one or two that stay clear</li>
              <li data-order="4">Ask a designer to redraw the chosen idea as vector files with a real font</li>
              <li data-order="5">Test the logo on a printed label, in one colour and as a WhatsApp profile picture</li>
              <li data-order="6">Get a written rights agreement and ask a trademark attorney about a logo search</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn your notes into a logo brief, three concepts and image prompts. Use the image prompts in an AI image tool, then take the best idea to a designer.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a brand designer who works with small Indian businesses.

        My business: [Kochu Bharani, "little pickle jar". Home-made Kerala pickles. Line under the name: Kerala Home Pickles]
        Personality: [warm, homely, honest, cheerful, quietly proud of Kerala]
        Competitors look like: [bright red and yellow factory labels; thin serif fonts on kraft paper]
        Where the logo must work: [2 cm jar lid, WhatsApp profile circle, one colour on a courier box, A3 poster]

        Please:
        1. Write a one-page logo brief with these parts: story, personality, must have, avoid, sizes, files needed.
        2. Suggest 3 different logo concepts in words. For each, give the logo type (wordmark, symbol, combination or emblem), the main shape, the lettering style and why it fits.
        3. For each concept, write a short prompt for an AI image tool. Ask for flat, simple shapes, at most 2 colours and NO text.
        4. List 5 tests I should do before I print.

        Do not copy or describe any real brand's logo.</pre>
            <ul class="ai-try-checks">
              <li>The concepts are different from each other and avoid the competitors' look.</li>
              <li>The image prompts ask for no text, few colours and a simple shape.</li>
              <li>The tests include a tiny size, one colour and a real print.</li>
              <li>Nothing copies or names a real brand's logo.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to explore ideas quickly, but do not print an AI image as your logo. A simple mark, redrawn by a person and tested at 2 cm, is easier to use, protect and own.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Colours, Fonts and Visual Style</h1>
        </div>
        <p class="lc-lead">Colours and fonts make your brand look the same on every jar, post and web page. They also decide whether people can read your label at all. In this lesson, you will choose a small colour palette and a font pair with help from AI. You will check colour contrast with the WCAG rules, so text is easy to read for everyone. You will then write a mini style guide. You will follow Lakshmi as she picks the look for Kochu Bharani.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Kochu Bharani's palette: Bharani Brown 5C3317, Banana Leaf Green 2F6B3A, Kasavu Cream FBF4E4 and Kasavu Gold C8962E. Below, four contrast tests. Brown text on cream is 9.9 to 1, a pass. White text on green is 6.4 to 1, a pass. Gold text on cream is 2.4 to 1, a fail. White text on mango yellow is 1.9 to 1, a fail.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="170" height="70" rx="10" fill="#5C3317"/>
              <rect x="200" y="20" width="170" height="70" rx="10" fill="#2F6B3A"/>
              <rect x="390" y="20" width="170" height="70" rx="10" fill="#FBF4E4"/>
              <rect x="580" y="20" width="170" height="70" rx="10" fill="#C8962E"/>
              <text x="95" y="110" font-weight="700">Bharani Brown</text>
              <text x="95" y="128" font-size="12" fill="#9b99b8">#5C3317 · text, logo</text>
              <text x="285" y="110" font-weight="700">Banana Leaf Green</text>
              <text x="285" y="128" font-size="12" fill="#9b99b8">#2F6B3A · buttons</text>
              <text x="475" y="110" font-weight="700">Kasavu Cream</text>
              <text x="475" y="128" font-size="12" fill="#9b99b8">#FBF4E4 · background</text>
              <text x="665" y="110" font-weight="700">Kasavu Gold</text>
              <text x="665" y="128" font-size="12" fill="#9b99b8">#C8962E · lines only</text>
              <rect x="10" y="150" width="740" height="158" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="24" y="174" text-anchor="start" font-weight="700" fill="#93c5fd">Contrast test for normal text (needs 4.5:1)</text>
              <rect x="24" y="190" width="170" height="44" rx="8" fill="#FBF4E4"/>
              <text x="109" y="218" fill="#5C3317" font-weight="700">Kerala Home Pickles</text>
              <text x="204" y="210" text-anchor="start" font-weight="700" fill="#6ee7b7">9.9:1 Pass</text>
              <text x="204" y="226" text-anchor="start" font-size="11" fill="#9b99b8">brown on cream</text>
              <rect x="394" y="190" width="170" height="44" rx="8" fill="#2F6B3A"/>
              <text x="479" y="218" fill="#FFFFFF" font-weight="700">Order on WhatsApp</text>
              <text x="574" y="210" text-anchor="start" font-weight="700" fill="#6ee7b7">6.4:1 Pass</text>
              <text x="574" y="226" text-anchor="start" font-size="11" fill="#9b99b8">white on green</text>
              <rect x="24" y="248" width="170" height="44" rx="8" fill="#FBF4E4"/>
              <text x="109" y="276" fill="#C8962E" font-weight="700">Kerala Home Pickles</text>
              <text x="204" y="268" text-anchor="start" font-weight="700" fill="#fca5a5">2.4:1 Fail</text>
              <text x="204" y="284" text-anchor="start" font-size="11" fill="#9b99b8">gold on cream</text>
              <rect x="394" y="248" width="170" height="44" rx="8" fill="#F2B33D"/>
              <text x="479" y="276" fill="#FFFFFF" font-weight="700">Order on WhatsApp</text>
              <text x="574" y="268" text-anchor="start" font-weight="700" fill="#fca5a5">1.9:1 Fail</text>
              <text x="574" y="284" text-anchor="start" font-size="11" fill="#9b99b8">white on mango yellow</text>
            </g>
          </svg>
          <figcaption>Four colours are enough for a small brand. The two failing pairs look pretty on screen, but many people cannot read them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Choose a small colour palette</h3>
          <p>A <strong>palette</strong> is the small set of colours your brand always uses. Three to five colours are enough. Colours carry meaning, but the meaning depends on culture. So think about what your own customers feel.</p>
          <p>Lakshmi's competitors show what to avoid. The factory brand uses loud red and yellow. The gourmet brand uses kraft paper and a lot of white. She wants warm and homely, with a quiet feel of Kerala.</p>
          <pre><code>Weak prompt:
        Give me nice colours for a pickle brand.

        Better prompt:
        Suggest 3 colour palettes for a home-made Kerala pickle brand.
        Personality: warm, homely, honest, quietly proud of Kerala.
        Avoid bright red with yellow, and plain kraft with white.
        Each palette: 4 colours with a name, hex code and a job
        (text, background, button, accent). Say which text and
        background pairs I should test for contrast.</code></pre>
          <p>A <strong>hex code</strong> is the six-character code for a colour, such as #5C3317. Design tools, websites and printers all use it. Lakshmi picked this palette from the AI's ideas and changed two colours herself:</p>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>Hex</th><th>Where the idea comes from</th><th>Job</th></tr></thead>
            <tbody>
              <tr><td>Bharani Brown</td><td>#5C3317</td><td>The glaze on an old pickle jar</td><td>Text and logo</td></tr>
              <tr><td>Banana Leaf Green</td><td>#2F6B3A</td><td>Banana leaves at a Kerala meal</td><td>Buttons, lid, highlights</td></tr>
              <tr><td>Kasavu Cream</td><td>#FBF4E4</td><td>The cream kasavu saree of Onam</td><td>Backgrounds, label base</td></tr>
              <tr><td>Kasavu Gold</td><td>#C8962E</td><td>The gold border on a kasavu saree</td><td>Thin lines and borders only</td></tr>
            </tbody>
          </table>
          <p>A simple rule of thumb: use the main colour for about 60% of a design, the second for about 30% and the accent for about 10%. For Lakshmi, that is cream, brown and then green or gold.</p>
        </div>
        <div class="lc-card">
          <h3>Contrast and accessibility</h3>
          <p><strong>Contrast ratio</strong> measures how different two colours are in brightness. It goes from 1:1 (no difference) to 21:1 (black on white). The <strong>WCAG</strong> (Web Content Accessibility Guidelines) give simple targets at level AA:</p>
          <ul class="lc-list">
            <li><strong>4.5:1</strong> for normal text, such as ingredients, prices and website text.</li>
            <li><strong>3:1</strong> for large text (about 24 px, or about 19 px bold) and for icons and button edges.</li>
          </ul>
          <p>Good contrast helps older customers, people with weak eyesight, and anyone reading a phone in sunlight. Divya often orders on her phone during her commute, so this matters.</p>
          <table class="lc-table">
            <thead><tr><th>Text colour</th><th>Background</th><th>Ratio</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Bharani Brown</td><td>Kasavu Cream</td><td>9.9:1</td><td>Pass for all text</td></tr>
              <tr><td>White</td><td>Banana Leaf Green</td><td>6.4:1</td><td>Pass for all text</td></tr>
              <tr><td>Banana Leaf Green</td><td>Kasavu Cream</td><td>5.8:1</td><td>Pass for all text</td></tr>
              <tr><td>Bharani Brown</td><td>Kasavu Gold</td><td>4.05:1</td><td>Large text only</td></tr>
              <tr><td>Kasavu Gold</td><td>Kasavu Cream</td><td>2.4:1</td><td>Fail: never use for text</td></tr>
            </tbody>
          </table>
          <p><strong>Check every ratio yourself.</strong> AI often guesses contrast numbers wrongly. Paste the hex codes into a free contrast checker, such as the WebAIM Contrast Checker. Also, do not use colour alone to show meaning. If each pickle has its own colour band, print the pickle name on it too.</p>
          <p>Screens and printed labels show colours differently. Print a test label before a big order. Your printer may ask for CMYK values (the colour codes printers use), so ask them to match your hex codes.</p>
        </div>
        <div class="lc-card">
          <h3>Fonts and a mini style guide</h3>
          <p>A <strong>font pair</strong> is one font for headings and one for body text. Two fonts are enough. Lakshmi needs fonts that also show Malayalam letters, because she wants "കൊച്ചു ഭരണി" (Kochu Bharani) on the label.</p>
          <table class="lc-table">
            <thead><tr><th>Use</th><th>Font</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Headings and the name</td><td>Baloo Chettan 2</td><td>Rounded and friendly; has Latin and Malayalam letters</td></tr>
              <tr><td>Body text, labels, website</td><td>Noto Sans, with Noto Sans Malayalam</td><td>Plain and easy to read at small sizes</td></tr>
            </tbody>
          </table>
          <p>Both are free Google Fonts under an open licence that allows business use. Always check the licence on the font's page before you use any font. If your design tool does not have a font, check if you can upload it, or pick a similar one. Ask a native speaker to check the Malayalam spelling in the final design.</p>
          <p>Lakshmi's mini style guide fits on one page:</p>
          <pre><code>KOCHU BHARANI: VISUAL STYLE (v1, draft)
        Colours: Brown #5C3317 (text, logo) | Green #2F6B3A (buttons)
                 Cream #FBF4E4 (background) | Gold #C8962E (lines only)
        Fonts:   Headings: Baloo Chettan 2, Bold
                 Body: Noto Sans / Noto Sans Malayalam, Regular
        Sizes:   Website body text at least 16 px
        Photos:  Real kitchen, real jars, daylight. No stock mango photos.
        Contrast: Every text pair at least 4.5:1 (checked with a contrast checker)
        Never:   Gold text on cream. White text on yellow. More than 2 fonts.</code></pre>
          <p>Food labels also have legal rules for some text. Check the FSSAI labelling rules or ask a food-compliance consultant before you print.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which colour pairs can Lakshmi use?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each text-on-background pair by its WCAG AA result.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pass" data-label="Pass for all text"></div>
              <div data-sorter-target="bucket" data-bucket="large" data-label="Large text only"></div>
              <div data-sorter-target="bucket" data-bucket="fail" data-label="Fail for text"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pass" data-why="9.9:1 is well above 4.5:1.">Brown #5C3317 on cream #FBF4E4 (9.9:1)</li>
              <li data-bucket="pass" data-why="6.4:1 is above 4.5:1, so it works on buttons with small text.">White on green #2F6B3A (6.4:1)</li>
              <li data-bucket="pass" data-why="5.8:1 is above 4.5:1.">Green #2F6B3A on cream #FBF4E4 (5.8:1)</li>
              <li data-bucket="large" data-why="4.05:1 is below 4.5:1 but above 3:1, so it is fine only for large text.">Brown #5C3317 on gold #C8962E (4.05:1)</li>
              <li data-bucket="fail" data-why="2.4:1 is below even the 3:1 target for large text.">Gold #C8962E on cream #FBF4E4 (2.4:1)</li>
              <li data-bucket="fail" data-why="1.9:1 is far too low. Many people cannot read it.">White on mango yellow #F2B33D (1.9:1)</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for palettes, font pairs and a contrast test list for your brand. Then check every ratio in a contrast checker.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a brand designer. Help me choose colours and fonts.

        Brand: [Kochu Bharani, home-made Kerala pickles]
        Personality: [warm, homely, honest, cheerful, quietly proud of Kerala]
        Avoid: [bright red with yellow (factory brands); kraft paper with thin serif fonts (gourmet brands)]
        Languages on my label and website: [English and Malayalam]
        Where it will be used: [jar labels, Instagram posts, a simple website, WhatsApp]

        Please give me:
        1. 3 palettes of 4 colours. For each colour: a name, hex code and job (text, background, button or accent).
        2. For each palette, the text and background pairs I should test. Give your estimate of each contrast ratio, marked "ESTIMATE, check in a contrast checker".
        3. 2 font pairs (heading + body) from free fonts that allow business use and support my languages. Say why each fits.
        4. A one-page mini style guide for the palette you like best.

        Use WCAG AA targets: 4.5:1 for normal text, 3:1 for large text.</pre>
            <ul class="ai-try-checks">
              <li>Check every contrast ratio yourself in a contrast checker; the AI's numbers are only estimates.</li>
              <li>The fonts really support your languages; test Malayalam or Hindi words in them.</li>
              <li>Check each font's licence page for business use.</li>
              <li>The palettes do not look like your competitors' colours.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A pretty palette is not enough. Every text colour must pass 4.5:1 on its background, and you must check the number yourself, not trust the AI's guess.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Brand Voice and Messaging</h1>
        </div>
        <p class="lc-lead">Your <strong>brand voice</strong> is how your business sounds in words: on labels, posts, WhatsApp replies and your website. A clear voice makes every message feel like it comes from the same person. In this lesson, you will write a voice chart, test taglines and choose three key messages. You will also build a short "voice card" that you paste into AI tools, so their drafts sound like you. You will follow Lakshmi as she writes the voice of Kochu Bharani.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A voice map with four scales: formal to friendly, serious to playful, plain to fancy, and quiet to loud. Kochu Bharani sits at friendly, a little playful, plain and fairly quiet. The made-up factory brand Kerala Gold sits in the middle and very loud. The made-up gourmet brand Heritage Jar sits formal, serious, fancy and quiet.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="30" text-anchor="middle" font-weight="700">Where each brand's voice sits</text>
              <g text-anchor="end" font-weight="700">
                <text x="160" y="80">Formal</text>
                <text x="160" y="135">Serious</text>
                <text x="160" y="190">Plain</text>
                <text x="160" y="245">Quiet</text>
              </g>
              <g text-anchor="start" font-weight="700">
                <text x="600" y="80">Friendly</text>
                <text x="600" y="135">Playful</text>
                <text x="600" y="190">Fancy</text>
                <text x="600" y="245">Loud</text>
              </g>
              <g stroke="#4b4a78" stroke-width="3" stroke-linecap="round">
                <line x1="175" y1="75" x2="585" y2="75"/>
                <line x1="175" y1="130" x2="585" y2="130"/>
                <line x1="175" y1="185" x2="585" y2="185"/>
                <line x1="175" y1="240" x2="585" y2="240"/>
              </g>
              <g fill="#60a5fa">
                <path d="M257,66 l9,9 l-9,9 l-9,-9 z"/>
                <path d="M236,121 l9,9 l-9,9 l-9,-9 z"/>
                <path d="M523,176 l9,9 l-9,9 l-9,-9 z"/>
                <path d="M257,231 l9,9 l-9,9 l-9,-9 z"/>
              </g>
              <g fill="#f87171">
                <rect x="353" y="68" width="14" height="14"/>
                <rect x="373" y="123" width="14" height="14"/>
                <rect x="353" y="178" width="14" height="14"/>
                <rect x="558" y="233" width="14" height="14"/>
              </g>
              <g fill="#10b981" stroke="#e2e0f0" stroke-width="2">
                <circle cx="503" cy="75" r="9"/>
                <circle cx="429" cy="130" r="9"/>
                <circle cx="237" cy="185" r="9"/>
                <circle cx="319" cy="240" r="9"/>
              </g>
              <g font-size="12" fill="#9b99b8" text-anchor="start">
                <circle cx="90" cy="286" r="7" fill="#10b981"/>
                <text x="104" y="290" fill="#e2e0f0">Kochu Bharani</text>
                <rect x="283" y="279" width="14" height="14" fill="#f87171"/>
                <text x="305" y="290">Kerala Gold (factory)</text>
                <path d="M500,277 l9,9 l-9,9 l-9,-9 z" fill="#60a5fa"/>
                <text x="516" y="290">Heritage Jar (gourmet)</text>
              </g>
            </g>
          </svg>
          <figcaption>Kochu Bharani sounds friendly, plain and fairly quiet. That space is different from both made-up competitors.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Voice and tone, and a voice chart</h3>
          <p><strong>Voice</strong> is your brand's personality in words. It stays the same everywhere. <strong>Tone</strong> is how the voice changes with the moment. An Onam greeting can be happy. A reply about a leaking jar must be calm and sorry. It is the same voice with a different tone.</p>
          <p>A <strong>voice chart</strong> turns your personality words into clear rules. Lakshmi built hers from four of her personality words:</p>
          <table class="lc-table">
            <thead><tr><th>We are</th><th>But not</th><th>Do</th><th>Don't</th></tr></thead>
            <tbody>
              <tr><td><strong>Warm</strong></td><td>Gushing</td><td>Talk to "you". Use names. Add a Malayalam word with its meaning.</td><td>"Dear valued customer". Rows of emojis.</td></tr>
              <tr><td><strong>Honest</strong></td><td>Preachy</td><td>Say what is in the jar, the batch date and when stock runs out.</td><td>"No. 1", "100% natural" or "no preservatives" unless proven.</td></tr>
              <tr><td><strong>Cheerful</strong></td><td>Silly</td><td>Short, bright sentences. Festival wishes.</td><td>Jokes when a customer has a problem.</td></tr>
              <tr><td><strong>Proud of Kerala (quietly)</strong></td><td>Boastful</td><td>Name the place, the sesame oil and Amma's recipe.</td><td>"Best in India". Putting down other pickles.</td></tr>
            </tbody>
          </table>
          <p>Here is the same voice in two tones. Both messages are for Divya, the made-up customer persona.</p>
          <pre><code>Happy tone (Onam post):
        Onam is almost here. A fresh batch of kadumanga achar
        (tender mango pickle) is ready: 40 jars, made this week.
        Order this week for delivery in Karnataka before Onam.

        Calm tone (reply about a leaking jar):
        Divya, I am so sorry your lime pickle leaked. That should not
        happen. I will send a new jar today at no cost, in a sealed
        pouch. Could you send one photo of the parcel? It helps me
        fix my packing. Lakshmi, Kochu Bharani</code></pre>
        </div>
        <div class="lc-card">
          <h3>Taglines and key messages</h3>
          <p>A <strong>tagline</strong> is a short line that sits with your name. AI can give you 30 ideas in a minute. Most will be generic, and some will make claims you cannot prove. Lakshmi tested the AI's ideas:</p>
          <table class="lc-table">
            <thead><tr><th>AI idea</th><th>Her check</th><th>Keep?</th></tr></thead>
            <tbody>
              <tr><td>"Made the way Amma makes it."</td><td>True, warm, simple; comes from her own words</td><td><strong>Yes: chosen</strong></td></tr>
              <tr><td>"Small jars. Big Kerala taste."</td><td>Fun, but "big" is a little loud</td><td>Maybe for posts</td></tr>
              <tr><td>"Kerala's No. 1 Home Pickle"</td><td>She cannot prove it</td><td>No</td></tr>
              <tr><td>"The Taste of Tradition"</td><td>Generic; sounds like the factory brand</td><td>No</td></tr>
              <tr><td>"Artisanal heritage pickles"</td><td>Sounds like the gourmet brand, not her</td><td>No</td></tr>
              <tr><td>"No preservatives, only love"</td><td>Not true: salt, oil and vinegar preserve pickles</td><td>No</td></tr>
            </tbody>
          </table>
          <p>Also search the web and the trademark register for your tagline. Another brand may already use it. <strong>Key messages</strong> are the three things you want every customer to remember. Each needs a proof.</p>
          <table class="lc-table">
            <thead><tr><th>Key message</th><th>Proof</th></tr></thead>
            <tbody>
              <tr><td>Amma's family recipe</td><td>Recipes not changed to save cost; Lakshmi's own story on the website</td></tr>
              <tr><td>Small batches in sesame oil</td><td>About 40 jars a batch; batch date and full ingredients on every label</td></tr>
              <tr><td>Safe to your door</td><td>Leak-proof packing; a reply to every WhatsApp message within the day</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Prompts that keep your voice</h3>
          <p>If you just ask AI to "write a post", you get the AI's own voice. It is often loud and full of words like "elevate" and "delight". Give it a <strong>voice card</strong> every time: a short block with your voice rules and a sample.</p>
          <pre><code>VOICE CARD: Kochu Bharani
        We sound: warm, honest, cheerful, quietly proud of Kerala.
        Simple English, short sentences. Talk to "you".
        Use a few Malayalam words, with the meaning in brackets.
        Tagline: Made the way Amma makes it.
        Key messages: Amma's family recipe; small batches in sesame oil;
        safe to your door.
        Never: ALL CAPS, "Best in India", "No. 1", fake urgency,
        "artisanal", "curated", "no preservatives".
        Sample: "Made the way Amma makes it. Small batches,
        sesame oil, nothing hidden."</code></pre>
          <p>Paste the voice card at the start of a chat, then give the task. Many AI assistants also let you save instructions or a project, so you do not paste it each time. Check your tool's help pages.</p>
          <p><strong>Still check every draft.</strong> AI may add a price, a delivery time or a health claim that is not true. It may also get a Malayalam word wrong. Read it aloud. Would Lakshmi say this to a customer on the phone?</p>
        </div>
        <div class="lc-card">
          <h3>Activity: on voice or off voice?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each draft message for Kochu Bharani.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="on" data-label="On voice"></div>
              <div data-sorter-target="bucket" data-bucket="off" data-label="Off voice"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="on" data-why="Warm, simple and honest. It explains the Malayalam word and gives real facts.">A fresh batch of naranga achar (lime pickle) is ready. 40 jars, made on Tuesday.</li>
              <li data-bucket="off" data-why="ALL CAPS, fake urgency and a claim she cannot prove.">HURRY!!! ONLY 2 HOURS LEFT!!! BEST PICKLE IN INDIA!!!</li>
              <li data-bucket="off" data-why="These are gourmet words. This sounds like the made-up premium competitor.">Our artisanal, curated heritage condiments elevate every meal.</li>
              <li data-bucket="on" data-why="Honest about stock, friendly and helpful.">Sorry, the garlic pickle is sold out. The next batch is ready on Friday. Shall I keep a jar for you?</li>
              <li data-bucket="off" data-why="Cold and formal. The voice is warm and talks to a person.">Dear valued customer, your grievance has been duly noted.</li>
              <li data-bucket="on" data-why="A real deadline is useful, not fake urgency.">Onam is close. Order this week for delivery in Karnataka before the festival.</li>
              <li data-bucket="off" data-why="Not true: salt, oil and vinegar are preservatives. Honest means no false claims.">No preservatives at all, only Amma's love!</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a voice chart, taglines and a voice card for your brand. Then test the voice card on one real message.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a brand copywriter for small Indian businesses. Write in simple English.

        Brand: [Kochu Bharani, home-made Kerala pickles]
        Customers: [Malayali families living outside Kerala, like Divya, 38, in Karnataka]
        Personality words: [warm, honest, cheerful, quietly proud of Kerala]
        Proof points: [Amma's family recipes; batches of about 40 jars in sesame oil; batch date on every label; leak-proof packing]
        Words to avoid: [artisanal, curated, best, No. 1, no preservatives]

        Please:
        1. Make a voice chart table: We are / But not / Do / Don't, one row per personality word.
        2. Suggest 10 taglines under 7 words. Mark any that make a claim I must prove.
        3. Write 3 key messages, each with the proof it needs.
        4. Write a voice card of under 90 words that I can paste into any AI chat.
        5. Using the voice card, write: (a) a happy festival post, (b) a calm reply to a customer whose jar arrived late.

        Do not invent reviews, awards, prices or delivery times. Mark missing facts as [ADD FACT].</pre>
            <ul class="ai-try-checks">
              <li>No tagline or message claims "best", "No. 1" or "no preservatives".</li>
              <li>The two sample messages sound like the same person in two different tones.</li>
              <li>Prices and delivery times are left as [ADD FACT], not invented.</li>
              <li>Any Malayalam word is correct and has its meaning; ask a native speaker if unsure.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A voice chart turns personality words into rules anyone can follow. Paste your voice card into every AI chat, then read each draft aloud and check every fact before you send it.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">A Simple Brand Guide</h1>
        </div>
        <p class="lc-lead">A <strong>brand guide</strong> is a short document with the rules for how your brand looks and sounds. It keeps every label, post and web page the same, even when other people make them. A small business does not need a thick book. One to five pages are enough. In this lesson, you will learn what goes on each page. You will use AI to turn your notes into a first draft and build the guide in Canva or Google Docs. You will follow Lakshmi as she makes the Kochu Bharani guide.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Five pages of a simple brand guide. Page 1 brand story, with purpose and customer. Page 2 logo use, with clear space and sizes. Page 3 colour and type, with four colour swatches and fonts. Page 4 voice, with the voice chart and tagline. Page 5 examples, with a label and a post. Below: who uses it and how to keep it up to date.">
            <defs><marker id="br10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="136" height="190" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="78" y="44" font-weight="700">1. Brand story</text>
              <g fill="#4b4a78">
                <rect x="28" y="64" width="100" height="8" rx="3"/>
                <rect x="28" y="80" width="84" height="8" rx="3"/>
                <rect x="28" y="96" width="100" height="8" rx="3"/>
                <rect x="28" y="112" width="70" height="8" rx="3"/>
                <rect x="28" y="136" width="100" height="8" rx="3"/>
                <rect x="28" y="152" width="90" height="8" rx="3"/>
              </g>
              <text x="78" y="194" font-size="11" fill="#9b99b8">purpose, customer</text>
              <rect x="161" y="20" width="136" height="190" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="229" y="44" font-weight="700">2. Logo use</text>
              <rect x="189" y="66" width="80" height="96" fill="none" stroke="#9b99b8" stroke-dasharray="4 3"/>
              <g transform="translate(229,114) scale(0.7)">
                <path d="M-10,-24 h20 v6 c14,4 24,14 24,28 c0,16 -12,24 -34,24 c-22,0 -34,-8 -34,-24 c0,-14 10,-24 24,-28 z" fill="#5C3317" stroke="#C8962E" stroke-width="2"/>
                <ellipse cx="0" cy="-26" rx="14" ry="5" fill="#2F6B3A"/>
                <path d="M-30,4 Q0,14 30,4" fill="none" stroke="#C8962E" stroke-width="3"/>
              </g>
              <text x="229" y="194" font-size="11" fill="#9b99b8">clear space, sizes</text>
              <rect x="312" y="20" width="136" height="190" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="44" font-weight="700">3. Colour + type</text>
              <rect x="326" y="62" width="24" height="24" rx="4" fill="#5C3317" stroke="#9b99b8"/>
              <rect x="356" y="62" width="24" height="24" rx="4" fill="#2F6B3A"/>
              <rect x="386" y="62" width="24" height="24" rx="4" fill="#FBF4E4"/>
              <rect x="416" y="62" width="24" height="24" rx="4" fill="#C8962E"/>
              <text x="380" y="140" font-size="36" font-weight="700">Aa</text>
              <text x="380" y="164" font-size="11" fill="#9b99b8">2 fonts only</text>
              <text x="380" y="194" font-size="11" fill="#9b99b8">hex codes, fonts</text>
              <rect x="463" y="20" width="136" height="190" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="531" y="44" font-weight="700">4. Voice</text>
              <rect x="479" y="62" width="96" height="34" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="527" y="84" font-size="11" fill="#6ee7b7">We say this</text>
              <rect x="487" y="106" width="96" height="34" rx="10" fill="#1f1f44" stroke="#f87171"/>
              <text x="535" y="128" font-size="11" fill="#fca5a5">Not this</text>
              <text x="531" y="164" font-size="11" fill="#9b99b8">tagline + chart</text>
              <text x="531" y="194" font-size="11" fill="#9b99b8">voice card</text>
              <rect x="614" y="20" width="136" height="190" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="682" y="44" font-weight="700">5. Examples</text>
              <rect x="630" y="62" width="50" height="70" rx="6" fill="#FBF4E4"/>
              <rect x="638" y="74" width="34" height="6" rx="2" fill="#5C3317"/>
              <rect x="638" y="86" width="26" height="4" rx="2" fill="#2F6B3A"/>
              <rect x="638" y="116" width="34" height="4" rx="2" fill="#C8962E"/>
              <rect x="688" y="62" width="50" height="50" rx="6" fill="#2F6B3A"/>
              <rect x="696" y="80" width="34" height="6" rx="2" fill="#FBF4E4"/>
              <text x="682" y="164" font-size="11" fill="#9b99b8">label, post, reply</text>
              <text x="682" y="194" font-size="11" fill="#9b99b8">do and don't</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#br10a)">
                <line x1="380" y1="212" x2="380" y2="232"/>
              </g>
              <rect x="10" y="236" width="740" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="261" font-weight="700">Used by: Lakshmi, Sneha the designer, the label printer, anyone who posts</text>
              <text x="380" y="283" font-size="12" fill="#9b99b8">One owner, a version number and a date. Shared as a PDF and a link.</text>
            </g>
          </svg>
          <figcaption>Five short pages cover what most small brands need. Page 5, with real examples, is often the most useful.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in a simple brand guide</h3>
          <p>Write the guide for the people who will use it. For Lakshmi, that is herself, Sneha the designer, the label printer, and a family member who helps with Instagram. Later, it will also guide her website and Google Business Profile.</p>
          <table class="lc-table">
            <thead><tr><th>Page</th><th>What goes in</th><th>Kochu Bharani example</th></tr></thead>
            <tbody>
              <tr><td>1. Brand story</td><td>Purpose, customer, positioning, values</td><td>"To bring the taste of a Kerala home kitchen to Malayalis wherever they live."</td></tr>
              <tr><td>2. Logo use</td><td>Versions, clear space, smallest size, don'ts</td><td>Full logo, jar symbol alone, one-colour brown, white on green</td></tr>
              <tr><td>3. Colour and type</td><td>Hex and RGB codes, jobs, contrast rules, fonts</td><td>Brown #5C3317, Green #2F6B3A, Cream #FBF4E4, Gold #C8962E</td></tr>
              <tr><td>4. Voice</td><td>Voice chart, tagline, key messages, words to avoid</td><td>"Made the way Amma makes it."</td></tr>
              <tr><td>5. Examples</td><td>Real label, post and reply; one "wrong" example</td><td>A lime pickle label and an Onam post</td></tr>
            </tbody>
          </table>
          <p>If you only have time for one page, make a "brand on a page": name, logo, four colours, two fonts, tagline and five voice rules.</p>
        </div>
        <div class="lc-card">
          <h3>Logo, colour and photo rules</h3>
          <p>The rules must be exact. "Use our green" is not enough. People need the code.</p>
          <table class="lc-table">
            <thead><tr><th>Colour</th><th>Hex</th><th>RGB</th><th>Job</th></tr></thead>
            <tbody>
              <tr><td>Bharani Brown</td><td>#5C3317</td><td>92, 51, 23</td><td>Text, logo</td></tr>
              <tr><td>Banana Leaf Green</td><td>#2F6B3A</td><td>47, 107, 58</td><td>Buttons, lid, highlights</td></tr>
              <tr><td>Kasavu Cream</td><td>#FBF4E4</td><td>251, 244, 228</td><td>Backgrounds</td></tr>
              <tr><td>Kasavu Gold</td><td>#C8962E</td><td>200, 150, 46</td><td>Thin lines only, never text on cream</td></tr>
            </tbody>
          </table>
          <p>For print, ask your printer for the matching CMYK values and add them after a test print. Lakshmi's logo rules:</p>
          <ul class="lc-list">
            <li><strong>Clear space:</strong> keep empty space around the logo at least as tall as the "K" in Kochu.</li>
            <li><strong>Smallest size:</strong> full logo at least 25 mm wide in print and 120 px on screen. Below that, use the jar symbol alone.</li>
            <li><strong>Versions:</strong> full colour on cream; all brown; all white on green.</li>
            <li><strong>Never:</strong> stretch it, change its colours, add shadows, put it on a busy photo, or retype the name in another font.</li>
            <li><strong>Photos:</strong> real kitchen and real jars, in daylight. No stock photos of mangoes. No heavy filters.</li>
          </ul>
          <p>These sizes are Lakshmi's own choices after Sneha's tests. Your sizes depend on your logo, so test them.</p>
        </div>
        <div class="lc-card">
          <h3>Build the guide with AI and Canva</h3>
          <p>You already have the pieces: your positioning, voice card, colours, fonts and logo files. AI is good at putting them into a clear structure. It must not add new rules or change your codes.</p>
          <pre><code>Weak prompt:
        Make a brand guide for my pickle brand.

        Better prompt:
        Turn my notes below into a 5-page brand guide draft.
        Pages: 1 Brand story, 2 Logo use, 3 Colour and type,
        4 Voice, 5 Examples. Use only facts from my notes.
        Copy every hex code and font name exactly. Where a rule
        is missing, write [MISSING: ...] instead of inventing it.
        Simple English, short bullet points.
        [paste your notes here]</code></pre>
          <p>Then build the pages in Canva or Google Docs. Canva has a Brand Kit feature on some plans for saving logos, colours and fonts. Check Canva's current plans and help pages. Export a PDF, and keep one editable master file.</p>
          <p><strong>Before you share it, check:</strong></p>
          <ul class="lc-list">
            <li>Every hex code, font name and size matches your source files, character by character.</li>
            <li>The AI did not add words like "premium" or "artisanal" that are not your voice.</li>
            <li>Every text colour pair still passes 4.5:1 in a contrast checker.</li>
            <li>The Malayalam text is checked by a native speaker.</li>
            <li>The guide has a version number, a date and one owner who updates it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Lakshmi builds her brand guide</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Lakshmi asks AI">She pastes her notes, voice card, colours and logo rules. She asks for a 5-page guide draft that uses only her facts.</li>
              <li data-kind="answer" data-label="AI replies">It drafts five clear pages. Page 1 calls Kochu Bharani "a premium artisanal pickle house".</li>
              <li data-kind="warn" data-label="Mistake to catch">"Premium artisanal" is the gourmet competitor's voice, not hers. She puts back her own positioning statement.</li>
              <li data-kind="check" data-label="Code check">She compares each hex code with Sneha's files. The AI wrote gold as #C9962E. She fixes it to #C8962E.</li>
              <li data-kind="tool" data-label="Canva">She lays out the five pages with her colours and fonts, and adds real photos of her kitchen and jars.</li>
              <li data-kind="result" data-label="Test by a user">Her helper makes one Instagram post using only the guide. It shows one gap: no rule about photo filters.</li>
              <li data-kind="check" data-label="Version 1.1">She adds the photo rule, saves it as version 1.1 with the date, and shares the PDF with Sneha and the printer.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own brand notes and ask AI for a guide draft. Then check each code and rule against your source files.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a brand designer. Turn my notes into a simple 5-page brand guide draft for a small business. Use simple English and short bullet points.

        My notes:
        - Brand: [Kochu Bharani, "little pickle jar". Line: Kerala Home Pickles]
        - Purpose: [To bring the taste of a Kerala home kitchen to Malayalis wherever they live]
        - Customer: [Malayali families outside Kerala, like Divya, 38, in Karnataka]
        - Colours: [Brown #5C3317 text; Green #2F6B3A buttons; Cream #FBF4E4 background; Gold #C8962E lines only]
        - Fonts: [Baloo Chettan 2 for headings; Noto Sans and Noto Sans Malayalam for body]
        - Voice: [warm, honest, cheerful, quietly proud of Kerala. Tagline: Made the way Amma makes it]
        - Logo: [jar symbol + name; versions: full colour, all brown, white on green]

        Pages: 1 Brand story, 2 Logo use, 3 Colour and type, 4 Voice, 5 Examples (one good and one bad example each for a label, a post and a WhatsApp reply).

        Rules: use only my facts. Copy codes and names exactly. If a rule is missing, write [MISSING: ...]. End with a list of the [MISSING] items and a line for version number, date and owner.</pre>
            <ul class="ai-try-checks">
              <li>Every hex code and font name matches your notes exactly.</li>
              <li>The missing rules are marked [MISSING], not invented.</li>
              <li>The good and bad examples really follow and break your voice rules.</li>
              <li>No new claims, such as "premium" or "No. 1", were added.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A brand guide is useful only if people use it. Keep it short and exact, with real examples, and test it by asking someone to make a post using only the guide.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Building a Simple Website</h1>
        </div>
        <p class="lc-lead">A website is the one place online that you fully control. Social media apps change their rules, but your site stays yours. A small business does not need a big site. It needs a few clear pages that answer customers' questions and make ordering easy. In this lesson, you will choose a website builder and plan the pages. You will use AI to write the copy (the words on each page). Then you will check every fact and claim before you publish. You will follow Lakshmi as she plans the site for <strong>Kochu Bharani</strong>, her Kerala home pickle brand.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A site map for Kochu Bharani. The home page links to five pages: Shop, Our story, Ingredients, Shipping and Contact. A footer on every page shows the FSSAI registration number, phone and WhatsApp, email, city and the policy pages.">
            <defs><marker id="br11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="280" y="14" width="200" height="56" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="38" font-weight="700" fill="#6ee7b7">Home</text>
              <text x="380" y="58" font-size="11" fill="#9b99b8">promise + best sellers</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#br11a)">
                <line x1="320" y1="72" x2="80" y2="112"/>
                <line x1="350" y1="72" x2="226" y2="112"/>
                <line x1="380" y1="72" x2="374" y2="112"/>
                <line x1="410" y1="72" x2="522" y2="112"/>
                <line x1="440" y1="72" x2="668" y2="112"/>
              </g>
              <rect x="10" y="116" width="136" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="78" y="141" font-weight="700">Shop</text>
              <text x="78" y="161" font-size="11" fill="#9b99b8">4 pickles + prices</text>
              <rect x="158" y="116" width="136" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="226" y="141" font-weight="700">Our story</text>
              <text x="226" y="161" font-size="11" fill="#9b99b8">Amma's kitchen</text>
              <rect x="306" y="116" width="136" height="60" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="374" y="141" font-weight="700">Ingredients</text>
              <text x="374" y="161" font-size="11" fill="#9b99b8">what is in the jar</text>
              <rect x="454" y="116" width="136" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="522" y="141" font-weight="700">Shipping</text>
              <text x="522" y="161" font-size="11" fill="#9b99b8">packing, refunds</text>
              <rect x="602" y="116" width="136" height="60" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="670" y="141" font-weight="700">Contact</text>
              <text x="670" y="161" font-size="11" fill="#9b99b8">WhatsApp, email</text>
              <rect x="10" y="206" width="728" height="80" rx="12" fill="#1f1f44" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="374" y="234" font-weight="700" fill="#fcd34d">Footer on every page</text>
              <text x="374" y="258" font-size="12">FSSAI Reg. No.  ·  phone and WhatsApp  ·  email  ·  Kerala, India</text>
              <text x="374" y="276" font-size="11" fill="#9b99b8">links: privacy notice, shipping and returns, terms</text>
            </g>
          </svg>
          <figcaption>Six pages are enough for Lakshmi's first site. The footer repeats the facts that customers and rules expect to see on every page.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Choose a website builder</h3>
          <p>A <strong>website builder</strong> is a tool that lets you make a site by choosing a template and typing into boxes. You do not need to write code. There are three common kinds.</p>
          <table class="lc-table">
            <thead><tr><th>Kind of builder</th><th>Examples</th><th>Good for</th><th>Watch out</th></tr></thead>
            <tbody>
              <tr><td>Online store builder</td><td>Shopify, or the store features in other builders</td><td>Product pages, cart, payments, order emails</td><td>Monthly fees and payment fees; check the current pricing page</td></tr>
              <tr><td>General site builder</td><td>Wix, Squarespace, Zoho Sites</td><td>A good-looking site fast; many have store add-ons</td><td>Moving to another builder later can be hard</td></tr>
              <tr><td>WordPress</td><td>WordPress with a store plugin such as WooCommerce</td><td>Full control and many plugins</td><td>You must look after hosting, updates and security</td></tr>
              <tr><td>Free simple site</td><td>Google Sites</td><td>A basic information page at no cost</td><td>No built-in shop; send orders to WhatsApp instead</td></tr>
            </tbody>
          </table>
          <p>Before you pick, check five things. Does it take UPI and cards through an Indian payment provider? Does it look good on a phone? Can you use your own <strong>domain</strong> (your web address, such as a made-up <code>kochubharani.in</code>)? Can it work out courier charges by area? What will it cost each month? Plans change often, so read each tool's current help and pricing pages.</p>
          <p>Lakshmi starts small. Most of her first buyers will come from WhatsApp and Instagram. She picks a store builder with a free trial. She plans to decide after she builds the pages and places a test order herself.</p>
        </div>
        <div class="lc-card">
          <h3>The pages a small business needs</h3>
          <table class="lc-table">
            <thead><tr><th>Page</th><th>What it must answer</th><th>Kochu Bharani (made-up details)</th></tr></thead>
            <tbody>
              <tr><td><strong>Home</strong></td><td>Who are you, what do you sell, why pick you, how do I order?</td><td>Headline, one real photo of the jars, the four pickles and an "Order" button</td></tr>
              <tr><td><strong>Shop / product pages</strong></td><td>Price, size, ingredients, spice level, how to store it</td><td>Tender mango pickle (kadumanga achar), 250 g, ₹220; full ingredient list</td></tr>
              <tr><td><strong>Our story</strong></td><td>Who is behind it, and is it real?</td><td>Lakshmi, her mother's recipes, the home kitchen in Kerala, real photos</td></tr>
              <tr><td><strong>Ingredients</strong></td><td>What is in each jar, and how does it keep?</td><td>Full lists for all four pickles; "kept the traditional way, with salt, sesame oil and vinegar"</td></tr>
              <tr><td><strong>Shipping and returns</strong></td><td>Where do you ship, how long, what if a jar breaks?</td><td>Courier across India, how jars are packed, what happens if a jar leaks</td></tr>
              <tr><td><strong>Contact</strong></td><td>How do I reach a real person?</td><td>WhatsApp number, email, city, reply time ("within the day")</td></tr>
              <tr><td><strong>Policy pages</strong></td><td>Privacy, terms, refunds</td><td>A privacy notice that says what customer data is kept and why</td></tr>
            </tbody>
          </table>
          <p>Payment providers usually ask for contact, privacy, terms, and refund pages before they switch on your payments. India's consumer protection rules for online selling also expect clear seller details, such as your legal name, address and contact details. They also expect a way to raise complaints. The DPDP Act 2023 (India's data protection law) covers the customer data you collect. Builders and AI can give you page templates. Ask a lawyer to check them. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Writing the copy with AI</h3>
          <p>AI writes a good first draft when you give it your real facts, your voice chart and the job of each page. Without them, it writes the same words as every other food site.</p>
          <pre><code>Weak prompt:
        Write a home page for my pickle website.

        Better prompt:
        Write home page copy for Kochu Bharani, Kerala Home Pickles.
        Facts: my mother's recipes, small batches of about 40 jars,
        sesame oil, batch date on every label, leak-proof packing,
        courier across India. Customers: Malayali families outside Kerala.
        Voice: warm, homely, honest, simple English, a few Malayalam words
        with meanings. Give: a headline (under 8 words), 2 short lines
        under it, a button label, and 3 reasons to buy.
        Use only my facts. Mark anything that needs proof with [CHECK].</code></pre>
          <p>A draft Lakshmi liked, after her edits:</p>
          <pre><code>Made the way Amma makes it.
        Kerala home pickles in small batches, cooked in sesame oil.
        Packed so they reach you safely, wherever you live.
        [ Shop the pickles ]</code></pre>
          <p>Read every line aloud. Would Lakshmi say it to a customer on the phone? If not, rewrite it. Also check the page on your own phone. Most customers will see it there first.</p>
        </div>
        <div class="lc-card">
          <h3>Check every fact and claim</h3>
          <p>AI often adds claims that sound nice but are not true for your business. On a food website, some claims can also break advertising or labelling rules. Check each line against what you can prove.</p>
          <table class="lc-table">
            <thead><tr><th>AI wrote</th><th>The problem</th><th>Honest version</th></tr></thead>
            <tbody>
              <tr><td>"No preservatives"</td><td>Salt, oil and vinegar preserve the pickle. The claim misleads.</td><td>"Kept the traditional way, with salt, sesame oil and vinegar."</td></tr>
              <tr><td>"Loved by 10,000 happy families"</td><td>An invented number</td><td>Leave it out, or show real customer messages shared with permission</td></tr>
              <tr><td>"FSSAI approved pickles"</td><td>FSSAI registration is for the food business. It is not a quality stamp.</td><td>"FSSAI Reg. No. [your number]", shown in the footer</td></tr>
              <tr><td>"Good for digestion"</td><td>A health claim. Health claims on food have strict rules.</td><td>Remove it</td></tr>
              <tr><td>"Stays fresh for a year"</td><td>Only true if you have tested it</td><td>"Best before: see the date on the label"</td></tr>
            </tbody>
          </table>
          <p>Show your FSSAI registration or licence number and your contact details clearly. Food businesses selling online are expected to display them. Check the current FSSAI rules for online food sellers, or ask a food-compliance consultant.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: can this line go on the website?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Lakshmi's AI draft has these lines. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep: true and provable"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix the wording"></div>
              <div data-sorter-target="bucket" data-bucket="remove" data-label="Remove it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="It is a fact she can show: the label carries the batch date.">"Every jar shows the date its batch was made."</li>
              <li data-bucket="fix" data-why="Salt, oil and vinegar are preservatives. Say how the pickle keeps instead.">"100% natural, no preservatives."</li>
              <li data-bucket="remove" data-why="The number is invented. Never publish made-up customer numbers.">"Trusted by over 10,000 Malayali families."</li>
              <li data-bucket="keep" data-why="True, simple and it names real ingredients.">"Cooked in gingelly (sesame) oil, from my mother's recipes."</li>
              <li data-bucket="fix" data-why="Registration is not approval of the product. Show the number itself instead.">"FSSAI approved quality."</li>
              <li data-bucket="remove" data-why="A health claim she cannot prove, and food health claims have strict rules.">"Our garlic pickle boosts immunity."</li>
              <li data-bucket="fix" data-why="No courier is 100% safe. Say how you pack and what you do if a jar leaks.">"Guaranteed never to leak."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft the main pages of your website with a claims check at the end. Change the [bracketed] facts to your own business.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a website copywriter for small Indian food businesses. Write in simple English.

        Brand: [Kochu Bharani, Kerala Home Pickles]
        Facts I can prove: [my mother's recipes; small batches of about 40 jars; cooked in sesame oil; batch date on every label; packed in sealed glass jars with bubble wrap; courier across India; I reply on WhatsApp within the day]
        Products: [tender mango, lime and garlic pickle, 250 g, Rs 190 to 240; fish pickle, 200 g, Rs 360]
        Customers: [Malayali families living outside Kerala]
        Voice: [warm, homely, honest; a few Malayalam words with meanings; no ALL CAPS, no "best", no fake urgency]

        Write copy for: Home, one product page (the first product), Our story, Shipping and returns, Contact, and a footer.
        - Home: a headline under 8 words, 2 lines, a button label, 3 reasons to buy.
        - The footer must have spaces for: FSSAI Reg. No. [number], phone/WhatsApp, email, city, and policy links.

        Rules: use only my facts. Do not invent reviews, numbers, awards or health benefits. Do not write "no preservatives". Put [CHECK] after any line that needs proof.
        At the end, list every claim you made and what proof I need for each.</pre>
            <ul class="ai-try-checks">
              <li>Every claim is one of your real facts, or is marked [CHECK].</li>
              <li>There are no invented numbers, reviews, awards or health benefits.</li>
              <li>The footer has spaces for the FSSAI number and contact details.</li>
              <li>The Shipping page says what happens if a jar leaks or breaks.</li>
              <li>The words sound like your voice chart, not like a big factory brand.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A small website wins by answering questions clearly and honestly. Let AI draft the words, but only publish what you can prove. Put your FSSAI number and contact details where every visitor can see them.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Google Business Profile and Local Presence</h1>
        </div>
        <p class="lc-lead">When someone in your area searches "home made pickles near me", Google shows local businesses on Search and Maps. A free <strong>Google Business Profile</strong> is how your business appears there. It shows your name, category, hours, photos, reviews and a way to contact you. In this lesson, you will check if your business can have a profile. You will learn how a home business hides its address, and how to fill each part well. You will also keep your name, address and phone the same everywhere, and reply to reviews in your brand voice. Google changes this product often, so check its current help pages as you work.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: a mock-up of Kochu Bharani's Google Business Profile with the name, category, service area, reviews, Call, Website and Share buttons, four real photos, hours, a hidden address and a recent update. Right: the same name, phone and website link on the website, Google profile, Instagram and WhatsApp Business, each marked as matching.">
            <defs><marker id="br12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="10" y="10" width="380" height="280" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="30" y="42" font-size="17" font-weight="700">Kochu Bharani</text>
              <text x="30" y="62" font-size="11" fill="#9b99b8">Primary category  ·  serves her town and nearby</text>
              <text x="30" y="84" font-size="12" fill="#fcd34d">★★★★★ <tspan fill="#9b99b8">reviews from real buyers</tspan></text>
              <g font-size="12" text-anchor="middle">
                <rect x="30" y="98" width="100" height="28" rx="14" fill="#27274e" stroke="#3b82f6"/>
                <text x="80" y="117">Call</text>
                <rect x="140" y="98" width="100" height="28" rx="14" fill="#27274e" stroke="#3b82f6"/>
                <text x="190" y="117">Website</text>
                <rect x="250" y="98" width="100" height="28" rx="14" fill="#27274e" stroke="#3b82f6"/>
                <text x="300" y="117">Share</text>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <rect x="30" y="140" width="72" height="56" rx="6" fill="#27274e" stroke="#10b981"/>
                <text x="66" y="173">jars</text>
                <rect x="110" y="140" width="72" height="56" rx="6" fill="#27274e" stroke="#10b981"/>
                <text x="146" y="173">kitchen</text>
                <rect x="190" y="140" width="72" height="56" rx="6" fill="#27274e" stroke="#10b981"/>
                <text x="226" y="173">label</text>
                <rect x="270" y="140" width="72" height="56" rx="6" fill="#27274e" stroke="#10b981"/>
                <text x="306" y="173">logo</text>
              </g>
              <g font-size="12">
                <text x="30" y="226">Hours: Mon to Sat, 9 am to 7 pm</text>
                <text x="30" y="248" fill="#6ee7b7">Address hidden: service-area business</text>
                <text x="30" y="270">Update: "Mango batch ready this week"</text>
              </g>
              <rect x="410" y="10" width="340" height="280" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="580" y="36" text-anchor="middle" font-weight="700" fill="#6ee7b7">Same details everywhere</text>
              <text x="580" y="56" text-anchor="middle" font-size="11" fill="#9b99b8">Kochu Bharani  ·  one phone  ·  kochubharani.in</text>
              <g font-size="13">
                <rect x="430" y="72" width="300" height="42" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="446" y="98">Website</text>
                <text x="714" y="98" text-anchor="end" fill="#6ee7b7">✓ matches</text>
                <rect x="430" y="124" width="300" height="42" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="446" y="150">Google profile</text>
                <text x="714" y="150" text-anchor="end" fill="#6ee7b7">✓ matches</text>
                <rect x="430" y="176" width="300" height="42" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="446" y="202">Instagram</text>
                <text x="714" y="202" text-anchor="end" fill="#6ee7b7">✓ matches</text>
                <rect x="430" y="228" width="300" height="42" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="446" y="254">WhatsApp Business</text>
                <text x="714" y="254" text-anchor="end" fill="#6ee7b7">✓ matches</text>
              </g>
            </g>
          </svg>
          <figcaption>A made-up mock-up. Real photos, a hidden home address and fresh updates make the profile useful. The same details on every platform help customers and Google trust it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Can your business have a profile?</h3>
          <p>Google Business Profile is for businesses that meet customers in person. There are two kinds.</p>
          <ul class="lc-list">
            <li><strong>Storefront:</strong> customers come to your shop or office during your hours. Your address is shown.</li>
            <li><strong>Service-area business:</strong> you visit or deliver to customers, and they do not come to you. Google's guidelines say to remove (hide) your address. They say this clearly for businesses run from a home address.</li>
          </ul>
          <p>A business that only sells online, with no in-person contact, is not eligible. Lakshmi delivers jars herself in her town, so she sets up a service-area business. Her home address stays hidden. Her <strong>service area</strong> (the places she really serves in person) lists parts of her town and the next town. Google's guidelines say a service area should be within about two hours' drive of the business. Other states are not in her service area. Courier orders do not count.</p>
          <p>The shops that stock her jars have their own profiles. She must not make a profile at a shop's address. To <strong>verify</strong> the profile (prove to Google that it is really her business), Google may offer a phone code, an email, a video call or a postcard. It depends on the business. In a video, you may need to show where you work and proof that you run the business. Check the current help pages for the steps.</p>
        </div>
        <div class="lc-card">
          <h3>Fill each part of the profile</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What to do</th><th>Kochu Bharani (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Business name</strong></td><td>Your real-world name only. No taglines, city names or keywords.</td><td>"Kochu Bharani". Not "Kochu Bharani Best Pickles in Kerala".</td></tr>
              <tr><td><strong>Category</strong></td><td>Pick the closest primary category from Google's list. Add a few more only if they are true.</td><td>Type "pickle" and "food" and read the options Google suggests</td></tr>
              <tr><td><strong>Description</strong></td><td>Short and factual. Google sets a character limit. No links or offers.</td><td>Who she is, the four pickles, small batches, sesame oil, delivery in her town</td></tr>
              <tr><td><strong>Hours and contact</strong></td><td>Hours you really answer. The same phone and website as everywhere else.</td><td>Mon to Sat, 9 am to 7 pm; her WhatsApp Business number</td></tr>
              <tr><td><strong>Photos</strong></td><td>Real, clear, recent photos. Logo and cover photo too.</td><td>Jars in daylight, the label close up, Amma cutting mangoes (with her permission)</td></tr>
              <tr><td><strong>Products</strong></td><td>Items with photos and prices, if the feature is available to you</td><td>The four pickles, sizes and prices</td></tr>
              <tr><td><strong>Updates (posts)</strong></td><td>Short news with a photo. Post regularly so the profile looks alive.</td><td>"Mango batch ready this week." "Last day for local Onam delivery: [date]."</td></tr>
            </tbody>
          </table>
          <p>Google's rules say the name must match the name on your label, website and signs. "Kerala Home Pickles" is a descriptor, so it goes in the description, not the name. Profiles that stuff keywords into the name can be suspended.</p>
        </div>
        <div class="lc-card">
          <h3>The same name, address and phone everywhere</h3>
          <p><strong>NAP</strong> means name, address and phone. Keep them exactly the same on your website, Google profile, social media, WhatsApp Business app and any business directories. Small differences confuse customers. They can also make Google less sure the listings belong to one business.</p>
          <table class="lc-table">
            <thead><tr><th>Where</th><th>Before (mixed)</th><th>After (the same)</th></tr></thead>
            <tbody>
              <tr><td>Website footer</td><td>Kochu Bharani Pickles, +91 9XXXX XXXXX</td><td>Kochu Bharani, +91 9XXXX XXXXX</td></tr>
              <tr><td>Instagram</td><td>KochuBharani_official, old landline number</td><td>Kochu Bharani, +91 9XXXX XXXXX</td></tr>
              <tr><td>Directory listing</td><td>Kochu Barani (spelling mistake), full home address</td><td>Kochu Bharani, "Kerala, India" only</td></tr>
            </tbody>
          </table>
          <p>Make a <strong>master facts sheet</strong>: one document with the exact name, phone, email, website, hours and FSSAI number. Copy from it every time. Do not type the details from memory. A home business can hide its address on Google and on social media. But some places may need a full address by law, such as the food label, your online store and your invoices. Ask your CA or lawyer which address to show where. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Getting and replying to reviews</h3>
          <p>Reviews help new customers trust you. Get them honestly. Google gives you a link to share for asking customers for reviews. Send it to real buyers after they receive their order.</p>
          <ul class="lc-list">
            <li><strong>Never buy reviews,</strong> write your own, or ask family to pose as customers.</li>
            <li><strong>Never offer a discount or gift for a review.</strong> Google's policy bans rewards for reviews, even for honest ones. Fake reviews can also break India's consumer protection rules.</li>
            <li>Google removes fake reviews. It can also restrict a profile or show a warning on it.</li>
          </ul>
          <p>Reply to every review, good or bad, within a few days. Replies are public, so write for future customers too. AI can draft replies in your voice. You check the facts and remove any personal details before you post.</p>
          <pre><code>Review (made up): "Taste is exactly like my ammamma's. But oil had
        leaked onto the box. Please pack better." ★★★

        Draft reply:
        Thank you, and we are so glad it tasted like home. We are sorry
        about the oil on the box. Please message us on WhatsApp with your
        order date, and we will make it right. We have also added an extra
        seal to every jar from this week.</code></pre>
          <p>Only write "we have added an extra seal" if it is true. Never argue in public, and never share the customer's order details in the reply.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Lakshmi sets up her profile</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Lakshmi asks">"Write a Google Business Profile name and description for my Kerala pickle business in Kerala. I want to rank high."</li>
              <li data-kind="answer" data-label="AI replies">Name: "Kochu Bharani Best Homemade Pickles Kerala". Description: "100% natural, no preservatives, Kerala's No. 1 pickles!"</li>
              <li data-kind="warn" data-label="Mistake to catch">Keywords in the name break Google's rules. "No preservatives" and "No. 1" are claims she cannot prove.</li>
              <li data-kind="check" data-label="Lakshmi fixes it">Name: "Kochu Bharani" only. She rewrites the description with her real facts and her voice chart.</li>
              <li data-kind="tool" data-label="Google Business Profile">She adds the business and says she delivers to customers. She hides her home address and adds areas near her home that she really visits.</li>
              <li data-kind="result" data-label="What it shows">Google offers her ways to verify the business. She follows the steps shown for her account.</li>
              <li data-kind="check" data-label="Final check">She copies the phone, website and hours from her master facts sheet. She adds real photos and one update.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft your profile text, a month of updates and honest replies to three reviews. Change the [bracketed] details to your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a local marketing helper for small Indian businesses. Use simple English.

        Business: [Kochu Bharani, home-made Kerala pickles: mango, lime, garlic, fish. My mother's recipes, small batches of about 40 jars, sesame oil. I deliver in parts of my town and courier across India.]
        Voice: [warm, homely, honest, a few Malayalam words with meanings]

        Please write:
        1. A Google Business Profile description (under 700 characters). Facts only. No links, offers, "best" or "No. 1".
        2. Four short updates for next month, one per week. Each under 60 words, with a photo idea.
        3. Replies to these three reviews (under 60 words each):
           a) "Lovely lime pickle, just like home!" 5 stars
           b) "Taste is great but delivery took 6 days." 3 stars
           c) "Jar was broken when it arrived. Very disappointed." 1 star
        4. A polite WhatsApp message asking a real customer for a review, with no reward offered.

        Rules: never promise a refund or a fix that I have not agreed. Write [MY POLICY] where my policy is needed. Do not invent facts.</pre>
            <ul class="ai-try-checks">
              <li>The description has no keywords stuffed in, no links and no "best" claims.</li>
              <li>The replies thank the customer, stay calm and never argue in public.</li>
              <li>No reply promises a refund or change you have not agreed; [MY POLICY] marks the gaps.</li>
              <li>The review request offers no discount, gift or reward.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A Google profile builds trust when it is real: your true name, real photos, honest reviews and calm replies. A home business can hide its address and still be found. Keep the same name and phone on every platform.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Social Media Profiles and Templates</h1>
        </div>
        <p class="lc-lead">For many small brands, a social media profile is the first thing a customer sees. It is often seen before the website, and before the jar. In a few seconds, the profile must say who you are, what you sell and how to order. In this lesson, you will set up matching profiles and write bios with AI. You will plan highlights and build a small set of post templates. With these, every post looks and sounds like your brand, even on a busy day. You will follow Lakshmi as she sets up <strong>Kochu Bharani</strong> on Instagram and the WhatsApp Business app.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: a mock-up of the Kochu Bharani Instagram profile with the logo as the profile photo, the handle, a four-line bio, four highlights named Order, Pickles, Kitchen and Shipping, and a grid of posts. Right: five post templates: batch ready, meet the pickle, from the kitchen, customer note and order dates.">
            <defs><marker id="br13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="10" y="10" width="330" height="280" rx="16" fill="#1f1f44" stroke="#ec4899"/>
              <circle cx="60" cy="56" r="28" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="60" y="60" font-size="11" fill="#9b99b8" text-anchor="middle">logo</text>
              <text x="104" y="50" font-weight="700">Kochu Bharani</text>
              <text x="104" y="70" font-size="11" fill="#9b99b8">@kochubharani</text>
              <g font-size="11">
                <text x="30" y="102">Kerala home pickles from Amma's recipes</text>
                <text x="30" y="117">Small batches, cooked in sesame oil</text>
                <text x="30" y="132">Made in Kerala, shipped across India</text>
                <text x="30" y="147" fill="#93c5fd">Order on WhatsApp below</text>
              </g>
              <g fill="#27274e" stroke="#f59e0b">
                <circle cx="58" cy="176" r="15"/>
                <circle cx="130" cy="176" r="15"/>
                <circle cx="202" cy="176" r="15"/>
                <circle cx="274" cy="176" r="15"/>
              </g>
              <g font-size="10" fill="#9b99b8" text-anchor="middle">
                <text x="58" y="206">Order</text>
                <text x="130" y="206">Pickles</text>
                <text x="202" y="206">Kitchen</text>
                <text x="274" y="206">Shipping</text>
              </g>
              <g fill="#27274e" stroke="#4b4a78">
                <rect x="30" y="220" width="90" height="56" rx="4"/>
                <rect x="126" y="220" width="90" height="56" rx="4"/>
                <rect x="222" y="220" width="90" height="56" rx="4"/>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="75" y="252">batch</text>
                <text x="171" y="252">pickle</text>
                <text x="267" y="252">kitchen</text>
              </g>
              <rect x="360" y="10" width="390" height="280" rx="12" fill="#27274e" stroke="#3b82f6"/>
              <text x="555" y="36" text-anchor="middle" font-weight="700" fill="#93c5fd">Five post templates</text>
              <g>
                <rect x="376" y="50" width="358" height="40" rx="8" fill="#1f1f44"/>
                <rect x="376" y="50" width="8" height="40" rx="3" fill="#10b981"/>
                <text x="396" y="75" font-weight="700">1. Batch ready</text>
                <text x="560" y="75" font-size="11" fill="#9b99b8">date + jars left + link</text>
                <rect x="376" y="96" width="358" height="40" rx="8" fill="#1f1f44"/>
                <rect x="376" y="96" width="8" height="40" rx="3" fill="#f59e0b"/>
                <text x="396" y="121" font-weight="700">2. Meet the pickle</text>
                <text x="560" y="121" font-size="11" fill="#9b99b8">ingredients, spice level</text>
                <rect x="376" y="142" width="358" height="40" rx="8" fill="#1f1f44"/>
                <rect x="376" y="142" width="8" height="40" rx="3" fill="#8b5cf6"/>
                <text x="396" y="167" font-weight="700">3. From the kitchen</text>
                <text x="560" y="167" font-size="11" fill="#9b99b8">real process photo</text>
                <rect x="376" y="188" width="358" height="40" rx="8" fill="#1f1f44"/>
                <rect x="376" y="188" width="8" height="40" rx="3" fill="#ec4899"/>
                <text x="396" y="213" font-weight="700">4. Customer note</text>
                <text x="560" y="213" font-size="11" fill="#9b99b8">real, with permission</text>
                <rect x="376" y="234" width="358" height="40" rx="8" fill="#1f1f44"/>
                <rect x="376" y="234" width="8" height="40" rx="3" fill="#22d3ee"/>
                <text x="396" y="259" font-weight="700">5. Order dates</text>
                <text x="560" y="259" font-size="11" fill="#9b99b8">festival courier dates</text>
              </g>
            </g>
          </svg>
          <figcaption>The profile answers "who, what and how to order" at a glance. Five templates cover most weeks, so each new post only needs a new photo and a few new words.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Pick your platforms and match your profiles</h3>
          <p>You do not need to be on every app. Go where your customers already are. Divya, Lakshmi's typical customer, is a 38-year-old IT project manager in Karnataka. She uses Instagram and WhatsApp every day. Her parents in Kerala use Facebook. So Lakshmi starts with Instagram and the WhatsApp Business app. She links a simple Facebook Page to Instagram, but she does not post extra content there yet.</p>
          <table class="lc-table">
            <thead><tr><th>Profile part</th><th>Keep it consistent</th><th>Kochu Bharani (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Handle</strong> (your @name)</td><td>The same on every app, if you can get it</td><td>@kochubharani</td></tr>
              <tr><td><strong>Display name</strong></td><td>Brand name plus a short descriptor</td><td>Kochu Bharani | Kerala Home Pickles</td></tr>
              <tr><td><strong>Profile photo</strong></td><td>The logo version that is still clear in a tiny circle</td><td>The simple logo mark on the main brand colour</td></tr>
              <tr><td><strong>Link</strong></td><td>One link to where people order</td><td>The website, or a WhatsApp chat link</td></tr>
              <tr><td><strong>Contact details</strong></td><td>Copied from your master facts sheet</td><td>The same number as the website and Google profile</td></tr>
            </tbody>
          </table>
          <p>In the WhatsApp Business app, fill in the business profile (name, category, description, hours, website). Add a <strong>catalogue</strong> (a list of products with photos and prices). Set a <strong>greeting message</strong> for first-time chats, and save <strong>quick replies</strong> for common questions such as shipping charges. Write these in your brand voice too. Features change, so check the app's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Write bios and plan highlights with AI</h3>
          <p>A <strong>bio</strong> is the short text under your name. Instagram allows only a short bio (around 150 characters at the time of writing). Every word must work. A good bio says what you sell, why you are different and how to order.</p>
          <pre><code>Weak prompt:
        Write an Instagram bio for a pickle brand.

        Better prompt:
        Write 5 Instagram bio options for Kochu Bharani, Kerala Home Pickles.
        Each must fit in 150 characters, including spaces. Show the count.
        Include: Amma's recipes, small batches, sesame oil, we ship across
        India, and how to order (WhatsApp link below).
        Voice: warm, homely, honest, simple English. No "best", no ALL CAPS.
        Use at most 2 emojis.</code></pre>
          <p>Lakshmi's final bio (after she counted the characters herself, because AI often counts wrong):</p>
          <pre><code>Kerala home pickles from Amma's recipes
        Small batches, cooked in sesame oil
        Made in Kerala, shipped across India
        Order on WhatsApp below</code></pre>
          <p><strong>Highlights</strong> are saved groups of Instagram stories that stay on your profile. Use them as a mini website: Order (how to order and pay), Pickles (each product), Kitchen (how it is made), Shipping (packing and delivery times). Give each highlight a simple cover in the brand colours.</p>
        </div>
        <div class="lc-card">
          <h3>Build a small set of post templates</h3>
          <p>A <strong>post template</strong> is a saved design with fixed parts (logo place, colours, fonts, layout) and blank parts (photo, words). Design tools such as Canva let you save templates. Some plans also let you save brand colours and fonts. Check the tool's current plans. Lakshmi makes five templates:</p>
          <table class="lc-table">
            <thead><tr><th>Template</th><th>When she uses it</th><th>Fixed parts</th><th>What changes</th></tr></thead>
            <tbody>
              <tr><td>Batch ready</td><td>Each new batch</td><td>Label-style banner, logo at the bottom</td><td>Pickle name, batch date, jars left</td></tr>
              <tr><td>Meet the pickle</td><td>Once per product, then repeat</td><td>Ingredient list layout, spice-level scale</td><td>Photo, ingredients, "try it with..." idea</td></tr>
              <tr><td>From the kitchen</td><td>Weekly</td><td>Simple frame, one line of text</td><td>A real photo of the process</td></tr>
              <tr><td>Customer note</td><td>When a customer agrees</td><td>Quote layout</td><td>Their words, first name or city only</td></tr>
              <tr><td>Order dates</td><td>Before Onam, Vishu and Diwali</td><td>Calendar layout</td><td>Last date to order for courier delivery</td></tr>
            </tbody>
          </table>
          <p>AI can write the caption for each template. Give it the voice chart and a caption pattern: <em>one warm opening line, the facts, how to order</em>. For example:</p>
          <pre><code>Kadumanga (tender mango) season is here.
        This week's batch: 40 jars, made on [date], cooked in sesame oil.
        Order on WhatsApp (link in bio). We ship across India.</code></pre>
          <p>Check before you post. Use real photos, not stock photos. Only share a customer message if the customer said yes, and hide their phone number and surname. "Order dates" must be real courier cut-off dates, not fake urgency.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: set up the profiles in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Lakshmi's set-up steps in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Check that the handle @kochubharani is free on each app she plans to use</li>
              <li data-order="2">Copy the name, phone and link from her master facts sheet</li>
              <li data-order="3">Upload the logo version that is clear in a small circle</li>
              <li data-order="4">Draft 5 bios with AI, pick one and count the characters herself</li>
              <li data-order="5">Make highlight covers: Order, Pickles, Kitchen, Shipping</li>
              <li data-order="6">Build five post templates in the brand colours and fonts</li>
              <li data-order="7">Plan the first nine posts and check each caption against the voice chart</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write your bios, highlight plan and caption templates in one go. Change the [bracketed] details to your own brand.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a social media helper for small Indian brands. Use simple English.

        Brand: [Kochu Bharani, Kerala Home Pickles]
        What we sell: [mango, lime, garlic and fish pickles from my mother's recipes; small batches; sesame oil; ship across India]
        Customers: [Malayali families outside Kerala, like a 38-year-old IT manager in Karnataka]
        Voice: [warm, homely, honest, cheerful; a few Malayalam words with meanings; no ALL CAPS, no "best", no fake urgency]
        How to order: [WhatsApp]

        Please give me:
        1. 3 Instagram bio options, each under 150 characters. Show the character count.
        2. A WhatsApp Business profile description and a greeting message for new chats.
        3. 4 Instagram highlight names (one word each) and what goes in each.
        4. Caption templates for 5 post types: batch ready, meet the pickle, from the kitchen, customer note, order dates. Use [blanks] for the parts that change.
        5. A plan for my first 9 posts in a table: post number, template, photo idea, caption idea.

        Do not invent reviews, numbers or awards. Customer notes must be marked "use only with the customer's permission".</pre>
            <ul class="ai-try-checks">
              <li>Count the bio characters yourself; AI counts are often wrong.</li>
              <li>The captions follow your voice: simple words, no ALL CAPS offers or "best" claims.</li>
              <li>The customer note template says to get permission first.</li>
              <li>Every photo idea is something you can shoot for real, not a stock photo.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Set up your profiles once, carefully, with the same name, photo and details everywhere. Then let templates do the daily work. A few good templates keep every post on brand, even when you are busy.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Keeping the Brand Consistent</h1>
        </div>
        <p class="lc-lead">A brand is built by repeating the same look, voice and promise many times. It is also easy to lose. A helper makes a poster in the wrong colours. A shop prints its own offer board. An AI tool writes a caption in its own generic voice. Slowly, the brand starts to <strong>drift</strong> (move away from its rules). In this lesson, you will use a checklist before you publish. You will run a simple brand audit, use AI to spot off-brand words, and collect customer feedback. You will also learn when to fix, when to refresh and when to leave the brand alone.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A loop of five steps: brand guide, checklist before you post, audit every three months, customer feedback, then fix and update the guide, which leads back to the guide. Below, three levels of change: fix now for small mistakes, refresh every few years with the same name, and rebrand rarely, with a new name or position.">
            <defs><marker id="br14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="75" y="45" font-weight="700">1. Guide</text>
              <text x="75" y="65" font-size="11" fill="#9b99b8">the rules</text>
              <rect x="162" y="20" width="130" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="227" y="45" font-weight="700">2. Checklist</text>
              <text x="227" y="65" font-size="11" fill="#9b99b8">before you post</text>
              <rect x="314" y="20" width="130" height="60" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="379" y="45" font-weight="700">3. Audit</text>
              <text x="379" y="65" font-size="11" fill="#9b99b8">every 3 months</text>
              <rect x="466" y="20" width="130" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="531" y="45" font-weight="700">4. Feedback</text>
              <text x="531" y="65" font-size="11" fill="#9b99b8">ask customers</text>
              <rect x="618" y="20" width="132" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="684" y="45" font-weight="700">5. Fix</text>
              <text x="684" y="65" font-size="11" fill="#9b99b8">update the guide</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#br14a)">
                <line x1="142" y1="50" x2="158" y2="50"/>
                <line x1="294" y1="50" x2="310" y2="50"/>
                <line x1="446" y1="50" x2="462" y2="50"/>
                <line x1="598" y1="50" x2="614" y2="50"/>
                <path d="M684,82 L684,110 L75,110 L75,86"/>
              </g>
              <text x="379" y="130" font-size="11" fill="#9b99b8">repeat: the guide changes only when you decide it should</text>
              <rect x="10" y="150" width="236" height="140" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="128" y="178" font-weight="700" fill="#6ee7b7">Fix now</text>
              <text x="128" y="200" font-size="11" fill="#9b99b8">any time you spot it</text>
              <text x="128" y="230" font-size="12">wrong colour on a poster</text>
              <text x="128" y="252" font-size="12">an off-voice caption</text>
              <text x="128" y="274" font-size="12">an old phone number</text>
              <rect x="262" y="150" width="236" height="140" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="178" font-weight="700" fill="#fcd34d">Refresh</text>
              <text x="380" y="200" font-size="11" fill="#9b99b8">every few years, if needed</text>
              <text x="380" y="230" font-size="12">tidy the logo and label</text>
              <text x="380" y="252" font-size="12">new photos and templates</text>
              <text x="380" y="274" font-size="12">same name and promise</text>
              <rect x="514" y="150" width="236" height="140" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="632" y="178" font-weight="700" fill="#f9a8d4">Rebrand</text>
              <text x="632" y="200" font-size="11" fill="#9b99b8">rare and costly</text>
              <text x="632" y="230" font-size="12">new name or new position</text>
              <text x="632" y="252" font-size="12">only for a big reason</text>
              <text x="632" y="274" font-size="12">plan it with customers</text>
            </g>
          </svg>
          <figcaption>Consistency is a habit, not a one-time job. Most problems need a quick fix. A refresh is occasional. A full rebrand is rare.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why brands drift</h3>
          <p>Drift rarely comes from one big decision. It comes from many small shortcuts. Here is what happened to Kochu Bharani in its first six months (a made-up example):</p>
          <table class="lc-table">
            <thead><tr><th>What happened</th><th>Why it hurts the brand</th></tr></thead>
            <tbody>
              <tr><td>A bakery that stocks the jars made its own poster: "KOCHU BHARANI PICKLES 20% OFF!!!" in red and yellow</td><td>Loud ALL CAPS and discount colours look like the factory brand she is not</td></tr>
              <tr><td>Her nephew made a Reel saying "Best pickle in the world, guaranteed!"</td><td>An unproven claim that breaks the "honest" value</td></tr>
              <tr><td>An AI tool wrote a caption: "Indulge in our curated artisanal heritage condiments"</td><td>Fancy gourmet words; her voice is simple and homely</td></tr>
              <tr><td>A new label printer made the brand colour look darker</td><td>Jars from two batches look like two different brands</td></tr>
              <tr><td>The phone number was changed on the website, but not on the Google profile</td><td>Customers call a number that no one answers</td></tr>
            </tbody>
          </table>
          <p>The fix is not to control everything yourself. Give people simple tools: the brand guide, ready templates and a short checklist. For shops, send a ready-made poster in the right colours, so they do not make their own.</p>
        </div>
        <div class="lc-card">
          <h3>A checklist before you publish</h3>
          <p>Use this before any post, poster, label or web page goes out. It takes two minutes. Print it, or save it in your WhatsApp chat with yourself.</p>
          <pre><code>Kochu Bharani: before you publish
        [ ] Logo: the right version, not stretched, enough space around it
        [ ] Colours and fonts: only the brand colours and fonts
        [ ] Photo: real (our kitchen, our jars), clear, not a stock photo
        [ ] Voice: warm, simple English, Malayalam words with meanings
        [ ] No ALL CAPS offers, no "best" or "No. 1", no fake urgency
        [ ] Every fact is true: price, size, ingredients, dates
        [ ] Contact details copied from the master facts sheet
        [ ] Customer names or photos only with their permission
        [ ] Read it on a phone screen before posting</code></pre>
          <p>You can also ask AI to check a draft against your voice chart. Paste the voice chart and the draft, not customer data.</p>
          <pre><code>Here is my brand voice chart: [paste]. Here is a draft caption:
        [paste]. List any words or claims that break the voice chart or
        that I would need proof for. Suggest a fixed version. Do not add
        any new facts.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Run a simple brand audit</h3>
          <p>A <strong>brand audit</strong> is a regular check of every place customers meet your brand. For a small business, every three months is enough. List each <strong>touchpoint</strong> (a place where customers meet your business). Score it from 1 to 3 on three questions. Does it look right? Does it sound right? Are the facts right?</p>
          <table class="lc-table">
            <thead><tr><th>Touchpoint</th><th>Look (1 to 3)</th><th>Voice (1 to 3)</th><th>Facts (1 to 3)</th><th>Average</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>Jar label</td><td>3</td><td>3</td><td>3</td><td>3.0</td><td>None</td></tr>
              <tr><td>Website home page</td><td>3</td><td>2</td><td>2</td><td>2.3</td><td>Old shipping charge; one "premium" word</td></tr>
              <tr><td>Google profile</td><td>2</td><td>3</td><td>1</td><td>2.0</td><td>Old phone number; add new photos</td></tr>
              <tr><td>Bakery poster</td><td>1</td><td>1</td><td>2</td><td>1.3</td><td>Send them the ready-made poster</td></tr>
              <tr><td>WhatsApp greeting</td><td>3</td><td>3</td><td>2</td><td>2.7</td><td>Update the hours</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, put the three scores in columns B, C and D. Use <code>=ROUND(AVERAGE(B2:D2),1)</code> for the average. Use <code>=COUNTIF(E2:E20,"&lt;2")</code> to count the touchpoints that need urgent work. Also use <code>=COUNTIF(D2:D20,1)</code> to count touchpoints with a wrong fact, such as the Google profile. Its average is 2.0, but its phone number is wrong. Fix the lowest scores first. Facts scores come before looks, because wrong facts cost you orders.</p>
        </div>
        <div class="lc-card">
          <h3>Feedback, and when to refresh</h3>
          <p>Every few months, ask 5 to 10 real customers a few open questions:</p>
          <ul class="lc-list">
            <li>"What three words would you use for Kochu Bharani?"</li>
            <li>"What almost stopped you from ordering?"</li>
            <li>"What would you tell a friend about us?"</li>
          </ul>
          <p> If their words match your personality words (warm, homely, honest), the brand is working. If they say "expensive" or "confusing", look closer.</p>
          <table class="lc-table">
            <thead><tr><th>Signal</th><th>Usually means</th></tr></thead>
            <tbody>
              <tr><td>Customers cannot read the label on a phone photo</td><td>Refresh the label design; keep the name and colours</td></tr>
              <tr><td>You add gift hampers for Onam and Diwali</td><td>Add a gift template and packaging; the brand stays the same</td></tr>
              <tr><td>You are bored of your own logo</td><td>Not a reason to change. Customers are just starting to know it.</td></tr>
              <tr><td>A trademark lawyer finds a serious clash with your name</td><td>A possible rebrand. Get legal advice before you spend more on the name.</td></tr>
            </tbody>
          </table>
          <p>AI can group feedback into themes. Remove names and phone numbers before you paste customer messages into any public AI tool. Then read the original messages yourself, because a summary can miss the one important complaint.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: on brand or needs a fix?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Lakshmi is doing her three-month audit. Sort what she finds.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="On brand"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Needs a fix"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Real photo, real date, simple words and a clear way to order.">A "Batch ready" post with a kitchen photo: "40 jars of naranga (lime) pickle, made on 12 Sept."</li>
              <li data-bucket="fix" data-why="Loud capitals and a discount look like the factory brand. Send the shop a ready-made poster.">A shop poster: "KOCHU BHARANI 20% OFF!!! HURRY!!!"</li>
              <li data-bucket="fix" data-why="Wrong facts lose orders. Copy details from the master facts sheet.">The Google profile still shows last year's phone number</li>
              <li data-bucket="ok" data-why="Calm, sorry, and it fixes the problem in private.">A reply to a 2-star review that apologises and asks the buyer to message on WhatsApp</li>
              <li data-bucket="fix" data-why="Fancy gourmet words break the simple, homely voice.">A caption: "Savour our artisanal, curated heritage condiments."</li>
              <li data-bucket="fix" data-why="Stock photos are not real and break the do and don't list.">A festival post using a stock photo of a shiny mango</li>
              <li data-bucket="ok" data-why="It uses a Malayalam word with its meaning, as the voice chart says.">"Veluthulli (garlic) pickle is back. Small batch, so order soon."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to audit some of your own brand texts against your voice and values. Paste your real texts in place of the samples, but never paste customer details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a brand consistency checker for a small business. Use simple English.

        My brand: [Kochu Bharani, Kerala Home Pickles]
        Personality: [warm, homely, honest, cheerful, proud of Kerala]
        Never: [ALL CAPS offers, "best" or "No. 1", fake urgency, fancy words like "artisanal" or "curated", stock photos]
        Facts: [phone +91 9XXXX XXXXX; hours Mon to Sat 9 am to 7 pm; 250 g jars (fish pickle 200 g); ships across India]

        Texts to check:
        1. Website: "Premium curated Kerala pickles. Call +91 9YYYY YYYYY."
        2. Instagram: "Lime pickle back in stock! Small batch, made on [date]. Order on WhatsApp."
        3. Shop poster: "BEST PICKLES IN KOCHI!!! LIMITED STOCK!!!"
        4. WhatsApp greeting: "Hello! Thanks for messaging. We reply Mon to Sat, 10 am to 5 pm."

        For each text, give: a score from 1 to 3 for voice and for facts, the exact problem words, and a fixed version.
        Then list the top 3 fixes in order of urgency. Wrong facts come first.
        Do not add new facts or claims. If you are not sure a fact is wrong, write [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>It catches the wrong phone number and the wrong hours by comparing with your facts.</li>
              <li>It flags "BEST", the ALL CAPS and "LIMITED STOCK" as off-brand.</li>
              <li>The fixed versions add no new claims or invented facts.</li>
              <li>You still read each fix aloud and decide if it sounds like you.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Consistency comes from small, regular habits: a checklist before you publish, an audit every few months and real customer feedback. Fix mistakes quickly, refresh rarely, and rebrand only for a serious reason.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Capstone: A Brand Kit for Lakshmi's Pickle Brand</h1>
        </div>
        <p class="lc-lead">In this capstone, you put the whole course together. A <strong>brand kit</strong> is one organised set of everything someone needs to use your brand correctly: the strategy, the name, the logo, the colours and fonts, and the voice. It also holds your website plan, your Google profile and your social templates. With a good kit, Lakshmi can hand work to a designer, a nephew or a shop owner. The brand will still look and sound like Kochu Bharani. You will see Lakshmi's finished kit, a master facts sheet and the checks a person must still do. Then you will use AI to build a first draft of your own kit.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Eight parts of Lakshmi's brand kit in a grid: strategy, name, logo brief, colours and fonts, voice chart, website, Google profile and social templates. Below, one shared folder holds the brand guide, logo files, templates, the master facts sheet and the checklist.">
            <defs><marker id="br15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="14" width="176" height="74" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="98" y="44" font-weight="700">1. Strategy</text>
              <text x="98" y="66" font-size="11" fill="#9b99b8">purpose, positioning</text>
              <rect x="198" y="14" width="176" height="74" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="286" y="44" font-weight="700">2. Name</text>
              <text x="286" y="66" font-size="11" fill="#9b99b8">Kochu Bharani + checks</text>
              <rect x="386" y="14" width="176" height="74" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="474" y="44" font-weight="700">3. Logo brief</text>
              <text x="474" y="66" font-size="11" fill="#9b99b8">works small, one colour</text>
              <rect x="574" y="14" width="176" height="74" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="662" y="44" font-weight="700">4. Colours + fonts</text>
              <text x="662" y="66" font-size="11" fill="#9b99b8">with a contrast check</text>
              <rect x="10" y="100" width="176" height="74" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="98" y="130" font-weight="700">5. Voice chart</text>
              <text x="98" y="152" font-size="11" fill="#9b99b8">do and don't</text>
              <rect x="198" y="100" width="176" height="74" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="286" y="130" font-weight="700">6. Website</text>
              <text x="286" y="152" font-size="11" fill="#9b99b8">6 pages + footer</text>
              <rect x="386" y="100" width="176" height="74" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="474" y="130" font-weight="700">7. Google profile</text>
              <text x="474" y="152" font-size="11" fill="#9b99b8">service area, reviews</text>
              <rect x="574" y="100" width="176" height="74" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="662" y="130" font-weight="700">8. Social</text>
              <text x="662" y="152" font-size="11" fill="#9b99b8">bios + 5 templates</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#br15a)">
                <line x1="380" y1="178" x2="380" y2="202"/>
              </g>
              <rect x="10" y="206" width="740" height="84" rx="12" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="234" font-weight="700" fill="#6ee7b7">One shared folder: "Kochu Bharani brand kit"</text>
              <text x="380" y="258" font-size="12">brand guide  ·  logo files  ·  templates  ·  master facts sheet  ·  checklist</text>
              <text x="380" y="278" font-size="11" fill="#9b99b8">anyone who makes something for the brand starts here</text>
            </g>
          </svg>
          <figcaption>Eight parts, one folder. The kit is finished when a helper can make an on-brand post without asking Lakshmi a single question.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What is in Lakshmi's brand kit</h3>
          <p>Every detail below is made up for teaching. The "Status" column matters. A kit must say clearly what is checked and what is still waiting.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Kochu Bharani</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td><strong>Strategy</strong></td><td>Purpose: "To bring the taste of a Kerala home kitchen to Malayalis wherever they live." Main customer: Malayali families outside Kerala (persona: Divya, Karnataka).</td><td>Tested with 12 customer talks</td></tr>
              <tr><td><strong>Name</strong></td><td>Kochu Bharani ("little pickle jar"), with the descriptor "Kerala Home Pickles". Runner-up: Bharanika.</td><td>First trademark search done. Lawyer's check before printing labels.</td></tr>
              <tr><td><strong>Logo brief</strong></td><td>Simple, warm, homely. Must be clear at small sizes, such as a profile photo. Must work in one colour on a label.</td><td>Designer's final files received</td></tr>
              <tr><td><strong>Colours and fonts</strong></td><td>The brand colours and fonts from the brand guide. Text colours pass a contrast check.</td><td>Done</td></tr>
              <tr><td><strong>Voice</strong></td><td>The voice chart: warm, homely, honest, cheerful, proud of Kerala. Sample: "Made the way Amma makes it. Small batches, sesame oil, nothing hidden."</td><td>Done</td></tr>
              <tr><td><strong>Website</strong></td><td>Home, Shop, Our story, Ingredients, Shipping and returns, Contact, policy pages. FSSAI number and contact details in the footer.</td><td>Policy pages with a lawyer</td></tr>
              <tr><td><strong>Google profile</strong></td><td>Service-area business, home address hidden, parts of her town as the service area. Real photos. Replies to every review.</td><td>Waiting for verification</td></tr>
              <tr><td><strong>Social</strong></td><td>@kochubharani on Instagram; "Kochu Bharani" on the WhatsApp Business app. Bio, four highlights, five post templates.</td><td>Done</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The one-page brand summary</h3>
          <p>A long guide is useful for a designer. Most helpers need only one page. Lakshmi puts this at the front of the kit:</p>
          <pre><code>Kochu Bharani · Kerala Home Pickles · one-page summary

        Who we are:  Home-made Kerala pickles from Amma's family recipes,
                     made in Kerala in small batches of about 40 jars.
        Who we serve: Malayali families living outside Kerala who miss
                     the pickles of home. Also busy young professionals.
        Why us:      Unlike factory pickles, every jar is made from a family
                     recipe in sesame oil, with a clear label and
                     leak-proof packing.
        Personality: warm, homely, honest, cheerful, quietly proud of Kerala
        Never:       fancy, loud, "gourmet", cheap-looking, silly
        Say it like: "Made the way Amma makes it. Small batches,
                     sesame oil, nothing hidden."
        Always:      real photos; Malayalam words with their meaning;
                     batch date and full ingredients on every label
        Never:       ALL CAPS offers, "best" or "No. 1", fake urgency,
                     fake reviews, "no preservatives"
        Look:        see the brand guide for the logo, colours and fonts</code></pre>
          <p>Give this page to anyone who writes or designs for the brand. If they read nothing else, they will still get the basics right.</p>
        </div>
        <div class="lc-card">
          <h3>The master facts sheet and the human checks</h3>
          <p>The <strong>master facts sheet</strong> is the one place where every public fact lives. The website, Google profile, social bios and posters all copy from it. When a fact changes, Lakshmi changes it here first, then everywhere else.</p>
          <pre><code>Business name:  Kochu Bharani
        Descriptor:     Kerala Home Pickles
        Phone/WhatsApp: +91 9XXXX XXXXX
        Email:          hello@kochubharani.in   (made up)
        Website:        kochubharani.in         (made up)
        Handles:        @kochubharani
        Place shown:    Kerala, India (on Google and social media; full address
                        only where the law needs it, such as the label)
        Hours:          Mon to Sat, 9 am to 7 pm
        FSSAI Reg. No.: [copy exactly from the certificate]
        Products:       Lime pickle, 250 g, Rs 190
                        Tender mango pickle, 250 g, Rs 220
                        Garlic pickle, 250 g, Rs 240
                        Fish pickle, 200 g, Rs 360
        Shipping:       extra outside the local area, shown at checkout
        Last updated:   [date]</code></pre>
          <p>AI helped Lakshmi write almost every part of this kit. But some checks only a qualified person or a real customer can do:</p>
          <ul class="lc-list">
            <li><strong>Trademark:</strong> a full search and advice from a trademark lawyer before printing labels. The first search is not a clearance.</li>
            <li><strong>Food rules:</strong> FSSAI registration or licence in place, and the label checked against the current labelling rules by a food-compliance consultant.</li>
            <li><strong>Tax and registrations:</strong> GST and other registrations checked with a CA.</li>
            <li><strong>Website policies:</strong> privacy, terms and refund pages checked by a lawyer.</li>
            <li><strong>Customers:</strong> five real customers look at the website and profile, and say what they understand.</li>
          </ul>
          <p>This is general education, not legal or tax advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Lakshmi's final kit review</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Lakshmi asks">She pastes her one-page summary and master facts sheet (no customer data). She asks the AI to find gaps and clashes.</li>
              <li data-kind="answer" data-label="AI replies">It finds that the WhatsApp greeting says "10 am to 5 pm", but the facts sheet says "9 am to 7 pm". It also says the logo brief does not say how the logo looks on a dark background.</li>
              <li data-kind="answer" data-label="AI suggests more">It suggests adding "Award-winning family recipe" to the summary to "build trust".</li>
              <li data-kind="warn" data-label="Mistake to catch">The recipe has won no award. This invented claim breaks her "honest" value. She deletes it.</li>
              <li data-kind="tool" data-label="Phone test">She opens her website, Google profile and Instagram on her phone, one after another.</li>
              <li data-kind="result" data-label="What she sees">The name, phone and hours now match everywhere. The logo is clear in the small profile circle.</li>
              <li data-kind="check" data-label="Real people">She shows the kit to five customers and her designer. She books the trademark lawyer's check before printing the next batch of labels.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a first draft of a complete brand kit for your business. Replace Lakshmi's details in [brackets] with your own, or send it as it is to see her example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a brand consultant for small Indian businesses. Use simple English.

        My business: [Kochu Bharani, Kerala Home Pickles. Mango, lime, garlic and fish pickles from my mother's recipes, small batches of about 40 jars, sesame oil. Sold in 3 local shops, on WhatsApp, and online across India.]
        Customers: [Malayali families outside Kerala; busy young professionals]
        Competitors: [a cheap loud factory brand; a costly gourmet brand; a WhatsApp home seller who often runs out]
        Personality: [warm, homely, honest, cheerful, proud of Kerala]

        Make my brand kit with these sections:
        1. Strategy: purpose, positioning statement, promise
        2. Name: meaning and the checks still needed
        3. Logo brief for a designer
        4. Colour and font direction, with a contrast check
        5. Voice chart: 5 words, do and don't lists, 3 sample lines
        6. Website: pages and what each must answer
        7. Google Business Profile: name, category ideas, description
        8. Social: Instagram bio and 5 post template ideas
        9. Before-you-publish checklist
        10. Checks for a lawyer, CA or food-compliance expert

        Do not invent facts, reviews or awards. Mark anything unchecked [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>All ten sections are there and fit your real business.</li>
              <li>The name section says a trademark lawyer must still check it; it never says "available".</li>
              <li>No invented reviews, awards, numbers or health claims; unproven items are marked [CHECK].</li>
              <li>The Google profile name is your real business name only, with no keywords added.</li>
              <li>Section 10 lists real checks: trademark, food rules, tax and website policies.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A brand kit turns your brand from ideas in your head into tools other people can use. AI can draft most of it quickly. You, your customers and qualified experts make it true, legal and yours.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

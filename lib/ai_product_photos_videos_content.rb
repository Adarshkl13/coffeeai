module AiProductPhotosVideosContent
  # Units (sidebar dividers): 1–4 Product Visual Basics · 5–9 Creating Images and Videos · 10–14 Rules, Testing and Scale · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Why Product Visuals Matter</h1>
        </div>
        <p class="lc-lead">Online, a buyer cannot touch, smell or open your product. Your photos and videos do that job for them. In this lesson, you will learn what the main image and the gallery each need to do. You will see why a small phone screen changes everything. You will also learn why every picture must show the real product. Throughout this course, you will follow Asha, who owns Sweet Crumbs, a home bakery in Maharashtra. She is launching a Diwali gift box online.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A phone shows search results with four small thumbnails. One thumbnail is Asha's gift box. An arrow leads to four steps: the main image wins the click, the gallery answers questions, the video shows the product in use, and the buyer decides.">
            <defs><marker id="ppv1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="12" width="200" height="276" rx="22" fill="#1f1f44" stroke="#4b4a78" stroke-width="2"/>
              <rect x="35" y="32" width="170" height="26" rx="13" fill="#27274e" stroke="#4b4a78"/>
              <text x="120" y="50" font-size="11.5" fill="#9b99b8">diwali sweets gift box</text>
              <rect x="35" y="72" width="78" height="78" rx="6" fill="#ffffff" stroke="#10b981" stroke-width="3"/>
              <rect x="52" y="92" width="44" height="38" rx="3" fill="#7a1f2b" stroke="#c9a227" stroke-width="2"/>
              <text x="74" y="166" font-size="11" fill="#6ee7b7">Sweet Crumbs</text>
              <rect x="127" y="72" width="78" height="78" rx="6" fill="#27274e" stroke="#4b4a78"/>
              <circle cx="166" cy="111" r="20" fill="#4b4a78"/>
              <text x="166" y="166" font-size="11" fill="#9b99b8">Seller B</text>
              <rect x="35" y="178" width="78" height="78" rx="6" fill="#27274e" stroke="#4b4a78"/>
              <rect x="50" y="196" width="48" height="42" rx="3" fill="#4b4a78"/>
              <text x="74" y="272" font-size="11" fill="#9b99b8">Seller C</text>
              <rect x="127" y="178" width="78" height="78" rx="6" fill="#27274e" stroke="#4b4a78"/>
              <rect x="146" y="200" width="40" height="34" rx="3" fill="#4b4a78"/>
              <text x="166" y="272" font-size="11" fill="#9b99b8">Seller D</text>
              <line x1="222" y1="46" x2="262" y2="46" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ppv1a)"/>
              <g text-anchor="start">
                <rect x="268" y="20" width="472" height="52" rx="10" fill="#1f1f44" stroke="#10b981"/>
                <text x="284" y="51" font-weight="700" fill="#6ee7b7">1. Main image</text>
                <text x="430" y="51" font-size="12">wins the click in search results</text>
                <rect x="268" y="88" width="472" height="52" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="284" y="119" font-weight="700" fill="#93c5fd">2. Gallery</text>
                <text x="430" y="119" font-size="12">answers questions: size, contents, label</text>
                <rect x="268" y="156" width="472" height="52" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="284" y="187" font-weight="700" fill="#c4b5fd">3. Video</text>
                <text x="430" y="187" font-size="12">shows the box opening and its real size</text>
                <rect x="268" y="224" width="472" height="52" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="284" y="255" font-weight="700" fill="#fcd34d">4. Decision</text>
                <text x="430" y="255" font-size="12">buy now, or go back to search</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ppv1a)">
                <line x1="504" y1="73" x2="504" y2="85"/>
                <line x1="504" y1="141" x2="504" y2="153"/>
                <line x1="504" y1="209" x2="504" y2="221"/>
              </g>
            </g>
          </svg>
          <figcaption>On a phone, the main image is a small square next to your competitors. It must win the click. The gallery and video then win the sale.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Pictures answer the buyer's questions</h3>
          <p>In a shop, a buyer picks up the box, looks inside and feels the weight. Online, each question needs a picture. Here is Asha's new product. All the details in this course are made up for teaching.</p>
          <ul class="lc-list">
            <li><strong>Product:</strong> Sweet Crumbs "Diwali Mithai &amp; Cookie Gift Box"</li>
            <li><strong>Contents:</strong> 12 pieces: 3 kaju katli, 3 besan ladoo, 3 nankhatai and 3 atta jaggery cookies</li>
            <li><strong>Net weight:</strong> 450 g. <strong>Box size:</strong> 20 x 20 x 6 cm, maroon with a gold logo and ribbon</li>
            <li><strong>Price:</strong> ₹899. <strong>Shelf life:</strong> 10 days from the date it is made</li>
            <li><strong>Sold on:</strong> her own Shopify store, Amazon and Flipkart</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Buyer's question</th><th>The picture that answers it</th></tr></thead>
            <tbody>
              <tr><td>What exactly is inside?</td><td>The open box from above, with all 12 pieces clearly visible</td></tr>
              <tr><td>How big is it?</td><td>The box held in two hands, plus a size graphic: 20 x 20 x 6 cm</td></tr>
              <tr><td>Will it look nice as a gift?</td><td>The closed box with its ribbon</td></tr>
              <tr><td>What is in it? Is it fresh?</td><td>A sharp photo of the label: ingredients, allergens, best-before date</td></tr>
              <tr><td>What does each sweet look like?</td><td>A close-up of each of the 4 types</td></tr>
            </tbody>
          </table>
          <p>A question with no picture is a reason to leave the page. It can also lead to a surprised, unhappy buyer later.</p>
        </div>
        <div class="lc-card">
          <h3>Main image vs gallery</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Main image</th><th>Gallery images (and video)</th></tr></thead>
            <tbody>
              <tr><td>What it is</td><td>The first image of the listing</td><td>Images 2 onwards, plus a video where the platform allows it</td></tr>
              <tr><td>Where it shows</td><td>Search results, category pages, ads, the cart</td><td>Mainly on the product page</td></tr>
              <tr><td>Its job</td><td>Make the right buyer click. Show exactly what they get.</td><td>Answer questions. Build trust. Show size, details and use.</td></tr>
              <tr><td>Rules</td><td>Usually strict. Marketplaces often ask for the product alone on a white background.</td><td>More freedom: scenes, size graphics, labels, close-ups</td></tr>
            </tbody>
          </table>
          <p>Each marketplace has its own image rules. They also limit how many images and videos you can add. These rules change, so check the current help pages in Seller Central (Amazon) and Seller Hub (Flipkart).</p>
        </div>
        <div class="lc-card">
          <h3>Design for a small phone screen</h3>
          <p>Many Indian shoppers browse and buy on their phones. In search results, your main image may be only a few centimetres wide. Small details disappear at that size.</p>
          <ul class="lc-list">
            <li><strong>Fill the frame.</strong> The product should take up most of the image, with little empty space.</li>
            <li><strong>Show one clear subject.</strong> Asha's maroon box stands out well on white.</li>
            <li><strong>Do not rely on small text.</strong> Buyers cannot read it on a thumbnail (a small preview image).</li>
            <li><strong>Test it on your phone.</strong> Take a screenshot of real search results. Put your image next to them and look at it at that size.</li>
          </ul>
          <p>Here is a made-up example. <strong>Impressions</strong> are how many times your listing was shown. <strong>CTR</strong> (click-through rate) is the share of people who saw it and clicked. <strong>Conversion rate</strong> is the share of visitors who bought.</p>
          <table class="lc-table">
            <thead><tr><th>Main image</th><th>Impressions</th><th>Clicks</th><th>CTR</th></tr></thead>
            <tbody>
              <tr><td>Closed box on a wooden table</td><td>10,000</td><td>150</td><td>150 ÷ 10,000 = 1.5%</td></tr>
              <tr><td>Open box on white, all 12 pieces</td><td>10,000</td><td>240</td><td>240 ÷ 10,000 = 2.4%</td></tr>
            </tbody>
          </table>
          <p>With the first image, 6 of the 150 visitors bought. That is 6 ÷ 150 = 4% conversion. These numbers are only an illustration. A fair test needs more care, and you will learn how later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Pretty is not enough: pictures must be true</h3>
          <p>A photo is a promise. If the box looks bigger, or shows extra sweets, the buyer feels cheated. Food gift boxes are hard to return, so trust matters even more.</p>
          <p>In India, the Consumer Protection (E-Commerce) Rules, 2020 say sellers must not mislead buyers about their products. Marketplaces also remove listings with misleading images. This is general information, not legal advice. Honest pictures also mean fewer complaints, returns and bad reviews.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which slot fits each visual?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Asha has six visual ideas. Put each one where it works best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="main" data-label="Main image"></div>
              <div data-sorter-target="bucket" data-bucket="gallery" data-label="Gallery image"></div>
              <div data-sorter-target="bucket" data-bucket="video" data-label="Short video"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="main" data-why="It shows exactly what the buyer gets. Main images usually need the product alone on white.">The open box with the lid behind it, all 12 pieces visible, on pure white</li>
              <li data-bucket="gallery" data-why="Buyers who care about allergens will look for it. The text is too small for a main image.">A sharp photo of the label with ingredients, allergens and best-before date</li>
              <li data-bucket="gallery" data-why="It answers &quot;How big is it?&quot; after the buyer has clicked.">The box held in two hands to show its real size</li>
              <li data-bucket="video" data-why="Movement shows the opening experience better than a still photo.">The ribbon untied and the lid lifted, in 15 seconds</li>
              <li data-bucket="gallery" data-why="Scenes with props belong in the gallery. The diyas must not look like part of the product.">The box on a festive table with brass diyas (props not included)</li>
              <li data-bucket="video" data-why="A slow pan shows all four sweets and the card in one clip.">A slow pan across all four sweets, ending on the greeting card</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find the gaps in a product's images. Describe your own images in words, or use Asha's example as it is.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an e-commerce visual consultant for small Indian online sellers.

        My product: [Sweet Crumbs Diwali Mithai &amp; Cookie Gift Box from Maharashtra. 12 pieces: 3 kaju katli, 3 besan ladoo, 3 nankhatai, 3 atta jaggery cookies. 450 g net. Maroon box, 20 x 20 x 6 cm. Price Rs 899. Shelf life 10 days.]
        Where I sell: [own Shopify store, Amazon, Flipkart]
        My current images, described in words:
        [1. Closed box on a wooden table, from the front. 2. The same box from the top. 3. A poster with "Happy Diwali" text and our logo.]

        Tasks:
        1. List the 8 most important questions a buyer asks before buying this product.
        2. For each question, say if my current images answer it: Yes, Partly or No.
        3. Suggest a gallery of 6 to 8 images in order. For each image, give: what it shows, the question it answers, and whether it could be the main image.
        4. Give 3 tips to make the main image clear on a small phone screen.

        Rules: Only suggest showing things that are really in the product. Do not state exact marketplace rules. Write "check current rules" instead. Use simple English and tables.</pre>
            <ul class="ai-try-checks">
              <li>The questions include what is inside, size, ingredients or allergens, and freshness.</li>
              <li>The suggested main image shows the product alone, with no poster text.</li>
              <li>No suggested image shows something that is not in the real box.</li>
              <li>Marketplace rules are marked "check current rules", not stated as fixed facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The main image wins the click, and the gallery wins the sale. Plan both around the buyer's questions, and make every picture match the real product.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Where AI Helps with Visuals</h1>
        </div>
        <p class="lc-lead">AI tools can remove backgrounds, clean up photos, build festive scenes and even turn a photo into a short video. This saves small sellers a lot of time and money. But AI can also change your product without asking. It may add a sweet, change a colour or break your logo. In this lesson, you will learn which visual jobs to give to AI, how risky each one is, and what you must check every time.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Five AI visual jobs ranked by risk. Background removal changes only the area around the product: low risk. Cleanup and retouching: low to medium. Lifestyle scenes: medium. Video from photos: medium to high. Generating the product itself: never for listings.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="135" y="32" font-weight="700" fill="#9b99b8">AI job</text>
              <text x="415" y="32" font-weight="700" fill="#9b99b8">What the AI changes</text>
              <text x="662" y="32" font-weight="700" fill="#9b99b8">Risk</text>
              <rect x="20" y="45" width="230" height="42" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="135" y="71">Background removal</text>
              <rect x="265" y="45" width="300" height="42" rx="8" fill="#27274e"/>
              <text x="415" y="71" font-size="12">only the area around the product</text>
              <rect x="585" y="47" width="155" height="38" rx="19" fill="#10b981" fill-opacity="0.2" stroke="#10b981"/>
              <text x="662" y="71" fill="#6ee7b7">Low</text>
              <rect x="20" y="97" width="230" height="42" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="135" y="123">Cleanup and retouching</text>
              <rect x="265" y="97" width="300" height="42" rx="8" fill="#27274e"/>
              <text x="415" y="123" font-size="12">dust, crumbs, light, colour</text>
              <rect x="585" y="99" width="155" height="38" rx="19" fill="#22d3ee" fill-opacity="0.2" stroke="#22d3ee"/>
              <text x="662" y="123" fill="#67e8f9">Low to medium</text>
              <rect x="20" y="149" width="230" height="42" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="135" y="175">Lifestyle scene</text>
              <rect x="265" y="149" width="300" height="42" rx="8" fill="#27274e"/>
              <text x="415" y="175" font-size="12">new background, props and light</text>
              <rect x="585" y="151" width="155" height="38" rx="19" fill="#f59e0b" fill-opacity="0.2" stroke="#f59e0b"/>
              <text x="662" y="175" fill="#fcd34d">Medium</text>
              <rect x="20" y="201" width="230" height="42" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="135" y="227">Video from photos</text>
              <rect x="265" y="201" width="300" height="42" rx="8" fill="#27274e"/>
              <text x="415" y="227" font-size="12">movement, new angles, hands</text>
              <rect x="585" y="203" width="155" height="38" rx="19" fill="#fb923c" fill-opacity="0.2" stroke="#fb923c"/>
              <text x="662" y="227" fill="#fdba74">Medium to high</text>
              <rect x="20" y="253" width="230" height="42" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="135" y="279">Generate the product</text>
              <rect x="265" y="253" width="300" height="42" rx="8" fill="#27274e"/>
              <text x="415" y="279" font-size="12">the product itself</text>
              <rect x="585" y="255" width="155" height="38" rx="19" fill="#ec4899" fill-opacity="0.2" stroke="#ec4899"/>
              <text x="662" y="279" fill="#f9a8d4">Never for listings</text>
              <text x="380" y="320" font-size="12.5" fill="#9b99b8">The more of the picture AI creates, the more you must check.</text>
            </g>
          </svg>
          <figcaption>Rule of thumb: real product in, real product out. AI may change the world around the product, never the product.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Two kinds of AI tools</h3>
          <ul class="lc-list">
            <li><strong>AI assistants</strong>, such as Claude, work with words. They help you plan shot lists, write briefs and write instructions for image tools. They can also draft checklists and alt text (a short text description of an image for screen readers and search). Some can look at a photo you upload and point out problems. They can still miss things, so you check too.</li>
            <li><strong>AI image and video tools</strong> change the pixels. They remove backgrounds, fix light, add scenes, extend images and animate photos. You find them in phone photo apps, design apps, online editors, store platforms and some seller dashboards.</li>
          </ul>
          <p>These tools change quickly. Features, prices and usage rights differ from tool to tool. Check each tool's current help pages and terms before you use it for business images.</p>
        </div>
        <div class="lc-card">
          <h3>Visual jobs AI can help with</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>How AI helps</th><th>What can go wrong</th><th>What you check</th></tr></thead>
            <tbody>
              <tr><td>Background removal</td><td>Cuts the product out and puts it on white or another plain colour</td><td>Parts of the product cut off, grey edges</td><td>Edges, ribbon, corners, the shape of the box</td></tr>
              <tr><td>Cleanup and retouching</td><td>Removes dust and crumbs, fixes light and colour</td><td>"Enhance" makes food shinier, brighter or bigger</td><td>Colour matches the real box. The sweets look as they really do.</td></tr>
              <tr><td>Lifestyle scene</td><td>Puts your real photo on a festive table or a gift setting</td><td>Adds items that look included, changes the product</td><td>Count, shapes, logo. Props do not look included.</td></tr>
              <tr><td>Extend or resize</td><td>Adds more background so a square photo fits a tall or wide slot</td><td>Stretches the product, adds odd objects at the edges</td><td>The product has the same shape and size</td></tr>
              <tr><td>Video from photos</td><td>Adds slow movement, zoom or a moving scene</td><td>Lids that bend, hands with extra fingers, new sweets</td><td>Every second, frame by frame</td></tr>
              <tr><td>Words for images</td><td>Briefs, shot lists, alt text, captions</td><td>Made-up features in the text</td><td>Every claim is true</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The big risk: a product that is not real</h3>
          <p>AI image tools try to make pictures "better". They do not know what your real product looks like. Asha's first festive scene looked beautiful. Then she checked it carefully:</p>
          <ul class="lc-list">
            <li>The box had 14 pieces, not 12.</li>
            <li>The kaju katli had shiny silver foil (varq). Sweet Crumbs does not use varq.</li>
            <li>The logo on the lid read "Sweet Crurnbs".</li>
            <li>The box looked taller than 6 cm.</li>
          </ul>
          <p>Every one of these makes the image misleading. A buyer who gets something different may complain, ask for a refund or leave a bad review. Marketplaces can remove the listing. Indian consumer protection law also covers misleading claims and adverts. This is general information, not legal advice.</p>
          <p>The fix is to control the prompt and to check the result. Compare these two prompts for an AI image tool:</p>
          <pre><code>Weak prompt:
        Make this gift box look premium and festive.

        Better prompt:
        Use my photo of the gift box. Keep the box, the 12 sweets,
        their shapes, colours and positions, and the logo exactly
        as they are. Change only the background: a wooden table
        with 3 brass diyas and marigold flowers, soft warm evening
        light. Do not add sweets, foil, text, badges or people.</code></pre>
          <p>Even with a good prompt, AI can still change small things. Always compare the result with the original photo.</p>
        </div>
        <div class="lc-card">
          <h3>Keep a simple edit log</h3>
          <p>Keep a record of every AI edit in a spreadsheet. It helps you answer questions from a marketplace or a buyer. It also helps if a platform asks you to label AI-generated or AI-changed content. Rules on labelling differ by platform and change often, so check the current rules.</p>
          <table class="lc-table">
            <thead><tr><th>Image</th><th>Original file</th><th>AI job</th><th>What changed</th><th>Checked by</th></tr></thead>
            <tbody>
              <tr><td>Gallery 8: festive table</td><td>IMG_2041.jpg</td><td>Lifestyle scene</td><td>Background only: table, diyas, marigolds</td><td>Asha, 12 Oct</td></tr>
            </tbody>
          </table>
          <p>Also, do not upload private customer photos or unreleased designs to a tool unless you have read its privacy terms.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Asha's first AI scene</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Asha's prompt">Asha uploads her photo of the open gift box to an AI image tool. She types: "Make it look festive for Diwali."</li>
              <li data-kind="result" data-label="Tool output">A warm, glowing scene with diyas and flowers. It looks great at first sight.</li>
              <li data-kind="warn" data-label="Problems">She zooms in and counts. There are 14 pieces. The kaju katli has silver foil. The logo reads "Sweet Crurnbs".</li>
              <li data-kind="thought" data-label="Asha thinks">"The background is lovely. But this is no longer my product. A buyer would expect 14 pieces with varq."</li>
              <li data-kind="user" data-label="Better prompt">She tries again: "Keep the box, the 12 sweets and the logo exactly as they are. Change only the background."</li>
              <li data-kind="result" data-label="Tool output">The box and the 12 sweets look like her photo. Diyas and marigolds sit behind the box.</li>
              <li data-kind="check" data-label="Asha checks">She puts the new image next to the original at full zoom. She counts 12 pieces, reads the logo and compares the maroon with the real box.</li>
              <li data-kind="check" data-label="Decision">She uses it only in the gallery, never as the main image. She adds a line to her edit log.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to make an edit plan: which AI job each image needs, how risky it is, and what must not change. Use your own product or Asha's example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a product photo planner who cares about honest listings.

        Product facts: [Sweet Crumbs Diwali Mithai &amp; Cookie Gift Box. 12 pieces: 3 kaju katli (no silver foil), 3 besan ladoo, 3 nankhatai, 3 atta jaggery cookies. 450 g net. Maroon box, 20 x 20 x 6 cm, gold logo, gold ribbon.]

        Images I want: [1. Main image on white. 2. Festive table scene. 3. Box in hands to show size. 4. Close-up of the kaju katli. 5. A 10-second video of the lid opening.]

        Make a table with these columns:
        Image | Real photo needed? | AI job (background removal, cleanup, scene, extend, video, or none) | Risk (low, medium, high) | What must stay exactly the same | What I must check after the edit

        Then list 5 edits I must never make to this product's images, with a one-line reason for each.

        Rules: Every image must start from a real photo. Never suggest generating the product itself. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every image starts from a real photo of the product.</li>
              <li>"Must stay the same" includes the piece count, shapes, box colour and logo.</li>
              <li>The video is rated a higher risk than background removal.</li>
              <li>The "never" list includes adding pieces, foil or badges, or changing the size.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI change the world around your product, not the product itself. After every AI edit, compare the result with the original photo: count, shape, colour, logo and label.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Planning Your Product Shots</h1>
        </div>
        <p class="lc-lead">Good product photos start before you pick up the camera. A <strong>shot list</strong> is a simple table of every photo you need, written before the shoot. It stops you from forgetting the label photo or the size photo. It also saves a second shoot. In this lesson, you will learn the main angles and how to show size and details honestly. You will also use AI to draft a shot list, and then check it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Four planning steps: product facts, buyer questions, shots, then order and check. Below them, Asha's shot list of nine items: main, closed box, top-down, side, in hands, close-ups, label, scene and a 15 second video. The scene is for the gallery only.">
            <defs><marker id="ppv3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="150" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="47" font-weight="700" fill="#93c5fd">1. Product facts</text>
              <text x="95" y="68" font-size="11.5" fill="#9b99b8">size, contents, label</text>
              <rect x="210" y="20" width="150" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="47" font-weight="700" fill="#c4b5fd">2. Buyer questions</text>
              <text x="285" y="68" font-size="11.5" fill="#9b99b8">what, how big, fresh?</text>
              <rect x="400" y="20" width="150" height="64" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="475" y="47" font-weight="700" fill="#67e8f9">3. Shots</text>
              <text x="475" y="68" font-size="11.5" fill="#9b99b8">angle, scale, detail</text>
              <rect x="590" y="20" width="150" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="47" font-weight="700" fill="#6ee7b7">4. Order + check</text>
              <text x="665" y="68" font-size="11.5" fill="#9b99b8">main image first</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ppv3a)">
                <line x1="172" y1="52" x2="206" y2="52"/>
                <line x1="362" y1="52" x2="396" y2="52"/>
                <line x1="552" y1="52" x2="586" y2="52"/>
              </g>
              <text x="380" y="126" font-weight="700" fill="#9b99b8">Asha's shot list: 8 photos and 1 video</text>
              <g font-size="11.5">
                <rect x="20" y="142" width="74" height="84" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
                <text x="57" y="176" font-size="20" font-weight="700" fill="#6ee7b7">1</text>
                <text x="57" y="206">Main</text>
                <rect x="100" y="142" width="74" height="84" rx="8" fill="#27274e" stroke="#4b4a78"/>
                <text x="137" y="176" font-size="20" font-weight="700">2</text>
                <text x="137" y="206">Closed</text>
                <rect x="180" y="142" width="74" height="84" rx="8" fill="#27274e" stroke="#4b4a78"/>
                <text x="217" y="176" font-size="20" font-weight="700">3</text>
                <text x="217" y="206">Top-down</text>
                <rect x="260" y="142" width="74" height="84" rx="8" fill="#27274e" stroke="#4b4a78"/>
                <text x="297" y="176" font-size="20" font-weight="700">4</text>
                <text x="297" y="206">Side</text>
                <rect x="340" y="142" width="74" height="84" rx="8" fill="#27274e" stroke="#4b4a78"/>
                <text x="377" y="176" font-size="20" font-weight="700">5</text>
                <text x="377" y="206">In hands</text>
                <rect x="420" y="142" width="74" height="84" rx="8" fill="#27274e" stroke="#4b4a78"/>
                <text x="457" y="176" font-size="20" font-weight="700">6</text>
                <text x="457" y="206">Close-ups</text>
                <rect x="500" y="142" width="74" height="84" rx="8" fill="#27274e" stroke="#4b4a78"/>
                <text x="537" y="176" font-size="20" font-weight="700">7</text>
                <text x="537" y="206">Label</text>
                <rect x="580" y="142" width="74" height="84" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="617" y="176" font-size="20" font-weight="700" fill="#f9a8d4">8</text>
                <text x="617" y="206">Scene</text>
                <rect x="660" y="142" width="74" height="84" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="697" y="176" font-size="20" font-weight="700" fill="#fcd34d">V</text>
                <text x="697" y="206">15 s video</text>
              </g>
              <text x="57" y="248" font-size="11" fill="#6ee7b7">on white</text>
              <text x="617" y="248" font-size="11" fill="#f9a8d4">gallery only</text>
              <text x="380" y="278" font-size="12.5" fill="#9b99b8">Every shot answers one buyer question.</text>
            </g>
          </svg>
          <figcaption>Start from the facts and the buyer's questions. The shots come after that, not before.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The angles you need</h3>
          <p>Most products need the same few angles. Each one shows something the others cannot.</p>
          <table class="lc-table">
            <thead><tr><th>Angle</th><th>What it means</th><th>What it shows</th></tr></thead>
            <tbody>
              <tr><td>Front, about 45°</td><td>From the front and a little above, so you see the front and the top</td><td>The overall look. Often the best main image.</td></tr>
              <tr><td>Top-down (flat lay)</td><td>The camera points straight down at the product</td><td>Everything inside a box, or all the parts of a set</td></tr>
              <tr><td>Side, eye level</td><td>The camera is at the same height as the product</td><td>Height and thickness</td></tr>
              <tr><td>Close-up (macro)</td><td>Very close to one part</td><td>Texture, finish, stitching, a single sweet</td></tr>
              <tr><td>Scale shot</td><td>The product with hands, a person or a common object</td><td>The real size</td></tr>
              <tr><td>Packaging and label</td><td>Straight on, with sharp, readable text</td><td>Ingredients, net quantity, dates, care instructions</td></tr>
            </tbody>
          </table>
          <p>Shoot every angle in the same session, with the same light. Then all your images look like one set.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Asha's shot list</h3>
          <p>Asha's gift box has 12 pieces, weighs 450 g net and measures 20 x 20 x 6 cm. She wrote down the questions customers ask her on WhatsApp. Then she built this list.</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Shot</th><th>Angle</th><th>Buyer question</th><th>Where used</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Open box, lid leaning behind, all 12 pieces visible</td><td>Front, 45°, pure white background</td><td>What exactly do I get?</td><td>Main image everywhere</td></tr>
              <tr><td>2</td><td>Closed box with gold ribbon</td><td>Front, 45°</td><td>Will it look good as a gift?</td><td>Gallery</td></tr>
              <tr><td>3</td><td>Open tray with 12 pieces</td><td>Top-down</td><td>Which 4 sweets are inside?</td><td>Gallery (names added later)</td></tr>
              <tr><td>4</td><td>Closed box from the side</td><td>Eye level</td><td>How tall is it?</td><td>Gallery (size graphic later)</td></tr>
              <tr><td>5</td><td>Box held in two hands</td><td>Front</td><td>How big is it really?</td><td>Gallery</td></tr>
              <tr><td>6</td><td>One close-up of each sweet</td><td>Macro</td><td>What does each one look like?</td><td>Gallery</td></tr>
              <tr><td>7</td><td>Back label</td><td>Straight on, sharp text</td><td>Ingredients, allergens, best before?</td><td>Gallery</td></tr>
              <tr><td>8</td><td>Real photo of the box, AI festive background</td><td>Front, 45°</td><td>How will it look at Diwali?</td><td>Gallery only, never main</td></tr>
              <tr><td>V</td><td>Ribbon untied, lid lifted, slow pan over the 12 pieces</td><td>Phone on a tripod</td><td>What is it like to open?</td><td>Gallery and social media</td></tr>
            </tbody>
          </table>
          <p>Notice shot 7. The label is not pretty, but buyers with nut or gluten allergies need it. The box contains cashew, milk and wheat.</p>
        </div>
        <div class="lc-card">
          <h3>Show size, details and packaging honestly</h3>
          <ul class="lc-list">
            <li><strong>Measure first.</strong> Use a tape measure on the real box. Write the numbers on the shot list. Later, a size graphic will use them.</li>
            <li><strong>Use a fair scale object.</strong> Hands work well for a gift box. Do not use tiny props to make the product look bigger.</li>
            <li><strong>Use real, typical pieces.</strong> Pick neat pieces from a normal batch. Do not make special, larger pieces just for the photo.</li>
            <li><strong>Show what arrives.</strong> Photograph the greeting card that is inside. Do not show a gift bag unless it is included.</li>
          </ul>
          <p>Clothes need a different list. Imran, the catalogue manager at Zari &amp; Co in Gujarat, plans these shots for a teal cotton silk kurta set (kurta, trousers and dupatta):</p>
          <ul class="lc-list">
            <li>On a model: front, back and side, full length with the dupatta</li>
            <li>A close-up of the fabric and the zari border (a border woven with shiny metallic thread)</li>
            <li>A flat lay of all 3 pieces, so buyers see what is included</li>
            <li>A size chart image, plus the model's height and size as text: "Model is 5 ft 6 in and wears size M"</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Let AI draft the list, then you check it</h3>
          <p>An AI assistant can turn your facts into a full shot list in a minute. The quality depends on what you give it.</p>
          <pre><code>Weak prompt:
        Give me a shot list for my Diwali sweets box.

        Better prompt:
        You are a product photographer for Indian online sellers.
        Product: Diwali gift box, 12 pieces (3 kaju katli, 3 besan
        ladoo, 3 nankhatai, 3 atta jaggery cookies), 450 g net,
        maroon box 20 x 20 x 6 cm, gold ribbon, greeting card inside.
        Sold on: own Shopify store, Amazon, Flipkart.
        Buyer questions: What is inside? How big? Is it fresh?
        Any nuts? Is it good for gifting?
        Make a table: shot, angle, buyer question, where used.
        Only include things that are really in the box.</code></pre>
          <p>The weak prompt gives a generic list. It may suggest a silver foil close-up or a gift bag that Asha does not sell. The better prompt gives real facts, so the list fits the real product.</p>
          <p>Always check the AI's list. Remove any shot of something that is not included. AI does not know the current marketplace rules for your category, so check them in Seller Central or Seller Hub help.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: plan a shoot in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Asha's planning steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Measure the box and copy the facts from the label</li>
              <li data-order="2">Write down the questions customers ask about the product</li>
              <li data-order="3">Give the facts and questions to an AI assistant and ask for a draft shot list</li>
              <li data-order="4">Remove any shot that shows something not included in the box</li>
              <li data-order="5">Mark the main image and put the gallery shots in order</li>
              <li data-order="6">Take one test photo of the main shot and look at it on a phone screen</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a complete shot list for a product. Change the product facts and questions to your own, or use Asha's example as it is.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a product photographer who plans shoots for small Indian online sellers.

        Product facts: [Diwali Mithai &amp; Cookie Gift Box by Sweet Crumbs, Maharashtra. 12 pieces: 3 kaju katli, 3 besan ladoo, 3 nankhatai, 3 atta jaggery cookies. 450 g net. Maroon rigid box, 20 x 20 x 6 cm, gold ribbon, greeting card inside. Contains cashew, milk, wheat. Shelf life 10 days.]
        Where I sell: [own Shopify store, Amazon, Flipkart]
        Questions customers ask: [What is inside? How big is the box? How long does it stay fresh? Does it have nuts? Is it good for gifting?]

        Make a shot list table with these columns:
        # | Shot | Angle | What must be clearly visible | Buyer question it answers | Main or gallery | Props (gallery only)

        Include 7 to 9 photos and 1 short video idea. Mark one shot as the main image.

        Rules: Show only things that are really in the product. Do not suggest props that could look included. Do not state marketplace rules as facts; write "check current rules". Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every customer question is answered by at least one shot.</li>
              <li>The main image shows the product alone, with nothing extra.</li>
              <li>There is a label shot and a size (scale) shot.</li>
              <li>No shot shows items that are not in the real product.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A shot list turns buyer questions into photos. Write it from real facts and real questions, let AI draft it, and remove anything that is not in the box.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Shooting with a Phone</h1>
        </div>
        <p class="lc-lead">You do not need an expensive camera for good product photos. A recent phone, a window and some white chart paper can do the job. In this lesson, you will learn how to use light, backgrounds and a simple setup. You will also learn how to keep every photo consistent. Good original photos matter even more when you use AI: AI edits work best, and change less, when the starting photo is sharp and true to colour.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="Top view of a low-budget phone studio. Soft daylight comes from a window on the left. The gift box sits on a table in front of a curved white chart paper sweep. A white foam board on the right bounces light back. The phone is on a tripod in front of the box, 60 cm away. Room lights are off.">
            <defs><marker id="ppv4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#fcd34d"/></marker>
            <marker id="ppv4b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="30" y="38">Window</text>
              <rect x="20" y="50" width="18" height="220" rx="3" fill="#22d3ee" fill-opacity="0.3" stroke="#22d3ee"/>
              <text x="20" y="292" text-anchor="start" fill="#67e8f9">Soft daylight</text>
              <g stroke="#fcd34d" stroke-width="1.5" stroke-dasharray="6 5" marker-end="url(#ppv4a)">
                <line x1="46" y1="100" x2="226" y2="100"/>
                <line x1="46" y1="150" x2="226" y2="150"/>
                <line x1="46" y1="200" x2="226" y2="200"/>
              </g>
              <text x="136" y="88" font-size="11" fill="#9b99b8">thin curtain if sunny</text>
              <rect x="235" y="40" width="300" height="240" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="250" y="270" text-anchor="start" font-size="11" fill="#9b99b8">Table</text>
              <rect x="255" y="55" width="260" height="150" rx="6" fill="#e2e0f0" fill-opacity="0.1" stroke="#e2e0f0"/>
              <text x="385" y="80">White sweep</text>
              <text x="385" y="98" font-size="11" fill="#9b99b8">chart paper, curved</text>
              <rect x="355" y="120" width="60" height="60" rx="4" fill="#7a1f2b" stroke="#c9a227" stroke-width="2"/>
              <text x="385" y="155" font-size="12">Box</text>
              <rect x="560" y="60" width="14" height="200" rx="3" fill="#e2e0f0" fill-opacity="0.7"/>
              <text x="584" y="146" text-anchor="start">Foam board</text>
              <text x="584" y="164" text-anchor="start" font-size="11" fill="#9b99b8">bounces light back</text>
              <text x="584" y="180" text-anchor="start" font-size="11" fill="#9b99b8">to fill shadows</text>
              <line x1="554" y1="150" x2="422" y2="150" stroke="#fcd34d" stroke-width="1.5" stroke-dasharray="6 5" marker-end="url(#ppv4a)"/>
              <rect x="372" y="292" width="26" height="42" rx="5" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <line x1="385" y1="288" x2="385" y2="186" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ppv4b)"/>
              <text x="410" y="310" text-anchor="start" fill="#c4b5fd">Phone on tripod</text>
              <text x="410" y="328" text-anchor="start" font-size="11" fill="#9b99b8">60 cm away, 1x lens</text>
              <text x="20" y="320" text-anchor="start" font-size="12" fill="#9b99b8">Room lights off</text>
              <text x="20" y="338" text-anchor="start" font-size="12" fill="#9b99b8">Shoot 10 am to 12 noon</text>
            </g>
          </svg>
          <figcaption>Asha's kitchen-table studio, seen from above. One window, one white sweep, one white board and a tripod.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Light: the most important part</h3>
          <p>Light decides how sharp your photo is and how true the colours are. Soft light is best for products. Soft light means gentle shadows with blurry edges.</p>
          <ul class="lc-list">
            <li><strong>Use a big window.</strong> Put the product near it, with the light coming from the side.</li>
            <li><strong>Avoid direct sun.</strong> It makes hard, dark shadows. Hang a thin white curtain or tracing paper over the window.</li>
            <li><strong>Turn off room lights.</strong> Mixing daylight with a yellow bulb or a white tube light gives strange colour casts (an unwanted tint over the whole photo).</li>
            <li><strong>Do not use the phone flash.</strong> It makes shiny spots and flat, harsh light.</li>
            <li><strong>Fill the dark side.</strong> Put a white foam board on the side away from the window. It bounces light back into the shadows.</li>
          </ul>
          <p><strong>Colour check.</strong> Imran at Zari &amp; Co shot a teal kurta under the office tube light. In the photos it looked blue. A buyer would have received a different colour. He moved to window light and put a plain white card in the first frame. If the card looks white in the photo, the colours are usually close. He then held the real kurta next to the screen in daylight to compare.</p>
        </div>
        <div class="lc-card">
          <h3>A low-budget studio</h3>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Its job</th><th>Low-cost option</th></tr></thead>
            <tbody>
              <tr><td>White background</td><td>A clean, even background that is easy to remove later</td><td>White chart paper, curved from the wall down onto the table (a "sweep"), so there is no line behind the product</td></tr>
              <tr><td>Reflector</td><td>Bounces light into shadows</td><td>White foam board or thick white card</td></tr>
              <tr><td>Diffuser</td><td>Softens hard sunlight</td><td>Thin white curtain, tracing paper or butter paper</td></tr>
              <tr><td>Phone holder</td><td>Keeps every photo sharp and at the same angle</td><td>A small phone tripod, or a stack of books</td></tr>
              <tr><td>Tape and clips</td><td>Hold the sweep in place and mark positions</td><td>Masking tape and binder clips</td></tr>
              <tr><td>Cleaning kit</td><td>Removes dust and fingerprints before the shoot</td><td>Soft cloth, a clean small brush, cotton gloves</td></tr>
            </tbody>
          </table>
          <p>Asha spent under ₹1,500 in total on her setup (a made-up example). Prices vary by city and shop. For bigger items like clothes, Imran uses a plain light wall, or white cloth on a stand, and a model or a mannequin.</p>
        </div>
        <div class="lc-card">
          <h3>Phone settings that help</h3>
          <ul class="lc-list">
            <li><strong>Clean the lens</strong> with a soft cloth. A greasy lens makes photos hazy.</li>
            <li><strong>Use the main 1x lens</strong> and move the phone closer instead of zooming. Digital zoom makes photos soft. The ultra-wide lens can bend the box's straight edges.</li>
            <li><strong>Tap to focus</strong> on the product, then lock focus and exposure (brightness). On many phones, you press and hold the screen. Check your phone's help pages.</li>
            <li><strong>Turn on grid lines</strong> to keep the box straight.</li>
            <li><strong>Turn off beauty filters and automatic "AI enhance".</strong> They can make sweets shinier or fabric brighter than the real thing.</li>
            <li><strong>Avoid portrait (blur) mode</strong> for main images. It can blur or cut the product's edges.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Keep every photo consistent</h3>
          <p>When all your photos use the same light, angle and background, your store looks professional. It also makes later AI edits and image tests fairer. Write a setup sheet and reuse it for every product.</p>
          <pre><code>SWEET CRUMBS SETUP SHEET (made-up example)
        Light:      window on the left, room lights off
        Time:       10 am to 12 noon
        Background: white chart paper sweep
        Reflector:  white foam board on the right
        Phone:      on tripod, 60 cm from the box, 1x lens
        Angle:      front 45° for main, straight down for flat lay
        Focus:      tap on the logo, lock focus and exposure
        Marks:      tape marks for the box and the tripod legs
        First shot: white card in frame, for the colour check
        Product:    fresh pieces from today's batch, dust brushed off</code></pre>
          <p>One more honesty rule for food: choose neat pieces from a normal batch. Do not make special, bigger pieces just for the camera. The photo must match what buyers receive.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Asha's first shoot</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="First try">Asha shoots the open box on the kitchen counter at 7 pm, under the tube light and a yellow bulb.</li>
              <li data-kind="warn" data-label="Problem">The maroon box looks brown. The ladoos look orange. There is a hard shadow on one side.</li>
              <li data-kind="user" data-label="Asha asks AI">She uploads the test photo to an AI assistant: "This is a test product photo. List what is wrong with the light, colour, background and sharpness. Suggest low-cost fixes."</li>
              <li data-kind="answer" data-label="AI reply">"The colour looks warm, maybe from mixed room lights. The right side is dark. The background has a visible line. Try soft window light, a reflector and a curved paper sweep."</li>
              <li data-kind="check" data-label="Asha checks">She holds the real box next to the photo. The AI is right about the colour. She decides for herself what to change.</li>
              <li data-kind="tool" data-label="Second try">Next morning at 10 am: window light, room lights off, white sweep, foam board, phone on a tripod, white card in the first frame.</li>
              <li data-kind="result" data-label="Result">The card looks white. The maroon matches the real box. The shadows are soft.</li>
              <li data-kind="check" data-label="Decision">She saves these settings in her setup sheet, so every future product looks the same.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a low-budget phone studio for your room and product. Describe your own space, or use Asha's as it is.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a product photography coach for small Indian sellers who shoot on a phone.

        My product: [a maroon gift box of sweets, 20 x 20 x 6 cm, with a shiny gold foil logo and a satin ribbon]
        My space: [a kitchen in a flat, one big window facing east, a table 120 x 60 cm, white tube light and a yellow bulb]
        My phone: [a recent Android phone with a main lens and an ultra-wide lens]
        My budget: [under Rs 1,500]

        Please give me:
        1. A shopping list of low-cost studio items, with what each one is for.
        2. A step-by-step setup for my space: where the product, background, reflector and phone go.
        3. The best time of day to shoot, and what to do on a cloudy day.
        4. Phone settings to use and to avoid.
        5. Tips for my product's hard parts (for example shiny foil, a ribbon, dark colours).
        6. A one-page setup sheet I can reuse for every product.

        Use simple English. Do not give exact prices; say "check local prices".</pre>
            <ul class="ai-try-checks">
              <li>The setup uses soft window light and turns off mixed room lights.</li>
              <li>It gives a fix for shiny or reflective parts, such as moving the reflector or the angle.</li>
              <li>It does not suggest filters or "enhance" modes that change the product's real look.</li>
              <li>The setup sheet has fixed distance, angle, time and marks, so photos stay consistent.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good light matters more than an expensive camera. Use soft window light, a white sweep and a tripod, and write your setup down, so every photo is sharp, true to colour and consistent.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Background Removal and Clean Main Images</h1>
        </div>
        <p class="lc-lead">Most marketplaces want the main image to show the product alone on a plain white background. AI background removal can do this in seconds. But the tool can also cut off a ribbon, leave grey edges or give you a background that only looks white. In this lesson, you will learn what a clean main image needs and how to remove a background safely. You will also learn how to check the result before you upload it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 360" role="img" aria-label="Before and after. Before: a 2,000 pixel square photo where the product is 1,500 pixels wide, so it fills 75 percent. An arrow says crop closer. After: a 1,765 pixel square where the same product fills 85 percent, on pure white RGB 255, 255, 255.">
            <defs><marker id="ppv5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="40" y="40" width="240" height="240" fill="#ffffff" stroke="#4b4a78"/>
              <rect x="70" y="82" width="180" height="156" rx="4" fill="#7a1f2b" stroke="#c9a227" stroke-width="2"/>
              <rect x="88" y="100" width="144" height="120" rx="3" fill="#c9a227" fill-opacity="0.35"/>
              <text x="160" y="305" font-weight="700" fill="#fcd34d">Before: 2,000 px square</text>
              <text x="160" y="325" font-size="12">Product 1,500 px = 75%</text>
              <line x1="296" y1="160" x2="462" y2="160" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ppv5a)"/>
              <text x="380" y="148">Crop closer</text>
              <text x="380" y="182" font-size="11" fill="#9b99b8">then check the size</text>
              <rect x="480" y="54" width="212" height="212" fill="#ffffff" stroke="#10b981" stroke-width="2"/>
              <rect x="496" y="82" width="180" height="156" rx="4" fill="#7a1f2b" stroke="#c9a227" stroke-width="2"/>
              <rect x="514" y="100" width="144" height="120" rx="3" fill="#c9a227" fill-opacity="0.35"/>
              <text x="586" y="305" font-weight="700" fill="#6ee7b7">After: 1,765 px square</text>
              <text x="586" y="325" font-size="12">Product 1,500 px = 85%</text>
              <text x="586" y="345" font-size="12" fill="#9b99b8">Pure white: 255, 255, 255</text>
            </g>
          </svg>
          <figcaption>The product stays exactly the same size. You only remove empty background around it, so it fills more of the frame.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a clean main image needs</h3>
          <p>Each marketplace writes its own main image rules. Many of them ask for the same basic things:</p>
          <ul class="lc-list">
            <li>The real product alone, showing only what the buyer gets</li>
            <li>A pure white background</li>
            <li>The product filling most of the frame</li>
            <li>A sharp, well-lit photo with true colours</li>
            <li>No added text, logos, badges, watermarks, borders or props</li>
          </ul>
          <p>For example, Amazon's main image rules have long asked for pure white (RGB 255, 255, 255: the colour code for full white) and for the product to fill about 85% of the image. Flipkart, Meesho and Google Shopping have their own rules. Rules also differ by category, and they change. Always check the current rules in Seller Central, Seller Hub or the platform's help pages before you upload.</p>
          <p>On your own Shopify store, you set the style yourself. Still, the same clean white main image makes your store look tidy. It also lets you reuse one file everywhere.</p>
        </div>
        <div class="lc-card">
          <h3>Remove the background, then check the edges</h3>
          <p>Background removal is built into many phone photo apps, design apps, online editors and some store apps. You upload a photo, and the tool cuts the product out. Then you place it on white.</p>
          <p>The tool guesses where the product ends. It often gets hard parts wrong. Zoom in to 200% and check these places:</p>
          <table class="lc-table">
            <thead><tr><th>Where to look</th><th>Common problem</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>Ribbon ends and loops</td><td>Part of the ribbon is cut off, or old background shows inside a loop</td><td>Use the tool's restore or erase brush on that part</td></tr>
              <tr><td>All the edges</td><td>A halo: a thin grey or coloured line around the product</td><td>Shrink or soften the edge a little in the tool</td></tr>
              <tr><td>Gaps between sweets</td><td>The tool removes parts of the kraft paper tray</td><td>Restore the tray. Check all 12 compartments.</td></tr>
              <tr><td>Gold foil logo</td><td>The shiny logo is blurred or partly erased</td><td>Restore it from the original photo</td></tr>
              <tr><td>The background</td><td>It looks white but is really light grey</td><td>Set it to pure white and check again</td></tr>
            </tbody>
          </table>
          <p><strong>How to check the white:</strong> use the colour picker (eyedropper) in your photo editor. Click on the corners and edges of the background. Each one should read 255, 255, 255 (or #FFFFFF). A value like 246, 246, 246 looks white on screen, but it is light grey.</p>
          <p><strong>Shadows:</strong> a soft, natural shadow under the product can look more real than a "floating" box. Some platforms allow it in the main image. Check the current rules first.</p>
          <p>Do not let the tool "enhance" the product. Background removal should change only the background. If the sweets look shinier, or the maroon looks brighter, go back to the original photo.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: how much of the frame does the product fill?</h3>
          <p><strong>Frame fill</strong> is how much of the image the product takes up. Measure the product's longest side in pixels. Your editor shows this when you select or crop.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Calculation</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Asha's photo is a 2,000 px square. The open box is 1,500 px wide.</td><td>1,500 ÷ 2,000</td><td>75% fill: too much empty space</td></tr>
              <tr><td>She wants about 85% fill. What square size does she need?</td><td>1,500 ÷ 0.85 = 1,764.7</td><td>Crop to a 1,765 px square</td></tr>
              <tr><td>Check the answer</td><td>1,500 ÷ 1,765</td><td>85.0% fill</td></tr>
            </tbody>
          </table>
          <p>Keep the product in the centre when you crop. Never stretch or enlarge the product to fill the frame. That changes its shape.</p>
          <p>After cropping, the image is smaller. Check it is still big enough for the platform's size and zoom rules. If it is too small, reshoot from closer. AI "upscaling" (making an image bigger) can invent small details that are not real, so check it very carefully.</p>
        </div>
        <div class="lc-card">
          <h3>Save and name your files well</h3>
          <ul class="lc-list">
            <li><strong>Keep the original photo.</strong> Never edit your only copy.</li>
            <li><strong>Use clear file names</strong>, for example <code>SC-DIWALI-12_01_main.jpg</code> and <code>SC-DIWALI-12_07_label.jpg</code>. Here SC-DIWALI-12 is the product's SKU (stock keeping unit: your own product code).</li>
            <li><strong>Export as JPEG or PNG</strong> in sRGB colour (the standard colour setting for the web), unless the platform asks for something else.</li>
            <li><strong>Add a line to your edit log:</strong> "Main image: background removed, set to white, cropped to 85%. Product unchanged."</li>
          </ul>
          <p>You can ask an AI assistant to write a checklist from the platform's help page. Paste the rule text in yourself, and compare the checklist with the source. Do not trust a list of rules that the AI wrote from memory.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: ready for the main image?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Asha has seven images. Decide what to do with each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ready" data-label="Ready as main image"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix before upload"></div>
              <div data-sorter-target="bucket" data-bucket="gallery" data-label="Gallery only"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ready" data-why="Pure white, good fill, all 12 pieces visible and nothing added.">Open box on 255, 255, 255 white, filling about 85%, all 12 pieces visible</li>
              <li data-bucket="fix" data-why="It looks white but is light grey. Set it to pure white.">The colour picker shows the background as 246, 246, 246</li>
              <li data-bucket="fix" data-why="The ribbon is part of the product. Restore it from the original photo.">The tool cut off the end of the gold ribbon</li>
              <li data-bucket="fix" data-why="Main images usually must not have added text. Also, only show a discount if it is real.">A red &quot;Diwali Offer&quot; sticker added to the corner</li>
              <li data-bucket="fix" data-why="The product no longer looks real. Go back to the original photo and edit only the background.">&quot;AI enhance&quot; made the ladoos shinier than the real ones</li>
              <li data-bucket="gallery" data-why="Scenes with props belong in the gallery. The diyas must not look included.">The box on a festive table with brass diyas</li>
              <li data-bucket="gallery" data-why="Text and measurements help buyers, but main images usually must not have text.">A size graphic showing 20 x 20 x 6 cm</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check a main image plan and do the crop maths. Use your own numbers, or keep the example ones.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an e-commerce image specialist who helps Indian sellers prepare main images.

        Product: [a maroon Diwali gift box of 12 sweets, with a gold ribbon and a gold foil logo]
        Platforms: [Amazon, Flipkart, own Shopify store]
        My photo: [3,000 x 3,000 px, shot on a white paper sweep. The product's longest side is 2,000 px.]
        Background removal tool result: [the ribbon tail looks cut, there is a thin grey line on the left edge, and the background reads 248, 248, 248 in my colour picker]

        Please:
        1. Calculate how much of the frame the product fills now. Show the working.
        2. Calculate the square crop size for about 85% fill. Show the working and round to whole pixels.
        3. List each problem in my result, why it matters, and how to fix it.
        4. Give me a 10-point checklist for a clean main image.
        5. Say which details I must confirm in each platform's current image rules.

        Rules: Do not state exact platform rules as facts; write "check current rules". Never suggest changing the product itself. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The fill maths is right: 2,000 ÷ 3,000 = 66.7%.</li>
              <li>The crop is right: 2,000 ÷ 0.85 = 2,352.9, so about 2,353 px.</li>
              <li>It says 248, 248, 248 is not pure white and must be fixed.</li>
              <li>Platform rules are marked "check current rules", not stated as fixed facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can remove a background in seconds, but it cannot tell whether the result is right. Zoom in, check the edges and the white value, crop without stretching, and check the platform's current rules.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">AI Lifestyle and Scene Images</h1>
        </div>
        <p class="lc-lead">A lifestyle image shows your product in a real-looking setting, such as a Diwali table or an office desk. It helps buyers imagine the product in their own life. AI tools can build these scenes without a costly studio shoot. In this lesson, you will learn to write a scene brief, give clear instructions to an image tool, and check the result. The main rule: the scene can change, but the product must stay exactly as it is.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Asha's five-step workflow for gallery image 8: real photo, scene brief, AI makes the background only, compare with the original, then add to the gallery and log the edit. A panel lists what must stay exactly the same: 12 pieces, 4 sweet shapes, maroon colour, gold logo, ribbon and real size. Below, the safer method keeps the real cut-out on an AI background, and the riskier method lets AI redraw the whole photo.">
            <defs><marker id="ppv6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#9b99b8">Asha's workflow for gallery image 8</text>
              <rect x="12" y="40" width="128" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="76" y="66" font-weight="700" fill="#93c5fd">1. Real photo</text>
              <text x="76" y="87" font-size="11" fill="#9b99b8">IMG_2041.jpg</text>
              <rect x="164" y="40" width="128" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="228" y="66" font-weight="700" fill="#c4b5fd">2. Scene brief</text>
              <text x="228" y="87" font-size="11" fill="#9b99b8">props, light, mood</text>
              <rect x="316" y="40" width="128" height="62" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="66" font-weight="700" fill="#67e8f9">3. AI scene</text>
              <text x="380" y="87" font-size="11" fill="#9b99b8">background only</text>
              <rect x="468" y="40" width="128" height="62" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="532" y="66" font-weight="700" fill="#fcd34d">4. Compare</text>
              <text x="532" y="87" font-size="11" fill="#9b99b8">zoom, count, colour</text>
              <rect x="620" y="40" width="128" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="684" y="66" font-weight="700" fill="#6ee7b7">5. Gallery 8</text>
              <text x="684" y="87" font-size="11" fill="#9b99b8">log the edit</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ppv6a)">
                <line x1="142" y1="71" x2="160" y2="71"/>
                <line x1="294" y1="71" x2="312" y2="71"/>
                <line x1="446" y1="71" x2="464" y2="71"/>
                <line x1="598" y1="71" x2="616" y2="71"/>
              </g>
              <rect x="12" y="124" width="736" height="84" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="148" font-weight="700" fill="#6ee7b7">Must stay exactly the same as the real box</text>
              <g font-size="12">
                <rect x="22" y="162" width="110" height="32" rx="16" fill="#27274e" stroke="#4b4a78"/>
                <text x="77" y="183">12 pieces</text>
                <rect x="144" y="162" width="110" height="32" rx="16" fill="#27274e" stroke="#4b4a78"/>
                <text x="199" y="183">4 sweet shapes</text>
                <rect x="266" y="162" width="110" height="32" rx="16" fill="#27274e" stroke="#4b4a78"/>
                <text x="321" y="183">maroon colour</text>
                <rect x="388" y="162" width="110" height="32" rx="16" fill="#27274e" stroke="#4b4a78"/>
                <text x="443" y="183">gold logo</text>
                <rect x="510" y="162" width="110" height="32" rx="16" fill="#27274e" stroke="#4b4a78"/>
                <text x="565" y="183">ribbon</text>
                <rect x="632" y="162" width="110" height="32" rx="16" fill="#27274e" stroke="#4b4a78"/>
                <text x="687" y="183">real size</text>
              </g>
              <rect x="12" y="226" width="360" height="82" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="192" y="254" font-weight="700" fill="#6ee7b7">Safer: real cut-out + AI background</text>
              <text x="192" y="276" font-size="12" fill="#9b99b8">The product pixels are not touched.</text>
              <text x="192" y="295" font-size="12" fill="#9b99b8">Best for gallery scenes.</text>
              <rect x="388" y="226" width="360" height="82" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="568" y="254" font-weight="700" fill="#f9a8d4">Riskier: AI redraws the whole photo</text>
              <text x="568" y="276" font-size="12" fill="#9b99b8">The product may be redrawn.</text>
              <text x="568" y="295" font-size="12" fill="#9b99b8">Check every detail, or start again.</text>
            </g>
          </svg>
          <figcaption>Start from a real photo, let AI change only the setting, and compare the result with the original before you use it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a lifestyle image is for</h3>
          <p>A main image shows the product alone on white. A lifestyle image (also called a scene image) shows the same product in a setting. It answers questions like "How will it look on my table?" or "Is it good enough to gift?"</p>
          <p>Lifestyle images belong in the gallery, not in the main image slot. Asha's shot list has one: gallery image 8, a festive table scene. She also has ideas for more scenes.</p>
          <table class="lc-table">
            <thead><tr><th>Scene idea</th><th>Buyer question</th><th>How to make it</th><th>Risk</th></tr></thead>
            <tbody>
              <tr><td>Box on a Diwali table with diyas and marigolds</td><td>How will it look at Diwali?</td><td>Real photo of the box, AI background</td><td>Medium: props may look included</td></tr>
              <tr><td>Closed box on an office desk, for company gifting</td><td>Is it smart enough for clients?</td><td>Real photo of the closed box, AI background</td><td>Medium: the scale may look wrong</td></tr>
              <tr><td>Box handed from one person to another</td><td>Does it feel like a special gift?</td><td>A real photo with real hands is safer</td><td>High: AI hands often look wrong</td></tr>
            </tbody>
          </table>
          <p>Props are the extra items in a scene, such as diyas or flowers. They are not sold with the box. If a buyer could think they are included, write "Props not included" in the description or on the image.</p>
        </div>
        <div class="lc-card">
          <h3>Two ways to make a scene</h3>
          <p><strong>Method 1: real cut-out on an AI background.</strong> You remove the background from your real photo. Then an AI tool creates a new background around it. Many design apps and store apps call this an "AI background" or "product scene" feature. The product pixels (the tiny dots that make up the product in the photo) stay the same. This is the safer method.</p>
          <p><strong>Method 2: AI edits the whole photo from a prompt.</strong> You upload the photo and describe the scene. The tool may redraw everything, including your product. It can add sweets, change the colour or break the logo. Use it only if you check every detail.</p>
          <p><strong>Never:</strong> ask a tool to create the product from words alone, such as "a maroon gift box with 12 Indian sweets". That is a picture of a product that does not exist. It must never go on a listing.</p>
          <p>Two things make a scene look real:</p>
          <ul class="lc-list">
            <li><strong>Matching light.</strong> Asha shot the box with window light from the left. The scene light must also come from the left. The box also needs a soft shadow under it, or it seems to float.</li>
            <li><strong>Real scale.</strong> A small clay diya is much smaller than a 20 cm box. If the AI draws diyas as big as the box, the box looks tiny. If it draws huge diyas behind a small box, the buyer may expect a bigger box.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Write a scene brief first</h3>
          <p>A scene brief is a short written plan for one image. It tells the tool, or a designer, what to make and what not to touch. Asha writes her brief before she opens any tool.</p>
          <pre><code>SCENE BRIEF: Gallery 8, SKU SC-DIWALI-12
        Source photo: IMG_2041.jpg (real photo, front 45°,
                      window light from the left)
        Purpose:      show how the box looks on a Diwali table
        Setting:      warm wood table, cream linen cloth
        Props:        3 brass diyas, marigold flowers, a small
                      rangoli, behind and to the right of the box
                      (props not included, never in front of the box)
        Light:        soft, warm evening light from the left,
                      soft shadow under the box
        Colours:      maroon, gold, cream
        Keep exact:   box, lid, 12 pieces, shapes, colours,
                      gold logo, ribbon, size
        Never add:    sweets, silver foil, nuts, text, badges,
                      people, extra boxes, gift bags
        Use:          gallery only, square image</code></pre>
          <p>Then turn the brief into an instruction for the image tool. Compare these two:</p>
          <pre><code>Weak prompt:
        Diwali vibes, premium, luxury, make it pop.

        Better prompt:
        Keep the gift box, the 12 sweets, the gold logo and the
        ribbon exactly as they are in my photo. Do not change
        their size, shape, colour or position. Place the box on
        a warm wood table with a cream linen cloth. Add 3 small
        brass diyas and marigold flowers behind and to the right
        of the box. Soft warm light from the left, with a soft
        shadow under the box. No text, no people, no extra
        sweets, no other boxes.</code></pre>
          <p>Words like "premium" and "make it pop" invite the tool to "improve" your product. Plain, exact words give you fewer surprises.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: check every result</h3>
          <p>Asha made 6 versions of the scene. She zoomed in to 200% and checked each one against the original photo.</p>
          <table class="lc-table">
            <thead><tr><th>Version</th><th>12 pieces?</th><th>Logo and colour</th><th>Props and scale</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Yes</td><td>Correct</td><td>Diyas behind, real size</td><td>Pass</td></tr>
              <tr><td>2</td><td>No, 14</td><td>Correct</td><td>Correct</td><td>Reject</td></tr>
              <tr><td>3</td><td>Yes</td><td>Logo reads "Sweet Crurnbs"</td><td>Correct</td><td>Reject</td></tr>
              <tr><td>4</td><td>Yes</td><td>Box looks orange-red, not maroon</td><td>Correct</td><td>Reject</td></tr>
              <tr><td>5</td><td>Yes</td><td>Correct</td><td>A second box behind it looks included</td><td>Reject</td></tr>
              <tr><td>6</td><td>Yes</td><td>Correct</td><td>Diyas behind, real size</td><td>Pass</td></tr>
            </tbody>
          </table>
          <p>Only 2 of the 6 versions passed (2 ÷ 6 = about 33%). This is normal. Plan time to make several versions and reject most of them. Asha chose version 6. She added "Props not included" to the description and a line to her edit log.</p>
          <p>Clothes have the same risk. Imran at Zari &amp; Co tried an AI scene for the teal kurta set flat lay. The tool changed the pattern of the zari border and made the teal look greener. He rejected it. A buyer would have received a different-looking dupatta.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what can the scene change?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Asha is checking her festive table scene. Sort each detail into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep exactly as real"></div>
              <div data-sorter-target="bucket" data-bucket="change" data-label="OK to change in the scene"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never add"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="The buyer receives exactly 12 pieces. The count and positions must match the real box.">The 12 pieces and where they sit in the tray</li>
              <li data-bucket="keep" data-why="Colour is part of the product. A different maroon means a different-looking box.">The maroon colour of the box</li>
              <li data-bucket="change" data-why="The table is only the setting. It is not part of the product.">The wooden table and the cream cloth</li>
              <li data-bucket="change" data-why="Props can change, but they must look like real sizes and must not look included.">Brass diyas and marigolds behind the box</li>
              <li data-bucket="change" data-why="The mood light can change, but it should come from the same side as in the real photo.">Warm evening light from the left</li>
              <li data-bucket="never" data-why="Sweet Crumbs does not use silver varq. Adding it shows a product that does not exist.">Silver foil (varq) on the kaju katli</li>
              <li data-bucket="never" data-why="It is a false claim. Badges and ratings must never be invented.">A gold &quot;Bestseller&quot; badge in the corner</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write scene briefs and image tool prompts for your product. Use your own product facts, or keep Asha's example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an art director who makes honest lifestyle images for small Indian online sellers.

        Product: [Sweet Crumbs Diwali Mithai &amp; Cookie Gift Box. Maroon rigid box, 20 x 20 x 6 cm, gold foil logo, gold satin ribbon. 12 pieces: 3 kaju katli (no silver foil), 3 besan ladoo, 3 nankhatai, 3 atta jaggery cookies.]
        My real photo: [open box, lid leaning behind, front 45°, window light from the left, white background]
        Brand style: [maroon, gold and cream; warm but true colours]
        Buyers: [families and companies buying Diwali gifts]

        Please:
        1. Suggest 3 scene ideas. For each, give the buyer question it answers.
        2. For each scene, write a scene brief: setting, props, light direction, colours, what must stay exact, what must never be added.
        3. Write one image tool prompt for each scene. The prompt must keep the product exactly as in my photo and change only the background.
        4. Give me a 6-point checklist to compare each result with my original photo.
        5. Say where I should write "Props not included".

        Rules: Scenes are for gallery images only, never the main image. Never suggest creating the product from words. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every prompt says to keep the product, count, colour and logo exactly as in the photo.</li>
              <li>The light direction in each scene matches the real photo (from the left).</li>
              <li>Props are placed behind or beside the product, at a real size, and none could look included.</li>
              <li>The checklist includes counting the pieces and reading the logo at full zoom.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A lifestyle image may change the table, the props and the light, but never the product. Start from a real photo, write a scene brief, make several versions, and keep only the ones that match the real product at full zoom.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Editing and Retouching Honestly</h1>
        </div>
        <p class="lc-lead">Retouching means small edits after the shoot: fixing colour, removing dust, evening out light. AI tools make these edits fast. They also make it easy to go too far, for example making sweets shinier or a box brighter than the real one. In this lesson, you will learn to fix colour so it matches the real product, and to clean up a photo with AI tools safely. You will also learn where the line is between an honest edit and a misleading one.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three columns of edits. Clean up freely: dust on the lid, crumbs on the tray, a stray hair, fingerprints on the foil, creases in the paper. Correct to match the real product: white balance, brightness, straighten and crop, soft shadow, even light. Never: add or remove pieces, make sweets bigger or glossier, change the box colour, edit or blur the label, add false text or badges.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="16" width="236" height="236" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <rect x="12" y="16" width="236" height="46" rx="10" fill="#10b981" fill-opacity="0.18"/>
              <text x="130" y="36" font-weight="700" fill="#6ee7b7">Clean up freely</text>
              <text x="130" y="54" font-size="11" fill="#9b99b8">not part of the product</text>
              <g font-size="12" text-anchor="start">
                <text x="28" y="92">+ dust on the lid</text>
                <text x="28" y="122">+ crumbs on the tray</text>
                <text x="28" y="152">+ a stray hair</text>
                <text x="28" y="182">+ fingerprints on the foil</text>
                <text x="28" y="212">+ creases in the paper</text>
              </g>
              <rect x="262" y="16" width="236" height="236" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="262" y="16" width="236" height="46" rx="10" fill="#3b82f6" fill-opacity="0.18"/>
              <text x="380" y="36" font-weight="700" fill="#93c5fd">Correct to match</text>
              <text x="380" y="54" font-size="11" fill="#9b99b8">the real product in daylight</text>
              <g font-size="12" text-anchor="start">
                <text x="278" y="92">= white balance</text>
                <text x="278" y="122">= brightness</text>
                <text x="278" y="152">= straighten and crop</text>
                <text x="278" y="182">= soft natural shadow</text>
                <text x="278" y="212">= even out the light</text>
              </g>
              <rect x="512" y="16" width="236" height="236" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <rect x="512" y="16" width="236" height="46" rx="10" fill="#ec4899" fill-opacity="0.18"/>
              <text x="630" y="36" font-weight="700" fill="#f9a8d4">Never</text>
              <text x="630" y="54" font-size="11" fill="#9b99b8">it changes the product</text>
              <g font-size="12" text-anchor="start">
                <text x="528" y="92">x add or remove pieces</text>
                <text x="528" y="122">x bigger or glossier sweets</text>
                <text x="528" y="152">x change the box colour</text>
                <text x="528" y="182">x edit or blur the label</text>
                <text x="528" y="212">x add false text or badges</text>
              </g>
              <text x="380" y="284" font-size="12.5" fill="#9b99b8">Test: would a buyer be surprised when the box arrives?</text>
            </g>
          </svg>
          <figcaption>Fix the photo, not the product. If an edit would surprise the buyer when the parcel arrives, do not make it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where is the line?</h3>
          <p>An honest edit makes the photo look more like the real product. A misleading edit makes the product look better than it really is. One simple question helps: "Would a buyer be surprised when the box arrives?"</p>
          <table class="lc-table">
            <thead><tr><th>Asha's edit</th><th>Honest or misleading?</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Remove two crumbs that fell onto the kraft tray</td><td>Honest</td><td>Crumbs are not part of the product</td></tr>
              <tr><td>Fix a yellow colour cast so the maroon matches the real box</td><td>Honest</td><td>It brings the photo closer to the truth</td></tr>
              <tr><td>Make the besan ladoos 10% bigger</td><td>Misleading</td><td>Buyers will receive smaller pieces</td></tr>
              <tr><td>Add shine to the kaju katli</td><td>Misleading</td><td>The real sweet is not glossy</td></tr>
              <tr><td>Blur the allergen line on the label "to look cleaner"</td><td>Misleading and unsafe</td><td>Buyers with nut or gluten allergies need it</td></tr>
              <tr><td>Paint over a crack in one nankhatai</td><td>Do not edit</td><td>Swap in another normal piece and reshoot</td></tr>
            </tbody>
          </table>
          <p>Misleading images lead to complaints, returns and bad reviews. In India, the Consumer Protection (E-Commerce) Rules, 2020 and the ASCI advertising code both expect honest product claims and pictures. Marketplaces can also remove listings. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Colour accuracy: match the real product</h3>
          <p><strong>White balance</strong> is the setting that makes white things look white in a photo. When it is wrong, the whole photo gets a colour cast (an unwanted tint). Asha's white card helps her fix it.</p>
          <p>On a white or grey card, the three colour numbers R (red), G (green) and B (blue) should be almost equal. Use the colour picker in your photo editor to read them.</p>
          <table class="lc-table">
            <thead><tr><th>White card in the photo</th><th>R, G, B</th><th>What it means</th></tr></thead>
            <tbody>
              <tr><td>Before the fix</td><td>241, 229, 204</td><td>Blue is much lower than red, so the photo is too yellow</td></tr>
              <tr><td>After the white balance fix</td><td>236, 236, 234</td><td>The three numbers are almost equal, so the white is neutral</td></tr>
            </tbody>
          </table>
          <p>Most photo editors have a white balance picker. You click it on the white card, and the editor removes the cast from the whole photo. Some AI "auto colour" buttons do this too, but they guess. Always check the card numbers after the fix.</p>
          <p>Then compare the photo with the real product:</p>
          <ul class="lc-list">
            <li>Hold the real box next to your screen in daylight. The maroons should look the same.</li>
            <li>Turn off night mode or the blue-light filter on your screen. It makes everything look warmer.</li>
            <li>Check the photo on a phone too, because most buyers will see it there.</li>
            <li>Do not force every pixel to the brand colour code (#7A1F2B). Real photos have light and shadow, so the box is lighter in some places and darker in others.</li>
          </ul>
          <p>Imran at Zari &amp; Co had the opposite problem. An AI auto colour button made the teal kurta look greener. He undid it and fixed the white balance on his white card instead. Then he compared the photo with the real fabric at a window.</p>
        </div>
        <div class="lc-card">
          <h3>Clean up with AI tools, then check</h3>
          <p>AI remove tools (often called an eraser, remove or "generative fill" tool) let you brush over a spot. The tool then fills the area with pixels it guesses. The guess is usually good on a plain background. It can go wrong near the product.</p>
          <ul class="lc-list">
            <li>Removing a crumb next to a nankhatai can redraw the cookie's edge.</li>
            <li>Removing a hair that crosses the logo can change the letters.</li>
            <li>A one-click "enhance" or "beautify" can smooth, sharpen and brighten the sweets all at once.</li>
          </ul>
          <p>If your tool takes written instructions, be exact:</p>
          <pre><code>Weak prompt:
        Clean this photo and make it look perfect.

        Better prompt:
        Remove only the 2 crumbs on the kraft tray between the
        second and third rows, and the hair on the top-left
        corner of the lid. Do not change the sweets, the box
        colour, the gold logo, the ribbon or the label. Do not
        smooth, sharpen, brighten or add shine to anything.</code></pre>
          <p>After every edit, put the edited photo next to the original at 200% zoom. Look at each edited spot and at the product around it. If the product itself is damaged, such as a broken ladoo, do not paint it. Swap in another normal piece from the same batch and reshoot.</p>
        </div>
        <div class="lc-card">
          <h3>Keep the original and an edit log</h3>
          <p>Always keep the original photo. Save edits as a new file. Write every edit in your log, so you can show a marketplace or a buyer exactly what changed.</p>
          <table class="lc-table">
            <thead><tr><th>File</th><th>Edit</th><th>Reason</th><th>Checked by</th></tr></thead>
            <tbody>
              <tr><td>SC-DIWALI-12_01_main.jpg</td><td>White balance fixed with the white card (241, 229, 204 to 236, 236, 234)</td><td>Maroon now matches the real box</td><td>Asha, 13 Oct</td></tr>
              <tr><td>SC-DIWALI-12_03_topdown.jpg</td><td>Removed 2 crumbs on the tray and 1 hair on the lid</td><td>Not part of the product</td><td>Asha, 13 Oct</td></tr>
              <tr><td>SC-DIWALI-12_07_label.jpg</td><td>Straightened and cropped only. Text not edited.</td><td>The label must stay exact</td><td>Asha, 13 Oct</td></tr>
            </tbody>
          </table>
          <p>Never retouch the label text. The ingredients, allergens, net quantity (450 g), MRP (₹899), dates and FSSAI number must appear exactly as printed. If the label has a mistake, fix the real label and reshoot.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Asha's retouching session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Open the photo">Asha opens the original main photo in her photo editor. She saves a copy first.</li>
              <li data-kind="result" data-label="Colour picker">The white card reads 241, 229, 204. Blue is much lower than red.</li>
              <li data-kind="thought" data-label="Asha thinks">"The photo is too yellow. The box will look brown, not maroon."</li>
              <li data-kind="tool" data-label="White balance">She clicks the white balance picker on the card. The card now reads 236, 236, 234. The maroon matches the real box in daylight.</li>
              <li data-kind="user" data-label="Quick prompt">In the AI remove tool, she types: "Clean up the photo and make it look perfect."</li>
              <li data-kind="warn" data-label="Problem">The crumbs are gone. But the nankhatai look smoother and the ladoos look shinier than the real ones.</li>
              <li data-kind="user" data-label="Exact prompt">She undoes the edit and tries again: "Remove only the 2 crumbs on the tray. Do not change the sweets, colours, logo or label."</li>
              <li data-kind="check" data-label="Compare at 200%">Side by side with the original: only the crumbs changed. She counts 12 pieces. The label text is untouched.</li>
              <li data-kind="check" data-label="Log it">She adds two lines to her edit log and keeps the original file.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a list of planned edits and sort the honest ones from the misleading ones. Use your own edit list, or keep this one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a product photo editor who follows strict honesty rules for online listings in India.

        Product: [a maroon Diwali gift box of 12 sweets: kaju katli, besan ladoo, nankhatai, atta jaggery cookies. The label shows ingredients, allergens (cashew, milk, wheat), 450 g, MRP and dates.]

        Edits my team wants to make:
        [1. Remove dust on the lid.
        2. Make the ladoos look a bit bigger.
        3. Fix the yellow colour cast. The white card reads 241, 229, 204.
        4. Change the box to a brighter red so it stands out.
        5. Blur the allergen line on the label because it looks cluttered.
        6. Hide a small crack in one nankhatai.
        7. Remove a stray hair on the tray.]

        For each edit, make a table: Edit | Honest, Careful or Misleading | Why | How to do it (or what to do instead) | What to check after.
        Then write one edit log line for each honest edit.

        Rules: An edit is honest only if the photo still matches what the buyer receives. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Bigger ladoos, a brighter red box and a blurred allergen line are marked Misleading.</li>
              <li>For the crack, it says to swap in a normal piece and reshoot, not to paint over it.</li>
              <li>The colour fix uses the white card, aiming for almost equal R, G and B numbers.</li>
              <li>Each check says to compare with the original at full zoom.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fix the photo, not the product. Remove things that are not part of the product, and correct colour until it matches the real thing. Never change the size, shape, colour, count or label of what the buyer receives.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Infographics and Text on Images</h1>
        </div>
        <p class="lc-lead">Some buyer questions need words and numbers, not just a photo. What exactly is inside? How big is it? Which size fits me? An <strong>infographic</strong> is an image with short text, numbers or icons that answers one question at a glance. In this lesson, you will plan "what's inside" images, size graphics, size charts and comparison images. You will use AI to draft the text from real facts only, and you will make sure people can read it on a small phone.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Left: a full-size gallery infographic on cream with a maroon heading What's inside, four rows listing 3 of each sweet, and a maroon strip saying 12 pieces, 450 g. An arrow says on a phone, about one fifth size. Right: two small versions. One uses big, short maroon text and is readable. The other uses many lines of small gold text and is too hard to read. Maroon on cream has about 9 to 1 contrast; gold on cream only about 2 to 1.">
            <defs><marker id="ppv8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="24" width="250" height="250" rx="4" fill="#F6EFE3" stroke="#c9a227" stroke-width="2"/>
              <text x="145" y="62" font-size="20" font-weight="700" fill="#7A1F2B">What's inside</text>
              <g font-size="14" fill="#7A1F2B" text-anchor="start">
                <circle cx="46" cy="98" r="6" fill="#7A1F2B"/>
                <text x="60" y="103">3 x Kaju katli</text>
                <circle cx="46" cy="132" r="6" fill="#7A1F2B"/>
                <text x="60" y="137">3 x Besan ladoo</text>
                <circle cx="46" cy="166" r="6" fill="#7A1F2B"/>
                <text x="60" y="171">3 x Nankhatai</text>
                <circle cx="46" cy="200" r="6" fill="#7A1F2B"/>
                <text x="60" y="205">3 x Atta jaggery cookie</text>
              </g>
              <rect x="20" y="228" width="250" height="46" fill="#7A1F2B"/>
              <text x="145" y="257" font-weight="700" fill="#F6EFE3">12 pieces · 450 g</text>
              <text x="145" y="298" font-size="12" fill="#9b99b8">Gallery 3, full size: 2,000 px</text>
              <line x1="288" y1="150" x2="362" y2="150" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ppv8a)"/>
              <text x="324" y="136" font-size="12">on a phone</text>
              <text x="324" y="172" font-size="11" fill="#9b99b8">about 1/5 size</text>
              <rect x="390" y="44" width="120" height="120" rx="3" fill="#F6EFE3" stroke="#10b981" stroke-width="2"/>
              <rect x="402" y="56" width="96" height="13" fill="#7A1F2B"/>
              <rect x="402" y="82" width="74" height="8" fill="#7A1F2B"/>
              <rect x="402" y="98" width="80" height="8" fill="#7A1F2B"/>
              <rect x="402" y="114" width="72" height="8" fill="#7A1F2B"/>
              <rect x="402" y="130" width="90" height="8" fill="#7A1F2B"/>
              <rect x="390" y="146" width="120" height="18" fill="#7A1F2B"/>
              <text x="450" y="190" font-weight="700" fill="#6ee7b7">Big, short text</text>
              <text x="450" y="209" font-size="12" fill="#9b99b8">easy to read</text>
              <rect x="590" y="44" width="120" height="120" rx="3" fill="#F6EFE3" stroke="#ec4899" stroke-width="2"/>
              <g fill="#c9a227">
                <rect x="602" y="54" width="96" height="3"/>
                <rect x="602" y="63" width="90" height="3"/>
                <rect x="602" y="72" width="96" height="3"/>
                <rect x="602" y="81" width="84" height="3"/>
                <rect x="602" y="90" width="96" height="3"/>
                <rect x="602" y="99" width="92" height="3"/>
                <rect x="602" y="108" width="96" height="3"/>
                <rect x="602" y="117" width="80" height="3"/>
                <rect x="602" y="126" width="96" height="3"/>
                <rect x="602" y="135" width="88" height="3"/>
                <rect x="602" y="144" width="96" height="3"/>
                <rect x="602" y="153" width="70" height="3"/>
              </g>
              <text x="650" y="190" font-weight="700" fill="#f9a8d4">Small gold text</text>
              <text x="650" y="209" font-size="12" fill="#9b99b8">too hard to read</text>
              <rect x="390" y="232" width="320" height="64" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="550" y="258" font-size="12">Maroon on cream: about 9:1 contrast</text>
              <text x="550" y="280" font-size="12" fill="#f9a8d4">Gold on cream: about 2:1, too low</text>
            </g>
          </svg>
          <figcaption>An infographic is shown much smaller on a phone. Use one message, big short text and strong contrast between text and background.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Which infographics does a product need?</h3>
          <p>Infographics go in the gallery. Most marketplaces do not allow added text on the main image, so check the current rules. Each infographic should answer one buyer question from your shot list.</p>
          <table class="lc-table">
            <thead><tr><th>Infographic</th><th>Buyer question</th><th>Asha's or Imran's content</th><th>Source of the facts</th></tr></thead>
            <tbody>
              <tr><td>What's inside (gallery 3)</td><td>What exactly do I get?</td><td>Top-down photo, the 4 sweet names, "12 pieces · 450 g"</td><td>Recipe sheet and label</td></tr>
              <tr><td>Size graphic (gallery 4)</td><td>How big is the box?</td><td>Side photo with lines: 20 x 20 x 6 cm</td><td>Tape measure on the real box</td></tr>
              <tr><td>Freshness and allergens</td><td>Is it safe for me? How long does it last?</td><td>"Best within 10 days of manufacture" and "Contains cashew, milk, wheat"</td><td>The printed label</td></tr>
              <tr><td>Comparison</td><td>Which box should I buy?</td><td>Mini box vs Diwali box, side by side</td><td>Both product fact sheets</td></tr>
              <tr><td>Size chart (Zari &amp; Co)</td><td>Which size fits me?</td><td>Garment measurements for S to XL</td><td>Measuring the real garments</td></tr>
            </tbody>
          </table>
          <p>The text on an infographic is also a product claim. It must be exactly as true as the words in your description.</p>
        </div>
        <div class="lc-card">
          <h3>Every word must be true: start from a fact sheet</h3>
          <p>A fact sheet is a short list of checked facts about the product. Give it to the AI and tell it to use nothing else. Without it, AI tends to add attractive claims that are not true.</p>
          <pre><code>Weak prompt:
        Write 5 catchy feature callouts for my Diwali sweets box.

        Better prompt:
        Write 5 short callouts (max 5 words each) for a gallery
        infographic. Use ONLY these facts: 12 pieces (3 kaju
        katli, 3 besan ladoo, 3 nankhatai, 3 atta jaggery
        cookies), 450 g net, handmade in India, best within 10
        days of manufacture, contains cashew, milk and wheat,
        vegetarian. Do not add health claims, awards, ratings
        or "bestseller". List any fact you were unsure about.</code></pre>
          <p>Asha tried the weak prompt first. Here is how she checked the AI's draft against her fact sheet:</p>
          <table class="lc-table">
            <thead><tr><th>AI callout</th><th>Check</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>Handmade in India</td><td>True</td><td>Keep</td></tr>
              <tr><td>12 pieces, 450 g</td><td>True</td><td>Keep</td></tr>
              <tr><td>Made with pure desi ghee</td><td>The recipes use ghee and butter, so "pure desi ghee" is not true</td><td>Remove</td></tr>
              <tr><td>Stays fresh for 30 days</td><td>The shelf life is 10 days</td><td>Change to "Best within 10 days"</td></tr>
              <tr><td>No preservatives</td><td>Not tested or proven</td><td>Remove</td></tr>
            </tbody>
          </table>
          <p>Two of the five lines were fine as written. One more was fixed, and two were removed. This is why you check every line.</p>
        </div>
        <div class="lc-card">
          <h3>Size graphics, size charts and comparisons</h3>
          <p><strong>Size graphic.</strong> Draw measurement lines on the real side photo: 20 cm wide, 20 cm deep, 6 cm tall. Some buyers think in inches, so you can add "about 7.9 x 7.9 x 2.4 in". The working: 20 ÷ 2.54 = 7.87, and 6 ÷ 2.54 = 2.36. Never stretch the photo to make the box look taller.</p>
          <p><strong>Size chart.</strong> Imran measures the real Zari &amp; Co kurtas with a tape. He writes "Garment measurements" at the top, so buyers do not confuse them with body measurements.</p>
          <table class="lc-table">
            <thead><tr><th>Size</th><th>Bust (garment)</th><th>Kurta length</th></tr></thead>
            <tbody>
              <tr><td>S</td><td>38 in (96.5 cm)</td><td>46 in (116.8 cm)</td></tr>
              <tr><td>M</td><td>40 in (101.6 cm)</td><td>46 in (116.8 cm)</td></tr>
              <tr><td>L</td><td>42 in (106.7 cm)</td><td>46 in (116.8 cm)</td></tr>
              <tr><td>XL</td><td>44 in (111.8 cm)</td><td>46 in (116.8 cm)</td></tr>
            </tbody>
          </table>
          <p>AI can convert inches to centimetres for you. It can also make mistakes, so check each number with a calculator (inches x 2.54 = centimetres).</p>
          <p><strong>Comparison image.</strong> Compare your own products, not a competitor's. Asha also sells a smaller Diwali Mini Box. Her comparison image shows:</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Diwali Mini Box</th><th>Diwali Gift Box</th></tr></thead>
            <tbody>
              <tr><td>Pieces</td><td>8 (2 of each sweet)</td><td>12 (3 of each sweet)</td></tr>
              <tr><td>Net quantity</td><td>300 g</td><td>450 g</td></tr>
              <tr><td>Box size</td><td>15 x 15 x 5 cm</td><td>20 x 20 x 6 cm</td></tr>
              <tr><td>Good for</td><td>A small thank-you gift</td><td>A family gift</td></tr>
            </tbody>
          </table>
          <p>The prices are ₹599 and ₹899. That works out to almost the same price per 100 g: ₹599 ÷ 3 = ₹199.67, and ₹899 ÷ 4.5 = ₹199.78. So Asha does not write "Best value" on either box. She also keeps prices off the images, because marketplace prices can differ and change.</p>
        </div>
        <div class="lc-card">
          <h3>Make it readable on a small phone</h3>
          <p>On a phone, a 2,000 px gallery image is shown only about 400 px wide. That is about 1/5 of its full size. Text that is 60 px tall in your file looks only about 12 px tall on the screen.</p>
          <ul class="lc-list">
            <li><strong>One message per image.</strong> Use a heading and at most about 5 short lines.</li>
            <li><strong>Big text.</strong> A simple rule for this course: headings at least 100 px tall in a 2,000 px image, and other text at least 60 px.</li>
            <li><strong>Strong contrast</strong> (a big difference in brightness between text and background). Maroon on cream is about 9:1. Gold on cream is only about 2:1, which is too low. Gold on maroon is about 4.2:1, so use it only for big headings.</li>
            <li><strong>Keep text away from the edges.</strong> Apps may crop the image or place icons over the corners.</li>
            <li><strong>Test on a real phone.</strong> Ask someone who has not seen the image to read it out loud.</li>
          </ul>
          <p>A common guideline for readable text (from WCAG, the web accessibility guidelines) is a contrast of at least 4.5:1 for normal text. Also add alt text for each image where your platform allows it. For example: "Top-down view of the open box with 12 sweets: 3 kaju katli, 3 besan ladoo, 3 nankhatai, 3 atta jaggery cookies."</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build an honest infographic</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Asha's steps for the "What's inside" image in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Choose one buyer question: "What exactly is inside the box?"</li>
              <li data-order="2">Copy the facts from the recipe sheet and the printed label into a fact sheet</li>
              <li data-order="3">Ask AI for short callouts that use only the fact sheet</li>
              <li data-order="4">Remove or fix every line that is not on the fact sheet</li>
              <li data-order="5">Place the text on the real top-down photo in big maroon letters on cream</li>
              <li data-order="6">Look at the image at phone size and ask someone to read it out loud</li>
              <li data-order="7">Upload it as a gallery image and add alt text</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan the text for three gallery infographics from a fact sheet. Paste your own facts, or keep Asha's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an e-commerce designer who makes clear, honest infographics for Indian online shoppers on phones.

        Fact sheet (use ONLY these facts):
        [Sweet Crumbs Diwali Mithai &amp; Cookie Gift Box. 12 pieces: 3 kaju katli, 3 besan ladoo, 3 nankhatai, 3 atta jaggery cookies. Net quantity 450 g. Box 20 x 20 x 6 cm. Handmade in India. Best within 10 days of manufacture. Contains cashew, milk, wheat. Vegetarian. Brand colours: maroon #7A1F2B, gold #C9A227, cream #F6EFE3.]

        Plan 3 gallery infographics: 1. What's inside. 2. Box size. 3. Allergens and freshness.
        For each one give: the buyer question, the photo to use, a heading (max 4 words), up to 4 callouts (max 6 words each), the text and background colours, and alt text.

        Then:
        - Convert the box size to inches (1 in = 2.54 cm), rounded to 1 decimal place.
        - My team also wants to add "Sugar-free", "Bestseller" and "Fresh for a month". Say if each one is supported by the fact sheet.
        - Give 5 checks for reading the images on a small phone.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every callout matches the fact sheet. Nothing new is added.</li>
              <li>The inches are right: about 7.9 x 7.9 x 2.4 in.</li>
              <li>"Sugar-free", "Bestseller" and "Fresh for a month" are all rejected as unsupported.</li>
              <li>It avoids gold text on cream for small text, because the contrast is too low.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Text on an image is a product claim. Build every infographic from a checked fact sheet, give each image one message, and test it at phone size before you upload it.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Short Product Videos</h1>
        </div>
        <p class="lc-lead">A short video can show what photos cannot: the ribbon coming off, the lid lifting, the real size in someone's hands. For most products, 15 to 30 seconds is enough. In this lesson, you will learn the main types of product video, and how to write a script and a video shot list with AI. You will also add captions (text on screen) that are readable and true. You will film the real product, so the video shows exactly what the buyer gets.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A timeline of Asha's 15-second video. 0 to 2 seconds: hook, closed box, text Sweet Crumbs. 2 to 5 seconds: ribbon untied by hand, text Handmade in India. 5 to 8 seconds: lid lifted, all 12 pieces, text 12 pieces, 4 kinds. 8 to 12 seconds: slow pan over the 4 sweets, with the name of each sweet. 12 to 15 seconds: greeting card, then the closed box, text Best within 10 days. Sound is soft licensed music or none, and everything is real video of the real box.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#9b99b8">Asha's 15-second video: what you see and what you read</text>
              <g font-size="11.5" fill="#9b99b8">
                <text x="20" y="48">0 s</text>
                <text x="116" y="48">2 s</text>
                <text x="260" y="48">5 s</text>
                <text x="404" y="48">8 s</text>
                <text x="596" y="48">12 s</text>
                <text x="738" y="48">15 s</text>
              </g>
              <rect x="20" y="58" width="94" height="64" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="67" y="84" font-weight="700" fill="#93c5fd">Hook</text>
              <text x="67" y="104" font-size="11" fill="#9b99b8">closed box</text>
              <rect x="118" y="58" width="140" height="64" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="188" y="84" font-weight="700" fill="#c4b5fd">Ribbon</text>
              <text x="188" y="104" font-size="11" fill="#9b99b8">untied by hand</text>
              <rect x="262" y="58" width="140" height="64" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="332" y="84" font-weight="700" fill="#67e8f9">Lid lifted</text>
              <text x="332" y="104" font-size="11" fill="#9b99b8">all 12 pieces</text>
              <rect x="406" y="58" width="188" height="64" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="500" y="84" font-weight="700" fill="#6ee7b7">Slow pan</text>
              <text x="500" y="104" font-size="11" fill="#9b99b8">over the 4 sweets, close</text>
              <rect x="598" y="58" width="142" height="64" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="669" y="84" font-weight="700" fill="#fcd34d">Greeting card</text>
              <text x="669" y="104" font-size="11" fill="#9b99b8">then the closed box</text>
              <g font-size="11.5">
                <rect x="20" y="132" width="94" height="44" rx="8" fill="#27274e"/>
                <text x="67" y="158">Sweet Crumbs</text>
                <rect x="118" y="132" width="140" height="44" rx="8" fill="#27274e"/>
                <text x="188" y="158">Handmade in India</text>
                <rect x="262" y="132" width="140" height="44" rx="8" fill="#27274e"/>
                <text x="332" y="158">12 pieces, 4 kinds</text>
                <rect x="406" y="132" width="188" height="44" rx="8" fill="#27274e"/>
                <text x="500" y="158">The name of each sweet</text>
                <rect x="598" y="132" width="142" height="44" rx="8" fill="#27274e"/>
                <text x="669" y="158">Best within 10 days</text>
              </g>
              <text x="380" y="200" font-size="12" fill="#9b99b8">Top row: what the camera shows. Bottom row: the text on screen.</text>
              <rect x="20" y="214" width="720" height="70" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="242">Sound: soft music you have the rights to use, or no music</text>
              <text x="380" y="266" font-size="12" fill="#6ee7b7">Real video of the real box, at real speed. No AI in this video.</text>
            </g>
          </svg>
          <figcaption>Each part of the video answers one buyer question. The times add up: 2 + 3 + 3 + 4 + 3 = 15 seconds.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Types of short product video</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it shows</th><th>Example</th><th>Length</th></tr></thead>
            <tbody>
              <tr><td>Unboxing</td><td>What arrives and what it is like to open</td><td>Asha's ribbon, lid and 12 pieces</td><td>15 s</td></tr>
              <tr><td>How to use</td><td>How to use, store or care for the product</td><td>Imran shows 2 ways to drape the dupatta</td><td>20 to 30 s</td></tr>
              <tr><td>On-model or 360°</td><td>Fit, fall and movement, from all sides</td><td>Model walks, turns, then a zari close-up</td><td>15 to 20 s</td></tr>
              <tr><td>Size in hand</td><td>The real size next to hands or a person</td><td>The gift box lifted and turned in two hands</td><td>5 to 10 s</td></tr>
            </tbody>
          </table>
          <p>Each platform has its own rules for video length, file size, shape and format. Seller dashboards and social apps also change these often. Check the current rules in Seller Central, Seller Hub or the app's help pages. A vertical video (9:16, taller than wide) suits social apps. A listing may need a square or wide version.</p>
        </div>
        <div class="lc-card">
          <h3>Write a 15-second script</h3>
          <p>A video script for a product is a table: time, shot, text on screen and sound. Start with the product's facts, and give each few seconds one job.</p>
          <pre><code>Weak prompt:
        Write a viral video script for my Diwali sweets box.

        Better prompt:
        Write a 15-second product video script as a table:
        Time | Shot | Text on screen | Sound.
        Product: maroon gift box, 20 x 20 x 6 cm, gold ribbon,
        12 pieces (3 each of kaju katli, besan ladoo, nankhatai,
        atta jaggery cookies), 450 g, greeting card inside,
        best within 10 days. Show: ribbon untied, lid lifted,
        slow pan over all 12 pieces, the card. Text: max 5 words
        per shot. Use only these facts. No offers, no urgency.
        Make sure the times add up to exactly 15 seconds.</code></pre>
          <p>Here is Asha's checked script:</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Shot</th><th>Text on screen</th><th>Sound</th></tr></thead>
            <tbody>
              <tr><td>0 to 2 s (2 s)</td><td>Closed box on cream cloth. Hands come in.</td><td>Sweet Crumbs</td><td>Soft music starts</td></tr>
              <tr><td>2 to 5 s (3 s)</td><td>Hands untie the gold ribbon</td><td>Handmade in India</td><td>Music</td></tr>
              <tr><td>5 to 8 s (3 s)</td><td>Lid lifted, all 12 pieces seen from the front</td><td>12 pieces, 4 kinds</td><td>Music</td></tr>
              <tr><td>8 to 12 s (4 s)</td><td>Slow pan over each type of sweet</td><td>Kaju katli, then besan ladoo, then nankhatai, then atta jaggery cookie (1 s each)</td><td>Music</td></tr>
              <tr><td>12 to 15 s (3 s)</td><td>Greeting card lifted, then the closed box</td><td>Best within 10 days</td><td>Music ends</td></tr>
            </tbody>
          </table>
          <p>Add up the times: 2 + 3 + 3 + 4 + 3 = 15 seconds. AI often writes scripts that run too long, so check the total yourself. One second per sweet name is short. If people cannot read the names, make that part longer and trim somewhere else.</p>
        </div>
        <div class="lc-card">
          <h3>Film it: a video shot list and simple tips</h3>
          <p>Use the same studio as your photos: window light, room lights off, phone on a tripod. Your setup sheet keeps the colours the same as in your photos.</p>
          <ul class="lc-list">
            <li><strong>Film each shot 3 times.</strong> Then choose the best take (one recording of a shot).</li>
            <li><strong>Start 2 seconds early and stop 2 seconds late.</strong> This gives you room to cut.</li>
            <li><strong>Move slowly.</strong> Slow hands and slow pans look calm and are easy to follow.</li>
            <li><strong>Film at real speed.</strong> Do not speed up or slow down parts to hide anything.</li>
            <li><strong>Use a normal box and normal pieces</strong> from the same batch as your photos.</li>
            <li><strong>Clean hands, no rings or watch</strong>, so the product is the only thing to look at.</li>
          </ul>
          <p>Imran plans a 20-second on-model video for the Zari &amp; Co kurta set:</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Shot</th><th>Text on screen</th></tr></thead>
            <tbody>
              <tr><td>0 to 4 s</td><td>Model walks towards the camera</td><td>Teal cotton silk kurta set</td></tr>
              <tr><td>4 to 8 s</td><td>Model turns slowly: side, then back</td><td>Kurta, trousers and dupatta</td></tr>
              <tr><td>8 to 12 s</td><td>Close-up of the fabric</td><td>Cotton silk</td></tr>
              <tr><td>12 to 16 s</td><td>Close-up of the zari border on the dupatta</td><td>Zari border on dupatta</td></tr>
              <tr><td>16 to 20 s</td><td>Flat lay of all 3 pieces</td><td>Model is 5 ft 6 in, wears M</td></tr>
            </tbody>
          </table>
          <p>Five parts of 4 seconds each make 20 seconds. He films under window light and checks the teal against the real fabric, just as he did for the photos.</p>
        </div>
        <div class="lc-card">
          <h3>Captions and sound: readable and true</h3>
          <p>Many people watch videos with the sound off. So put the key facts on screen as captions. Keep each caption short and leave it up long enough to read twice.</p>
          <ul class="lc-list">
            <li><strong>Check every word against your facts.</strong> "Fresh for a month" is false when the shelf life is 10 days.</li>
            <li><strong>No false urgency.</strong> "Only 3 left!" when you have 200 boxes is a dark pattern (a design trick that pushes people to buy). India's CCPA guidelines on dark patterns (2023) list false urgency as one.</li>
            <li><strong>Be careful with prices.</strong> Marketplace prices can differ from your own store and can change. Show a price only where it is correct for that platform.</li>
            <li><strong>Use music you have the rights to.</strong> A film song downloaded from the internet is not yours to use. Use the app's licensed music library, or no music. Check its terms.</li>
            <li><strong>Keep text away from the edges.</strong> Apps put buttons and captions over the sides and bottom of vertical videos.</li>
          </ul>
          <p>AI can draft captions and subtitles (the spoken words shown as text). Read every line before you publish.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what goes in the video?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Asha's team suggested these ideas. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="use" data-label="Use in the video"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix first"></div>
              <div data-sorter-target="bucket" data-bucket="out" data-label="Leave out"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="use" data-why="It shows the real opening experience at real speed.">Hands untie the real gold ribbon at normal speed</li>
              <li data-bucket="use" data-why="It answers the main question, what is inside, at the right moment.">Caption &quot;12 pieces, 4 kinds&quot; as the lid lifts</li>
              <li data-bucket="fix" data-why="The shelf life is 10 days. Change it to &quot;Best within 10 days&quot;.">Caption &quot;Stays fresh for 30 days&quot;</li>
              <li data-bucket="fix" data-why="The music is not licensed. Use the app's licensed music or no music.">A popular film song downloaded from the internet</li>
              <li data-bucket="fix" data-why="The pan is too fast to read. Slow it down or make that part longer.">A pan over the sweets that shows all 4 names in 1 second</li>
              <li data-bucket="out" data-why="False urgency is a dark pattern. Asha has 200 boxes in stock.">Caption &quot;Only 3 boxes left!&quot;</li>
              <li data-bucket="out" data-why="The gift bag is not included. Buyers would expect it.">A shot of the box going into a gift bag</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write a short video script and a filming shot list for your product. Change the facts, or keep Asha's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a video producer who makes short, honest product videos for small Indian online sellers, filmed on a phone.

        Product facts (use ONLY these): [Sweet Crumbs Diwali Mithai &amp; Cookie Gift Box. Maroon box, 20 x 20 x 6 cm, gold ribbon, gold foil logo. 12 pieces: 3 kaju katli, 3 besan ladoo, 3 nankhatai, 3 atta jaggery cookies. 450 g. Greeting card inside. Best within 10 days of manufacture.]
        Video type: [unboxing]
        Length: [15] seconds
        Where it will be used: [Amazon listing and Instagram Reels]

        Please give me:
        1. A script table: Time | Shot | Text on screen (max 5 words) | Sound. The times must add up exactly to the length.
        2. A filming shot list: shot, camera position, what the hands do, how many takes.
        3. A second version of the script for [30] seconds.
        4. A list of things I must check before publishing.
        5. What I must confirm in each platform's current video rules.

        Rules: Film only the real product. No offers, discounts, urgency or claims that are not in the facts. Suggest licensed music or none. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The times in each script add up exactly to 15 and 30 seconds.</li>
              <li>Every caption matches the facts. There is no "only a few left" or discount text.</li>
              <li>The shot list films the real box at real speed, with no AI-generated shots.</li>
              <li>Platform video rules are marked "check current rules", not stated as facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A short product video answers questions by showing the real thing: the opening, the contents and the size. Write a timed script from real facts, film the real product at real speed, and check every caption before you publish.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Turning Images into Video with AI</h1>
        </div>
        <p class="lc-lead">You can make a short video without filming anything new. A slideshow of your photos, a slow zoom on one photo, or an AI tool that animates a still image can all become a video. These are quick and cheap. But AI video tools invent new frames, and they can change your product for a moment without you noticing. In this lesson, you will learn three ways to turn images into video and how to write a motion prompt. You will also learn to check every frame before you publish.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Three ways to turn photos into video. Slideshow: real photos one after another, no new pixels, low risk. Simple motion: slow zoom or pan, pixels move but are not made, low risk. AI image-to-video: AI draws new frames, high risk. Below, a film strip of Asha's 5-second AI clip checked every half second. 0 to 2 seconds are fine. At 2.5 and 3 seconds the lid bends. From 3.5 seconds there are 13 pieces, and at 4.5 seconds the logo melts. Decision: film the lid opening for real and use AI motion only where the box stays still.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-weight="700" fill="#9b99b8">Three ways to turn photos into video</text>
              <rect x="12" y="32" width="236" height="88" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="130" y="58" font-weight="700" fill="#6ee7b7">1. Slideshow</text>
              <text x="130" y="80" font-size="11.5" fill="#9b99b8">real photos, one after another</text>
              <text x="130" y="104" font-size="12">No new pixels · Low risk</text>
              <rect x="262" y="32" width="236" height="88" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="58" font-weight="700" fill="#93c5fd">2. Simple motion</text>
              <text x="380" y="80" font-size="11.5" fill="#9b99b8">slow zoom or pan on a photo</text>
              <text x="380" y="104" font-size="12">Pixels move, not made · Low risk</text>
              <rect x="512" y="32" width="236" height="88" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="630" y="58" font-weight="700" fill="#f9a8d4">3. AI image-to-video</text>
              <text x="630" y="80" font-size="11.5" fill="#9b99b8">AI draws new frames</text>
              <text x="630" y="104" font-size="12">New pixels · High risk</text>
              <text x="380" y="152" font-size="12" fill="#9b99b8">Asha's 5-second AI clip, checked every 0.5 s (every 12 frames at 24 fps)</text>
              <g font-size="12">
                <rect x="24" y="164" width="64" height="56" rx="6" fill="#27274e" stroke="#10b981" stroke-width="2"/>
                <text x="56" y="189">0.0 s</text><text x="56" y="208" font-size="11" fill="#9b99b8">f0</text>
                <rect x="96" y="164" width="64" height="56" rx="6" fill="#27274e" stroke="#10b981" stroke-width="2"/>
                <text x="128" y="189">0.5 s</text><text x="128" y="208" font-size="11" fill="#9b99b8">f12</text>
                <rect x="168" y="164" width="64" height="56" rx="6" fill="#27274e" stroke="#10b981" stroke-width="2"/>
                <text x="200" y="189">1.0 s</text><text x="200" y="208" font-size="11" fill="#9b99b8">f24</text>
                <rect x="240" y="164" width="64" height="56" rx="6" fill="#27274e" stroke="#10b981" stroke-width="2"/>
                <text x="272" y="189">1.5 s</text><text x="272" y="208" font-size="11" fill="#9b99b8">f36</text>
                <rect x="312" y="164" width="64" height="56" rx="6" fill="#27274e" stroke="#10b981" stroke-width="2"/>
                <text x="344" y="189">2.0 s</text><text x="344" y="208" font-size="11" fill="#9b99b8">f48</text>
                <rect x="384" y="164" width="64" height="56" rx="6" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
                <text x="416" y="189">2.5 s</text><text x="416" y="208" font-size="11" fill="#9b99b8">f60</text>
                <rect x="456" y="164" width="64" height="56" rx="6" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
                <text x="488" y="189">3.0 s</text><text x="488" y="208" font-size="11" fill="#9b99b8">f72</text>
                <rect x="528" y="164" width="64" height="56" rx="6" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
                <text x="560" y="189">3.5 s</text><text x="560" y="208" font-size="11" fill="#9b99b8">f84</text>
                <rect x="600" y="164" width="64" height="56" rx="6" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
                <text x="632" y="189">4.0 s</text><text x="632" y="208" font-size="11" fill="#9b99b8">f96</text>
                <rect x="672" y="164" width="64" height="56" rx="6" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
                <text x="704" y="189">4.5 s</text><text x="704" y="208" font-size="11" fill="#9b99b8">f108</text>
              </g>
              <g stroke-width="2">
                <line x1="24" y1="232" x2="376" y2="232" stroke="#10b981"/>
                <line x1="384" y1="232" x2="520" y2="232" stroke="#f59e0b"/>
                <line x1="528" y1="232" x2="736" y2="232" stroke="#ec4899"/>
              </g>
              <text x="200" y="252" font-size="12" fill="#6ee7b7">OK</text>
              <text x="452" y="252" font-size="12" fill="#fcd34d">lid bends</text>
              <text x="632" y="252" font-size="12" fill="#f9a8d4">13 pieces, logo melts</text>
              <rect x="12" y="270" width="736" height="48" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="299" font-size="12.5">Decision: film the lid opening for real. Use AI motion only where the box stays still.</text>
            </g>
          </svg>
          <figcaption>The more of the video AI invents, the more you must check. Asha's AI clip looked fine at normal speed, but the frame check found three problems.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three ways to turn photos into video</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What happens</th><th>Does AI invent pixels?</th><th>Best use</th></tr></thead>
            <tbody>
              <tr><td>Slideshow</td><td>Your real photos play one after another, with simple cuts or fades</td><td>No</td><td>A listing video built from your gallery</td></tr>
              <tr><td>Simple motion</td><td>A slow zoom in, zoom out or pan (a slow sideways move) across one photo</td><td>No. The same pixels just move.</td><td>Social posts, a calm moving version of a scene image</td></tr>
              <tr><td>AI image-to-video</td><td>You give a photo and a prompt. The AI draws new frames that show movement.</td><td>Yes. Every new frame is a guess.</td><td>Background movement only, such as a flickering diya flame</td></tr>
            </tbody>
          </table>
          <p>Slideshows and simple motion are built into many phone video editors, design apps and store apps. AI image-to-video tools change fast. Their features, limits and usage rights differ, so check each tool's current help pages and terms.</p>
          <p><strong>Worked example: a slideshow.</strong> Asha picks 6 real gallery images: the main image, the closed box, "What's inside", the size graphic, the box in hands and the festive scene. She shows each one for 2.5 seconds. That makes 6 x 2.5 = 15 seconds. No product pixels are invented, so the risk is low. She still watches it once on a phone to check the order and the text.</p>
        </div>
        <div class="lc-card">
          <h3>Write a motion prompt that keeps the product still</h3>
          <p>Asha made a second festive scene from her real closed-box photo (shot 2), in the same way as gallery 8. She wants to animate it. The safest AI motion moves the scene, not the product. Let the diya flames flicker and the camera drift slowly. Keep the box, lid, sweets, logo and ribbon completely still. If you need to show the product moving, such as the lid lifting, film it for real.</p>
          <pre><code>Weak prompt:
        Make this gift box come alive, open the box, cinematic.

        Better prompt:
        Use this image. Length: 5 seconds. Camera: a very slow
        push-in (zoom in) towards the box. Keep the gift box,
        the closed lid, the gold logo and the ribbon completely
        still and unchanged. Only the diya flames
        flicker gently. Do not open the lid. Do not add hands,
        people, text, new objects or extra sweets.</code></pre>
          <p>The weak prompt asks the AI to invent a lid opening. The AI has never seen the inside of your real lid or the gaps in your tray. It will guess, and some guesses will be wrong.</p>
        </div>
        <div class="lc-card">
          <h3>Check every frame</h3>
          <p>A video is a quick series of still pictures called <strong>frames</strong>. <strong>fps</strong> (frames per second) is how many frames play each second. Each AI frame is a new drawing, so each one can be wrong.</p>
          <table class="lc-table">
            <thead><tr><th>Clip</th><th>Calculation</th><th>Frames to check</th></tr></thead>
            <tbody>
              <tr><td>5 seconds at 24 fps</td><td>5 x 24</td><td>120 frames (numbered 0 to 119)</td></tr>
              <tr><td>8 seconds at 30 fps</td><td>8 x 30</td><td>240 frames</td></tr>
            </tbody>
          </table>
          <p>A problem can last less than half a second. At normal speed you will miss it. Use this method:</p>
          <ul class="lc-list">
            <li><strong>Watch once at full screen</strong> at normal speed. Note anything odd.</li>
            <li><strong>Pause every 0.5 seconds.</strong> At 24 fps, that is every 12 frames. Compare each pause with the original photo.</li>
            <li><strong>Step frame by frame</strong> wherever something moves near the product. Many video editors have a frame-step button or key. Check your editor's help pages.</li>
            <li><strong>Check the last frame.</strong> Some platforms show it as a still at the end.</li>
          </ul>
          <p>At each check, look for the same things: the piece count, the shapes, the logo letters, the box colour, the ribbon, the label, and anything new. Also watch for things that bend, melt or float.</p>
          <p>Here is Asha's check log for her first AI clip. She had asked the tool to open the lid.</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Frame (24 fps)</th><th>What she saw</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>0.0 to 2.0 s</td><td>0 to 48</td><td>The lid starts to lift. Box shape, logo and colour match the photo.</td><td>OK</td></tr>
              <tr><td>2.5 s</td><td>60</td><td>The edge of the lid bends like cloth</td><td>Problem</td></tr>
              <tr><td>3.5 s</td><td>84</td><td>A 13th piece appears in the tray</td><td>Problem</td></tr>
              <tr><td>4.5 s</td><td>108</td><td>The logo letters melt and blur</td><td>Problem</td></tr>
            </tbody>
          </table>
          <p>Frame numbers are the time multiplied by the fps: 2.5 x 24 = 60, 3.5 x 24 = 84 and 4.5 x 24 = 108. Only the first 2 seconds were usable, which is too short to show the lid. Asha rejected the clip. She kept her real, filmed video for the opening. She used AI motion only on the closed-box festive scene, with the box kept still.</p>
        </div>
        <div class="lc-card">
          <h3>Clothes, labels and the edit log</h3>
          <p>Fabric is hard for AI video. Imran at Zari &amp; Co tried an AI clip that made the dupatta blow in the wind. At normal speed it looked lovely. Frame by frame, the zari border pattern changed shape in the middle of the clip. In the last second, the teal slowly turned greener. He did not use it. For clothes, a real video of a real model is safer. People and AI models are covered later in this course.</p>
          <p>Some platforms ask you to label content that AI made or changed a lot. Rules differ by platform and change often, so check the current rules. Keep your log up to date, so you can answer any question:</p>
          <table class="lc-table">
            <thead><tr><th>Video</th><th>Method</th><th>What changed</th><th>Checked</th></tr></thead>
            <tbody>
              <tr><td>Listing slideshow</td><td>Slideshow of 6 real photos, 2.5 s each</td><td>Nothing invented</td><td>Asha, 16 Oct, watched on a phone</td></tr>
              <tr><td>Social clip</td><td>AI motion on the closed-box festive scene, 5 s</td><td>Diya flames and a slow push-in. Box kept still.</td><td>Asha, 16 Oct, every 12 frames plus every frame near the box</td></tr>
              <tr><td>First AI clip (lid opening)</td><td>AI image-to-video</td><td>Lid bends, 13th piece, logo melts</td><td>Rejected, not published</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: checking the AI clip</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Asha's prompt">Asha uploads her closed-box festive scene to an AI video tool: "Open the box slowly and show the sweets. 5 seconds."</li>
              <li data-kind="result" data-label="Tool output">A warm 5-second clip at 24 fps. The lid lifts and the diyas glow. At normal speed it looks great.</li>
              <li data-kind="thought" data-label="Asha thinks">"5 x 24 is 120 frames. I will pause every 12 frames and compare each one with my photo."</li>
              <li data-kind="check" data-label="0 to 2 s">Frames 0 to 48: the lid starts to lift. The box shape, logo and maroon match her photo.</li>
              <li data-kind="warn" data-label="2.5 s">Frame 60: the edge of the lid bends like cloth. A real rigid box cannot do that.</li>
              <li data-kind="warn" data-label="3.5 s">Frame 84: she counts 13 pieces. The box has 12.</li>
              <li data-kind="warn" data-label="4.5 s">Frame 108: the gold logo letters melt into a blur.</li>
              <li data-kind="user" data-label="New prompt">She tries again: "Keep the box, the closed lid, the logo and the ribbon completely still. Only the diya flames flicker. Slow push-in."</li>
              <li data-kind="check" data-label="Decision">The new clip passes the check at every pause and frame by frame near the box. She publishes it on social media, logs it and keeps the real filmed video for the opening.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write a safe motion prompt and a frame-by-frame check plan for a short AI clip. Use your own image and clip length, or keep the example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a video editor who turns product photos into short videos for an Indian online seller, and who never lets AI change the product.

        My image: [a real photo of a maroon Diwali gift box, 20 x 20 x 6 cm, lid closed, gold ribbon and gold foil logo, on a wood table with 3 brass diyas and marigolds behind it]
        Clip length: [5] seconds
        Frame rate: [24] fps
        Where it will be used: [Instagram Reels and my Shopify product page]

        Please give me:
        1. A motion prompt for an AI image-to-video tool. Only the background and the camera may move. The product must stay completely still and unchanged.
        2. The total number of frames, with the working.
        3. A check schedule: a pause every 0.5 seconds, with the time and the frame number for each pause, plus the last frame.
        4. A checklist of what could go wrong with this product in AI video.
        5. A check log table I can fill in: Time | Frame | What I saw | OK or Problem.
        6. Two simpler options without AI (a slideshow or a slow zoom), and when I should film the product for real instead.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The frame maths is right: 5 x 24 = 120 frames, and a pause every 0.5 s is every 12 frames.</li>
              <li>The motion prompt keeps the box, lid, ribbon and logo still, and does not open the lid.</li>
              <li>The checklist includes the logo letters, the box colour, the shape of the box and new objects.</li>
              <li>It says to film real actions, such as opening the box, instead of asking AI to invent them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A slideshow or a slow zoom uses only your real pixels. AI image-to-video invents every frame, so move the scene, not the product, and check the clip frame by frame before anyone else sees it.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Models, Try-On and People in Images</h1>
        </div>
        <p class="lc-lead">Clothes, jewellery and bags sell better when buyers see them on a person. AI tools can now put a garment on a "model" who does not exist. Some tools also let shoppers try it on their own photo. This saves shoot costs, but it brings two big risks. The AI may change the garment, so the buyer gets something different. And a person's face or body may be used without their permission. In this lesson, you will follow Imran, the catalogue manager at Zari &amp; Co in Gujarat. You will learn when to use a real model, an AI model or virtual try-on. You will also learn how to keep the garment exact and how to handle consent.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A decision tree. Question: who is in the picture? Branch one: a real person with a signed release, use within the release. Branch two: a real person with no permission, such as a celebrity, influencer, customer or staff member, stop and do not use. Branch three: an AI-generated model made from the real garment photo, use only after checks. Note: never add size or fit claims to an AI model image.">
            <defs><marker id="ppv11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="250" y="14" width="260" height="44" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="380" y="41" font-weight="700" fill="#c4b5fd">Who is in the picture?</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ppv11a)">
                <line x1="330" y1="59" x2="150" y2="102"/>
                <line x1="380" y1="59" x2="380" y2="102"/>
                <line x1="430" y1="59" x2="610" y2="102"/>
              </g>
              <rect x="20" y="106" width="230" height="44" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="135" y="133" font-weight="700" fill="#6ee7b7">Real person, signed release</text>
              <rect x="265" y="106" width="230" height="44" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="133" font-weight="700" fill="#f9a8d4">Real person, no permission</text>
              <rect x="510" y="106" width="230" height="44" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="625" y="133" font-weight="700" fill="#fcd34d">AI-generated model</text>
              <g font-size="12" fill="#9b99b8">
                <text x="135" y="176">release names the channels,</text>
                <text x="135" y="195">AI edits allowed or not,</text>
                <text x="135" y="214">and for how long</text>
                <text x="380" y="176">celebrity or influencer,</text>
                <text x="380" y="195">customer review photo,</text>
                <text x="380" y="214">staff photo, look-alike</text>
                <text x="625" y="176">made from the real flat lay,</text>
                <text x="625" y="195">garment must match exactly,</text>
                <text x="625" y="214">no real person's face</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ppv11a)">
                <line x1="135" y1="224" x2="135" y2="240"/>
                <line x1="380" y1="224" x2="380" y2="240"/>
                <line x1="625" y1="224" x2="625" y2="240"/>
              </g>
              <rect x="20" y="244" width="230" height="40" rx="20" fill="#10b981" fill-opacity="0.2" stroke="#10b981"/>
              <text x="135" y="269" fill="#6ee7b7">Use within the release</text>
              <rect x="265" y="244" width="230" height="40" rx="20" fill="#ec4899" fill-opacity="0.2" stroke="#ec4899"/>
              <text x="380" y="269" fill="#f9a8d4">Stop: do not use</text>
              <rect x="510" y="244" width="230" height="40" rx="20" fill="#f59e0b" fill-opacity="0.2" stroke="#f59e0b"/>
              <text x="625" y="269" fill="#fcd34d">Use only after checks</text>
              <text x="380" y="310" font-size="12.5" fill="#9b99b8">Never add size or fit claims to an AI model image.</text>
            </g>
          </svg>
          <figcaption>Before you use any image with a person in it, ask who that person is and what they agreed to.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three ways to show clothes on a person</h3>
          <p>Imran is listing a teal cotton silk kurta set: kurta, trousers and a dupatta with a gold zari border. He has three options. All details in this lesson are made up for teaching.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Real model shoot</th><th>AI model</th><th>Virtual try-on</th></tr></thead>
            <tbody>
              <tr><td>How it works</td><td>A hired model wears the real garment. You photograph her.</td><td>An AI tool takes a flat lay or mannequin photo and shows the garment on a person it creates.</td><td>The shopper uploads their own photo, or picks a body type. The tool shows the garment on them.</td></tr>
              <tr><td>Good for</td><td>Main on-model images, true fit, size-worn text</td><td>Extra poses, many colour variants, quick catalogue updates</td><td>Helping shoppers picture the look</td></tr>
              <tr><td>Main risk</td><td>Using the photos beyond what the model agreed to</td><td>The AI changes the colour, border, length or fit</td><td>Shoppers' photos are private data. The fit shown is only a guess.</td></tr>
              <tr><td>You must</td><td>Get a signed release (written permission)</td><td>Compare every image with the real garment</td><td>Read the tool's privacy terms. Tell shoppers how their photo is used.</td></tr>
            </tbody>
          </table>
          <p>Many sellers mix these. Imran keeps real model photos for the main image and the fit shots. He uses AI models only for extra gallery poses. Virtual try-on features differ between platforms and apps, and they change often. Check the current help pages of any tool before you use it.</p>
        </div>
        <div class="lc-card">
          <h3>Keep the garment exact</h3>
          <p>AI tools are good at making a person look natural. They are less careful with the garment. Imran made an AI model image from his flat lay photo. Then he put it next to the real kurta set in daylight. He found five problems:</p>
          <ul class="lc-list">
            <li>The teal looked greener than the real fabric.</li>
            <li>The paisley pattern on the zari border had turned into small flowers.</li>
            <li>The kurta ended at the knee. The real kurta is 46 inches long and reaches mid-calf.</li>
            <li>The side slits were missing, and the dupatta looked shorter.</li>
            <li>The AI added gold bangles and earrings. They are not sold with the set.</li>
          </ul>
          <p>A buyer who orders from that image would get a different-looking kurta. The better prompt names every detail that must stay the same:</p>
          <pre><code>Weak prompt:
        Put this kurta on a beautiful model.

        Better prompt:
        Use my flat lay photo of the kurta set. Show it on an adult
        woman standing straight, full length, front view, plain
        light grey background, soft daylight.
        Keep exactly: teal colour, round neck, 3/4 sleeves,
        mid-calf kurta length, side slits, gold paisley zari border
        on the dupatta, dupatta over the left shoulder.
        Do not add jewellery, bags or other clothes.
        The face must not look like any real or famous person.</code></pre>
          <p>Even with this prompt, check the result closely. Use this simple list for every AI model image:</p>
          <ul class="lc-list">
            <li><strong>Colour:</strong> compare with the real garment in daylight, or with your colour-checked photo.</li>
            <li><strong>Details:</strong> neckline, sleeves, length, slits, border pattern, buttons, prints.</li>
            <li><strong>Extras:</strong> no added jewellery, belts or bags. If props are used, write "Accessories not included".</li>
            <li><strong>Hands and face:</strong> no extra fingers, no melted jewellery, no face that looks like a real person.</li>
          </ul>
          <p><strong>Do not make fit claims for AI models.</strong> The line "Model is 5 ft 6 in and wears size M" is true only for Meera, the real model Imran hired. An AI model never wore anything, so the fit is the AI's guess. Imran writes this instead: "AI-generated model image. Fit may differ. Please check the size chart."</p>
          <p>Show a range of people if you can: different skin tones, heights, ages and body types. But only show sizes you really sell. Never use AI to lighten a model's skin or slim her body. That misleads buyers and disrespects the model.</p>
        </div>
        <div class="lc-card">
          <h3>Consent and likeness rights</h3>
          <p>Your <strong>likeness</strong> is anything that shows it is you: your face, body, voice or name. A <strong>model release</strong> is a written form in which a person allows you to use their photos. Never use a real person's face or body without their permission. This includes:</p>
          <ul class="lc-list">
            <li>Celebrities, actors, cricketers and influencers, or AI "look-alikes" of them</li>
            <li>Customers' review photos or unboxing videos, even if they posted them publicly</li>
            <li>Staff, friends or family "just for a quick photo"</li>
            <li>Face swaps: putting one person's face on another body</li>
          </ul>
          <p>Indian courts, including the Delhi High Court, have given orders protecting several well-known actors and singers. The orders stop others from using their name, face or voice without permission, including through AI. India's data protection law, the Digital Personal Data Protection Act, 2023, also treats a photo that identifies a person as personal data. Using it needs a clear purpose and, usually, consent. Its rules are coming into force in stages, so check the current position. Other countries have similar rules. This is general information, not legal advice. Ask a lawyer to write or check your release form.</p>
          <p>A good model release, agreed before the shoot, answers these questions:</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Imran's release with Meera (made-up example)</th></tr></thead>
            <tbody>
              <tr><td>Where can the photos be used?</td><td>Own store, marketplaces, Instagram and Facebook ads, print catalogue</td></tr>
              <tr><td>For how long?</td><td>2 years from the shoot date</td></tr>
              <tr><td>Which edits are allowed?</td><td>Background change, colour correction, cleanup. No change to her face or body shape.</td></tr>
              <tr><td>Can AI make new images of her?</td><td>No. No new poses, no face swaps, no AI video of her.</td></tr>
              <tr><td>Payment</td><td>Fee paid for the shoot and these uses</td></tr>
              <tr><td>Signed by</td><td>Meera and Imran, with the date and a copy for each</td></tr>
            </tbody>
          </table>
          <p>For virtual try-on, the shopper's photo is private data. Choose tools that explain how long photos are kept. Never upload a customer's photo to a public AI tool yourself. Avoid photos of children unless a parent has given written consent.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: can Imran use this image?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Imran has seven images of people for the kurta set. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine to use"></div>
              <div data-sorter-target="bucket" data-bucket="ask" data-label="Get written permission first"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Do not use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Meera signed a release for these channels and background edits. This use is inside it.">Meera's studio photos with the background changed to light grey, used on the store and marketplaces</li>
              <li data-bucket="ok" data-why="No real person is shown. Imran checked the garment against the real set and wrote a fit note, not a size claim.">An AI model image made from the real flat lay, checked detail by detail, with "Fit may differ" text</li>
              <li data-bucket="ask" data-why="A public post is not permission for an ad. Ask the customer in writing first.">A customer's review photo in the kurta, for an Instagram ad</li>
              <li data-bucket="ask" data-why="Staff are people too. Get a signed release that says where the photo will be used.">A photo of a colleague wearing the dupatta, taken in the office</li>
              <li data-bucket="ask" data-why="The influencer owns her reel and her likeness. Paid use needs a written agreement.">An influencer's public reel showing the kurta, reused in a paid ad</li>
              <li data-bucket="never" data-why="Using a famous person's likeness without permission is a legal risk. It also suggests an endorsement that does not exist.">An AI model whose face looks like a famous actress</li>
              <li data-bucket="never" data-why="Meera's release does not allow face swaps. The image also shows a fit that no real person wore.">Meera's face swapped onto a different body to show size XL</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for an AI model brief and a checklist to compare the result with the real garment. It will also list points for a model release. Use your own product or Imran's example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a catalogue manager for an Indian fashion brand. You care about honest images and people's consent.

        My garment: [Zari &amp; Co teal cotton silk kurta set: kurta, trousers, dupatta. Round neck, 3/4 sleeves, mid-calf kurta with side slits, gold paisley zari border on the dupatta. Sizes XS to XXL.]
        Real photos I have: [flat lay of all 3 pieces; on-model photos of a hired model who signed a release]
        What I want: [3 extra gallery poses using an AI model]

        Please give me:
        1. A prompt for an AI image tool that keeps every garment detail exact and says what must not be added.
        2. A checklist table to compare the AI image with the real garment: Detail | What the real garment has | Match? (Yes/No).
        3. The text I should put near an AI model image, with no size or fit claim.
        4. 8 points my model release should cover, including AI edits and face swaps.
        5. 3 situations where I must NOT use a person's image.

        Rules: Do not write a legal contract. Say that a lawyer should check the release. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The image prompt lists colour, neckline, sleeves, length, slits and border, and bans added jewellery.</li>
              <li>The text near the AI image has no "model wears size M" type claim.</li>
              <li>The release points cover channels, time period, allowed edits and AI use.</li>
              <li>The answer says a lawyer should check the release.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An AI model is fine only if the garment is exactly real and no real person's face is used. Real people need written permission for every use, and fit claims belong only to real people who really wore the garment.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Marketplace and Ad Image Rules</h1>
        </div>
        <p class="lc-lead">Every place you sell or advertise has its own image rules. A marketplace can hide a listing with a bad main image. An ad platform can reject an ad, or limit your account after repeated problems. New rules also ask sellers and platforms to label AI-made content. In this lesson, you will learn the main rule types for Amazon, Flipkart, Meta (Facebook and Instagram) and Google. You will see how AI labels and hidden AI tags work, and how India's 2026 rules on AI content affect you. Then you will check Asha's images before they go live.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Asha's image, with what AI did and where it will go, passes through four checks: marketplace image rules, ad platform rules, AI label and metadata, and true to the product. Only then is it published and logged. If any check fails, fix it first.">
            <defs><marker id="ppv12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="118" width="150" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="95" y="150" font-weight="700" fill="#c4b5fd">Asha's image</text>
              <text x="95" y="172" font-size="11.5" fill="#9b99b8">+ what AI did</text>
              <text x="95" y="192" font-size="11.5" fill="#9b99b8">+ where it goes</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="172" y1="163" x2="190" y2="163"/>
                <line x1="190" y1="51" x2="190" y2="279"/>
                <line x1="542" y1="51" x2="560" y2="51"/>
                <line x1="542" y1="127" x2="560" y2="127"/>
                <line x1="542" y1="203" x2="560" y2="203"/>
                <line x1="542" y1="279" x2="560" y2="279"/>
                <line x1="560" y1="51" x2="560" y2="279"/>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ppv12a)">
                <line x1="190" y1="51" x2="206" y2="51"/>
                <line x1="190" y1="127" x2="206" y2="127"/>
                <line x1="190" y1="203" x2="206" y2="203"/>
                <line x1="190" y1="279" x2="206" y2="279"/>
                <line x1="560" y1="163" x2="586" y2="163"/>
              </g>
              <g text-anchor="start">
                <rect x="210" y="20" width="330" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="226" y="46" font-weight="700" fill="#93c5fd">1. Marketplace image rules</text>
                <text x="226" y="68" font-size="11.5" fill="#9b99b8">main image: white, fills the frame, no text</text>
                <rect x="210" y="96" width="330" height="62" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="226" y="122" font-weight="700" fill="#67e8f9">2. Ad platform rules</text>
                <text x="226" y="144" font-size="11.5" fill="#9b99b8">no misleading claims, prices or offers</text>
                <rect x="210" y="172" width="330" height="62" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="226" y="198" font-weight="700" fill="#fcd34d">3. AI label and metadata</text>
                <text x="226" y="220" font-size="11.5" fill="#9b99b8">keep AI tags, answer AI questions honestly</text>
                <rect x="210" y="248" width="330" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
                <text x="226" y="274" font-weight="700" fill="#6ee7b7">4. True to the product</text>
                <text x="226" y="296" font-size="11.5" fill="#9b99b8">count, colour, size, logo and label match</text>
              </g>
              <rect x="590" y="118" width="150" height="90" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="665" y="150" font-weight="700" fill="#6ee7b7">Publish</text>
              <text x="665" y="172" font-size="11.5" fill="#9b99b8">and log it</text>
              <text x="665" y="194" font-size="11.5" fill="#f9a8d4">fail? fix first</text>
            </g>
          </svg>
          <figcaption>An image goes live only after it passes all four checks for the place where it will appear.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Marketplace image rules</h3>
          <p>Marketplaces want search results that look clean and honest. Their rules are strictest for the main image. Here are the common rule types. Exact rules differ by category and change often, so always check the current help pages.</p>
          <table class="lc-table">
            <thead><tr><th>Where</th><th>Common rules (described generally)</th><th>Where to check</th></tr></thead>
            <tbody>
              <tr><td>Amazon main image</td><td>Pure white background (RGB 255, 255, 255). The product fills about 85% of the frame. No added text, logos, watermarks or borders. Show only what is included.</td><td>Seller Central help: product image requirements</td></tr>
              <tr><td>Flipkart</td><td>Clear product images with rules on background, size and what the main image may show. Rules vary by category.</td><td>Seller Hub help</td></tr>
              <tr><td>Gallery images (most marketplaces)</td><td>More freedom: scenes, size graphics, labels, close-ups. Still no false claims, fake badges or items that look included but are not.</td><td>The same help pages, plus category rules</td></tr>
              <tr><td>Your own store</td><td>No platform checks your images, but consumer law still applies. Images must not mislead buyers.</td><td>Your own checklist, and a lawyer for doubts</td></tr>
            </tbody>
          </table>
          <p>In India, the Consumer Protection (E-Commerce) Rules, 2020 say sellers must not misrepresent their products. Your listing must also show key details, such as the total price, the seller's details, the country of origin and the return policy. Images help, but these details must also be in the listing text. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Ad image rules: Meta and Google</h3>
          <p>Ads reach people who were not searching for you. So ad platforms check images for misleading claims. They may reject an ad, and repeated problems can limit your ad account.</p>
          <ul class="lc-list">
            <li><strong>Meta (Facebook and Instagram ads):</strong> The ad must not mislead about the product, its price or the offer. For example, do not show "50% off" if there is no real discount. Keep text on images short so it reads on a phone.</li>
            <li><strong>Google (Shopping ads and free listings, run through Google Merchant Center):</strong> Images must show the product accurately. Do not put promotional text such as "Sale" or "Free delivery" on the product image, and do not add watermarks.</li>
          </ul>
          <p>In India, the ASCI code (the Advertising Standards Council of India's rules for ads) also asks that ads are honest and do not mislead. Check each platform's current advertising policies before you run an ad. They change often.</p>
        </div>
        <div class="lc-card">
          <h3>Labelling AI content</h3>
          <p>Many platforms now want buyers to know when an image or video was made or changed by AI. There are two kinds of labels:</p>
          <ul class="lc-list">
            <li><strong>A visible label:</strong> words such as "AI info" or "Made with AI" that people can see on or near the post or ad.</li>
            <li><strong>Metadata:</strong> hidden information stored inside the image file. Many AI tools add a tag that says the image was made with AI. Some tools also add "Content Credentials", a record of how the file was made.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Where</th><th>What happens (as of September 2026)</th><th>What you do</th></tr></thead>
            <tbody>
              <tr><td>Meta ads</td><td>If you create or clearly change an ad image with Meta's own AI tools in Ads Manager, Meta can add an "AI info" label. Ads with realistic AI people may get a more visible label. Ads about politics or social issues must disclose AI use.</td><td>Do not try to hide AI use. Check Meta's help pages for the current rules.</td></tr>
              <tr><td>Google Merchant Center</td><td>AI-generated product images may be used, but they must keep the AI tag in their metadata (the IPTC "DigitalSourceType" tag). Do not remove it.</td><td>Check that your editing or compression app does not strip metadata.</td></tr>
              <tr><td>India: IT Rules amendment, 2026</td><td>Covers "synthetically generated information": images, video or audio made or changed by AI so that they look real, like a real person or a real event. Platforms must label it clearly. Large social media platforms must ask users to declare it. Routine good-faith edits, such as colour correction, are not covered.</td><td>When a platform asks "Is this AI-generated?", answer honestly. Never remove a label.</td></tr>
            </tbody>
          </table>
          <p>These rules are new and still changing. The India rules came into force on 20 February 2026. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Asha's rules check</h3>
          <p>Before Diwali, Asha checks four items from her shot list against the rules for each channel.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>What AI did</th><th>Rules check</th><th>AI label?</th></tr></thead>
            <tbody>
              <tr><td>1. Main image</td><td>Background removed, set to white, cropped to 85%</td><td>White reads 255, 255, 255. No text or badges. All 12 pieces visible.</td><td>Usually no. This is a routine edit. Product unchanged.</td></tr>
              <tr><td>3. Top-down with sweet names</td><td>None (text added in a design app)</td><td>Gallery only. Names match the real sweets. Text readable on a phone.</td><td>No</td></tr>
              <tr><td>8. Festive table scene</td><td>AI background around the real photo</td><td>Gallery only, never main. "Props not included" in the description.</td><td>Yes. Keep the AI tag in the file. Declare it if a platform asks.</td></tr>
              <tr><td>Instagram ad from shot 8</td><td>The same AI background</td><td>No fake discount, no "bestseller" badge. Price shown as ₹899.</td><td>Yes. Say yes when asked about AI.</td></tr>
            </tbody>
          </table>
          <p>Asha adds one column to her edit log: "AI label or tag?" Now she can answer any question from a platform in a minute.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: label, routine edit or not allowed?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Asha has seven images and ideas. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="label" data-label="AI label or declare"></div>
              <div data-sorter-target="bucket" data-bucket="routine" data-label="Routine edit"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Do not publish"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="routine" data-why="The product is unchanged. Only the background changed to plain white.">Background removed and set to pure white. The box is unchanged.</li>
              <li data-bucket="routine" data-why="Colour correction to match the real product is a routine, honest edit.">White balance fixed so the maroon matches the real box</li>
              <li data-bucket="label" data-why="The scene is AI-made and looks real. Keep the AI tag and declare it when asked.">The real box photo placed in an AI-made festive table scene</li>
              <li data-bucket="label" data-why="AI changed the video so it looks real. Declare it on social platforms that ask.">An ad video where AI animates diya flames around the real box</li>
              <li data-bucket="never" data-why="The product is changed. It shows 14 pieces and silver foil that Sweet Crumbs does not use.">An AI image of the box with 14 pieces and silver varq</li>
              <li data-bucket="never" data-why="Removing AI tags breaks Google's rules and hides the truth from buyers.">Removing the AI tag from a file so that Google does not see it</li>
              <li data-bucket="never" data-why="A made-up person praising the box is a fake review. That misleads buyers.">A fully AI-made "happy customer" holding the box, with a quote</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a rules checklist for your images and channels. It will list the questions to check, not final answers, because rules change.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an e-commerce compliance helper for a small Indian seller. You help me prepare, but you do not give legal advice.

        My product: [Sweet Crumbs Diwali Mithai &amp; Cookie Gift Box, 12 pieces, 450 g, Rs 899]
        Where images will appear: [Amazon, Flipkart, own Shopify store, Instagram ads, Google Shopping]
        My images and what AI did:
        [1. Main image: background removed, white, cropped.
        2. Top-down photo with sweet names added in a design app.
        3. Festive table scene: real box photo, AI background.
        4. 15-second video, real footage, captions added.]

        Make a table: Image | Channel | Rule questions to check (as questions, e.g. "Is the background pure white?") | AI label or tag needed? | Risk (low/medium/high) | Fix.

        Then list 5 things I must never do with AI images for these channels.

        Rules: Do not state exact rules as facts. After each channel, write "check the current help page". Mention India's 2026 IT Rules on AI content only in general words. Simple English.</pre>
            <ul class="ai-try-checks">
              <li>Rules appear as questions to check, with "check the current help page".</li>
              <li>The festive scene is marked as needing an AI label or tag. The main image is not.</li>
              <li>The "never" list includes removing AI tags and changing the product.</li>
              <li>No invented rule numbers, sizes or fines.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Each channel has its own rules, and they change often, so check the current help pages every time. For AI images, keep the AI tags, answer honestly when asked, and never let AI change the product itself.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Testing Which Visuals Work</h1>
        </div>
        <p class="lc-lead">You have two good main images. Which one sells more? Guessing is risky, and so is trusting a small result. An <strong>A/B test</strong> shows two versions (A and B) to similar shoppers at the same time, then compares the results. In this lesson, you will learn what to measure and how to do the maths in a spreadsheet. You will learn how to tell a real winner from luck. You will also see why small shops must be careful with small numbers. Finally, you will use AI to plan and read a test.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A/B test flow. Shoppers in the same weeks are split randomly 50/50. Half see image A, the closed box. Half see image B, the open box. For each, you count visits and orders and work out the conversion rate. Then you compare: is the gap bigger than chance? Decide the metric, sample size and end date before you start.">
            <defs><marker id="ppv13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="110" width="140" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="90" y="139" font-weight="700" fill="#c4b5fd">Shoppers</text>
              <text x="90" y="161" font-size="11.5" fill="#9b99b8">same weeks</text>
              <rect x="190" y="110" width="125" height="70" rx="10" fill="#27274e" stroke="#9b99b8"/>
              <text x="252" y="139" font-weight="700">Random</text>
              <text x="252" y="161" font-size="11.5" fill="#9b99b8">50 / 50 split</text>
              <rect x="350" y="40" width="180" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="440" y="65" font-weight="700" fill="#93c5fd">Image A</text>
              <text x="440" y="87" font-size="11.5" fill="#9b99b8">closed box</text>
              <rect x="350" y="190" width="180" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="440" y="215" font-weight="700" fill="#6ee7b7">Image B</text>
              <text x="440" y="237" font-size="11.5" fill="#9b99b8">open box, 12 pieces</text>
              <rect x="560" y="40" width="180" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="650" y="65">visits, orders</text>
              <text x="650" y="87" font-size="11.5" fill="#9b99b8">conversion rate A</text>
              <rect x="560" y="190" width="180" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="650" y="215">visits, orders</text>
              <text x="650" y="237" font-size="11.5" fill="#9b99b8">conversion rate B</text>
              <rect x="560" y="118" width="180" height="54" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="650" y="141" font-weight="700" fill="#fcd34d">Compare</text>
              <text x="650" y="161" font-size="11.5" fill="#9b99b8">gap bigger than chance?</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ppv13a)">
                <line x1="162" y1="145" x2="186" y2="145"/>
                <line x1="316" y1="132" x2="346" y2="74"/>
                <line x1="316" y1="158" x2="346" y2="216"/>
                <line x1="532" y1="70" x2="556" y2="70"/>
                <line x1="532" y1="220" x2="556" y2="220"/>
                <line x1="650" y1="101" x2="650" y2="114"/>
                <line x1="650" y1="189" x2="650" y2="176"/>
              </g>
              <text x="380" y="286" font-size="12.5" fill="#9b99b8">Decide the metric, sample size and end date before you start.</text>
            </g>
          </svg>
          <figcaption>A fair test changes one thing, splits shoppers at random and runs both versions at the same time.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to measure</h3>
          <p>Pick one main number before the test starts. Different images affect different numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>What it means</th><th>How to calculate</th><th>Best for testing</th></tr></thead>
            <tbody>
              <tr><td>CTR (click-through rate)</td><td>The share of people who saw your listing or ad and clicked it</td><td>clicks ÷ impressions</td><td>Main images and ad images</td></tr>
              <tr><td>Conversion rate</td><td>The share of visitors to the product page who bought</td><td>orders ÷ visits</td><td>Main image and gallery</td></tr>
              <tr><td>Return rate</td><td>The share of orders that came back</td><td>returns ÷ orders</td><td>Checking that images are honest</td></tr>
            </tbody>
          </table>
          <p>Watch more than one number. If a new image raises clicks but lowers sales, it may attract the wrong buyers. If sales rise but returns also rise, the image may be promising too much.</p>
        </div>
        <div class="lc-card">
          <h3>Asha's first result, and why it is not proof</h3>
          <p>Asha tried two main images on her own Shopify store, in two different weeks before Diwali. All numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Main image</th><th>Visits</th><th>Orders</th><th>Conversion rate</th></tr></thead>
            <tbody>
              <tr><td>A: closed box</td><td>1,200</td><td>30</td><td>30 ÷ 1,200 = 2.50%</td></tr>
              <tr><td>B: open box, all 12 pieces</td><td>1,150</td><td>38</td><td>38 ÷ 1,150 = 3.30%</td></tr>
            </tbody>
          </table>
          <p>B is higher by 3.30 − 2.50 = 0.8 <strong>percentage points</strong> (the plain difference between two percentages). As a <strong>relative lift</strong> (the change compared with A), that is 0.8 ÷ 2.5 = about 32% more. That sounds big. But there are three problems:</p>
          <ul class="lc-list">
            <li><strong>Different weeks.</strong> B ran closer to Diwali, when more people are ready to buy gifts. The week may explain the gap, not the image.</li>
            <li><strong>Small numbers.</strong> The gap is about 9 orders. If both images sold at the same rate, 1,150 visits would give about 29 orders (1,150 × 2.5% = 28.75). A few lucky orders can change the result.</li>
            <li><strong>No chance check.</strong> Asha did not check whether a gap this size could happen by luck.</li>
          </ul>
          <p>You can do the chance check in Excel or Google Sheets. Put the visits in B2 and B3 and the orders in C2 and C3:</p>
          <pre><code>D2  Conversion A          =C2/B2                     2.50%
        D3  Conversion B          =C3/B3                     3.30%
        E2  Relative lift         =(D3-D2)/D2                32.2%
        F2  Combined rate         =(C2+C3)/(B2+B3)           2.89%
        G2  z-score               =(D3-D2)/SQRT(F2*(1-F2)*(1/B2+1/B3))   1.16
        H2  p-value               =2*(1-NORM.S.DIST(ABS(G2),TRUE))      0.24</code></pre>
          <p>The <strong>p-value</strong> is the chance of seeing a gap at least this big if the two images really sell equally well. Here it is 0.24. So if the images really sold equally well, a gap like this would still happen by luck about 1 time in 4. Many teams want a p-value below 0.05 (1 time in 20) before they call a winner. Asha's result is a hint, not proof.</p>
        </div>
        <div class="lc-card">
          <h3>How much data do you need?</h3>
          <p>To reliably spot a change from 2.5% to 3.3%, you need roughly 7,000 visits for each image. This uses the usual settings in free online sample size calculators (95% confidence, 80% power). Asha's product page gets about 1,200 visits a week. Split in half, each image gets about 600 a week. So the test would take about 7,000 ÷ 600 = 12 weeks. That is longer than the Diwali season.</p>
          <p>Small shops have two better options:</p>
          <ul class="lc-list">
            <li><strong>Test clicks in ads.</strong> Ads get many more impressions than a product page gets visits. Meta Ads Manager has an A/B test option that splits the audience for you. Asha ran both images with the same budget and dates:</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Ad image</th><th>Impressions</th><th>Clicks</th><th>CTR</th></tr></thead>
            <tbody>
              <tr><td>A: closed box</td><td>20,000</td><td>240</td><td>240 ÷ 20,000 = 1.2%</td></tr>
              <tr><td>B: open box</td><td>20,000</td><td>320</td><td>320 ÷ 20,000 = 1.6%</td></tr>
            </tbody>
          </table>
          <p>With the same formulas, the z-score is 3.40 and the p-value is below 0.001. A gap this big is very unlikely to be luck. B clearly wins more clicks. Asha still checks that B's clicks turned into orders.</p>
          <ul class="lc-list">
            <li><strong>Use the marketplace's own test tool.</strong> Amazon offers a tool called Manage Your Experiments to some brand owners enrolled in Brand Registry, for products with enough traffic. It splits shoppers between two main images for you. Check Seller Central for who can use it.</li>
          </ul>
          <p>Rules for a fair test:</p>
          <ul class="lc-list">
            <li>Change one thing only. If you change the image and the price together, you cannot tell which one worked.</li>
            <li>Run both versions at the same time, with shoppers split at random.</li>
            <li>Decide the metric, the sample size and the end date before you start.</li>
            <li>Do not stop early just because one version is ahead. Early leads often disappear.</li>
            <li>Run for full weeks, so weekdays and weekends are both included.</li>
            <li>Write every test in a log: dates, images, numbers and decision.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Asha reads her results with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Asha's prompt">"Image A: 1,200 visits, 30 orders. Image B: 1,150 visits, 38 orders. Which image won?"</li>
              <li data-kind="answer" data-label="AI reply">"Image B wins. It converts at 3.3% against 2.5%, which is 32% better. Switch to B now."</li>
              <li data-kind="thought" data-label="Asha thinks">"32% sounds big, but it is only about 9 extra orders. And B ran closer to Diwali."</li>
              <li data-kind="tool" data-label="Spreadsheet">She types the visits and orders into Google Sheets and adds the conversion, z-score and p-value formulas.</li>
              <li data-kind="result" data-label="Sheet shows">A 2.50%, B 3.30%, relative lift 32.2%, z-score 1.16, p-value 0.24.</li>
              <li data-kind="warn" data-label="The mistake">The AI called a winner from a small sample in two different weeks. A p-value of 0.24 means a gap like this happens by luck about 1 time in 4.</li>
              <li data-kind="check" data-label="Decision">Asha keeps B for now, because it shows all 12 pieces. She notes "not proven" in her test log. Then she plans a Meta A/B ad test with the same dates and budget for both images.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check your test results and plan a fairer test. Then check its maths with the spreadsheet formulas above.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful e-commerce analyst. Explain in simple English for a small shop owner.

        My test: [two main images for a Diwali gift box on my own online store]
        Image A: [1,200 visits, 30 orders]. Dates: [15 to 21 October]
        Image B: [1,150 visits, 38 orders]. Dates: [22 to 28 October]
        My product page gets about [1,200] visits a week.

        Please:
        1. Calculate each conversion rate, the difference in percentage points and the relative lift. Show each formula.
        2. Say whether this was a fair test. List the problems.
        3. Do a two-proportion z-test. Give the z-score and p-value, and explain the p-value in one plain sentence.
        4. Estimate how many visits per image I need to detect this size of difference (95% confidence, 80% power), and how many weeks that would take.
        5. Suggest a faster, fairer test for a small shop.
        6. Give Google Sheets formulas I can use to check your numbers.

        Rules: Do not call a winner unless the data supports it. If you are unsure of a number, say so.</pre>
            <ul class="ai-try-checks">
              <li>Conversion rates are 2.50% and 3.30%, with a 0.8 point gap and about 32% relative lift.</li>
              <li>The p-value is about 0.24, and the answer says this is not proof.</li>
              <li>The sample size is roughly 7,000 visits per image. If it is very different, ask the AI to explain.</li>
              <li>It points out that the two weeks were different.</li>
              <li>You check the numbers yourself in a spreadsheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A higher percentage is not proof. Test one change at a time, in the same weeks, with enough data. Check the p-value before you call a winner. When your numbers are small, test clicks in ads first, then confirm with sales.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Copyright, Trademarks and AI Images</h1>
        </div>
        <p class="lc-lead">Your product photos are business assets. Competitors may copy them, and you may be tempted to borrow someone else's. AI adds new questions: who owns an AI image, and can AI copy other people's work or logos into yours? In this lesson, you will learn the basics of copyright and trademarks for product images. You will see what India and the US say about AI images and what you must never copy. You will also learn what to do when someone copies you. This is general education, not legal advice. For real disputes, talk to an intellectual property lawyer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Asha's festive scene image has four parts with different rights. One: the real photo of the box, which is Asha's copyright. Two: the AI-made background, where copyright protection is unclear. Three: the Sweet Crumbs logo, her brand, which she should register as a trademark. Four: the props, which must not show any other brand's logo or design.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="230" height="250" rx="12" fill="#1f1f44" stroke="#4b4a78" stroke-width="2"/>
              <text x="135" y="70" font-size="11" fill="#9b99b8">AI background</text>
              <rect x="22" y="200" width="226" height="68" rx="4" fill="#4a3526"/>
              <circle cx="45" cy="182" r="10" fill="#f59e0b" fill-opacity="0.7"/>
              <circle cx="225" cy="180" r="10" fill="#f59e0b" fill-opacity="0.7"/>
              <ellipse cx="60" cy="215" rx="14" ry="6" fill="#c9a227"/>
              <ellipse cx="210" cy="218" rx="14" ry="6" fill="#c9a227"/>
              <rect x="75" y="118" width="120" height="84" rx="4" fill="#7a1f2b" stroke="#c9a227" stroke-width="2"/>
              <text x="135" y="160" font-size="11" fill="#c9a227">Sweet Crumbs</text>
              <g font-size="11" font-weight="700" fill="#ffffff">
                <circle cx="195" cy="114" r="11" fill="#3b82f6"/>
                <text x="195" y="118">1</text>
                <circle cx="44" cy="44" r="11" fill="#f59e0b"/>
                <text x="44" y="48">2</text>
                <circle cx="135" cy="184" r="11" fill="#10b981"/>
                <text x="135" y="188">3</text>
                <circle cx="60" cy="240" r="11" fill="#ec4899"/>
                <text x="60" y="244">4</text>
              </g>
              <g text-anchor="start">
                <rect x="280" y="24" width="460" height="58" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
                <circle cx="304" cy="53" r="12" fill="#3b82f6"/>
                <text x="304" y="57" font-size="11" font-weight="700" fill="#ffffff" text-anchor="middle">1</text>
                <text x="328" y="48" font-weight="700" fill="#93c5fd">Real photo of the box</text>
                <text x="328" y="68" font-size="12" fill="#9b99b8">Asha took it, so she owns the copyright</text>
                <rect x="280" y="94" width="460" height="58" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
                <circle cx="304" cy="123" r="12" fill="#f59e0b"/>
                <text x="304" y="127" font-size="11" font-weight="700" fill="#ffffff" text-anchor="middle">2</text>
                <text x="328" y="118" font-weight="700" fill="#fcd34d">AI-made background</text>
                <text x="328" y="138" font-size="12" fill="#9b99b8">copyright protection is unclear</text>
                <rect x="280" y="164" width="460" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
                <circle cx="304" cy="193" r="12" fill="#10b981"/>
                <text x="304" y="197" font-size="11" font-weight="700" fill="#ffffff" text-anchor="middle">3</text>
                <text x="328" y="188" font-weight="700" fill="#6ee7b7">Sweet Crumbs logo</text>
                <text x="328" y="208" font-size="12" fill="#9b99b8">her brand: register it as a trademark</text>
                <rect x="280" y="234" width="460" height="58" rx="10" fill="#1f1f44" stroke="#ec4899"/>
                <circle cx="304" cy="263" r="12" fill="#ec4899"/>
                <text x="304" y="267" font-size="11" font-weight="700" fill="#ffffff" text-anchor="middle">4</text>
                <text x="328" y="258" font-weight="700" fill="#f9a8d4">Diyas, marigolds, brass plate</text>
                <text x="328" y="278" font-size="12" fill="#9b99b8">no other brand's logo or design in the scene</text>
              </g>
              <text x="380" y="312" font-size="12.5" fill="#9b99b8">One image, four kinds of rights. Check each part.</text>
            </g>
          </svg>
          <figcaption>Asha's festive scene mixes her own photo, an AI background, her logo and props. Each part raises a different rights question.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who owns your product photos?</h3>
          <p><strong>Copyright</strong> is the legal right to copy, share and sell a creative work, such as a photo, a video or a drawing. In India and the US, a photo gets copyright as soon as it is taken. You do not need to register it, although registration can help as proof.</p>
          <ul class="lc-list">
            <li><strong>You took the photo:</strong> you usually own it. Asha owns the photos she took in her kitchen studio.</li>
            <li><strong>You paid a photographer:</strong> the rules differ by country. In India, when you pay someone to take photos for you, the law usually makes you the first owner, unless an agreement says otherwise. In the US, a freelance photographer usually keeps the copyright unless you sign a written transfer.</li>
            <li><strong>So always write it down.</strong> Imran's agreement with his photographer says Zari &amp; Co owns all photos from the shoot and may edit them, including with AI.</li>
          </ul>
          <p>Keep your original files, with their dates, in a safe folder. They are your best proof if someone copies your images.</p>
        </div>
        <div class="lc-card">
          <h3>Who owns an AI image?</h3>
          <p>This is still being decided. Here is the position as of September 2026:</p>
          <table class="lc-table">
            <thead><tr><th></th><th>United States</th><th>India</th></tr></thead>
            <tbody>
              <tr><td>The law</td><td>Copyright needs a human author. In March 2026, the Supreme Court refused to hear an appeal against this rule (the Thaler case), so it stands.</td><td>The Copyright Act, 1957 says the author of a "computer-generated" work is the person who causes it to be created. Courts have not clearly decided how this applies to AI images.</td></tr>
              <tr><td>What it means</td><td>The US Copyright Office says prompts alone are usually not enough. Human-made parts, and creative choices in how parts are selected and arranged, can be protected.</td><td>The government published a working paper on AI and copyright in December 2025 and asked for public comments. The position may change.</td></tr>
            </tbody>
          </table>
          <p>What this means for sellers:</p>
          <ul class="lc-list">
            <li>Your real photo is clearly yours. A fully AI-made image may have weak or no protection, so others may copy it more easily. This is one more reason to build images from your real photos.</li>
            <li>Read each AI tool's terms. Check who owns the output, whether commercial use is allowed, and what happens if the output copies someone else's work.</li>
            <li>Keep your edit log. It shows which parts you made and which parts AI made.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Do not copy others, and watch what AI copies</h3>
          <p>A <strong>trademark</strong> is a name, logo or sign that shows who sells a product, such as the "Sweet Crumbs" name and logo. Using another brand's trademark can make buyers think you are linked to that brand. Registering your own name and logo with India's Trade Marks Registry makes it easier to act against copies. Marketplace brand programmes also often ask for a trademark.</p>
          <table class="lc-table">
            <thead><tr><th>Risky action</th><th>Why it is a problem</th><th>Safe alternative</th></tr></thead>
            <tbody>
              <tr><td>Using a competitor's photo, or one from a Google or Pinterest search</td><td>Someone else owns the copyright</td><td>Take your own photo. Use licensed stock only for backgrounds.</td></tr>
              <tr><td>Uploading a competitor's ad to AI and saying "make mine like this"</td><td>The result may copy their creative work closely</td><td>Describe your own idea in words: light, props, colours</td></tr>
              <tr><td>AI adds a famous chocolate wrapper or soft drink bottle to the scene</td><td>Another brand's trademark appears in your image</td><td>Zoom in and remove all other brands' logos and packaging</td></tr>
              <tr><td>AI garbles your own logo ("Sweet Crurnbs")</td><td>It looks fake and weakens your brand</td><td>Keep the real logo from your photo. Never let AI redraw it.</td></tr>
              <tr><td>Using a film song or a paid font without a licence</td><td>Music and fonts also have owners</td><td>Use music and fonts licensed for business use</td></tr>
              <tr><td>A comparison image with a rival's product and logo</td><td>Unfair comparisons can break ad codes and trademark law</td><td>Compare facts about your own products, such as box sizes</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: Imran finds his photos on another listing</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Image search">A customer says she saw the teal kurta cheaper elsewhere. Imran runs a reverse image search (a search that finds copies of a photo) with Google Lens.</li>
              <li data-kind="result" data-label="What he finds">A made-up seller, "TrendyKurti99", uses Zari &amp; Co's on-model photos of Meera. The listing says polyester, not cotton silk.</li>
              <li data-kind="thought" data-label="Imran thinks">"This copies our photos. It also uses Meera's face beyond her release, and it misleads buyers about the fabric."</li>
              <li data-kind="check" data-label="Collect proof">He saves screenshots and the listing link with the date. He finds the original photo files, the shoot date, the photographer's agreement and Meera's release.</li>
              <li data-kind="user" data-label="Imran's prompt">"Draft a short, factual complaint for a marketplace's intellectual property form. Our original photos were copied. Here are the facts: ..."</li>
              <li data-kind="warn" data-label="Check the draft">The AI draft threatens "legal action under Section 51 with damages of ₹10 lakh". Imran deletes it. The AI invented the amount, and legal threats need a lawyer.</li>
              <li data-kind="check" data-label="Next step">He files the complaint through the marketplace's intellectual property complaint process, attaches his proof and logs the date. He does not copy the other seller's images in return.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to audit where your images came from and flag rights risks. List your own images, or use Asha's example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an e-commerce image rights helper. You give general education, not legal advice.

        My brand: [Sweet Crumbs, a home bakery in Maharashtra. Logo not yet registered as a trademark.]
        My images and where they came from:
        [1. Main image: photo I took, background removed with an AI tool.
        2. Festive scene: my photo plus an AI background with diyas and marigolds.
        3. Instagram post: a stock photo of a Diwali table from a free website, with my box added.
        4. Reel: my own video with a popular film song.
        5. A comparison image of my box next to a famous brand's sweet box with its logo.]
        AI tools I use: [a phone photo editor and an online AI image generator]

        Make a table: Image | Who owns each part | Rights risk (low/medium/high) | Why | What to do.
        Then give me:
        - 5 questions to check in each AI tool's terms of use.
        - 3 steps to protect my own images and logo.
        - The situations where I should talk to an IP lawyer.

        Use simple English. Do not invent laws, section numbers or amounts.</pre>
            <ul class="ai-try-checks">
              <li>The film song and the rival's logo are marked high risk.</li>
              <li>The free stock photo gets a "check the licence" action.</li>
              <li>The answer says AI image ownership is unclear, not settled.</li>
              <li>No invented section numbers, fines or amounts. It says this is not legal advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Build your images from photos you own and keep the originals as proof. Check every AI output for copied work and other brands' logos. The law on AI images is still changing, so get legal advice before any real dispute.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Capstone: A Visual Pack for a New Product</h1>
        </div>
        <p class="lc-lead">In this capstone, you will put the whole course together. A <strong>visual pack</strong> is one document with everything needed to create and publish a product's images and video. It has five parts: a shot list, image briefs, an AI edit plan, a video script and a rules checklist. You will see the finished pack for Asha's new Sweet Crumbs Diwali gift box. Then you will use AI to build a pack for your own product, and check it before anything goes live.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="The five parts of a visual pack in order: 1 shot list, 8 photos and a video. 2 image briefs, one per image, saying what stays exact. 3 AI edit plan with AI job, risk, label and log. 4 video script, 15 seconds of real video with captions. 5 rules check for marketplaces, ads, AI labels and law. Then launch and test: a Meta A/B ad test of the open box on white against the festive scene.">
            <defs><marker id="ppv15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="128" height="92" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="84" y="50" font-weight="700" fill="#93c5fd">1. Shot list</text>
              <text x="84" y="74" font-size="11.5" fill="#9b99b8">8 photos</text>
              <text x="84" y="93" font-size="11.5" fill="#9b99b8">+ 1 video</text>
              <rect x="168" y="20" width="128" height="92" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="232" y="50" font-weight="700" fill="#c4b5fd">2. Image briefs</text>
              <text x="232" y="74" font-size="11.5" fill="#9b99b8">one per image,</text>
              <text x="232" y="93" font-size="11.5" fill="#9b99b8">what stays exact</text>
              <rect x="316" y="20" width="128" height="92" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="50" font-weight="700" fill="#fcd34d">3. AI edit plan</text>
              <text x="380" y="74" font-size="11.5" fill="#9b99b8">job, risk,</text>
              <text x="380" y="93" font-size="11.5" fill="#9b99b8">label, log</text>
              <rect x="464" y="20" width="128" height="92" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="528" y="50" font-weight="700" fill="#f9a8d4">4. Video script</text>
              <text x="528" y="74" font-size="11.5" fill="#9b99b8">15 s, real video,</text>
              <text x="528" y="93" font-size="11.5" fill="#9b99b8">captions on</text>
              <rect x="612" y="20" width="128" height="92" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="676" y="50" font-weight="700" fill="#6ee7b7">5. Rules check</text>
              <text x="676" y="74" font-size="11.5" fill="#9b99b8">marketplace, ads,</text>
              <text x="676" y="93" font-size="11.5" fill="#9b99b8">AI labels, law</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ppv15a)">
                <line x1="149" y1="66" x2="164" y2="66"/>
                <line x1="297" y1="66" x2="312" y2="66"/>
                <line x1="445" y1="66" x2="460" y2="66"/>
                <line x1="593" y1="66" x2="608" y2="66"/>
                <line x1="676" y1="113" x2="676" y2="152"/>
              </g>
              <rect x="20" y="156" width="720" height="62" rx="10" fill="#27274e" stroke="#22d3ee" stroke-width="2"/>
              <text x="380" y="182" font-weight="700" fill="#67e8f9">Launch, then test</text>
              <text x="380" y="204" font-size="12" fill="#9b99b8">Next Meta A/B ad test: open box on white against the festive scene</text>
              <text x="380" y="252" font-size="12.5" fill="#9b99b8">Every part is checked against the real box before it goes live.</text>
            </g>
          </svg>
          <figcaption>A visual pack moves from plan to proof. Each part uses what the part before it decided.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief: start from real facts</h3>
          <p>Every part of the pack comes from one fact sheet. Asha copied these facts from the real box and label. All details are made up for teaching.</p>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Fact</th></tr></thead>
            <tbody>
              <tr><td>Product</td><td>Sweet Crumbs Diwali Mithai &amp; Cookie Gift Box (SKU SC-DIWALI-12)</td></tr>
              <tr><td>Contents</td><td>12 pieces: 3 kaju katli, 3 besan ladoo, 3 nankhatai, 3 atta jaggery cookies. One "Happy Diwali" greeting card.</td></tr>
              <tr><td>Size and weight</td><td>Maroon rigid box, 20 x 20 x 6 cm, gold foil logo, gold ribbon. Net quantity 450 g.</td></tr>
              <tr><td>Price and shelf life</td><td>MRP ₹899, inclusive of all taxes. Best within 10 days of the date of manufacture.</td></tr>
              <tr><td>Allergens</td><td>Cashew (tree nut), milk and wheat (gluten). Vegetarian.</td></tr>
              <tr><td>Channels</td><td>Own Shopify store, Amazon, Flipkart, Instagram ads</td></tr>
              <tr><td>Brand style</td><td>Maroon, gold and cream. Pure white main image. Cream cloth or warm wood in gallery scenes. Soft window light.</td></tr>
              <tr><td>Never show or say</td><td>Extra or bigger pieces, silver varq, sugar-free, organic, "bestseller", fake ratings, fake "was" prices</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Parts 1 to 3: shot list, image briefs and AI edit plan</h3>
          <p>Asha joins three parts into one table. Every image starts from a real photo taken in her phone studio.</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Shot</th><th>AI job</th><th>Must not change</th><th>AI label or tag?</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Main: open box, lid behind, 12 pieces, 45°</td><td>Background removal, white, crop to 85%</td><td>Pieces, colours, logo, box shape</td><td>No (routine edit)</td></tr>
              <tr><td>2</td><td>Closed box with ribbon</td><td>Cleanup only</td><td>Ribbon, logo, maroon colour</td><td>No</td></tr>
              <tr><td>3</td><td>Top-down tray with sweet names</td><td>None. Names added in a design app.</td><td>Names match the real sweets</td><td>No</td></tr>
              <tr><td>4</td><td>Side view with size graphic</td><td>None. Sizes (20 x 20 x 6 cm) added in a design app.</td><td>Real measured sizes</td><td>No</td></tr>
              <tr><td>5</td><td>Box in Asha's two hands</td><td>Cleanup only</td><td>Box size compared to hands</td><td>No</td></tr>
              <tr><td>6</td><td>Close-up of each sweet</td><td>Dust and crumb removal</td><td>Shape, colour, no added shine or varq</td><td>No</td></tr>
              <tr><td>7</td><td>Back label, sharp</td><td>None</td><td>Every word readable, nothing hidden</td><td>No</td></tr>
              <tr><td>8</td><td>Festive table scene</td><td>AI background around the real photo</td><td>Everything inside the box outline</td><td>Yes. Keep the tag. Declare when asked.</td></tr>
              <tr><td>V</td><td>15-second opening video</td><td>None. Captions added.</td><td>Real footage, real hands</td><td>No</td></tr>
            </tbody>
          </table>
          <p>For each AI image, she writes a full brief. This is the brief for image 8:</p>
          <pre><code>Image 8 brief: festive table scene (gallery only, never main)
        Source photo: IMG_2041.jpg, saved as
                      SC-DIWALI-12_08_scene_original.jpg
        Keep exactly: the box, all 12 pieces, their shapes and
        colours, the gold logo, the ribbon, the box height (6 cm).
        Change only: the background. Warm wooden table, cream linen,
        3 brass diyas, marigold flowers, soft evening light from the left.
        Do not add: sweets, silver foil, text, badges, people,
        other brands' packaging.
        After the edit: count 12 pieces, read the logo, compare the
        maroon with the real box, check props look separate.
        Listing text: "Props not included."
        Log: file names, tool used, what changed, checked by, date.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Part 4: the 15-second video script</h3>
          <p>Asha reuses the script she wrote earlier in the course. It uses real footage from the phone studio, at real speed. Many people watch with the sound off, so every key fact appears as on-screen text. The timings add up: 2 + 3 + 3 + 4 + 3 = 15 seconds.</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Shot</th><th>On-screen text</th></tr></thead>
            <tbody>
              <tr><td>0 to 2 s</td><td>Hook: closed box on cream cloth</td><td>Sweet Crumbs</td></tr>
              <tr><td>2 to 5 s</td><td>Hands untie the gold ribbon</td><td>Handmade in India</td></tr>
              <tr><td>5 to 8 s</td><td>The lid lifts to show the tray</td><td>12 pieces, 4 kinds</td></tr>
              <tr><td>8 to 12 s</td><td>Slow pan over the sweets, 1 second each</td><td>Kaju katli, besan ladoo, nankhatai, atta jaggery cookie</td></tr>
              <tr><td>12 to 15 s</td><td>The greeting card, then the closed box</td><td>Best within 10 days</td></tr>
            </tbody>
          </table>
          <p>Before publishing, Asha watches every second at full size. She checks the piece count in the pan shot and the spelling of every caption. She uses music licensed for business use. If she later adds AI motion to any frame, it moves to the "AI label" list.</p>
        </div>
        <div class="lc-card">
          <h3>Part 5: the rules checklist and test plan</h3>
          <pre><code>RULES CHECKLIST: SC-DIWALI-12
        [ ] Main image: background reads 255, 255, 255; box fills about
            85%; no text, badges or props; all 12 pieces visible
        [ ] Every image: 12 pieces, no varq, true maroon, 6 cm height,
            logo reads "Sweet Crumbs"
        [ ] Scenes: gallery only; "Props not included"; AI tag kept
        [ ] Label photo: allergens (cashew, milk, wheat) readable
        [ ] Listing text: MRP, net quantity, best before, manufacturer,
            country of origin, seller details, return policy
        [ ] Ads: no fake "was" price, no "bestseller", no fake ratings,
            no sugar-free or organic claims
        [ ] AI questions from platforms answered honestly
        [ ] Rights: own photos, licensed music and fonts, no other
            brands' logos
        [ ] Current rules checked in Seller Central, Seller Hub and
            Meta and Google help pages (date: ______)
        [ ] Edit log complete for every image</code></pre>
          <p><strong>Test plan:</strong> Asha's first ad test showed that the open box wins more clicks (1.6% against 1.2%). So the open box is now her main image everywhere. Her next Meta A/B ad test compares two ad images: the open box on white and the festive scene (image 8). Both get the same dates and budget. The main metric is CTR. She decides in advance to stop at 20,000 impressions for each image. Then she checks which ad brought more orders, and records everything in her test log.</p>
          <p>Next, Asha will reuse this pack for her smaller Diwali Mini Box: 8 pieces, 300 g, 15 x 15 x 5 cm. Only the facts change. The steps and checks stay the same.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the pack in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Asha's steps for building and launching the visual pack in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Copy the real facts from the box and the label into a fact sheet</li>
              <li data-order="2">Turn buyer questions into a shot list of 8 photos and 1 video</li>
              <li data-order="3">Shoot all photos and the video in the phone studio, in one session</li>
              <li data-order="4">Make the clean main image and check the white, the fill and the piece count</li>
              <li data-order="5">Make AI gallery edits from real photos, using a brief, and log each one</li>
              <li data-order="6">Run the rules checklist for every channel, including AI labels</li>
              <li data-order="7">Publish, run a fair A/B test and record the results</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a visual pack for your own product. Replace the facts in brackets, or run it as it is to practise with Asha's box.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a product visual planner for small Indian online sellers. You care about honest listings.

        Product facts: [Sweet Crumbs Diwali Mithai &amp; Cookie Gift Box: 12 pieces (3 kaju katli, 3 besan ladoo, 3 nankhatai, 3 atta jaggery cookies), greeting card, 450 g net, maroon box 20 x 20 x 6 cm, gold logo and ribbon, MRP Rs 899, contains cashew, milk, wheat]
        Sold on: [own Shopify store, Amazon, Flipkart, Instagram ads]
        Brand style: [maroon, gold, cream; soft window light]

        Create my visual pack:
        1. Shot list: 8 photos + 1 video. # | Shot | Angle | Buyer question | Main or gallery
        2. AI edit plan: # | AI job | Risk | Must not change | AI label or tag needed?
        3. A full brief for the one riskiest AI image.
        4. A 15-second video script: Time | Shot | On-screen text.
        5. A rules checklist of yes/no questions per channel. Add "check the current help page".
        6. A simple A/B test plan for the main image.

        Rules: Use only the facts I gave. No fake discounts, badges, reviews or claims. Simple English and tables.</pre>
            <ul class="ai-try-checks">
              <li>Every shot and caption matches your real facts. Nothing extra appears in the box.</li>
              <li>AI scenes are gallery only and marked for an AI label or tag.</li>
              <li>The video script fits 15 seconds and shows key facts as text.</li>
              <li>The checklist says to check current platform rules, not fixed rules.</li>
              <li>The test plan changes one thing and sets dates and a size in advance.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A visual pack turns good intentions into a repeatable process. Start from real facts and let AI help with planning and editing. Check every image and frame against the real product, and test before you trust a result.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

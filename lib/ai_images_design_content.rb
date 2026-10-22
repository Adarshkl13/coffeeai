module AiImagesDesignContent
  # Units (sidebar dividers): 1–4 AI Image Basics · 5–9 Creating Images · 10–14 Design Work and Rules · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">How AI Image Generators Work</h1>
        </div>
        <p class="lc-lead">You type a sentence, and a few seconds later you get a picture. It feels like magic, but it is not. In this lesson, you will learn how most AI image generators work, in plain words. You will learn the three main ways to use them: text-to-image, image-to-image and editing. When you know how the tool "thinks", you write better prompts. You also know what it will get wrong, so you can check it. Our example all through this course is <strong>Sweet Crumbs</strong>, a small bakery in Maharashtra. The owner, Anjali, and her helper Diya need pictures for their Christmas 2026 plum cake campaign.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top row, training: a clear photo gets more and more noise until it is only noise, and the model learns to remove the noise. Bottom row, making an image: the model starts from random noise and removes it step by step, guided by your prompt, until a finished image appears.">
            <defs><marker id="img1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" font-weight="700" fill="#c4b5fd">1. Training: the model sees millions of images with noise added</text>
              <rect x="20" y="34" width="150" height="66" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="95" y="62" font-weight="700">Clear photo</text>
              <text x="95" y="82" font-size="11" fill="#9b99b8">a real cake</text>
              <rect x="205" y="34" width="150" height="66" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="280" y="62" font-weight="700">Some noise</text>
              <text x="280" y="82" font-size="11" fill="#9b99b8">a bit grainy</text>
              <rect x="390" y="34" width="150" height="66" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="465" y="62" font-weight="700">Lots of noise</text>
              <text x="465" y="82" font-size="11" fill="#9b99b8">hard to see</text>
              <rect x="575" y="34" width="150" height="66" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="650" y="62" font-weight="700">Only noise</text>
              <text x="650" y="82" font-size="11" fill="#9b99b8">random dots</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img1a)">
                <line x1="172" y1="67" x2="201" y2="67"/>
                <line x1="357" y1="67" x2="386" y2="67"/>
                <line x1="542" y1="67" x2="571" y2="67"/>
              </g>
              <text x="380" y="124" font-size="12" fill="#9b99b8">It learns to guess the noise and remove it, one small step at a time.</text>
              <text x="20" y="158" text-anchor="start" font-weight="700" fill="#f9a8d4">2. Making a new image: start from noise, remove it step by step</text>
              <rect x="20" y="168" width="705" height="30" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="372" y="188" font-size="12.5" fill="#fcd34d">Your prompt guides every step: "plum cake on a wooden table, warm light"</text>
              <rect x="20" y="214" width="150" height="66" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="95" y="242" font-weight="700">Random noise</text>
              <text x="95" y="262" font-size="11" fill="#9b99b8">the start</text>
              <rect x="205" y="214" width="150" height="66" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="280" y="242" font-weight="700">Blurry shapes</text>
              <text x="280" y="262" font-size="11" fill="#9b99b8">early steps</text>
              <rect x="390" y="214" width="150" height="66" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="465" y="242" font-weight="700">Rough cake</text>
              <text x="465" y="262" font-size="11" fill="#9b99b8">middle steps</text>
              <rect x="575" y="214" width="150" height="66" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="650" y="242" font-weight="700">Finished image</text>
              <text x="650" y="262" font-size="11" fill="#9b99b8">last step</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img1a)">
                <line x1="172" y1="247" x2="201" y2="247"/>
                <line x1="357" y1="247" x2="386" y2="247"/>
                <line x1="542" y1="247" x2="571" y2="247"/>
              </g>
              <g stroke="#f59e0b" stroke-width="1.2" fill="none" marker-end="url(#img1a)">
                <line x1="280" y1="199" x2="280" y2="210"/>
                <line x1="465" y1="199" x2="465" y2="210"/>
                <line x1="650" y1="199" x2="650" y2="210"/>
              </g>
              <text x="380" y="312" font-size="12" fill="#9b99b8">New random noise each time, so the same prompt gives a different image.</text>
            </g>
          </svg>
          <figcaption>Diffusion in two parts. The model learns by removing noise from real images. Then it makes new images by removing noise from pure noise, guided by your words.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Diffusion in plain words</h3>
          <p>Most popular AI image generators use a method called <strong>diffusion</strong>. Here is the idea in four steps.</p>
          <ol class="lc-list">
            <li><strong>Training.</strong> The company shows the model a very large number of images, each with a short text description. It adds <strong>noise</strong> (random dots, like the grain on an old TV) to each image, a little at a time.</li>
            <li><strong>Learning to clean.</strong> The model practises one job: look at a noisy image and guess the noise, so it can be removed. It also learns how the words in the description link to what is in the picture.</li>
            <li><strong>Starting from noise.</strong> When you ask for a new image, the tool starts with pure random noise. There is no picture in it yet.</li>
            <li><strong>Cleaning, step by step.</strong> The model removes a little noise at each step. Your prompt pushes each step towards "plum cake", "wooden table" and "warm light". After many steps, a new image appears.</li>
          </ol>
          <p>Many tools do this work on a small, compressed version of the image to save time. Then they turn it into full-size pixels at the end. Some newer tools, such as image features inside chat assistants, may build images in other ways. For you as a user, the lessons are the same.</p>
          <ul class="lc-list">
            <li>The model does not search the internet or paste parts of stored photos. It makes new pixels from patterns it learned.</li>
            <li>But it can sometimes make something very close to a famous image, character or logo, because it has seen it many times.</li>
            <li>It does not know <em>your</em> real cake, shop or face. It only knows what cakes and shops usually look like.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Three ways to make images</h3>
          <table class="lc-table">
            <thead><tr><th>Way</th><th>What you give</th><th>What you get</th><th>Sweet Crumbs example</th></tr></thead>
            <tbody>
              <tr><td><strong>Text-to-image</strong></td><td>Only words (a prompt)</td><td>A brand-new image</td><td>A festive table background with spices and holly for the launch post</td></tr>
              <tr><td><strong>Image-to-image</strong></td><td>An image plus words</td><td>A new image that keeps the layout or style of your image</td><td>Diya's rough pencil sketch of the poster becomes a clean illustration</td></tr>
              <tr><td><strong>Editing</strong></td><td>An image, a marked area and words</td><td>The same image with one part changed, removed or extended</td><td>Remove a messy shelf behind a real cake photo. Extend a square photo to fit a tall Story.</td></tr>
            </tbody>
          </table>
          <p>In image-to-image, many tools have a <strong>strength</strong> setting. Low strength keeps your image close to the original. High strength lets the AI change more. Editing has its own words: <strong>inpainting</strong> means changing a marked part inside the image. <strong>Outpainting</strong> means adding new picture around the edges. You will practise these in the editing lesson.</p>
        </div>
        <div class="lc-card">
          <h3>What this means for your work</h3>
          <p>Because of how diffusion works, you can expect these results. Plan for them.</p>
          <table class="lc-table">
            <thead><tr><th>What happens</th><th>Why</th><th>What you do</th></tr></thead>
            <tbody>
              <tr><td>Same prompt, different image every time</td><td>Each image starts from new random noise</td><td>Make 4 to 8 versions and pick the best. Save the prompt that worked.</td></tr>
              <tr><td>The cake looks nice but is not your cake</td><td>The model only knows cakes in general</td><td>Use real photos for products. Use AI for backgrounds, scenes and ideas.</td></tr>
              <tr><td>Words in the image are spelt wrong</td><td>Many models are weaker at exact letters than at shapes</td><td>Add text later in a design tool such as Canva</td></tr>
              <tr><td>Odd hands, extra candles, melted objects</td><td>The model copies patterns, not rules like "5 fingers"</td><td>Zoom in and check every image before you use it</td></tr>
              <tr><td>A result looks like a famous brand's style</td><td>It learned from many images online</td><td>Do not use it. Change the prompt. The copyright lesson explains why.</td></tr>
            </tbody>
          </table>
          <p>Diya tried the prompt <code>Sweet Crumbs plum cake poster</code>. She got a shiny cake that Sweet Crumbs does not sell. It had a label that said "Sweat Crumb". Nothing was wrong with the tool. It did exactly what diffusion does: it made a typical "cake poster" from patterns.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from noise to picture</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in order. This is what happens when Diya asks for a festive table background.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Diya types her prompt: "rustic wooden table, Christmas spices, holly, warm light".</li>
              <li data-order="2">The tool makes a square of pure random noise.</li>
              <li data-order="3">In the early steps, the model removes some noise. Blurry brown and red shapes appear.</li>
              <li data-order="4">In the middle steps, the table, a plate and the spices become clear.</li>
              <li data-order="5">In the last steps, fine details appear, such as wood grain and light on the holly leaves.</li>
              <li data-order="6">Diya zooms in and checks for strange objects, fake text and odd shapes before she uses it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain diffusion in your own language and to plan which way of making images fits each of your tasks. Change the [bracketed] parts to your business or channel.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient design teacher for small businesses and content creators in India.

        First, explain how a diffusion image generator works in 5 short, simple sentences, in [simple English with a few Hinglish words]. Use one everyday example, such as cleaning a foggy window.

        Then help me plan. My business: [Sweet Crumbs, a small bakery in Maharashtra. We need visuals for a Christmas plum cake campaign: an Instagram launch post, 5 carousel slides, a Story, a WhatsApp status, a printed A3 shop poster and product photos of our real cakes.]

        Make a table with these columns: Visual | Best way (text-to-image, image-to-image, editing a real photo, or no AI: real photo or design tool) | Why | One thing that could go wrong | How I will check it.

        Rules:
        - Our real products must be shown with real photos, not AI-made cakes.
        - Text on images should be added in a design tool, not by the AI.
        - Do not name exact prices or features of any tool.</pre>
            <ul class="ai-try-checks">
              <li>Is the diffusion explanation correct: it starts from noise and removes it step by step, guided by the prompt?</li>
              <li>Are the real products planned as real photos, not AI images?</li>
              <li>Does each row have a clear, practical check you can do?</li>
              <li>Is the language simple enough for you to explain it to a friend?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An image generator starts from random noise and cleans it step by step towards your words. It knows what things usually look like, not what <em>your</em> things look like. So use AI for scenes, backgrounds and ideas, use real photos for real products, and check every image before you post it.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">AI Image Tools and Where They Help</h1>
        </div>
        <p class="lc-lead">There are many AI image tools, and new ones appear every month. You do not need all of them. In this lesson, you will learn the four main types of tools, what each type is good at, and where each one fails. Then you will choose a small tool kit for a real job: the Sweet Crumbs Christmas campaign. A small, well-chosen kit saves money and time. It also keeps your images looking the same across posts.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Four tool types side by side: chat assistants with images, image generators, design tools with AI, and your phone camera with AI editing. Each shows what it is good for and what to watch out for.">
            <defs><marker id="img2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="14" width="176" height="262" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="100" y="40" font-size="13" font-weight="700" fill="#c4b5fd">Chat assistants</text>
              <text x="100" y="58" font-size="11" fill="#9b99b8">that can make images</text>
              <text x="100" y="84" font-size="11.5">describe, then refine</text>
              <rect x="196" y="14" width="176" height="262" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="284" y="40" font-size="13" font-weight="700" fill="#f9a8d4">Image generators</text>
              <text x="284" y="58" font-size="11" fill="#9b99b8">e.g. Midjourney, Ideogram</text>
              <text x="284" y="84" font-size="11.5">many styles and options</text>
              <rect x="380" y="14" width="176" height="262" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="468" y="40" font-size="13" font-weight="700" fill="#93c5fd">Design tools + AI</text>
              <text x="468" y="58" font-size="11" fill="#9b99b8">e.g. Canva, Adobe Firefly</text>
              <text x="468" y="84" font-size="11.5">images inside a layout</text>
              <rect x="564" y="14" width="176" height="262" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="652" y="40" font-size="13" font-weight="700" fill="#6ee7b7">Camera + AI edits</text>
              <text x="652" y="58" font-size="11" fill="#9b99b8">phone photo, then edit</text>
              <text x="652" y="84" font-size="11.5">your real products</text>
              <g font-weight="700" fill="#6ee7b7">
                <text x="100" y="118">Good for</text><text x="284" y="118">Good for</text><text x="468" y="118">Good for</text><text x="652" y="118">Good for</text>
              </g>
              <text x="100" y="140">quick ideas</text><text x="100" y="158">edits by chatting</text>
              <text x="284" y="140">rich art styles</text><text x="284" y="158">mood boards</text>
              <text x="468" y="140">text, sizes, templates</text><text x="468" y="158">brand kit, export</text>
              <text x="652" y="140">honest product shots</text><text x="652" y="158">clean backgrounds</text>
              <g font-weight="700" fill="#fcd34d">
                <text x="100" y="198">Watch out</text><text x="284" y="198">Watch out</text><text x="468" y="198">Watch out</text><text x="652" y="198">Watch out</text>
              </g>
              <text x="100" y="220">less fine control</text><text x="100" y="238">check usage terms</text>
              <text x="284" y="220">takes practice</text><text x="284" y="238">plans and credits</text>
              <text x="468" y="220">AI images can look</text><text x="468" y="238">generic</text>
              <text x="652" y="220">light and focus</text><text x="652" y="238">keep edits honest</text>
              <text x="380" y="304" fill="#9b99b8">Most small brands mix two or three: make or edit the image, then finish the design in a design tool.</text>
            </g>
          </svg>
          <figcaption>Four tool types. Each is strong at one kind of job. Features and plans change often, so check each tool's current help pages.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four tool types</h3>
          <table class="lc-table">
            <thead><tr><th>Tool type</th><th>What it does well</th><th>Limits</th><th>Examples (check the current features)</th></tr></thead>
            <tbody>
              <tr><td><strong>Chat assistants with image making</strong></td><td>You describe an image in normal words. Then you ask for changes in the same chat: "make the light warmer". Also good for writing prompts for other tools.</td><td>Less control over fine details. Some assistants cannot make images at all; they only describe or plan them.</td><td>Some chat assistants, such as ChatGPT and Gemini, can make and edit images. Claude can help you plan and write image prompts.</td></tr>
              <tr><td><strong>Image generators</strong></td><td>Many art styles, high image quality, style settings and reference images</td><td>Takes time to learn. Usually needs a paid plan or credits.</td><td>Midjourney is known for artistic images. Ideogram is known for being better than many tools at text inside images.</td></tr>
              <tr><td><strong>Design tools with AI</strong></td><td>Make an image and place it straight into a post, poster or slide. Add real text, your fonts, your logo and your brand colours. Resize for each platform.</td><td>Built-in AI images can look generic. Some AI features are only in paid plans.</td><td>Canva has AI image and editing tools. Adobe Firefly is Adobe's AI family, used in its own app and in tools like Adobe Express and Photoshop.</td></tr>
              <tr><td><strong>Camera plus AI editing</strong></td><td>Shows your real product. AI helps remove backgrounds, clean small marks and fix light.</td><td>You still need good light and a steady phone. Heavy edits can make the product look better than it is.</td><td>Background removers and magic erasers in phone photo apps, Canva and Adobe tools</td></tr>
            </tbody>
          </table>
          <p>Tool names, features, free limits and prices change often. Treat this table as a map, not a price list. Check each tool's current help pages and terms before you choose.</p>
        </div>
        <div class="lc-card">
          <h3>Five questions to choose a tool</h3>
          <ol class="lc-list">
            <li><strong>Is it a real product?</strong> Then use a real photo. You may use AI to clean the background, but not to change the product.</li>
            <li><strong>Does the image need words, prices or dates?</strong> Then finish it in a design tool. Even the best AI text needs checking.</li>
            <li><strong>Do you need a special style or a mascot?</strong> An image generator or a chat assistant with images is a good start.</li>
            <li><strong>Can you use the result for business?</strong> Read the tool's terms. Look for "commercial use" (using images to sell things). Terms can differ between free and paid plans.</li>
            <li><strong>What will you upload?</strong> Do not upload customer photos, staff faces or private documents without permission. Check how the tool stores and uses your uploads.</li>
          </ol>
          <p>About training data: Adobe says its own Firefly models were trained on licensed and public-domain content. The Firefly app can also offer other companies' models, which may have different terms. Always check which model you are using.</p>
        </div>
        <div class="lc-card">
          <h3>Diya's tool kit for the Christmas campaign</h3>
          <p>Diya has a small budget and one month. She picks three tools and tests them before she pays for anything.</p>
          <table class="lc-table">
            <thead><tr><th>Visual</th><th>Tool type</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Product photos of the 5 plum cake products</td><td>Phone camera plus a background remover</td><td>Customers must see the real cake they will get</td></tr>
              <tr><td>Festive backgrounds and scenes</td><td>Image generator or chat assistant with images</td><td>Many styles, quick versions</td></tr>
              <tr><td>Cocoa, the bear mascot (made up for the campaign)</td><td>Image generator with reference images</td><td>Needs the same character in many posts</td></tr>
              <tr><td>Launch post, carousel, Story, A3 poster</td><td>Canva</td><td>Real text, prices and the real logo. Correct sizes.</td></tr>
              <tr><td>Captions and prompt ideas</td><td>A chat assistant, such as Claude</td><td>Writes and improves prompts. Checks the brief.</td></tr>
            </tbody>
          </table>
          <p><strong>Her test:</strong> she writes one prompt for a festive table background. She runs it in two tools and makes 4 images in each. She scores each image out of 5 for quality, brand colours and empty space for text. She keeps the tool with the higher total. The scores are her own judgement, so she also asks Anjali to choose.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which tool type for which job?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each Sweet Crumbs job into the best tool type.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="camera" data-label="Real photo + AI edit"></div>
              <div data-sorter-target="bucket" data-bucket="gen" data-label="Image generator or chat"></div>
              <div data-sorter-target="bucket" data-bucket="design" data-label="Design tool"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="camera" data-why="Customers must see the real cake. AI may only clean the background.">A photo of the eggless plum cake for the WhatsApp catalogue</li>
              <li data-bucket="design" data-why="Prices and dates must be exact. Add them as real text in a design tool.">A carousel slide with the price ₹650 and the order date</li>
              <li data-bucket="gen" data-why="This is a new scene with no real product in it, so a generator is a good fit.">A background of fairy lights in a bakery window for a Story</li>
              <li data-bucket="design" data-why="A print file needs exact size, real text and the real logo.">The A3 shop poster, ready to print</li>
              <li data-bucket="gen" data-why="A new illustrated character needs an image generator with reference images.">First drafts of Cocoa, the bear mascot</li>
              <li data-bucket="camera" data-why="It is a real product. AI can remove the cluttered shelf behind it.">The gift box photo, with a messy shelf removed from behind it</li>
              <li data-bucket="design" data-why="Resizing one design for many platforms is a design tool job.">Turning the launch post into a WhatsApp status size</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to help you choose a small tool kit for your next set of visuals. Change the [bracketed] parts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical design adviser for small brands and creators in India who do their own visuals.

        My project: [Christmas 2026 plum cake campaign for Sweet Crumbs, a small bakery in Maharashtra]
        Visuals I need: [Instagram launch post, 5-slide carousel, Story, WhatsApp status, printed A3 poster, photos of 5 real products]
        My skills: [good with a phone camera, basic Canva, new to AI image tools]
        Budget: [small; I can pay for one tool for one month]

        1. Make a table: Visual | Tool type (chat assistant with images, image generator, design tool with AI, or camera plus AI editing) | Why | What I must check.
        2. Suggest a kit of at most 3 tool types. Say which one is worth paying for first, and why.
        3. Give me a 20-minute test to compare two tools with the same prompt, with a simple score out of 5.
        4. List 4 questions I must answer from each tool's current terms and help pages before I use its images for business.

        Do not state prices or exact limits. Say "check the current plan" instead.</pre>
            <ul class="ai-try-checks">
              <li>Are real products planned with real photos?</li>
              <li>Does text (prices, dates) go in a design tool?</li>
              <li>Did the AI avoid stating prices or limits as facts?</li>
              <li>Are the questions about terms useful: business use, uploads, ownership?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Choose tools by the job, not by the hype. Real products need real photos. New scenes and styles suit image generators. Text, sizes and brand details belong in a design tool. Keep your kit small, test before you pay, and read the terms before you use any image for business.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Copyright, Likeness and Rules</h1>
        </div>
        <p class="lc-lead">An AI image can look perfect and still get you into trouble. It might copy a famous character. It might show a film star's face without permission. Or it might break a platform's rules on AI content. In this lesson, you will learn the main questions: who owns an AI image, why training data is debated, and how to handle trademarks and people's faces. You will also learn the new Indian rules on AI-made content. This lesson is general information, not legal advice. Laws are changing fast, so for important decisions, ask a qualified lawyer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Five checks before you post an AI image: tool terms, no copying, real people, label it, your own input. If any answer is no or not sure, fix it or do not use it. If all are clear, post it and keep a record.">
            <defs><marker id="img3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="11" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="13" font-weight="700" fill="#c4b5fd">Before you post an AI image: five checks</text>
              <rect x="12" y="38" width="136" height="92" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="80" y="64" font-size="12.5" font-weight="700">1. Tool terms</text>
              <text x="80" y="88">Is business use</text>
              <text x="80" y="106">allowed?</text>
              <rect x="158" y="38" width="136" height="92" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="226" y="64" font-size="12.5" font-weight="700">2. No copying</text>
              <text x="226" y="88">No famous character,</text>
              <text x="226" y="106">logo or artist style</text>
              <rect x="304" y="38" width="136" height="92" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="372" y="64" font-size="12.5" font-weight="700">3. Real people</text>
              <text x="372" y="88">A real face or voice?</text>
              <text x="372" y="106">Get written consent</text>
              <rect x="450" y="38" width="136" height="92" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="518" y="64" font-size="12.5" font-weight="700">4. Label it</text>
              <text x="518" y="88">Follow platform</text>
              <text x="518" y="106">and Indian rules</text>
              <rect x="596" y="38" width="136" height="92" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="664" y="64" font-size="12.5" font-weight="700">5. Your input</text>
              <text x="664" y="88">Add your own photos,</text>
              <text x="664" y="106">edits and layout</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img3a)">
                <line x1="149" y1="84" x2="155" y2="84"/>
                <line x1="295" y1="84" x2="301" y2="84"/>
                <line x1="441" y1="84" x2="447" y2="84"/>
                <line x1="587" y1="84" x2="593" y2="84"/>
                <line x1="372" y1="132" x2="372" y2="156"/>
              </g>
              <rect x="12" y="160" width="720" height="40" rx="10" fill="#1f1f44" stroke="#f87171"/>
              <text x="372" y="185" font-size="12.5" fill="#fca5a5">Any answer "no" or "not sure"? Change the image, ask for permission, or do not use it.</text>
              <rect x="12" y="214" width="720" height="40" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="372" y="239" font-size="12.5" fill="#6ee7b7">All clear? Post it. Keep the prompt, tool name, date and files as a record.</text>
              <text x="372" y="278" fill="#9b99b8">General information, not legal advice. Rules change: check current official sources.</text>
            </g>
          </svg>
          <figcaption>Five quick checks for every AI image you use for business. They take two minutes and prevent most problems.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who owns an AI image?</h3>
          <p><strong>Copyright</strong> is the legal right to control copies of a creative work, such as a photo, drawing or design. The big question is whether an image made by AI has a copyright owner at all.</p>
          <ul class="lc-list">
            <li><strong>United States.</strong> In January 2025, the US Copyright Office published Part 2 of its report on copyright and AI. It says material made purely by AI is not protected by copyright. Prompts alone, even long and detailed ones, are not enough. But human work can be protected. Examples are your own drawing that you feed in, your creative choice and arrangement of images, and real changes you make by hand. The Office decides case by case.</li>
            <li><strong>India.</strong> The Copyright Act, 1957 protects works made by an author. The law does not yet give a clear answer for images made purely by AI. In December 2025, a committee set up by DPIIT (the government's industry department) published its first working paper on AI and copyright. It covered training AI on copyrighted works. The question of who owns AI images was left for a later paper. Check for the latest updates.</li>
            <li><strong>Tool terms.</strong> Many tools say you may use the images you make, and some say you own them. That is a contract with the tool. It does not mean the law will protect the image. It also does not protect you if the image copies someone else's work.</li>
          </ul>
          <p><strong>What this means for Sweet Crumbs:</strong> an AI background alone may be free for anyone to copy. Anjali's own photos, the human-made logo and Diya's layout in Canva are human work. So the more of your own work a design has, the stronger your position. Keep your logo human-made, and do not ask AI to redraw it.</p>
        </div>
        <div class="lc-card">
          <h3>The training data debate</h3>
          <p>Image models learned from a very large number of images collected from the internet. Many artists and photographers were not asked. Artists, photo agencies and publishers have taken AI companies to court in several countries. Results so far are mixed, and many cases are still going on. Some companies say they trained on licensed images only.</p>
          <p>You cannot fix this debate, but you can make careful choices:</p>
          <ul class="lc-list">
            <li>Do not write "in the style of [a living artist's name]". Describe the look instead: "soft watercolour, loose brush strokes, warm colours".</li>
            <li>For business work, prefer tools with clear terms about training data and commercial use.</li>
            <li>If a result looks very close to a known artwork, do not use it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Trademarks, characters and people's faces</h3>
          <table class="lc-table">
            <thead><tr><th>Risk</th><th>Example</th><th>Safer choice</th></tr></thead>
            <tbody>
              <tr><td><strong>Trademarks</strong> (names, logos and signs that the law protects for one business)</td><td>An AI image of a cake box with a famous chocolate brand's wrapper colours and logo</td><td>Use only your own logo and brand colours</td></tr>
              <tr><td><strong>Famous characters</strong></td><td>A well-known cartoon mouse or superhero eating plum cake</td><td>Make your own character, like Cocoa the bear, and check it does not look like a famous one</td></tr>
              <tr><td><strong>Famous people</strong></td><td>A film star lookalike holding a Sweet Crumbs cake</td><td>Never. It suggests they support your brand.</td></tr>
              <tr><td><strong>Ordinary people</strong></td><td>Using a customer's photo to make an AI "happy family" image</td><td>Ask first, in writing. Do not upload customer photos to AI tools without clear permission.</td></tr>
            </tbody>
          </table>
          <p><strong>Personality rights</strong> (also called publicity rights) protect a person's name, face, voice and style from use without permission. Indian courts, especially the Delhi High Court and the Bombay High Court, have given many orders protecting well-known people. These orders have stopped AI deepfakes, fake voice clones and fake products using their faces. A deepfake is a realistic fake image, video or voice of a real person. Do not make one, even as a joke.</p>
        </div>
        <div class="lc-card">
          <h3>Platform rules and India's rules on AI content</h3>
          <p>India amended the IT Rules (the rules for online platforms under the Information Technology Act) to cover <strong>synthetically generated information</strong>. This means realistic images, audio and video made or changed by AI. The amendment was notified on 10 February 2026 and came into force on 20 February 2026. In general words:</p>
          <ul class="lc-list">
            <li>Platforms must clearly label realistic AI-made or AI-changed content. Where possible, they must add hidden information (metadata) that shows it was made with AI.</li>
            <li>Large social media platforms must ask users to declare if their upload is AI-made, and use tools to check.</li>
            <li>Platforms must remove unlawful content, such as harmful deepfakes, much faster than before.</li>
            <li>Routine edits, such as colour correction or resizing, are generally not covered, if they do not change the meaning.</li>
          </ul>
          <p>Most duties fall on the platforms. Your job as a user: answer "is this AI-made?" honestly when a platform asks. Label realistic AI images. Never remove AI labels or content credentials. Instagram, Facebook and YouTube have their own AI labels and disclosure settings. The labels lesson covers them in detail. Check each platform's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Diya's poster idea</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Diya asks">"Give me 3 ideas for our Christmas poster image. Make it eye-catching."</li>
              <li data-kind="answer" data-label="AI replies">"1. A famous Bollywood actress in a Santa hat holding your plum cake. 2. A plum cake in the style of a famous animation studio. 3. A cosy illustrated Indian street at Christmas with your cake in a shop window."</li>
              <li data-kind="warn" data-label="Mistake to catch">Idea 1 uses a real star's face, which breaks personality rights. Idea 2 copies a famous studio's style and may look like its characters.</li>
              <li data-kind="tool" data-label="Tool terms">Diya opens her image tool's terms and help pages. She looks for "commercial use" and "uploads".</li>
              <li data-kind="result" data-label="What she finds">In this made-up example, the paid plan allows business use of images. It does not allow images that copy other people's rights.</li>
              <li data-kind="check" data-label="Diya decides">She keeps idea 3. She will add a real photo of the plum cake in Canva and add the real logo herself.</li>
              <li data-kind="user" data-label="Follow-up">"Develop idea 3. No real people, no brand names, no famous characters. Leave space for our own photo and text."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a rights and rules checklist for one image you plan to use. Change the [bracketed] parts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful content adviser for small brands and creators in India. You give general information only, not legal advice.

        The image I plan to use: [an AI-made illustration of a cosy Indian street at Christmas, with a real photo of our plum cake added in Canva, and our own logo]
        Where it will go: [Instagram feed post, WhatsApp status and a printed A3 shop poster]
        Tool used: [an AI image generator on a paid plan]
        People shown: [none]

        1. Make a checklist table: Check | Question to ask | Why it matters | Where to find the answer. Cover: tool terms for business use, copying of characters, logos or artist styles, real people's faces or voices, platform AI labels, India's IT Rules on synthetically generated information, and my own human input.
        2. Mark each check as "OK", "Check" or "Risk" for my image, and explain in one sentence.
        3. List 3 things I should keep as a record.
        4. Tell me when I should ask a lawyer.

        Use simple English. Do not state exact laws or rules as final. Say "check the current official source".</pre>
            <ul class="ai-try-checks">
              <li>Does it say clearly that this is not legal advice?</li>
              <li>Does it cover real people, famous characters and trademarks?</li>
              <li>Does it tell you to check tool terms and platform help pages, not trust it blindly?</li>
              <li>Is the record list practical: prompt, tool, date, files?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI images you would be happy to explain in public. Make your own characters, not copies. Never use a real person's face or voice without written consent. Add your own photos, logo and layout, label realistic AI content, and keep a record. When the stakes are high, ask a lawyer.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Writing Image Prompts</h1>
        </div>
        <p class="lc-lead">A short prompt gives the AI a lot of freedom, so it fills the gaps with the most typical picture. A good image prompt tells it what you really want. In this lesson, you will learn the six parts of a strong image prompt: subject, style, composition, lighting, colours and aspect ratio. You will compare a weak prompt with a strong one. You will also start a <strong>prompt library</strong> (a saved list of prompts that worked) for the Sweet Crumbs Christmas campaign.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="The six parts of a strong image prompt, each with a Sweet Crumbs example: subject, style, composition, lighting, colours and aspect ratio. Below, a weak prompt gives a random, typical result, and a strong prompt gives a usable background.">
            <defs><marker id="img4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="12" y="12" width="150" height="30" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="87" y="32" text-anchor="middle" font-weight="700">1. Subject</text>
              <text x="178" y="32">wooden table, Christmas spices, holly, empty cream plate</text>
              <rect x="12" y="50" width="150" height="30" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="87" y="70" text-anchor="middle" font-weight="700">2. Style</text>
              <text x="178" y="70">realistic food photo, shallow depth of field</text>
              <rect x="12" y="88" width="150" height="30" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="87" y="108" text-anchor="middle" font-weight="700">3. Composition</text>
              <text x="178" y="108">45-degree angle, plate in the centre, empty space at the top</text>
              <rect x="12" y="126" width="150" height="30" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="87" y="146" text-anchor="middle" font-weight="700">4. Lighting</text>
              <text x="178" y="146">soft morning window light from the left</text>
              <rect x="12" y="164" width="150" height="30" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="87" y="184" text-anchor="middle" font-weight="700">5. Colours</text>
              <text x="178" y="184">deep brown, cream, berry red, small touches of green</text>
              <rect x="12" y="202" width="150" height="30" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="87" y="222" text-anchor="middle" font-weight="700">6. Aspect ratio</text>
              <text x="178" y="222">4:5 portrait (for a 1080 x 1350 Instagram post)</text>
              <rect x="12" y="252" width="360" height="86" rx="10" fill="#1f1f44" stroke="#f87171"/>
              <text x="192" y="276" text-anchor="middle" font-weight="700" fill="#fca5a5">Weak: "Christmas cake picture"</text>
              <text x="192" y="298" text-anchor="middle" font-size="12" fill="#9b99b8">random style, no space for text,</text>
              <text x="192" y="318" text-anchor="middle" font-size="12" fill="#9b99b8">a cake you do not sell</text>
              <rect x="388" y="252" width="360" height="86" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="568" y="276" text-anchor="middle" font-weight="700" fill="#6ee7b7">Strong: all six parts</text>
              <text x="568" y="298" text-anchor="middle" font-size="12" fill="#9b99b8">brand colours, right shape, empty</text>
              <text x="568" y="318" text-anchor="middle" font-size="12" fill="#9b99b8">plate for your real cake photo</text>
            </g>
          </svg>
          <figcaption>Six parts of a strong image prompt. You do not always need all six, but each missing part is a choice the AI makes for you.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The six parts, with useful words</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>It answers</th><th>Useful words</th></tr></thead>
            <tbody>
              <tr><td><strong>Subject</strong></td><td>What is in the picture? How many? Where?</td><td>"a box of 4 mini plum cakes tied with red ribbon", "on a cream linen cloth"</td></tr>
              <tr><td><strong>Style</strong></td><td>Is it a photo, an illustration or a painting?</td><td>"realistic food photo", "flat vector illustration", "watercolour", "paper-cut art"</td></tr>
              <tr><td><strong>Composition</strong> (how things are placed in the frame)</td><td>From which angle? What is in the centre? Where is the empty space?</td><td>"close-up", "top-down flat lay", "eye level", "subject on the right", "empty space at the top for a headline"</td></tr>
              <tr><td><strong>Lighting</strong></td><td>Where does the light come from? Is it soft or hard?</td><td>"soft window light from the left", "warm evening glow", "fairy lights, dark background"</td></tr>
              <tr><td><strong>Colours</strong></td><td>Which colours lead? Which are only small accents?</td><td>"deep brown and cream, with berry red accents"</td></tr>
              <tr><td><strong>Aspect ratio</strong> (width compared with height)</td><td>What shape is the image?</td><td>"1:1 square", "4:5 portrait", "9:16 tall", "16:9 wide"</td></tr>
            </tbody>
          </table>
          <p>Also say what you do <em>not</em> want: "no text, no logos, no people". Some tools have a separate box for this. Many tools still add things you said no to, so always check the result.</p>
        </div>
        <div class="lc-card">
          <h3>Weak prompt vs strong prompt</h3>
          <pre><code>Weak prompt:
        Christmas cake picture for my bakery

        Strong prompt:
        A rustic wooden table in a warm Indian home kitchen at Christmas,
        seen from a 45-degree angle. In the centre, an empty cream ceramic
        plate (our real cake photo will be added later). Around it: dried
        fruits, cinnamon sticks, star anise and a small sprig of holly.
        Realistic food photo, shallow depth of field. Soft morning window
        light from the left, gentle shadows. Colours: deep brown, cream,
        berry red, small touches of green. Plenty of empty space at the
        top for a headline. No text, no logos, no people.
        Aspect ratio 4:5.</code></pre>
          <p><strong>What Diya got (made-up example):</strong> the weak prompt gave a shiny, snowy Western cake with fake writing on it. Every version looked different, and none had space for text. The strong prompt gave four usable backgrounds. Two had a spoon and a bowl she did not ask for, so she picked the cleanest one.</p>
          <p><strong>Order matters a little.</strong> Put the most important thing first. Many tools pay more attention to the start of a prompt. Write in clear, normal sentences or short phrases. You do not need magic words.</p>
        </div>
        <div class="lc-card">
          <h3>Aspect ratio and size: plan before you prompt</h3>
          <table class="lc-table">
            <thead><tr><th>Visual</th><th>Ratio</th><th>Final size (pixels)</th><th>Note</th></tr></thead>
            <tbody>
              <tr><td>Instagram launch post and carousel</td><td>4:5</td><td>1080 x 1350</td><td>The profile grid shows a 3:4 crop, so keep text away from the side edges</td></tr>
              <tr><td>Instagram Story, Reel cover, WhatsApp status</td><td>9:16</td><td>1080 x 1920</td><td>Keep text away from the top and bottom, where buttons appear</td></tr>
              <tr><td>WhatsApp broadcast image, product photos</td><td>1:1</td><td>1080 x 1080 (photos 2000 x 2000)</td><td>Square works well in chats and catalogues</td></tr>
              <tr><td>A3 shop poster (printed)</td><td>about 1:1.41</td><td>3508 x 4961 at 300 PPI</td><td>PPI is pixels per inch: 300 PPI is the usual print standard</td></tr>
            </tbody>
          </table>
          <p>Check the maths: 1080 ÷ 4 = 270, and 270 × 5 = 1350. For print, A3 is 297 × 420 mm. One inch is 25.4 mm. So 297 ÷ 25.4 × 300 ≈ 3508 pixels, and 420 ÷ 25.4 × 300 ≈ 4961 pixels.</p>
          <p>Most AI tools only offer some ratios, and many images come out smaller than a print file needs. So pick the closest ratio. Then crop or extend the image in a design tool, or use an upscaler (a tool that enlarges an image). For the poster, the AI image is the background. The real text and logo are added in Canva. Platform sizes change, so check each platform's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Start your prompt library</h3>
          <p>When a prompt works, save it. Diya keeps a simple shared document with these columns: <em>Name | Prompt | Tool | Date | Settings | Best result file | Notes</em>. Here are two more entries she saved:</p>
          <pre><code>P2 Carousel "ingredients" slide (4:5):
        Top-down flat lay on a cream linen cloth: small bowls of raisins,
        black currants, candied orange peel, cashews, cinnamon and nutmeg,
        in a loose circle with space in the middle. Soft, even daylight.
        Colours: cream, brown, berry red. Realistic photo. No text.
        Aspect ratio 4:5.

        P3 Story background (9:16):
        A cosy home bakery window at night in December, fairy lights and a
        small paper star lantern, blurred street lights outside. Warm golden
        glow. Empty space in the middle for a product photo and text.
        No people, no text, no logos. Aspect ratio 9:16.</code></pre>
          <p>Before she uses any result, she checks for extra objects, fake text, odd shapes and anything that looks like another brand.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: name the prompt part</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Diya's prompts have these phrases. Sort each phrase into the prompt part it belongs to.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="subject" data-label="Subject"></div>
              <div data-sorter-target="bucket" data-bucket="style" data-label="Style and colours"></div>
              <div data-sorter-target="bucket" data-bucket="comp" data-label="Composition"></div>
              <div data-sorter-target="bucket" data-bucket="light" data-label="Lighting"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="subject" data-why="It says what is in the picture and how many.">a box of 4 mini plum cakes tied with red ribbon</li>
              <li data-bucket="comp" data-why="It says where the camera is: straight above the table.">top-down flat lay</li>
              <li data-bucket="light" data-why="It says where the light comes from and how soft it is.">soft window light from the left</li>
              <li data-bucket="style" data-why="It says the kind of image: a painting, not a photo.">loose watercolour illustration</li>
              <li data-bucket="comp" data-why="It plans where things go in the frame, so text fits later.">empty space at the top for a headline</li>
              <li data-bucket="light" data-why="It describes the light and mood of the scene.">warm golden glow from fairy lights</li>
              <li data-bucket="style" data-why="It sets which colours lead and which are accents.">cream and brown, with berry red accents</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a rough idea into three strong image prompts. Change the [bracketed] parts to your own visual.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an expert at writing prompts for AI image generators, for small brands in India.

        My rough idea: [a festive background for our Christmas plum cake launch post. Our real cake photo will be added later in Canva.]
        Brand: [Sweet Crumbs, a warm, homely bakery in Maharashtra. Colours: deep brown, cream, berry red, small touches of pistachio green.]
        Where it goes: [Instagram feed post, 1080 x 1350 pixels]

        Write 3 different prompts. Each prompt must:
        - have 50 to 90 words, in plain sentences;
        - cover subject, style, composition, lighting, colours and aspect ratio, in that order;
        - leave clear empty space for our headline and product photo, and say where;
        - end with "No text, no logos, no people" and the aspect ratio.

        Make the 3 prompts different: 1 realistic photo, 1 flat illustration, 1 soft watercolour.

        Under each prompt, list 3 things I should check in the result. Then add a one-line row I can paste into my prompt library: Name | Prompt summary | Ratio.</pre>
            <ul class="ai-try-checks">
              <li>Does each prompt have all six parts?</li>
              <li>Is the aspect ratio right for the size (4:5 for 1080 x 1350)?</li>
              <li>Did it plan empty space for text, instead of putting text in the image?</li>
              <li>Did it avoid artist names, brand names and real people?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every detail you leave out, the AI decides for you, usually in the most typical way. Plan the size first, then describe subject, style, composition, lighting and colours in plain words. Leave space for real text, save the prompts that work, and check every result.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Styles, References and Consistency</h1>
        </div>
        <p class="lc-lead">One good AI image is easy. Ten images that look like they belong together is harder. A campaign needs that: the post, the Story and the poster should look like one brand. In this lesson, you will learn four tools for consistency: style words, reference images, consistent characters and brand colours. You will build a <strong>style block</strong> (a fixed piece of text you add to every prompt) for Sweet Crumbs. You will also create Cocoa, a small bear mascot for the Christmas campaign.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Four inputs, a style block, reference images, a character sheet and brand colours, feed into every prompt. The prompt makes a post, a Story and a poster that look the same. At the end, exact colours, fonts and the real logo are added in Canva.">
            <defs><marker id="img5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="20" width="200" height="46" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="112" y="41" font-weight="700">Style block</text>
              <text x="112" y="58" font-size="11" fill="#9b99b8">same words every time</text>
              <rect x="12" y="76" width="200" height="46" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="112" y="97" font-weight="700">Reference images</text>
              <text x="112" y="114" font-size="11" fill="#9b99b8">your best earlier result</text>
              <rect x="12" y="132" width="200" height="46" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="112" y="153" font-weight="700">Character sheet</text>
              <text x="112" y="170" font-size="11" fill="#9b99b8">Cocoa: front, side, back</text>
              <rect x="12" y="188" width="200" height="46" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="112" y="209" font-weight="700">Brand colours</text>
              <text x="112" y="226" font-size="11" fill="#9b99b8">named in words + hex</text>
              <rect x="262" y="92" width="170" height="70" rx="12" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="347" y="120" font-weight="700" fill="#67e8f9">Every prompt</text>
              <text x="347" y="140" font-size="11.5" fill="#9b99b8">new scene + style block</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img5a)">
                <path d="M214,43 L258,110"/>
                <path d="M214,99 L258,120"/>
                <path d="M214,155 L258,134"/>
                <path d="M214,211 L258,146"/>
                <line x1="434" y1="127" x2="474" y2="127"/>
                <line x1="605" y1="198" x2="605" y2="228"/>
              </g>
              <rect x="480" y="64" width="64" height="80" rx="4" fill="#fff4e0" stroke="#e0a63a"/>
              <circle cx="512" cy="96" r="14" fill="#6b3e26"/><rect x="498" y="112" width="28" height="6" rx="2" fill="#b8323a"/>
              <rect x="570" y="55" width="50" height="89" rx="4" fill="#fff4e0" stroke="#e0a63a"/>
              <circle cx="595" cy="92" r="12" fill="#6b3e26"/><rect x="583" y="106" width="24" height="5" rx="2" fill="#b8323a"/>
              <rect x="648" y="55" width="63" height="89" rx="4" fill="#fff4e0" stroke="#e0a63a"/>
              <circle cx="679" cy="92" r="13" fill="#6b3e26"/><rect x="666" y="107" width="26" height="6" rx="2" fill="#b8323a"/>
              <text x="512" y="166" font-size="11.5">Post 4:5</text>
              <text x="595" y="166" font-size="11.5">Story 9:16</text>
              <text x="679" y="166" font-size="11.5">Poster A3</text>
              <text x="595" y="188" font-size="11.5" fill="#6ee7b7">same look, same Cocoa</text>
              <rect x="262" y="232" width="486" height="44" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="505" y="259" font-size="12.5">Finish in Canva: exact hex colours, brand fonts, the real logo</text>
              <text x="380" y="306" font-size="12" fill="#9b99b8">AI gets you close to the brand look. The design tool makes it exact.</text>
            </g>
          </svg>
          <figcaption>A consistency system. The same inputs go into every prompt, and a design tool adds the exact brand details at the end.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Style words: pick one look and keep it</h3>
          <p>Style words tell the AI what kind of picture to make. Choose one main style for a whole campaign. Mixing a photo post, a cartoon Story and a watercolour poster looks like three different brands.</p>
          <table class="lc-table">
            <thead><tr><th>Style</th><th>Words to use</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>Realistic photo</td><td>"natural food photo", "shallow depth of field", "soft daylight"</td><td>Backgrounds behind real product photos</td></tr>
              <tr><td>Flat illustration</td><td>"flat vector illustration", "simple shapes", "thick soft outlines"</td><td>Mascots, icons, posters with lots of text</td></tr>
              <tr><td>Watercolour</td><td>"loose watercolour", "paper texture", "soft edges"</td><td>Gentle, homely greeting posts</td></tr>
              <tr><td>3D clay look</td><td>"3D clay style", "rounded shapes", "studio light"</td><td>Playful Reels covers</td></tr>
              <tr><td>Paper-cut</td><td>"layered paper-cut art", "soft shadows between layers"</td><td>Festive posters and borders</td></tr>
            </tbody>
          </table>
          <p>Describe the look in plain words. Do not use a living artist's name or a famous studio's name. Anjali chose <strong>flat illustration</strong> for Cocoa and the poster, and <strong>realistic photo</strong> backgrounds for the product posts. Both use the same colours, so they still match.</p>
          <p><strong>Style block S1</strong> (Diya pastes this at the end of every prompt):</p>
          <pre><code>Style: warm, homely and bright. Colours: chocolate brown, warm cream,
        berry red, small touches of pistachio green and butter gold. Soft
        natural light, gentle shadows. Simple backgrounds with empty space
        for text. No text, no logos, no people unless asked.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Reference images</h3>
          <p>A <strong>reference image</strong> is a picture you upload so the AI can follow it. There are two main kinds:</p>
          <ul class="lc-list">
            <li><strong>Style reference:</strong> the AI copies the look: colours, textures, brush strokes and mood. Diya uploads her best festive background so new ones match it.</li>
            <li><strong>Content or character reference:</strong> the AI keeps the same object or character. Diya uploads the Cocoa character sheet so Cocoa looks the same in every scene.</li>
          </ul>
          <p>Many tools have these features, but the names and settings differ. Some have a slider for how strongly to follow the reference. Chat assistants with images often let you upload a picture and say "keep this style". Check the tool's current help pages.</p>
          <p><strong>Only upload images you have the right to use:</strong> your own photos, your earlier AI results, or images you have a licence for. Do not upload another brand's ads or an artist's work to copy their look.</p>
        </div>
        <div class="lc-card">
          <h3>Consistent characters: making Cocoa</h3>
          <p>AI tools forget. Each new image starts from new random noise, so a character can change its face, clothes or colours. Use these steps to keep Cocoa the same:</p>
          <ol class="lc-list">
            <li>Write one fixed <strong>character description</strong> and never change it: "Cocoa: a small, round, friendly brown bear baker, red knitted scarf, cream apron with a small whisk patch, tiny baker's hat, big kind eyes".</li>
            <li>Make a <strong>character sheet</strong> (the same character from the front, side and back, with a few expressions). Pick the best one.</li>
            <li>Use that sheet as a character reference for every new scene. Use the same tool and the same style block.</li>
            <li>Check every image against the sheet: scarf colour, apron patch, hat, eyes and number of paws.</li>
          </ol>
          <pre><code>S2 Character sheet:
        Character design sheet for a bakery mascot named Cocoa: a small,
        round, friendly brown bear baker. Red knitted scarf, cream apron
        with a small whisk patch, a tiny baker's hat. Big kind eyes, simple
        shapes. Flat vector illustration, thick soft outlines. Show Cocoa
        from the front, side and back, plus three expressions: happy,
        surprised, waving. Plain cream background. No text.

        S3 Scene (with the sheet uploaded as a character reference):
        Using the attached character as the same character: Cocoa is
        carrying a plum cake in a red gift box through a busy Indian street
        market decorated with Christmas stars and fairy lights. Same outfit,
        same colours, same flat vector style. Space at the top for a
        headline. No text. Aspect ratio 4:5.</code></pre>
          <p>Cocoa is made up and not based on a real person. Before using Cocoa, Anjali and Diya check that he does not look like a famous cartoon bear. A mascot based on a real person, such as Diya, needs that person's written consent.</p>
        </div>
        <div class="lc-card">
          <h3>Brand colours: close in AI, exact in Canva</h3>
          <p>A <strong>hex code</strong> is a six-character code for an exact colour on screen, such as <code>#6B3E26</code>. Most image generators do not follow hex codes exactly. So name each colour in words in your prompt. Then fix exact colours in a design tool.</p>
          <table class="lc-table">
            <thead><tr><th>Sweet Crumbs colour</th><th>Hex code</th><th>Words for the prompt</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td>Crumb Brown</td><td><code>#6B3E26</code></td><td>chocolate brown</td><td>Headings, logo, main text</td></tr>
              <tr><td>Cream</td><td><code>#FFF4E0</code></td><td>warm cream</td><td>Backgrounds</td></tr>
              <tr><td>Berry Red</td><td><code>#B8323A</code></td><td>berry red</td><td>Christmas accents, price tags</td></tr>
              <tr><td>Pistachio Green</td><td><code>#7A9E5C</code></td><td>soft pistachio green</td><td>Small accents only</td></tr>
              <tr><td>Butter Gold</td><td><code>#E0A63A</code></td><td>butter gold</td><td>Stars and borders, never text on cream</td></tr>
            </tbody>
          </table>
          <p>In Canva, Diya saves these colours, the fonts Playfair Display and Poppins, and the real logo in a <strong>brand kit</strong> (a saved set of brand colours, fonts and logos). All text, price tags and shapes use the exact hex codes. The AI image is only the background or the illustration.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Diya's Cocoa series</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Diya prompts">She uploads the Cocoa character sheet as a reference and uses prompt S3 with the style block.</li>
              <li data-kind="result" data-label="Image 1">Cocoa carries the red gift box. Scarf, apron and hat match the sheet. The colours look right.</li>
              <li data-kind="user" data-label="Next scene">Same prompt, new scene line: "Cocoa is stirring a big bowl of cake batter in a cosy kitchen."</li>
              <li data-kind="warn" data-label="Mistake to catch">In image 2, the scarf is green, the whisk patch is missing and one paw has six fingers.</li>
              <li data-kind="check" data-label="Diya checks">She compares the image with the sheet, detail by detail. She does not post it.</li>
              <li data-kind="tool" data-label="Fix">She makes new versions with the reference set to follow the character more strongly. She adds "red scarf, whisk patch on the apron" to the scene line.</li>
              <li data-kind="result" data-label="Image 2, fixed">The new version matches the sheet. She saves the prompt, the tool name and the setting in her prompt library.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a simple visual style guide for your AI images. Change the [bracketed] parts to your own brand or channel.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a brand designer who helps small businesses and creators in India keep their AI images consistent.

        My brand: [Sweet Crumbs, a warm, homely bakery in Maharashtra]
        Brand colours: [Crumb Brown #6B3E26, Cream #FFF4E0, Berry Red #B8323A, Pistachio Green #7A9E5C, Butter Gold #E0A63A]
        Fonts: [Playfair Display for headings, Poppins for body text]
        Campaign: [Christmas plum cakes: Instagram posts, Stories and a printed poster]
        Character (optional): [Cocoa, a small illustrated bear baker mascot]

        Please give me:
        1. A style block of 40 to 60 words that I can paste at the end of every image prompt. Name colours in words, not hex codes.
        2. 5 style words to use and 5 to avoid, with a reason for each.
        3. A fixed character description of 30 to 40 words, if I have a character.
        4. A table: Colour name | Hex | Words for prompts | Where to use it in my designs.
        5. A 6-point checklist to compare every new image with my best earlier image.

        Do not use any artist's, studio's or brand's name.</pre>
            <ul class="ai-try-checks">
              <li>Is the style block short enough to paste into every prompt?</li>
              <li>Are the hex codes in the table exactly the same as yours?</li>
              <li>Does the character description include fixed details, such as clothes and colours?</li>
              <li>Are there no artist, studio or brand names?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Consistency comes from a system, not from luck. Keep one style block, one character description and your best images as references. Let AI get close to your brand look. Then make it exact in a design tool with your real colours, fonts and logo.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Editing Images with AI</h1>
        </div>
        <p class="lc-lead">You do not always need a new image. Often you need to fix one you already have. AI editing tools can change one part of a photo or make a photo bigger on any side. They can also remove a background or add pixels for print. In this lesson, you will learn these four edits: inpainting, outpainting, background removal and upscaling. You will also learn the most important rule for product photos: edit around the real product, never the product itself. Sweet Crumbs sells real cakes, so its photos must show the real cakes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 336" role="img" aria-label="Four AI edits shown as before and after pictures. Inpainting replaces a messy shelf with holly. Outpainting turns a square photo into a taller post. Background removal cuts out the cake. Upscaling makes a small image bigger. Below, the rule: edit around the real cake, never the cake itself.">
            <defs><marker id="img6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="14" width="176" height="226" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <rect x="196" y="14" width="176" height="226" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="380" y="14" width="176" height="226" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="564" y="14" width="176" height="226" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <g font-size="13" font-weight="700">
                <text x="100" y="38" fill="#f9a8d4">Inpainting</text>
                <text x="284" y="38" fill="#c4b5fd">Outpainting</text>
                <text x="468" y="38" fill="#93c5fd">Background removal</text>
                <text x="652" y="38" fill="#6ee7b7">Upscaling</text>
              </g>
              <rect x="30" y="62" width="60" height="70" rx="3" fill="#fff4e0"/>
              <rect x="62" y="66" width="24" height="20" fill="#9b99b8"/>
              <rect x="59" y="63" width="30" height="26" fill="none" stroke="#ec4899" stroke-dasharray="3 2"/>
              <ellipse cx="52" cy="112" rx="16" ry="10" fill="#6b3e26"/>
              <rect x="116" y="62" width="60" height="70" rx="3" fill="#fff4e0"/>
              <circle cx="150" cy="76" r="4" fill="#7a9e5c"/><circle cx="158" cy="72" r="4" fill="#7a9e5c"/><circle cx="155" cy="80" r="3" fill="#b8323a"/>
              <ellipse cx="138" cy="112" rx="16" ry="10" fill="#6b3e26"/>
              <rect x="218" y="76" width="44" height="44" rx="3" fill="#fff4e0"/>
              <ellipse cx="240" cy="102" rx="12" ry="8" fill="#6b3e26"/>
              <rect x="288" y="52" width="72" height="90" rx="3" fill="#fff4e0"/>
              <rect x="302" y="76" width="44" height="44" fill="none" stroke="#ec4899" stroke-dasharray="3 2"/>
              <ellipse cx="324" cy="102" rx="12" ry="8" fill="#6b3e26"/>
              <rect x="398" y="62" width="60" height="70" rx="3" fill="#9b99b8"/>
              <rect x="402" y="66" width="20" height="14" fill="#6b6990"/><rect x="434" y="70" width="18" height="18" fill="#6b6990"/>
              <ellipse cx="428" cy="112" rx="16" ry="10" fill="#6b3e26"/>
              <rect x="484" y="62" width="60" height="70" rx="3" fill="none" stroke="#9b99b8" stroke-dasharray="3 3"/>
              <ellipse cx="514" cy="112" rx="16" ry="10" fill="#6b3e26"/>
              <rect x="590" y="84" width="30" height="38" rx="2" fill="#fff4e0"/>
              <ellipse cx="605" cy="110" rx="7" ry="4" fill="#6b3e26"/>
              <rect x="656" y="58" width="64" height="80" rx="3" fill="#fff4e0"/>
              <ellipse cx="688" cy="114" rx="16" ry="10" fill="#6b3e26"/>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img6a)">
                <line x1="93" y1="97" x2="110" y2="97"/>
                <line x1="265" y1="97" x2="282" y2="97"/>
                <line x1="461" y1="97" x2="478" y2="97"/>
                <line x1="625" y1="100" x2="650" y2="100"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="60" y="152">before</text><text x="146" y="152">after</text>
                <text x="240" y="152">before</text><text x="324" y="152">after</text>
                <text x="428" y="152">before</text><text x="514" y="152">after</text>
                <text x="605" y="152">1024 px</text><text x="688" y="152">4096 px</text>
              </g>
              <text x="100" y="178">change one selected area</text>
              <text x="100" y="197">messy shelf → holly</text>
              <text x="284" y="178">extend past the edges</text>
              <text x="284" y="197">square photo → 4:5 post</text>
              <text x="468" y="178">cut out the subject</text>
              <text x="468" y="197">cake onto a clean base</text>
              <text x="652" y="178">enlarge, add pixels</text>
              <text x="652" y="197">AI background → A3</text>
              <g font-size="11.5" fill="#fcd34d">
                <text x="100" y="224">Risk: spills onto the cake</text>
                <text x="284" y="224">Risk: odd new details</text>
                <text x="468" y="224">Risk: rough edges</text>
                <text x="652" y="224">Risk: invented texture</text>
              </g>
              <rect x="12" y="256" width="728" height="40" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="281" font-size="13" font-weight="700" fill="#6ee7b7">Rule for product photos: edit around the real cake, never the cake itself.</text>
              <text x="380" y="322" fill="#9b99b8">Tool names differ: Magic Edit, Generative Fill, Magic Expand, Background Remover, Upscale</text>
            </g>
          </svg>
          <figcaption>The four main AI edits, with the risk to check for each one. The same rule covers all four: the product must stay true to the real thing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four edits in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>Edit</th><th>What it does</th><th>Sweet Crumbs example</th><th>What to check</th></tr></thead>
            <tbody>
              <tr><td><strong>Inpainting</strong> (edit inside a selected area)</td><td>You brush over or select one area. Then you type what should go there, or ask the tool to remove it.</td><td>Replace the steel shelf and plastic boxes behind the cake with a plain cream wall and a sprig of holly.</td><td>Did the edit stay inside the area? Is the cake exactly the same?</td></tr>
              <tr><td><strong>Outpainting</strong> (extend the image)</td><td>The AI adds new picture around the edges. The canvas gets bigger.</td><td>Turn a square 1080 x 1080 photo into a 1080 x 1350 post. The AI adds 270 px: 135 px at the top and 135 px at the bottom.</td><td>Is the new area simple and believable? Did it add fake fruit or a second cake?</td></tr>
              <tr><td><strong>Background removal</strong></td><td>The tool finds the main subject and removes everything else. You get a cut-out, often as a PNG with a transparent background.</td><td>Cut out the gift box. Place it on the P1 festive table background in Canva.</td><td>Are the edges clean, including ribbon ends and crumbs? Does the shadow look natural?</td></tr>
              <tr><td><strong>Upscaling</strong> (enlarge an image)</td><td>The tool makes the image bigger and fills in new pixels. AI upscalers guess the new detail.</td><td>Enlarge the AI poster background from 1024 x 1536 px to 4096 x 6144 px (4x). That is more than the 3579 x 5031 px the A3 poster needs with bleed.</td><td>Zoom to 100%. Look for odd patterns, melted shapes or invented texture.</td></tr>
            </tbody>
          </table>
          <p>Many tools have these edits. Examples are Canva's Magic Edit, Magic Eraser, Magic Expand and Background Remover, and Adobe Photoshop's Generative Fill and Generative Expand. Some chat assistants also let you select an area to edit. Some features are only on paid plans, and names change. Check the tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Product photos must stay true to the real cake</h3>
          <p>Sweet Crumbs has one honesty rule: <strong>AI may make backgrounds and decorations, not the cake itself.</strong> A customer who orders the 500 g classic plum cake should get a cake that looks like the photo.</p>
          <table class="lc-table">
            <thead><tr><th>OK to edit</th><th>Not OK</th></tr></thead>
            <tbody>
              <tr><td>Remove the messy shelf, a phone charger or a price sticker behind the cake</td><td>Add more fruit, nuts or glaze on top of the cake</td></tr>
              <tr><td>Replace the background with a festive table or a cream wall</td><td>Make the 500 g cake look as big as the 1 kg cake</td></tr>
              <tr><td>Fix light and colour so the photo matches what your eyes see</td><td>Remove a crack or a burnt edge from the cake</td></tr>
              <tr><td>Extend the table or the wall to fit a new size</td><td>Use an AI-made cake in place of a real photo</td></tr>
              <tr><td>Add a soft shadow so the cut-out does not look pasted</td><td>Show 6 cookies in the gift box when it has 12, or 12 when it has 6</td></tr>
            </tbody>
          </table>
          <p><strong>Always compare:</strong> put the edited photo next to the original on your screen. Check the cake's shape, colour, size, slices, fruit and packaging. If anything on the cake changed, go back to the original and edit again.</p>
        </div>
        <div class="lc-card">
          <h3>Weak edit prompt vs better edit prompt</h3>
          <p>An edit prompt works best when it says three things: what to change, what to keep, and where. Diya selects only the shelf area behind the 1 kg classic plum cake.</p>
          <pre><code>Weak:
        Make the cake look amazing and festive.

        Better (selected area: only the shelf behind the cake):
        In the selected area only, replace the steel shelf and plastic
        boxes with a plain warm cream wall and a small sprig of holly on
        the right. Keep the soft light from the left. Do not change the
        cake, the plate, the ribbon or the table.</code></pre>
          <p>The weak prompt invites the AI to change the cake, because "amazing" has no limit. The better prompt protects the product and names the light, so the new wall matches the photo.</p>
          <p><strong>Check the pixels before you upscale.</strong> Diya's phone photo of the 1 kg cake is 3024 x 4032 px (a made-up example). The catalogue needs 2000 x 2000 px. A square crop of 3024 x 3024 px is already bigger, so she only resizes it down. No upscaler is needed, and nothing is invented.</p>
          <p><strong>Privacy:</strong> check what the tool does with your uploads. Do not upload photos with customers' faces, order slips or phone numbers without permission.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: edit the gift box photo in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Diya needs a 2000 x 2000 px photo of the Christmas gift box for the WhatsApp catalogue. Put her steps in the best order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Take a real photo of the real gift box in soft daylight, and keep the original file.</li>
              <li data-order="2">Crop it to a square and check that it is at least 2000 x 2000 px.</li>
              <li data-order="3">Remove the background, and check the edges of the ribbon and the card.</li>
              <li data-order="4">Place the cut-out on a cream background with a small AI-made holly sprig and a soft shadow.</li>
              <li data-order="5">Compare it with the original: 500 g cake, 12 butter cookies and the card, all unchanged.</li>
              <li data-order="6">Export at 2000 x 2000 px and save the edit notes with the file name and date.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan honest edits for one of your product photos. It will write the edit prompts and a check list for you.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a product photo editor for small food and craft brands in India. You care about honest product images.

        My product: [Sweet Crumbs 1 kg classic plum cake, dark brown, with cherries and cashews on top, on a white plate]
        My photo: [taken on the shop counter, 3024 x 4032 px. A steel shelf and plastic boxes show behind the cake.]
        Where it will go: [WhatsApp catalogue at 2000 x 2000 px, and an Instagram post at 1080 x 1350 px]
        My tools: [Canva with AI editing, and a phone photo app]

        Please give me:
        1. A table: Edit | Type (inpainting, outpainting, background removal, upscaling or basic crop) | Why | Risk to the product.
        2. For each AI edit, a short edit prompt that says what to change, what to keep and where.
        3. The pixel maths for each size. Tell me if I need to upscale or only resize.
        4. A 6-point honesty check that compares the edited photo with the original.

        Rule: the product itself must not change. Only the background, light and space around it may change.</pre>
            <ul class="ai-try-checks">
              <li>Does every edit prompt say "do not change the product"?</li>
              <li>Is the pixel maths right? (3024 x 3024 is bigger than 2000 x 2000, so no upscaling is needed.)</li>
              <li>Did it avoid edits that add fruit, fix cracks or change the size?</li>
              <li>Does the honesty check compare the edit with the original photo?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI editing is best at the boring parts: messy backgrounds, wrong sizes and small files. Use it there. Protect the product: say what must not change, compare every edit with the original photo, and keep the original file. If a customer would feel cheated when the cake arrives, the edit went too far.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Text in Images and Typography</h1>
        </div>
        <p class="lc-lead">Words on a poster or post must be exactly right. A wrong date or price can lose you orders. AI image tools often get text wrong, even when the picture looks perfect. In this lesson, you will learn why this happens and the safe way to work: AI makes the picture, and you add every word in a design tool such as Canva. You will also learn <strong>typography</strong> (how you choose and arrange fonts and text) so your words are clear and look like your brand.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Left: a poster where the AI drew the text, with misspelt words and a wrong price. Right: the safe way, three layers in Canva: an AI image with no text at the bottom, text in the brand fonts in the middle, and the real logo file on top.">
            <defs><marker id="img7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="14" width="330" height="250" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="177" y="38" font-weight="700" fill="#fcd34d">Text drawn by the AI</text>
              <rect x="32" y="54" width="130" height="162" rx="4" fill="#fff4e0"/>
              <g font-size="11" fill="#6b3e26">
                <text x="97" y="84" font-weight="700">Merry Chrismas,</text>
                <text x="97" y="100" font-weight="700">Pnue!</text>
                <text x="97" y="128" font-size="10">Pre-oders opne</text>
                <text x="97" y="142" font-size="10">Tue 1 Dce</text>
                <text x="97" y="176" font-weight="700" fill="#b8323a">1 kg ₹1,2O0</text>
                <text x="97" y="204" font-size="10">Swet Crmbs</text>
              </g>
              <g font-size="12" fill="#fcd34d" text-anchor="start">
                <text x="178" y="76">Misspelt words</text>
                <text x="178" y="100">Wrong numbers: 2O0</text>
                <text x="178" y="124">Not your brand fonts</text>
                <text x="178" y="148">Cannot edit later</text>
                <text x="178" y="172">Screen readers skip it</text>
                <text x="178" y="196">Often worse in Hindi</text>
              </g>
              <text x="177" y="246" font-size="12" fill="#9b99b8">OK for one short word. Check every letter.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img7a)">
                <line x1="346" y1="139" x2="400" y2="139"/>
              </g>
              <rect x="406" y="14" width="342" height="250" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="577" y="38" font-weight="700" fill="#6ee7b7">You add the text in Canva</text>
              <rect x="426" y="54" width="302" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="577" y="81">3. Real logo file (PNG)</text>
              <rect x="426" y="108" width="302" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="577" y="135">2. Text: Playfair Display + Poppins</text>
              <rect x="426" y="162" width="302" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="577" y="189">1. AI image: no text, empty space</text>
              <text x="577" y="232" font-size="12" fill="#6ee7b7">Exact spelling, prices and hex colours</text>
              <text x="577" y="250" font-size="11" fill="#9b99b8">Easy to change a date or price later</text>
              <rect x="12" y="280" width="736" height="38" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="304" font-weight="700" fill="#67e8f9">Rule: the AI makes the picture. You type every word, number and price.</text>
            </g>
          </svg>
          <figcaption>AI-drawn text often has mistakes you cannot fix. Build the design in layers instead: an AI image with no text, then real text, then the real logo.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why AI text goes wrong</h3>
          <p>An image generator does not type letters like a keyboard. It draws pixels that look like letters, because it has seen many pictures with text. So it can draw shapes that look like words but are not quite right. Newer tools, such as Ideogram and some chat assistants with images, are much better at short text. They still make mistakes, so you must check every letter.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Example on the Sweet Crumbs poster</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td>Misspelt or extra letters</td><td>"Merry Chrismas, Pnue!"</td><td>It looks careless. Customers trust the brand less.</td></tr>
              <tr><td>Wrong numbers</td><td>"₹1,2O0" with a letter O, or "₹1,020" instead of ₹1,200</td><td>A wrong price or date causes angry customers and lost orders.</td></tr>
              <tr><td>Made-up words in the background</td><td>Strange letters on a jar or a shop sign</td><td>People zoom in and notice. It shows the image is AI-made.</td></tr>
              <tr><td>Wrong fonts</td><td>A curly font that is not Playfair Display</td><td>The post does not look like Sweet Crumbs.</td></tr>
              <tr><td>Text is part of the picture</td><td>The price is "painted" into the image</td><td>You cannot change it later. Screen readers cannot read it.</td></tr>
              <tr><td>Indian scripts</td><td>Marathi words in Devanagari with broken letters</td><td>Mistakes are often more common in scripts other than English. Ask a fluent reader to check.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The safe way: no text in the prompt, real text in Canva</h3>
          <p>Ask the AI for a picture with <strong>no text</strong> and <strong>empty space</strong> where the words will go. Then add the text in Canva from the brand kit (the saved brand fonts, colours and logo).</p>
          <pre><code>Weak:
        A Christmas poster for Sweet Crumbs bakery with the text "Merry
        Christmas from Sweet Crumbs! Pre-orders open Tue 1 Dec. 10% off till 13 Dec.
        1 kg plum cake Rs 1,200".

        Better:
        A festive illustration background: cream paper texture, a border
        of holly leaves, stars and small plum cake slices in berry red,
        brown and pistachio green. The middle 60% is plain cream for text.
        Flat vector illustration style, clean edges. No text, no letters,
        no numbers, no signs, no logos. Tall portrait format, 2:3.</code></pre>
          <p>The better prompt is prompt P4 from the prompt library, with "no letters, no numbers, no signs" added. Those extra words help stop the AI from adding fake writing.</p>
          <p><strong>When can AI make the text?</strong> For one short decorative word, such as "Joy" on a Christmas ornament. Check every letter at 100% zoom. Never let AI make prices, dates, phone numbers, addresses or allergy information.</p>
        </div>
        <div class="lc-card">
          <h3>Typography basics for the launch post</h3>
          <p>Sweet Crumbs uses two fonts. <strong>Playfair Display</strong> is a serif font (letters with small feet), used for headings. <strong>Poppins</strong> is a sans serif font (letters without feet), used for details and prices. Both are free Google fonts and are in Canva. Poppins also includes Devanagari letters for Hindi and Marathi words. Check they show correctly in your tool.</p>
          <p>Here is Diya's text plan for the 1080 x 1350 px Instagram launch post. The sizes are a starting point. Check them on a phone.</p>
          <table class="lc-table">
            <thead><tr><th>Order</th><th>Exact words</th><th>Font</th><th>Size</th><th>Colour</th></tr></thead>
            <tbody>
              <tr><td>1. Headline</td><td>Merry Christmas from Sweet Crumbs! (two lines)</td><td>Playfair Display Bold</td><td>96 px</td><td>Crumb Brown <code>#6B3E26</code></td></tr>
              <tr><td>2. What</td><td>Plum cake pre-orders open Tue 1 Dec</td><td>Poppins SemiBold</td><td>44 px</td><td>Crumb Brown</td></tr>
              <tr><td>3. Offer</td><td>10% early-bird off till Sun 13 Dec</td><td>Poppins Bold</td><td>40 px</td><td>Berry Red <code>#B8323A</code></td></tr>
              <tr><td>4. Price</td><td>Plum cakes from ₹480</td><td>Poppins Medium</td><td>40 px</td><td>Crumb Brown</td></tr>
              <tr><td>5. Action</td><td>Order on WhatsApp</td><td>Poppins SemiBold</td><td>36 px</td><td>Cream <code>#FFF4E0</code> on a Berry Red button</td></tr>
              <tr><td>6. Small print</td><td>Last order Sun 20 Dec. Pickup 21 to 24 Dec from our kitchen.</td><td>Poppins Regular</td><td>30 px</td><td>Crumb Brown</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Two fonts are enough.</strong> A third font makes the design look messy.</li>
            <li><strong>Make sizes clearly different.</strong> The headline is more than twice the size of the details.</li>
            <li><strong>Never stretch or squash letters.</strong> Change the size instead.</li>
            <li><strong>Avoid long text in capital letters.</strong> It is harder to read.</li>
            <li><strong>Do not use Butter Gold for text on cream.</strong> It is too light to read.</li>
            <li><strong>Put key facts in the caption too.</strong> Some people cannot see the image well. Also write alt text (a short text description of the image for screen readers).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Diya's first poster attempt</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Diya prompts">She asks an image tool for a poster with the words "Merry Christmas from Sweet Crumbs! Pre-orders open Tue 1 Dec. 1 kg plum cake ₹1,200".</li>
              <li data-kind="result" data-label="The image">The picture is lovely. But the text says "Merry Chrismas from Sweet Crumbs!" and "₹1,2O0". A jar in the background has strange letters.</li>
              <li data-kind="warn" data-label="Mistake to catch">If she posts it, customers see a misspelt word and a price with a letter O. She also cannot change the price later.</li>
              <li data-kind="thought" data-label="Diya thinks">She could try again ten times, but the fonts would still not be Playfair Display and Poppins. She changes her method.</li>
              <li data-kind="tool" data-label="Canva">She makes a new background with "no text, no letters, no numbers". In Canva, she adds each line from the brand kit fonts and colours, and places the real logo file.</li>
              <li data-kind="check" data-label="Anjali checks">Anjali reads every line aloud and compares it with the campaign brief: Tue 1 Dec, 10% till Sun 13 Dec, last order Sun 20 Dec, prices from ₹480.</li>
              <li data-kind="result" data-label="Ready">The post is correct and on brand. Diya saves it as a Canva template, so she can change the dates for next year.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan the text layers for one of your designs, plus a no-text image prompt for the background. Change the [bracketed] parts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a typographer and copy editor for small brands in India. I will make the background with an AI image tool (no text). I will add all the text myself in Canva.

        Design: [Instagram launch post, 1080 x 1350 px]
        Brand fonts: [Playfair Display for headings, Poppins for body text]
        Brand colours: [Crumb Brown #6B3E26, Cream #FFF4E0, Berry Red #B8323A]
        Facts (copy exactly, do not change): [Plum cake pre-orders open Tue 1 Dec 2026. 10% early-bird off on orders by Sun 13 Dec. Last order Sun 20 Dec. Pickup 21 to 24 Dec from our home kitchen. Cakes from Rs 480. Order on WhatsApp.]

        Please give me:
        1. A table of at most 6 text layers, most important first: Layer | Exact words | Font and weight | Size in px | Colour (hex).
        2. A short image prompt for the background. Say where to leave empty space. It must say "no text, no letters, no numbers".
        3. A proofreading table: each fact from my list | where it appears | matches exactly (yes/no).
        4. Three common mistakes AI image tools make with text, and how to spot each one.</pre>
            <ul class="ai-try-checks">
              <li>Do all dates, days and prices match your facts exactly?</li>
              <li>Does it use only your two fonts and your hex codes?</li>
              <li>Is the headline clearly the biggest, and is small print still easy to read on a phone?</li>
              <li>Does the image prompt ask for no text, letters or numbers?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let the AI make the picture, and add the words yourself. Text you type in a design tool is spelt right, uses your brand fonts and can be changed in seconds. Before you post, read every word and number aloud against your brief.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Social Media Graphics</h1>
        </div>
        <p class="lc-lead">One campaign needs many graphics: a feed post, a carousel, Stories, a Reel cover and WhatsApp images. Each one has its own size. In this lesson, you will plan graphics in the right sizes and keep text in the safe areas. You will build one template, reuse it, and plan a carousel slide by slide. You will also see how a brand kit keeps every graphic looking like one brand. AI helps with backgrounds and first drafts of the words. You still check every size, date and price.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 376" role="img" aria-label="Four frames drawn to scale: a 4:5 feed post with a 64 pixel margin, a 9:16 Story with keep-clear zones at the top and bottom, a 9:16 Reel cover where the profile grid shows only the middle 3:4 part, and a 1:1 WhatsApp image. Below, the brand kit: five colours, two fonts, the logo and Cocoa.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g font-weight="700">
                <text x="107" y="34">Post, carousel 4:5</text>
                <text x="297" y="34">Story, status 9:16</text>
                <text x="487" y="34">Reel cover 9:16</text>
                <text x="677" y="34">WhatsApp 1:1</text>
              </g>
              <rect x="40" y="50" width="135" height="169" rx="3" fill="#fff4e0"/>
              <rect x="48" y="58" width="119" height="153" fill="none" stroke="#8b5cf6" stroke-dasharray="4 3"/>
              <rect x="60" y="72" width="95" height="14" rx="2" fill="#6b3e26"/>
              <rect x="70" y="92" width="75" height="8" rx="2" fill="#6b3e26" opacity="0.6"/>
              <ellipse cx="107" cy="150" rx="30" ry="18" fill="#6b3e26"/>
              <rect x="72" y="186" width="70" height="16" rx="8" fill="#b8323a"/>
              <rect x="230" y="50" width="135" height="240" rx="3" fill="#fff4e0"/>
              <rect x="230" y="50" width="135" height="31" fill="#f59e0b" opacity="0.35"/>
              <rect x="230" y="259" width="135" height="31" fill="#f59e0b" opacity="0.35"/>
              <text x="297" y="70" font-size="10" fill="#6b3e26">keep clear</text>
              <text x="297" y="279" font-size="10" fill="#6b3e26">keep clear</text>
              <rect x="250" y="100" width="95" height="14" rx="2" fill="#6b3e26"/>
              <ellipse cx="297" cy="170" rx="30" ry="18" fill="#6b3e26"/>
              <rect x="262" y="222" width="70" height="16" rx="8" fill="#b8323a"/>
              <rect x="420" y="50" width="135" height="240" rx="3" fill="#fff4e0"/>
              <rect x="420" y="80" width="135" height="180" fill="none" stroke="#22d3ee" stroke-width="2" stroke-dasharray="5 3"/>
              <rect x="440" y="140" width="95" height="16" rx="2" fill="#6b3e26"/>
              <ellipse cx="487" cy="190" rx="26" ry="15" fill="#6b3e26"/>
              <text x="487" y="72" font-size="10" fill="#6b3e26">cropped in grid</text>
              <text x="487" y="280" font-size="10" fill="#6b3e26">cropped in grid</text>
              <rect x="610" y="50" width="135" height="135" rx="3" fill="#fff4e0"/>
              <rect x="630" y="66" width="95" height="14" rx="2" fill="#6b3e26"/>
              <ellipse cx="677" cy="126" rx="28" ry="16" fill="#6b3e26"/>
              <rect x="642" y="156" width="70" height="16" rx="8" fill="#b8323a"/>
              <g font-size="12" fill="#9b99b8">
                <text x="107" y="238">1080 x 1350 px</text>
                <text x="107" y="256" fill="#c4b5fd">margin 64 px</text>
                <text x="297" y="308">1080 x 1920 px</text>
                <text x="487" y="308">grid shows 3:4 middle</text>
                <text x="677" y="204">1080 x 1080 px</text>
                <text x="677" y="222">broadcast image</text>
              </g>
              <rect x="12" y="326" width="736" height="40" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="70" y="351" font-weight="700" fill="#f9a8d4">Brand kit</text>
              <rect x="120" y="336" width="20" height="20" rx="4" fill="#6b3e26" stroke="#9b99b8"/>
              <rect x="146" y="336" width="20" height="20" rx="4" fill="#fff4e0"/>
              <rect x="172" y="336" width="20" height="20" rx="4" fill="#b8323a"/>
              <rect x="198" y="336" width="20" height="20" rx="4" fill="#7a9e5c"/>
              <rect x="224" y="336" width="20" height="20" rx="4" fill="#e0a63a"/>
              <text x="480" y="351" font-size="12.5">Playfair Display + Poppins · real logo file · Cocoa · same margins</text>
            </g>
          </svg>
          <figcaption>The Sweet Crumbs graphics drawn to scale. Each size has its own safe area. The brand kit stays the same across all of them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Sizes and safe areas from the campaign brief</h3>
          <p>An <strong>aspect ratio</strong> is the shape of an image: width compared with height. A <strong>safe area</strong> is the part of the image where text will not be cut off or covered by buttons. Plan the size before you make anything.</p>
          <table class="lc-table">
            <thead><tr><th>Graphic</th><th>Size (px)</th><th>Ratio</th><th>Keep text here</th></tr></thead>
            <tbody>
              <tr><td>Launch post and 5 carousel slides (Instagram feed)</td><td>1080 x 1350</td><td>4:5</td><td>Inside a 64 px margin. The profile grid shows a 3:4 preview, which cuts about 34 px off each side.</td></tr>
              <tr><td>Story (Instagram)</td><td>1080 x 1920</td><td>9:16</td><td>Keep about 250 px clear at the top and bottom, where the profile name, buttons and reply box show.</td></tr>
              <tr><td>Reel cover (Instagram)</td><td>1080 x 1920</td><td>9:16</td><td>The profile grid shows only the middle 1080 x 1440 px. That cuts 240 px off the top and 240 px off the bottom. Put the title in the middle.</td></tr>
              <tr><td>WhatsApp status</td><td>1080 x 1920</td><td>9:16</td><td>Same as the Story.</td></tr>
              <tr><td>WhatsApp broadcast image</td><td>1080 x 1080</td><td>1:1</td><td>Big, simple text. It shows small in a chat.</td></tr>
            </tbody>
          </table>
          <p>Check the maths: 1080 ÷ 4 = 270, and 270 x 5 = 1350. 1080 ÷ 9 = 120, and 120 x 16 = 1920. Platform sizes and screen layouts change, so check each platform's current help pages before the campaign.</p>
        </div>
        <div class="lc-card">
          <h3>Build one template, then reuse it</h3>
          <p>A <strong>template</strong> is a saved design with fixed places for the headline, image, price and logo. You change only the words and the picture each time. Diya's Canva template for the 4:5 post has these rules:</p>
          <ul class="lc-list">
            <li><strong>Margin:</strong> 64 px on every side. The content area is 952 x 1222 px.</li>
            <li><strong>Headline:</strong> at the top, Playfair Display, Crumb Brown.</li>
            <li><strong>Image:</strong> the real cake photo in the middle, on an AI background such as prompt P1 or P2.</li>
            <li><strong>Button:</strong> "Order on WhatsApp" in a Berry Red box, near the bottom.</li>
            <li><strong>Logo:</strong> the real logo file, same size, bottom-right corner, with clear space around it.</li>
            <li><strong>Cocoa:</strong> small, in the same corner on every slide, never covering the cake.</li>
          </ul>
          <p>For other sizes, do not stretch the post. Make a new design at the right size and move the parts to fit. Some design tools can resize a design in one click, on some plans. You can also outpaint (extend) the AI background to the new shape. Always check the new version by eye, because a resize can push text into an unsafe area.</p>
          <p>A <strong>brand kit</strong> is a saved set of your colours, fonts and logos in the design tool. Diya's kit has the five hex codes, Playfair Display and Poppins, the logo files and the Cocoa character sheet. Brand kit features differ by plan. Check your tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Plan the carousel slide by slide</h3>
          <p>A <strong>carousel</strong> is one post with several slides that people swipe. Instagram allows up to 20 slides at the time of writing. Sweet Crumbs uses 5: one slide per product (both classic sizes share a slide) and one "how to order" slide. The first slide shows in the feed, so it must make people want to swipe.</p>
          <table class="lc-table">
            <thead><tr><th>Slide</th><th>Headline</th><th>Details</th><th>Early-bird price (10% off)</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Classic plum cake</td><td>500 g ₹650, 1 kg ₹1,200. Contains alcohol, egg and nuts.</td><td>₹585 and ₹1,080</td></tr>
              <tr><td>2</td><td>Eggless plum cake</td><td>500 g ₹600. Alcohol-free: fruits soaked in orange juice.</td><td>₹540</td></tr>
              <tr><td>3</td><td>Mini plum cakes</td><td>Box of 4 x 100 g, ₹480.</td><td>₹432</td></tr>
              <tr><td>4</td><td>Christmas gift box</td><td>500 g classic plum cake, 12 butter cookies and a card, ₹999.</td><td>₹899 (₹899.10 rounded)</td></tr>
              <tr><td>5</td><td>How to order</td><td>Order on WhatsApp by Sun 20 Dec. 10% off till Sun 13 Dec. Pickup or local delivery 21 to 24 Dec.</td><td>-</td></tr>
            </tbody>
          </table>
          <p>Diya asks an AI chat assistant to draft the slide words. Then she checks every price with a calculator.</p>
          <pre><code>Weak:
        Write a carousel for my plum cakes.

        Better:
        You are a social media writer for a small bakery in Maharashtra. Write the
        words for a 5-slide Instagram carousel, 1080 x 1350 px. One slide
        per product and a last "how to order" slide. For each slide give:
        headline (max 5 words), 2 short detail lines, and alt text. Use only
        these facts: [paste the product table and dates]. Tone: warm,
        homely, a little Hinglish. No "best in Maharashtra" claims.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: which size is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Diya is making the Christmas graphics. Put each graphic in the right shape.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="p45" data-label="4:5 (1080 x 1350)"></div>
              <div data-sorter-target="bucket" data-bucket="p916" data-label="9:16 (1080 x 1920)"></div>
              <div data-sorter-target="bucket" data-bucket="p11" data-label="1:1 (square)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="p45" data-why="The feed launch post uses 4:5 in the brief. It takes more space in the feed than a square.">The Instagram launch post</li>
              <li data-bucket="p45" data-why="Carousel slides are feed posts, so they use the same 4:5 size as the launch post.">Carousel slide 2: the eggless plum cake</li>
              <li data-bucket="p916" data-why="Stories fill a phone screen, which is 9:16. Keep about 250 px clear at the top and bottom.">An Instagram Story counting down to Sun 13 Dec</li>
              <li data-bucket="p916" data-why="A Reel cover is 9:16, but the grid shows only the middle 3:4 part. Put the title in the middle.">The cover for the "baking day" Reel</li>
              <li data-bucket="p916" data-why="WhatsApp status is full screen, like a Story, so it uses 1080 x 1920 px.">A WhatsApp status about the last order date</li>
              <li data-bucket="p11" data-why="The brief uses a 1080 x 1080 px square for broadcast messages, because squares show well in chats.">The WhatsApp broadcast image</li>
              <li data-bucket="p11" data-why="Catalogue photos are 2000 x 2000 px in the brief. That is also a square, 1:1.">The gift box photo for the WhatsApp catalogue</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a carousel and a matching Story for your own offer. Change the [bracketed] parts to your brand and facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a social media designer for small brands and creators in India.

        Brand: [Sweet Crumbs, a home-style bakery in Maharashtra]
        Brand kit: [colours Crumb Brown #6B3E26, Cream #FFF4E0, Berry Red #B8323A; fonts Playfair Display and Poppins; a round logo; a bear mascot called Cocoa]
        Offer and facts (use only these): [Christmas plum cakes. 500 g Rs 650, 1 kg Rs 1,200, eggless 500 g Rs 600, mini box of 4 Rs 480, gift box Rs 999. 10% early-bird off till Sun 13 Dec. Last order Sun 20 Dec. Order on WhatsApp.]
        Tone: [warm, homely, a little Hinglish]

        Please give me:
        1. A 5-slide Instagram carousel plan (1080 x 1350 px): Slide | Headline (max 5 words) | Details | Image idea | Alt text.
        2. The early-bird price for each product, with the sum shown.
        3. A matching Story (1080 x 1920 px): where the text goes, and the top and bottom areas to keep clear.
        4. Template rules: margins, logo place, button, and what must stay the same on every slide.
        5. Two mistakes to check before posting.</pre>
            <ul class="ai-try-checks">
              <li>Are the early-bird prices right? (For example, Rs 1,200 less 10% is Rs 1,080.)</li>
              <li>Did it use only your facts, with no new offers or claims?</li>
              <li>Are the sizes 1080 x 1350 for slides and 1080 x 1920 for the Story?</li>
              <li>Does the alt text describe the real product in plain words?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Decide the size and safe area first, then design. One good template and a brand kit make every graphic look like the same brand and save you hours. Use AI for backgrounds and first drafts, and check every size, date and price yourself.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Product and Marketing Visuals</h1>
        </div>
        <p class="lc-lead">Marketing visuals sell things. So they must be honest. In this lesson, you will learn three kinds of marketing visuals: product photos, mock-ups and lifestyle scenes. You will see where AI helps and where the real product must be shown. You will also learn, in general words, what Indian rules expect from ad images. And you will learn when to add a label. The simple test: when the order arrives, would the customer feel misled?</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A decision tree. What does the visual show? If it shows the product itself, use a real photo and let AI edit only the background. If it is a mock-up, place your real design on a template and call it a preview if the item is not made yet. If it is a lifestyle scene, AI can make the scene, place the real product photo in it, and label realistic AI people. Final check: would a customer feel misled?">
            <defs><marker id="img9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="250" y="12" width="260" height="40" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="37" font-weight="700" fill="#fcd34d">What does the visual show?</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img9a)">
                <path d="M300,52 L130,94"/>
                <line x1="380" y1="52" x2="380" y2="94"/>
                <path d="M460,52 L630,94"/>
                <line x1="130" y1="140" x2="130" y2="162"/>
                <line x1="380" y1="140" x2="380" y2="162"/>
                <line x1="630" y1="140" x2="630" y2="162"/>
              </g>
              <rect x="20" y="98" width="220" height="42" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="130" y="124" font-weight="700" fill="#6ee7b7">The product itself</text>
              <rect x="270" y="98" width="220" height="42" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="124" font-weight="700" fill="#93c5fd">A mock-up</text>
              <rect x="520" y="98" width="220" height="42" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="630" y="124" font-weight="700" fill="#c4b5fd">A lifestyle scene</text>
              <rect x="20" y="166" width="220" height="84" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="130" y="190">Real photo of the real cake</text>
              <text x="130" y="211">AI edits the background only</text>
              <text x="130" y="232" fill="#9b99b8">Same size, fruit and box</text>
              <rect x="270" y="166" width="220" height="84" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="190">Your real design on a</text>
              <text x="380" y="211">box, bag or poster template</text>
              <text x="380" y="232" fill="#9b99b8">Not made yet? Say "preview"</text>
              <rect x="520" y="166" width="220" height="84" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="630" y="190">AI can make the scene</text>
              <text x="630" y="211">Place the real cake photo in</text>
              <text x="630" y="232" fill="#9b99b8">Label realistic AI people</text>
              <rect x="12" y="272" width="736" height="42" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="298" font-weight="700" fill="#f9a8d4">Final check: would a customer feel misled when the order arrives?</text>
            </g>
          </svg>
          <figcaption>A simple decision tree for marketing visuals. AI can make the setting. The product must always be the real one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of marketing visuals</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>What it is</th><th>AI's job</th><th>Must be real</th></tr></thead>
            <tbody>
              <tr><td><strong>Product photo</strong></td><td>A clear photo of what the customer buys. Sweet Crumbs uses 2000 x 2000 px photos for the WhatsApp catalogue.</td><td>Clean or replace the background, fix light, remove clutter.</td><td>The cake, its size, its toppings and the box.</td></tr>
              <tr><td><strong>Mock-up</strong></td><td>A picture that shows how a design will look on a real object. For example, a poster in the shop window or a label on the gift box.</td><td>Make the setting, such as a shop window at night. Many design tools also have ready mock-up templates.</td><td>Your design file. If the item is not made yet, call it a "design preview".</td></tr>
              <tr><td><strong>Lifestyle scene</strong></td><td>The product in a real-life moment, such as a family Christmas table in an Indian home.</td><td>Make the table, the room, the lights and the mood.</td><td>The cake: place the real cut-out photo into the scene.</td></tr>
            </tbody>
          </table>
          <p>Diya makes a lifestyle scene with AI. Look at how the better prompt leaves space for the real cake and avoids fake customers.</p>
          <pre><code>Weak:
        A happy Indian family eating Sweet Crumbs plum cake at Christmas.

        Better:
        A warm Christmas dinner table in an Indian apartment in the evening.
        Fairy lights, a small paper star lantern, plates and teacups.
        Hands passing plates, no faces. An empty wooden cake stand in the
        centre, for our real product photo. Realistic photo, soft warm
        light from the left. Colours: chocolate brown, warm cream, berry
        red. No text, no logos. Aspect ratio 4:5.</code></pre>
          <p>The weak prompt asks the AI to invent the cake and a "family" that customers may think is real. The better prompt makes only the setting. Diya then places the real photo of the 1 kg classic plum cake on the empty stand, and adds a soft shadow.</p>
        </div>
        <div class="lc-card">
          <h3>Honest images and the rules in India (general information)</h3>
          <p>A picture can mislead as much as words. In India, the Consumer Protection Act, 2019 does not allow misleading advertisements. The Central Consumer Protection Authority (CCPA) also issued guidelines in 2022. They say ads must be truthful and must not exaggerate a product's quality or features. ASCI is the Advertising Standards Council of India, the advertising industry's own rules body. Its code asks for honest ads that do not mislead, by words or by pictures. This applies to small businesses on Instagram and WhatsApp too.</p>
          <table class="lc-table">
            <thead><tr><th>Misleading visual</th><th>Honest fix</th></tr></thead>
            <tbody>
              <tr><td>An AI cake with far more fruit and nuts than the real one</td><td>A real photo of the real cake</td></tr>
              <tr><td>The classic cake photo used on the eggless slide</td><td>Photograph each product. Label the eggless cake "alcohol-free".</td></tr>
              <tr><td>A gift box photo with chocolates that are not in the box</td><td>Show exactly what is inside: a 500 g cake, 12 butter cookies and a card</td></tr>
              <tr><td>"Contains alcohol" hidden in tiny grey text</td><td>A clear line on the classic cake slide: "Contains alcohol, egg and nuts"</td></tr>
              <tr><td>An AI photo of "happy customers" with a made-up quote</td><td>Real reviews shared with the customer's permission, or no customers at all</td></tr>
              <tr><td>An early-bird price in the post that differs from the WhatsApp reply</td><td>The same price everywhere: gift box ₹999, early-bird ₹899 till Sun 13 Dec</td></tr>
            </tbody>
          </table>
          <p>This is general information, not legal advice. Rules and guidelines change. Check the current CCPA and ASCI guidelines, and ask a lawyer if you are unsure.</p>
        </div>
        <div class="lc-card">
          <h3>Labels and disclosure</h3>
          <p><strong>Disclosure</strong> means telling people something they need to know, such as "this image was made with AI" or "this is a paid ad".</p>
          <ul class="lc-list">
            <li><strong>Realistic AI scenes:</strong> Sweet Crumbs adds a small line such as "Scene created with AI. Cake photo is real." Instagram may also ask you to use its AI label for realistic AI content. Check Meta's current help pages.</li>
            <li><strong>Mock-ups of things not made yet:</strong> add "Design preview".</li>
            <li><strong>Props:</strong> if a candle or teacup is only decoration, add "Props not included" when people could think it comes with the order.</li>
            <li><strong>Paid collaborations:</strong> Riya from "Tiffin Tales" may be paid to feature the cakes. Then her post must be clearly labelled, for example with "#ad" or the platform's paid partnership label. ASCI's influencer guidelines ask for this.</li>
            <li><strong>Illustrations:</strong> Cocoa the bear is clearly a drawing. People will not think he is real, so he does not mislead anyone. A short caption note, such as "Cocoa is illustrated with AI.", is still good practice. Follow the platform's rules.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: honest, label it, or not OK?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Anjali checks the campaign visuals before they go out. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Honest as it is"></div>
              <div data-sorter-target="bucket" data-bucket="label" data-label="OK with a label or note"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not OK: misleading"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="The cake is the real, unchanged photo. Only a messy shelf was replaced with a plain wall, so the photo still shows what people get.">A real photo of the 1 kg cake with the messy shelf behind it replaced by a plain cream wall</li>
              <li data-bucket="ok" data-why="Cocoa is clearly an illustrated mascot. Nobody will think the bear is a real product or a real customer. A short caption note that AI helped draw him is still good practice.">Cocoa the illustrated bear holding a red gift box on the poster</li>
              <li data-bucket="label" data-why="The scene looks real but was made by AI. A short note such as &quot;Scene created with AI. Cake photo is real.&quot; keeps it honest.">A realistic AI Christmas table with the real cake photo placed on it</li>
              <li data-bucket="label" data-why="The boxes are not printed yet. The words &quot;Design preview&quot; tell people the real box may look a little different.">A mock-up of the new gift box design, before the boxes are printed</li>
              <li data-bucket="label" data-why="People could think the candle comes with the box. &quot;Props not included&quot; makes it clear.">The gift box photo with a candle next to it as decoration</li>
              <li data-bucket="no" data-why="This shows a cake that does not exist. Customers would get a cake that looks different. Use a real photo.">An AI-made cake with extra cherries on the eggless cake slide</li>
              <li data-bucket="no" data-why="These people are not real customers and the quote is invented. A label does not fix a fake review. Do not use it.">An AI photo of &quot;smiling customers&quot; with a made-up review quote</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review your marketing visual plan for honesty and suggest labels. Change the [bracketed] parts to your own visuals.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful marketing reviewer for small businesses in India. You help make ad images honest and clear. Give general guidance only, not legal advice.

        Business: [Sweet Crumbs, a home bakery in Maharashtra, selling Christmas plum cakes on Instagram and WhatsApp]
        Products (facts): [Classic plum cake 500 g Rs 650 and 1 kg Rs 1,200 (contains alcohol, egg, nuts); eggless 500 g Rs 600; gift box Rs 999 with a 500 g cake, 12 butter cookies and a card]
        My planned visuals:
        [1. Real cake photo on an AI-made festive background
        2. AI-made family Christmas table with our real cake photo placed on it
        3. Mock-up of the new gift box, not printed yet
        4. AI-made close-up of a plum cake for the eggless slide
        5. Gift box photo with a candle and fairy lights as props]

        For each visual, give me a table: Visual | Honest as it is, OK with a label, or not OK | Why | Fix | Exact label text (if needed).
        Then write alt text for visuals 1 and 2.
        End with 3 questions I should check with the platform's help pages or a professional.</pre>
            <ul class="ai-try-checks">
              <li>Does it mark the AI-made cake (visual 4) as not OK and ask for a real photo?</li>
              <li>Are the label texts short, clear and true?</li>
              <li>Did it avoid stating exact laws, fines or rules as facts without saying "check"?</li>
              <li>Does the alt text describe the real product, not an ideal one?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can make the setting, the mood and the mock-up. The product must be the real one, in its real size, with its real contents and warnings. When a scene looks real but is AI-made, say so. An honest picture protects your customers and your brand.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Design Principles for Non-Designers</h1>
        </div>
        <p class="lc-lead">AI can make a beautiful picture. But a good design also needs the right words in the right places. You do not need design school for this. In this lesson, you will learn four simple principles: hierarchy, contrast, alignment and spacing, plus a basic rule for colour. You will check real contrast ratios for the Sweet Crumbs brand colours, so you know which colours are safe for text. These rules work in Canva, in slides and on printed posters.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 338" role="img" aria-label="Before and after versions of the Sweet Crumbs launch post. Before: gold text on cream, no clear focus, crowded edges and mixed alignment. After: a big brown headline first, brown on cream at 8.23 to 1 contrast, one left edge and a 64 pixel margin. Below, four boxes name the principles: hierarchy, contrast, alignment and spacing.">
            <defs><marker id="img10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="12" width="348" height="246" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="186" y="34" font-weight="700" fill="#fcd34d">Before</text>
              <rect x="32" y="50" width="160" height="200" rx="3" fill="#fff4e0"/>
              <rect x="60" y="54" width="90" height="10" rx="2" fill="#e0a63a"/>
              <rect x="80" y="80" width="100" height="12" rx="2" fill="#7a9e5c"/>
              <ellipse cx="150" cy="150" rx="22" ry="12" fill="#6b3e26"/>
              <rect x="34" y="200" width="60" height="8" rx="2" fill="#e0a63a"/>
              <rect x="118" y="230" width="72" height="16" rx="8" fill="#7a9e5c"/>
              <g font-size="11.5" fill="#fcd34d" text-anchor="start">
                <text x="206" y="90">Gold text: 1.99:1</text>
                <text x="206" y="120">No clear focus</text>
                <text x="206" y="150">Crowded edges</text>
                <text x="206" y="180">Mixed alignment</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img10a)">
                <line x1="364" y1="150" x2="394" y2="150"/>
              </g>
              <rect x="400" y="12" width="348" height="246" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="574" y="34" font-weight="700" fill="#6ee7b7">After</text>
              <rect x="420" y="50" width="160" height="200" rx="3" fill="#fff4e0"/>
              <rect x="430" y="60" width="140" height="180" fill="none" stroke="#8b5cf6" stroke-dasharray="4 3"/>
              <rect x="438" y="70" width="110" height="14" rx="2" fill="#6b3e26"/>
              <rect x="438" y="90" width="70" height="14" rx="2" fill="#6b3e26"/>
              <rect x="438" y="112" width="100" height="6" rx="2" fill="#6b3e26" opacity="0.7"/>
              <ellipse cx="500" cy="162" rx="46" ry="24" fill="#6b3e26"/>
              <rect x="438" y="198" width="90" height="7" rx="2" fill="#b8323a"/>
              <rect x="438" y="214" width="74" height="16" rx="8" fill="#b8323a"/>
              <g font-size="11.5" fill="#6ee7b7" text-anchor="start">
                <text x="594" y="90">Headline first</text>
                <text x="594" y="120">Brown on cream 8.23:1</text>
                <text x="594" y="150">One left edge</text>
                <text x="594" y="180">64 px margin</text>
              </g>
              <rect x="12" y="270" width="178" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="101" y="293" font-weight="700" fill="#c4b5fd">1. Hierarchy</text>
              <text x="101" y="313" font-size="12" fill="#9b99b8">one clear headline</text>
              <rect x="198" y="270" width="178" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="287" y="293" font-weight="700" fill="#93c5fd">2. Contrast</text>
              <text x="287" y="313" font-size="12" fill="#9b99b8">text at least 4.5:1</text>
              <rect x="384" y="270" width="178" height="56" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="473" y="293" font-weight="700" fill="#67e8f9">3. Alignment</text>
              <text x="473" y="313" font-size="12" fill="#9b99b8">one left edge</text>
              <rect x="570" y="270" width="178" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="659" y="293" font-weight="700" fill="#f9a8d4">4. Spacing</text>
              <text x="659" y="313" font-size="12" fill="#9b99b8">64 px margin, 8 px steps</text>
            </g>
          </svg>
          <figcaption>The same launch post before and after using four principles. Nothing new was added. The same parts were only resized, recoloured and lined up.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Hierarchy: what people see first</h3>
          <p><strong>Hierarchy</strong> means the order in which people see things. On a phone, people look at a post for a second or two. So one thing must stand out first. Decide the order before you design:</p>
          <ol class="lc-list">
            <li><strong>Headline:</strong> "Merry Christmas from Sweet Crumbs!" (biggest, Playfair Display, 96 px)</li>
            <li><strong>Product:</strong> the real plum cake photo (the biggest picture)</li>
            <li><strong>Offer:</strong> "10% early-bird off till Sun 13 Dec" (Berry Red, 40 px)</li>
            <li><strong>Action:</strong> the "Order on WhatsApp" button</li>
            <li><strong>Small print:</strong> last order date and pickup dates (30 px)</li>
          </ol>
          <p>You can make something stand out with size, weight (bold), colour or position. Use one or two of these, not all four. Try the <strong>squint test</strong>: look at your design with half-closed eyes. The thing you still see clearly is your first level. If it is not the headline or the product, change the design.</p>
        </div>
        <div class="lc-card">
          <h3>Contrast: can people read it?</h3>
          <p><strong>Contrast</strong> is the difference in lightness between text and its background. <strong>WCAG</strong> (Web Content Accessibility Guidelines) is the main international standard for accessible websites and apps. It measures contrast as a ratio from 1:1 (no difference) to 21:1 (black on white). Its common minimum, called level AA, is:</p>
          <ul class="lc-list">
            <li><strong>4.5:1</strong> for normal text.</li>
            <li><strong>3:1</strong> for large text: at least 18 point (24 px) regular, or 14 point (about 18.7 px) bold.</li>
            <li>The stricter level AAA asks for 7:1 for normal text and 4.5:1 for large text.</li>
          </ul>
          <p>The ratio uses <strong>relative luminance</strong> (how bright a colour is, from 0 for black to 1 for white). The formula is: (lighter luminance + 0.05) ÷ (darker luminance + 0.05). For Crumb Brown text on Cream: Cream is 0.9134 and Crumb Brown is 0.0671. So (0.9134 + 0.05) ÷ (0.0671 + 0.05) = 0.9634 ÷ 0.1171 = 8.23:1.</p>
          <table class="lc-table">
            <thead><tr><th>Text colour / background</th><th>Ratio</th><th>Result</th><th>Sweet Crumbs rule</th></tr></thead>
            <tbody>
              <tr><td>Crumb Brown <code>#6B3E26</code> on Cream <code>#FFF4E0</code></td><td>8.23:1</td><td>Passes AA and AAA</td><td>Main text and headings</td></tr>
              <tr><td>Cream on Berry Red <code>#B8323A</code> (or Berry Red on Cream)</td><td>5.42:1</td><td>Passes AA for all text</td><td>Buttons, price tags, the offer line</td></tr>
              <tr><td>Crumb Brown on Butter Gold <code>#E0A63A</code></td><td>4.14:1</td><td>Large text only</td><td>Big words on a gold star or badge only</td></tr>
              <tr><td>Crumb Brown on Pistachio Green <code>#7A9E5C</code></td><td>2.93:1</td><td>Fails</td><td>No text on green</td></tr>
              <tr><td>Pistachio Green on Cream</td><td>2.80:1</td><td>Fails</td><td>Leaves and ribbons only</td></tr>
              <tr><td>Butter Gold on Cream</td><td>1.99:1</td><td>Fails</td><td>Stars and borders only, never text</td></tr>
              <tr><td>Crumb Brown on Berry Red</td><td>1.52:1</td><td>Fails</td><td>Never</td></tr>
            </tbody>
          </table>
          <p>These pixel sizes are for screens at normal size. A 1080 px post shows much smaller on a phone, so make social text bigger than these minimums. To check your own colours, use a free online contrast checker, such as the one from WebAIM. Text on an AI photo is harder, because the background changes from place to place. Put text on a plain area or on a solid cream or brown panel.</p>
        </div>
        <div class="lc-card">
          <h3>Alignment, spacing and colour</h3>
          <ul class="lc-list">
            <li><strong>Alignment</strong> means lining things up along the same edge. Pick one edge, such as the left margin, and line up the headline, details and button on it. Most design tools show guide lines when items line up.</li>
            <li><strong>Margin</strong> is the empty space at the edges. Diya uses 64 px on every side of the 1080 x 1350 px post. Nothing important goes outside it.</li>
            <li><strong>Spacing:</strong> use a few fixed steps, such as 8, 16, 24, 32, 48 and 64 px. Put related things close together, such as a product and its price. Put more space between groups than inside a group.</li>
            <li><strong>Empty space</strong> is not wasted. It helps the cake and the headline stand out.</li>
            <li><strong>Colour:</strong> a common rule of thumb is 60-30-10. About 60% of the area is the main colour (Cream). About 30% is the second colour (Crumb Brown). The last 10% is the accent: Berry Red, with tiny touches of green and gold.</li>
          </ul>
          <p>AI can also give feedback on a design. It can see an image, but it cannot measure contrast exactly. Use a contrast checker for the numbers.</p>
          <pre><code>Weak:
        Is my poster good?

        Better:
        You are a graphic designer. Review the attached Instagram post
        (1080 x 1350 px) for a small bakery. Check hierarchy, contrast,
        alignment and spacing. For each one: what works, what to fix,
        and the exact change (size in px, colour hex, position). The
        first thing people should see is the headline, then the cake.
        Brand colours: [list]. Do not suggest new fonts or new colours.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Diya fixes the launch post</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Diya asks">She uploads her first draft to an AI chat assistant with the "better" review prompt.</li>
              <li data-kind="answer" data-label="AI feedback">"The headline is too small and the eye goes to the green button first. The gold text is hard to read. Items touch the edges and use three different alignments."</li>
              <li data-kind="tool" data-label="Contrast checker">She checks the price colours. Butter Gold on Cream shows 1.99:1. Crumb Brown on Cream shows 8.23:1.</li>
              <li data-kind="warn" data-label="Mistake to catch">The AI also suggests "make the offer Butter Gold so it shines". The checker says 1.99:1, which fails. She does not follow that tip.</li>
              <li data-kind="tool" data-label="Canva">She makes the headline 96 px in Crumb Brown, the offer Berry Red, and the button Cream on Berry Red (5.42:1). She lines everything up on the 64 px left margin.</li>
              <li data-kind="check" data-label="Phone test">She views the post on her phone at arm's length. She does the squint test. The headline and cake show first.</li>
              <li data-kind="result" data-label="Done">The post is clearer, with no new parts. She saves the colour rules in the brand kit notes.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to make a simple design rule sheet for your brand, including which colour pairs are safe for text. Change the [bracketed] parts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a graphic designer who teaches design basics to small business owners in India.

        My brand: [Sweet Crumbs, a home bakery in Maharashtra]
        Colours: [Crumb Brown #6B3E26, Cream #FFF4E0, Berry Red #B8323A, Pistachio Green #7A9E5C, Butter Gold #E0A63A]
        Fonts: [Playfair Display for headings, Poppins for body text]
        Main format: [Instagram post, 1080 x 1350 px]

        Please make me a one-page design rule sheet:
        1. Hierarchy: the order for headline, product image, offer, button and small print, with a font size in px for each.
        2. Contrast: a table of text colour | background | WCAG contrast ratio | pass AA for normal text (4.5:1), large text only (3:1), or fail. Show how you worked out one ratio. If you are not sure of a number, say "check with a contrast checker".
        3. Alignment and spacing: margin in px and a spacing scale.
        4. Colour: a 60-30-10 split using my colours.
        5. Five "never do" rules for my brand.</pre>
            <ul class="ai-try-checks">
              <li>Check two or three ratios with a contrast checker. (Crumb Brown on Cream should be about 8.23:1.)</li>
              <li>Does it say gold or green text on cream fails?</li>
              <li>Is the headline clearly the biggest size, and is small text still readable on a phone?</li>
              <li>Does it use only your colours and fonts?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good design is mostly clear choices. Make one thing stand out first and use colour pairs that pass contrast checks. Line things up on one edge and leave space at the edges. Work out your safe colour pairs once, write them in your brand kit, and follow them every time.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Presentations, Posters and Print</h1>
        </div>
        <p class="lc-lead">A design that looks sharp on your phone can print blurry, too dark or with the edges cut off. Screens and paper work in different ways. In this lesson, you will learn how to set up slides and printed posters, and how big an AI image must be for print. You will also learn what bleed, PPI, RGB and CMYK mean in plain words. At the end, you will know how to check a file with your printer before you pay for 50 copies.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 400" role="img" aria-label="Left: a poster with three edges. The outer pink dashed line is the bleed that gets cut off, the white line is the trim or final edge, and the inner green dashed line is the safe zone for text. Right: a six-row print checklist for the Sweet Crumbs A3 poster: size, pixels, images, colour, file and proof.">
            <defs><marker id="img11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="140" y="24" text-anchor="middle" font-size="13" font-weight="700" fill="#c4b5fd">A3 poster: three edges</text>
              <rect x="40" y="40" width="200" height="282" fill="#1f1f44" stroke="#ec4899" stroke-width="2" stroke-dasharray="6 4"/>
              <rect x="48" y="48" width="184" height="266" fill="#27274e" stroke="#e2e0f0" stroke-width="1.5"/>
              <rect x="64" y="64" width="152" height="234" fill="#1f1f44" stroke="#10b981" stroke-width="1.5" stroke-dasharray="5 4"/>
              <g text-anchor="middle" font-size="11.5">
                <text x="140" y="150">Headline, dates,</text>
                <text x="140" y="168">prices and logo</text>
                <text x="140" y="186">stay in here</text>
              </g>
              <g font-size="11">
                <text x="40" y="344" fill="#f9a8d4">Pink dashed: bleed (cut off)</text>
                <text x="40" y="362">White: trim (the final edge)</text>
                <text x="40" y="380" fill="#6ee7b7">Green dashed: safe zone</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img11a)">
                <line x1="246" y1="181" x2="276" y2="181"/>
              </g>
              <text x="510" y="24" text-anchor="middle" font-size="13" font-weight="700" fill="#c4b5fd">Print checklist for the Sweet Crumbs poster</text>
              <rect x="282" y="40" width="460" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="296" y="65" font-weight="700">Size</text>
              <text x="372" y="65">A3 = 297 x 420 mm, plus 3 mm bleed each side</text>
              <rect x="282" y="88" width="460" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="296" y="113" font-weight="700">Pixels</text>
              <text x="372" y="113">3579 x 5031 px with bleed, at 300 PPI</text>
              <rect x="282" y="136" width="460" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="296" y="161" font-weight="700">Images</text>
              <text x="372" y="161">Every image about 300 PPI at printed size</text>
              <rect x="282" y="184" width="460" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="296" y="209" font-weight="700">Colour</text>
              <text x="372" y="209">Screens use RGB, printers use CMYK</text>
              <rect x="282" y="232" width="460" height="40" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="296" y="257" font-weight="700">File</text>
              <text x="372" y="257">PDF for print, with crop marks and bleed</text>
              <rect x="282" y="280" width="460" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="296" y="305" font-weight="700">Proof</text>
              <text x="372" y="305">Check one printed sample, then approve</text>
              <text x="512" y="352" text-anchor="middle" font-size="11.5" fill="#9b99b8">Always confirm size, bleed and file type with your own printer.</text>
            </g>
          </svg>
          <figcaption>Every print design has a bleed, a trim edge and a safe zone. The checklist on the right covers the six things to check before you send a file.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Screen sizes and print sizes</h3>
          <p>A screen design is measured in <strong>pixels</strong> (the tiny dots that make up a digital image). A print design is measured in millimetres. The link between them is <strong>PPI</strong> (pixels per inch: how many pixels are packed into each inch of paper). For sharp print, aim for about 300 PPI. One inch is 25.4 mm.</p>
          <pre><code>Pixels needed = size in mm / 25.4 x 300
        In a spreadsheet (size in mm in cell A2):  =ROUND(A2/25.4*300, 0)</code></pre>
          <p><strong>Bleed</strong> is extra background around the edge of a print design. The printer cuts it off. It stops thin white lines from showing at the edges if the cut moves slightly. Many printers ask for 3 mm on each side, so a design grows by 6 mm in width and height.</p>
          <table class="lc-table">
            <thead><tr><th>Sweet Crumbs item</th><th>Final size</th><th>Pixels at 300 PPI</th><th>With 3 mm bleed</th></tr></thead>
            <tbody>
              <tr><td>Slides for a gift-box pitch</td><td>Screen, 16:9</td><td>1920 x 1080 px</td><td>No bleed (screen only)</td></tr>
              <tr><td>Shop poster, A3</td><td>297 x 420 mm</td><td>3508 x 4961 px</td><td>303 x 426 mm = 3579 x 5031 px</td></tr>
              <tr><td>Table card, A5</td><td>148 x 210 mm</td><td>1748 x 2480 px</td><td>154 x 216 mm = 1819 x 2551 px</td></tr>
            </tbody>
          </table>
          <p>Check: 297 / 25.4 x 300 = 3507.9, so 3508 px. With bleed, 303 / 25.4 x 300 = 3578.7, so 3579 px. The <strong>safe zone</strong> is the area well inside the trim edge. Keep all text and the logo at least 10 mm (about 118 px) inside the trim.</p>
        </div>
        <div class="lc-card">
          <h3>Is the AI image big enough to print?</h3>
          <p>Many AI image tools give images around 1,000 to 2,000 px wide by default. That is fine for Instagram. It is too small for an A3 poster. Divide the pixel width by the printed width in inches to find the PPI.</p>
          <table class="lc-table">
            <thead><tr><th>Image</th><th>Pixels</th><th>Printed width</th><th>PPI</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Poster background from prompt P4</td><td>1024 x 1536</td><td>303 mm (with bleed)</td><td>1024 / (303 / 25.4) = 86</td><td>Blurry. Too low.</td></tr>
              <tr><td>Same image after a 4x upscale</td><td>4096 x 6144</td><td>303 mm</td><td>4096 / (303 / 25.4) = 343</td><td>Sharp enough</td></tr>
              <tr><td>Anjali's real photo of the classic plum cake</td><td>3000 x 4000</td><td>200 mm</td><td>3000 / (200 / 25.4) = 381</td><td>Sharp</td></tr>
            </tbody>
          </table>
          <p><strong>Upscaling</strong> means using AI to make an image bigger by adding new pixels. It works well for soft backgrounds, like the holly border in P4. The AI invents the new details, so zoom in to 100% and check for strange shapes. Never upscale the cake photo to change how the cake looks. Also note that P4 is 2:3, and A3 is about 1:1.41. After the upscale, the image is 4096 x 6144. Fit to 3579 px wide, it is about 5369 px tall (3579 x 1.5). That is taller than 5031 px, so Canva crops a little from the top and bottom.</p>
          <p><strong>Text is different.</strong> Text you add in Canva stays sharp at any size, because the design tool draws it from the font. That is one more reason to never let AI draw the words, prices or dates.</p>
        </div>
        <div class="lc-card">
          <h3>Slides that people can read</h3>
          <p>Anjali wants to sell the Christmas gift box to offices. She will show 5 slides to the team at a made-up office in Maharashtra. AI can help her plan the slides and make background images.</p>
          <pre><code>Weak prompt:
        Make a presentation about my Christmas cakes.

        Better prompt:
        You are a sales presentation coach for a small bakery in Maharashtra. Plan 5 slides
        (16:9) to sell our Christmas gift box to an office team of about 40 people.
        Gift box: 500 g classic plum cake (contains alcohol, egg, nuts), 12 butter
        cookies and a card, ₹999. Early-bird price ₹899 if ordered by Sun 13 Dec.
        Last order Sun 20 Dec. For each slide give: a headline of up to 8 words,
        3 short points, and a background image idea with empty space for text.
        Warm, honest tone. No "best in Maharashtra" claims.</code></pre>
          <ul class="lc-list">
            <li><strong>One idea per slide.</strong> Big headline, a few words, one image.</li>
            <li><strong>Check every number yourself.</strong> 40 boxes x ₹999 = ₹39,960. At the early-bird price, 40 x ₹899 = ₹35,960.</li>
            <li><strong>Use the brand kit.</strong> Playfair Display for headlines, Poppins for points, Crumb Brown text on Cream. Do not put Butter Gold text on cream: the contrast is too low.</li>
            <li><strong>Use real photos for the product.</strong> AI images are for backgrounds and decoration only.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>RGB, CMYK and talking to your printer</h3>
          <p><strong>RGB</strong> (red, green, blue) is how screens make colours with light. <strong>CMYK</strong> (cyan, magenta, yellow and black) is how printers make colours with ink. Some bright screen colours cannot be printed exactly. They often come out a little duller or darker. So Berry Red and Butter Gold may look different on paper.</p>
          <ul class="lc-list">
            <li>Canva's "PDF Print" download has an option for crop marks and bleed. A CMYK colour option is offered on paid plans. Check Canva's current help pages, because menus change.</li>
            <li>Many local print shops accept RGB PDFs and convert them. Ask what they prefer.</li>
            <li>Ask for a <strong>proof</strong> (one printed sample) before the full order. Hold it next to your real cake box and check the colours.</li>
            <li>Test print at home on A4 first. A4 is about 71% of the width and height of A3, so everything on the A4 print is smaller than on the real poster. If the small text is easy to read on A4, it will be easy to read on A3. If it is hard to read on A4, make it bigger.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Ask the printer</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>What size and how much bleed do you need?</td><td>Some want 3 mm, some want 5 mm.</td></tr>
              <tr><td>Which file type: PDF, and RGB or CMYK?</td><td>The wrong type can shift colours.</td></tr>
              <tr><td>Which paper: matte or gloss, and how thick?</td><td>Gloss shines under shop lights. Matte is easier to read.</td></tr>
              <tr><td>Can I see a proof before you print all copies?</td><td>Mistakes cost less on one sheet than on 50.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: Diya gets the poster ready for print</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Diya asks AI">"My A3 Christmas poster is done in Canva. What should I check before I send it to the print shop?"</li>
              <li data-kind="answer" data-label="AI replies">It lists: 3 mm bleed, 300 PPI images, text inside the safe zone, a PDF for print, and a proof. It adds: "Confirm these with your printer."</li>
              <li data-kind="tool" data-label="Canva">Diya turns on "Show print bleed". She zooms in to 100% on the holly border.</li>
              <li data-kind="warn" data-label="Mistake to catch">The border looks soft and blocky. It is the 1024 x 1536 AI image: only about 86 PPI at A3 with bleed.</li>
              <li data-kind="tool" data-label="Fix">She upscales the background 4x to 4096 x 6144 and places it again. She checks the edges for strange shapes.</li>
              <li data-kind="warn" data-label="Second mistake">The date line "Last order: Sun 20 Dec" sits only 4 mm from the trim edge. It could be cut or look crowded.</li>
              <li data-kind="check" data-label="Diya checks">She moves all text 10 mm inside the trim. She reads every date and price aloud against the brief.</li>
              <li data-kind="result" data-label="Printer's proof">Print Point, a made-up local print shop, prints one proof. The Berry Red is a little darker than on screen, but still clear. Anjali approves 20 copies.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check a print job for you and write the questions for your printer. Change the [bracketed] parts to your own design.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly print production helper for small businesses in India. Explain in simple English.

        My print item: [A3 shop poster, 297 x 420 mm, portrait]
        Bleed my printer asked for: [3 mm on each side]
        Images in the design:
        - [AI background: 1024 x 1536 px, placed across the full poster width]
        - [Real product photo: 3000 x 4000 px, placed 200 mm wide]
        Made in: [Canva]
        Copies: [20, on matte paper]

        Please give me:
        1. The full size with bleed in mm, and in pixels at 300 PPI. Show the formula: mm / 25.4 x 300.
        2. A table: Image | Pixels | Printed width | PPI | OK or too low | What to do.
        3. A pre-flight checklist of 8 points (bleed, safe zone, fonts, colours, spelling, dates, prices, logo).
        4. 5 short questions to ask my printer, including RGB or CMYK and a proof.

        Show every calculation. If you are not sure about a printer's rule, say "ask your printer".</pre>
            <ul class="ai-try-checks">
              <li>Did it add the bleed on both sides (for example 297 + 3 + 3 = 303 mm)?</li>
              <li>Check one PPI sum yourself: pixel width / (printed mm / 25.4).</li>
              <li>Does it suggest upscaling only for backgrounds, not to change the product?</li>
              <li>Does it tell you to confirm the file type and colours with your printer?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Print needs more than a nice screen image. Work out the size in millimetres and pixels, add bleed, keep text inside the safe zone and check that every image is about 300 PPI. Then ask your printer for their rules and a proof. One printed sample can save a whole order.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Labels, Content Credentials and Honesty</h1>
        </div>
        <p class="lc-lead">Your customers trust what they see. If an AI image fools them, you can lose that trust in one day. In this lesson, you will learn when and how to label AI images, and what Content Credentials are. You will also learn what India's rules on AI-made content ask for, and how to stay far away from deepfakes. This is general information, not legal advice. Rules change, so check the official sources and each platform's current help pages.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 380" role="img" aria-label="A decision path for an AI image. Question 1: does it fake a person, event, review or product? If yes, do not post. Question 2: is it realistic, or did AI change what it shows? If yes, label it with the platform setting and a caption note. Question 3: is it an AI illustration that is clearly not a photo? If yes, add a caption note. Question 4: only routine edits? If yes, usually no label, but keep a record.">
            <defs><marker id="img12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <text x="380" y="18" text-anchor="middle" font-size="13" font-weight="700" fill="#c4b5fd">An image made or changed with AI: ask in this order</text>
              <rect x="12" y="32" width="370" height="50" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="28" y="62" font-size="12">1. Does it fake a person, event, review or product?</text>
              <rect x="12" y="112" width="370" height="50" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="28" y="142" font-size="12">2. Is it realistic, or did AI change what it shows?</text>
              <rect x="12" y="192" width="370" height="50" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="28" y="222" font-size="12">3. Is it an AI illustration, clearly not a photo?</text>
              <rect x="12" y="272" width="370" height="50" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="28" y="302" font-size="12">4. Were there only routine edits (crop, light)?</text>
              <rect x="446" y="32" width="302" height="50" rx="10" fill="#1f1f44" stroke="#f87171"/>
              <text x="597" y="53" text-anchor="middle" font-weight="700" fill="#fca5a5">Do not post</text>
              <text x="597" y="72" text-anchor="middle" font-size="11.5" fill="#9b99b8">Fakes can mislead people and break the law</text>
              <rect x="446" y="112" width="302" height="50" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="597" y="133" text-anchor="middle" font-weight="700" fill="#fcd34d">Label it</text>
              <text x="597" y="152" text-anchor="middle" font-size="11.5" fill="#9b99b8">Platform AI setting + a caption note</text>
              <rect x="446" y="192" width="302" height="50" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="597" y="213" text-anchor="middle" font-weight="700" fill="#93c5fd">Add a caption note</text>
              <text x="597" y="232" text-anchor="middle" font-size="11.5" fill="#9b99b8">"Illustration made with AI"</text>
              <rect x="446" y="272" width="302" height="50" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="597" y="293" text-anchor="middle" font-weight="700" fill="#6ee7b7">Usually no label</text>
              <text x="597" y="312" text-anchor="middle" font-size="11.5" fill="#9b99b8">Keep your record anyway</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img12a)">
                <line x1="384" y1="57" x2="442" y2="57"/>
                <line x1="384" y1="137" x2="442" y2="137"/>
                <line x1="384" y1="217" x2="442" y2="217"/>
                <line x1="384" y1="297" x2="442" y2="297"/>
                <line x1="197" y1="84" x2="197" y2="108"/>
                <line x1="197" y1="164" x2="197" y2="188"/>
                <line x1="197" y1="244" x2="197" y2="268"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="400" y="50">Yes</text>
                <text x="400" y="130">Yes</text>
                <text x="400" y="210">Yes</text>
                <text x="400" y="290">Yes</text>
                <text x="206" y="101">No</text>
                <text x="206" y="181">No</text>
                <text x="206" y="261">No</text>
              </g>
              <text x="380" y="356" text-anchor="middle" font-size="11.5" fill="#9b99b8">A paid collab or ad? Also add a clear ad label such as #ad. Check current rules.</text>
            </g>
          </svg>
          <figcaption>Four questions, asked in order, tell you what to do with an AI image. When you are not sure, label it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to label, and how to say it</h3>
          <p>A <strong>label</strong> is a short, clear note that tells people AI was used. It can be a platform setting, a line in the caption, or small text on the image. Good labels are short, true and easy to see. They also say what is real, because that builds trust.</p>
          <table class="lc-table">
            <thead><tr><th>Sweet Crumbs visual</th><th>What AI did</th><th>Label</th></tr></thead>
            <tbody>
              <tr><td>Launch post (real cake photo on the P1 kitchen background)</td><td>Made the table, spices and light</td><td>Platform AI setting, plus: "Scene created with AI. Cake photo is real."</td></tr>
              <tr><td>Cocoa the bear on the Story</td><td>Drew the whole illustration</td><td>Caption: "Cocoa is illustrated with AI."</td></tr>
              <tr><td>Product photos for the WhatsApp catalogue</td><td>Removed a messy background, fixed the light</td><td>Usually none. The cake itself is unchanged.</td></tr>
              <tr><td>Shop poster with the P4 holly border</td><td>Made the border</td><td>Small line at the bottom: "Border illustration made with AI."</td></tr>
            </tbody>
          </table>
          <pre><code>Weak caption:
        Our cakes look magical this year!

        Honest caption:
        Merry Christmas from Sweet Crumbs! Plum cake pre-orders open Tue 1 Dec.
        The cake in this photo is our real 1 kg classic plum cake
        (contains alcohol, egg and nuts). Scene created with AI.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Content Credentials (C2PA) in plain words</h3>
          <p><strong>C2PA</strong> (the Coalition for Content Provenance and Authenticity) is a group of tech and media companies. It made an open standard called <strong>Content Credentials</strong>. This is a signed record inside an image file. It can show which tool made or edited the image, and when. If someone changes the file, the record shows the change or breaks.</p>
          <ul class="lc-list">
            <li><strong>Who adds them:</strong> some AI tools add Content Credentials to images they make. Adobe Firefly and some chat assistants with image features do this. Some cameras and phones can add them to real photos too.</li>
            <li><strong>Who reads them:</strong> some platforms read this record and show an AI label or a small "CR" icon. Meta, for example, can add its "AI info" label when it finds these signals.</li>
            <li><strong>Invisible watermarks:</strong> some companies also hide a mark in the pixels. Google's SynthID is one example. People cannot see it, but detection tools can.</li>
            <li><strong>How to check a file:</strong> upload it to a Content Credentials inspect tool, such as the free Verify page at contentcredentials.org.</li>
          </ul>
          <p><strong>Limits:</strong> screenshots, some apps and some uploads remove this record. So "no credentials" does not prove an image is real. Also, credentials show where a file came from. They do not prove that what it shows is true. Never try to remove credentials or watermarks from your images.</p>
        </div>
        <div class="lc-card">
          <h3>India's rules and platform labels</h3>
          <p>India amended the IT Rules on <strong>synthetically generated information</strong> (audio, images or video made or changed by AI so that it looks real). The changes were notified on 10 February 2026 and came into force on 20 February 2026. In general words:</p>
          <ul class="lc-list">
            <li>Platforms must label such content clearly. Where possible, they must add metadata (hidden information in the file) that marks it as AI-made.</li>
            <li>Large social media platforms must ask users to declare AI-made uploads, and check them with technical tools.</li>
            <li>Platforms must remove unlawful content, such as harmful deepfakes, within about 3 hours of a valid official order. Earlier, they had much longer.</li>
            <li>Routine edits, such as colour correction or cropping, are generally not covered if they do not change the meaning.</li>
          </ul>
          <p><strong>Your part:</strong> when Instagram, Facebook or YouTube asks "Is this made with AI?", answer honestly. Meta shows an "AI info" label. YouTube Studio has a setting for altered or synthetic content that looks real. For ads with creators, ASCI (the Advertising Standards Council of India) asks for clear labels such as #ad. So if Riya from "Tiffin Tales" makes a paid video for Sweet Crumbs, it needs an ad label too. Check each source's current rules.</p>
        </div>
        <div class="lc-card">
          <h3>Deepfakes and honest marketing</h3>
          <p>A <strong>deepfake</strong> is a realistic fake image, video or voice of a real person. Deepfakes of real people can break personality rights, cheat customers and, in serious cases, be crimes. For a small brand, the simple rule is: never make one.</p>
          <ul class="lc-list">
            <li><strong>No fake people as proof.</strong> Do not make AI "happy customers" and present them as real buyers.</li>
            <li><strong>No fake reviews.</strong> Do not make AI screenshots of chats or star ratings.</li>
            <li><strong>No famous faces or voices.</strong> No AI chef, actor or cricketer "praising" your cake.</li>
            <li><strong>Honest products.</strong> The cake in the picture must be the real cake: same size, same fruit, same colour. Say "contains alcohol" for the classic cake.</li>
          </ul>
          <p><strong>If someone makes a deepfake of you or your brand:</strong> take screenshots with the date and link. Report it on the platform. In India, you can also report cybercrime at cybercrime.gov.in or call the 1930 helpline. For serious cases, speak to a lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Label it, no label, or do not post?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Diya has 7 visuals and ideas for the Christmas campaign. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="label" data-label="Label it"></div>
              <div data-sorter-target="bucket" data-bucket="none" data-label="Usually no label"></div>
              <div data-sorter-target="bucket" data-bucket="stop" data-label="Do not post"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="label" data-why="The scene looks real and AI made it. Use the platform AI setting and say the cake is real.">The real plum cake photo placed on an AI-made kitchen table background</li>
              <li data-bucket="none" data-why="Brightness and cropping are routine edits that do not change what the photo shows. Keep the record anyway.">The real gift box photo with only brightness and cropping changed</li>
              <li data-bucket="label" data-why="It is not a photo, but a short caption note is honest. Platforms may also label it from the file's metadata.">Cocoa the bear, fully illustrated with AI, on the Story</li>
              <li data-bucket="stop" data-why="These people are not real customers. Showing them as buyers misleads people.">An AI photo of a "happy customer family" captioned "Our customers love it!"</li>
              <li data-bucket="stop" data-why="This is a deepfake of a real person. It breaks personality rights and misleads buyers.">An AI video of a famous chef saying he loves Sweet Crumbs</li>
              <li data-bucket="label" data-why="This is not about AI, but a paid collab must carry a clear ad label such as #ad under ASCI guidelines.">Riya's paid "Tiffin Tales" video that features the eggless plum cake</li>
              <li data-bucket="none" data-why="A plain white background behind the unchanged real cake is a routine product edit. Check the platform's rules if you are not sure.">A real cake photo with the background removed and replaced with plain white</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan the labels and honest captions for your own visuals. Change the [bracketed] parts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an honest marketing adviser for small brands and creators in India. You give general information only, not legal advice.

        My brand: [Sweet Crumbs, a small home-style bakery in Maharashtra]
        My visuals:
        1. [Real cake photo on an AI-made kitchen background, Instagram post]
        2. [AI-illustrated bear mascot, Instagram Story]
        3. [Real product photo, background removed, WhatsApp catalogue]
        4. [Printed poster with an AI-made holly border]
        Product facts: [classic plum cake contains alcohol, egg and nuts]

        Please give me:
        1. A table: Visual | What AI did | Label needed? (Yes / Good practice / Usually no) | Where to put the label | Exact label text (under 12 words).
        2. One honest caption for visual 1 that says what is real and what is AI-made.
        3. 5 things I must never do, such as fake reviews or deepfakes.
        4. A short note on India's IT Rules on synthetically generated information and on platform AI labels. Say "check the current official source".

        Use simple English. Do not invent rules or numbers.</pre>
            <ul class="ai-try-checks">
              <li>Do the labels say clearly what is real and what AI made?</li>
              <li>Did it keep product facts, such as "contains alcohol"?</li>
              <li>Does it say this is not legal advice and tell you to check current rules?</li>
              <li>Did it avoid stating exact rule details as final?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Honesty is simple: show the real product, label realistic AI images and never fake people, reviews or famous faces. Answer platform AI questions truthfully and keep Content Credentials in your files. When you are not sure whether to label, label.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Bias and Representation</h1>
        </div>
        <p class="lc-lead">Ask an AI tool for "a baker" and you may get a man in a white chef's hat, again and again. Ask for "a beautiful Indian woman" and you may get only fair skin. This is <strong>bias</strong>: the AI repeats patterns and stereotypes from the images it learned from. In this lesson, you will learn how to spot bias in AI images and test a batch of results. You will also write prompts for respectful, true-to-life images of people in India. Your customers should see themselves in your brand, shown with respect.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Left: a four-step loop. Make 12 images, count who appears, rewrite the prompt, ask real people, then repeat. Right: a made-up test of the prompt a customer at an Indian bakery. Default prompt: light skin 10 of 12, under 35 9 of 12, over 50 2 of 12, baker is a man 11 of 12. Rewritten prompt: 5, 6, 4 and 6 of 12.">
            <defs><marker id="img13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <text x="192" y="24" text-anchor="middle" font-size="13" font-weight="700" fill="#c4b5fd">A bias check loop</text>
              <g text-anchor="middle">
                <rect x="12" y="40" width="160" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/>
                <text x="92" y="63" font-weight="700">1. Make 12 images</text>
                <text x="92" y="83" font-size="11" fill="#9b99b8">same prompt, same tool</text>
                <rect x="212" y="40" width="160" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
                <text x="292" y="63" font-weight="700">2. Count</text>
                <text x="292" y="83" font-size="11" fill="#9b99b8">age, skin, gender, roles</text>
                <rect x="212" y="150" width="160" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
                <text x="292" y="173" font-weight="700">3. Rewrite prompt</text>
                <text x="292" y="193" font-size="11" fill="#9b99b8">specific and respectful</text>
                <rect x="12" y="150" width="160" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
                <text x="92" y="173" font-weight="700">4. Ask real people</text>
                <text x="92" y="193" font-size="11" fill="#9b99b8">staff and customers</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img13a)">
                <line x1="174" y1="68" x2="208" y2="68"/>
                <line x1="292" y1="98" x2="292" y2="146"/>
                <line x1="210" y1="178" x2="176" y2="178"/>
                <line x1="92" y1="148" x2="92" y2="100"/>
              </g>
              <text x="192" y="236" text-anchor="middle" font-size="11" fill="#9b99b8">Repeat until the batch looks like</text>
              <text x="192" y="252" text-anchor="middle" font-size="11" fill="#9b99b8">your real customers</text>
              <text x="590" y="24" text-anchor="middle" font-size="13" font-weight="700" fill="#c4b5fd">Made-up test: 12 images each</text>
              <rect x="420" y="36" width="12" height="10" fill="#ec4899"/>
              <text x="438" y="45" font-size="11">Default prompt</text>
              <rect x="560" y="36" width="12" height="10" fill="#10b981"/>
              <text x="578" y="45" font-size="11">Rewritten prompt</text>
              <g font-size="11.5">
                <text x="400" y="80">Light skin</text>
                <rect x="490" y="62" width="200" height="13" rx="3" fill="#ec4899"/>
                <text x="696" y="73" font-size="11">10/12</text>
                <rect x="490" y="78" width="100" height="13" rx="3" fill="#10b981"/>
                <text x="596" y="89" font-size="11">5/12</text>
                <text x="400" y="126">Under 35</text>
                <rect x="490" y="108" width="180" height="13" rx="3" fill="#ec4899"/>
                <text x="676" y="119" font-size="11">9/12</text>
                <rect x="490" y="124" width="120" height="13" rx="3" fill="#10b981"/>
                <text x="616" y="135" font-size="11">6/12</text>
                <text x="400" y="172">Over 50</text>
                <rect x="490" y="154" width="40" height="13" rx="3" fill="#ec4899"/>
                <text x="536" y="165" font-size="11">2/12</text>
                <rect x="490" y="170" width="80" height="13" rx="3" fill="#10b981"/>
                <text x="576" y="181" font-size="11">4/12</text>
                <text x="400" y="218">Baker is a man</text>
                <rect x="490" y="200" width="220" height="13" rx="3" fill="#ec4899"/>
                <text x="716" y="211" font-size="11">11/12</text>
                <rect x="490" y="216" width="120" height="13" rx="3" fill="#10b981"/>
                <text x="616" y="227" font-size="11">6/12</text>
              </g>
              <text x="580" y="262" text-anchor="middle" font-size="11" fill="#9b99b8">Prompt: "a customer buying cake at an Indian bakery"</text>
              <text x="380" y="282" text-anchor="middle" font-size="11" fill="#9b99b8">The goal is true to life and respectful, not a fixed quota.</text>
            </g>
          </svg>
          <figcaption>Do not judge bias from one image. Make a batch, count what you see, change the prompt and ask real people. The numbers on the right are a made-up example.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why AI images show stereotypes</h3>
          <p>A <strong>stereotype</strong> is a fixed, simple idea about a group of people, such as "only women cook at home". Image models learned from huge numbers of internet images and captions. Those images already had stereotypes. So when your prompt is vague, the AI often picks the most common pattern. It can also mix up details from different cultures.</p>
          <table class="lc-table">
            <thead><tr><th>Vague prompt</th><th>A common default</th><th>The problem</th></tr></thead>
            <tbody>
              <tr><td>"a baker"</td><td>A man in a white chef's hat</td><td>Women bakers, like Anjali, disappear</td></tr>
              <tr><td>"a beautiful Indian woman"</td><td>Very fair skin, one body type</td><td>Tells people that fair skin is "beautiful"</td></tr>
              <tr><td>"an Indian street"</td><td>Dusty, crowded, poor</td><td>Shows one narrow picture of a whole country</td></tr>
              <tr><td>"an Indian family at Christmas"</td><td>One look, one region, often wrong clothes</td><td>Ignores that people of many faiths and regions celebrate Christmas in India</td></tr>
              <tr><td>"a shop sign in Marathi"</td><td>Letters that look like Devanagari but mean nothing</td><td>Looks careless to people who read the script</td></tr>
            </tbody>
          </table>
          <p>Bias is not always about people. It can also show as a wrong festival mix, wrong food or wrong dress for a region. Always check the details a local person would notice.</p>
        </div>
        <div class="lc-card">
          <h3>Writing prompts for respectful images</h3>
          <p>The fix is not to add random "diversity" words. The fix is to describe real people in your real setting. Say who they are, what they are doing and where. Ask for a natural range of skin tones, ages and body types.</p>
          <pre><code>Weak prompt:
        A happy Indian family eating Christmas cake.

        Better prompt:
        Three generations of a family in an Indian home at Christmas: a grandmother
        in a cotton sari, a father in a kurta, a mother in jeans and a sweater,
        and a teenage daughter. A natural, true-to-life range of Indian skin tones.
        A relaxed, real moment: sharing slices of plum cake at a dining table,
        a small paper star lantern behind them. Soft evening light. No exaggerated
        features, no costumes, no skin lightening. No text. Aspect ratio 4:5.</code></pre>
          <ul class="lc-list">
            <li><strong>Avoid loaded words.</strong> Do not use "fair", "exotic" or "tribal" as style words. Say "natural skin tone" instead.</li>
            <li><strong>Show people doing normal things.</strong> A wheelchair user choosing a cake at the counter, not a "brave" poster.</li>
            <li><strong>Mix the roles.</strong> A woman baker, a man packing boxes, an older customer paying on UPI.</li>
            <li><strong>Treat faith with care.</strong> Christmas, Diwali and Eid images should show real customs correctly. Do not use religious symbols as random decoration.</li>
            <li><strong>No "beauty" edits.</strong> Do not use AI to lighten skin or slim bodies in any image.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>People in marketing: when to use AI and when not to</h3>
          <p>AI people are not real customers. So an AI "family eating our cake" must never be shown as a real review. Use AI people only for clear lifestyle or mood images, and label them. For proof, like "our customers love it", use real photos of real customers, taken with their written consent.</p>
          <p>A mascot can also help. Cocoa the bear stands for the brand without showing any group of people. That is one reason Sweet Crumbs uses Cocoa on most posts. For people images, check the batch, not only the best image. Then show your shortlist to 2 or 3 people from different backgrounds, such as Diya, a regular customer and a neighbour. Ask: "Does anyone here look like a joke or a cliché? Does anything look wrong for our customers?"</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Diya's batch test</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Diya prompts">"A customer buying cake at an Indian bakery, Christmas, warm light." She makes 12 images with the same prompt.</li>
              <li data-kind="tool" data-label="Spreadsheet">She notes each image in a simple sheet: apparent age group, skin tone, gender, role and any errors.</li>
              <li data-kind="result" data-label="Count">Light skin in 10 of 12 (83%). Under 35 in 9 of 12 (75%). Over 50 in only 2 of 12 (17%). The baker is a man in 11 of 12 (92%).</li>
              <li data-kind="warn" data-label="Mistake to catch">Three images also show a shop sign with fake Devanagari letters. One shows a Diwali rangoli next to a Christmas tree for no reason.</li>
              <li data-kind="user" data-label="New prompt">She describes real people: a woman baker behind the counter, customers of different ages and skin tones, a grandfather paying on UPI. "No text or signs."</li>
              <li data-kind="result" data-label="New count">Light skin 5 of 12 (42%). Under 35 6 of 12 (50%). Over 50 4 of 12 (33%). The baker is a man in 6 of 12 (50%).</li>
              <li data-kind="check" data-label="People check">Anjali and a regular customer look at the shortlist. They remove one image where the grandfather looks like a cartoon.</li>
              <li data-kind="answer" data-label="Decision">Diya uses one image as a mood background and labels it as made with AI. For the "happy customers" post, she uses real photos taken with consent.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review an image prompt for bias and rewrite it. Change the [bracketed] parts to your own prompt and audience.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful, respectful creative reviewer. You help Indian brands make AI images that show people fairly and true to life.

        My brand: [Sweet Crumbs, a small bakery in Maharashtra]
        My real customers: [families, students, office workers and older neighbours from many regions and faiths]
        My image prompt: [A happy Indian family eating Christmas cake at home.]
        What I saw in 12 results (optional): [10 of 12 had very fair skin, all were under 40, and the women were serving while the men sat]

        Please:
        1. List the stereotypes or bias risks in my prompt and results, with one sentence each on why they matter.
        2. Rewrite the prompt in 60 to 90 words. Describe real people, ages, skin tones, clothes, roles and setting. Add "no skin lightening, no exaggerated features, no text".
        3. Give me a 6-point checklist to review a batch of images, including cultural and religious details.
        4. Tell me when I should use real photos with consent instead of AI people.

        Use simple English. Do not use words like "fair", "exotic" or "tribal".</pre>
            <ul class="ai-try-checks">
              <li>Does the new prompt describe real, specific people, not just "diverse"?</li>
              <li>Does it avoid loaded words and new stereotypes?</li>
              <li>Are the religious and regional details correct for your city?</li>
              <li>Does it say that AI people must not be shown as real customers?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Vague prompts give stereotyped images. Describe real people doing real things, check a whole batch, count what you see and ask people from different backgrounds. Never lighten skin or fake customers. The best test: would the people in the picture feel respected?
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">A Design Workflow</h1>
        </div>
        <p class="lc-lead">AI makes images fast. That can create a new problem: 60 files called "final", no idea which prompt made which image, and a poster sent to print with the wrong date. A <strong>workflow</strong> is a fixed set of steps you follow for every design job. In this lesson, you will learn five parts of a simple workflow: a brief, versions, feedback, file names and an asset library. You will plan the Sweet Crumbs Christmas visuals with real dates, working back from the launch.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A timeline for the Sweet Crumbs Christmas visuals: brief on Monday 16 November, first drafts on Thursday 19 November, feedback on Friday 20 November, final files on Tuesday 24 November, poster to the printer on Wednesday 25 November, launch on Tuesday 1 December. Below, a file name broken into parts: month, campaign, item, size, version and file type. At the bottom, seven asset library folders.">
            <defs><marker id="img14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-size="13" font-weight="700" fill="#c4b5fd">Work back from the launch date</text>
              <rect x="12" y="34" width="112" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="68" y="57" font-weight="700">Brief</text>
              <text x="68" y="77" font-size="11" fill="#9b99b8">Mon 16 Nov</text>
              <rect x="138" y="34" width="112" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="194" y="57" font-weight="700">Drafts v01</text>
              <text x="194" y="77" font-size="11" fill="#9b99b8">Thu 19 Nov</text>
              <rect x="264" y="34" width="112" height="56" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="320" y="57" font-weight="700">Feedback</text>
              <text x="320" y="77" font-size="11" fill="#9b99b8">Fri 20 Nov</text>
              <rect x="390" y="34" width="112" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="446" y="57" font-weight="700">Final files</text>
              <text x="446" y="77" font-size="11" fill="#9b99b8">Tue 24 Nov</text>
              <rect x="516" y="34" width="112" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="572" y="57" font-weight="700">To printer</text>
              <text x="572" y="77" font-size="11" fill="#9b99b8">Wed 25 Nov</text>
              <rect x="642" y="34" width="112" height="56" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="698" y="57" font-weight="700" fill="#6ee7b7">Launch</text>
              <text x="698" y="77" font-size="11" fill="#9b99b8">Tue 1 Dec</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img14a)">
                <line x1="125" y1="62" x2="135" y2="62"/>
                <line x1="251" y1="62" x2="261" y2="62"/>
                <line x1="377" y1="62" x2="387" y2="62"/>
                <line x1="503" y1="62" x2="513" y2="62"/>
                <line x1="629" y1="62" x2="639" y2="62"/>
              </g>
              <text x="380" y="128" font-size="13" font-weight="700" fill="#c4b5fd">One file name, six parts</text>
              <rect x="138" y="140" width="72" height="34" rx="6" fill="#27274e" stroke="#8b5cf6"/>
              <text x="174" y="162">2026-12</text>
              <text x="218" y="162" fill="#9b99b8">_</text>
              <rect x="226" y="140" width="48" height="34" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="250" y="162">xmas</text>
              <text x="282" y="162" fill="#9b99b8">_</text>
              <rect x="290" y="140" width="104" height="34" rx="6" fill="#27274e" stroke="#22d3ee"/>
              <text x="342" y="162">launch-post</text>
              <text x="402" y="162" fill="#9b99b8">_</text>
              <rect x="410" y="140" width="88" height="34" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="454" y="162">1080x1350</text>
              <text x="506" y="162" fill="#9b99b8">_</text>
              <rect x="514" y="140" width="44" height="34" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="536" y="162">v03</text>
              <rect x="562" y="140" width="48" height="34" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="586" y="162">.png</text>
              <g font-size="11" fill="#9b99b8">
                <text x="174" y="192">month</text>
                <text x="250" y="192">campaign</text>
                <text x="342" y="192">item</text>
                <text x="454" y="192">size</text>
                <text x="536" y="192">version</text>
                <text x="586" y="206">type</text>
              </g>
              <rect x="12" y="228" width="736" height="56" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="380" y="250" font-size="12" font-weight="700">Asset library folders</text>
              <text x="380" y="272" font-size="11.5" fill="#9b99b8">01_brand · 02_prompts · 03_ai-raw · 04_photos · 05_working · 06_final · 07_print</text>
            </g>
          </svg>
          <figcaption>A simple workflow: fixed dates, file names that sort themselves and one shared folder structure. The dates are for the made-up Sweet Crumbs campaign.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with a one-page brief</h3>
          <p>A <strong>brief</strong> is a short document that says what a design must do. It stops you from making 20 pretty images that do not sell anything. Write it before you open any AI tool. AI can help you draft it, but the owner must check every fact.</p>
          <pre><code>DESIGN BRIEF: Launch post, Sweet Crumbs Christmas 2026
        Goal:        Get pre-orders on WhatsApp in the first week
        Audience:    Families and office teams near us in Maharashtra
        Key message: Merry Christmas from Sweet Crumbs! Plum cakes, ghar jaisa taste.
        Must show:   Pre-orders from Tue 1 Dec. 10% early-bird till Sun 13 Dec.
                     Classic plum cake 1 kg ₹1,200 (early-bird ₹1,080).
                     "Contains alcohol" for the classic cake.
        Size:        Instagram feed, 1080 x 1350 px (4:5)
        Brand:       Crumb Brown, Cream, Berry Red. Playfair Display + Poppins.
                     Real logo file only.
        AI may:      Make the background (prompt P1 + style block S1)
        AI may not:  Make or change the cake, the logo, prices or text
        Label:       "Scene created with AI. Cake photo is real."
        Approver:    Anjali     Deadline: final file by Tue 24 Nov</code></pre>
          <p>Check the numbers: ₹1,200 less 10% is ₹1,200 - ₹120 = ₹1,080. The early-bird offer runs for 13 days, from 1 to 13 December.</p>
        </div>
        <div class="lc-card">
          <h3>Versions and file names</h3>
          <p>A <strong>version</strong> is one saved step of a design, such as v01, v02 and v03. Save a new version after each round of changes. Never overwrite the old one. Then you can go back if a change was wrong.</p>
          <table class="lc-table">
            <thead><tr><th>Bad file name</th><th>Good file name</th></tr></thead>
            <tbody>
              <tr><td>final poster NEW (2).png</td><td>2026-12_xmas_poster-a3-bleed_3579x5031_v02.pdf</td></tr>
              <tr><td>IMG_4471.jpg</td><td>2026-12_xmas_photo-classic-1kg_2000x2000_v01.jpg</td></tr>
              <tr><td>story.png</td><td>2026-12_xmas_story-cover_1080x1920_v03.png</td></tr>
              <tr><td>bg nice one.png</td><td>2026-12_xmas_bg-kitchen-P1_ai-raw_v04.png</td></tr>
            </tbody>
          </table>
          <p>Rules: use lower case, no spaces, and the same order of parts every time. Put the year first, so files sort by date. Keep a simple <strong>prompt log</strong> (a spreadsheet that records how each AI image was made) with these columns:</p>
          <pre><code>File name | Tool | Date | Prompt ID (P1, S3) | Settings | What is real | What AI made | Label text | Approved by</code></pre>
          <p>This log is also your record for rights and labels. If a customer or a platform asks how an image was made, you can answer in a minute.</p>
        </div>
        <div class="lc-card">
          <h3>Feedback that leads to a better design</h3>
          <p>Vague feedback, like "make it pop", wastes a round. Good feedback points to the brief and names one change. Agree on one <strong>approver</strong> (the person who says the final yes). For Sweet Crumbs, that is Anjali. Limit feedback to two rounds before the final file.</p>
          <pre><code>Weak prompt:
        Anjali says the post is not good. Fix it.

        Better prompt:
        You are a design project helper. Turn this owner feedback into a clear
        change list. Feedback: "Too dark, I can't see the price, and the bear
        looks sad." Brief: Instagram post 1080 x 1350, Crumb Brown text on Cream,
        price ₹1,200 (early-bird ₹1,080) must be easy to read on a phone.
        Give a table: Change | Where on the design | Keep or change | Question
        to ask the owner. Do not add new ideas that are not in the feedback.</code></pre>
          <p>AI helps you organise feedback. It cannot decide for the approver. Read the change list back to Anjali before you start v02.</p>
        </div>
        <div class="lc-card">
          <h3>An asset library everyone can find</h3>
          <p>An <strong>asset library</strong> is one shared place for all brand files: logo, fonts, colours, photos, prompts and finished designs. Diya keeps it in one shared cloud folder and in the Canva brand kit.</p>
          <ul class="lc-list">
            <li><strong>01_brand:</strong> the real logo (PNG and PDF), colour codes, font names. Nobody edits these files.</li>
            <li><strong>02_prompts:</strong> the prompt library (P1 to P4, S1 to S4) and the prompt log.</li>
            <li><strong>03_ai-raw:</strong> AI images exactly as the tool made them. Keep them for your records.</li>
            <li><strong>04_photos:</strong> real photos of real cakes. Customer photos go in a separate folder, with a note of their written consent.</li>
            <li><strong>05_working, 06_final, 07_print:</strong> drafts, approved files and print PDFs.</li>
          </ul>
          <p>Do not upload customer photos or private details to public AI tools. Back up the folder at least once a week.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Put the workflow in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Diya is making the Story cover. Put her steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write a one-page brief with the dates, prices, size and what AI may not do</li>
              <li data-order="2">Make background options with prompt P3 and the style block, and save them in 03_ai-raw</li>
              <li data-order="3">Build v01 in Canva with the real cake photo, logo and text, and log the prompt</li>
              <li data-order="4">Share v01 with Anjali and turn her notes into a change list</li>
              <li data-order="5">Save the changes as v02 and check every date and price against the brief</li>
              <li data-order="6">Get Anjali's final approval and move the file to 06_final</li>
              <li data-order="7">Schedule the Story for Tue 1 Dec and tick the AI label setting</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to set up a simple workflow for your next design job. Change the [bracketed] parts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a design project manager for a small business that makes its own visuals with AI and Canva.

        My business: [Sweet Crumbs, a small bakery in Maharashtra]
        Campaign: [Christmas plum cakes. Pre-orders open Tue 1 Dec 2026. Early-bird 10% off till Sun 13 Dec. Last order Sun 20 Dec.]
        Visuals needed: [launch post 1080 x 1350, Story cover 1080 x 1920, WhatsApp image 1080 x 1080, A3 poster with 3 mm bleed]
        Team: [owner Anjali approves; Diya designs]
        Launch date: [Tue 1 Dec 2026]

        Please give me:
        1. A one-page brief template, filled in for the first visual. Include "AI may" and "AI may not".
        2. A timeline that works back from the launch date. Include the weekday for every date, 2 feedback rounds and a printer proof.
        3. A file name for every visual using: year-month_campaign_item_size_version.
        4. Prompt log columns and a folder list for my asset library.
        5. A 5-question feedback form for the approver.

        Check every weekday. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Check the weekdays in a calendar: is 1 Dec 2026 really a Tuesday?</li>
              <li>Do all file names follow the same order of parts?</li>
              <li>Does the brief say that AI may not change the product, logo, prices or text?</li>
              <li>Is there time for a printer proof before the launch?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI speeds up making images, and a workflow stops that speed from turning into chaos. Write a brief first, save numbered versions, use one file name pattern, get clear feedback from one approver and keep everything in one asset library. Your prompt log doubles as your record for rights and labels.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Capstone: A Visual Campaign for Sweet Crumbs</h1>
        </div>
        <p class="lc-lead">Now you will put the whole course together. You will plan the Sweet Crumbs Christmas 2026 campaign from brief to launch. That means a brief, mood board prompts, 5 social graphics, an A3 shop poster, alt text for every image and a rights and disclosure checklist. You will use the real brand kit, the prompt library and the campaign dates. Then you can repeat the same plan for your own brand, channel or client.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four steps: brief, mood board, make six designs, alt text and checks. Below, the six designs with their shapes, sizes and dates: launch post 1080 by 1350 on Tuesday 1 December, carousel of five slides on Thursday 3 December, Story cover 1080 by 1920 on Tuesday 1 December, WhatsApp status 1080 by 1920 on Friday 11 December, WhatsApp broadcast 1080 by 1080 on Friday 18 December, and A3 poster 3579 by 5031 in the shop from Saturday 28 November.">
            <defs><marker id="img15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="20" width="170" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="97" y="43" font-weight="700">1. Brief</text>
              <text x="97" y="62" font-size="11" fill="#9b99b8">dates, prices, sizes, rules</text>
              <rect x="202" y="20" width="170" height="54" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="287" y="43" font-weight="700">2. Mood board</text>
              <text x="287" y="62" font-size="11" fill="#9b99b8">3 prompts + style block</text>
              <rect x="392" y="20" width="170" height="54" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="477" y="43" font-weight="700">3. Make 6 designs</text>
              <text x="477" y="62" font-size="11" fill="#9b99b8">AI backgrounds + Canva</text>
              <rect x="582" y="20" width="170" height="54" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="667" y="43" font-weight="700">4. Alt text + checks</text>
              <text x="667" y="62" font-size="11" fill="#9b99b8">rights, labels, approval</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#img15a)">
                <line x1="183" y1="47" x2="198" y2="47"/>
                <line x1="373" y1="47" x2="388" y2="47"/>
                <line x1="563" y1="47" x2="578" y2="47"/>
                <line x1="500" y1="76" x2="500" y2="112"/>
              </g>
              <rect x="45" y="130" width="56" height="70" rx="3" fill="#fff4e0" stroke="#e0a63a"/>
              <circle cx="73" cy="168" r="13" fill="#6b3e26"/>
              <rect x="179" y="130" width="48" height="60" rx="3" fill="#e8dcc6" stroke="#e0a63a"/>
              <rect x="171" y="136" width="48" height="60" rx="3" fill="#f3e8d2" stroke="#e0a63a"/>
              <rect x="163" y="142" width="48" height="60" rx="3" fill="#fff4e0" stroke="#e0a63a"/>
              <circle cx="187" cy="176" r="11" fill="#6b3e26"/>
              <rect x="297" y="129" width="40" height="71" rx="3" fill="#fff4e0" stroke="#e0a63a"/>
              <circle cx="317" cy="166" r="10" fill="#6b3e26"/>
              <rect x="419" y="129" width="40" height="71" rx="3" fill="#fff4e0" stroke="#e0a63a"/>
              <rect x="425" y="160" width="28" height="9" rx="2" fill="#b8323a"/>
              <rect x="531" y="140" width="60" height="60" rx="3" fill="#fff4e0" stroke="#e0a63a"/>
              <circle cx="561" cy="170" r="12" fill="#6b3e26"/>
              <rect x="658" y="129" width="50" height="71" rx="2" fill="#fff4e0" stroke="#e0a63a"/>
              <rect x="664" y="150" width="38" height="8" rx="2" fill="#6b3e26"/>
              <rect x="664" y="164" width="38" height="6" rx="2" fill="#b8323a"/>
              <g font-size="11.5">
                <text x="73" y="222" font-weight="700">Launch post</text>
                <text x="187" y="222" font-weight="700">Carousel x5</text>
                <text x="317" y="222" font-weight="700">Story cover</text>
                <text x="439" y="222" font-weight="700">WA status</text>
                <text x="561" y="222" font-weight="700">WA broadcast</text>
                <text x="683" y="222" font-weight="700">A3 poster</text>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="73" y="240">1080x1350</text>
                <text x="187" y="240">1080x1350</text>
                <text x="317" y="240">1080x1920</text>
                <text x="439" y="240">1080x1920</text>
                <text x="561" y="240">1080x1080</text>
                <text x="683" y="240">3579x5031</text>
                <text x="73" y="258">Tue 1 Dec</text>
                <text x="187" y="258">Thu 3 Dec</text>
                <text x="317" y="258">Tue 1 Dec</text>
                <text x="439" y="258">Fri 11 Dec</text>
                <text x="561" y="258">Fri 18 Dec</text>
                <text x="683" y="258">Sat 28 Nov</text>
              </g>
              <text x="380" y="288" font-size="11.5" fill="#6ee7b7">Every file: alt text, a label check, a rights check and Anjali's approval</text>
            </g>
          </svg>
          <figcaption>The capstone plan: four steps, then six designs. The shapes show each ratio, and the dates show when each design goes live. WA means WhatsApp.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: The brief and the six designs</h3>
          <p>Start from the campaign facts. Pre-orders open Tue 1 Dec 2026. The 10% early-bird offer ends Sun 13 Dec. The last day to order is Sun 20 Dec. Pickup and local delivery run from 21 to 24 December. Every design must match these facts exactly.</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Design</th><th>Size</th><th>Main text (added in Canva)</th><th>AI part</th><th>Real part</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Launch post</td><td>1080 x 1350 (4:5)</td><td>"Merry Christmas from Sweet Crumbs!" and "Plum cake pre-orders open Tue 1 Dec"</td><td>Kitchen background (P1)</td><td>Classic plum cake photo, logo</td></tr>
              <tr><td>2</td><td>Carousel, 5 slides</td><td>1080 x 1350 each</td><td>Slide 1: classic 500 g ₹650 and 1 kg ₹1,200. Slides 2 to 4: eggless ₹600, minis ₹480, gift box ₹999. Slide 5: how to order.</td><td>Flat-lay (P2) for the classic slide</td><td>Photos of all products</td></tr>
              <tr><td>3</td><td>Story and Reel cover</td><td>1080 x 1920 (9:16)</td><td>"Pre-orders open. 10% off till Sun 13 Dec"</td><td>Window background (P3), Cocoa (S3)</td><td>Gift box photo, logo</td></tr>
              <tr><td>4</td><td>WhatsApp status</td><td>1080 x 1920 (9:16)</td><td>"Early-bird ends Sun 13 Dec!"</td><td>Cocoa waving (S3)</td><td>Price tags, logo</td></tr>
              <tr><td>5</td><td>WhatsApp broadcast image</td><td>1080 x 1080 (1:1)</td><td>"Last day to order: Sun 20 Dec. Pickup 21-24 Dec"</td><td>None: a plain Cream design</td><td>Mini cakes photo, logo</td></tr>
              <tr><td>6</td><td>Shop poster</td><td>A3 + 3 mm bleed = 3579 x 5031 px</td><td>All products, prices, dates, offer</td><td>Holly border (P4), upscaled</td><td>Cake photo, logo</td></tr>
            </tbody>
          </table>
          <p>Early-bird prices to check: 500 g classic ₹585, 1 kg classic ₹1,080, eggless ₹540, minis ₹432, gift box ₹899 (₹899.10, rounded). That makes 10 design files in all: 1 launch post, 5 carousel slides, 1 Story cover, 1 status, 1 broadcast image and 1 poster.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: Mood board prompts, then the designs</h3>
          <p>A <strong>mood board</strong> is a set of images that shows the look and feel of a campaign before you design. It helps Anjali say "yes, this feels like us" early. Use three prompts, each ending with the style block S1.</p>
          <pre><code>Mood board prompt 1 (textures and colours):
        A mood board grid of 6 square photos for a warm home bakery at Christmas
        in Maharashtra: dark plum cake crumbs, cream linen, a red ribbon, a sprig of holly,
        brass fairy lights, a wooden table. Colours: chocolate brown, warm cream,
        berry red, small touches of pistachio green and butter gold. Soft natural
        light. No text, no logos, no people. [Add style block S1]

        Mood board prompt 2 (mascot in the season):
        Use prompt S3 with the Cocoa character sheet as the reference. Change only
        the scene line: "Cocoa is tying a red ribbon on a gift box."

        Mood board prompt 3 (print feel):
        Use prompt P4 for the poster border. Ask for 4 options to compare.</code></pre>
          <p>Then build each design in Canva with three layers: the no-text AI image at the bottom, brand-font text on top, then the real logo. Follow the workflow: v01, feedback from Anjali, then v02. Use 64 px margins, so the content area is 952 x 1222 px on 4:5 posts. On 9:16 designs, also keep about 250 px clear at the top and bottom (safe area 952 x 1420 px). Use a new file name and a new prompt log line for each file.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: The A3 poster layout</h3>
          <p>People read a shop poster from 2 or 3 metres away, often while walking past. So use a clear <strong>hierarchy</strong> (the order in which the eye reads things): the biggest item first, the details last.</p>
          <ol class="lc-list">
            <li><strong>Headline</strong> (Playfair Display, Crumb Brown on Cream, contrast 8.23:1): "Christmas Plum Cakes"</li>
            <li><strong>Photo:</strong> Anjali's real classic plum cake, 200 mm wide (381 PPI from a 3000 px photo)</li>
            <li><strong>Offer box</strong> (Cream text on Berry Red, contrast 5.42:1): "10% off if you order by Sun 13 Dec"</li>
            <li><strong>Price list</strong> (Poppins): all five products and prices</li>
            <li><strong>Key dates:</strong> "Pre-orders from Tue 1 Dec · Last order Sun 20 Dec · Pickup 21-24 Dec"</li>
            <li><strong>Small print:</strong> "Classic cake contains alcohol, egg and nuts. Eggless cake is alcohol-free. Border illustration made with AI."</li>
            <li><strong>Logo and contact:</strong> the real logo file and [your WhatsApp number], with clear space around the logo</li>
          </ol>
          <p>Keep all text 10 mm inside the trim edge. Upscale the P4 border to at least 3579 px wide. Download a PDF for print with crop marks and bleed. Ask the printer for a proof before printing all copies.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: Alt text and the rights and disclosure checklist</h3>
          <p><strong>Alt text</strong> (alternative text) is a short written description of an image. Screen readers read it aloud for people who are blind or have low vision. Describe what matters and include the key words on the image. Instagram lets you add alt text to a post; check its current help page for where the setting is. WhatsApp does not have an alt text field for images at the time of writing. Check its current help pages. For now, write the key details in the message text too.</p>
          <table class="lc-table">
            <thead><tr><th>Design</th><th>Alt text</th></tr></thead>
            <tbody>
              <tr><td>Launch post</td><td>A dark plum cake on a cream plate, with dried fruits and cinnamon on a wooden table. Text: Merry Christmas from Sweet Crumbs! Plum cake pre-orders open Tuesday 1 December.</td></tr>
              <tr><td>WhatsApp status</td><td>Cocoa, an illustrated bear baker in a red scarf, waves next to price tags. Text: Early-bird 10% off ends Sunday 13 December.</td></tr>
              <tr><td>A3 poster (for the website copy)</td><td>Sweet Crumbs Christmas poster with a plum cake photo, prices from ₹480 to ₹1,200, and order dates from 1 to 20 December.</td></tr>
            </tbody>
          </table>
          <pre><code>RIGHTS AND DISCLOSURE CHECKLIST (tick every line for every file)
        [ ] The cake in every photo is our real cake, not AI-made or AI-changed
        [ ] The logo is the real file. AI did not draw or change it
        [ ] No real person's face or voice without written consent
        [ ] No famous characters, brands or artist names in prompts or results
        [ ] Tool terms allow business use of these AI images
        [ ] AI label set on the platform where the image looks real
        [ ] Caption says what is real and what AI made
        [ ] "Contains alcohol" shown for the classic plum cake
        [ ] Dates and prices match the brief (check the early-bird maths)
        [ ] Alt text written. Batch of people images checked for bias
        [ ] Prompt log filled in. Content Credentials kept in the files
        [ ] Riya's paid collab (if any) carries a clear ad label, such as #ad
        [ ] Anjali approved the final version</code></pre>
          <p>This checklist is general guidance, not legal advice. Check each platform's current rules before the launch.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Ready to publish, or fix first?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Diya does a final check on Mon 30 Nov. Sort each finding.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ready" data-label="Ready to publish"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix first"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fix" data-why="10% off ₹999 is ₹899.10, so the rounded early-bird price is ₹899, not ₹889. Wrong prices break trust.">Carousel slide 4 says the gift box early-bird price is ₹889</li>
              <li data-bucket="ready" data-why="The real photo, the correct size and an honest caption all match the brief.">The launch post uses the real cake photo, is 1080 x 1350 and says "Scene created with AI. Cake photo is real."</li>
              <li data-bucket="fix" data-why="AI must not change the product. The picture must show the real cake.">The AI tool "improved" the cake on the Story: more fruit and a shinier top</li>
              <li data-bucket="fix" data-why="The poster needs 3 mm bleed on each side: 303 x 426 mm, which is 3579 x 5031 px at 300 PPI.">The poster PDF is 297 x 420 mm with no bleed</li>
              <li data-bucket="ready" data-why="WhatsApp has no alt text field at the time of writing. Putting the key facts in the message text helps everyone, including screen reader users.">The WhatsApp broadcast message repeats the image text: "Last day to order: Sun 20 Dec. Pickup 21-24 Dec"</li>
              <li data-bucket="fix" data-why="The classic cake must say it contains alcohol on every product visual.">Carousel slide 1 for the classic plum cake does not say "contains alcohol"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a full visual campaign for your own brand. Change the [bracketed] parts, then check every fact.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a creative director for small Indian brands that make visuals with AI image tools and Canva.

        Brand: [Sweet Crumbs, a home-style bakery in Maharashtra]
        Brand kit: [Crumb Brown #6B3E26, Cream #FFF4E0, Berry Red #B8323A; Playfair Display + Poppins; real logo file]
        Campaign: [Christmas plum cakes. Pre-orders from Tue 1 Dec 2026. 10% early-bird till Sun 13 Dec. Last order Sun 20 Dec.]
        Products: [classic 1 kg ₹1,200 (contains alcohol), eggless 500 g ₹600, gift box ₹999]

        Please give me:
        1. A short brief: goal, audience, key message, rules.
        2. 3 mood board prompts that end with one shared style block. No text or logos in images.
        3. 5 social graphics and 1 print poster: name, size in px, main text, AI part, real part.
        4. Alt text (under 30 words) for each design.
        5. A rights and disclosure checklist of 10 points.

        Rules: AI never makes or changes the real product or logo. Show all price maths. Say where labels go. General guidance only, not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>Check every date, weekday and early-bird price yourself.</li>
              <li>Are the sizes right, for example 1080 x 1350 for a 4:5 post?</li>
              <li>Does each design keep the real product and logo out of the AI part?</li>
              <li>Does the checklist cover labels, consent, bias, alt text and approval?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good AI campaign is a plan, not a pile of images. Start with a clear brief, set the look with a mood board and use AI only for backgrounds and illustrations. Add real photos, the real logo and exact text in a design tool. Before anything goes live, write alt text, check the facts and tick every line of your rights and disclosure checklist.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

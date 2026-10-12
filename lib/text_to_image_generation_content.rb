module TextToImageGenerationContent
  # How AI Text-to-Image Generation Works. Units (sidebar dividers): 1 Unit 1 · Images and Early Models · 6 Unit 2 · Diffusion Models · 11 Unit 3 · Stable Diffusion · 15 Unit 4 · Control and Customisation · 18 Capstone
  # Widgets: sorter, sequence, stepper. Starter code is Python run in the browser (Pyodide; numpy, pandas, scikit-learn).
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">Introduction to Generative AI</h1>
        </div>
        <p class="lc-lead"><strong>Generative AI</strong> is AI that makes new things: text, images, sound or video. You type "a red fox reading a book under a tree, watercolour". A few seconds later, you see that picture. In this lesson, you will learn how generative models differ from models that only label data. You will also learn the key idea behind all of them: learning a <strong>data distribution</strong>.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Top row: a discriminative model takes a photo of an animal, runs a classifier, and outputs a label: fox 0.94, cat 0.06. Bottom row: a generative model takes the prompt a red fox reading a book under a tree, watercolour, runs a generator, and outputs a brand-new image made of thousands of numbers.">
            <defs><marker id="ti1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="28" text-anchor="start" font-weight="700" fill="#93c5fd">Discriminative model: data in, label out</text>
              <rect x="20" y="42" width="200" height="64" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="120" y="70">photo of an animal</text>
              <text x="120" y="90" font-size="11" fill="#9b99b8">many pixels</text>
              <line x1="222" y1="74" x2="264" y2="74" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti1a)"/>
              <rect x="270" y="42" width="180" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="360" y="70" font-weight="700" fill="#93c5fd">Classifier</text>
              <text x="360" y="90" font-size="11" fill="#9b99b8">learned a boundary</text>
              <line x1="452" y1="74" x2="494" y2="74" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti1a)"/>
              <rect x="500" y="42" width="240" height="64" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="620" y="70">fox 0.94 · cat 0.06</text>
              <text x="620" y="90" font-size="11" fill="#9b99b8">a label: just a few numbers</text>
              <text x="20" y="148" text-anchor="start" font-weight="700" fill="#6ee7b7">Generative model: makes new data</text>
              <rect x="20" y="162" width="200" height="84" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="120" y="194" font-size="12">"a red fox reading a book</text>
              <text x="120" y="212" font-size="12">under a tree, watercolour"</text>
              <text x="120" y="232" font-size="11" fill="#9b99b8">a text prompt</text>
              <line x1="222" y1="204" x2="264" y2="204" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti1a)"/>
              <rect x="270" y="172" width="180" height="64" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="360" y="200" font-weight="700" fill="#6ee7b7">Generator</text>
              <text x="360" y="220" font-size="11" fill="#9b99b8">learned a distribution</text>
              <line x1="452" y1="204" x2="494" y2="204" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti1a)"/>
              <rect x="500" y="162" width="240" height="84" rx="10" fill="#27274e" stroke="#10b981"/>
              <g stroke="#1f1f44" stroke-width="1">
                <rect x="514" y="176" width="14" height="14" fill="#7dd3fc"/><rect x="528" y="176" width="14" height="14" fill="#7dd3fc"/><rect x="542" y="176" width="14" height="14" fill="#86efac"/><rect x="556" y="176" width="14" height="14" fill="#86efac"/><rect x="570" y="176" width="14" height="14" fill="#7dd3fc"/>
                <rect x="514" y="190" width="14" height="14" fill="#7dd3fc"/><rect x="528" y="190" width="14" height="14" fill="#86efac"/><rect x="542" y="190" width="14" height="14" fill="#4ade80"/><rect x="556" y="190" width="14" height="14" fill="#86efac"/><rect x="570" y="190" width="14" height="14" fill="#7dd3fc"/>
                <rect x="514" y="204" width="14" height="14" fill="#fdba74"/><rect x="528" y="204" width="14" height="14" fill="#f97316"/><rect x="542" y="204" width="14" height="14" fill="#a16207"/><rect x="556" y="204" width="14" height="14" fill="#fef3c7"/><rect x="570" y="204" width="14" height="14" fill="#7dd3fc"/>
                <rect x="514" y="218" width="14" height="14" fill="#bbf7d0"/><rect x="528" y="218" width="14" height="14" fill="#f97316"/><rect x="542" y="218" width="14" height="14" fill="#a16207"/><rect x="556" y="218" width="14" height="14" fill="#bbf7d0"/><rect x="570" y="218" width="14" height="14" fill="#bbf7d0"/>
              </g>
              <text x="664" y="200">a brand-new image</text>
              <text x="664" y="220" font-size="11" fill="#9b99b8">thousands of numbers</text>
            </g>
          </svg>
          <figcaption>A discriminative model gives a short answer about the data. A generative model makes new data. (The numbers and the tiny image are made up for this example.)</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Two kinds of models</h3>
          <p>Most early machine learning was <strong>discriminative</strong>. A discriminative model looks at data and gives a label or a number. It learns the line between the classes. It answers questions like "Is this a fox or a cat?"</p>
          <p>A <strong>generative</strong> model learns what the data itself looks like. Then it can make new examples that look like the training data. It answers requests like "Draw me a fox."</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Discriminative</th><th>Generative</th></tr></thead>
            <tbody>
              <tr><td>Question it answers</td><td>Which class is this?</td><td>What does data like this look like?</td></tr>
              <tr><td>Output</td><td>A label or a number</td><td>New text, images, sound or video</td></tr>
              <tr><td>Example</td><td>A spam filter</td><td>An image generator</td></tr>
              <tr><td>Size of output</td><td>Small: "fox, 0.94"</td><td>Large: a 512 × 512 image has 786,432 numbers</td></tr>
            </tbody>
          </table>
          <p>Generating is harder than labelling. The model must get thousands of numbers right at the same time, and they must all fit together.</p>
        </div>
        <div class="lc-card">
          <h3>What can generative AI make?</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Example task</th><th>Well-known examples</th></tr></thead>
            <tbody>
              <tr><td>Text</td><td>Answer a question, write code, summarise a report</td><td>Large language models such as Claude and GPT</td></tr>
              <tr><td>Images</td><td>Make a picture from a prompt, edit a photo</td><td>Stable Diffusion, DALL·E, Midjourney</td></tr>
              <tr><td>Audio</td><td>Read text aloud, make music</td><td>Text-to-speech systems, music generators</td></tr>
              <tr><td>Video</td><td>Make a short clip from a prompt</td><td>Sora, Veo</td></tr>
            </tbody>
          </table>
          <p>These tools change fast. New versions come out often, so check the current documentation before you use one. This course focuses on <strong>text-to-image</strong> models. Many of the same ideas are also used for audio and video.</p>
        </div>
        <div class="lc-card">
          <h3>The key idea: learning a data distribution</h3>
          <p>A <strong>data distribution</strong> describes which data is likely and which is unlikely. Real fox photos are likely. Random coloured noise is very unlikely.</p>
          <p>Take a simple example. We describe each animal with two numbers: ear length and tail length. Foxes in our made-up data have ears of about 9 cm and tails of about 40 cm.</p>
          <figure class="lc-diagram">
            <svg viewBox="0 0 760 290" role="img" aria-label="A scatter plot of ear length against tail length. Green dots are training foxes in the upper right. Blue dots are training cats in the lower left. A dashed ellipse marks the area where foxes usually are. Four orange stars are new foxes sampled from the learned distribution. Most of them fall inside the dashed area.">
              <g font-family="inherit" font-size="13" fill="#e2e0f0">
                <line x1="60" y1="240" x2="410" y2="240" stroke="#4b4a78" stroke-width="1.5"/>
                <line x1="60" y1="240" x2="60" y2="24" stroke="#4b4a78" stroke-width="1.5"/>
                <text x="235" y="268" text-anchor="middle" font-size="12" fill="#9b99b8">ear length (cm)</text>
                <text x="40" y="132" text-anchor="middle" font-size="12" fill="#9b99b8" transform="rotate(-90 40 132)">tail length (cm)</text>
                <g font-size="11" fill="#9b99b8" text-anchor="middle"><text x="91" y="255">3</text><text x="215" y="255">7</text><text x="338" y="255">11</text></g>
                <ellipse cx="272" cy="106" rx="62" ry="60" fill="#10b981" fill-opacity="0.08" stroke="#10b981" stroke-dasharray="6 4"/>
                <circle cx="292" cy="108" r="4" fill="#10b981"/><circle cx="296" cy="66" r="4" fill="#10b981"/><circle cx="269" cy="110" r="4" fill="#10b981"/><circle cx="325" cy="85" r="4" fill="#10b981"/><circle cx="262" cy="91" r="4" fill="#10b981"/><circle cx="262" cy="116" r="4" fill="#10b981"/><circle cx="284" cy="151" r="4" fill="#10b981"/><circle cx="223" cy="118" r="4" fill="#10b981"/><circle cx="245" cy="96" r="4" fill="#10b981"/><circle cx="248" cy="139" r="4" fill="#10b981"/><circle cx="322" cy="110" r="4" fill="#10b981"/><circle cx="278" cy="139" r="4" fill="#10b981"/><circle cx="260" cy="101" r="4" fill="#10b981"/><circle cx="241" cy="95" r="4" fill="#10b981"/><circle cx="258" cy="111" r="4" fill="#10b981"/><circle cx="258" cy="58" r="4" fill="#10b981"/><circle cx="276" cy="130" r="4" fill="#10b981"/><circle cx="302" cy="134" r="4" fill="#10b981"/><circle cx="283" cy="153" r="4" fill="#10b981"/><circle cx="235" cy="99" r="4" fill="#10b981"/><circle cx="299" cy="100" r="4" fill="#10b981"/><circle cx="273" cy="112" r="4" fill="#10b981"/><circle cx="231" cy="122" r="4" fill="#10b981"/><circle cx="262" cy="78" r="4" fill="#10b981"/><circle cx="287" cy="148" r="4" fill="#10b981"/><circle cx="286" cy="114" r="4" fill="#10b981"/><circle cx="255" cy="89" r="4" fill="#10b981"/><circle cx="308" cy="81" r="4" fill="#10b981"/><circle cx="250" cy="112" r="4" fill="#10b981"/><circle cx="287" cy="80" r="4" fill="#10b981"/>
                <circle cx="109" cy="186" r="4" fill="#3b82f6"/><circle cx="142" cy="193" r="4" fill="#3b82f6"/><circle cx="148" cy="171" r="4" fill="#3b82f6"/><circle cx="211" cy="175" r="4" fill="#3b82f6"/><circle cx="161" cy="180" r="4" fill="#3b82f6"/><circle cx="93" cy="179" r="4" fill="#3b82f6"/><circle cx="155" cy="133" r="4" fill="#3b82f6"/><circle cx="147" cy="173" r="4" fill="#3b82f6"/><circle cx="152" cy="200" r="4" fill="#3b82f6"/><circle cx="188" cy="164" r="4" fill="#3b82f6"/><circle cx="177" cy="195" r="4" fill="#3b82f6"/><circle cx="196" cy="204" r="4" fill="#3b82f6"/><circle cx="171" cy="138" r="4" fill="#3b82f6"/><circle cx="122" cy="189" r="4" fill="#3b82f6"/><circle cx="156" cy="188" r="4" fill="#3b82f6"/><circle cx="105" cy="177" r="4" fill="#3b82f6"/><circle cx="120" cy="169" r="4" fill="#3b82f6"/><circle cx="124" cy="150" r="4" fill="#3b82f6"/><circle cx="129" cy="184" r="4" fill="#3b82f6"/><circle cx="178" cy="201" r="4" fill="#3b82f6"/><circle cx="160" cy="154" r="4" fill="#3b82f6"/><circle cx="103" cy="175" r="4" fill="#3b82f6"/><circle cx="161" cy="164" r="4" fill="#3b82f6"/><circle cx="114" cy="203" r="4" fill="#3b82f6"/><circle cx="169" cy="173" r="4" fill="#3b82f6"/><circle cx="160" cy="172" r="4" fill="#3b82f6"/><circle cx="132" cy="174" r="4" fill="#3b82f6"/><circle cx="162" cy="191" r="4" fill="#3b82f6"/><circle cx="210" cy="169" r="4" fill="#3b82f6"/><circle cx="116" cy="166" r="4" fill="#3b82f6"/>
                <g fill="#f59e0b" stroke="#1f1f44" stroke-width="0.8"><path d="M287,90 l2,5 5,0 -4,3 2,6 -5,-3 -5,3 2,-6 -4,-3 5,0z"/><path d="M301,73 l2,5 5,0 -4,3 2,6 -5,-3 -5,3 2,-6 -4,-3 5,0z"/><path d="M246,132 l2,5 5,0 -4,3 2,6 -5,-3 -5,3 2,-6 -4,-3 5,0z"/><path d="M372,87 l2,5 5,0 -4,3 2,6 -5,-3 -5,3 2,-6 -4,-3 5,0z"/></g>
                <rect x="440" y="24" width="300" height="230" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
                <circle cx="462" cy="56" r="5" fill="#10b981"/><text x="476" y="61" font-weight="700" fill="#6ee7b7">Training foxes</text>
                <text x="476" y="80" font-size="11.5" fill="#9b99b8">real examples the model sees</text>
                <circle cx="462" cy="108" r="5" fill="#3b82f6"/><text x="476" y="113" font-weight="700" fill="#93c5fd">Training cats</text>
                <text x="476" y="132" font-size="11.5" fill="#9b99b8">a different class</text>
                <ellipse cx="462" cy="160" rx="10" ry="8" fill="none" stroke="#10b981" stroke-dasharray="4 3"/><text x="480" y="165" font-weight="700">Learned distribution</text>
                <text x="480" y="184" font-size="11.5" fill="#9b99b8">where foxes usually are</text>
                <path d="M462,206 l2,5 5,0 -4,3 2,6 -5,-3 -5,3 2,-6 -4,-3 5,0z" fill="#f59e0b"/><text x="476" y="217" font-weight="700" fill="#fcd34d">Generated foxes</text>
                <text x="476" y="236" font-size="11.5" fill="#9b99b8">new points from the same area</text>
              </g>
            </svg>
            <figcaption>A generative model learns the area where real data lives. Then it picks new points from that area. The data is made up, and it is the same data as in the starter code.</figcaption>
          </figure>
          <p>A generative model learns the shape of this cloud of points. To make a new fox, it <strong>samples</strong> (picks at random) a new point from inside the cloud. The new point is not a copy of any training fox. But it still looks like a fox.</p>
          <p>Part 2 in the code editor below does exactly this with NumPy. Two lines learn the cloud, and one line samples from it.</p>
          <p>The learned centre is close to the real one: ear 8.9 cm, tail 39.7 cm. The 5 new foxes are all different, and none is a copy of a training fox. Run the code below to see them.</p>
          <p>An image generator does the same thing, but each "point" is a whole image. A 512 × 512 colour image is one point with 786,432 numbers. The rest of this course shows how models learn a cloud that big.</p>
        </div>
        <div class="lc-card">
          <h3>The road to text-to-image</h3>
          <p>This course follows the same path that the research took.</p>
          <ol class="lc-list">
            <li><strong>Autoencoders and VAEs:</strong> squeeze images into a few numbers and rebuild them.</li>
            <li><strong>GANs</strong> (first published in 2014): two networks compete, and one learns to make realistic images.</li>
            <li><strong>Diffusion models:</strong> learn to remove noise from an image, step by step.</li>
            <li><strong>Text-to-image models</strong> such as Stable Diffusion (first released in 2022): a diffusion model that follows a text prompt.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Uses and risks</h3>
          <table class="lc-table">
            <thead><tr><th>Useful for</th><th>Risks to watch</th></tr></thead>
            <tbody>
              <tr><td>Concept art, book covers and storyboards</td><td><strong>Deepfakes:</strong> fake photos or videos of real people</td></tr>
              <tr><td>Product mock-ups and adverts</td><td><strong>Misinformation:</strong> fake "news" images that look real</td></tr>
              <tr><td>Teaching diagrams and illustrations</td><td><strong>Copyright:</strong> training data and outputs can copy artists' work</td></tr>
              <tr><td>Editing photos: removing objects, filling gaps</td><td><strong>Bias:</strong> the model repeats patterns from its training data</td></tr>
              <tr><td>Quick ideas before a real design</td><td><strong>Consent:</strong> using someone's face or style without asking</td></tr>
            </tbody>
          </table>
          <p>Some companies add hidden watermarks or "content credentials" to AI images. These show that an image was made by AI. Laws and platform rules on AI images are changing, so check the rules where you live and work.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: generative or discriminative?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Does each task need a model that makes new data, or one that labels data?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="gen" data-label="Generative"></div>
              <div data-sorter-target="bucket" data-bucket="disc" data-label="Discriminative"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="gen" data-why="The output is a whole new picture, so the model must make new data.">Draw "a red fox reading a book under a tree, watercolour"</li>
              <li data-bucket="disc" data-why="The output is one label: spam or not spam.">Decide if an email is spam</li>
              <li data-bucket="disc" data-why="The output is a yes or no answer about an existing image.">Say whether an X-ray shows a broken bone</li>
              <li data-bucket="gen" data-why="The model must make new sound that did not exist before.">Read a sentence aloud in a natural voice</li>
              <li data-bucket="disc" data-why="The output is a single number about the data. No new data is made.">Predict the price of a house from its size</li>
              <li data-bucket="gen" data-why="The model must invent new pixels that fit the rest of the photo.">Fill in a missing part of a photo</li>
              <li data-bucket="gen" data-why="Each reply is new text, made one token at a time.">Write a short poem about autumn</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The starter code trains a discriminative model and a generative model on the same made-up animal data.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, the classifier labels two animals. In Part 2, the generative model makes 5 new foxes. Part 3 checks them with the classifier.</li>
            <li>At the top, change <code>N_NEW = 5</code> to <code>10</code>. Look at Part 2 again. Are all the new foxes different from each other?</li>
            <li>Change the seed in <code>np.random.seed(42)</code> to <code>7</code>. You get different new foxes from the same learned distribution.</li>
            <li>In Part 1, add a third test animal to <code>test</code>, such as <code>[7.0, 34.0]</code>. It sits between the two classes. Which label does the classifier give?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A discriminative model learns the line between classes. A generative model learns where the data lives, so it can sample new data from that area.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Discriminative vs generative, on a tiny made-up dataset.
        # Each animal photo is described by 2 numbers: ear length and tail length (cm).
        import numpy as np
        from sklearn.linear_model import LogisticRegression

        np.random.seed(42)
        N_NEW = 5            # how many new foxes the generative model makes

        foxes = np.random.normal([9, 40], [1.0, 4.0], size=(50, 2))   # [ear, tail]
        cats  = np.random.normal([5, 28], [1.0, 3.0], size=(50, 2))
        X = np.vstack([foxes, cats])
        y = np.array(["fox"] * 50 + ["cat"] * 50)

        # ── Part 1: a discriminative model learns the line between the classes ──
        print("== Part 1: discriminative model (which class?) ==")
        clf = LogisticRegression().fit(X, y)
        test = np.array([[8.5, 38.0], [5.5, 27.0]])
        for row, label in zip(test, clf.predict(test)):
            print(f"Discriminative: ear {row[0]} cm, tail {row[1]} cm -> {label}")

        # ── Part 2: a generative model learns where foxes live, then samples new ones ──
        print("\n== Part 2: generative model (make new foxes) ==")
        mean = foxes.mean(axis=0)              # the centre of the fox data
        cov = np.cov(foxes, rowvar=False)      # how spread out it is
        print(f"Learned fox centre: ear {mean[0]:.1f} cm, tail {mean[1]:.1f} cm")

        # Now sample NEW foxes from the learned distribution.
        new_foxes = np.random.multivariate_normal(mean, cov, size=N_NEW)
        print("Generated foxes (new data, not copies):")
        for ear, tail in new_foxes:
            bar = "#" * int(tail / 2)
            print(f"  ear {ear:4.1f} cm  tail {tail:4.1f} cm  {bar}")

        # ── Part 3: check the new foxes with the classifier ──
        print("\n== Part 3: does the classifier agree? ==")
        print("Classifier says:", ", ".join(clf.predict(new_foxes)))
      PYTHON
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">How Computers See Images (Pixels and Tensors)</h1>
        </div>
        <p class="lc-lead">Before a model can make an image, it must store one. To a computer, an image is just a grid of numbers. In this lesson, you will learn about pixels, colour channels and array shapes. You will also learn the tensor shapes that image models such as Stable Diffusion expect.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Top: a small 4 by 4 image. One orange pixel is picked out. It holds three numbers, R 230, G 90 and B 30. Divided by 255 they become 0.90, 0.35 and 0.12. Bottom: the shape changes from an image file to H, W, C of 8 by 8 by 3, then to C, H, W of 3 by 8 by 8, then to a batch N, C, H, W of 4 by 3 by 8 by 8.">
            <defs><marker id="ti2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="86" y="26" font-weight="700">A tiny image</text>
              <g stroke="#1f1f44" stroke-width="2">
                <rect x="30" y="38" width="28" height="28" fill="#1e3c8c"/><rect x="58" y="38" width="28" height="28" fill="#1e3c8c"/><rect x="86" y="38" width="28" height="28" fill="#1e3c8c"/><rect x="114" y="38" width="28" height="28" fill="#1e3c8c"/>
                <rect x="30" y="66" width="28" height="28" fill="#1e3c8c"/><rect x="58" y="66" width="28" height="28" fill="#1e3c8c"/><rect x="86" y="66" width="28" height="28" fill="#e65a1e"/><rect x="114" y="66" width="28" height="28" fill="#1e3c8c"/>
                <rect x="30" y="94" width="28" height="28" fill="#288c32"/><rect x="58" y="94" width="28" height="28" fill="#288c32"/><rect x="86" y="94" width="28" height="28" fill="#288c32"/><rect x="114" y="94" width="28" height="28" fill="#288c32"/>
                <rect x="30" y="122" width="28" height="28" fill="#288c32"/><rect x="58" y="122" width="28" height="28" fill="#288c32"/><rect x="86" y="122" width="28" height="28" fill="#288c32"/><rect x="114" y="122" width="28" height="28" fill="#288c32"/>
              </g>
              <rect x="86" y="66" width="28" height="28" fill="none" stroke="#f59e0b" stroke-width="3"/>
              <line x1="144" y1="80" x2="196" y2="80" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti2a)"/>
              <rect x="200" y="30" width="150" height="120" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="275" y="52" font-weight="700" fill="#fcd34d">One pixel</text>
              <g text-anchor="start" font-size="12.5">
                <rect x="214" y="64" width="12" height="12" fill="#ef4444"/><text x="234" y="75">R = 230</text>
                <rect x="214" y="88" width="12" height="12" fill="#22c55e"/><text x="234" y="99">G = 90</text>
                <rect x="214" y="112" width="12" height="12" fill="#3b82f6"/><text x="234" y="123">B = 30</text>
              </g>
              <text x="275" y="143" font-size="11" fill="#9b99b8">whole numbers 0 to 255</text>
              <line x1="352" y1="90" x2="406" y2="90" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti2a)"/>
              <text x="380" y="80" font-size="11" fill="#9b99b8">÷ 255</text>
              <rect x="410" y="30" width="150" height="120" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="485" y="52" font-weight="700" fill="#67e8f9">Model input</text>
              <g text-anchor="start" font-size="12.5">
                <text x="440" y="75">R = 0.90</text><text x="440" y="99">G = 0.35</text><text x="440" y="123">B = 0.12</text>
              </g>
              <text x="485" y="143" font-size="11" fill="#9b99b8">decimals 0 to 1</text>
              <rect x="590" y="30" width="150" height="120" rx="10" fill="#27274e" stroke="#4b4a78"/>
              <text x="665" y="56" font-weight="700">Size check</text>
              <text x="665" y="82" font-size="12">8 × 8 pixels</text>
              <text x="665" y="102" font-size="12">× 3 channels</text>
              <text x="665" y="126" font-size="12" font-weight="700" fill="#6ee7b7">= 192 numbers</text>
              <text x="380" y="190" font-weight="700" fill="#c4b5fd">The shape changes on the way into a model</text>
              <rect x="20" y="210" width="160" height="80" rx="10" fill="#27274e" stroke="#4b4a78"/>
              <text x="100" y="240" font-weight="700">Image file</text>
              <text x="100" y="262" font-size="11" fill="#9b99b8">PNG or JPEG</text>
              <line x1="182" y1="250" x2="202" y2="250" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti2a)"/>
              <rect x="206" y="210" width="160" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="286" y="236" font-weight="700" fill="#93c5fd">(H, W, C)</text>
              <text x="286" y="256">(8, 8, 3)</text>
              <text x="286" y="276" font-size="11" fill="#9b99b8">NumPy, Pillow</text>
              <line x1="368" y1="250" x2="388" y2="250" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti2a)"/>
              <rect x="392" y="210" width="160" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="472" y="236" font-weight="700" fill="#c4b5fd">(C, H, W)</text>
              <text x="472" y="256">(3, 8, 8)</text>
              <text x="472" y="276" font-size="11" fill="#9b99b8">PyTorch, channels first</text>
              <line x1="554" y1="250" x2="574" y2="250" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti2a)"/>
              <rect x="578" y="210" width="162" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="659" y="236" font-weight="700" fill="#6ee7b7">(N, C, H, W)</text>
              <text x="659" y="256">(4, 3, 8, 8)</text>
              <text x="659" y="276" font-size="11" fill="#9b99b8">a batch of 4 images</text>
            </g>
          </svg>
          <figcaption>Top: every pixel stores three numbers, one for each colour channel. Bottom: the same numbers are rearranged into the shape a model expects. The values come from the starter code.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Pixels and grayscale</h3>
          <p>A digital image is a grid of tiny squares called <strong>pixels</strong>. Each pixel stores a brightness value.</p>
          <p>In a <strong>grayscale</strong> image, each pixel holds one number. It usually goes from 0 (black) to 255 (white). Why 255? Each value uses 8 bits, and 8 bits can store 256 different numbers: 0 to 255.</p>
          <p>Here is an 8 × 8 grayscale image from Part 1 of the code. A grey line runs along the top (120) and a white square (255) sits in the middle. Dark pixels print as spaces and bright pixels as <code>@</code>. The top-left pixel is 120 and the middle pixel is 255. Run the code below to see this image.</p>
          <p>The image is stored in a NumPy <strong>array</strong>: a grid of numbers with a fixed shape. This one has shape <code>(8, 8)</code>: 8 rows (the <strong>height</strong>, H) and 8 columns (the <strong>width</strong>, W).</p>
        </div>
        <div class="lc-card">
          <h3>Colour: three channels</h3>
          <p>A colour pixel holds three numbers: <strong>R</strong>ed, <strong>G</strong>reen and <strong>B</strong>lue. Each one is called a <strong>channel</strong>. The screen mixes the three lights to make one colour.</p>
          <table class="lc-table">
            <thead><tr><th>Colour</th><th>R</th><th>G</th><th>B</th></tr></thead>
            <tbody>
              <tr><td>Black</td><td>0</td><td>0</td><td>0</td></tr>
              <tr><td>White</td><td>255</td><td>255</td><td>255</td></tr>
              <tr><td>Pure red</td><td>255</td><td>0</td><td>0</td></tr>
              <tr><td>Fox orange</td><td>230</td><td>90</td><td>30</td></tr>
              <tr><td>Sky blue (in our tiny image)</td><td>30</td><td>60</td><td>160</td></tr>
            </tbody>
          </table>
          <p>So a colour image has three numbers in each position. Its shape is <strong>H × W × C</strong>, where C is the number of channels. An 8 × 8 colour image has shape <code>(8, 8, 3)</code> and holds 8 × 8 × 3 = 192 numbers.</p>
          <p>Real images are much bigger. Stable Diffusion often works with 512 × 512 images. That is 512 × 512 × 3 = 786,432 numbers for one picture.</p>
        </div>
        <div class="lc-card">
          <h3>From 0-255 to 0-1</h3>
          <p>Neural networks learn better with small numbers. So we usually turn each value into a decimal between 0 and 1. We simply divide by 255.</p>
          <ul class="lc-list">
            <li>230 ÷ 255 = 0.90 (rounded)</li>
            <li>90 ÷ 255 = 0.35</li>
            <li>30 ÷ 255 = 0.12</li>
          </ul>
          <p>We must also change the type. Images on disk use <code>uint8</code>: whole numbers from 0 to 255. Models use <code>float32</code>: decimal numbers.</p>
          <p>Many diffusion models, including Stable Diffusion, go one step further. They scale pixels to the range -1 to 1, using <code>x * 2 - 1</code>. You will see this again later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Tensors, channels first and batches</h3>
          <p>A <strong>tensor</strong> is the name for an array of numbers in libraries like PyTorch. It can have any number of dimensions. A grayscale image is a 2D tensor. A colour image is a 3D tensor.</p>
          <p>Libraries do not all use the same order:</p>
          <table class="lc-table">
            <thead><tr><th>Order</th><th>Shape for one 512 × 512 colour image</th><th>Used by</th></tr></thead>
            <tbody>
              <tr><td>Channels last (H, W, C)</td><td>(512, 512, 3)</td><td>NumPy, Pillow, most image files</td></tr>
              <tr><td>Channels first (C, H, W)</td><td>(3, 512, 512)</td><td>PyTorch models</td></tr>
              <tr><td>Batch (N, C, H, W)</td><td>(1, 3, 512, 512)</td><td>PyTorch models, many images at once</td></tr>
            </tbody>
          </table>
          <p>A <strong>batch</strong> is a group of images that the model processes together. N is the batch size. Even one image needs a batch dimension, so N = 1.</p>
          <p>Part 5 in the code editor below converts a 512 × 512 image in PyTorch. Run it on your own computer, because PyTorch does not run in the browser.</p>
          <p>There, <code>t</code> has shape (3, 512, 512) and <code>batch</code> has shape (1, 3, 512, 512). <code>permute(2, 0, 1)</code> moves the channel axis to the front. <code>unsqueeze(0)</code> adds a new first axis for the batch. Part 4 does the same steps with NumPy, which does run in the browser. In NumPy, <code>transpose(2, 0, 1)</code> does the same job as <code>permute</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from photo to model input</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in order. How does a photo become the input of an image model?</p>
            <ol data-sequence-target="list">
              <li data-order="1">Load the image file into an array of shape (H, W, 3) with values 0 to 255</li>
              <li data-order="2">Resize it to the size the model expects, such as 512 × 512</li>
              <li data-order="3">Change the type to float and divide by 255, so values are 0 to 1</li>
              <li data-order="4">Move the channels first, so the shape is (3, H, W)</li>
              <li data-order="5">Stack several images into a batch of shape (N, 3, H, W)</li>
              <li data-order="6">Give the batch to the model</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The starter code builds images from plain NumPy arrays and prints them as text art.</p>
          <ol class="lc-list">
            <li>Run it. Find the white square in Part 1 and the bright fox pixel in the red channel in Part 2.</li>
            <li>In Part 1, change <code>gray[2:6, 2:6] = 255</code> to <code>128</code>. Which character does the square use now?</li>
            <li>In Part 2, move the fox: change <code>rgb[2, 5]</code> to <code>rgb[6, 1]</code> in both places. Then print <code>show(rgb[:, :, 1])</code> to see the green channel.</li>
            <li>In Part 4, change the batch from 4 images to 2 images. Which number in the batch shape changes?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An image is a grid of numbers with shape H × W × C. Models want small decimals in channels-first order, (N, C, H, W). So we scale and rearrange the same numbers first.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # An image is just a grid of numbers. Let's build one with numpy.
        import numpy as np

        H, W = 8, 8
        CHARS = " .:-=+*#%@"           # dark -> bright, used to print pixels as text

        def show(img):
            for row in img:
                print("  " + "".join(CHARS[int(v) * (len(CHARS) - 1) // 255] * 2 for v in row))

        # ── Part 1: a grayscale image, one number per pixel (0 black to 255 white) ──
        print("== Part 1: a grayscale image ==")
        gray = np.zeros((H, W), dtype=np.uint8)
        gray[2:6, 2:6] = 255           # a white square in the middle
        gray[0, :] = 120               # a grey line along the top
        print("Grayscale image, shape", gray.shape)
        show(gray)
        print("Top-left pixel:", gray[0, 0], " middle pixel:", gray[3, 3])

        # ── Part 2: a colour image, 3 numbers per pixel (Red, Green, Blue). Shape is H x W x C ──
        print("\n== Part 2: a colour image ==")
        rgb = np.zeros((H, W, 3), dtype=np.uint8)
        rgb[:, :] = [30, 60, 160]      # a blue sky everywhere
        rgb[4:, :] = [40, 140, 50]     # green grass on the bottom half
        rgb[2, 5] = [230, 90, 30]      # one orange pixel: a tiny fox!
        print("Colour image shape (H, W, C):", rgb.shape)
        print("Pixel [2, 5] as R, G, B:", rgb[2, 5])
        print("Total numbers stored:", rgb.size)
        print("Red channel only (the fox pixel is bright):")
        show(rgb[:, :, 0])

        # ── Part 3: models like small numbers, so scale 0-255 to 0-1 ──
        print("\n== Part 3: scale to 0-1 ==")
        x = rgb.astype(np.float32) / 255.0
        print("After / 255, pixel [2, 5] =", x[2, 5].round(3))

        # ── Part 4: channels first (C, H, W), then a batch (N, C, H, W) ──
        print("\n== Part 4: channels first and a batch ==")
        chw = x.transpose(2, 0, 1)
        batch = np.stack([chw, chw, chw, chw])   # 4 images in one batch
        print("Channels first (C, H, W):", chw.shape)
        print("Batch (N, C, H, W):", batch.shape)

        # ── Part 5: the same steps in PyTorch (run this part on your own computer) ──
        # pip install torch
        print("\n== Part 5: the same steps in PyTorch ==")
        try:
            import torch
        except ImportError:
            torch = None
        if torch is None:
            print("Part 5 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            img = np.zeros((512, 512, 3), dtype=np.uint8)   # H x W x C, values 0-255
            t = torch.from_numpy(img).permute(2, 0, 1).float() / 255
            batch = t.unsqueeze(0)                          # add a batch dimension
            print(t.shape)
            print(batch.shape)
      PYTHON
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">Autoencoders</h1>
        </div>
        <p class="lc-lead">An <strong>autoencoder</strong> is a neural network that squeezes an image into a few numbers and then rebuilds it. It sounds pointless, but it is very useful. The few numbers must keep the most important information about the image. In this lesson, you will learn the encoder, the bottleneck, the decoder and the reconstruction loss. Stable Diffusion uses this idea to work with small versions of images.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="An 8 by 8 input image of 64 pixels goes into the encoder, which narrows to a code of 3 numbers: minus 1.27, minus 0.26 and minus 0.43. The decoder widens the code back to 64 pixels. The output image looks almost the same as the input. The reconstruction loss compares input and output.">
            <defs><marker id="ti3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="68" y="74" font-weight="700" fill="#93c5fd">Input</text>
              <rect x="20" y="92" width="12" height="12" fill="rgb(104,104,124)"/><rect x="32" y="92" width="12" height="12" fill="rgb(102,102,122)"/><rect x="44" y="92" width="12" height="12" fill="rgb(107,107,127)"/><rect x="56" y="92" width="12" height="12" fill="rgb(208,208,228)"/><rect x="68" y="92" width="12" height="12" fill="rgb(211,211,231)"/><rect x="80" y="92" width="12" height="12" fill="rgb(99,99,119)"/><rect x="92" y="92" width="12" height="12" fill="rgb(121,121,141)"/><rect x="104" y="92" width="12" height="12" fill="rgb(108,108,128)"/><rect x="20" y="104" width="12" height="12" fill="rgb(103,103,123)"/><rect x="32" y="104" width="12" height="12" fill="rgb(26,26,46)"/><rect x="44" y="104" width="12" height="12" fill="rgb(25,25,45)"/><rect x="56" y="104" width="12" height="12" fill="rgb(131,131,151)"/><rect x="68" y="104" width="12" height="12" fill="rgb(136,136,156)"/><rect x="80" y="104" width="12" height="12" fill="rgb(30,30,50)"/><rect x="92" y="104" width="12" height="12" fill="rgb(25,25,45)"/><rect x="104" y="104" width="12" height="12" fill="rgb(103,103,123)"/><rect x="20" y="116" width="12" height="12" fill="rgb(105,105,125)"/><rect x="32" y="116" width="12" height="12" fill="rgb(25,25,45)"/><rect x="44" y="116" width="12" height="12" fill="rgb(57,57,77)"/><rect x="56" y="116" width="12" height="12" fill="rgb(184,184,204)"/><rect x="68" y="116" width="12" height="12" fill="rgb(186,186,206)"/><rect x="80" y="116" width="12" height="12" fill="rgb(65,65,85)"/><rect x="92" y="116" width="12" height="12" fill="rgb(28,28,48)"/><rect x="104" y="116" width="12" height="12" fill="rgb(109,109,129)"/><rect x="20" y="128" width="12" height="12" fill="rgb(236,236,255)"/><rect x="32" y="128" width="12" height="12" fill="rgb(140,140,160)"/><rect x="44" y="128" width="12" height="12" fill="rgb(174,174,194)"/><rect x="56" y="128" width="12" height="12" fill="rgb(168,168,188)"/><rect x="68" y="128" width="12" height="12" fill="rgb(164,164,184)"/><rect x="80" y="128" width="12" height="12" fill="rgb(176,176,196)"/><rect x="92" y="128" width="12" height="12" fill="rgb(127,127,147)"/><rect x="104" y="128" width="12" height="12" fill="rgb(205,205,225)"/><rect x="20" y="140" width="12" height="12" fill="rgb(211,211,231)"/><rect x="32" y="140" width="12" height="12" fill="rgb(125,125,145)"/><rect x="44" y="140" width="12" height="12" fill="rgb(186,186,206)"/><rect x="56" y="140" width="12" height="12" fill="rgb(180,180,200)"/><rect x="68" y="140" width="12" height="12" fill="rgb(174,174,194)"/><rect x="80" y="140" width="12" height="12" fill="rgb(185,185,205)"/><rect x="92" y="140" width="12" height="12" fill="rgb(133,133,153)"/><rect x="104" y="140" width="12" height="12" fill="rgb(209,209,229)"/><rect x="20" y="152" width="12" height="12" fill="rgb(118,118,138)"/><rect x="32" y="152" width="12" height="12" fill="rgb(28,28,48)"/><rect x="44" y="152" width="12" height="12" fill="rgb(60,60,80)"/><rect x="56" y="152" width="12" height="12" fill="rgb(173,173,193)"/><rect x="68" y="152" width="12" height="12" fill="rgb(169,169,189)"/><rect x="80" y="152" width="12" height="12" fill="rgb(57,57,77)"/><rect x="92" y="152" width="12" height="12" fill="rgb(31,31,51)"/><rect x="104" y="152" width="12" height="12" fill="rgb(120,120,140)"/><rect x="20" y="164" width="12" height="12" fill="rgb(98,98,118)"/><rect x="32" y="164" width="12" height="12" fill="rgb(28,28,48)"/><rect x="44" y="164" width="12" height="12" fill="rgb(25,25,45)"/><rect x="56" y="164" width="12" height="12" fill="rgb(129,129,149)"/><rect x="68" y="164" width="12" height="12" fill="rgb(128,128,148)"/><rect x="80" y="164" width="12" height="12" fill="rgb(25,25,45)"/><rect x="92" y="164" width="12" height="12" fill="rgb(25,25,45)"/><rect x="104" y="164" width="12" height="12" fill="rgb(102,102,122)"/><rect x="20" y="176" width="12" height="12" fill="rgb(109,109,129)"/><rect x="32" y="176" width="12" height="12" fill="rgb(107,107,127)"/><rect x="44" y="176" width="12" height="12" fill="rgb(106,106,126)"/><rect x="56" y="176" width="12" height="12" fill="rgb(209,209,229)"/><rect x="68" y="176" width="12" height="12" fill="rgb(211,211,231)"/><rect x="80" y="176" width="12" height="12" fill="rgb(112,112,132)"/><rect x="92" y="176" width="12" height="12" fill="rgb(111,111,131)"/><rect x="104" y="176" width="12" height="12" fill="rgb(101,101,121)"/>
              <rect x="20" y="92" width="96" height="96" fill="none" stroke="#3b82f6"/>
              <text x="68" y="208" font-size="11" fill="#9b99b8">64 pixels</text>
              <line x1="120" y1="140" x2="150" y2="140" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti3a)"/>
              <polygon points="156,50 296,105 296,175 156,230" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="220" y="136" font-weight="700" fill="#c4b5fd">Encoder</text>
              <text x="220" y="154" font-size="11" fill="#9b99b8">64 → 16 → 3</text>
              <rect x="318" y="88" width="124" height="104" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="108" font-weight="700" fill="#fcd34d">Code</text>
              <text x="380" y="132">-1.27</text>
              <text x="380" y="154">-0.26</text>
              <text x="380" y="176">-0.43</text>
              <text x="380" y="76" font-size="11" fill="#fcd34d">the bottleneck</text>
              <polygon points="464,105 604,50 604,230 464,175" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="540" y="136" font-weight="700" fill="#6ee7b7">Decoder</text>
              <text x="540" y="154" font-size="11" fill="#9b99b8">3 → 16 → 64</text>
              <line x1="608" y1="140" x2="638" y2="140" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti3a)"/>
              <text x="692" y="74" font-weight="700" fill="#6ee7b7">Output</text>
              <rect x="644" y="92" width="12" height="12" fill="rgb(106,106,126)"/><rect x="656" y="92" width="12" height="12" fill="rgb(105,105,125)"/><rect x="668" y="92" width="12" height="12" fill="rgb(107,107,127)"/><rect x="680" y="92" width="12" height="12" fill="rgb(215,215,235)"/><rect x="692" y="92" width="12" height="12" fill="rgb(213,213,233)"/><rect x="704" y="92" width="12" height="12" fill="rgb(106,106,126)"/><rect x="716" y="92" width="12" height="12" fill="rgb(109,109,129)"/><rect x="728" y="92" width="12" height="12" fill="rgb(106,106,126)"/><rect x="644" y="104" width="12" height="12" fill="rgb(106,106,126)"/><rect x="656" y="104" width="12" height="12" fill="rgb(25,25,45)"/><rect x="668" y="104" width="12" height="12" fill="rgb(25,25,45)"/><rect x="680" y="104" width="12" height="12" fill="rgb(134,134,154)"/><rect x="692" y="104" width="12" height="12" fill="rgb(132,132,152)"/><rect x="704" y="104" width="12" height="12" fill="rgb(25,25,45)"/><rect x="716" y="104" width="12" height="12" fill="rgb(25,25,45)"/><rect x="728" y="104" width="12" height="12" fill="rgb(105,105,125)"/><rect x="644" y="116" width="12" height="12" fill="rgb(106,106,126)"/><rect x="656" y="116" width="12" height="12" fill="rgb(25,25,45)"/><rect x="668" y="116" width="12" height="12" fill="rgb(66,66,86)"/><rect x="680" y="116" width="12" height="12" fill="rgb(175,175,195)"/><rect x="692" y="116" width="12" height="12" fill="rgb(173,173,193)"/><rect x="704" y="116" width="12" height="12" fill="rgb(65,65,85)"/><rect x="716" y="116" width="12" height="12" fill="rgb(25,25,45)"/><rect x="728" y="116" width="12" height="12" fill="rgb(106,106,126)"/><rect x="644" y="128" width="12" height="12" fill="rgb(213,213,233)"/><rect x="656" y="128" width="12" height="12" fill="rgb(132,132,152)"/><rect x="668" y="128" width="12" height="12" fill="rgb(174,174,194)"/><rect x="680" y="128" width="12" height="12" fill="rgb(174,174,194)"/><rect x="692" y="128" width="12" height="12" fill="rgb(174,174,194)"/><rect x="704" y="128" width="12" height="12" fill="rgb(175,175,195)"/><rect x="716" y="128" width="12" height="12" fill="rgb(133,133,153)"/><rect x="728" y="128" width="12" height="12" fill="rgb(216,216,236)"/><rect x="644" y="140" width="12" height="12" fill="rgb(216,216,236)"/><rect x="656" y="140" width="12" height="12" fill="rgb(133,133,153)"/><rect x="668" y="140" width="12" height="12" fill="rgb(173,173,193)"/><rect x="680" y="140" width="12" height="12" fill="rgb(175,175,195)"/><rect x="692" y="140" width="12" height="12" fill="rgb(175,175,195)"/><rect x="704" y="140" width="12" height="12" fill="rgb(175,175,195)"/><rect x="716" y="140" width="12" height="12" fill="rgb(134,134,154)"/><rect x="728" y="140" width="12" height="12" fill="rgb(214,214,234)"/><rect x="644" y="152" width="12" height="12" fill="rgb(109,109,129)"/><rect x="656" y="152" width="12" height="12" fill="rgb(25,25,45)"/><rect x="668" y="152" width="12" height="12" fill="rgb(68,68,88)"/><rect x="680" y="152" width="12" height="12" fill="rgb(174,174,194)"/><rect x="692" y="152" width="12" height="12" fill="rgb(175,175,195)"/><rect x="704" y="152" width="12" height="12" fill="rgb(66,66,86)"/><rect x="716" y="152" width="12" height="12" fill="rgb(26,26,46)"/><rect x="728" y="152" width="12" height="12" fill="rgb(107,107,127)"/><rect x="644" y="164" width="12" height="12" fill="rgb(106,106,126)"/><rect x="656" y="164" width="12" height="12" fill="rgb(25,25,45)"/><rect x="668" y="164" width="12" height="12" fill="rgb(26,26,46)"/><rect x="680" y="164" width="12" height="12" fill="rgb(131,131,151)"/><rect x="692" y="164" width="12" height="12" fill="rgb(130,130,150)"/><rect x="704" y="164" width="12" height="12" fill="rgb(25,25,45)"/><rect x="716" y="164" width="12" height="12" fill="rgb(25,25,45)"/><rect x="728" y="164" width="12" height="12" fill="rgb(107,107,127)"/><rect x="644" y="176" width="12" height="12" fill="rgb(105,105,125)"/><rect x="656" y="176" width="12" height="12" fill="rgb(108,108,128)"/><rect x="668" y="176" width="12" height="12" fill="rgb(106,106,126)"/><rect x="680" y="176" width="12" height="12" fill="rgb(214,214,234)"/><rect x="692" y="176" width="12" height="12" fill="rgb(214,214,234)"/><rect x="704" y="176" width="12" height="12" fill="rgb(104,104,124)"/><rect x="716" y="176" width="12" height="12" fill="rgb(105,105,125)"/><rect x="728" y="176" width="12" height="12" fill="rgb(108,108,128)"/>
              <rect x="644" y="92" width="96" height="96" fill="none" stroke="#10b981"/>
              <text x="692" y="208" font-size="11" fill="#9b99b8">64 pixels, rebuilt</text>
              <path d="M68,218 L68,250 L692,250 L692,218" fill="none" stroke="#ec4899" stroke-width="1.5" stroke-dasharray="5 4"/>
              <rect x="200" y="238" width="360" height="26" rx="6" fill="#1f1f44"/>
              <text x="380" y="256" fill="#f9a8d4">reconstruction loss: how different are they?</text>
              <text x="380" y="288" font-size="11.5" fill="#9b99b8">Training changes the weights so that this loss becomes small.</text>
            </g>
          </svg>
          <figcaption>An autoencoder squeezes 64 pixels into 3 numbers and rebuilds the image from them. The two images and the code are real results from the starter code.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three parts: encoder, bottleneck, decoder</h3>
          <ul class="lc-list">
            <li><strong>Encoder:</strong> a network that takes the image and makes it smaller, layer by layer. Its output is a short list of numbers.</li>
            <li><strong>Bottleneck (code):</strong> the short list of numbers in the middle. It is also called the <strong>latent code</strong> or <strong>latent vector</strong>. "Latent" means hidden: we do not choose these numbers, the network learns them.</li>
            <li><strong>Decoder:</strong> a network that takes the code and makes it bigger again. Its output has the same shape as the input image.</li>
          </ul>
          <p>The bottleneck is the key. It is too small to copy every pixel. So the network must learn which information matters most.</p>
        </div>
        <div class="lc-card">
          <h3>Reconstruction loss</h3>
          <p>How does an autoencoder learn? It compares its output with its input. The difference is the <strong>reconstruction loss</strong>. A common choice is the <strong>mean squared error</strong> (MSE): for each pixel, subtract, square the result, then take the average.</p>
          <p>A small worked example with 4 pixels:</p>
          <table class="lc-table">
            <thead><tr><th>Pixel</th><th>Input</th><th>Output</th><th>Difference</th><th>Squared</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>0.9</td><td>0.8</td><td>0.1</td><td>0.01</td></tr>
              <tr><td>2</td><td>0.0</td><td>0.1</td><td>-0.1</td><td>0.01</td></tr>
              <tr><td>3</td><td>0.5</td><td>0.5</td><td>0.0</td><td>0.00</td></tr>
              <tr><td>4</td><td>0.2</td><td>0.4</td><td>-0.2</td><td>0.04</td></tr>
            </tbody>
          </table>
          <p>MSE = (0.01 + 0.01 + 0.00 + 0.04) ÷ 4 = 0.015. Training changes the weights of both networks to make this number smaller.</p>
          <p>Notice that no labels are needed. The image is its own target. This is called <strong>self-supervised</strong> learning.</p>
        </div>
        <div class="lc-card">
          <h3>Compression: why a small code works</h3>
          <p>Real images are not random. Neighbouring pixels are often similar, and the same shapes appear again and again. An autoencoder learns these patterns. Then it only needs a few numbers to describe each image.</p>
          <p>The starter code shows this. Every training image is a mix of three patterns: a square, a cross and a frame. A linear autoencoder (the same idea as <strong>PCA</strong>, principal component analysis) learns them. Part 3 in the code editor below prints the loss for bottleneck sizes 1, 2, 3 and 4.</p>
          <ul class="lc-list">
            <li>With 1 or 2 numbers, the code is too small. Some information is lost (loss 0.0117 and 0.0033).</li>
            <li>With 3 numbers, the loss is tiny (0.0008). Three numbers are enough, because the images are made of three patterns.</li>
            <li>A 4th number does not help. There is nothing more to learn, only a little random noise.</li>
            <li>A random noise image rebuilds badly (loss 0.1915). The autoencoder only learned the kind of images it saw in training.</li>
          </ul>
          <p>Stable Diffusion uses an autoencoder in the same way. Its encoder squeezes a 512 × 512 × 3 image into a 64 × 64 × 4 latent. That is 48 times fewer numbers. You will meet this again later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>An autoencoder in PyTorch</h3>
          <p>Real autoencoders use non-linear layers. Part 5 in the code editor below trains a small one in PyTorch. Run it on your own computer, because PyTorch does not run in the browser.</p>
          <p>The encoder goes 64 → 16 → 3 and the decoder goes 3 → 16 → 64. Trained on the same square, cross and frame images, the loss falls from 0.24 to almost zero in 300 steps. So 3 numbers are enough for these simple images. Image autoencoders usually use convolution layers instead of <code>nn.Linear</code>. Parts 1 to 4 use a NumPy version of the same idea, which runs in the browser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one image through an autoencoder</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Input">An 8 × 8 image: a mix of a square, a cross and a frame. That is 64 numbers.</li>
              <li data-kind="thought" data-label="Encoder">Layers shrink the 64 numbers, step by step, down to 3 numbers.</li>
              <li data-kind="result" data-label="Code">[-1.27, -0.26, -0.43]. This is the bottleneck. It describes the whole image.</li>
              <li data-kind="thought" data-label="Decoder">Layers grow the 3 numbers back up to 64 numbers.</li>
              <li data-kind="result" data-label="Output">A rebuilt 8 × 8 image. It looks almost the same as the input, and a bit cleaner.</li>
              <li data-kind="check" data-label="Loss">Compare input and output pixel by pixel. The mean squared error is about 0.0009.</li>
              <li data-kind="warn" data-label="Limit">A plain autoencoder is not a good generator. Random codes often decode to messy images, because the codes it learned have gaps between them.</li>
              <li data-kind="answer" data-label="Result">The code keeps the important information. The encoder compresses, and the decoder rebuilds.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The starter code trains a linear autoencoder with NumPy on 200 tiny images.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, compare the original image with the image rebuilt from just 3 numbers.</li>
            <li>Change <code>K = 3</code> to <code>K = 1</code>. The rebuilt image in Part 2 loses detail. The loss lines in Part 3 do not change, because they test every size.</li>
            <li>In Part 1, change the noise <code>0.03</code> to <code>0.2</code>. The losses go up, and the rebuilt image looks cleaner than the original.</li>
            <li>In Part 2, change <code>img = X[0]</code> to <code>img = X[5]</code> to rebuild a different image.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An autoencoder learns to squeeze data through a small bottleneck and rebuild it. To keep the loss low, the code must hold the most important information. So the network learns a short description of the data.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A linear autoencoder (the PCA idea) on tiny 8x8 images, with numpy only.
        import numpy as np

        np.random.seed(42)
        K = 3                  # bottleneck size: how many numbers the code keeps
        CHARS = " .:-=+*#%@"

        def show(img):
            v = np.clip(img.reshape(8, 8), 0, 1)
            for row in v:
                print("  " + "".join(CHARS[int(p * 9)] * 2 for p in row))

        # ── Part 1: the training images ──
        # Three base patterns. Every training image is a mix of them, plus a little noise.
        print("== Part 1: 200 training images ==")
        square = np.zeros((8, 8)); square[2:6, 2:6] = 1
        cross = np.zeros((8, 8)); cross[3:5, :] = 1; cross[:, 3:5] = 1
        frame = np.zeros((8, 8)); frame[[0, 7], :] = 1; frame[:, [0, 7]] = 1
        bases = np.stack([square, cross, frame]).reshape(3, 64)
        weights = np.random.uniform(0, 0.5, size=(200, 3))
        X = weights @ bases + np.random.normal(0, 0.03, size=(200, 64))   # 200 images, 64 pixels each
        print("Data shape:", X.shape)

        # ── Part 2: train, encode one image to K numbers, decode it back ──
        print("\n== Part 2: encode and decode one image ==")
        # "Training": find the K directions that keep the most information.
        mean = X.mean(axis=0)
        _, _, Vt = np.linalg.svd(X - mean, full_matrices=False)
        W = Vt[:K]                                  # shape (K, 64)

        def encode(img):  return (img - mean) @ W.T   # 64 numbers -> K numbers
        def decode(code): return code @ W + mean      # K numbers -> 64 numbers

        img = X[0]
        code = encode(img)
        print(f"Original: 64 numbers. Code size: {K} ->", code.round(2))
        print("Original image:"); show(img)
        print("Rebuilt from the code:"); show(decode(code))

        # ── Part 3: reconstruction loss for each bottleneck size ──
        print("\n== Part 3: reconstruction loss (MSE) ==")
        for k in [1, 2, 3, 4]:
            Wk = Vt[:k]
            rebuilt = (X - mean) @ Wk.T @ Wk + mean
            print(f"bottleneck {k}: loss {np.mean((X - rebuilt) ** 2):.4f}")

        # ── Part 4: an image unlike the training data rebuilds badly ──
        print("\n== Part 4: a random noise image ==")
        noise = np.random.uniform(0, 1, 64)
        print(f"Random noise image loss: {np.mean((noise - decode(encode(noise))) ** 2):.4f}")

        # ── Part 5: a non-linear autoencoder in PyTorch (run this part on your own computer) ──
        # pip install torch
        print("\n== Part 5: an autoencoder in PyTorch ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 5 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            bases = torch.zeros(3, 8, 8)
            bases[0, 2:6, 2:6] = 1                             # square
            bases[1, 3:5, :] = 1; bases[1, :, 3:5] = 1         # cross
            bases[2, [0, 7], :] = 1; bases[2, :, [0, 7]] = 1   # frame
            x = (torch.rand(200, 3) * 0.5) @ bases.reshape(3, 64)   # 200 flat images

            encoder = nn.Sequential(nn.Linear(64, 16), nn.ReLU(), nn.Linear(16, 3))
            decoder = nn.Sequential(nn.Linear(3, 16), nn.ReLU(), nn.Linear(16, 64))
            params = list(encoder.parameters()) + list(decoder.parameters())
            opt = torch.optim.Adam(params, lr=0.01)

            for step in range(301):
                code = encoder(x)                              # (200, 3): the bottleneck
                rebuilt = decoder(code)                        # (200, 64)
                loss = nn.functional.mse_loss(rebuilt, x)      # reconstruction loss
                opt.zero_grad()
                loss.backward()
                opt.step()
                if step % 100 == 0:
                    print(f"step {step}: loss {loss.item():.4f}")
      PYTHON
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">Variational Autoencoders (VAEs)</h1>
        </div>
        <p class="lc-lead">A plain autoencoder can compress and rebuild images. But it is not good at making <em>new</em> ones. A <strong>variational autoencoder</strong> (VAE) fixes this. Its encoder gives a small cloud of possible codes for each image, not one exact code. In this lesson, you will learn the mean and variance, sampling, the reparameterisation trick and the KL term. Then you will make new images from random codes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="An image goes into the encoder. The encoder outputs a mean mu of 1.20 and minus 0.50, and a standard deviation sigma of 0.37 and 0.47. Random noise epsilon from a standard normal distribution is combined with them: z equals mu plus sigma times epsilon. The decoder turns z into an output image. The KL term pulls mu towards 0 and sigma towards 1. The reconstruction loss compares the output with the input.">
            <defs><marker id="ti4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="100" width="80" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="50" y="131">Image</text>
              <text x="50" y="150" font-size="11" fill="#9b99b8">64 pixels</text>
              <line x1="92" y1="135" x2="110" y2="135" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti4a)"/>
              <polygon points="114,70 194,105 194,165 114,200" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="150" y="140" font-size="12" font-weight="700" fill="#c4b5fd">Encoder</text>
              <path d="M196,125 L222,95" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti4a)"/>
              <path d="M196,145 L222,175" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti4a)"/>
              <rect x="226" y="62" width="122" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="287" y="84" font-weight="700" fill="#c4b5fd">mean μ</text>
              <text x="287" y="104" font-size="12">[1.20, -0.50]</text>
              <rect x="226" y="154" width="122" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="287" y="176" font-weight="700" fill="#c4b5fd">std σ</text>
              <text x="287" y="196" font-size="12">[0.37, 0.47]</text>
              <text x="287" y="34" font-size="11.5" fill="#fcd34d">KL term: pull μ to 0, σ to 1</text>
              <line x1="287" y1="42" x2="287" y2="58" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="3 3"/>
              <path d="M350,92 L382,125" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti4a)"/>
              <path d="M350,178 L382,147" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti4a)"/>
              <rect x="386" y="106" width="140" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="456" y="131" font-weight="700" fill="#fcd34d">z = μ + σ × ε</text>
              <text x="456" y="152" font-size="11" fill="#9b99b8">the latent code</text>
              <rect x="386" y="222" width="140" height="50" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="456" y="243" font-weight="700" fill="#67e8f9">ε from N(0, 1)</text>
              <text x="456" y="262" font-size="11" fill="#9b99b8">random noise</text>
              <line x1="456" y1="220" x2="456" y2="172" stroke="#22d3ee" stroke-width="1.5" marker-end="url(#ti4a)"/>
              <line x1="528" y1="136" x2="550" y2="136" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti4a)"/>
              <polygon points="554,105 634,70 634,200 554,165" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="596" y="140" font-size="12" font-weight="700" fill="#6ee7b7">Decoder</text>
              <line x1="636" y1="135" x2="654" y2="135" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti4a)"/>
              <rect x="658" y="100" width="92" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="704" y="131">Output</text>
              <text x="704" y="150" font-size="11" fill="#9b99b8">64 pixels</text>
              <path d="M50,172 L50,290 L704,290 L704,172" fill="none" stroke="#ec4899" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="200" y="283" font-size="11.5" fill="#f9a8d4">reconstruction loss</text>
              <text x="630" y="283" font-size="11.5" fill="#f9a8d4">input vs output</text>
            </g>
          </svg>
          <figcaption>A VAE encoder gives a mean and a spread. The code z is sampled from them with random noise ε. The numbers are the example values from the starter code.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The problem with plain autoencoders</h3>
          <p>A plain autoencoder maps each image to one exact point in the latent space. The <strong>latent space</strong> is the space of all possible codes. The training images become scattered points, with big empty gaps between them.</p>
          <p>If you pick a random code in a gap, the decoder has never seen anything like it. The output is often a mess. So you cannot easily use a plain autoencoder to make new images.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Autoencoder</th><th>VAE</th></tr></thead>
            <tbody>
              <tr><td>Encoder output</td><td>One code (a point)</td><td>A mean and a variance (a small cloud)</td></tr>
              <tr><td>Latent space</td><td>Scattered points with gaps</td><td>Filled in and smooth, centred on 0</td></tr>
              <tr><td>Random code gives</td><td>Often a mess</td><td>Usually a sensible image</td></tr>
              <tr><td>Main use</td><td>Compression</td><td>Compression and generation</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A distribution, not a point</h3>
          <p>A VAE encoder gives two lists of numbers for each image:</p>
          <ul class="lc-list">
            <li>The <strong>mean</strong> (μ, "mu"): the centre of the cloud. It says where the image lives.</li>
            <li>The <strong>variance</strong> (σ², "sigma squared"): how wide the cloud is. Its square root, σ, is the <strong>standard deviation</strong>.</li>
          </ul>
          <p>In practice, the encoder outputs the <strong>log-variance</strong>, log(σ²). This can be any number, positive or negative, so it is easier to learn. Then σ = exp(0.5 × log-variance).</p>
          <p>Worked example: the encoder gives log-variance -2.0. So σ = exp(-1.0) = 0.37. The cloud is narrow: the code stays close to the mean.</p>
          <p>The code <strong>z</strong> is then <strong>sampled</strong> (picked at random) from this cloud. The same image gives a slightly different z each time. So the decoder learns that every point near the mean must also give a sensible image. This fills in the gaps.</p>
        </div>
        <div class="lc-card">
          <h3>The reparameterisation trick</h3>
          <p>There is a problem. Training uses gradients, and you cannot get a gradient through a random choice. The <strong>reparameterisation trick</strong> solves this by moving the randomness to the side:</p>
          <ol class="lc-list">
            <li>Draw random noise ε ("epsilon") from a standard normal distribution, N(0, 1). It has mean 0 and standard deviation 1.</li>
            <li>Compute z = μ + σ × ε.</li>
          </ol>
          <p>Now z is a simple formula of μ and σ. The randomness is only in ε, which the network does not need to learn. So gradients can flow back through μ and σ into the encoder.</p>
          <p>Worked example: μ = 1.2, σ = 0.37 and ε = 0.5. Then z = 1.2 + 0.37 × 0.5 = 1.385.</p>
          <p>Part 2 in the code editor below does this with NumPy. Part 5 does the same steps in PyTorch. Run Part 5 on your own computer, because PyTorch does not run in the browser.</p>
          <p>Each run gives a z close to μ, and the KL value is 1.77.</p>
        </div>
        <div class="lc-card">
          <h3>The loss: reconstruction plus KL</h3>
          <p>A VAE is trained with two parts in its loss:</p>
          <ul class="lc-list">
            <li><strong>Reconstruction loss:</strong> the output should look like the input, just as in a plain autoencoder.</li>
            <li><strong>KL term</strong> (Kullback-Leibler divergence): it measures how far each image's cloud is from a standard normal, N(0, 1). It pulls μ towards 0 and σ towards 1.</li>
          </ul>
          <p>In simple words, the KL term keeps all the clouds near the centre and stops them from shrinking to points. The clouds overlap and fill the space. The reconstruction loss pulls the other way: it wants clear, separate codes. Training finds a balance.</p>
          <table class="lc-table">
            <thead><tr><th>Cloud (2 latent numbers)</th><th>KL value</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>μ = [0, 0], σ = [1, 1]</td><td>0.00</td><td>Exactly N(0, 1): no penalty</td></tr>
              <tr><td>μ = [1.2, -0.5], σ = [0.37, 0.47]</td><td>1.77</td><td>A bit off-centre and narrow</td></tr>
              <tr><td>μ = [3, 0], σ = [1, 1]</td><td>4.50</td><td>Far from the centre: big penalty</td></tr>
            </tbody>
          </table>
          <p>The values come from Part 3 of the code. For one latent number, KL = 0.5 × (μ² + σ² - 1 - log σ²). You add it up over all latent numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Generating new images</h3>
          <p>After training, the latent space is close to N(0, 1) and has no big gaps. So making a new image is easy:</p>
          <ol class="lc-list">
            <li>Sample a random z from N(0, 1). You do not need the encoder at all.</li>
            <li>Give z to the decoder.</li>
            <li>The decoder outputs a new image that looks like the training data.</li>
          </ol>
          <p>Part 4 of the code uses a hand-made toy decoder: z = [x, y] says where a bright blob sits. For example, the first random code is z = [1.58, 0.77]. Both numbers are positive, so the blob sits to the right and low in the image. Run the code below to see the new images.</p>
          <p>VAE images are often a little blurry. Later models, such as GANs and diffusion models, make much sharper images. But the VAE is still important. Stable Diffusion uses a VAE to turn 512 × 512 × 3 images into 64 × 64 × 4 latents. Its decoder turns them back into images.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which part of the VAE?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each job to the part of the VAE that does it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="enc" data-label="Encoder"></div>
              <div data-sorter-target="bucket" data-bucket="samp" data-label="Sampling (reparameterisation)"></div>
              <div data-sorter-target="bucket" data-bucket="dec" data-label="Decoder"></div>
              <div data-sorter-target="bucket" data-bucket="kl" data-label="KL term"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="enc" data-why="The encoder reads the image and outputs μ and log-variance.">Turns an image into a mean and a variance</li>
              <li data-bucket="samp" data-why="This is the reparameterisation trick: z = μ + σ × ε.">Computes z from μ, σ and random noise ε</li>
              <li data-bucket="dec" data-why="The decoder turns any code z into an image.">Turns a code z into an image</li>
              <li data-bucket="kl" data-why="The KL term measures how far each cloud is from N(0, 1) and adds a penalty.">Pulls the codes towards a standard normal</li>
              <li data-bucket="dec" data-why="To make a new image, you sample z from N(0, 1) and only run the decoder.">The only part you need to make a brand-new image</li>
              <li data-bucket="samp" data-why="The randomness sits in ε, outside the network, so gradients still reach μ and σ.">Adds randomness but still lets gradients flow</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The starter code shows each VAE idea with NumPy and a toy decoder.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, three samples of z come from the same μ and σ. They are close to μ, but not the same.</li>
            <li>In Part 1, change <code>log_var</code> to <code>[0.0, 0.0]</code>, so σ = 1. The samples spread out more, and the KL value changes.</li>
            <li>In Part 4, change <code>range(2)</code> to <code>range(4)</code> to generate more new images.</li>
            <li>In Part 4, replace <code>z = np.random.normal(size=2)</code> with <code>z = np.array([0.0, 0.0])</code>. Where is the blob now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A VAE encodes each image as a small cloud (a mean and a variance), not a single point. The KL term packs these clouds around N(0, 1). So a random code from N(0, 1) decodes to a sensible new image.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # The VAE ideas in numpy: mean and variance, the reparameterisation trick,
        # the KL term, and making new images by sampling the latent space.
        import numpy as np

        np.random.seed(42)
        CHARS = " .:-=+*#%@"

        def fmt(v):
            return "[" + ", ".join(f"{x:.2f}" for x in v) + "]"

        # ── Part 1: the encoder gives a mean and a log-variance for each latent number ──
        print("== Part 1: mean and log-variance ==")
        mu = np.array([1.2, -0.5])         # pretend encoder output for one image
        log_var = np.array([-2.0, -1.5])
        sigma = np.exp(0.5 * log_var)      # standard deviation
        print("mu =", fmt(mu), " sigma =", fmt(sigma))

        # ── Part 2: reparameterisation trick: z = mu + sigma * eps, with eps from N(0, 1) ──
        print("\n== Part 2: sampling z with the reparameterisation trick ==")
        for i in range(3):
            eps = np.random.normal(size=2)
            z = mu + sigma * eps
            print(f"sample {i + 1}: z = {fmt(z)}")

        # ── Part 3: KL term: how far N(mu, sigma) is from the standard normal N(0, 1) ──
        print("\n== Part 3: the KL term ==")
        def kl(mu, sigma):
            return float(np.sum(0.5 * (mu**2 + sigma**2 - 1 - np.log(sigma**2))))

        print(f"KL for this image:        {kl(mu, sigma):.2f}")
        print(f"KL for mu=0, sigma=1:     {kl(np.zeros(2), np.ones(2)):.2f}")
        print(f"KL for mu=3, sigma=1:     {kl(np.array([3.0, 0.0]), np.ones(2)):.2f}")

        # ── Part 4: generate NEW images: sample z from N(0, 1) and decode. No encoder needed ──
        print("\n== Part 4: new images from random codes ==")
        # A toy decoder: z = [x, y] says where a bright blob sits in an 8x8 image.
        # A real decoder is a neural network learned from data.
        def decode(z):
            col, row = 3.5 + 1.5 * z[0], 3.5 + 1.5 * z[1]
            r, c = np.mgrid[0:8, 0:8]
            return np.exp(-((r - row) ** 2 + (c - col) ** 2) / 3.0)

        def show(img):
            for line in img:
                print("  " + "".join(CHARS[min(9, int(p * 10))] * 2 for p in line))

        for i in range(2):
            z = np.random.normal(size=2)
            print(f"New image {i + 1} from z = {fmt(z)}:")
            show(decode(z))

        # ── Part 5: the reparameterisation trick and KL in PyTorch (run this part on your own computer) ──
        # pip install torch
        print("\n== Part 5: the same steps in PyTorch ==")
        try:
            import torch
        except ImportError:
            torch = None
        if torch is None:
            print("Part 5 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            mu = torch.tensor([1.2, -0.5])         # from the encoder
            log_var = torch.tensor([-2.0, -1.5])   # from the encoder

            std = torch.exp(0.5 * log_var)
            eps = torch.randn_like(std)            # the random part, outside the network
            z = mu + std * eps                     # gradients can flow through mu and std

            kl = -0.5 * torch.sum(1 + log_var - mu**2 - log_var.exp())
            print("z:", z)
            print("KL:", round(kl.item(), 2))
      PYTHON
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">GANs: Generator vs Discriminator</h1>
        </div>
        <p class="lc-lead">A <strong>GAN</strong> (generative adversarial network) makes new images with two networks that compete. One network makes fake images. The other network tries to catch the fakes. For several years, GANs made the most realistic AI pictures. In this lesson, you will learn how the game works, how each player learns, and why most text-to-image tools now use diffusion instead.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Random noise z goes into the generator, which makes a fake image. The discriminator sees fake images and real images from the dataset and outputs the probability that the image is real. The discriminator learns to say 1 for real and 0 for fake. The generator learns to make the discriminator say real for its fakes.">
            <defs><marker id="ti5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="45" width="120" height="56" rx="10" fill="#27274e" stroke="#4b4a78"/>
              <text x="70" y="70" font-weight="700">Noise z</text>
              <text x="70" y="89" font-size="11" fill="#9b99b8">16 random numbers</text>
              <line x1="132" y1="73" x2="166" y2="73" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti5a)"/>
              <rect x="170" y="35" width="144" height="76" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="242" y="67" font-weight="700" fill="#c4b5fd">Generator G</text>
              <text x="242" y="87" font-size="11" fill="#9b99b8">noise in, image out</text>
              <line x1="316" y1="73" x2="350" y2="73" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti5a)"/>
              <rect x="354" y="45" width="120" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="414" y="70" font-weight="700" fill="#f9a8d4">Fake image</text>
              <text x="414" y="89" font-size="11" fill="#9b99b8">8x8 = 64 pixels</text>
              <rect x="354" y="150" width="120" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="414" y="175" font-weight="700" fill="#6ee7b7">Real image</text>
              <text x="414" y="194" font-size="11" fill="#9b99b8">from the dataset</text>
              <path d="M476,80 L510,104" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti5a)"/>
              <path d="M476,170 L510,148" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti5a)"/>
              <rect x="514" y="88" width="134" height="76" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="581" y="120" font-weight="700" fill="#93c5fd">Discriminator D</text>
              <text x="581" y="140" font-size="11" fill="#9b99b8">real or fake?</text>
              <line x1="650" y1="126" x2="668" y2="126" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti5a)"/>
              <rect x="672" y="98" width="80" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="712" y="122" font-weight="700" fill="#fcd34d">P(real)</text>
              <text x="712" y="141" font-size="11" fill="#9b99b8">0 to 1</text>
              <text x="581" y="188" font-size="11.5" fill="#93c5fd">D learns: real → 1, fake → 0</text>
              <path d="M712,156 L712,240 L242,240 L242,115" fill="none" stroke="#8b5cf6" stroke-width="1.5" marker-end="url(#ti5a)"/>
              <rect x="352" y="228" width="236" height="24" rx="6" fill="#1f1f44"/>
              <text x="470" y="245" font-size="12" fill="#c4b5fd">G learns: make D say "real"</text>
            </g>
          </svg>
          <figcaption>The two players of a GAN. D learns to tell real from fake. G learns from D's answers how to make better fakes.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The two-player game</h3>
          <p>Think of a forger and an art expert. The forger paints fake pictures. The expert checks each picture and says "real" or "fake". Each time the expert catches a fake, the forger learns something. Each time a fake gets through, the expert learns something. Over time, both get better.</p>
          <ul class="lc-list">
            <li><strong>Generator (G):</strong> the forger. It takes <strong>noise</strong>, a list of random numbers called <code>z</code>. It turns <code>z</code> into an image. A different <code>z</code> gives a different image.</li>
            <li><strong>Discriminator (D):</strong> the expert. It takes an image and gives one number from 0 to 1. This number is the probability that the image is real.</li>
          </ul>
          <p>The word <strong>adversarial</strong> means "working against each other". The two networks have opposite goals. After training, you throw D away. You keep G, because G can now turn any random <code>z</code> into a new image.</p>
        </div>
        <div class="lc-card">
          <h3>The losses, with real numbers</h3>
          <p>Both players use <strong>binary cross-entropy</strong> (BCE). This loss is small when a probability is close to the right answer. It uses the natural log, written <code>log</code>.</p>
          <ul class="lc-list">
            <li><strong>D loss</strong> = <code>-log D(real) - log(1 - D(fake))</code>. D wants D(real) near 1 and D(fake) near 0.</li>
            <li><strong>G loss</strong> = <code>-log D(fake)</code>. G wants D(fake) near 1.</li>
          </ul>
          <p>Say D gives a real image 0.9 and a fake image 0.2.</p>
          <table class="lc-table">
            <thead><tr><th>Loss</th><th>Sum</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>D loss</td><td>-log(0.9) - log(0.8) = 0.105 + 0.223</td><td>0.33 (D is doing well)</td></tr>
              <tr><td>G loss</td><td>-log(0.2)</td><td>1.61 (G is losing)</td></tr>
              <tr><td>G loss if D(fake) = 0.5</td><td>-log(0.5)</td><td>0.69</td></tr>
            </tbody>
          </table>
          <p>Look at the last row. In a perfect game, the fakes look exactly like real images. Then D can only guess 0.5 for everything. The D loss becomes 0.69 + 0.69 = 1.39. So a D loss near 1.39 means D cannot tell real from fake.</p>
        </div>
        <div class="lc-card">
          <h3>One training step in PyTorch</h3>
          <p>Training takes turns. First D gets one update. Then G gets one update. Part 3 in the code editor below does one such step in PyTorch, for 8x8 images flattened to 64 numbers. There, <code>bce</code> is the BCE loss, and <code>ones</code> and <code>zeros</code> are the labels.</p>
          <ul class="lc-list">
            <li><code>fake.detach()</code> stops the D loss from changing G. In step 1, only D learns.</li>
            <li>In step 2, the label is 1 ("real") for the fakes. G is rewarded when it fools D.</li>
            <li><code>Tanh</code> keeps every fake pixel between -1 and 1, like the real images.</li>
          </ul>
          <p>PyTorch does not run in the browser, so run Part 3 on your own computer. Parts 1 and 2 run a NumPy version of the same game in the browser, where each "image" is a single number.</p>
        </div>
        <div class="lc-card">
          <h3>Why GANs are hard to train</h3>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td>Mode collapse</td><td>G finds a few images that fool D. It makes only those. You ask for faces and get the same face again and again.</td></tr>
              <tr><td>Instability</td><td>The players keep chasing each other. The losses go up and down and may never settle.</td></tr>
              <tr><td>No clear finish line</td><td>A low G loss does not mean good images. You must look at samples to judge.</td></tr>
              <tr><td>D too strong</td><td>If D wins too easily, G gets almost no useful signal. Learning stops.</td></tr>
            </tbody>
          </table>
          <p>A <strong>mode</strong> is one common kind of example in the data, such as "cats" or "dogs". Mode collapse means G covers only a few modes. Part 2 of the code shows a small version: every fake ends up almost the same number.</p>
        </div>
        <div class="lc-card">
          <h3>Why diffusion replaced GANs for most tasks</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>GAN</th><th>Diffusion model</th></tr></thead>
            <tbody>
              <tr><td>Training</td><td>Two networks in a fragile game</td><td>One network with a simple loss</td></tr>
              <tr><td>Variety</td><td>Can miss parts of the data (mode collapse)</td><td>Covers the data well</td></tr>
              <tr><td>Text prompts</td><td>Harder to control</td><td>Easy to add text guidance</td></tr>
              <tr><td>Speed</td><td>Fast: one pass makes an image</td><td>Slower: many small steps</td></tr>
            </tbody>
          </table>
          <p>GANs are still used where speed matters, such as some image upscalers. Some fast diffusion models also use a discriminator as an extra training helper. But most text-to-image tools today are built on diffusion. You will start learning diffusion in the next unit.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one round of GAN training</h3>
          <p>Step through one training round. Watch which player learns at each step.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Start">Take 64 real images from the dataset and 64 random noise vectors z.</li>
              <li data-kind="tool" data-label="G makes fakes">The generator turns each z into a fake image.</li>
              <li data-kind="thought" data-label="D scores">D gives the real images about 0.7 and the fakes about 0.4. It is unsure.</li>
              <li data-kind="result" data-label="Update D">The D loss pushes real towards 1 and fake towards 0. Only D's weights change.</li>
              <li data-kind="tool" data-label="Update G">D scores the fakes again. The G loss is -log D(fake). Only G's weights change.</li>
              <li data-kind="check" data-label="Look at samples">The losses go up and down. That is normal. Look at some fake images to judge quality.</li>
              <li data-kind="warn" data-label="Watch out">If every fake starts to look the same, G has mode collapse.</li>
              <li data-kind="answer" data-label="Repeat">Repeat for thousands of rounds. In the end, keep G and use it to make new images.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code trains a GAN where each "image" is one number: the height of a made-up plant. Real heights are around 4.0 with a spread of 0.5. G is <code>a * z + b</code>, and D is a small formula with three weights.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, watch the fake mean move towards 4.0. It overshoots to about 5.4 and comes back. This is the chasing game.</li>
            <li>Look at the spread. It shrinks to about 0.07, much smaller than 0.5. The histogram in Part 2 shows all fakes in one narrow band. This is a tiny mode collapse.</li>
            <li>At the top, change <code>LR = 0.01</code> to <code>0.05</code>. The collapse happens faster.</li>
            <li>At the top, change <code>STEPS</code> to <code>1000</code>. Training stops early, when the spread is still closer to the real one. GAN results depend a lot on when you stop.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A GAN trains a generator and a discriminator against each other. It can make sharp images in one pass, but training is unstable and can collapse to a few outputs. This is why most modern tools use diffusion.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A tiny GAN in NumPy. Each "image" is just one number, so you can follow every step.
        # Real data: heights of made-up plants, around 4.0 with a spread of 0.5.
        import numpy as np

        np.random.seed(42)
        STEPS = 3000      # training rounds
        LR = 0.01         # learning rate: how big each update is

        def real_batch(n):
            return np.random.normal(4.0, 0.5, n)

        a, b = 1.0, 0.0          # Generator G: fake = a * z + b  (z is random noise)
        w1, w2, c = 0.0, 0.0, 0.0  # Discriminator D: P(real) = sigmoid(w1*x + w2*x*x/10 + c)

        def D(x):
            s = w1 * x + w2 * x * x / 10 + c
            return 1 / (1 + np.exp(-np.clip(s, -30, 30)))

        # ── Part 1: train the GAN, taking turns (D step, then G step) ──
        print("== Part 1: training the GAN ==")
        for step in range(1, STEPS + 1):
            # 1) Train D: push D(real) towards 1 and D(fake) towards 0
            real = real_batch(64)
            fake = a * np.random.normal(0, 1, 64) + b
            for x, label in [(real, 1.0), (fake, 0.0)]:
                err = D(x) - label                 # gradient of the BCE loss
                w1 -= LR * np.mean(err * x)
                w2 -= LR * np.mean(err * x * x / 10)
                c -= LR * np.mean(err)
            # 2) Train G: change a and b so that D says "real" for the fakes
            z = np.random.normal(0, 1, 64)
            fake = a * z + b
            grad = -(1 - D(fake)) * (w1 + 2 * w2 * fake / 10)
            a -= LR * np.mean(grad * z)
            b -= LR * np.mean(grad)
            if step % 500 == 0:
                d_loss = -np.mean(np.log(D(real))) - np.mean(np.log(1 - D(fake)))
                g_loss = -np.mean(np.log(D(fake)))
                print(f"step {step:4}: fake mean {b:4.2f}  spread {abs(a):4.2f}  D loss {d_loss:.2f}  G loss {g_loss:.2f}")

        # ── Part 2: compare real and fake samples with a text histogram ──
        print("\n== Part 2: real vs fake ==")
        real = real_batch(1000)
        fake = a * np.random.normal(0, 1, 1000) + b
        print("height   real                  fake")
        for lo in np.arange(2.5, 5.5, 0.5):
            r = np.sum((real >= lo) & (real < lo + 0.5)) // 20
            f = np.sum((fake >= lo) & (fake < lo + 0.5)) // 20
            print(f"{lo:.1f}-{lo + 0.5:.1f}  {'#' * r:20}  {'#' * f}")
        print(f"\nReal spread {real.std():.2f}, fake spread {fake.std():.2f}")

        # ── Part 3: one GAN training step in PyTorch (run this part on your own computer) ──
        # pip install torch
        print("\n== Part 3: one training step in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            G = nn.Sequential(nn.Linear(16, 128), nn.ReLU(), nn.Linear(128, 64), nn.Tanh())       # noise -> 8x8 image
            D = nn.Sequential(nn.Linear(64, 128), nn.LeakyReLU(0.2), nn.Linear(128, 1))           # image -> score
            opt_g = torch.optim.Adam(G.parameters(), lr=2e-4)
            opt_d = torch.optim.Adam(D.parameters(), lr=2e-4)
            bce = nn.BCEWithLogitsLoss()
            ones, zeros = torch.ones(32, 1), torch.zeros(32, 1)

            real = torch.rand(32, 64) * 2 - 1     # stand-in for 32 real images, values -1..1
            fake = G(torch.randn(32, 16))         # 32 fake images from random noise

            # 1) Discriminator step: real -> 1, fake -> 0
            d_loss = bce(D(real), ones) + bce(D(fake.detach()), zeros)
            opt_d.zero_grad(); d_loss.backward(); opt_d.step()

            # 2) Generator step: make D say 1 for the fakes
            g_loss = bce(D(fake), ones)
            opt_g.zero_grad(); g_loss.backward(); opt_g.step()

            print(fake.shape, round(d_loss.item(), 3), round(g_loss.item(), 3))
      PYTHON
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">What is a Diffusion Model?</h1>
        </div>
        <p class="lc-lead">A <strong>diffusion model</strong> makes an image by starting from pure random noise. It then removes a little noise at a time, until a clear picture is left. Stable Diffusion and most modern text-to-image tools work this way. In this lesson, you will see the big picture: a forward process that destroys images, and a reverse process that rebuilds them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Top row, the forward process: an 8 by 8 image of a white square gets more and more noisy over steps 0, 3, 6 and 10. Bottom row, the reverse process: the same images, with arrows pointing back from pure noise at step 10 to the clean square at step 0.">
            <defs>
              <marker id="ti6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#93c5fd"/></marker>
              <marker id="ti6b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#6ee7b7"/></marker>
            </defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" text-anchor="start" font-weight="700" fill="#93c5fd">Forward process: add a little noise each step (a fixed rule, no learning)</text>
              <text x="20" y="166" text-anchor="start" font-weight="700" fill="#6ee7b7">Reverse process: remove a little noise each step (the model learns this)</text>
              <g><rect x="90" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="114" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="122" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="130" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="138" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="114" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="122" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="130" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="138" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="56" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="56" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="56" width="8" height="8" fill="rgb(255,255,255)"/><rect x="114" y="56" width="8" height="8" fill="rgb(255,255,255)"/><rect x="122" y="56" width="8" height="8" fill="rgb(255,255,255)"/><rect x="130" y="56" width="8" height="8" fill="rgb(255,255,255)"/><rect x="138" y="56" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="56" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="64" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="64" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="64" width="8" height="8" fill="rgb(255,255,255)"/><rect x="114" y="64" width="8" height="8" fill="rgb(255,255,255)"/><rect x="122" y="64" width="8" height="8" fill="rgb(255,255,255)"/><rect x="130" y="64" width="8" height="8" fill="rgb(255,255,255)"/><rect x="138" y="64" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="64" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="72" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="72" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="72" width="8" height="8" fill="rgb(255,255,255)"/><rect x="114" y="72" width="8" height="8" fill="rgb(255,255,255)"/><rect x="122" y="72" width="8" height="8" fill="rgb(255,255,255)"/><rect x="130" y="72" width="8" height="8" fill="rgb(255,255,255)"/><rect x="138" y="72" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="72" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="80" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="80" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="80" width="8" height="8" fill="rgb(255,255,255)"/><rect x="114" y="80" width="8" height="8" fill="rgb(255,255,255)"/><rect x="122" y="80" width="8" height="8" fill="rgb(255,255,255)"/><rect x="130" y="80" width="8" height="8" fill="rgb(255,255,255)"/><rect x="138" y="80" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="80" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="88" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="88" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="88" width="8" height="8" fill="rgb(0,0,0)"/><rect x="114" y="88" width="8" height="8" fill="rgb(0,0,0)"/><rect x="122" y="88" width="8" height="8" fill="rgb(0,0,0)"/><rect x="130" y="88" width="8" height="8" fill="rgb(0,0,0)"/><rect x="138" y="88" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="88" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="96" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="96" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="96" width="8" height="8" fill="rgb(0,0,0)"/><rect x="114" y="96" width="8" height="8" fill="rgb(0,0,0)"/><rect x="122" y="96" width="8" height="8" fill="rgb(0,0,0)"/><rect x="130" y="96" width="8" height="8" fill="rgb(0,0,0)"/><rect x="138" y="96" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="96" width="8" height="8" fill="rgb(0,0,0)"/></g>
              <rect x="90" y="40" width="64" height="64" fill="none" stroke="#4b4a78"/>
              <text x="122" y="124" font-size="12" fill="#9b99b8">step 0 (clean)</text>
              <g><rect x="270" y="40" width="8" height="8" fill="rgb(131,131,131)"/><rect x="278" y="40" width="8" height="8" fill="rgb(90,90,90)"/><rect x="286" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="294" y="40" width="8" height="8" fill="rgb(190,190,190)"/><rect x="302" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="310" y="40" width="8" height="8" fill="rgb(36,36,36)"/><rect x="318" y="40" width="8" height="8" fill="rgb(86,86,86)"/><rect x="326" y="40" width="8" height="8" fill="rgb(255,255,255)"/><rect x="270" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="278" y="48" width="8" height="8" fill="rgb(148,148,148)"/><rect x="286" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="294" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="302" y="48" width="8" height="8" fill="rgb(85,85,85)"/><rect x="310" y="48" width="8" height="8" fill="rgb(33,33,33)"/><rect x="318" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="326" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="270" y="56" width="8" height="8" fill="rgb(8,8,8)"/><rect x="278" y="56" width="8" height="8" fill="rgb(143,143,143)"/><rect x="286" y="56" width="8" height="8" fill="rgb(157,157,157)"/><rect x="294" y="56" width="8" height="8" fill="rgb(10,10,10)"/><rect x="302" y="56" width="8" height="8" fill="rgb(255,255,255)"/><rect x="310" y="56" width="8" height="8" fill="rgb(182,182,182)"/><rect x="318" y="56" width="8" height="8" fill="rgb(127,127,127)"/><rect x="326" y="56" width="8" height="8" fill="rgb(26,26,26)"/><rect x="270" y="64" width="8" height="8" fill="rgb(0,0,0)"/><rect x="278" y="64" width="8" height="8" fill="rgb(104,104,104)"/><rect x="286" y="64" width="8" height="8" fill="rgb(172,172,172)"/><rect x="294" y="64" width="8" height="8" fill="rgb(227,227,227)"/><rect x="302" y="64" width="8" height="8" fill="rgb(255,255,255)"/><rect x="310" y="64" width="8" height="8" fill="rgb(201,201,201)"/><rect x="318" y="64" width="8" height="8" fill="rgb(0,0,0)"/><rect x="326" y="64" width="8" height="8" fill="rgb(103,103,103)"/><rect x="270" y="72" width="8" height="8" fill="rgb(1,1,1)"/><rect x="278" y="72" width="8" height="8" fill="rgb(71,71,71)"/><rect x="286" y="72" width="8" height="8" fill="rgb(255,255,255)"/><rect x="294" y="72" width="8" height="8" fill="rgb(71,71,71)"/><rect x="302" y="72" width="8" height="8" fill="rgb(196,196,196)"/><rect x="310" y="72" width="8" height="8" fill="rgb(110,110,110)"/><rect x="318" y="72" width="8" height="8" fill="rgb(25,25,25)"/><rect x="326" y="72" width="8" height="8" fill="rgb(148,148,148)"/><rect x="270" y="80" width="8" height="8" fill="rgb(62,62,62)"/><rect x="278" y="80" width="8" height="8" fill="rgb(32,32,32)"/><rect x="286" y="80" width="8" height="8" fill="rgb(244,244,244)"/><rect x="294" y="80" width="8" height="8" fill="rgb(140,140,140)"/><rect x="302" y="80" width="8" height="8" fill="rgb(139,139,139)"/><rect x="310" y="80" width="8" height="8" fill="rgb(186,186,186)"/><rect x="318" y="80" width="8" height="8" fill="rgb(0,0,0)"/><rect x="326" y="80" width="8" height="8" fill="rgb(160,160,160)"/><rect x="270" y="88" width="8" height="8" fill="rgb(74,74,74)"/><rect x="278" y="88" width="8" height="8" fill="rgb(212,212,212)"/><rect x="286" y="88" width="8" height="8" fill="rgb(38,38,38)"/><rect x="294" y="88" width="8" height="8" fill="rgb(241,241,241)"/><rect x="302" y="88" width="8" height="8" fill="rgb(61,61,61)"/><rect x="310" y="88" width="8" height="8" fill="rgb(0,0,0)"/><rect x="318" y="88" width="8" height="8" fill="rgb(95,95,95)"/><rect x="326" y="88" width="8" height="8" fill="rgb(175,175,175)"/><rect x="270" y="96" width="8" height="8" fill="rgb(42,42,42)"/><rect x="278" y="96" width="8" height="8" fill="rgb(34,34,34)"/><rect x="286" y="96" width="8" height="8" fill="rgb(184,184,184)"/><rect x="294" y="96" width="8" height="8" fill="rgb(13,13,13)"/><rect x="302" y="96" width="8" height="8" fill="rgb(4,4,4)"/><rect x="310" y="96" width="8" height="8" fill="rgb(65,65,65)"/><rect x="318" y="96" width="8" height="8" fill="rgb(0,0,0)"/><rect x="326" y="96" width="8" height="8" fill="rgb(21,21,21)"/></g>
              <rect x="270" y="40" width="64" height="64" fill="none" stroke="#4b4a78"/>
              <text x="302" y="124" font-size="12" fill="#9b99b8">step 3</text>
              <g><rect x="450" y="40" width="8" height="8" fill="rgb(221,221,221)"/><rect x="458" y="40" width="8" height="8" fill="rgb(44,44,44)"/><rect x="466" y="40" width="8" height="8" fill="rgb(13,13,13)"/><rect x="474" y="40" width="8" height="8" fill="rgb(255,255,255)"/><rect x="482" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="490" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="498" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="506" y="40" width="8" height="8" fill="rgb(161,161,161)"/><rect x="450" y="48" width="8" height="8" fill="rgb(83,83,83)"/><rect x="458" y="48" width="8" height="8" fill="rgb(138,138,138)"/><rect x="466" y="48" width="8" height="8" fill="rgb(161,161,161)"/><rect x="474" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="482" y="48" width="8" height="8" fill="rgb(15,15,15)"/><rect x="490" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="498" y="48" width="8" height="8" fill="rgb(149,149,149)"/><rect x="506" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="450" y="56" width="8" height="8" fill="rgb(93,93,93)"/><rect x="458" y="56" width="8" height="8" fill="rgb(255,255,255)"/><rect x="466" y="56" width="8" height="8" fill="rgb(144,144,144)"/><rect x="474" y="56" width="8" height="8" fill="rgb(102,102,102)"/><rect x="482" y="56" width="8" height="8" fill="rgb(207,207,207)"/><rect x="490" y="56" width="8" height="8" fill="rgb(173,173,173)"/><rect x="498" y="56" width="8" height="8" fill="rgb(133,133,133)"/><rect x="506" y="56" width="8" height="8" fill="rgb(47,47,47)"/><rect x="450" y="64" width="8" height="8" fill="rgb(0,0,0)"/><rect x="458" y="64" width="8" height="8" fill="rgb(157,157,157)"/><rect x="466" y="64" width="8" height="8" fill="rgb(121,121,121)"/><rect x="474" y="64" width="8" height="8" fill="rgb(19,19,19)"/><rect x="482" y="64" width="8" height="8" fill="rgb(255,255,255)"/><rect x="490" y="64" width="8" height="8" fill="rgb(0,0,0)"/><rect x="498" y="64" width="8" height="8" fill="rgb(50,50,50)"/><rect x="506" y="64" width="8" height="8" fill="rgb(172,172,172)"/><rect x="450" y="72" width="8" height="8" fill="rgb(106,106,106)"/><rect x="458" y="72" width="8" height="8" fill="rgb(100,100,100)"/><rect x="466" y="72" width="8" height="8" fill="rgb(231,231,231)"/><rect x="474" y="72" width="8" height="8" fill="rgb(0,0,0)"/><rect x="482" y="72" width="8" height="8" fill="rgb(97,97,97)"/><rect x="490" y="72" width="8" height="8" fill="rgb(180,180,180)"/><rect x="498" y="72" width="8" height="8" fill="rgb(75,75,75)"/><rect x="506" y="72" width="8" height="8" fill="rgb(51,51,51)"/><rect x="450" y="80" width="8" height="8" fill="rgb(180,180,180)"/><rect x="458" y="80" width="8" height="8" fill="rgb(164,164,164)"/><rect x="466" y="80" width="8" height="8" fill="rgb(255,255,255)"/><rect x="474" y="80" width="8" height="8" fill="rgb(231,231,231)"/><rect x="482" y="80" width="8" height="8" fill="rgb(35,35,35)"/><rect x="490" y="80" width="8" height="8" fill="rgb(110,110,110)"/><rect x="498" y="80" width="8" height="8" fill="rgb(43,43,43)"/><rect x="506" y="80" width="8" height="8" fill="rgb(225,225,225)"/><rect x="450" y="88" width="8" height="8" fill="rgb(63,63,63)"/><rect x="458" y="88" width="8" height="8" fill="rgb(124,124,124)"/><rect x="466" y="88" width="8" height="8" fill="rgb(176,176,176)"/><rect x="474" y="88" width="8" height="8" fill="rgb(236,236,236)"/><rect x="482" y="88" width="8" height="8" fill="rgb(163,163,163)"/><rect x="490" y="88" width="8" height="8" fill="rgb(65,65,65)"/><rect x="498" y="88" width="8" height="8" fill="rgb(223,223,223)"/><rect x="506" y="88" width="8" height="8" fill="rgb(134,134,134)"/><rect x="450" y="96" width="8" height="8" fill="rgb(255,255,255)"/><rect x="458" y="96" width="8" height="8" fill="rgb(153,153,153)"/><rect x="466" y="96" width="8" height="8" fill="rgb(255,255,255)"/><rect x="474" y="96" width="8" height="8" fill="rgb(50,50,50)"/><rect x="482" y="96" width="8" height="8" fill="rgb(140,140,140)"/><rect x="490" y="96" width="8" height="8" fill="rgb(81,81,81)"/><rect x="498" y="96" width="8" height="8" fill="rgb(0,0,0)"/><rect x="506" y="96" width="8" height="8" fill="rgb(0,0,0)"/></g>
              <rect x="450" y="40" width="64" height="64" fill="none" stroke="#4b4a78"/>
              <text x="482" y="124" font-size="12" fill="#9b99b8">step 6</text>
              <g><rect x="630" y="40" width="8" height="8" fill="rgb(119,119,119)"/><rect x="638" y="40" width="8" height="8" fill="rgb(42,42,42)"/><rect x="646" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="654" y="40" width="8" height="8" fill="rgb(255,255,255)"/><rect x="662" y="40" width="8" height="8" fill="rgb(49,49,49)"/><rect x="670" y="40" width="8" height="8" fill="rgb(0,0,0)"/><rect x="678" y="40" width="8" height="8" fill="rgb(51,51,51)"/><rect x="686" y="40" width="8" height="8" fill="rgb(255,255,255)"/><rect x="630" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="638" y="48" width="8" height="8" fill="rgb(206,206,206)"/><rect x="646" y="48" width="8" height="8" fill="rgb(94,94,94)"/><rect x="654" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="662" y="48" width="8" height="8" fill="rgb(111,111,111)"/><rect x="670" y="48" width="8" height="8" fill="rgb(0,0,0)"/><rect x="678" y="48" width="8" height="8" fill="rgb(9,9,9)"/><rect x="686" y="48" width="8" height="8" fill="rgb(65,65,65)"/><rect x="630" y="56" width="8" height="8" fill="rgb(88,88,88)"/><rect x="638" y="56" width="8" height="8" fill="rgb(148,148,148)"/><rect x="646" y="56" width="8" height="8" fill="rgb(255,255,255)"/><rect x="654" y="56" width="8" height="8" fill="rgb(21,21,21)"/><rect x="662" y="56" width="8" height="8" fill="rgb(99,99,99)"/><rect x="670" y="56" width="8" height="8" fill="rgb(8,8,8)"/><rect x="678" y="56" width="8" height="8" fill="rgb(3,3,3)"/><rect x="686" y="56" width="8" height="8" fill="rgb(0,0,0)"/><rect x="630" y="64" width="8" height="8" fill="rgb(0,0,0)"/><rect x="638" y="64" width="8" height="8" fill="rgb(143,143,143)"/><rect x="646" y="64" width="8" height="8" fill="rgb(255,255,255)"/><rect x="654" y="64" width="8" height="8" fill="rgb(77,77,77)"/><rect x="662" y="64" width="8" height="8" fill="rgb(255,255,255)"/><rect x="670" y="64" width="8" height="8" fill="rgb(173,173,173)"/><rect x="678" y="64" width="8" height="8" fill="rgb(230,230,230)"/><rect x="686" y="64" width="8" height="8" fill="rgb(170,170,170)"/><rect x="630" y="72" width="8" height="8" fill="rgb(0,0,0)"/><rect x="638" y="72" width="8" height="8" fill="rgb(130,130,130)"/><rect x="646" y="72" width="8" height="8" fill="rgb(227,227,227)"/><rect x="654" y="72" width="8" height="8" fill="rgb(34,34,34)"/><rect x="662" y="72" width="8" height="8" fill="rgb(201,201,201)"/><rect x="670" y="72" width="8" height="8" fill="rgb(41,41,41)"/><rect x="678" y="72" width="8" height="8" fill="rgb(236,236,236)"/><rect x="686" y="72" width="8" height="8" fill="rgb(77,77,77)"/><rect x="630" y="80" width="8" height="8" fill="rgb(255,255,255)"/><rect x="638" y="80" width="8" height="8" fill="rgb(255,255,255)"/><rect x="646" y="80" width="8" height="8" fill="rgb(245,245,245)"/><rect x="654" y="80" width="8" height="8" fill="rgb(255,255,255)"/><rect x="662" y="80" width="8" height="8" fill="rgb(45,45,45)"/><rect x="670" y="80" width="8" height="8" fill="rgb(12,12,12)"/><rect x="678" y="80" width="8" height="8" fill="rgb(255,255,255)"/><rect x="686" y="80" width="8" height="8" fill="rgb(187,187,187)"/><rect x="630" y="88" width="8" height="8" fill="rgb(162,162,162)"/><rect x="638" y="88" width="8" height="8" fill="rgb(231,231,231)"/><rect x="646" y="88" width="8" height="8" fill="rgb(152,152,152)"/><rect x="654" y="88" width="8" height="8" fill="rgb(88,88,88)"/><rect x="662" y="88" width="8" height="8" fill="rgb(255,255,255)"/><rect x="670" y="88" width="8" height="8" fill="rgb(186,186,186)"/><rect x="678" y="88" width="8" height="8" fill="rgb(0,0,0)"/><rect x="686" y="88" width="8" height="8" fill="rgb(204,204,204)"/><rect x="630" y="96" width="8" height="8" fill="rgb(62,62,62)"/><rect x="638" y="96" width="8" height="8" fill="rgb(64,64,64)"/><rect x="646" y="96" width="8" height="8" fill="rgb(42,42,42)"/><rect x="654" y="96" width="8" height="8" fill="rgb(26,26,26)"/><rect x="662" y="96" width="8" height="8" fill="rgb(159,159,159)"/><rect x="670" y="96" width="8" height="8" fill="rgb(84,84,84)"/><rect x="678" y="96" width="8" height="8" fill="rgb(0,0,0)"/><rect x="686" y="96" width="8" height="8" fill="rgb(0,0,0)"/></g>
              <rect x="630" y="40" width="64" height="64" fill="none" stroke="#4b4a78"/>
              <text x="662" y="124" font-size="12" fill="#9b99b8">step 10 (noise)</text>
              <g><rect x="90" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="114" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="122" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="130" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="138" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="114" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="122" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="130" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="138" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="198" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="198" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="198" width="8" height="8" fill="rgb(255,255,255)"/><rect x="114" y="198" width="8" height="8" fill="rgb(255,255,255)"/><rect x="122" y="198" width="8" height="8" fill="rgb(255,255,255)"/><rect x="130" y="198" width="8" height="8" fill="rgb(255,255,255)"/><rect x="138" y="198" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="198" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="206" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="206" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="206" width="8" height="8" fill="rgb(255,255,255)"/><rect x="114" y="206" width="8" height="8" fill="rgb(255,255,255)"/><rect x="122" y="206" width="8" height="8" fill="rgb(255,255,255)"/><rect x="130" y="206" width="8" height="8" fill="rgb(255,255,255)"/><rect x="138" y="206" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="206" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="214" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="214" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="214" width="8" height="8" fill="rgb(255,255,255)"/><rect x="114" y="214" width="8" height="8" fill="rgb(255,255,255)"/><rect x="122" y="214" width="8" height="8" fill="rgb(255,255,255)"/><rect x="130" y="214" width="8" height="8" fill="rgb(255,255,255)"/><rect x="138" y="214" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="214" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="222" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="222" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="222" width="8" height="8" fill="rgb(255,255,255)"/><rect x="114" y="222" width="8" height="8" fill="rgb(255,255,255)"/><rect x="122" y="222" width="8" height="8" fill="rgb(255,255,255)"/><rect x="130" y="222" width="8" height="8" fill="rgb(255,255,255)"/><rect x="138" y="222" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="222" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="230" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="230" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="230" width="8" height="8" fill="rgb(0,0,0)"/><rect x="114" y="230" width="8" height="8" fill="rgb(0,0,0)"/><rect x="122" y="230" width="8" height="8" fill="rgb(0,0,0)"/><rect x="130" y="230" width="8" height="8" fill="rgb(0,0,0)"/><rect x="138" y="230" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="230" width="8" height="8" fill="rgb(0,0,0)"/><rect x="90" y="238" width="8" height="8" fill="rgb(0,0,0)"/><rect x="98" y="238" width="8" height="8" fill="rgb(0,0,0)"/><rect x="106" y="238" width="8" height="8" fill="rgb(0,0,0)"/><rect x="114" y="238" width="8" height="8" fill="rgb(0,0,0)"/><rect x="122" y="238" width="8" height="8" fill="rgb(0,0,0)"/><rect x="130" y="238" width="8" height="8" fill="rgb(0,0,0)"/><rect x="138" y="238" width="8" height="8" fill="rgb(0,0,0)"/><rect x="146" y="238" width="8" height="8" fill="rgb(0,0,0)"/></g>
              <rect x="90" y="182" width="64" height="64" fill="none" stroke="#4b4a78"/>
              <text x="122" y="266" font-size="12" fill="#9b99b8">step 0 (clean)</text>
              <g><rect x="270" y="182" width="8" height="8" fill="rgb(131,131,131)"/><rect x="278" y="182" width="8" height="8" fill="rgb(90,90,90)"/><rect x="286" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="294" y="182" width="8" height="8" fill="rgb(190,190,190)"/><rect x="302" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="310" y="182" width="8" height="8" fill="rgb(36,36,36)"/><rect x="318" y="182" width="8" height="8" fill="rgb(86,86,86)"/><rect x="326" y="182" width="8" height="8" fill="rgb(255,255,255)"/><rect x="270" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="278" y="190" width="8" height="8" fill="rgb(148,148,148)"/><rect x="286" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="294" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="302" y="190" width="8" height="8" fill="rgb(85,85,85)"/><rect x="310" y="190" width="8" height="8" fill="rgb(33,33,33)"/><rect x="318" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="326" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="270" y="198" width="8" height="8" fill="rgb(8,8,8)"/><rect x="278" y="198" width="8" height="8" fill="rgb(143,143,143)"/><rect x="286" y="198" width="8" height="8" fill="rgb(157,157,157)"/><rect x="294" y="198" width="8" height="8" fill="rgb(10,10,10)"/><rect x="302" y="198" width="8" height="8" fill="rgb(255,255,255)"/><rect x="310" y="198" width="8" height="8" fill="rgb(182,182,182)"/><rect x="318" y="198" width="8" height="8" fill="rgb(127,127,127)"/><rect x="326" y="198" width="8" height="8" fill="rgb(26,26,26)"/><rect x="270" y="206" width="8" height="8" fill="rgb(0,0,0)"/><rect x="278" y="206" width="8" height="8" fill="rgb(104,104,104)"/><rect x="286" y="206" width="8" height="8" fill="rgb(172,172,172)"/><rect x="294" y="206" width="8" height="8" fill="rgb(227,227,227)"/><rect x="302" y="206" width="8" height="8" fill="rgb(255,255,255)"/><rect x="310" y="206" width="8" height="8" fill="rgb(201,201,201)"/><rect x="318" y="206" width="8" height="8" fill="rgb(0,0,0)"/><rect x="326" y="206" width="8" height="8" fill="rgb(103,103,103)"/><rect x="270" y="214" width="8" height="8" fill="rgb(1,1,1)"/><rect x="278" y="214" width="8" height="8" fill="rgb(71,71,71)"/><rect x="286" y="214" width="8" height="8" fill="rgb(255,255,255)"/><rect x="294" y="214" width="8" height="8" fill="rgb(71,71,71)"/><rect x="302" y="214" width="8" height="8" fill="rgb(196,196,196)"/><rect x="310" y="214" width="8" height="8" fill="rgb(110,110,110)"/><rect x="318" y="214" width="8" height="8" fill="rgb(25,25,25)"/><rect x="326" y="214" width="8" height="8" fill="rgb(148,148,148)"/><rect x="270" y="222" width="8" height="8" fill="rgb(62,62,62)"/><rect x="278" y="222" width="8" height="8" fill="rgb(32,32,32)"/><rect x="286" y="222" width="8" height="8" fill="rgb(244,244,244)"/><rect x="294" y="222" width="8" height="8" fill="rgb(140,140,140)"/><rect x="302" y="222" width="8" height="8" fill="rgb(139,139,139)"/><rect x="310" y="222" width="8" height="8" fill="rgb(186,186,186)"/><rect x="318" y="222" width="8" height="8" fill="rgb(0,0,0)"/><rect x="326" y="222" width="8" height="8" fill="rgb(160,160,160)"/><rect x="270" y="230" width="8" height="8" fill="rgb(74,74,74)"/><rect x="278" y="230" width="8" height="8" fill="rgb(212,212,212)"/><rect x="286" y="230" width="8" height="8" fill="rgb(38,38,38)"/><rect x="294" y="230" width="8" height="8" fill="rgb(241,241,241)"/><rect x="302" y="230" width="8" height="8" fill="rgb(61,61,61)"/><rect x="310" y="230" width="8" height="8" fill="rgb(0,0,0)"/><rect x="318" y="230" width="8" height="8" fill="rgb(95,95,95)"/><rect x="326" y="230" width="8" height="8" fill="rgb(175,175,175)"/><rect x="270" y="238" width="8" height="8" fill="rgb(42,42,42)"/><rect x="278" y="238" width="8" height="8" fill="rgb(34,34,34)"/><rect x="286" y="238" width="8" height="8" fill="rgb(184,184,184)"/><rect x="294" y="238" width="8" height="8" fill="rgb(13,13,13)"/><rect x="302" y="238" width="8" height="8" fill="rgb(4,4,4)"/><rect x="310" y="238" width="8" height="8" fill="rgb(65,65,65)"/><rect x="318" y="238" width="8" height="8" fill="rgb(0,0,0)"/><rect x="326" y="238" width="8" height="8" fill="rgb(21,21,21)"/></g>
              <rect x="270" y="182" width="64" height="64" fill="none" stroke="#4b4a78"/>
              <text x="302" y="266" font-size="12" fill="#9b99b8">step 3</text>
              <g><rect x="450" y="182" width="8" height="8" fill="rgb(221,221,221)"/><rect x="458" y="182" width="8" height="8" fill="rgb(44,44,44)"/><rect x="466" y="182" width="8" height="8" fill="rgb(13,13,13)"/><rect x="474" y="182" width="8" height="8" fill="rgb(255,255,255)"/><rect x="482" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="490" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="498" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="506" y="182" width="8" height="8" fill="rgb(161,161,161)"/><rect x="450" y="190" width="8" height="8" fill="rgb(83,83,83)"/><rect x="458" y="190" width="8" height="8" fill="rgb(138,138,138)"/><rect x="466" y="190" width="8" height="8" fill="rgb(161,161,161)"/><rect x="474" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="482" y="190" width="8" height="8" fill="rgb(15,15,15)"/><rect x="490" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="498" y="190" width="8" height="8" fill="rgb(149,149,149)"/><rect x="506" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="450" y="198" width="8" height="8" fill="rgb(93,93,93)"/><rect x="458" y="198" width="8" height="8" fill="rgb(255,255,255)"/><rect x="466" y="198" width="8" height="8" fill="rgb(144,144,144)"/><rect x="474" y="198" width="8" height="8" fill="rgb(102,102,102)"/><rect x="482" y="198" width="8" height="8" fill="rgb(207,207,207)"/><rect x="490" y="198" width="8" height="8" fill="rgb(173,173,173)"/><rect x="498" y="198" width="8" height="8" fill="rgb(133,133,133)"/><rect x="506" y="198" width="8" height="8" fill="rgb(47,47,47)"/><rect x="450" y="206" width="8" height="8" fill="rgb(0,0,0)"/><rect x="458" y="206" width="8" height="8" fill="rgb(157,157,157)"/><rect x="466" y="206" width="8" height="8" fill="rgb(121,121,121)"/><rect x="474" y="206" width="8" height="8" fill="rgb(19,19,19)"/><rect x="482" y="206" width="8" height="8" fill="rgb(255,255,255)"/><rect x="490" y="206" width="8" height="8" fill="rgb(0,0,0)"/><rect x="498" y="206" width="8" height="8" fill="rgb(50,50,50)"/><rect x="506" y="206" width="8" height="8" fill="rgb(172,172,172)"/><rect x="450" y="214" width="8" height="8" fill="rgb(106,106,106)"/><rect x="458" y="214" width="8" height="8" fill="rgb(100,100,100)"/><rect x="466" y="214" width="8" height="8" fill="rgb(231,231,231)"/><rect x="474" y="214" width="8" height="8" fill="rgb(0,0,0)"/><rect x="482" y="214" width="8" height="8" fill="rgb(97,97,97)"/><rect x="490" y="214" width="8" height="8" fill="rgb(180,180,180)"/><rect x="498" y="214" width="8" height="8" fill="rgb(75,75,75)"/><rect x="506" y="214" width="8" height="8" fill="rgb(51,51,51)"/><rect x="450" y="222" width="8" height="8" fill="rgb(180,180,180)"/><rect x="458" y="222" width="8" height="8" fill="rgb(164,164,164)"/><rect x="466" y="222" width="8" height="8" fill="rgb(255,255,255)"/><rect x="474" y="222" width="8" height="8" fill="rgb(231,231,231)"/><rect x="482" y="222" width="8" height="8" fill="rgb(35,35,35)"/><rect x="490" y="222" width="8" height="8" fill="rgb(110,110,110)"/><rect x="498" y="222" width="8" height="8" fill="rgb(43,43,43)"/><rect x="506" y="222" width="8" height="8" fill="rgb(225,225,225)"/><rect x="450" y="230" width="8" height="8" fill="rgb(63,63,63)"/><rect x="458" y="230" width="8" height="8" fill="rgb(124,124,124)"/><rect x="466" y="230" width="8" height="8" fill="rgb(176,176,176)"/><rect x="474" y="230" width="8" height="8" fill="rgb(236,236,236)"/><rect x="482" y="230" width="8" height="8" fill="rgb(163,163,163)"/><rect x="490" y="230" width="8" height="8" fill="rgb(65,65,65)"/><rect x="498" y="230" width="8" height="8" fill="rgb(223,223,223)"/><rect x="506" y="230" width="8" height="8" fill="rgb(134,134,134)"/><rect x="450" y="238" width="8" height="8" fill="rgb(255,255,255)"/><rect x="458" y="238" width="8" height="8" fill="rgb(153,153,153)"/><rect x="466" y="238" width="8" height="8" fill="rgb(255,255,255)"/><rect x="474" y="238" width="8" height="8" fill="rgb(50,50,50)"/><rect x="482" y="238" width="8" height="8" fill="rgb(140,140,140)"/><rect x="490" y="238" width="8" height="8" fill="rgb(81,81,81)"/><rect x="498" y="238" width="8" height="8" fill="rgb(0,0,0)"/><rect x="506" y="238" width="8" height="8" fill="rgb(0,0,0)"/></g>
              <rect x="450" y="182" width="64" height="64" fill="none" stroke="#4b4a78"/>
              <text x="482" y="266" font-size="12" fill="#9b99b8">step 6</text>
              <g><rect x="630" y="182" width="8" height="8" fill="rgb(119,119,119)"/><rect x="638" y="182" width="8" height="8" fill="rgb(42,42,42)"/><rect x="646" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="654" y="182" width="8" height="8" fill="rgb(255,255,255)"/><rect x="662" y="182" width="8" height="8" fill="rgb(49,49,49)"/><rect x="670" y="182" width="8" height="8" fill="rgb(0,0,0)"/><rect x="678" y="182" width="8" height="8" fill="rgb(51,51,51)"/><rect x="686" y="182" width="8" height="8" fill="rgb(255,255,255)"/><rect x="630" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="638" y="190" width="8" height="8" fill="rgb(206,206,206)"/><rect x="646" y="190" width="8" height="8" fill="rgb(94,94,94)"/><rect x="654" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="662" y="190" width="8" height="8" fill="rgb(111,111,111)"/><rect x="670" y="190" width="8" height="8" fill="rgb(0,0,0)"/><rect x="678" y="190" width="8" height="8" fill="rgb(9,9,9)"/><rect x="686" y="190" width="8" height="8" fill="rgb(65,65,65)"/><rect x="630" y="198" width="8" height="8" fill="rgb(88,88,88)"/><rect x="638" y="198" width="8" height="8" fill="rgb(148,148,148)"/><rect x="646" y="198" width="8" height="8" fill="rgb(255,255,255)"/><rect x="654" y="198" width="8" height="8" fill="rgb(21,21,21)"/><rect x="662" y="198" width="8" height="8" fill="rgb(99,99,99)"/><rect x="670" y="198" width="8" height="8" fill="rgb(8,8,8)"/><rect x="678" y="198" width="8" height="8" fill="rgb(3,3,3)"/><rect x="686" y="198" width="8" height="8" fill="rgb(0,0,0)"/><rect x="630" y="206" width="8" height="8" fill="rgb(0,0,0)"/><rect x="638" y="206" width="8" height="8" fill="rgb(143,143,143)"/><rect x="646" y="206" width="8" height="8" fill="rgb(255,255,255)"/><rect x="654" y="206" width="8" height="8" fill="rgb(77,77,77)"/><rect x="662" y="206" width="8" height="8" fill="rgb(255,255,255)"/><rect x="670" y="206" width="8" height="8" fill="rgb(173,173,173)"/><rect x="678" y="206" width="8" height="8" fill="rgb(230,230,230)"/><rect x="686" y="206" width="8" height="8" fill="rgb(170,170,170)"/><rect x="630" y="214" width="8" height="8" fill="rgb(0,0,0)"/><rect x="638" y="214" width="8" height="8" fill="rgb(130,130,130)"/><rect x="646" y="214" width="8" height="8" fill="rgb(227,227,227)"/><rect x="654" y="214" width="8" height="8" fill="rgb(34,34,34)"/><rect x="662" y="214" width="8" height="8" fill="rgb(201,201,201)"/><rect x="670" y="214" width="8" height="8" fill="rgb(41,41,41)"/><rect x="678" y="214" width="8" height="8" fill="rgb(236,236,236)"/><rect x="686" y="214" width="8" height="8" fill="rgb(77,77,77)"/><rect x="630" y="222" width="8" height="8" fill="rgb(255,255,255)"/><rect x="638" y="222" width="8" height="8" fill="rgb(255,255,255)"/><rect x="646" y="222" width="8" height="8" fill="rgb(245,245,245)"/><rect x="654" y="222" width="8" height="8" fill="rgb(255,255,255)"/><rect x="662" y="222" width="8" height="8" fill="rgb(45,45,45)"/><rect x="670" y="222" width="8" height="8" fill="rgb(12,12,12)"/><rect x="678" y="222" width="8" height="8" fill="rgb(255,255,255)"/><rect x="686" y="222" width="8" height="8" fill="rgb(187,187,187)"/><rect x="630" y="230" width="8" height="8" fill="rgb(162,162,162)"/><rect x="638" y="230" width="8" height="8" fill="rgb(231,231,231)"/><rect x="646" y="230" width="8" height="8" fill="rgb(152,152,152)"/><rect x="654" y="230" width="8" height="8" fill="rgb(88,88,88)"/><rect x="662" y="230" width="8" height="8" fill="rgb(255,255,255)"/><rect x="670" y="230" width="8" height="8" fill="rgb(186,186,186)"/><rect x="678" y="230" width="8" height="8" fill="rgb(0,0,0)"/><rect x="686" y="230" width="8" height="8" fill="rgb(204,204,204)"/><rect x="630" y="238" width="8" height="8" fill="rgb(62,62,62)"/><rect x="638" y="238" width="8" height="8" fill="rgb(64,64,64)"/><rect x="646" y="238" width="8" height="8" fill="rgb(42,42,42)"/><rect x="654" y="238" width="8" height="8" fill="rgb(26,26,26)"/><rect x="662" y="238" width="8" height="8" fill="rgb(159,159,159)"/><rect x="670" y="238" width="8" height="8" fill="rgb(84,84,84)"/><rect x="678" y="238" width="8" height="8" fill="rgb(0,0,0)"/><rect x="686" y="238" width="8" height="8" fill="rgb(0,0,0)"/></g>
              <rect x="630" y="182" width="64" height="64" fill="none" stroke="#4b4a78"/>
              <text x="662" y="266" font-size="12" fill="#9b99b8">step 10 (noise)</text>
              <g stroke="#3b82f6" stroke-width="1.5" fill="none" marker-end="url(#ti6a)">
                <line x1="160" y1="72" x2="262" y2="72"/><line x1="340" y1="72" x2="442" y2="72"/><line x1="520" y1="72" x2="622" y2="72"/>
              </g>
              <g font-size="11.5" fill="#93c5fd">
                <text x="210" y="64">add noise</text><text x="390" y="64">add noise</text><text x="570" y="64">add noise</text>
              </g>
              <g stroke="#10b981" stroke-width="1.5" fill="none" marker-end="url(#ti6b)">
                <line x1="264" y1="214" x2="162" y2="214"/><line x1="444" y1="214" x2="342" y2="214"/><line x1="624" y1="214" x2="522" y2="214"/>
              </g>
              <g font-size="11.5" fill="#6ee7b7">
                <text x="212" y="206">remove noise</text><text x="392" y="206">remove noise</text><text x="572" y="206">remove noise</text>
              </g>
            </g>
          </svg>
          <figcaption>A toy 8x8 image of a square. These pixels come from the starter code. Forward: the square slowly turns into noise. Reverse: noise slowly turns back into the square.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The big idea</h3>
          <p>Drop some ink into a glass of water. The ink spreads out until the water is evenly coloured. This spreading is called <strong>diffusion</strong>. It is easy to go forward. Nobody can easily push the ink back into one drop.</p>
          <p>Images work the same way. Adding random noise to a photo is easy. Removing noise from a photo is hard. A diffusion model is a neural network that learns the hard direction.</p>
          <p>Here is the trick. Turning pure noise into a picture in one jump is far too hard. But making a noisy picture <em>a little</em> cleaner is a small, simple job. A diffusion model repeats that small job many times. After enough small steps, noise becomes an image.</p>
        </div>
        <div class="lc-card">
          <h3>Two processes</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Forward process</th><th>Reverse process</th></tr></thead>
            <tbody>
              <tr><td>Direction</td><td>Clean image → pure noise</td><td>Pure noise → clean image</td></tr>
              <tr><td>How it works</td><td>A fixed maths rule adds random noise</td><td>A neural network removes noise</td></tr>
              <tr><td>Learning?</td><td>No learning at all</td><td>This is what the model learns</td></tr>
              <tr><td>When it is used</td><td>During training, to make practice examples</td><td>When you generate a new image</td></tr>
            </tbody>
          </table>
          <p>The steps are numbered with <code>t</code>. At <code>t = 0</code> you have the clean image, called <strong>x<sub>0</sub></strong>. At the last step, <code>t = T</code>, you have pure noise. A common choice is <code>T = 1000</code> steps. The image at step <code>t</code> is called <strong>x<sub>t</sub></strong>.</p>
        </div>
        <div class="lc-card">
          <h3>How the model learns to remove noise</h3>
          <p>Training uses the forward process to make practice questions:</p>
          <ol class="lc-list">
            <li>Take a real image from the training data.</li>
            <li>Pick a random step <code>t</code>, and add the right amount of noise for that step.</li>
            <li>Show the noisy image and the number <code>t</code> to the network.</li>
            <li>Ask the network: "Which part of this image is noise?"</li>
            <li>Compare its guess with the real noise, and update the network.</li>
          </ol>
          <p>We know the right answer, because we added the noise ourselves. So the training data labels itself. One network handles every step. The number <code>t</code> tells it how noisy the input is.</p>
        </div>
        <div class="lc-card">
          <h3>Where does the text prompt come in?</h3>
          <p>So far, the model just makes <em>some</em> image that looks like its training data. For text-to-image, the network also reads your prompt at every step. Think of the prompt "a red fox reading a book under a tree, watercolour". At each step, the model removes noise in a way that moves the picture towards that prompt.</p>
          <p>Later in this course, you will learn how the text gets in. You will also learn why this works in a small compressed space instead of on full-size pixels.</p>
          <table class="lc-table">
            <thead><tr><th>Model type</th><th>How it makes an image</th></tr></thead>
            <tbody>
              <tr><td>VAE</td><td>Decodes one random point from its latent space, in one pass</td></tr>
              <tr><td>GAN</td><td>The generator turns noise into an image in one pass</td></tr>
              <tr><td>Diffusion model</td><td>Removes noise step by step, often over many steps</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: forward or reverse?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each statement into the process it describes.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="forward" data-label="Forward process"></div>
              <div data-sorter-target="bucket" data-bucket="reverse" data-label="Reverse process"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="forward" data-why="The forward process is a fixed maths rule. It has nothing to learn.">Has no learned weights</li>
              <li data-bucket="reverse" data-why="Removing noise is the hard job. A neural network learns it.">Uses a trained neural network</li>
              <li data-bucket="forward" data-why="The forward process ends at pure noise.">Ends with pure random noise</li>
              <li data-bucket="reverse" data-why="Generation starts from noise and works back to a picture.">Runs when you generate a new picture</li>
              <li data-bucket="forward" data-why="Training adds known noise to real images. This gives practice questions with known answers.">Makes practice examples during training</li>
              <li data-bucket="reverse" data-why="The prompt guides how noise is removed at each step.">Can be guided by a text prompt</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor below uses an 8x8 square and only 10 big steps. It prints the images as text art. Part 1 is the forward process. Part 2 is the reverse process, and it "cheats": it uses the real noise that was added, plus an error. A real model has to guess the noise.</p>
          <ol class="lc-list">
            <li>Run it. Part 1 turns the square into noise. Part 2 rebuilds it, and the average pixel error is 0.000.</li>
            <li>At the top, change <code>GUESS_ERROR = 0.0</code> to <code>0.1</code>. Now each noise guess in Part 2 is a little wrong. The rebuilt square is messy, because small errors add up over the steps.</li>
            <li>At the top, change <code>BETA</code> to <code>0.1</code>. Each step adds less noise. In Part 1, you can still make out the square at step 10.</li>
            <li>Make your own 8x8 image near the top. For example, set <code>x0[3:5, :] = 1.0</code> to add a bright stripe.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A diffusion model learns one small skill: removing a little noise from an image. Repeat that skill many times, starting from pure noise, and a new image appears.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # The big idea of diffusion: destroy an image with noise step by step, then undo it step by step.
        import numpy as np

        np.random.seed(42)
        STEPS = 10          # number of noise steps
        BETA = 0.3          # how much noise each step adds
        GUESS_ERROR = 0.0   # 0 = a perfect noise guess. A real model makes small mistakes.

        # An 8x8 toy image (a square), with pixel values from -1 (dark) to 1 (bright)
        x0 = -np.ones((8, 8))
        x0[2:6, 2:6] = 1.0

        RAMP = " .:-=+*#%@"
        def art(img):
            idx = np.clip(((img + 1) / 2 * 9).round(), 0, 9).astype(int)
            return ["".join(RAMP[i] * 2 for i in row) for row in idx]

        def show(images, labels):
            print("   ".join(f"{s:16}" for s in labels))
            rows = [art(im) for im in images]
            for r in range(8):
                print("   ".join(rows[i][r] for i in range(len(images))))
            print()

        # ── Part 1: the forward process, clean image -> pure noise (no learning needed) ──
        # Add a little noise at every step. Keep the noise so we can compare later.
        print("== Part 1: FORWARD, clean image -> pure noise ==")
        x = x0.copy()
        saved, noises = {0: x0}, []
        for t in range(1, STEPS + 1):
            eps = np.random.normal(0, 1, (8, 8))
            noises.append(eps)
            x = np.sqrt(1 - BETA) * x + np.sqrt(BETA) * eps
            saved[t] = x
        show([saved[0], saved[3], saved[6], saved[10]], ["step 0", "step 3", "step 6", "step 10"])

        # ── Part 2: the reverse process, pure noise -> clean image (the part the model learns) ──
        # A real model must GUESS the noise. Here we use the true noise plus an error.
        print("== Part 2: REVERSE, pure noise -> clean image ==")
        x = saved[STEPS].copy()
        for t in range(STEPS, 0, -1):
            guess = noises[t - 1] + np.random.normal(0, GUESS_ERROR, (8, 8))
            x = (x - np.sqrt(BETA) * guess) / np.sqrt(1 - BETA)
            if t in (7, 4):
                saved[f"r{t-1}"] = x.copy()
        show([saved[STEPS], saved["r6"], saved["r3"], x], ["step 10", "step 6", "step 3", "step 0"])
        print(f"Average pixel error after the reverse process: {np.abs(x - x0).mean():.3f}")
      PYTHON
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">Forward Process: Adding Noise</h1>
        </div>
        <p class="lc-lead">The forward process turns a clean image into pure noise over many small steps. A <strong>noise schedule</strong> decides how much noise each step adds. In this lesson, you will learn the schedule, the numbers <code>beta</code> and <code>alpha_bar</code>, and a shortcut formula. The shortcut jumps from the clean image to any step in one go. Training depends on it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A line chart over steps t from 0 to 1000. The signal weight, the square root of alpha bar, falls from 1 to almost 0. The noise weight, the square root of one minus alpha bar, rises from 0 to almost 1. They cross near t equals 250, where both are about 0.7. A box on the right shows the formula x t equals s times x0 plus n times eps.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <g stroke="#33335e" stroke-width="1">
                <line x1="70" y1="50" x2="500" y2="50"/><line x1="70" y1="150" x2="500" y2="150"/>
                <line x1="177.5" y1="50" x2="177.5" y2="250"/><line x1="285" y1="50" x2="285" y2="250"/><line x1="392.5" y1="50" x2="392.5" y2="250"/>
              </g>
              <line x1="70" y1="250" x2="500" y2="250" stroke="#9b99b8"/>
              <line x1="70" y1="50" x2="70" y2="250" stroke="#9b99b8"/>
              <g fill="#9b99b8" font-size="11">
                <text x="70" y="267">0</text><text x="177.5" y="267">250</text><text x="285" y="267">500</text><text x="392.5" y="267">750</text><text x="500" y="267">1000</text>
                <text x="285" y="290">step t</text>
                <text x="58" y="254" text-anchor="end">0</text><text x="58" y="154" text-anchor="end">0.5</text><text x="58" y="54" text-anchor="end">1</text>
              </g>
              <polyline points="70.0,50.0 78.6,50.6 87.2,51.9 95.8,54.1 104.4,57.0 113.0,60.6 121.6,64.9 130.2,69.8 138.8,75.2 147.4,81.2 156.0,87.6 164.6,94.4 173.2,101.6 181.8,108.9 190.4,116.4 199.0,124.1 207.6,131.7 216.2,139.4 224.8,147.0 233.4,154.4 242.0,161.6 250.6,168.7 259.2,175.5 267.8,181.9 276.4,188.1 285.0,193.9 293.6,199.4 302.2,204.6 310.8,209.3 319.4,213.8 328.0,217.8 336.6,221.6 345.2,225.0 353.8,228.0 362.4,230.8 371.0,233.3 379.6,235.5 388.2,237.5 396.8,239.3 405.4,240.8 414.0,242.2 422.6,243.4 431.2,244.4 439.8,245.3 448.4,246.0 457.0,246.7 465.6,247.2 474.2,247.7 482.8,248.1 491.4,248.4 500.0,248.7" fill="none" stroke="#10b981" stroke-width="2.5"/>
              <polyline points="70.0,250.0 78.6,234.8 87.2,222.2 95.8,209.8 104.4,197.6 113.0,185.8 121.6,174.4 130.2,163.3 138.8,152.8 147.4,142.7 156.0,133.2 164.6,124.3 173.2,116.0 181.8,108.2 190.4,101.1 199.0,94.6 207.6,88.7 216.2,83.4 224.8,78.6 233.4,74.3 242.0,70.6 250.6,67.3 259.2,64.4 267.8,61.9 276.4,59.8 285.0,58.0 293.6,56.5 302.2,55.2 310.8,54.2 319.4,53.3 328.0,52.6 336.6,52.0 345.2,51.6 353.8,51.2 362.4,50.9 371.0,50.7 379.6,50.5 388.2,50.4 396.8,50.3 405.4,50.2 414.0,50.2 422.6,50.1 431.2,50.1 439.8,50.1 448.4,50.0 457.0,50.0 465.6,50.0 474.2,50.0 482.8,50.0 491.4,50.0 500.0,50.0" fill="none" stroke="#f59e0b" stroke-width="2.5"/>
              <circle cx="177.5" cy="105.2" r="4" fill="#10b981"/><circle cx="177.5" cy="112.0" r="4" fill="#f59e0b"/>
              <text x="236" y="98" text-anchor="start" font-size="11.5">t = 250: s = 0.72, n = 0.69</text>
              <line x1="232" y1="94" x2="184" y2="104" stroke="#9b99b8"/>
              <text x="420" y="232" font-size="12" fill="#6ee7b7" text-anchor="start">signal s</text>
              <text x="420" y="68" font-size="12" fill="#fcd34d" text-anchor="start">noise n</text>
              <rect x="530" y="50" width="220" height="200" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="640" y="76" font-weight="700" fill="#c4b5fd">The shortcut formula</text>
              <text x="640" y="104" font-size="13">x_t = s · x0 + n · eps</text>
              <text x="548" y="136" text-anchor="start" fill="#6ee7b7">s = √alpha_bar</text>
              <text x="548" y="156" text-anchor="start" font-size="11" fill="#9b99b8">how much image is left</text>
              <text x="548" y="186" text-anchor="start" fill="#fcd34d">n = √(1 − alpha_bar)</text>
              <text x="548" y="206" text-anchor="start" font-size="11" fill="#9b99b8">how much noise is mixed in</text>
              <text x="640" y="236" font-size="11" fill="#9b99b8">s² + n² = 1 at every step</text>
            </g>
          </svg>
          <figcaption>The linear schedule with 1000 steps. The image weight (green) falls and the noise weight (orange) rises. By t = 1000 almost no image is left.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Getting the image ready</h3>
          <p>Before adding noise, the pixel values are scaled from 0..255 to <strong>-1..1</strong>. Black becomes -1 and white becomes 1. This puts the image on the same scale as the noise.</p>
          <p>The noise is <strong>Gaussian noise</strong>. These are random numbers from a bell-shaped curve. Their average is 0 and their <strong>spread</strong> (standard deviation) is 1. Most values are between -2 and 2. In the formulas, one noise value is called <strong>eps</strong>, short for the Greek letter epsilon (ε). Every pixel gets its own eps.</p>
        </div>
        <div class="lc-card">
          <h3>One step of noise</h3>
          <p>Each step shrinks the image a little and adds a little noise:</p>
          <p><code>x_t = √(1 - beta_t) · x_(t-1) + √beta_t · eps</code></p>
          <p><strong>beta_t</strong> (the Greek letter β) is the amount of noise for step <code>t</code>. It is a small number, such as 0.02. The square roots keep the total spread of the values close to 1, so pixels do not grow without limit.</p>
          <p><strong>Worked example:</strong> a white pixel is 1.0. Say beta is 0.02 and the noise value eps is 0.5.</p>
          <ul class="lc-list">
            <li>Keep part of the pixel: √0.98 × 1.0 = 0.990</li>
            <li>Add part of the noise: √0.02 × 0.5 = 0.141 × 0.5 = 0.071</li>
            <li>New pixel: 0.990 + 0.071 = 1.061</li>
          </ul>
          <p>One step changes very little. After hundreds of steps, though, the image is gone.</p>
        </div>
        <div class="lc-card">
          <h3>The noise schedule</h3>
          <p>The <strong>noise schedule</strong> is the list of beta values for all steps. The original DDPM paper used 1000 steps. Its beta grows in a straight line from 0.0001 to 0.02. This is the <strong>linear schedule</strong>. Two more numbers come from beta:</p>
          <ul class="lc-list">
            <li><strong>alpha_t = 1 - beta_t</strong>: how much of the image one step keeps.</li>
            <li><strong>alpha_bar_t</strong> = alpha_1 × alpha_2 × ... × alpha_t: how much of the <em>original</em> image is left after <code>t</code> steps. The bar means "all steps multiplied together".</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Step t</th><th>beta_t</th><th>alpha_bar_t</th><th>Image weight √alpha_bar</th><th>Noise weight √(1 - alpha_bar)</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>0.0001</td><td>0.9999</td><td>1.000</td><td>0.010</td></tr>
              <tr><td>100</td><td>0.0021</td><td>0.8970</td><td>0.947</td><td>0.321</td></tr>
              <tr><td>250</td><td>0.0051</td><td>0.5241</td><td>0.724</td><td>0.690</td></tr>
              <tr><td>500</td><td>0.0100</td><td>0.0786</td><td>0.280</td><td>0.960</td></tr>
              <tr><td>1000</td><td>0.0200</td><td>0.0000</td><td>0.006</td><td>1.000</td></tr>
            </tbody>
          </table>
          <p>Other schedules exist. The <strong>cosine schedule</strong>, for example, destroys the image more slowly in the early steps. The ideas in this lesson stay the same.</p>
        </div>
        <div class="lc-card">
          <h3>The shortcut: jump to any step</h3>
          <p>Adding noise 500 times to reach step 500 would be slow. Luckily, many small Gaussian noises add up to one bigger Gaussian noise. So you can jump straight there:</p>
          <p><code>x_t = √alpha_bar_t · x0 + √(1 - alpha_bar_t) · eps</code></p>
          <p>This is called the <strong>closed form</strong>. It needs just one noise value per pixel. It gives the same kind of result as the slow loop. Part 3 in the code editor below checks this for you.</p>
          <p>Part 4 in the code editor uses the shortcut for one bright pixel (x0 = 1.0) at t = 250. Its noise value is eps = -0.5. Here alpha_bar is 0.5241 and x_t is 0.379. Check it by hand: 0.724 × 1.0 + 0.690 × (-0.5) = 0.724 - 0.345 = 0.379. During training, each image gets a random <code>t</code>. The shortcut makes its noisy version in one line.</p>
        </div>
        <div class="lc-card">
          <h3>Signal-to-noise ratio</h3>
          <p>The <strong>signal-to-noise ratio</strong> (SNR) compares how much image and how much noise there is. Here it is <code>SNR = alpha_bar / (1 - alpha_bar)</code>.</p>
          <table class="lc-table">
            <thead><tr><th>Step t</th><th>SNR</th><th>What you see</th></tr></thead>
            <tbody>
              <tr><td>100</td><td>8.71</td><td>A clear image with light grain</td></tr>
              <tr><td>250</td><td>1.10</td><td>Image and noise about equal</td></tr>
              <tr><td>500</td><td>0.085</td><td>Mostly noise, a faint shape</td></tr>
              <tr><td>1000</td><td>almost 0</td><td>Pure noise</td></tr>
            </tbody>
          </table>
          <p>An SNR above 1 means the image is stronger than the noise. Below 1, the noise wins.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: make one training example</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in order. How does training make one noisy example with the shortcut?</p>
            <ol data-sequence-target="list">
              <li data-order="1">Take a clean image and scale its pixels to -1..1</li>
              <li data-order="2">Pick a random step t between 1 and 1000</li>
              <li data-order="3">Look up alpha_bar for that step in the schedule</li>
              <li data-order="4">Draw one Gaussian noise value eps for every pixel</li>
              <li data-order="5">Multiply the image by √alpha_bar and the noise by √(1 - alpha_bar)</li>
              <li data-order="6">Add the two parts to get the noisy image x_t</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor builds the linear schedule. Part 1 prints a table. Part 2 shows the 8x8 square at different steps, each made with one jump.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, find the step where the image weight and the noise weight are about equal.</li>
            <li>Look at Part 3. 500 small steps and one jump give the same noise spread, about 0.96.</li>
            <li>In the <code>betas</code> line at the top, change the end of the schedule from <code>0.02</code> to <code>0.01</code>. Less noise is added. The square is now easier to see at t=500, and the SNR column grows.</li>
            <li>In Part 2, add <code>750</code> to the <code>steps</code> list to see one more picture.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The noise schedule sets how fast an image turns into noise. With alpha_bar, you can jump to any step in one line: <code>x_t = √alpha_bar · x0 + √(1 - alpha_bar) · eps</code>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # The forward process with a real DDPM noise schedule, in NumPy.
        import numpy as np

        np.random.seed(42)
        T = 1000
        betas = np.linspace(0.0001, 0.02, T)    # beta_t: noise added at each step (linear schedule)
        alphas = 1 - betas                      # alpha_t: how much of the image each step keeps
        alpha_bar = np.cumprod(alphas)          # alpha_bar_t: how much of the ORIGINAL image is left at step t

        # An 8x8 toy image (a square), pixel values from -1 to 1
        x0 = -np.ones((8, 8))
        x0[2:6, 2:6] = 1.0

        def noisy(x0, t):
            """Closed form: jump straight from x0 to step t in one go."""
            a = alpha_bar[t - 1]                # our steps are 1..T, Python lists start at 0
            eps = np.random.normal(0, 1, x0.shape)
            return np.sqrt(a) * x0 + np.sqrt(1 - a) * eps

        RAMP = " .:-=+*#%@"
        def art(img):
            idx = np.clip(((img + 1) / 2 * 9).round(), 0, 9).astype(int)
            return ["".join(RAMP[i] * 2 for i in row) for row in idx]

        # ── Part 1: the schedule and the signal-to-noise ratio (SNR) ──
        print("== Part 1: the linear schedule ==")
        print("   t   beta_t  alpha_bar  sqrt(a)  sqrt(1-a)       SNR")
        for t in [1, 100, 250, 500, 750, 1000]:
            a = alpha_bar[t - 1]
            print(f"{t:4}  {betas[t-1]:.5f}   {a:.4f}    {np.sqrt(a):.3f}    {np.sqrt(1 - a):.3f}  {a / (1 - a):9.3f}")

        # ── Part 2: the same image at different steps, each made with ONE jump ──
        print("\n== Part 2: one jump to each step ==")
        steps = [0, 100, 250, 500, 1000]
        images = [x0] + [noisy(x0, t) for t in steps[1:]]
        print("   ".join(f"t={t:<14}" for t in steps))
        rows = [art(im) for im in images]
        for r in range(8):
            print("   ".join(row[r] for row in rows))

        # ── Part 3: 500 small steps add the same noise as one jump (1000 copies of the image) ──
        print("\n== Part 3: small steps vs one jump ==")
        batch = np.repeat(x0[None], 1000, axis=0)
        x = batch.copy()
        for t in range(1, 501):
            x = np.sqrt(alphas[t - 1]) * x + np.sqrt(betas[t - 1]) * np.random.normal(0, 1, x.shape)
        jump = noisy(batch, 500)
        signal = np.sqrt(alpha_bar[499]) * batch
        print(f"Signal left at t=500: sqrt(alpha_bar) = {np.sqrt(alpha_bar[499]):.3f}")
        print(f"Noise spread, 500 small steps: {np.std(x - signal):.3f}")
        print(f"Noise spread, one jump:        {np.std(jump - signal):.3f}")
        print(f"Expected: sqrt(1 - alpha_bar) = {np.sqrt(1 - alpha_bar[499]):.3f}")

        # ── Part 4: the shortcut for one pixel at t = 250 ──
        print("\n== Part 4: the shortcut for one pixel ==")
        betas = np.linspace(0.0001, 0.02, 1000)
        alpha_bar = np.cumprod(1 - betas)

        t = 250
        a = alpha_bar[t - 1]          # Python counts from 0
        x0, eps = 1.0, -0.5           # a bright pixel and one noise value
        x_t = np.sqrt(a) * x0 + np.sqrt(1 - a) * eps
        print(f"alpha_bar = {a:.4f}, x_t = {x_t:.3f}")
      PYTHON
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">Reverse Process: Removing Noise</h1>
        </div>
        <p class="lc-lead">The reverse process is where the real work happens. A neural network looks at a noisy image and predicts the noise inside it. Remove a little of that noise, and the image gets slightly cleaner. In this lesson, you will learn what the network predicts, how it is trained, and the loop that turns pure noise into a new image.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top, training: a clean image x0 plus noise eps makes a noisy image x t at a random step. The noise predictor gets x t and t and outputs predicted noise. The loss compares the predicted noise with the real noise eps. Bottom, sampling: start from pure noise x T. Predict the noise, remove some of it and add a little fresh noise. Repeat for t equals 1000 down to 1, then output the image x0.">
            <defs><marker id="ti8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" text-anchor="start" font-weight="700" fill="#c4b5fd">Training (one step)</text>
              <rect x="10" y="42" width="96" height="54" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="58" y="65" font-weight="700">Clean x0</text><text x="58" y="84" font-size="11" fill="#9b99b8">real image</text>
              <text x="118" y="74" font-size="18" fill="#9b99b8">+</text>
              <rect x="130" y="42" width="96" height="54" rx="9" fill="#27274e" stroke="#f59e0b"/>
              <text x="178" y="65" font-weight="700">Noise eps</text><text x="178" y="84" font-size="11" fill="#9b99b8">random</text>
              <line x1="228" y1="69" x2="246" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti8a)"/>
              <rect x="250" y="42" width="120" height="54" rx="9" fill="#27274e" stroke="#3b82f6"/>
              <text x="310" y="65" font-weight="700">Noisy x_t</text><text x="310" y="84" font-size="11" fill="#9b99b8">random step t</text>
              <line x1="372" y1="69" x2="390" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti8a)"/>
              <rect x="394" y="38" width="170" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="479" y="64" font-weight="700" fill="#c4b5fd">Noise predictor</text><text x="479" y="84" font-size="11" fill="#9b99b8">network, gets x_t and t</text>
              <line x1="566" y1="69" x2="594" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti8a)"/>
              <rect x="598" y="42" width="152" height="54" rx="9" fill="#27274e" stroke="#ec4899"/>
              <text x="674" y="65" font-weight="700">Predicted noise</text><text x="674" y="84" font-size="11" fill="#9b99b8">eps_hat</text>
              <line x1="674" y1="98" x2="674" y2="114" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti8a)"/>
              <rect x="568" y="118" width="182" height="34" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="659" y="140" font-size="12.5">loss = MSE(eps_hat, eps)</text>
              <path d="M178,98 L178,135 L564,135" fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#ti8a)"/>
              <text x="372" y="128" font-size="11" fill="#fcd34d">the real noise is the right answer</text>
              <line x1="10" y1="170" x2="750" y2="170" stroke="#33335e"/>
              <text x="20" y="196" text-anchor="start" font-weight="700" fill="#6ee7b7">Sampling (making a new image)</text>
              <rect x="10" y="212" width="110" height="56" rx="9" fill="#27274e" stroke="#f59e0b"/>
              <text x="65" y="236" font-weight="700">x_T</text><text x="65" y="255" font-size="11" fill="#9b99b8">pure noise</text>
              <line x1="122" y1="240" x2="156" y2="240" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti8a)"/>
              <rect x="160" y="208" width="160" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="240" y="235" font-weight="700" fill="#c4b5fd">Predict noise</text><text x="240" y="255" font-size="11" fill="#9b99b8">eps_hat = model(x_t, t)</text>
              <line x1="322" y1="240" x2="346" y2="240" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti8a)"/>
              <rect x="350" y="208" width="170" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="435" y="235" font-weight="700" fill="#93c5fd">Remove some noise</text><text x="435" y="255" font-size="11" fill="#9b99b8">+ a little fresh noise</text>
              <line x1="522" y1="240" x2="632" y2="240" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti8a)"/>
              <text x="577" y="232" font-size="11" fill="#9b99b8">after t = 1</text>
              <rect x="636" y="212" width="114" height="56" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="693" y="236" font-weight="700" fill="#6ee7b7">Image x0</text><text x="693" y="255" font-size="11" fill="#9b99b8">new picture</text>
              <path d="M435,274 L435,302 L240,302 L240,278" fill="none" stroke="#10b981" stroke-width="1.5" marker-end="url(#ti8a)"/>
              <rect x="250" y="292" width="176" height="22" rx="6" fill="#1f1f44"/>
              <text x="338" y="307" font-size="11.5" fill="#6ee7b7">repeat: t = 1000 down to 1</text>
            </g>
          </svg>
          <figcaption>Training teaches the network to predict the noise. Sampling uses that network again and again to clean pure noise into a picture.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The model predicts the noise</h3>
          <p>The network gets two inputs: the noisy image <strong>x<sub>t</sub></strong> and the step number <code>t</code>. It gives back <strong>eps_hat</strong>, its guess of the noise in the image. The "hat" means "a guess". The guess has the same shape as the image, with one noise value per pixel.</p>
          <p>Why predict the noise, and not the clean image? Remember the shortcut from the forward process: <code>x_t = √alpha_bar · x0 + √(1 - alpha_bar) · eps</code>. If you know the noise, you can work out the clean image. The DDPM paper found that predicting the noise trains well and gives a simple loss. Some newer models predict other targets, but the idea is the same.</p>
          <p>The step number matters. At <code>t = 900</code>, the image is almost all noise. At <code>t = 50</code>, the noise is just light grain. One network handles both cases, because it knows <code>t</code>.</p>
        </div>
        <div class="lc-card">
          <h3>The training objective</h3>
          <p>The loss is the <strong>mean squared error</strong> (MSE) between the real noise and the predicted noise. Find each difference, square it, then take the average.</p>
          <p><strong>Worked example</strong> with only 4 pixels:</p>
          <table class="lc-table">
            <thead><tr><th>Pixel</th><th>Real noise eps</th><th>Predicted eps_hat</th><th>Difference</th><th>Squared</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>0.5</td><td>0.4</td><td>0.1</td><td>0.01</td></tr>
              <tr><td>2</td><td>-1.0</td><td>-0.7</td><td>-0.3</td><td>0.09</td></tr>
              <tr><td>3</td><td>0.2</td><td>0.2</td><td>0.0</td><td>0.00</td></tr>
              <tr><td>4</td><td>0.8</td><td>1.0</td><td>-0.2</td><td>0.04</td></tr>
            </tbody>
          </table>
          <p>MSE = (0.01 + 0.09 + 0.00 + 0.04) ÷ 4 = 0.14 ÷ 4 = <strong>0.035</strong>. A smaller loss means better noise guesses. Training repeats this for millions of images, each with a random <code>t</code>.</p>
        </div>
        <div class="lc-card">
          <h3>One training step in PyTorch</h3>
          <p>This small example uses a tiny network on 16 flattened 8x8 images. Real models use a U-Net, which you will meet soon. The training step looks the same. Part 3 in the code editor below does this step in PyTorch.</p>
          <p>Here <code>x0</code> holds 16 images of 64 pixels, so <code>x_t</code> and <code>eps_hat</code> both have shape (16, 64). The step number is added as one extra input, <code>t / T</code>. Real models use a better way to feed in <code>t</code>, called a timestep embedding. PyTorch does not run in the browser, so run Part 3 on your own computer. Parts 1 and 2 run a NumPy version in the browser.</p>
        </div>
        <div class="lc-card">
          <h3>One denoising step</h3>
          <p>To go from step <code>t</code> to step <code>t - 1</code>, the DDPM sampler uses this rule:</p>
          <p><code>x_(t-1) = ( x_t - beta_t / √(1 - alpha_bar_t) · eps_hat ) / √alpha_t + √beta_t · z</code></p>
          <ol class="lc-list">
            <li>Take away a small, scaled part of the predicted noise.</li>
            <li>Divide by √alpha_t to undo the shrinking from the forward step.</li>
            <li>Add a little fresh random noise <code>z</code>. Skip this on the very last step.</li>
          </ol>
          <p><strong>Worked example</strong> at <code>t = 250</code>: a pixel is 0.379 and the model predicts eps_hat = -0.5. Here beta is 0.00506 and √(1 - alpha_bar) is 0.690.</p>
          <ul class="lc-list">
            <li>Scale: 0.00506 ÷ 0.690 = 0.00733</li>
            <li>Remove noise: 0.379 - 0.00733 × (-0.5) = 0.379 + 0.0037 = 0.3827</li>
            <li>Divide by √0.99494 = 0.99747: the pixel becomes 0.3836, before the fresh noise</li>
          </ul>
          <p>Each step moves a pixel only a tiny amount. That is why sampling needs many steps. With 1000 steps, the network runs 1000 times for one image. Later in this course, you will meet faster samplers that need far fewer steps.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: training or sampling?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each action. Does it happen during training, during sampling, or in both?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="train" data-label="Training only"></div>
              <div data-sorter-target="bucket" data-bucket="sample" data-label="Sampling only"></div>
              <div data-sorter-target="bucket" data-bucket="both" data-label="Both"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="train" data-why="Training needs a real image and known noise. The shortcut formula makes x_t in one jump.">Add noise to a real image with the shortcut formula</li>
              <li data-bucket="train" data-why="The loss needs the real noise. Only training knows it, because training added it.">Compare the predicted noise with the real noise (MSE)</li>
              <li data-bucket="train" data-why="The weights change only in training. During sampling, the network is fixed.">Update the network's weights</li>
              <li data-bucket="sample" data-why="Generation has no real image. It starts from random noise x_T.">Start from pure random noise</li>
              <li data-bucket="sample" data-why="The DDPM sampler adds a little fresh noise after each step, except the last one.">Add a little fresh noise after each denoising step</li>
              <li data-bucket="both" data-why="This is the network's one job. Training teaches it, and sampling uses it.">The network predicts the noise in x_t, given t</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has a training set of three 8x8 shapes: a square, a cross and a diamond. Instead of a trained network, it uses an "ideal" noise predictor for these three images. It works out how well each shape fits <code>x_t</code>. A real network learns this job from millions of images.</p>
          <ol class="lc-list">
            <li>Run it. Part 1 shows the loss for an all-zero guess and for the ideal predictor. The ideal loss is almost 0 here, because three shapes are easy to tell apart.</li>
            <li>Look at Part 2, the sampling loop. At <code>t=999</code> all three shapes are equally likely. Around <code>t=249</code> one shape wins, and the picture becomes that shape.</li>
            <li>Change the seed from <code>42</code> to <code>2</code>, then to <code>7</code>. Different starting noise gives a different shape.</li>
            <li>Add a fourth shape: near the top, remove the <code>#</code> from the two <code>frame</code> lines under the <code>data</code> line. Try a few seeds.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The network learns one thing: predict the noise in x<sub>t</sub>, trained with an MSE loss. To generate, start from pure noise and use that prediction to remove a little noise at each step.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # The reverse process: start from pure noise and remove predicted noise, step by step.
        import numpy as np

        np.random.seed(42)
        T = 1000
        betas = np.linspace(0.0001, 0.02, T)
        alphas = 1 - betas
        alpha_bar = np.cumprod(alphas)

        # The "training set": three 8x8 shapes, pixel values from -1 to 1
        square = -np.ones((8, 8)); square[2:6, 2:6] = 1
        cross = -np.ones((8, 8)); cross[3:5, :] = 1; cross[:, 3:5] = 1
        r, c = np.indices((8, 8))
        diamond = np.where(abs(r - 3.5) + abs(c - 3.5) <= 3, 1.0, -1.0)
        data = {"square": square, "cross": cross, "diamond": diamond}
        # Try It: remove the # from the next two lines to add a fourth shape, a frame.
        # frame = -np.ones((8, 8)); frame[[0, 7], :] = 1; frame[:, [0, 7]] = 1
        # data["frame"] = frame

        def predict_noise(x_t, t):
            """An 'ideal' noise predictor for our images. A real model is a neural network
            that learns to do this job from millions of images."""
            a = alpha_bar[t - 1]
            dists = np.array([np.sum((x_t - np.sqrt(a) * img) ** 2) for img in data.values()])
            w = np.exp(-(dists - dists.min()) / (2 * (1 - a)))
            w = w / w.sum()                                   # how much each shape fits x_t
            x0_guess = sum(wi * img for wi, img in zip(w, data.values()))
            return (x_t - np.sqrt(a) * x0_guess) / np.sqrt(1 - a), w

        RAMP = " .:-=+*#%@"
        def art(img):
            idx = np.clip(((img + 1) / 2 * 9).round(), 0, 9).astype(int)
            return ["".join(RAMP[i] * 2 for i in row) for row in idx]

        # ── Part 1: the training objective, MSE between the real noise and the predicted noise ──
        print("== Part 1: the training loss ==")
        print("   t   loss if the guess is all zeros   loss of the ideal predictor")
        for t in [100, 500, 900]:
            eps = np.random.normal(0, 1, (8, 8))
            x_t = np.sqrt(alpha_bar[t - 1]) * cross + np.sqrt(1 - alpha_bar[t - 1]) * eps
            eps_hat, _ = predict_noise(x_t, t)
            print(f"{t:4}   {np.mean(eps ** 2):30.3f}   {np.mean((eps - eps_hat) ** 2):27.3f}")

        # ── Part 2: the DDPM sampling loop, pure noise -> image ──
        print("\n== Part 2: sampling ==")
        x = np.random.normal(0, 1, (8, 8))                    # x_T: pure noise
        snapshots = {}
        for t in range(T, 0, -1):
            eps_hat, w = predict_noise(x, t)
            mean = (x - betas[t - 1] / np.sqrt(1 - alpha_bar[t - 1]) * eps_hat) / np.sqrt(alphas[t - 1])
            z = np.random.normal(0, 1, (8, 8)) if t > 1 else 0   # no new noise on the last step
            x = mean + np.sqrt(betas[t - 1]) * z
            if t in (1000, 750, 500, 250, 1):
                snapshots[t - 1] = x.copy()
                print(f"t={t - 1:4}: " + "  ".join(f"{name} {wi:.2f}" for name, wi in zip(data, w)))

        print("\n" + "   ".join(f"t={t:<14}" for t in snapshots))
        rows = [art(im) for im in snapshots.values()]
        for i in range(8):
            print("   ".join(row[i] for row in rows))

        # ── Part 3: one training step of a tiny noise predictor in PyTorch (run this part on your own computer) ──
        # pip install torch
        print("\n== Part 3: one training step in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            T = 1000
            betas = torch.linspace(0.0001, 0.02, T)
            alpha_bar = torch.cumprod(1 - betas, dim=0)

            # A tiny noise predictor: input = 64 pixels + the step t, output = 64 noise values
            model = nn.Sequential(nn.Linear(65, 128), nn.ReLU(), nn.Linear(128, 64))
            optimizer = torch.optim.Adam(model.parameters(), lr=1e-3)

            x0 = torch.rand(16, 64) * 2 - 1           # stand-in for 16 flattened 8x8 images
            t = torch.randint(1, T + 1, (16,))         # a random step for each image
            eps = torch.randn_like(x0)                 # the real noise
            a = alpha_bar[t - 1].unsqueeze(1)
            x_t = a.sqrt() * x0 + (1 - a).sqrt() * eps # closed form: noisy images

            eps_hat = model(torch.cat([x_t, t.unsqueeze(1) / T], dim=1))
            loss = nn.functional.mse_loss(eps_hat, eps)   # the training objective
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()
            print(x_t.shape, eps_hat.shape, round(loss.item(), 3))
      PYTHON
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">The U-Net Architecture</h1>
        </div>
        <p class="lc-lead">A diffusion model needs a network that looks at a noisy image and predicts the noise in it. Most image diffusion models use a <strong>U-Net</strong> for this job. A U-Net shrinks the image to understand the big picture, then grows it back to full size. <strong>Skip connections</strong> carry fine details across, and a <strong>timestep embedding</strong> tells the network how noisy the input is. In this lesson you will follow one image through all of these parts.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 360" role="img" aria-label="A U-Net. A noisy 64 by 64 by 3 image goes down three blocks that halve the size and add channels: 64 by 64 by 32, 32 by 32 by 64, 16 by 16 by 128. The bottleneck is 8 by 8 by 256. Three up blocks double the size back to 64 by 64 by 32. Skip connections copy features from each down block to the up block of the same size. A timestep embedding is added to every block. The output is the predicted noise, 64 by 64 by 3.">
            <defs><marker id="ti9a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="50" width="92" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="56" y="68" font-weight="700">Noisy x_t</text><text x="56" y="86" font-size="11" fill="#9b99b8">64×64×3</text>
              <rect x="125" y="50" width="100" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="175" y="68" font-weight="700">Down 1</text><text x="175" y="86" font-size="11" fill="#9b99b8">64×64×32</text>
              <rect x="160" y="140" width="100" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="210" y="158" font-weight="700">Down 2</text><text x="210" y="176" font-size="11" fill="#9b99b8">32×32×64</text>
              <rect x="195" y="230" width="100" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="245" y="248" font-weight="700">Down 3</text><text x="245" y="266" font-size="11" fill="#9b99b8">16×16×128</text>
              <rect x="330" y="300" width="100" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="380" y="318" font-weight="700">Bottleneck</text><text x="380" y="336" font-size="11" fill="#9b99b8">8×8×256</text>
              <rect x="465" y="230" width="100" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="515" y="248" font-weight="700">Up 3</text><text x="515" y="266" font-size="11" fill="#9b99b8">16×16×128</text>
              <rect x="500" y="140" width="100" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="550" y="158" font-weight="700">Up 2</text><text x="550" y="176" font-size="11" fill="#9b99b8">32×32×64</text>
              <rect x="535" y="50" width="100" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="585" y="68" font-weight="700">Up 1</text><text x="585" y="86" font-size="11" fill="#9b99b8">64×64×32</text>
              <rect x="658" y="50" width="92" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="704" y="68" font-weight="700" font-size="12">Pred. noise</text><text x="704" y="86" font-size="11" fill="#9b99b8">64×64×3</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ti9a)">
                <path d="M102,72 L122,72"/><path d="M635,72 L655,72"/>
                <path d="M192,94 L192,137"/><path d="M227,184 L227,227"/><path d="M262,274 L335,298"/>
                <path d="M425,298 L498,276"/><path d="M533,230 L533,187"/><path d="M568,140 L568,97"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="186" y="120" text-anchor="end">halve</text><text x="221" y="210" text-anchor="end">halve</text>
                <text x="539" y="212" text-anchor="start">double</text><text x="574" y="122" text-anchor="start">double</text>
              </g>
              <g stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" fill="none" marker-end="url(#ti9a)">
                <path d="M225,72 L532,72"/><path d="M260,162 L497,162"/><path d="M295,252 L462,252"/>
              </g>
              <g font-size="11" fill="#fcd34d">
                <text x="380" y="64">skip: copy 64×64×32 features</text>
                <text x="380" y="154">skip: copy 32×32×64</text>
                <text x="380" y="244">skip: copy 16×16×128</text>
              </g>
              <rect x="10" y="300" width="220" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="120" y="318" font-weight="700">Timestep t = 500</text><text x="120" y="336" font-size="11" fill="#9b99b8">embedding added to every block</text>
              <path d="M230,322 L327,322" stroke="#22d3ee" stroke-width="1.5" fill="none" marker-end="url(#ti9a)"/>
              <text x="640" y="320" font-size="11" fill="#9b99b8">Same size in and out:</text>
              <text x="640" y="336" font-size="11" fill="#9b99b8">one noise value per pixel</text>
            </g>
          </svg>
          <figcaption>A small U-Net. The left side goes down (smaller, more channels). The right side goes back up. Dashed orange arrows are skip connections. The shapes are height × width × channels.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why the network is shaped like a "U"</h3>
          <p>The U-Net was first made in 2015 to find objects in medical scans. Diffusion models later used it because it fits the job well. The job has two rules:</p>
          <ul class="lc-list">
            <li><strong>Output size = input size.</strong> The model must predict one noise value for every pixel and channel. So a 64×64×3 input gives a 64×64×3 output.</li>
            <li><strong>It needs the whole picture.</strong> To guess the noise on a fox's ear, it helps to know where the fox's head is. That needs information from far away in the image.</li>
          </ul>
          <p>A U-Net meets both rules. It has three parts:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What happens</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Down path (encoder)</td><td>Each block halves the height and width and adds channels</td><td>Each number now "sees" a bigger area of the image</td></tr>
              <tr><td>Bottleneck</td><td>The smallest grid, with the most channels</td><td>Holds the big-picture layout: what is where</td></tr>
              <tr><td>Up path (decoder)</td><td>Each block doubles the height and width and removes channels</td><td>Builds the full-size noise prediction</td></tr>
            </tbody>
          </table>
          <p>A <strong>channel</strong> is one layer of numbers in the grid. A colour image has 3 channels (red, green, blue). Inside the network, blocks use many more channels. Each channel stores one kind of learned feature, such as "fur edge here".</p>
        </div>
        <div class="lc-card">
          <h3>Skip connections keep the details</h3>
          <p>Shrinking an image throws away fine detail. An 8×8 bottleneck cannot remember the exact edge of every whisker. If the up path only used the bottleneck, the result would be blurry.</p>
          <p>A <strong>skip connection</strong> fixes this. It copies the features from a down block straight across to the up block of the same size. The up block joins the two sets of channels together. This joining is called <strong>concatenation</strong>. Now the up block has both:</p>
          <ul class="lc-list">
            <li>the big-picture plan from below, and</li>
            <li>the sharp local detail from the skip.</li>
          </ul>
          <p>Worked example: in the diagram, Up 1 gets 32 channels from below and 32 channels from the skip. After joining, it has 32 + 32 = 64 channels at 64×64. Then a convolution mixes them and reduces the channels again.</p>
        </div>
        <div class="lc-card">
          <h3>The timestep embedding</h3>
          <p>The same network removes noise at every step. It runs from t = 1000 (almost pure noise) to t = 1 (almost clean). It must know which step it is on. A very noisy input needs big, rough changes. A nearly clean input needs tiny, careful ones.</p>
          <p>The step number t is a single number, so the network turns it into a vector first. This vector is the <strong>timestep embedding</strong>. The usual method uses sine and cosine waves of different speeds. Each value in the vector comes from one wave. Then a small layer changes this vector, and the network adds it to the features inside every block. So every block knows how noisy the input is.</p>
          <p>In text-to-image models, each block also gets the text prompt. It arrives through <strong>cross-attention</strong>, which you will see later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>A tiny U-Net in PyTorch</h3>
          <p>Part 3 in the code editor below is a very small U-Net in PyTorch, with one down step and one up step. It shows the skip connection (<code>torch.cat</code>) and the timestep embedding. Real diffusion U-Nets have many more blocks, plus attention layers.</p>
          <p>A 64×64 noisy image goes in, and a 64×64 noise guess comes out. Inside, the down step makes 32 channels at 64×64, and the bottleneck has 64 channels at 32×32. After the skip, the up step has 32 + 32 = 64 channels at 64×64. The output has the same shape as the input, as it must. The model is not trained yet, so the numbers inside are random. Training would use the MSE loss on noise that you saw earlier in this course.</p>
          <p>PyTorch does not run in the browser, so Part 3 prints a short message there. Copy it to your own computer to run it. Parts 1 and 2 show the same ideas with NumPy, and they run in the browser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one pass through a U-Net</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of one U-Net pass in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Take the noisy image x_t and the step number t</li>
              <li data-order="2">Turn t into a timestep embedding vector</li>
              <li data-order="3">Down path: halve the size block by block, and save each block's features for the skips</li>
              <li data-order="4">Bottleneck: process the smallest grid, which holds the big-picture layout</li>
              <li data-order="5">Up path: double the size, and join the saved skip features at each size</li>
              <li data-order="6">Output the predicted noise, with the same shape as x_t</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has three parts. Part 1 shrinks an 8×8 picture to a 2×2 bottleneck and grows it back, once without skips and once with skips. Part 2 prints timestep embeddings. Part 3 is the tiny PyTorch U-Net for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, compare the blurry result without skips to the sharp result with skips.</li>
            <li>In Part 1, use only one skip: change the <code>with_skip</code> line to <code>up(up(d2) + skip2)</code>. Is the result in between?</li>
            <li>In Part 1, draw your own picture. For example, add a diagonal line with <code>img[np.arange(8), np.arange(8)] = 1.0</code>.</li>
            <li>In Part 2, change <code>dim=8</code> to <code>dim=16</code> in <code>time_embedding</code>. Check that t=250 and t=500 still give different vectors.</li>
            <li>On your own computer, run Part 3. Check that the predicted noise has the shape (1, 3, 64, 64), the same as the input.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A U-Net goes down to see the big picture and comes back up to full size. Skip connections carry the fine detail across, and the timestep embedding tells every block how noisy the input is.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A toy U-Net in three parts. Parts 1 and 2 use NumPy and run here.
        # Part 3 is the real thing in PyTorch: run it on your own computer.
        import numpy as np

        # ── Part 1: down, through the bottleneck, and back up (with and without skips) ──
        # Real U-Nets learn convolutions. Here we only average and copy, to see the shapes.
        print("== Part 1: the down path, the up path and the skips ==")
        CHARS = " .:-=+*#%@"
        def show(title, img):
            print(title)
            for row in img:
                print("  " + "".join(CHARS[int(v * 9.99)] * 2 for v in row))

        def down(x):   # 2x2 average pooling: height and width get 2 times smaller
            return x.reshape(x.shape[0] // 2, 2, x.shape[1] // 2, 2).mean(axis=(1, 3))

        def up(x):     # copy each value into a 2x2 block: height and width get 2 times bigger
            return x.repeat(2, axis=0).repeat(2, axis=1)

        # An 8x8 grayscale picture (0 = dark, 1 = bright): a frame with a dot in the middle
        img = np.zeros((8, 8))
        img[1, 1:7] = img[6, 1:7] = img[1:7, 1] = img[1:7, 6] = 1.0
        img[3:5, 3:5] = 0.6

        # Down path: 8x8 -> 4x4 -> 2x2 (the bottleneck)
        d1 = down(img)
        d2 = down(d1)
        print("shapes:", img.shape, "->", d1.shape, "->", d2.shape, "(bottleneck)")

        # Up path WITHOUT skip connections: only the tiny bottleneck is used
        no_skip = up(up(d2))

        # Up path WITH skip connections: add back what each level lost
        skip1 = img - up(d1)          # fine detail saved at the 8x8 level
        skip2 = d1 - up(d2)           # detail saved at the 4x4 level
        with_skip = up(up(d2) + skip2) + skip1

        show("Input", img)
        show("Up path without skips (blurry)", no_skip)
        show("Up path with skips (sharp)", with_skip)
        print(f"error without skips: {np.abs(img - no_skip).mean():.3f}")
        print(f"error with skips:    {np.abs(img - with_skip).mean():.3f}")

        # ── Part 2: the timestep embedding ──
        # Turn the step number t into a list of sine and cosine values
        print("\n== Part 2: the timestep embedding ==")
        def time_embedding(t, dim=8):
            freqs = np.exp(-np.log(10000) * np.arange(dim // 2) / (dim // 2))
            return np.concatenate([np.sin(t * freqs), np.cos(t * freqs)])

        for t in [1, 250, 500, 1000]:
            print(f"t={t:4d} ->", np.round(time_embedding(t), 2))

        # ── Part 3: a tiny U-Net in PyTorch (run this part on your own computer) ──
        # One down step, a bottleneck and one up step, with a skip (torch.cat) and a timestep embedding.
        # On your computer: pip install torch
        print("\n== Part 3: a tiny U-Net in PyTorch ==")
        try:
            import math
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            def time_embedding(t, dim=32):
                # turn the step number t into 32 sine and cosine values
                half = dim // 2
                freqs = torch.exp(-math.log(10000) * torch.arange(half) / half)
                angles = t[:, None].float() * freqs[None, :]
                return torch.cat([torch.sin(angles), torch.cos(angles)], dim=1)

            class TinyUNet(nn.Module):
                def __init__(self):
                    super().__init__()
                    self.time_mlp = nn.Linear(32, 32)
                    self.down1 = nn.Conv2d(3, 32, 3, padding=1)               # 64x64, 32 channels
                    self.down2 = nn.Conv2d(32, 64, 3, stride=2, padding=1)    # halve: 32x32
                    self.mid = nn.Conv2d(64, 64, 3, padding=1)                # bottleneck
                    self.up = nn.ConvTranspose2d(64, 32, 2, stride=2)         # double: 64x64
                    self.out = nn.Conv2d(64, 3, 3, padding=1)                 # 64 = 32 up + 32 skip

                def forward(self, x, t):
                    temb = self.time_mlp(time_embedding(t))                   # step number -> vector
                    h1 = torch.relu(self.down1(x)) + temb[:, :, None, None]   # 64x64, 32 channels
                    h2 = torch.relu(self.down2(h1))                           # halve: 32x32
                    h2 = torch.relu(self.mid(h2))                             # bottleneck
                    u = self.up(h2)                                           # double: back to 64x64
                    u = torch.cat([u, h1], dim=1)                             # skip: 32 + 32 = 64 channels
                    print("down1:", tuple(h1.shape), "| bottleneck:", tuple(h2.shape))
                    print("up + skip:", tuple(u.shape))
                    return self.out(u)                                        # same shape as x

            torch.manual_seed(42)
            model = TinyUNet()
            x_t = torch.randn(1, 3, 64, 64)          # one noisy 64x64 RGB image
            t = torch.tensor([500])                  # the timestep
            eps_hat = model(x_t, t)
            print("predicted noise:", tuple(eps_hat.shape))
            print("parameters:", sum(p.numel() for p in model.parameters()))
      PYTHON
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">Latent Diffusion</h1>
        </div>
        <p class="lc-lead">Running a diffusion model on full-size pixels is slow and costly. <strong>Latent diffusion</strong> fixes this. A VAE first squeezes the image into a much smaller grid of numbers, called a <strong>latent</strong>. The whole noise and denoise process then runs on this small latent. At the end, the VAE decoder turns the latent back into a full-size picture. This one idea is what made Stable Diffusion fast enough for ordinary computers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 380" role="img" aria-label="A 512 by 512 by 3 pixel image goes through the VAE encoder and becomes a 64 by 64 by 4 latent, 8 times smaller on each side. The image has 786,432 numbers and the latent has 16,384, which is 48 times fewer. During generation, a random latent is cleaned by the U-Net loop in latent space, and only at the end the VAE decoder makes the 512 by 512 image.">
            <defs><marker id="ti10a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="110" y="28" font-weight="700" fill="#93c5fd">Pixel space</text>
              <rect x="20" y="40" width="180" height="180" fill="#1f1f44" stroke="#3b82f6"/>
              <g stroke="#3b82f6" stroke-opacity="0.35">
                <path d="M42.5,40 V220 M65,40 V220 M87.5,40 V220 M110,40 V220 M132.5,40 V220 M155,40 V220 M177.5,40 V220"/>
                <path d="M20,62.5 H200 M20,85 H200 M20,107.5 H200 M20,130 H200 M20,152.5 H200 M20,175 H200 M20,197.5 H200"/>
              </g>
              <rect x="20" y="40" width="22.5" height="22.5" fill="#3b82f6" fill-opacity="0.35"/>
              <text x="110" y="136" font-weight="700">512×512×3</text>
              <text x="110" y="154" font-size="11" fill="#9b99b8">shaded square = latent size</text>
              <path d="M210,130 L318,130" stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ti10a)"/>
              <text x="264" y="118" font-weight="700" fill="#c4b5fd">VAE encoder</text>
              <text x="264" y="150" font-size="11" fill="#9b99b8">8× smaller</text>
              <text x="264" y="165" font-size="11" fill="#9b99b8">each side</text>
              <text x="360" y="28" font-weight="700" fill="#6ee7b7">Latent space</text>
              <rect x="348" y="137" width="22.5" height="22.5" fill="#1f1f44" stroke="#10b981"/>
              <rect x="342" y="131" width="22.5" height="22.5" fill="#1f1f44" stroke="#10b981"/>
              <rect x="336" y="125" width="22.5" height="22.5" fill="#1f1f44" stroke="#10b981"/>
              <rect x="330" y="119" width="22.5" height="22.5" fill="#27274e" stroke="#10b981"/>
              <text x="360" y="186" font-weight="700">64×64×4</text>
              <text x="360" y="204" font-size="11" fill="#9b99b8">same scale</text>
              <text x="430" y="62" text-anchor="start" font-size="12">Pixels: 786,432 numbers</text>
              <rect x="430" y="72" width="310" height="14" rx="3" fill="#3b82f6"/>
              <text x="430" y="114" text-anchor="start" font-size="12">Latent: 16,384 numbers</text>
              <rect x="430" y="124" width="6.5" height="14" rx="2" fill="#10b981"/>
              <text x="430" y="170" text-anchor="start" font-weight="700" fill="#fcd34d">48× fewer numbers</text>
              <text x="430" y="190" text-anchor="start" font-size="11" fill="#9b99b8">64× fewer grid positions</text>
              <text x="430" y="208" text-anchor="start" font-size="11" fill="#9b99b8">4096× fewer attention pairs</text>
              <line x1="20" y1="245" x2="740" y2="245" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="380" y="272" font-weight="700" fill="#e2e0f0">Generation: the whole denoising loop runs in latent space</text>
              <rect x="26" y="292" width="150" height="56" rx="8" fill="#27274e" stroke="#ec4899"/><text x="101" y="315" font-weight="700">Random latent</text><text x="101" y="334" font-size="11" fill="#9b99b8">64×64×4 noise</text>
              <rect x="212" y="292" width="150" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="287" y="315" font-weight="700">U-Net loop</text><text x="287" y="334" font-size="11" fill="#9b99b8">every step on 64×64</text>
              <rect x="398" y="292" width="150" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="473" y="315" font-weight="700">VAE decoder</text><text x="473" y="334" font-size="11" fill="#9b99b8">used once, 8× bigger</text>
              <rect x="584" y="292" width="150" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="659" y="315" font-weight="700">Image</text><text x="659" y="334" font-size="11" fill="#9b99b8">512×512×3 pixels</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ti10a)"><path d="M176,320 L209,320"/><path d="M362,320 L395,320"/><path d="M548,320 L581,320"/></g>
            </g>
          </svg>
          <figcaption>Top: the VAE encoder turns each 8×8 block of RGB pixels into 4 numbers. Both are drawn at the same scale, so the latent is as big as the shaded square. Bottom: in generation, only the last step leaves latent space.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why pixel space is expensive</h3>
          <p>A 512×512 colour image holds 512 × 512 × 3 = 786,432 numbers. A diffusion model must run its U-Net on the whole image at every step. A picture often needs 20 to 50 steps. So the U-Net works through those 786,432 numbers again and again.</p>
          <p>Also, many of those numbers are tiny texture details. People hardly notice them. The model spends a lot of effort on them anyway.</p>
          <p>A 2022 paper, "High-Resolution Image Synthesis with Latent Diffusion Models", split the work into two parts:</p>
          <ol class="lc-list">
            <li><strong>Compression:</strong> an autoencoder learns to squeeze images into a small latent and rebuild them. It handles the fine texture.</li>
            <li><strong>Generation:</strong> a diffusion model learns to make new latents. It handles the meaning and layout: a fox, a book, a tree.</li>
          </ol>
          <p>Stable Diffusion is built on this design.</p>
        </div>
        <div class="lc-card">
          <h3>The VAE: from pixels to latent and back</h3>
          <p>Earlier in this course you met the variational autoencoder (VAE). Stable Diffusion uses one as its compressor:</p>
          <ul class="lc-list">
            <li>The <strong>encoder</strong> shrinks the height and width 8 times and outputs 4 channels. So 512×512×3 becomes 64×64×4.</li>
            <li>The <strong>decoder</strong> does the opposite: 64×64×4 back to 512×512×3.</li>
          </ul>
          <p>Each latent position stands for one 8×8 block of pixels. That block has 8 × 8 × 3 = 192 numbers, and the latent keeps only 4 of them. The VAE learns which 4 numbers keep the most useful information.</p>
          <p>The VAE is trained first and then <strong>frozen</strong> (its weights no longer change). Next, the diffusion model trains on latents only. In training, each image goes through the encoder. Then noise is added to the latent, with the same formula you learned for pixels. The U-Net learns to predict that noise.</p>
          <p>A small detail: Stable Diffusion 1.x multiplies its latents by a <strong>scaling factor</strong> of 0.18215. This keeps their values in a range that suits the noise schedule.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: how much do we save?</h3>
          <p>A 512×512×3 image holds 786,432 numbers. The 64×64×4 latent holds 64 × 64 × 4 = 16,384 numbers. Divide one by the other, and you get 48. The grid also shrinks from 262,144 positions to 4,096. Part 2 in the code editor below works out these numbers for 512, 768 and 1024 pixel images.</p>
          <ul class="lc-list">
            <li><strong>48 times fewer numbers</strong> to store and change at every step.</li>
            <li><strong>64 times fewer grid positions.</strong> The cost of a convolution layer grows with the number of positions, so each such layer does far less work.</li>
            <li><strong>4096 times fewer attention pairs.</strong> Self-attention compares every position with every other position. So its cost grows with the square of the number of positions.</li>
          </ul>
          <p>The real speed-up is smaller than these numbers. The network is designed differently, and the VAE decoder still runs once at full size. But the saving is large. It is the reason Stable Diffusion runs on a single consumer graphics card.</p>
        </div>
        <div class="lc-card">
          <h3>The real VAE in code</h3>
          <p>The Hugging Face <code>diffusers</code> library has a class called <code>AutoencoderKL</code> for this VAE. Part 3 in the code editor below loads the VAE from Stable Diffusion 1.5 and checks the shapes.</p>
          <p>This code needs the <code>diffusers</code> library and an internet connection. It downloads the VAE weights, a few hundred megabytes. It runs on a normal CPU. It prints <code>torch.Size([1, 4, 64, 64])</code> for the latent and <code>torch.Size([1, 3, 512, 512])</code> for the rebuilt image. PyTorch does not run in the browser, so Part 3 prints a short message there. Part 1 runs a small NumPy version of the same idea.</p>
        </div>
        <div class="lc-card">
          <h3>The cost of compression</h3>
          <p>The latent is lossy. This means some detail is lost on the way. The decoder must guess it back. Very small things, such as tiny text or small faces in a crowd, can come out wrong.</p>
          <p>Some newer models, such as Stable Diffusion 3 and FLUX.1, use 16 latent channels instead of 4. More channels keep more detail, but each step costs more. Check each model's documentation for its latent size.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: pixel space or latent space?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">In Stable Diffusion, where does each thing live?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pixel" data-label="Pixel space (512×512×3)"></div>
              <div data-sorter-target="bucket" data-bucket="latent" data-label="Latent space (64×64×4)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="latent" data-why="The U-Net loop runs on the small latent at every step. This is where the time is saved.">The U-Net denoising loop</li>
              <li data-bucket="latent" data-why="Generation starts from random noise with the latent shape, 64×64×4.">The random noise at the start of generation</li>
              <li data-bucket="pixel" data-why="The encoder takes a normal RGB image as its input.">The input to the VAE encoder</li>
              <li data-bucket="pixel" data-why="The decoder rebuilds full-size RGB pixels from the latent.">The output of the VAE decoder</li>
              <li data-bucket="latent" data-why="In training, the image is encoded first. Then noise is added to the latent.">Adding noise during training</li>
              <li data-bucket="pixel" data-why="You save and view a normal picture, so it must be pixels.">The final picture you save as a PNG file</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor builds a toy "VAE". It uses PCA, the compression method from the autoencoder lesson. Each 4×4 patch of a 16×16 picture is squeezed into 4 numbers. So the picture becomes a 4×4×4 latent. Then the code rebuilds the picture. Part 2 prints the savings for real image sizes. Part 3 is the real VAE for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, compare the original and rebuilt pictures. Note the mean error.</li>
            <li>In Part 1, change <code>CH = 4</code> to <code>CH = 1</code>. The latent is now 16 times smaller, but how does the picture look?</li>
            <li>In Part 1, change <code>CH</code> to 8. The error goes down, but the saving goes down too.</li>
            <li>In Part 2, add <code>2048</code> to the list of sizes in the table. How many numbers would that image have?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Latent diffusion runs the slow denoising loop on a small latent (64×64×4) instead of full pixels (512×512×3). That is 48 times fewer numbers. A frozen VAE handles the move into and out of latent space.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Latent diffusion in three parts. Parts 1 and 2 use NumPy and run here.
        # Part 3 loads the real Stable Diffusion VAE: run it on your own computer.
        import numpy as np
        from sklearn.decomposition import PCA

        # ── Part 1: a toy VAE squeezes each 4x4 patch into 4 numbers ──
        # Stable Diffusion's VAE does the same kind of job: 8x8 patches of RGB pixels -> 4 numbers.
        print("== Part 1: a toy latent space ==")
        np.random.seed(42)
        P = 4          # patch size: 4x4 pixels become one latent position
        CH = 4         # latent channels (numbers kept per patch)

        def make_image(size=16):
            """A smooth made-up picture: a bright sun and a sloping hill, values 0..1."""
            y, x = np.mgrid[0:size, 0:size] / size
            cx, cy = np.random.uniform(0.2, 0.8, 2)
            sun = np.exp(-((x - cx) ** 2 + (y - cy) ** 2) * 20)
            hill = (y > 0.7 + 0.2 * np.random.uniform(-1, 1) * x).astype(float) * 0.5
            return np.clip(sun + hill, 0, 1)

        def to_patches(img):     # (16, 16) -> (16 patches, 16 pixels each)
            n = img.shape[0] // P
            return img.reshape(n, P, n, P).transpose(0, 2, 1, 3).reshape(n * n, P * P)

        def from_patches(rows, n):
            return rows.reshape(n, n, P, P).transpose(0, 2, 1, 3).reshape(n * P, n * P)

        # "Train" the encoder and decoder on patches from 200 pictures
        train = np.vstack([to_patches(make_image()) for _ in range(200)])
        vae = PCA(n_components=CH).fit(train)

        img = make_image()
        latent = vae.transform(to_patches(img)).reshape(4, 4, CH)     # encode
        rebuilt = from_patches(vae.inverse_transform(latent.reshape(16, CH)), 4)   # decode

        print("image shape: ", img.shape, "=", img.size, "numbers")
        print("latent shape:", latent.shape, "=", latent.size, "numbers")
        print(f"{img.size / latent.size:.0f} times fewer numbers, mean error {np.abs(img - rebuilt).mean():.3f}")

        CHARS = " .:-=+*#%@"
        art = lambda row: "".join(CHARS[int(np.clip(v, 0, 1) * 9.99)] for v in row)
        print("\noriginal          rebuilt from latent")
        for a, b in zip(img, rebuilt):
            print(art(a), "  ", art(b))

        # ── Part 2: how much does Stable Diffusion save? ──
        print("\n== Part 2: the savings for real image sizes ==")
        pixels = 512 * 512 * 3        # height x width x RGB
        latent_size = 64 * 64 * 4     # height x width x latent channels
        print("numbers in the image: ", pixels)
        print("numbers in the latent:", latent_size)
        print("times fewer numbers:  ", pixels // latent_size)

        grid_px, grid_lat = 512 * 512, 64 * 64
        print("grid positions:", grid_px, "vs", grid_lat, "=", grid_px // grid_lat, "times fewer")
        print("attention pairs:", grid_px ** 2 // grid_lat ** 2, "times fewer")

        # The same arithmetic for more sizes (8x smaller each side, 4 channels)
        print("\nimage size    pixel numbers   latent shape   times fewer")
        for s in [512, 768, 1024]:
            px, lat = s * s * 3, (s // 8) * (s // 8) * 4
            shape = f"{s // 8}x{s // 8}x4"
            size = f"{s}x{s}"
            print(f"{size:<12} {px:>13,}   {shape:<12} {px / lat:>11.0f}")

        # ── Part 3: the real VAE with diffusers (run this part on your own computer) ──
        # On your computer: pip install torch diffusers
        # It downloads the VAE weights (a few hundred megabytes) and runs on a normal CPU.
        print("\n== Part 3: the real Stable Diffusion VAE ==")
        try:
            import torch
            from diffusers import AutoencoderKL
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch and diffusers, which do not run in the browser. Copy this part to your computer to run it.")
        else:
            vae = AutoencoderKL.from_pretrained(
                "stable-diffusion-v1-5/stable-diffusion-v1-5", subfolder="vae")
            image = torch.rand(1, 3, 512, 512) * 2 - 1      # a fake image, values -1..1

            with torch.no_grad():
                latent = vae.encode(image).latent_dist.sample() * vae.config.scaling_factor
                print(latent.shape)                          # torch.Size([1, 4, 64, 64])
                back = vae.decode(latent / vae.config.scaling_factor).sample
                print(back.shape)                            # torch.Size([1, 3, 512, 512])
      PYTHON
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">Connecting Text and Images (CLIP)</h1>
        </div>
        <p class="lc-lead">A diffusion model can make pictures, but how does it know what "a red fox" looks like? It needs a way to turn words into numbers that match pictures. <strong>CLIP</strong> (Contrastive Language-Image Pre-training) does this. It has two encoders, one for images and one for text. Both put their vectors into one <strong>shared embedding space</strong>. In that space, a fox photo and the words "a red fox" end up close together.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 400" role="img" aria-label="Three images, a fox, a cup of tea and a bicycle, go through the image encoder to give vectors I1 to I3. Three captions go through the text encoder to give vectors T1 to T3. A 3 by 3 grid shows the cosine similarity of every image with every caption. The diagonal cells, the matching pairs, are high: 0.91, 0.96 and 0.90. The other cells are low.">
            <defs><marker id="ti11a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="402" y="14" width="96" height="30" rx="7" fill="#27274e" stroke="#f59e0b"/><text x="450" y="33" font-size="12">"a red fox"</text>
              <rect x="502" y="14" width="96" height="30" rx="7" fill="#27274e" stroke="#f59e0b"/><text x="550" y="33" font-size="12">"a cup of tea"</text>
              <rect x="602" y="14" width="96" height="30" rx="7" fill="#27274e" stroke="#f59e0b"/><text x="650" y="33" font-size="12">"a red bicycle"</text>
              <rect x="400" y="62" width="300" height="30" rx="7" fill="#1f1f44" stroke="#f59e0b"/><text x="550" y="82" font-weight="700" fill="#fcd34d">Text encoder</text>
              <g fill="#27274e" stroke="#f59e0b"><rect x="435" y="108" width="30" height="24" rx="5"/><rect x="535" y="108" width="30" height="24" rx="5"/><rect x="635" y="108" width="30" height="24" rx="5"/></g>
              <text x="450" y="125">T1</text><text x="550" y="125">T2</text><text x="650" y="125">T3</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ti11a)">
                <path d="M450,44 L450,59"/><path d="M550,44 L550,59"/><path d="M650,44 L650,59"/>
                <path d="M450,92 L450,105"/><path d="M550,92 L550,105"/><path d="M650,92 L650,105"/>
              </g>
              <rect x="20" y="150" width="104" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="72" y="171">fox photo</text>
              <rect x="20" y="194" width="104" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="72" y="215">tea photo</text>
              <rect x="20" y="238" width="104" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="72" y="259">bicycle photo</text>
              <rect x="150" y="144" width="120" height="132" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="210" y="206" font-weight="700" fill="#93c5fd">Image</text><text x="210" y="224" font-weight="700" fill="#93c5fd">encoder</text>
              <g fill="#27274e" stroke="#3b82f6"><rect x="300" y="154" width="34" height="24" rx="5"/><rect x="300" y="198" width="34" height="24" rx="5"/><rect x="300" y="242" width="34" height="24" rx="5"/></g>
              <text x="317" y="171">I1</text><text x="317" y="215">I2</text><text x="317" y="259">I3</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ti11a)">
                <path d="M124,166 L147,166"/><path d="M124,210 L147,210"/><path d="M124,254 L147,254"/>
                <path d="M270,166 L297,166"/><path d="M270,210 L297,210"/><path d="M270,254 L297,254"/>
                <path d="M334,166 L397,166"/><path d="M334,210 L397,210"/><path d="M334,254 L397,254"/>
              </g>
              <g stroke="#4b4a78">
                <rect x="400" y="144" width="100" height="44" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/><rect x="500" y="144" width="100" height="44" fill="#1f1f44"/><rect x="600" y="144" width="100" height="44" fill="#1f1f44"/>
                <rect x="400" y="188" width="100" height="44" fill="#1f1f44"/><rect x="500" y="188" width="100" height="44" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/><rect x="600" y="188" width="100" height="44" fill="#1f1f44"/>
                <rect x="400" y="232" width="100" height="44" fill="#1f1f44"/><rect x="500" y="232" width="100" height="44" fill="#1f1f44"/><rect x="600" y="232" width="100" height="44" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/>
              </g>
              <text x="450" y="171" font-weight="700">0.91</text><text x="550" y="171" fill="#9b99b8">-0.51</text><text x="650" y="171" fill="#9b99b8">-0.12</text>
              <text x="450" y="215" fill="#9b99b8">-0.78</text><text x="550" y="215" font-weight="700">0.96</text><text x="650" y="215" fill="#9b99b8">-0.82</text>
              <text x="450" y="259" fill="#9b99b8">-0.17</text><text x="550" y="259" fill="#9b99b8">-0.42</text><text x="650" y="259" font-weight="700">0.90</text>
              <text x="550" y="304" font-size="11.5" fill="#9b99b8">Each cell = cosine similarity of image i and caption j</text>
              <rect x="150" y="326" width="18" height="14" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/>
              <text x="178" y="338" text-anchor="start">Matching pair (positive): training pulls it up</text>
              <rect x="150" y="354" width="18" height="14" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="178" y="366" text-anchor="start">Wrong pair (negative): training pushes it down</text>
            </g>
          </svg>
          <figcaption>A batch of 3 image-caption pairs. CLIP compares every image with every caption. The numbers come from the trained toy model in Part 1 of the code editor.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Two encoders, one space</h3>
          <p>CLIP was released by OpenAI in 2021. It has two parts:</p>
          <ul class="lc-list">
            <li>An <strong>image encoder</strong> turns a picture into a vector.</li>
            <li>A <strong>text encoder</strong> turns a caption into a vector of the same length.</li>
          </ul>
          <p>Because the vectors have the same length, you can compare an image with a text directly. You use <strong>cosine similarity</strong>: a number from -1 to 1 that shows how much two vectors point the same way. A high number means "this caption describes this image".</p>
          <p>This is the <strong>shared embedding space</strong>. An embedding is a vector that stands for something. Here images and texts live in the same space. So "a red fox" sits near fox photos and far from teacups.</p>
        </div>
        <div class="lc-card">
          <h3>Contrastive learning</h3>
          <p>OpenAI trained CLIP on about 400 million image-caption pairs from the internet. Nobody labelled them by hand. The captions were already next to the images on web pages.</p>
          <p>Training uses <strong>contrastive learning</strong>. "Contrastive" means the model learns by comparing right pairs with wrong pairs. One training step looks like this:</p>
          <ol class="lc-list">
            <li>Take a batch of N images and their N captions.</li>
            <li>Encode all of them. You get N image vectors and N text vectors.</li>
            <li>Build an N×N grid of similarities, like the one in the diagram.</li>
            <li>The diagonal holds the N right pairs (<strong>positives</strong>). All other cells are wrong pairs (<strong>negatives</strong>).</li>
            <li>Change both encoders so that the diagonal goes up and everything else goes down.</li>
          </ol>
          <p>The loss works like a quiz. For each image, the model must pick the right caption out of N. For each caption, it must pick the right image. A softmax turns each row (and each column) into probabilities. Cross-entropy then gives a low loss when the right pair gets a high probability.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the loss for one row</h3>
          <p>Here is the fox image's row from the grid, before and after training. The scale makes the differences bigger before the softmax. CLIP learns this scale during training.</p>
          <p>The steps are simple. Multiply the row by the scale 5. Apply softmax to get 3 probabilities. The loss is minus the log of the right caption's probability.</p>
          <p>Before training, the row is [-0.34, -0.01, -0.69]. The model gives "a cup of tea" the highest probability, 0.816. The right caption gets only 0.157, so the loss is high: 1.853. After training, the row is [0.91, -0.51, -0.12]. Now "a red fox" gets 0.993, and the loss is almost 0 (0.007). Part 2 in the code editor below works out these numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Using a real CLIP model</h3>
          <p>With the Hugging Face <code>transformers</code> library, you can score an image against several captions. Part 3 in the code editor below does this.</p>
          <p>This needs the <code>transformers</code> library, an internet connection to download the model, and your own photo called <code>fox.jpg</code>. It prints a tensor with 3 probabilities, one for each caption. For a clear fox photo, the first one is close to 1. Nobody trained this model on these 3 labels. This is called <strong>zero-shot</strong> classification. PyTorch does not run in the browser, so Part 3 prints a short message there. Part 1 runs a tiny NumPy CLIP instead.</p>
          <p>Stable Diffusion 1.x uses only the <strong>text encoder</strong> from a larger CLIP model. It turns your prompt into the vectors that guide the U-Net. Newer models often add or swap in other text encoders. Check each model's documentation.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: pull together or push apart?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">A training batch has 3 photos: a fox, a cup of tea and a bicycle. Each photo came with its own caption. What does training do to each similarity?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pull" data-label="Pull together (positive)"></div>
              <div data-sorter-target="bucket" data-bucket="push" data-label="Push apart (negative)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pull" data-why="This image and this caption came together, so it is a right pair on the diagonal.">fox photo and "a red fox"</li>
              <li data-bucket="push" data-why="The fox photo came with a different caption. In this batch, this is a wrong pair.">fox photo and "a cup of tea"</li>
              <li data-bucket="pull" data-why="This is the tea photo's own caption, so it is a positive.">tea photo and "a cup of tea"</li>
              <li data-bucket="push" data-why="Both share the word red, but the caption belongs to the bicycle photo. It is still a negative for the fox.">fox photo and "a red bicycle"</li>
              <li data-bucket="push" data-why="The caption describes a different image in the batch, so it is a negative.">bicycle photo and "a red fox"</li>
              <li data-bucket="pull" data-why="This is the bicycle photo's own caption, so it is a positive.">bicycle photo and "a red bicycle"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor trains a tiny CLIP. Each "image" is 5 made-up features. Each caption is a bag of words. Both encoders are simple matrices that output 4 numbers. Part 2 works out the loss for one row of the grid. Part 3 uses a real CLIP model on your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, compare the similarity grid before and after training. Check that the diagonal is now the highest in each row.</li>
            <li>In Part 1, change <code>range(300)</code> to <code>range(10)</code>. Is the diagonal already clear after 10 steps?</li>
            <li>In Part 1, change <code>new_image</code> to a bicycle, such as <code>[[0.1, 0.0, 0.0, 0.2, 1.0]]</code>. Which caption wins now?</li>
            <li>In Part 1, change <code>scale = 5.0</code> to <code>scale = 1.0</code> and run again. Do the matching pairs still get the highest numbers?</li>
            <li>In Part 2, change <code>5.0 * np.array(row)</code> to <code>10.0 * np.array(row)</code>. Does the loss after training get even smaller?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> CLIP trains an image encoder and a text encoder together. Contrastive learning pulls matching pairs close and pushes other pairs apart in one shared space. This is what lets text guide image generation.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # CLIP in three parts. Parts 1 and 2 use NumPy and run here.
        # Part 3 uses a real CLIP model: run it on your own computer.
        import numpy as np

        # ── Part 1: train a tiny CLIP ──
        # An image encoder and a text encoder learn to give matching pairs similar vectors.
        print("== Part 1: a tiny CLIP ==")
        np.random.seed(42)
        # Each "image" is 5 made-up features: [orange fur, pointy ears, liquid, handle, wheels]
        images = np.array([[0.9, 0.8, 0.0, 0.0, 0.1],    # a fox
                           [0.1, 0.0, 0.9, 0.7, 0.0],    # a cup of tea
                           [0.2, 0.0, 0.0, 0.3, 0.9]])   # a bicycle
        captions = ["a red fox", "a cup of tea", "a red bicycle"]
        vocab = sorted({w for c in captions for w in c.split()})
        def bag_of_words(text):          # 1 if the word is in the text, else 0
            return np.array([1.0 if w in text.split() else 0.0 for w in vocab])
        texts = np.array([bag_of_words(c) for c in captions])

        W_img = np.random.randn(5, 4) * 0.1              # image encoder: 5 features -> 4 numbers
        W_txt = np.random.randn(len(vocab), 4) * 0.1     # text encoder: words -> 4 numbers

        def unit(v):                     # make every vector length 1, so dot product = cosine
            return v / np.linalg.norm(v, axis=1, keepdims=True)
        def similarity():                # rows = images, columns = captions
            return unit(images @ W_img) @ unit(texts @ W_txt).T
        def show(title):
            print(title)
            for name, row in zip(["fox  ", "tea  ", "bike "], similarity()):
                print("  image", name, " ".join(f"{v:6.2f}" for v in row))

        show("Before training (random encoders):")
        lr, scale = 0.5, 5.0
        for step in range(300):
            I, T = images @ W_img, texts @ W_txt
            logits = scale * I @ T.T
            p_rows = np.exp(logits) / np.exp(logits).sum(axis=1, keepdims=True)   # image -> which caption?
            p_cols = np.exp(logits) / np.exp(logits).sum(axis=0, keepdims=True)   # caption -> which image?
            grad = (p_rows - np.eye(3)) + (p_cols - np.eye(3))    # push the diagonal up, the rest down
            W_img -= lr * images.T @ (grad @ T) * scale / 3
            W_txt -= lr * texts.T @ (grad.T @ I) * scale / 3
        show("\nAfter training (diagonal = matching pairs):")

        # Zero-shot: a new image the model never saw. Which caption fits best?
        new_image = np.array([[0.8, 0.9, 0.1, 0.0, 0.0]])        # another fox
        scores = unit(new_image @ W_img) @ unit(texts @ W_txt).T
        print("\nNew image vs captions:")
        for c, s in zip(captions, scores[0]):
            print(f"  {c:14} {s:5.2f}")
        print("Best caption:", captions[scores.argmax()])

        # ── Part 2: the loss for one row ──
        # The fox image's row: cosine similarity with "a red fox", "a cup of tea", "a red bicycle"
        print("\n== Part 2: the loss for the fox image's row ==")
        rows = {"before training": [-0.34, -0.01, -0.69],
                "after training ": [0.91, -0.51, -0.12]}
        for name, row in rows.items():
            logits = 5.0 * np.array(row)                  # multiply by a scale (CLIP learns it)
            p = np.exp(logits) / np.exp(logits).sum()     # softmax: scores -> probabilities
            loss = -np.log(p[0])                          # the right caption is number 0
            print(f"{name}: probabilities {np.round(p, 3)}, loss {loss:.3f}")

        # ── Part 3: a real CLIP model with transformers (run this part on your own computer) ──
        # On your computer: pip install torch transformers pillow
        # It downloads the model and needs your own photo called fox.jpg in the same folder.
        print("\n== Part 3: a real CLIP model ==")
        try:
            import os
            import torch
            from transformers import CLIPModel, CLIPProcessor
            from transformers.image_utils import load_image
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch and transformers, which do not run in the browser. Copy this part to your computer to run it.")
        elif not os.path.exists("fox.jpg"):
            print("Part 3 needs a photo called fox.jpg next to this script. Add one and run again.")
        else:
            model = CLIPModel.from_pretrained("openai/clip-vit-base-patch32")
            processor = CLIPProcessor.from_pretrained("openai/clip-vit-base-patch32")

            image = load_image("fox.jpg")
            captions = ["a photo of a fox", "a photo of a cup of tea", "a photo of a bicycle"]
            inputs = processor(text=captions, images=image, return_tensors="pt", padding=True)
            probs = model(**inputs).logits_per_image.softmax(dim=1)
            print(probs)                                  # 3 probabilities, one per caption
      PYTHON
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">How Stable Diffusion Works End to End</h1>
        </div>
        <p class="lc-lead">You now know all the parts: CLIP's text encoder, the U-Net, the noise schedule, latents and the VAE. In this lesson you join them into one pipeline. You will follow the prompt "a red fox reading a book under a tree, watercolour" from text to finished picture. You will also see how the U-Net reads the prompt through <strong>cross-attention</strong>, and how the Hugging Face <code>diffusers</code> library runs it all.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="The Stable Diffusion pipeline. Text path: the prompt goes to the tokenizer, which makes 77 token IDs, then to the CLIP text encoder, which makes 77 vectors of 768 numbers. Image path: a random 64 by 64 by 4 latent made from seed 42 goes into the U-Net, which predicts the noise and reads the text vectors through cross-attention. The scheduler removes some noise. The U-Net and scheduler repeat for every step. After the last step, the VAE decoder turns the latent into a 512 by 512 image.">
            <defs><marker id="ti12a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" font-size="11.5" fill="#9b99b8" font-weight="700">TEXT PATH (runs once)</text>
              <rect x="10" y="34" width="220" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="120" y="56" font-size="12">"a red fox reading a book</text><text x="120" y="74" font-size="12">under a tree, watercolour"</text>
              <rect x="262" y="34" width="130" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="327" y="57" font-weight="700">Tokenizer</text><text x="327" y="76" font-size="11" fill="#9b99b8">77 token IDs</text>
              <rect x="424" y="34" width="140" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="494" y="57" font-weight="700">Text encoder</text><text x="494" y="76" font-size="11" fill="#9b99b8">CLIP, frozen</text>
              <rect x="596" y="34" width="154" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="673" y="57" font-weight="700">Text vectors</text><text x="673" y="76" font-size="11" fill="#9b99b8">77×768 numbers</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ti12a)"><path d="M230,62 L259,62"/><path d="M392,62 L421,62"/><path d="M564,62 L593,62"/></g>
              <path d="M673,90 V140 H245 V185" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" fill="none" marker-end="url(#ti12a)"/>
              <text x="460" y="132" font-size="11.5" fill="#fcd34d">cross-attention: the text guides every U-Net step</text>
              <text x="20" y="176" text-anchor="start" font-size="11.5" fill="#9b99b8" font-weight="700">IMAGE PATH</text>
              <rect x="10" y="190" width="130" height="56" rx="8" fill="#27274e" stroke="#ec4899"/><text x="75" y="213" font-weight="700">Random latent</text><text x="75" y="232" font-size="11" fill="#9b99b8">64×64×4, seed 42</text>
              <rect x="170" y="190" width="150" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="245" y="213" font-weight="700">U-Net</text><text x="245" y="232" font-size="11" fill="#9b99b8">predicts the noise</text>
              <rect x="350" y="190" width="140" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="420" y="213" font-weight="700">Scheduler</text><text x="420" y="232" font-size="11" fill="#9b99b8">removes some noise</text>
              <rect x="540" y="190" width="100" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="590" y="213" font-weight="700">VAE</text><text x="590" y="232" font-size="11" fill="#9b99b8">decoder</text>
              <rect x="660" y="190" width="90" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="705" y="213" font-weight="700">Image</text><text x="705" y="232" font-size="11" fill="#9b99b8">512×512×3</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ti12a)"><path d="M140,218 L167,218"/><path d="M320,218 L347,218"/><path d="M490,218 L537,218"/><path d="M640,218 L657,218"/></g>
              <text x="514" y="208" font-size="11" fill="#9b99b8">done</text>
              <path d="M420,246 C420,300 245,300 245,249" stroke="#22d3ee" stroke-width="1.5" fill="none" marker-end="url(#ti12a)"/>
              <text x="332" y="316" font-size="11.5" fill="#67e8f9">repeat for every step (for example 50)</text>
              <text x="332" y="336" font-size="11" fill="#9b99b8">the latent gets a little cleaner each time</text>
            </g>
          </svg>
          <figcaption>Stable Diffusion 1.x from prompt to picture. The text path runs once. The U-Net and scheduler loop runs many times on the small latent. The VAE decoder runs once at the end.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five parts</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Input → output (Stable Diffusion 1.x)</th><th>Job</th></tr></thead>
            <tbody>
              <tr><td>Tokenizer</td><td>prompt → 77 token IDs</td><td>Splits the text into tokens. Short prompts are padded to 77, and longer ones are cut.</td></tr>
              <tr><td>Text encoder</td><td>77 IDs → 77×768 numbers</td><td>The frozen CLIP text encoder. It gives one 768-number vector per token.</td></tr>
              <tr><td>U-Net</td><td>latent 64×64×4 + step t + text → noise 64×64×4</td><td>Predicts the noise in the latent. It has about 860 million parameters.</td></tr>
              <tr><td>Scheduler</td><td>latent + predicted noise → slightly cleaner latent</td><td>Uses the noise schedule to take one step towards a clean latent.</td></tr>
              <tr><td>VAE decoder</td><td>latent 64×64×4 → image 512×512×3</td><td>Turns the final latent into pixels.</td></tr>
            </tbody>
          </table>
          <p>Only the U-Net is trained for generation. The text encoder and the VAE were trained before and stay frozen. The scheduler has no weights at all. It is just a formula.</p>
        </div>
        <div class="lc-card">
          <h3>Cross-attention: how the U-Net reads the prompt</h3>
          <p>The U-Net has attention layers in many of its blocks. In <strong>cross-attention</strong>, two different things look at each other:</p>
          <ul class="lc-list">
            <li>The <strong>queries</strong> come from the latent. Each position in the grid asks, "Which words matter for me?"</li>
            <li>The <strong>keys and values</strong> come from the 77 text vectors. They answer with information about the words.</li>
          </ul>
          <p>Worked example: at the 64×64 level, the grid has 64 × 64 = 4,096 positions. Each position gives a weight to each of the 77 text vectors. So one attention head makes 4,096 × 77 = 315,392 weights. A position in the top part of the picture might give a big weight to "tree". A position in the middle might give a big weight to "fox" and "book".</p>
          <p>The text vectors are the same at every step. The latent changes at each step, so the questions it asks change too.</p>
        </div>
        <div class="lc-card">
          <h3>The generation loop, step by step</h3>
          <ol class="lc-list">
            <li><strong>Encode the prompt once:</strong> tokenizer, then text encoder, gives 77×768 numbers.</li>
            <li><strong>Make a random latent:</strong> 64×64×4 numbers of Gaussian noise. The <strong>seed</strong> fixes this noise. The same seed and settings give the same picture.</li>
            <li><strong>Loop over the steps</strong> (for example 50, from very noisy to clean):
              <ul class="lc-list">
                <li>The U-Net predicts the noise from the latent, the step t and the text vectors.</li>
                <li>The scheduler uses that prediction to remove a little noise.</li>
              </ul>
            </li>
            <li><strong>Decode once:</strong> the VAE decoder turns the clean latent into a 512×512 image.</li>
          </ol>
          <p>In practice, the pipeline runs the U-Net twice per step: once with your prompt and once with an empty prompt. Then it mixes the two predictions. This is called <strong>classifier-free guidance</strong>, and you will learn it soon.</p>
        </div>
        <div class="lc-card">
          <h3>The whole pipeline in diffusers</h3>
          <p>The <code>diffusers</code> library wraps all five parts in one pipeline object. Part 2 in the code editor below makes the fox picture with it.</p>
          <p>This needs an NVIDIA graphics card (<code>"cuda"</code>) and downloads a few gigabytes of weights. It saves a 512×512 picture called <code>fox.png</code>. If you run it again with seed 42, you get the same picture on the same hardware and software.</p>
          <p>The pipeline holds each part as an attribute: <code>pipe.tokenizer</code>, <code>pipe.text_encoder</code>, <code>pipe.unet</code>, <code>pipe.scheduler</code> and <code>pipe.vae</code>. Part 3 in the code editor below writes the same loop by hand, without guidance, so you can see every part. The text encoder runs once and gives 77 vectors of 768 numbers. The U-Net and the scheduler then run 50 times. The VAE decoder runs once at the end.</p>
          <p>The result is a tensor with values from about -1 to 1. To view it, you would scale it to 0 to 255. Without guidance, the picture usually follows the prompt less well. PyTorch does not run in the browser, so Parts 2 and 3 print a short message there. Part 1 runs a toy NumPy version of this pipeline, with 10 steps.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow the fox prompt</h3>
          <p>Step through one run of the pipeline.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">a red fox reading a book under a tree, watercolour (seed 42, 50 steps)</li>
              <li data-kind="tool" data-label="Tokenizer">The prompt becomes token IDs. Padding makes the list 77 long.</li>
              <li data-kind="tool" data-label="Text encoder">The frozen CLIP text encoder turns the IDs into 77 vectors of 768 numbers.</li>
              <li data-kind="result" data-label="Random latent">Seed 42 makes a 64×64×4 grid of pure noise.</li>
              <li data-kind="thought" data-label="U-Net, step 1">The U-Net predicts the noise. Through cross-attention, positions in the grid look at words like "fox" and "tree".</li>
              <li data-kind="tool" data-label="Scheduler">The scheduler removes a little noise. A rough layout starts to appear in the latent.</li>
              <li data-kind="check" data-label="Steps 2 to 50">The U-Net and scheduler repeat. Each step uses the same text vectors and a cleaner latent.</li>
              <li data-kind="answer" data-label="VAE decoder">The clean 64×64×4 latent becomes a 512×512 watercolour picture of a fox.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor is a toy pipeline with the same five parts. Its "model" knows only three shapes: square, cross and diamond. Its U-Net cheats, because it already knows those shapes. But the flow is the same as the real thing. Parts 2 and 3 are the real pipeline for a computer with a GPU.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, follow the tokens, the text vector, the 10 steps and the final picture.</li>
            <li>In Part 1, change <code>PROMPT</code> to <code>"a cross"</code>. The text now picks a different shape.</li>
            <li>In Part 1, change <code>PROMPT</code> to <code>"a red fox"</code>. The toy knows none of these words, so the text gives no guidance. Try <code>SEED</code> 1, 2, 3 and 4. Now the seed decides the shape.</li>
            <li>In Part 1, change <code>STEPS</code> to 3. The toy still finds the shape, because its U-Net is perfect. A real U-Net makes small errors, so it usually needs more steps.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Stable Diffusion runs the text encoder once and the VAE decoder once. Between them, the U-Net and the scheduler clean a random latent step by step. Cross-attention lets the prompt guide every one of those steps.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Stable Diffusion end to end, in three parts. Part 1 uses NumPy and runs here.
        # Parts 2 and 3 use the real model with diffusers: run them on a computer with an NVIDIA GPU.
        import numpy as np

        # ── Part 1: a toy pipeline with the same 5 parts as the real one ──
        # tokenizer -> text encoder -> random latent -> U-Net + scheduler loop -> VAE decoder.
        print("== Part 1: a toy Stable Diffusion pipeline ==")
        PROMPT = "a diamond, watercolour"
        SEED = 42
        STEPS = 10

        # The toy model only knows 3 shapes (16x16 images with values -1..1)
        r, c = np.mgrid[0:16, 0:16] / 2
        SHAPES = {"square":  np.where((r > 1.5) & (r < 6) & (c > 1.5) & (c < 6), 1.0, -1.0),
                  "cross":   np.where((abs(r - 3.75) < 1) | (abs(c - 3.75) < 1), 1.0, -1.0),
                  "diamond": np.where(abs(r - 3.75) + abs(c - 3.75) < 3, 1.0, -1.0)}
        names = list(SHAPES)

        # 1) Tokenizer and 2) text encoder: words -> a vector (one number per known shape)
        tokens = PROMPT.lower().replace(",", " ").split()
        text_vec = np.array([float(n in tokens) for n in names])
        print("tokens:", tokens, "-> text vector", text_vec)

        # The "VAE": the latent is 8x8, half the size of the 16x16 image on each side
        encode = lambda img: img.reshape(8, 2, 8, 2).mean(axis=(1, 3))
        decode = lambda lat: lat.repeat(2, axis=0).repeat(2, axis=1)
        latents = [encode(SHAPES[n]) for n in names]

        # 3) A random starting latent, fixed by the seed
        np.random.seed(SEED)
        x = np.random.randn(8, 8)
        alpha_bar = np.cumprod(1 - np.linspace(0.0001, 0.02, 1000))

        def toy_unet(x, t, text_vec):
            """Predicts the noise. It cheats: it already knows the 3 shapes.
            It scores each shape by how well it fits x and by the text, like attention."""
            a = alpha_bar[t]
            fit = [-((x - np.sqrt(a) * z) ** 2).sum() / (2 * (1 - a)) for z in latents]
            score = np.array(fit) + 5 * text_vec              # the text pushes towards its shape
            w = np.exp(score - score.max()); w /= w.sum()
            x0_guess = sum(wi * z for wi, z in zip(w, latents))
            return (x - np.sqrt(a) * x0_guess) / np.sqrt(1 - a)

        # 4) Scheduler loop (DDIM style, no extra randomness): jump from t=999 down to t=0
        timesteps = np.linspace(999, 0, STEPS).astype(int)
        for i, t in enumerate(timesteps):
            eps_hat = toy_unet(x, t, text_vec)
            x0_hat = (x - np.sqrt(1 - alpha_bar[t]) * eps_hat) / np.sqrt(alpha_bar[t])
            prev = alpha_bar[timesteps[i + 1]] if i + 1 < STEPS else 1.0
            x = np.sqrt(prev) * x0_hat + np.sqrt(1 - prev) * eps_hat
            print(f"step {i + 1:2d}  t={t:3d}  noise left after step: {np.sqrt(1 - prev):.2f}")

        # 5) VAE decoder: latent -> image, printed as text art
        image = decode(x)
        print("latent", x.shape, "-> image", image.shape)
        for row in image:
            print("  " + "".join(" .:-=+*#%@"[int((np.clip(v, -1, 1) + 1) / 2 * 9.99)] * 2 for v in row))

        # ── Part 2: the whole pipeline in diffusers (run this part on your own computer) ──
        # On your computer: pip install torch diffusers transformers
        # It needs an NVIDIA GPU ("cuda") and downloads a few gigabytes of weights.
        print("\n== Part 2: the real pipeline in diffusers ==")
        pipe = None
        try:
            import torch
            from diffusers import StableDiffusionPipeline
        except ImportError:
            torch = None
        if torch is None or not torch.cuda.is_available():
            print("Part 2 uses PyTorch, diffusers and an NVIDIA GPU, which the browser does not have. Copy this part to your computer to run it.")
        else:
            pipe = StableDiffusionPipeline.from_pretrained(
                "stable-diffusion-v1-5/stable-diffusion-v1-5", torch_dtype=torch.float16).to("cuda")

            generator = torch.Generator("cuda").manual_seed(42)
            image = pipe("a red fox reading a book under a tree, watercolour",
                         num_inference_steps=50, guidance_scale=7.5, generator=generator).images[0]
            image.save("fox.png")                     # a 512x512 picture
            print("saved fox.png")

        # ── Part 3: the same loop by hand, without guidance (run this part on your own computer) ──
        # It uses the parts inside the pipe from Part 2: tokenizer, text_encoder, unet, scheduler, vae.
        print("\n== Part 3: the generation loop by hand ==")
        if pipe is None:
            print("Part 3 needs the pipeline from Part 2, so it also runs only on your own computer.")
        else:
            prompt = "a red fox reading a book under a tree, watercolour"
            generator = torch.Generator("cuda").manual_seed(42)
            with torch.no_grad():
                ids = pipe.tokenizer(prompt, padding="max_length", max_length=77,
                                     truncation=True, return_tensors="pt").input_ids.to("cuda")
                text_vectors = pipe.text_encoder(ids)[0]                  # shape (1, 77, 768), runs once

                latent = torch.randn((1, 4, 64, 64), generator=generator,
                                     device="cuda", dtype=torch.float16)  # random start
                pipe.scheduler.set_timesteps(50)
                latent = latent * pipe.scheduler.init_noise_sigma

                for t in pipe.scheduler.timesteps:                        # from noisy to clean
                    model_input = pipe.scheduler.scale_model_input(latent, t)
                    noise = pipe.unet(model_input, t, encoder_hidden_states=text_vectors).sample
                    latent = pipe.scheduler.step(noise, t, latent).prev_sample

                image = pipe.vae.decode(latent / pipe.vae.config.scaling_factor).sample   # (1, 3, 512, 512)
            print(image.shape, float(image.min()), float(image.max()))    # values about -1 to 1
      PYTHON
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">Prompts, Negative Prompts and Guidance Scale</h1>
        </div>
        <p class="lc-lead">The prompt is your main control over a text-to-image model. In this lesson you will learn how to build a clear prompt. You will learn what a <strong>negative prompt</strong> does. Then you will see the maths behind the <strong>guidance scale</strong>. This one number decides how strongly the picture follows your words.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Classifier-free guidance. At every step the noisy latent goes through the U-Net twice: once with your prompt, giving cond, and once with the negative or empty prompt, giving uncond. The two are combined as guided equals uncond plus w times cond minus uncond. Below, a line shows that w equals 0 gives uncond, w equals 1 gives cond, w equals 7.5 goes much further in the prompt direction, and w equals 15 goes too far.">
            <defs><marker id="ti13a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="70" width="130" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="85" y="91" font-weight="700">noisy latent</text>
              <text x="85" y="109" font-size="11" fill="#9b99b8">64×64×4</text>
              <path d="M150,88 L196,50" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti13a)"/>
              <path d="M150,102 L196,140" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti13a)"/>
              <rect x="200" y="20" width="190" height="54" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="295" y="43">U-Net + your prompt</text>
              <text x="295" y="62" font-size="11" fill="#93c5fd">gives "cond"</text>
              <rect x="200" y="116" width="190" height="54" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="295" y="139">U-Net + negative prompt</text>
              <text x="295" y="158" font-size="11" fill="#fcd34d">gives "uncond"</text>
              <path d="M390,47 L436,78" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti13a)"/>
              <path d="M390,143 L436,112" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti13a)"/>
              <rect x="440" y="58" width="300" height="74" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="590" y="88" font-weight="700">guided = uncond + w × (cond − uncond)</text>
              <text x="590" y="112" font-size="11" fill="#9b99b8">w is the guidance scale (7.5 by default)</text>
              <text x="20" y="208" text-anchor="start" font-size="12" fill="#9b99b8">Where the guided prediction lands for different values of w:</text>
              <line x1="110" y1="255" x2="745" y2="255" stroke="#4b4a78" stroke-width="2"/>
              <line x1="130" y1="255" x2="424" y2="255" stroke="#10b981" stroke-width="3" marker-end="url(#ti13a)"/>
              <line x1="436" y1="255" x2="722" y2="255" stroke="#ec4899" stroke-width="2" stroke-dasharray="6 5" marker-end="url(#ti13a)"/>
              <circle cx="130" cy="255" r="6" fill="#f59e0b"/>
              <circle cx="170" cy="255" r="6" fill="#3b82f6"/>
              <circle cx="430" cy="255" r="6" fill="#10b981"/>
              <circle cx="730" cy="255" r="6" fill="#ec4899"/>
              <text x="124" y="238" text-anchor="end" font-size="12" fill="#fcd34d">uncond (w = 0)</text>
              <text x="176" y="238" text-anchor="start" font-size="12" fill="#93c5fd">cond (w = 1)</text>
              <text x="430" y="283" font-size="12" fill="#6ee7b7">w = 7.5</text>
              <text x="430" y="300" font-size="11" fill="#9b99b8">usual default</text>
              <text x="740" y="283" text-anchor="end" font-size="12" fill="#f9a8d4">w = 15</text>
              <text x="740" y="300" text-anchor="end" font-size="11" fill="#9b99b8">too far: harsh colours</text>
            </g>
          </svg>
          <figcaption>Classifier-free guidance. The U-Net runs twice at every step. The guidance scale w stretches the gap between the two predictions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How to build a prompt</h3>
          <p>Earlier in this course you saw that a text encoder turns your prompt into vectors. The U-Net then uses those vectors through cross-attention. So clear words give clear vectors. A good prompt usually has these parts:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it says</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Subject</td><td>The main thing in the picture</td><td>a red fox</td></tr>
              <tr><td>Action</td><td>What the subject is doing</td><td>reading a book</td></tr>
              <tr><td>Setting</td><td>Where it happens</td><td>under a tree</td></tr>
              <tr><td>Style</td><td>The kind of picture</td><td>watercolour</td></tr>
              <tr><td>Extra details</td><td>Light, colours, camera view</td><td>soft morning light, autumn colours</td></tr>
            </tbody>
          </table>
          <p>Put the most important words first. Keep each idea short. The CLIP text encoder in Stable Diffusion 1.5 reads at most 77 tokens. Words after that limit are cut off, so very long prompts lose their end.</p>
          <p>Our running prompt is <code>a red fox reading a book under a tree, watercolour</code>. It has a subject, an action, a setting and a style. You could add <code>soft morning light</code> to set the mood.</p>
        </div>
        <div class="lc-card">
          <h3>Classifier-free guidance</h3>
          <p>At every denoising step, the U-Net predicts the noise. With <strong>classifier-free guidance</strong> (CFG), it makes two predictions:</p>
          <ul class="lc-list">
            <li><strong>cond</strong>: the noise prediction with your prompt.</li>
            <li><strong>uncond</strong>: the noise prediction with an empty prompt <code>""</code>.</li>
          </ul>
          <p>The difference <code>cond − uncond</code> points in the "follow the prompt" direction. The model then moves further in that direction:</p>
          <p><strong>guided = uncond + w × (cond − uncond)</strong></p>
          <p>Here <code>w</code> is the <strong>guidance scale</strong>. A small worked example with one number: uncond = 0.20 and cond = 0.30. With w = 7.5, guided = 0.20 + 7.5 × 0.10 = 0.95. The prompt's effect is now 7.5 times bigger. Part 1 in the code editor below works out this sum.</p>
          <p>The name says "classifier-free" because an older method used a separate image classifier to steer the picture. CFG needs no extra model. During training, the prompt is sometimes dropped, so the same U-Net learns both kinds of prediction.</p>
          <p>In PyTorch, the two predictions run as one batch of 2. The 1×4×64×64 latent is copied, so the U-Net input is 2×4×64×64. The output is split with <code>.chunk(2)</code> into uncond and cond. The formula then gives one 1×4×64×64 guided prediction. Part 3 in the code editor below shows these shapes with NumPy. Part 4 does the same in PyTorch, for your own computer.</p>
          <p>This is why guidance makes each step about twice as slow. The U-Net does two passes of work for one step.</p>
        </div>
        <div class="lc-card">
          <h3>Negative prompts</h3>
          <p>A <strong>negative prompt</strong> lists things you do <em>not</em> want, such as <code>blurry, low quality</code>. It simply takes the place of the empty prompt. So "uncond" now comes from the negative prompt.</p>
          <p>Look at the formula again. Guidance moves <em>towards</em> cond and <em>away from</em> uncond. So the picture is pushed away from blur and low quality.</p>
          <ul class="lc-list">
            <li>Write the unwanted things as plain words: <code>blurry, extra legs, text, watermark</code>.</li>
            <li>Do not write "no" or "not" in the main prompt. The prompt "a fox, no hat" contains the word "hat", which can add a hat. Put <code>hat</code> in the negative prompt.</li>
            <li>In diffusers, guidance is switched off when <code>guidance_scale</code> is 1 or less. Then the negative prompt is ignored.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Choosing a guidance scale</h3>
          <table class="lc-table">
            <thead><tr><th>Guidance scale</th><th>What you usually see</th></tr></thead>
            <tbody>
              <tr><td>1 or less</td><td>No guidance. The picture follows the prompt only loosely.</td></tr>
              <tr><td>3 to 5</td><td>Softer, more natural pictures. Some prompt details may be missing.</td></tr>
              <tr><td>about 7 to 8</td><td>A common middle choice. diffusers uses 7.5 by default for Stable Diffusion.</td></tr>
              <tr><td>12 and above</td><td>Strong prompt match, but colours get harsh and details look burnt.</td></tr>
            </tbody>
          </table>
          <p>These ranges are for Stable Diffusion 1.5 style models. Some newer or "turbo" models work best with low guidance, or none. Always check the model card for its suggested settings.</p>
          <p>With diffusers on a computer with a GPU, you set all three things in one call. Part 5 in the code editor below does this. The model download is a few gigabytes.</p>
          <p>This saves one 512×512 picture of the fox. Run it again with <code>guidance_scale=3</code> and <code>guidance_scale=15</code> to compare. PyTorch and diffusers do not run in the browser, so Parts 4 and 5 print a short message there.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what guidance scale caused this?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">A Stable Diffusion 1.5 model made each picture. Sort each description by the guidance scale that most likely caused it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="low" data-label="Too low (about 1)"></div>
              <div data-sorter-target="bucket" data-bucket="mid" data-label="Middle (about 7)"></div>
              <div data-sorter-target="bucket" data-bucket="high" data-label="Too high (20 or more)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="low" data-why="With almost no guidance, the prompt has only a weak effect. The model drifts to a generic picture.">A pleasant landscape, but there is no fox and no book</li>
              <li data-bucket="high" data-why="Very large guidance pushes too far. Colours become too bright and edges look burnt.">The fox is there, but the colours glow and the edges look burnt</li>
              <li data-bucket="mid" data-why="A middle value follows the prompt and still looks natural.">A fox reading under a tree, in soft watercolour</li>
              <li data-bucket="low" data-why="With guidance off, diffusers ignores the negative prompt. So the blur you tried to remove can stay.">The negative prompt "blurry" seems to have no effect</li>
              <li data-bucket="high" data-why="Too much guidance makes strong, repeated patterns and loses fine detail.">Every leaf looks the same, with harsh, over-sharp lines</li>
              <li data-bucket="mid" data-why="This is the usual balance between matching the prompt and keeping natural colours.">All prompt details are there and the colours look natural</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Parts 1 and 2 in the code editor use made-up numbers. Each prediction is shown as a "push" towards five ideas. The code applies the guidance formula and prints a bar for each idea. Part 3 shows the real batch shapes. Parts 4 and 5 are for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, at scale 1.0 the result equals the prompt prediction. At 15.0 most bars are marked "too strong".</li>
            <li>In Part 1, add <code>3.0</code> and <code>0.0</code> to the list of scales. At 0.0, the prompt has no effect at all.</li>
            <li>At the top of the code, change the "blurry" value in <code>negative</code> to <code>0.60</code>. In Part 2, the negative prompt now pushes much harder away from blur.</li>
            <li>At the top of the code, change the "book" value in <code>your_prompt</code> to <code>0.10</code>, the same as the empty prompt. In Part 1, the book bar no longer grows with the scale.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Classifier-free guidance runs the U-Net with your prompt and with a negative or empty prompt. It then moves further in the direction between them: uncond + w × (cond − uncond). A middle guidance scale follows the prompt well, while a very high one gives harsh, burnt pictures.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Classifier-free guidance in five parts. Parts 1 to 3 use NumPy and run here.
        # Parts 4 and 5 use PyTorch and diffusers: run them on your own computer.
        import numpy as np

        # ── Part 1: the guidance formula with toy numbers ──
        # Each U-Net prediction is shown as a push towards 5 ideas, from 0 to 1.
        print("== Part 1: guided = uncond + w x (cond - uncond) ==")
        ideas = ["fox", "book", "tree", "watercolour", "blurry"]

        # One denoising step, three U-Net predictions (made-up numbers):
        empty_prompt = np.array([0.20, 0.10, 0.30, 0.10, 0.30])  # prompt ""
        your_prompt  = np.array([0.30, 0.18, 0.36, 0.18, 0.30])  # "a red fox reading a book under a tree, watercolour"
        negative     = np.array([0.20, 0.10, 0.30, 0.10, 0.40])  # negative prompt "blurry"

        def guide(uncond, cond, scale):
            # The classifier-free guidance formula
            return uncond + scale * (cond - uncond)

        def bar(v):
            if v < 0:
                return "<" * round(-v * 10) + " (pushed away)"
            return "#" * round(v * 10) + (" (too strong!)" if v > 1 else "")

        for scale in [1.0, 7.5, 15.0]:
            guided = guide(empty_prompt, your_prompt, scale)
            print(f"Guidance scale {scale}:")
            for name, v in zip(ideas, guided):
                print(f"  {name:12} {v:5.2f} {bar(v)}")

        # One number by hand: uncond = 0.20, cond = 0.30, w = 7.5
        print("one number: 0.20 + 7.5 x (0.30 - 0.20) =", round(guide(0.20, 0.30, 7.5), 2))

        # ── Part 2: a negative prompt takes the place of the empty prompt ──
        print("\n== Part 2: the negative prompt 'blurry' instead of the empty prompt ==")
        guided = guide(negative, your_prompt, 7.5)
        for name, v in zip(ideas, guided):
            print(f"  {name:12} {v:5.2f} {bar(v)}")

        # ── Part 3: the real shapes in NumPy. Both predictions run as one batch of 2 ──
        print("\n== Part 3: the batch shapes ==")
        np.random.seed(42)
        latent = np.random.randn(1, 4, 64, 64)            # one 64x64x4 latent
        latent_in = np.concatenate([latent] * 2)          # two copies: one per prompt
        print("U-Net input batch:", latent_in.shape)
        noise_pred = np.random.randn(2, 4, 64, 64)        # pretend U-Net output for both copies
        noise_uncond, noise_text = np.split(noise_pred, 2)
        noise_guided = guide(noise_uncond, noise_text, 7.5)
        print("guided noise:     ", noise_guided.shape)

        # ── Part 4: the same batch in PyTorch (run this part on your own computer) ──
        # On your computer: pip install torch
        print("\n== Part 4: the batch in PyTorch ==")
        try:
            import torch
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            latents = torch.randn(1, 4, 64, 64)            # one 64x64x4 latent
            latent_in = torch.cat([latents] * 2)           # two copies: one per prompt
            print(latent_in.shape)

            # Pretend U-Net output for both copies (a real U-Net goes here)
            noise_pred = torch.randn(2, 4, 64, 64)
            noise_uncond, noise_text = noise_pred.chunk(2)
            guidance_scale = 7.5
            noise_guided = noise_uncond + guidance_scale * (noise_text - noise_uncond)
            print(noise_guided.shape)

        # ── Part 5: prompt, negative prompt and guidance scale in diffusers (run this part on your own computer) ──
        # On your computer: pip install torch diffusers transformers
        # It needs an NVIDIA GPU ("cuda") and downloads a few gigabytes of weights.
        print("\n== Part 5: guidance in diffusers ==")
        try:
            import torch
            from diffusers import StableDiffusionPipeline
        except ImportError:
            torch = None
        if torch is None or not torch.cuda.is_available():
            print("Part 5 uses PyTorch, diffusers and an NVIDIA GPU, which the browser does not have. Copy this part to your computer to run it.")
        else:
            pipe = StableDiffusionPipeline.from_pretrained(
                "stable-diffusion-v1-5/stable-diffusion-v1-5", torch_dtype=torch.float16).to("cuda")
            image = pipe("a red fox reading a book under a tree, watercolour",
                         negative_prompt="blurry, low quality",
                         guidance_scale=7.5, num_inference_steps=30).images[0]
            image.save("fox.png")                     # try guidance_scale=3 and 15 too
            print("saved fox.png")
      PYTHON
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">Samplers and Sampling Steps</h1>
        </div>
        <p class="lc-lead">The U-Net predicts the noise, but something else decides how to use that prediction. That part is the <strong>sampler</strong>. In this lesson you will compare DDPM, DDIM and Euler-style samplers. You will see how the number of steps trades quality for time. You will also learn how a <strong>seed</strong> lets you make the same picture again.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top: three tracks from noise to image with 50, 20 and 5 steps. 50 steps need 100 U-Net passes with guidance and have a toy gap of 0.014. 20 steps need 40 passes, gap 0.033. 5 steps need 10 passes, gap 0.075. Bottom: seed 42 makes start noise A, which a DDIM sampler with 20 steps turns into picture A. Seed 7 makes start noise B and picture B.">
            <defs><marker id="ti14a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="130" y="24" font-size="11" fill="#9b99b8">pure noise</text>
              <text x="530" y="24" font-size="11" fill="#9b99b8">finished picture</text>
              <text x="20" y="54" text-anchor="start" font-weight="700">50 steps</text>
              <line x1="130" y1="50" x2="530" y2="50" stroke="#4b4a78" stroke-width="2"/>
              <g fill="#10b981">
                <circle cx="130" cy="50" r="2.5"/><circle cx="138.2" cy="50" r="2.5"/><circle cx="146.3" cy="50" r="2.5"/><circle cx="154.5" cy="50" r="2.5"/><circle cx="162.7" cy="50" r="2.5"/><circle cx="170.8" cy="50" r="2.5"/><circle cx="179" cy="50" r="2.5"/><circle cx="187.1" cy="50" r="2.5"/><circle cx="195.3" cy="50" r="2.5"/><circle cx="203.5" cy="50" r="2.5"/>
                <circle cx="211.6" cy="50" r="2.5"/><circle cx="219.8" cy="50" r="2.5"/><circle cx="228" cy="50" r="2.5"/><circle cx="236.1" cy="50" r="2.5"/><circle cx="244.3" cy="50" r="2.5"/><circle cx="252.4" cy="50" r="2.5"/><circle cx="260.6" cy="50" r="2.5"/><circle cx="268.8" cy="50" r="2.5"/><circle cx="276.9" cy="50" r="2.5"/><circle cx="285.1" cy="50" r="2.5"/>
                <circle cx="293.3" cy="50" r="2.5"/><circle cx="301.4" cy="50" r="2.5"/><circle cx="309.6" cy="50" r="2.5"/><circle cx="317.8" cy="50" r="2.5"/><circle cx="325.9" cy="50" r="2.5"/><circle cx="334.1" cy="50" r="2.5"/><circle cx="342.2" cy="50" r="2.5"/><circle cx="350.4" cy="50" r="2.5"/><circle cx="358.6" cy="50" r="2.5"/><circle cx="366.7" cy="50" r="2.5"/>
                <circle cx="374.9" cy="50" r="2.5"/><circle cx="383.1" cy="50" r="2.5"/><circle cx="391.2" cy="50" r="2.5"/><circle cx="399.4" cy="50" r="2.5"/><circle cx="407.6" cy="50" r="2.5"/><circle cx="415.7" cy="50" r="2.5"/><circle cx="423.9" cy="50" r="2.5"/><circle cx="432" cy="50" r="2.5"/><circle cx="440.2" cy="50" r="2.5"/><circle cx="448.4" cy="50" r="2.5"/>
                <circle cx="456.5" cy="50" r="2.5"/><circle cx="464.7" cy="50" r="2.5"/><circle cx="472.9" cy="50" r="2.5"/><circle cx="481" cy="50" r="2.5"/><circle cx="489.2" cy="50" r="2.5"/><circle cx="497.3" cy="50" r="2.5"/><circle cx="505.5" cy="50" r="2.5"/><circle cx="513.7" cy="50" r="2.5"/><circle cx="521.8" cy="50" r="2.5"/><circle cx="530" cy="50" r="2.5"/>
              </g>
              <text x="550" y="47" text-anchor="start">100 U-Net passes</text>
              <text x="550" y="64" text-anchor="start" font-size="11" fill="#9b99b8">toy gap 0.014: very close</text>
              <text x="20" y="104" text-anchor="start" font-weight="700">20 steps</text>
              <line x1="130" y1="100" x2="530" y2="100" stroke="#4b4a78" stroke-width="2"/>
              <g fill="#3b82f6">
                <circle cx="130" cy="100" r="4"/><circle cx="151.1" cy="100" r="4"/><circle cx="172.1" cy="100" r="4"/><circle cx="193.2" cy="100" r="4"/><circle cx="214.2" cy="100" r="4"/><circle cx="235.3" cy="100" r="4"/><circle cx="256.3" cy="100" r="4"/><circle cx="277.4" cy="100" r="4"/><circle cx="298.4" cy="100" r="4"/><circle cx="319.5" cy="100" r="4"/>
                <circle cx="340.5" cy="100" r="4"/><circle cx="361.6" cy="100" r="4"/><circle cx="382.6" cy="100" r="4"/><circle cx="403.7" cy="100" r="4"/><circle cx="424.7" cy="100" r="4"/><circle cx="445.8" cy="100" r="4"/><circle cx="466.8" cy="100" r="4"/><circle cx="487.9" cy="100" r="4"/><circle cx="508.9" cy="100" r="4"/><circle cx="530" cy="100" r="4"/>
              </g>
              <text x="550" y="97" text-anchor="start">40 U-Net passes</text>
              <text x="550" y="114" text-anchor="start" font-size="11" fill="#9b99b8">toy gap 0.033: close</text>
              <text x="20" y="154" text-anchor="start" font-weight="700">5 steps</text>
              <line x1="130" y1="150" x2="530" y2="150" stroke="#4b4a78" stroke-width="2"/>
              <g fill="#f59e0b">
                <circle cx="130" cy="150" r="5"/><circle cx="230" cy="150" r="5"/><circle cx="330" cy="150" r="5"/><circle cx="430" cy="150" r="5"/><circle cx="530" cy="150" r="5"/>
              </g>
              <text x="550" y="147" text-anchor="start">10 U-Net passes</text>
              <text x="550" y="164" text-anchor="start" font-size="11" fill="#9b99b8">toy gap 0.075: rough</text>
              <line x1="20" y1="185" x2="740" y2="185" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="20" y="210" text-anchor="start" font-size="12" fill="#9b99b8">The seed picks the starting noise. Same seed and same settings give the same picture.</text>
              <rect x="20" y="226" width="110" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="75" y="250">seed 42</text>
              <rect x="175" y="226" width="150" height="38" rx="8" fill="#27274e" stroke="#4b4a78"/><text x="250" y="250">start noise A</text>
              <rect x="370" y="226" width="170" height="38" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="455" y="250">DDIM, 20 steps</text>
              <rect x="585" y="226" width="155" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="662" y="250">picture A</text>
              <rect x="20" y="280" width="110" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="75" y="304">seed 7</text>
              <rect x="175" y="280" width="150" height="38" rx="8" fill="#27274e" stroke="#4b4a78"/><text x="250" y="304">start noise B</text>
              <rect x="370" y="280" width="170" height="38" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="455" y="304">DDIM, 20 steps</text>
              <rect x="585" y="280" width="155" height="38" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="662" y="304">picture B (new)</text>
              <line x1="130" y1="245" x2="171" y2="245" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti14a)"/>
              <line x1="325" y1="245" x2="366" y2="245" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti14a)"/>
              <line x1="540" y1="245" x2="581" y2="245" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti14a)"/>
              <line x1="130" y1="299" x2="171" y2="299" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti14a)"/>
              <line x1="325" y1="299" x2="366" y2="299" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti14a)"/>
              <line x1="540" y1="299" x2="581" y2="299" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti14a)"/>
            </g>
          </svg>
          <figcaption>Top: more steps cost more U-Net passes (two per step with guidance), but the gain gets smaller. The gaps come from Part 1 of the code editor. Bottom: the seed decides the starting noise.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a sampler does</h3>
          <p>Earlier in this course you saw the reverse process. At each step, the U-Net looks at the noisy latent and predicts the noise. Then a rule uses that prediction to make a slightly cleaner latent. That rule is the <strong>sampler</strong>. In the diffusers library it is called a <strong>scheduler</strong>.</p>
          <p>The sampler also chooses <em>which</em> timesteps to visit. The model was trained on 1,000 noise levels. A sampler with 20 steps visits only 20 of them, spread from high noise down to low noise.</p>
          <p>The important point: the U-Net stays the same. You can swap the sampler without any new training.</p>
        </div>
        <div class="lc-card">
          <h3>DDPM, DDIM and Euler-style samplers</h3>
          <table class="lc-table">
            <thead><tr><th>Sampler</th><th>How it works</th><th>Typical steps</th></tr></thead>
            <tbody>
              <tr><td><strong>DDPM</strong></td><td>The original method. Each step removes some predicted noise and adds a little fresh random noise.</td><td>Designed for hundreds to 1,000. Few steps give poor pictures.</td></tr>
              <tr><td><strong>DDIM</strong></td><td>Adds no fresh noise. It can jump over many timesteps at once. The same start noise always gives the same picture.</td><td>About 20 to 50</td></tr>
              <tr><td><strong>Euler</strong></td><td>Treats denoising like walking down a slope. At each step it checks the direction and takes one straight step.</td><td>About 20 to 50</td></tr>
              <tr><td><strong>Euler a</strong> (ancestral)</td><td>Euler steps plus fresh noise each step, like DDPM. The picture changes when you change the step count.</td><td>About 20 to 40</td></tr>
              <tr><td><strong>DPM-Solver++</strong></td><td>Uses the predictions from earlier steps to take smarter steps.</td><td>Often about 20</td></tr>
            </tbody>
          </table>
          <p>DDIM has a setting called <strong>eta</strong>. With eta = 0 there is no randomness. With eta = 1 it behaves like DDPM.</p>
          <p>Tools give samplers slightly different names, such as "Euler a" or "DPM++ 2M". In diffusers you swap the scheduler with one line. Part 4 in the code editor below does this. It needs a GPU and the model download, so it runs only on your own computer.</p>
          <p>Other schedulers, like <code>DDIMScheduler</code> and <code>EulerDiscreteScheduler</code>, swap in the same way. New samplers appear often, so check the diffusers docs for the current list.</p>
        </div>
        <div class="lc-card">
          <h3>Steps, quality and time</h3>
          <p>Each step runs the U-Net once. With guidance it runs twice, as you saw earlier in this course. So the time grows in a straight line with the steps. 50 steps take about 2.5 times as long as 20 steps.</p>
          <p>Quality does not grow in a straight line. The first steps make a big difference. After that the gain gets smaller and smaller. Part 1 in the code editor below measures this on a toy picture:</p>
          <table class="lc-table">
            <thead><tr><th>DDIM steps</th><th>U-Net passes (with guidance)</th><th>Gap to a 1,000-step result</th></tr></thead>
            <tbody>
              <tr><td>5</td><td>10</td><td>0.075</td></tr>
              <tr><td>20</td><td>40</td><td>0.033</td></tr>
              <tr><td>50</td><td>100</td><td>0.014</td></tr>
              <tr><td>200</td><td>400</td><td>0.003</td></tr>
            </tbody>
          </table>
          <p>Going from 50 to 200 steps makes it four times slower. The gap only shrinks from 0.014 to 0.003, which is hard to see. That is why most people use about 20 to 40 steps.</p>
        </div>
        <div class="lc-card">
          <h3>Seeds and reproducibility</h3>
          <p>A diffusion model starts from random noise. A <strong>seed</strong> is a number that fixes this "random" noise. The same seed always makes the same noise.</p>
          <p>Set seed 42 and make some noise. Set seed 42 again and make more noise. The two are exactly equal. Seed 7 gives different noise. Part 2 in the code editor below checks this with the toy sampler. Seed 42 twice gives the same picture, and seed 7 gives a new one. Part 3 does the same check with PyTorch noise, for your own computer.</p>
          <p>In diffusers you pass the seed with a generator: <code>generator=torch.Generator("cuda").manual_seed(42)</code>. To make the same picture again, keep all of these the same:</p>
          <ul class="lc-list">
            <li>the model and its version</li>
            <li>the prompt and the negative prompt</li>
            <li>the image size, the sampler, the steps and the guidance scale</li>
            <li>the seed</li>
          </ul>
          <p>Even then, a different GPU or library version can give tiny pixel changes. A good habit is to save all these settings with every picture you like.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: why did my fox change?</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Problem">Yesterday I made a lovely fox picture. Today I ran the same prompt and got a different fox.</li>
              <li data-kind="thought" data-label="Check the seed">The tool picked a random seed each time. A new seed means new starting noise, so a new picture.</li>
              <li data-kind="tool" data-label="Fix the seed">Set the seed to 42 and generate twice with the same settings.</li>
              <li data-kind="result" data-label="Result">Both pictures are exactly the same. The seed controls the starting noise.</li>
              <li data-kind="warn" data-label="Sampler changed">Now switch from DDIM to Euler a. With seed 42 the fox looks different again. A new sampler takes a different path.</li>
              <li data-kind="check" data-label="Steps changed">With Euler a, 20 steps and 30 steps also give different pictures. Fresh noise is added at every step.</li>
              <li data-kind="answer" data-label="Lesson">Save the model, prompts, size, sampler, steps, guidance and seed. Then you can make the same picture again.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Parts 1 and 2 in the code editor use a toy dataset of 8x8 "fox face" pictures. For this toy data, the best noise prediction can be worked out with maths. So you can see what the sampler and the steps change on their own. Parts 3 and 4 are for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, the DDIM gap shrinks as the steps grow. The DDPM gap does not shrink, because DDPM adds fresh noise and lands on a different picture.</li>
            <li>In Part 2, change <code>show(sample(20, seed=42))</code> to use <code>sample(3, seed=42)</code>. Compare the two pictures.</li>
            <li>In Part 1, try <code>eta=0.5</code> in the <code>ddpm</code> line. It is half way between DDIM and DDPM.</li>
            <li>In Part 2, change <code>seed=7</code> to another number. Every seed gives a new picture, but the same seed always repeats.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The sampler is the rule that turns each noise prediction into the next latent, and you can swap it without retraining. More steps cost more time in a straight line, but the quality gain gets small after about 20 to 40 steps. The seed fixes the starting noise, so the same seed and settings give the same picture.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Samplers, steps and seeds in four parts. Parts 1 and 2 use NumPy and run here.
        # Parts 3 and 4 use PyTorch and diffusers: run them on your own computer.
        # The "model" in Parts 1 and 2 is a perfect maths denoiser for a simple toy dataset,
        # so you can see what the SAMPLER and the NUMBER OF STEPS change.
        import numpy as np

        T = 1000
        betas = np.linspace(0.0001, 0.02, T)       # the usual DDPM noise schedule
        alpha_bar = np.cumprod(1 - betas)

        # The toy dataset: pictures close to this 8x8 "fox face" (values 0 to 1).
        mean_img = np.zeros((8, 8))
        mean_img[2:6, 2:6] = 0.6
        mean_img[3, 3] = mean_img[3, 4] = 1.0
        SPREAD = 0.15                               # how much real pictures vary

        def predict_x0(x, ab):
            # Best guess of the clean picture, given a noisy one at noise level ab.
            k = np.sqrt(ab) * SPREAD**2 / (ab * SPREAD**2 + 1 - ab)
            return mean_img + k * (x - np.sqrt(ab) * mean_img)

        def sample(steps, seed, eta=0.0):
            # eta = 0.0 is DDIM (no randomness). eta = 1.0 is DDPM (new noise every step).
            rng = np.random.default_rng(seed)
            ts = np.linspace(T - 1, 0, steps).astype(int)   # which timesteps we visit
            x = rng.standard_normal((8, 8))                 # the seed fixes this start noise
            for i, t in enumerate(ts):
                ab = alpha_bar[t]
                x0 = predict_x0(x, ab)
                eps = (x - np.sqrt(ab) * x0) / np.sqrt(1 - ab)   # the predicted noise
                ab_next = alpha_bar[ts[i + 1]] if i + 1 < steps else 1.0
                sigma = eta * np.sqrt((1 - ab_next) / (1 - ab) * (1 - ab / ab_next))
                fresh = rng.standard_normal((8, 8))         # new random noise (used if eta > 0)
                x = np.sqrt(ab_next) * x0 + np.sqrt(1 - ab_next - sigma**2) * eps + sigma * fresh
            return x

        def show(img):
            chars = " .:-=+*#%@"
            for row in np.clip(img, 0, 1):
                print("  " + "".join(chars[int(v * 9)] * 2 for v in row))

        # ── Part 1: steps, quality and time for DDIM and DDPM ──
        print("== Part 1: more steps, smaller gap ==")
        reference = sample(1000, seed=42)
        print("Steps  U-Net passes  DDIM gap  DDPM gap   (gap = distance to 1000-step DDIM)")
        for steps in [2, 5, 10, 20, 50, 200]:
            ddim = np.abs(sample(steps, seed=42) - reference).mean()
            ddpm = np.abs(sample(steps, seed=42, eta=1.0) - reference).mean()
            print(f"{steps:5}  {steps * 2:12}  {ddim:8.3f}  {ddpm:8.3f}")   # x2: guidance

        # ── Part 2: seeds make pictures repeatable ──
        print("\n== Part 2: seeds ==")
        print("DDIM-style, 20 steps, seed 42:")
        show(sample(20, seed=42))
        print("Same settings again, seed 42. Same picture?",
              np.allclose(sample(20, seed=42), sample(20, seed=42)))
        print("Seed 7 gives a new picture. Difference:",
              round(np.abs(sample(20, seed=7) - sample(20, seed=42)).mean(), 3))

        # ── Part 3: seeds in PyTorch (run this part on your own computer) ──
        # On your computer: pip install torch
        print("\n== Part 3: seeds in PyTorch ==")
        try:
            import torch
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            a = torch.randn(1, 4, 64, 64)
            torch.manual_seed(42)
            b = torch.randn(1, 4, 64, 64)
            torch.manual_seed(7)
            c = torch.randn(1, 4, 64, 64)
            print(torch.equal(a, b), torch.equal(a, c))   # True False

        # ── Part 4: swap the sampler in diffusers (run this part on your own computer) ──
        # On your computer: pip install torch diffusers transformers
        # It needs an NVIDIA GPU ("cuda") and downloads a few gigabytes of weights.
        print("\n== Part 4: swap the scheduler in diffusers ==")
        try:
            import torch
            from diffusers import StableDiffusionPipeline, DPMSolverMultistepScheduler
        except ImportError:
            torch = None
        if torch is None or not torch.cuda.is_available():
            print("Part 4 uses PyTorch, diffusers and an NVIDIA GPU, which the browser does not have. Copy this part to your computer to run it.")
        else:
            pipe = StableDiffusionPipeline.from_pretrained(
                "stable-diffusion-v1-5/stable-diffusion-v1-5", torch_dtype=torch.float16).to("cuda")
            print(pipe.scheduler)    # see which sampler the pipeline uses now
            pipe.scheduler = DPMSolverMultistepScheduler.from_config(pipe.scheduler.config)
            generator = torch.Generator("cuda").manual_seed(42)
            image = pipe("a red fox reading a book under a tree, watercolour",
                         num_inference_steps=20, generator=generator).images[0]
            image.save("fox_dpm.png")
            print("saved fox_dpm.png")
      PYTHON
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">Image-to-Image and Inpainting</h1>
        </div>
        <p class="lc-lead">So far, every picture started from pure noise. But you can also start from a picture you already have. This is <strong>image-to-image</strong>. You can also repaint just one part of a picture. This is <strong>inpainting</strong>. In this lesson you will learn the <strong>strength</strong> setting, how masks work, and how to make a picture bigger with outpainting.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="Top: three bars show how far into the noise image-to-image jumps. Strength 0.3 runs 15 of 50 steps and keeps the layout and colours. Strength 0.75 runs 37 of 50 steps and keeps only the rough layout. Strength 1.0 runs all 50 steps and the start image is almost gone. Bottom: a start image with a bright line, plus a mask whose left half is white, gives a result where the left half is repainted with part of a face and the right half of the line is kept.">
            <defs><marker id="ti15a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Image-to-image: strength sets how far into the noise you jump</text>
              <text x="130" y="44" text-anchor="start" font-size="11" fill="#9b99b8">start image (t = 0)</text>
              <text x="530" y="44" text-anchor="end" font-size="11" fill="#9b99b8">pure noise (t = 1000)</text>
              <text x="20" y="69" text-anchor="start" font-weight="700">strength 0.3</text>
              <rect x="130" y="54" width="400" height="22" rx="5" fill="#27274e"/>
              <rect x="130" y="54" width="120" height="22" rx="5" fill="#10b981" opacity="0.8"/>
              <text x="548" y="66" text-anchor="start">15 of 50 steps run</text>
              <text x="548" y="82" text-anchor="start" font-size="11" fill="#9b99b8">layout and colours kept</text>
              <text x="20" y="111" text-anchor="start" font-weight="700">strength 0.75</text>
              <rect x="130" y="96" width="400" height="22" rx="5" fill="#27274e"/>
              <rect x="130" y="96" width="300" height="22" rx="5" fill="#f59e0b" opacity="0.8"/>
              <text x="548" y="108" text-anchor="start">37 of 50 steps run</text>
              <text x="548" y="124" text-anchor="start" font-size="11" fill="#9b99b8">only the rough layout kept</text>
              <text x="20" y="153" text-anchor="start" font-weight="700">strength 1.0</text>
              <rect x="130" y="138" width="400" height="22" rx="5" fill="#ec4899" opacity="0.8"/>
              <text x="548" y="150" text-anchor="start">50 of 50 steps run</text>
              <text x="548" y="166" text-anchor="start" font-size="11" fill="#9b99b8">start image almost gone</text>
              <line x1="20" y1="182" x2="740" y2="182" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="20" y="202" text-anchor="start" font-size="12" fill="#9b99b8">Inpainting: the mask says where to repaint</text>
              <rect x="90" y="212" width="96" height="96" fill="#22222e"/>
              <rect x="90" y="260" width="12" height="12" fill="#e8e8f4"/><rect x="102" y="260" width="12" height="12" fill="#e8e8f4"/><rect x="114" y="260" width="12" height="12" fill="#e8e8f4"/><rect x="126" y="260" width="12" height="12" fill="#e8e8f4"/>
              <rect x="138" y="260" width="12" height="12" fill="#e8e8f4"/><rect x="150" y="260" width="12" height="12" fill="#e8e8f4"/><rect x="162" y="260" width="12" height="12" fill="#e8e8f4"/><rect x="174" y="260" width="12" height="12" fill="#e8e8f4"/>
              <rect x="90" y="212" width="96" height="96" fill="none" stroke="#9b99b8"/>
              <rect x="330" y="212" width="96" height="96" fill="#22222e"/>
              <rect x="330" y="212" width="48" height="96" fill="#ffffff"/>
              <rect x="330" y="212" width="96" height="96" fill="none" stroke="#9b99b8"/>
              <rect x="590" y="212" width="96" height="96" fill="#22222e"/>
              <rect x="614" y="236" width="12" height="12" fill="#a5a5b1"/><rect x="626" y="236" width="12" height="12" fill="#a5a5b1"/><rect x="614" y="248" width="12" height="12" fill="#a5a5b1"/><rect x="626" y="248" width="12" height="12" fill="#fdfdff"/>
              <rect x="614" y="260" width="12" height="12" fill="#a7a7b3"/><rect x="626" y="260" width="12" height="12" fill="#a7a7b3"/><rect x="638" y="260" width="12" height="12" fill="#e8e8f4"/><rect x="650" y="260" width="12" height="12" fill="#e8e8f4"/>
              <rect x="662" y="260" width="12" height="12" fill="#e8e8f4"/><rect x="674" y="260" width="12" height="12" fill="#e8e8f4"/><rect x="614" y="272" width="12" height="12" fill="#a5a5b1"/><rect x="626" y="272" width="12" height="12" fill="#a5a5b1"/>
              <rect x="590" y="212" width="96" height="96" fill="none" stroke="#9b99b8"/>
              <text x="258" y="267" font-size="28" fill="#9b99b8">+</text>
              <line x1="446" y1="260" x2="566" y2="260" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti15a)"/>
              <text x="506" y="250" font-size="11" fill="#9b99b8">prompt + model</text>
              <text x="138" y="330">start image</text>
              <text x="378" y="330">mask (white = repaint)</text>
              <text x="638" y="330">result</text>
            </g>
          </svg>
          <figcaption>Top: the bar shows how much noise is added before denoising starts. Bottom: toy 8x8 pictures from Parts 2 and 3 of the code editor. Only the white part of the mask changes.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Image-to-image: start from a picture</h3>
          <p>In normal text-to-image, the first latent is pure noise. In <strong>image-to-image</strong> (often called img2img), you give the model a start picture, such as a rough sketch or a photo. It works like this:</p>
          <ol class="lc-list">
            <li>The VAE encoder turns your picture into a latent. A 512x512 picture becomes a 64x64x4 latent.</li>
            <li>The pipeline adds noise to that latent, using the forward process from earlier in this course.</li>
            <li>The sampler runs the remaining denoising steps with your prompt.</li>
            <li>The VAE decoder turns the final latent back into a picture.</li>
          </ol>
          <p>The trick is in step 2. The model does not start at pure noise. It starts part of the way, so some of your picture survives.</p>
        </div>
        <div class="lc-card">
          <h3>The strength setting</h3>
          <p><strong>Strength</strong> is a number from 0 to 1. It says how far into the noise process to jump. In diffusers, the steps that really run are <code>int(num_inference_steps × strength)</code>.</p>
          <p>A worked example: you ask for 50 steps with strength 0.75. 50 × 0.75 = 37.5, so 37 steps run. The pipeline noises your picture to about three quarters of the way, then denoises from there.</p>
          <table class="lc-table">
            <thead><tr><th>Strength</th><th>Steps run (of 50)</th><th>Start signal kept (toy schedule)</th><th>What you get</th></tr></thead>
            <tbody>
              <tr><td>0.1</td><td>5</td><td>95%</td><td>Almost the same picture, small touch-ups</td></tr>
              <tr><td>0.3</td><td>15</td><td>63%</td><td>Same layout and colours, new texture and style</td></tr>
              <tr><td>0.5</td><td>25</td><td>28%</td><td>Same rough shapes, many new details</td></tr>
              <tr><td>0.75</td><td>37</td><td>6%</td><td>Only the rough layout stays</td></tr>
              <tr><td>1.0</td><td>50</td><td>1%</td><td>Almost a brand-new picture</td></tr>
            </tbody>
          </table>
          <p>The "kept" column is <code>sqrt(alpha_bar)</code> from the noise schedule. These numbers come from the toy schedule in Part 1 of the code editor. Stable Diffusion uses a gentler schedule, so its real numbers are higher. The pattern is the same: higher strength means less of your picture and more of the prompt.</p>
          <p>Part 4 in the code editor below runs image-to-image in diffusers. It needs a GPU, the model download and your own picture file, so it runs only on your own computer.</p>
          <p>This turns your rough sketch into a watercolour fox with the same layout. Try strength 0.4 and 0.8 to see the difference. PyTorch does not run in the browser, so Parts 4 and 5 print a short message there. Parts 1 to 3 run a NumPy version of strength and masks.</p>
        </div>
        <div class="lc-card">
          <h3>Inpainting: repaint one part</h3>
          <p><strong>Inpainting</strong> changes only part of a picture. You give the model a <strong>mask</strong>: a black and white picture of the same size. White means "repaint this". Black means "keep this".</p>
          <p>Say the fox picture is perfect, but you want an apple instead of the book. You paint the book area white in the mask. Then you prompt: <code>a red fox holding a green apple, watercolour</code>.</p>
          <p>There are two common ways to do it:</p>
          <ul class="lc-list">
            <li><strong>Blending with a normal model:</strong> after every step, the kept area is replaced by your original picture, noised to the same level. Only the white area is really generated.</li>
            <li><strong>A special inpainting model:</strong> its U-Net gets 9 input channels instead of 4. These are the 4 latent channels, 4 channels of the masked picture and 1 channel for the mask. It sees the whole scene, so its edges usually blend better.</li>
          </ul>
          <p>In diffusers, inpainting works like image-to-image, and Part 5 in the code editor below does it. You load <code>AutoPipelineForInpainting</code> with an inpainting model, such as <code>stable-diffusion-v1-5/stable-diffusion-inpainting</code>. Then you pass the fox picture as <code>image</code> and your mask as <code>mask_image</code>, with the apple prompt.</p>
          <p>Make the mask a little bigger than the object. This gives the model room to blend the edges. Model names on Hugging Face can move, so check the model page before you run it.</p>
        </div>
        <div class="lc-card">
          <h3>Outpainting: make the picture bigger</h3>
          <p><strong>Outpainting</strong> adds new picture outside the old edges. It is inpainting on a bigger canvas:</p>
          <ol class="lc-list">
            <li>Make a bigger empty canvas, for example 768x512 instead of 512x512.</li>
            <li>Put your picture on it, for example on the left side.</li>
            <li>Make a mask that is white over the new empty area and black over your picture.</li>
            <li>Inpaint with a prompt for the whole scene, such as <code>a red fox reading under a tree, a river in the distance, watercolour</code>.</li>
          </ol>
          <p>You can repeat this to keep extending the scene. Use some overlap with the old picture, so the model can match colours and lines.</p>
          <p>A word on responsible use: editing photos of real people can mislead others. Only edit photos of people who have agreed to it, and do not present edited photos as real.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: inpaint the apple</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in order to replace the book with an apple, using the blending method.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Paint a mask: white over the book, black everywhere else</li>
              <li data-order="2">Encode the fox picture into a 64x64x4 latent and shrink the mask to 64x64</li>
              <li data-order="3">Fill the white area with random noise, as the first latent</li>
              <li data-order="4">The U-Net predicts the noise with the apple prompt, and the sampler takes one step</li>
              <li data-order="5">Put back the black area from the original latent, noised to the same level, then repeat the steps</li>
              <li data-order="6">Decode the final latent with the VAE to get the new picture</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Parts 1 to 3 in the code editor use 8x8 toy pictures. The start picture is a bright line. The toy "model" keeps the part of your picture that survives the noise and draws the rest from the prompt picture, a square face. A real model is far smarter, but the strength and mask ideas are the same. Parts 4 and 5 are for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, look at how "start kept" falls as the strength grows.</li>
            <li>In Part 2, change <code>img2img(0.3)</code> to <code>img2img(0.6)</code>. The line fades and the face takes over.</li>
            <li>In Part 3, replace the line <code>mask[:, :4] = 1</code> with <code>mask[:4, :] = 1</code>. Now the top half is repainted instead.</li>
            <li>In Part 1, add <code>0.9</code> to the list of strengths. How much of the start picture is left?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Image-to-image adds noise to your own picture and then denoises it with a prompt. The strength setting decides how much noise is added, so it trades "keep my picture" against "follow the prompt". Inpainting uses a mask to repaint only the white area, and outpainting is inpainting on a bigger canvas.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Image-to-image and inpainting in five parts. Parts 1 to 3 use NumPy and run here.
        # Parts 4 and 5 use the real models with diffusers: run them on your own computer.
        import numpy as np

        np.random.seed(42)
        T = 1000
        alpha_bar = np.cumprod(1 - np.linspace(0.0001, 0.02, T))   # noise schedule

        # Your starting picture (toy 8x8, values 0 to 1): a bright line across the middle.
        init_img = np.zeros((8, 8))
        init_img[4, :] = 0.9

        # What the toy "model" draws for the prompt: a square face.
        prompt_img = np.zeros((8, 8))
        prompt_img[2:6, 2:6] = 0.6
        prompt_img[3, 3] = prompt_img[3, 4] = 1.0

        def show(img):
            chars = " .:-=+*#%@"
            for row in np.clip(img, 0, 1):
                print("  " + "".join(chars[int(v * 9)] * 2 for v in row))

        def img2img(strength, steps=50):
            t = int(strength * (T - 1))                  # how far into the noise we jump
            keep = np.sqrt(alpha_bar[t])                 # how much of the start picture survives
            noisy = keep * init_img + np.sqrt(1 - alpha_bar[t]) * np.random.randn(8, 8)
            # Toy model: it keeps what survived the noise and draws the rest from the prompt.
            result = keep * init_img + (1 - keep) * prompt_img
            return int(steps * strength), keep, noisy, result

        # ── Part 1: the strength setting ──
        print("== Part 1: strength, steps run and start kept ==")
        print("strength  steps run  start kept")
        for s in [0.1, 0.3, 0.5, 0.75, 1.0]:
            run, keep, noisy, result = img2img(s)
            print(f"{s:8}  {run:9}  {keep:9.0%}")

        # ── Part 2: image-to-image at one strength ──
        print("\n== Part 2: image-to-image ==")
        run, keep, noisy, result = img2img(0.3)
        print("Strength 0.3: the noisy start point")
        show(noisy)
        print("Strength 0.3: the result (line kept, face added)")
        show(result)

        # ── Part 3: inpainting with a mask ──
        # White (1) in the mask = repaint, black (0) = keep.
        print("\n== Part 3: inpainting ==")
        mask = np.zeros((8, 8))
        mask[:, :4] = 1                                  # repaint the left half only
        painted = img2img(1.0)[3]
        inpainted = mask * painted + (1 - mask) * init_img
        print("Inpainting: left half repainted, right half kept")
        show(inpainted)

        # ── Part 4: image-to-image in diffusers (run this part on your own computer) ──
        # On your computer: pip install torch diffusers transformers
        # It needs an NVIDIA GPU, downloads the model and needs your own picture fox_sketch.png.
        print("\n== Part 4: image-to-image in diffusers ==")
        try:
            import os
            import torch
            from diffusers import AutoPipelineForImage2Image, AutoPipelineForInpainting
            from diffusers.utils import load_image
        except ImportError:
            torch = None
        if torch is None or not torch.cuda.is_available():
            print("Part 4 uses PyTorch, diffusers and an NVIDIA GPU, which the browser does not have. Copy this part to your computer to run it.")
        elif not os.path.exists("fox_sketch.png"):
            print("Part 4 needs your own picture called fox_sketch.png next to this script.")
        else:
            pipe = AutoPipelineForImage2Image.from_pretrained(
                "stable-diffusion-v1-5/stable-diffusion-v1-5", torch_dtype=torch.float16
            ).to("cuda")
            sketch = load_image("fox_sketch.png").resize((512, 512))
            image = pipe("a red fox reading a book under a tree, watercolour",
                         image=sketch, strength=0.6, guidance_scale=7.5).images[0]
            image.save("fox_from_sketch.png")         # try strength 0.4 and 0.8 too
            print("saved fox_from_sketch.png")

        # ── Part 5: inpainting in diffusers (run this part on your own computer) ──
        # It needs fox.png and a mask book_mask.png: white over the book, black elsewhere.
        print("\n== Part 5: inpainting in diffusers ==")
        if torch is None or not torch.cuda.is_available():
            print("Part 5 uses PyTorch, diffusers and an NVIDIA GPU, which the browser does not have. Copy this part to your computer to run it.")
        elif not (os.path.exists("fox.png") and os.path.exists("book_mask.png")):
            print("Part 5 needs your own fox.png and book_mask.png next to this script.")
        else:
            pipe = AutoPipelineForInpainting.from_pretrained(
                "stable-diffusion-v1-5/stable-diffusion-inpainting", torch_dtype=torch.float16
            ).to("cuda")
            fox = load_image("fox.png")
            mask = load_image("book_mask.png")   # white over the book, black elsewhere
            image = pipe("a red fox holding a green apple, watercolour",
                         image=fox, mask_image=mask).images[0]
            image.save("fox_with_apple.png")
            print("saved fox_with_apple.png")
      PYTHON
    },
    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">ControlNet</h1>
        </div>
        <p class="lc-lead">A prompt says <em>what</em> to draw. It is bad at saying exactly <em>where</em> things go. <strong>ControlNet</strong> adds a second input: a picture that sets the shape, such as an edge map, a body pose or a depth map. The model still follows your prompt, but now it also follows that layout. In this lesson, you will learn what ControlNet adds to Stable Diffusion and why it trains safely.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The normal Stable Diffusion U-Net runs along the top: noisy latent and prompt go into the encoder, the middle block and the decoder, which predicts the noise. The U-Net is frozen. Along the bottom, an edge map goes into a trainable copy of the encoder. Its output passes through a zero convolution and is added into the U-Net's skip connections and middle block.">
            <defs><marker id="ti16a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Frozen U-Net (not changed by ControlNet training)</text>
              <rect x="10" y="45" width="150" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="85" y="68">noisy latent</text>
              <text x="85" y="88" font-size="11.5" fill="#9b99b8">+ prompt</text>
              <line x1="162" y1="73" x2="196" y2="73" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti16a)"/>
              <rect x="200" y="45" width="130" height="56" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="265" y="78">encoder</text>
              <line x1="332" y1="73" x2="356" y2="73" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti16a)"/>
              <rect x="360" y="45" width="100" height="56" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="410" y="78">middle</text>
              <line x1="462" y1="73" x2="486" y2="73" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti16a)"/>
              <rect x="490" y="45" width="130" height="56" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="555" y="78">decoder</text>
              <line x1="622" y1="73" x2="646" y2="73" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti16a)"/>
              <rect x="650" y="45" width="100" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="700" y="68">predicted</text>
              <text x="700" y="88">noise</text>
              <path d="M265,44 Q410,0 555,44" fill="none" stroke="#4b4a78" stroke-width="1.5" stroke-dasharray="4 3"/>
              <text x="410" y="40" font-size="11" fill="#9b99b8">skip connections</text>
              <rect x="10" y="200" width="150" height="80" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <rect x="55" y="212" width="60" height="38" fill="none" stroke="#fcd34d" stroke-width="1.5"/>
              <path d="M62,250 L85,222 L108,250" fill="none" stroke="#fcd34d" stroke-width="1.5"/>
              <text x="85" y="270" font-size="11.5" fill="#fcd34d">edge map</text>
              <line x1="162" y1="240" x2="196" y2="240" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti16a)"/>
              <rect x="200" y="210" width="150" height="60" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="275" y="235" fill="#6ee7b7">trainable copy</text>
              <text x="275" y="255" fill="#6ee7b7">of the encoder</text>
              <line x1="352" y1="240" x2="386" y2="240" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti16a)"/>
              <rect x="390" y="215" width="130" height="50" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="455" y="236" fill="#67e8f9">zero conv</text>
              <text x="455" y="254" font-size="11" fill="#9b99b8">starts at 0</text>
              <path d="M455,213 L455,170 L410,170 L410,107" fill="none" stroke="#22d3ee" stroke-width="1.5" marker-end="url(#ti16a)"/>
              <path d="M455,170 L555,170 L555,107" fill="none" stroke="#22d3ee" stroke-width="1.5" marker-end="url(#ti16a)"/>
              <text x="396" y="134" font-size="18" font-weight="700" fill="#67e8f9">+</text>
              <text x="541" y="134" font-size="18" font-weight="700" fill="#67e8f9">+</text>
              <text x="640" y="160" font-size="11.5" fill="#9b99b8">added to the middle</text>
              <text x="640" y="178" font-size="11.5" fill="#9b99b8">and skip connections</text>
              <text x="640" y="235" font-size="11.5" fill="#9b99b8">Only the green and blue</text>
              <text x="640" y="253" font-size="11.5" fill="#9b99b8">parts are trained</text>
            </g>
          </svg>
          <figcaption>ControlNet sits beside a frozen Stable Diffusion U-Net. A trainable copy of the encoder reads the condition image. Zero convolutions add its signal into the U-Net.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why prompts are not enough</h3>
          <p>Try to describe an exact layout in words, such as "a fox on the left with its tail to the right". The model will often ignore some of it. Text is a weak way to give positions and shapes.</p>
          <p>A picture is a much better way. A <strong>condition image</strong> is an extra image that tells the model the layout. ControlNet reads this image at every denoising step. So the shape stays fixed while the prompt chooses colours, style and details.</p>
          <p>For example, keep our running prompt, "a red fox reading a book under a tree, watercolour". Add an edge map of a sitting fox. Every seed now gives a fox in the same pose, in the same place.</p>
        </div>
        <div class="lc-card">
          <h3>Common kinds of condition</h3>
          <p>Each ControlNet model is trained for one kind of condition image. You pick the one that matches what you want to keep.</p>
          <table class="lc-table">
            <thead><tr><th>Condition</th><th>What it looks like</th><th>What it keeps</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>Edges (Canny)</td><td>White lines on black</td><td>Outlines and shapes</td><td>Turning a sketch or photo into a new style</td></tr>
              <tr><td>Pose (OpenPose)</td><td>A stick figure skeleton</td><td>Body and hand positions</td><td>People in an exact pose</td></tr>
              <tr><td>Depth</td><td>Grey image: near is bright, far is dark</td><td>What is near and what is far</td><td>Rooms, streets and scenes with space</td></tr>
              <tr><td>Scribble</td><td>A rough line drawing</td><td>The rough layout</td><td>Quick ideas from a few lines</td></tr>
            </tbody>
          </table>
          <p>You usually make the condition image with a small tool called a <strong>preprocessor</strong>. For example, an edge detector turns a photo into an edge map. A pose detector turns a photo of a person into a skeleton.</p>
        </div>
        <div class="lc-card">
          <h3>How it works: a copy and zero convolutions</h3>
          <p>ControlNet does not retrain Stable Diffusion. It keeps the U-Net <strong>frozen</strong>, which means its weights never change. Then it adds two new parts:</p>
          <ol class="lc-list">
            <li><strong>A trainable copy of the U-Net encoder.</strong> It starts with the same weights as the real encoder. It reads the condition image and learns what the layout means.</li>
            <li><strong>Zero convolutions.</strong> These are small 1×1 convolution layers. Their weights and bias start at exactly 0. They connect the copy to the frozen U-Net.</li>
          </ol>
          <p>The output of each zero convolution is <strong>added</strong> to the U-Net's skip connections and middle block. At the start of training, every zero convolution outputs 0. So the U-Net works exactly as before. Nothing breaks.</p>
          <p>During training, the zero convolution weights slowly grow. The ControlNet signal gets stronger only as far as it helps. This is why ControlNet can train well on fairly small datasets without damaging the original model.</p>
          <p>Part 2 in the code editor below builds a zero convolution in NumPy. Part 3 builds the same thing in PyTorch, with <code>nn.Conv2d</code> and its weight and bias set to 0. Run Part 3 on your own computer, because PyTorch does not run in the browser.</p>
          <p>Whatever features go in, every value that comes out is 0. In Part 3, a 1×4×64×64 input gives a 1×4×64×64 output, and its largest value is 0.0. Training will change these weights later.</p>
        </div>
        <div class="lc-card">
          <h3>Using ControlNet in code</h3>
          <p>The Hugging Face <code>diffusers</code> library has a ControlNet pipeline. It needs a GPU and downloads several gigabytes of model files. So it cannot run in the browser.</p>
          <p>You load a ControlNet model, such as one trained on Canny edges, with <code>ControlNetModel</code>. Then you pass it to <code>StableDiffusionControlNetPipeline</code>. When you call the pipeline, you give it a prompt and an edge map as <code>image</code>. The result is one image that follows the outlines of the edge map. Part 4 in the code editor below has the full code. Model names change over time, so check the current diffusers docs.</p>
          <p>The setting <code>controlnet_conditioning_scale</code> controls how strictly the layout is followed. A value of 1.0 follows it closely. A lower value, such as 0.5, gives the model more freedom. In the editor, <code>SCALE</code> plays the same part.</p>
          <p>You can also use more than one ControlNet at once, for example pose and depth together.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which condition should you use?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Put each job in the bucket of the condition image that fits it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="edges" data-label="Edges (Canny)"></div>
              <div data-sorter-target="bucket" data-bucket="pose" data-label="Pose (OpenPose)"></div>
              <div data-sorter-target="bucket" data-bucket="depth" data-label="Depth map"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="edges" data-why="An edge map keeps the exact outlines of the logo, so only colours and style change.">Redraw a company logo in a watercolour style, keeping its exact outline</li>
              <li data-bucket="pose" data-why="A pose skeleton fixes where the arms, legs and head go, but not the clothes or face.">Draw a dancer with her arms in exactly the same position as a reference photo</li>
              <li data-bucket="depth" data-why="A depth map keeps what is near and what is far, so the room keeps its space.">Turn a photo of an empty kitchen into a cosy cottage kitchen with the same layout</li>
              <li data-bucket="edges" data-why="A line sketch is already like an edge map. ControlNet fills it in.">Colour in a pencil sketch of a fox under a tree</li>
              <li data-bucket="pose" data-why="The same skeleton gives the same pose for every character.">Make five different cartoon characters all standing in the same pose</li>
              <li data-bucket="depth" data-why="Depth keeps the street going into the distance without fixing every small outline.">Change a street scene from summer to snowy winter but keep the sense of distance</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has four parts. Part 1 makes an 8×8 picture and its edge map. Part 2 sends it through a zero convolution. Parts 3 and 4 use PyTorch and diffusers, so they only print a message in the browser.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, check that the zero convolution adds 0 before training.</li>
            <li>In Part 1, change the picture. For example, add <code>image[1:7, 3:5] = 1.0</code> after the square. Watch the edge map change.</li>
            <li>At the top, change <code>SCALE</code> to <code>0.2</code>. In Part 2, the edge signal in the last picture becomes weaker than the U-Net noise.</li>
            <li>In Part 2, add <code>0.4</code> to the list of weights in the loop. Which value does it add?</li>
            <li>On your own computer with PyTorch, run Part 3. Check that the largest output value is 0.0.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> ControlNet adds a layout picture as an extra condition. A trainable copy of the encoder reads it, and zero convolutions add its signal to a frozen U-Net, starting from exactly nothing.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # ControlNet, simplified: turn a picture into an edge map (the "condition"),
        # then add it to the U-Net through a zero convolution.
        import numpy as np

        np.random.seed(42)
        CHARS = " .:-=+*#%@"          # dark to bright
        SCALE = 1.0                   # like controlnet_conditioning_scale

        def show(title, img):
            print(title)
            lo, hi = img.min(), img.max()
            scaled = (img - lo) / (hi - lo + 1e-9)          # now 0 to 1
            for row in scaled:
                print("  " + "".join(CHARS[round(v * 9)] * 2 for v in row))
            print()

        # ── Part 1: a picture and its edge map (the condition image) ──
        print("== Part 1: a picture and its edge map ==")

        # An 8x8 grayscale picture: a bright square on a dark background
        image = np.zeros((8, 8))
        image[2:6, 2:6] = 1.0
        show("Original picture:", image)

        # Edge map: a bright pixel that touches a dark pixel is an edge
        p = np.pad(image, 1)
        touches_dark = (p[:-2, 1:-1] < image) | (p[2:, 1:-1] < image) | (p[1:-1, :-2] < image) | (p[1:-1, 2:] < image)
        edges = touches_dark.astype(float)
        show("Edge map (the condition image):", edges)
        print("Edge pixels:", int(edges.sum()), "of", edges.size)

        # ── Part 2: a zero convolution in NumPy ──
        print("\n== Part 2: a zero convolution in NumPy ==")

        # A zero convolution: a 1x1 layer whose weight and bias start at 0
        features = edges * 0.8                       # pretend features from the ControlNet copy
        unet = np.random.rand(8, 8) * 0.1            # pretend features inside the frozen U-Net

        weight, bias = 0.0, 0.0
        added = weight * features + bias
        print("Before training, largest value added:", added.max())
        print("So at the start, the U-Net works exactly as before.\n")

        # Training slowly makes the weight bigger
        for weight in [0.1, 0.5, 1.0]:
            added = SCALE * (weight * features + bias)
            print(f"weight {weight:.1f}: largest value added = {added.max():.2f}")

        combined = unet + added
        show("\nU-Net features after adding the edge signal:", combined)

        # ── Part 3: a zero convolution in PyTorch (run this part on your own computer) ──
        print("== Part 3: a zero convolution in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            zero_conv = nn.Conv2d(4, 4, kernel_size=1)   # a 1x1 convolution
            nn.init.zeros_(zero_conv.weight)             # all weights start at 0
            nn.init.zeros_(zero_conv.bias)               # bias starts at 0

            torch.manual_seed(42)
            x = torch.randn(1, 4, 64, 64)                # features from the ControlNet copy
            out = zero_conv(x)
            print(out.shape)
            print(out.abs().max().item())

        # ── Part 4: ControlNet with diffusers (run this part on a computer with a GPU) ──
        # pip install torch diffusers transformers accelerate
        # You also need an edge map saved as fox_edges.png. The first run downloads several gigabytes.
        print("\n== Part 4: ControlNet with diffusers ==")
        try:
            import torch
            from diffusers import ControlNetModel, StableDiffusionControlNetPipeline
            from diffusers.utils import load_image
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch and diffusers, which do not run in the browser. Copy this part to your computer to run it.")
        elif not torch.cuda.is_available():
            print("Part 4 needs a GPU with CUDA, for example Google Colab with a GPU.")
        else:
            controlnet = ControlNetModel.from_pretrained(
                "lllyasviel/sd-controlnet-canny", torch_dtype=torch.float16)
            pipe = StableDiffusionControlNetPipeline.from_pretrained(
                "stable-diffusion-v1-5/stable-diffusion-v1-5",
                controlnet=controlnet, torch_dtype=torch.float16).to("cuda")

            edges = load_image("fox_edges.png")      # a black and white edge map
            image = pipe(
                "a red fox reading a book under a tree, watercolour",
                image=edges,                          # the condition image
                controlnet_conditioning_scale=1.0,    # how strictly to follow it
                num_inference_steps=30,
            ).images[0]
            image.save("fox_controlnet.png")
            print("Saved fox_controlnet.png")

        # Try it: change SCALE to 0.2, or draw a new shape in Part 1, for example image[1:7, 3:5] = 1.0
      PYTHON
    },
    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">Fine-Tuning with LoRA and DreamBooth</h1>
        </div>
        <p class="lc-lead">A base model knows many styles and objects. It does not know <em>your</em> dog or <em>your</em> art style. <strong>Fine-tuning</strong> means training a model a little more on your own images. In this lesson, you will learn two popular ways to do this: <strong>LoRA</strong>, which trains a tiny add-on, and <strong>DreamBooth</strong>, which teaches the model a new subject from a few photos. You will also learn the rules about consent and copyright.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="LoRA. A big frozen weight matrix W of size 768 by 768 has 589,824 numbers. A tall matrix B of size 768 by 4 times a wide matrix A of size 4 by 768 has 6,144 numbers. W plus B times A gives the adapted weights W prime.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="40" width="160" height="160" rx="6" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="100" y="115" font-size="22" font-weight="700" fill="#c4b5fd">W</text>
              <text x="100" y="140" font-size="11.5" fill="#9b99b8">768 × 768</text>
              <text x="100" y="225">589,824 numbers</text>
              <text x="100" y="245" font-size="11.5" fill="#9b99b8">frozen</text>
              <text x="210" y="128" font-size="24" fill="#9b99b8">+</text>
              <rect x="240" y="40" width="22" height="160" rx="4" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="251" y="125" font-weight="700" fill="#6ee7b7">B</text>
              <text x="251" y="225" font-size="11.5" fill="#9b99b8">768 × 4</text>
              <text x="282" y="128" font-size="20" fill="#9b99b8">×</text>
              <rect x="300" y="109" width="160" height="22" rx="4" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="125" font-weight="700" fill="#6ee7b7">A</text>
              <text x="380" y="155" font-size="11.5" fill="#9b99b8">4 × 768</text>
              <text x="355" y="225">6,144 numbers</text>
              <text x="355" y="245" font-size="11.5" fill="#6ee7b7">trained (about 1%)</text>
              <text x="490" y="128" font-size="24" fill="#9b99b8">=</text>
              <rect x="520" y="40" width="160" height="160" rx="6" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <rect x="520" y="40" width="160" height="160" rx="6" fill="#10b981" fill-opacity="0.12"/>
              <text x="600" y="115" font-size="22" font-weight="700" fill="#f9a8d4">W′</text>
              <text x="600" y="140" font-size="11.5" fill="#9b99b8">768 × 768</text>
              <text x="600" y="225">adapted layer</text>
              <text x="600" y="245" font-size="11.5" fill="#9b99b8">W + (α / r) · B A</text>
              <text x="720" y="110" font-size="11.5" fill="#9b99b8">rank</text>
              <text x="720" y="128" font-size="11.5" fill="#9b99b8">r = 4</text>
              <text x="380" y="22" font-size="12" fill="#9b99b8">B starts at all zeros, so at first W′ = W</text>
            </g>
          </svg>
          <figcaption>LoRA keeps the big matrix W frozen. It trains two thin matrices, B and A. Their product is a small change that is added to W.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why not just train the whole model?</h3>
          <p>Stable Diffusion has around a billion numbers (parameters) in total. To train all of them, you need a big GPU and a lot of memory. Each fine-tuned copy is also a file of several gigabytes. If you want ten styles, you need ten huge files.</p>
          <p>Full fine-tuning on a few images has another problem. The model can <strong>forget</strong> things it knew before. It can also <strong>overfit</strong>, which means it copies your few training images instead of learning the idea.</p>
          <p>LoRA and DreamBooth are answers to these problems. They are often used together.</p>
        </div>
        <div class="lc-card">
          <h3>LoRA: a small low-rank add-on</h3>
          <p><strong>LoRA</strong> stands for Low-Rank Adaptation. It was first made for language models, and it works the same way for image models. It is usually added to the attention layers of the U-Net.</p>
          <p>Each layer has a weight matrix <code>W</code>. LoRA keeps <code>W</code> frozen. It adds two small matrices, <code>B</code> and <code>A</code>. The new layer uses:</p>
          <p><strong>W′ = W + (α / r) · B A</strong></p>
          <ul class="lc-list">
            <li><strong>r</strong> is the <strong>rank</strong>. It is a small number, such as 4, 8 or 16. A bigger rank can learn more, but the file is bigger.</li>
            <li><strong>α</strong> (alpha) is a scale number. It controls how strong the change is.</li>
            <li><code>B</code> starts at all zeros. So at the start, <code>B A</code> is zero and the model is unchanged.</li>
          </ul>
          <p>Now count the numbers for one 768×768 layer with rank 4:</p>
          <table class="lc-table">
            <thead><tr><th>What is trained</th><th>Sum</th><th>Numbers</th></tr></thead>
            <tbody>
              <tr><td>Full layer W</td><td>768 × 768</td><td>589,824</td></tr>
              <tr><td>LoRA B</td><td>768 × 4</td><td>3,072</td></tr>
              <tr><td>LoRA A</td><td>4 × 768</td><td>3,072</td></tr>
              <tr><td><strong>LoRA total</strong></td><td>3,072 + 3,072</td><td><strong>6,144 (about 1%)</strong></td></tr>
            </tbody>
          </table>
          <p>So a LoRA file is small. Many LoRA files are only a few megabytes, while the base model is gigabytes. You can share a style as one small file, and swap styles quickly.</p>
        </div>
        <div class="lc-card">
          <h3>LoRA in PyTorch</h3>
          <p>A LoRA layer wraps a normal linear layer and freezes it. It adds <code>A</code> with small random numbers and <code>B</code> with zeros, and multiplies their change by <code>alpha / r</code>. Part 3 in the code editor below builds this <code>LoRALinear</code> layer in PyTorch. Run it on your own computer.</p>
          <p>For a 768×768 layer with rank 4, only 6,144 numbers can be trained. The frozen part has 589,824 weights plus 768 bias values. Because <code>B</code> starts at zero, the new layer first gives the same answer as the old one.</p>
          <p>To use a LoRA someone has trained, <code>diffusers</code> can load it into a pipeline with <code>pipe.load_lora_weights(...)</code>. This needs a GPU. Part 4 in the code editor shows how.</p>
          <p>Part 1 in the code editor runs a NumPy version of LoRA training, which works in the browser. Run it to see W stay frozen while the loss falls. Part 2 counts LoRA numbers for real layer sizes.</p>
        </div>
        <div class="lc-card">
          <h3>DreamBooth: teach a new subject</h3>
          <p><strong>DreamBooth</strong> teaches the model one new subject, such as a pet, a toy or a product. You need only a few photos, often 3 to 5.</p>
          <p>Say you have a made-up dog called Biscuit. You give the model 5 photos of Biscuit. Each photo gets the same caption: <code>a photo of sks dog</code>.</p>
          <ul class="lc-list">
            <li><strong>The rare token.</strong> <code>sks</code> is a rare word that the model knows almost nothing about. So it can take on a new meaning: "Biscuit". If you used a common word, you would overwrite what the model knows about that word.</li>
            <li><strong>The class word.</strong> <code>dog</code> tells the model what kind of thing Biscuit is. The model can then use all it knows about dogs.</li>
            <li><strong>Prior preservation.</strong> During training, the model also sees ordinary "a photo of a dog" images. This stops it from thinking that <em>every</em> dog looks like Biscuit.</li>
          </ul>
          <p>After training, you can write <code>a photo of sks dog reading a book under a tree, watercolour</code>. The model draws Biscuit in a scene it never saw. DreamBooth can train the whole model, or it can train only a LoRA. DreamBooth with LoRA is a common choice, because the result is a small file. The diffusers project has example training scripts for both. Check its docs for the current options.</p>
        </div>
        <div class="lc-card">
          <h3>Consent and copyright</h3>
          <p>Fine-tuning makes it easy to copy a real person's face or an artist's style. That power needs care.</p>
          <ul class="lc-list">
            <li><strong>People:</strong> only train on photos of a real person if they have clearly agreed. Never make fake images that show real people doing things they did not do.</li>
            <li><strong>Copyright:</strong> only train on images you own, or images whose licence allows it. Copyright laws differ between countries, and they are still changing. Check the rules where you live.</li>
            <li><strong>Artists:</strong> training on one living artist's work to copy their style can harm them. Many artists ask people not to do it. Respect that.</li>
            <li><strong>Model licences:</strong> base models come with a licence. It may limit how you use the model and what you may share. Read it before you publish a LoRA.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: DreamBooth step by step</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of a DreamBooth project for Biscuit the dog in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Check you have the right to use the photos and that the owner agrees</li>
              <li data-order="2">Pick 3 to 5 clear photos of Biscuit from different angles</li>
              <li data-order="3">Caption every photo "a photo of sks dog", using a rare token</li>
              <li data-order="4">Make some ordinary "a photo of a dog" images for prior preservation</li>
              <li data-order="5">Train a LoRA on both sets of images for a short time</li>
              <li data-order="6">Test prompts such as "sks dog under a tree, watercolour" and check for overfitting</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor freezes a small matrix <code>W</code> and trains only <code>B</code> and <code>A</code> to reach a goal. Part 2 counts LoRA numbers for real layer sizes. Parts 3 and 4 use PyTorch and diffusers, so they only print a message in the browser.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, the loss falls to almost 0, and <code>W</code> is still the same.</li>
            <li>In Part 1, set <code>goal_rank = 2</code>. Now the change is too rich for rank 1, so the loss stops falling.</li>
            <li>Now also set <code>r = 2</code> in Part 1. The loss can fall again.</li>
            <li>In Part 2, change <code>rank = 4</code> to <code>rank = 16</code>. How much bigger is the LoRA for a 768×768 layer?</li>
            <li>On your own computer with PyTorch, run Part 3. It prints 6,144 trainable and 590,592 frozen numbers.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> LoRA freezes the big weights and learns a tiny change B A, so a style fits in a small file. DreamBooth uses a rare token and a few photos to teach one new subject. Only train on images you have the right to use.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # LoRA, simplified: keep the big matrix W frozen and learn a small change B @ A.
        import numpy as np

        # ── Part 1: train a LoRA in NumPy ──
        print("== Part 1: train a LoRA in NumPy ==")
        np.random.seed(42)
        d = 8          # the layer is d x d (real layers are bigger, like 768 x 768)
        r = 1          # LoRA rank: B is d x r and A is r x d
        goal_rank = 1  # how "rich" the change we want to learn is
        lr = 0.1       # learning rate
        steps = 60

        W = np.random.randn(d, d)                  # frozen weights: never changed
        W_start = W.copy()
        u, v = np.random.randn(d, goal_rank), np.random.randn(goal_rank, d)
        W_goal = W + 0.5 * (u @ v)                 # the layer our new style "needs"

        B = np.zeros((d, r))                       # B starts at 0, so B @ A = 0 at first
        A = np.random.randn(r, d) * 0.5

        x = np.random.randn(d, 20)                 # 20 example inputs
        print("step  loss")
        for step in range(steps + 1):
            err = (W + B @ A) @ x - W_goal @ x     # how wrong the adapted layer is
            loss = np.mean(err ** 2)
            if step % 10 == 0:
                print(f"{step:4d}  {loss:.4f}")
            grad = err @ x.T / x.shape[1]          # gradient for the change B @ A
            B, A = B - lr * grad @ A.T, A - lr * B.T @ grad

        print("\nIs W still the same?", np.allclose(W, W_start))
        print("Trainable numbers: full layer", d * d, "| LoRA", B.size + A.size)

        # ── Part 2: LoRA size for real layers ──
        print("\n== Part 2: LoRA size for real layers ==")
        # Parameter count for real layer sizes with rank 4
        rank = 4
        print(f"Layer size        full    LoRA r={rank}   share")
        for size in [320, 768, 1280]:
            full, lora = size * size, 2 * size * rank
            print(f"{size:4d} x {size:<4d} {full:10,d}  {lora:9,d}   {lora / full:.2%}")

        # ── Part 3: a LoRA layer in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: a LoRA layer in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            class LoRALinear(nn.Module):
                def __init__(self, base, r=4, alpha=4):
                    super().__init__()
                    self.base = base
                    self.base.requires_grad_(False)          # freeze W and its bias
                    self.A = nn.Parameter(torch.randn(r, base.in_features) * 0.01)
                    self.B = nn.Parameter(torch.zeros(base.out_features, r))
                    self.scale = alpha / r

                def forward(self, x):
                    return self.base(x) + self.scale * (x @ self.A.T @ self.B.T)

            torch.manual_seed(42)
            layer = LoRALinear(nn.Linear(768, 768), r=4)
            trainable = sum(p.numel() for p in layer.parameters() if p.requires_grad)
            frozen = sum(p.numel() for p in layer.parameters() if not p.requires_grad)
            print("trainable:", trainable)
            print("frozen:", frozen)
            x = torch.randn(2, 768)
            print(torch.allclose(layer(x), layer.base(x)))

        # ── Part 4: load a LoRA into Stable Diffusion (run this part on a computer with a GPU) ──
        # pip install torch diffusers transformers accelerate peft
        # The first run downloads several gigabytes.
        print("\n== Part 4: load a LoRA with diffusers ==")
        try:
            import torch
            from diffusers import StableDiffusionPipeline
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch and diffusers, which do not run in the browser. Copy this part to your computer to run it.")
        elif not torch.cuda.is_available():
            print("Part 4 needs a GPU with CUDA, for example Google Colab with a GPU.")
        else:
            pipe = StableDiffusionPipeline.from_pretrained(
                "stable-diffusion-v1-5/stable-diffusion-v1-5",
                torch_dtype=torch.float16).to("cuda")
            pipe.load_lora_weights("my-watercolour-lora")   # a folder or Hub repo with LoRA weights
            image = pipe("a red fox reading a book under a tree, watercolour").images[0]
            image.save("fox_lora.png")
            print("Saved fox_lora.png")

        # Try it: in Part 1 set goal_rank = 2 (r = 1 cannot fit it), then set r = 2
      PYTHON
    },
    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2i">Text-to-Image AI</div>
          <h1 class="lc-title">Project: Generate and Customize Your Own Images</h1>
        </div>
        <p class="lc-lead">In this project, you will put the whole course together. You will plan a prompt, choose settings, generate a few images with fixed seeds, pick the best one and edit it. You will also check your work and share it responsibly. The editor builds a prompt planner and runs a small denoising loop, so you can see the process from start to finish.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Project workflow in six steps. 1 Plan the prompt. 2 Choose settings. 3 Generate with seeds. 4 Pick the best. 5 Edit with image-to-image, inpainting or ControlNet. 6 Check and label. If the images are not right, change one thing and go back to step 1.">
            <defs><marker id="ti18a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="200" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="120" y="58" font-weight="700" fill="#93c5fd">1 · Plan the prompt</text>
              <text x="120" y="80" font-size="11.5" fill="#9b99b8">subject, setting, style, details</text>
              <line x1="222" y1="65" x2="276" y2="65" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti18a)"/>
              <rect x="280" y="30" width="200" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="58" font-weight="700" fill="#c4b5fd">2 · Choose settings</text>
              <text x="380" y="80" font-size="11.5" fill="#9b99b8">steps 30, guidance 7.5, 512×512</text>
              <line x1="482" y1="65" x2="536" y2="65" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti18a)"/>
              <rect x="540" y="30" width="200" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="640" y="58" font-weight="700" fill="#67e8f9">3 · Generate</text>
              <text x="640" y="80" font-size="11.5" fill="#9b99b8">seeds 1, 2 and 3</text>
              <line x1="640" y1="102" x2="640" y2="156" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti18a)"/>
              <rect x="540" y="160" width="200" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="640" y="188" font-weight="700" fill="#fcd34d">4 · Pick the best</text>
              <text x="640" y="210" font-size="11.5" fill="#9b99b8">note its seed</text>
              <line x1="538" y1="195" x2="484" y2="195" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti18a)"/>
              <rect x="280" y="160" width="200" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="188" font-weight="700" fill="#6ee7b7">5 · Edit</text>
              <text x="380" y="210" font-size="11.5" fill="#9b99b8">img2img, inpaint, ControlNet</text>
              <line x1="278" y1="195" x2="224" y2="195" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ti18a)"/>
              <rect x="20" y="160" width="200" height="70" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="120" y="188" font-weight="700" fill="#f9a8d4">6 · Check and label</text>
              <text x="120" y="210" font-size="11.5" fill="#9b99b8">say it is AI-made</text>
              <path d="M600,158 Q380,130 222,100" fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#ti18a)"/>
              <rect x="300" y="117" width="160" height="22" rx="6" fill="#1f1f44"/>
              <text x="380" y="133" font-size="11.5" fill="#fcd34d">not right? change one thing</text>
              <text x="380" y="258" font-size="11.5" fill="#9b99b8">Keep a note of the prompt, settings and seed for every image you keep.</text>
            </g>
          </svg>
          <figcaption>The project workflow. Most of the work is a loop: change one thing, generate again and compare.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: plan your prompt</h3>
          <p>A good prompt has clear parts. Write each part on its own line first. Then join them with commas.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Our example</th></tr></thead>
            <tbody>
              <tr><td>Subject</td><td>a red fox reading a book</td></tr>
              <tr><td>Setting</td><td>under a tree</td></tr>
              <tr><td>Style</td><td>watercolour</td></tr>
              <tr><td>Details</td><td>soft morning light</td></tr>
              <tr><td>Negative prompt</td><td>blurry, extra legs, text, watermark</td></tr>
            </tbody>
          </table>
          <p>Put the most important part first. Keep the negative prompt short. List only things you have actually seen go wrong.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 2 and 3: choose settings and generate</h3>
          <p>Start with safe settings and change one at a time:</p>
          <ul class="lc-list">
            <li><strong>Sampling steps:</strong> 30 is a good start. More steps take longer and often add little.</li>
            <li><strong>Guidance scale:</strong> 7.5 is a common start. Higher follows the prompt more closely. Too high can give harsh colours.</li>
            <li><strong>Size:</strong> 512×512 for Stable Diffusion 1.5, because it was trained at that size.</li>
            <li><strong>Seeds:</strong> try 3 seeds, such as 1, 2 and 3. The same prompt, settings and seed give the same image again.</li>
          </ul>
          <p>With <code>diffusers</code>, the key part is a loop over seeds. It needs a GPU, or a hosted service such as Google Colab with a GPU. It also downloads several gigabytes the first time. So it cannot run in the browser. Part 3 in the code editor below has the full code to run on your own computer.</p>
          <p>It saves three images. Each one shows a different fox and tree, because the starting noise is different. To edit the best one, build a <code>StableDiffusionImg2ImgPipeline</code> from the same parts. Then run it with a strength such as 0.4, as Part 3 does. Model names and options change, so check the current diffusers docs.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 4 and 5: pick and edit</h3>
          <p>Pick the image you like best and write down its seed. Now improve it instead of starting again:</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Tool to use</th></tr></thead>
            <tbody>
              <tr><td>Good layout, but you want a different mood or season</td><td>Image-to-image with a strength of about 0.3 to 0.5</td></tr>
              <tr><td>One small part is wrong, such as the paws</td><td>Inpainting: mask only that part</td></tr>
              <tr><td>The picture needs more space at the side</td><td>Outpainting: extend the canvas and fill the new part</td></tr>
              <tr><td>You need the same pose in a new style</td><td>ControlNet with an edge or pose map</td></tr>
              <tr><td>You want your own style or subject every time</td><td>A LoRA, trained with or without DreamBooth</td></tr>
            </tbody>
          </table>
          <p>Remember how strength works. A low strength keeps most of the image. A high strength changes a lot.</p>
        </div>
        <div class="lc-card">
          <h3>Step 6: check and share responsibly</h3>
          <ul class="lc-list">
            <li><strong>Check for errors.</strong> Look closely at hands, paws, text and eyes. Models often get these wrong.</li>
            <li><strong>Label it.</strong> Say clearly that the image is AI-made. Some tools also add content credentials (C2PA), which are data inside the file that record how it was made.</li>
            <li><strong>Respect people.</strong> Do not make images of real people without their consent. Never make images that could mislead people about real events.</li>
            <li><strong>Respect rights.</strong> Read the model licence. Do not copy a living artist's style or a brand's logo without permission.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: one project, start to finish</h3>
          <p>Step through a full project. Notice how the creator changes only one thing at a time.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Goal">A watercolour card of a red fox reading a book under a tree.</li>
              <li data-kind="thought" data-label="Plan">Subject first, then setting, style and details. Negative prompt: blurry, text, watermark.</li>
              <li data-kind="tool" data-label="Generate">Steps 30, guidance 7.5, 512×512, seeds 1, 2 and 3.</li>
              <li data-kind="result" data-label="Three images">Seed 1 has no book. Seed 2 is too dark. Seed 3 is good, but one paw has six toes.</li>
              <li data-kind="thought" data-label="Change one thing">Keep seed 3. Do not start again. Fix only the paw.</li>
              <li data-kind="tool" data-label="Edit">Inpainting with a mask over the paw, same prompt.</li>
              <li data-kind="check" data-label="Check">Zoom in on the paws, eyes and the book. All look right now.</li>
              <li data-kind="warn" data-label="Share">Label the card as AI-made and keep a note of the prompt, settings and seed.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has three parts. Part 1 builds your prompt plan. Part 2 runs a toy denoising loop on an 8×8 "tree" picture. Its pretend model guesses the noise well, but not perfectly, like a real model. Part 3 generates real images with diffusers, so in the browser it only prints a message.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, read the prompt. In Part 2, watch the tree appear from noise.</li>
            <li>In Part 1, change the <code>"style"</code> part to <code>"pencil sketch"</code>, and add <code>"dark"</code> to the negative list.</li>
            <li>In Part 2, set <code>STEPS = 10</code>. Is the difference from the tree smaller?</li>
            <li>In Part 2, change <code>SEED</code> to 2. The start noise changes, so the path changes too. What is the final difference now?</li>
            <li>On a computer with a GPU, run Part 3 and compare the three seeds.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good image generation is a careful loop. Plan the prompt, fix the seed, change one thing at a time, edit instead of starting again, and always share AI images honestly.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Capstone: plan your prompts, watch a toy denoising loop, then generate for real.
        import numpy as np

        # ── Part 1: a prompt planner ──
        print("== Part 1: a prompt planner ==")
        parts = {
            "subject": "a red fox reading a book",
            "setting": "under a tree",
            "style":   "watercolour",
            "details": "soft morning light",
        }
        negative = ["blurry", "extra legs", "text", "watermark"]
        settings = {"steps": 30, "guidance_scale": 7.5, "size": "512x512"}
        seeds = [1, 2, 3]

        prompt = ", ".join(parts.values())
        print("Prompt:  ", prompt)
        print("Negative:", ", ".join(negative))
        print("Settings:", settings)
        print("Planned runs:")
        for i, seed in enumerate(seeds, start=1):
            print(f"  run {i}: seed {seed}, steps {settings['steps']}, guidance {settings['guidance_scale']}")

        # ── Part 2: a toy denoising loop on an 8x8 "tree" image ──
        print("\n== Part 2: a toy denoising loop ==")
        CHARS = " .:-=+*#%@"
        def show(title, img):
            print(title)
            for row in np.clip(img, 0, 1):
                print("  " + "".join(CHARS[round(v * 9)] * 2 for v in row))

        tree = np.zeros((8, 8))
        tree[1:3, 2:6] = 1.0; tree[3:5, 1:7] = 1.0; tree[5:8, 3:5] = 0.6

        STEPS = 5
        SEED = 1
        rng = np.random.default_rng(SEED)
        alpha_bar = np.linspace(0.02, 0.999, STEPS + 1)   # small = very noisy, near 1 = clean
        x = rng.normal(size=(8, 8))                      # start from pure noise
        show("Step 0 (pure noise):", (x + 2) / 4)

        for t in range(STEPS):
            a, a_next = alpha_bar[t], alpha_bar[t + 1]
            true_noise = (x - np.sqrt(a) * tree) / np.sqrt(1 - a)
            noise_hat = true_noise + rng.normal(scale=0.1, size=(8, 8))   # a pretend model: close, not perfect
            x0_hat = (x - np.sqrt(1 - a) * noise_hat) / np.sqrt(a)           # its guess of the clean image
            x = np.sqrt(a_next) * x0_hat + np.sqrt(1 - a_next) * noise_hat   # one step less noisy
            if t in (1, 3, STEPS - 1):
                show(f"\nStep {t + 1}:", x)

        print("\nDifference from the tree:", round(float(np.abs(x - tree).mean()), 3))

        # ── Part 3: generate and edit with diffusers (run this part on a computer with a GPU) ──
        # pip install torch diffusers transformers accelerate
        # The first run downloads several gigabytes.
        print("\n== Part 3: generate and edit with diffusers ==")
        try:
            import torch
            from diffusers import StableDiffusionPipeline, StableDiffusionImg2ImgPipeline
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch and diffusers, which do not run in the browser. Copy this part to your computer to run it.")
        elif not torch.cuda.is_available():
            print("Part 3 needs a GPU with CUDA, for example Google Colab with a GPU.")
        else:
            pipe = StableDiffusionPipeline.from_pretrained(
                "stable-diffusion-v1-5/stable-diffusion-v1-5",
                torch_dtype=torch.float16).to("cuda")

            prompt = "a red fox reading a book, under a tree, watercolour, soft morning light"
            negative = "blurry, extra legs, text, watermark"

            for seed in [1, 2, 3]:
                generator = torch.Generator("cuda").manual_seed(seed)
                image = pipe(prompt, negative_prompt=negative,
                             num_inference_steps=30, guidance_scale=7.5,
                             height=512, width=512, generator=generator).images[0]
                image.save(f"fox_seed{seed}.png")

            # Edit the best one: same pipeline parts, image-to-image mode
            img2img = StableDiffusionImg2ImgPipeline(**pipe.components)
            best = image                             # here: the seed 3 image
            generator = torch.Generator("cuda").manual_seed(3)
            autumn = img2img(prompt + ", autumn leaves", image=best,
                             strength=0.4, generator=generator).images[0]
            autumn.save("fox_autumn.png")
            print("Saved fox_seed1.png, fox_seed2.png, fox_seed3.png and fox_autumn.png")

        # Try it: change the style in Part 1, add a negative word, set STEPS = 10 in Part 2, or change SEED
      PYTHON
    },
  }.freeze
end

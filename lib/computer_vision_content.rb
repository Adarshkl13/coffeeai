module ComputerVisionContent
  # Units (sidebar dividers): 1–5 Images as Data · 6–10 Classic Image Processing · 11–16 Deep Learning for Vision · 17–21 Modern Vision · 22 Capstone
  # Widgets: sequence, sorter, stepper, conv-filter. Starter code is Python run in the browser (Pyodide).
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">What Is Computer Vision?</h1>
        </div>
        <p class="lc-lead"><strong>Computer vision</strong> is the part of computer science that teaches computers to understand images and video. A camera gives the computer only numbers. Computer vision turns those numbers into useful answers, such as "this is a cat" or "a person is crossing the road". In this lesson, you will see where computer vision is used. You will also learn the three main tasks: classification, detection and segmentation.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 235" role="img" aria-label="One input image with a cat and a ball. Classification gives one label, cat. Object detection draws a box around the cat and a box around the ball. Segmentation colours every pixel of the cat pink and every pixel of the ball blue.">
            <defs>
              <marker id="cv1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <g id="cv1cat"><circle cx="50" cy="68" r="26"/><polygon points="28,52 32,26 48,44"/><polygon points="52,44 68,26 72,52"/></g>
              <circle id="cv1ball" cx="108" cy="84" r="15"/>
            </defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="160" height="200" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="90" y="42" font-weight="700">Input image</text>
              <rect x="20" y="55" width="140" height="110" fill="#27274e"/>
              <use href="#cv1cat" x="20" y="55" fill="#9b99b8"/>
              <use href="#cv1ball" x="20" y="55" fill="#64748b"/>
              <text x="90" y="190" fill="#9b99b8" font-size="11">to a computer:</text>
              <text x="90" y="206" fill="#9b99b8" font-size="11">just numbers</text>
              <line x1="174" y1="110" x2="206" y2="110" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv1a)"/>
              <rect x="215" y="20" width="160" height="200" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="295" y="42" font-weight="700" fill="#c4b5fd">Classification</text>
              <rect x="225" y="55" width="140" height="110" fill="#27274e"/>
              <use href="#cv1cat" x="225" y="55" fill="#9b99b8"/>
              <use href="#cv1ball" x="225" y="55" fill="#64748b"/>
              <text x="295" y="190" font-weight="700">Label: "cat"</text>
              <text x="295" y="206" fill="#9b99b8" font-size="11">one answer for the image</text>
              <rect x="400" y="20" width="160" height="200" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="480" y="42" font-weight="700" fill="#fcd34d">Object detection</text>
              <rect x="410" y="55" width="140" height="110" fill="#27274e"/>
              <use href="#cv1cat" x="410" y="55" fill="#9b99b8"/>
              <use href="#cv1ball" x="410" y="55" fill="#64748b"/>
              <rect x="430" y="77" width="60" height="74" fill="none" stroke="#f59e0b" stroke-width="2" stroke-dasharray="5 3"/>
              <rect x="501" y="122" width="36" height="36" fill="none" stroke="#f59e0b" stroke-width="2" stroke-dasharray="5 3"/>
              <text x="432" y="72" text-anchor="start" font-size="10" fill="#fcd34d">cat</text>
              <text x="501" y="117" text-anchor="start" font-size="10" fill="#fcd34d">ball</text>
              <text x="480" y="190" font-weight="700">Boxes + labels</text>
              <text x="480" y="206" fill="#9b99b8" font-size="11">where each object is</text>
              <rect x="585" y="20" width="160" height="200" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="665" y="42" font-weight="700" fill="#f9a8d4">Segmentation</text>
              <rect x="595" y="55" width="140" height="110" fill="#27274e"/>
              <use href="#cv1cat" x="595" y="55" fill="#ec4899"/>
              <use href="#cv1ball" x="595" y="55" fill="#22d3ee"/>
              <text x="665" y="190" font-weight="700">Every pixel labelled</text>
              <text x="665" y="206" fill="#9b99b8" font-size="11">the exact shape</text>
            </g>
          </svg>
          <figcaption>The same image, three different questions. Each task gives a more detailed answer than the one before.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Computer vision in everyday life</h3>
          <p>You probably use computer vision every day. Here are some common examples:</p>
          <ul class="lc-list">
            <li><strong>Face unlock on a phone.</strong> The phone finds your face in the camera picture. Then it checks that the face belongs to you.</li>
            <li><strong>Document scanning.</strong> A scanning app finds the edges of the page and makes it straight. Then it reads the text. Reading text from an image is called OCR (optical character recognition).</li>
            <li><strong>Medical images.</strong> Software can mark areas in X-rays or scans that a doctor should look at more closely. The doctor still makes the decision.</li>
            <li><strong>Self-driving and driver-assist cars.</strong> Cameras find lanes, other cars, people and traffic signs many times each second.</li>
            <li><strong>Shops and factories.</strong> Cameras count products on shelves and find broken items on a production line.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The three main tasks</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Question it answers</th><th>Output</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Classification</strong></td><td>What is in this image?</td><td>One label (and often a score)</td><td>"This photo shows a dog."</td></tr>
              <tr><td><strong>Object detection</strong></td><td>Which objects are here, and where?</td><td>A box, a label and a score for each object</td><td>Find every car and person in a street photo</td></tr>
              <tr><td><strong>Segmentation</strong></td><td>Which pixels belong to which thing?</td><td>A label for every pixel (a mask)</td><td>Blur the background behind a person in a video call</td></tr>
            </tbody>
          </table>
          <p>A <strong>pixel</strong> is one tiny dot of an image. A <strong>mask</strong> is a grid that marks which pixels belong to an object. A <strong>score</strong> (or confidence) is a number that says how sure the model is.</p>
        </div>
        <div class="lc-card">
          <h3>Why is this hard for a computer?</h3>
          <p>You see a cat at once. A computer sees a large grid of numbers. The same cat can look very different in two photos:</p>
          <ul class="lc-list">
            <li>The light can be bright or dark, so all the numbers change.</li>
            <li>The cat can be near or far, so it can be big or small.</li>
            <li>The cat can turn, sit or be partly hidden behind a chair.</li>
          </ul>
          <p>Early computer vision used rules that people wrote by hand. Today, most systems <em>learn</em> from many labelled example images. You will learn both ways in this course. First, you will learn how images are stored as numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which task is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Put each job in the vision task that fits it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="cls" data-label="Classification"></div>
              <div data-sorter-target="bucket" data-bucket="det" data-label="Detection"></div>
              <div data-sorter-target="bucket" data-bucket="seg" data-label="Segmentation"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="cls" data-why="You need one label for the whole photo.">A photo app sorts your pictures into "food", "people" and "nature"</li>
              <li data-bucket="det" data-why="You need to know where each person and car is. Boxes are enough for that.">A car camera finds every person and car in front of it</li>
              <li data-bucket="seg" data-why="The app must know exactly which pixels are the person. Only then can it blur the rest.">A video call app blurs everything behind you</li>
              <li data-bucket="seg" data-why="The doctor needs the exact outline, not just a box around it.">Mark the exact outline of a tumour in a medical scan</li>
              <li data-bucket="cls" data-why="The answer is yes or no for the whole image.">Check if a photo is a scanned document or not</li>
              <li data-bucket="det" data-why="Each person needs a box. Then you count the boxes.">Count how many people walk into a shop</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code has a tiny 8×8 image stored as a list of lists. Each number is a brightness from 0 (black) to 255 (white).</li>
            <li>Run it. It prints the image as characters. Then it does all three tasks with simple rules: classification (is there an object?), detection (a box around it) and segmentation (a mask).</li>
            <li>Move the bright square to another place in the grid, or make it bigger. Run it again and check that the box moves too.</li>
            <li>Change every bright number to a small number, like 10. The classifier should now say "empty".</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> To a computer, an image is only a grid of numbers. Computer vision turns those numbers into answers. Classification gives one label, detection gives boxes, and segmentation labels every pixel.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Three vision tasks on one tiny image.
        # The image has 8 rows and 8 columns.
        # Each number is a brightness: 0 is black and 255 is white.

        image = [
            [10, 12,  11,  10,  9,  10, 12, 11],
            [11, 10,  12,  11, 10,  11, 10, 12],
            [10, 11, 200, 210, 205, 10, 11, 10],
            [12, 10, 215, 230, 220, 11, 10, 11],
            [10, 12, 205, 220, 210, 10, 12, 10],
            [11, 10,  11,  12, 10,  11, 10, 11],
            [10, 11,  10,  11, 12,  10, 11, 10],
            [12, 10,  11,  10, 11,  12, 10, 12],
        ]

        CHARS = " .:-=+*#%@"   # dark to bright

        def show(img):
            for row in img:
                line = ""
                for value in row:
                    index = value * (len(CHARS) - 1) // 255
                    line += CHARS[index] * 2    # 2 characters, so pixels look square
                print("   |" + line + "|")

        print("The image as numbers (first row):", image[0])
        print("The image as characters:")
        show(image)

        # A simple hand-made rule: a pixel is part of the object if it is bright.
        BRIGHT = 128

        # 1) Classification: one answer for the whole image.
        bright_pixels = [(r, c) for r, row in enumerate(image)
                         for c, value in enumerate(row) if value > BRIGHT]
        label = "object" if bright_pixels else "empty"
        print("\n1) Classification:", label)

        # 2) Detection: a box around the object (top, left, bottom, right).
        if bright_pixels:
            rows = [r for r, c in bright_pixels]
            cols = [c for r, c in bright_pixels]
            box = (min(rows), min(cols), max(rows), max(cols))
            print("2) Detection: box from row", box[0], "col", box[1],
                  "to row", box[2], "col", box[3])

        # 3) Segmentation: a mask that marks every object pixel.
        print("3) Segmentation mask (# = object, . = background):")
        for row in image:
            print("   " + " ".join("#" if value > BRIGHT else "." for value in row))
        print("Object pixels:", len(bright_pixels), "of", len(image) * len(image[0]))

        # Try it: move the bright square to the bottom-right corner, or add a second one.
        # How do the box and the mask change?
      PYTHON
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Pixels and Grayscale Images</h1>
        </div>
        <p class="lc-lead">Every digital image is a grid of small dots called <strong>pixels</strong>. In a <strong>grayscale</strong> image (black, white and greys only), each pixel is one number. The number says how bright the pixel is. In this lesson, you will learn how an image is stored as numbers. You will also learn how to find a pixel by its row and column, and how to read and change it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A 6 by 6 grayscale image shown as a grid of numbers. Rows and columns are numbered from 0. The pixel at row 2, column 3 has the value 180. The image is 6 rows high and 6 columns wide. A bar shows 0 as black, 128 as grey and 255 as white.">
            <defs><marker id="cv2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#ec4899"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="194" y="22" fill="#9b99b8" font-size="11.5">column →</text>
              <text x="30" y="164" fill="#9b99b8" font-size="11.5" transform="rotate(90 30 164)">row →</text>
              <text x="99" y="42" fill="#9b99b8" font-size="11">0</text>
              <text x="68" y="73" fill="#9b99b8" font-size="11">0</text>
              <text x="137" y="42" fill="#9b99b8" font-size="11">1</text>
              <text x="68" y="111" fill="#9b99b8" font-size="11">1</text>
              <text x="175" y="42" fill="#9b99b8" font-size="11">2</text>
              <text x="68" y="149" fill="#9b99b8" font-size="11">2</text>
              <text x="213" y="42" fill="#9b99b8" font-size="11">3</text>
              <text x="68" y="187" fill="#9b99b8" font-size="11">3</text>
              <text x="251" y="42" fill="#9b99b8" font-size="11">4</text>
              <text x="68" y="225" fill="#9b99b8" font-size="11">4</text>
              <text x="289" y="42" fill="#9b99b8" font-size="11">5</text>
              <text x="68" y="263" fill="#9b99b8" font-size="11">5</text>
              <rect x="80" y="50" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="99" y="72.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="118" y="50" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="137" y="72.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="156" y="50" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="175" y="72.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="194" y="50" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="213" y="72.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="232" y="50" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="251" y="72.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="270" y="50" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="289" y="72.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="80" y="88" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="99" y="110.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="118" y="88" width="38" height="38" fill="rgb(90,90,90)" stroke="#4b4a78"/>
              <text x="137" y="110.96" font-size="11" fill="#e2e0f0">90</text>
              <rect x="156" y="88" width="38" height="38" fill="rgb(90,90,90)" stroke="#4b4a78"/>
              <text x="175" y="110.96" font-size="11" fill="#e2e0f0">90</text>
              <rect x="194" y="88" width="38" height="38" fill="rgb(90,90,90)" stroke="#4b4a78"/>
              <text x="213" y="110.96" font-size="11" fill="#e2e0f0">90</text>
              <rect x="232" y="88" width="38" height="38" fill="rgb(90,90,90)" stroke="#4b4a78"/>
              <text x="251" y="110.96" font-size="11" fill="#e2e0f0">90</text>
              <rect x="270" y="88" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="289" y="110.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="80" y="126" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="99" y="148.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="118" y="126" width="38" height="38" fill="rgb(90,90,90)" stroke="#4b4a78"/>
              <text x="137" y="148.96" font-size="11" fill="#e2e0f0">90</text>
              <rect x="156" y="126" width="38" height="38" fill="rgb(200,200,200)" stroke="#4b4a78"/>
              <text x="175" y="148.96" font-size="11" fill="#111">200</text>
              <rect x="194" y="126" width="38" height="38" fill="rgb(180,180,180)" stroke="#4b4a78"/>
              <text x="213" y="148.96" font-size="11" fill="#111">180</text>
              <rect x="232" y="126" width="38" height="38" fill="rgb(90,90,90)" stroke="#4b4a78"/>
              <text x="251" y="148.96" font-size="11" fill="#e2e0f0">90</text>
              <rect x="270" y="126" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="289" y="148.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="80" y="164" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="99" y="186.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="118" y="164" width="38" height="38" fill="rgb(90,90,90)" stroke="#4b4a78"/>
              <text x="137" y="186.96" font-size="11" fill="#e2e0f0">90</text>
              <rect x="156" y="164" width="38" height="38" fill="rgb(230,230,230)" stroke="#4b4a78"/>
              <text x="175" y="186.96" font-size="11" fill="#111">230</text>
              <rect x="194" y="164" width="38" height="38" fill="rgb(255,255,255)" stroke="#4b4a78"/>
              <text x="213" y="186.96" font-size="11" fill="#111">255</text>
              <rect x="232" y="164" width="38" height="38" fill="rgb(90,90,90)" stroke="#4b4a78"/>
              <text x="251" y="186.96" font-size="11" fill="#e2e0f0">90</text>
              <rect x="270" y="164" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="289" y="186.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="80" y="202" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="99" y="224.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="118" y="202" width="38" height="38" fill="rgb(90,90,90)" stroke="#4b4a78"/>
              <text x="137" y="224.96" font-size="11" fill="#e2e0f0">90</text>
              <rect x="156" y="202" width="38" height="38" fill="rgb(90,90,90)" stroke="#4b4a78"/>
              <text x="175" y="224.96" font-size="11" fill="#e2e0f0">90</text>
              <rect x="194" y="202" width="38" height="38" fill="rgb(90,90,90)" stroke="#4b4a78"/>
              <text x="213" y="224.96" font-size="11" fill="#e2e0f0">90</text>
              <rect x="232" y="202" width="38" height="38" fill="rgb(90,90,90)" stroke="#4b4a78"/>
              <text x="251" y="224.96" font-size="11" fill="#e2e0f0">90</text>
              <rect x="270" y="202" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="289" y="224.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="80" y="240" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="99" y="262.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="118" y="240" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="137" y="262.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="156" y="240" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="175" y="262.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="194" y="240" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="213" y="262.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="232" y="240" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="251" y="262.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="270" y="240" width="38" height="38" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="289" y="262.96" font-size="11" fill="#e2e0f0">20</text>
              <rect x="194" y="126" width="38" height="38" fill="none" stroke="#ec4899" stroke-width="3"/>
              <line x1="234" y1="145" x2="398" y2="80" stroke="#ec4899" stroke-width="1.5" marker-end="url(#cv2a)"/>
              <rect x="405" y="50" width="330" height="62" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="570" y="76" font-weight="700"><tspan font-family="monospace">image[2][3]</tspan> = 180</text>
              <text x="570" y="98" fill="#9b99b8" font-size="11.5">row 2 first, then column 3</text>
              <rect x="405" y="128" width="330" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="570" y="154">height = 6 rows · width = 6 columns</text>
              <text x="570" y="176" fill="#9b99b8" font-size="11.5">36 pixels in total</text>
              <defs><linearGradient id="cv2g" x1="0" x2="1" y1="0" y2="0"><stop offset="0" stop-color="#000"/><stop offset="1" stop-color="#fff"/></linearGradient></defs>
              <rect x="405" y="210" width="330" height="22" rx="4" fill="url(#cv2g)" stroke="#4b4a78"/>
              <text x="405" y="252" text-anchor="start" font-size="11.5">0 = black</text>
              <text x="570" y="252" font-size="11.5">128 = grey</text>
              <text x="735" y="252" text-anchor="end" font-size="11.5">255 = white</text>
            </g>
          </svg>
          <figcaption>A grayscale image is a grid of numbers. You find a pixel with its row first, then its column. Both start at 0.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Pixel values from 0 to 255</h3>
          <p>Most images use 8 bits for each pixel value. A bit is a single 0 or 1. With 8 bits, you can store 256 different values: 0 to 255.</p>
          <table class="lc-table">
            <thead><tr><th>Value</th><th>What you see</th></tr></thead>
            <tbody>
              <tr><td><code>0</code></td><td>Black (no light)</td></tr>
              <tr><td><code>64</code></td><td>Dark grey</td></tr>
              <tr><td><code>128</code></td><td>Middle grey</td></tr>
              <tr><td><code>200</code></td><td>Light grey</td></tr>
              <tr><td><code>255</code></td><td>White (full light)</td></tr>
            </tbody>
          </table>
          <p>A small phone photo can have millions of pixels. The idea is the same as in our 6×6 grid. There are just many more numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Rows, columns, width and height</h3>
          <p>In Python, you can store a grayscale image as a list of rows. Each row is a list of numbers.</p>
          <pre><code>image = [
            [ 20,  20,  20,  20],
            [ 20, 200, 180,  20],
            [ 20, 230, 255,  20],
        ]
        height = len(image)       # number of rows: 3
        width = len(image[0])     # number of columns: 4
        value = image[1][2]       # row 1, column 2: 180
        image[0][0] = 255         # make the top-left pixel white</code></pre>
          <ul class="lc-list">
            <li><strong>Height</strong> is the number of rows. <strong>Width</strong> is the number of columns.</li>
            <li>Counting starts at 0. Row 0 is the top row. Column 0 is the left column.</li>
            <li>Use <code>image[row][column]</code>. The row comes first, because you first pick a row list and then a number inside it.</li>
          </ul>
          <p>Be careful: many tools say "size" as <em>width × height</em>, but store the data as <em>rows × columns</em>. So a 640×480 photo has 480 rows and 640 columns.</p>
        </div>
        <div class="lc-card">
          <h3>On your own computer: Pillow and NumPy</h3>
          <p>For real photos, you use libraries. <strong>Pillow</strong> opens and saves image files. <strong>NumPy</strong> stores the pixels as an array (a fast grid of numbers). Install them with <code>pip install pillow numpy</code>.</p>
          <pre><code>from PIL import Image
        import numpy as np

        img = Image.open("photo.jpg").convert("L")   # "L" means grayscale
        print(img.size)                # (width, height)
        print(img.getpixel((10, 5)))   # Pillow uses (x, y): column 10, row 5

        pixels = np.array(img)
        print(pixels.shape)            # (height, width)
        print(pixels[5, 10])           # NumPy uses [row, column]: the same pixel
        pixels[0:10, :] = 255          # make the top 10 rows white
        Image.fromarray(pixels).save("changed.png")</code></pre>
          <p>Notice the order. Pillow's <code>getpixel</code> uses <code>(x, y)</code>, which is (column, row). NumPy uses <code>[row, column]</code>. Mixing them up is a very common bug.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: read and change a pixel</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Task">In the 6×6 image above, read the pixel at row 2, column 3. Then make it white.</li>
              <li data-kind="thought" data-label="Find the row">image[2] is the third row from the top, because counting starts at 0.</li>
              <li data-kind="thought" data-label="Find the column">image[2][3] is the fourth number in that row.</li>
              <li data-kind="result" data-label="Read">The value is 180. That is a light grey.</li>
              <li data-kind="tool" data-label="Change">image[2][3] = 255. Now the pixel is white.</li>
              <li data-kind="check" data-label="Size">len(image) is 6, so the height is 6. len(image[0]) is 6, so the width is 6.</li>
              <li data-kind="warn" data-label="Common mistake">image[3][2] is a different pixel: row 3, column 2. Its value is 230. Always put the row first.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code builds an 8×8 grayscale image. It prints the width, the height and some pixel values.</li>
            <li>Run it. It draws a white line across one row and a grey line down one column. Then it prints the image as numbers and as characters.</li>
            <li>Change <code>ROW</code> and <code>COL</code> to draw the lines in other places.</li>
            <li>Try to set a pixel to 300. The <code>set_pixel</code> function keeps values between 0 and 255. This is called <em>clamping</em>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A grayscale image is a grid of numbers from 0 (black) to 255 (white). You read or change a pixel with <code>image[row][column]</code>. Height is the number of rows, and width is the number of columns.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A grayscale image is a list of rows. Each row is a list of numbers (0-255).

        WIDTH, HEIGHT = 8, 8
        ROW, COL = 3, 5          # where to draw the lines

        # Make a dark-to-bright gradient: each column is brighter than the last.
        image = [[col * 30 for col in range(WIDTH)] for row in range(HEIGHT)]

        def set_pixel(img, row, col, value):
            value = max(0, min(255, value))     # clamp: keep it between 0 and 255
            img[row][col] = value

        def print_numbers(img):
            for row in img:
                print("   " + " ".join(f"{v:3d}" for v in row))

        def print_picture(img):
            chars = " .:-=+*#%@"
            for row in img:
                print("   |" + "".join(chars[v * 9 // 255] * 2 for v in row) + "|")

        print("height (rows):", len(image))
        print("width (columns):", len(image[0]))
        print("top-left pixel image[0][0] =", image[0][0])
        print("pixel at row 2, column 4 =", image[2][4])

        # Draw a white line across row ROW.
        for c in range(WIDTH):
            set_pixel(image, ROW, c, 255)

        # Draw a middle-grey line down column COL.
        for r in range(HEIGHT):
            set_pixel(image, r, COL, 128)

        set_pixel(image, 0, 0, 300)             # too big: clamped to 255
        print("after set_pixel(image, 0, 0, 300):", image[0][0])

        print("\nThe image as numbers:")
        print_numbers(image)
        print("\nThe image as a picture:")
        print_picture(image)

        values = [v for row in image for v in row]
        print("\nDarkest:", min(values), " Brightest:", max(values),
              " Average:", round(sum(values) / len(values), 1))

        # Try it: change ROW and COL, or draw a diagonal line with set_pixel(image, i, i, 255).
      PYTHON
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Colour Images and Channels</h1>
        </div>
        <p class="lc-lead">A grayscale pixel is one number. A colour pixel is <strong>three</strong> numbers: red, green and blue. Each of these is called a <strong>channel</strong>. In this lesson, you will learn how colour images are stored. You will also learn how to split them into channels and turn them into grayscale. At the end, you will meet another way to describe colour, called HSV.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 255" role="img" aria-label="A 3 by 3 colour image is split into three grids of numbers: a red channel, a green channel and a blue channel. The centre pixel is 200, 120, 40. The three channels are combined with the formula grey equals 0.299 R plus 0.587 G plus 0.114 B to make a grayscale image.">
            <defs><marker id="cv3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="71" y="40" font-weight="700">Colour image</text>
              <rect x="20" y="55" width="34" height="34" fill="rgb(230, 40, 40)" stroke="#4b4a78"/>
              <rect x="54" y="55" width="34" height="34" fill="rgb(40, 180, 60)" stroke="#4b4a78"/>
              <rect x="88" y="55" width="34" height="34" fill="rgb(40, 80, 220)" stroke="#4b4a78"/>
              <rect x="20" y="89" width="34" height="34" fill="rgb(240, 220, 40)" stroke="#4b4a78"/>
              <rect x="54" y="89" width="34" height="34" fill="rgb(200, 120, 40)" stroke="#4b4a78"/>
              <rect x="88" y="89" width="34" height="34" fill="rgb(250, 250, 250)" stroke="#4b4a78"/>
              <rect x="20" y="123" width="34" height="34" fill="rgb(20, 20, 20)" stroke="#4b4a78"/>
              <rect x="54" y="123" width="34" height="34" fill="rgb(128, 128, 128)" stroke="#4b4a78"/>
              <rect x="88" y="123" width="34" height="34" fill="rgb(160, 60, 200)" stroke="#4b4a78"/>
              <rect x="54" y="89" width="34" height="34" fill="none" stroke="#ec4899" stroke-width="3"/>
              <text x="71" y="176" font-size="11" fill="#9b99b8">centre pixel</text>
              <text x="71" y="192" font-size="11" fill="#f9a8d4">(200, 120, 40)</text>
              <line x1="128" y1="106" x2="160" y2="106" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv3a)"/>
              <text x="221" y="40" font-weight="700" fill="#fca5a5">Red (R)</text>
              <rect x="170" y="55" width="34" height="34" fill="rgb(230,0,0)" stroke="#4b4a78"/>
              <text x="187" y="75.78" font-size="10.5" fill="#fff">230</text>
              <rect x="204" y="55" width="34" height="34" fill="rgb(40,0,0)" stroke="#4b4a78"/>
              <text x="221" y="75.78" font-size="10.5" fill="#fff">40</text>
              <rect x="238" y="55" width="34" height="34" fill="rgb(40,0,0)" stroke="#4b4a78"/>
              <text x="255" y="75.78" font-size="10.5" fill="#fff">40</text>
              <rect x="170" y="89" width="34" height="34" fill="rgb(240,0,0)" stroke="#4b4a78"/>
              <text x="187" y="109.78" font-size="10.5" fill="#fff">240</text>
              <rect x="204" y="89" width="34" height="34" fill="rgb(200,0,0)" stroke="#4b4a78"/>
              <text x="221" y="109.78" font-size="10.5" fill="#fff">200</text>
              <rect x="238" y="89" width="34" height="34" fill="rgb(250,0,0)" stroke="#4b4a78"/>
              <text x="255" y="109.78" font-size="10.5" fill="#fff">250</text>
              <rect x="170" y="123" width="34" height="34" fill="rgb(20,0,0)" stroke="#4b4a78"/>
              <text x="187" y="143.78" font-size="10.5" fill="#fff">20</text>
              <rect x="204" y="123" width="34" height="34" fill="rgb(128,0,0)" stroke="#4b4a78"/>
              <text x="221" y="143.78" font-size="10.5" fill="#fff">128</text>
              <rect x="238" y="123" width="34" height="34" fill="rgb(160,0,0)" stroke="#4b4a78"/>
              <text x="255" y="143.78" font-size="10.5" fill="#fff">160</text>
              <text x="336" y="40" font-weight="700" fill="#6ee7b7">Green (G)</text>
              <rect x="285" y="55" width="34" height="34" fill="rgb(0,40,0)" stroke="#4b4a78"/>
              <text x="302" y="75.78" font-size="10.5" fill="#fff">40</text>
              <rect x="319" y="55" width="34" height="34" fill="rgb(0,180,0)" stroke="#4b4a78"/>
              <text x="336" y="75.78" font-size="10.5" fill="#111">180</text>
              <rect x="353" y="55" width="34" height="34" fill="rgb(0,80,0)" stroke="#4b4a78"/>
              <text x="370" y="75.78" font-size="10.5" fill="#fff">80</text>
              <rect x="285" y="89" width="34" height="34" fill="rgb(0,220,0)" stroke="#4b4a78"/>
              <text x="302" y="109.78" font-size="10.5" fill="#111">220</text>
              <rect x="319" y="89" width="34" height="34" fill="rgb(0,120,0)" stroke="#4b4a78"/>
              <text x="336" y="109.78" font-size="10.5" fill="#fff">120</text>
              <rect x="353" y="89" width="34" height="34" fill="rgb(0,250,0)" stroke="#4b4a78"/>
              <text x="370" y="109.78" font-size="10.5" fill="#111">250</text>
              <rect x="285" y="123" width="34" height="34" fill="rgb(0,20,0)" stroke="#4b4a78"/>
              <text x="302" y="143.78" font-size="10.5" fill="#fff">20</text>
              <rect x="319" y="123" width="34" height="34" fill="rgb(0,128,0)" stroke="#4b4a78"/>
              <text x="336" y="143.78" font-size="10.5" fill="#fff">128</text>
              <rect x="353" y="123" width="34" height="34" fill="rgb(0,60,0)" stroke="#4b4a78"/>
              <text x="370" y="143.78" font-size="10.5" fill="#fff">60</text>
              <text x="451" y="40" font-weight="700" fill="#93c5fd">Blue (B)</text>
              <rect x="400" y="55" width="34" height="34" fill="rgb(0,0,40)" stroke="#4b4a78"/>
              <text x="417" y="75.78" font-size="10.5" fill="#fff">40</text>
              <rect x="434" y="55" width="34" height="34" fill="rgb(0,0,60)" stroke="#4b4a78"/>
              <text x="451" y="75.78" font-size="10.5" fill="#fff">60</text>
              <rect x="468" y="55" width="34" height="34" fill="rgb(0,0,220)" stroke="#4b4a78"/>
              <text x="485" y="75.78" font-size="10.5" fill="#fff">220</text>
              <rect x="400" y="89" width="34" height="34" fill="rgb(0,0,40)" stroke="#4b4a78"/>
              <text x="417" y="109.78" font-size="10.5" fill="#fff">40</text>
              <rect x="434" y="89" width="34" height="34" fill="rgb(0,0,40)" stroke="#4b4a78"/>
              <text x="451" y="109.78" font-size="10.5" fill="#fff">40</text>
              <rect x="468" y="89" width="34" height="34" fill="rgb(0,0,250)" stroke="#4b4a78"/>
              <text x="485" y="109.78" font-size="10.5" fill="#fff">250</text>
              <rect x="400" y="123" width="34" height="34" fill="rgb(0,0,20)" stroke="#4b4a78"/>
              <text x="417" y="143.78" font-size="10.5" fill="#fff">20</text>
              <rect x="434" y="123" width="34" height="34" fill="rgb(0,0,128)" stroke="#4b4a78"/>
              <text x="451" y="143.78" font-size="10.5" fill="#fff">128</text>
              <rect x="468" y="123" width="34" height="34" fill="rgb(0,0,200)" stroke="#4b4a78"/>
              <text x="485" y="143.78" font-size="10.5" fill="#fff">200</text>
              <line x1="512" y1="106" x2="560" y2="106" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv3a)"/>
              <text x="621" y="40" font-weight="700">Grayscale</text>
              <rect x="570" y="55" width="34" height="34" fill="rgb(97,97,97)" stroke="#4b4a78"/>
              <text x="587" y="75.78" font-size="10.5" fill="#e2e0f0">97</text>
              <rect x="604" y="55" width="34" height="34" fill="rgb(124,124,124)" stroke="#4b4a78"/>
              <text x="621" y="75.78" font-size="10.5" fill="#111">124</text>
              <rect x="638" y="55" width="34" height="34" fill="rgb(84,84,84)" stroke="#4b4a78"/>
              <text x="655" y="75.78" font-size="10.5" fill="#e2e0f0">84</text>
              <rect x="570" y="89" width="34" height="34" fill="rgb(205,205,205)" stroke="#4b4a78"/>
              <text x="587" y="109.78" font-size="10.5" fill="#111">205</text>
              <rect x="604" y="89" width="34" height="34" fill="rgb(135,135,135)" stroke="#4b4a78"/>
              <text x="621" y="109.78" font-size="10.5" fill="#111">135</text>
              <rect x="638" y="89" width="34" height="34" fill="rgb(250,250,250)" stroke="#4b4a78"/>
              <text x="655" y="109.78" font-size="10.5" fill="#111">250</text>
              <rect x="570" y="123" width="34" height="34" fill="rgb(20,20,20)" stroke="#4b4a78"/>
              <text x="587" y="143.78" font-size="10.5" fill="#e2e0f0">20</text>
              <rect x="604" y="123" width="34" height="34" fill="rgb(128,128,128)" stroke="#4b4a78"/>
              <text x="621" y="143.78" font-size="10.5" fill="#111">128</text>
              <rect x="638" y="123" width="34" height="34" fill="rgb(106,106,106)" stroke="#4b4a78"/>
              <text x="655" y="143.78" font-size="10.5" fill="#111">106</text>
              <rect x="130" y="200" width="500" height="44" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="227"><tspan font-family="monospace">grey = 0.299×R + 0.587×G + 0.114×B</tspan></text>
            </g>
          </svg>
          <figcaption>A colour image is three grids of numbers, one for each channel. A weighted sum of the three channels gives one grey value for each pixel.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>RGB: three numbers for each pixel</h3>
          <p>Screens make every colour by mixing red, green and blue light. So most colour images use <strong>RGB</strong>. Each channel is a number from 0 to 255.</p>
          <table class="lc-table">
            <thead><tr><th>(R, G, B)</th><th>Colour</th></tr></thead>
            <tbody>
              <tr><td><code>(255, 0, 0)</code></td><td>Red</td></tr>
              <tr><td><code>(0, 255, 0)</code></td><td>Green</td></tr>
              <tr><td><code>(0, 0, 255)</code></td><td>Blue</td></tr>
              <tr><td><code>(255, 255, 0)</code></td><td>Yellow (red + green light)</td></tr>
              <tr><td><code>(0, 0, 0)</code></td><td>Black</td></tr>
              <tr><td><code>(255, 255, 255)</code></td><td>White</td></tr>
              <tr><td><code>(128, 128, 128)</code></td><td>Grey (all three the same)</td></tr>
            </tbody>
          </table>
          <p>In Python, you can store a colour image as rows of <code>(r, g, b)</code> tuples. A 640×480 colour photo has 480 rows, 640 columns and 3 channels. In NumPy, its shape is <code>(480, 640, 3)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Colour to grayscale</h3>
          <p>You could take the average of R, G and B. But our eyes see green as much brighter than blue. So the common formula gives each channel a <strong>weight</strong> (how much it counts):</p>
          <pre><code>grey = 0.299 * R + 0.587 * G + 0.114 * B</code></pre>
          <p>The three weights add up to 1. So white stays 255 and black stays 0. For the orange pixel <code>(200, 120, 40)</code>: 59.8 + 70.44 + 4.56 = 134.8, which rounds to 135.</p>
          <p>On your own computer, libraries do this for you:</p>
          <pre><code>from PIL import Image
        import cv2

        grey = Image.open("photo.jpg").convert("L")   # Pillow uses these weights

        img = cv2.imread("photo.jpg")                  # OpenCV loads channels as B, G, R
        grey2 = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        rgb = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)     # swap to R, G, B order</code></pre>
          <p>Note: OpenCV stores the channels in the order <strong>B, G, R</strong>, not R, G, B. If your colours look wrong (red and blue swapped), this is usually why.</p>
        </div>
        <div class="lc-card">
          <h3>HSV: another way to describe colour</h3>
          <p>RGB is good for screens. But it is hard to ask "is this pixel red?" in RGB, because a dark red and a light red have very different numbers. <strong>HSV</strong> uses three other values:</p>
          <ul class="lc-list">
            <li><strong>Hue (H):</strong> the colour itself, as an angle on a colour wheel from 0 to 360 degrees. Red is near 0, green near 120 and blue near 240.</li>
            <li><strong>Saturation (S):</strong> how strong the colour is. 0% is grey. 100% is a pure colour.</li>
            <li><strong>Value (V):</strong> how bright the pixel is. 0% is black.</li>
          </ul>
          <p>To find all red objects, you can keep pixels with a hue near 0 and a high saturation. This works in bright light and in shadow, because shadow mostly changes V. Note that OpenCV stores hue as 0 to 179 in 8-bit images, so check the docs for the range.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one pixel to grey</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in order to turn the orange pixel (200, 120, 40) into one grey value.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Read the three channel values: R = 200, G = 120, B = 40</li>
              <li data-order="2">Multiply each value by its weight: 200 × 0.299, 120 × 0.587, 40 × 0.114</li>
              <li data-order="3">Add the three results: 59.8 + 70.44 + 4.56 = 134.8</li>
              <li data-order="4">Round to a whole number: 135</li>
              <li data-order="5">Store 135 at the same row and column in the new grayscale image</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code has a 4×4 colour image stored as <code>(r, g, b)</code> tuples.</li>
            <li>Run it. It prints each channel as its own grid. Then it compares the simple average with the weighted grayscale formula.</li>
            <li>It also turns each pixel into HSV and finds the red pixels by their hue.</li>
            <li>Change one pixel to a dark red, such as <code>(120, 10, 10)</code>. Is it still found as red? Then change <code>MIN_SATURATION</code> and see what changes.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A colour image is three grids of numbers: red, green and blue. Grayscale is a weighted sum where green counts most. HSV splits colour from brightness, so it is useful for finding objects by their colour.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A colour image: each pixel is a tuple (r, g, b), each value 0-255.

        image = [
            [(230, 40, 40),   (240, 220, 40), (40, 180, 60),   (40, 80, 220)],
            [(200, 120, 40),  (250, 250, 250), (20, 20, 20),   (128, 128, 128)],
            [(160, 60, 200),  (210, 30, 60),  (0, 255, 0),     (0, 0, 255)],
            [(255, 0, 0),     (90, 90, 90),   (180, 20, 30),   (60, 200, 200)],
        ]
        MIN_SATURATION = 50      # percent: how strong a colour must be to count as "red"

        def channel(img, index):
            return [[pixel[index] for pixel in row] for row in img]

        def print_grid(name, grid):
            print(name)
            for row in grid:
                print("   " + " ".join(f"{v:3d}" for v in row))

        for index, name in enumerate(["Red channel", "Green channel", "Blue channel"]):
            print_grid(name, channel(image, index))

        # Grayscale: simple average vs weighted sum.
        def average_grey(r, g, b):
            return round((r + g + b) / 3)

        def weighted_grey(r, g, b):
            return round(0.299 * r + 0.587 * g + 0.114 * b)

        print_grid("Grey (simple average)", [[average_grey(*p) for p in row] for row in image])
        print_grid("Grey (weighted)", [[weighted_grey(*p) for p in row] for row in image])
        print("Pure green (0,255,0) ->", weighted_grey(0, 255, 0),
              "   pure blue (0,0,255) ->", weighted_grey(0, 0, 255))

        # RGB to HSV, done by hand. Hue in degrees, S and V in percent.
        def rgb_to_hsv(r, g, b):
            r, g, b = r / 255, g / 255, b / 255
            high, low = max(r, g, b), min(r, g, b)
            diff = high - low
            if diff == 0:
                hue = 0
            elif high == r:
                hue = (60 * (g - b) / diff) % 360
            elif high == g:
                hue = 60 * (b - r) / diff + 120
            else:
                hue = 60 * (r - g) / diff + 240
            sat = 0 if high == 0 else diff / high
            return round(hue), round(sat * 100), round(high * 100)

        print("\nFind the red pixels using HSV:")
        for r, row in enumerate(image):
            for c, pixel in enumerate(row):
                h, s, v = rgb_to_hsv(*pixel)
                is_red = (h <= 15 or h >= 345) and s >= MIN_SATURATION
                if is_red:
                    print(f"   row {r}, col {c}: RGB {pixel} -> H={h}, S={s}%, V={v}%  RED")

        # Try it: change a pixel to a dark red like (120, 10, 10). Is it still found?
      PYTHON
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Image Operations</h1>
        </div>
        <p class="lc-lead">Now that an image is just a grid of numbers, you can change it with simple Python. In this lesson, you will change brightness and contrast, and invert an image. You will also crop, resize, flip and rotate it. Vision programs use these operations all the time. They prepare images for a model, and they make new training images from old ones.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="A 5 by 5 image with an L shape, and four results: flipped left to right, rotated 90 degrees clockwise, inverted, and made brighter. Flip and rotate move pixels. Invert and brighten change the values.">
            <defs><marker id="cv4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="130" height="185" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="80" y="40" font-weight="700">Original</text>
              <rect x="35" y="55" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="53" y="55" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="71" y="55" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="89" y="55" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="107" y="55" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="35" y="73" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="53" y="73" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="71" y="73" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="89" y="73" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="107" y="73" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="35" y="91" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="53" y="91" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="71" y="91" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="89" y="91" width="18" height="18" fill="rgb(120,120,120)" stroke="#1f1f44"/>
              <rect x="107" y="91" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="35" y="109" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="53" y="109" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="71" y="109" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="89" y="109" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="107" y="109" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="35" y="127" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="53" y="127" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="71" y="127" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="89" y="127" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="107" y="127" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <text x="80" y="176" font-size="11" fill="#9b99b8" font-family="monospace">5 × 5 image</text>
              <rect x="195" y="15" width="130" height="185" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="260" y="40" font-weight="700">Flip left-right</text>
              <rect x="215" y="55" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="233" y="55" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="251" y="55" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="269" y="55" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="287" y="55" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="215" y="73" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="233" y="73" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="251" y="73" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="269" y="73" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="287" y="73" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="215" y="91" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="233" y="91" width="18" height="18" fill="rgb(120,120,120)" stroke="#1f1f44"/>
              <rect x="251" y="91" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="269" y="91" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="287" y="91" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="215" y="109" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="233" y="109" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="251" y="109" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="269" y="109" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="287" y="109" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="215" y="127" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="233" y="127" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="251" y="127" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="269" y="127" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="287" y="127" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <text x="260" y="176" font-size="11" fill="#9b99b8" font-family="monospace">row[::-1]</text>
              <rect x="335" y="15" width="130" height="185" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="400" y="40" font-weight="700">Rotate 90°</text>
              <rect x="355" y="55" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="373" y="55" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="391" y="55" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="409" y="55" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="427" y="55" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="355" y="73" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="373" y="73" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="391" y="73" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="409" y="73" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="427" y="73" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="355" y="91" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="373" y="91" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="391" y="91" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="409" y="91" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="427" y="91" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="355" y="109" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="373" y="109" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="391" y="109" width="18" height="18" fill="rgb(120,120,120)" stroke="#1f1f44"/>
              <rect x="409" y="109" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="427" y="109" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="355" y="127" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="373" y="127" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="391" y="127" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="409" y="127" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <rect x="427" y="127" width="18" height="18" fill="rgb(30,30,30)" stroke="#1f1f44"/>
              <text x="400" y="176" font-size="11" fill="#9b99b8" font-family="monospace">zip(*img[::-1])</text>
              <rect x="475" y="15" width="130" height="185" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="540" y="40" font-weight="700">Invert</text>
              <rect x="495" y="55" width="18" height="18" fill="rgb(55,55,55)" stroke="#1f1f44"/>
              <rect x="513" y="55" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="531" y="55" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="549" y="55" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="567" y="55" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="495" y="73" width="18" height="18" fill="rgb(55,55,55)" stroke="#1f1f44"/>
              <rect x="513" y="73" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="531" y="73" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="549" y="73" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="567" y="73" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="495" y="91" width="18" height="18" fill="rgb(55,55,55)" stroke="#1f1f44"/>
              <rect x="513" y="91" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="531" y="91" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="549" y="91" width="18" height="18" fill="rgb(135,135,135)" stroke="#1f1f44"/>
              <rect x="567" y="91" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="495" y="109" width="18" height="18" fill="rgb(55,55,55)" stroke="#1f1f44"/>
              <rect x="513" y="109" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="531" y="109" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="549" y="109" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="567" y="109" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <rect x="495" y="127" width="18" height="18" fill="rgb(55,55,55)" stroke="#1f1f44"/>
              <rect x="513" y="127" width="18" height="18" fill="rgb(55,55,55)" stroke="#1f1f44"/>
              <rect x="531" y="127" width="18" height="18" fill="rgb(55,55,55)" stroke="#1f1f44"/>
              <rect x="549" y="127" width="18" height="18" fill="rgb(55,55,55)" stroke="#1f1f44"/>
              <rect x="567" y="127" width="18" height="18" fill="rgb(225,225,225)" stroke="#1f1f44"/>
              <text x="540" y="176" font-size="11" fill="#9b99b8" font-family="monospace">255 - v</text>
              <rect x="615" y="15" width="130" height="185" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="680" y="40" font-weight="700">Brighter</text>
              <rect x="635" y="55" width="18" height="18" fill="rgb(255,255,255)" stroke="#1f1f44"/>
              <rect x="653" y="55" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="671" y="55" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="689" y="55" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="707" y="55" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="635" y="73" width="18" height="18" fill="rgb(255,255,255)" stroke="#1f1f44"/>
              <rect x="653" y="73" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="671" y="73" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="689" y="73" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="707" y="73" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="635" y="91" width="18" height="18" fill="rgb(255,255,255)" stroke="#1f1f44"/>
              <rect x="653" y="91" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="671" y="91" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="689" y="91" width="18" height="18" fill="rgb(200,200,200)" stroke="#1f1f44"/>
              <rect x="707" y="91" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="635" y="109" width="18" height="18" fill="rgb(255,255,255)" stroke="#1f1f44"/>
              <rect x="653" y="109" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="671" y="109" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="689" y="109" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="707" y="109" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <rect x="635" y="127" width="18" height="18" fill="rgb(255,255,255)" stroke="#1f1f44"/>
              <rect x="653" y="127" width="18" height="18" fill="rgb(255,255,255)" stroke="#1f1f44"/>
              <rect x="671" y="127" width="18" height="18" fill="rgb(255,255,255)" stroke="#1f1f44"/>
              <rect x="689" y="127" width="18" height="18" fill="rgb(255,255,255)" stroke="#1f1f44"/>
              <rect x="707" y="127" width="18" height="18" fill="rgb(110,110,110)" stroke="#1f1f44"/>
              <text x="680" y="176" font-size="11" fill="#9b99b8" font-family="monospace">min(255, v + 80)</text>
              <line x1="150" y1="100" x2="186" y2="100" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv4a)"/>
              <text x="190" y="228" text-anchor="start" fill="#9b99b8" font-size="11.5">Flip and rotate move pixels to new places.</text>
              <text x="470" y="228" text-anchor="start" fill="#9b99b8" font-size="11.5">Invert and brighten change the values.</text>
            </g>
          </svg>
          <figcaption>Some operations move pixels to new places. Others keep the places but change the numbers.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Changing the values</h3>
          <p>These operations visit every pixel and change its value. The pixel stays in the same place.</p>
          <table class="lc-table">
            <thead><tr><th>Operation</th><th>Formula for one pixel <code>v</code></th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td>Brightness</td><td><code>v + 50</code></td><td>Every pixel gets lighter</td></tr>
              <tr><td>Contrast</td><td><code>(v - 128) * 1.5 + 128</code></td><td>Dark gets darker, bright gets brighter</td></tr>
              <tr><td>Invert</td><td><code>255 - v</code></td><td>Black becomes white, like a photo negative</td></tr>
            </tbody>
          </table>
          <p>The result can go below 0 or above 255. So you <strong>clamp</strong> it: you keep it inside the range with <code>max(0, min(255, v))</code>. Clamping loses detail. If many pixels become 255, you cannot tell them apart any more.</p>
        </div>
        <div class="lc-card">
          <h3>Moving the pixels</h3>
          <ul class="lc-list">
            <li><strong>Crop:</strong> keep only part of the image. Take some rows, and some columns from each row: <code>[row[left:right] for row in img[top:bottom]]</code>.</li>
            <li><strong>Flip left-right:</strong> reverse every row: <code>[row[::-1] for row in img]</code>.</li>
            <li><strong>Flip upside down:</strong> reverse the list of rows: <code>img[::-1]</code>.</li>
            <li><strong>Rotate 90° clockwise:</strong> the old bottom row becomes the new left column: <code>[list(r) for r in zip(*img[::-1])]</code>.</li>
            <li><strong>Resize (nearest neighbour):</strong> for each new pixel, find the closest old pixel and copy its value. It is fast, but it can look blocky.</li>
          </ul>
          <p>Nearest-neighbour resize uses this rule for each new pixel:</p>
          <pre><code>new[r][c] = old[r * old_height // new_height][c * old_width // new_width]</code></pre>
          <p>Better methods, like bilinear resize, mix the nearby pixels. This gives a smoother result.</p>
        </div>
        <div class="lc-card">
          <h3>On your own computer: Pillow</h3>
          <pre><code>from PIL import Image, ImageEnhance, ImageOps

        img = Image.open("photo.jpg")
        brighter = ImageEnhance.Brightness(img).enhance(1.4)    # 40% brighter
        stronger = ImageEnhance.Contrast(img).enhance(1.5)
        negative = ImageOps.invert(img.convert("RGB"))
        part = img.crop((100, 50, 300, 250))          # (left, top, right, bottom)
        small = img.resize((64, 64), Image.Resampling.NEAREST)
        mirror = ImageOps.mirror(img)                 # flip left-right
        turned = img.rotate(90, expand=True)          # 90 degrees counter-clockwise</code></pre>
          <p>Note: in Pillow, a positive angle in <code>rotate</code> turns the image <em>counter-clockwise</em>. The <code>expand=True</code> option makes the output big enough to hold the whole turned image.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what does each operation change?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort the operations by what they change.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="val" data-label="Changes values"></div>
              <div data-sorter-target="bucket" data-bucket="pos" data-label="Moves pixels"></div>
              <div data-sorter-target="bucket" data-bucket="size" data-label="Changes size"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="val" data-why="Each pixel stays in place. Only its number goes up.">Add 50 to every pixel</li>
              <li data-bucket="val" data-why="255 - v changes each number. Nothing moves.">Invert the image</li>
              <li data-bucket="val" data-why="Values move away from 128. The places stay the same.">Increase the contrast</li>
              <li data-bucket="pos" data-why="The same numbers are still there, but each row is reversed.">Flip left-right</li>
              <li data-bucket="pos" data-why="Every pixel goes to a new row and column. For a square image, the size stays the same.">Rotate a square image by 90°</li>
              <li data-bucket="size" data-why="You keep only some rows and columns, so the image gets smaller.">Crop the centre</li>
              <li data-bucket="size" data-why="The new image has fewer rows and columns.">Resize to half the width and height</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code has a 6×6 image with an "L" shape. The shape is not symmetric, so you can see flips and rotations clearly.</li>
            <li>Run it. It applies each operation and prints the result as a picture.</li>
            <li>Change <code>AMOUNT</code> and <code>FACTOR</code> to see brightness and contrast change. Try a factor of 0.5 for low contrast.</li>
            <li>Resize to 12×12 and then to 3×3. Look at how nearest neighbour copies or drops pixels.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Brightness, contrast and invert change pixel values. Crop, resize, flip and rotate change where the pixels are. Each one is only a few lines of Python on a list of lists.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Image operations on a tiny 6x6 grayscale image (0 = black, 255 = white).

        image = [
            [220,  40,  40,  40,  40,  40],
            [220,  40,  40,  40,  40,  40],
            [220,  40,  40, 150,  40,  40],
            [220,  40,  40,  40,  40,  40],
            [220,  40,  40,  40,  40,  40],
            [220, 220, 220, 220, 220,  40],
        ]
        AMOUNT = 60     # for brightness
        FACTOR = 1.5    # for contrast

        def clamp(v):
            return max(0, min(255, round(v)))

        def show(title, img):
            chars = " .:-=+*#%@"
            print(f"{title} ({len(img)} rows x {len(img[0])} cols)")
            for row in img:
                print("   |" + "".join(chars[v * 9 // 255] * 2 for v in row) + "|")

        # Operations that change values
        def brightness(img, amount):
            return [[clamp(v + amount) for v in row] for row in img]

        def contrast(img, factor):
            return [[clamp((v - 128) * factor + 128) for v in row] for row in img]

        def invert(img):
            return [[255 - v for v in row] for row in img]

        # Operations that move pixels or change the size
        def crop(img, top, left, bottom, right):
            return [row[left:right] for row in img[top:bottom]]

        def flip_left_right(img):
            return [row[::-1] for row in img]

        def flip_up_down(img):
            return img[::-1]

        def rotate_clockwise(img):
            return [list(r) for r in zip(*img[::-1])]

        def resize_nearest(img, new_h, new_w):
            old_h, old_w = len(img), len(img[0])
            return [[img[r * old_h // new_h][c * old_w // new_w] for c in range(new_w)]
                    for r in range(new_h)]

        show("Original", image)
        show(f"Brightness +{AMOUNT}", brightness(image, AMOUNT))
        show(f"Contrast x{FACTOR}", contrast(image, FACTOR))
        show("Invert", invert(image))
        show("Crop rows 2-5, cols 0-3", crop(image, 2, 0, 6, 4))
        show("Flip left-right", flip_left_right(image))
        show("Flip up-down", flip_up_down(image))
        show("Rotate 90 clockwise", rotate_clockwise(image))
        show("Resize to 3x3 (nearest)", resize_nearest(image, 3, 3))

        print("First row, original: ", image[0])
        print("First row, contrast: ", contrast(image, FACTOR)[0])

        # Try it: resize to 12x12, or rotate four times and check you get the original back.
      PYTHON
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Histograms and Thresholding</h1>
        </div>
        <p class="lc-lead">A <strong>histogram</strong> counts how many pixels have each brightness value. It quickly tells you if an image is dark, bright or low in contrast. <strong>Thresholding</strong> turns a grayscale image into pure black and white. You pick one value, and every pixel goes to one side of it. In this lesson, you will build a histogram and use it to choose a good threshold.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A histogram of a scanned page has two hills: a dark hill for the ink and a bright hill for the paper. A dashed threshold line at 128 sits in the valley between them. A small 4 by 4 image is shown before and after thresholding: dark pixels become black and bright pixels become white.">
            <defs><marker id="cv5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <line x1="50" y1="200" x2="518" y2="200" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv5a)"/>
              <line x1="50" y1="200" x2="50" y2="22" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv5a)"/>
              <text x="42" y="218" font-size="11" fill="#9b99b8">0</text>
              <text x="498" y="218" font-size="11" fill="#9b99b8">255</text>
              <text x="274" y="236" font-size="11.5" fill="#9b99b8">pixel value (dark → bright)</text>
              <text x="30" y="110" font-size="11.5" fill="#9b99b8" transform="rotate(-90 30 110)">how many pixels</text>
              <rect x="52" y="187" width="24" height="13" fill="#8b5cf6"/>
              <rect x="80" y="161" width="24" height="39" fill="#8b5cf6"/>
              <rect x="108" y="109" width="24" height="91" fill="#8b5cf6"/>
              <rect x="136" y="141.5" width="24" height="58.5" fill="#8b5cf6"/>
              <rect x="164" y="174" width="24" height="26" fill="#8b5cf6"/>
              <rect x="192" y="187" width="24" height="13" fill="#8b5cf6"/>
              <rect x="220" y="193.5" width="24" height="6.5" fill="#8b5cf6"/>
              <rect x="248" y="200" width="24" height="0" fill="#8b5cf6"/>
              <rect x="276" y="193.5" width="24" height="6.5" fill="#22d3ee"/>
              <rect x="304" y="193.5" width="24" height="6.5" fill="#22d3ee"/>
              <rect x="332" y="180.5" width="24" height="19.5" fill="#22d3ee"/>
              <rect x="360" y="148" width="24" height="52" fill="#22d3ee"/>
              <rect x="388" y="83" width="24" height="117" fill="#22d3ee"/>
              <rect x="416" y="44" width="24" height="156" fill="#22d3ee"/>
              <rect x="444" y="122" width="24" height="78" fill="#22d3ee"/>
              <rect x="472" y="180.5" width="24" height="19.5" fill="#22d3ee"/>
              <line x1="274" y1="30" x2="274" y2="200" stroke="#ec4899" stroke-width="2" stroke-dasharray="6 4"/>
              <text x="274" y="24" font-size="11.5" fill="#f9a8d4">threshold 128</text>
              <text x="134" y="80" font-size="11.5" fill="#c4b5fd">ink (dark hill)</text>
              <text x="414" y="30" font-size="11.5" fill="#67e8f9">paper (bright hill)</text>
              <text x="600" y="30" font-weight="700">Before</text>
              <rect x="552" y="40" width="24" height="24" fill="rgb(210,210,210)" stroke="#4b4a78"/>
              <text x="564" y="55.24" font-size="9" fill="#111">210</text>
              <rect x="576" y="40" width="24" height="24" fill="rgb(205,205,205)" stroke="#4b4a78"/>
              <text x="588" y="55.24" font-size="9" fill="#111">205</text>
              <rect x="600" y="40" width="24" height="24" fill="rgb(215,215,215)" stroke="#4b4a78"/>
              <text x="612" y="55.24" font-size="9" fill="#111">215</text>
              <rect x="624" y="40" width="24" height="24" fill="rgb(208,208,208)" stroke="#4b4a78"/>
              <text x="636" y="55.24" font-size="9" fill="#111">208</text>
              <rect x="552" y="64" width="24" height="24" fill="rgb(200,200,200)" stroke="#4b4a78"/>
              <text x="564" y="79.24" font-size="9" fill="#111">200</text>
              <rect x="576" y="64" width="24" height="24" fill="rgb(40,40,40)" stroke="#4b4a78"/>
              <text x="588" y="79.24" font-size="9" fill="#e2e0f0">40</text>
              <rect x="600" y="64" width="24" height="24" fill="rgb(35,35,35)" stroke="#4b4a78"/>
              <text x="612" y="79.24" font-size="9" fill="#e2e0f0">35</text>
              <rect x="624" y="64" width="24" height="24" fill="rgb(212,212,212)" stroke="#4b4a78"/>
              <text x="636" y="79.24" font-size="9" fill="#111">212</text>
              <rect x="552" y="88" width="24" height="24" fill="rgb(206,206,206)" stroke="#4b4a78"/>
              <text x="564" y="103.24" font-size="9" fill="#111">206</text>
              <rect x="576" y="88" width="24" height="24" fill="rgb(45,45,45)" stroke="#4b4a78"/>
              <text x="588" y="103.24" font-size="9" fill="#e2e0f0">45</text>
              <rect x="600" y="88" width="24" height="24" fill="rgb(38,38,38)" stroke="#4b4a78"/>
              <text x="612" y="103.24" font-size="9" fill="#e2e0f0">38</text>
              <rect x="624" y="88" width="24" height="24" fill="rgb(204,204,204)" stroke="#4b4a78"/>
              <text x="636" y="103.24" font-size="9" fill="#111">204</text>
              <rect x="552" y="112" width="24" height="24" fill="rgb(214,214,214)" stroke="#4b4a78"/>
              <text x="564" y="127.24" font-size="9" fill="#111">214</text>
              <rect x="576" y="112" width="24" height="24" fill="rgb(209,209,209)" stroke="#4b4a78"/>
              <text x="588" y="127.24" font-size="9" fill="#111">209</text>
              <rect x="600" y="112" width="24" height="24" fill="rgb(50,50,50)" stroke="#4b4a78"/>
              <text x="612" y="127.24" font-size="9" fill="#e2e0f0">50</text>
              <rect x="624" y="112" width="24" height="24" fill="rgb(200,200,200)" stroke="#4b4a78"/>
              <text x="636" y="127.24" font-size="9" fill="#111">200</text>
              <line x1="600" y1="140" x2="600" y2="156" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv5a)"/>
              <text x="612" y="152" text-anchor="start" font-size="10.5" fill="#9b99b8">v &gt; 128 ?</text>
              <rect x="552" y="162" width="24" height="24" fill="rgb(255,255,255)" stroke="#4b4a78"/>
              <text x="564" y="177.24" font-size="9" fill="#111">255</text>
              <rect x="576" y="162" width="24" height="24" fill="rgb(255,255,255)" stroke="#4b4a78"/>
              <text x="588" y="177.24" font-size="9" fill="#111">255</text>
              <rect x="600" y="162" width="24" height="24" fill="rgb(255,255,255)" stroke="#4b4a78"/>
              <text x="612" y="177.24" font-size="9" fill="#111">255</text>
              <rect x="624" y="162" width="24" height="24" fill="rgb(255,255,255)" stroke="#4b4a78"/>
              <text x="636" y="177.24" font-size="9" fill="#111">255</text>
              <rect x="552" y="186" width="24" height="24" fill="rgb(255,255,255)" stroke="#4b4a78"/>
              <text x="564" y="201.24" font-size="9" fill="#111">255</text>
              <rect x="576" y="186" width="24" height="24" fill="rgb(0,0,0)" stroke="#4b4a78"/>
              <text x="588" y="201.24" font-size="9" fill="#e2e0f0">0</text>
              <rect x="600" y="186" width="24" height="24" fill="rgb(0,0,0)" stroke="#4b4a78"/>
              <text x="612" y="201.24" font-size="9" fill="#e2e0f0">0</text>
              <rect x="624" y="186" width="24" height="24" fill="rgb(255,255,255)" stroke="#4b4a78"/>
              <text x="636" y="201.24" font-size="9" fill="#111">255</text>
              <rect x="552" y="210" width="24" height="24" fill="rgb(255,255,255)" stroke="#4b4a78"/>
              <text x="564" y="225.24" font-size="9" fill="#111">255</text>
              <rect x="576" y="210" width="24" height="24" fill="rgb(0,0,0)" stroke="#4b4a78"/>
              <text x="588" y="225.24" font-size="9" fill="#e2e0f0">0</text>
              <rect x="600" y="210" width="24" height="24" fill="rgb(0,0,0)" stroke="#4b4a78"/>
              <text x="612" y="225.24" font-size="9" fill="#e2e0f0">0</text>
              <rect x="624" y="210" width="24" height="24" fill="rgb(255,255,255)" stroke="#4b4a78"/>
              <text x="636" y="225.24" font-size="9" fill="#111">255</text>
              <rect x="552" y="234" width="24" height="24" fill="rgb(255,255,255)" stroke="#4b4a78"/>
              <text x="564" y="249.24" font-size="9" fill="#111">255</text>
              <rect x="576" y="234" width="24" height="24" fill="rgb(255,255,255)" stroke="#4b4a78"/>
              <text x="588" y="249.24" font-size="9" fill="#111">255</text>
              <rect x="600" y="234" width="24" height="24" fill="rgb(0,0,0)" stroke="#4b4a78"/>
              <text x="612" y="249.24" font-size="9" fill="#e2e0f0">0</text>
              <rect x="624" y="234" width="24" height="24" fill="rgb(255,255,255)" stroke="#4b4a78"/>
              <text x="636" y="249.24" font-size="9" fill="#111">255</text>
              <text x="600" y="276" font-weight="700">After</text>
            </g>
          </svg>
          <figcaption>A scanned page has two groups of pixels: dark ink and bright paper. A threshold in the valley between them separates the two groups.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a histogram tells you</h3>
          <p>To build a histogram, count how many pixels have value 0, how many have value 1, and so on up to 255. Often you group the values into <strong>bins</strong> (ranges), such as 0 to 31, 32 to 63, and so on.</p>
          <table class="lc-table">
            <thead><tr><th>Histogram shape</th><th>What it means</th></tr></thead>
            <tbody>
              <tr><td>Most bars on the left</td><td>A dark image</td></tr>
              <tr><td>Most bars on the right</td><td>A bright image</td></tr>
              <tr><td>All bars close together in the middle</td><td>Low contrast: the image looks flat and grey</td></tr>
              <tr><td>Two separate hills</td><td>Two groups, such as an object and its background</td></tr>
            </tbody>
          </table>
          <p>A histogram does not say <em>where</em> the pixels are. Two very different images can have the same histogram.</p>
        </div>
        <div class="lc-card">
          <h3>Thresholding</h3>
          <p>A threshold is one number, <code>T</code>. Each pixel above <code>T</code> becomes white (255). Each other pixel becomes black (0).</p>
          <pre><code>binary = [[255 if v &gt; T else 0 for v in row] for row in image]</code></pre>
          <p>The result is a <strong>binary image</strong>: only two values. Thresholding is used to clean up scanned documents, to find objects on a plain background, and as a first step before OCR.</p>
          <p>How do you choose <code>T</code>?</p>
          <ul class="lc-list">
            <li><strong>By hand:</strong> look at the histogram and pick a value in the valley between the two hills.</li>
            <li><strong>The mean:</strong> use the average brightness of the image. It is simple, but it is not always good.</li>
            <li><strong>Otsu's method:</strong> try every threshold from 0 to 255. Keep the one that splits the pixels into two groups that are most clearly different. It works well when the histogram has two hills.</li>
            <li><strong>Adaptive threshold:</strong> use a different threshold for each small area of the image. This helps when one part of the page is in shadow.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>On your own computer: Pillow and OpenCV</h3>
          <pre><code>from PIL import Image
        import cv2

        img = Image.open("page.jpg").convert("L")
        counts = img.histogram()                         # 256 counts, one for each value
        bw = img.point(lambda v: 255 if v &gt; 128 else 0)  # simple threshold

        gray = cv2.imread("page.jpg", cv2.IMREAD_GRAYSCALE)
        t, bw2 = cv2.threshold(gray, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
        print("Otsu chose", t)
        bw3 = cv2.adaptiveThreshold(gray, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C,
                                    cv2.THRESH_BINARY, 11, 2)</code></pre>
          <p>With the <code>THRESH_OTSU</code> flag, OpenCV ignores the threshold you pass (here 0). It finds its own and returns it as <code>t</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: clean up a scanned page</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Task">Turn a grey, scanned page into clean black text on white paper.</li>
              <li data-kind="tool" data-label="Count">Build a histogram: count how many pixels have each value.</li>
              <li data-kind="result" data-label="Histogram">There are two hills. A small one near 40 is the ink. A big one near 210 is the paper.</li>
              <li data-kind="thought" data-label="Choose T">The valley between the hills is around 120 to 130. Otsu's method picks a value there too.</li>
              <li data-kind="tool" data-label="Apply">Each pixel above the threshold becomes 255. Every other pixel becomes 0.</li>
              <li data-kind="check" data-label="Look at the result">The letters are black and the paper is white. The page is ready for OCR.</li>
              <li data-kind="warn" data-label="Watch out">A shadow on one side makes that paper about 110. With one threshold, it turns black. Use an adaptive threshold for pages like this.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code has an 8×8 image of a dark "T" on light paper. It prints a histogram with 8 bins as a bar chart.</li>
            <li>Run it. It finds a threshold in three ways: a fixed 128, the mean, and Otsu's method. Then it prints the black-and-white result.</li>
            <li>Set <code>LIGHT</code> to 0.6. This makes the whole image darker, like a photo in dim light. The histogram moves to the left. The fixed threshold fails, but Otsu still works.</li>
            <li>Try a very low threshold, like 30, and a very high one, like 240. What happens to the letter?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A histogram counts pixel values. It shows if an image is dark, bright or flat. When the histogram has two hills, a threshold in the valley splits the object from the background. Otsu's method finds that valley for you.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Histograms and thresholding on an 8x8 image: a dark "T" on light paper.

        LIGHT = 1.0     # try 0.6: the page is photographed in dim light

        page = [
            [205, 212, 208, 215, 210, 206, 214, 209],
            [210,  40,  35,  45,  38,  42,  50, 207],
            [213, 208, 204,  42,  48, 211, 205, 212],
            [206, 215, 209,  36,  44, 202, 216, 208],
            [211, 203, 212,  47,  39, 209, 207, 214],
            [208, 214, 206,  41,  52, 213, 204, 210],
            [215, 207, 211, 205, 210, 206, 212, 203],
            [204, 210, 213, 208, 202, 214, 209, 211],
        ]
        image = [[round(v * LIGHT) for v in row] for row in page]
        values = [v for row in image for v in row]

        # 1) Histogram with 8 bins, each 32 values wide.
        bins = [0] * 8
        for v in values:
            bins[v // 32] += 1
        print("Histogram (8 bins):")
        for i, count in enumerate(bins):
            low, high = i * 32, i * 32 + 31
            print(f"   {low:3d}-{high:3d} | {'#' * count} {count}")

        # 2) Three ways to choose a threshold.
        def otsu(vals):
            scores = {}
            for t in range(256):
                dark = [v for v in vals if v <= t]
                bright = [v for v in vals if v > t]
                if not dark or not bright:
                    continue
                w_dark, w_bright = len(dark) / len(vals), len(bright) / len(vals)
                gap = sum(bright) / len(bright) - sum(dark) / len(dark)
                scores[t] = w_dark * w_bright * gap * gap   # how clearly the groups differ
            best_score = max(scores.values())
            ties = [t for t, score in scores.items() if score > best_score - 1e-9]
            return round(sum(ties) / len(ties))   # middle of the best thresholds

        fixed = 128
        mean = round(sum(values) / len(values))
        best = otsu(values)
        print(f"\nThresholds: fixed={fixed}, mean={mean}, Otsu={best}")

        # 3) Apply a threshold: above T -> white (255), otherwise black (0).
        def threshold(img, t):
            return [[255 if v > t else 0 for v in row] for row in img]

        def show(title, img):
            print(title, "(## = black ink, .. = white paper)")
            for row in img:
                print("   |" + "".join("##" if v == 0 else ".." for v in row) + "|")

        show(f"Fixed threshold {fixed}:", threshold(image, fixed))
        show(f"Otsu threshold {best}:", threshold(image, best))

        # Try it: set LIGHT = 0.6 and run again. Which threshold still shows the "T"?
      PYTHON
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Filters and Neighbourhoods</h1>
        </div>
        <p class="lc-lead">Many image tools work on one pixel at a time, but they also look at the pixels around it. This small area is called a <strong>neighbourhood</strong>. In this lesson you will learn two simple filters that use neighbourhoods: the <strong>mean (box) filter</strong> and the <strong>median filter</strong>. Both remove <strong>noise</strong> (random wrong pixel values). You will see why one keeps edges sharp and the other does not.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A 5 by 5 grid of pixel values with one noisy pixel of 250 in the centre. Its 3 by 3 neighbourhood goes to a mean filter, which gives 38, and to a median filter, which gives 12.">
            <defs><marker id="cv6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="110" y="26" font-weight="700" fill="#c4b5fd">Image (part)</text>
              <g fill="#1f1f44" stroke="#4b4a78">
                <rect x="20" y="40" width="36" height="36"/><rect x="56" y="40" width="36" height="36"/><rect x="92" y="40" width="36" height="36"/><rect x="128" y="40" width="36" height="36"/><rect x="164" y="40" width="36" height="36"/>
                <rect x="20" y="76" width="36" height="36"/><rect x="56" y="76" width="36" height="36"/><rect x="92" y="76" width="36" height="36"/><rect x="128" y="76" width="36" height="36"/><rect x="164" y="76" width="36" height="36"/>
                <rect x="20" y="112" width="36" height="36"/><rect x="56" y="112" width="36" height="36"/><rect x="92" y="112" width="36" height="36"/><rect x="128" y="112" width="36" height="36"/><rect x="164" y="112" width="36" height="36"/>
                <rect x="20" y="148" width="36" height="36"/><rect x="56" y="148" width="36" height="36"/><rect x="92" y="148" width="36" height="36"/><rect x="128" y="148" width="36" height="36"/><rect x="164" y="148" width="36" height="36"/>
                <rect x="20" y="184" width="36" height="36"/><rect x="56" y="184" width="36" height="36"/><rect x="92" y="184" width="36" height="36"/><rect x="128" y="184" width="36" height="36"/><rect x="164" y="184" width="36" height="36"/>
              </g>
              <g fill="#9b99b8">
                <text x="38" y="63">10</text><text x="74" y="63">11</text><text x="110" y="63">12</text><text x="146" y="63">10</text><text x="182" y="63">11</text>
                <text x="38" y="99">12</text><text x="74" y="99" fill="#e2e0f0">10</text><text x="110" y="99" fill="#e2e0f0">12</text><text x="146" y="99" fill="#e2e0f0">11</text><text x="182" y="99">10</text>
                <text x="38" y="135">11</text><text x="74" y="135" fill="#e2e0f0">13</text><text x="146" y="135" fill="#e2e0f0">12</text><text x="182" y="135">12</text>
                <text x="38" y="171">10</text><text x="74" y="171" fill="#e2e0f0">11</text><text x="110" y="171" fill="#e2e0f0">10</text><text x="146" y="171" fill="#e2e0f0">12</text><text x="182" y="171">11</text>
                <text x="38" y="207">12</text><text x="74" y="207">10</text><text x="110" y="207">11</text><text x="146" y="207">10</text><text x="182" y="207">12</text>
              </g>
              <rect x="93" y="113" width="34" height="34" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="110" y="135" font-weight="700" fill="#f9a8d4">250</text>
              <rect x="56" y="76" width="108" height="108" fill="none" stroke="#f59e0b" stroke-width="2.5"/>
              <text x="110" y="240" font-size="11" fill="#9b99b8">orange box: 3×3 neighbourhood</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cv6a)"><path d="M168,110 L252,80"/><path d="M168,150 L252,180"/><path d="M502,80 L556,80"/><path d="M502,180 L556,180"/></g>
              <rect x="256" y="40" width="244" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="378" y="62" font-weight="700" fill="#93c5fd">Mean (box) filter</text>
              <text x="378" y="82" font-size="11.5">add all 9 values, divide by 9</text>
              <text x="378" y="104" font-size="11.5" fill="#9b99b8">341 ÷ 9 ≈ 38</text>
              <rect x="256" y="140" width="244" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="378" y="162" font-weight="700" fill="#6ee7b7">Median filter</text>
              <text x="378" y="182" font-size="11.5">sort the 9 values, take the middle</text>
              <text x="378" y="204" font-size="11" fill="#9b99b8">10 10 11 11 [12] 12 12 13 250</text>
              <rect x="560" y="50" width="180" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="650" y="76" font-weight="700" fill="#fcd34d">New value: 38</text>
              <text x="650" y="96" font-size="11" fill="#9b99b8">noise spread, not removed</text>
              <rect x="560" y="150" width="180" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="650" y="176" font-weight="700" fill="#6ee7b7">New value: 12</text>
              <text x="650" y="196" font-size="11" fill="#9b99b8">noise removed</text>
            </g>
          </svg>
          <figcaption>One noisy pixel (250) sits among dark pixels. The mean is pulled up by it. The median ignores it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A pixel and its neighbours</h3>
          <p>The <strong>neighbourhood</strong> of a pixel is the small square around it. A 3×3 neighbourhood is the pixel plus its 8 neighbours. A 5×5 neighbourhood has 25 pixels.</p>
          <p>A <strong>filter</strong> makes a new image. For each pixel, it looks at the neighbourhood in the old image and calculates one new value. It always reads from the old image, never from the new one.</p>
          <p>Pixels at the border have fewer neighbours. You must choose what to do there. Common choices are:</p>
          <ul class="lc-list">
            <li>Use only the neighbours that exist (the starter code does this).</li>
            <li>Copy the nearest border pixel outwards.</li>
            <li>Pretend the missing pixels are 0 (this is called <strong>zero padding</strong>).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Mean (box) filter: blur by averaging</h3>
          <p>The <strong>mean filter</strong> replaces each pixel with the average of its neighbourhood. It is also called a <strong>box blur</strong>, because every pixel in the square box counts the same.</p>
          <p>It makes the image smoother. Small random differences cancel out. But it has two problems:</p>
          <ul class="lc-list">
            <li><strong>Edges get blurry.</strong> A pixel next to a dark-to-bright edge mixes both sides.</li>
            <li><strong>Strong noise spreads.</strong> One white dot of 255 does not vanish. It becomes a light grey patch.</li>
          </ul>
          <p>A bigger box (5×5 or 7×7) gives more blur. Photo apps often use a <strong>Gaussian blur</strong> instead. It gives the centre pixels more weight than the far ones, so it looks more natural.</p>
        </div>
        <div class="lc-card">
          <h3>Median filter: take the middle value</h3>
          <p>The <strong>median</strong> is the middle value of a sorted list. The <strong>median filter</strong> sorts the neighbourhood values and keeps the middle one.</p>
          <table class="lc-table">
            <thead><tr><th>Noise type</th><th>What it looks like</th><th>Best simple filter</th></tr></thead>
            <tbody>
              <tr><td><strong>Salt-and-pepper</strong></td><td>Random pure white and pure black dots</td><td>Median: the extreme values end up at the ends of the sorted list</td></tr>
              <tr><td><strong>Grain</strong> (small random changes)</td><td>Every pixel is a little too bright or too dark</td><td>Mean or Gaussian: averaging cancels the small errors</td></tr>
            </tbody>
          </table>
          <p>The median filter also keeps edges sharp. Near an edge, most neighbours are on one side. So the middle value comes from that side, not a mix of both.</p>
          <p>The median filter is slower, because it must sort values for every pixel. For small images this does not matter.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: mean or median?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which simple filter fits each job better?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="mean" data-label="Mean (box) filter"></div>
              <div data-sorter-target="bucket" data-bucket="median" data-label="Median filter"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="median" data-why="White and black dots are extreme values. Sorting puts them at the ends, so the median skips them.">An old scanned page with random white and black dots</li>
              <li data-bucket="median" data-why="A stuck pixel is one extreme value. The median replaces it with a normal neighbour value.">A camera image with a few "stuck" pixels that are always 255</li>
              <li data-bucket="median" data-why="The median keeps edges sharp, because the middle value comes from one side of the edge.">Remove small specks but keep the sharp outline of printed letters</li>
              <li data-bucket="mean" data-why="Averaging mixes nearby pixels on purpose. That is exactly what a soft blur is.">Make the background of a photo soft and blurry on purpose</li>
              <li data-bucket="mean" data-why="Small random errors go up and down. Averaging cancels them out.">A photo with light, even grain all over it</li>
              <li data-bucket="mean" data-why="An average needs no sorting. It can also be updated quickly as the box moves.">You need the fastest possible smoothing on a very large image</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code makes an 8×8 image: dark on the left, bright on the right. Then it adds salt-and-pepper noise.</li>
            <li>Run it. First you see one noisy pixel worked out by hand. Then you see both filters on the whole image.</li>
            <li>Compare the "average error" line. The median filter removes all the noise here. The mean filter makes things worse and blurs the edge.</li>
            <li>Change <code>size = 3</code> to <code>size = 5</code>. Then change <code>range(7)</code> to <code>range(20)</code> to add more noise. When does the median filter start to fail?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A filter makes each new pixel from a small neighbourhood of old pixels. The mean averages them and blurs everything, including edges. The median takes the middle value, so it removes extreme noise and keeps edges sharp.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Filters and neighbourhoods: a mean (box) blur and a median filter on a tiny noisy image.
        import random

        random.seed(7)          # same "random" noise every run
        H, W = 8, 8
        SHADES = " .:-=+*#%@"   # dark to bright

        # A clean image: dark on the left (40), bright on the right (200)
        clean = [[40 if c < 4 else 200 for c in range(W)] for r in range(H)]

        # Salt-and-pepper noise: some pixels become pure white (255) or pure black (0)
        noisy = [row[:] for row in clean]
        for _ in range(7):
            r, c = random.randrange(H), random.randrange(W)
            noisy[r][c] = random.choice([0, 255])

        def show(title, img):
            print(title)
            for row in img:
                chars = "".join(SHADES[v * (len(SHADES) - 1) // 255] * 2 for v in row)
                nums = " ".join(f"{v:3d}" for v in row)
                print("  " + chars + "   " + nums)
            print()

        def neighbourhood(img, r, c, size=3):
            """All pixel values in the size x size square around (r, c).
            Neighbours outside the image are skipped."""
            half = size // 2
            values = []
            for dr in range(-half, half + 1):
                for dc in range(-half, half + 1):
                    rr, cc = r + dr, c + dc
                    if 0 <= rr < H and 0 <= cc < W:
                        values.append(img[rr][cc])
            return values

        def mean_filter(img, size=3):
            out = []
            for r in range(H):
                row = []
                for c in range(W):
                    vals = neighbourhood(img, r, c, size)
                    row.append(round(sum(vals) / len(vals)))    # the average
                out.append(row)
            return out

        def median_filter(img, size=3):
            out = []
            for r in range(H):
                row = []
                for c in range(W):
                    vals = sorted(neighbourhood(img, r, c, size))
                    row.append(vals[len(vals) // 2])            # the middle value
                out.append(row)
            return out

        def error(img):
            """Average difference from the clean image (smaller is better)."""
            total = sum(abs(img[r][c] - clean[r][c]) for r in range(H) for c in range(W))
            return total / (H * W)

        # Worked example for one noisy pixel
        nr, nc = next((r, c) for r in range(1, H - 1) for c in range(1, W - 1) if noisy[r][c] in (0, 255))
        vals = neighbourhood(noisy, nr, nc)
        print(f"Pixel ({nr}, {nc}) is noise: {noisy[nr][nc]}")
        print("  its 3x3 neighbourhood:", vals)
        print(f"  mean   = {sum(vals)} / {len(vals)} = {round(sum(vals) / len(vals))}")
        print(f"  median = middle of {sorted(vals)} = {sorted(vals)[len(vals) // 2]}")
        print()

        size = 3
        show("Noisy image", noisy)
        show(f"Mean filter ({size}x{size})", mean_filter(noisy, size))
        show(f"Median filter ({size}x{size})", median_filter(noisy, size))
        print(f"Average error  noisy: {error(noisy):.1f}   mean: {error(mean_filter(noisy, size)):.1f}"
              f"   median: {error(median_filter(noisy, size)):.1f}")

        # Try it: change size to 5, or change range(7) to range(20) for more noise. Which filter wins?
      PYTHON
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Convolution</h1>
        </div>
        <p class="lc-lead"><strong>Convolution</strong> is the most important operation in image processing. You slide a small grid of numbers, called a <strong>kernel</strong>, over the image. At each place you multiply and add. Blur, sharpen and edge detection are all convolutions with different kernels. Later in this course, neural networks will learn their own kernels. So it pays to understand this one idea well.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="A 3 by 3 image patch is multiplied cell by cell with a 3 by 3 sharpen kernel. The nine products are added to give 280, which is shown as 255 in the output image.">
            <defs><marker id="cv7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="71" y="30" font-weight="700" fill="#93c5fd">Image patch</text>
              <g fill="#1f1f44" stroke="#3b82f6">
                <rect x="20" y="45" width="34" height="34"/><rect x="54" y="45" width="34" height="34"/><rect x="88" y="45" width="34" height="34"/>
                <rect x="20" y="79" width="34" height="34"/><rect x="54" y="79" width="34" height="34"/><rect x="88" y="79" width="34" height="34"/>
                <rect x="20" y="113" width="34" height="34"/><rect x="54" y="113" width="34" height="34"/><rect x="88" y="113" width="34" height="34"/>
              </g>
              <text x="37" y="66">10</text><text x="71" y="66">10</text><text x="105" y="66">10</text>
              <text x="37" y="100">10</text><text x="71" y="100">100</text><text x="105" y="100">100</text>
              <text x="37" y="134">10</text><text x="71" y="134">100</text><text x="105" y="134">100</text>
              <text x="141" y="102" font-size="20" fill="#9b99b8">×</text>
              <text x="211" y="30" font-weight="700" fill="#fcd34d">Kernel</text>
              <g fill="#27274e" stroke="#f59e0b">
                <rect x="160" y="45" width="34" height="34"/><rect x="194" y="45" width="34" height="34"/><rect x="228" y="45" width="34" height="34"/>
                <rect x="160" y="79" width="34" height="34"/><rect x="194" y="79" width="34" height="34"/><rect x="228" y="79" width="34" height="34"/>
                <rect x="160" y="113" width="34" height="34"/><rect x="194" y="113" width="34" height="34"/><rect x="228" y="113" width="34" height="34"/>
              </g>
              <text x="177" y="66">0</text><text x="211" y="66">-1</text><text x="245" y="66">0</text>
              <text x="177" y="100">-1</text><text x="211" y="100">5</text><text x="245" y="100">-1</text>
              <text x="177" y="134">0</text><text x="211" y="134">-1</text><text x="245" y="134">0</text>
              <text x="281" y="102" font-size="20" fill="#9b99b8">=</text>
              <text x="351" y="30" font-weight="700" fill="#c4b5fd">Products</text>
              <g fill="#1f1f44" stroke="#8b5cf6">
                <rect x="300" y="45" width="34" height="34"/><rect x="334" y="45" width="34" height="34"/><rect x="368" y="45" width="34" height="34"/>
                <rect x="300" y="79" width="34" height="34"/><rect x="334" y="79" width="34" height="34"/><rect x="368" y="79" width="34" height="34"/>
                <rect x="300" y="113" width="34" height="34"/><rect x="334" y="113" width="34" height="34"/><rect x="368" y="113" width="34" height="34"/>
              </g>
              <g font-size="11"><text x="317" y="66">0</text><text x="351" y="66">-10</text><text x="385" y="66">0</text>
              <text x="317" y="100">-10</text><text x="351" y="100">500</text><text x="385" y="100">-100</text>
              <text x="317" y="134">0</text><text x="351" y="134">-100</text><text x="385" y="134">0</text></g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cv7a)"><path d="M408,96 L446,96"/><path d="M590,96 L618,96"/></g>
              <rect x="450" y="66" width="136" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="518" y="90" font-weight="700" fill="#6ee7b7">Add all 9</text>
              <text x="518" y="110" font-size="11.5">= 280</text>
              <rect x="622" y="56" width="124" height="80" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="684" y="80" font-weight="700" fill="#f9a8d4">Output pixel</text>
              <text x="684" y="102" font-size="11.5">280 is too big</text>
              <text x="684" y="122" font-size="11.5">shown as 255</text>
              <text x="380" y="190" fill="#9b99b8">Then the kernel moves one pixel to the right (stride 1) and does it again.</text>
              <text x="380" y="212" fill="#9b99b8">Row by row, every output pixel is made this way.</text>
            </g>
          </svg>
          <figcaption>One step of a convolution with a sharpen kernel. Multiply matching cells, then add the nine products.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Multiply and add</h3>
          <p>A <strong>kernel</strong> (also called a filter) is a small grid of numbers, often 3×3. To make one output pixel:</p>
          <ol class="lc-list">
            <li>Put the kernel's centre on the input pixel.</li>
            <li>Multiply each kernel number by the pixel under it.</li>
            <li>Add the nine products. The total is the output pixel.</li>
          </ol>
          <p>Then move the kernel to the next pixel and repeat. The mean filter is a convolution too: its kernel is nine values of 1/9.</p>
          <p>The result can be negative or bigger than 255. To show it as a grey, you usually take the absolute value (drop the minus sign) and clamp it (keep it between 0 and 255).</p>
          <p>A small note: in maths, convolution first flips the kernel. Most image tools and neural networks skip the flip. OpenCV's documentation says that its <code>filter2D</code> function also skips it. So it really computes correlation. For symmetric kernels, such as blur, it makes no difference.</p>
        </div>
        <div class="lc-card">
          <h3>Common kernels</h3>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>Kernel (row by row)</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td>Identity</td><td><code>0 0 0 / 0 1 0 / 0 0 0</code></td><td>Copies the image unchanged</td></tr>
              <tr><td>Blur (box)</td><td><code>1/9</code> in all nine places</td><td>Averages the neighbourhood</td></tr>
              <tr><td>Sharpen</td><td><code>0 -1 0 / -1 5 -1 / 0 -1 0</code></td><td>Makes the pixel stand out more from its neighbours</td></tr>
              <tr><td>Edge</td><td><code>-1 -1 -1 / -1 8 -1 / -1 -1 -1</code></td><td>Gives 0 in flat areas and big values at outlines</td></tr>
              <tr><td>Sobel X</td><td><code>-1 0 1 / -2 0 2 / -1 0 1</code></td><td>Finds left-to-right changes (vertical edges)</td></tr>
              <tr><td>Sobel Y</td><td><code>-1 -2 -1 / 0 0 0 / 1 2 1</code></td><td>Finds top-to-bottom changes (horizontal edges)</td></tr>
            </tbody>
          </table>
          <p>Look at the sums. Blur, identity and sharpen add up to 1, so flat areas keep their brightness. Edge and Sobel kernels add up to 0, so flat areas become 0.</p>
        </div>
        <div class="lc-card">
          <h3>Borders, padding and stride</h3>
          <p>At the border, part of the kernel hangs outside the image. <strong>Padding</strong> adds extra pixels around the image to fix this. <strong>Zero padding</strong> adds pixels with the value 0.</p>
          <p><strong>Stride</strong> is how far the kernel moves each step. Stride 1 visits every pixel. Stride 2 skips every other pixel, so the output is about half as wide and half as tall.</p>
          <table class="lc-table">
            <thead><tr><th>Input</th><th>Kernel</th><th>Padding</th><th>Stride</th><th>Output</th></tr></thead>
            <tbody>
              <tr><td>7×7</td><td>3×3</td><td>1</td><td>1</td><td>7×7 (same size)</td></tr>
              <tr><td>7×7</td><td>3×3</td><td>0</td><td>1</td><td>5×5 (loses a ring)</td></tr>
              <tr><td>7×7</td><td>3×3</td><td>1</td><td>2</td><td>4×4</td></tr>
            </tbody>
          </table>
          <p>The rule is: output = (input + 2 × padding − kernel) ÷ stride + 1. Round the division down. For the last row: (7 + 2 − 3) ÷ 2 + 1 = 4.</p>
          <p>Zero padding has a side effect. Border pixels see some black "fake" neighbours, so blurred borders get a bit darker.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: explore convolution</h3>
          <p>The input is a 12×12 grayscale picture. It has a bright square (220), a diagonal line (160) and a grey block (90) on black (0). The explorer uses zero padding. It shows absolute values clamped to 0–255.</p>
          <ul class="lc-list">
            <li>Pick <strong>Blur</strong>. The square's sharp sides become soft. The thin line gets fainter, because it is averaged with black.</li>
            <li>Pick <strong>Edge</strong>. The middle of the square turns black, because it is flat. Only the outlines stay bright.</li>
            <li>Pick <strong>Sobel X</strong>, then <strong>Sobel Y</strong>. Which sides of the square light up each time?</li>
            <li>Hover over or tap an output pixel on the square's border. Check the multiply-and-add yourself.</li>
            <li>Type your own kernel: all zeros with a 2 in the centre. What happens to the grey block?</li>
          </ul>
          <div class="lcw" data-controller="conv-filter"></div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code makes a 7×7 image with a bright square in the middle. It adds zero padding and slides a 3×3 kernel over it.</li>
            <li>Run it. The first part shows one output pixel as nine multiplications. Check the sum yourself.</li>
            <li>Look at the blur, sharpen and edge results. The output shows raw numbers, so negative values are normal.</li>
            <li>Look at the last three lines. Padding and stride change the output size, as in the table.</li>
            <li>Add your own kernel to <code>KERNELS</code>, for example <code>[[0, 0, 0], [0, 2, 0], [0, 0, 0]]</code>. Then use it in the loop.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Convolution is "multiply and add" repeated at every pixel. The kernel's numbers decide what happens: blur, sharpen or edges. Padding controls the borders, and stride controls how far the kernel jumps.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Convolution by hand: slide a 3x3 kernel over a tiny image, multiply and add.

        # A 7x7 grayscale image: a bright 3x3 square (100) on a dark background (10)
        image = [[100 if 2 <= r <= 4 and 2 <= c <= 4 else 10 for c in range(7)] for r in range(7)]

        KERNELS = {
            "identity": [[0, 0, 0], [0, 1, 0], [0, 0, 0]],
            "blur":     [[1/9, 1/9, 1/9], [1/9, 1/9, 1/9], [1/9, 1/9, 1/9]],
            "sharpen":  [[0, -1, 0], [-1, 5, -1], [0, -1, 0]],
            "edge":     [[-1, -1, -1], [-1, 8, -1], [-1, -1, -1]],
        }

        def pad(img, p):
            """Add p rings of zeros around the image (zero padding)."""
            w = len(img[0]) + 2 * p
            top = [[0] * w for _ in range(p)]
            middle = [[0] * p + row + [0] * p for row in img]
            bottom = [[0] * w for _ in range(p)]
            return top + middle + bottom

        def convolve(img, kernel, padding=1, stride=1):
            src = pad(img, padding)
            k = len(kernel)
            out = []
            for r in range(0, len(src) - k + 1, stride):
                row = []
                for c in range(0, len(src[0]) - k + 1, stride):
                    total = 0
                    for i in range(k):
                        for j in range(k):
                            total += src[r + i][c + j] * kernel[i][j]   # multiply ...
                    row.append(total)                                   # ... and add
                out.append(row)
            return out

        def clamp(v):
            """Make a value a valid pixel: positive and between 0 and 255."""
            return min(255, round(abs(v)))

        def show(title, img):
            """Print the raw results. Negative numbers are normal here."""
            print(f"{title}  ({len(img)} x {len(img[0])})")
            for row in img:
                print("  " + " ".join(f"{round(v):5d}" for v in row))
            print()

        # 1) One output pixel, step by step
        kernel = KERNELS["edge"]
        r, c = 2, 2                       # the top-left pixel of the bright square
        print(f"Output pixel ({r}, {c}) with the edge kernel:")
        src = pad(image, 1)
        terms = []
        total = 0
        for i in range(3):
            for j in range(3):
                v, w = src[r + i][c + j], kernel[i][j]
                terms.append(f"{v}x{w}")
                total += v * w
        print("  " + " + ".join(terms))
        print(f"  = {total}  -> shown as the grey {clamp(total)}\n")

        # 2) Whole images with different kernels
        show("Input", image)
        for name in ["blur", "sharpen", "edge"]:
            show(f"{name} kernel, padding=1, stride=1", convolve(image, KERNELS[name]))

        # 3) Padding and stride change the output size
        for padding, stride in [(1, 1), (0, 1), (1, 2)]:
            out = convolve(image, KERNELS["identity"], padding, stride)
            print(f"padding={padding}, stride={stride}: 7x7 input -> {len(out)}x{len(out[0])} output")

        # Try it: make your own kernel, for example [[0, 0, 0], [0, 2, 0], [0, 0, 0]], and add it to KERNELS.
      PYTHON
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Edge Detection</h1>
        </div>
        <p class="lc-lead">An <strong>edge</strong> is a place where brightness changes a lot over a short distance. Edges show the outlines of objects, so they are very useful. A drawing made only of edges is often easy to recognise. In this lesson you will find edges with the <strong>Sobel</strong> kernels. You will measure edge strength. Then you will learn the steps of the famous <strong>Canny</strong> edge detector.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A row of eight pixels, four dark (20) then four bright (200). The change between neighbours is 0 everywhere except 180 in the middle, which marks the edge. On the right, Sobel X gives gx, Sobel Y gives gy, and edge strength is the square root of gx squared plus gy squared.">
            <defs><marker id="cv8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="196" y="28" font-weight="700" fill="#c4b5fd">One row of pixels</text>
              <g stroke="#4b4a78">
                <rect x="20" y="42" width="44" height="44" fill="#141414"/><rect x="64" y="42" width="44" height="44" fill="#141414"/><rect x="108" y="42" width="44" height="44" fill="#141414"/><rect x="152" y="42" width="44" height="44" fill="#141414"/>
                <rect x="196" y="42" width="44" height="44" fill="#c8c8c8"/><rect x="240" y="42" width="44" height="44" fill="#c8c8c8"/><rect x="284" y="42" width="44" height="44" fill="#c8c8c8"/><rect x="328" y="42" width="44" height="44" fill="#c8c8c8"/>
              </g>
              <text x="42" y="69">20</text><text x="86" y="69">20</text><text x="130" y="69">20</text><text x="174" y="69">20</text>
              <g fill="#111"><text x="218" y="69">200</text><text x="262" y="69">200</text><text x="306" y="69">200</text><text x="350" y="69">200</text></g>
              <text x="196" y="118" fill="#9b99b8" font-size="11.5">change from one pixel to the next</text>
              <g fill="#9b99b8"><text x="64" y="146">0</text><text x="108" y="146">0</text><text x="152" y="146">0</text><text x="240" y="146">0</text><text x="284" y="146">0</text><text x="328" y="146">0</text></g>
              <rect x="170" y="128" width="52" height="28" rx="6" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="196" y="147" font-weight="700" fill="#fcd34d">180</text>
              <path d="M196,160 L196,184" stroke="#f59e0b" stroke-width="1.5" marker-end="url(#cv8a)"/>
              <text x="196" y="204" fill="#fcd34d">big change = edge</text>
              <text x="196" y="228" font-size="11" fill="#9b99b8">flat areas give 0</text>
              <rect x="440" y="30" width="140" height="50" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="510" y="52" font-weight="700" fill="#93c5fd">Sobel X</text><text x="510" y="70" font-size="11">gx: left-right change</text>
              <rect x="600" y="30" width="140" height="50" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="670" y="52" font-weight="700" fill="#c4b5fd">Sobel Y</text><text x="670" y="70" font-size="11">gy: up-down change</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cv8a)"><path d="M510,82 L570,126"/><path d="M670,82 L610,126"/><path d="M590,184 L590,206"/></g>
              <rect x="460" y="130" width="260" height="52" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="590" y="152" font-weight="700" fill="#6ee7b7">Edge strength</text>
              <text x="590" y="172" font-size="12">√(gx² + gy²)</text>
              <text x="590" y="226" font-size="11.5" fill="#9b99b8">strength above a threshold = edge pixel</text>
            </g>
          </svg>
          <figcaption>An edge is a big jump between neighbouring pixels. Sobel measures the jump in two directions, then you combine them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Edges are big changes</h3>
          <p>Look at one row of pixels. Subtract each pixel from the next one. In flat areas the difference is about 0. At an edge, the difference is large.</p>
          <p>The direction of the change also matters. Going from dark to bright gives a positive number. Going from bright to dark gives a negative number. For edge strength, you only care about the size, so you drop the sign.</p>
          <p>Real photos have noise, so single pixel differences jump around. That is why edge kernels look at a 3×3 neighbourhood, not just two pixels.</p>
        </div>
        <div class="lc-card">
          <h3>Sobel kernels and edge strength</h3>
          <p>The <strong>Sobel</strong> kernels are two 3×3 kernels. They measure change in two directions:</p>
          <table class="lc-table">
            <thead><tr><th>Kernel</th><th>Numbers (row by row)</th><th>Measures</th><th>Finds</th></tr></thead>
            <tbody>
              <tr><td>Sobel X</td><td><code>-1 0 1 / -2 0 2 / -1 0 1</code></td><td>right side minus left side (<code>gx</code>)</td><td>vertical edges, like the side of a door</td></tr>
              <tr><td>Sobel Y</td><td><code>-1 -2 -1 / 0 0 0 / 1 2 1</code></td><td>bottom minus top (<code>gy</code>)</td><td>horizontal edges, like the top of a table</td></tr>
            </tbody>
          </table>
          <p>The middle row or column gets weight 2. This makes the kernel care most about the pixels closest to the centre. It also smooths a little, so noise has less effect.</p>
          <p>You combine the two results into one <strong>edge strength</strong> (also called the gradient magnitude):</p>
          <pre><code>strength = sqrt(gx * gx + gy * gy)
        direction = atan2(gy, gx)      # which way brightness increases</code></pre>
          <p>Finally, pick a <strong>threshold</strong>. Pixels with strength above it are edges. Too low a threshold keeps noise. Too high a threshold loses weak edges.</p>
        </div>
        <div class="lc-card">
          <h3>The Canny edge detector</h3>
          <p>Sobel plus one threshold gives thick, broken edges. The <strong>Canny</strong> edge detector (John Canny, 1986) adds more steps to fix this. It is still one of the most used edge detectors. In OpenCV it is one line:</p>
          <pre><code>import cv2
        gray = cv2.imread("photo.jpg", cv2.IMREAD_GRAYSCALE)
        edges = cv2.Canny(gray, 100, 200)   # low and high thresholds
        cv2.imwrite("edges.png", edges)</code></pre>
          <p>The two numbers are a low and a high threshold. Strong edges (above the high one) are always kept. Weak edges (between the two) are kept only if they touch a strong edge. This is called <strong>hysteresis</strong>. It keeps real lines connected and throws away lonely noise pixels.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the steps of Canny</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of the Canny edge detector in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Blur the image a little (Gaussian blur) to reduce noise</li>
              <li data-order="2">Use Sobel kernels to find gx, gy, the edge strength and the direction</li>
              <li data-order="3">Thin the edges: keep a pixel only if it is stronger than its neighbours across the edge</li>
              <li data-order="4">Use two thresholds to mark each pixel as a strong edge, a weak edge or not an edge</li>
              <li data-order="5">Keep weak edges only if they connect to strong edges (hysteresis)</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code makes a 10×10 image with a bright rectangle. It applies Sobel X and Sobel Y, then computes edge strength.</li>
            <li>Run it. In <code>gx</code>, only the left and right sides light up. In <code>gy</code>, only the top and bottom do. One side is positive and the other is negative.</li>
            <li>Look at the edge map. The edges are two pixels thick. The thinning step in Canny fixes this.</li>
            <li>Change <code>threshold</code> to 600. Which edge pixels disappear? Then set it back to 300 and make the rectangle darker (change 200 to 60). What happens to the edges now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An edge is a big change in brightness. Sobel X and Sobel Y measure the change in two directions, and √(gx² + gy²) gives the edge strength. Canny adds blur, thinning and two thresholds to get clean, thin, connected edges.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Edge detection with Sobel kernels: gx, gy, edge strength and a threshold.
        import math

        H, W = 10, 10
        # A 10x10 image: a bright rectangle (200) on a dark background (20)
        image = [[200 if 3 <= r <= 6 and 2 <= c <= 7 else 20 for c in range(W)] for r in range(H)]

        SOBEL_X = [[-1, 0, 1], [-2, 0, 2], [-1, 0, 1]]      # finds left-right changes
        SOBEL_Y = [[-1, -2, -1], [0, 0, 0], [1, 2, 1]]      # finds up-down changes

        def apply(img, kernel, r, c):
            """Multiply and add around (r, c). Outside pixels copy the nearest edge pixel."""
            total = 0
            for i in range(3):
                for j in range(3):
                    rr = min(max(r + i - 1, 0), H - 1)
                    cc = min(max(c + j - 1, 0), W - 1)
                    total += img[rr][cc] * kernel[i][j]
            return total

        gx = [[apply(image, SOBEL_X, r, c) for c in range(W)] for r in range(H)]
        gy = [[apply(image, SOBEL_Y, r, c) for c in range(W)] for r in range(H)]
        strength = [[math.hypot(gx[r][c], gy[r][c]) for c in range(W)] for r in range(H)]   # sqrt(gx^2 + gy^2)

        def show(title, grid, fmt="{:5.0f}"):
            print(title)
            for row in grid:
                print("  " + " ".join(fmt.format(v) for v in row))
            print()

        show("Input image", image)
        show("gx (Sobel X): left-right change", gx)
        show("gy (Sobel Y): up-down change", gy)
        show("Edge strength = sqrt(gx*gx + gy*gy)", strength)

        # One pixel in detail: on the left side of the rectangle
        r, c = 4, 2
        angle = math.degrees(math.atan2(gy[r][c], gx[r][c]))
        print(f"Pixel ({r}, {c}): gx = {gx[r][c]}, gy = {gy[r][c]}")
        print(f"  strength = {strength[r][c]:.0f}, direction = {angle:.0f} degrees (0 = brighter to the right)\n")

        # Keep only strong edges
        threshold = 300
        print(f"Edge map (# = strength above {threshold})")
        for row in strength:
            print("  " + " ".join("#" if v > threshold else "." for v in row))

        # Try it: change threshold to 600, or make the rectangle darker (200 -> 60) and run again.
      PYTHON
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Features and Matching</h1>
        </div>
        <p class="lc-lead">How does your phone join several photos into one panorama? It finds the same points in both photos and lines them up. These special points are called <strong>keypoints</strong>, and corners make the best ones. In this lesson you will learn what makes a good keypoint. You will learn how a <strong>descriptor</strong> (a list of numbers that describes the area around a point) helps you match points between photos.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Three panels. In a flat area, moving a small window in any direction changes nothing. On an edge, moving along the edge changes nothing, but moving across it changes a lot. At a corner, moving in any direction changes a lot, so corners make good keypoints.">
            <defs><marker id="cv9a" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#f59e0b"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="230" height="160" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="30" y="30" width="200" height="130" fill="#6b6b8a"/>
              <rect x="105" y="70" width="50" height="50" fill="none" stroke="#f59e0b" stroke-width="2" stroke-dasharray="5 3"/>
              <g stroke="#f59e0b" stroke-width="1.5" marker-end="url(#cv9a)"><line x1="160" y1="95" x2="190" y2="95"/><line x1="100" y1="95" x2="70" y2="95"/><line x1="130" y1="66" x2="130" y2="42"/><line x1="130" y1="124" x2="130" y2="150"/></g>
              <text x="130" y="200" font-weight="700" fill="#9b99b8">Flat area</text>
              <text x="130" y="220" font-size="11.5">no change in any direction</text>
              <text x="130" y="238" font-size="11" fill="#fca5a5">bad keypoint</text>
              <rect x="265" y="15" width="230" height="160" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="280" y="30" width="100" height="130" fill="#c8c8c8"/>
              <rect x="355" y="70" width="50" height="50" fill="none" stroke="#f59e0b" stroke-width="2" stroke-dasharray="5 3"/>
              <g stroke="#f59e0b" stroke-width="1.5" marker-end="url(#cv9a)"><line x1="410" y1="95" x2="440" y2="95"/><line x1="350" y1="95" x2="320" y2="95"/><line x1="380" y1="66" x2="380" y2="42"/><line x1="380" y1="124" x2="380" y2="150"/></g>
              <text x="380" y="200" font-weight="700" fill="#93c5fd">Edge</text>
              <text x="380" y="220" font-size="11.5">change only across the edge</text>
              <text x="380" y="238" font-size="11" fill="#fcd34d">slides along, so unclear</text>
              <rect x="515" y="15" width="230" height="160" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <rect x="530" y="95" width="100" height="65" fill="#c8c8c8"/>
              <rect x="605" y="70" width="50" height="50" fill="none" stroke="#f59e0b" stroke-width="2" stroke-dasharray="5 3"/>
              <g stroke="#f59e0b" stroke-width="1.5" marker-end="url(#cv9a)"><line x1="660" y1="95" x2="690" y2="95"/><line x1="600" y1="95" x2="570" y2="95"/><line x1="630" y1="66" x2="630" y2="42"/><line x1="630" y1="124" x2="630" y2="150"/></g>
              <text x="630" y="200" font-weight="700" fill="#6ee7b7">Corner</text>
              <text x="630" y="220" font-size="11.5">change in every direction</text>
              <text x="630" y="238" font-size="11" fill="#6ee7b7">good keypoint</text>
            </g>
          </svg>
          <figcaption>Move a small window (orange) a little. A corner is the only place where every move changes what you see.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What makes a good keypoint?</h3>
          <p>A <strong>keypoint</strong> (or feature point) is a point you can find again in another photo of the same scene. It must be easy to locate exactly.</p>
          <ul class="lc-list">
            <li><strong>Flat areas are bad.</strong> A patch of blue sky looks the same everywhere.</li>
            <li><strong>Edges are only half good.</strong> You know where the edge is, but not where along it you are.</li>
            <li><strong>Corners are good.</strong> A small move in any direction changes the view. So the position is exact.</li>
          </ul>
          <p>A <strong>corner detector</strong> gives every pixel a "cornerness" score. It then keeps the pixels whose score is high and also the highest among their neighbours. The <strong>Harris corner detector</strong> (1988) is a classic. <strong>FAST</strong> is a quick detector that checks a circle of pixels around each point.</p>
        </div>
        <div class="lc-card">
          <h3>Descriptors: a fingerprint for each point</h3>
          <p>Knowing <em>where</em> the corners are is not enough. You must also know <em>which</em> corner in photo B matches which corner in photo A. For this, each keypoint gets a <strong>descriptor</strong>: a list of numbers that describes the small area around it.</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Descriptor</th><th>Compared with</th></tr></thead>
            <tbody>
              <tr><td>Raw patch (starter code)</td><td>The pixel values around the point</td><td>Sum of squared differences</td></tr>
              <tr><td>SIFT</td><td>128 numbers built from edge directions near the point</td><td>Straight-line (Euclidean) distance</td></tr>
              <tr><td>ORB</td><td>256 bits (0s and 1s) from brightness comparisons</td><td>Hamming distance (count the different bits)</td></tr>
            </tbody>
          </table>
          <p>Good descriptors stay almost the same when the photo is a bit brighter, rotated or zoomed. SIFT and ORB are both in the main OpenCV package. SIFT moved there in version 4.4, after its patent ended. ORB is faster. Newer systems often use descriptors learned by neural networks, but the idea is the same.</p>
        </div>
        <div class="lc-card">
          <h3>Matching and cleaning up</h3>
          <p>For each descriptor in photo A, find the closest descriptor in photo B. Some matches will be wrong, for example on a building with many identical windows. Two tricks help:</p>
          <ul class="lc-list">
            <li><strong>Ratio test:</strong> keep a match only if the best one is clearly better than the second best. If two candidates look equally good, the point is unclear, so skip it.</li>
            <li><strong>RANSAC:</strong> try many small random groups of matches. Find the movement (transform) that most matches agree with. Matches that disagree are ignored.</li>
          </ul>
          <pre><code>import cv2
        a = cv2.imread("left.jpg", cv2.IMREAD_GRAYSCALE)
        b = cv2.imread("right.jpg", cv2.IMREAD_GRAYSCALE)
        orb = cv2.ORB_create(nfeatures=1000)
        kp_a, des_a = orb.detectAndCompute(a, None)
        kp_b, des_b = orb.detectAndCompute(b, None)
        pairs = cv2.BFMatcher(cv2.NORM_HAMMING).knnMatch(des_a, des_b, k=2)
        good = [p[0] for p in pairs if len(p) == 2 and p[0].distance &lt; 0.75 * p[1].distance]
        print(len(kp_a), len(kp_b), len(good))</code></pre>
          <p>For a full panorama, OpenCV also has <code>cv2.Stitcher_create()</code>. It does all these steps for you.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: making a panorama</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Task">Join two overlapping holiday photos into one wide panorama.</li>
              <li data-kind="tool" data-label="Detect keypoints">Run a corner detector (ORB) on each photo. It finds many corners: window corners, roof tips, rocks.</li>
              <li data-kind="tool" data-label="Describe">Each keypoint gets a descriptor. For ORB this is 256 bits that describe the area around the point.</li>
              <li data-kind="tool" data-label="Match">For each keypoint in photo A, find the two closest descriptors in photo B.</li>
              <li data-kind="check" data-label="Ratio test">Keep a match only if the best is clearly closer than the second best. Unclear matches are dropped.</li>
              <li data-kind="warn" data-label="Wrong matches remain">Some wrong matches are still there, for example between two identical windows.</li>
              <li data-kind="tool" data-label="RANSAC">Find the one transform that most matches agree with. The wrong matches disagree, so they are ignored.</li>
              <li data-kind="answer" data-label="Result">Warp photo B with that transform and blend it with photo A. The result is one wide panorama.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code makes two tiny "photos" of the same scene. In photo B the camera moved 1 row down and 2 columns right.</li>
            <li>Run it. The corner detector marks keypoints with <code>X</code>. It finds the box corners, not the flat areas or straight sides.</li>
            <li>Read the matches. Some points have no clear match. That is the ratio test and the distance limit at work.</li>
            <li>The last line counts "votes" to find the camera movement. This is a tiny version of the RANSAC idea.</li>
            <li>Change <code>make_photo(1, 2)</code> to <code>make_photo(2, 0)</code>. Then set <code>ratio = 1.0</code> and look for wrong matches.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good keypoints are corners, because they change in every direction. A descriptor turns the area around each keypoint into numbers. Matching finds the closest descriptors, and the ratio test and RANSAC throw away the wrong matches.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Corners, descriptors and matching: find the same points in two photos.
        from collections import Counter

        H, W = 14, 16

        def make_photo(shift_r, shift_c):
            """A tiny 'photo' of a big bright box and a smaller grey box. Shifting moves the camera."""
            img = [[10] * W for _ in range(H)]
            shapes = [(4, 2, 10, 7, 200), (3, 9, 6, 12, 120)]   # (top, left, bottom, right, brightness)
            for top, left, bottom, right, value in shapes:
                for r in range(top, bottom + 1):
                    for c in range(left, right + 1):
                        rr, cc = r + shift_r, c + shift_c
                        if 0 <= rr < H and 0 <= cc < W:
                            img[rr][cc] = value
            return img

        photo_a = make_photo(0, 0)
        photo_b = make_photo(1, 2)      # the same scene, camera moved: 1 row down, 2 columns right

        def window_change(img, r, c, dr, dc):
            """How much a 3x3 window changes if we move it by (dr, dc)? Sum of squared differences."""
            return sum((img[r + i][c + j] - img[r + i + dr][c + j + dc]) ** 2
                       for i in (-1, 0, 1) for j in (-1, 0, 1))

        def corner_score(img, r, c):
            """Moravec's idea: a corner changes in EVERY direction, so take the smallest change."""
            moves = [(0, 1), (1, 0), (1, 1), (1, -1), (0, -1), (-1, 0), (-1, -1), (-1, 1)]
            return min(window_change(img, r, c, dr, dc) for dr, dc in moves)

        def keypoints(img, min_score=20000):
            """Keep points with a high score that is also the highest among their neighbours."""
            score = {(r, c): corner_score(img, r, c) for r in range(2, H - 2) for c in range(2, W - 2)}
            points = []
            for (r, c), s in score.items():
                around = [score.get((r + i, c + j), 0) for i in (-1, 0, 1) for j in (-1, 0, 1)]
                if s >= min_score and s == max(around):
                    points.append((r, c))
            return points

        def descriptor(img, r, c):
            """A simple descriptor: the 5x5 patch around the point, as a list of 25 numbers."""
            return [img[r + i][c + j] for i in range(-2, 3) for j in range(-2, 3)]

        def distance(d1, d2):
            return sum((x - y) ** 2 for x, y in zip(d1, d2))

        def show(title, img, points):
            print(title)
            for r in range(H):
                row = ""
                for c in range(W):
                    row += " X" if (r, c) in points else (" #" if img[r][c] > 150 else " +" if img[r][c] > 50 else " .")
                print(" " + row)
            print()

        kp_a, kp_b = keypoints(photo_a), keypoints(photo_b)
        show(f"Photo A: {len(kp_a)} keypoints (X)", photo_a, kp_a)
        show(f"Photo B: {len(kp_b)} keypoints (X)", photo_b, kp_b)

        max_distance = 20000   # the best match must look similar enough
        ratio = 0.8            # ratio test: the best match must be clearly better than the second best
        shifts = Counter()
        print("Matches (A -> B):")
        for pa in kp_a:
            da = descriptor(photo_a, *pa)
            ranked = sorted((distance(da, descriptor(photo_b, *pb)), pb) for pb in kp_b)
            best, second = ranked[0], ranked[1] if len(ranked) > 1 else (float("inf"), None)
            if best[0] <= max_distance and best[0] <= ratio * second[0]:
                pb = best[1]
                shifts[(pb[0] - pa[0], pb[1] - pa[1])] += 1
                print(f"  {pa} -> {pb}   distance {best[0]}  (second best {second[0]})")
            else:
                print(f"  {pa} -> no clear match (best {best[0]}, second {second[0]})")

        (dr, dc), votes = shifts.most_common(1)[0]
        print(f"\nMost matches agree: the camera moved {dr} row(s) and {dc} column(s) ({votes} votes).")

        # Try it: change make_photo(1, 2) to make_photo(2, 0), or set ratio = 1.0 and look at the matches.
      PYTHON
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Image Processing Libraries</h1>
        </div>
        <p class="lc-lead">So far you have written filters by hand on tiny images. That is the best way to learn. For real photos with millions of pixels, you use libraries. They are fast and well tested. In this lesson you will meet the three main Python tools: <strong>Pillow</strong>, <strong>OpenCV</strong> and <strong>NumPy</strong>. You will also learn the common mistakes people make with them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 210" role="img" aria-label="A pipeline: an image file is opened with Pillow or OpenCV, becomes a NumPy array of height by width by 3 numbers from 0 to 255, is processed with resize, blur and edges, and is then saved or shown.">
            <defs><marker id="cv10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="130" height="70" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="75" y="60" font-weight="700">Image file</text><text x="75" y="80" font-size="11" fill="#9b99b8">photo.jpg</text>
              <rect x="162" y="30" width="130" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="227" y="60" font-weight="700" fill="#93c5fd">Open</text><text x="227" y="80" font-size="11" fill="#9b99b8">Pillow or OpenCV</text>
              <rect x="314" y="30" width="130" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="379" y="56" font-weight="700" fill="#fcd34d">NumPy array</text><text x="379" y="74" font-size="11">height × width × 3</text><text x="379" y="90" font-size="11" fill="#9b99b8">uint8: 0 to 255</text>
              <rect x="466" y="30" width="130" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="531" y="60" font-weight="700" fill="#c4b5fd">Process</text><text x="531" y="80" font-size="11" fill="#9b99b8">resize, blur, edges</text>
              <rect x="618" y="30" width="130" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="683" y="60" font-weight="700" fill="#6ee7b7">Save or show</text><text x="683" y="80" font-size="11" fill="#9b99b8">or send to a model</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv10a)"><line x1="142" y1="65" x2="158" y2="65"/><line x1="294" y1="65" x2="310" y2="65"/><line x1="446" y1="65" x2="462" y2="65"/><line x1="598" y1="65" x2="614" y2="65"/></g>
              <g font-size="11" fill="#9b99b8">
                <text x="227" y="124">Image.open()</text><text x="227" y="140">cv2.imread()</text>
                <text x="379" y="124">np.asarray(img)</text><text x="379" y="140">img[10:50, 20:80]</text>
                <text x="531" y="124">cv2.GaussianBlur()</text><text x="531" y="140">cv2.Canny()</text>
                <text x="683" y="124">img.save()</text><text x="683" y="140">cv2.imwrite()</text>
              </g>
              <rect x="162" y="160" width="434" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="379" y="183" fill="#f9a8d4">Watch out: OpenCV uses BGR order. Pillow uses RGB.</text>
            </g>
          </svg>
          <figcaption>Most image code follows this path. In the middle, the image is always a NumPy array of numbers.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The three tools</h3>
          <table class="lc-table">
            <thead><tr><th>Library</th><th>Install</th><th>Import</th><th>Best for</th></tr></thead>
            <tbody>
              <tr><td><strong>Pillow</strong></td><td><code>pip install pillow</code></td><td><code>from PIL import Image</code></td><td>Opening and saving many file types, thumbnails, simple filters, drawing text</td></tr>
              <tr><td><strong>OpenCV</strong></td><td><code>pip install opencv-python</code></td><td><code>import cv2</code></td><td>Fast filters, edges, features, video and webcams</td></tr>
              <tr><td><strong>NumPy</strong></td><td><code>pip install numpy</code></td><td><code>import numpy as np</code></td><td>Arrays: the numbers inside the image, maths on all pixels at once</td></tr>
            </tbody>
          </table>
          <p>These run on your own computer, not in the browser editor. Deep learning libraries such as PyTorch also take images as arrays. So these skills carry over to the rest of this course.</p>
        </div>
        <div class="lc-card">
          <h3>Pillow and OpenCV side by side</h3>
          <p>Both programs open a photo, make it grayscale, resize it, blur it and find edges.</p>
          <pre><code>from PIL import Image, ImageFilter

        img = Image.open("cat.jpg")
        print(img.size, img.mode)                  # (width, height), e.g. 'RGB'
        gray = img.convert("L")                    # "L" means grayscale
        small = gray.resize((200, 150))            # (width, height)
        blurred = small.filter(ImageFilter.GaussianBlur(radius=2))
        clean = small.filter(ImageFilter.MedianFilter(size=3))
        edges = small.filter(ImageFilter.FIND_EDGES)
        edges.save("cat_edges_pillow.png")</code></pre>
          <pre><code>import cv2

        img = cv2.imread("cat.jpg")                # BGR order; None if the file is missing
        print(img.shape)                           # (height, width, 3)
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        small = cv2.resize(gray, (200, 150))       # (width, height)
        blurred = cv2.GaussianBlur(small, (5, 5), 0)
        clean = cv2.medianBlur(small, 3)
        edges = cv2.Canny(blurred, 100, 200)
        sobel_x = cv2.Sobel(small, cv2.CV_64F, 1, 0, ksize=3)
        cv2.imwrite("cat_edges_opencv.png", edges)</code></pre>
          <p>To use your own kernel in OpenCV, call <code>cv2.filter2D(img, -1, kernel)</code>. The kernel is a small NumPy array, such as the 3×3 kernels you wrote by hand.</p>
        </div>
        <div class="lc-card">
          <h3>NumPy arrays and common mistakes</h3>
          <pre><code>import numpy as np
        from PIL import Image

        arr = np.asarray(Image.open("cat.jpg").convert("RGB"))
        print(arr.shape, arr.dtype, arr.mean())    # (height, width, 3) uint8 ...
        crop = arr[50:150, 100:300]                # rows 50-149, columns 100-299
        mirror = arr[:, ::-1]                      # flip left-right
        brighter = np.clip(arr.astype(np.int16) + 60, 0, 255).astype(np.uint8)
        Image.fromarray(brighter).save("brighter.jpg")</code></pre>
          <table class="lc-table">
            <thead><tr><th>Mistake</th><th>What happens</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>Forget that OpenCV uses BGR</td><td>Red and blue swap, and grayscale is wrong</td><td><code>cv2.cvtColor(img, cv2.COLOR_BGR2RGB)</code></td></tr>
              <tr><td>Mix up (height, width) and (width, height)</td><td>The image is stretched or rotated wrongly</td><td><code>shape</code> is (h, w). <code>resize</code> takes (w, h).</td></tr>
              <tr><td>Add numbers to a <code>uint8</code> array</td><td>200 + 100 becomes 44 (it wraps around)</td><td>Convert to a bigger type, then <code>np.clip</code></td></tr>
              <tr><td>Wrong file path in <code>cv2.imread</code></td><td>It returns <code>None</code>, with no error</td><td>Check <code>if img is None</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: which tool?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which library is the most natural choice for each job?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pil" data-label="Pillow"></div>
              <div data-sorter-target="bucket" data-bucket="cv" data-label="OpenCV"></div>
              <div data-sorter-target="bucket" data-bucket="np" data-label="NumPy"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pil" data-why="Pillow's thumbnail() shrinks the image and keeps its shape. Saving as JPEG is one line.">Make small thumbnails of 500 product photos and save them as JPEG</li>
              <li data-bucket="pil" data-why="ImageOps.exif_transpose() reads the camera's rotation tag and turns the photo the right way.">Turn phone photos the right way up using the rotation tag the camera saved</li>
              <li data-bucket="cv" data-why="cv2.Canny() does all the Canny steps in one call.">Find clean edges with the Canny method</li>
              <li data-bucket="cv" data-why="cv2.VideoCapture() reads frames from a camera or a video file.">Read frames from a webcam and process each one</li>
              <li data-bucket="np" data-why="Cropping is array slicing: arr[top:bottom, left:right].">Cut out rows 100 to 200 and columns 50 to 250 of an image array</li>
              <li data-bucket="np" data-why="arr.mean() works on all pixels at once, with no loop.">Find the average brightness of every pixel in one line</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The browser editor cannot run OpenCV. So the starter code shows what these libraries do, using plain Python lists.</li>
            <li>Run it. It shows image shape, the BGR-to-RGB swap, grayscale, cropping by slicing, overflow and resizing.</li>
            <li>Look at the grayscale line. Forgetting the BGR swap gives a clearly wrong grey value.</li>
            <li>Set <code>extra = 60</code>, then <code>extra = 56</code>. Find the smallest value that makes 200 wrap around.</li>
            <li>On your own computer, install the libraries and run the Pillow and OpenCV examples on a real photo.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In Python, an image is a NumPy array of numbers. Pillow is great for opening, saving and simple edits. OpenCV is great for fast filters, edges, features and video. Always check the channel order (BGR or RGB), the size order (width, height), and overflow in <code>uint8</code>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # What Pillow, OpenCV and NumPy do for you, shown with plain Python lists.
        # On your own computer you would use the real libraries (see the lesson).

        # A 4x6 colour image stored like OpenCV stores it: rows of [B, G, R] pixels
        H, W = 4, 6
        bgr = [[[40, 80, 200] if c < 3 else [200, 120, 30] for c in range(W)] for r in range(H)]
        # left half: red-orange (R=200), right half: blue (B=200)

        # 1) Shape: NumPy says (height, width, channels). OpenCV's resize wants (width, height).
        print("shape (height, width, channels):", (len(bgr), len(bgr[0]), len(bgr[0][0])))
        print("cv2.resize would take the size as (width, height):", (W, H))
        print()

        # 2) BGR vs RGB: OpenCV uses B, G, R order. Pillow and Matplotlib use R, G, B.
        rgb = [[pixel[::-1] for pixel in row] for row in bgr]      # like cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
        print("top-left pixel as BGR:", bgr[0][0], " as RGB:", rgb[0][0])
        print()

        # 3) Grayscale with the usual weights (like Pillow's convert('L') or cv2.COLOR_BGR2GRAY)
        gray = [[round(0.299 * r + 0.587 * g + 0.114 * b) for r, g, b in row] for row in rgb]
        wrong = round(0.299 * bgr[0][0][0] + 0.587 * bgr[0][0][1] + 0.114 * bgr[0][0][2])
        print(f"top-left gray: {gray[0][0]} (correct)  vs  {wrong} (if you forget the BGR swap)")
        print("grayscale:")
        for row in gray:
            print("  ", row)
        print()

        # 4) Cropping is slicing: img[top:bottom, left:right] in NumPy
        top, bottom, left, right = 1, 3, 2, 5
        crop = [row[left:right] for row in gray[top:bottom]]
        print(f"crop rows {top}:{bottom}, columns {left}:{right} ->", crop)
        print()

        # 5) uint8 overflow: NumPy image pixels are 0-255 and wrap around
        value, extra = 200, 100
        wrapped = (value + extra) % 256          # what img + 100 does to a uint8 array
        clipped = min(255, value + extra)        # what cv2.add(img, 100) does (it saturates)
        print(f"{value} + {extra}: NumPy uint8 gives {wrapped}, OpenCV cv2.add gives {clipped}")
        print()

        # 6) Resize with nearest neighbour: each new pixel copies the closest old pixel
        new_w, new_h = 3, 2
        small = [[gray[r * H // new_h][c * W // new_w] for c in range(new_w)] for r in range(new_h)]
        print(f"nearest-neighbour resize to {new_w}x{new_h} (width x height):", small)

        # Try it: set extra = 60 and then 56. When does wrapping start? Then change new_w and new_h.
      PYTHON
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">From Pixels to Predictions</h1>
        </div>
        <p class="lc-lead">So far you have changed images with rules that you wrote. Now the computer will <strong>learn</strong> from examples. Image classification means giving one label to a whole image, such as "cat" or "7". In this lesson you will see classification as a function (a rule that turns an input into an output). You will see why hand-written rules break. Then you will build a tiny classifier that learns from labelled images.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A 5 by 5 image of the digit 7 becomes 25 numbers. A classifier function turns them into scores and the answer 7. Below, labelled examples go into a learning step that builds the classifier. Hand-written rules are shown as an older way that breaks on new images.">
            <defs><marker id="cv11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <g stroke="#4b4a78">
                <rect x="30" y="40" width="14" height="14" fill="#27274e"/><rect x="44" y="40" width="14" height="14" fill="#e2e0f0"/><rect x="58" y="40" width="14" height="14" fill="#e2e0f0"/><rect x="72" y="40" width="14" height="14" fill="#e2e0f0"/><rect x="86" y="40" width="14" height="14" fill="#27274e"/>
                <rect x="30" y="54" width="14" height="14" fill="#27274e"/><rect x="44" y="54" width="14" height="14" fill="#27274e"/><rect x="58" y="54" width="14" height="14" fill="#27274e"/><rect x="72" y="54" width="14" height="14" fill="#e2e0f0"/><rect x="86" y="54" width="14" height="14" fill="#27274e"/>
                <rect x="30" y="68" width="14" height="14" fill="#27274e"/><rect x="44" y="68" width="14" height="14" fill="#27274e"/><rect x="58" y="68" width="14" height="14" fill="#e2e0f0"/><rect x="72" y="68" width="14" height="14" fill="#27274e"/><rect x="86" y="68" width="14" height="14" fill="#27274e"/>
                <rect x="30" y="82" width="14" height="14" fill="#27274e"/><rect x="44" y="82" width="14" height="14" fill="#27274e"/><rect x="58" y="82" width="14" height="14" fill="#e2e0f0"/><rect x="72" y="82" width="14" height="14" fill="#27274e"/><rect x="86" y="82" width="14" height="14" fill="#27274e"/>
                <rect x="30" y="96" width="14" height="14" fill="#27274e"/><rect x="44" y="96" width="14" height="14" fill="#27274e"/><rect x="58" y="96" width="14" height="14" fill="#e2e0f0"/><rect x="72" y="96" width="14" height="14" fill="#27274e"/><rect x="86" y="96" width="14" height="14" fill="#27274e"/>
              </g>
              <text x="65" y="130" fill="#9b99b8" font-size="11">5×5 image</text>
              <line x1="106" y1="75" x2="146" y2="75" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv11a)"/>
              <rect x="150" y="45" width="150" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="225" y="70">25 numbers</text>
              <text x="225" y="90" font-size="10.5" fill="#9b99b8">0 1 1 1 0 0 0 0 1 0 …</text>
              <line x1="302" y1="75" x2="336" y2="75" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv11a)"/>
              <rect x="340" y="45" width="160" height="60" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="420" y="70" font-weight="700" fill="#f9a8d4">Classifier</text>
              <text x="420" y="90" font-size="11" fill="#9b99b8">f(image) = label</text>
              <line x1="502" y1="75" x2="536" y2="75" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv11a)"/>
              <rect x="540" y="45" width="190" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="635" y="70" font-weight="700" fill="#6ee7b7">Answer: 7</text>
              <text x="635" y="90" font-size="10.5" fill="#9b99b8">0: 5% · 1: 7% · 7: 88%</text>
              <rect x="120" y="175" width="180" height="55" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="210" y="198">Labelled examples</text>
              <text x="210" y="216" font-size="10.5" fill="#9b99b8">image + correct label</text>
              <line x1="302" y1="202" x2="336" y2="202" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv11a)"/>
              <rect x="340" y="175" width="160" height="55" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="420" y="198">Learning</text>
              <text x="420" y="216" font-size="10.5" fill="#9b99b8">adjusts f to fit them</text>
              <line x1="420" y1="173" x2="420" y2="111" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv11a)"/>
              <rect x="540" y="175" width="190" height="55" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="5 4"/>
              <text x="635" y="198" fill="#fcd34d">Old way: hand-made rules</text>
              <text x="635" y="216" font-size="10.5" fill="#fca5a5">break on new images</text>
              <line x1="565" y1="173" x2="500" y2="112" stroke="#f59e0b" stroke-width="1.2" stroke-dasharray="4 4" marker-end="url(#cv11a)"/>
            </g>
          </svg>
          <figcaption>A classifier is a function from pixels to a label. Learning builds that function from labelled examples.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Classification is a function</h3>
          <p>An image is a grid of numbers. A classifier takes those numbers and gives back a label. You can think of it as <code>label = f(pixels)</code>.</p>
          <p>Most classifiers give a <strong>score</strong> for every class first. The class with the highest score wins. Scores are often turned into probabilities (numbers from 0 to 1 that add up to 1). For example: "0": 5%, "1": 7%, "7": 88%.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Input</th><th>Output labels</th></tr></thead>
            <tbody>
              <tr><td>Digit reading</td><td>28×28 grayscale image</td><td>0, 1, 2 … 9</td></tr>
              <tr><td>Plant disease check</td><td>Photo of a leaf</td><td>healthy, rust, blight</td></tr>
              <tr><td>Quality check in a factory</td><td>Photo of a part</td><td>good, damaged</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Why hand-made rules fail</h3>
          <p>You could write rules like "a 1 has a line down the middle column". This works on neat, centred digits. Real images are messy:</p>
          <ul class="lc-list">
            <li>The object moves left, right, up or down.</li>
            <li>It is bigger or smaller, or turned a little.</li>
            <li>The light is brighter or darker. There is noise (random wrong pixels).</li>
            <li>Different people draw the same digit in different ways.</li>
          </ul>
          <p>Every new case needs a new rule. Soon you have hundreds of rules, and they still miss cases. A photo of a cat is much harder than a 5×5 digit. Nobody can write rules for every cat.</p>
        </div>
        <div class="lc-card">
          <h3>Learning from labelled examples</h3>
          <p>Machine learning turns the problem around. You do not write the rules. You collect <strong>labelled examples</strong>: images together with the correct answer. A learning algorithm then finds a function that fits them.</p>
          <p>The simplest learner is the <strong>nearest centroid</strong> classifier. A centroid is the average of a group of points.</p>
          <ol class="lc-list">
            <li>Training: for each class, average all its example images. You get one "typical" image per class.</li>
            <li>Prediction: compare a new image with each average image. Pick the class whose average is closest.</li>
          </ol>
          <p>"Closest" means the smallest distance: add up the squared differences, pixel by pixel. This classifier is very simple, but it already beats the hand-made rule on moved and noisy digits.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: rule or learning?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">For each task, is a simple hand-written rule enough, or do you need a model that learns from examples?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="rule" data-label="A simple rule is enough"></div>
              <div data-sorter-target="bucket" data-bucket="learn" data-label="Learn from examples"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="rule" data-why="Average brightness is one number. A threshold on it works well.">Tell if a photo is too dark to use</li>
              <li data-bucket="learn" data-why="Cats look very different in pose, colour and light. No short rule covers them all.">Tell if a photo contains a cat</li>
              <li data-bucket="rule" data-why="Width and height are known exactly. Comparing them is enough.">Tell if an image is portrait or landscape</li>
              <li data-bucket="learn" data-why="Every person writes digits differently. A model learns these many styles from examples.">Read handwritten postcodes on letters</li>
              <li data-bucket="learn" data-why="Disease spots vary in size, colour and shape. Experts label examples, and a model learns from them.">Find signs of disease on leaf photos</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code makes small 5×5 images of the digits 0, 1 and 7. Some are moved one pixel left or right. Some have a noisy pixel.</li>
            <li>Run it. It compares a hand-made rule with a nearest centroid classifier. Look at the images the rule gets wrong.</li>
            <li>Change <code>range(15)</code> to <code>range(2)</code>. Now there are only 2 training images per class. Then try 50. See how the amount of data changes the result.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In deep learning, you do not write rules for what things look like. You collect good labelled examples, and the model learns the function from pixels to labels.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # From pixels to predictions: a hand-made rule vs a classifier that learns.
        # Images are 5x5 grids. 1 = ink, 0 = paper. There are three classes: "0", "1" and "7".
        import random
        random.seed(7)

        TEMPLATES = {
            "0": ["01110", "01010", "01010", "01010", "01110"],
            "1": ["00100", "01100", "00100", "00100", "01110"],
            "7": ["01110", "00010", "00100", "00100", "00100"],
        }

        def to_grid(rows):
            return [[int(ch) for ch in row] for row in rows]

        def shift(img, dx):
            """Move the picture right (dx=1) or left (dx=-1)."""
            return [[row[c - dx] if 0 <= c - dx < 5 else 0 for c in range(5)] for row in img]

        def add_noise(img, flips):
            img = [row[:] for row in img]
            for _ in range(flips):
                r, c = random.randrange(5), random.randrange(5)
                img[r][c] = 1 - img[r][c]          # flip one pixel
            return img

        def make_example(label):
            img = shift(to_grid(TEMPLATES[label]), random.choice([-1, 0, 1]))
            return add_noise(img, random.choice([0, 0, 1]))

        def show(img):
            for row in img:
                print("   ", " ".join("#" if v else "." for v in row))

        # 1) A rule written by hand. It works on neat, centred digits.
        def rule_classifier(img):
            if img[2][1] == 1 and img[2][3] == 1 and img[2][2] == 0:
                return "0"                          # two sides of a ring in the middle row
            if sum(img[0]) >= 3:
                return "7"                          # a bar across the top
            if sum(img[r][2] for r in range(5)) >= 4:
                return "1"                          # a line down the middle column
            return "?"

        # 2) A classifier that learns: nearest centroid.
        # "Training" = average all the example images of each class.
        def train_centroids(examples):
            sums, counts = {}, {}
            for img, label in examples:
                flat = [v for row in img for v in row]      # 25 numbers
                if label not in sums:
                    sums[label], counts[label] = [0.0] * 25, 0
                sums[label] = [s + v for s, v in zip(sums[label], flat)]
                counts[label] += 1
            return {lab: [s / counts[lab] for s in sums[lab]] for lab in sums}

        def predict(centroids, img):
            flat = [v for row in img for v in row]
            def distance(c):
                return sum((a - b) ** 2 for a, b in zip(flat, c))
            return min(centroids, key=lambda lab: distance(centroids[lab]))

        labels = ["0", "1", "7"]
        train = [(make_example(lab), lab) for lab in labels for _ in range(15)]
        test = [(make_example(lab), lab) for lab in labels for _ in range(10)]

        print("One test image (true label", test[3][1] + "):")
        show(test[3][0])

        centroids = train_centroids(train)
        rule_ok = sum(rule_classifier(img) == lab for img, lab in test)
        learn_ok = sum(predict(centroids, img) == lab for img, lab in test)
        print(f"\nHand-made rule    : {rule_ok}/{len(test)} correct")
        print(f"Learned (centroid): {learn_ok}/{len(test)} correct")

        print("\nSome mistakes made by the rule:")
        shown = 0
        for img, lab in test:
            guess = rule_classifier(img)
            if guess != lab and shown < 2:
                print(f"  true {lab}, rule said {guess}, learner said {predict(centroids, img)}")
                show(img)
                shown += 1

        # Try it: change range(15) to range(2) so there are only 2 training images per class.
        # Does the learned classifier get worse? Then try 50.
      PYTHON
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Convolutional Neural Networks</h1>
        </div>
        <p class="lc-lead">A <strong>convolutional neural network</strong> (CNN) is a model built from many convolution layers. You already know convolution: slide a 3×3 kernel over an image, multiply and add. In a CNN, the computer <em>learns</em> the kernel numbers from labelled examples. In this lesson you will learn about feature maps, ReLU, and how layers go from edges to shapes to whole objects.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="An image passes through layer 1, which finds edges, layer 2, which finds corners and curves, and layer 3, which finds parts like eyes and wheels. The output is the label cat. Each layer uses learned kernels, feature maps and ReLU.">
            <defs><marker id="cv12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="100" height="60" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <text x="60" y="65">Image</text>
              <rect x="140" y="30" width="130" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="205" y="55">Layer 1</text><text x="205" y="75" font-size="11" fill="#93c5fd">edges</text>
              <rect x="300" y="30" width="140" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="370" y="55">Layer 2</text><text x="370" y="75" font-size="11" fill="#c4b5fd">corners, curves</text>
              <rect x="470" y="30" width="130" height="60" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="535" y="55">Layer 3</text><text x="535" y="75" font-size="11" fill="#f9a8d4">parts</text>
              <rect x="630" y="30" width="120" height="60" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="690" y="55">Output</text><text x="690" y="75" font-size="11" fill="#6ee7b7">"cat" 92%</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv12a)">
                <line x1="112" y1="60" x2="136" y2="60"/><line x1="272" y1="60" x2="296" y2="60"/>
                <line x1="442" y1="60" x2="466" y2="60"/><line x1="602" y1="60" x2="626" y2="60"/>
              </g>
              <g fill="none" stroke-width="3" stroke-linecap="round">
                <rect x="35" y="110" width="50" height="50" rx="4" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
                <circle cx="60" cy="138" r="14" fill="#f9a8d4" stroke="none" opacity="0.6"/>
                <path d="M49,127 L52,116 L57,126 M63,126 L68,116 L71,127" stroke="#f9a8d4" stroke-width="2"/>
                <line x1="170" y1="112" x2="170" y2="152" stroke="#3b82f6"/>
                <line x1="188" y1="132" x2="228" y2="132" stroke="#3b82f6"/>
                <line x1="242" y1="152" x2="258" y2="112" stroke="#3b82f6"/>
                <path d="M322,112 L322,152 L357,152" stroke="#8b5cf6"/>
                <path d="M378,152 Q384,114 424,114" stroke="#8b5cf6"/>
                <ellipse cx="507" cy="132" rx="22" ry="12" stroke="#ec4899" stroke-width="2"/>
                <circle cx="507" cy="132" r="5" fill="#ec4899" stroke="none"/>
                <circle cx="570" cy="132" r="18" stroke="#ec4899" stroke-width="2"/>
                <circle cx="570" cy="132" r="5" stroke="#ec4899" stroke-width="2"/>
              </g>
              <text x="690" y="138" font-size="11" fill="#9b99b8">one label</text>
              <text x="380" y="200">Each layer: many learned kernels → feature maps → ReLU</text>
              <text x="380" y="225" font-size="11.5" fill="#9b99b8">Deeper layers combine earlier features and see a bigger part of the image.</text>
            </g>
          </svg>
          <figcaption>Early layers find simple patterns. Later layers combine them into parts and then whole objects.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Learned kernels and feature maps</h3>
          <p>In classic image processing, a person chooses the kernel, for example Sobel X for vertical edges. In a CNN, the kernel numbers are <strong>weights</strong> (numbers the model can change). Training changes them until the model gives good answers.</p>
          <p>One convolution layer has many kernels, often 16, 32 or 64. Each kernel slides over the image and makes its own output grid. This output is called a <strong>feature map</strong>. It shows where that kernel's pattern appears in the image.</p>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>Kernel (filter)</td><td>A small grid of learned weights, such as 3×3</td></tr>
              <tr><td>Bias</td><td>One extra learned number added after multiply-and-add</td></tr>
              <tr><td>Feature map</td><td>The output grid of one kernel</td></tr>
              <tr><td>Channels</td><td>The number of grids stacked together. RGB input has 3. A layer with 16 kernels outputs 16.</td></tr>
            </tbody>
          </table>
          <p>For a colour image, each kernel is really 3×3×3. It looks at all three colour channels at the same place and adds everything into one number.</p>
        </div>
        <div class="lc-card">
          <h3>ReLU: keep the positive, drop the negative</h3>
          <p>After each convolution, a CNN uses an <strong>activation function</strong>. This is a simple function applied to every number. The most common one is <strong>ReLU</strong> (Rectified Linear Unit):</p>
          <pre><code>relu(x) = max(0, x)
        relu(7)  = 7
        relu(-3) = 0</code></pre>
          <p>A negative value means "this pattern is not here", so ReLU sets it to 0. ReLU also matters for a deeper reason. Without it, many layers stacked together act like one single layer. With ReLU in between, deep networks can learn complex shapes.</p>
        </div>
        <div class="lc-card">
          <h3>From edges to objects</h3>
          <p>Layer 2 does not look at the image. It looks at the feature maps from layer 1. So it can combine them. "A vertical edge here and a horizontal edge there" becomes a corner. Layer 3 combines corners and curves into parts, such as an eye or a wheel. The last layers combine parts into whole objects.</p>
          <p>On your own computer, a convolution layer in PyTorch looks like this:</p>
          <pre><code>import torch
        from torch import nn

        layer = nn.Sequential(
            nn.Conv2d(in_channels=3, out_channels=16, kernel_size=3, padding=1),
            nn.ReLU(),
        )
        images = torch.rand(8, 3, 64, 64)   # 8 RGB images, 64×64 pixels
        maps = layer(images)
        print(maps.shape)                   # torch.Size([8, 16, 64, 64])
        print(layer[0].weight.shape)        # torch.Size([16, 3, 3, 3]): 16 kernels of 3×3×3</code></pre>
          <p>The weights start as small random numbers. Training turns them into useful kernels.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: be the first layer</h3>
          <p>The first layer of a trained CNN often learns kernels like some of the ones below, such as edge and blur detectors. Try each one. Then change some numbers yourself and watch the feature map change.</p>
          <div class="lcw" data-controller="conv-filter"></div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code runs two layer-1 kernels on an "L" shape and prints the feature maps after ReLU.</li>
            <li>A layer-2 kernel then reads both feature maps. It lights up only where a vertical and a horizontal line meet: the corner.</li>
            <li>The second part hides a Sobel X kernel. The computer sees only example inputs and outputs. It learns the kernel by small steps. Run it and compare the learned numbers with Sobel X.</li>
            <li>Change <code>SECRET</code> to a blur kernel, <code>[[1/9] * 3] * 3</code>. Run it again. The same code now learns a blur.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A CNN is convolution plus learning. The kernels are not chosen by people. Training finds them, and stacking layers turns simple edges into whole objects.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A tiny CNN by hand: kernels -> feature maps -> ReLU -> a second layer.
        # Then the computer LEARNS a kernel from examples.
        import random
        random.seed(3)

        IMAGE = [  # 8x8 image: an "L" shape. 1 = bright, 0 = dark.
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 1, 0, 0, 0, 0, 0, 0],
            [0, 1, 0, 0, 0, 0, 0, 0],
            [0, 1, 0, 0, 0, 0, 0, 0],
            [0, 1, 0, 0, 0, 0, 0, 0],
            [0, 1, 1, 1, 1, 1, 1, 0],
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0],
        ]

        def conv(img, k, bias=0):
            """Slide a 3x3 kernel over the image (no padding). Multiply, add, then add the bias."""
            h, w = len(img), len(img[0])
            return [[sum(img[r + i][c + j] * k[i][j] for i in range(3) for j in range(3)) + bias
                     for c in range(w - 2)] for r in range(h - 2)]

        def relu(m):
            return [[max(0, v) for v in row] for row in m]      # negative numbers become 0

        def add(a, b):
            return [[x + y for x, y in zip(ra, rb)] for ra, rb in zip(a, b)]

        def show(title, m):
            print(title)
            for row in m:
                print("   ", " ".join(f"{v:3d}" for v in row))

        # Layer 1: two kernels. Here we choose the numbers. A real CNN learns them.
        VERTICAL = [[-1, 2, -1], [-1, 2, -1], [-1, 2, -1]]      # likes vertical lines
        HORIZONTAL = [[-1, -1, -1], [2, 2, 2], [-1, -1, -1]]    # likes horizontal lines

        # The bias -3 means "only keep strong matches".
        v_map = relu(conv(IMAGE, VERTICAL, bias=-3))
        h_map = relu(conv(IMAGE, HORIZONTAL, bias=-3))
        show("Layer 1, feature map 1 (vertical lines):", v_map)
        show("Layer 1, feature map 2 (horizontal lines):", h_map)

        # Layer 2 reads BOTH feature maps. It looks for a vertical line in the top-left
        # AND a horizontal line along the bottom-right. Together they make a corner.
        K_V = [[1, 0, 0], [1, 0, 0], [0, 0, 0]]
        K_H = [[0, 0, 0], [0, 0, 0], [0, 1, 1]]
        corner = relu(add(conv(v_map, K_V), conv(h_map, K_H, bias=-7)))
        show("Layer 2 (corner detector):", corner)
        print("Only one place lights up: where the two lines meet.\n")

        # --- Learning a kernel -------------------------------------------------------
        # We hide a "secret" kernel. The computer only sees inputs and the right outputs.
        SECRET = [[-1, 0, 1], [-2, 0, 2], [-1, 0, 1]]           # this is Sobel X
        examples = [[[random.random() for _ in range(8)] for _ in range(8)] for _ in range(3)]
        targets = [conv(img, SECRET) for img in examples]

        kernel = [[random.uniform(-0.1, 0.1) for _ in range(3)] for _ in range(3)]
        lr = 0.2                                                 # learning rate: the size of each step
        for step in range(301):
            grad = [[0.0] * 3 for _ in range(3)]
            loss, n = 0.0, 0
            for img, target in zip(examples, targets):
                out = conv(img, kernel)
                for r in range(6):
                    for c in range(6):
                        err = out[r][c] - target[r][c]           # how wrong is this output pixel?
                        loss += err * err
                        n += 1
                        for i in range(3):
                            for j in range(3):
                                grad[i][j] += 2 * err * img[r + i][c + j]
            for i in range(3):
                for j in range(3):
                    kernel[i][j] -= lr * grad[i][j] / n          # nudge each weight to lower the error
            if step % 100 == 0:
                print(f"step {step:3d}: average error {loss / n:.4f}")

        print("Learned kernel (compare it with Sobel X):")
        for row in kernel:
            print("   ", " ".join(f"{round(v, 2) + 0.0:5.2f}" for v in row))

        # Try it: change SECRET to a blur kernel, [[1/9] * 3] * 3, and run again.
        # The same code now learns a blur. Only the examples changed.
      PYTHON
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Pooling and CNN Architecture</h1>
        </div>
        <p class="lc-lead">A CNN is more than convolution layers. <strong>Pooling</strong> layers make the feature maps smaller. A <strong>flatten</strong> step and a final <strong>classifier layer</strong> turn the maps into class scores. In this lesson you will see how these parts fit together. You will also follow the shape of the data through a small network. At the end, you will meet some famous CNNs: LeNet, AlexNet and ResNet.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A CNN for 28 by 28 digits: input, convolution and ReLU, max pool, convolution and ReLU, max pool, flatten to 784 numbers, and a linear layer with 10 scores. Below, a 4 by 4 grid is max pooled into a 2 by 2 grid that keeps the largest number in each block.">
            <defs><marker id="cv13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="8" y="30" width="90" height="56" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <text x="53" y="53">Input</text><text x="53" y="72" font-size="10.5" fill="#9b99b8">28×28×1</text>
              <rect x="115" y="30" width="90" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="160" y="53">Conv+ReLU</text><text x="160" y="72" font-size="10.5" fill="#9b99b8">28×28×8</text>
              <rect x="222" y="30" width="90" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="267" y="53">Max pool</text><text x="267" y="72" font-size="10.5" fill="#9b99b8">14×14×8</text>
              <rect x="329" y="30" width="90" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="374" y="53">Conv+ReLU</text><text x="374" y="72" font-size="10.5" fill="#9b99b8">14×14×16</text>
              <rect x="436" y="30" width="90" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="481" y="53">Max pool</text><text x="481" y="72" font-size="10.5" fill="#9b99b8">7×7×16</text>
              <rect x="543" y="30" width="90" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="588" y="53">Flatten</text><text x="588" y="72" font-size="10.5" fill="#9b99b8">784</text>
              <rect x="650" y="30" width="90" height="56" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="695" y="53">Linear</text><text x="695" y="72" font-size="10.5" fill="#6ee7b7">10 scores</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv13a)">
                <line x1="99" y1="58" x2="112" y2="58"/><line x1="206" y1="58" x2="219" y2="58"/><line x1="313" y1="58" x2="326" y2="58"/>
                <line x1="420" y1="58" x2="433" y2="58"/><line x1="527" y1="58" x2="540" y2="58"/><line x1="634" y1="58" x2="647" y2="58"/>
              </g>
              <text x="100" y="205" fill="#9b99b8" font-size="11.5">Max pooling</text>
              <text x="100" y="222" fill="#9b99b8" font-size="11.5">2×2, stride 2</text>
              <g stroke="#4b4a78" fill="#27274e">
                <rect x="200" y="130" width="36" height="36"/><rect x="236" y="130" width="36" height="36"/><rect x="272" y="130" width="36" height="36"/><rect x="308" y="130" width="36" height="36"/>
                <rect x="200" y="166" width="36" height="36"/><rect x="236" y="166" width="36" height="36"/><rect x="272" y="166" width="36" height="36"/><rect x="308" y="166" width="36" height="36"/>
                <rect x="200" y="202" width="36" height="36"/><rect x="236" y="202" width="36" height="36"/><rect x="272" y="202" width="36" height="36"/><rect x="308" y="202" width="36" height="36"/>
                <rect x="200" y="238" width="36" height="36"/><rect x="236" y="238" width="36" height="36"/><rect x="272" y="238" width="36" height="36"/><rect x="308" y="238" width="36" height="36"/>
              </g>
              <g font-size="13">
                <text x="218" y="153">1</text><text x="254" y="153">3</text><text x="290" y="153">2</text><text x="326" y="153">0</text>
                <text x="218" y="189" font-weight="700" fill="#93c5fd">5</text><text x="254" y="189">2</text><text x="290" y="189">1</text><text x="326" y="189" font-weight="700" fill="#fcd34d">4</text>
                <text x="218" y="225">0</text><text x="254" y="225">1</text><text x="290" y="225" font-weight="700" fill="#f9a8d4">7</text><text x="326" y="225">2</text>
                <text x="218" y="261" font-weight="700" fill="#6ee7b7">3</text><text x="254" y="261">2</text><text x="290" y="261">1</text><text x="326" y="261">6</text>
              </g>
              <g fill="none" stroke-width="2.5">
                <rect x="201" y="131" width="70" height="70" stroke="#3b82f6"/><rect x="273" y="131" width="70" height="70" stroke="#f59e0b"/>
                <rect x="201" y="203" width="70" height="70" stroke="#10b981"/><rect x="273" y="203" width="70" height="70" stroke="#ec4899"/>
              </g>
              <line x1="352" y1="202" x2="428" y2="202" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv13a)"/>
              <text x="390" y="192" font-size="11" fill="#9b99b8">max</text>
              <rect x="436" y="166" width="36" height="36" fill="#27274e" stroke="#3b82f6" stroke-width="2"/><rect x="472" y="166" width="36" height="36" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <rect x="436" y="202" width="36" height="36" fill="#27274e" stroke="#10b981" stroke-width="2"/><rect x="472" y="202" width="36" height="36" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <g font-size="13" font-weight="700">
                <text x="454" y="189" fill="#93c5fd">5</text><text x="490" y="189" fill="#fcd34d">4</text>
                <text x="454" y="225" fill="#6ee7b7">3</text><text x="490" y="225" fill="#f9a8d4">7</text>
              </g>
              <text x="530" y="196" text-anchor="start" font-size="11.5">Keep the biggest number</text>
              <text x="530" y="214" text-anchor="start" font-size="11.5">in each 2×2 block.</text>
              <text x="530" y="232" text-anchor="start" font-size="11" fill="#9b99b8">4×4 becomes 2×2</text>
            </g>
          </svg>
          <figcaption>Top: the shape of the data after each layer of a small digit CNN. Bottom: max pooling halves the width and the height.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Max pooling</h3>
          <p><strong>Max pooling</strong> splits a feature map into small blocks, usually 2×2. It keeps only the biggest number in each block. With a stride of 2 (moving 2 pixels each step), the blocks do not overlap. So a 28×28 map becomes 14×14.</p>
          <ul class="lc-list">
            <li><strong>Less work:</strong> the next layers have 4 times fewer numbers to process.</li>
            <li><strong>Small shifts matter less:</strong> if a pattern moves by one pixel, the biggest value often stays in the same block.</li>
            <li><strong>A bigger view:</strong> after pooling, a 3×3 kernel covers a larger part of the original image.</li>
          </ul>
          <p>Pooling has no weights to learn. Each channel is pooled on its own, so the number of channels stays the same. Some networks use <strong>average pooling</strong> (keep the average) instead. Others use a convolution with stride 2 to shrink the maps.</p>
        </div>
        <div class="lc-card">
          <h3>Flatten and the classifier layer</h3>
          <p>After a few conv and pool blocks, the maps are small but deep, for example 7×7×16. <strong>Flatten</strong> puts all these numbers in one long list: 7 × 7 × 16 = 784 numbers.</p>
          <p>A <strong>linear layer</strong> (also called a fully connected or dense layer) then gives one score per class. Each score is a weighted sum of all 784 numbers, plus a bias. <strong>Softmax</strong> turns the scores into probabilities. Here is the whole network in PyTorch, to run on your own computer:</p>
          <pre><code>from torch import nn

        model = nn.Sequential(
            nn.Conv2d(1, 8, kernel_size=3, padding=1),   # 28×28×1  -&gt; 28×28×8
            nn.ReLU(),
            nn.MaxPool2d(2),                             # -&gt; 14×14×8
            nn.Conv2d(8, 16, kernel_size=3, padding=1),  # -&gt; 14×14×16
            nn.ReLU(),
            nn.MaxPool2d(2),                             # -&gt; 7×7×16
            nn.Flatten(),                                # -&gt; 784
            nn.Linear(16 * 7 * 7, 10),                   # -&gt; 10 scores, one per digit
        )</code></pre>
          <p>The usual pattern is: the maps get <em>smaller</em>, and the number of channels gets <em>bigger</em>.</p>
        </div>
        <div class="lc-card">
          <h3>A short history of famous CNNs</h3>
          <table class="lc-table">
            <thead><tr><th>Network</th><th>When</th><th>What it showed</th></tr></thead>
            <tbody>
              <tr><td><strong>LeNet</strong></td><td>1989 to 1998</td><td>A small CNN (conv, pool, conv, pool, dense) could read handwritten digits, for example on bank cheques.</td></tr>
              <tr><td><strong>AlexNet</strong></td><td>2012</td><td>It won the ImageNet challenge (over a million labelled photos, 1,000 classes) by a large margin. It used ReLU and was trained on GPUs. This started the deep learning boom in vision.</td></tr>
              <tr><td><strong>VGG</strong></td><td>2014</td><td>Many small 3×3 conv layers stacked in a simple, regular design</td></tr>
              <tr><td><strong>ResNet</strong></td><td>2015</td><td>Skip connections: a block adds its input to its output. This made very deep networks (over 100 layers) trainable.</td></tr>
            </tbody>
          </table>
          <p>ResNet-style designs are still common today, often as the starting point for new tasks.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a CNN in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the layers of a small image classifier in the order the data flows through them.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Input image, 28×28 pixels</li>
              <li data-order="2">Convolution with 8 kernels, then ReLU</li>
              <li data-order="3">2×2 max pooling: the maps become 14×14</li>
              <li data-order="4">Convolution with 16 kernels, then ReLU</li>
              <li data-order="5">2×2 max pooling: the maps become 7×7</li>
              <li data-order="6">Flatten into one list of 784 numbers</li>
              <li data-order="7">Linear layer and softmax: one probability per class</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code builds a tiny CNN by hand: conv, ReLU, max pool, flatten and a linear layer. It prints the shape after each step.</li>
            <li>The classifier weights are random, because the model is not trained yet. So the probabilities mean nothing. Training fixes that.</li>
            <li>Look at the pooled map for the "+" image, and for the same "+" moved one pixel. Pooling makes them look the same.</li>
            <li>Add a third kernel to <code>KERNELS</code>. Watch the shapes and the number of weights grow. Then change <code>SHIFT</code> to 2 and compare the pooled maps.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A classic CNN repeats "conv, ReLU, pool" to turn a big image into a small, deep stack of feature maps. Then flatten and a linear layer turn those features into class scores.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A tiny CNN forward pass: conv -> ReLU -> max pool -> flatten -> classifier layer.
        # We print the shape of the data after every layer.
        import math
        import random
        random.seed(5)

        def image_with_plus(dx=0):
            """An 8x8 image with a bright "+" sign. dx moves it to the right."""
            img = [[0] * 8 for _ in range(8)]
            for i in range(5):
                img[3][i + dx] = 9          # horizontal bar: row 3, columns 0-4
                img[i + 1][2 + dx] = 9      # vertical bar: column 2, rows 1-5
            return img

        def conv_same(img, k):
            """3x3 convolution with padding 1: the output has the same size as the input."""
            n = len(img)
            def px(r, c):
                return img[r][c] if 0 <= r < n and 0 <= c < n else 0   # outside = 0 (padding)
            return [[sum(px(r + i - 1, c + j - 1) * k[i][j] for i in range(3) for j in range(3))
                     for c in range(n)] for r in range(n)]

        def relu(m):
            return [[max(0, v) for v in row] for row in m]

        def max_pool(m, size=2):
            """Keep the biggest number in each 2x2 block. Width and height are halved."""
            return [[max(m[r + i][c + j] for i in range(size) for j in range(size))
                     for c in range(0, len(m[0]), size)] for r in range(0, len(m), size)]

        def shape(maps):
            return f"{len(maps)} x {len(maps[0])} x {len(maps[0][0])}"   # channels x height x width

        KERNELS = {
            "vertical": [[-1, 2, -1], [-1, 2, -1], [-1, 2, -1]],
            "horizontal": [[-1, -1, -1], [2, 2, 2], [-1, -1, -1]],
        }
        CLASSES = ["plus", "line", "blank"]
        N_FEATURES = len(KERNELS) * 4 * 4
        # An untrained classifier layer: one weight for every (feature, class) pair.
        W = [[random.uniform(-0.05, 0.05) for _ in range(N_FEATURES)] for _ in CLASSES]
        B = [0.0 for _ in CLASSES]

        def forward(img, verbose=False):
            maps = [relu(conv_same(img, k)) for k in KERNELS.values()]
            pooled = [max_pool(m) for m in maps]
            flat = [v for m in pooled for row in m for v in row]
            scores = [sum(w * x for w, x in zip(W[c], flat)) + B[c] for c in range(len(CLASSES))]
            exps = [math.exp(s - max(scores)) for s in scores]
            probs = [e / sum(exps) for e in exps]              # softmax: scores -> probabilities
            if verbose:
                print("input      :", shape([img]))
                print("conv + ReLU:", shape(maps))
                print("max pool   :", shape(pooled))
                print("flatten    :", len(flat), "numbers")
                print("classifier :", len(CLASSES), "scores")
            return pooled, probs

        pooled, probs = forward(image_with_plus(), verbose=True)
        print("\nProbabilities (the model is not trained yet, so they are close to random):")
        for name, p in zip(CLASSES, probs):
            print(f"  {name:6s} {p:.2f}")

        print("\nPooled 'vertical' map, plus in the normal place:")
        for row in pooled[0]:
            print("   ", row)
        SHIFT = 1
        pooled_shifted, _ = forward(image_with_plus(dx=SHIFT))
        print(f"Pooled 'vertical' map, plus moved {SHIFT} pixel(s) right:")
        for row in pooled_shifted[0]:
            print("   ", row)
        print("Pooling keeps the strongest match in each block, so the result stays the same (or almost).")

        conv_params = len(KERNELS) * (9 + 1)                   # 9 weights + 1 bias per kernel
        fc_params = len(CLASSES) * (N_FEATURES + 1)
        print(f"\nNumbers to learn: conv {conv_params}, classifier {fc_params}, total {conv_params + fc_params}")

        # Try it: add a third kernel to KERNELS, for example a diagonal one:
        # [[2, -1, -1], [-1, 2, -1], [-1, -1, 2]]. Watch the shapes and the number of weights grow.
        # Then change SHIFT to 2. Does the pooled map still look the same?
      PYTHON
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Training an Image Classifier</h1>
        </div>
        <p class="lc-lead">A CNN starts with random weights, so its first answers are guesses. <strong>Training</strong> changes the weights, step by step, until the answers are good. In this lesson you will learn the full training process. You will split the data, measure loss and accuracy, and spot overfitting. You will also use data augmentation to get more out of a small dataset.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Left: labelled data is split into 70 percent train, 15 percent validation and 15 percent test. The training loop goes images, model, loss, update, and repeats for many epochs. Right: a chart where training loss keeps falling, but validation loss falls and then rises. That rise is overfitting, and the best point to stop is at the lowest validation loss.">
            <defs><marker id="cv14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="32" text-anchor="start" font-weight="700" fill="#f9a8d4">Split the labelled data</text>
              <rect x="20" y="48" width="210" height="34" fill="#10b981" opacity="0.35" stroke="#10b981"/>
              <rect x="230" y="48" width="45" height="34" fill="#3b82f6" opacity="0.35" stroke="#3b82f6"/>
              <rect x="275" y="48" width="45" height="34" fill="#f59e0b" opacity="0.35" stroke="#f59e0b"/>
              <text x="125" y="70">Train 70%</text>
              <text x="252" y="100" font-size="11" fill="#93c5fd">Val</text><text x="252" y="114" font-size="11" fill="#93c5fd">15%</text>
              <text x="297" y="100" font-size="11" fill="#fcd34d">Test</text><text x="297" y="114" font-size="11" fill="#fcd34d">15%</text>
              <rect x="20" y="150" width="70" height="40" rx="7" fill="#27274e" stroke="#8b5cf6"/><text x="55" y="175">Images</text>
              <rect x="100" y="150" width="70" height="40" rx="7" fill="#27274e" stroke="#8b5cf6"/><text x="135" y="175">Model</text>
              <rect x="180" y="150" width="70" height="40" rx="7" fill="#27274e" stroke="#ec4899"/><text x="215" y="175">Loss</text>
              <rect x="260" y="150" width="70" height="40" rx="7" fill="#27274e" stroke="#10b981"/><text x="295" y="175">Update</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cv14a)">
                <line x1="91" y1="170" x2="97" y2="170"/><line x1="171" y1="170" x2="177" y2="170"/><line x1="251" y1="170" x2="257" y2="170"/>
                <path d="M295,192 L295,215 L55,215 L55,195"/>
              </g>
              <text x="175" y="238" font-size="11" fill="#9b99b8">repeat for many epochs</text>
              <line x1="400" y1="230" x2="735" y2="230" stroke="#9b99b8" stroke-width="1.2" marker-end="url(#cv14a)"/>
              <line x1="400" y1="230" x2="400" y2="30" stroke="#9b99b8" stroke-width="1.2" marker-end="url(#cv14a)"/>
              <text x="410" y="36" text-anchor="start" font-size="11" fill="#9b99b8">loss</text>
              <text x="705" y="252" font-size="11" fill="#9b99b8">epochs</text>
              <path d="M402,60 C470,160 560,200 720,212" fill="none" stroke="#10b981" stroke-width="2.5"/>
              <path d="M402,72 C460,150 520,176 560,174 S650,142 720,112" fill="none" stroke="#ec4899" stroke-width="2.5"/>
              <line x1="556" y1="85" x2="556" y2="230" stroke="#f59e0b" stroke-width="1.2" stroke-dasharray="4 4"/>
              <text x="556" y="252" font-size="11" fill="#fcd34d">stop here</text>
              <text x="680" y="98" font-size="11" fill="#fca5a5">overfitting</text>
              <line x1="600" y1="46" x2="620" y2="46" stroke="#10b981" stroke-width="2.5"/><text x="626" y="50" text-anchor="start" font-size="11">train loss</text>
              <line x1="600" y1="66" x2="620" y2="66" stroke="#ec4899" stroke-width="2.5"/><text x="626" y="70" text-anchor="start" font-size="11">validation loss</text>
            </g>
          </svg>
          <figcaption>Train on one part of the data, check on another. When validation loss starts to rise, the model is memorising.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Labelled data and three splits</h3>
          <p>You need many images, each with the correct label. Well-known practice datasets are MNIST (70,000 small images of handwritten digits) and CIFAR-10 (60,000 tiny colour photos in 10 classes). For your own task, you collect and label images yourself.</p>
          <table class="lc-table">
            <thead><tr><th>Split</th><th>Typical size</th><th>What it is for</th></tr></thead>
            <tbody>
              <tr><td><strong>Train</strong></td><td>70–80%</td><td>The model learns from these images.</td></tr>
              <tr><td><strong>Validation</strong></td><td>10–15%</td><td>You check progress and choose settings, such as how long to train.</td></tr>
              <tr><td><strong>Test</strong></td><td>10–15%</td><td>You measure the final model <em>once</em>, at the very end.</td></tr>
            </tbody>
          </table>
          <p>Keep the splits separate. Near-copies of the same photo must not appear in both train and test. If they do, your test score will look better than the truth.</p>
        </div>
        <div class="lc-card">
          <h3>Loss, accuracy and epochs</h3>
          <ul class="lc-list">
            <li><strong>Loss</strong> is one number that says how wrong the model is. For classification, the usual loss is <strong>cross-entropy</strong>. It is small when the model gives a high probability to the correct class.</li>
            <li><strong>Accuracy</strong> is the share of images with the right answer. People read accuracy. The model learns from loss.</li>
            <li>A <strong>batch</strong> is a small group of images, such as 32. The model looks at one batch, computes the loss, and nudges every weight a little to lower it.</li>
            <li>One <strong>epoch</strong> is one full pass over the training set.</li>
          </ul>
          <p>Here is the core of a training loop in PyTorch, to run on your own computer:</p>
          <pre><code>loss_fn = nn.CrossEntropyLoss()
        optimizer = torch.optim.Adam(model.parameters(), lr=1e-3)

        for epoch in range(10):
            model.train()
            for images, labels in train_loader:      # one batch at a time
                scores = model(images)
                loss = loss_fn(scores, labels)
                optimizer.zero_grad()
                loss.backward()                      # work out how to change each weight
                optimizer.step()                     # change the weights a little</code></pre>
        </div>
        <div class="lc-card">
          <h3>Overfitting and data augmentation</h3>
          <p><strong>Overfitting</strong> means the model memorises the training images instead of learning the general pattern. Training accuracy is high, but validation accuracy is much lower. It happens most with small datasets and big models.</p>
          <p><strong>Data augmentation</strong> is a strong fix. You make new training images by changing the old ones a little: flip, rotate a few degrees, crop, or change the brightness. The label stays the same. The model sees more variety, so it learns what really matters.</p>
          <pre><code>import torch
        from torchvision.transforms import v2

        train_transform = v2.Compose([
            v2.RandomResizedCrop(224, scale=(0.8, 1.0)),
            v2.RandomHorizontalFlip(),
            v2.RandomRotation(10),
            v2.ColorJitter(brightness=0.2, contrast=0.2),
            v2.ToImage(),
            v2.ToDtype(torch.float32, scale=True),
        ])</code></pre>
          <p>Choose changes that keep the label true. A flipped cat is still a cat. A flipped "7" is not a real digit, so do not flip digits. Use augmentation only on training images, not on validation or test images. Other fixes for overfitting: collect more data, use a smaller model, or stop training early.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: watch a training run</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Goal">Sort leaf photos into healthy, rust and blight. We have 900 labelled photos.</li>
              <li data-kind="thought" data-label="Plan">Split 700 train, 100 validation, 100 test. Keep photos of the same plant in the same split.</li>
              <li data-kind="result" data-label="Epoch 1">train loss 1.05, accuracy 45% · validation loss 1.02, accuracy 47%</li>
              <li data-kind="result" data-label="Epoch 8">train loss 0.30, accuracy 90% · validation loss 0.42, accuracy 86%</li>
              <li data-kind="warn" data-label="Epoch 20">train loss 0.02, accuracy 100% · validation loss 0.85, accuracy 80%. Validation got worse: the model is overfitting.</li>
              <li data-kind="thought" data-label="Fix">Add augmentation: random flips, small rotations and brightness changes. Keep the weights from the epoch with the best validation loss.</li>
              <li data-kind="result" data-label="New run, best epoch">train accuracy 94% · validation accuracy 91%. The gap is much smaller.</li>
              <li data-kind="check" data-label="Test, once">Test accuracy 90%, close to validation. The model is ready for a real trial. (This is demo data.)</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code trains a small classifier on 5×5 digit images. It uses only 2 training images per class, on purpose.</li>
            <li>Run A trains on those 6 images. Training accuracy reaches 100%, but validation loss goes up. That is overfitting.</li>
            <li>Run B adds augmentation: copies moved one pixel left and right. Validation accuracy jumps.</li>
            <li>Change <code>PER_CLASS</code> to 20. With more real data, is the gap between train and validation smaller? Does augmentation still help as much?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Always judge a model on images it has never trained on. Training accuracy only shows what it memorised. Validation and test accuracy show what it really learned.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Training an image classifier: split the data, train, watch loss and accuracy,
        # see overfitting, then fix it with data augmentation.
        import math
        import random
        random.seed(1)

        TEMPLATES = {
            "0": ["01110", "01010", "01010", "01010", "01110"],
            "1": ["00100", "01100", "00100", "00100", "01110"],
            "7": ["01110", "00010", "00100", "00100", "00100"],
        }
        CLASSES = list(TEMPLATES)

        def shift(img, dx):
            return [[row[c - dx] if 0 <= c - dx < 5 else 0 for c in range(5)] for row in img]

        def photo(label):
            """A 'photo' of a digit: moved left or right a little, with some noisy pixels."""
            img = shift([[int(ch) for ch in row] for row in TEMPLATES[label]], random.choice([-1, 0, 1]))
            for _ in range(random.choice([0, 1, 2])):
                r, c = random.randrange(5), random.randrange(5)
                img[r][c] = 1 - img[r][c]
            return img

        # 1) A labelled dataset, split into train / validation / test.
        data = [(photo(lab), lab) for lab in CLASSES for _ in range(40)]
        random.shuffle(data)
        PER_CLASS = 2                                            # a VERY small training set, on purpose
        picked = []
        for lab in CLASSES:
            picked += [i for i, d in enumerate(data) if d[1] == lab][:PER_CLASS]
        train = [data[i] for i in picked]
        rest = [d for i, d in enumerate(data) if i not in picked]
        val, test = rest[:30], rest[30:60]
        print(f"train {len(train)} images, validation {len(val)}, test {len(test)}")

        def augment(examples):
            """Data augmentation: make new training images by moving each one left and right."""
            out = []
            for img, lab in examples:
                for dx in (-1, 0, 1):
                    out.append((shift(img, dx), lab))
            return out

        # 2) The model: one score per class = weights * pixels + bias. Softmax turns scores into probabilities.
        def probabilities(model, img):
            x = [v for row in img for v in row]
            scores = [sum(w * v for w, v in zip(model["W"][k], x)) + model["b"][k] for k in range(3)]
            exps = [math.exp(s - max(scores)) for s in scores]
            return [e / sum(exps) for e in exps]

        def evaluate(model, examples):
            loss, correct = 0.0, 0
            for img, lab in examples:
                p = probabilities(model, img)
                k = CLASSES.index(lab)
                loss += -math.log(p[k] + 1e-12)                  # cross-entropy loss: small when p[k] is near 1
                correct += p.index(max(p)) == k
            return loss / len(examples), correct / len(examples)

        def fit(examples, epochs=60, lr=0.3, report=True):
            model = {"W": [[0.0] * 25 for _ in range(3)], "b": [0.0] * 3}
            for epoch in range(1, epochs + 1):
                random.shuffle(examples)
                for img, lab in examples:                        # one pass over the data = one epoch
                    x = [v for row in img for v in row]
                    p = probabilities(model, img)
                    for k in range(3):
                        g = p[k] - (1 if CLASSES[k] == lab else 0)   # gradient of the loss
                        model["b"][k] -= lr * g
                        for i in range(25):
                            model["W"][k][i] -= lr * g * x[i]
                if report and epoch in (1, 5, 20, 60):
                    tl, ta = evaluate(model, examples)
                    vl, va = evaluate(model, val)
                    print(f"  epoch {epoch:2d}: train loss {tl:.2f} acc {ta:.0%} | val loss {vl:.2f} acc {va:.0%}")
            return model

        print("\nA) Train on the small training set only:")
        plain = fit(list(train))
        print("\nB) Train on the same images + moved copies (3 times as many):")
        augmented = fit(augment(train))

        print("\nThe model we pick (B) on the test set, used only once at the end:")
        _, test_acc = evaluate(augmented, test)
        print(f"  test accuracy {test_acc:.0%}")

        # Try it: change PER_CLASS to 20 (more real data). Does the gap between
        # train and validation accuracy get smaller? Is augmentation still as helpful?
      PYTHON
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Transfer Learning</h1>
        </div>
        <p class="lc-lead">Training a big CNN from nothing needs a huge number of labelled images. Most projects do not have that. <strong>Transfer learning</strong> solves this. You start with a model that someone already trained on a big dataset. Then you adapt it to your task. In this lesson you will learn how to reuse a pre-trained model, when to freeze layers, and when to fine-tune them. You will also see why it needs much less data.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Top: a model pre-trained on a big dataset, with early, middle and late layers and an old head for 1,000 classes. Its weights are copied down to a new model for your task. The early and middle layers are frozen, the late layers are frozen or fine-tuned, and the old head is replaced by a new head for 3 classes that is trained on your data.">
            <defs><marker id="cv15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="25" text-anchor="start" font-weight="700" fill="#c4b5fd">1) Pre-trained on a big dataset (for example ImageNet, 1,000 classes)</text>
              <rect x="20" y="40" width="150" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="95" y="62">Early layers</text><text x="95" y="79" font-size="10.5" fill="#9b99b8">edges, colours</text>
              <rect x="190" y="40" width="150" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="265" y="62">Middle layers</text><text x="265" y="79" font-size="10.5" fill="#9b99b8">textures, shapes</text>
              <rect x="360" y="40" width="150" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="435" y="62">Late layers</text><text x="435" y="79" font-size="10.5" fill="#9b99b8">object parts</text>
              <rect x="550" y="40" width="190" height="50" rx="8" fill="#27274e" stroke="#9b99b8"/><text x="645" y="62">Old head</text><text x="645" y="79" font-size="10.5" fill="#9b99b8">1,000 classes</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv15a)">
                <line x1="171" y1="65" x2="186" y2="65"/><line x1="341" y1="65" x2="356" y2="65"/><line x1="511" y1="65" x2="546" y2="65"/>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" stroke-dasharray="4 4" marker-end="url(#cv15a)">
                <line x1="95" y1="92" x2="95" y2="151"/><line x1="265" y1="92" x2="265" y2="151"/><line x1="435" y1="92" x2="435" y2="151"/>
              </g>
              <text x="445" y="125" text-anchor="start" font-size="11" fill="#9b99b8">copy weights</text>
              <text x="645" y="112" font-size="11" fill="#fca5a5">thrown away</text>
              <rect x="20" y="155" width="150" height="50" rx="8" fill="#1f1f44" stroke="#64748b" stroke-dasharray="3 3"/><text x="95" y="177">Early layers</text><text x="95" y="194" font-size="10.5" fill="#9b99b8">frozen</text>
              <rect x="190" y="155" width="150" height="50" rx="8" fill="#1f1f44" stroke="#64748b" stroke-dasharray="3 3"/><text x="265" y="177">Middle layers</text><text x="265" y="194" font-size="10.5" fill="#9b99b8">frozen</text>
              <rect x="360" y="155" width="150" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="435" y="177">Late layers</text><text x="435" y="194" font-size="10.5" fill="#fcd34d">frozen or fine-tuned</text>
              <rect x="550" y="155" width="190" height="50" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/><text x="645" y="177" fill="#6ee7b7">New head</text><text x="645" y="194" font-size="10.5" fill="#6ee7b7">3 classes · trained</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv15a)">
                <line x1="171" y1="180" x2="186" y2="180"/><line x1="341" y1="180" x2="356" y2="180"/><line x1="511" y1="180" x2="546" y2="180"/>
              </g>
              <text x="20" y="235" text-anchor="start" font-weight="700" fill="#6ee7b7">2) Reused for your task (3 classes, a few hundred photos)</text>
              <text x="20" y="260" text-anchor="start" font-size="11" fill="#9b99b8">Dashed grey = frozen: these weights do not change. Green = trained on your data.</text>
            </g>
          </svg>
          <figcaption>Keep the layers that already see well. Replace only the part that gives the final answer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why pre-trained features transfer</h3>
          <p>A <strong>pre-trained model</strong> is a model that was already trained, often on ImageNet (over a million photos in 1,000 classes). Its early layers learned edges and colours. Its middle layers learned textures and shapes. These features are useful for almost any photo, not only the 1,000 original classes.</p>
          <p>So you do not need to learn them again. The part that turns features into a final answer is called the <strong>head</strong>. The rest is often called the <strong>backbone</strong>. You keep the backbone and train a new, small head for your own classes.</p>
          <p>This is why transfer learning needs less data. The new head has few weights. A few hundred labelled images, sometimes fewer, can be enough for a good first model.</p>
        </div>
        <div class="lc-card">
          <h3>Freezing and fine-tuning</h3>
          <p>To <strong>freeze</strong> a layer means its weights do not change during training. To <strong>fine-tune</strong> means you let some pre-trained layers change a little, with a small learning rate (small steps).</p>
          <table class="lc-table">
            <thead><tr><th>Your situation</th><th>A good plan</th></tr></thead>
            <tbody>
              <tr><td>Very little data, photos like everyday photos</td><td>Freeze the whole backbone. Train only the new head.</td></tr>
              <tr><td>More data (thousands of images)</td><td>Train the head first. Then unfreeze the late layers and fine-tune with a small learning rate.</td></tr>
              <tr><td>Images very different from normal photos (X-rays, satellite images)</td><td>Fine-tune more layers. Pre-training still helps as a starting point.</td></tr>
            </tbody>
          </table>
          <p>Why a small learning rate? The pre-trained weights are already good. Big steps could destroy what the model learned. The new head starts random, so it can use bigger steps.</p>
        </div>
        <div class="lc-card">
          <h3>Transfer learning in code</h3>
          <p>On your own computer, with PyTorch and torchvision:</p>
          <pre><code>import torch
        from torch import nn
        from torchvision.models import resnet18, ResNet18_Weights

        weights = ResNet18_Weights.DEFAULT
        model = resnet18(weights=weights)          # downloads pre-trained weights
        preprocess = weights.transforms()          # resize and normalise images the same way

        for p in model.parameters():
            p.requires_grad = False                # freeze the whole backbone

        model.fc = nn.Linear(model.fc.in_features, 3)   # new head: 3 classes, trainable
        optimizer = torch.optim.Adam(model.fc.parameters(), lr=1e-3)

        # Later, to fine-tune the last block too:
        # for p in model.layer4.parameters():
        #     p.requires_grad = True
        # optimizer = torch.optim.Adam(
        #     [p for p in model.parameters() if p.requires_grad], lr=1e-4)</code></pre>
          <p>Always prepare your images the same way as in pre-training. The <code>weights.transforms()</code> helper does this for you.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a transfer learning project</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of a transfer learning project in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Collect and label a few hundred images. Split them into train, validation and test.</li>
              <li data-order="2">Load a model pre-trained on a big dataset, such as ResNet trained on ImageNet.</li>
              <li data-order="3">Replace the old head with a new layer that has one output per class.</li>
              <li data-order="4">Freeze the backbone and train only the new head.</li>
              <li data-order="5">If validation accuracy is still too low, unfreeze the late layers and fine-tune with a small learning rate.</li>
              <li data-order="6">Measure the final model once on the test set.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code has a frozen "backbone". Pretend it was pre-trained on many images. It turns each 5×5 digit into 6 useful features.</li>
            <li>A small new head (nearest centroid) is trained on top of it. It is compared with a model that learns from raw pixels only.</li>
            <li>Run it. With 1 or 2 images per class, the backbone wins by a lot. With 20 per class, the raw-pixel model catches up.</li>
            <li>Now give the backbone worse features: change its last line to <code>return [tall_columns]</code>. Transfer learning is only as good as the features you transfer.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Do not train from nothing if you do not have to. Start from a pre-trained model, train a new head, and fine-tune only as much as your data allows.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Transfer learning in miniature.
        # A frozen "pre-trained" feature extractor + a small new head, trained on very few images,
        # compared with a model that learns from raw pixels.
        import random
        random.seed(2)

        TEMPLATES = {
            "0": ["01110", "01010", "01010", "01010", "01110"],
            "1": ["00100", "01100", "00100", "00100", "01110"],
            "7": ["01110", "00010", "00100", "00100", "00100"],
        }
        CLASSES = list(TEMPLATES)

        def shift(img, dx):
            return [[row[c - dx] if 0 <= c - dx < 5 else 0 for c in range(5)] for row in img]

        def photo(label):
            img = shift([[int(ch) for ch in row] for row in TEMPLATES[label]], random.choice([-1, 0, 1]))
            if random.random() < 0.5:
                r, c = random.randrange(5), random.randrange(5)
                img[r][c] = 1 - img[r][c]                        # one noisy pixel
            return img

        # The "backbone": pretend it was trained on many images before. It is FROZEN (we never change it).
        # It turns an image into 6 features that do not care where the digit sits left or right.
        def backbone(img):
            ink_per_row = [sum(row) for row in img]              # 5 features: how much ink in each row
            tall_columns = sum(1 for c in range(5) if sum(img[r][c] for r in range(5)) >= 3)
            return ink_per_row + [tall_columns]                  # 6 features in total

        def raw_pixels(img):
            return [v for row in img for v in row]               # 25 features: the pixels themselves

        # The "head": a tiny classifier trained on OUR data. Here: nearest centroid.
        def train_head(examples, features):
            groups = {}
            for img, lab in examples:
                groups.setdefault(lab, []).append(features(img))
            return {lab: [sum(col) / len(col) for col in zip(*vecs)] for lab, vecs in groups.items()}

        def predict(head, features, img):
            f = features(img)
            return min(head, key=lambda lab: sum((a - b) ** 2 for a, b in zip(f, head[lab])))

        def accuracy(head, features, examples):
            return sum(predict(head, features, img) == lab for img, lab in examples) / len(examples)

        test = [(photo(lab), lab) for lab in CLASSES for _ in range(30)]
        print("Test set:", len(test), "images\n")
        print("images per class | from scratch (pixels) | pre-trained backbone + new head")
        for n in (1, 2, 5, 20):
            random.seed(100 + n)
            train = [(photo(lab), lab) for lab in CLASSES for _ in range(n)]
            scratch = accuracy(train_head(train, raw_pixels), raw_pixels, test)
            transfer = accuracy(train_head(train, backbone), backbone, test)
            print(f"{n:16d} | {scratch:20.0%} | {transfer:.0%}")

        print("\nThe backbone already knows useful features, so the head needs only a few examples.")

        # Try it: give the backbone worse features. In backbone(), change the last line to
        # `return [tall_columns]` and run again. Transfer learning is only as good as the features.
      PYTHON
    },
    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Vision Transformers</h1>
        </div>
        <p class="lc-lead">Transformers were first built for text. A <strong>Vision Transformer</strong> (ViT) uses the same idea for images. It cuts the image into small square patches and treats each patch like a word. Then <strong>attention</strong> lets every patch look at every other patch. In this lesson you will learn how patches become tokens and how attention works on them. You will also see how ViTs compare with CNNs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="An image is cut into 9 patches. Each patch becomes a token with position information, plus one extra class token. The tokens go into a transformer encoder where every patch attends to all patches. A head turns the class token into the label cat.">
            <defs><marker id="cv16a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <g fill="#27274e" stroke="#ec4899" stroke-width="1.5">
                <rect x="20" y="50" width="40" height="40"/><rect x="60" y="50" width="40" height="40"/><rect x="100" y="50" width="40" height="40"/>
                <rect x="20" y="90" width="40" height="40"/><rect x="60" y="90" width="40" height="40"/><rect x="100" y="90" width="40" height="40"/>
                <rect x="20" y="130" width="40" height="40"/><rect x="60" y="130" width="40" height="40"/><rect x="100" y="130" width="40" height="40"/>
              </g>
              <g font-size="12" fill="#f9a8d4">
                <text x="40" y="75">1</text><text x="80" y="75">2</text><text x="120" y="75">3</text>
                <text x="40" y="115">4</text><text x="80" y="115">5</text><text x="120" y="115">6</text>
                <text x="40" y="155">7</text><text x="80" y="155">8</text><text x="120" y="155">9</text>
              </g>
              <text x="80" y="195" font-size="11" fill="#9b99b8">image cut into</text>
              <text x="80" y="210" font-size="11" fill="#9b99b8">9 patches</text>
              <line x1="146" y1="84" x2="186" y2="84" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv16a)"/>
              <text x="333" y="55" font-size="11" fill="#9b99b8">tokens: class token + 9 patch tokens (+ position)</text>
              <rect x="195" y="70" width="24" height="28" rx="4" fill="#1f1f44" stroke="#10b981"/><text x="207" y="89" font-size="10.5" fill="#6ee7b7">C</text>
              <g fill="#27274e" stroke="#3b82f6">
                <rect x="223" y="70" width="24" height="28" rx="4"/><rect x="251" y="70" width="24" height="28" rx="4"/><rect x="279" y="70" width="24" height="28" rx="4"/>
                <rect x="307" y="70" width="24" height="28" rx="4"/><rect x="335" y="70" width="24" height="28" rx="4"/><rect x="363" y="70" width="24" height="28" rx="4"/>
                <rect x="391" y="70" width="24" height="28" rx="4"/><rect x="419" y="70" width="24" height="28" rx="4"/><rect x="447" y="70" width="24" height="28" rx="4"/>
              </g>
              <g font-size="10.5">
                <text x="235" y="89">1</text><text x="263" y="89">2</text><text x="291" y="89">3</text><text x="319" y="89">4</text><text x="347" y="89">5</text>
                <text x="375" y="89">6</text><text x="403" y="89">7</text><text x="431" y="89">8</text><text x="459" y="89">9</text>
              </g>
              <line x1="333" y1="102" x2="333" y2="126" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv16a)"/>
              <rect x="195" y="130" width="276" height="60" rx="8" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="333" y="155" font-weight="700" fill="#c4b5fd">Transformer encoder</text>
              <text x="333" y="175" font-size="11" fill="#9b99b8">every patch attends to all patches</text>
              <line x1="473" y1="160" x2="521" y2="160" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv16a)"/>
              <text x="497" y="150" font-size="10.5" fill="#6ee7b7">C</text>
              <rect x="525" y="130" width="100" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="575" y="155">Head</text><text x="575" y="174" font-size="10.5" fill="#9b99b8">linear layer</text>
              <line x1="627" y1="160" x2="641" y2="160" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv16a)"/>
              <rect x="645" y="130" width="100" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="695" y="165" fill="#6ee7b7">"cat"</text>
              <text x="20" y="240" text-anchor="start" font-size="12" fill="#93c5fd">CNN: small kernels see close neighbours first, then grow their view layer by layer.</text>
              <text x="20" y="262" text-anchor="start" font-size="12" fill="#c4b5fd">ViT: attention can link far-apart patches from the very first layer.</text>
            </g>
          </svg>
          <figcaption>A ViT turns an image into a sequence of patch tokens and runs a transformer over them, just like words in a sentence.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From patches to tokens</h3>
          <p>The Vision Transformer was introduced in the 2020 paper "An Image is Worth 16x16 Words". Its main steps are:</p>
          <ol class="lc-list">
            <li><strong>Cut into patches.</strong> A 224×224 image with 16×16 patches gives 14 × 14 = 196 patches.</li>
            <li><strong>Flatten each patch.</strong> A 16×16 RGB patch has 16 × 16 × 3 = 768 numbers.</li>
            <li><strong>Patch embedding.</strong> One learned linear layer turns every patch into a <strong>token</strong> (a list of numbers, the same length for every patch). The same layer is used for all patches.</li>
            <li><strong>Add position embeddings.</strong> Attention does not know where a patch came from. So the model adds a learned "position" list to each token.</li>
            <li><strong>Add a class token.</strong> One extra learned token joins the sequence. At the end, the head reads this token to make the prediction.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Attention over patches</h3>
          <p><strong>Self-attention</strong> lets each token collect information from all the other tokens. For one patch, the model does this:</p>
          <ul class="lc-list">
            <li>It compares the patch with every patch. The comparison is a dot product (multiply matching numbers and add them up). A bigger result means "more related".</li>
            <li>Softmax turns these scores into weights that add up to 1.</li>
            <li>The new token is a weighted mix of all tokens. Related patches count more.</li>
          </ul>
          <p>A transformer encoder repeats "attention, then a small neural network" in many layers. The model learns which patches should look at each other. For example, a patch with a cat's ear can link to a patch with its tail. On your own computer, you can load a pre-trained ViT like this:</p>
          <pre><code>from torchvision.models import vit_b_16, ViT_B_16_Weights

        weights = ViT_B_16_Weights.DEFAULT
        model = vit_b_16(weights=weights).eval()
        preprocess = weights.transforms()     # resize and crop to 224×224, then normalise</code></pre>
        </div>
        <div class="lc-card">
          <h3>ViTs and CNNs compared</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>CNN</th><th>Vision Transformer</th></tr></thead>
            <tbody>
              <tr><td>Basic unit</td><td>Small kernel sliding over pixels</td><td>Patch token</td></tr>
              <tr><td>What one layer sees</td><td>Close neighbours only</td><td>All patches at once</td></tr>
              <tr><td>Built-in assumptions</td><td>Nearby pixels belong together. A pattern means the same thing anywhere.</td><td>Very few. It learns them from data.</td></tr>
              <tr><td>Data needed</td><td>Works well with less data</td><td>Usually needs large datasets or pre-training</td></tr>
              <tr><td>Cost</td><td>Grows with the number of pixels</td><td>Attention grows fast as patches increase</td></tr>
            </tbody>
          </table>
          <p>Both are widely used today. Many models mix ideas from both. Transformer image encoders are also a key part of models that link images and text, which you will meet later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: CNN, ViT or both?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each statement: is it true for CNNs, for Vision Transformers, or for both?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="cnn" data-label="CNN"></div>
              <div data-sorter-target="bucket" data-bucket="vit" data-label="Vision Transformer"></div>
              <div data-sorter-target="bucket" data-bucket="both" data-label="Both"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="cnn" data-why="A 3×3 kernel only covers close neighbours. The view grows slowly, layer by layer.">Each early layer only looks at a small area around each pixel</li>
              <li data-bucket="vit" data-why="The image becomes a sequence of patch tokens, like words in a sentence.">Cuts the image into patches and treats them like words</li>
              <li data-bucket="vit" data-why="Attention itself has no idea of order or place, so position embeddings are added.">Needs position embeddings to know where each piece came from</li>
              <li data-bucket="both" data-why="Both learn their weights from labelled data, and both are often pre-trained on large datasets.">Learns its weights from data and can be fine-tuned for a new task</li>
              <li data-bucket="cnn" data-why="Max pooling shrinks feature maps. It is a classic CNN part.">Often uses max pooling to make feature maps smaller</li>
              <li data-bucket="both" data-why="Both end with a head, often a linear layer, that gives one score per class.">Ends with a layer that gives one score per class</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code cuts a 6×6 image into 9 patches of 2×2 pixels. It turns each patch into a token of 4 numbers and adds position numbers.</li>
            <li>It then prints the attention weights from one patch to all 9 patches, laid out like the image. The weights are random, so the pattern is not meaningful yet. The point is that every patch gets a weight, near or far.</li>
            <li>Change <code>P</code> to 3, then to 1. Count the tokens each time. Smaller patches mean more tokens, and attention has much more work to do.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A Vision Transformer reads an image like a sentence of patches. Attention lets any patch use information from any other patch, but the model needs lots of data or pre-training to learn what to look at.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Vision Transformer basics: cut an image into patches, turn each patch into a token,
        # add position information, then let every patch "attend" to every other patch.
        import math
        import random
        random.seed(8)

        IMAGE = [  # 6x6 grayscale image, values 0-9: a bright blob in the top-left, a line at the bottom
            [9, 8, 0, 0, 0, 0],
            [8, 9, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0],
            [7, 7, 7, 7, 7, 7],
        ]
        P = 2                      # patch size: 2x2 pixels
        D = 4                      # embedding size: each token becomes 4 numbers

        # 1) Cut into patches and flatten each one.
        patches = []
        for r in range(0, 6, P):
            for c in range(0, 6, P):
                patches.append([IMAGE[r + i][c + j] / 9 for i in range(P) for j in range(P)])
        print(f"{len(patches)} patches, each with {P * P} numbers")

        # 2) Patch embedding: the SAME small linear layer turns every patch into a D-number token.
        W_embed = [[random.uniform(-1, 1) for _ in range(P * P)] for _ in range(D)]
        pos_embed = [[random.uniform(-0.1, 0.1) for _ in range(D)] for _ in patches]  # learned in a real ViT
        tokens = [[sum(w * x for w, x in zip(W_embed[d], p)) + pos_embed[i][d] for d in range(D)]
                  for i, p in enumerate(patches)]

        # 3) Self-attention for one query patch: compare it with every patch (dot product),
        #    then softmax turns the scores into weights that add up to 1.
        #    (A real ViT first multiplies tokens by learned "query" and "key" matrices. We skip that.)
        def attention_weights(q_index):
            q = tokens[q_index]
            scores = [sum(a * b for a, b in zip(q, k)) / math.sqrt(D) for k in tokens]
            exps = [math.exp(s - max(scores)) for s in scores]
            return [e / sum(exps) for e in exps]

        def show_weights(q_index):
            w = attention_weights(q_index)
            grid = 6 // P                                        # patches per row
            print(f"\nAttention from patch {q_index} to all {len(w)} patches (laid out like the image):")
            for r in range(grid):
                print("   ", "  ".join(f"{w[r * grid + c]:.2f}" for c in range(grid)))

        show_weights(0)            # the bright top-left patch
        show_weights(len(patches) - 2)   # a patch on the bottom line
        print("\nEven the first layer can link patches that are far apart.")
        print("A 3x3 convolution only sees its close neighbours.")

        # 4) Real sizes: a 224x224 photo cut into 16x16 patches.
        side = 224 // 16
        print(f"\nA 224x224 image with 16x16 patches gives {side} x {side} = {side * side} tokens.")
        print(f"Each patch has 16 x 16 x 3 = {16 * 16 * 3} numbers before embedding.")

        # Try it: change P to 3 (bigger patches), then to 1 (one pixel per patch).
        # Count the tokens each time. Smaller patches mean more tokens and more work for attention.
      PYTHON
    },
    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Object Detection</h1>
        </div>
        <p class="lc-lead">A classifier gives one label for the whole image. An <strong>object detector</strong> does more. It finds every object in the image and draws a box around each one. For each box it gives a class ("cat") and a confidence score (how sure it is, from 0 to 1). In this lesson you will learn how boxes are stored and how to measure overlap with IoU. You will also learn how non-maximum suppression removes duplicate boxes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Left: a detector output with two overlapping cat boxes, scores 0.92 and 0.71, and one dog box with score 0.88. Right: two 4 by 4 boxes that overlap in a 2 by 2 area, so IoU is 4 divided by 28, about 0.14.">
            <defs><marker id="cv17a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="360" height="240" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="190" y="30" font-weight="700" fill="#f9a8d4">Detector output</text>
              <rect x="30" y="42" width="320" height="180" rx="6" fill="#27274e"/>
              <rect x="60" y="85" width="110" height="100" fill="none" stroke="#10b981" stroke-width="2.5"/>
              <text x="60" y="80" text-anchor="start" fill="#6ee7b7">cat 0.92</text>
              <rect x="78" y="100" width="112" height="100" fill="none" stroke="#f59e0b" stroke-width="2" stroke-dasharray="6 4"/>
              <text x="134" y="215" fill="#fcd34d">cat 0.71</text>
              <rect x="230" y="72" width="100" height="130" fill="none" stroke="#3b82f6" stroke-width="2.5"/>
              <text x="230" y="67" text-anchor="start" fill="#93c5fd">dog 0.88</text>
              <text x="190" y="242" fill="#9b99b8" font-size="11">NMS removes the dashed duplicate box</text>
              <line x1="374" y1="130" x2="400" y2="130" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv17a)"/>
              <rect x="404" y="10" width="346" height="240" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="577" y="30" font-weight="700" fill="#c4b5fd">IoU: how much two boxes overlap</text>
              <rect x="424" y="60" width="96" height="96" fill="none" stroke="#10b981" stroke-width="2"/>
              <rect x="472" y="108" width="96" height="96" fill="none" stroke="#ec4899" stroke-width="2"/>
              <rect x="472" y="108" width="48" height="48" fill="#8b5cf6" fill-opacity="0.6"/>
              <text x="440" y="78" fill="#6ee7b7">A</text>
              <text x="552" y="196" fill="#f9a8d4">B</text>
              <g text-anchor="start" font-size="12">
                <text x="588" y="80">A: 4×4 = 16</text>
                <text x="588" y="104">B: 4×4 = 16</text>
                <text x="588" y="128" fill="#c4b5fd">overlap: 2×2 = 4</text>
                <text x="588" y="152">union: 16+16−4 = 28</text>
                <text x="588" y="182" font-weight="700" fill="#fcd34d">IoU = 4 ÷ 28 ≈ 0.14</text>
              </g>
              <text x="577" y="232" fill="#9b99b8" font-size="11">1.0 = same box · 0.0 = no overlap</text>
            </g>
          </svg>
          <figcaption>A detector gives many boxes. IoU measures overlap. NMS uses IoU to keep one box for each object.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a detector gives you</h3>
          <p>For each object found, a detector returns three things:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it means</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Bounding box</strong></td><td>A rectangle around the object, in pixel coordinates</td><td><code>(x1, y1, x2, y2) = (10, 20, 60, 70)</code></td></tr>
              <tr><td><strong>Class</strong></td><td>What the object is</td><td><code>"cat"</code></td></tr>
              <tr><td><strong>Confidence</strong></td><td>How sure the model is, from 0 to 1</td><td><code>0.92</code></td></tr>
            </tbody>
          </table>
          <p>Boxes are stored in two common ways. One way is two corners: <code>(x1, y1, x2, y2)</code>. The other way is a corner plus a size: <code>(x, y, width, height)</code>. Always check which format a library uses. Mixing them up is a very common bug.</p>
        </div>
        <div class="lc-card">
          <h3>IoU: Intersection over Union</h3>
          <p><strong>IoU</strong> compares two boxes. The intersection is the area where they overlap. The union is the total area covered by both boxes.</p>
          <pre><code>IoU = overlap area ÷ union area
        union = area(A) + area(B) − overlap</code></pre>
          <ul class="lc-list">
            <li>IoU is 1.0 when the boxes are exactly the same.</li>
            <li>IoU is 0.0 when they do not touch.</li>
            <li>A predicted box often counts as correct if its IoU with the true box is 0.5 or more.</li>
          </ul>
          <p>The main score for detectors is called <strong>mAP</strong> (mean average precision). It checks both the classes and the boxes, using an IoU threshold. You do not need its full formula here. Just know that it is built on IoU.</p>
        </div>
        <div class="lc-card">
          <h3>Non-maximum suppression (NMS)</h3>
          <p>A detector usually predicts several boxes for the same object. <strong>NMS</strong> cleans this up. It follows these steps:</p>
          <ol class="lc-list">
            <li>Throw away boxes with a very low score.</li>
            <li>Sort the other boxes by score, highest first.</li>
            <li>Keep the top box.</li>
            <li>Remove other boxes of the same class that overlap it a lot (IoU above a threshold, such as 0.5).</li>
            <li>Repeat with the boxes that are left.</li>
          </ol>
          <p>On your own computer, torchvision has both functions ready:</p>
          <pre><code>import torch
        from torchvision.ops import box_iou, nms

        boxes = torch.tensor([[10., 10., 50., 50.],
                              [12., 12., 52., 52.],
                              [100., 100., 140., 150.]])
        scores = torch.tensor([0.90, 0.75, 0.80])
        print(box_iou(boxes, boxes))            # a 3×3 table of IoU values
        print(nms(boxes, scores, iou_threshold=0.5))   # tensor([0, 2])</code></pre>
        </div>
        <div class="lc-card">
          <h3>One-stage and two-stage detectors</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Two-stage</th><th>One-stage</th></tr></thead>
            <tbody>
              <tr><td>How it works</td><td>Step 1 suggests regions that may hold an object. Step 2 classifies each region and fixes its box.</td><td>One pass over the image predicts all boxes and classes at the same time.</td></tr>
              <tr><td>Example</td><td>Faster R-CNN</td><td>YOLO ("You Only Look Once", first version 2015/2016)</td></tr>
              <tr><td>Strength</td><td>Often very accurate</td><td>Fast, good for live video</td></tr>
            </tbody>
          </table>
          <p>Some newer detectors use transformers. Some of them are trained so that they do not need NMS at all. The ideas of boxes, scores and IoU stay the same.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run NMS step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Raw output">The detector gives 7 boxes: cat 0.92, cat 0.81, cat 0.40, dog 0.88, dog 0.52, cat 0.65 and dog 0.20.</li>
              <li data-kind="thought" data-label="Filter">Remove boxes below a score of 0.3. The dog 0.20 box is removed. 6 boxes are left.</li>
              <li data-kind="tool" data-label="Keep cat 0.92">Sort by score. Keep the top box, cat 0.92. Compare it with the other cat boxes.</li>
              <li data-kind="result" data-label="Remove duplicates">Cat 0.81 has IoU 0.79 with it. Cat 0.40 has IoU 0.77. Both are above 0.5, so both are removed.</li>
              <li data-kind="tool" data-label="Keep dog 0.88">The next highest is dog 0.88. Keep it. Dog 0.52 has IoU 0.78 with it, so it is removed.</li>
              <li data-kind="check" data-label="Different object">Cat 0.65 is far away from the first cat box. Its IoU is 0, so it is kept as a second cat.</li>
              <li data-kind="answer" data-label="Final">3 detections remain: cat 0.92, dog 0.88 and cat 0.65. One box for each real object.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. It prints IoU for four pairs of boxes. Then it runs NMS on 7 boxes and prints each keep or remove step.</li>
            <li>At the end, it compares the final boxes with the true boxes. It uses IoU of 0.5 or more as "correct".</li>
            <li>Change <code>iou_threshold</code> to <code>0.9</code>. Duplicate boxes now survive. Change it to <code>0.1</code> and see what happens.</li>
            <li>Move one true box a little. Watch its IoU and its "correct" result change.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Detection is "what and where". IoU is the ruler for "where": it scores how well two boxes overlap. NMS uses that ruler to turn many guesses into one box for each object.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Object detection basics: IoU and non-maximum suppression (NMS).
        # A box is (x1, y1, x2, y2): the top-left and bottom-right corners, in pixels.

        def area(box):
            x1, y1, x2, y2 = box
            return max(0, x2 - x1) * max(0, y2 - y1)

        def iou(a, b):
            # The overlap box uses the largest left/top and the smallest right/bottom.
            overlap_box = (max(a[0], b[0]), max(a[1], b[1]), min(a[2], b[2]), min(a[3], b[3]))
            overlap = area(overlap_box)
            union = area(a) + area(b) - overlap
            return overlap / union if union else 0.0

        print("IoU examples")
        print("  same box       :", round(iou((0, 0, 4, 4), (0, 0, 4, 4)), 2))
        print("  half shifted   :", round(iou((0, 0, 4, 4), (2, 0, 6, 4)), 2))
        print("  corner overlap :", round(iou((0, 0, 4, 4), (2, 2, 6, 6)), 2))
        print("  no overlap     :", round(iou((0, 0, 4, 4), (5, 5, 8, 8)), 2))

        # Raw detector output: many boxes, and some are duplicates of the same object.
        detections = [
            {"label": "cat", "score": 0.92, "box": (10, 20, 60, 70)},
            {"label": "cat", "score": 0.81, "box": (14, 22, 62, 74)},
            {"label": "cat", "score": 0.40, "box": (8, 18, 55, 66)},
            {"label": "dog", "score": 0.88, "box": (70, 15, 130, 90)},
            {"label": "dog", "score": 0.52, "box": (75, 20, 128, 95)},
            {"label": "cat", "score": 0.65, "box": (140, 40, 180, 80)},
            {"label": "dog", "score": 0.20, "box": (150, 45, 185, 85)},
        ]

        def nms(dets, iou_threshold=0.5, score_threshold=0.3):
            dets = [d for d in dets if d["score"] >= score_threshold]
            dets.sort(key=lambda d: d["score"], reverse=True)
            kept = []
            while dets:
                best = dets.pop(0)
                kept.append(best)
                print(f"  keep   {best['label']} {best['score']:.2f} {best['box']}")
                remaining = []
                for d in dets:
                    overlap = iou(best["box"], d["box"])
                    if d["label"] == best["label"] and overlap > iou_threshold:
                        print(f"  remove {d['label']} {d['score']:.2f} (IoU {overlap:.2f} with the kept box)")
                    else:
                        remaining.append(d)
                dets = remaining
            return kept

        print("\nNMS steps")
        final = nms(detections, iou_threshold=0.5)
        print(f"\n{len(detections)} raw boxes -> {len(final)} final detections")

        # Is each final box correct? Compare it with the true (ground truth) boxes.
        truth = [("cat", (12, 20, 60, 72)), ("dog", (72, 18, 130, 92)), ("cat", (138, 38, 182, 84))]
        print("\nMatch with ground truth (IoU >= 0.5 counts as correct)")
        for d in final:
            best = max((iou(d["box"], box) for label, box in truth if label == d["label"]), default=0)
            verdict = "correct" if best >= 0.5 else "wrong"
            print(f"  {d['label']} {d['score']:.2f}: best IoU {best:.2f} -> {verdict}")

        # Try it: change iou_threshold to 0.9 and see duplicates survive. Then try 0.1.
      PYTHON
    },
    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Image Segmentation</h1>
        </div>
        <p class="lc-lead">A box is a rough outline. Sometimes you need the exact shape of an object. <strong>Segmentation</strong> gives a label to every single pixel. The result is a <strong>mask</strong>: an image of the same size where each number is a class. In this lesson you will learn the two main kinds of segmentation. You will also learn how to score a mask, and what promptable segmentation models do.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Three panels. A photo with two cats on grass. A semantic mask where both cats have the same colour. An instance mask where cat 1 and cat 2 have different colours.">
            <defs><marker id="cv18a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="125" y="26" font-weight="700">Photo</text>
              <rect x="20" y="40" width="210" height="160" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="20" y="150" width="210" height="50" fill="#10b981" fill-opacity="0.25"/>
              <ellipse cx="85" cy="130" rx="38" ry="30" fill="#9b99b8" fill-opacity="0.55" stroke="#e2e0f0"/>
              <ellipse cx="170" cy="135" rx="34" ry="26" fill="#9b99b8" fill-opacity="0.55" stroke="#e2e0f0"/>
              <text x="85" y="134" font-size="11">cat</text><text x="170" y="139" font-size="11">cat</text>
              <line x1="236" y1="120" x2="262" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv18a)"/>
              <text x="380" y="26" font-weight="700" fill="#f9a8d4">Semantic mask</text>
              <rect x="275" y="40" width="210" height="160" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <ellipse cx="340" cy="130" rx="38" ry="30" fill="#ec4899"/>
              <ellipse cx="425" cy="135" rx="34" ry="26" fill="#ec4899"/>
              <text x="340" y="134" font-size="11">cat</text><text x="425" y="139" font-size="11">cat</text>
              <text x="380" y="222" fill="#9b99b8" font-size="11">every cat pixel = class "cat"</text>
              <line x1="491" y1="120" x2="517" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv18a)"/>
              <text x="635" y="26" font-weight="700" fill="#67e8f9">Instance mask</text>
              <rect x="530" y="40" width="210" height="160" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <ellipse cx="595" cy="130" rx="38" ry="30" fill="#ec4899"/>
              <ellipse cx="680" cy="135" rx="34" ry="26" fill="#22d3ee" fill-opacity="0.8"/>
              <text x="595" y="134" font-size="11">cat 1</text><text x="680" y="139" font-size="11" fill="#1f1f44">cat 2</text>
              <text x="635" y="222" fill="#9b99b8" font-size="11">each cat gets its own id</text>
            </g>
          </svg>
          <figcaption>Semantic segmentation answers "which class is this pixel?". Instance segmentation also answers "which object?".</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Semantic, instance and panoptic</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>What each pixel gets</th><th>Two cats become</th></tr></thead>
            <tbody>
              <tr><td><strong>Semantic</strong></td><td>A class, such as road, sky, cat</td><td>One "cat" area</td></tr>
              <tr><td><strong>Instance</strong></td><td>A class and an object id, but only for objects you can count</td><td>"cat 1" and "cat 2"</td></tr>
              <tr><td><strong>Panoptic</strong></td><td>Both: classes for everything, ids for countable objects</td><td>"cat 1", "cat 2", plus grass and sky</td></tr>
            </tbody>
          </table>
          <p>A mask is just a grid of numbers, like a grayscale image. For example, 0 means background, 1 means cat and 2 means dog:</p>
          <pre><code>0 0 0 0 0 0
        0 1 1 0 2 2
        0 1 1 0 2 2
        0 0 0 0 0 0</code></pre>
          <p>Uses include medical scans (the exact outline of a tumour), self-driving cars (which pixels are road) and photo apps (cutting out a person from the background).</p>
        </div>
        <div class="lc-card">
          <h3>Scoring a mask</h3>
          <ul class="lc-list">
            <li><strong>Pixel accuracy</strong>: the share of pixels with the correct class. It is easy to read, but it can fool you. If 90% of the image is background, a model that says "background" everywhere gets 90%.</li>
            <li><strong>IoU for one class</strong>: the same idea as for boxes, but with pixels. Count pixels where both masks say "cat" (overlap). Divide by pixels where either mask says "cat" (union).</li>
            <li><strong>Mean IoU (mIoU)</strong>: the average IoU over all classes. It is the usual score for semantic segmentation, because every class counts the same, even a class with few pixels.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Real models and promptable segmentation</h3>
          <p>On your own computer, torchvision has a pre-trained semantic segmentation model:</p>
          <pre><code>import torch
        from PIL import Image
        from torchvision.models.segmentation import deeplabv3_resnet50, DeepLabV3_ResNet50_Weights

        weights = DeepLabV3_ResNet50_Weights.DEFAULT
        model = deeplabv3_resnet50(weights=weights).eval()
        batch = weights.transforms()(Image.open("street.jpg").convert("RGB")).unsqueeze(0)
        with torch.no_grad():
            scores = model(batch)["out"]     # shape [1, classes, H, W]: one score map per class
        mask = scores.argmax(dim=1)[0]       # shape [H, W]: one class id per pixel
        print(mask.unique())</code></pre>
          <p><strong>Promptable segmentation models</strong> work in a different way. You give an image and a prompt, such as a click on an object or a box around it. The model returns a mask for that object, even for object types it was never trained on by name. The Segment Anything Model (SAM) from Meta, released in 2023, is a well-known example. These models make labelling data much faster.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which vision task is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Pick the task that gives the output each app needs.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="cls" data-label="Classification"></div>
              <div data-sorter-target="bucket" data-bucket="det" data-label="Detection"></div>
              <div data-sorter-target="bucket" data-bucket="sem" data-label="Semantic segmentation"></div>
              <div data-sorter-target="bucket" data-bucket="inst" data-label="Instance segmentation"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="cls" data-why="One label for the whole photo is enough.">Say if a leaf photo shows a healthy or a sick plant</li>
              <li data-bucket="det" data-why="Boxes are enough to count and locate each car.">Count the cars at a traffic light and show where they are</li>
              <li data-bucket="sem" data-why="You need the class of every pixel, but not separate objects.">Mark which pixels of a road photo are road, footpath or sky</li>
              <li data-bucket="inst" data-why="Each cell needs its own exact outline and id.">Outline each separate cell in a microscope image</li>
              <li data-bucket="sem" data-why="Every pixel is person or background. One class is enough.">Blur the background behind a person in a video call</li>
              <li data-bucket="inst" data-why="The robot needs the exact shape of each single apple.">Help a robot arm pick apples one by one</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. It prints a true mask and a predicted mask as characters: <code>.</code> for background, <code>c</code> for cat and <code>d</code> for dog.</li>
            <li>It computes pixel accuracy, IoU for each class and mean IoU. Then it scores a lazy "all background" mask. See how pixel accuracy looks good, but mean IoU does not.</li>
            <li>It also counts the separate cat shapes. This is the step from semantic to instance.</li>
            <li>Change some letters in <code>pred</code> and run it again. Try to get the cat IoU above 0.9.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Segmentation is classification done for every pixel. Score it with IoU for each class, not only with pixel accuracy, because background pixels can hide bad results on small objects.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Segmentation masks: one class label for every pixel.
        # 0 = background, 1 = cat, 2 = dog
        CLASSES = {0: "background", 1: "cat", 2: "dog"}
        SYMBOL = {0: ".", 1: "c", 2: "d"}

        truth_rows = [
            "00000000",
            "01100000",
            "01110022",
            "00110022",
            "00000222",
            "01100000",
            "01100000",
            "00000000",
        ]
        pred_rows = [
            "00000000",
            "01100000",
            "01100022",
            "00110222",
            "00000222",
            "01110000",
            "00100000",
            "00000000",
        ]
        truth = [[int(ch) for ch in row] for row in truth_rows]
        pred = [[int(ch) for ch in row] for row in pred_rows]

        def show(title, mask):
            print(title)
            for row in mask:
                print("  " + " ".join(SYMBOL[v] for v in row))

        def pixel_accuracy(t, p):
            pairs = [(a, b) for rt, rp in zip(t, p) for a, b in zip(rt, rp)]
            return sum(a == b for a, b in pairs) / len(pairs)

        def class_iou(t, p, cls):
            both = either = 0
            for rt, rp in zip(t, p):
                for a, b in zip(rt, rp):
                    both += (a == cls and b == cls)
                    either += (a == cls or b == cls)
            return both / either if either else 1.0

        def report(name, t, p):
            ious = {CLASSES[c]: class_iou(t, p, c) for c in CLASSES}
            print(f"{name}: pixel accuracy {pixel_accuracy(t, p):.0%}")
            for cls_name, value in ious.items():
                print(f"    IoU {cls_name:<10} {value:.2f}")
            print(f"    mean IoU      {sum(ious.values()) / len(ious):.2f}")

        show("True mask", truth)
        show("Predicted mask", pred)
        print()
        report("Model", truth, pred)
        lazy = [[0] * 8 for _ in range(8)]
        report("Lazy 'all background'", truth, lazy)

        # From semantic to instance: find separate shapes of one class (flood fill).
        def instances(mask, cls):
            seen, shapes = set(), []
            for r in range(len(mask)):
                for c in range(len(mask[0])):
                    if mask[r][c] != cls or (r, c) in seen:
                        continue
                    stack, shape = [(r, c)], []
                    seen.add((r, c))
                    while stack:
                        y, x = stack.pop()
                        shape.append((y, x))
                        for ny, nx in ((y + 1, x), (y - 1, x), (y, x + 1), (y, x - 1)):
                            if 0 <= ny < len(mask) and 0 <= nx < len(mask[0]) and mask[ny][nx] == cls and (ny, nx) not in seen:
                                seen.add((ny, nx))
                                stack.append((ny, nx))
                    shapes.append(shape)
            return shapes

        cats = instances(truth, 1)
        print(f"\nThe semantic mask has one 'cat' class, but {len(cats)} separate cats:")
        for i, shape in enumerate(cats, 1):
            print(f"  cat {i}: {len(shape)} pixels, top-left pixel {min(shape)}")

        # Try it: change letters in pred_rows (for example make row 6 "01100000") and watch the IoU.
      PYTHON
    },
    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Images and Text Together</h1>
        </div>
        <p class="lc-lead">A normal classifier only knows the labels it was trained on. What if you want a new label tomorrow? Models like <strong>CLIP</strong> solve this. They turn images and text into the same kind of list of numbers. So a photo of a dog and the words "a photo of a dog" end up close together. In this lesson you will learn how this works. You will also use it for zero-shot classification and image search.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="An image encoder turns photos into embeddings. A text encoder turns captions into embeddings. Both go into one shared space, where a dog photo sits next to the text a photo of a dog.">
            <defs><marker id="cv19a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="120" height="70" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="70" y="60">dog photo</text><text x="70" y="80">car photo</text>
              <rect x="10" y="160" width="120" height="70" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="70" y="190">"a photo of</text><text x="70" y="208">a dog"</text>
              <line x1="134" y1="65" x2="170" y2="65" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv19a)"/>
              <line x1="134" y1="195" x2="170" y2="195" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv19a)"/>
              <rect x="174" y="40" width="130" height="50" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="239" y="62" font-weight="700">Image encoder</text><text x="239" y="79" font-size="10.5" fill="#9b99b8">CNN or ViT</text>
              <rect x="174" y="170" width="130" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="239" y="192" font-weight="700">Text encoder</text><text x="239" y="209" font-size="10.5" fill="#9b99b8">transformer</text>
              <line x1="308" y1="65" x2="388" y2="110" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv19a)"/>
              <line x1="308" y1="195" x2="388" y2="160" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv19a)"/>
              <rect x="392" y="20" width="358" height="230" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="571" y="42" font-weight="700" fill="#f9a8d4">Shared embedding space</text>
              <circle cx="470" cy="100" r="7" fill="#3b82f6"/><text x="470" y="84" font-size="11">dog photo</text>
              <rect x="490" y="112" width="12" height="12" fill="#f59e0b"/><text x="520" y="140" font-size="11">"a photo of a dog"</text>
              <circle cx="670" cy="190" r="7" fill="#3b82f6"/><text x="670" y="174" font-size="11">car photo</text>
              <rect x="645" y="205" width="12" height="12" fill="#f59e0b"/><text x="651" y="236" font-size="11">"a red car"</text>
              <line x1="520" y1="150" x2="640" y2="195" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="560" y="190" font-size="11" fill="#9b99b8">far apart</text>
            </g>
          </svg>
          <figcaption>Matching images and texts land close together. Closeness is measured with cosine similarity.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The CLIP idea</h3>
          <p>CLIP was published by OpenAI in 2021. The paper is "Learning Transferable Visual Models From Natural Language Supervision". It has two parts:</p>
          <ul class="lc-list">
            <li>An <strong>image encoder</strong> turns an image into an <strong>embedding</strong> (a list of numbers that describes the meaning).</li>
            <li>A <strong>text encoder</strong> turns a sentence into an embedding of the same length.</li>
          </ul>
          <p>It was trained on a very large number of images with their captions from the internet. The training goal is simple. For each image, its own caption must be the closest text in the batch. All the wrong captions must be further away. This is called <strong>contrastive learning</strong> (learning by comparing matching and non-matching pairs).</p>
          <p>Closeness is measured with <strong>cosine similarity</strong>. It compares the direction of two lists of numbers. 1 means the same direction, 0 means unrelated.</p>
        </div>
        <div class="lc-card">
          <h3>Zero-shot classification and image search</h3>
          <p><strong>Zero-shot</strong> means the model was never trained on your labels. You write each label as a sentence, embed the sentences, and pick the closest one:</p>
          <pre><code>from PIL import Image
        from transformers import CLIPModel, CLIPProcessor

        model = CLIPModel.from_pretrained("openai/clip-vit-base-patch32")
        processor = CLIPProcessor.from_pretrained("openai/clip-vit-base-patch32")

        labels = ["a photo of a cat", "a photo of a dog", "a photo of a car"]
        inputs = processor(text=labels, images=Image.open("pet.jpg"), return_tensors="pt", padding=True)
        probs = model(**inputs).logits_per_image.softmax(dim=1)
        print(dict(zip(labels, probs[0].tolist())))</code></pre>
          <p><strong>Image search</strong> uses the same trick in the other direction. Embed all your photos once and store the embeddings. When a user types "sunset over the sea", embed the text. Then return the photos with the highest cosine similarity.</p>
          <table class="lc-table">
            <thead><tr><th>Good at</th><th>Weak at</th></tr></thead>
            <tbody>
              <tr><td>New labels without training</td><td>Counting objects</td></tr>
              <tr><td>Searching photos with words</td><td>Small details and very specialised images (for example, X-rays)</td></tr>
              <tr><td>Giving image features to other models</td><td>Text written inside the image can fool it</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: zero-shot classification in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of zero-shot classification with a CLIP-style model in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write each label as a short sentence, such as "a photo of a cat"</li>
              <li data-order="2">Turn every sentence into an embedding with the text encoder</li>
              <li data-order="3">Turn the new image into an embedding with the image encoder</li>
              <li data-order="4">Compute the cosine similarity between the image and each sentence</li>
              <li data-order="5">Turn the similarities into probabilities with softmax</li>
              <li data-order="6">Pick the label with the highest probability</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. It uses made-up embeddings with only 4 numbers, so you can read them. Real CLIP embeddings have hundreds of numbers.</li>
            <li>It classifies four photos with zero-shot labels. Then it searches the photos with a text query.</li>
            <li>Add a new label, <code>"a photo of a boat"</code>, with its own embedding. No training is needed. Run it again and see the boat photo change label.</li>
            <li>Change the <code>query</code> embedding and see the search ranking change.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> When images and text share one embedding space, a label is just a sentence. You can add new classes by writing new sentences, and you can search images with words.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # CLIP idea: images and texts in the same embedding space.
        # The embeddings are made up and have 4 numbers so you can read them.
        # Meaning of the 4 numbers: [cat, dog, vehicle, water/outdoors]
        import math

        images = {
            "photo_1 (cat on a sofa)": [0.90, 0.20, 0.00, 0.10],
            "photo_2 (dog on a beach)": [0.20, 0.85, 0.00, 0.60],
            "photo_3 (red car)": [0.00, 0.10, 0.95, 0.30],
            "photo_4 (boat on a lake)": [0.00, 0.00, 0.60, 0.90],
        }

        labels = {
            "a photo of a cat": [0.95, 0.15, 0.00, 0.05],
            "a photo of a dog": [0.15, 0.95, 0.00, 0.10],
            "a photo of a car": [0.00, 0.00, 1.00, 0.10],
        }

        def cosine(a, b):
            dot = sum(x * y for x, y in zip(a, b))
            return dot / (math.sqrt(sum(x * x for x in a)) * math.sqrt(sum(y * y for y in b)))

        def softmax(values, temperature=10):
            # CLIP multiplies similarities by a learned number before softmax. We use 10.
            exps = [math.exp(v * temperature) for v in values]
            total = sum(exps)
            return [e / total for e in exps]

        print("Zero-shot classification")
        for name, emb in images.items():
            sims = [cosine(emb, lab) for lab in labels.values()]
            probs = softmax(sims)
            best = max(range(len(probs)), key=lambda i: probs[i])
            detail = ", ".join(f"{p:.0%}" for p in probs)
            print(f"  {name:<26} -> {list(labels)[best]:<18} ({detail})")

        print("\nImage search")
        query_text = "a dog playing at the beach"
        query = [0.10, 0.80, 0.00, 0.80]          # made-up text embedding for the query
        ranked = sorted(images, key=lambda n: cosine(images[n], query), reverse=True)
        print(f"  query: {query_text!r}")
        for rank, name in enumerate(ranked, 1):
            print(f"  {rank}. {name:<26} similarity {cosine(images[name], query):.2f}")

        # Try it: add "a photo of a boat": [0.00, 0.00, 0.55, 0.95] to labels and run again.
      PYTHON
    },
    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Vision-Language Models</h1>
        </div>
        <p class="lc-lead">A <strong>vision-language model</strong> (VLM) reads images and text together and answers in text. You can send a photo of a bill and ask "What is the total?". You can send a chart and ask "Which month had the most sales?". Claude is one example of such a model. In this lesson you will learn what VLMs do well and where they make mistakes. You will also learn how to send an image with the Anthropic API.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="A user message holds an image block and then a text block. It goes to Claude, where the image becomes visual tokens that the language model reads with the text. The reply is a text answer.">
            <defs><marker id="cv20a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="220" height="200" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="120" y="44" font-weight="700">User message</text>
              <rect x="30" y="60" width="180" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="120" y="84">image block</text><text x="120" y="103" font-size="10.5" fill="#9b99b8">base64 PNG of a chart</text>
              <rect x="30" y="135" width="180" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="120" y="159">text block</text><text x="120" y="178" font-size="10.5" fill="#9b99b8">"Which month is highest?"</text>
              <line x1="234" y1="120" x2="270" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv20a)"/>
              <rect x="274" y="20" width="260" height="200" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="404" y="44" font-weight="700" fill="#f9a8d4">Claude</text>
              <rect x="294" y="62" width="100" height="50" rx="8" fill="#27274e"/>
              <text x="344" y="84">image to</text><text x="344" y="100">visual tokens</text>
              <rect x="414" y="62" width="100" height="50" rx="8" fill="#27274e"/>
              <text x="464" y="84">text to</text><text x="464" y="100">text tokens</text>
              <line x1="344" y1="114" x2="390" y2="146" stroke="#9b99b8" stroke-width="1.2" marker-end="url(#cv20a)"/>
              <line x1="464" y1="114" x2="418" y2="146" stroke="#9b99b8" stroke-width="1.2" marker-end="url(#cv20a)"/>
              <rect x="314" y="150" width="180" height="46" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="404" y="178">language model</text>
              <line x1="538" y1="120" x2="574" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv20a)"/>
              <rect x="578" y="60" width="172" height="120" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="664" y="86" font-weight="700" fill="#6ee7b7">Text answer</text>
              <text x="664" y="112" font-size="11">"March is highest,</text>
              <text x="664" y="130" font-size="11">at about 42 units."</text>
              <text x="664" y="160" font-size="10.5" fill="#9b99b8">stop_reason: end_turn</text>
            </g>
          </svg>
          <figcaption>The image is one content block in the message. The model reads it together with your question.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How a VLM works, in simple words</h3>
          <p>A VLM joins two ideas from this course. A vision encoder (often a Vision Transformer) cuts the image into patches and turns them into tokens. A language model then reads these image tokens together with the text tokens. So it can answer questions about the image in normal language.</p>
          <p>Unlike a detector or a classifier, you do not train it for one task. You change the task by changing the question.</p>
          <table class="lc-table">
            <thead><tr><th>Good at</th><th>Be careful with</th></tr></thead>
            <tbody>
              <tr><td>Reading text in photos and scanned documents</td><td>Exact counts of many small objects (counts are approximate)</td></tr>
              <tr><td>Reading charts, tables and diagrams</td><td>Exact positions and coordinates (these are approximate)</td></tr>
              <tr><td>Understanding screenshots of apps and websites</td><td>Very small, blurry, low-quality or rotated images</td></tr>
              <tr><td>Describing and comparing images</td><td>Medical diagnosis from scans: it is not a doctor</td></tr>
              <tr><td>Pulling fields out of forms into JSON</td><td>Deciding if an image is AI-generated</td></tr>
            </tbody>
          </table>
          <p>Claude also does not name people from their faces. It understands images, but it does not create or edit them.</p>
        </div>
        <div class="lc-card">
          <h3>Sending an image with the Anthropic API</h3>
          <p>On your own computer, install the SDK with <code>pip install anthropic</code> and set your API key. An image goes into the message as an <code>image</code> content block. Put the image first and your question after it. The docs say this order usually works best.</p>
          <pre><code>import base64
        import anthropic

        with open("sales_chart.png", "rb") as f:
            image_data = base64.standard_b64encode(f.read()).decode("utf-8")

        client = anthropic.Anthropic()          # reads ANTHROPIC_API_KEY
        message = client.messages.create(
            model="claude-opus-5",
            max_tokens=1024,
            messages=[
                {
                    "role": "user",
                    "content": [
                        {
                            "type": "image",
                            "source": {
                                "type": "base64",
                                "media_type": "image/png",
                                "data": image_data,
                            },
                        },
                        {"type": "text", "text": "Which month had the highest sales? Answer in one sentence."},
                    ],
                }
            ],
        )
        print(message.content[0].text)
        print(message.stop_reason)              # "end_turn" when the answer is complete</code></pre>
          <ul class="lc-list">
            <li>Supported types are JPEG, PNG, GIF and WebP. The <code>media_type</code> must match the real file type.</li>
            <li>The source can also be a <code>"url"</code> or a file you uploaded once with the Files API.</li>
            <li>You can send several images in one message. Put a short label such as <code>"Image 1:"</code> before each one.</li>
            <li>Large images are made smaller before the model reads them, and images cost tokens. Check the official docs for the current size limits and costs.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Prompting tips for images</h3>
          <ul class="lc-list">
            <li>Send a clear image. Make sure any important text is large enough to read.</li>
            <li>Ask for a fixed format, such as JSON with named fields. Then your code can check the answer.</li>
            <li>Tell the model what to do when something is not visible: "If the total is not shown, write null."</li>
            <li>For important uses (money, health, safety), have a person or a second check look at the result.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a good fit for a VLM?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Is a vision-language model a good tool here, or should you be careful?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good fit"></div>
              <div data-sorter-target="bucket" data-bucket="care" data-label="Be careful / avoid"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="Reading printed text and pulling out fields is a strength.">Pull the shop name, date and total from a photo of a bill</li>
              <li data-bucket="good" data-why="Reading charts and explaining trends is a strength.">Explain what a sales bar chart shows</li>
              <li data-bucket="care" data-why="Counts of many small objects are approximate. Use a detector and count boxes.">Count the exact number of rice grains in a photo</li>
              <li data-bucket="care" data-why="Claude does not identify people from their faces.">Find out the name of a stranger in a photo</li>
              <li data-bucket="good" data-why="Understanding screenshots is a strength.">Say which button on an app screenshot opens the settings</li>
              <li data-bucket="care" data-why="It is not made to read CT or MRI scans. A doctor must decide.">Give a final diagnosis from an MRI scan</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. It builds a real tiny PNG image (6×4 pixels) using only the standard library. Then it encodes it as base64.</li>
            <li>It checks the file type from the first bytes and builds the exact request body you would send.</li>
            <li>A fake client stands in for <code>anthropic.Anthropic()</code>, so no API key is needed. It returns a reply in the same shape as the real API.</li>
            <li>Change <code>media_type</code> to <code>"image/jpeg"</code>. The check now stops the request, because the bytes are really PNG.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> To a VLM, an image is one more content block in the message. It is great at reading documents, charts and screenshots. Still, check its answers when counts, positions or high stakes matter.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Build a real image request for a vision-language model, without a network.
        # On a real machine you would use the real library: import anthropic
        import base64
        import json
        import struct
        import zlib

        # 1) Make a tiny grayscale PNG (6 x 4 pixels) with the standard library.
        pixels = [
            [0, 0, 255, 255, 0, 0],
            [0, 128, 255, 255, 128, 0],
            [0, 128, 255, 255, 128, 0],
            [0, 0, 255, 255, 0, 0],
        ]

        def make_png(rows):
            height, width = len(rows), len(rows[0])
            def chunk(kind, data):
                body = kind + data
                return struct.pack(">I", len(data)) + body + struct.pack(">I", zlib.crc32(body))
            header = struct.pack(">IIBBBBB", width, height, 8, 0, 0, 0, 0)   # 8-bit grayscale
            raw = b"".join(b"\x00" + bytes(row) for row in rows)            # filter byte + pixels
            return b"\x89PNG\r\n\x1a\n" + chunk(b"IHDR", header) + chunk(b"IDAT", zlib.compress(raw)) + chunk(b"IEND", b"")

        png_bytes = make_png(pixels)
        image_data = base64.standard_b64encode(png_bytes).decode("utf-8")
        print(f"PNG size: {len(png_bytes)} bytes -> base64 text of {len(image_data)} characters")

        # 2) Check that media_type matches the real bytes.
        SIGNATURES = {b"\x89PNG": "image/png", b"\xff\xd8\xff": "image/jpeg", b"GIF8": "image/gif", b"RIFF": "image/webp"}

        def detect_type(data):
            for magic, kind in SIGNATURES.items():
                if data.startswith(magic):
                    return kind
            return "unknown"

        media_type = "image/png"
        real_type = detect_type(png_bytes)

        # 3) A fake client with the same method names as the real SDK.
        class FakeMessages:
            def create(self, model, max_tokens, messages):
                blocks = messages[0]["content"]
                kinds = [b["type"] for b in blocks]
                answer = '{"shape": "vertical bright stripe", "width_px": 6, "height_px": 4}'
                reply = {"role": "assistant", "content": [{"type": "text", "text": answer}], "stop_reason": "end_turn"}
                print(f"  (fake API received blocks {kinds} for model {model})")
                return reply

        class FakeAnthropic:
            messages = FakeMessages()

        request = {
            "model": "claude-opus-5",
            "max_tokens": 300,
            "messages": [{
                "role": "user",
                "content": [
                    {"type": "image", "source": {"type": "base64", "media_type": media_type, "data": image_data}},
                    {"type": "text", "text": "Describe the shape in this image. Reply only with JSON."},
                ],
            }],
        }

        shown = json.loads(json.dumps(request))
        shown["messages"][0]["content"][0]["source"]["data"] = image_data[:24] + "..."
        print("\nRequest body (image data shortened):")
        print(json.dumps(shown, indent=2))

        if media_type != real_type:
            print(f"\nStopped: media_type says {media_type}, but the bytes are {real_type}.")
        else:
            client = FakeAnthropic()   # real code: client = anthropic.Anthropic()
            print("\nSending...")
            reply = client.messages.create(**request)
            print("stop_reason:", reply["stop_reason"])
            result = json.loads(reply["content"][0]["text"])
            print("Parsed answer:", result)

        # Try it: set media_type = "image/jpeg" and run again. Then change the pixels.
      PYTHON
    },
    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Responsible Computer Vision</h1>
        </div>
        <p class="lc-lead">Computer vision systems look at people, homes, streets and medical scans. When they make mistakes, real people are affected. A model can work well on average but badly for one group of people. A camera system can also collect more personal data than anyone needs. In this lesson you will learn where bias comes from and why face recognition needs extra care. You will also learn how to protect privacy and how to check a model group by group.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 230" role="img" aria-label="Six steps: collect data, label, train, test per group, deploy, monitor. Under each step is a question to ask, such as who is missing from the data, and does the score hold for every group.">
            <defs><marker id="cv21a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="108" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="64" y="60">Collect data</text>
              <rect x="138" y="30" width="108" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="192" y="60">Label</text>
              <rect x="266" y="30" width="108" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="320" y="60">Train</text>
              <rect x="394" y="30" width="108" height="50" rx="8" fill="#27274e" stroke="#ec4899" stroke-width="2"/><text x="448" y="60">Test per group</text>
              <rect x="522" y="30" width="108" height="50" rx="8" fill="#27274e" stroke="#10b981"/><text x="576" y="60">Deploy</text>
              <rect x="650" y="30" width="100" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="700" y="60">Monitor</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv21a)">
                <line x1="119" y1="55" x2="135" y2="55"/><line x1="247" y1="55" x2="263" y2="55"/><line x1="375" y1="55" x2="391" y2="55"/>
                <line x1="503" y1="55" x2="519" y2="55"/><line x1="631" y1="55" x2="647" y2="55"/>
              </g>
              <path d="M700,84 Q700,130 400,130 Q64,130 64,86" fill="none" stroke="#4b4a78" stroke-dasharray="5 4" marker-end="url(#cv21a)"/>
              <text x="400" y="124" font-size="11" fill="#9b99b8">problems found later go back to the data</text>
              <g font-size="10.5" fill="#9b99b8">
                <text x="64" y="160">Who is missing?</text><text x="64" y="176">Did they agree?</text>
                <text x="192" y="160">Are labels fair</text><text x="192" y="176">and consistent?</text>
                <text x="320" y="160">Does it learn</text><text x="320" y="176">shortcuts?</text>
                <text x="448" y="160" fill="#f9a8d4">Does the score hold</text><text x="448" y="176" fill="#f9a8d4">for every group?</text>
                <text x="576" y="160">Is the use lawful</text><text x="576" y="176">and needed?</text>
                <text x="700" y="160">Do errors grow</text><text x="700" y="176">over time?</text>
              </g>
              <text x="380" y="214" fill="#e2e0f0" font-size="11.5">Ask a question at every step, not only at the end.</text>
            </g>
          </svg>
          <figcaption>Responsible vision is part of every step of the project, from data collection to monitoring.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where bias comes from</h3>
          <p><strong>Bias</strong> here means that a model works worse for some groups of people or some situations. It usually starts in the data.</p>
          <ul class="lc-list">
            <li><strong>Missing groups.</strong> The training photos show mostly light skin, young adults, or people from a few countries.</li>
            <li><strong>Missing conditions.</strong> All photos are taken in good light, with expensive phones, in city streets.</li>
            <li><strong>Label problems.</strong> Labellers disagree, or they bring their own opinions into labels such as "suspicious".</li>
            <li><strong>Shortcuts.</strong> The model learns the background instead of the object. For example, it says "cow" because it sees grass.</li>
          </ul>
          <p>A well-known study, "Gender Shades" (2018), tested commercial face analysis systems. It found much higher error rates for darker-skinned women than for lighter-skinned men.</p>
        </div>
        <div class="lc-card">
          <h3>Face recognition, privacy and consent</h3>
          <ul class="lc-list">
            <li><strong>Wrong matches have real costs.</strong> There have been real cases where a wrong face match led police to arrest the wrong person.</li>
            <li><strong>Surveillance.</strong> Face recognition in public places can track people who never agreed to it.</li>
            <li><strong>Consent.</strong> People should know when their images are collected and what they are used for. Photos found online are not automatically free to use for training.</li>
            <li><strong>Laws.</strong> Many places now have rules. The EU AI Act bans or limits some uses of face recognition. India's Digital Personal Data Protection Act, 2023, sets rules for consent when handling personal data.</li>
          </ul>
          <p>Good privacy habits:</p>
          <table class="lc-table">
            <thead><tr><th>Habit</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Collect less</td><td>Count people at a gate without storing their faces</td></tr>
              <tr><td>Blur what you do not need</td><td>Blur faces and number plates in street photos</td></tr>
              <tr><td>Process on the device</td><td>Face unlock runs on the phone. The face data is not sent to a server.</td></tr>
              <tr><td>Delete on time</td><td>Keep camera clips for a fixed number of days, then delete them</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Checking performance across groups</h3>
          <p>One overall accuracy number can hide big problems. Always split your test results by group, for example by skin tone, age range, gender, region, lighting or camera type.</p>
          <ul class="lc-list">
            <li>Report accuracy and error rates for <em>each</em> group, with the number of test images per group.</li>
            <li>For face matching, look at <strong>false matches</strong> (two different people called the same) and <strong>false non-matches</strong> (the same person not recognised).</li>
            <li>Set a rule before testing, such as "no group may be more than 5 points below the best group".</li>
            <li>Write down what the model is for, and what it should not be used for. This document is often called a <strong>model card</strong>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: audit a face-matching model</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Request">A college wants to use face matching for exam hall entry. You are asked to check the model first.</li>
              <li data-kind="result" data-label="Overall score">The vendor reports 97% accuracy on its own test set. This looks good.</li>
              <li data-kind="thought" data-label="Split by group">You split your own test results by skin tone and by lighting. You also note how many images each group has.</li>
              <li data-kind="warn" data-label="Gap found">Darker skin in low light: 83% accuracy, from only 60 test images. The best group has 98.5%.</li>
              <li data-kind="check" data-label="Fix the data">You collect more consented photos of the weak group and in low light. Then you retrain and test again.</li>
              <li data-kind="check" data-label="Safe design">A failed match never blocks a student. It sends them to a staff member who checks their ID card.</li>
              <li data-kind="answer" data-label="Decision">Use it only with the human fallback, clear consent, and a monthly check of results for each group.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. It shows how the test set is split between groups. Then it prints overall accuracy and accuracy for each group.</li>
            <li>It flags any group that is more than 5 points below the best group. It also prints the false match rate for each group.</li>
            <li>At the end it pixelates a "face" area in a tiny image. This is a simple privacy step.</li>
            <li>Change the numbers for <code>"darker, low light"</code> to be as good as the other groups. See the flag go away. Then change <code>MAX_GAP</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good average is not enough. Check who is in your data and test every group on its own. Collect only the images you need. Keep a person in the loop when a mistake can hurt someone.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Responsible computer vision: check a model group by group.
        # Made-up test results for a face-matching model.
        # For each group: test images, correct results, false matches (wrong person accepted).
        results = {
            "lighter, good light": {"n": 400, "correct": 394, "false_match": 2},
            "lighter, low light": {"n": 150, "correct": 144, "false_match": 2},
            "darker, good light": {"n": 120, "correct": 114, "false_match": 3},
            "darker, low light": {"n": 60, "correct": 50, "false_match": 5},
        }
        MAX_GAP = 5.0   # percentage points allowed below the best group

        total = sum(r["n"] for r in results.values())
        print("Who is in the test set?")
        for group, r in results.items():
            share = r["n"] / total
            print(f"  {group:<20} {r['n']:>4} images  {'#' * round(share * 40)} {share:.0%}")

        overall = sum(r["correct"] for r in results.values()) / total
        print(f"\nOverall accuracy: {overall:.1%}  (looks great...)")

        acc = {g: r["correct"] / r["n"] for g, r in results.items()}
        best = max(acc.values())
        print("\nPer-group results")
        print(f"  {'group':<20} {'accuracy':>9} {'false match':>12}  status")
        for group, r in results.items():
            gap = (best - acc[group]) * 100
            status = f"FLAG: {gap:.1f} points below best" if gap > MAX_GAP else "ok"
            print(f"  {group:<20} {acc[group]:>9.1%} {r['false_match'] / r['n']:>12.1%}  {status}")

        # A simple privacy step: pixelate the face area (average each 2 x 2 block).
        image = [
            [10, 10, 10, 10, 10, 10, 10, 10],
            [10, 200, 180, 200, 190, 10, 10, 10],
            [10, 90, 250, 60, 240, 10, 10, 10],
            [10, 200, 120, 130, 200, 10, 10, 10],
            [10, 180, 40, 40, 170, 10, 10, 10],
            [10, 10, 10, 10, 10, 10, 10, 10],
        ]

        def pixelate(img, top, left, height, width, block=2):
            out = [row[:] for row in img]
            for r in range(top, top + height, block):
                for c in range(left, left + width, block):
                    cells = [(y, x) for y in range(r, r + block) for x in range(c, c + block)]
                    avg = round(sum(img[y][x] for y, x in cells) / len(cells))
                    for y, x in cells:
                        out[y][x] = avg
            return out

        def show(title, img):
            print(title)
            for row in img:
                print("  " + " ".join(f"{v:3d}" for v in row))

        print()
        show("Original (face in rows 1-4, columns 1-4)", image)
        show("Pixelated face", pixelate(image, 1, 1, 4, 4))

        # Try it: set "darker, low light" to {"n": 60, "correct": 59, "false_match": 1}, then change MAX_GAP.
      PYTHON
    },
    22 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cv">Computer Vision</div>
          <h1 class="lc-title">Capstone: Build a Tiny Digit Recogniser</h1>
        </div>
        <p class="lc-lead">In this capstone you will build a complete computer vision project from start to end. You will make small 5×5 images of the digits 0 to 9 and add noise to them. Then you will clean them, train a simple classifier, and test it on images it has never seen. Finally you will read a confusion matrix to see which digits get mixed up. Every real vision project follows these same steps, just with bigger data and bigger models.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 220" role="img" aria-label="Pipeline: make noisy images, preprocess with a threshold, split into train and test, train a nearest centroid classifier, test and measure accuracy, read the confusion matrix.">
            <defs><marker id="cv22a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="108" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="64" y="54">Make images</text><text x="64" y="72" font-size="10.5" fill="#9b99b8">5×5 + noise</text>
              <rect x="138" y="30" width="108" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="192" y="54">Preprocess</text><text x="192" y="72" font-size="10.5" fill="#9b99b8">threshold</text>
              <rect x="266" y="30" width="108" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="320" y="54">Split</text><text x="320" y="72" font-size="10.5" fill="#9b99b8">train / test</text>
              <rect x="394" y="30" width="108" height="56" rx="8" fill="#27274e" stroke="#ec4899"/><text x="448" y="54">Train</text><text x="448" y="72" font-size="10.5" fill="#9b99b8">class averages</text>
              <rect x="522" y="30" width="108" height="56" rx="8" fill="#27274e" stroke="#10b981"/><text x="576" y="54">Test</text><text x="576" y="72" font-size="10.5" fill="#9b99b8">accuracy</text>
              <rect x="650" y="30" width="100" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="700" y="54">Confusion</text><text x="700" y="72" font-size="10.5" fill="#9b99b8">matrix</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cv22a)">
                <line x1="119" y1="58" x2="135" y2="58"/><line x1="247" y1="58" x2="263" y2="58"/><line x1="375" y1="58" x2="391" y2="58"/>
                <line x1="503" y1="58" x2="519" y2="58"/><line x1="631" y1="58" x2="647" y2="58"/>
              </g>
              <text x="64" y="112" font-size="11" fill="#9b99b8">clean "7"</text>
              <g fill="#e2e0f0">
                <rect x="34" y="120" width="60" height="12"/>
                <rect x="82" y="132" width="12" height="12"/>
                <rect x="70" y="144" width="12" height="12"/>
                <rect x="58" y="156" width="12" height="12"/>
                <rect x="58" y="168" width="12" height="12"/>
              </g>
              <rect x="34" y="120" width="60" height="60" fill="none" stroke="#4b4a78"/>
              <text x="192" y="112" font-size="11" fill="#9b99b8">noisy "7"</text>
              <g fill="#e2e0f0">
                <rect x="162" y="120" width="48" height="12"/>
                <rect x="210" y="132" width="12" height="12"/>
                <rect x="186" y="132" width="12" height="12" fill-opacity="0.5"/>
                <rect x="198" y="144" width="12" height="12"/>
                <rect x="186" y="156" width="12" height="12"/>
                <rect x="186" y="168" width="12" height="12"/>
                <rect x="162" y="168" width="12" height="12" fill-opacity="0.5"/>
              </g>
              <rect x="162" y="120" width="60" height="60" fill="none" stroke="#4b4a78"/>
              <text x="480" y="130" font-size="11.5">Predict: find the closest class average.</text>
              <text x="480" y="152" font-size="11.5">Measure: accuracy on unseen test images.</text>
              <text x="480" y="174" font-size="11.5">Improve: look at which digits get confused.</text>
              <text x="380" y="208" font-size="11" fill="#9b99b8">The same pipeline works with real photos, just with bigger data and models.</text>
            </g>
          </svg>
          <figcaption>An end-to-end vision project: data, preprocessing, training, testing and error analysis.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The plan</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>What the program does</th><th>Idea from the course</th></tr></thead>
            <tbody>
              <tr><td>1. Data</td><td>Draws 10 clean 5×5 digits. Makes many noisy grayscale copies with a fixed random seed.</td><td>Images as grids of numbers</td></tr>
              <tr><td>2. Preprocess</td><td>Turns each pixel into 0 or 1 with a threshold of 128</td><td>Thresholding</td></tr>
              <tr><td>3. Split</td><td>Uses 20 images of each digit for training and 10 for testing</td><td>Train and test sets</td></tr>
              <tr><td>4. Train</td><td>Averages the training images of each digit. This average is called a <strong>centroid</strong>.</td><td>Learning from labelled examples</td></tr>
              <tr><td>5. Predict</td><td>Picks the digit whose centroid is closest to the new image</td><td>Nearest-centroid classifier</td></tr>
              <tr><td>6. Measure</td><td>Prints accuracy and a confusion matrix</td><td>Evaluation</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Reading a confusion matrix</h3>
          <p>A <strong>confusion matrix</strong> is a table. Each row is the true digit. Each column is the predicted digit. The number in a cell counts how many test images fell there.</p>
          <ul class="lc-list">
            <li>Numbers on the diagonal (row 3, column 3) are correct answers.</li>
            <li>Numbers off the diagonal are mistakes. A big number in row 8, column 0 means "8 is often read as 0".</li>
            <li>Mistakes usually happen between digits with similar shapes. That tells you where better features or more data would help.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Next steps with real libraries</h3>
          <p>The real version of this project uses the MNIST dataset of handwritten digits (28×28 grayscale images). On your own computer, a small CNN in PyTorch looks like this:</p>
          <pre><code>import torch
        from torch import nn
        from torchvision import datasets, transforms

        train = datasets.MNIST("data", train=True, download=True, transform=transforms.ToTensor())
        loader = torch.utils.data.DataLoader(train, batch_size=64, shuffle=True)

        model = nn.Sequential(
            nn.Conv2d(1, 16, 3, padding=1), nn.ReLU(), nn.MaxPool2d(2),    # 28×28 -&gt; 14×14
            nn.Conv2d(16, 32, 3, padding=1), nn.ReLU(), nn.MaxPool2d(2),   # 14×14 -&gt; 7×7
            nn.Flatten(), nn.Linear(32 * 7 * 7, 10),
        )
        optimizer = torch.optim.Adam(model.parameters(), lr=1e-3)
        loss_fn = nn.CrossEntropyLoss()

        for images, labels in loader:          # one epoch (one pass over the data)
            optimizer.zero_grad()
            loss = loss_fn(model(images), labels)
            loss.backward()
            optimizer.step()</code></pre>
          <ul class="lc-list">
            <li>Add data augmentation, such as small shifts and rotations.</li>
            <li>Use a validation set to choose settings. Keep the test set for the very end.</li>
            <li>Try transfer learning from a pre-trained model for your own photos.</li>
            <li>Check where the model fails, for example on thick or thin handwriting.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: order the project steps</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of the digit recogniser project in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Create labelled images of each digit</li>
              <li data-order="2">Preprocess every image with a threshold</li>
              <li data-order="3">Split the images into a training set and a test set</li>
              <li data-order="4">Compute the average image (centroid) of each digit from the training set</li>
              <li data-order="5">Predict each test image by finding the closest centroid</li>
              <li data-order="6">Measure accuracy and build the confusion matrix</li>
              <li data-order="7">Study the mistakes and plan improvements</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. It shows one noisy test image before and after preprocessing. Then it prints the accuracy and the confusion matrix.</li>
            <li>Find the biggest number off the diagonal. Which two digits get mixed up? Look at their shapes in <code>DIGITS</code>.</li>
            <li>Raise <code>NOISE</code> from 0.10 to 0.25. Accuracy should drop. Then set <code>PREPROCESS = False</code> and compare.</li>
            <li>Change a digit's drawing in <code>DIGITS</code> to make it more different from the digit it is confused with.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every vision project is the same loop: get labelled data, preprocess it, train, test on unseen images, and study the mistakes. Bigger models change the "train" step, but the rest of the loop stays the same.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Capstone: a tiny digit recogniser, from data to confusion matrix.
        import random

        random.seed(7)
        NOISE = 0.10          # chance that a pixel is flipped
        PREPROCESS = True     # threshold pixels to 0/1 before training
        TRAIN_PER_DIGIT, TEST_PER_DIGIT = 20, 10

        DIGITS = {
            0: [".###.", "#...#", "#...#", "#...#", ".###."],
            1: ["..#..", ".##..", "..#..", "..#..", ".###."],
            2: [".###.", "#...#", "..##.", ".#...", "#####"],
            3: ["####.", "....#", ".###.", "....#", "####."],
            4: ["#..#.", "#..#.", "#####", "...#.", "...#."],
            5: ["#####", "#....", "####.", "....#", "####."],
            6: [".###.", "#....", "####.", "#...#", ".###."],
            7: ["#####", "....#", "...#.", "..#..", "..#.."],
            8: [".###.", "#...#", ".###.", "#...#", ".###."],
            9: [".###.", "#...#", ".####", "....#", ".###."],
        }

        # 1) Data: noisy grayscale copies (0-255) of each clean digit.
        def noisy_image(pattern):
            img = []
            for row in pattern:
                for ch in row:
                    ink = ch == "#"
                    if random.random() < NOISE:
                        ink = not ink
                    img.append(random.randint(170, 255) if ink else random.randint(0, 90))
            return img

        # 2) Preprocess: threshold to 0/1.
        def preprocess(img):
            return [1 if v >= 128 else 0 for v in img] if PREPROCESS else [v / 255 for v in img]

        def show(img, title, as_numbers):
            print(title)
            for r in range(5):
                row = img[r * 5:(r + 1) * 5]
                if as_numbers:
                    print("   " + " ".join(f"{v:3}" for v in row))
                else:
                    print("   " + " ".join("#" if v >= 0.5 else "." for v in row))

        # 3) Split into train and test sets.
        train, test = [], []
        for digit, pattern in DIGITS.items():
            for i in range(TRAIN_PER_DIGIT + TEST_PER_DIGIT):
                sample = (noisy_image(pattern), digit)
                (train if i < TRAIN_PER_DIGIT else test).append(sample)

        # 4) Train: the centroid (average image) of each digit.
        centroids = {}
        for digit in DIGITS:
            imgs = [preprocess(img) for img, label in train if label == digit]
            centroids[digit] = [sum(px) / len(imgs) for px in zip(*imgs)]

        # 5) Predict: the closest centroid (squared distance).
        def predict(img):
            x = preprocess(img)
            return min(centroids, key=lambda d: sum((a - b) ** 2 for a, b in zip(x, centroids[d])))

        example, label = test[7 * TEST_PER_DIGIT]
        show(example, f"A raw test image (true digit {label}):", True)
        show(preprocess(example), "After preprocessing:", False)
        print("Prediction:", predict(example))

        # 6) Measure: accuracy and confusion matrix.
        matrix = [[0] * 10 for _ in range(10)]
        for img, label in test:
            matrix[label][predict(img)] += 1
        correct = sum(matrix[d][d] for d in range(10))
        print(f"\nTest accuracy: {correct}/{len(test)} = {correct / len(test):.0%}")

        print("\nConfusion matrix (rows = true digit, columns = predicted)")
        print("      " + " ".join(f"{d:>3}" for d in range(10)))
        for d in range(10):
            print(f"  {d} | " + " ".join(f"{n:>3}" if n else "  ." for n in matrix[d]))

        mistakes = [(matrix[t][p], t, p) for t in range(10) for p in range(10) if t != p and matrix[t][p]]
        if mistakes:
            n, t, p = max(mistakes)
            print(f"\nMost common mistake: {t} read as {p} ({n} times)")
        else:
            print("\nNo mistakes on the test set.")

        # Try it: set NOISE = 0.25, then set PREPROCESS = False, and compare the accuracy.
      PYTHON
    }
  }.freeze
end

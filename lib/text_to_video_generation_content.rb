module TextToVideoGenerationContent
  # How AI Text-to-Video Generation Works. Units (sidebar dividers): 1 Unit 1 · Video Basics · 5 Unit 2 · How Video Models Work · 10 Unit 3 · Control and Editing · 15 Unit 4 · Tools and Responsibility · 17 Capstone
  # Widgets: sorter, sequence, stepper. Starter code is Python run in the browser (Pyodide; numpy, pandas, scikit-learn).
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">From Images to Video</h1>
        </div>
        <p class="lc-lead">A text-to-image model turns a prompt into one picture. A text-to-video model turns a prompt into many pictures that play in order. In this lesson, you will see that a video is just a stack of frames. You will learn the shape of a video as numbers, and what changes when you move from images to video.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Left: text-to-image makes one frame with shape H, W, C, for example 512 by 512 by 3. Right: text-to-video makes many frames in time order. A paper boat moves a little to the right in each frame. Stacked together, the frames make one array with shape T, H, W, C, for example 48 by 512 by 512 by 3.">
            <defs><marker id="tv1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="120" y="30" font-weight="700" fill="#93c5fd">Text-to-image</text>
              <rect x="55" y="55" width="130" height="100" rx="6" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <rect x="56" y="125" width="128" height="29" fill="#27274e"/>
              <path d="M104,122 L136,122 L130,130 L110,130 z" fill="#f59e0b"/><path d="M118,121 L118,104 L131,121 z" fill="#e2e0f0"/>
              <text x="120" y="180">1 frame</text>
              <text x="120" y="205" fill="#93c5fd">shape (H, W, C)</text>
              <text x="120" y="225" font-size="12" fill="#9b99b8">e.g. (512, 512, 3)</text>
              <line x1="240" y1="20" x2="240" y2="250" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="500" y="30" font-weight="700" fill="#6ee7b7">Text-to-video</text>
              <rect x="270" y="55" width="80" height="62" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <rect x="271" y="96" width="78" height="20" fill="#27274e"/>
              <path d="M279,95 L301,95 L297,100 L283,100 z" fill="#f59e0b"/><path d="M289,94 L289,82 L298,94 z" fill="#e2e0f0"/>
              <text x="310" y="136" font-size="12" fill="#9b99b8">frame 0</text>
              <rect x="364" y="55" width="80" height="62" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <rect x="365" y="96" width="78" height="20" fill="#27274e"/>
              <path d="M383,95 L405,95 L401,100 L387,100 z" fill="#f59e0b"/><path d="M393,94 L393,82 L402,94 z" fill="#e2e0f0"/>
              <text x="404" y="136" font-size="12" fill="#9b99b8">frame 1</text>
              <rect x="458" y="55" width="80" height="62" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <rect x="459" y="96" width="78" height="20" fill="#27274e"/>
              <path d="M487,95 L509,95 L505,100 L491,100 z" fill="#f59e0b"/><path d="M497,94 L497,82 L506,94 z" fill="#e2e0f0"/>
              <text x="498" y="136" font-size="12" fill="#9b99b8">frame 2</text>
              <rect x="552" y="55" width="80" height="62" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <rect x="553" y="96" width="78" height="20" fill="#27274e"/>
              <path d="M591,95 L613,95 L609,100 L595,100 z" fill="#f59e0b"/><path d="M601,94 L601,82 L610,94 z" fill="#e2e0f0"/>
              <text x="592" y="136" font-size="12" fill="#9b99b8">frame 3</text>
              <rect x="646" y="55" width="80" height="62" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <rect x="647" y="96" width="78" height="20" fill="#27274e"/>
              <path d="M695,95 L717,95 L713,100 L699,100 z" fill="#f59e0b"/><path d="M705,94 L705,82 L714,94 z" fill="#e2e0f0"/>
              <text x="686" y="136" font-size="12" fill="#9b99b8">frame 4</text>
              <line x1="270" y1="152" x2="728" y2="152" stroke="#f59e0b" stroke-width="2" marker-end="url(#tv1a)"/>
              <text x="500" y="172" font-size="12" fill="#fcd34d">time: the new axis T (number of frames)</text>
              <text x="500" y="205" fill="#6ee7b7">stack the frames: shape (T, H, W, C)</text>
              <text x="500" y="225" font-size="12" fill="#9b99b8">e.g. (48, 512, 512, 3) = 2 seconds at 24 fps</text>
            </g>
          </svg>
          <figcaption>An image is one grid of pixels. A video is many grids in time order. The new axis, T, counts the frames.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A video is a stack of frames</h3>
          <p>A <strong>frame</strong> is one still picture in a video. When frames are shown quickly one after another, your eyes see motion. A cartoon flip book works in the same way.</p>
          <p>Take our running prompt: <em>"a paper boat sailing down a rainy street, slow camera pan, golden evening light"</em>. A text-to-image model makes one picture of the boat. A text-to-video model must make every frame. In each frame, the boat is a little further down the street.</p>
          <p>So a video model does not make "a different kind of thing". It makes many images. But those images must fit together in time.</p>
        </div>
        <div class="lc-card">
          <h3>Video as numbers: the shape (T, H, W, C)</h3>
          <p>A computer stores a colour image as a grid of numbers. Its <strong>shape</strong> lists the size of each direction, or <strong>axis</strong>:</p>
          <table class="lc-table">
            <thead><tr><th>Letter</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>T</td><td>Time: the number of frames</td><td>48</td></tr>
              <tr><td>H</td><td>Height in pixels</td><td>512</td></tr>
              <tr><td>W</td><td>Width in pixels</td><td>512</td></tr>
              <tr><td>C</td><td>Colour channels (red, green, blue)</td><td>3</td></tr>
            </tbody>
          </table>
          <p>An image has shape <code>(H, W, C)</code>. A video adds one axis at the front: <code>(T, H, W, C)</code>. A training batch of B videos adds one more: <code>(B, T, H, W, C)</code>. An array with many axes like this is called a <strong>tensor</strong>.</p>
          <p>Part 3 in the code editor below makes a 512 by 512 image and a 48-frame video with NumPy, and prints their shapes.</p>
          <p><code>video[10]</code> picks one frame, and it has the same shape as an image. A 48-frame video holds 48 times as many numbers as one image: 37,748,736 against 786,432.</p>
          <p>Libraries do not all use the same order. PyTorch video code often uses <code>(B, C, T, H, W)</code>, with channels before time. Always check the shape in the docs of the model you use.</p>
        </div>
        <div class="lc-card">
          <h3>What changes from text-to-image?</h3>
          <table class="lc-table">
            <thead><tr><th>Topic</th><th>Text-to-image</th><th>Text-to-video</th></tr></thead>
            <tbody>
              <tr><td>Output</td><td>One frame</td><td>Many frames, in order</td></tr>
              <tr><td>Size</td><td>Millions of numbers</td><td>Often hundreds of millions of numbers</td></tr>
              <tr><td>Main new job</td><td>Make one good picture</td><td>Keep the same boat, street and light in every frame, and move them in a believable way</td></tr>
              <tr><td>Prompt</td><td>Subject and style</td><td>Also the action and the camera, such as "slow camera pan"</td></tr>
              <tr><td>Training data</td><td>Images with captions</td><td>Video clips with captions, which are harder to collect</td></tr>
            </tbody>
          </table>
          <p>Many video models are built on ideas from image models. Some early ones took a trained text-to-image model and added new layers that work across time. You will see how in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: image, video or batch?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each shape uses the order (B, T, H, W, C). Sort each shape into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="image" data-label="One image"></div>
              <div data-sorter-target="bucket" data-bucket="video" data-label="One video"></div>
              <div data-sorter-target="bucket" data-bucket="batch" data-label="A batch of videos"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="image" data-why="Three axes: height 512, width 512 and 3 colour channels. There is no time axis.">(512, 512, 3)</li>
              <li data-bucket="video" data-why="Four axes: 120 frames, each 720 by 1280 pixels with 3 colours.">(120, 720, 1280, 3)</li>
              <li data-bucket="batch" data-why="Five axes: 8 videos, each with 120 frames of 720 by 1280 pixels.">(8, 120, 720, 1280, 3)</li>
              <li data-bucket="video" data-why="Four axes: 24 small frames of 64 by 64 pixels. That is one second at 24 fps.">(24, 64, 64, 3)</li>
              <li data-bucket="image" data-why="Three axes: one 1024 by 1024 colour picture.">(1024, 1024, 3)</li>
              <li data-bucket="batch" data-why="Five axes: 4 videos, each with 48 frames of 256 by 256 pixels.">(4, 48, 256, 256, 3)</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has 3 parts. Part 1 builds a toy video: a small bright square moving right across an 8 by 8 grey picture. Part 2 adds colour and a batch axis. Part 3 makes a real 512 by 512 image and a 48-frame video.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check that the shape is <code>(6, 8, 8)</code> and that the square moves one pixel in each frame.</li>
            <li>In Part 1, change <code>T</code> to 4. The video gets shorter, and the first number in the shape changes.</li>
            <li>In Part 1, change <code>SPEED</code> to 2. The square moves faster. In the last frames, it leaves the picture.</li>
            <li>In Part 1, change <code>SIZE</code> to 3. The square gets bigger, but the shapes stay the same. The shape depends on the frames, not on what they show.</li>
            <li>In Part 3, change 48 to 96. The ratio doubles to 96.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A video is a stack of images with one extra axis for time, so its shape is (T, H, W, C). The hard new job is making all the frames fit together.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A video is a stack of frames. This code has 3 parts. Run it, then change the numbers.
        import numpy as np

        # ── Part 1: a tiny toy video ──
        print("== Part 1: a tiny toy video ==")
        T, H, W = 6, 8, 8     # frames, height, width
        SIZE = 2              # the square is SIZE x SIZE pixels
        SPEED = 1             # pixels the square moves right in each frame

        def make_video(T=6, H=8, W=8, size=2, speed=1):
            video = np.zeros((T, H, W))                 # all dark to start
            for t in range(T):
                col = t * speed                         # where the square is in frame t
                video[t, 3:3 + size, col:col + size] = 1.0
            return video

        def show(video):
            # Print all frames side by side: '#' is bright, '.' is dark.
            print("  ".join(f"frame {t}".ljust(max(W, 8)) for t in range(len(video))))
            for r in range(video.shape[1]):
                print("  ".join("".join("#" if v >= 0.5 else "." for v in frame[r]).ljust(max(W, 8)) for frame in video))

        video = make_video(T, H, W, SIZE, SPEED)
        print("Video shape (T, H, W):", video.shape)
        print("One frame shape (H, W):", video[0].shape)
        print("Numbers in the whole video:", video.size)
        print()
        show(video)

        # ── Part 2: colour and batch axes ──
        print("\n== Part 2: colour and batch axes ==")
        # Add a colour channel: grey becomes RGB by copying the value 3 times.
        rgb_video = np.stack([video, video, video], axis=-1)
        print("RGB video shape (T, H, W, C):", rgb_video.shape)

        # A batch of 4 videos adds one more axis at the front.
        batch = np.stack([rgb_video] * 4)
        print("Batch shape (B, T, H, W, C):", batch.shape)
        print("Numbers in the batch:", batch.size)

        # ── Part 3: a real image and a real video ──
        print("\n== Part 3: a real image and a real video ==")
        # dtype=np.uint8 stores each number in 1 byte, so the video uses about 38 MB.
        image = np.zeros((512, 512, 3), dtype=np.uint8)        # one picture: (H, W, C)
        video = np.zeros((48, 512, 512, 3), dtype=np.uint8)    # 48 pictures: (T, H, W, C)
        frame = video[10]                                      # one frame: (512, 512, 3)

        print("image:", image.shape, f"{image.size:,}")
        print("video:", video.shape, f"{video.size:,}")
        print("frame 10:", frame.shape)
        print("ratio:", video.size // image.size)

        # Try it: in Part 1, change T to 4, SPEED to 2, or SIZE to 3 and run again.
      PYTHON
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Frames, FPS and Motion</h1>
        </div>
        <p class="lc-lead">How many frames does a short clip need? How big is it before compression? And how does a computer describe motion between two frames? In this lesson, you will learn frame rate, simple duration and size sums, and the idea of optical flow. These numbers explain why video AI needs so much computing power.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top: one second of video at 24 fps has 24 thin frames, each shown for about 41.7 milliseconds. At 12 fps it has 12 wider frames, each shown for about 83.3 milliseconds. Bottom: a bright square in frame t moves one pixel to the right in frame t plus 1. Optical flow gives every pixel an arrow. Here the four square pixels get an arrow of one pixel to the right and all other pixels get zero.">
            <defs><marker id="tv2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker><marker id="tv2b" markerUnits="userSpaceOnUse" markerWidth="6" markerHeight="6" refX="3" refY="3" orient="auto"><path d="M0,0 L6,3 L0,6 z" fill="#22d3ee"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="44" y="28" text-anchor="start">24 fps: 24 frames in 1 second, each on screen for about 41.7 ms</text>
              <rect x="44" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="72" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="100" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="128" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="156" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="184" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="212" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="240" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="268" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="296" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="324" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="352" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="380" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="408" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="436" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="464" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="492" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="520" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="548" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="576" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="604" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="632" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="660" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <rect x="688" y="38" width="24" height="24" rx="3" fill="#27274e" stroke="#3b82f6"/>
              <text x="44" y="90" text-anchor="start">12 fps: 12 frames in 1 second, each on screen for about 83.3 ms</text>
              <rect x="44" y="100" width="52" height="24" rx="3" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="100" y="100" width="52" height="24" rx="3" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="156" y="100" width="52" height="24" rx="3" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="212" y="100" width="52" height="24" rx="3" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="268" y="100" width="52" height="24" rx="3" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="324" y="100" width="52" height="24" rx="3" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="380" y="100" width="52" height="24" rx="3" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="436" y="100" width="52" height="24" rx="3" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="492" y="100" width="52" height="24" rx="3" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="548" y="100" width="52" height="24" rx="3" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="604" y="100" width="52" height="24" rx="3" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="660" y="100" width="52" height="24" rx="3" fill="#27274e" stroke="#8b5cf6"/>
              <line x1="44" y1="140" x2="712" y2="140" stroke="#4b4a78"/>
              <text x="96" y="170">frame t</text>
              <rect x="40" y="180" width="112" height="112" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="68" y="222" width="28" height="28" fill="#fcd34d"/>
              <text x="246" y="170">frame t+1</text>
              <rect x="190" y="180" width="112" height="112" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="232" y="222" width="28" height="28" fill="#fcd34d"/>
              <line x1="308" y1="236" x2="340" y2="236" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv2a)"/>
              <text x="406" y="170" fill="#67e8f9">optical flow</text>
              <rect x="350" y="180" width="112" height="112" fill="#1f1f44" stroke="#22d3ee"/>
              <circle cx="357.0" cy="187.0" r="1" fill="#6b6990"/>
              <circle cx="371.0" cy="187.0" r="1" fill="#6b6990"/>
              <circle cx="385.0" cy="187.0" r="1" fill="#6b6990"/>
              <circle cx="399.0" cy="187.0" r="1" fill="#6b6990"/>
              <circle cx="413.0" cy="187.0" r="1" fill="#6b6990"/>
              <circle cx="427.0" cy="187.0" r="1" fill="#6b6990"/>
              <circle cx="441.0" cy="187.0" r="1" fill="#6b6990"/>
              <circle cx="455.0" cy="187.0" r="1" fill="#6b6990"/>
              <circle cx="357.0" cy="201.0" r="1" fill="#6b6990"/>
              <circle cx="371.0" cy="201.0" r="1" fill="#6b6990"/>
              <circle cx="385.0" cy="201.0" r="1" fill="#6b6990"/>
              <circle cx="399.0" cy="201.0" r="1" fill="#6b6990"/>
              <circle cx="413.0" cy="201.0" r="1" fill="#6b6990"/>
              <circle cx="427.0" cy="201.0" r="1" fill="#6b6990"/>
              <circle cx="441.0" cy="201.0" r="1" fill="#6b6990"/>
              <circle cx="455.0" cy="201.0" r="1" fill="#6b6990"/>
              <circle cx="357.0" cy="215.0" r="1" fill="#6b6990"/>
              <circle cx="371.0" cy="215.0" r="1" fill="#6b6990"/>
              <circle cx="385.0" cy="215.0" r="1" fill="#6b6990"/>
              <circle cx="399.0" cy="215.0" r="1" fill="#6b6990"/>
              <circle cx="413.0" cy="215.0" r="1" fill="#6b6990"/>
              <circle cx="427.0" cy="215.0" r="1" fill="#6b6990"/>
              <circle cx="441.0" cy="215.0" r="1" fill="#6b6990"/>
              <circle cx="455.0" cy="215.0" r="1" fill="#6b6990"/>
              <circle cx="357.0" cy="229.0" r="1" fill="#6b6990"/>
              <circle cx="371.0" cy="229.0" r="1" fill="#6b6990"/>
              <line x1="380.0" y1="229.0" x2="388.0" y2="229.0" stroke="#22d3ee" stroke-width="1.6" marker-end="url(#tv2b)"/>
              <line x1="394.0" y1="229.0" x2="402.0" y2="229.0" stroke="#22d3ee" stroke-width="1.6" marker-end="url(#tv2b)"/>
              <circle cx="413.0" cy="229.0" r="1" fill="#6b6990"/>
              <circle cx="427.0" cy="229.0" r="1" fill="#6b6990"/>
              <circle cx="441.0" cy="229.0" r="1" fill="#6b6990"/>
              <circle cx="455.0" cy="229.0" r="1" fill="#6b6990"/>
              <circle cx="357.0" cy="243.0" r="1" fill="#6b6990"/>
              <circle cx="371.0" cy="243.0" r="1" fill="#6b6990"/>
              <line x1="380.0" y1="243.0" x2="388.0" y2="243.0" stroke="#22d3ee" stroke-width="1.6" marker-end="url(#tv2b)"/>
              <line x1="394.0" y1="243.0" x2="402.0" y2="243.0" stroke="#22d3ee" stroke-width="1.6" marker-end="url(#tv2b)"/>
              <circle cx="413.0" cy="243.0" r="1" fill="#6b6990"/>
              <circle cx="427.0" cy="243.0" r="1" fill="#6b6990"/>
              <circle cx="441.0" cy="243.0" r="1" fill="#6b6990"/>
              <circle cx="455.0" cy="243.0" r="1" fill="#6b6990"/>
              <circle cx="357.0" cy="257.0" r="1" fill="#6b6990"/>
              <circle cx="371.0" cy="257.0" r="1" fill="#6b6990"/>
              <circle cx="385.0" cy="257.0" r="1" fill="#6b6990"/>
              <circle cx="399.0" cy="257.0" r="1" fill="#6b6990"/>
              <circle cx="413.0" cy="257.0" r="1" fill="#6b6990"/>
              <circle cx="427.0" cy="257.0" r="1" fill="#6b6990"/>
              <circle cx="441.0" cy="257.0" r="1" fill="#6b6990"/>
              <circle cx="455.0" cy="257.0" r="1" fill="#6b6990"/>
              <circle cx="357.0" cy="271.0" r="1" fill="#6b6990"/>
              <circle cx="371.0" cy="271.0" r="1" fill="#6b6990"/>
              <circle cx="385.0" cy="271.0" r="1" fill="#6b6990"/>
              <circle cx="399.0" cy="271.0" r="1" fill="#6b6990"/>
              <circle cx="413.0" cy="271.0" r="1" fill="#6b6990"/>
              <circle cx="427.0" cy="271.0" r="1" fill="#6b6990"/>
              <circle cx="441.0" cy="271.0" r="1" fill="#6b6990"/>
              <circle cx="455.0" cy="271.0" r="1" fill="#6b6990"/>
              <circle cx="357.0" cy="285.0" r="1" fill="#6b6990"/>
              <circle cx="371.0" cy="285.0" r="1" fill="#6b6990"/>
              <circle cx="385.0" cy="285.0" r="1" fill="#6b6990"/>
              <circle cx="399.0" cy="285.0" r="1" fill="#6b6990"/>
              <circle cx="413.0" cy="285.0" r="1" fill="#6b6990"/>
              <circle cx="427.0" cy="285.0" r="1" fill="#6b6990"/>
              <circle cx="441.0" cy="285.0" r="1" fill="#6b6990"/>
              <circle cx="455.0" cy="285.0" r="1" fill="#6b6990"/>
              <text x="96" y="312" font-size="12" fill="#9b99b8">square at column 2</text>
              <text x="246" y="312" font-size="12" fill="#9b99b8">square at column 3</text>
              <text x="406" y="312" font-size="12" fill="#9b99b8">one arrow per pixel</text>
              <rect x="500" y="196" width="240" height="80" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="620" y="220">square pixels: 1 px right</text>
              <text x="620" y="242">other pixels: no motion</text>
              <text x="620" y="264" font-size="12" fill="#9b99b8">24 fps x 1 px = 24 px a second</text>
            </g>
          </svg>
          <figcaption>Top: more frames per second means each frame is on screen for less time. Bottom: optical flow gives each pixel an arrow that shows where it moves in the next frame.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Frame rate (fps)</h3>
          <p><strong>Frame rate</strong> is how many frames are shown each second. We write it in <strong>fps</strong> (frames per second).</p>
          <table class="lc-table">
            <thead><tr><th>Frame rate</th><th>Where you see it</th><th>Time per frame</th></tr></thead>
            <tbody>
              <tr><td>24 fps</td><td>Cinema films</td><td>about 41.7 ms</td></tr>
              <tr><td>25 fps</td><td>UK television</td><td>40 ms</td></tr>
              <tr><td>30 fps</td><td>US television and many phones (really 29.97 for US TV)</td><td>about 33.3 ms</td></tr>
              <tr><td>60 fps</td><td>Video games and sport</td><td>about 16.7 ms</td></tr>
            </tbody>
          </table>
          <p>A millisecond (ms) is one thousandth of a second. Many AI video tools make short clips at around 24 fps. Check your tool's docs for its exact frame rate and length.</p>
        </div>
        <div class="lc-card">
          <h3>Duration and size: two simple sums</h3>
          <p><strong>Frames = fps x seconds.</strong> A 5-second clip at 24 fps has 24 x 5 = 120 frames. The model must make every one of them.</p>
          <p><strong>Raw size = width x height x 3 x frames.</strong> "Raw" means not compressed. Each pixel has 3 colour values, and each value uses 1 byte.</p>
          <p>One Full HD frame (1920 x 1080) is about 6.2 MB raw. Five seconds is about 746 MB. Parts 1 and 2 in the code editor below do these sums. Video files on your phone are much smaller because codecs such as H.264 compress them. AI models also squeeze video into a smaller form before they work on it. You will learn about this later in the course.</p>
        </div>
        <div class="lc-card">
          <h3>Motion between frames</h3>
          <p>Neighbouring frames are usually very similar. At 24 fps, only about 42 ms pass between them, so things move only a little. This is good news for AI: most of the next frame can be predicted from the last one.</p>
          <p>Speed in a video depends on two things: how far something moves in each frame, and the frame rate. A square that moves 1 pixel per frame at 24 fps moves 24 pixels a second. At 12 fps, it must jump 2 pixels per frame to keep the same speed. Bigger jumps look less smooth.</p>
        </div>
        <div class="lc-card">
          <h3>Optical flow: arrows for every pixel</h3>
          <p><strong>Optical flow</strong> describes motion between two frames. For each pixel, it gives an arrow: how far it moved left or right, and how far up or down.</p>
          <ul class="lc-list">
            <li>In the diagram, the square moves 1 pixel right. Its pixels get the arrow (right 1, down 0).</li>
            <li>The dark background does not move. Its pixels get (0, 0).</li>
            <li>Real flow is found by special algorithms or neural networks. It is never perfect, for example where an object hides another one.</li>
          </ul>
          <p>Flow is useful in video AI. Tools use it to fill in missing frames, to check for flicker, and to copy motion from one video to another.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: how big is a raw clip?</h3>
          <p>Step through one size sum. The clip is 10 seconds of 720p video (1280 x 720) at 30 fps.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Question">How many bytes does a raw 10-second, 720p clip at 30 fps use?</li>
              <li data-kind="thought" data-label="Step 1 · frames">Frames = fps x seconds = 30 x 10.</li>
              <li data-kind="result" data-label="Frames">300 frames</li>
              <li data-kind="thought" data-label="Step 2 · one frame">Bytes per frame = 1280 x 720 x 3 colours x 1 byte.</li>
              <li data-kind="result" data-label="One frame">2,764,800 bytes (about 2.8 MB)</li>
              <li data-kind="thought" data-label="Step 3 · whole clip">Total = 2,764,800 x 300.</li>
              <li data-kind="answer" data-label="Raw size">829,440,000 bytes, about 829 MB</li>
              <li data-kind="check" data-label="Real files">A compressed file of this clip is much smaller. But a model still has to deal with all these pixels in some form.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has 3 parts. Part 1 counts the frames. Part 2 works out the raw size. Part 3 tracks the bright square through a toy video, like a tiny optical flow for one object.</p>
          <ol class="lc-list">
            <li>Run it. Check that 5 seconds at 24 fps gives 120 frames (Part 1) and about 746 MB raw (Part 2).</li>
            <li>Set <code>FPS = 12</code> in Part 1 and <code>SPEED = 2</code> in Part 3. The square still moves 24 pixels a second, but in bigger jumps.</li>
            <li>In Part 1, set <code>SECONDS = 10</code>. The raw size in Part 2 doubles.</li>
            <li>In Part 2, change <code>W_PX, H_PX</code> to <code>1280, 720</code> and compare with the activity above.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Frames = fps x seconds, and raw size grows with every frame. Neighbouring frames are very similar, and optical flow describes the small motion between them.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Frames, FPS and motion. This code has 3 parts. Run it, then change the numbers.
        import numpy as np

        # ── Part 1: frames = fps x seconds ──
        print("== Part 1: frames = fps x seconds ==")
        FPS = 24
        SECONDS = 5
        frames = FPS * SECONDS
        print(f"{SECONDS} s at {FPS} fps = {frames} frames")
        print(f"Each frame is on screen for {1000 / FPS:.1f} ms")

        # ── Part 2: raw size = width x height x 3 x frames ──
        print("\n== Part 2: raw size ==")
        W_PX, H_PX = 1920, 1080
        frame_bytes = W_PX * H_PX * 3              # 3 colour values, 1 byte each
        print(f"bytes per frame ({W_PX}x{H_PX}): {frame_bytes:,} ({frame_bytes / 1e6:.1f} MB)")
        print("MB per second:", frame_bytes * FPS / 1e6)
        print("MB for the clip:", frame_bytes * frames / 1e6)

        # ── Part 3: motion between frames ──
        print("\n== Part 3: motion between frames ==")
        # A 2x2 bright square moves right by SPEED pixels per frame.
        def make_video(T=6, H=8, W=8, size=2, speed=1):
            video = np.zeros((T, H, W))
            for t in range(T):
                col = t * speed
                video[t, 3:3 + size, col:col + size] = 1.0
            return video

        SPEED = 1
        video = make_video(W=16, speed=SPEED)    # 16 pixels wide, so the square stays in view

        def centre(frame):
            rows, cols = np.nonzero(frame > 0.5)      # where the bright pixels are
            return rows.mean(), cols.mean()

        print("Track the square (a tiny 'optical flow' for one object):")
        for t in range(1, len(video)):
            (r0, c0), (r1, c1) = centre(video[t - 1]), centre(video[t])
            changed = int(np.sum(video[t] != video[t - 1]))
            print(f"  frame {t-1} -> {t}: move (down {r1 - r0:+.0f}, right {c1 - c0:+.0f}) px, "
                  f"pixels changed: {changed}")

        speed_px_per_s = SPEED * FPS
        print(f"\nAt {FPS} fps, {SPEED} px per frame = {speed_px_per_s} px per second")

        # Try it: in Part 1 set FPS = 12, and in Part 3 set SPEED = 2. The square moves at the
        # same speed per second, but in bigger jumps. Then try SECONDS = 10 and look at Part 2.
      PYTHON
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Why Video Generation is Hard</h1>
        </div>
        <p class="lc-lead">Good AI images arrived before good AI video. That is not by chance. Video adds new problems on top of every image problem. In this lesson, you will learn the five big ones: temporal consistency, compute and memory, long-range coherence, physics, and training data.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top row: four frames made one at a time. The paper boat jumps to a new place, changes colour and loses its sail, so the video flickers. Middle row: four frames made together. The same boat moves smoothly to the right. Bottom: one 1024 by 1024 image needs about 3.1 million numbers. A 5 second video at 24 fps needs about 377 million, 120 times more.">
            <defs><marker id="tv3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="34" text-anchor="start" font-weight="700" fill="#f9a8d4">Frames made alone</text>
              <rect x="20" y="46" width="88" height="60" rx="6" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <rect x="21" y="86" width="86" height="19" fill="#27274e"/>
              <path d="M39,85 L61,85 L57,90 L43,90 z" fill="#f59e0b"/><path d="M49,84 L49,72 L58,84 z" fill="#e2e0f0"/>
              <rect x="120" y="46" width="88" height="60" rx="6" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <rect x="121" y="86" width="86" height="19" fill="#27274e"/>
              <path d="M164,77 L186,77 L182,82 L168,82 z" fill="#3b82f6"/><path d="M174,76 L174,64 L183,76 z" fill="#e2e0f0"/>
              <rect x="220" y="46" width="88" height="60" rx="6" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <rect x="221" y="86" width="86" height="19" fill="#27274e"/>
              <path d="M229,89 L251,89 L247,94 L233,94 z" fill="#10b981"/>
              <rect x="320" y="46" width="88" height="60" rx="6" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <rect x="321" y="86" width="86" height="19" fill="#27274e"/>
              <path d="M357,81 L379,81 L375,86 L361,86 z" fill="#f59e0b"/><path d="M367,80 L367,68 L376,80 z" fill="#e2e0f0"/>
              <line x1="420" y1="76" x2="452" y2="76" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv3a)"/>
              <text x="600" y="81" fill="#f9a8d4">flicker: jumps, colour and shape change</text>
              <text x="20" y="142" text-anchor="start" font-weight="700" fill="#6ee7b7">Frames made together</text>
              <rect x="20" y="154" width="88" height="60" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <rect x="21" y="194" width="86" height="19" fill="#27274e"/>
              <path d="M29,193 L51,193 L47,198 L33,198 z" fill="#f59e0b"/><path d="M39,192 L39,180 L48,192 z" fill="#e2e0f0"/>
              <rect x="120" y="154" width="88" height="60" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <rect x="121" y="194" width="86" height="19" fill="#27274e"/>
              <path d="M141,193 L163,193 L159,198 L145,198 z" fill="#f59e0b"/><path d="M151,192 L151,180 L160,192 z" fill="#e2e0f0"/>
              <rect x="220" y="154" width="88" height="60" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <rect x="221" y="194" width="86" height="19" fill="#27274e"/>
              <path d="M253,193 L275,193 L271,198 L257,198 z" fill="#f59e0b"/><path d="M263,192 L263,180 L272,192 z" fill="#e2e0f0"/>
              <rect x="320" y="154" width="88" height="60" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <rect x="321" y="194" width="86" height="19" fill="#27274e"/>
              <path d="M365,193 L387,193 L383,198 L369,198 z" fill="#f59e0b"/><path d="M375,192 L375,180 L384,192 z" fill="#e2e0f0"/>
              <line x1="420" y1="184" x2="452" y2="184" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv3a)"/>
              <text x="600" y="189" fill="#6ee7b7">consistent: same boat, smooth motion</text>
              <text x="20" y="246" text-anchor="start" font-weight="700" fill="#fcd34d">Numbers the model must make</text>
              <text x="20" y="276" text-anchor="start">1 image</text>
              <rect x="160" y="264" width="5" height="16" rx="2" fill="#3b82f6"/>
              <text x="175" y="276" text-anchor="start" fill="#9b99b8">about 3.1 million</text>
              <text x="20" y="308" text-anchor="start">5 s video</text>
              <rect x="160" y="296" width="580" height="16" rx="2" fill="#f59e0b"/>
              <text x="450" y="308" fill="#1f1f44" font-weight="700">about 377 million (120 times more)</text>
            </g>
          </svg>
          <figcaption>Top: frames made one at a time do not agree, so the video flickers. Middle: frames made together stay consistent. Bottom: a short video needs far more numbers than one image.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>1. Temporal consistency</h3>
          <p><strong>Temporal</strong> means "about time". <strong>Temporal consistency</strong> means things stay the same from frame to frame, unless they should change.</p>
          <p>In our paper boat video, the boat must keep the same colour, size and shape in every frame. The street and the evening light must stay the same too. Every frame can look perfect on its own and the video can still be bad.</p>
          <p>When small details change between frames, you see <strong>flicker</strong>: textures shimmer, edges jump, and colours pulse. Human eyes are very good at noticing this.</p>
        </div>
        <div class="lc-card">
          <h3>2. Compute and memory</h3>
          <p>A 5-second clip at 24 fps has 120 frames. So the model must make about 120 times as many numbers as for one image. Part 1 in the code editor below works out the exact numbers.</p>
          <p>The cost often grows faster than this. Many models compare every piece of the video with every other piece. If you double the pieces, you get four times the pairs. This is why video models need large GPUs, why they take longer than image models, and why many tools limit clip length. You will see the full cost sums later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>3. Long-range coherence</h3>
          <p><strong>Coherence</strong> means the whole story makes sense. Neighbouring frames may match well, but things can drift slowly over many seconds.</p>
          <ul class="lc-list">
            <li>A shop sign seen at the start is gone when the camera comes back to it.</li>
            <li>The boat slowly turns from white paper to grey plastic.</li>
            <li>A person's face changes a little in every second, until they look like someone else.</li>
          </ul>
          <p>Longer clips make this harder. The model must "remember" what it showed many frames ago.</p>
        </div>
        <div class="lc-card">
          <h3>4. Physics and 5. Training data</h3>
          <p><strong>Physics:</strong> the model never learns the laws of physics directly. It only sees pixels. So it can make water that flows up, hands with too many fingers, or legs that swap places while walking. Objects can also pass through each other or appear from nowhere.</p>
          <p><strong>Training data:</strong> a model learns from video clips paired with text descriptions, called <strong>captions</strong>. Most videos online have no good caption. Many are low quality, have cuts every few seconds, or cannot be used legally. Teams often use another AI model to write captions for their training videos.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>What you see in a bad video</th></tr></thead>
            <tbody>
              <tr><td>Temporal consistency</td><td>Flicker, colour changes, shimmering details</td></tr>
              <tr><td>Compute and memory</td><td>Short clips, low resolution, long waits, high price</td></tr>
              <tr><td>Long-range coherence</td><td>Objects slowly change or vanish</td></tr>
              <tr><td>Physics</td><td>Strange motion, objects merging</td></tr>
              <tr><td>Training data</td><td>The model ignores parts of the prompt</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: name the problem</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each sentence describes a problem in an AI video. Sort it into the main cause.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="consistency" data-label="Consistency over time"></div>
              <div data-sorter-target="bucket" data-bucket="compute" data-label="Compute and memory"></div>
              <div data-sorter-target="bucket" data-bucket="physics" data-label="Physics"></div>
              <div data-sorter-target="bucket" data-bucket="data" data-label="Training data"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="consistency" data-why="The same object should look the same in every frame. A sudden colour change is a consistency failure.">A woman's red coat turns blue halfway through the clip.</li>
              <li data-bucket="consistency" data-why="This is long-range coherence: the model forgot what it showed many frames ago.">A door seen at the start is gone when the camera turns back.</li>
              <li data-bucket="compute" data-why="More frames mean many more numbers to make, so memory and time grow fast.">A 20-second clip runs out of GPU memory, but a 5-second clip works.</li>
              <li data-bucket="physics" data-why="The model only learned pixel patterns, not how liquids behave.">A glass falls, and the water inside floats upwards.</li>
              <li data-bucket="physics" data-why="Body motion follows physical rules. The model did not learn them well here.">A runner's legs swap places in the middle of a step.</li>
              <li data-bucket="data" data-why="Without good captions, the model cannot learn which words match which actions.">Most clips found online have no useful text description.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has 2 parts. Part 1 compares the size of an image and a video. Part 2 gives three toy videos a <strong>flicker score</strong>: the average change between neighbouring frames. Lower is steadier.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, video A moves smoothly. Video B makes each frame alone, so the square teleports. Video C moves smoothly but shimmers.</li>
            <li>In Part 2, set <code>NOISE = 0.0</code>. Video C becomes the same as video A.</li>
            <li>In Part 2, set <code>NOISE = 0.4</code>. The shimmer score goes up. Small random changes in every frame add up to a lot of flicker.</li>
            <li>In Part 1, set <code>SECONDS = 10</code>. The video now needs 240 times as many numbers as one image.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A video can fail even when every frame is a good picture. The frames must agree with each other over time, and making them all costs much more compute.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Why video is hard. This code has 2 parts. Run it, then change the numbers.
        import numpy as np

        np.random.seed(42)

        # ── Part 1: how many numbers must the model make? ──
        print("== Part 1: how many numbers must the model make? ==")
        H, W, C = 1024, 1024, 3
        FPS, SECONDS = 24, 5
        image_pixels = H * W
        frames = FPS * SECONDS
        video_pixels = image_pixels * frames
        print("image pixels:", f"{image_pixels:,}")
        print("video pixels:", f"{video_pixels:,}")
        print("how many times more:", video_pixels // image_pixels)

        # With 3 colour values for every pixel:
        image_numbers = H * W * C
        video_numbers = image_numbers * frames
        print(f"One image: {image_numbers:,} numbers")
        print(f"{SECONDS} s video at {FPS} fps: {video_numbers:,} numbers "
              f"({video_numbers // image_numbers}x more)")

        # ── Part 2: consistency and a flicker score ──
        print("\n== Part 2: consistency and a flicker score ==")
        # Flicker = the average change between neighbouring frames.
        T, S = 7, 8          # 7 frames of 8x8 pixels
        def flicker(video):
            return np.abs(np.diff(video, axis=0)).mean()

        # Video A: one square moves smoothly to the right (frames agree).
        smooth = np.zeros((T, S, S))
        for t in range(T):
            smooth[t, 3:5, t:t + 2] = 1.0

        # Video B: every frame made on its own. The square lands in a random place.
        alone = np.zeros((T, S, S))
        for t in range(T):
            r, c = np.random.randint(0, S - 1, size=2)
            alone[t, r:r + 2, c:c + 2] = 1.0

        # Video C: smooth motion, but each frame gets its own random "texture" noise.
        NOISE = 0.2
        shimmer = np.clip(smooth + np.random.uniform(-NOISE, NOISE, smooth.shape), 0, 1)

        print("Flicker score (lower = steadier):")
        for name, v in [("A smooth", smooth), ("B made alone", alone), ("C shimmer", shimmer)]:
            score = flicker(v)
            print(f"  {name:13} {score:.3f}  " + "#" * int(score * 200))

        # Where is the square in video B? Real objects do not teleport.
        print("\nSquare position in video B:", [tuple(map(int, np.argwhere(f)[0])) for f in alone])

        # Try it: in Part 2 set NOISE = 0.0 or 0.4. In Part 1 set SECONDS = 10.
      PYTHON
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Early Approaches to AI Video</h1>
        </div>
        <p class="lc-lead">People tried many ways to make AI video before today's models. Each idea solved one problem but left others. In this lesson, you will learn four early approaches: frame by frame, GANs, frame interpolation and animating a still image. Then you will see why diffusion took over.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 225" role="img" aria-label="Five ways to make AI video, roughly in time order. Frame by frame: weak spot is flicker. GAN video: weak spot is tiny, short clips. Frame interpolation: weak spot is that it cannot add new events. Animate a still image: weak spot is small, fixed motions. Video diffusion: strength is that it makes the whole clip at once.">
            <defs><marker id="tv4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="22" y="40" width="132" height="122" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="1.5"/>
              <text x="88" y="68" font-weight="700">Frame by frame</text>
              <text x="88" y="94" font-size="11.5" fill="#9b99b8">image per frame</text>
              <text x="88" y="124" font-size="11" fill="#9b99b8">weak spot:</text>
              <text x="88" y="144" font-size="12" fill="#f9a8d4">flicker</text>
              <line x1="156" y1="101" x2="166" y2="101" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv4a)"/>
              <rect x="168" y="40" width="132" height="122" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="1.5"/>
              <text x="234" y="68" font-weight="700">GAN video</text>
              <text x="234" y="94" font-size="11.5" fill="#9b99b8">two rival networks</text>
              <text x="234" y="124" font-size="11" fill="#9b99b8">weak spot:</text>
              <text x="234" y="144" font-size="12" fill="#f9a8d4">tiny, short clips</text>
              <line x1="302" y1="101" x2="312" y2="101" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv4a)"/>
              <rect x="314" y="40" width="132" height="122" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="1.5"/>
              <text x="380" y="68" font-weight="700">Interpolation</text>
              <text x="380" y="94" font-size="11.5" fill="#9b99b8">fill in the gaps</text>
              <text x="380" y="124" font-size="11" fill="#9b99b8">weak spot:</text>
              <text x="380" y="144" font-size="12" fill="#f9a8d4">no new events</text>
              <line x1="448" y1="101" x2="458" y2="101" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv4a)"/>
              <rect x="460" y="40" width="132" height="122" rx="10" fill="#1f1f44" stroke="#22d3ee" stroke-width="1.5"/>
              <text x="526" y="68" font-weight="700">Animate a still</text>
              <text x="526" y="94" font-size="11.5" fill="#9b99b8">move one picture</text>
              <text x="526" y="124" font-size="11" fill="#9b99b8">weak spot:</text>
              <text x="526" y="144" font-size="12" fill="#f9a8d4">small motions</text>
              <line x1="594" y1="101" x2="604" y2="101" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv4a)"/>
              <rect x="606" y="40" width="132" height="122" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="3"/>
              <text x="672" y="68" font-weight="700">Video diffusion</text>
              <text x="672" y="94" font-size="11.5" fill="#9b99b8">denoise all frames</text>
              <text x="672" y="124" font-size="11" fill="#9b99b8">strength:</text>
              <text x="672" y="144" font-size="12" fill="#6ee7b7">whole clip at once</text>
              <line x1="22" y1="190" x2="728" y2="190" stroke="#f59e0b" stroke-width="2" marker-end="url(#tv4a)"/>
              <text x="380" y="212" font-size="12" fill="#fcd34d">roughly in time order (older ideas on the left)</text>
              <text x="380" y="24" font-size="12" fill="#9b99b8">Five ways to make AI video</text>
            </g>
          </svg>
          <figcaption>Early approaches each had a main weakness. Video diffusion solved the biggest one by making all frames together.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Frame by frame: simple, but it flickers</h3>
          <p>The simplest idea is to run a text-to-image model once for every frame. Each frame is made alone, so nothing ties it to the frame before it. The boat changes shape, the rain pattern jumps, and the light pulses.</p>
          <p>Community tools such as Deforum for Stable Diffusion improved this. Each new frame started from the last frame, moved a little, and then was redrawn. This gave dreamy, flowing animations. But details still changed and flickered between frames.</p>
        </div>
        <div class="lc-card">
          <h3>GAN video: real motion, but tiny clips</h3>
          <p>A <strong>GAN</strong> (generative adversarial network) has two networks. The <strong>generator</strong> makes fake samples. The <strong>discriminator</strong> tries to tell fakes from real ones. They train against each other until the fakes look real.</p>
          <p>Researchers built GANs that made whole clips. Some, such as MoCoGAN, split a video into <em>content</em> (what is in the scene) and <em>motion</em> (how it moves). These models showed real motion. But the clips were short, small and blurry, and GANs were hard to train. Training often failed or made the same few outputs again and again.</p>
        </div>
        <div class="lc-card">
          <h3>Frame interpolation: fill the gaps</h3>
          <p><strong>Frame interpolation</strong> makes new frames between two existing frames. The existing frames are called <strong>keyframes</strong>. Interpolation can turn 12 fps into 24 fps, or make slow motion. AI models such as RIFE and FILM do this well.</p>
          <p>The naive way is a <strong>crossfade</strong>: mix the two pictures. This does not create motion.</p>
          <p>Part 1 in the code editor below crossfades two tiny keyframes of 4 pixels: bright on the left, then bright on the right. Halfway, <code>middle</code> is 0.5 everywhere. Halfway, both sides are half bright. You see two faded copies, called <strong>ghosts</strong>, and nothing moves. Good interpolation follows the motion instead. It estimates the optical flow and moves each pixel part of the way along its arrow.</p>
          <figure class="lc-diagram">
            <svg viewBox="0 0 760 250" role="img" aria-label="Two keyframes: a square on the left in frame 0 and on the right in frame 4. Crossfade makes in-between frames where two faded copies of the square appear, one fading out and one fading in. Following the motion makes in-between frames where one bright square moves step by step to the right.">
              <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
                <text x="20" y="64" text-anchor="start" font-weight="700" fill="#f9a8d4">Crossfade</text>
                <rect x="170" y="44" width="72" height="36" fill="#1f1f44" stroke="#f59e0b"/>
                <rect x="170" y="53" width="18" height="18" fill="#fcd34d" fill-opacity="1"/>
                <text x="206" y="100" font-size="11.5" fill="#fcd34d">keyframe</text>
                <rect x="260" y="44" width="72" height="36" fill="#1f1f44" stroke="#ec4899"/>
                <rect x="260" y="53" width="18" height="18" fill="#fcd34d" fill-opacity="0.75"/>
                <rect x="296" y="53" width="18" height="18" fill="#fcd34d" fill-opacity="0.25"/>
                <text x="296" y="100" font-size="11.5" fill="#9b99b8">frame 1</text>
                <rect x="350" y="44" width="72" height="36" fill="#1f1f44" stroke="#ec4899"/>
                <rect x="350" y="53" width="18" height="18" fill="#fcd34d" fill-opacity="0.5"/>
                <rect x="386" y="53" width="18" height="18" fill="#fcd34d" fill-opacity="0.5"/>
                <text x="386" y="100" font-size="11.5" fill="#9b99b8">frame 2</text>
                <rect x="440" y="44" width="72" height="36" fill="#1f1f44" stroke="#ec4899"/>
                <rect x="440" y="53" width="18" height="18" fill="#fcd34d" fill-opacity="0.25"/>
                <rect x="476" y="53" width="18" height="18" fill="#fcd34d" fill-opacity="0.75"/>
                <text x="476" y="100" font-size="11.5" fill="#9b99b8">frame 3</text>
                <rect x="530" y="44" width="72" height="36" fill="#1f1f44" stroke="#f59e0b"/>
                <rect x="566" y="53" width="18" height="18" fill="#fcd34d" fill-opacity="1"/>
                <text x="566" y="100" font-size="11.5" fill="#fcd34d">keyframe</text>
                <text x="622" y="67" text-anchor="start" font-size="12" fill="#f9a8d4">ghosts, no motion</text>
                <text x="20" y="164" text-anchor="start" font-weight="700" fill="#6ee7b7">Follow the motion</text>
                <rect x="170" y="144" width="72" height="36" fill="#1f1f44" stroke="#f59e0b"/>
                <rect x="170" y="153" width="18" height="18" fill="#fcd34d" fill-opacity="1"/>
                <text x="206" y="200" font-size="11.5" fill="#fcd34d">keyframe</text>
                <rect x="260" y="144" width="72" height="36" fill="#1f1f44" stroke="#10b981"/>
                <rect x="269" y="153" width="18" height="18" fill="#fcd34d" fill-opacity="1"/>
                <text x="296" y="200" font-size="11.5" fill="#9b99b8">frame 1</text>
                <rect x="350" y="144" width="72" height="36" fill="#1f1f44" stroke="#10b981"/>
                <rect x="368" y="153" width="18" height="18" fill="#fcd34d" fill-opacity="1"/>
                <text x="386" y="200" font-size="11.5" fill="#9b99b8">frame 2</text>
                <rect x="440" y="144" width="72" height="36" fill="#1f1f44" stroke="#10b981"/>
                <rect x="467" y="153" width="18" height="18" fill="#fcd34d" fill-opacity="1"/>
                <text x="476" y="200" font-size="11.5" fill="#9b99b8">frame 3</text>
                <rect x="530" y="144" width="72" height="36" fill="#1f1f44" stroke="#f59e0b"/>
                <rect x="566" y="153" width="18" height="18" fill="#fcd34d" fill-opacity="1"/>
                <text x="566" y="200" font-size="11.5" fill="#fcd34d">keyframe</text>
                <text x="622" y="167" text-anchor="start" font-size="12" fill="#6ee7b7">real motion</text>
                <text x="380" y="232" font-size="12" fill="#9b99b8">Orange frames are the two keyframes. The three frames between them are made by the computer.</text>
              </g>
            </svg>
            <figcaption>Crossfade mixes the keyframes and makes ghosts. Following the motion moves one square step by step.</figcaption>
          </figure>
          <p>The limit: interpolation only fills gaps. It cannot invent new events between keyframes, so it cannot make a video from text on its own.</p>
        </div>
        <div class="lc-card">
          <h3>Animating a still image</h3>
          <p>Another idea starts from one photo and moves it. For example, the First Order Motion Model could make a face in a photo copy the head moves of a person in another video. Other tools made water ripple or clouds drift in a still picture.</p>
          <p>These results could look good. But the motion was small and fixed to certain kinds, like faces talking. The model could not make a new scene from a prompt.</p>
        </div>
        <div class="lc-card">
          <h3>Why diffusion took over</h3>
          <p>A <strong>diffusion model</strong> learns to remove noise step by step until a clean picture appears. Diffusion already worked very well for images. From around 2022, research such as Video Diffusion Models, Meta's Make-A-Video and Google's Imagen Video applied it to video.</p>
          <table class="lc-table">
            <thead><tr><th>Reason</th><th>Why it helps</th></tr></thead>
            <tbody>
              <tr><td>All frames together</td><td>The model denoises the whole clip at once, so frames can agree. This fights flicker.</td></tr>
              <tr><td>Stable training</td><td>Diffusion training is simpler and more reliable than GAN training.</td></tr>
              <tr><td>Reuse image models</td><td>Teams could start from a strong text-to-image model and add parts for time.</td></tr>
              <tr><td>Scales well</td><td>More data and more compute kept giving better results.</td></tr>
            </tbody>
          </table>
          <p>Old ideas did not disappear. Interpolation is still used to raise the frame rate of AI clips. Image animation lives on as "image-to-video", which you will meet later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a keyframe and interpolation pipeline</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Before video diffusion, some creators built videos from keyframes. Put their steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write a prompt for each key moment of the scene</li>
              <li data-order="2">Make a few keyframes with a text-to-image model</li>
              <li data-order="3">Estimate the optical flow between each pair of neighbouring keyframes</li>
              <li data-order="4">Create in-between frames by moving pixels along the flow</li>
              <li data-order="5">Play all the frames in order at the target frame rate</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has 3 parts. Part 1 is the 4-pixel crossfade. Part 2 makes the in-between frames for two keyframes in two ways, a crossfade and following the motion, and prints them side by side. Part 3 shows how interpolation raises the frame rate.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, the brightest pixel of the crossfade drops to 0.5 halfway. That is the ghost effect.</li>
            <li>In Part 2, set <code>END = 6</code>. The square travels further, and the crossfade ghosts move further apart.</li>
            <li>In Part 2, set <code>STEPS = 2</code>, then <code>STEPS = 6</code>. More steps make smoother motion when you follow it.</li>
            <li>In Part 3, change <code>fps_in</code> to 30. See how many frames interpolation adds.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Early methods each fixed one problem: frame by frame flickered, GANs made tiny clips, and interpolation could not invent events. Diffusion won because it makes all frames together and trains reliably at scale.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Frame interpolation: make the frames in between two keyframes. This code has 3 parts.
        import numpy as np

        # ── Part 1: a crossfade on 4 pixels ──
        print("== Part 1: a crossfade on 4 pixels ==")
        a = np.array([1.0, 1.0, 0.0, 0.0])   # keyframe A: bright on the left
        b = np.array([0.0, 0.0, 1.0, 1.0])   # keyframe B: bright on the right
        middle = 0.5 * a + 0.5 * b           # crossfade halfway
        print(middle)

        # ── Part 2: crossfade or follow the motion? ──
        print("\n== Part 2: crossfade or follow the motion? ==")
        H, W = 8, 8
        START, END = 0, 4      # column of the square in the first and last keyframe
        STEPS = 4              # how many jumps from the first keyframe to the last

        def frame_with_square(col):
            f = np.zeros((H, W))
            f[3:5, col:col + 2] = 1.0
            return f

        def show(frames, title):
            print(title)
            for r in range(2, 6):                      # only rows 2-5, where the square is
                print("  ".join("".join("#" if v >= 0.9 else "+" if v >= 0.5 else "-" if v > 0 else "." for v in f[r])
                                for f in frames))
            print()

        key_a = frame_with_square(START)
        key_b = frame_with_square(END)

        # Method 1: crossfade. Mix the two pictures: (1 - a) * A + a * B.
        crossfade = [(1 - a) * key_a + a * key_b for a in np.linspace(0, 1, STEPS + 1)]
        show(crossfade, "Crossfade ('#' bright, '+' half or more, '-' faint):")

        # Method 2: follow the motion. We know the square moves (END - START) px in total,
        # so each in-between frame moves it part of the way. This is the idea behind optical flow.
        step = (END - START) / STEPS
        moved = [frame_with_square(round(START + i * step)) for i in range(STEPS + 1)]
        show(moved, "Follow the motion:")

        for name, frames in [("crossfade", crossfade), ("follow motion", moved)]:
            peaks = [round(float(f.max()), 2) for f in frames]
            print(f"{name:14} brightest pixel in each frame: {peaks}")

        # ── Part 3: interpolation raises the frame rate ──
        print("\n== Part 3: interpolation raises the frame rate ==")
        # One new frame between every pair of frames.
        fps_in, n_in = 12, 12
        print(f"{n_in} frames at {fps_in} fps -> {2 * n_in - 1} frames at about {2 * fps_in} fps")

        # Try it: in Part 2 set END = 6, or STEPS = 2 or 6. In Part 3 set fps_in = 30.
      PYTHON
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Video Diffusion Models</h1>
        </div>
        <p class="lc-lead">Most modern AI video tools are <strong>video diffusion models</strong>. They start from pure noise and clean it, step by step, until a clip appears. The big idea is simple. The model cleans <em>all the frames of the clip together</em>, not one at a time. In this lesson, you will learn how the noise covers a whole clip. You will see how one training step works. You will also see why this keeps frames consistent.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Generation starts with a block of pure noise shaped like a whole clip of frames. Each denoising step cleans all frames together. After many steps a clean clip of a moving square appears. The shape stays T by H by W by C the whole time.">
            <defs><marker id="tv5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="86" width="96" height="96" rx="4" fill="#1f1f44" stroke="#ec4899"/>
              <rect x="32" y="74" width="96" height="96" rx="4" fill="#1f1f44" stroke="#ec4899"/>
              <rect x="44" y="62" width="96" height="96" rx="4" fill="#1f1f44" stroke="#ec4899"/>
              <rect x="56" y="50" width="96" height="96" rx="4" fill="#1f1f44" stroke="#ec4899"/>
              <rect x="80" y="50" width="12" height="12" fill="#e2e0f0" opacity="0.52"/>
              <rect x="104" y="50" width="12" height="12" fill="#e2e0f0" opacity="0.39"/>
              <rect x="140" y="50" width="12" height="12" fill="#e2e0f0" opacity="0.36"/>
              <rect x="68" y="62" width="12" height="12" fill="#e2e0f0" opacity="0.28"/>
              <rect x="104" y="62" width="12" height="12" fill="#e2e0f0" opacity="0.27"/>
              <rect x="116" y="62" width="12" height="12" fill="#e2e0f0" opacity="0.74"/>
              <rect x="56" y="74" width="12" height="12" fill="#e2e0f0" opacity="0.49"/>
              <rect x="68" y="74" width="12" height="12" fill="#e2e0f0" opacity="0.90"/>
              <rect x="80" y="74" width="12" height="12" fill="#e2e0f0" opacity="0.43"/>
              <rect x="104" y="74" width="12" height="12" fill="#e2e0f0" opacity="0.90"/>
              <rect x="128" y="74" width="12" height="12" fill="#e2e0f0" opacity="0.79"/>
              <rect x="92" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.73"/>
              <rect x="116" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.44"/>
              <rect x="128" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.51"/>
              <rect x="56" y="98" width="12" height="12" fill="#e2e0f0" opacity="0.40"/>
              <rect x="104" y="98" width="12" height="12" fill="#e2e0f0" opacity="0.56"/>
              <rect x="116" y="98" width="12" height="12" fill="#e2e0f0" opacity="0.28"/>
              <rect x="140" y="98" width="12" height="12" fill="#e2e0f0" opacity="0.44"/>
              <rect x="56" y="110" width="12" height="12" fill="#e2e0f0" opacity="0.30"/>
              <rect x="80" y="110" width="12" height="12" fill="#e2e0f0" opacity="0.70"/>
              <rect x="92" y="110" width="12" height="12" fill="#e2e0f0" opacity="0.58"/>
              <rect x="116" y="110" width="12" height="12" fill="#e2e0f0" opacity="0.43"/>
              <rect x="128" y="110" width="12" height="12" fill="#e2e0f0" opacity="0.38"/>
              <rect x="140" y="110" width="12" height="12" fill="#e2e0f0" opacity="0.81"/>
              <rect x="56" y="122" width="12" height="12" fill="#e2e0f0" opacity="0.62"/>
              <rect x="80" y="122" width="12" height="12" fill="#e2e0f0" opacity="0.90"/>
              <rect x="116" y="122" width="12" height="12" fill="#e2e0f0" opacity="0.65"/>
              <rect x="140" y="122" width="12" height="12" fill="#e2e0f0" opacity="0.34"/>
              <rect x="68" y="134" width="12" height="12" fill="#e2e0f0" opacity="0.54"/>
              <rect x="80" y="134" width="12" height="12" fill="#e2e0f0" opacity="0.66"/>
              <rect x="92" y="134" width="12" height="12" fill="#e2e0f0" opacity="0.43"/>
              <rect x="104" y="134" width="12" height="12" fill="#e2e0f0" opacity="0.81"/>
              <rect x="128" y="134" width="12" height="12" fill="#e2e0f0" opacity="0.57"/>
              <rect x="140" y="134" width="12" height="12" fill="#e2e0f0" opacity="0.45"/>
              <text x="86" y="206" font-weight="700" fill="#ec4899">pure noise</text>
              <text x="86" y="223" font-size="11" fill="#9b99b8">noise level 100%</text>
              <line x1="162" y1="104" x2="206" y2="104" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv5a)"/>
              <text x="184" y="92" font-size="11" fill="#9b99b8">denoise</text>
              <rect x="215" y="86" width="96" height="96" rx="4" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="227" y="74" width="96" height="96" rx="4" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="239" y="62" width="96" height="96" rx="4" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="251" y="50" width="96" height="96" rx="4" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="251" y="50" width="12" height="12" fill="#e2e0f0" opacity="0.31"/>
              <rect x="275" y="50" width="12" height="12" fill="#e2e0f0" opacity="0.53"/>
              <rect x="287" y="50" width="12" height="12" fill="#e2e0f0" opacity="0.64"/>
              <rect x="311" y="50" width="12" height="12" fill="#e2e0f0" opacity="0.38"/>
              <rect x="335" y="50" width="12" height="12" fill="#e2e0f0" opacity="0.41"/>
              <rect x="251" y="62" width="12" height="12" fill="#e2e0f0" opacity="0.36"/>
              <rect x="263" y="62" width="12" height="12" fill="#e2e0f0" opacity="0.69"/>
              <rect x="275" y="62" width="12" height="12" fill="#e2e0f0" opacity="0.52"/>
              <rect x="311" y="62" width="12" height="12" fill="#e2e0f0" opacity="0.38"/>
              <rect x="287" y="74" width="12" height="12" fill="#e2e0f0" opacity="0.47"/>
              <rect x="335" y="74" width="12" height="12" fill="#e2e0f0" opacity="0.56"/>
              <rect x="275" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.28"/>
              <rect x="287" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.85"/>
              <rect x="299" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.78"/>
              <rect x="311" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.56"/>
              <rect x="263" y="98" width="12" height="12" fill="#e2e0f0" opacity="0.58"/>
              <rect x="275" y="98" width="12" height="12" fill="#e2e0f0" opacity="0.65"/>
              <rect x="287" y="98" width="12" height="12" fill="#e2e0f0" opacity="0.31"/>
              <rect x="299" y="98" width="12" height="12" fill="#e2e0f0" opacity="0.32"/>
              <rect x="251" y="110" width="12" height="12" fill="#e2e0f0" opacity="0.31"/>
              <rect x="311" y="110" width="12" height="12" fill="#e2e0f0" opacity="0.30"/>
              <rect x="323" y="110" width="12" height="12" fill="#e2e0f0" opacity="0.64"/>
              <rect x="335" y="110" width="12" height="12" fill="#e2e0f0" opacity="0.40"/>
              <rect x="263" y="122" width="12" height="12" fill="#e2e0f0" opacity="0.34"/>
              <rect x="275" y="122" width="12" height="12" fill="#e2e0f0" opacity="0.39"/>
              <rect x="299" y="122" width="12" height="12" fill="#e2e0f0" opacity="0.59"/>
              <rect x="311" y="122" width="12" height="12" fill="#e2e0f0" opacity="0.48"/>
              <rect x="323" y="122" width="12" height="12" fill="#e2e0f0" opacity="0.57"/>
              <rect x="335" y="122" width="12" height="12" fill="#e2e0f0" opacity="0.49"/>
              <rect x="287" y="134" width="12" height="12" fill="#e2e0f0" opacity="0.35"/>
              <text x="281" y="206" font-weight="700" fill="#f59e0b">mostly noise</text>
              <text x="281" y="223" font-size="11" fill="#9b99b8">noise level 70%</text>
              <line x1="357" y1="104" x2="401" y2="104" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv5a)"/>
              <text x="379" y="92" font-size="11" fill="#9b99b8">denoise</text>
              <rect x="410" y="86" width="96" height="96" rx="4" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="422" y="74" width="96" height="96" rx="4" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="434" y="62" width="96" height="96" rx="4" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="446" y="50" width="96" height="96" rx="4" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="530" y="62" width="12" height="12" fill="#e2e0f0" opacity="0.29"/>
              <rect x="458" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.28"/>
              <rect x="482" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.65"/>
              <rect x="494" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.75"/>
              <rect x="530" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.29"/>
              <rect x="482" y="98" width="12" height="12" fill="#e2e0f0" opacity="0.70"/>
              <rect x="494" y="98" width="12" height="12" fill="#e2e0f0" opacity="0.65"/>
              <rect x="482" y="110" width="12" height="12" fill="#e2e0f0" opacity="0.29"/>
              <rect x="446" y="134" width="12" height="12" fill="#e2e0f0" opacity="0.28"/>
              <rect x="482" y="134" width="12" height="12" fill="#e2e0f0" opacity="0.29"/>
              <rect x="494" y="134" width="12" height="12" fill="#e2e0f0" opacity="0.28"/>
              <text x="476" y="206" font-weight="700" fill="#3b82f6">mostly clip</text>
              <text x="476" y="223" font-size="11" fill="#9b99b8">noise level 30%</text>
              <line x1="552" y1="104" x2="596" y2="104" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv5a)"/>
              <text x="574" y="92" font-size="11" fill="#9b99b8">denoise</text>
              <rect x="605" y="86" width="96" height="96" rx="4" fill="#1f1f44" stroke="#10b981"/>
              <rect x="617" y="74" width="96" height="96" rx="4" fill="#1f1f44" stroke="#10b981"/>
              <rect x="629" y="62" width="96" height="96" rx="4" fill="#1f1f44" stroke="#10b981"/>
              <rect x="641" y="50" width="96" height="96" rx="4" fill="#1f1f44" stroke="#10b981"/>
              <rect x="677" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.90"/>
              <rect x="689" y="86" width="12" height="12" fill="#e2e0f0" opacity="0.90"/>
              <rect x="677" y="98" width="12" height="12" fill="#e2e0f0" opacity="0.90"/>
              <rect x="689" y="98" width="12" height="12" fill="#e2e0f0" opacity="0.90"/>
              <text x="671" y="206" font-weight="700" fill="#10b981">clean clip</text>
              <text x="671" y="223" font-size="11" fill="#9b99b8">noise level 0%</text>
              <text x="380" y="26" font-size="12" fill="#9b99b8">Each block is 4 frames stacked: the whole clip is cleaned together, one step at a time</text>
              <rect x="70" y="240" width="620" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="263">One noise level for all frames at each step</text>
              <text x="380" y="283" font-size="12" fill="#9b99b8">The shape stays (T, H, W, C) from the first step to the last</text>
            </g>
          </svg>
          <figcaption>A video diffusion model cleans a whole block of frames at once. At every step, all frames have the same amount of noise. The front frame shows the moving square slowly appearing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Diffusion in one minute</h3>
          <p><strong>Diffusion</strong> is a way to make new data by removing noise. <strong>Noise</strong> here means random numbers, like the static on an old TV. It works in two directions:</p>
          <ul class="lc-list">
            <li><strong>Training (adding noise):</strong> take a real example. Add a random amount of noise to it. Ask the model to guess the noise you added.</li>
            <li><strong>Generation (removing noise):</strong> start from pure noise. The model guesses the noise, and you take away a part of it. Repeat this for many steps, often tens of steps.</li>
          </ul>
          <p>The <strong>timestep</strong> says how noisy the input is. A large timestep means mostly noise. A small timestep means almost clean. The model always gets the timestep, so it knows how much cleaning to do. The text prompt guides each step, so the result matches your words.</p>
        </div>
        <div class="lc-card">
          <h3>From one image to a whole clip</h3>
          <p>An image diffusion model cleans one picture. A video diffusion model cleans one <strong>clip</strong>: a stack of frames. The noise is no longer a flat picture. It is a block with the same shape as the clip. People call this <strong>3D noise</strong>, because it has a time axis as well as height and width.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Image diffusion</th><th>Video diffusion</th></tr></thead>
            <tbody>
              <tr><td>What it makes</td><td>One picture</td><td>A clip of T frames</td></tr>
              <tr><td>Noise shape</td><td>(H, W, C)</td><td>(T, H, W, C)</td></tr>
              <tr><td>Timestep</td><td>One per picture</td><td>One per clip, shared by every frame</td></tr>
              <tr><td>What the model sees at each step</td><td>The whole picture</td><td>The whole clip, all frames at once</td></tr>
            </tbody>
          </table>
          <p>Why clean the frames together? Imagine you clean each frame on its own. Each frame starts from its own noise and makes its own choices. The paper boat could be white in frame 1 and yellow in frame 2. That is the <strong>flicker</strong> you met earlier in this course. When the model sees all frames at each step, it can make one choice and keep it in every frame.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: adding noise to a clip</h3>
          <p>This is the rule for adding noise. Here <code>abar</code> is a number from 0 to 1. It says how much of the clean clip is left at this timestep.</p>
          <p><strong>noisy = sqrt(abar) × clean + sqrt(1 - abar) × noise</strong></p>
          <p>Take one pixel of the bright square. Its clean value is 1.0. The random noise for that pixel is 0.4. At <code>abar = 0.5</code>, both square roots are about 0.707.</p>
          <p>So the noisy value is 0.707 × 1.0 + 0.707 × 0.4 = 0.707 + 0.283 = 0.99. Every pixel in every frame uses the same <code>abar</code>, but its own noise number. Part 1 in the code editor below does this sum.</p>
          <p>Part 2 in the code editor below adds one block of noise to a whole toy clip with NumPy. Part 4 does the same in PyTorch, for a batch of two small clips. PyTorch video code often puts the colour channels before time: (B, C, T, H, W).</p>
          <p>In Part 4, each clip gets one random timestep. All 16 frames of that clip share it. PyTorch does not run in the browser, so copy Part 4 to your own computer to run it.</p>
        </div>
        <div class="lc-card">
          <h3>Training on clips</h3>
          <p>A video diffusion model learns from many short video clips. Each clip has a <strong>caption</strong>: a text that says what happens in it. For example: "a paper boat sailing down a rainy street, slow camera pan, golden evening light".</p>
          <p>Before training, each video is cut into short clips. The clips are resized and given a fixed number of frames. Many teams also train on still images. An image is just a clip with one frame. This helps the model learn what things look like, while the clips teach it how things move.</p>
          <p>One training step looks like this:</p>
          <ol class="lc-list">
            <li>Pick a clip and its caption.</li>
            <li>Pick a random timestep, and make one block of noise with the clip's shape.</li>
            <li>Mix the clip and the noise with the rule above.</li>
            <li>Give the model the noisy clip, the timestep and the caption. It guesses the noise.</li>
            <li>Measure the error with the <strong>mean squared error</strong>: the average of the squared differences.</li>
            <li>Change the model's numbers a little, so the error gets smaller next time.</li>
          </ol>
          <p>Part 3 in the code editor does one such step with two fake models. A lazy model that always guesses zero has a loss of 0.908. A nearly right model has a loss of 0.010. Training moves a real model from the first kind towards the second.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one training step</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of one training step for a video diffusion model in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Pick a short clip and its caption</li>
              <li data-order="2">Pick one random timestep for the whole clip</li>
              <li data-order="3">Make a block of noise with the same shape as the clip</li>
              <li data-order="4">Mix the clip and the noise to get a noisy clip</li>
              <li data-order="5">The model guesses the noise from the noisy clip, timestep and caption</li>
              <li data-order="6">Compare the guess with the real noise, and update the model</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has 4 parts. Part 1 is the one-pixel sum. Part 2 makes the moving square clip and adds one block of noise at three noise levels. Part 3 scores a lazy model and a good model. Part 4 is the PyTorch version.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, look at frame 0 at each level. At <code>abar = 0.9</code> you can still see the square. At <code>abar = 0.1</code> it is lost in the noise.</li>
            <li>In Part 1, change <code>noise_px</code> to -0.4. The noisy value drops to 0.42.</li>
            <li>In Part 2, change the list <code>[0.9, 0.5, 0.1]</code> to <code>[0.99, 0.7, 0.3]</code>. Watch the "match" number change.</li>
            <li>In Part 3, change <code>0.1</code> in <code>good_guess</code> to <code>0.5</code>. The loss goes up, and the cleaned clip gets worse.</li>
            <li>In Part 2, change <code>make_video()</code> to <code>make_video(T=10)</code>. The noise shape follows the clip shape on its own.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A video diffusion model treats the whole clip as one thing to clean. One block of noise covers every frame, all frames share one timestep, and the model sees them all at each step. This is what lets it keep the frames consistent.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Video diffusion, the forward (noising) side. This code has 4 parts.
        # One noise block covers the WHOLE clip, and every frame gets the same noise level.
        import numpy as np

        np.random.seed(42)

        # ── Part 1: the noise rule for one pixel ──
        print("== Part 1: the noise rule for one pixel ==")
        # noisy = sqrt(abar) * clean + sqrt(1 - abar) * noise
        clean_px, noise_px, abar = 1.0, 0.4, 0.5
        noisy_px = np.sqrt(abar) * clean_px + np.sqrt(1 - abar) * noise_px
        print(f"sqrt({abar}) = {np.sqrt(abar):.3f}, noisy value = {noisy_px:.2f}")

        # ── Part 2: one noise block for a whole clip ──
        print("\n== Part 2: one noise block for a whole clip ==")
        def make_video(T=6, H=8, W=8, size=2, speed=1):
            """A bright 2x2 square moving right. Shape (T, H, W), values 0.0 or 1.0."""
            video = np.zeros((T, H, W))
            for t in range(T):
                col = t * speed
                video[t, 3:3 + size, col:col + size] = 1.0
            return video

        def show(frame):
            for row in frame:
                print("  " + "".join("#" if v >= 0.5 else "." for v in row))

        clip = make_video()
        noise = np.random.randn(*clip.shape)        # 3D noise: same shape as the clip
        print("clip shape:", clip.shape, " noise shape:", noise.shape)

        # abar = how much of the clean clip is left (1.0 = clean, 0.0 = pure noise)
        for abar in [0.9, 0.5, 0.1]:
            noisy = np.sqrt(abar) * clip + np.sqrt(1 - abar) * noise
            match = np.corrcoef(clip.ravel(), noisy.ravel())[0, 1]
            print(f"\nabar = {abar}: match with the clean clip = {match:.2f}")
            print(" frame 0:")
            show(noisy[0])

        # ── Part 3: one training example ──
        print("\n== Part 3: one training example ==")
        # The model must guess the noise we added.
        abar = 0.5
        noisy = np.sqrt(abar) * clip + np.sqrt(1 - abar) * noise
        lazy_guess = np.zeros_like(noise)            # a model that has learned nothing
        good_guess = noise + 0.1 * np.random.randn(*noise.shape)   # a model that is nearly right
        for name, guess in [("lazy model", lazy_guess), ("good model", good_guess)]:
            loss = np.mean((guess - noise) ** 2)     # mean squared error
            clean_guess = (noisy - np.sqrt(1 - abar) * guess) / np.sqrt(abar)
            error = np.mean(np.abs(clean_guess - clip))
            print(f"{name}: loss = {loss:.3f}, error of the cleaned clip = {error:.3f}")

        # ── Part 4: the same noising in PyTorch (run this part on your own computer) ──
        print("\n== Part 4: the same noising in PyTorch ==")
        try:
            import torch
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            clip = torch.rand(2, 3, 16, 64, 64)          # (B, C, T, H, W): 2 clips of 16 frames
            noise = torch.randn_like(clip)               # one noise block per clip
            t = torch.randint(0, 1000, (2,))             # one timestep per clip, shared by all frames
            abar = torch.linspace(0.9999, 0.0001, 1000)  # a simple made-up schedule
            a = abar[t].view(-1, 1, 1, 1, 1)             # reshape so it covers C, T, H and W
            noisy = a.sqrt() * clip + (1 - a).sqrt() * noise   # same shape as clip
            print(noisy.shape)
            print(t.tolist())

        # Try it: in Part 2 change T in make_video() or the abar values. In Part 3 change the 0.1 in good_guess.
      PYTHON
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Spatial and Temporal Attention</h1>
        </div>
        <p class="lc-lead">A video model must get two things right. Each frame must look good, and the frames must fit together over time. <strong>Attention</strong> is the tool for both. In this lesson, you will learn the difference between attention inside one frame and attention across frames. You will also do the cost arithmetic that explains why many models split attention into two parts.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Three video frames, each a 4 by 4 grid of tokens. One token in frame 2 is being updated. Spatial attention lets it look at the other 15 tokens in frame 2. Temporal attention lets it look at the token in the same spot in frames 1 and 3.">
            <defs><marker id="tv6a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#10b981"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="70" y="70" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="100" y="70" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="130" y="70" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="160" y="70" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="70" y="100" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="100" y="100" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="130" y="100" width="30" height="30" fill="#065f46" stroke="#10b981" stroke-width="2"/>
              <rect x="160" y="100" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="70" y="130" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="100" y="130" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="130" y="130" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="160" y="130" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="70" y="160" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="100" y="160" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="130" y="160" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="160" y="160" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <text x="130" y="212" font-weight="700">frame 1</text>
              <rect x="320" y="70" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="350" y="70" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="380" y="70" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="410" y="70" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="320" y="100" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="350" y="100" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="380" y="100" width="30" height="30" fill="#ec4899" stroke="#f9a8d4" stroke-width="2"/>
              <rect x="410" y="100" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="320" y="130" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="350" y="130" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="380" y="130" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="410" y="130" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="320" y="160" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="350" y="160" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="380" y="160" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <rect x="410" y="160" width="30" height="30" fill="#1e3a8a" stroke="#3b82f6" stroke-width="1"/>
              <text x="380" y="212" font-weight="700">frame 2</text>
              <rect x="570" y="70" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="600" y="70" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="630" y="70" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="660" y="70" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="570" y="100" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="600" y="100" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="630" y="100" width="30" height="30" fill="#065f46" stroke="#10b981" stroke-width="2"/>
              <rect x="660" y="100" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="570" y="130" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="600" y="130" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="630" y="130" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="660" y="130" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="570" y="160" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="600" y="160" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="630" y="160" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <rect x="660" y="160" width="30" height="30" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/>
              <text x="630" y="212" font-weight="700">frame 3</text>
              <path d="M395,102 Q270.0,-10 145,99" fill="none" stroke="#10b981" stroke-width="2" marker-end="url(#tv6a)"/>
              <path d="M395,102 Q520.0,-10 645,99" fill="none" stroke="#10b981" stroke-width="2" marker-end="url(#tv6a)"/>
              <text x="250" y="30" font-size="12" fill="#6ee7b7">temporal</text>
              <text x="520" y="30" font-size="12" fill="#6ee7b7">temporal</text>
              <g text-anchor="start" font-size="12.5">
                <rect x="40" y="230" width="14" height="14" fill="#ec4899"/><text x="62" y="242">the token being updated</text>
                <rect x="40" y="256" width="14" height="14" fill="#1e3a8a" stroke="#3b82f6"/><text x="62" y="268">spatial attention: the other 15 tokens in the same frame</text>
                <rect x="40" y="282" width="14" height="14" fill="#065f46" stroke="#10b981"/><text x="62" y="294">temporal attention: the same spot in every other frame</text>
              </g>
              <rect x="500" y="228" width="236" height="66" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="618" y="252" font-size="12.5" fill="#fcd34d">factorised attention =</text>
              <text x="618" y="274" font-size="12.5" fill="#fcd34d">spatial, then temporal</text>
            </g>
          </svg>
          <figcaption>The pink token is being updated. Spatial attention looks across its own frame (blue). Temporal attention looks at the same spot in the other frames (green).</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A video as a grid of tokens</h3>
          <p>Inside the model, each frame is cut into small squares. Each square becomes a <strong>token</strong>: a list of numbers that describes that small piece of the frame. So a clip becomes a 3D grid of tokens: frames × rows × columns.</p>
          <p>Our running example has 16 frames. Each frame is a grid of 32 × 32 tokens. That is 16 × 32 × 32 = 16,384 tokens for one short clip.</p>
          <p><strong>Attention</strong> lets a token look at other tokens and take in information from the useful ones. Each token gives the others weights from 0 to 1, and the weights add up to 1. The big question for video is: <em>which</em> tokens should each token look at?</p>
        </div>
        <div class="lc-card">
          <h3>Spatial attention and temporal attention</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Spatial attention</th><th>Temporal attention</th></tr></thead>
            <tbody>
              <tr><td>Looks at</td><td>All tokens in the same frame</td><td>The token at the same spot in every frame</td></tr>
              <tr><td>Sequence length</td><td>32 × 32 = 1,024 tokens</td><td>16 tokens (one per frame)</td></tr>
              <tr><td>Learns</td><td>Shapes, layout, what is next to what</td><td>Motion, and keeping things the same over time</td></tr>
              <tr><td>Paper boat example</td><td>The sail is on top of the boat</td><td>The boat stays white in every frame</td></tr>
            </tbody>
          </table>
          <p>Spatial attention is the same attention that image models use. Temporal attention is the new part for video. It is the main reason the frames agree with each other.</p>
          <p><strong>Factorised attention</strong> means doing the two parts one after the other: first spatial, then temporal. After both, information from any token can reach any other token in two hops. The model repeats this in many layers.</p>
          <p>There is one weak point. Temporal attention looks at a fixed spot. A fast boat leaves that spot after a few frames. Stacked layers help, because spatial attention moves information sideways between hops. Still, big fast motion is harder for factorised attention.</p>
        </div>
        <div class="lc-card">
          <h3>Full 3D attention</h3>
          <p>The other choice is <strong>full 3D attention</strong>. Every token looks at every token in every frame, all at once. A token in frame 3 can look straight at a different spot in frame 9. This handles big motion well. Many recent large video models use full 3D attention, often with tricks to save memory. Check each model's docs for its design.</p>
          <p>The problem is cost. Attention scores every <strong>pair</strong> of query and key tokens. With n tokens, that is n × n pairs.</p>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Formula</th><th>16 frames of 32 × 32</th><th>32 frames of 32 × 32</th></tr></thead>
            <tbody>
              <tr><td>Full 3D</td><td>(T × H × W)²</td><td>268,435,456</td><td>1,073,741,824</td></tr>
              <tr><td>Spatial only</td><td>T × (H × W)²</td><td>16,777,216</td><td>33,554,432</td></tr>
              <tr><td>Temporal only</td><td>(H × W) × T²</td><td>262,144</td><td>1,048,576</td></tr>
              <tr><td>Factorised (both)</td><td>spatial + temporal</td><td>17,039,360</td><td>34,603,008</td></tr>
            </tbody>
          </table>
          <p>Look at the 16-frame column. Factorised attention needs about 16 times fewer pairs than full 3D attention. Now double the frames. Full attention costs 4 times as much. Factorised attention costs only about 2 times as much. That is why long clips are so expensive with full attention.</p>
        </div>
        <div class="lc-card">
          <h3>How the code splits the work</h3>
          <p>In code, factorised attention is mostly a <strong>reshape</strong>: you change how the same numbers are grouped. For spatial attention, every frame becomes its own short sequence. For temporal attention, every spot becomes its own short sequence. We use a small clip of 16 frames and 8 × 8 tokens per frame. Part 3 in the code editor below does the reshape with NumPy. Part 4 runs real PyTorch attention layers on it.</p>
          <p>The spatial step runs 16 sequences of 64 tokens. The temporal step runs 64 sequences of 16 tokens. No sequence is ever 1,024 tokens long. PyTorch does not run in the browser, so copy Part 4 to your own computer to run it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which attention does it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each job into the kind of attention that does it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="spatial" data-label="Spatial attention"></div>
              <div data-sorter-target="bucket" data-bucket="temporal" data-label="Temporal attention"></div>
              <div data-sorter-target="bucket" data-bucket="full" data-label="Full 3D attention"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="spatial" data-why="The sail and the boat are in the same frame. Spatial attention connects tokens inside one frame.">Puts the sail on top of the boat in frame 5</li>
              <li data-bucket="temporal" data-why="Temporal attention compares the same spot across frames, so it can keep a colour steady.">Keeps the boat white in the same spot from frame 1 to frame 16</li>
              <li data-bucket="full" data-why="Only full 3D attention links a token to a different spot in a different frame in one step.">Lets a token in frame 3 look at a different spot in frame 9</li>
              <li data-bucket="spatial" data-why="Image models only have one frame, so they only need spatial attention.">The same kind of attention that image models use</li>
              <li data-bucket="full" data-why="Full attention scores every pair of tokens: (T × H × W) squared.">Has the highest cost of the three</li>
              <li data-bucket="temporal" data-why="Each temporal sequence has one token per frame, so its cost grows with the frames squared.">Works on short sequences with one token per frame</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has 4 parts. Part 1 makes random tokens for 4 frames of 3 × 3 tokens and shows the spatial and temporal weights for one token. Part 2 prints the cost of each kind of attention. Part 3 does the spatial and temporal reshape. Part 4 is the PyTorch version.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check that the spatial weights and the temporal weights each add up to 1.</li>
            <li>In Part 1, change <code>t, r, c = 2, 1, 1</code> to <code>0, 0, 0</code>. Now the token is in the corner of the first frame.</li>
            <li>In Part 2, change <code>cost(16, 32, 32)</code> to <code>cost(64, 32, 32)</code>. How much cheaper is factorised attention now?</li>
            <li>In Part 2, try <code>cost(16, 64, 64)</code>. Bigger frames make the spatial part grow 16 times, because it grows with (H × W) squared.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Spatial attention makes each frame look right, and temporal attention makes the frames agree. Splitting attention into these two parts is much cheaper than full 3D attention, but full attention handles big motion better.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Spatial and temporal attention on a tiny grid of video tokens. This code has 4 parts.
        import numpy as np

        np.random.seed(42)

        # ── Part 1: one token's spatial and temporal weights ──
        print("== Part 1: one token's spatial and temporal weights ==")
        T, H, W, D = 4, 3, 3, 8               # 4 frames, 3x3 tokens per frame, 8 numbers per token
        tokens = np.random.randn(T, H, W, D)

        def softmax(x):
            e = np.exp(x - x.max())
            return e / e.sum()

        def attend(query, keys):
            """Score every key against the query, then turn the scores into weights."""
            scores = keys @ query / np.sqrt(D)
            return softmax(scores)

        t, r, c = 2, 1, 1                     # our token: frame 2, middle of the grid
        me = tokens[t, r, c]

        # Spatial attention: look at all tokens in the SAME frame
        spatial = attend(me, tokens[t].reshape(-1, D))
        print(f"Spatial: frame {t}, {spatial.size} tokens")
        for row in spatial.reshape(H, W):
            print("  " + "  ".join(f"{w:.2f}" for w in row))
        print(f"  weights add up to {spatial.sum():.2f}")

        # Temporal attention: look at the SAME position in every frame
        temporal = attend(me, tokens[:, r, c])
        print(f"\nTemporal: position ({r}, {c}), {temporal.size} tokens")
        for f, w in enumerate(temporal):
            print(f"  frame {f}: {w:.2f} " + "#" * round(w * 30))

        # ── Part 2: the cost of each kind of attention ──
        print("\n== Part 2: the cost of each kind of attention ==")
        # How many query-key pairs each kind of attention must score
        def cost(T, H, W):
            n = T * H * W
            full = n * n                      # every token looks at every token
            spatial = T * (H * W) ** 2        # each frame on its own
            temporal = (H * W) * T ** 2       # each position on its own
            print(f"\n{T} frames of {H}x{W} = {n:,} tokens")
            print(f"  full 3D attention: {full:>14,} pairs")
            print(f"  spatial only:      {spatial:>14,} pairs")
            print(f"  temporal only:     {temporal:>14,} pairs")
            print(f"  spatial + temporal:{spatial + temporal:>14,} pairs")
            print(f"  factorised is {full / (spatial + temporal):.1f}x cheaper")

        cost(T, H, W)
        cost(16, 32, 32)

        # ── Part 3: factorised attention is mostly a reshape ──
        print("\n== Part 3: factorised attention is mostly a reshape ==")
        B, T2, N, D2 = 1, 16, 64, 32          # 16 frames, 8x8 = 64 tokens per frame
        x = np.random.randn(B, T2, N, D2)
        s = x.reshape(B * T2, N, D2)          # spatial: one short sequence per frame
        t2 = s.reshape(B, T2, N, D2).transpose(0, 2, 1, 3).reshape(B * N, T2, D2)
        print("spatial sequences: ", s.shape, "(sequences, tokens, numbers)")
        print("temporal sequences:", t2.shape)
        print("same token, two views:", np.allclose(s[5, 7], t2[7, 5]))

        # ── Part 4: real attention layers in PyTorch (run this part on your own computer) ──
        print("\n== Part 4: real attention layers in PyTorch ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            B, T, N, D = 1, 16, 64, 32          # 16 frames, 8x8 = 64 tokens per frame, 32 numbers each
            x = torch.randn(B, T, N, D)
            spatial_attn = nn.MultiheadAttention(D, num_heads=4, batch_first=True)
            temporal_attn = nn.MultiheadAttention(D, num_heads=4, batch_first=True)

            # Spatial: each frame is its own short sequence of 64 tokens
            s = x.reshape(B * T, N, D)
            s, _ = spatial_attn(s, s, s)
            print("spatial sequences:", s.shape)

            # Temporal: each position is its own short sequence of 16 tokens
            t = s.reshape(B, T, N, D).transpose(1, 2).reshape(B * N, T, D)
            t, _ = temporal_attn(t, t, t)
            print("temporal sequences:", t.shape)

        # Try it: in Part 1 change t, r, c. In Part 2 change cost(16, 32, 32) to cost(64, 32, 32).
      PYTHON
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Diffusion Transformers (DiT)</h1>
        </div>
        <p class="lc-lead">The part of a diffusion model that guesses the noise is called the <strong>denoiser</strong>. Older models used a U-Net for this job. Most large video models now use a <strong>Diffusion Transformer</strong>, or <strong>DiT</strong>. In this lesson, you will learn how a DiT cuts a video into spacetime patches. You will see how it takes in the timestep and the text. You will also learn why transformers grow so well.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A noisy video latent is cut into spacetime patches. Each patch becomes a token with a position. The tokens pass through N DiT blocks. Each block has adaLN, which takes the timestep, then self-attention, then cross-attention, which takes the text, then an MLP. Unpatchify turns the tokens back into predicted noise with the same shape as the latent.">
            <defs><marker id="tv7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="80" width="110" height="70" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="65" y="106" font-weight="700" fill="#f9a8d4">noisy latent</text>
              <text x="65" y="126" font-size="11.5" fill="#9b99b8">(T, H, W, C)</text>
              <line x1="122" y1="115" x2="136" y2="115" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv7a)"/>
              <rect x="140" y="80" width="115" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="197" y="106" font-weight="700" fill="#fcd34d">patchify</text>
              <text x="197" y="126" font-size="11.5" fill="#9b99b8">(1, 2, 2) boxes</text>
              <line x1="257" y1="115" x2="271" y2="115" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv7a)"/>
              <rect x="275" y="80" width="110" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="330" y="106" font-weight="700" fill="#93c5fd">tokens</text>
              <text x="330" y="126" font-size="11.5" fill="#9b99b8">+ position (t, y, x)</text>
              <line x1="387" y1="115" x2="401" y2="115" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv7a)"/>
              <rect x="440" y="6" width="130" height="30" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="505" y="26" font-size="12" fill="#67e8f9">timestep (noise level)</text>
              <line x1="505" y1="37" x2="505" y2="60" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv7a)"/>
              <rect x="405" y="48" width="200" height="182" rx="12" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <rect x="420" y="62" width="170" height="28" rx="6" fill="#27274e" stroke="#22d3ee"/><text x="505" y="81" font-size="12">adaLN: scale and shift</text>
              <rect x="420" y="100" width="170" height="28" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="505" y="119" font-size="12">self-attention (all tokens)</text>
              <rect x="420" y="138" width="170" height="28" rx="6" fill="#27274e" stroke="#10b981"/><text x="505" y="157" font-size="12">cross-attention to text</text>
              <rect x="420" y="176" width="170" height="28" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="505" y="195" font-size="12">MLP (feed-forward)</text>
              <text x="505" y="222" font-size="12" font-weight="700" fill="#c4b5fd">DiT block, repeated N times</text>
              <rect x="275" y="226" width="110" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="330" y="244" font-size="12" fill="#6ee7b7">text prompt</text>
              <text x="330" y="261" font-size="11" fill="#9b99b8">via text encoder</text>
              <path d="M330,224 L330,190 L395,190 L395,152 L416,152" fill="none" stroke="#10b981" stroke-width="1.5" marker-end="url(#tv7a)"/>
              <line x1="607" y1="115" x2="621" y2="115" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv7a)"/>
              <rect x="625" y="80" width="125" height="70" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="687" y="100" font-weight="700" fill="#f9a8d4">unpatchify</text>
              <text x="687" y="119" font-size="11.5">predicted noise</text>
              <text x="687" y="137" font-size="11.5" fill="#9b99b8">(T, H, W, C)</text>
              <text x="130" y="200" font-size="11.5" fill="#9b99b8">Same shape in and out.</text>
              <text x="130" y="218" font-size="11.5" fill="#9b99b8">This runs once per</text>
              <text x="130" y="236" font-size="11.5" fill="#9b99b8">denoising step.</text>
            </g>
          </svg>
          <figcaption>One denoising step with a DiT. The noisy latent becomes a list of tokens. The tokens pass through the same block many times. Then they are put back together as the predicted noise.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From U-Net to transformer</h3>
          <p>A <strong>U-Net</strong> is a convolutional network shaped like the letter U. It shrinks the picture step by step, then grows it back. Early image and video diffusion models used U-Nets. Video versions often added temporal layers to an image U-Net.</p>
          <p>A <strong>transformer</strong> is the network behind large language models. It works on a list of tokens and uses attention. Peebles and Xie wrote the paper "Scalable Diffusion Models with Transformers". It showed that a transformer can be the denoiser for images. They called it DiT.</p>
          <p>Video followed. OpenAI's report on Sora described a diffusion transformer that works on <strong>spacetime patches</strong>. Many open video models, such as Wan and HunyuanVideo, also use DiT designs. Details differ from model to model, so check each model's docs.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>U-Net denoiser</th><th>DiT denoiser</th></tr></thead>
            <tbody>
              <tr><td>Main parts</td><td>Convolutions, plus some attention</td><td>The same transformer block, repeated</td></tr>
              <tr><td>Input</td><td>A grid of pixels or latents</td><td>A list of patch tokens</td></tr>
              <tr><td>Different sizes and lengths</td><td>Possible, but harder</td><td>Just more or fewer tokens</td></tr>
              <tr><td>Making it bigger</td><td>Many design choices</td><td>Add more blocks or make tokens wider</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Spacetime patches</h3>
          <p>A DiT does not see pixels. It works on a compressed <strong>latent</strong>: a smaller grid of numbers that stands for the video. You will see how latents are made in the next lesson.</p>
          <p>A <strong>spacetime patch</strong> is a small box cut from the latent. It covers a few frames, a few rows and a few columns. We write its size as (pt, ph, pw): frames, height, width.</p>
          <p>Worked example: a latent has 16 frames of 32 × 32, with 16 channels. Use patches of (1, 2, 2).</p>
          <ul class="lc-list">
            <li>Number of tokens: (16 ÷ 1) × (32 ÷ 2) × (32 ÷ 2) = 16 × 16 × 16 = 4,096 tokens.</li>
            <li>Numbers in each patch: 1 × 2 × 2 × 16 = 64 numbers.</li>
            <li>A linear layer turns those 64 numbers into one token of the model's width, here 384.</li>
          </ul>
          <p>Each token also gets its <strong>position</strong>: which frame, which row and which column. Without it, the model could not tell frame 1 from frame 16. Many models use a 3D form of rotary position embedding (RoPE) for this.</p>
          <p>In PyTorch, one 3D convolution can do both jobs. Its kernel and stride are equal to the patch size. Part 4 in the code editor below does this.</p>
          <p>The 16 × 16 × 16 grid of patches becomes a list of 4,096 tokens, each with 384 numbers. At the end of the model, <strong>unpatchify</strong> does the opposite and rebuilds the latent shape. PyTorch does not run in the browser, so Part 1 does patchify and unpatchify with NumPy. Copy Part 4 to your own computer to run it.</p>
        </div>
        <div class="lc-card">
          <h3>Conditioning on the timestep and the text</h3>
          <p><strong>Conditioning</strong> means giving the model extra information that guides its output. A DiT needs two kinds:</p>
          <table class="lc-table">
            <thead><tr><th>What</th><th>How it goes in</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Timestep</td><td><strong>adaLN</strong> (adaptive layer norm): the timestep is turned into a vector. Small layers make a <em>scale</em> and a <em>shift</em> from it. These change the tokens inside every block.</td><td>The model must clean hard at very noisy steps and gently near the end.</td></tr>
              <tr><td>Text prompt</td><td><strong>Cross-attention</strong>: the video tokens look at the text tokens and take in what they need.</td><td>So the clip shows a paper boat, not a car.</td></tr>
            </tbody>
          </table>
          <p>Layer norm first makes each token's numbers have a mean of 0 and a spread of 1. adaLN then multiplies by the scale and adds the shift. Take a normalised value of 1.0, with scale 1.9 and shift -0.9. It becomes 1.0 × 1.9 - 0.9 = 1.0. Part 2 in the code editor shows adaLN on one token.</p>
          <p>Some models do not use cross-attention. Instead, they put text tokens and video tokens into one list, and run one joint attention over both. Both ways let the words guide every part of the clip.</p>
        </div>
        <div class="lc-card">
          <h3>Why transformers scale</h3>
          <p><strong>Scaling</strong> means making a model bigger and training it on more data with more compute. Transformers have scaled well in language, and DiT showed the same for diffusion. In the DiT paper, models that used more compute gave better images.</p>
          <ul class="lc-list">
            <li><strong>One simple block:</strong> to grow the model, you add blocks or make tokens wider.</li>
            <li><strong>Any size of video:</strong> a longer or bigger clip just gives more tokens.</li>
            <li><strong>Fast on GPUs:</strong> attention and linear layers are mostly matrix maths, which GPUs do very fast.</li>
          </ul>
          <p>Patch size is a trade-off. Smaller patches keep finer detail but make more tokens. Part 3 in the code editor prints this for a 16 × 32 × 32 latent. With (1, 2, 2) patches, you get 4,096 tokens and 16,777,216 attention pairs. (1, 4, 4) patches give only 1,024 tokens and 1,048,576 pairs.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one step through a DiT</h3>
          <p>Follow one denoising step for the paper boat prompt.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Inputs">A noisy latent of 16 frames (32 × 32 × 16 each). The timestep 900. The paper boat prompt.</li>
              <li data-kind="tool" data-label="Patchify">Cut the latent into (1, 2, 2) boxes. This gives 4,096 tokens, and each one gets its frame, row and column position.</li>
              <li data-kind="thought" data-label="adaLN">The timestep 900 means "very noisy". It becomes a scale and a shift that change the tokens in every block.</li>
              <li data-kind="thought" data-label="Self-attention">Every token looks at the other video tokens. Frames start to agree on where the boat is.</li>
              <li data-kind="thought" data-label="Cross-attention">The video tokens look at the text tokens. "paper boat" and "rainy street" guide what appears.</li>
              <li data-kind="check" data-label="Repeat">The tokens pass through an MLP, then through the next block. This repeats for all N blocks.</li>
              <li data-kind="result" data-label="Unpatchify">The tokens are put back into the latent shape. This is the predicted noise.</li>
              <li data-kind="answer" data-label="Next step">Take away part of that noise. Run the whole DiT again with a smaller timestep.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has 4 parts. Part 1 cuts a small latent into spacetime patches and checks that unpatchify gives back the same latent. Part 2 shows adaLN. Part 3 shows the cost of different patch sizes. Part 4 is the PyTorch patch embedding.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check that every patch size prints <code>True</code> for "same after unpatchify".</li>
            <li>In Part 1, add <code>(2, 4, 4)</code> to the list of patches. How many tokens, and how many numbers in each?</li>
            <li>In Part 2, change the timesteps <code>[900, 100]</code> to <code>[500, 0]</code>. At timestep 0, the scale is 1 and the shift is 0, so adaLN changes nothing.</li>
            <li>In Part 3, change <code>T, H, W = 16, 32, 32</code> to <code>32, 32, 32</code>. The attention pairs grow 4 times.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A DiT turns a video latent into a list of spacetime patch tokens and runs the same transformer block on them many times. The timestep goes in through adaLN, and the text goes in through attention. A bigger model or a longer clip just means more blocks or more tokens.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Spacetime patches, adaLN and patch cost. This code has 4 parts.
        import numpy as np

        np.random.seed(42)

        # ── Part 1: patchify and unpatchify ──
        print("== Part 1: patchify and unpatchify ==")
        def patchify(latent, pt, ph, pw):
            """(T, H, W, C) -> (number of tokens, numbers per token)."""
            T, H, W, C = latent.shape
            x = latent.reshape(T // pt, pt, H // ph, ph, W // pw, pw, C)
            x = x.transpose(0, 2, 4, 1, 3, 5, 6)              # group each box's numbers together
            return x.reshape(-1, pt * ph * pw * C)

        def unpatchify(tokens, shape, pt, ph, pw):
            """The exact opposite: tokens back to (T, H, W, C)."""
            T, H, W, C = shape
            x = tokens.reshape(T // pt, H // ph, W // pw, pt, ph, pw, C)
            x = x.transpose(0, 3, 1, 4, 2, 5, 6)
            return x.reshape(T, H, W, C)

        # A small latent: 4 frames, 8x8, 4 channels
        latent = np.random.randn(4, 8, 8, 4)
        for patch in [(1, 2, 2), (2, 2, 2), (1, 4, 4)]:
            tokens = patchify(latent, *patch)
            back = unpatchify(tokens, latent.shape, *patch)
            print(f"patch {patch}: {tokens.shape[0]:3d} tokens x {tokens.shape[1]:3d} numbers, "
                  f"same after unpatchify: {np.allclose(back, latent)}")

        # ── Part 2: timestep conditioning with adaLN ──
        print("\n== Part 2: timestep conditioning with adaLN ==")
        # The timestep picks a scale and a shift.
        token = np.array([2.0, -1.0, 0.5, 3.5])
        normed = (token - token.mean()) / token.std()        # layer norm: mean 0, spread 1
        for t in [900, 100]:                                  # 900 = very noisy, 100 = nearly clean
            scale = 1 + t / 1000                              # in a real DiT, small layers learn these
            shift = 0.0 - t / 1000
            out = normed * scale + shift
            print(f"timestep {t}: scale {scale:.1f}, shift {shift:.1f} ->", np.round(out, 2))

        # ── Part 3: patch size and attention cost ──
        print("\n== Part 3: patch size and attention cost ==")
        # More patches means more tokens. Attention cost grows with tokens squared.
        T, H, W = 16, 32, 32
        for patch in [(1, 2, 2), (2, 2, 2), (1, 4, 4)]:
            n = (T // patch[0]) * (H // patch[1]) * (W // patch[2])
            print(f"latent {T}x{H}x{W}, patch {patch}: {n:5,} tokens, {n * n:>12,} attention pairs")

        # ── Part 4: patch embedding with a 3D convolution in PyTorch (run this part on your own computer) ──
        print("\n== Part 4: patch embedding in PyTorch ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            latent = torch.randn(1, 16, 16, 32, 32)     # (B, C, T, H, W)
            patch_embed = nn.Conv3d(16, 384, kernel_size=(1, 2, 2), stride=(1, 2, 2))
            x = patch_embed(latent)                      # one output per (1, 2, 2) box
            print(x.shape)                               # (1, 384, 16, 16, 16)
            tokens = x.flatten(2).transpose(1, 2)        # (B, tokens, width)
            print(tokens.shape)                          # (1, 4096, 384)

        # Try it: in Part 1 add the patch (2, 4, 4). In Part 2 change the timesteps to 500 and 0.
      PYTHON
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Video Latents and Compression</h1>
        </div>
        <p class="lc-lead">Raw video is huge. A diffusion model that worked on every pixel would be far too slow. So video models first squeeze the clip into a much smaller <strong>latent</strong>. They do all the denoising there. Only at the end do they turn it back into pixels. In this lesson, you will learn how a <strong>video VAE</strong> does this squeezing. You will also work out latent sizes yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A clip of 81 frames at 480 by 832 pixels with 3 colours goes into the VAE encoder. The encoder shrinks time 4 times and height and width 8 times. The latent is 21 by 60 by 104 by 16. The diffusion model works on this latent. The VAE decoder turns it back into 81 frames of pixels. Bars show 97.0 million numbers for the raw clip and 2.1 million for the latent.">
            <defs><marker id="tv8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="130" height="80" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="75" y="58" font-weight="700" fill="#93c5fd">video clip</text>
              <text x="75" y="78" font-size="11.5">81 x 480 x 832</text>
              <text x="75" y="96" font-size="11.5" fill="#9b99b8">x 3 colours</text>
              <line x1="142" y1="70" x2="160" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv8a)"/>
              <rect x="164" y="30" width="130" height="80" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="229" y="58" font-weight="700" fill="#fcd34d">VAE encoder</text>
              <text x="229" y="78" font-size="11.5">time ÷ 4</text>
              <text x="229" y="96" font-size="11.5">height, width ÷ 8</text>
              <line x1="296" y1="70" x2="314" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv8a)"/>
              <rect x="318" y="20" width="124" height="100" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="380" y="46" font-weight="700" fill="#c4b5fd">latent</text>
              <text x="380" y="66" font-size="11.5">21 x 60 x 104</text>
              <text x="380" y="84" font-size="11.5" fill="#9b99b8">x 16 channels</text>
              <text x="380" y="106" font-size="11" fill="#c4b5fd">diffusion works here</text>
              <line x1="444" y1="70" x2="462" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv8a)"/>
              <rect x="466" y="30" width="130" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="531" y="58" font-weight="700" fill="#6ee7b7">VAE decoder</text>
              <text x="531" y="78" font-size="11.5">time x 4</text>
              <text x="531" y="96" font-size="11.5">height, width x 8</text>
              <line x1="598" y1="70" x2="616" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv8a)"/>
              <rect x="620" y="30" width="130" height="80" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="685" y="58" font-weight="700" fill="#93c5fd">video clip</text>
              <text x="685" y="78" font-size="11.5">81 x 480 x 832</text>
              <text x="685" y="96" font-size="11.5" fill="#9b99b8">x 3 colours</text>
              <text x="380" y="160" font-size="12" fill="#9b99b8">Time: frame 1 is kept alone, then every 4 frames become 1. So 81 = 1 + 4 x 20 frames give 1 + 20 = 21.</text>
              <g text-anchor="start" font-size="12">
                <text x="20" y="200">raw clip</text>
                <rect x="120" y="188" width="510" height="18" rx="3" fill="#3b82f6"/>
                <text x="638" y="202">97.0 M numbers</text>
                <text x="20" y="236">latent</text>
                <rect x="120" y="224" width="11" height="18" rx="3" fill="#8b5cf6"/>
                <text x="140" y="238">2.1 M numbers, about 46 times fewer</text>
                <text x="20" y="272">DiT tokens</text>
                <rect x="120" y="260" width="4" height="18" rx="1" fill="#ec4899"/>
                <text x="130" y="274">32,760 tokens with (1, 2, 2) patches, 64 numbers each</text>
              </g>
              <text x="380" y="314" font-size="11.5" fill="#9b99b8">Typical numbers for several open video models. Each model has its own, so check its docs.</text>
            </g>
          </svg>
          <figcaption>A video VAE shrinks a clip about 46 times. The diffusion model only ever works on the small latent. The decoder turns the final latent back into pixels.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why not work on pixels?</h3>
          <p>Take a short clip: 81 frames at 480 × 832 pixels, with 3 colour values per pixel.</p>
          <p>81 × 480 × 832 × 3 = 97,044,480 numbers. That is about 97 million numbers for a clip of a few seconds.</p>
          <p>Earlier in this course you saw that attention cost grows with the number of tokens squared. A model that cleaned 97 million numbers, many times, for every clip, would need far too much memory and time.</p>
          <p>The fix is <strong>latent diffusion</strong>. You train a separate model to compress video. Then the diffusion model works only on the compressed version. Most of the numbers in raw video are not needed. Neighbouring pixels are very similar, and neighbouring frames are very similar too.</p>
        </div>
        <div class="lc-card">
          <h3>The video VAE</h3>
          <p>A <strong>VAE</strong> (variational autoencoder) is a network with two halves:</p>
          <ul class="lc-list">
            <li>The <strong>encoder</strong> squeezes the video into a small latent.</li>
            <li>The <strong>decoder</strong> turns the latent back into a video.</li>
          </ul>
          <p>The VAE is trained first, on its own. Its goal is that the decoded video looks almost the same as the original. After that, it is frozen: its numbers stop changing. The diffusion model is then trained on latents made by this encoder.</p>
          <p>An image VAE only shrinks height and width. A <strong>video VAE</strong> also shrinks time. It uses 3D convolutions, which slide over frames as well as rows and columns. Many video VAEs are <strong>causal</strong>. The first frame is encoded on its own. Later frames only look at earlier ones. So a single image can be encoded as a one-frame video. This lets one model learn from both images and videos.</p>
        </div>
        <div class="lc-card">
          <h3>Latent size arithmetic</h3>
          <p>Several open video models use numbers like these. Height and width shrink 8 times. Time shrinks 4 times, after the first frame. Each latent position has 16 <strong>channels</strong> (numbers). Always check the docs of the model you use.</p>
          <ul class="lc-list">
            <li>Frames: the clip must have 1 + 4k frames. 81 = 1 + 4 × 20, so the latent has 1 + 20 = 21 frames.</li>
            <li>Height: 480 ÷ 8 = 60. Width: 832 ÷ 8 = 104.</li>
            <li>Latent size: 21 × 60 × 104 × 16 = 2,096,640 numbers.</li>
            <li>97,044,480 ÷ 2,096,640 ≈ 46. The latent is about 46 times smaller.</li>
          </ul>
          <p>Part 2 in the code editor below turns this rule into a small function, <code>latent_shape</code>. For 81 frames at 480 × 832, it gives (21, 60, 104, 16). For a single image, it gives (1, 60, 104, 16).</p>
          <p>Then the DiT cuts the latent into (1, 2, 2) patches: 21 × 30 × 52 = 32,760 tokens. That is still a lot, but it is something a large GPU can handle.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Shape</th><th>Size</th></tr></thead>
            <tbody>
              <tr><td>Raw clip</td><td>81 × 480 × 832 × 3</td><td>97,044,480 numbers</td></tr>
              <tr><td>Latent</td><td>21 × 60 × 104 × 16</td><td>2,096,640 numbers</td></tr>
              <tr><td>DiT tokens</td><td>21 × 30 × 52</td><td>32,760 tokens of 64 numbers each</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>What compression costs</h3>
          <p>Compression is a trade-off. If the VAE squeezes too hard, some detail cannot come back. The decoder then has to guess it.</p>
          <table class="lc-table">
            <thead><tr><th>More compression</th><th>Less compression</th></tr></thead>
            <tbody>
              <tr><td>Fewer tokens, so faster and cheaper</td><td>More tokens, so slower and more memory</td></tr>
              <tr><td>Longer clips fit on one GPU</td><td>Shorter clips fit on one GPU</td></tr>
              <tr><td>Small text, hands and far-away faces can blur</td><td>Fine detail survives better</td></tr>
              <tr><td>Fast motion can smear</td><td>Fast motion stays sharper</td></tr>
            </tbody>
          </table>
          <p>Part 1 in the code editor shows the smear in a tiny way. It shrinks the moving square clip by simple averaging, then grows it back. The square becomes a faint, wide blob, because 4 frames of motion were mixed into one. A real VAE <em>learns</em> its encoder and decoder, so it keeps much more detail. Some newer VAEs compress even more, using more channels to keep detail.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: who does what?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each job into the part of a text-to-video system that does it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="enc" data-label="VAE encoder"></div>
              <div data-sorter-target="bucket" data-bucket="dit" data-label="Diffusion model (DiT)"></div>
              <div data-sorter-target="bucket" data-bucket="dec" data-label="VAE decoder"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="enc" data-why="During training, real clips are encoded into latents. The DiT learns on those latents.">Turns each training clip into a latent</li>
              <li data-bucket="enc" data-why="The encoder shrinks the clip: 4 times in time and 8 times in height and width.">Turns 81 frames into 21 latent frames</li>
              <li data-bucket="dit" data-why="The diffusion model starts from noise in latent space and cleans it step by step.">Removes noise from the latent, many times</li>
              <li data-bucket="dit" data-why="The text guides the denoising, so it goes into the diffusion model.">Reads the text prompt through attention</li>
              <li data-bucket="dec" data-why="The decoder grows the latent back to full size at the very end.">Turns the final latent into 480 × 832 frames</li>
              <li data-bucket="dec" data-why="Detail that the latent could not hold must be filled in when the decoder rebuilds the pixels.">Fills in fine detail when it rebuilds the pixels</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has 2 parts. Part 1 makes a toy "VAE" that shrinks a 9-frame clip by averaging, then grows it back by copying. Part 2 works out latent sizes for two real-sized clips and a single image.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, compare frame 4 before and after. The decoded square is a wide, faint blob.</li>
            <li>In Part 1, change <code>S, K = 2, 4</code> to <code>S, K = 2, 2</code>. The latent gets bigger (80 numbers), and the error gets smaller.</li>
            <li>Now try <code>S, K = 4, 4</code>. The latent has only 12 numbers, and the error grows. Then try <code>1, 1</code>: no compression, and no error.</li>
            <li>In Part 2, add your own clip to the last list, for example <code>(49, 720, 1280)</code>. How many latent frames does it have?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A video VAE shrinks a clip in time and space, often about 4 times in time and 8 times in height and width. Diffusion happens on this small latent, and the decoder turns it back into pixels. This is what makes video generation possible on today's hardware.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Video latents: shrink a clip in space and time, then grow it back. This code has 2 parts.
        # A real video VAE LEARNS how to do this. Our toy just averages and copies.
        import numpy as np

        # ── Part 1: a toy video "VAE" ──
        print("== Part 1: a toy video VAE ==")
        def make_video(T=6, H=8, W=8, size=2, speed=1):
            """A bright square moving right. Shape (T, H, W), values 0.0 or 1.0."""
            video = np.zeros((T, H, W))
            for t in range(T):
                col = t * speed
                video[t, 3:3 + size, col:col + size] = 1.0
            return video

        S, K = 2, 4      # shrink 2x in height and width, 4x in time

        def encode(video):
            """Keep frame 0 alone, then average each group of K frames and each SxS block."""
            groups = [video[:1]] + [video[i:i + K] for i in range(1, len(video), K)]
            small_t = np.stack([g.mean(axis=0) for g in groups])
            T, H, W = small_t.shape
            return small_t.reshape(T, H // S, S, W // S, S).mean(axis=(2, 4))

        def decode(latent):
            """Copy each latent value back out to full size."""
            big = latent.repeat(S, axis=1).repeat(S, axis=2)
            return np.concatenate([big[:1]] + [np.repeat(big[i:i + 1], K, axis=0) for i in range(1, len(big))])

        video = make_video(T=9, H=8, W=8)          # 9 = 1 + 4 x 2 frames
        latent = encode(video)
        recon = decode(latent)
        print("video:", video.shape, video.size, "numbers")
        print("latent:", latent.shape, latent.size, "numbers")
        print(f"error after decode: {np.mean(np.abs(recon - video)):.3f}")
        for name, frame in [("frame 4, original", video[4]), ("frame 4, decoded", recon[4])]:
            print(name)
            for row in frame:
                print("  " + "".join("#" if v >= 0.5 else "+" if v > 0.1 else "." for v in row))

        # ── Part 2: latent size arithmetic ──
        print("\n== Part 2: latent size arithmetic ==")
        # Typical numbers; always check each model's docs.
        def latent_shape(frames, height, width, s=8, k=4, channels=16):
            """Video VAE size rule: frame 1 alone, then every k frames become 1."""
            return (1 + (frames - 1) // k, height // s, width // s, channels)

        print(latent_shape(81, 480, 832))     # a short clip
        print(latent_shape(1, 480, 832))      # a single image

        for frames, h, w in [(81, 480, 832), (1, 480, 832), (121, 720, 1280)]:
            lat = latent_shape(frames, h, w)
            raw = frames * h * w * 3
            print(f"{frames} frames {h}x{w}: raw {raw:,} -> latent {lat} = {np.prod(lat):,} ({raw / np.prod(lat):.0f}x fewer)")

        # Try it: in Part 1 change S, K to 2, 2 or 4, 4 or 1, 1 and compare the error.
        # In Part 2 add your own clip to the last list, for example (49, 720, 1280).
      PYTHON
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Text Conditioning for Video</h1>
        </div>
        <p class="lc-lead">A video model must make the clip <em>you</em> asked for, not just any clip. Your words reach the model through <strong>text conditioning</strong>. A text encoder turns the prompt into vectors. Then cross-attention lets every part of every frame read those vectors. In this lesson you will see how that works, and how to write prompts that give the model what it needs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="The prompt goes through a tokenizer and a text encoder. This gives one text vector per token, used as keys and values. The noisy video tokens are the queries. Cross-attention mixes word information into every video token. This happens in every block at every denoising step.">
          <defs><marker id="tv9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
          <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
          <rect x="10" y="40" width="200" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/><text x="110" y="62" font-weight="700" fill="#93c5fd">Prompt</text><text x="110" y="82" font-size="11.5">a paper boat sailing</text><text x="110" y="98" font-size="11.5">down a rainy street ...</text>
          <line x1="212" y1="75" x2="236" y2="75" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv9a)"/>
          <rect x="240" y="40" width="120" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="300" y="70" font-weight="700" fill="#c4b5fd">Tokenizer</text><text x="300" y="90" font-size="11" fill="#9b99b8">text to token IDs</text>
          <line x1="362" y1="75" x2="386" y2="75" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv9a)"/>
          <rect x="390" y="40" width="140" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="460" y="70" font-weight="700" fill="#c4b5fd">Text encoder</text><text x="460" y="90" font-size="11" fill="#9b99b8">for example T5</text>
          <line x1="532" y1="75" x2="556" y2="75" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv9a)"/>
          <rect x="560" y="40" width="190" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/><text x="655" y="60" font-weight="700" fill="#fcd34d">Text vectors</text>
          <rect x="574" y="70" width="22" height="30" rx="3" fill="#1f1f44" stroke="#f59e0b"/>
          <rect x="602" y="70" width="22" height="30" rx="3" fill="#1f1f44" stroke="#f59e0b"/>
          <rect x="630" y="70" width="22" height="30" rx="3" fill="#1f1f44" stroke="#f59e0b"/>
          <rect x="658" y="70" width="22" height="30" rx="3" fill="#1f1f44" stroke="#f59e0b"/>
          <rect x="686" y="70" width="22" height="30" rx="3" fill="#1f1f44" stroke="#f59e0b"/>
          <rect x="714" y="70" width="22" height="30" rx="3" fill="#1f1f44" stroke="#f59e0b"/>
          <text x="655" y="128" font-size="11" fill="#9b99b8">one vector per token</text>
          <path d="M655,136 L655,166 L400,166 L400,192" fill="none" stroke="#f59e0b" stroke-width="1.5" marker-end="url(#tv9a)"/>
          <rect x="458" y="146" width="140" height="18" rx="4" fill="#1f1f44"/><text x="528" y="159" font-size="11" fill="#fcd34d">keys and values</text>
          <rect x="10" y="196" width="200" height="90" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
          <rect x="22" y="212" width="52" height="40" rx="3" fill="#27274e" stroke="#3b82f6"/>
          <rect x="32" y="222" width="52" height="40" rx="3" fill="#27274e" stroke="#3b82f6"/>
          <rect x="42" y="232" width="52" height="40" rx="3" fill="#27274e" stroke="#3b82f6"/>
          <text x="150" y="228" font-weight="700" fill="#93c5fd">Video tokens</text><text x="150" y="248" font-size="11" fill="#9b99b8">noisy latent</text><text x="150" y="266" font-size="11" fill="#93c5fd">queries</text>
          <line x1="212" y1="241" x2="296" y2="241" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv9a)"/>
          <rect x="300" y="196" width="200" height="90" rx="10" fill="#27274e" stroke="#ec4899" stroke-width="2"/><text x="400" y="228" font-weight="700" fill="#f9a8d4">Cross-attention</text><text x="400" y="250" font-size="11">each video token asks:</text><text x="400" y="266" font-size="11">which words matter here?</text>
          <line x1="502" y1="241" x2="556" y2="241" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv9a)"/>
          <rect x="560" y="196" width="190" height="90" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="655" y="236" font-weight="700" fill="#6ee7b7">Updated video tokens</text><text x="655" y="256" font-size="11" fill="#9b99b8">now carry the prompt</text>
          <text x="380" y="316" font-size="12" fill="#9b99b8">This happens in every transformer block, at every denoising step.</text>
          </g></svg>
          <figcaption>The prompt becomes text vectors. Cross-attention mixes them into the video tokens, again and again, while the clip is denoised.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From words to vectors</h3>
          <p>The model cannot read letters. So the prompt goes through two steps first.</p>
          <ol class="lc-list">
            <li>A <strong>tokenizer</strong> splits the text into tokens and gives each token an ID number.</li>
            <li>A <strong>text encoder</strong> turns the IDs into vectors. A vector is a list of numbers. The encoder reads the whole prompt, so each vector also carries meaning from the words around it.</li>
          </ol>
          <p>The result is one vector per token. A large T5 encoder, for example, gives 4,096 numbers per token. So a prompt with 20 tokens becomes a table of shape (20, 4096).</p>
          <p>Many open video models use a T5 text encoder, a language model from Google. Some also use CLIP, which learned to match images and text. Some newer models use a multimodal language model instead. Check the model card to see which one a model uses.</p>
          <p>The text encoder is usually trained first, on its own. Then it is kept <strong>frozen</strong> while the video model trains. Frozen means its numbers do not change.</p>
        </div>
        <div class="lc-card">
          <h3>Cross-attention: video tokens read the prompt</h3>
          <p>Earlier in this course you met attention. In <strong>cross-attention</strong>, two different groups of tokens meet:</p>
          <ul class="lc-list">
            <li>The <strong>queries</strong> come from the video tokens. Each one asks: "what should I look like?"</li>
            <li>The <strong>keys</strong> and <strong>values</strong> come from the text vectors. The keys are matched with the query. The values carry the information that is mixed in.</li>
          </ul>
          <p>Here is one video token, the patch where the boat is. It scores three words. A bigger score means a better match.</p>
          <p>Part 1 in the code editor below works out these scores for the boat patch, step by step.</p>
          <p>The scores are 1.0, 0.15 and 0.1. Softmax turns them into the weights 0.55, 0.23 and 0.22. So the boat patch gives the most weight to "boat". It takes in mostly boat information. The weights add up to 1.</p>
          <p>Part 2 in the code editor does the same thing with six words and four patches. Run it to see every weight.</p>
          <p>Every video token does this, in every frame. All frames read the <em>same</em> text vectors. That helps the whole clip follow one prompt. In the latent example from earlier, 32,760 video tokens each look at every text token.</p>
          <p>Some models do not use a separate cross-attention step. They join the text tokens and the video tokens into one sequence. Then normal attention lets them all look at each other. The idea is the same: video tokens read the prompt.</p>
        </div>
        <div class="lc-card">
          <h3>What a good video prompt says</h3>
          <p>A video prompt needs more than an image prompt. It must also say what moves and how the camera moves. Split the running prompt into four parts:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Question it answers</th><th>From the running prompt</th></tr></thead>
            <tbody>
              <tr><td>Subject</td><td>Who or what is in the shot?</td><td>a paper boat</td></tr>
              <tr><td>Action</td><td>What happens over time?</td><td>sailing down a rainy street</td></tr>
              <tr><td>Camera</td><td>How does the view move?</td><td>slow camera pan</td></tr>
              <tr><td>Style</td><td>How does it look?</td><td>golden evening light</td></tr>
            </tbody>
          </table>
          <p>Some tips that help with most models:</p>
          <ul class="lc-list">
            <li>Give one main action per clip. Several actions in a few seconds often get mixed up.</li>
            <li>Use clear verbs for motion, such as "drifts", "spins" or "turns left".</li>
            <li>Say how fast things move, for example "slowly" or "quickly".</li>
            <li>Describe what you see, not feelings. "Rain drips from a blue umbrella" works better than "a sad mood".</li>
          </ul>
          <p>Many tools also accept a <strong>negative prompt</strong>. It lists things you do not want, such as "blurry, extra boats, text". Check your tool's docs, because not every model supports it.</p>
        </div>
        <div class="lc-card">
          <h3>Guidance: how strongly to follow the text</h3>
          <p>Most diffusion models use <strong>classifier-free guidance</strong>. At each step, the model makes two predictions. One uses your prompt. One uses an empty prompt (or the negative prompt).</p>
          <p>Then it pushes the result away from the empty-prompt guess and towards the prompt guess. A number called the <strong>guidance scale</strong> sets how hard it pushes.</p>
          <ul class="lc-list">
            <li>A low scale gives more natural motion, but the clip may ignore parts of the prompt.</li>
            <li>A high scale follows the words more closely. If it is too high, colours can look harsh and motion can look stiff.</li>
          </ul>
          <p>Good values differ for each model. Start with the default in the docs, then change it a little at a time.</p>
        </div>
        <div class="lc-card">
          <h3>Where the captions come from</h3>
          <p>A video model learns from millions of clips, each with a caption. But most videos online have short or missing captions. A title like "my holiday" says nothing about camera moves or lighting.</p>
          <p>So teams often <strong>re-caption</strong> their training clips. A vision-language model watches each clip and writes a long, detailed caption. OpenAI's Sora technical report described this method. It also said that short user prompts were expanded into longer ones by a language model.</p>
          <p>This explains a useful fact. If the model trained on detailed captions, detailed prompts match its training better. Many tools now offer a "prompt enhance" button that does this expansion for you.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from prompt to video</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of text conditioning in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">You write the prompt: subject, action, camera and style</li>
              <li data-order="2">The tokenizer splits the prompt into tokens with ID numbers</li>
              <li data-order="3">The frozen text encoder turns the tokens into text vectors</li>
              <li data-order="4">The model starts from random noise in latent space</li>
              <li data-order="5">In every block, video tokens use cross-attention to read the text vectors</li>
              <li data-order="6">After many denoising steps, the VAE decoder turns the latent into frames</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor runs cross-attention with NumPy. Part 1 scores three words for one patch. In Part 2, six words from the running prompt give the keys and values. Four video patches give the queries. Each vector has four hand-written numbers: boat, rain, street and light.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, check which word each patch looks at most. Check that each row of weights adds up to 1.</li>
            <li>In Part 2, remove "golden" and "light" from <code>words</code>, and remove their two rows from <code>text_vecs</code>. The sky patch now has no good word to read. Its weights spread out.</li>
            <li>In Part 2, change the puddle patch to <code>[0.2, 4.0, 0.5, 0.3]</code>. A stronger query gives sharper weights on "rainy".</li>
            <li>In Part 2, add a new word, such as <code>"umbrella"</code> with the vector <code>[0.0, 0.8, 0.0, 0.0]</code>. Which patch uses it?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A frozen text encoder turns the prompt into vectors. Cross-attention lets every video token read those vectors in every block, so the whole clip follows your words. Clear prompts about subject, action, camera and style give the model the details it was trained on.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Text conditioning, simplified: video patches "look at" the words of the prompt.
        # Each vector has 4 hand-written numbers: [boat, rain, street, light].
        # A real model learns vectors with thousands of numbers. The idea is the same.
        import numpy as np

        # ── Part 1: one video patch scores three words ──
        print("== Part 1: one patch scores three words ==")
        q = np.array([2.0, 0.3, 0.0, 0.2])     # query: the boat patch
        K = np.array([[1.0, 0.0, 0.0, 0.0],    # key: "boat"
                      [0.0, 1.0, 0.2, 0.0],    # key: "rainy"
                      [0.0, 0.0, 0.0, 1.0]])   # key: "light"
        scores = K @ q / np.sqrt(4)
        weights = np.exp(scores) / np.exp(scores).sum()
        print("scores: ", scores.round(2))
        print("weights:", weights.round(2))

        # ── Part 2: cross-attention with six words and four patches ──
        print("\n== Part 2: six words, four patches ==")
        # Text tokens after the text encoder (one vector per word)
        words = ["paper", "boat", "rainy", "street", "golden", "light"]
        text_vecs = np.array([
            [0.8, 0.0, 0.0, 0.0],   # paper
            [1.0, 0.0, 0.0, 0.0],   # boat
            [0.0, 1.0, 0.2, 0.0],   # rainy
            [0.0, 0.2, 1.0, 0.0],   # street
            [0.0, 0.0, 0.0, 0.9],   # golden
            [0.0, 0.0, 0.0, 1.0],   # light
        ])

        # Video patch tokens (queries): what each patch of the noisy frame needs
        patches = ["boat patch", "puddle patch", "road patch", "sky patch"]
        video_vecs = np.array([
            [2.0, 0.3, 0.0, 0.2],
            [0.2, 2.0, 0.5, 0.3],
            [0.0, 0.5, 2.0, 0.2],
            [0.0, 0.3, 0.0, 2.0],
        ])

        def softmax(x):
            e = np.exp(x - x.max(axis=1, keepdims=True))
            return e / e.sum(axis=1, keepdims=True)

        d = video_vecs.shape[1]
        scores = video_vecs @ text_vecs.T / np.sqrt(d)   # how well each patch matches each word
        weights = softmax(scores)                        # every row adds up to 1
        mixed = weights @ text_vecs                      # each patch takes a mix of word information

        for i, name in enumerate(patches):
            print(name)
            for w, wt in zip(words, weights[i]):
                print(f"  {w:7} {wt:.2f} " + "#" * round(wt * 30))
            top = words[int(weights[i].argmax())]
            print(f"  looks most at: {top}\n")

        print("Shapes: video", video_vecs.shape, "x text", text_vecs.shape, "-> weights", weights.shape)

        # Try it: in Part 2, delete "golden" and "light" (and their rows). Which word does the sky patch use now?
      PYTHON
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Keeping Frames Consistent</h1>
        </div>
        <p class="lc-lead">A good clip keeps the same boat, the same street and the same light from the first frame to the last. When it does not, viewers notice at once. In this lesson you will learn what must stay the same, how models and creators keep it the same, and how a simple <strong>temporal smoothing</strong> filter reduces flicker. You will also see what smoothing costs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 334" role="img" aria-label="Top row: four frames that drift. In frame 2 the white boat turns red, in frame 3 the street lamp vanishes, and in frame 4 the sky suddenly gets brighter. Bottom row: four frames made with a reference frame. The boat, the lamp and the light stay the same while the boat moves.">
          <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
          <text x="30" y="24" text-anchor="start" font-weight="700" fill="#f9a8d4">Without help: the clip drifts</text>
          <rect x="30" y="36" width="160" height="100" rx="6" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/><rect x="31" y="112" width="158" height="23" fill="#27274e"/><line x1="158" y1="58" x2="158" y2="112" stroke="#9b99b8" stroke-width="2"/><circle cx="158" cy="56" r="5" fill="#f59e0b"/><polygon points="44,112 84,112 76,124 52,124" fill="#e2e0f0"/><polygon points="64,86 64,110 80,110" fill="#e2e0f0"/>
          <rect x="210" y="36" width="160" height="100" rx="6" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/><rect x="211" y="112" width="158" height="23" fill="#27274e"/><line x1="338" y1="58" x2="338" y2="112" stroke="#9b99b8" stroke-width="2"/><circle cx="338" cy="56" r="5" fill="#f59e0b"/><polygon points="244,112 284,112 276,124 252,124" fill="#ef4444"/><polygon points="264,86 264,110 280,110" fill="#ef4444"/>
          <rect x="390" y="36" width="160" height="100" rx="6" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/><rect x="391" y="112" width="158" height="23" fill="#27274e"/><polygon points="444,112 484,112 476,124 452,124" fill="#e2e0f0"/><polygon points="464,86 464,110 480,110" fill="#e2e0f0"/>
          <rect x="570" y="36" width="160" height="100" rx="6" fill="#4b4a78" stroke="#ec4899" stroke-width="2"/><rect x="571" y="112" width="158" height="23" fill="#27274e"/><line x1="698" y1="58" x2="698" y2="112" stroke="#9b99b8" stroke-width="2"/><circle cx="698" cy="56" r="5" fill="#f59e0b"/><polygon points="644,112 684,112 676,124 652,124" fill="#e2e0f0"/><polygon points="664,86 664,110 680,110" fill="#e2e0f0"/>
          <text x="110" y="156" font-size="11.5" fill="#9b99b8">frame 1</text>
          <text x="290" y="156" font-size="11.5" fill="#f9a8d4">boat turns red</text>
          <text x="470" y="156" font-size="11.5" fill="#f9a8d4">lamp vanishes</text>
          <text x="650" y="156" font-size="11.5" fill="#f9a8d4">light jumps</text>
          <text x="30" y="192" text-anchor="start" font-weight="700" fill="#6ee7b7">With a reference frame: details stay the same</text>
          <rect x="30" y="204" width="160" height="100" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/><rect x="31" y="280" width="158" height="23" fill="#27274e"/><line x1="158" y1="226" x2="158" y2="280" stroke="#9b99b8" stroke-width="2"/><circle cx="158" cy="224" r="5" fill="#f59e0b"/><polygon points="44,280 84,280 76,292 52,292" fill="#e2e0f0"/><polygon points="64,254 64,278 80,278" fill="#e2e0f0"/>
          <rect x="210" y="204" width="160" height="100" rx="6" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/><rect x="211" y="280" width="158" height="23" fill="#27274e"/><line x1="338" y1="226" x2="338" y2="280" stroke="#9b99b8" stroke-width="2"/><circle cx="338" cy="224" r="5" fill="#f59e0b"/><polygon points="244,280 284,280 276,292 252,292" fill="#e2e0f0"/><polygon points="264,254 264,278 280,278" fill="#e2e0f0"/>
          <rect x="390" y="204" width="160" height="100" rx="6" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/><rect x="391" y="280" width="158" height="23" fill="#27274e"/><line x1="518" y1="226" x2="518" y2="280" stroke="#9b99b8" stroke-width="2"/><circle cx="518" cy="224" r="5" fill="#f59e0b"/><polygon points="444,280 484,280 476,292 452,292" fill="#e2e0f0"/><polygon points="464,254 464,278 480,278" fill="#e2e0f0"/>
          <rect x="570" y="204" width="160" height="100" rx="6" fill="#1f1f44" stroke="#4b4a78" stroke-width="1"/><rect x="571" y="280" width="158" height="23" fill="#27274e"/><line x1="698" y1="226" x2="698" y2="280" stroke="#9b99b8" stroke-width="2"/><circle cx="698" cy="224" r="5" fill="#f59e0b"/><polygon points="644,280 684,280 676,292 652,292" fill="#e2e0f0"/><polygon points="664,254 664,278 680,278" fill="#e2e0f0"/>
          <text x="110" y="324" font-size="11.5" fill="#6ee7b7">reference</text>
          <text x="290" y="324" font-size="11.5" fill="#9b99b8">same boat</text>
          <text x="470" y="324" font-size="11.5" fill="#9b99b8">same lamp</text>
          <text x="650" y="324" font-size="11.5" fill="#9b99b8">same light</text>
          </g></svg>
          <figcaption>Top: a clip that drifts. The boat's colour, the lamp and the light change for no reason. Bottom: with a reference frame, only the boat's position changes.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What must stay the same</h3>
          <p><strong>Temporal consistency</strong> means things stay the same across frames, unless the story changes them. Small errors grow over time. This slow change is called <strong>drift</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What should stay the same</th><th>A typical failure</th></tr></thead>
            <tbody>
              <tr><td>Identity</td><td>A face, clothes, the boat's shape and colour</td><td>The person's face slowly changes. The white boat turns red.</td></tr>
              <tr><td>Objects</td><td>How many things there are and where they are</td><td>A lamp post vanishes. A hand gets a sixth finger.</td></tr>
              <tr><td>Object permanence</td><td>Things hidden for a moment come back</td><td>A car drives behind a bus and never comes out.</td></tr>
              <tr><td>Lighting</td><td>Light direction, colour and brightness</td><td>The brightness jumps up and down. This is called <strong>flicker</strong>.</td></tr>
              <tr><td>Background</td><td>Buildings, signs, the sky</td><td>Shop signs change their letters in every frame.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>How models keep frames consistent</h3>
          <p>Inside the model, three things help:</p>
          <ul class="lc-list">
            <li><strong>Denoising all frames together.</strong> The model works on the whole clip at once, not one frame at a time. So every frame is shaped with the others in view.</li>
            <li><strong>Attention across time.</strong> Temporal attention or full 3D attention lets each frame look at the other frames. A boat patch in frame 40 can check the boat in frame 1.</li>
            <li><strong>The same text for every frame.</strong> All frames read the same prompt through cross-attention.</li>
          </ul>
          <p>Long clips are harder. Many tools make a long video in pieces. Each new piece is conditioned on the last few frames of the piece before. This works, but small errors can pile up from piece to piece. That is why drift often shows up near the end of long clips.</p>
        </div>
        <div class="lc-card">
          <h3>Reference frames and reference images</h3>
          <p>A <strong>reference</strong> is a picture that the model must match. It gives the model a fixed target, so details have less room to drift.</p>
          <ul class="lc-list">
            <li><strong>First-frame reference:</strong> you give the first frame. The model makes the rest of the clip from it.</li>
            <li><strong>Subject reference:</strong> you give one or more photos of a person, product or character. The model keeps that look in every frame and every shot. Tools give this feature different names, so check their docs.</li>
            <li><strong>Last-frame chaining:</strong> to make shot 2, you use the last frame of shot 1 as its first frame. The two shots join smoothly.</li>
          </ul>
          <p>For a story with many shots, also reuse the exact same words for each character in every prompt. For example, always write "a small white paper boat". Do not switch to "a little boat" in the next shot.</p>
        </div>
        <div class="lc-card">
          <h3>Temporal smoothing: a simple fix for flicker</h3>
          <p>After a clip is made, you can reduce flicker with <strong>temporal smoothing</strong>. Each frame becomes the average of itself and its neighbours in time. Here is the idea with one brightness number per frame:</p>
          <p>Part 1 in the code editor below does this for five brightness values, one per frame.</p>
          <p>The smoothed values are 0.53, 0.56 and 0.51. The raw values jump by about 0.1 between frames. The smoothed values move by 0.05 or less. The first smoothed value is (0.50 + 0.62 + 0.47) ÷ 3 = 0.53.</p>
          <p>Smoothing has a cost. A moving object is averaged with where it was and where it will be. So it leaves a faint "ghost" trail. The chart below comes from Part 2 of the code. It also shows a second fix: scale each frame to match the brightness of a reference frame.</p>
          <figure class="lc-diagram">
            <svg viewBox="0 0 760 280" role="img" aria-label="A line chart of average frame brightness for 7 frames. The raw clip jumps up and down between 0.195 and 0.306. The smoothed clip moves more gently. The clip matched to frame 0 is a flat line at 0.234.">
          <g font-family="inherit" font-size="12" fill="#e2e0f0">
          <line x1="90" y1="195.7" x2="700" y2="195.7" stroke="#27274e"/><text x="80" y="199.7" text-anchor="end" fill="#9b99b8" font-size="11">0.20</text>
          <line x1="90" y1="147.1" x2="700" y2="147.1" stroke="#27274e"/><text x="80" y="151.1" text-anchor="end" fill="#9b99b8" font-size="11">0.24</text>
          <line x1="90" y1="98.6" x2="700" y2="98.6" stroke="#27274e"/><text x="80" y="102.6" text-anchor="end" fill="#9b99b8" font-size="11">0.28</text>
          <line x1="90" y1="50.0" x2="700" y2="50.0" stroke="#27274e"/><text x="80" y="54.0" text-anchor="end" fill="#9b99b8" font-size="11">0.32</text>
          <text x="90.0" y="242" text-anchor="middle" fill="#9b99b8" font-size="11">0</text>
          <text x="191.7" y="242" text-anchor="middle" fill="#9b99b8" font-size="11">1</text>
          <text x="293.3" y="242" text-anchor="middle" fill="#9b99b8" font-size="11">2</text>
          <text x="395.0" y="242" text-anchor="middle" fill="#9b99b8" font-size="11">3</text>
          <text x="496.7" y="242" text-anchor="middle" fill="#9b99b8" font-size="11">4</text>
          <text x="598.3" y="242" text-anchor="middle" fill="#9b99b8" font-size="11">5</text>
          <text x="700.0" y="242" text-anchor="middle" fill="#9b99b8" font-size="11">6</text>
          <text x="395" y="264" text-anchor="middle" fill="#9b99b8" font-size="11.5">frame number</text>
          <text x="20" y="135" text-anchor="middle" fill="#9b99b8" font-size="11.5" transform="rotate(-90 20 135)">mean brightness</text>
          <polyline points="90.0,154.4 191.7,67.0 293.3,99.8 395.0,120.4 496.7,187.2 598.3,187.2 700.0,201.8" fill="none" stroke="#ec4899" stroke-width="2.5"/>
          <circle cx="90.0" cy="154.4" r="3.5" fill="#ec4899"/>
          <circle cx="191.7" cy="67.0" r="3.5" fill="#ec4899"/>
          <circle cx="293.3" cy="99.8" r="3.5" fill="#ec4899"/>
          <circle cx="395.0" cy="120.4" r="3.5" fill="#ec4899"/>
          <circle cx="496.7" cy="187.2" r="3.5" fill="#ec4899"/>
          <circle cx="598.3" cy="187.2" r="3.5" fill="#ec4899"/>
          <circle cx="700.0" cy="201.8" r="3.5" fill="#ec4899"/>
          <polyline points="90.0,110.7 191.7,107.1 293.3,94.9 395.0,136.2 496.7,165.4 598.3,192.1 700.0,194.5" fill="none" stroke="#3b82f6" stroke-width="2.5"/>
          <circle cx="90.0" cy="110.7" r="3.5" fill="#3b82f6"/>
          <circle cx="191.7" cy="107.1" r="3.5" fill="#3b82f6"/>
          <circle cx="293.3" cy="94.9" r="3.5" fill="#3b82f6"/>
          <circle cx="395.0" cy="136.2" r="3.5" fill="#3b82f6"/>
          <circle cx="496.7" cy="165.4" r="3.5" fill="#3b82f6"/>
          <circle cx="598.3" cy="192.1" r="3.5" fill="#3b82f6"/>
          <circle cx="700.0" cy="194.5" r="3.5" fill="#3b82f6"/>
          <polyline points="90.0,154.4 191.7,154.4 293.3,154.4 395.0,154.4 496.7,154.4 598.3,154.4 700.0,154.4" fill="none" stroke="#10b981" stroke-width="2.5"/>
          <circle cx="90.0" cy="154.4" r="3.5" fill="#10b981"/>
          <circle cx="191.7" cy="154.4" r="3.5" fill="#10b981"/>
          <circle cx="293.3" cy="154.4" r="3.5" fill="#10b981"/>
          <circle cx="395.0" cy="154.4" r="3.5" fill="#10b981"/>
          <circle cx="496.7" cy="154.4" r="3.5" fill="#10b981"/>
          <circle cx="598.3" cy="154.4" r="3.5" fill="#10b981"/>
          <circle cx="700.0" cy="154.4" r="3.5" fill="#10b981"/>
          <line x1="110" y1="22" x2="134" y2="22" stroke="#ec4899" stroke-width="3"/><text x="142" y="26">raw (score 0.031)</text>
          <line x1="300" y1="22" x2="324" y2="22" stroke="#3b82f6" stroke-width="3"/><text x="332" y="26">smoothed (0.016)</text>
          <line x1="490" y1="22" x2="514" y2="22" stroke="#10b981" stroke-width="3"/><text x="522" y="26">matched to frame 0 (0)</text>
          </g></svg>
            <figcaption>Mean brightness of a 7-frame toy clip. Smoothing halves the flicker score. Matching to frame 0 removes it, because this toy flicker is only a brightness change.</figcaption>
          </figure>
          <p>Matching to a reference works here because the toy flicker is a simple brightness gain. But real light can change on purpose, for example when a cloud passes. Then matching would remove a change you wanted. Video editors include "deflicker" filters that use smarter versions of these ideas.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check a clip for consistency</h3>
          <p>Step through how a creator checks a generated clip and fixes it.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="The prompt">A small white paper boat sailing down a rainy street, slow camera pan, golden evening light. 5 seconds.</li>
              <li data-kind="result" data-label="The first clip">The boat sails and the camera pans. It looks good at normal speed.</li>
              <li data-kind="check" data-label="Watch frame by frame">The boat keeps its shape. The street and the rain look steady.</li>
              <li data-kind="warn" data-label="Problem 1">Near the end, the boat slowly turns cream, then pale red. This is identity drift.</li>
              <li data-kind="warn" data-label="Problem 2">The lamp on the right vanishes when the boat passes in front of it. It never comes back.</li>
              <li data-kind="thought" data-label="The fix">Make a clean still image of the boat and street first. Use it as the first frame. Keep "small white paper boat" in the prompt.</li>
              <li data-kind="result" data-label="The second clip">The boat stays white. The lamp is still there after the boat passes.</li>
              <li data-kind="answer" data-label="Final touch">A light deflicker filter in the editor removes small brightness jumps. Then the clip is ready.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code editor smooths five brightness values. Part 2 makes a 7-frame toy clip with <code>make_video()</code>. The bright square is the boat. Each frame gets a random brightness gain, which causes flicker. Then it tries two fixes.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, compare the three flicker scores. Then look at row 3 of frame 4. Find the ghost values (0.46 and 0.4) next to the boat.</li>
            <li>In Part 2, set <code>WINDOW = 5</code>. The flicker score drops, but the ghost trail gets wider.</li>
            <li>In Part 2, set <code>FLICKER = 0.0</code>. Now all scores are 0, but smoothing still makes a ghost. Smoothing a clean clip only does harm.</li>
            <li>In Part 2, change the reference in <code>match_reference(clip, ref=1)</code>. Every frame now matches the brightness of frame 1 instead.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Consistency means identity, objects and lighting stay the same across frames. Models get it from denoising frames together and attending across time, and you help with reference frames and fixed wording. Smoothing reduces flicker but blurs motion, so use it lightly.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Keeping frames consistent: smoothing flicker, then a toy clip with two simple fixes.
        import numpy as np

        # ── Part 1: smooth five brightness values ──
        print("== Part 1: smooth five brightness values ==")
        brightness = np.array([0.50, 0.62, 0.47, 0.58, 0.49])   # one value per frame
        smoothed = (brightness[:-2] + brightness[1:-1] + brightness[2:]) / 3
        print("raw:     ", brightness)
        print("smoothed:", smoothed.round(2))

        # ── Part 2: a toy clip that flickers, and two fixes ──
        print("\n== Part 2: a flickering toy clip and two fixes ==")
        # The clip is T frames of 8x8 grayscale pixels, shape (T, H, W).
        np.random.seed(42)
        T, H, W = 7, 8, 8      # 7 frames, so the boat stays inside the 8x8 frame
        FLICKER = 0.25      # how much the brightness jumps from frame to frame
        WINDOW = 3          # how many frames the smoother averages

        def make_video(T=6, H=8, W=8, size=2, speed=1):
            """A bright square (the paper boat) at rows 3-4 moves `speed` pixels right each frame."""
            video = np.zeros((T, H, W))
            for t in range(T):
                x = t * speed
                video[t, 3:3 + size, x:x + size] = 1.0
            return video

        # 1) Make the clip: the boat on a dark grey street (0.2)
        clip = 0.2 + 0.8 * make_video(T=T, H=H, W=W)
        # Add flicker: every frame gets a random brightness gain
        gains = 1 + np.random.uniform(-FLICKER, FLICKER, size=T)
        clip = clip * gains[:, None, None]

        def flicker_score(video):
            """Average change in frame brightness from one frame to the next."""
            means = video.mean(axis=(1, 2))
            return np.abs(np.diff(means)).mean()

        def show_means(title, video):
            print(title, f"(flicker score {flicker_score(video):.3f})")
            for t, m in enumerate(video.mean(axis=(1, 2))):
                print(f"  frame {t}: {m:.3f} " + "#" * round(m * 80))

        # 2) Fix A: temporal smoothing. Each frame becomes the average of its neighbours in time.
        def smooth(video, window):
            out = np.empty_like(video)
            half = window // 2
            for t in range(len(video)):
                lo, hi = max(0, t - half), min(len(video), t + half + 1)
                out[t] = video[lo:hi].mean(axis=0)
            return out

        # 3) Fix B: reference frame. Scale every frame so its brightness matches frame 0.
        def match_reference(video, ref=0):
            target = video[ref].mean()
            return video * (target / video.mean(axis=(1, 2)))[:, None, None]

        show_means("Raw clip", clip)
        smoothed = smooth(clip, WINDOW)
        show_means(f"\nSmoothed, window {WINDOW}", smoothed)
        matched = match_reference(clip)
        show_means("\nMatched to frame 0", matched)

        # Smoothing has a cost: the moving boat leaves a faint "ghost" behind it
        print("\nRow 3 of frame 4 (boat at columns 4-5):")
        print("  raw:     ", np.round(clip[4, 3], 2))
        print("  smoothed:", np.round(smoothed[4, 3], 2))

        # Try it: in Part 2, set WINDOW = 5, or FLICKER = 0.0, and run again.
      PYTHON
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Camera Motion Control</h1>
        </div>
        <p class="lc-lead">The camera is part of the story. A slow pan shows a place. A dolly towards a face builds tension. In this lesson you will learn the five basic camera moves: pan, tilt, zoom, dolly and orbit. Then you will see two ways to ask a model for them: with prompt words, or with exact camera numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Five camera moves seen from above or from the side. Pan: the camera turns left or right in place. Tilt: the camera turns up or down in place. Zoom: the camera stays still and the view gets narrower. Dolly: the camera moves forward towards the subject. Orbit: the camera travels in a circle around the subject.">
          <defs><marker id="tv11a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker></defs>
          <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
          <rect x="4" y="10" width="144" height="230" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
          <text x="76.0" y="34" font-weight="700" fill="#67e8f9">Pan</text>
          <text x="76.0" y="52" font-size="10.5" fill="#9b99b8">seen from above</text>
          <line x1="76.0" y1="140" x2="36.0" y2="76" stroke="#4b4a78" stroke-width="1.5" stroke-dasharray="4 3"/><line x1="76.0" y1="140" x2="116.0" y2="76" stroke="#4b4a78" stroke-width="1.5" stroke-dasharray="4 3"/><line x1="76.0" y1="140" x2="76.0" y2="72" stroke="#4b4a78" stroke-width="1.5"/>
          <g transform="rotate(0 76.0 150)"><rect x="65.0" y="144" width="22" height="16" rx="3" fill="#27274e" stroke="#22d3ee" stroke-width="1.5"/><polygon points="70.0,144 82.0,144 85.0,136 67.0,136" fill="#22d3ee"/></g>
          <path d="M46.0,92 Q76.0,78 106.0,92" fill="none" stroke="#f59e0b" stroke-width="2" marker-end="url(#tv11a)"/>
          <text x="76.0" y="200" font-size="11">turns left or right</text><text x="76.0" y="220" font-size="11" fill="#9b99b8">camera stays in place</text>
          <rect x="156" y="10" width="144" height="230" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
          <text x="228.0" y="34" font-weight="700" fill="#67e8f9">Tilt</text>
          <text x="228.0" y="52" font-size="10.5" fill="#9b99b8">seen from the side</text>
          <line x1="198.0" y1="160" x2="268.0" y2="160" stroke="#9b99b8" stroke-width="1"/>
          <line x1="198.0" y1="130" x2="278.0" y2="130" stroke="#4b4a78" stroke-width="1.5" stroke-dasharray="4 3"/><line x1="198.0" y1="130" x2="268.0" y2="72" stroke="#4b4a78" stroke-width="1.5" stroke-dasharray="4 3"/>
          <g transform="rotate(90 192.0 130)"><rect x="181.0" y="124" width="22" height="16" rx="3" fill="#27274e" stroke="#22d3ee" stroke-width="1.5"/><polygon points="186.0,124 198.0,124 201.0,116 183.0,116" fill="#22d3ee"/></g>
          <path d="M256.0,120 Q268.0,104 254.0,86" fill="none" stroke="#f59e0b" stroke-width="2" marker-end="url(#tv11a)"/>
          <text x="228.0" y="200" font-size="11">turns up or down</text><text x="228.0" y="220" font-size="11" fill="#9b99b8">camera stays in place</text>
          <rect x="308" y="10" width="144" height="230" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
          <text x="380.0" y="34" font-weight="700" fill="#67e8f9">Zoom</text>
          <text x="380.0" y="52" font-size="10.5" fill="#9b99b8">seen from above</text>
          <g transform="rotate(0 380.0 150)"><rect x="369.0" y="144" width="22" height="16" rx="3" fill="#27274e" stroke="#22d3ee" stroke-width="1.5"/><polygon points="374.0,144 386.0,144 389.0,136 371.0,136" fill="#22d3ee"/></g>
          <line x1="375.0" y1="136" x2="335.0" y2="70" stroke="#4b4a78" stroke-width="1.5"/><line x1="385.0" y1="136" x2="425.0" y2="70" stroke="#4b4a78" stroke-width="1.5"/>
          <line x1="377.0" y1="136" x2="362.0" y2="70" stroke="#f59e0b" stroke-width="2"/><line x1="383.0" y1="136" x2="398.0" y2="70" stroke="#f59e0b" stroke-width="2"/>
          <text x="380.0" y="200" font-size="11">lens view narrows</text><text x="380.0" y="220" font-size="11" fill="#9b99b8">camera does not move</text>
          <rect x="460" y="10" width="144" height="230" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
          <text x="532.0" y="34" font-weight="700" fill="#67e8f9">Dolly</text>
          <text x="532.0" y="52" font-size="10.5" fill="#9b99b8">seen from above</text>
          <circle cx="532.0" cy="72" r="7" fill="#ec4899"/>
          <g transform="rotate(0 532.0 150)"><rect x="521.0" y="144" width="22" height="16" rx="3" fill="#27274e" stroke="#4b4a78" stroke-width="1.5"/><polygon points="526.0,144 538.0,144 541.0,136 523.0,136" fill="#4b4a78"/></g>
          <g transform="rotate(0 532.0 112)"><rect x="521.0" y="106" width="22" height="16" rx="3" fill="#27274e" stroke="#22d3ee" stroke-width="1.5"/><polygon points="526.0,106 538.0,106 541.0,98 523.0,98" fill="#22d3ee"/></g>
          <line x1="556.0" y1="150" x2="556.0" y2="104" stroke="#f59e0b" stroke-width="2" marker-end="url(#tv11a)"/>
          <text x="532.0" y="200" font-size="11">moves forward or back</text><text x="532.0" y="220" font-size="11" fill="#9b99b8">near things grow more</text>
          <rect x="612" y="10" width="144" height="230" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
          <text x="684.0" y="34" font-weight="700" fill="#67e8f9">Orbit</text>
          <text x="684.0" y="52" font-size="10.5" fill="#9b99b8">seen from above</text>
          <circle cx="684.0" cy="110" r="7" fill="#ec4899"/>
          <circle cx="684.0" cy="110" r="44" fill="none" stroke="#4b4a78" stroke-dasharray="4 4"/>
          <g transform="rotate(0 684.0 156)"><rect x="673.0" y="150" width="22" height="16" rx="3" fill="#27274e" stroke="#22d3ee" stroke-width="1.5"/><polygon points="678.0,150 690.0,150 693.0,142 675.0,142" fill="#22d3ee"/></g>
          <path d="M704.0,150 Q728.0,140 728.0,114" fill="none" stroke="#f59e0b" stroke-width="2" marker-end="url(#tv11a)"/>
          <text x="684.0" y="200" font-size="11">circles the subject</text><text x="684.0" y="220" font-size="11" fill="#9b99b8">background slides by</text>
          </g></svg>
          <figcaption>The five basic camera moves. Pan and tilt turn the camera. Zoom changes the lens. Dolly and orbit move the camera through space.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five basic moves</h3>
          <table class="lc-table">
            <thead><tr><th>Move</th><th>What the camera does</th><th>What you see on screen</th><th>Prompt words</th></tr></thead>
            <tbody>
              <tr><td>Pan</td><td>Turns left or right. It stays in one place.</td><td>The scene slides sideways.</td><td>"slow pan left", "pans right"</td></tr>
              <tr><td>Tilt</td><td>Turns up or down. It stays in one place.</td><td>The scene slides up or down.</td><td>"tilts up to the sky"</td></tr>
              <tr><td>Zoom</td><td>Does not move. The lens makes the view narrower or wider.</td><td>Everything grows or shrinks together.</td><td>"slow zoom in on the boat"</td></tr>
              <tr><td>Dolly</td><td>Moves forward or back through the scene.</td><td>Near things grow faster than far things.</td><td>"dolly in", "camera pushes in"</td></tr>
              <tr><td>Orbit</td><td>Travels in a circle around the subject.</td><td>The subject stays in the middle. The background swings past.</td><td>"camera orbits the boat"</td></tr>
            </tbody>
          </table>
          <p>There are more moves. A <strong>truck</strong> slides the camera sideways. A <strong>crane</strong> lifts it up or down. A <strong>static</strong> or "locked-off" shot does not move at all. Ask for a static shot when you want none of the others.</p>
        </div>
        <div class="lc-card">
          <h3>Zoom and dolly are not the same</h3>
          <p>Both make the subject bigger. But they look different, because of <strong>parallax</strong>. Parallax means near things seem to move more than far things when the camera moves.</p>
          <p>On screen, an object's size is about 1 ÷ its distance. Take a boat 2 metres away and a house 10 metres away:</p>
          <ul class="lc-list">
            <li><strong>Dolly in by 1 metre.</strong> The boat is now 1 metre away, so it looks 2 ÷ 1 = 2 times bigger. The house is now 9 metres away. It looks only 10 ÷ 9 = about 1.11 times bigger.</li>
            <li><strong>Zoom in 2 times.</strong> The camera does not move. The boat and the house both look exactly 2 times bigger.</li>
          </ul>
          <p>So a dolly changes the depth in the picture, and a zoom does not. A video model must learn this from data. When it gets it wrong, the background can look like a flat painted wall.</p>
        </div>
        <div class="lc-card">
          <h3>Prompt words or camera numbers?</h3>
          <p>There are two ways to control the camera.</p>
          <p><strong>1. Prompt words.</strong> You write "slow camera pan" in the prompt. This is easy and works in almost every tool. But words are vague. How slow is slow? Sometimes the model ignores the words. Sometimes it moves the boat instead of the camera.</p>
          <p><strong>2. Explicit camera parameters.</strong> You give exact numbers for the camera in each frame. For example: turn by so many degrees, move so far, zoom so much. Here is a pan of 30 degrees over a 49-frame clip (about 2 seconds at 24 fps):</p>
          <p>The pan angle at frame t is 30 × t ÷ 48. Part 2 in the code editor below works it out for every 12th frame.</p>
          <p>There are 48 steps between frame 0 and frame 48. So the camera turns 30 ÷ 48 = 0.625 degrees per frame. At frame 12 it has turned 7.5 degrees, and at frame 24 it has turned 15 degrees. That gives a smooth, steady pan.</p>
          <p>How does the model use these numbers? Research methods, such as CameraCtrl and MotionCtrl, turn each frame's camera position and direction into extra input numbers. A small added network feeds them into the video model. Then the model is trained on clips where the real camera path is known.</p>
          <p>In apps, this often appears as a menu of camera presets, a strength slider, or a path you draw. The names and options change often. Check your tool's current docs.</p>
        </div>
        <div class="lc-card">
          <h3>Tips for camera prompts</h3>
          <ul class="lc-list">
            <li>Ask for one camera move per shot. "Pan left while zooming in and orbiting" usually fails.</li>
            <li>Say the speed: "slow", "steady" or "fast".</li>
            <li>Say what the camera moves towards or follows: "tilts up from the boat to the street lamp".</li>
            <li>Put the camera words in the same place in every prompt, for example at the end. This makes shots easy to compare.</li>
            <li>If the model moves the subject instead of the camera, try "the camera pans" instead of just "pan".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: what kind of move is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each shot by what happens to the camera.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="turn" data-label="Camera turns in place"></div>
              <div data-sorter-target="bucket" data-bucket="travel" data-label="Camera travels"></div>
              <div data-sorter-target="bucket" data-bucket="lens" data-label="Only the lens changes"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="turn" data-why="The camera stays on its tripod and turns sideways. That is a pan.">The view slides from the boat to the shop on its right</li>
              <li data-bucket="turn" data-why="The camera turns upwards without moving. That is a tilt.">The view moves up from the puddle to the lamp at the top</li>
              <li data-bucket="lens" data-why="Near and far things grow by the same amount. No parallax means the camera did not move. That is a zoom.">The boat and the houses behind it both grow by exactly 2 times</li>
              <li data-bucket="travel" data-why="The near boat grows faster than the far houses. That parallax means the camera moved forward. That is a dolly.">The boat grows fast while the far houses hardly change size</li>
              <li data-bucket="travel" data-why="The camera moves in a circle around the subject. That is an orbit.">The boat stays in the middle while the street swings round behind it</li>
              <li data-bucket="travel" data-why="The whole camera slides sideways along the street. That is a truck.">The camera slides along the pavement next to the boat</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code editor makes a wide text scene: a paper boat (B), lamps (L) and a moon (O). A virtual camera has three numbers per frame: x, y and zoom. The code cuts out what the camera sees and prints 4 frames side by side. Part 2 prints the angle of a smooth 30-degree pan.</p>
          <ol class="lc-list">
            <li>Run it. In the Part 1 pan, the boat moves left on screen, because the camera turns right. In the tilt, the moon comes into view.</li>
            <li>In Part 1, make the pan slower: change <code>4 * t</code> to <code>2 * t</code>. The scene slides half as far each frame.</li>
            <li>In Part 1, make a "pan left": start at x = 20 and use <code>20 - 4 * t</code>.</li>
            <li>In Part 1, notice that the zoom only cuts and enlarges the picture. A real dolly would also show parallax, which this flat scene cannot show.</li>
            <li>In Part 2, change <code>TOTAL_PAN = 30</code> to <code>60</code>. The camera now turns 1.25 degrees per frame.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Pan and tilt turn the camera, zoom changes the lens, and dolly and orbit move the camera through space. Prompt words are easy but vague. Explicit camera parameters give exact, repeatable motion.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Camera moves as numbers: a virtual camera looks at a wide scene.
        import numpy as np

        # ── Part 1: pan, tilt and zoom with a virtual camera ──
        print("== Part 1: pan, tilt and zoom ==")
        # Each frame has camera parameters: centre x, centre y and zoom.
        # We cut out what the camera sees and print the frames side by side.
        # A wide scene, 10 rows x 30 columns.
        # B = paper boat, L = street lamp, O = moon, ~ = wet street, # = pavement
        scene = np.array([list(row) for row in [
            "..............................",
            ".................O............",
            "...L.........L.........L......",
            "...|.........|.........|......",
            "...|.........|.........|......",
            "...|.........|.........|......",
            "~~~~~~~~~~~~BB~~~~~~~~~~~~~~~~",
            "~~~~~~~~~~~BBBB~~~~~~~~~~~~~~~",
            "##############################",
            "##############################",
        ]])
        OUT_H, OUT_W = 6, 10      # every frame is shown at this size
        FRAMES = 4

        def camera_view(cx, cy, zoom):
            """Cut out a window centred on (cx, cy). zoom 2 = window half as big = things look twice as big."""
            h, w = round(OUT_H / zoom), round(OUT_W / zoom)
            top = min(max(round(cy - h / 2), 0), scene.shape[0] - h)
            left = min(max(round(cx - w / 2), 0), scene.shape[1] - w)
            window = scene[top:top + h, left:left + w]
            rows = np.arange(OUT_H) * h // OUT_H      # nearest-neighbour resize to OUT_H x OUT_W
            cols = np.arange(OUT_W) * w // OUT_W
            return window[rows][:, cols]

        def show(name, path):
            print(f"== {name} ==")
            print("  " + "   ".join(f"frame {t:<4}" for t in range(len(path))))
            views = [camera_view(*p) for p in path]
            for r in range(OUT_H):
                print("  " + "   ".join("".join(v[r]) for v in views))
            for t, (cx, cy, zoom) in enumerate(path):
                print(f"  frame {t}: x={cx:4.1f}  y={cy:4.1f}  zoom={zoom:.2f}")
            print()

        # Explicit camera parameters: one (x, y, zoom) per frame
        pan_right = [(8 + 4 * t, 5, 1.0) for t in range(FRAMES)]     # x grows: the view slides right
        tilt_up   = [(14, 7 - 1.5 * t, 1.0) for t in range(FRAMES)]  # y shrinks: the view moves up
        zoom_in   = [(13.5, 7, 1.0 + 0.4 * t) for t in range(FRAMES)]  # zoom grows: the boat gets bigger

        show("Pan right", pan_right)
        show("Tilt up", tilt_up)
        show("Zoom in on the boat", zoom_in)

        # ── Part 2: a smooth 30-degree pan as camera numbers ──
        print("== Part 2: pan angle per frame ==")
        FRAMES = 49          # about 2 seconds at 24 fps
        TOTAL_PAN = 30       # degrees to the right over the whole shot
        steps = FRAMES - 1   # 48 steps between frame 0 and frame 48

        for t in range(0, FRAMES, 12):
            pan = TOTAL_PAN * t / steps
            print(f"frame {t:2d}: pan {pan:5.2f} degrees")
        print("per frame:", TOTAL_PAN / steps, "degrees")

        # Try it: in Part 1, make the pan slower (change 4 to 2). In Part 2, set TOTAL_PAN = 60.
      PYTHON
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Image-to-Video</h1>
        </div>
        <p class="lc-lead"><strong>Image-to-video</strong> turns one still picture into a short clip. Your picture becomes the first frame. The model then invents the motion that comes after it. This gives you much more control than a text prompt alone, because you decide exactly how the scene looks.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="A still photo of a paper boat goes through the video VAE encoder and becomes an image latent. The image latent is placed as a clean frame 0. Frames 1 to 5 start as noise. A video denoiser, guided by an optional prompt and a motion strength setting, cleans all frames over many steps. Frame 0 stays fixed. The output clip shows the boat moving right.">
            <defs><marker id="tv12a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="24" width="120" height="76" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <g stroke="#3b82f6" stroke-width="1.5"><line x1="34" y1="34" x2="30" y2="44"/><line x1="58" y1="32" x2="54" y2="42"/><line x1="112" y1="34" x2="108" y2="44"/><line x1="128" y1="50" x2="124" y2="60"/><line x1="40" y1="62" x2="36" y2="72"/></g>
              <polygon points="66,72 96,72 90,81 72,81" fill="#f59e0b"/><polygon points="80,55 80,70 92,70" fill="#e2e0f0"/>
              <line x1="28" y1="88" x2="132" y2="88" stroke="#4b4a78" stroke-width="2"/>
              <text x="80" y="120" font-size="12" fill="#9b99b8">Your still image</text>
              <line x1="142" y1="62" x2="176" y2="62" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv12a)"/>
              <rect x="180" y="42" width="150" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="255" y="67">Video VAE encoder</text>
              <line x1="332" y1="62" x2="366" y2="62" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv12a)"/>
              <rect x="370" y="42" width="120" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="430" y="67">Image latent</text>
              <path d="M430,84 L430,124 L185,124 L185,146" fill="none" stroke="#10b981" stroke-width="1.8" marker-end="url(#tv12a)"/>
              <rect x="540" y="24" width="200" height="36" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="640" y="47">Prompt (optional)</text>
              <rect x="540" y="72" width="200" height="36" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="640" y="95">Motion strength</text>
              <path d="M690,110 L690,234 L624,234" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv12a)"/>
              <path d="M742,42 L750,42 L750,253 L624,253" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv12a)"/>
              <text x="20" y="180" text-anchor="start" font-size="12" fill="#9b99b8">Start of</text>
              <text x="20" y="196" text-anchor="start" font-size="12" fill="#9b99b8">denoising</text>
              <rect x="150" y="150" width="70" height="50" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/><text x="185" y="171" font-size="12">frame 0</text><text x="185" y="189" font-size="11" fill="#6ee7b7">= image</text>
              <rect x="230" y="150" width="70" height="50" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="265" y="171" font-size="12">frame 1</text><text x="265" y="189" font-size="11" fill="#f9a8d4">noise</text>
              <rect x="310" y="150" width="70" height="50" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="345" y="171" font-size="12">frame 2</text><text x="345" y="189" font-size="11" fill="#f9a8d4">noise</text>
              <rect x="390" y="150" width="70" height="50" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="425" y="171" font-size="12">frame 3</text><text x="425" y="189" font-size="11" fill="#f9a8d4">noise</text>
              <rect x="470" y="150" width="70" height="50" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="505" y="171" font-size="12">frame 4</text><text x="505" y="189" font-size="11" fill="#f9a8d4">noise</text>
              <rect x="550" y="150" width="70" height="50" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="585" y="171" font-size="12">frame 5</text><text x="585" y="189" font-size="11" fill="#f9a8d4">noise</text>
              <line x1="385" y1="202" x2="385" y2="220" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv12a)"/>
              <rect x="150" y="224" width="470" height="38" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="385" y="248">Video denoiser: many steps, frame 0 stays fixed</text>
              <line x1="385" y1="264" x2="385" y2="281" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv12a)"/>
              <text x="20" y="315" text-anchor="start" font-size="12" fill="#9b99b8">Output clip</text>
              <rect x="150" y="285" width="70" height="50" rx="6" fill="#27274e" stroke="#10b981"/><polygon points="156,315 176,315 172,321 160,321" fill="#f59e0b"/><polygon points="165,304 165,314 173,314" fill="#e2e0f0"/>
              <rect x="230" y="285" width="70" height="50" rx="6" fill="#27274e" stroke="#10b981"/><polygon points="243,315 263,315 259,321 247,321" fill="#f59e0b"/><polygon points="252,304 252,314 260,314" fill="#e2e0f0"/>
              <rect x="310" y="285" width="70" height="50" rx="6" fill="#27274e" stroke="#10b981"/><polygon points="330,315 350,315 346,321 334,321" fill="#f59e0b"/><polygon points="339,304 339,314 347,314" fill="#e2e0f0"/>
              <rect x="390" y="285" width="70" height="50" rx="6" fill="#27274e" stroke="#10b981"/><polygon points="417,315 437,315 433,321 421,321" fill="#f59e0b"/><polygon points="426,304 426,314 434,314" fill="#e2e0f0"/>
              <rect x="470" y="285" width="70" height="50" rx="6" fill="#27274e" stroke="#10b981"/><polygon points="504,315 524,315 520,321 508,321" fill="#f59e0b"/><polygon points="513,304 513,314 521,314" fill="#e2e0f0"/>
              <rect x="550" y="285" width="70" height="50" rx="6" fill="#27274e" stroke="#10b981"/><polygon points="591,315 611,315 607,321 595,321" fill="#f59e0b"/><polygon points="600,304 600,314 608,314" fill="#e2e0f0"/>
            </g>
          </svg>
          <figcaption>Image-to-video with first-frame conditioning. The image fixes frame 0. The model only has to invent the motion.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What image-to-video does</h3>
          <p>In text-to-video, the model decides everything: the boat, the street, the colours and the motion. In <strong>image-to-video</strong> (often written <strong>I2V</strong>), you give the model a picture. The picture fixes the look. The model adds the motion.</p>
          <p>This is useful in many cases:</p>
          <ul class="lc-list">
            <li><strong>Exact look:</strong> you make a perfect still with a text-to-image model first. Then you animate it.</li>
            <li><strong>Same character in many shots:</strong> you start every shot from a picture of the same character.</li>
            <li><strong>Real photos:</strong> you bring an old photo, a product photo or a painting to life.</li>
          </ul>
          <p>Many creators work this way: first an image, then the video. It splits one hard job into two easier jobs.</p>
        </div>
        <div class="lc-card">
          <h3>First-frame conditioning</h3>
          <p><strong>Conditioning</strong> means giving the model extra input that guides what it makes. In image-to-video, the extra input is your picture. The model learns to make clips that start with that picture. This is called <strong>first-frame conditioning</strong>.</p>
          <p>First, the video VAE turns the picture into an <strong>image latent</strong>. Then the model uses it in one of two common ways:</p>
          <table class="lc-table">
            <thead><tr><th>Design</th><th>How the image goes in</th></tr></thead>
            <tbody>
              <tr><td>Clean first frame</td><td>The image latent becomes frame 0. A mask tells the model "this frame is done". The model only denoises the other frames.</td></tr>
              <tr><td>Copy to every frame</td><td>The image latent is copied to every frame. It is joined to the noisy latents as extra channels. Stable Video Diffusion works this way.</td></tr>
            </tbody>
          </table>
          <p>Many models also turn the picture into an <strong>embedding</strong> (a vector of numbers that describes it). Cross-attention then lets every frame look at this description, just like it looks at a text prompt.</p>
          <p>Let us follow the shapes for the "copy to every frame" design. Video code often uses the order (B, C, T, H, W): batch, channels, frames, height and width.</p>
          <ul class="lc-list">
            <li>The noisy latents for 14 frames of 576x1024 video have shape (1, 4, 14, 72, 128).</li>
            <li>The image latent has shape (1, 4, 1, 72, 128). It is copied 14 times, to (1, 4, 14, 72, 128).</li>
            <li>The two are joined along the channel axis. The model input has shape (1, 8, 14, 72, 128).</li>
          </ul>
          <p>The channels go from 4 to 8. So the first layer of the model must accept 8 channels. Every frame now "sees" the picture next to its own noise. Part 2 in the code editor below builds these shapes with NumPy. Part 3 builds them with PyTorch.</p>
        </div>
        <div class="lc-card">
          <h3>Motion strength</h3>
          <p>Most image-to-video tools have a setting for how much things move. It has different names, such as "motion", "motion strength" or "motion bucket". The idea is the same.</p>
          <table class="lc-table">
            <thead><tr><th>Motion strength</th><th>What you get</th><th>Risk</th></tr></thead>
            <tbody>
              <tr><td>Low</td><td>Gentle motion: ripples, hair in the wind, a slow camera drift</td><td>The clip can look almost frozen</td></tr>
              <tr><td>Medium</td><td>Clear motion that still matches the picture</td><td>Usually the best place to start</td></tr>
              <tr><td>High</td><td>Big moves: running, fast camera moves</td><td>The subject drifts away from the picture, or warps</td></tr>
            </tbody>
          </table>
          <p>Why is high motion risky? Frame 0 is fixed, but later frames are far from it. The further the subject moves, the less the model can copy from the picture. It has to invent more. So faces, hands and logos can change.</p>
          <p>Part 1 in the code editor shows this with a toy model. The boat moves <code>strength</code> pixels per frame. With more motion, it keeps less of its original brightness. At strength 0 the boat does not move and keeps a brightness of 1.00. At strength 1 it moves 5 pixels in 5 frames and keeps 0.68. At strength 2 it moves 10 pixels and keeps only 0.39.</p>
          <p>The fade is a rule we wrote by hand to show the trade-off. A real model does not follow a simple formula like this.</p>
        </div>
        <div class="lc-card">
          <h3>Real code: Stable Video Diffusion</h3>
          <p>Stable Video Diffusion is an open image-to-video model. It runs with the Hugging Face <code>diffusers</code> library. It needs a GPU and a large model download, so you cannot run it in the browser.</p>
          <p>Part 4 in the code editor below has the full code. It loads the model, animates a picture called <code>paper_boat.png</code> and saves the clip.</p>
          <p>This saves a short video file. Notice two things:</p>
          <ul class="lc-list">
            <li>There is no prompt. This model takes only an image. Many newer models take an image <em>and</em> a text prompt.</li>
            <li><code>motion_bucket_id</code> is its motion strength. <code>noise_aug_strength</code> adds noise to the picture, so the model copies it less closely.</li>
          </ul>
          <p>In the browser, Part 4 only prints a message. Parts 1 and 2 run a NumPy version of the same idea. Model names and settings change fast, so check the current <code>diffusers</code> docs.</p>
        </div>
        <div class="lc-card">
          <h3>Prompting for image-to-video</h3>
          <p>The picture already shows the look. So your prompt should describe the <strong>motion</strong>, not the look again.</p>
          <ul class="lc-list">
            <li>Weak: "a paper boat on a rainy street, golden evening light". The picture already says this.</li>
            <li>Better: "the paper boat drifts slowly to the right, raindrops ripple the water, the camera stays still".</li>
          </ul>
          <p>Some tools also accept a <strong>last frame</strong>. You give a start picture and an end picture. The model fills in the motion between them, like the keyframes you met earlier in this course.</p>
          <p>Pick a good start picture. A sharp, simple image with a clear subject works best. Any mistake in the picture, such as a strange hand, carries into every frame.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: animate a still image</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of image-to-video in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Choose a sharp still image of the paper boat</li>
              <li data-order="2">Encode the image into an image latent with the video VAE</li>
              <li data-order="3">Set frame 0 to the image latent and fill the other frames with noise</li>
              <li data-order="4">Add a motion prompt and pick a motion strength</li>
              <li data-order="5">Denoise all frames together over many steps, keeping frame 0 fixed</li>
              <li data-order="6">Decode the latents back into video frames</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code editor animates a still image of the boat. Frame 0 is the image. The other frames move the boat to the right. Part 2 builds the model input for the "copy to every frame" design. Parts 3 and 4 run on your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check that frame 0 is exactly the input image. Look at the boat in the last frame.</li>
            <li>In Part 1, change <code>MOTION_STRENGTH = 1</code> to <code>2</code>. The boat moves further, but it fades from the last frame.</li>
            <li>Set <code>MOTION_STRENGTH = 0</code>. The boat stays still. This is the "frozen clip" problem.</li>
            <li>Set the strength back to 1. Change <code>DRIFT = 0.08</code> to <code>0.15</code>. The boat disappears from the last frame. A model that drifts more needs less motion.</li>
            <li>In Part 2, change <code>T2 = 14</code> to <code>25</code>. Only the frame axis of the shapes changes. The channels stay at 8.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Image-to-video fixes the first frame to your picture, so the model only has to invent motion. More motion strength gives more movement, but the subject drifts further from your picture.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Image-to-video, simplified: animate one still image with NumPy, then look at real shapes and code.
        import numpy as np

        # ── Part 1: animate a still image ──
        print("== Part 1: animate a still image ==")
        # The still image becomes frame 0 and is kept exactly as it is (first-frame conditioning).
        # MOTION_STRENGTH says how many pixels the bright square (our paper boat) moves per frame.
        np.random.seed(42)
        T, H, W = 6, 8, 12           # 6 frames, 8 pixels high, 12 pixels wide
        MOTION_STRENGTH = 1          # pixels per frame (try 0 or 2)
        DRIFT = 0.08                 # how much the boat changes for each pixel it moves

        # The still image: a 2x2 bright square at rows 3-4, columns 0-1
        image = np.zeros((H, W))
        image[3:5, 0:2] = 1.0

        def shift_right(img, pixels):
            out = np.zeros_like(img)
            out[:, pixels:] = img[:, :W - pixels]      # pixels that leave the frame are lost
            return out

        def animate(image, strength):
            video = np.zeros((T, H, W))
            video[0] = image                           # frame 0 = the input image, unchanged
            for t in range(1, T):
                moved = shift_right(image, strength * t)
                keep = max(0.0, 1.0 - DRIFT * strength * t)    # more motion = more drift
                noise = np.random.rand(H, W) * 0.4 * (1 - keep)
                video[t] = moved * keep + noise
            return video

        def show(frame):
            for row in frame:
                print("  " + "".join("#" if v >= 0.5 else "." for v in row))

        video = animate(image, MOTION_STRENGTH)
        print("Video shape (T, H, W):", video.shape)
        print("Frame 0 is the input image:", np.array_equal(video[0], image))
        for t in [0, T - 1]:
            print(f"Frame {t}:")
            show(video[t])

        # Compare motion strengths: how far the boat moves, and how much it still looks like the input
        print("\nstrength | moves in 5 frames | boat brightness in last frame")
        for s in [0, 1, 2]:
            last = animate(image, s)[-1]
            col = s * (T - 1)
            bright = last[3:5, col:col + 2].mean()
            print(f"    {s}    |    {col:2d} pixels      | {bright:.2f}")

        # ── Part 2: the "copy to every frame" design, with real latent shapes (B, C, T, H, W) ──
        print("\n== Part 2: copy the image to every frame (NumPy) ==")
        B, C, T2, H2, W2 = 1, 4, 14, 72, 128          # 14 frames of 576x1024 video, as latents
        noisy = np.random.randn(B, C, T2, H2, W2)     # the frames to denoise
        image_latent = np.random.randn(B, C, 1, H2, W2)            # stands in for the encoded image
        cond = np.broadcast_to(image_latent, (B, C, T2, H2, W2))   # copy the image to every frame
        model_input = np.concatenate([noisy, cond], axis=1)        # join along the channel axis
        print("noisy frames: ", noisy.shape)
        print("image, copied:", cond.shape)
        print("model input:  ", model_input.shape)

        # ── Part 3: the same shapes in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: the same shapes in PyTorch ==")
        try:
            import torch
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            B, C, T, H, W = 1, 4, 14, 72, 128     # 14 frames of 576x1024 video, as latents

            noisy = torch.randn(B, C, T, H, W)          # the frames to denoise
            image_latent = torch.randn(B, C, 1, H, W)   # stands in for the encoded still image

            cond = image_latent.expand(-1, -1, T, -1, -1)   # copy the image to every frame
            model_input = torch.cat([noisy, cond], dim=1)   # join along the channel axis

            print("noisy frames: ", tuple(noisy.shape))
            print("image, copied:", tuple(cond.shape))
            print("model input:  ", tuple(model_input.shape))

        # ── Part 4: Stable Video Diffusion with diffusers (run this part on a computer with a GPU) ──
        # pip install torch diffusers transformers accelerate
        # It downloads a large model and needs an NVIDIA GPU and a picture called paper_boat.png.
        print("\n== Part 4: Stable Video Diffusion ==")
        import os
        try:
            import torch
            from diffusers import StableVideoDiffusionPipeline
            from diffusers.utils import load_image, export_to_video
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch and diffusers, which do not run in the browser. Copy this part to your computer to run it.")
        elif not torch.cuda.is_available() or not os.path.exists("paper_boat.png"):
            print("Part 4 needs an NVIDIA GPU and a picture called paper_boat.png next to this file.")
        else:
            pipe = StableVideoDiffusionPipeline.from_pretrained(
                "stabilityai/stable-video-diffusion-img2vid-xt",
                torch_dtype=torch.float16, variant="fp16")
            pipe.to("cuda")

            image = load_image("paper_boat.png").resize((1024, 576))
            frames = pipe(image,
                          motion_bucket_id=127,      # higher = more motion
                          noise_aug_strength=0.02,   # more noise = less like the image
                          decode_chunk_size=8,
                          generator=torch.manual_seed(42)).frames[0]
            export_to_video(frames, "paper_boat.mp4", fps=7)
            print("Saved paper_boat.mp4")

        # Try it: in Part 1, set MOTION_STRENGTH = 2, or DRIFT = 0.15. In Part 2, set T2 = 25.
      PYTHON
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Video-to-Video and Style Transfer</h1>
        </div>
        <p class="lc-lead"><strong>Video-to-video</strong> takes a video you already have and changes how it looks. The motion stays the same. The style changes, for example from a phone clip to a watercolour painting. The hard part is to change every frame in the same way, so the result does not flicker.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 345" role="img" aria-label="A source video of a boat moving right goes two ways. One path extracts structure such as edges, depth or pose from every frame. The other path adds noise to the video latents with a strength of 0.6. Both, plus a style prompt saying watercolour, go into a video model that denoises all frames together. The styled video has the same motion in a new look.">
            <defs><marker id="tv13a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="60" text-anchor="start" font-size="12" fill="#9b99b8">Source video</text>
              <rect x="150" y="30" width="70" height="50" rx="6" fill="#27274e" stroke="#3b82f6"/><polygon points="158,62 178,62 174,68 162,68" fill="#f59e0b"/><polygon points="167,51 167,61 175,61" fill="#e2e0f0"/>
              <rect x="150" y="255" width="70" height="50" rx="6" fill="#27274e" stroke="#ec4899"/><ellipse cx="169" cy="285" rx="20" ry="13" fill="#ec4899" opacity="0.2"/><polygon points="158,287 178,287 174,293 162,293" fill="#ec4899"/><polygon points="167,276 167,286 175,286" fill="#e2e0f0"/>
              <rect x="230" y="30" width="70" height="50" rx="6" fill="#27274e" stroke="#3b82f6"/><polygon points="246,62 266,62 262,68 250,68" fill="#f59e0b"/><polygon points="255,51 255,61 263,61" fill="#e2e0f0"/>
              <rect x="230" y="255" width="70" height="50" rx="6" fill="#27274e" stroke="#ec4899"/><ellipse cx="257" cy="285" rx="20" ry="13" fill="#ec4899" opacity="0.2"/><polygon points="246,287 266,287 262,293 250,293" fill="#ec4899"/><polygon points="255,276 255,286 263,286" fill="#e2e0f0"/>
              <rect x="310" y="30" width="70" height="50" rx="6" fill="#27274e" stroke="#3b82f6"/><polygon points="334,62 354,62 350,68 338,68" fill="#f59e0b"/><polygon points="343,51 343,61 351,61" fill="#e2e0f0"/>
              <rect x="310" y="255" width="70" height="50" rx="6" fill="#27274e" stroke="#ec4899"/><ellipse cx="345" cy="285" rx="20" ry="13" fill="#ec4899" opacity="0.2"/><polygon points="334,287 354,287 350,293 338,293" fill="#ec4899"/><polygon points="343,276 343,286 351,286" fill="#e2e0f0"/>
              <rect x="390" y="30" width="70" height="50" rx="6" fill="#27274e" stroke="#3b82f6"/><polygon points="422,62 442,62 438,68 426,68" fill="#f59e0b"/><polygon points="431,51 431,61 439,61" fill="#e2e0f0"/>
              <rect x="390" y="255" width="70" height="50" rx="6" fill="#27274e" stroke="#ec4899"/><ellipse cx="433" cy="285" rx="20" ry="13" fill="#ec4899" opacity="0.2"/><polygon points="422,287 442,287 438,293 426,293" fill="#ec4899"/><polygon points="431,276 431,286 439,286" fill="#e2e0f0"/>
              <rect x="470" y="30" width="70" height="50" rx="6" fill="#27274e" stroke="#3b82f6"/><polygon points="510,62 530,62 526,68 514,68" fill="#f59e0b"/><polygon points="519,51 519,61 527,61" fill="#e2e0f0"/>
              <rect x="470" y="255" width="70" height="50" rx="6" fill="#27274e" stroke="#ec4899"/><ellipse cx="521" cy="285" rx="20" ry="13" fill="#ec4899" opacity="0.2"/><polygon points="510,287 530,287 526,293 514,293" fill="#ec4899"/><polygon points="519,276 519,286 527,286" fill="#e2e0f0"/>
              <path d="M265,84 L265,116" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv13a)"/>
              <path d="M505,84 L505,116" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv13a)"/>
              <text x="20" y="145" text-anchor="start" font-size="12" fill="#9b99b8">What the</text>
              <text x="20" y="161" text-anchor="start" font-size="12" fill="#9b99b8">model gets</text>
              <rect x="150" y="120" width="230" height="46" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="265" y="139">Structure per frame</text><text x="265" y="157" font-size="11" fill="#9b99b8">edges, depth or pose</text>
              <rect x="400" y="120" width="210" height="46" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="505" y="139">Partly noised latents</text><text x="505" y="157" font-size="11" fill="#9b99b8">strength 0.6</text>
              <rect x="630" y="120" width="115" height="46" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="687" y="139">Style prompt</text><text x="687" y="157" font-size="11" fill="#9b99b8">"watercolour"</text>
              <path d="M265,168 L265,186" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv13a)"/>
              <path d="M505,168 L505,186" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv13a)"/>
              <path d="M687,168 L687,186" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv13a)"/>
              <rect x="150" y="190" width="595" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="447" y="215">Video model denoises all frames together</text>
              <path d="M345,232 L345,251" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv13a)"/>
              <text x="20" y="285" text-anchor="start" font-size="12" fill="#9b99b8">Styled video</text>
              <text x="610" y="276" text-anchor="start" font-size="12" fill="#6ee7b7">Same motion</text>
              <text x="610" y="294" text-anchor="start" font-size="12" fill="#f9a8d4">New look</text>
              <text x="380" y="333" font-size="12" fill="#9b99b8">The motion comes from the source video. The look comes from the prompt.</text>
            </g>
          </svg>
          <figcaption>Video-to-video. Structure and a partly noised copy of the source keep the motion. The style prompt changes the look.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Keep the motion, change the style</h3>
          <p>Say you film a real paper boat in a rainy gutter with your phone. The motion is perfect, but you want it to look like a watercolour painting. You can give the clip and the prompt "watercolour painting" to a video-to-video model.</p>
          <p>Video-to-video is useful for many jobs:</p>
          <ul class="lc-list">
            <li><strong>Style transfer:</strong> turn live action into a cartoon, a painting or clay animation.</li>
            <li><strong>Changing the scene:</strong> make a sunny street rainy, or day into night.</li>
            <li><strong>Rough to final:</strong> film a simple test with friends, then restyle it into a finished look.</li>
          </ul>
          <p>The source video does the hardest part: real, believable motion. The model only has to repaint it.</p>
        </div>
        <div class="lc-card">
          <h3>Method 1: noise part of the way</h3>
          <p>This is the same trick as image-to-image, used on a whole clip. It is often called <strong>SDEdit</strong>.</p>
          <ol class="lc-list">
            <li>Encode the source video into latents with the video VAE.</li>
            <li>Add noise, but only part of the way. The <strong>strength</strong> setting (0 to 1) says how far.</li>
            <li>Denoise with your new prompt. The model keeps the big shapes and motion, and repaints the details.</li>
          </ol>
          <p>A worked example: you ask for 30 steps with strength 0.6. That gives 30 × 0.6 = 18 steps. The model skips the first 12 steps. It adds just enough noise for step 13, then runs the last 18 steps. Hugging Face <code>diffusers</code> image-to-image pipelines count steps this way.</p>
          <table class="lc-table">
            <thead><tr><th>Strength</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>0.2 to 0.4</td><td>Small changes: colour and texture. Looks a lot like the source.</td></tr>
              <tr><td>0.5 to 0.7</td><td>Clear new style. The motion and layout mostly stay.</td></tr>
              <tr><td>0.8 to 1.0</td><td>Almost a new video. Shapes and motion can be lost.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Method 2: structure conditions</h3>
          <p>A <strong>structure condition</strong> is a simple map made from each source frame. It shows <em>where</em> things are, but not how they look. The model must follow the map, but it can paint any style on top. This is the idea behind <strong>ControlNet</strong>, used on every frame.</p>
          <table class="lc-table">
            <thead><tr><th>Condition</th><th>What it keeps</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>Edges</td><td>Outlines of every object</td><td>Keeping shapes very close to the source</td></tr>
              <tr><td>Depth map</td><td>What is near and what is far</td><td>Big style changes that keep the 3D layout</td></tr>
              <tr><td>Pose</td><td>A stick figure of each person's body</td><td>Dancing or acting, with a new character</td></tr>
            </tbody>
          </table>
          <p>Here is a tiny edge map in NumPy. A pixel is an edge if it is bright and touches a dark pixel.</p>
          <p>Part 2 in the code editor below does this for one frame. It pads the frame with zeros, finds the darkest neighbour of each pixel, and keeps the bright pixels that touch a dark one.</p>
          <p>For a filled 4x4 boat, only the outline is left. The 4 pixels in the middle are gone, because all their neighbours are bright. Do this for every frame, and you get an "edge video" that moves exactly like the source.</p>
        </div>
        <div class="lc-card">
          <h3>Why style transfer flickers</h3>
          <p>The simple way is to restyle each frame on its own with an image model. Each frame then makes its own random choices. Brush strokes and textures land in different places every frame. When you play the clip, they jump. This is <strong>flicker</strong>.</p>
          <p>Part 1 in the code editor measures this. It adds a paper texture to a moving boat in three ways. All three keep the motion. But the flicker in the dark background is very different. Styling frame by frame gives a flicker score of 0.125. A shared texture gives 0.000. A mix of 90% shared and 10% new gives 0.012.</p>
          <p>A new texture in every frame flickers a lot. A shared texture does not flicker at all. But in a real clip, a fixed texture "sticks to the screen". The boat slides under it like a dirty window. Good tools make the style move with the objects.</p>
          <p>How real tools reduce flicker:</p>
          <ul class="lc-list">
            <li><strong>Denoise all frames together:</strong> a video model with temporal attention makes choices that fit across frames.</li>
            <li><strong>Follow the motion:</strong> optical flow moves the style from one frame to the next, so textures travel with the boat.</li>
            <li><strong>Use moderate strength:</strong> very high strength gives the model more freedom to change things between frames.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: what stays and what changes?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">You restyle a phone clip of the paper boat as a watercolour with an edge condition and strength 0.6. Sort each feature.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Kept from the source video"></div>
              <div data-sorter-target="bucket" data-bucket="change" data-label="Changed by the style prompt"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="The motion comes from the source frames, and the edge maps follow it exactly.">The path the boat takes down the street</li>
              <li data-bucket="change" data-why="Brush strokes are details. The prompt asks for watercolour, so the model paints them.">Soft brush strokes and paper texture</li>
              <li data-bucket="keep" data-why="Timing is part of the motion. Each output frame matches one source frame.">When the boat turns and speeds up</li>
              <li data-bucket="change" data-why="Colour is part of the style. Watercolour often uses softer, lighter colours.">The colours of the buildings</li>
              <li data-bucket="keep" data-why="The edge condition keeps the outline of every object in every frame.">The outline of the boat</li>
              <li data-bucket="keep" data-why="A camera move changes the whole frame in the source. The model follows it.">The slow camera pan</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code editor makes the moving-boat video. Then it adds a paper texture in three ways and measures flicker in the dark background. Part 2 draws an edge map, like the ones a structure condition uses.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, all three methods keep the motion. Compare the flicker bars.</li>
            <li>In Part 1, change <code>SHARE = 0.9</code> to <code>0.5</code>. The mixed method now flickers more.</li>
            <li>In Part 1, change <code>STYLE_AMOUNT = 0.4</code> to <code>0.7</code>. Now "motion kept?" says NO. Too much style hides the boat, like very high strength.</li>
            <li>In Part 1, change <code>speed=1</code> to <code>speed=0</code> in <code>make_video</code>. Does the frame-by-frame method still flicker when nothing moves?</li>
            <li>In Part 2, change the boat to <code>frame[1:5, 1:7] = 1.0</code>. The edge map still shows only the outline, now 6 pixels wide.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Video-to-video keeps the motion of a source clip and repaints its look, using partial noise and structure maps such as edges, depth or pose. Styling each frame on its own causes flicker, so good tools make the style choices across all frames together.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Video-to-video, simplified: keep the motion of a source video, change its style.
        import numpy as np

        # ── Part 1: three ways to add a style, and their flicker ──
        print("== Part 1: style the video and measure flicker ==")
        # The "style" here is a paper texture added on top of each frame.
        # We compare three ways of adding it and measure the flicker.
        def make_video(T=6, H=8, W=8, size=2, speed=1):
            video = np.zeros((T, H, W))
            for t in range(T):
                c = t * speed
                video[t, 3:3 + size, c:c + size] = 1.0
            return video

        STYLE_AMOUNT = 0.4    # 0 = no style, 1 = only texture (try 0.2 or 0.7)
        SHARE = 0.9           # for "mixed": how much texture all frames share (0 to 1)

        source = make_video()
        T, H, W = source.shape
        rng = np.random.default_rng(42)
        shared = rng.random((H, W))                  # one texture for the whole clip
        own = rng.random((T, H, W))                  # a new texture for every frame

        def stylise(textures):
            return (1 - STYLE_AMOUNT) * source + STYLE_AMOUNT * textures

        videos = {
            "frame by frame": stylise(own),                              # each frame styled on its own
            "shared texture": stylise(np.stack([shared] * T)),           # same texture in every frame
            "mixed":          stylise(SHARE * shared + (1 - SHARE) * own),
        }

        def boat_column(frame):
            bright = np.where(frame.max(axis=0) >= 0.5)[0]       # columns with a bright pixel
            return int(bright[0]) if len(bright) else -1         # the first one is the boat's left edge

        background = (source[1:] == 0) & (source[:-1] == 0)   # pixels that stay dark in the source

        src_cols = [boat_column(f) for f in source]
        print("Source boat columns:", src_cols)
        print("\nMethod          | motion kept? | flicker (background change)")
        for name, v in videos.items():
            cols = [boat_column(f) for f in v]
            kept = "yes" if cols == src_cols else "NO"
            change = np.abs(v[1:] - v[:-1])[background].mean()      # how much dark pixels jump between frames
            print(f"{name:15} | {kept:12} | {change:.3f}  " + "#" * round(change * 100))

        # ── Part 2: a structure condition. An edge map keeps only the outline of the boat. ──
        print("\n== Part 2: an edge map of a 4x4 boat ==")
        frame = np.zeros((6, 8))
        frame[1:5, 2:6] = 1.0                    # a 4x4 boat in one frame

        p = np.pad(frame, 1)                     # add a ring of zeros
        darkest_neighbour = np.minimum.reduce([p[:-2, 1:-1], p[2:, 1:-1], p[1:-1, :-2], p[1:-1, 2:]])
        edges = (frame == 1) & (darkest_neighbour == 0)   # bright pixel next to a dark one

        for row in edges:
            print("".join("#" if v else "." for v in row))

        # Try it: in Part 1, set STYLE_AMOUNT = 0.7, or SHARE = 0.5. In Part 2, make the boat wider.
      PYTHON
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Adding Audio, Voice and Lip Sync</h1>
        </div>
        <p class="lc-lead">Many AI video models make silent clips. A finished video also needs sound: voices, music and sound effects. In this lesson you learn how AI makes each kind of sound. You also learn how <strong>lip sync</strong> matches a mouth to a voice, frame by frame. Finally, you see models that make the sound and the picture together.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="The first half second of the word hello at 24 frames per second. Top row: voice loudness for each of 12 frames. Middle row: the syllable hel covers frames 2 to 5 and lo covers frames 8 to 10. Bottom row: 12 video frames of a face. The mouth is open on loud frames and closed on quiet frames. Notes below say 48,000 samples per second divided by 24 frames gives 2,000 samples per frame, and one frame lasts 41.7 milliseconds.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="58" text-anchor="start" font-size="12" fill="#9b99b8">Voice</text>
              <text x="20" y="74" text-anchor="start" font-size="12" fill="#9b99b8">loudness</text>
              <line x1="140" y1="80.5" x2="736" y2="80.5" stroke="#4b4a78"/>
              <text x="20" y="123" text-anchor="start" font-size="12" fill="#9b99b8">Syllables</text>
              <rect x="240" y="102" width="196" height="30" rx="6" fill="#1f1f44" stroke="#f59e0b"/><text x="338" y="122">"hel"</text>
              <rect x="540" y="102" width="146" height="30" rx="6" fill="#1f1f44" stroke="#f59e0b"/><text x="613" y="122">"lo"</text>
              <text x="20" y="178" text-anchor="start" font-size="12" fill="#9b99b8">Video</text>
              <text x="20" y="194" text-anchor="start" font-size="12" fill="#9b99b8">frames</text>
              <rect x="148" y="78.8" width="30" height="1.5" rx="2" fill="#3b82f6"/>
              <rect x="140" y="150" width="46" height="60" rx="6" fill="#27274e" stroke="#4b4a78"/><circle cx="155" cy="170" r="2.5" fill="#9b99b8"/><circle cx="171" cy="170" r="2.5" fill="#9b99b8"/><ellipse cx="163" cy="190" rx="11" ry="1.8" fill="#1f1f44" stroke="#ec4899" stroke-width="1.6"/><text x="163" y="228" font-size="11" fill="#9b99b8">0</text>
              <rect x="198" y="78.8" width="30" height="1.5" rx="2" fill="#3b82f6"/>
              <rect x="190" y="150" width="46" height="60" rx="6" fill="#27274e" stroke="#4b4a78"/><circle cx="205" cy="170" r="2.5" fill="#9b99b8"/><circle cx="221" cy="170" r="2.5" fill="#9b99b8"/><ellipse cx="213" cy="190" rx="11" ry="1.8" fill="#1f1f44" stroke="#ec4899" stroke-width="1.6"/><text x="213" y="228" font-size="11" fill="#9b99b8">1</text>
              <rect x="248" y="49.2" width="30" height="30.8" rx="2" fill="#3b82f6"/>
              <rect x="240" y="150" width="46" height="60" rx="6" fill="#27274e" stroke="#4b4a78"/><circle cx="255" cy="170" r="2.5" fill="#9b99b8"/><circle cx="271" cy="170" r="2.5" fill="#9b99b8"/><ellipse cx="263" cy="190" rx="11" ry="9.2" fill="#1f1f44" stroke="#ec4899" stroke-width="1.6"/><text x="263" y="228" font-size="11" fill="#9b99b8">2</text>
              <rect x="298" y="40.4" width="30" height="39.6" rx="2" fill="#3b82f6"/>
              <rect x="290" y="150" width="46" height="60" rx="6" fill="#27274e" stroke="#4b4a78"/><circle cx="305" cy="170" r="2.5" fill="#9b99b8"/><circle cx="321" cy="170" r="2.5" fill="#9b99b8"/><ellipse cx="313" cy="190" rx="11" ry="11.4" fill="#1f1f44" stroke="#ec4899" stroke-width="1.6"/><text x="313" y="228" font-size="11" fill="#9b99b8">3</text>
              <rect x="348" y="40.0" width="30" height="40.0" rx="2" fill="#3b82f6"/>
              <rect x="340" y="150" width="46" height="60" rx="6" fill="#27274e" stroke="#4b4a78"/><circle cx="355" cy="170" r="2.5" fill="#9b99b8"/><circle cx="371" cy="170" r="2.5" fill="#9b99b8"/><ellipse cx="363" cy="190" rx="11" ry="11.5" fill="#1f1f44" stroke="#ec4899" stroke-width="1.6"/><text x="363" y="228" font-size="11" fill="#9b99b8">4</text>
              <rect x="398" y="40.4" width="30" height="39.6" rx="2" fill="#3b82f6"/>
              <rect x="390" y="150" width="46" height="60" rx="6" fill="#27274e" stroke="#4b4a78"/><circle cx="405" cy="170" r="2.5" fill="#9b99b8"/><circle cx="421" cy="170" r="2.5" fill="#9b99b8"/><ellipse cx="413" cy="190" rx="11" ry="11.4" fill="#1f1f44" stroke="#ec4899" stroke-width="1.6"/><text x="413" y="228" font-size="11" fill="#9b99b8">5</text>
              <rect x="448" y="78.8" width="30" height="1.5" rx="2" fill="#3b82f6"/>
              <rect x="440" y="150" width="46" height="60" rx="6" fill="#27274e" stroke="#4b4a78"/><circle cx="455" cy="170" r="2.5" fill="#9b99b8"/><circle cx="471" cy="170" r="2.5" fill="#9b99b8"/><ellipse cx="463" cy="190" rx="11" ry="1.8" fill="#1f1f44" stroke="#ec4899" stroke-width="1.6"/><text x="463" y="228" font-size="11" fill="#9b99b8">6</text>
              <rect x="498" y="78.8" width="30" height="1.5" rx="2" fill="#3b82f6"/>
              <rect x="490" y="150" width="46" height="60" rx="6" fill="#27274e" stroke="#4b4a78"/><circle cx="505" cy="170" r="2.5" fill="#9b99b8"/><circle cx="521" cy="170" r="2.5" fill="#9b99b8"/><ellipse cx="513" cy="190" rx="11" ry="1.8" fill="#1f1f44" stroke="#ec4899" stroke-width="1.6"/><text x="513" y="228" font-size="11" fill="#9b99b8">7</text>
              <rect x="548" y="49.2" width="30" height="30.8" rx="2" fill="#3b82f6"/>
              <rect x="540" y="150" width="46" height="60" rx="6" fill="#27274e" stroke="#4b4a78"/><circle cx="555" cy="170" r="2.5" fill="#9b99b8"/><circle cx="571" cy="170" r="2.5" fill="#9b99b8"/><ellipse cx="563" cy="190" rx="11" ry="9.2" fill="#1f1f44" stroke="#ec4899" stroke-width="1.6"/><text x="563" y="228" font-size="11" fill="#9b99b8">8</text>
              <rect x="598" y="40.4" width="30" height="39.6" rx="2" fill="#3b82f6"/>
              <rect x="590" y="150" width="46" height="60" rx="6" fill="#27274e" stroke="#4b4a78"/><circle cx="605" cy="170" r="2.5" fill="#9b99b8"/><circle cx="621" cy="170" r="2.5" fill="#9b99b8"/><ellipse cx="613" cy="190" rx="11" ry="11.4" fill="#1f1f44" stroke="#ec4899" stroke-width="1.6"/><text x="613" y="228" font-size="11" fill="#9b99b8">9</text>
              <rect x="648" y="44.4" width="30" height="35.6" rx="2" fill="#3b82f6"/>
              <rect x="640" y="150" width="46" height="60" rx="6" fill="#27274e" stroke="#4b4a78"/><circle cx="655" cy="170" r="2.5" fill="#9b99b8"/><circle cx="671" cy="170" r="2.5" fill="#9b99b8"/><ellipse cx="663" cy="190" rx="11" ry="10.4" fill="#1f1f44" stroke="#ec4899" stroke-width="1.6"/><text x="663" y="228" font-size="11" fill="#9b99b8">10</text>
              <rect x="698" y="78.8" width="30" height="1.5" rx="2" fill="#3b82f6"/>
              <rect x="690" y="150" width="46" height="60" rx="6" fill="#27274e" stroke="#4b4a78"/><circle cx="705" cy="170" r="2.5" fill="#9b99b8"/><circle cx="721" cy="170" r="2.5" fill="#9b99b8"/><ellipse cx="713" cy="190" rx="11" ry="1.8" fill="#1f1f44" stroke="#ec4899" stroke-width="1.6"/><text x="713" y="228" font-size="11" fill="#9b99b8">11</text>
              <text x="20" y="228" text-anchor="start" font-size="11" fill="#9b99b8">frame number</text>
              <text x="380" y="266">48,000 samples per second ÷ 24 frames per second = 2,000 samples per frame</text>
              <text x="380" y="292" fill="#f9a8d4">One frame lasts 41.7 ms. A mouth 3 frames late is 125 ms out of sync.</text>
            </g>
          </svg>
          <figcaption>The first half second of "hello" at 24 fps. Loud frames get an open mouth. Quiet frames get a closed mouth.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of sound</h3>
          <p>A video's soundtrack usually has three parts. AI tools can make each one from a text prompt.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>AI tool type</th><th>Example prompt for the boat clip</th></tr></thead>
            <tbody>
              <tr><td>Voice</td><td><strong>Text-to-speech</strong> (TTS): turns written words into speech</td><td>"Every rainy evening, the little boats set sail." Calm British voice.</td></tr>
              <tr><td>Music</td><td><strong>Text-to-music</strong>: makes a piece of music from a description</td><td>"Soft solo piano, slow and gentle, 30 seconds"</td></tr>
              <tr><td>Sound effects</td><td><strong>Text-to-audio</strong>: makes sounds that are not speech or music</td><td>"Steady rain on a street, water running in a gutter"</td></tr>
            </tbody>
          </table>
          <p>Some sound effect models can also <strong>watch</strong> the video. They make sounds that match what happens on screen, such as a splash when the boat hits a puddle. This is called <strong>video-to-audio</strong>.</p>
          <p>Well-known tools include ElevenLabs for voices, and Suno and Udio for music. These products change quickly, so check their current docs for features, prices and licences.</p>
        </div>
        <div class="lc-card">
          <h3>Voices and audio basics</h3>
          <p>A text-to-speech model reads your script and makes a <strong>waveform</strong>: a long list of numbers that describe the sound. You usually choose a voice, a speed and sometimes an emotion, such as "calm" or "excited".</p>
          <p>Audio has many more numbers per second than video has frames. The <strong>sample rate</strong> is how many numbers the audio has per second. Video work often uses 48,000 samples per second.</p>
          <ul class="lc-list">
            <li>At 24 fps: 48,000 ÷ 24 = 2,000 audio samples for each video frame.</li>
            <li>A 5-second clip has 120 frames and 240,000 audio samples.</li>
          </ul>
          <p>Some tools can <strong>clone</strong> a voice from a short recording. Only clone a voice when the owner has given clear permission. You will learn more about consent later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Lip sync: matching the mouth to the voice</h3>
          <p>When a character speaks, the mouth must move with the words. Speech is made of small sounds called <strong>phonemes</strong>. Each phoneme has a mouth shape, called a <strong>viseme</strong>. Several phonemes share one viseme.</p>
          <table class="lc-table">
            <thead><tr><th>Sounds</th><th>Mouth shape (viseme)</th></tr></thead>
            <tbody>
              <tr><td>M, B, P</td><td>Lips pressed together</td></tr>
              <tr><td>"ah" as in "father"</td><td>Mouth wide open</td></tr>
              <tr><td>"oo" as in "boot"</td><td>Lips round and pushed out</td></tr>
              <tr><td>F, V</td><td>Top teeth on the bottom lip</td></tr>
            </tbody>
          </table>
          <p>A <strong>lip-sync model</strong> takes a video of a face and an audio track. It redraws only the mouth area so that it matches the sounds. A well-known research model is Wav2Lip. Many video tools now have a lip-sync feature built in.</p>
          <p>To line up sound and picture, you turn time into frame numbers. Frame number = time in seconds × fps, rounded down:</p>
          <p>Say the word "Hello" runs from 0.10 s to 0.45 s, at 24 fps. It starts at 0.10 × 24 = 2.4, so frame 2. It ends at 0.45 × 24 = 10.8, so frame 10. The word "there" runs from 0.60 s to 0.85 s, so it covers frames 14 to 20. Part 2 in the code editor below works this out for you.</p>
          <p>If the mouth is off by even a few frames, the video looks wrong. People notice sound that comes <em>before</em> the mouth moves more easily than sound that comes late.</p>
        </div>
        <div class="lc-card">
          <h3>Models that make sound with the video</h3>
          <p>The steps above make the picture first and add sound later. Some newer models make both at the same time. Google's Veo 3 and OpenAI's Sora 2 are well-known examples. They can make speech, sound effects and background sound that match the clip.</p>
          <p>Their makers have not published every detail. The general idea is simple: the model makes the audio and the video in one process. So a splash and its sound land on the same frame.</p>
          <p>For these models, the prompt describes the sound too. Put spoken words in quotes, and name the sounds you want:</p>
          <p>Part 3 in the code editor below prints a full example. It describes the scene, adds a "Sound:" line, and puts the girl's words in quotes.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Separate tools</th><th>One model for both</th></tr></thead>
            <tbody>
              <tr><td>Sync</td><td>You line it up yourself</td><td>Usually matches on its own</td></tr>
              <tr><td>Control</td><td>Change the voice or music any time</td><td>Harder to change one part</td></tr>
              <tr><td>Work</td><td>More steps</td><td>Fewer steps</td></tr>
            </tbody>
          </table>
          <p>Features change fast, so check each tool's current docs for what it can do with sound.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: add sound to the boat clip</h3>
          <p>Step through how a creator adds sound to a silent 5-second clip of the paper boat.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="The goal">Add a narrator, rain sounds and soft music to my silent 5-second boat clip.</li>
              <li data-kind="thought" data-label="Plan">The soundtrack needs three tracks: voice, sound effects and music. Each one comes from a different tool.</li>
              <li data-kind="tool" data-label="Text-to-speech">Script: "Every rainy evening, the little boats set sail." Voice: calm, British.</li>
              <li data-kind="result" data-label="Voice track">A 3-second voice clip at 48,000 samples per second.</li>
              <li data-kind="tool" data-label="Sound effects and music">Prompts: "steady rain on a street, water running in a gutter" and "soft solo piano, slow".</li>
              <li data-kind="check" data-label="Line it up">The voice should start at 1.0 s. At 24 fps that is frame 24.</li>
              <li data-kind="warn" data-label="Listen back">The music is as loud as the voice, so the words are hard to hear. Turn the music down while the narrator speaks.</li>
              <li data-kind="answer" data-label="Finished">Export the video with one mixed soundtrack. Say in the description that the voice is AI-made.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code editor makes a fake voice with three bursts of sound. It turns loudness into mouth movement, one value per frame. Then it finds how late the mouth is. Part 2 turns word times into frame numbers. Part 3 prints a prompt with sound.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check the line "2000 audio samples per frame". Find the frames where the mouth is wide open.</li>
            <li>In Part 1, change <code>VIDEO_DELAY = 3</code> to <code>-2</code>. The code now finds that the mouth is 2 frames early.</li>
            <li>Change <code>FPS = 24</code> to <code>30</code>. How many samples are in one frame now? How many milliseconds is one frame? In Part 2, which frames does "Hello" cover now?</li>
            <li>In Part 1, add a fourth syllable, such as <code>(0.90, 0.98)</code>, to the list of bursts. Find its frames in the output.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A soundtrack has voice, music and sound effects, and AI can make each one. Lip sync turns sounds into mouth shapes on the right frames, and at 24 fps each frame is only 41.7 ms. Some newer models make sound and video together, so they stay in sync.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Lip sync, simplified: turn a voice track into mouth movement, then find a sync error.
        import numpy as np

        # ── Part 1: from voice loudness to mouth movement, and a sync check ──
        print("== Part 1: voice to mouth, and a sync check ==")
        SAMPLE_RATE = 48000          # audio samples per second
        FPS = 24                     # video frames per second
        SECONDS = 1
        VIDEO_DELAY = 3              # the mouth in the video is this many frames late (try 0 or -2)

        samples_per_frame = SAMPLE_RATE // FPS
        print(f"{SAMPLE_RATE} samples / {FPS} fps = {samples_per_frame} audio samples per frame")
        print(f"One frame lasts {1000 / FPS:.1f} ms")

        # A fake voice: three syllables, each a short burst of sound
        np.random.seed(42)
        t = np.arange(SAMPLE_RATE * SECONDS) / SAMPLE_RATE
        loud = np.zeros_like(t)
        for start, end in [(0.10, 0.25), (0.35, 0.45), (0.60, 0.85)]:
            loud[(t >= start) & (t < end)] = 1.0
        voice = loud * np.sin(2 * np.pi * 220 * t) + np.random.randn(len(t)) * 0.02

        # Loudness per video frame (RMS = root mean square of the samples in that frame)
        frames = voice.reshape(-1, samples_per_frame)           # shape (24, 2000)
        rms = np.sqrt((frames ** 2).mean(axis=1))
        mouth = rms / rms.max()                                 # 0 = closed, 1 = wide open

        print("\nFrame | mouth open")
        for i in range(len(mouth)):
            print(f"  {i:2d}  | {mouth[i]:.2f} " + "#" * round(mouth[i] * 20))

        # A generated video whose mouth moves a few frames late
        video_mouth = np.roll(mouth, VIDEO_DELAY)

        # Try every shift and keep the one where audio and mouth match best
        best_shift, best_score = 0, -1.0
        for shift in range(-6, 7):
            score = np.dot(np.roll(mouth, shift), video_mouth)
            if score > best_score:
                best_shift, best_score = shift, score

        ms = abs(best_shift) * 1000 / FPS
        if best_shift == 0:
            print("\nBest match: shift 0. Audio and mouth are in sync.")
        else:
            word = "late" if best_shift > 0 else "early"
            print(f"\nBest match: the mouth is {abs(best_shift)} frames {word} = {ms:.0f} ms")
        print("Fix: move the audio by the same amount, or re-sync the mouth.")

        # ── Part 2: turn word times into frame numbers ──
        print("\n== Part 2: word times to frame numbers ==")
        # Frame = time in seconds x fps, rounded down. FPS comes from Part 1.
        words = [("Hello", 0.10, 0.45), ("there", 0.60, 0.85)]   # word, start s, end s

        for word, start, end in words:
            first = int(start * FPS)
            last = int(end * FPS)
            print(f"{word:6} {start:.2f}-{end:.2f} s -> frames {first} to {last}")

        # ── Part 3: a prompt for a model that makes sound and video together ──
        print("\n== Part 3: a prompt with sound ==")
        # Put the spoken words in quotes, and name the sounds you want.
        prompt = """A paper boat sails down a rainy street, slow camera pan, golden evening light.
        Sound: steady rain, a small splash as the boat hits a puddle.
        A girl off screen says: "Look, it's still floating!\""""
        print(prompt)

        # Try it: in Part 1, change VIDEO_DELAY to -2 (mouth early), or FPS to 30.
      PYTHON
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Popular Video Models and Tools</h1>
        </div>
        <p class="lc-lead">You now know how video models work inside. Next you need to pick one. There are many video tools, and they change every few months. This lesson sorts them into four groups. It also gives you a checklist to compare any tool, old or new.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 336" role="img" aria-label="Your prompt or image can go to four kinds of tool. Hosted apps such as Sora, Veo, Runway, Kling, Luma and Pika. APIs such as the Veo, Sora and Runway APIs. Open-weight models such as Wan, HunyuanVideo and LTX-Video, run with diffusers or ComfyUI. Editors with AI, such as Adobe Firefly, Premiere Pro and CapCut. From left to right, tools get harder to start but give more control, except editors which add AI to editing work.">
            <defs><marker id="tv15a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="255" y="14" width="250" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="39" font-weight="700">Your prompt or image</text>
              <line x1="330" y1="56" x2="105" y2="94" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv15a)"/>
              <line x1="360" y1="56" x2="287" y2="94" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv15a)"/>
              <line x1="400" y1="56" x2="473" y2="94" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv15a)"/>
              <line x1="430" y1="56" x2="655" y2="94" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv15a)"/>

              <rect x="16" y="100" width="170" height="164" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="101" y="126" font-weight="700" fill="#8b5cf6">Hosted apps</text>
              <text x="101" y="146" font-size="12" fill="#9b99b8">web or phone app</text>
              <line x1="30" y1="158" x2="172" y2="158" stroke="#4b4a78"/>
              <text x="101" y="182" font-size="12.5">Sora</text>
              <text x="101" y="203" font-size="12.5">Veo (Gemini, Flow)</text>
              <text x="101" y="224" font-size="12.5">Runway, Kling</text>
              <text x="101" y="245" font-size="12.5">Luma, Pika</text>

              <rect x="202" y="100" width="170" height="164" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="287" y="126" font-weight="700" fill="#3b82f6">APIs</text>
              <text x="287" y="146" font-size="12" fill="#9b99b8">call from your code</text>
              <line x1="216" y1="158" x2="358" y2="158" stroke="#4b4a78"/>
              <text x="287" y="182" font-size="12.5">Veo (Gemini API)</text>
              <text x="287" y="203" font-size="12.5">Sora API</text>
              <text x="287" y="224" font-size="12.5">Runway API</text>
              <text x="287" y="245" font-size="12" fill="#9b99b8">pay per second</text>

              <rect x="388" y="100" width="170" height="164" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="473" y="126" font-weight="700" fill="#10b981">Open weights</text>
              <text x="473" y="146" font-size="12" fill="#9b99b8">run on your own GPU</text>
              <line x1="402" y1="158" x2="544" y2="158" stroke="#4b4a78"/>
              <text x="473" y="182" font-size="12.5">Wan</text>
              <text x="473" y="203" font-size="12.5">HunyuanVideo</text>
              <text x="473" y="224" font-size="12.5">LTX-Video</text>
              <text x="473" y="245" font-size="12" fill="#9b99b8">diffusers, ComfyUI</text>

              <rect x="574" y="100" width="170" height="164" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="659" y="126" font-weight="700" fill="#ec4899">Editors with AI</text>
              <text x="659" y="146" font-size="12" fill="#9b99b8">inside editing apps</text>
              <line x1="588" y1="158" x2="730" y2="158" stroke="#4b4a78"/>
              <text x="659" y="182" font-size="12.5">Adobe Firefly</text>
              <text x="659" y="203" font-size="12.5">Premiere Pro</text>
              <text x="659" y="224" font-size="12.5">CapCut</text>
              <text x="659" y="245" font-size="12" fill="#9b99b8">fix and extend clips</text>

              <line x1="40" y1="292" x2="548" y2="292" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv15a)"/>
              <text x="16" y="320" text-anchor="start" font-size="12" fill="#9b99b8">Easiest to start</text>
              <text x="558" y="320" text-anchor="end" font-size="12" fill="#9b99b8">Most control, most setup</text>
              <text x="659" y="297" font-size="12" fill="#9b99b8">Best for</text>
              <text x="659" y="316" font-size="12" fill="#9b99b8">finishing work</text>
            </g>
          </svg>
          <figcaption>Four ways to make AI video. Apps are the quickest start. Open weights give the most control but need a strong GPU. Editors add AI to normal editing work.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four kinds of video tool</h3>
          <ul class="lc-list">
            <li><strong>Hosted apps.</strong> You type a prompt on a website or phone app. The model runs on the company's computers. Examples are OpenAI's Sora, Google's Veo (in the Gemini app and Flow), Runway, Kling, Luma Dream Machine and Pika. You usually pay with a subscription or credits.</li>
            <li><strong>APIs.</strong> An <strong>API</strong> (application programming interface) lets your own code send a prompt and get a video back. Google offers Veo through the Gemini API and Vertex AI. OpenAI and Runway also sell API access. You usually pay for each second of video.</li>
            <li><strong>Open-weight models.</strong> The company publishes the model files, called <strong>weights</strong>. You download them and run them yourself. Examples are Wan, HunyuanVideo, LTX-Video and CogVideoX. You need a strong GPU, or you rent one in the cloud.</li>
            <li><strong>Editors with AI.</strong> Normal video editors now have AI features. Adobe Firefly and Premiere Pro can make or extend short clips. CapCut has AI effects. These are good for fixing and finishing a video.</li>
          </ul>
          <p>There is also a special group: <strong>avatar tools</strong> such as Synthesia and HeyGen. They make a talking presenter from a script. Companies use them for training videos.</p>
          <p>Model names and versions change very often. A tool that leads today may fall behind in six months. So learn the groups and the checklist below. Then check the current docs before you choose.</p>
        </div>
        <div class="lc-card">
          <h3>What to compare</h3>
          <p>Ask the same questions about every tool. Write the answers in a table.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td><strong>Length:</strong> how long is one clip?</td><td>Many tools make clips of about 5 to 20 seconds. A longer video needs many clips joined together.</td></tr>
              <tr><td><strong>Resolution and frame rate</strong></td><td>720p looks fine on a phone. A big screen needs 1080p or more.</td></tr>
              <tr><td><strong>Control:</strong> image-to-video, camera moves, reference images?</td><td>More control means fewer wasted tries. It also helps keep a character the same across shots.</td></tr>
              <tr><td><strong>Audio:</strong> does it make sound too?</td><td>Some models make speech and sound with the video. Others give you a silent clip.</td></tr>
              <tr><td><strong>Price</strong></td><td>Count the retries. You often make 3 or more takes to get one good shot.</td></tr>
              <tr><td><strong>Licence and terms</strong></td><td>Can you use the video in paid work? Who owns it? Can the company train on your uploads?</td></tr>
              <tr><td><strong>Safety rules and labels</strong></td><td>Most hosted tools block some prompts. Many add a visible or hidden watermark.</td></tr>
            </tbody>
          </table>
          <p>Open-weight models also have licences. Some use a very open licence such as Apache 2.0. Others use a custom licence with limits. Always read the licence on the model page.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the real cost of a 30-second video</h3>
          <p>Say a tool charges $0.10 for each second of video. You want a 30-second video. That sounds like $3.</p>
          <p>But you make 3 takes of every shot and keep the best one. So you generate 30 × 3 = 90 seconds. The cost is 90 × $0.10 = $9.</p>
          <p>Clip length matters too. If the longest clip is 8 seconds, you need 30 ÷ 8 = 3.75, so 4 clips. Each clip is a new chance for the boat to change colour. Fewer, longer clips are easier to keep consistent.</p>
          <p>The prices here are made up. Real prices change often, so check the tool's pricing page. Part 2 in the code editor below does this sum step by step.</p>
        </div>
        <div class="lc-card">
          <h3>Running an open model with diffusers</h3>
          <p>With open weights, you write the code yourself. The Hugging Face <strong>diffusers</strong> library has pipelines for several video models. Part 3 in the code editor below has a short example for the small Wan 2.1 text-to-video model. It loads the model, sends it a paper boat prompt and asks for 81 frames at 480×832 pixels.</p>
          <p>The first run downloads several gigabytes of weights. Then the model denoises a latent for 81 frames, and the VAE turns it into pixels. You get a file called <code>boat.mp4</code>, about 5 seconds long. On a good GPU this takes a few minutes.</p>
          <p>This code needs a GPU and a big download, so it cannot run in your browser. In the browser, Part 3 just prints a short message. Copy it to a computer with an NVIDIA GPU to run it. Check the model card for the current model names and settings.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which kind of tool?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Put each situation in the kind of tool that fits it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="app" data-label="Hosted app"></div>
              <div data-sorter-target="bucket" data-bucket="api" data-label="API"></div>
              <div data-sorter-target="bucket" data-bucket="open" data-label="Open-weight model"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="app" data-why="A website or phone app is the fastest way to try an idea. You need no code and no GPU.">A teacher wants one short clip for a lesson today</li>
              <li data-bucket="api" data-why="An API lets your own app send prompts and get videos back automatically.">An online shop wants its website to make a product video for each new item</li>
              <li data-bucket="open" data-why="With open weights, the videos are made on your own computers. No data leaves your company.">A company must keep all its footage on its own servers</li>
              <li data-bucket="open" data-why="Open weights let you fine-tune the model on your own clips. Hosted tools rarely allow this.">A studio wants to fine-tune a model on its own cartoon style</li>
              <li data-bucket="app" data-why="Apps give simple buttons for camera moves and image-to-video. No setup is needed.">A beginner wants to test camera moves with simple buttons</li>
              <li data-bucket="api" data-why="An API can run a loop over many prompts from a script, and you pay per second.">A developer needs 200 short clips made by a script overnight</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has three parts. Part 1 compares four <em>made-up</em> tools with a scorecard. It scales each feature from 0 to 1, multiplies it by how much you care, and adds it up. It also works out the cost of a 30-second video. Part 2 is the worked example above. Part 3 is the Wan 2.1 diffusers code, which runs only on a computer with a GPU.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, which tool wins? Notice that QuickReel is never picked for paid work, because its licence does not allow it.</li>
            <li>StudioGen wins because it makes 4K video. In Part 1, change the weight for <code>max_height</code> from 2 to 0. Which tool wins now?</li>
            <li>In Part 1, change <code>TAKES</code> to 5. How much does each tool cost now?</li>
            <li>In Part 1, add a new column, such as <code>"has_audio": [1, 0, 0, 1]</code>, and give it a weight in <code>weights</code>.</li>
            <li>In Part 2, change <code>LONGEST_CLIP</code> to 10. How many clips do you need now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Video tools change fast, but the questions stay the same. Compare clip length, resolution, control, price with retries, and the licence, then check the current docs before you choose.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Compare video tools with a simple scorecard.
        # The tools and numbers are MADE UP for practice. Real tools change often,
        # so always check each tool's current pricing page and terms.
        import math
        import pandas as pd

        # ── Part 1: a scorecard for four made-up tools ──
        print("== Part 1: a scorecard for four made-up tools ==")
        tools = pd.DataFrame({
            "tool":        ["CloudClip", "StudioGen", "OpenFrame", "QuickReel"],
            "kind":        ["app", "api", "open weights", "app"],
            "max_seconds": [10, 8, 5, 6],        # longest clip in one go
            "max_height":  [1080, 2160, 720, 720],   # 1080 = Full HD, 2160 = 4K
            "camera_ctrl": [1, 1, 0, 0],         # 1 = has camera controls
            "image_to_vid":[1, 1, 1, 0],         # 1 = can animate a still image
            "commercial":  [1, 1, 1, 0],         # 1 = licence allows paid work
            "cost_per_sec":[0.10, 0.15, 0.03, 0.05],  # dollars per second (OpenFrame: rented GPU time)
        })

        # Your project: a 30-second video. You expect 3 takes per shot.
        PROJECT_SECONDS = 30
        TAKES = 3

        # How much each feature matters to you (0 = not at all, 3 = a lot)
        weights = {"max_seconds": 1, "max_height": 2, "camera_ctrl": 3,
                   "image_to_vid": 2, "commercial": 3}

        # Scale each column to 0..1 so they can be added fairly
        score = 0
        for col, w in weights.items():
            score = score + w * tools[col] / tools[col].max()
        tools["score"] = score.round(2)

        # Cost: every second of the final video is generated TAKES times
        tools["clips_needed"] = [math.ceil(PROJECT_SECONDS / s) for s in tools["max_seconds"]]
        tools["est_cost"] = (PROJECT_SECONDS * TAKES * tools["cost_per_sec"]).round(2)

        print(tools[["tool", "kind", "score", "clips_needed", "est_cost"]]
              .sort_values("score", ascending=False).to_string(index=False))

        # A licence problem is a deal-breaker, not just a lower score
        ok = tools[tools["commercial"] == 1]
        best = ok.sort_values("score", ascending=False).iloc[0]
        print(f"\nBest for paid work: {best['tool']} (score {best['score']}, about ${best['est_cost']:.2f})")

        # ── Part 2: the worked example, the real cost of a 30-second video ──
        print("\n== Part 2: the real cost of a 30-second video ==")
        PRICE_PER_SECOND = 0.10   # made-up price
        VIDEO_SECONDS = 30
        TAKES_PER_SHOT = 3
        LONGEST_CLIP = 8
        print(f"Without retries: {VIDEO_SECONDS} x ${PRICE_PER_SECOND:.2f} = ${VIDEO_SECONDS * PRICE_PER_SECOND:.2f}")
        generated = VIDEO_SECONDS * TAKES_PER_SHOT
        print(f"With {TAKES_PER_SHOT} takes: {VIDEO_SECONDS} x {TAKES_PER_SHOT} = {generated} seconds generated")
        print(f"Real cost: {generated} x ${PRICE_PER_SECOND:.2f} = ${generated * PRICE_PER_SECOND:.2f}")
        print(f"Clips: {VIDEO_SECONDS} / {LONGEST_CLIP} = {VIDEO_SECONDS / LONGEST_CLIP}, so {math.ceil(VIDEO_SECONDS / LONGEST_CLIP)} clips")

        # ── Part 3: run the open Wan 2.1 model with diffusers (run this part on your own computer) ──
        # Needs an NVIDIA GPU and a download of several gigabytes. On your computer first run:
        #   pip install torch diffusers transformers accelerate ftfy imageio imageio-ffmpeg
        # Check the model card for the current model names and settings.
        print("\n== Part 3: the open Wan 2.1 model with diffusers ==")
        try:
            import torch
            from diffusers import WanPipeline
            from diffusers.utils import export_to_video
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch and diffusers, which do not run in the browser. Copy this part to a computer with an NVIDIA GPU to run it.")
        elif not torch.cuda.is_available():
            print("Part 3 needs an NVIDIA GPU (CUDA). No GPU was found, so the video is not made.")
        else:
            model_id = "Wan-AI/Wan2.1-T2V-1.3B-Diffusers"
            pipe = WanPipeline.from_pretrained(model_id, torch_dtype=torch.bfloat16)
            pipe.to("cuda")   # needs an NVIDIA GPU

            prompt = "a paper boat sailing down a rainy street, slow camera pan, golden evening light"
            frames = pipe(prompt=prompt, height=480, width=832, num_frames=81).frames[0]
            export_to_video(frames, "boat.mp4", fps=16)
            print("Saved boat.mp4 (81 frames at 16 fps, about 5 seconds)")
      PYTHON
    },
    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Limits, Ethics and Deepfakes</h1>
        </div>
        <p class="lc-lead">AI video can now look very real. That is useful for films and adverts. It can also be used to fool people. In this lesson you learn what video models still get wrong. You learn what a deepfake is and how labels and provenance help. You also learn how to check a video before you trust it or share it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 312" role="img" aria-label="Provenance chain in four steps. 1 Generate: the AI tool makes the clip. 2 Mark: it adds a hidden watermark and content credentials. 3 Share: the clip is uploaded to a social platform. 4 Check: the platform reads the marks and shows an AI-made label. A watermark is a signal hidden in the pixels. Content credentials are a signed record in the file. Weak point: a screen recording, crop or re-upload can remove the record, so no label does not prove a video is real.">
            <defs><marker id="tv16a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="24" width="160" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="92" y="52" font-weight="700" fill="#8b5cf6">1. Generate</text>
              <text x="92" y="76" font-size="12">AI tool makes</text>
              <text x="92" y="94" font-size="12">the clip</text>
              <line x1="174" y1="69" x2="198" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv16a)"/>

              <rect x="204" y="24" width="160" height="90" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="284" y="52" font-weight="700" fill="#10b981">2. Mark</text>
              <text x="284" y="76" font-size="12">hidden watermark</text>
              <text x="284" y="94" font-size="12">+ content credentials</text>
              <line x1="366" y1="69" x2="390" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv16a)"/>

              <rect x="396" y="24" width="160" height="90" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="476" y="52" font-weight="700" fill="#3b82f6">3. Share</text>
              <text x="476" y="76" font-size="12">upload to a</text>
              <text x="476" y="94" font-size="12">social platform</text>
              <line x1="558" y1="69" x2="582" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv16a)"/>

              <rect x="588" y="24" width="160" height="90" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="668" y="52" font-weight="700" fill="#22d3ee">4. Check</text>
              <text x="668" y="76" font-size="12">platform shows</text>
              <text x="668" y="94" font-size="12">an "AI-made" label</text>

              <line x1="250" y1="116" x2="192" y2="146" stroke="#10b981" stroke-width="1.5" marker-end="url(#tv16a)"/>
              <line x1="318" y1="116" x2="568" y2="146" stroke="#10b981" stroke-width="1.5" marker-end="url(#tv16a)"/>

              <rect x="12" y="152" width="360" height="66" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="192" y="178" font-weight="700">Watermark: a signal in the pixels</text>
              <text x="192" y="202" font-size="12" fill="#9b99b8">Survives some edits. Needs the maker's detector.</text>

              <rect x="388" y="152" width="360" height="66" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="568" y="178" font-weight="700">Content credentials: a signed record</text>
              <text x="568" y="202" font-size="12" fill="#9b99b8">Says who made it and how. Easy to strip.</text>

              <rect x="12" y="236" width="736" height="62" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="6 4"/>
              <text x="380" y="261" font-weight="700" fill="#ec4899">Weak point: a screen recording, crop or re-upload can remove the marks</text>
              <text x="380" y="284" font-size="12" fill="#9b99b8">So a missing label does NOT prove that a video is real.</text>
            </g>
          </svg>
          <figcaption>Provenance means a record of where a video came from. Marks are added when the clip is made and read when it is shared. They help, but they can be lost.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What video models still get wrong</h3>
          <ul class="lc-list">
            <li><strong>Physics:</strong> water may flow uphill. A glass may break before it hits the floor. Objects may pass through each other.</li>
            <li><strong>Hands and text:</strong> fingers can merge or change number. Signs and labels often turn into nonsense letters.</li>
            <li><strong>Consistency:</strong> a face, a shirt or the paper boat can slowly change between shots.</li>
            <li><strong>Length:</strong> most tools make short clips. Long stories need many clips joined by hand.</li>
            <li><strong>Bias:</strong> models learn from their training videos. If some people or places are rare in that data, the model shows them badly or not at all.</li>
            <li><strong>Training data questions:</strong> many models were trained on videos from the internet. Artists and companies still argue in court about whether this was allowed.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Deepfakes and consent</h3>
          <p>A <strong>deepfake</strong> is a fake video or audio clip of a real person. It shows them saying or doing something they never did. Image-to-video, voice cloning and lip sync make deepfakes easier to create.</p>
          <p>The main rule is <strong>consent</strong>. Consent means the person clearly agreed. Never make a video of a real person without their permission. This includes friends, teachers and famous people.</p>
          <p>Deepfakes cause real harm:</p>
          <ul class="lc-list">
            <li><strong>Misinformation:</strong> a fake clip of a politician can spread before an election.</li>
            <li><strong>Fraud:</strong> criminals copy a manager's face and voice in a video call to ask for money.</li>
            <li><strong>Abuse:</strong> fake intimate videos hurt real people, and many countries now treat them as a crime.</li>
          </ul>
          <p>Most hosted tools block prompts about real public figures. They also refuse sexual content about real people. These rules help, but they do not stop everyone.</p>
        </div>
        <div class="lc-card">
          <h3>Labels and provenance</h3>
          <p>Two main tools help people know that a video is AI-made:</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Invisible watermark</th><th>Content credentials</th></tr></thead>
            <tbody>
              <tr><td>What it is</td><td>A tiny pattern hidden in the pixels or sound</td><td>A signed record stored with the file</td></tr>
              <tr><td>Example</td><td>Google's SynthID</td><td>The C2PA standard, used by Adobe, OpenAI, Google and others</td></tr>
              <tr><td>Who can read it</td><td>Usually only the maker's detector</td><td>Anyone with a C2PA checker</td></tr>
              <tr><td>Weak point</td><td>Heavy edits can weaken it</td><td>A screen recording or re-upload can remove it</td></tr>
            </tbody>
          </table>
          <p>Many tools also add a <strong>visible</strong> watermark, such as a small logo in the corner. Some social platforms add an "AI-generated" label too. Good practice is simple: if you post AI video, say so clearly.</p>
          <p><strong>Laws vary by country and change often.</strong> In the EU, the AI Act requires deepfakes to be clearly labelled. The UK and many US states have made some kinds of deepfakes a crime, such as fake intimate images. Check the rules where you live and where you publish. This lesson is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>How to spot a fake</h3>
          <p>Look closely, but do not trust your eyes alone. Good fakes can pass every visual test.</p>
          <ul class="lc-list">
            <li><strong>Look:</strong> hands, teeth, ears, jewellery and text. Watch for edges that wobble or melt.</li>
            <li><strong>Listen:</strong> do the lips match the words? Does the voice sound flat or have odd breaths?</li>
            <li><strong>Check physics:</strong> shadows, reflections and how hair or water move.</li>
            <li><strong>Check the source:</strong> who posted it first? Do trusted news sites report the same event?</li>
            <li><strong>Check provenance:</strong> look for content credentials or a platform label. Remember that no label proves nothing.</li>
          </ul>
          <p>AI detector websites exist, but they make mistakes in both directions. Use them as one clue, not as proof.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check a viral clip</h3>
          <p>Step through how a careful person checks a surprising video before sharing it.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="The clip">A friend sends a video. It shows a town mayor saying the town's bridge will close for a year.</li>
              <li data-kind="thought" data-label="Pause">This is surprising and makes people angry. That is exactly the kind of clip that spreads fast. Check before sharing.</li>
              <li data-kind="tool" data-label="Look and listen">Watch it at slow speed. The mayor's lips are slightly out of time with the words. A sign behind her has messy letters.</li>
              <li data-kind="tool" data-label="Check provenance">Upload the file to a content credentials checker. It finds no record.</li>
              <li data-kind="warn" data-label="Careful">No record does not prove it is fake. Many real videos have no credentials either. You need more clues.</li>
              <li data-kind="tool" data-label="Check the source">Search the council's website and local news. Nobody reports a bridge closure. The first post came from a new, unknown account.</li>
              <li data-kind="check" data-label="Weigh the clues">Odd lip sync, broken text, no trusted source and an unknown poster all point the same way.</li>
              <li data-kind="answer" data-label="Decision">Do not share it. Tell your friend why, and report the post to the platform.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor hides a toy watermark in a video. Part 1 makes the video. It is 16 frames of 64×64 pixels, with the bright square moving right. It is bigger than the 8×8 toy used earlier, because a hidden signal needs many pixels. In Part 2, the tool adds or takes away 2 from every pixel, using a secret pattern. In Part 3, a detector with the same key multiplies the video by the pattern and averages it. A score near 1 means the mark is there.</p>
          <ol class="lc-list">
            <li>Run it. The mark survives light noise and re-saving. A wrong key finds nothing. A shift of just 1 pixel also hides it. Real watermarks are built to survive shifts.</li>
            <li>In Part 2, change <code>STRENGTH</code> to <code>0.3</code>. Is the mark still found after heavy noise?</li>
            <li>In Part 3, change the heavy noise from <code>40</code> to <code>150</code>. When does detection fail?</li>
            <li>In Part 3, add a test that makes the video brighter: <code>"marked, brighter": (marked * 1.2, KEY),</code>. Is the mark still found?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Never make a video of a real person without consent, and always label your AI video. Watermarks and content credentials help, but they can be removed, so check the source of any surprising clip.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A toy invisible watermark for a video.
        # The tool adds a faint secret pattern to every frame. Only someone with the
        # secret key can test for it. Real systems (like Google's SynthID) are far
        # more advanced, but the basic idea is similar.
        import numpy as np

        # ── Part 1: make a tiny video ──
        print("== Part 1: make a tiny video ==")
        np.random.seed(42)
        T, H, W = 16, 64, 64                      # 16 frames of 64x64 grayscale
        video = np.full((T, H, W), 60.0)          # a dark street
        for t in range(T):                        # a bright square (the boat) moves right
            video[t, 24:40, 2 * t:2 * t + 16] = 220.0
        print("Video shape (frames, height, width):", video.shape)

        # ── Part 2: hide a watermark with a secret key ──
        print("\n== Part 2: hide a watermark with a secret key ==")
        KEY = 7                                   # the secret key
        STRENGTH = 2.0                            # how strong the hidden pattern is

        def secret_pattern(key):
            rng = np.random.default_rng(key)
            return rng.choice([-1.0, 1.0], size=(T, H, W))   # a +1 / -1 pattern per frame

        def add_watermark(clip, key):
            return clip + STRENGTH * secret_pattern(key)  # tiny change to every pixel

        marked = add_watermark(video, KEY)
        print("Biggest pixel change:", np.abs(marked - video).max(), "out of 255")

        # ── Part 3: detect the watermark after edits ──
        print("\n== Part 3: detect the watermark after edits ==")
        def detect(clip, key):
            p = secret_pattern(key)
            centred = clip - clip.mean(axis=(1, 2), keepdims=True)
            score = (centred * p).mean() / STRENGTH       # near 1 if marked, near 0 if not
            return round(float(score), 2)

        tests = {
            "original (no mark)":      (video, KEY),
            "marked":                  (marked, KEY),
            "marked, re-saved":        (np.round(marked + np.random.normal(0, 5, marked.shape)), KEY),
            "marked, heavy noise":     (marked + np.random.normal(0, 40, marked.shape), KEY),
            "marked, shifted 1 pixel": (np.roll(marked, 1, axis=2), KEY),
            "marked, wrong key":       (marked, 99),
        }
        for name, (clip, key) in tests.items():
            s = detect(clip, key)
            verdict = "WATERMARK FOUND" if s > 0.5 else "not found"
            print(f"{name:24} score {s:5.2f}  {verdict}")
      PYTHON
    },
    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-t2v">Text-to-Video AI</div>
          <h1 class="lc-title">Project: Create a Short AI Video</h1>
        </div>
        <p class="lc-lead">In this project you make a 20-second AI video from start to finish. You plan it like a film crew: storyboard, shot prompts and a consistency plan. Then you generate the clips, edit them, add sound and label the result as AI. The code editor helps you build the shot list and the timing plan.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Seven project steps. 1 Storyboard, 5 shots, 20 seconds. 2 Shot prompts, subject plus action plus camera. 3 Consistency plan, same subject and style. 4 Generate, 3 takes per shot. 5 Pick and edit, best takes and trim. 6 Add sound, rain, music and effects. 7 Label as AI, caption and credentials. Then publish. Below, a timing plan: shot 1 from 0 to 4 seconds, shot 2 from 4 to 7, shot 3 from 7 to 11, shot 4 from 11 to 16, shot 5 from 16 to 20.">
            <defs><marker id="tv17a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="14" width="168" height="56" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="96" y="37" font-weight="700">1. Storyboard</text>
              <text x="96" y="57" font-size="12" fill="#9b99b8">5 shots, 20 s</text>
              <line x1="181" y1="42" x2="196" y2="42" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv17a)"/>
              <rect x="200" y="14" width="168" height="56" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="284" y="37" font-weight="700">2. Shot prompts</text>
              <text x="284" y="57" font-size="12" fill="#9b99b8">subject, action, camera</text>
              <line x1="369" y1="42" x2="384" y2="42" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv17a)"/>
              <rect x="388" y="14" width="168" height="56" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="472" y="37" font-weight="700">3. Consistency</text>
              <text x="472" y="57" font-size="12" fill="#9b99b8">same subject, style</text>
              <line x1="557" y1="42" x2="572" y2="42" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv17a)"/>
              <rect x="576" y="14" width="168" height="56" rx="9" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="660" y="37" font-weight="700">4. Generate</text>
              <text x="660" y="57" font-size="12" fill="#9b99b8">3 takes per shot</text>

              <path d="M660,71 L660,86 L96,86 L96,102" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv17a)"/>

              <rect x="12" y="106" width="168" height="56" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="96" y="129" font-weight="700">5. Pick and edit</text>
              <text x="96" y="149" font-size="12" fill="#9b99b8">best takes, trim</text>
              <line x1="181" y1="134" x2="196" y2="134" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv17a)"/>
              <rect x="200" y="106" width="168" height="56" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="284" y="129" font-weight="700">6. Add sound</text>
              <text x="284" y="149" font-size="12" fill="#9b99b8">rain, music, effects</text>
              <line x1="369" y1="134" x2="384" y2="134" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv17a)"/>
              <rect x="388" y="106" width="168" height="56" rx="9" fill="#1f1f44" stroke="#ec4899"/>
              <text x="472" y="129" font-weight="700">7. Label as AI</text>
              <text x="472" y="149" font-size="12" fill="#9b99b8">caption, credentials</text>
              <line x1="557" y1="134" x2="572" y2="134" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tv17a)"/>
              <rect x="576" y="106" width="168" height="56" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="660" y="139" font-weight="700" fill="#10b981">Publish</text>

              <text x="12" y="198" text-anchor="start" font-size="12" fill="#9b99b8">Timing plan from the starter code (20 seconds)</text>
              <rect x="40" y="210" width="136" height="36" fill="#8b5cf6" fill-opacity="0.35" stroke="#8b5cf6"/>
              <text x="108" y="233">Shot 1</text>
              <rect x="176" y="210" width="102" height="36" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
              <text x="227" y="233">Shot 2</text>
              <rect x="278" y="210" width="136" height="36" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/>
              <text x="346" y="233">Shot 3</text>
              <rect x="414" y="210" width="170" height="36" fill="#f59e0b" fill-opacity="0.35" stroke="#f59e0b"/>
              <text x="499" y="233">Shot 4</text>
              <rect x="584" y="210" width="136" height="36" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/>
              <text x="652" y="233">Shot 5</text>
              <g font-size="12" fill="#9b99b8">
                <text x="40" y="266">0</text><text x="176" y="266">4</text><text x="278" y="266">7</text>
                <text x="414" y="266">11</text><text x="584" y="266">16</text><text x="720" y="266">20 s</text>
              </g>
              <text x="380" y="290" font-size="12" fill="#9b99b8">Wide pan, close-up, tracking, dolly in, crane up: each shot has one clear camera move</text>
            </g>
          </svg>
          <figcaption>The project has seven steps. The bottom bar is the timing plan: five shots that add up to 20 seconds.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: write a storyboard</h3>
          <p>A <strong>storyboard</strong> is a list of shots, in order, with a short note for each. A <strong>shot</strong> is one piece of video with one camera move. Keep your first project small: 4 to 6 shots and 15 to 30 seconds.</p>
          <p>This project follows the paper boat from earlier in this course:</p>
          <table class="lc-table">
            <thead><tr><th>Shot</th><th>What happens</th><th>Camera</th><th>Seconds</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>The boat floats in a gutter stream</td><td>Wide shot, slow pan right</td><td>4</td></tr>
              <tr><td>2</td><td>It bobs over a small wave</td><td>Close-up, static camera</td><td>3</td></tr>
              <tr><td>3</td><td>It sails past a red post box</td><td>Low angle, tracking shot</td><td>4</td></tr>
              <tr><td>4</td><td>It drifts under a streetlight</td><td>Medium shot, slow dolly in</td><td>5</td></tr>
              <tr><td>5</td><td>It glides into a puddle that reflects the sky</td><td>High angle, slow crane up</td><td>4</td></tr>
            </tbody>
          </table>
          <p>The shots add up to 4 + 3 + 4 + 5 + 4 = 20 seconds. Each shot fits inside one 5-second clip. That makes it easier to keep each shot smooth.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2 and 3: shot prompts and a consistency plan</h3>
          <p>Each shot prompt has four parts: <strong>subject</strong>, <strong>action</strong>, <strong>camera</strong> and <strong>style</strong>. The action and the camera change in each shot. The subject and style stay <em>exactly the same</em>. This is your <strong>consistency plan</strong>.</p>
          <p>Part 1 in the code editor below sets the subject and the style once. Then it joins them with the action and camera of shot 1 into a full prompt.</p>
          <p>Words alone are often not enough. Here are more ways to keep shots consistent:</p>
          <ul class="lc-list">
            <li><strong>Reference image:</strong> make one good still image of the boat first. Use it for image-to-video in every shot.</li>
            <li><strong>Same settings:</strong> use the same tool, model, resolution and aspect ratio for all shots.</li>
            <li><strong>Last frame to first frame:</strong> do two shots need to join smoothly? Use the last frame of one as the start image of the next.</li>
            <li><strong>Avoid weak spots:</strong> keep hands, faces and written text out of shots when you can.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Step 4 to 7: generate, edit, sound and label</h3>
          <ol class="lc-list">
            <li><strong>Generate:</strong> pick any tool you like. Make about 3 takes of each shot. Save every take with a clear name, such as <code>shot3_take2.mp4</code>.</li>
            <li><strong>Pick and edit:</strong> choose the best take of each shot. Put them in order in a free video editor. Trim the start and end of each clip to match your timing plan.</li>
            <li><strong>Add sound:</strong> add rain, a soft music track and small sound effects. Some tools make sound with the video. Otherwise use a sound library with a clear licence.</li>
            <li><strong>Label as AI:</strong> say in the caption that the video was made with AI. Name the tools. Keep any content credentials and watermarks that the tool added.</li>
          </ol>
          <p>Before you publish, check the tool's terms. Make sure you may use the video for your purpose. Do not show any real person without their consent.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the project in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of the video project in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write a storyboard with 5 shots and their lengths</li>
              <li data-order="2">Write a prompt for each shot: subject, action, camera, style</li>
              <li data-order="3">Fix the subject, style and reference image for all shots</li>
              <li data-order="4">Generate about 3 takes of each shot</li>
              <li data-order="5">Pick the best takes and trim them in an editor</li>
              <li data-order="6">Add rain sounds, music and effects</li>
              <li data-order="7">Label the video as made with AI and publish it</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor builds the full plan in four parts. Part 1 is the consistency plan. Part 2 joins the subject, action, camera and style into five shot prompts. Part 3 works out the start and end time of each shot and prints a text timeline. Part 4 counts how many clips you must generate.</p>
          <ol class="lc-list">
            <li>Run it. Copy the five shot prompts from Part 2 into the video tool of your choice.</li>
            <li>In Part 1, change <code>STYLE</code> to <code>"rainy street at night, neon signs, anime style"</code>. Every prompt changes together. That is the point of a consistency plan.</li>
            <li>In Part 2, change shot 4 to 8 seconds. The timeline in Part 3 moves, and the clip count in Part 4 goes up, because 8 seconds needs two 5-second clips.</li>
            <li>In Part 2, add a sixth shot of your own to all four lists, and check the new total length.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good AI video starts with a plan, not a prompt. Fix the subject and style for every shot, and plan the timing. Make several takes, then edit, add sound and label the result as AI.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Project planner: build a shot list, shot prompts and a timing plan.
        import math
        import pandas as pd

        # ── Part 1: the consistency plan ──
        print("== Part 1: the consistency plan ==")
        # Things that stay the SAME in every shot
        SUBJECT = "a small white paper boat"
        STYLE = "rainy street, golden evening light, realistic, 35mm film look"
        # One shot prompt = subject + action + camera + style
        print(f"Shot 1: {SUBJECT} floats in a gutter stream, wide shot, slow pan right, {STYLE}")

        # ── Part 2: the storyboard and all shot prompts ──
        print("\n== Part 2: the storyboard and all shot prompts ==")
        # Your storyboard: one row per shot
        shots = pd.DataFrame({
            "shot":    [1, 2, 3, 4, 5],
            "action":  ["floats in a gutter stream", "bobs over a small wave",
                        "sails past a red post box", "drifts under a streetlight",
                        "glides into a puddle that reflects the sky"],
            "camera":  ["wide shot, slow pan right", "close-up, static camera",
                        "low angle, tracking shot", "medium shot, slow dolly in",
                        "high angle, slow crane up"],
            "seconds": [4, 3, 4, 5, 4],
        })
        for _, s in shots.iterrows():
            print(f"Shot {s['shot']}: {SUBJECT} {s['action']}, {s['camera']}, {STYLE}")

        # ── Part 3: the timing plan ──
        print("\n== Part 3: the timing plan (one # per second) ==")
        shots["end"] = shots["seconds"].cumsum()
        shots["start"] = shots["end"] - shots["seconds"]
        for _, s in shots.iterrows():
            bar = " " * s["start"] + "#" * s["seconds"]
            print(f"Shot {s['shot']} {s['start']:2}-{s['end']:2}s |{bar}")

        # ── Part 4: how many clips to generate ──
        print("\n== Part 4: how many clips to generate ==")
        CLIP_SECONDS = 5          # the tool makes clips of this length
        TAKES = 3                 # how many versions you make of each shot
        CREDITS_PER_SECOND = 10   # made-up price; check your tool's real pricing
        clips = sum(math.ceil(sec / CLIP_SECONDS) for sec in shots["seconds"]) * TAKES
        credits = clips * CLIP_SECONDS * CREDITS_PER_SECOND
        print(f"Total length: {shots['seconds'].sum()} seconds")
        print(f"Clips to generate: {clips}  (about {credits} credits)")
        print("Last step: add sound, then label the video as made with AI.")
      PYTHON
    },
  }.freeze
end

module HowTransformersWorkContent
  # How AI Transformers Work. Units (sidebar dividers): 1 Unit 1 · Before Attention · 6 Unit 2 · Attention · 12 Unit 3 · Building the Model · 17 Unit 4 · Beyond Text · 19 Capstone
  # Widgets: sorter, sequence, stepper. Starter code is Python run in the browser (Pyodide; numpy, pandas, scikit-learn).
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">The Problem with Old Models (RNN Limits)</h1>
        </div>
        <p class="lc-lead">Before transformers, most language models were <strong>recurrent neural networks</strong> (RNNs). An RNN reads text one word at a time, like a person reading with a finger under each word. This simple idea has four big problems. In this lesson, you will see each problem with small numbers. Transformers were built to fix them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="An RNN reads the sentence The cat sat on the mat because it was warm, one word per step. Each hidden state h1 to h10 needs the one before it. Bars show that the effect of the word cat on the hidden state shrinks from 2.51 after cat to 0.00 after warm.">
            <defs><marker id="tf1a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700">Pink bars: how much changing "cat" still changes the hidden state</text>
              <rect x="44" y="236" width="62" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="75" y="257" font-size="12.5">The</text>
              <line x1="75" y1="234" x2="75" y2="176" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <circle cx="75" cy="152" r="20" fill="#1f1f44" stroke="#8b5cf6" stroke-width="1.5"/><text x="75" y="157" font-size="12">h1</text>
              <line x1="96" y1="152" x2="122" y2="152" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <rect x="114" y="236" width="62" height="32" rx="7" fill="#27274e" stroke="#ec4899"/><text x="145" y="257" font-size="12.5">cat</text>
              <line x1="145" y1="234" x2="145" y2="176" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <circle cx="145" cy="152" r="20" fill="#1f1f44" stroke="#8b5cf6" stroke-width="1.5"/><text x="145" y="157" font-size="12">h2</text>
              <line x1="166" y1="152" x2="192" y2="152" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <rect x="133" y="60.0" width="24" height="66.0" rx="2" fill="#ec4899"/><text x="145" y="54.0" font-size="11" fill="#f9a8d4">2.51</text>
              <rect x="184" y="236" width="62" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="215" y="257" font-size="12.5">sat</text>
              <line x1="215" y1="234" x2="215" y2="176" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <circle cx="215" cy="152" r="20" fill="#1f1f44" stroke="#8b5cf6" stroke-width="1.5"/><text x="215" y="157" font-size="12">h3</text>
              <line x1="236" y1="152" x2="262" y2="152" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <rect x="203" y="100.3" width="24" height="25.7" rx="2" fill="#ec4899"/><text x="215" y="94.3" font-size="11" fill="#f9a8d4">0.98</text>
              <rect x="254" y="236" width="62" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="285" y="257" font-size="12.5">on</text>
              <line x1="285" y1="234" x2="285" y2="176" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <circle cx="285" cy="152" r="20" fill="#1f1f44" stroke="#8b5cf6" stroke-width="1.5"/><text x="285" y="157" font-size="12">h4</text>
              <line x1="306" y1="152" x2="332" y2="152" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <rect x="273" y="108.4" width="24" height="17.6" rx="2" fill="#ec4899"/><text x="285" y="102.4" font-size="11" fill="#f9a8d4">0.67</text>
              <rect x="324" y="236" width="62" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="355" y="257" font-size="12.5">the</text>
              <line x1="355" y1="234" x2="355" y2="176" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <circle cx="355" cy="152" r="20" fill="#1f1f44" stroke="#8b5cf6" stroke-width="1.5"/><text x="355" y="157" font-size="12">h5</text>
              <line x1="376" y1="152" x2="402" y2="152" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <rect x="343" y="116.4" width="24" height="9.6" rx="2" fill="#ec4899"/><text x="355" y="110.4" font-size="11" fill="#f9a8d4">0.37</text>
              <rect x="394" y="236" width="62" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="425" y="257" font-size="12.5">mat</text>
              <line x1="425" y1="234" x2="425" y2="176" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <circle cx="425" cy="152" r="20" fill="#1f1f44" stroke="#8b5cf6" stroke-width="1.5"/><text x="425" y="157" font-size="12">h6</text>
              <line x1="446" y1="152" x2="472" y2="152" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <rect x="413" y="124.5" width="24" height="1.5" rx="2" fill="#ec4899"/><text x="425" y="118.5" font-size="11" fill="#f9a8d4">0.04</text>
              <rect x="464" y="236" width="62" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="495" y="257" font-size="12.5">because</text>
              <line x1="495" y1="234" x2="495" y2="176" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <circle cx="495" cy="152" r="20" fill="#1f1f44" stroke="#8b5cf6" stroke-width="1.5"/><text x="495" y="157" font-size="12">h7</text>
              <line x1="516" y1="152" x2="542" y2="152" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <rect x="483" y="124.5" width="24" height="1.5" rx="2" fill="#ec4899"/><text x="495" y="118.5" font-size="11" fill="#f9a8d4">0.03</text>
              <rect x="534" y="236" width="62" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="565" y="257" font-size="12.5">it</text>
              <line x1="565" y1="234" x2="565" y2="176" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <circle cx="565" cy="152" r="20" fill="#1f1f44" stroke="#8b5cf6" stroke-width="1.5"/><text x="565" y="157" font-size="12">h8</text>
              <line x1="586" y1="152" x2="612" y2="152" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <rect x="553" y="124.5" width="24" height="1.5" rx="2" fill="#ec4899"/><text x="565" y="118.5" font-size="11" fill="#f9a8d4">0.01</text>
              <rect x="604" y="236" width="62" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="635" y="257" font-size="12.5">was</text>
              <line x1="635" y1="234" x2="635" y2="176" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <circle cx="635" cy="152" r="20" fill="#1f1f44" stroke="#8b5cf6" stroke-width="1.5"/><text x="635" y="157" font-size="12">h9</text>
              <line x1="656" y1="152" x2="682" y2="152" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <rect x="623" y="124.5" width="24" height="1.5" rx="2" fill="#ec4899"/><text x="635" y="118.5" font-size="11" fill="#f9a8d4">0.01</text>
              <rect x="674" y="236" width="62" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="705" y="257" font-size="12.5">warm</text>
              <line x1="705" y1="234" x2="705" y2="176" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1a)"/>
              <circle cx="705" cy="152" r="20" fill="#1f1f44" stroke="#8b5cf6" stroke-width="1.5"/><text x="705" y="157" font-size="12">h10</text>
              <rect x="693" y="124.5" width="24" height="1.5" rx="2" fill="#ec4899"/><text x="705" y="118.5" font-size="11" fill="#f9a8d4">0.00</text>
              <text x="380" y="290" font-size="12" fill="#9b99b8">10 words, 10 steps in a row: step 10 must wait for step 9, which waits for step 8, and so on</text>
            </g>
          </svg>
          <figcaption>An RNN keeps a small memory called the hidden state (h1 to h10). Each new h needs the h before it. The pink bars come from the starter code: they show how much changing "cat" to "dog" still changes h. After a few words, the change is almost gone.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How an RNN reads text</h3>
          <p>An RNN has a <strong>hidden state</strong>. This is a short list of numbers that acts as the model's memory. At each step, the RNN does one thing:</p>
          <p><strong>h_new = tanh(W_x · word_vector + W_h · h_old)</strong></p>
          <p>It mixes the new word with the old memory. Then it squashes the result with <code>tanh</code>, so every number stays between -1 and 1. <code>W_x</code> and <code>W_h</code> are weight tables that the model learns. The same weights are used at every step.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Reads</th><th>Needs</th><th>Makes</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>the</td><td>an empty memory (all zeros)</td><td>h1</td></tr>
              <tr><td>2</td><td>cat</td><td>h1</td><td>h2</td></tr>
              <tr><td>3</td><td>sat</td><td>h2</td><td>h3</td></tr>
              <tr><td>10</td><td>warm</td><td>h9</td><td>h10</td></tr>
            </tbody>
          </table>
          <p>Look at the "Needs" column. Every step needs the step before it. This one fact causes most of the problems below.</p>
        </div>
        <div class="lc-card">
          <h3>Problem 1: no parallel work</h3>
          <p>A <strong>GPU</strong> is the chip that trains AI models. It is fast because it does thousands of sums at the same time. This is called <strong>parallel</strong> work.</p>
          <p>An RNN cannot use this well. Step 10 must wait for step 9. Step 9 must wait for step 8. A sentence of 1,000 words needs 1,000 steps in a row. So training on lots of text is slow, and much of the GPU sits idle.</p>
        </div>
        <div class="lc-card">
          <h3>Problem 2: weak long-range memory</h3>
          <p>Look at the running sentence. "The cat sat on the mat because it was warm." To understand "it", the model needs words from earlier, such as "cat" and "mat". The word "cat" is 6 steps before "it".</p>
          <p>The hidden state is small, and every step writes new words into it. Old words get pushed out. You can see this in the diagram above. The effect of "cat" drops from 2.51 to 0.04 in just four steps.</p>
          <p>This is a problem for long texts. A story may name a person in the first line and say "she" fifty lines later.</p>
        </div>
        <div class="lc-card">
          <h3>Problem 3: vanishing gradients</h3>
          <p>A model learns from its mistakes. During training, an error signal called the <strong>gradient</strong> flows backwards through every step. It tells each weight how to change.</p>
          <p>In an RNN, the gradient is multiplied by a number at each step back. If that number is smaller than 1, the gradient shrinks very fast.</p>
          <p>With a factor of 0.5, the signal is 0.25 after 2 steps, about 0.001 after 10 steps, and 0.000001 after 20 steps. Part 2 in the code editor below prints these numbers.</p>
          <p>After 20 steps, almost nothing is left. This is called the <strong>vanishing gradient</strong> problem. The model cannot learn links between words that are far apart. If the factor is bigger than 1, the opposite happens: the gradient grows huge and training breaks. This is the <strong>exploding gradient</strong> problem.</p>
          <p>Better RNNs called <strong>LSTM</strong> and <strong>GRU</strong> added "gates" that help memory last longer. They helped a lot, but they still read one word at a time.</p>
        </div>
        <div class="lc-card">
          <h3>Problem 4: the fixed-size bottleneck</h3>
          <p>For translation, people used two RNNs. This setup is called <strong>seq2seq</strong> (sequence to sequence). The <strong>encoder</strong> reads the English sentence. The <strong>decoder</strong> writes the German sentence.</p>
          <figure class="lc-diagram">
            <svg viewBox="0 0 760 290" role="img" aria-label="A seq2seq translation model. The encoder RNN reads The cat sat on the mat and squeezes it into one context vector of fixed size. The decoder RNN must write Die Katze saß auf der Matte from only that one vector.">
              <defs><marker id="tf1b" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
              <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
                <rect x="20" y="14" width="590" height="66" rx="10" fill="none" stroke="#3b82f6" stroke-dasharray="5 4"/>
                <text x="690" y="44" font-weight="700" fill="#93c5fd">Encoder RNN</text><text x="690" y="62" font-size="11" fill="#9b99b8">reads English</text>
                <rect x="32" y="30" width="76" height="34" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="70" y="52">The</text>
                <line x1="110" y1="47" x2="124" y2="47" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1b)"/>
                <rect x="127" y="30" width="76" height="34" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="165" y="52">cat</text>
                <line x1="205" y1="47" x2="219" y2="47" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1b)"/>
                <rect x="222" y="30" width="76" height="34" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="260" y="52">sat</text>
                <line x1="300" y1="47" x2="314" y2="47" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1b)"/>
                <rect x="317" y="30" width="76" height="34" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="355" y="52">on</text>
                <line x1="395" y1="47" x2="409" y2="47" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1b)"/>
                <rect x="412" y="30" width="76" height="34" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="450" y="52">the</text>
                <line x1="490" y1="47" x2="504" y2="47" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1b)"/>
                <rect x="507" y="30" width="76" height="34" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="545" y="52">mat</text>
                <line x1="545" y1="82" x2="400" y2="112" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1b)"/>
                <rect x="250" y="116" width="260" height="54" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
                <text x="380" y="138" font-weight="700" fill="#fcd34d">one context vector</text><text x="380" y="158" font-size="12">[0.21, -0.70, 0.53, 0.08]</text>
                <text x="640" y="136" font-size="12" fill="#fcd34d">always the same size,</text><text x="640" y="154" font-size="12" fill="#fcd34d">for 6 words or 60</text>
                <line x1="380" y1="172" x2="200" y2="202" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1b)"/>
                <rect x="20" y="194" width="590" height="66" rx="10" fill="none" stroke="#10b981" stroke-dasharray="5 4"/>
                <text x="690" y="224" font-weight="700" fill="#6ee7b7">Decoder RNN</text><text x="690" y="242" font-size="11" fill="#9b99b8">writes German</text>
                <rect x="32" y="210" width="76" height="34" rx="7" fill="#27274e" stroke="#10b981"/><text x="70" y="232">Die</text>
                <line x1="110" y1="227" x2="124" y2="227" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1b)"/>
                <rect x="127" y="210" width="76" height="34" rx="7" fill="#27274e" stroke="#10b981"/><text x="165" y="232">Katze</text>
                <line x1="205" y1="227" x2="219" y2="227" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1b)"/>
                <rect x="222" y="210" width="76" height="34" rx="7" fill="#27274e" stroke="#10b981"/><text x="260" y="232">saß</text>
                <line x1="300" y1="227" x2="314" y2="227" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1b)"/>
                <rect x="317" y="210" width="76" height="34" rx="7" fill="#27274e" stroke="#10b981"/><text x="355" y="232">auf</text>
                <line x1="395" y1="227" x2="409" y2="227" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1b)"/>
                <rect x="412" y="210" width="76" height="34" rx="7" fill="#27274e" stroke="#10b981"/><text x="450" y="232">der</text>
                <line x1="490" y1="227" x2="504" y2="227" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf1b)"/>
                <rect x="507" y="210" width="76" height="34" rx="7" fill="#27274e" stroke="#10b981"/><text x="545" y="232">Matte</text>
                <text x="380" y="282" font-size="12" fill="#9b99b8">The decoder sees only the context vector, never the English words themselves</text>
              </g>
            </svg>
            <figcaption>In seq2seq, the whole input is squeezed into one context vector. The numbers in the box are made up for this example. Real context vectors have hundreds of numbers, but the size is still fixed.</figcaption>
          </figure>
          <p>The encoder passes only its last hidden state to the decoder. This is the <strong>context vector</strong>. It has the same size for a 6-word sentence and a 60-word sentence. Long sentences lose detail. This is the <strong>fixed-size bottleneck</strong>, and translations of long sentences got much worse.</p>
        </div>
        <div class="lc-card">
          <h3>The four problems together</h3>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>What happens</th><th>Why it hurts</th></tr></thead>
            <tbody>
              <tr><td>No parallel work</td><td>Each step waits for the one before</td><td>Training is slow and costly</td></tr>
              <tr><td>Weak long-range memory</td><td>Old words fade from the hidden state</td><td>Far-apart words are not linked</td></tr>
              <tr><td>Vanishing gradients</td><td>The error signal shrinks at each step back</td><td>The model cannot learn long links</td></tr>
              <tr><td>Fixed-size bottleneck</td><td>A whole sentence becomes one small vector</td><td>Long inputs lose detail</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: name the problem</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each sentence describes something that goes wrong with an RNN. Which problem is it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="slow" data-label="No parallel work"></div>
              <div data-sorter-target="bucket" data-bucket="memory" data-label="Memory and gradients fade"></div>
              <div data-sorter-target="bucket" data-bucket="bottleneck" data-label="Fixed-size bottleneck"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="slow" data-why="Each step needs the hidden state from the step before, so the GPU cannot do the steps at the same time.">A GPU with thousands of cores still reads the sentence one word at a time</li>
              <li data-bucket="memory" data-why="&quot;she&quot; is far from the name, and old words fade from the hidden state.">The model forgets who "she" is when the name was 50 words earlier</li>
              <li data-bucket="bottleneck" data-why="The decoder only gets one context vector, and it has the same size for every sentence.">A long sentence is translated much worse than a short one</li>
              <li data-bucket="memory" data-why="The gradient is multiplied by a small number at each step back, so it almost disappears.">The error signal is 0.000001 after 20 steps back</li>
              <li data-bucket="slow" data-why="1,000 words means 1,000 steps in a row. Doubling the text doubles the waiting.">Training on a book takes far longer than the GPU's speed suggests</li>
              <li data-bucket="bottleneck" data-why="The encoder must squeeze everything into its last hidden state.">The decoder never sees the English words, only one vector</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code builds a tiny RNN with a hidden state of 4 numbers. It reads the running sentence. Then it changes "cat" to "dog" and measures how much the hidden state changes at each later step.</p>
          <ol class="lc-list">
            <li>Run it. Check that the change gets smaller with every step.</li>
            <li>In Part 1, set <code>SCALE = 0.2</code>. The old memory now counts for less. Does the change fade faster?</li>
            <li>Set <code>SCALE = 1.5</code>. Does "cat" now last longer? Bigger weights help memory but can make gradients explode.</li>
            <li>Change <code>other[1] = "dog"</code> to <code>other[0] = "dog"</code>, so the first word changes. Watch how far the effect reaches.</li>
            <li>In Part 2, set <code>factor = 1.5</code>. The gradient now grows huge instead of fading.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An RNN reads one word at a time and keeps everything in one small memory. That makes it slow to train, bad at far-apart words, and weak on long inputs. Transformers were designed to remove the one-word-at-a-time chain.
        </div>
      HTML
      starter_code: <<~'PYTHON',
        # The problem with old models: a tiny RNN, then vanishing gradients.
        import numpy as np

        # ── Part 1: a tiny RNN reads the running sentence ──
        # Its only memory is the hidden state h: 4 numbers that change at every step.
        print("== Part 1: a tiny RNN reads one word at a time ==")
        np.random.seed(42)
        sentence = "the cat sat on the mat because it was warm".split()
        HIDDEN = 4       # size of the hidden state
        SCALE = 0.5      # size of the recurrent weights W_h. Try 0.2 or 1.5

        words = sorted(set(sentence)) + ["dog"]
        emb = {w: np.random.randn(HIDDEN) for w in words}   # one random vector per word
        W_x = np.random.randn(HIDDEN, HIDDEN) * 0.5         # input -> hidden
        W_h = np.random.randn(HIDDEN, HIDDEN) * SCALE       # old hidden -> new hidden

        def run(tokens):
            h = np.zeros(HIDDEN)
            states = []
            for w in tokens:                        # one word at a time, in order
                h = np.tanh(W_x @ emb[w] + W_h @ h) # h_new = tanh(W_x · word + W_h · h_old)
                states.append(h)
            return states

        states = run(sentence)
        print("The RNN reads one word per step:")
        for step, (w, h) in enumerate(zip(sentence, states), start=1):
            print(f"  step {step:2}  {w:8} h = {np.round(h, 2)}")

        # Change word 2 from "cat" to "dog". How much does h change at each later step?
        other = sentence.copy()
        other[1] = "dog"
        states2 = run(other)
        print("\nEffect of changing 'cat' to 'dog' on the hidden state:")
        for step in range(1, len(sentence)):
            diff = np.abs(states[step] - states2[step]).sum()
            print(f"  after {sentence[step]:8} {diff:.4f} " + "#" * int(diff * 20))

        print("\nThe change fades as the RNN reads more words.")
        print(f"{len(sentence)} words took {len(sentence)} steps, one after another.")

        # ── Part 2: vanishing gradients ──
        # The error signal is multiplied by a factor at each step back.
        print("\n== Part 2: vanishing gradients ==")
        factor = 0.5   # how much the signal shrinks at each step back. Try 0.9, or 1.5 to see an exploding gradient
        for steps in [2, 5, 10, 20]:
            print(f"{steps:2} steps back: {factor ** steps:.6f}")

        # Try it: set SCALE = 0.2, then 1.5. Change a different word, such as other[0].
        # In Part 2, set factor = 1.5.
      PYTHON
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Why Transformers Were Invented</h1>
        </div>
        <p class="lc-lead">In 2017, a team at Google published a paper called <strong>"Attention Is All You Need"</strong>. It introduced a new model called the <strong>Transformer</strong>. The Transformer threw away the one-word-at-a-time chain of RNNs. In its place, it used <strong>attention</strong>, so every word can look at every other word directly. In this lesson, you will learn what changed, why it trains so much faster, and how it changed AI.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top: an RNN reads the ten words in a chain, so information from cat needs 6 steps to reach it. Bottom: in a transformer, the word it connects directly to every word, including cat, in one step, and all words are processed at the same time.">
            <defs><marker id="tf2a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker><marker id="tf2b" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#ec4899"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" text-anchor="start" font-weight="700" fill="#93c5fd">RNN: one word at a time, in a chain</text>
              <rect x="47" y="40" width="56" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="75" y="61" font-size="12.5">The</text>
              <line x1="104" y1="56" x2="113" y2="56" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf2a)"/>
              <rect x="117" y="40" width="56" height="32" rx="7" fill="#27274e" stroke="#ec4899"/><text x="145" y="61" font-size="12.5">cat</text>
              <line x1="174" y1="56" x2="183" y2="56" stroke="#ec4899" stroke-width="2.5" marker-end="url(#tf2b)"/>
              <rect x="187" y="40" width="56" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="215" y="61" font-size="12.5">sat</text>
              <line x1="244" y1="56" x2="253" y2="56" stroke="#ec4899" stroke-width="2.5" marker-end="url(#tf2b)"/>
              <rect x="257" y="40" width="56" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="285" y="61" font-size="12.5">on</text>
              <line x1="314" y1="56" x2="323" y2="56" stroke="#ec4899" stroke-width="2.5" marker-end="url(#tf2b)"/>
              <rect x="327" y="40" width="56" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="355" y="61" font-size="12.5">the</text>
              <line x1="384" y1="56" x2="393" y2="56" stroke="#ec4899" stroke-width="2.5" marker-end="url(#tf2b)"/>
              <rect x="397" y="40" width="56" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="425" y="61" font-size="12.5">mat</text>
              <line x1="454" y1="56" x2="463" y2="56" stroke="#ec4899" stroke-width="2.5" marker-end="url(#tf2b)"/>
              <rect x="467" y="40" width="56" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="495" y="61" font-size="12.5">because</text>
              <line x1="524" y1="56" x2="533" y2="56" stroke="#ec4899" stroke-width="2.5" marker-end="url(#tf2b)"/>
              <rect x="537" y="40" width="56" height="32" rx="7" fill="#27274e" stroke="#ec4899"/><text x="565" y="61" font-size="12.5">it</text>
              <line x1="594" y1="56" x2="603" y2="56" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf2a)"/>
              <rect x="607" y="40" width="56" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="635" y="61" font-size="12.5">was</text>
              <line x1="664" y1="56" x2="673" y2="56" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf2a)"/>
              <rect x="677" y="40" width="56" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="705" y="61" font-size="12.5">warm</text>
              <text x="380" y="98" font-size="12" fill="#f9a8d4">"cat" reaches "it" only after 6 steps, and the signal fades on the way</text>
              <line x1="20" y1="122" x2="740" y2="122" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="20" y="150" text-anchor="start" font-weight="700" fill="#6ee7b7">Transformer: every word links to every word, all at once</text>
              <rect x="44" y="262" width="62" height="32" rx="7" fill="#27274e" stroke="#10b981"/><text x="75" y="283" font-size="12.5">The</text>
              <rect x="114" y="262" width="62" height="32" rx="7" fill="#27274e" stroke="#ec4899"/><text x="145" y="283" font-size="12.5">cat</text>
              <rect x="184" y="262" width="62" height="32" rx="7" fill="#27274e" stroke="#10b981"/><text x="215" y="283" font-size="12.5">sat</text>
              <rect x="254" y="262" width="62" height="32" rx="7" fill="#27274e" stroke="#10b981"/><text x="285" y="283" font-size="12.5">on</text>
              <rect x="324" y="262" width="62" height="32" rx="7" fill="#27274e" stroke="#10b981"/><text x="355" y="283" font-size="12.5">the</text>
              <rect x="394" y="262" width="62" height="32" rx="7" fill="#27274e" stroke="#10b981"/><text x="425" y="283" font-size="12.5">mat</text>
              <rect x="464" y="262" width="62" height="32" rx="7" fill="#27274e" stroke="#10b981"/><text x="495" y="283" font-size="12.5">because</text>
              <rect x="534" y="262" width="62" height="32" rx="7" fill="#27274e" stroke="#ec4899"/><text x="565" y="283" font-size="12.5">it</text>
              <rect x="604" y="262" width="62" height="32" rx="7" fill="#27274e" stroke="#10b981"/><text x="635" y="283" font-size="12.5">was</text>
              <rect x="674" y="262" width="62" height="32" rx="7" fill="#27274e" stroke="#10b981"/><text x="705" y="283" font-size="12.5">warm</text>
              <path d="M559,260 Q320.0,144 75,260" fill="none" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#tf2a)"/>
              <path d="M559,260 Q355.0,158 145,260" fill="none" stroke="#ec4899" stroke-width="3" marker-end="url(#tf2b)"/>
              <path d="M559,260 Q390.0,172 215,260" fill="none" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#tf2a)"/>
              <path d="M559,260 Q425.0,186 285,260" fill="none" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#tf2a)"/>
              <path d="M559,260 Q460.0,200 355,260" fill="none" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#tf2a)"/>
              <path d="M559,260 Q495.0,214 425,260" fill="none" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#tf2a)"/>
              <path d="M559,260 Q530.0,228 495,260" fill="none" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#tf2a)"/>
              <path d="M571,260 Q600.0,228 635,260" fill="none" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#tf2a)"/>
              <path d="M571,260 Q635.0,214 705,260" fill="none" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#tf2a)"/>
              <text x="380" y="318" font-size="12" fill="#f9a8d4">"it" reaches "cat" in 1 step. Every word does this at the same time.</text>
            </g>
          </svg>
          <figcaption>Top: in an RNN, information moves along a chain, one step per word. Bottom: in a transformer, "it" links straight to every word. The pink path shows how "cat" reaches "it" in each model.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The 2017 paper</h3>
          <p>The paper was written by Ashish Vaswani and seven co-authors. Most of them worked at Google. They worked on <strong>machine translation</strong>: turning English text into German or French.</p>
          <p>At that time, the best translation systems used RNNs. Many also used attention, added on top of the RNN. The team asked a bold question: what if we keep the attention and remove the RNN completely?</p>
          <ul class="lc-list">
            <li>The model has no recurrence. "Recurrence" means feeding the hidden state back in, step after step.</li>
            <li>Each layer has two main parts: attention and a small neural network for each word.</li>
            <li>On their English to German and English to French tests, it translated better than the earlier best systems.</li>
            <li>It also needed much less training time than those systems.</li>
          </ul>
          <p>The title says it all: attention is the only way the words share information.</p>
        </div>
        <div class="lc-card">
          <h3>Attention instead of recurrence</h3>
          <p>With <strong>attention</strong>, each word gives a score to every word in the text. A high score means "this word is useful to me". The word then takes in information from the high-scoring words. You will learn exactly how later in this course.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>RNN</th><th>Transformer</th></tr></thead>
            <tbody>
              <tr><td>How it reads</td><td>One word per step, in order</td><td>All words at once</td></tr>
              <tr><td>Path from "cat" to "it"</td><td>6 steps along the chain</td><td>1 step, a direct link</td></tr>
              <tr><td>Memory</td><td>One small hidden state</td><td>Every word keeps its own vector</td></tr>
              <tr><td>Training on a GPU</td><td>Mostly waiting</td><td>Big matrix sums, in parallel</td></tr>
              <tr><td>Cost for long text</td><td>Grows in line with length</td><td>Grows with length × length (every pair of words)</td></tr>
            </tbody>
          </table>
          <p>This fixes the problems from earlier in this course. Far-apart words are now one step apart. There is no single context vector, because the decoder can look at every input word. And there is no chain to wait for.</p>
        </div>
        <div class="lc-card">
          <h3>Why parallel training matters</h3>
          <p>Attention is built from <strong>matrix multiplication</strong>. This is a big table of multiply-and-add sums, and GPUs are built for exactly this. One multiplication scores every pair of words at once:</p>
          <p>Part 2 in the code editor below does this for 10 words with 4 numbers each. The result is a (10, 10) table.</p>
          <p>That is 100 scores, one for each pair of words, in a single operation. No word waits for another word. During training, the model also learns from every position in a sentence at the same time.</p>
          <p>Faster training means you can train on far more text. This is the main reason modern models could grow so large.</p>
          <p>There is a cost. A text of 1,000 words has 1,000,000 pairs. This is one reason models have a limit on how much text they can read at once.</p>
        </div>
        <div class="lc-card">
          <h3>The impact</h3>
          <p>The Transformer soon spread far beyond translation. Here are some well-known models built on it:</p>
          <table class="lc-table">
            <thead><tr><th>Model</th><th>From</th><th>Year</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td>BERT</td><td>Google</td><td>2018</td><td>Understands text, for search and classification</td></tr>
              <tr><td>GPT</td><td>OpenAI</td><td>2018</td><td>Writes text by predicting the next token</td></tr>
              <tr><td>T5</td><td>Google</td><td>2019</td><td>Turns every task into "text in, text out"</td></tr>
              <tr><td>Vision Transformer (ViT)</td><td>Google</td><td>2020</td><td>Classifies images, using patches as "words"</td></tr>
              <tr><td>Whisper</td><td>OpenAI</td><td>2022</td><td>Turns speech into text</td></tr>
            </tbody>
          </table>
          <p>Today's chat assistants, such as Claude, ChatGPT and Gemini, are also built on transformer-based models. Companies change the details often, so check their current documentation for specifics.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the history in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps in AI history in the order they happened.</p>
            <ol data-sequence-target="list">
              <li data-order="1">RNNs and LSTMs read text one word at a time</li>
              <li data-order="2">Seq2seq: an encoder RNN and a decoder RNN translate sentences (2014)</li>
              <li data-order="3">Attention is added to RNN translators, so the decoder can look back at every input word</li>
              <li data-order="4">"Attention Is All You Need" removes the RNN and keeps only attention (2017)</li>
              <li data-order="5">BERT and GPT bring transformers to many language tasks (2018)</li>
              <li data-order="6">Vision Transformers use the same design for images (2020)</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code runs an RNN loop. Part 2 scores every pair of words in one matrix multiplication. Part 3 compares path lengths and costs.</p>
          <ol class="lc-list">
            <li>Run it. Count the RNN steps in Part 1, then look at the shape of the score table in Part 2.</li>
            <li>The vectors are random, so "it" mostly scores itself. In Part 2, change <code>WORD = "it"</code> to <code>"cat"</code>. The weights still add up to 1.</li>
            <li>In Part 3, change the lengths list to <code>[10, 50, 5000]</code>. See how fast "pairs scored" grows.</li>
            <li>Change <code>d = 4</code> to <code>d = 8</code>. The score table is still (10, 10). It depends on the number of words, not the vector size.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The Transformer replaced the RNN's chain with attention. Every word reaches every other word in one step, and all words are processed in parallel. That made training much faster and opened the way to today's large models.
        </div>
      HTML
      starter_code: <<~'PYTHON',
        # RNN versus attention: who has to wait?
        import numpy as np

        # ── Part 1: an RNN loop, one step after another ──
        print("== Part 1: the RNN has to wait ==")
        np.random.seed(42)
        sentence = "the cat sat on the mat because it was warm".split()
        n, d = len(sentence), 4
        X = np.random.randn(n, d)            # 10 words, 4 numbers each (random here)

        W_h = np.random.randn(d, d) * 0.5
        h = np.zeros(d)
        steps = 0
        for x in X:                          # this loop cannot run in parallel
            h = np.tanh(W_h @ h + x)
            steps += 1
        print("RNN steps in a row:", steps)

        # ── Part 2: attention scores every pair in ONE matrix multiply ──
        print("\n== Part 2: every word with every word, in one go ==")
        scores = X @ X.T                     # every word with every word
        print(scores.shape)                  # (10, 10): one score per pair of words

        def softmax(row):
            e = np.exp(row - row.max())
            return e / e.sum()

        WORD = "it"                          # try "cat" or "warm"
        i = sentence.index(WORD)
        weights = softmax(scores[i])
        print(f"\nHow much '{WORD}' looks at each word (random vectors, so not useful yet):")
        for w, wt in zip(sentence, weights):
            print(f"  {w:8} {wt:.2f} " + "#" * int(wt * 40))
        print(f"  total    {weights.sum():.2f}")

        # ── Part 3: path length and work done ──
        print("\n== Part 3: path length and pairs scored ==")
        print("words | RNN steps in a row | attention path | pairs scored")
        for length in [10, 100, 1000]:
            print(f"{length:5} | {length:18} | {1:14} | {length * length:,}")

        # Try it: in Part 2, change WORD to "cat". In Part 3, change the lengths list to [10, 50, 5000].
      PYTHON
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Tokens and Tokenisation</h1>
        </div>
        <p class="lc-lead">A transformer cannot read letters. It only works with numbers. So the first job is to cut text into small pieces called <strong>tokens</strong> and give each piece a number. In this lesson, you will compare three ways to cut text. You will learn BPE, the method most models use. You will also see how token IDs and vocabulary size work.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 220" role="img" aria-label="The sentence The cat sat on the mat because it was warm is split into 11 word tokens, including the full stop. Each token gets an ID from a toy vocabulary of 10 tokens: 0 1 2 3 0 4 5 6 7 8 9. The word the gets ID 0 both times.">
            <defs><marker id="tf3a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="190" y="12" width="380" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="380" y="35">The cat sat on the mat because it was warm.</text>
              <line x1="380" y1="50" x2="380" y2="80" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf3a)"/><text x="392" y="70" text-anchor="start" font-size="11" fill="#9b99b8">split into tokens, then look up each ID</text>
              <rect x="31" y="86" width="58" height="34" rx="7" fill="#1f1f44" stroke="#8b5cf6"/><text x="60" y="108" font-size="12.5">the</text>
              <line x1="60" y1="122" x2="60" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf3a)"/>
              <text x="60" y="168" font-weight="700" fill="#67e8f9">0</text>
              <rect x="95" y="86" width="58" height="34" rx="7" fill="#1f1f44" stroke="#10b981"/><text x="124" y="108" font-size="12.5">cat</text>
              <line x1="124" y1="122" x2="124" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf3a)"/>
              <text x="124" y="168" font-weight="700" fill="#67e8f9">1</text>
              <rect x="159" y="86" width="58" height="34" rx="7" fill="#1f1f44" stroke="#f59e0b"/><text x="188" y="108" font-size="12.5">sat</text>
              <line x1="188" y1="122" x2="188" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf3a)"/>
              <text x="188" y="168" font-weight="700" fill="#67e8f9">2</text>
              <rect x="223" y="86" width="58" height="34" rx="7" fill="#1f1f44" stroke="#ec4899"/><text x="252" y="108" font-size="12.5">on</text>
              <line x1="252" y1="122" x2="252" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf3a)"/>
              <text x="252" y="168" font-weight="700" fill="#67e8f9">3</text>
              <rect x="287" y="86" width="58" height="34" rx="7" fill="#1f1f44" stroke="#8b5cf6"/><text x="316" y="108" font-size="12.5">the</text>
              <line x1="316" y1="122" x2="316" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf3a)"/>
              <text x="316" y="168" font-weight="700" fill="#67e8f9">0</text>
              <rect x="351" y="86" width="58" height="34" rx="7" fill="#1f1f44" stroke="#22d3ee"/><text x="380" y="108" font-size="12.5">mat</text>
              <line x1="380" y1="122" x2="380" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf3a)"/>
              <text x="380" y="168" font-weight="700" fill="#67e8f9">4</text>
              <rect x="415" y="86" width="58" height="34" rx="7" fill="#1f1f44" stroke="#3b82f6"/><text x="444" y="108" font-size="12.5">because</text>
              <line x1="444" y1="122" x2="444" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf3a)"/>
              <text x="444" y="168" font-weight="700" fill="#67e8f9">5</text>
              <rect x="479" y="86" width="58" height="34" rx="7" fill="#1f1f44" stroke="#ec4899"/><text x="508" y="108" font-size="12.5">it</text>
              <line x1="508" y1="122" x2="508" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf3a)"/>
              <text x="508" y="168" font-weight="700" fill="#67e8f9">6</text>
              <rect x="543" y="86" width="58" height="34" rx="7" fill="#1f1f44" stroke="#10b981"/><text x="572" y="108" font-size="12.5">was</text>
              <line x1="572" y1="122" x2="572" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf3a)"/>
              <text x="572" y="168" font-weight="700" fill="#67e8f9">7</text>
              <rect x="607" y="86" width="58" height="34" rx="7" fill="#1f1f44" stroke="#f59e0b"/><text x="636" y="108" font-size="12.5">warm</text>
              <line x1="636" y1="122" x2="636" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf3a)"/>
              <text x="636" y="168" font-weight="700" fill="#67e8f9">8</text>
              <rect x="671" y="86" width="58" height="34" rx="7" fill="#1f1f44" stroke="#22d3ee"/><text x="700" y="108" font-size="12.5">.</text>
              <line x1="700" y1="122" x2="700" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf3a)"/>
              <text x="700" y="168" font-weight="700" fill="#67e8f9">9</text>
              <text x="380" y="204" font-size="12" fill="#9b99b8">11 tokens, toy vocabulary of 10. "the" is ID 0 both times. The model only sees the IDs.</text>
            </g>
          </svg>
          <figcaption>The running sentence is split into 11 tokens, and each token gets an ID. This toy tokeniser uses whole words and a vocabulary of 10 tokens. Real tokenisers use subwords and much bigger vocabularies.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Tokens, IDs and the vocabulary</h3>
          <ul class="lc-list">
            <li>A <strong>token</strong> is one piece of text. It can be a word, part of a word, a letter or a punctuation mark.</li>
            <li>A <strong>tokeniser</strong> is the program that cuts text into tokens.</li>
            <li>The <strong>vocabulary</strong> is the fixed list of every token the tokeniser knows.</li>
            <li>Each token in the vocabulary has a number called its <strong>token ID</strong>. The transformer only ever sees these IDs.</li>
          </ul>
          <p>The toy tokeniser from the diagram gives each new word the next free ID. Part 2 in the code editor below does this in Python.</p>
          <p>For the running sentence, this gives the IDs 0, 1, 2, 3, 0, 4, 5, 6, 7, 8, 9 and a vocabulary of 10 tokens.</p>
          <p>The word "the" appears twice, so the ID 0 appears twice. The same token always gets the same ID.</p>
        </div>
        <div class="lc-card">
          <h3>Words, characters or subwords?</h3>
          <p>There are three main ways to cut text. Look at how each one handles the word "warmest":</p>
          <table class="lc-table">
            <thead><tr><th>Cut into</th><th>"warmest" becomes</th><th>Good</th><th>Problem</th></tr></thead>
            <tbody>
              <tr><td>Words</td><td><code>warmest</code> (1 token)</td><td>Short inputs</td><td>Needs a huge vocabulary. New words, names and typos are unknown.</td></tr>
              <tr><td>Characters</td><td><code>w a r m e s t</code> (7 tokens)</td><td>Tiny vocabulary. No word is ever unknown.</td><td>Inputs get very long. One letter carries little meaning.</td></tr>
              <tr><td>Subwords</td><td><code>warm est</code> (2 tokens, example)</td><td>Common words stay whole. Rare words split into known parts.</td><td>The splits can look strange to people.</td></tr>
            </tbody>
          </table>
          <p>Almost all modern transformers use <strong>subword</strong> tokens. They get the best of both: a vocabulary of a manageable size, and no unknown words.</p>
        </div>
        <div class="lc-card">
          <h3>The BPE idea</h3>
          <p><strong>Byte pair encoding</strong> (BPE) is a common way to learn subwords. It starts small and builds up:</p>
          <ol class="lc-list">
            <li>Split the training text into single characters.</li>
            <li>Count every pair of neighbouring tokens.</li>
            <li>Join the most frequent pair into one new token. Add it to the vocabulary.</li>
            <li>Repeat until the vocabulary is big enough.</li>
          </ol>
          <figure class="lc-diagram">
            <svg viewBox="0 0 760 286" role="img" aria-label="BPE on the words the cat sat. Start with 9 single letters. Merge a plus t, then t plus h, then th plus e, then c plus at and s plus at. The token count drops from 9 to 7, 6, 5 and finally 3.">
              <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
                <text x="20" y="22" text-anchor="start" font-weight="700">Learned merge</text><text x="440" y="22" font-weight="700">"the cat sat" as tokens</text><text x="700" y="22" font-weight="700">Tokens</text>
                <text x="20" y="62" text-anchor="start" font-size="12.5" fill="#c4b5fd">start: single letters</text>
                <rect x="270" y="44" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="285.5" y="63">t</text>
                <rect x="305" y="44" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="320.5" y="63">h</text>
                <rect x="340" y="44" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="355.5" y="63">e</text>
                <rect x="401" y="44" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="416.5" y="63">c</text>
                <rect x="436" y="44" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="451.5" y="63">a</text>
                <rect x="471" y="44" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="486.5" y="63">t</text>
                <rect x="532" y="44" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="547.5" y="63">s</text>
                <rect x="567" y="44" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="582.5" y="63">a</text>
                <rect x="602" y="44" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="617.5" y="63">t</text>
                <text x="700" y="63" font-weight="700" fill="#67e8f9">9</text>
                <text x="20" y="106" text-anchor="start" font-size="12.5" fill="#c4b5fd">merge 1: a + t (8 times)</text>
                <rect x="270" y="88" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="285.5" y="107">t</text>
                <rect x="305" y="88" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="320.5" y="107">h</text>
                <rect x="340" y="88" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="355.5" y="107">e</text>
                <rect x="401" y="88" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="416.5" y="107">c</text>
                <rect x="436" y="88" width="40" height="28" rx="6" fill="#27274e" stroke="#f59e0b" stroke-width="2"/><text x="456.0" y="107">at</text>
                <rect x="506" y="88" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="521.5" y="107">s</text>
                <rect x="541" y="88" width="40" height="28" rx="6" fill="#27274e" stroke="#f59e0b" stroke-width="2"/><text x="561.0" y="107">at</text>
                <text x="700" y="107" font-weight="700" fill="#67e8f9">7</text>
                <text x="20" y="150" text-anchor="start" font-size="12.5" fill="#c4b5fd">merge 2: t + h (5 times)</text>
                <rect x="270" y="132" width="40" height="28" rx="6" fill="#27274e" stroke="#f59e0b" stroke-width="2"/><text x="290.0" y="151">th</text>
                <rect x="314" y="132" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="329.5" y="151">e</text>
                <rect x="375" y="132" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="390.5" y="151">c</text>
                <rect x="410" y="132" width="40" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="430.0" y="151">at</text>
                <rect x="480" y="132" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="495.5" y="151">s</text>
                <rect x="515" y="132" width="40" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="535.0" y="151">at</text>
                <text x="700" y="151" font-weight="700" fill="#67e8f9">6</text>
                <text x="20" y="194" text-anchor="start" font-size="12.5" fill="#c4b5fd">merge 3: th + e (4 times)</text>
                <rect x="270" y="176" width="49" height="28" rx="6" fill="#27274e" stroke="#f59e0b" stroke-width="2"/><text x="294.5" y="195">the</text>
                <rect x="349" y="176" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="364.5" y="195">c</text>
                <rect x="384" y="176" width="40" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="404.0" y="195">at</text>
                <rect x="454" y="176" width="31" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="469.5" y="195">s</text>
                <rect x="489" y="176" width="40" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="509.0" y="195">at</text>
                <text x="700" y="195" font-weight="700" fill="#67e8f9">5</text>
                <text x="20" y="238" text-anchor="start" font-size="12.5" fill="#c4b5fd">merges 4, 5: c + at, s + at</text>
                <rect x="270" y="220" width="49" height="28" rx="6" fill="#27274e" stroke="#4b4a78" stroke-width="1"/><text x="294.5" y="239">the</text>
                <rect x="349" y="220" width="49" height="28" rx="6" fill="#27274e" stroke="#f59e0b" stroke-width="2"/><text x="373.5" y="239">cat</text>
                <rect x="428" y="220" width="49" height="28" rx="6" fill="#27274e" stroke="#f59e0b" stroke-width="2"/><text x="452.5" y="239">sat</text>
                <text x="700" y="239" font-weight="700" fill="#67e8f9">3</text>
                <text x="380" y="276" font-size="12" fill="#9b99b8">Orange boxes are the new tokens made by that merge. Fewer tokens means shorter input.</text>
              </g>
            </svg>
            <figcaption>BPE trained on the starter code's small corpus. The most frequent pair is merged first, so "at" comes before "cat". The counts come from that corpus.</figcaption>
          </figure>
          <p>The tokeniser saves its list of merges. To cut new text, it splits the text into characters. Then it applies the saved merges, in the same order.</p>
          <p>Real tokenisers usually start from <strong>bytes</strong> instead of characters. Any text, in any language, is made of bytes, so nothing is ever unknown. GPT-2's tokeniser starts with 256 byte tokens and learns 50,000 merges. With one special end-of-text token, that gives 50,257 tokens.</p>
        </div>
        <div class="lc-card">
          <h3>How big should the vocabulary be?</h3>
          <table class="lc-table">
            <thead><tr><th>Vocabulary</th><th>Good</th><th>Bad</th></tr></thead>
            <tbody>
              <tr><td>Small (for example, a few thousand)</td><td>A small embedding table</td><td>More tokens per sentence, so inputs are longer and slower</td></tr>
              <tr><td>Large (for example, over 100,000)</td><td>Fewer tokens per sentence</td><td>A bigger table. Rare tokens are seen too few times to learn well.</td></tr>
            </tbody>
          </table>
          <p>GPT-2 uses 50,257 tokens. Many newer models use more than 100,000, which helps with code and with languages other than English. Each model has its own tokeniser, so always use the tokeniser that matches your model.</p>
          <p>Vocabularies also have <strong>special tokens</strong>. These are not normal text. One example is an end-of-text token that tells the model a document has ended.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: tokenise a new word with BPE</h3>
          <p>The starter code learned six merges. Follow how it tokenises "that cat", a phrase that has "that" in it. Step through.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Text to tokenise">that cat</li>
              <li data-kind="thought" data-label="Start">Split each word into characters: t h a t | c a t</li>
              <li data-kind="tool" data-label="Merge 1: a + t">Every "a t" pair joins: t h at | c at</li>
              <li data-kind="tool" data-label="Merge 2: t + h">"t h" joins: th at | c at</li>
              <li data-kind="check" data-label="Merge 3: th + e">There is no "e" after "th", so nothing changes.</li>
              <li data-kind="tool" data-label="Merge 4: c + at">"c at" joins: th at | cat</li>
              <li data-kind="check" data-label="Merges 5 and 6">"s + at" and "o + n" do not appear. Nothing changes.</li>
              <li data-kind="result" data-label="Tokens and IDs">th, at, cat → IDs 13, 12, 15</li>
              <li data-kind="answer" data-label="What we learn">"cat" is one token. "that" was never merged as a whole, so it becomes two tokens. A word is split into known pieces, never thrown away.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Activity: see a real tokeniser</h3>
          <p>This box runs the real GPT-2 tokeniser in your browser. Each word of the running sentence is one common token. Now type a rare word, such as "unwarmable", and see it split into pieces.</p>
          <div class="lcw" data-controller="tokenizer" data-tokenizer-text-value="The cat sat on the mat because it was warm."></div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code trains a tiny BPE tokeniser on three short sentences. It prints each merge, then tokenises two phrases. Part 2 runs the toy word tokeniser from the diagram.</p>
          <ol class="lc-list">
            <li>Run it. Check the merges in Part 1 against the diagram above.</li>
            <li>In Part 1, set <code>NUM_MERGES = 0</code>. Every token is now a single letter. Then try <code>12</code>. How does the token count change?</li>
            <li>Look at the "?" in the second phrase. The letter "i" never appears in the corpus, so it has no ID. Add "it is warm" to the corpus in Part 1 and run again.</li>
            <li>Tokenise a new word, such as <code>"chat"</code>, by adding it to the list of phrases at the end of Part 1.</li>
            <li>In Part 2, add "The dog sat." to the sentence. Which words get new IDs?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A tokeniser turns text into a list of token IDs, and the transformer only sees those numbers. BPE builds subword tokens by merging the most frequent pairs. Common words stay whole, and rare words split into known pieces.
        </div>
      HTML
      starter_code: <<~'PYTHON',
        # Tokenization: a tiny BPE tokenizer, then the toy word tokenizer from the diagram.
        from collections import Counter

        # ── Part 1: a tiny BPE (byte pair encoding) tokenizer ──
        print("== Part 1: train a tiny BPE tokenizer ==")
        corpus = "the cat sat on the mat . the cat was warm . that hat sat on the mat"
        NUM_MERGES = 6           # how many new tokens to learn. Try 0, 3 or 12

        # Start: every word is a list of single characters.
        words = [list(w) for w in corpus.split()]

        def count_pairs(words):
            pairs = Counter()
            for w in words:
                for a, b in zip(w, w[1:]):
                    pairs[(a, b)] += 1
            return pairs

        def merge(word, pair):
            out, i = [], 0
            while i < len(word):
                if i + 1 < len(word) and (word[i], word[i + 1]) == pair:
                    out.append(word[i] + word[i + 1])   # join the pair into one token
                    i += 2
                else:
                    out.append(word[i])
                    i += 1
            return out

        merges = []
        for step in range(1, NUM_MERGES + 1):
            pairs = count_pairs(words)
            if not pairs:
                break
            best, count = pairs.most_common(1)[0]
            merges.append(best)
            words = [merge(w, best) for w in words]
            print(f"merge {step}: {best[0]!r} + {best[1]!r} -> {best[0] + best[1]!r}  (seen {count} times)")

        def tokenize(text):
            tokens = []
            for w in text.split():
                pieces = list(w)
                for pair in merges:                     # apply merges in the order they were learned
                    pieces = merge(pieces, pair)
                tokens += pieces
            return tokens

        # Vocabulary: every single character, plus every merged token.
        vocab = sorted(set(corpus.replace(" ", ""))) + [a + b for a, b in merges]
        token_id = {tok: i for i, tok in enumerate(vocab)}
        print("\nVocabulary size:", len(vocab))

        for text in ["the cat sat on the mat", "that cat is warm"]:
            tokens = tokenize(text)
            ids = [token_id.get(t, "?") for t in tokens]   # "?" = not in the vocabulary
            print(f"\n{text!r}\n  tokens: {tokens}\n  IDs:    {ids}")

        # ── Part 2: the toy word tokenizer from the diagram ──
        # Each new word gets the next free ID.
        print("\n== Part 2: the toy word tokenizer ==")
        sentence = "The cat sat on the mat because it was warm."
        words = sentence.lower().replace(".", " .").split()
        vocab = {}
        for w in words:
            if w not in vocab:
                vocab[w] = len(vocab)   # next free ID
        ids = [vocab[w] for w in words]
        print(words)
        print(ids)
        print("vocabulary size:", len(vocab))

        # Try it: in Part 1, change NUM_MERGES, add text to the corpus, or tokenize "chat".
        # In Part 2, add "The dog sat." to the sentence.
      PYTHON
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Word Embeddings</h1>
        </div>
        <p class="lc-lead">A token ID like 1 or 7 is just a label. It says nothing about meaning. The first layer of a transformer turns each ID into a list of numbers called an <strong>embedding</strong>. Words with similar meanings get similar lists. In this lesson, you will see how the lookup works. You will measure similarity with cosine similarity. You will also learn how the numbers are learned.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Token IDs 0, 1 and 2 for the, cat and sat each pick one row of the embedding table E, which has 10 rows and 4 columns. The three rows are copied out to make X, a matrix with 3 rows and 4 columns.">
            <defs><marker id="tf4a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="75" y="26" font-weight="700">Token IDs</text>
              <text x="380" y="26" font-weight="700">Embedding table E, shape (10, 4)</text>
              <text x="650" y="26" font-weight="700">X = E[ids], shape (3, 4)</text>
              <rect x="236" y="40" width="290" height="22" rx="4" fill="#27274e" stroke="#8b5cf6" stroke-width="1.5"/>
              <text x="264" y="56" font-size="11" fill="#9b99b8">0 the</text>
              <text x="318" y="56" font-size="12">0.50</text>
              <text x="372" y="56" font-size="12">-0.14</text>
              <text x="426" y="56" font-size="12">0.65</text>
              <text x="480" y="56" font-size="12">1.52</text>
              <rect x="236" y="64" width="290" height="22" rx="4" fill="#27274e" stroke="#10b981" stroke-width="1.5"/>
              <text x="264" y="80" font-size="11" fill="#9b99b8">1 cat</text>
              <text x="318" y="80" font-size="12">-0.23</text>
              <text x="372" y="80" font-size="12">-0.23</text>
              <text x="426" y="80" font-size="12">1.58</text>
              <text x="480" y="80" font-size="12">0.77</text>
              <rect x="236" y="88" width="290" height="22" rx="4" fill="#27274e" stroke="#f59e0b" stroke-width="1.5"/>
              <text x="264" y="104" font-size="11" fill="#9b99b8">2 sat</text>
              <text x="318" y="104" font-size="12">-0.47</text>
              <text x="372" y="104" font-size="12">0.54</text>
              <text x="426" y="104" font-size="12">-0.46</text>
              <text x="480" y="104" font-size="12">-0.47</text>
              <text x="264" y="128" font-size="11" fill="#9b99b8">3 on</text>
              <text x="318" y="128" font-size="12" fill="#9b99b8">0.24</text>
              <text x="372" y="128" font-size="12" fill="#9b99b8">-1.91</text>
              <text x="426" y="128" font-size="12" fill="#9b99b8">-1.72</text>
              <text x="480" y="128" font-size="12" fill="#9b99b8">-0.56</text>
              <text x="264" y="152" font-size="11" fill="#9b99b8">4 mat</text>
              <text x="318" y="152" font-size="12" fill="#9b99b8">-1.01</text>
              <text x="372" y="152" font-size="12" fill="#9b99b8">0.31</text>
              <text x="426" y="152" font-size="12" fill="#9b99b8">-0.91</text>
              <text x="480" y="152" font-size="12" fill="#9b99b8">-1.41</text>
              <text x="264" y="176" font-size="11" fill="#9b99b8">5 because</text>
              <text x="318" y="176" font-size="12" fill="#9b99b8">1.47</text>
              <text x="372" y="176" font-size="12" fill="#9b99b8">-0.23</text>
              <text x="426" y="176" font-size="12" fill="#9b99b8">0.07</text>
              <text x="480" y="176" font-size="12" fill="#9b99b8">-1.42</text>
              <text x="264" y="200" font-size="11" fill="#9b99b8">6 it</text>
              <text x="318" y="200" font-size="12" fill="#9b99b8">-0.54</text>
              <text x="372" y="200" font-size="12" fill="#9b99b8">0.11</text>
              <text x="426" y="200" font-size="12" fill="#9b99b8">-1.15</text>
              <text x="480" y="200" font-size="12" fill="#9b99b8">0.38</text>
              <text x="264" y="224" font-size="11" fill="#9b99b8">7 was</text>
              <text x="318" y="224" font-size="12" fill="#9b99b8">-0.60</text>
              <text x="372" y="224" font-size="12" fill="#9b99b8">-0.29</text>
              <text x="426" y="224" font-size="12" fill="#9b99b8">-0.60</text>
              <text x="480" y="224" font-size="12" fill="#9b99b8">1.85</text>
              <text x="264" y="248" font-size="11" fill="#9b99b8">8 warm</text>
              <text x="318" y="248" font-size="12" fill="#9b99b8">-0.01</text>
              <text x="372" y="248" font-size="12" fill="#9b99b8">-1.06</text>
              <text x="426" y="248" font-size="12" fill="#9b99b8">0.82</text>
              <text x="480" y="248" font-size="12" fill="#9b99b8">-1.22</text>
              <text x="264" y="272" font-size="11" fill="#9b99b8">9 .</text>
              <text x="318" y="272" font-size="12" fill="#9b99b8">0.21</text>
              <text x="372" y="272" font-size="12" fill="#9b99b8">-1.96</text>
              <text x="426" y="272" font-size="12" fill="#9b99b8">-1.33</text>
              <text x="480" y="272" font-size="12" fill="#9b99b8">0.20</text>
              <rect x="30" y="50" width="90" height="34" rx="7" fill="#1f1f44" stroke="#8b5cf6"/><text x="75" y="72">0  (the)</text>
              <path d="M122,67 C180,67 180,51 232,51" fill="none" stroke="#8b5cf6" stroke-width="1.5" marker-end="url(#tf4a)"/>
              <rect x="562" y="50" width="176" height="28" rx="5" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="584" y="69" font-size="12">0.50</text>
              <text x="628" y="69" font-size="12">-0.14</text>
              <text x="672" y="69" font-size="12">0.65</text>
              <text x="716" y="69" font-size="12">1.52</text>
              <path d="M528,51 C545,51 545,64 558,64" fill="none" stroke="#8b5cf6" stroke-width="1.5" marker-end="url(#tf4a)"/>
              <rect x="30" y="106" width="90" height="34" rx="7" fill="#1f1f44" stroke="#10b981"/><text x="75" y="128">1  (cat)</text>
              <path d="M122,123 C180,123 180,75 232,75" fill="none" stroke="#10b981" stroke-width="1.5" marker-end="url(#tf4a)"/>
              <rect x="562" y="90" width="176" height="28" rx="5" fill="#1f1f44" stroke="#10b981"/>
              <text x="584" y="109" font-size="12">-0.23</text>
              <text x="628" y="109" font-size="12">-0.23</text>
              <text x="672" y="109" font-size="12">1.58</text>
              <text x="716" y="109" font-size="12">0.77</text>
              <path d="M528,75 C545,75 545,104 558,104" fill="none" stroke="#10b981" stroke-width="1.5" marker-end="url(#tf4a)"/>
              <rect x="30" y="162" width="90" height="34" rx="7" fill="#1f1f44" stroke="#f59e0b"/><text x="75" y="184">2  (sat)</text>
              <path d="M122,179 C180,179 180,99 232,99" fill="none" stroke="#f59e0b" stroke-width="1.5" marker-end="url(#tf4a)"/>
              <rect x="562" y="130" width="176" height="28" rx="5" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="584" y="149" font-size="12">-0.47</text>
              <text x="628" y="149" font-size="12">0.54</text>
              <text x="672" y="149" font-size="12">-0.46</text>
              <text x="716" y="149" font-size="12">-0.47</text>
              <path d="M528,99 C545,99 545,144 558,144" fill="none" stroke="#f59e0b" stroke-width="1.5" marker-end="url(#tf4a)"/>
              <text x="650" y="200" font-size="12" fill="#9b99b8">one row of 4 numbers</text><text x="650" y="218" font-size="12" fill="#9b99b8">per token</text>
              <text x="75" y="230" font-size="12" fill="#9b99b8">no maths here:</text><text x="75" y="248" font-size="12" fill="#9b99b8">the ID picks a row</text>
              <text x="380" y="292" font-size="12" fill="#9b99b8">Random numbers before training (np.random.seed(42)). Training changes them.</text>
            </g>
          </svg>
          <figcaption>The embedding table has one row per token in the vocabulary. Each token ID picks its row. Three IDs give a matrix with 3 rows. The numbers are the real values from the code below.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From ID to vector</h3>
          <p>A <strong>vector</strong> is a list of numbers. An <strong>embedding</strong> is the vector that stands for one token. The length of this vector is called <strong>d_model</strong>. In our tiny examples, d_model is 4.</p>
          <p>All embeddings are stored in the <strong>embedding table</strong>. It has one row for each token in the vocabulary. So its shape is (vocabulary size, d_model). Our toy vocabulary has 10 tokens, so the table is (10, 4).</p>
          <p>Turning IDs into vectors is a simple lookup. Token ID 1 takes row 1. There is no maths at all.</p>
          <p>In NumPy, the lookup is one line: <code>X = E[ids]</code>. With the IDs [0, 1, 2] for "the cat sat", X has 3 rows and 4 columns. Part 2 in the code editor below builds the table from the diagram and does this lookup.</p>
          <p>The result has one row per token. For the full running sentence of 11 tokens, X has shape (11, 4). This matrix is what the rest of the transformer works on.</p>
        </div>
        <div class="lc-card">
          <h3>How big is a real table?</h3>
          <table class="lc-table">
            <thead><tr><th>Model</th><th>Vocabulary</th><th>d_model</th><th>Numbers in the table</th></tr></thead>
            <tbody>
              <tr><td>Our toy model</td><td>10</td><td>4</td><td>40</td></tr>
              <tr><td>GPT-2 small</td><td>50,257</td><td>768</td><td>38,597,376</td></tr>
            </tbody>
          </table>
          <p>In a real model, the numbers in a vector do not have labels. No single number means "animal" or "hot". Meaning is spread across all of them.</p>
        </div>
        <div class="lc-card">
          <h3>Cosine similarity</h3>
          <p>How do you tell if two vectors are similar? Think of each vector as an arrow. Similar words point in a similar direction. <strong>Cosine similarity</strong> measures the angle between two arrows:</p>
          <p><strong>cos(a, b) = (a · b) / (|a| × |b|)</strong></p>
          <p><code>a · b</code> is the <strong>dot product</strong>: multiply the matching numbers and add them up. <code>|a|</code> is the <strong>length</strong> of the vector: the square root of the sum of its squared numbers.</p>
          <figure class="lc-diagram">
            <svg viewBox="0 0 760 260" role="img" aria-label="Three word vectors drawn as arrows from one point. cat and kitten point in almost the same direction, with cosine similarity 0.989. warm points in a very different direction, with cosine similarity 0.331 to cat.">
              <defs><marker id="tf4b" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#10b981"/></marker><marker id="tf4c" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#f59e0b"/></marker><marker id="tf4d" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#3b82f6"/></marker></defs>
              <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
                <line x1="60" y1="225" x2="340" y2="225" stroke="#4b4a78"/><line x1="80" y1="240" x2="80" y2="20" stroke="#4b4a78"/>
                <line x1="80" y1="225" x2="263.5" y2="175.8" stroke="#3b82f6" stroke-width="2.5" marker-end="url(#tf4d)"/>
                <text x="288.6" y="175.7" font-weight="700" fill="#3b82f6">cat</text>
                <line x1="80" y1="225" x2="245.5" y2="153.0" stroke="#10b981" stroke-width="2.5" marker-end="url(#tf4b)"/>
                <text x="269.4" y="150.6" font-weight="700" fill="#10b981">kitten</text>
                <line x1="80" y1="225" x2="91.8" y2="69.6" stroke="#f59e0b" stroke-width="2.5" marker-end="url(#tf4c)"/>
                <text x="93.7" y="57.7" font-weight="700" fill="#f59e0b">warm</text>
                <path d="M147.6,206.9 A70,70 0 0 0 85.3,155.2" fill="none" stroke="#9b99b8" stroke-dasharray="3 3"/>
                <text x="142" y="155" font-size="11" fill="#9b99b8">big angle</text>
                <rect x="400" y="20" width="340" height="218" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="570" y="46" font-weight="700">cosine similarity</text>
                <text x="570" y="72" font-size="14" fill="#67e8f9">cos = (a · b) / (|a| × |b|)</text>
                <g text-anchor="start" font-size="12.5">
                  <text x="420" y="104">cat and kitten:</text><text x="610" y="104" font-weight="700" fill="#6ee7b7">0.989</text><text x="660" y="104" fill="#9b99b8">close</text>
                  <text x="420" y="130">cat and warm:</text><text x="610" y="130" font-weight="700" fill="#fcd34d">0.331</text><text x="660" y="130" fill="#9b99b8">far</text>
                  <text x="420" y="166" fill="#9b99b8">1 = same direction</text>
                  <text x="420" y="188" fill="#9b99b8">0 = at a right angle (not related)</text>
                  <text x="420" y="210" fill="#9b99b8">-1 = opposite direction</text>
                </g>
              </g>
            </svg>
            <figcaption>The arrows are drawn in 2D so you can see the angles. The real vectors have 4 numbers each. The scores come from the code below.</figcaption>
          </figure>
          <p>Let's work it out by hand for cat = [0.9, 0.1, 0.2, 0.0] and kitten = [0.9, 0.0, 0.3, 0.0]:</p>
          <ul class="lc-list">
            <li>Dot product: 0.9×0.9 + 0.1×0.0 + 0.2×0.3 + 0.0×0.0 = 0.81 + 0 + 0.06 + 0 = 0.87</li>
            <li>Length of cat: √(0.81 + 0.01 + 0.04) = √0.86 ≈ 0.927</li>
            <li>Length of kitten: √(0.81 + 0.09) = √0.90 ≈ 0.949</li>
            <li>Cosine: 0.87 / (0.927 × 0.949) ≈ 0.989</li>
          </ul>
          <p>Part 3 in the code editor below works out both scores. It also works out cat against warm. That score is only 0.331.</p>
          <p>"cat" and "kitten" are very close. "cat" and "warm" are far apart. These vectors are hand-made to show the idea.</p>
        </div>
        <div class="lc-card">
          <h3>The numbers are learned</h3>
          <p>Nobody writes the embedding table by hand. It starts as small random numbers. During training, the model makes a prediction, measures its mistake, and changes its weights a little. The rows of the embedding table are weights too, so they change as well.</p>
          <p>Words that appear in similar places, like "cat" and "kitten", get similar updates. Over millions of steps, their vectors move close together. Similar meaning comes out of training. It is not put in.</p>
          <p>In PyTorch, the embedding table is the <code>nn.Embedding</code> layer. Part 4 in the code editor below makes a (10, 4) table and looks up the 11 IDs of the running sentence.</p>
          <p>X has shape (11, 4), one row per token. <code>requires_grad</code> is <code>True</code>. This means training will update the table. PyTorch does not run in the browser, so run Part 4 on your own computer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: learned or fixed?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Some things about an embedding layer are learned during training. Others are fixed before training starts. Sort them.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="learned" data-label="Learned during training"></div>
              <div data-sorter-target="bucket" data-bucket="fixed" data-label="Fixed before training"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="learned" data-why="The rows start random. Training changes them a little at every step.">The numbers in the row for "cat"</li>
              <li data-bucket="fixed" data-why="The tokeniser decides the IDs. The model cannot change them.">The token ID of "cat"</li>
              <li data-bucket="fixed" data-why="The designer picks d_model when building the model.">The length of each vector (d_model)</li>
              <li data-bucket="learned" data-why="Words used in similar places get similar updates, so they move close together.">"cat" and "kitten" having a high cosine similarity</li>
              <li data-bucket="fixed" data-why="There is one row per token, so the vocabulary size sets the number of rows.">The number of rows in the table</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Activity: drag two vectors</h3>
          <p>Drag the tips of the two arrows. Watch the cosine similarity change with the angle. Press "Same direction, different length": the cosine stays at 1.</p>
          <div class="lcw" data-controller="vector-plot"></div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code has two embedding tables for 14 words. One is random, like a model before training. One is hand-made to look like a trained table. It looks up a sentence, then finds the most similar words in each table.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, in the random table, the "most similar" words make no sense. In the trained table, they do.</li>
            <li>In Part 1, change the list <code>["cat", "warm", "mat"]</code> to include <code>"rug"</code> or <code>"it"</code>.</li>
            <li>In <code>trained</code>, change the vector for "dog" to <code>[0.1, 0.1, 0.9, 0.0]</code>. Now "dog" looks like a heat word. Add "dog" to the list and run. Which words are closest now?</li>
            <li>Change <code>SENTENCE</code> to <code>"the kitten sat on the rug"</code>, and check the shape of X.</li>
            <li>Part 2 prints the table rows from the diagram. Part 3 prints the cosine scores from the lesson. Change the IDs in Part 2 to <code>[3, 4, 5]</code>.</li>
            <li>On your own computer with PyTorch, run Part 4. Change <code>embedding_dim=4</code> to <code>8</code> and check the new shape of X.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An embedding layer is a table with one learned vector per token, and a token ID simply picks its row. Training moves the vectors so that similar words point in similar directions, which cosine similarity can measure.
        </div>
      HTML
      starter_code: <<~'PYTHON',
        # Word embeddings: look up vectors in a table, then compare them with cosine similarity.
        import numpy as np

        # ── Part 1: a random table and a "trained" table ──
        print("== Part 1: look up vectors and find similar words ==")
        np.random.seed(42)
        vocab = ["the", "cat", "sat", "on", "mat", "because", "it", "was", "warm", ".",
                 "kitten", "dog", "rug", "hot"]
        token_id = {w: i for i, w in enumerate(vocab)}

        # Before training: the table is random numbers. Shape (vocab size, d_model).
        E_random = np.random.randn(len(vocab), 4).round(2)

        # A hand-made table that looks like a trained one.
        # We gave the 4 numbers labels to help you read them: [animal, thing, heat, small word].
        # Real embeddings have hundreds of numbers, and the numbers have no labels.
        trained = {
            "the": [0.0, 0.1, 0.0, 0.9],     "cat": [0.9, 0.1, 0.2, 0.0],
            "sat": [0.4, 0.3, 0.0, 0.3],     "on": [0.0, 0.3, 0.0, 0.8],
            "mat": [0.1, 0.9, 0.1, 0.0],     "because": [0.0, 0.0, 0.0, 1.0],
            "it": [0.4, 0.3, 0.1, 0.6],      "was": [0.1, 0.1, 0.1, 0.8],
            "warm": [0.1, 0.1, 0.9, 0.0],    ".": [0.0, 0.0, 0.0, 0.7],
            "kitten": [0.9, 0.0, 0.3, 0.0],  "dog": [0.8, 0.2, 0.1, 0.0],
            "rug": [0.0, 0.9, 0.2, 0.0],     "hot": [0.0, 0.1, 1.0, 0.1],
        }
        E_trained = np.array([trained[w] for w in vocab])

        # Lookup: token IDs pick rows of the table.
        SENTENCE = "the cat sat on the mat"
        ids = [token_id[w] for w in SENTENCE.split()]
        X = E_trained[ids]
        print("IDs:", ids)
        print("Looked-up vectors X, shape", X.shape)
        print(X)

        def cosine(a, b):
            return a @ b / (np.linalg.norm(a) * np.linalg.norm(b))

        def nearest(word, E, top=3):
            v = E[token_id[word]]
            sims = [(cosine(v, E[i]), w) for i, w in enumerate(vocab) if w != word]
            return sorted(sims, reverse=True)[:top]

        for word in ["cat", "warm", "mat"]:
            print(f"\nMost similar to {word!r}:")
            for name, E in [("random ", E_random), ("trained", E_trained)]:
                near = ", ".join(f"{w} {s:.2f}" for s, w in nearest(word, E))
                print(f"  {name}: {near}")

        # ── Part 2: the small table from the diagram (10 tokens, d_model = 4) ──
        print("\n== Part 2: the lookup from the diagram ==")
        np.random.seed(42)
        E = np.random.randn(10, 4).round(2)   # 10 tokens, d_model = 4
        ids = [0, 1, 2]                       # "the cat sat"
        X = E[ids]                            # pick rows 0, 1 and 2
        print(X.shape)
        print(X)

        # ── Part 3: cosine similarity, worked out in the lesson ──
        print("\n== Part 3: cosine similarity ==")
        cat    = np.array([0.9, 0.1, 0.2, 0.0])
        kitten = np.array([0.9, 0.0, 0.3, 0.0])
        warm   = np.array([0.1, 0.1, 0.9, 0.0])

        # cosine() is defined in Part 1: a @ b / (np.linalg.norm(a) * np.linalg.norm(b))
        print(round(cosine(cat, kitten), 3))
        print(round(cosine(cat, warm), 3))

        # ── Part 4: the embedding layer in PyTorch (run this part on your own computer) ──
        print("\n== Part 4: nn.Embedding in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            emb = nn.Embedding(num_embeddings=10, embedding_dim=4)   # a (10, 4) table
            ids = torch.tensor([0, 1, 2, 3, 0, 4, 5, 6, 7, 8, 9])  # the running sentence
            X = emb(ids)
            print(X.shape)                                          # torch.Size([11, 4])
            print(emb.weight.requires_grad)                         # True: training updates the table

        # Try it: in Part 1, change the vector for "dog" to [0.1, 0.1, 0.9, 0.0]. Where does it land now?
        # In Part 2, change the IDs to [3, 4, 5].
      PYTHON
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Positional Encoding</h1>
        </div>
        <p class="lc-lead">An RNN reads words one by one, so it always knows the order. A transformer reads all tokens at the same time. On its own, it cannot tell "dog bites man" from "man bites dog". In this lesson, you will learn how a <strong>positional encoding</strong> gives every token its place in the sentence. You will work out the sine and cosine formula with real numbers, and see how it is added to the word embeddings.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Three rows. The word the at position 0, cat at position 1 and the at position 4. Each word embedding is added to a position vector to give the input vector. The two copies of the have the same embedding but different input vectors. Below, two small charts: column 0 of the position vector, sin of pos, swings up and down fast. Column 2, sin of pos divided by 100, grows very slowly.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <g font-weight="700" font-size="12.5"><text x="50" y="26" fill="#9b99b8">Token</text><text x="190" y="26" fill="#93c5fd">Word embedding</text><text x="400" y="26" fill="#fcd34d">Position vector</text><text x="630" y="26" fill="#6ee7b7">Input vector</text></g>
              <text x="50" y="60" font-weight="700">the</text><text x="50" y="76" font-size="11" fill="#9b99b8">pos 0</text>
              <rect x="100" y="45" width="180" height="34" rx="7" fill="#1f1f44" stroke="#3b82f6"/><text x="190" y="67">[0.50, -0.14, 0.65, 1.52]</text>
              <text x="295" y="68" font-size="18" fill="#9b99b8">+</text>
              <rect x="310" y="45" width="180" height="34" rx="7" fill="#27274e" stroke="#f59e0b"/><text x="400" y="67">[0.00, 1.00, 0.00, 1.00]</text>
              <text x="505" y="68" font-size="18" fill="#9b99b8">=</text>
              <rect x="520" y="45" width="220" height="34" rx="7" fill="#1f1f44" stroke="#10b981"/><text x="630" y="67">[0.50, 0.86, 0.65, 2.52]</text>
              <text x="50" y="110" font-weight="700">cat</text><text x="50" y="126" font-size="11" fill="#9b99b8">pos 1</text>
              <rect x="100" y="95" width="180" height="34" rx="7" fill="#1f1f44" stroke="#3b82f6"/><text x="190" y="117">[-0.23, -0.23, 1.58, 0.77]</text>
              <text x="295" y="118" font-size="18" fill="#9b99b8">+</text>
              <rect x="310" y="95" width="180" height="34" rx="7" fill="#27274e" stroke="#f59e0b"/><text x="400" y="117">[0.84, 0.54, 0.01, 1.00]</text>
              <text x="505" y="118" font-size="18" fill="#9b99b8">=</text>
              <rect x="520" y="95" width="220" height="34" rx="7" fill="#1f1f44" stroke="#10b981"/><text x="630" y="117">[0.61, 0.31, 1.59, 1.77]</text>
              <text x="50" y="160" font-weight="700">the</text><text x="50" y="176" font-size="11" fill="#9b99b8">pos 4</text>
              <rect x="100" y="145" width="180" height="34" rx="7" fill="#1f1f44" stroke="#3b82f6"/><text x="190" y="167">[0.50, -0.14, 0.65, 1.52]</text>
              <text x="295" y="168" font-size="18" fill="#9b99b8">+</text>
              <rect x="310" y="145" width="180" height="34" rx="7" fill="#27274e" stroke="#f59e0b"/><text x="400" y="167">[-0.76, -0.65, 0.04, 1.00]</text>
              <text x="505" y="168" font-size="18" fill="#9b99b8">=</text>
              <rect x="520" y="145" width="220" height="34" rx="7" fill="#1f1f44" stroke="#ec4899"/><text x="630" y="167">[-0.26, -0.79, 0.69, 2.52]</text>
              <text x="380" y="200" font-size="11.5" fill="#9b99b8">Same word "the", same embedding, but a different input vector at position 0 and position 4.</text>
              <line x1="40" y1="215" x2="720" y2="215" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="200" y="236" font-weight="700" fill="#fcd34d">Column 0: sin(pos) changes fast</text>
              <text x="580" y="236" font-weight="700" fill="#fcd34d">Column 2: sin(pos / 100) changes slowly</text>
              <line x1="50" y1="275" x2="350" y2="275" stroke="#4b4a78"/>
              <line x1="430" y1="275" x2="730" y2="275" stroke="#4b4a78"/>
              <polyline points="60,275.0 100,245.5 140,243.2 180,270.1 220,301.5 260,308.6 300,284.8 340,252.0" fill="none" stroke="#f59e0b" stroke-width="2"/>
              <g fill="#f59e0b"><circle cx="60" cy="275.0" r="3.5"/><circle cx="100" cy="245.5" r="3.5"/><circle cx="140" cy="243.2" r="3.5"/><circle cx="180" cy="270.1" r="3.5"/><circle cx="220" cy="301.5" r="3.5"/><circle cx="260" cy="308.6" r="3.5"/><circle cx="300" cy="284.8" r="3.5"/><circle cx="340" cy="252.0" r="3.5"/></g>
              <polyline points="440,275.0 480,274.7 520,274.3 560,274.0 600,273.6 640,273.3 680,272.9 720,272.6" fill="none" stroke="#f59e0b" stroke-width="2"/>
              <g fill="#f59e0b"><circle cx="440" cy="275.0" r="3.5"/><circle cx="480" cy="274.7" r="3.5"/><circle cx="520" cy="274.3" r="3.5"/><circle cx="560" cy="274.0" r="3.5"/><circle cx="600" cy="273.6" r="3.5"/><circle cx="640" cy="273.3" r="3.5"/><circle cx="680" cy="272.9" r="3.5"/><circle cx="720" cy="272.6" r="3.5"/></g>
              <g font-size="10.5" fill="#9b99b8"><text x="60" y="324">0</text><text x="100" y="324">1</text><text x="140" y="324">2</text><text x="180" y="324">3</text><text x="220" y="324">4</text><text x="260" y="324">5</text><text x="300" y="324">6</text><text x="340" y="324">7</text></g>
              <g font-size="10.5" fill="#9b99b8"><text x="440" y="324">0</text><text x="480" y="324">1</text><text x="520" y="324">2</text><text x="560" y="324">3</text><text x="600" y="324">4</text><text x="640" y="324">5</text><text x="680" y="324">6</text><text x="720" y="324">7</text></g>
              <text x="580" y="300" font-size="11" fill="#9b99b8">0.00, 0.01, 0.02 ... 0.07</text>
            </g>
          </svg>
          <figcaption>Top: each word embedding gets its position vector added. Bottom: the numbers along the axis are positions 0 to 7. Fast columns tell near positions apart. Slow columns help with long distances.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why the order gets lost</h3>
          <p>Attention compares every token with every other token. It does this for all tokens at the same time. Nothing in that maths says which token came first.</p>
          <p>So if you shuffle the tokens, each token gets the same result as before. Only the order of the results changes. For "dog bites man" and "man bites dog", the word "dog" would get the very same vector. But the meaning is very different.</p>
          <p>The fix is simple. Before the first layer, you add a <strong>position vector</strong> to each token's embedding. A position vector is a list of numbers that says "I am token number 0" or "I am token number 4". Now the same word at a different place has a different input vector.</p>
        </div>
        <div class="lc-card">
          <h3>The sine and cosine formula</h3>
          <p>The 2017 transformer paper used fixed position vectors made from sine and cosine waves. This is called <strong>sinusoidal positional encoding</strong>. For position <code>pos</code> and column pair <code>i</code>:</p>
          <p><strong>PE(pos, 2i) = sin(pos / 10000^(2i / d_model))</strong></p>
          <p><strong>PE(pos, 2i+1) = cos(pos / 10000^(2i / d_model))</strong></p>
          <p>Even columns use sine. Odd columns use cosine. Each pair of columns has its own speed.</p>
          <p>Let's use <code>d_model = 4</code>, like the rest of this course. Then there are two column pairs:</p>
          <ul class="lc-list">
            <li>Pair 0 (columns 0 and 1): divide by 10000^0 = 1. So the angle is just <code>pos</code>.</li>
            <li>Pair 1 (columns 2 and 3): divide by 10000^(2/4) = 100. So the angle is <code>pos / 100</code>.</li>
          </ul>
          <p>For position 2, the angles are 2 and 0.02. So PE(2) = [sin 2, cos 2, sin 0.02, cos 0.02].</p>
          <p>That is about [0.909, -0.416, 0.02, 1.0]. Part 1 in the code editor below works this out step by step, and Part 2 prints the rows for 6 positions.</p>
          <p>The first pair turns fast, like the second hand on a clock. The second pair turns slowly, like the hour hand. Together they give every position its own pattern of numbers. Real models have hundreds of pairs, with speeds from very fast to very slow.</p>
        </div>
        <div class="lc-card">
          <h3>Add, do not join</h3>
          <p>The position vector has the same length as the embedding, <code>d_model</code>. So the two are simply <strong>added</strong>, number by number. The input to the first layer keeps the shape <code>(number of tokens, d_model)</code>.</p>
          <p>Take our running sentence: "The cat sat on the mat because it was warm." The word "the" appears at position 0 and at position 4. Both copies look up the same row of the embedding table. After the position vectors are added, the two inputs are different, as the diagram shows.</p>
          <p>Adding mixes word and position information into the same numbers. This works well in practice. The model learns to read both kinds of information from the mix.</p>
        </div>
        <div class="lc-card">
          <h3>Learned position embeddings</h3>
          <p>A second way is to <strong>learn</strong> the position vectors. You make a second embedding table with one row per position. The rows start random and are trained, just like word embeddings. GPT-2 and BERT work this way.</p>
          <p>Part 4 in the code editor below builds this in PyTorch. It makes a token table and a position table, and adds the two lookups for a sentence of 3 tokens.</p>
          <p>Here <code>d_model</code> is 4. The result has shape (1, 3, 4): 1 sentence, 3 tokens and 4 numbers per token. PyTorch does not run in the browser, so run Part 4 on your own computer.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Sinusoidal</th><th>Learned</th></tr></thead>
            <tbody>
              <tr><td>Where the numbers come from</td><td>A fixed formula</td><td>Training</td></tr>
              <tr><td>Extra parameters</td><td>None</td><td>One row per position</td></tr>
              <tr><td>Longer text than in training</td><td>The formula still gives a vector</td><td>No row exists past the last position</td></tr>
              <tr><td>Used by</td><td>The original 2017 transformer</td><td>GPT-2, BERT</td></tr>
            </tbody>
          </table>
          <p>Many newer models use a third method called <strong>rotary position embeddings (RoPE)</strong>. RoPE does not add a vector. Instead, it turns the query and key vectors by an angle that depends on the position. The idea of "fast and slow" angles is the same. You will meet queries and keys in the next unit.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sinusoidal or learned?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which kind of position vector does each sentence describe?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="sin" data-label="Sinusoidal (formula)"></div>
              <div data-sorter-target="bucket" data-bucket="learned" data-label="Learned (table)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="sin" data-why="The numbers come from sin and cos, so nothing needs to be trained.">It adds no new parameters to the model.</li>
              <li data-bucket="learned" data-why="Each position has a row in a table, and training changes those rows.">Its numbers change during training.</li>
              <li data-bucket="sin" data-why="You can put any position number into the formula, even a very large one.">It can make a vector for any position, even a very long text.</li>
              <li data-bucket="learned" data-why="The table has a fixed number of rows, for example 512. Position 600 has no row.">It has a maximum length set by the size of its table.</li>
              <li data-bucket="sin" data-why="This is the method used in the 2017 paper 'Attention Is All You Need'.">The original 2017 transformer used it.</li>
              <li data-bucket="learned" data-why="GPT-2 and BERT both learn a position embedding table.">GPT-2 and BERT use it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code. In Part 2, check that position 1 is 0.841, 0.54, 0.01 and 1, as in the diagram.</li>
            <li>Look at Part 3. Without positions, "dog" gets the same vector in both sentences. With positions, the vectors are different.</li>
            <li>In Part 2, change <code>d_model = 4</code> to <code>d_model = 8</code>. You now get four column pairs. The last pairs change very slowly.</li>
            <li>In Part 2, change <code>positional_encoding(6, d_model)</code> to 10 positions. Look at column 0. Does any position repeat exactly?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Attention has no sense of order by itself. So each word embedding gets a position vector added to it. The vector comes from a sine and cosine formula or a learned table. Now the same word at a different place gets a different input.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Positional encoding gives every token a "where am I?" vector.
        import numpy as np

        # ── Part 1: PE(2) by hand, with d_model = 4 ──
        print("== Part 1: the position vector for pos 2 ==")
        pos, d_model = 2, 4
        pe = []
        for i in range(0, d_model, 2):
            angle = pos / 10000 ** (i / d_model)
            pe += [np.sin(angle), np.cos(angle)]
        print("angles:", 2 / 10000 ** 0, 2 / 10000 ** 0.5)
        print("PE(2) =", np.round(pe, 3))

        # ── Part 2: the position vectors for 6 positions ──
        print("\n== Part 2: a table of position vectors ==")
        d_model = 4          # size of each vector (real models use hundreds or thousands)

        def positional_encoding(num_positions, d_model):
            pe = np.zeros((num_positions, d_model))
            for pos in range(num_positions):
                for i in range(0, d_model, 2):
                    angle = pos / (10000 ** (i / d_model))
                    pe[pos, i] = np.sin(angle)        # even columns use sine
                    pe[pos, i + 1] = np.cos(angle)    # odd columns use cosine
            return pe

        pe = positional_encoding(6, d_model)
        print("Position vectors (one row per position):")
        for pos, row in enumerate(pe):
            print(f"  pos {pos}: {np.round(row, 3)}")

        # ── Part 3: "dog bites man" versus "man bites dog" ──
        print("\n== Part 3: does 'dog' get the same vector? ==")
        # Made-up word embeddings with 4 numbers each
        emb = {
            "dog":   np.array([0.9, 0.1, 0.3, 0.0]),
            "bites": np.array([0.0, 0.8, 0.1, 0.5]),
            "man":   np.array([0.2, 0.0, 0.9, 0.4]),
        }

        def attention_mix(X):
            # Simple attention: every word takes a weighted average of all words
            scores = X @ X.T
            weights = np.exp(scores) / np.exp(scores).sum(axis=1, keepdims=True)
            return weights @ X

        def dog_after_attention(sentence, use_positions):
            words = sentence.split()
            X = np.array([emb[w] for w in words])
            if use_positions:
                X = X + pe[:len(words), :4]          # add the position vectors (4 columns, like the embeddings)
            out = attention_mix(X)
            return out[words.index("dog")]       # the new vector for "dog"

        for use_positions in [False, True]:
            a = dog_after_attention("dog bites man", use_positions)
            b = dog_after_attention("man bites dog", use_positions)
            print(f"With positions: {use_positions}")
            print("  'dog' in 'dog bites man':", np.round(a, 3))
            print("  'dog' in 'man bites dog':", np.round(b, 3))
            print("  same vector?", np.allclose(a, b))

        # ── Part 4: learned position embeddings in PyTorch (run this part on your own computer) ──
        print("\n== Part 4: learned position embeddings in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            vocab_size, max_len, d_model = 1000, 512, 4
            tok_emb = nn.Embedding(vocab_size, d_model)   # one row per token ID
            pos_emb = nn.Embedding(max_len, d_model)      # one row per position

            ids = torch.tensor([[12, 345, 67]])           # 1 sentence, 3 token IDs
            positions = torch.arange(ids.shape[1])        # tensor([0, 1, 2])
            x = tok_emb(ids) + pos_emb(positions)         # add, same shape
            print(positions)
            print(x.shape)                                # torch.Size([1, 3, 4])

        # Try it: in Part 2, change d_model to 8, or make 10 positions instead of 6.
      PYTHON
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">What is Attention?</h1>
        </div>
        <p class="lc-lead">In "The cat sat on the mat because it was warm", what is "it"? You know it is the mat, because you looked back at the other words. <strong>Attention</strong> lets a transformer do the same thing. Each token looks at the other tokens and takes in information from the ones that matter. In this lesson, you will learn the idea of attention: scores, weights that add up to 1, and a weighted average.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The ten words of the sentence the cat sat on the mat because it was warm. Arrows go from it to every word. The thickest arrow goes to mat, with weight 0.29. Itself gets 0.17 and cat gets 0.16. The other words get between 0.04 and 0.08. The new vector for it is the weighted average of all the word vectors.">
            <defs><marker id="tf6a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="16" font-size="12" fill="#9b99b8">"it" looks at every word. Thicker arrows mean bigger weights.</text>
              <rect x="24" y="150" width="64" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="56" y="171">the</text>
              <text x="56" y="202" font-size="11.5" fill="#9b99b8">0.04</text>
              <rect x="96" y="150" width="64" height="32" rx="7" fill="#27274e" stroke="#8b5cf6"/><text x="128" y="171">cat</text>
              <text x="128" y="202" font-size="11.5" fill="#c4b5fd" font-weight="700">0.16</text>
              <rect x="168" y="150" width="64" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="200" y="171">sat</text>
              <text x="200" y="202" font-size="11.5" fill="#9b99b8">0.07</text>
              <rect x="240" y="150" width="64" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="272" y="171">on</text>
              <text x="272" y="202" font-size="11.5" fill="#9b99b8">0.06</text>
              <rect x="312" y="150" width="64" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="344" y="171">the</text>
              <text x="344" y="202" font-size="11.5" fill="#9b99b8">0.04</text>
              <rect x="384" y="150" width="64" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="416" y="171">mat</text>
              <text x="416" y="202" font-size="11.5" fill="#93c5fd" font-weight="700">0.29</text>
              <rect x="456" y="150" width="64" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="488" y="171">because</text>
              <text x="488" y="202" font-size="11.5" fill="#9b99b8">0.04</text>
              <rect x="528" y="150" width="64" height="32" rx="7" fill="#27274e" stroke="#ec4899"/><text x="560" y="171">it</text>
              <text x="560" y="202" font-size="11.5" fill="#9b99b8">0.17 (itself)</text>
              <rect x="600" y="150" width="64" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="632" y="171">was</text>
              <text x="632" y="202" font-size="11.5" fill="#9b99b8">0.04</text>
              <rect x="672" y="150" width="64" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="704" y="171">warm</text>
              <text x="704" y="202" font-size="11.5" fill="#9b99b8">0.08</text>
              <path d="M560,148 Q308,28 56,146" fill="none" stroke="#9b99b8" stroke-width="1.2" marker-end="url(#tf6a)"/>
              <path d="M560,148 Q344,28 128,146" fill="none" stroke="#8b5cf6" stroke-width="2.6" marker-end="url(#tf6a)"/>
              <path d="M560,148 Q380,28 200,146" fill="none" stroke="#9b99b8" stroke-width="1.2" marker-end="url(#tf6a)"/>
              <path d="M560,148 Q416,29 272,146" fill="none" stroke="#9b99b8" stroke-width="1.2" marker-end="url(#tf6a)"/>
              <path d="M560,148 Q452,54 344,146" fill="none" stroke="#9b99b8" stroke-width="1.2" marker-end="url(#tf6a)"/>
              <path d="M560,148 Q488,80 416,146" fill="none" stroke="#3b82f6" stroke-width="4.6" marker-end="url(#tf6a)"/>
              <path d="M560,148 Q524,105 488,146" fill="none" stroke="#9b99b8" stroke-width="1.2" marker-end="url(#tf6a)"/>
              <path d="M560,148 Q596,105 632,146" fill="none" stroke="#9b99b8" stroke-width="1.2" marker-end="url(#tf6a)"/>
              <path d="M560,148 Q632,80 704,146" fill="none" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#tf6a)"/>
              <rect x="40" y="226" width="680" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="250" font-weight="700" fill="#6ee7b7">new "it" = 0.04 × the + 0.16 × cat + 0.07 × sat + ... + 0.29 × mat + ...</text>
              <text x="380" y="273" font-size="11.5" fill="#9b99b8">A weighted average of the word vectors. The weights add up to 1.</text>
            </g>
          </svg>
          <figcaption>The token "it" gives a weight to every word, including itself. Most of the weight goes to "mat". The weights come from the starter code below.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Every token looks at every token</h3>
          <p>Each token starts as a vector from the embedding table, plus its position vector. The vector for "it" is the same in every sentence. On its own, it does not say what "it" means here.</p>
          <p>Attention fixes this. The token "it" looks at all the tokens in the sentence, including itself. It finds the ones that help, such as "mat". Then it takes in some of their information. After attention, "it" has a new vector that fits this sentence.</p>
          <p>Every token does this, not only "it". And all tokens do it at the same time. This is why a transformer can run in parallel, unlike an RNN.</p>
        </div>
        <div class="lc-card">
          <h3>Three steps: score, weights, average</h3>
          <ol class="lc-list">
            <li><strong>Score:</strong> the token gives every token a score. A high score means "this word is useful to me".</li>
            <li><strong>Weights:</strong> the scores go through <strong>softmax</strong>. Softmax turns any list of numbers into weights between 0 and 1 that add up to 1. It uses <code>e^score / sum of all e^score</code>.</li>
            <li><strong>Weighted average:</strong> the new vector is the sum of each token's vector times its weight. A big weight means more information from that token.</li>
          </ol>
          <p>Here is a small worked example with three words. Say "it" scores "cat" 1, "mat" 2 and "warm" 0. Then e^1 = 2.718, e^2 = 7.389 and e^0 = 1. The total is 11.107. So the weights are 2.718 / 11.107 = 0.245, then 0.665 and 0.090. They add up to 1.</p>
          <p>Part 2 in the code editor below runs this small example with NumPy.</p>
          <p>The new vector is 0.245 × [2, 0] + 0.665 × [0, 2] + 0.090 × [0, 1] = [0.49, 1.42]. It is closest to the vector for "mat", because "mat" had the biggest weight.</p>
        </div>
        <div class="lc-card">
          <h3>Why the weights add up to 1</h3>
          <p>Because the weights add up to 1, the result is an <strong>average</strong>, not a sum. Its numbers stay in the same range as the word vectors. This holds for a sentence of 3 words or 3,000 words.</p>
          <p>The weights also act like a budget. If "it" gives more weight to "mat", it must give less to the other words. So attention is a choice about where to look.</p>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Weight from "it" (starter code)</th></tr></thead>
            <tbody>
              <tr><td>mat</td><td>0.29</td></tr>
              <tr><td>it (itself)</td><td>0.17</td></tr>
              <tr><td>cat</td><td>0.16</td></tr>
              <tr><td>the other 7 words</td><td>0.04 to 0.08 each</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>1.00</strong></td></tr>
            </tbody>
          </table>
          <p>In this simple version, the scores are just how similar two vectors are. Real transformers learn better scores with three new vectors called query, key and value. That is the topic of the next lesson. Nobody writes rules like "pronouns look at nouns". The model learns where to look during training.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow "it" step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sentence">The cat sat on the mat because it was warm.</li>
              <li data-kind="thought" data-label="Score">"it" scores every word. "mat" gets 2.26, "it" itself gets 1.73 and "cat" gets 1.66. Small words like "the" get 0.30.</li>
              <li data-kind="tool" data-label="Softmax">The scores become weights: mat 0.29, it 0.17, cat 0.16, and 0.04 to 0.08 for the rest.</li>
              <li data-kind="check" data-label="Check">Add all ten weights. The total is 1.</li>
              <li data-kind="tool" data-label="Weighted average">Multiply each word vector by its weight and add them up. This gives the new vector for "it".</li>
              <li data-kind="answer" data-label="Result">The new "it" vector moves towards "mat". The model now treats "it" as the warm mat.</li>
              <li data-kind="warn" data-label="Not always right">These weights are only a guide. Real models have many sets of weights, and they are often less clear.</li>
            </ol>
          </div>
          <p>Now try the widget below. It uses another classic sentence. Click "it", then click other words.</p>
          <div class="lcw" data-controller="attention"></div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code. In Part 1, find the weight for "mat" and check that the weights add up to 1.</li>
            <li>In Part 1, change the vector for "it" to <code>[1.5, 0.3, 0.3]</code>. Now "it" leans towards animals. Which word wins now?</li>
            <li>Change the vector for "mat" to <code>[0.0, 1.0, 0.2]</code>. The score for "mat" drops. Watch its weight fall and the others rise.</li>
            <li>In Part 1, multiply all the scores by 3 with <code>scores = 3 * (X @ me)</code>. The weights get more extreme. "mat" now takes most of the weight.</li>
            <li>In Part 2, change the scores to <code>[1.0, 1.0, 1.0]</code>. All three weights become equal.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Attention lets each token score every token, turn the scores into weights that add up to 1, and take a weighted average. This is how "it" picks up the meaning of "mat".
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Attention, simplified: the word "it" looks at every word in its sentence.
        import numpy as np

        # ── Part 1: "it" looks at every word of the running sentence ──
        print("== Part 1: score, weights, weighted average ==")
        # Hand-made vectors with 3 numbers: [animal, place to sit, other]
        # A real model learns its vectors. These are made up to show the idea.
        vectors = {
            "the":     [0.0, 0.0, 1.0],
            "cat":     [2.0, 0.0, 0.2],
            "sat":     [0.3, 0.3, 0.8],
            "on":      [0.0, 0.4, 0.8],
            "mat":     [0.0, 2.2, 0.2],
            "because": [0.0, 0.0, 1.0],
            "it":      [0.8, 1.0, 0.3],
            "was":     [0.0, 0.0, 1.0],
            "warm":    [0.2, 0.6, 0.6],
        }
        sentence = "the cat sat on the mat because it was warm"
        words = sentence.split()
        X = np.array([vectors[w] for w in words])

        me = X[words.index("it")]       # the word that is looking
        scores = X @ me                  # 1) score: how well each word matches "it"
        weights = np.exp(scores) / np.exp(scores).sum()   # 2) softmax: weights add up to 1
        new_it = weights @ X             # 3) weighted average of all the vectors

        print('How much "it" looks at each word:')
        for w, s, wt in zip(words, scores, weights):
            print(f"  {w:8} score {s:5.2f}  weight {wt:.2f}  " + "#" * round(wt * 40))
        print(f"Weights add up to {weights.sum():.2f}")
        print("Old 'it' vector:", np.round(me, 2))
        print("New 'it' vector:", np.round(new_it, 2))

        best = words[int(np.argmax(weights))]
        print(f'"it" takes most of its new meaning from "{best}"')

        # ── Part 2: the small worked example from the lesson, with 3 words ──
        print("\n== Part 2: a small example by hand ==")
        scores = np.array([1.0, 2.0, 0.0])            # "it" scores cat, mat, warm
        weights = np.exp(scores) / np.exp(scores).sum()   # softmax
        values = np.array([[2.0, 0.0],                # cat
                           [0.0, 2.0],                # mat
                           [0.0, 1.0]])               # warm
        new_vector = weights @ values                 # weighted average
        print("weights:", weights.round(3), "sum:", weights.sum())
        print("new vector:", new_vector.round(2))

        # Try it: in Part 1, change the sentence to "the cat sat on the mat because it was tired"
        # and add "tired": [1.0, 0.0, 0.6] to vectors. Which word wins now?
      PYTHON
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Query, Key and Value</h1>
        </div>
        <p class="lc-lead">In the simple version of attention, a token scored other tokens by comparing their embeddings directly. Real transformers do something smarter. Each token makes three new vectors: a <strong>query</strong>, a <strong>key</strong> and a <strong>value</strong>. In this lesson, you will see how they are made, and follow the full formula with small numbers: softmax(QKᵀ / √d_k) V.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="The input X, 3 tokens by 4 numbers, is multiplied by three weight matrices to make Q, K and V, each 3 by 2. Q and K make the scores Q times K transposed, 3 by 3. The scores are divided by the square root of d_k, then softmax turns each row into weights that add up to 1. The weights times V give the output, 3 by 2.">
            <defs><marker id="tf7a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="115" width="90" height="60" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="65" y="140" font-weight="700">X</text><text x="65" y="160" font-size="11.5" fill="#9b99b8">3 × 4</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#tf7a)">
                <path d="M112,135 L186,58"/><path d="M112,145 L186,145"/><path d="M112,155 L186,228"/>
                <path d="M272,55 L316,80"/><path d="M272,140 L316,108"/>
                <path d="M442,90 L466,90"/><path d="M582,90 L606,90"/>
                <path d="M675,127 L675,186"/><path d="M272,225 L606,225"/>
              </g>
              <g font-size="11" fill="#9b99b8"><text x="138" y="82">× W_Q</text><text x="149" y="138">× W_K</text><text x="138" y="214">× W_V</text></g>
              <rect x="190" y="30" width="80" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="230" y="51" font-weight="700" fill="#93c5fd">Q</text><text x="230" y="69" font-size="11" fill="#9b99b8">3 × 2</text>
              <rect x="190" y="115" width="80" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="230" y="136" font-weight="700" fill="#fcd34d">K</text><text x="230" y="154" font-size="11" fill="#9b99b8">3 × 2</text>
              <rect x="190" y="200" width="80" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="230" y="221" font-weight="700" fill="#6ee7b7">V</text><text x="230" y="239" font-size="11" fill="#9b99b8">3 × 2</text>
              <rect x="320" y="55" width="120" height="70" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="80" font-weight="700" fill="#c4b5fd">Q Kᵀ</text><text x="380" y="98" font-size="11">scores</text><text x="380" y="114" font-size="11" fill="#9b99b8">3 × 3</text>
              <rect x="470" y="55" width="110" height="70" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="525" y="80" font-weight="700" fill="#67e8f9">÷ √d_k</text><text x="525" y="98" font-size="11">scale</text><text x="525" y="114" font-size="11" fill="#9b99b8">here ÷ √2</text>
              <rect x="610" y="55" width="130" height="70" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="675" y="80" font-weight="700" fill="#f9a8d4">softmax</text><text x="675" y="98" font-size="11">weights</text><text x="675" y="114" font-size="11" fill="#9b99b8">rows add up to 1</text>
              <rect x="610" y="190" width="130" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="675" y="213" font-weight="700" fill="#6ee7b7">weights × V</text><text x="675" y="233" font-size="11" fill="#9b99b8">output 3 × 2</text>
              <text x="440" y="216" font-size="11" fill="#9b99b8">values to mix</text>
              <text x="380" y="292" font-size="14" font-weight="700">Attention(Q, K, V) = softmax(Q Kᵀ / √d_k) V</text>
            </g>
          </svg>
          <figcaption>The full path of one attention step. Shapes are for 3 tokens, d_model = 4 and d_k = 2, the sizes used in the code below.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three jobs, three vectors</h3>
          <p>Think of a library. You walk in with a question. Each book has a label on its spine. When a label matches your question, you read that book's pages.</p>
          <table class="lc-table">
            <thead><tr><th>Vector</th><th>Question it answers</th><th>Library</th></tr></thead>
            <tbody>
              <tr><td><strong>Query (Q)</strong></td><td>What am I looking for?</td><td>Your question</td></tr>
              <tr><td><strong>Key (K)</strong></td><td>What do I contain?</td><td>The label on each book</td></tr>
              <tr><td><strong>Value (V)</strong></td><td>What do I pass on if chosen?</td><td>The pages of the book</td></tr>
            </tbody>
          </table>
          <p>Why three vectors and not one? A word may want to look for something different from what it offers. For example, "it" looks for a noun. But what "it" offers to others is "I am a pronoun". Separate vectors let the model learn both jobs.</p>
        </div>
        <div class="lc-card">
          <h3>Making Q, K and V: projections</h3>
          <p>A <strong>projection</strong> is a multiplication by a weight matrix. It turns one vector into another vector. The model has three learned matrices: <code>W_Q</code>, <code>W_K</code> and <code>W_V</code>.</p>
          <ul class="lc-list">
            <li><code>Q = X @ W_Q</code>, <code>K = X @ W_K</code> and <code>V = X @ W_V</code>. The <code>@</code> sign means matrix multiplication.</li>
            <li><code>X</code> has one row per token. Here it is 3 tokens × 4 numbers.</li>
            <li>Each matrix is 4 × 2 here. So Q, K and V are 3 × 2. The size of each query and key is called <code>d_k</code>. Here <code>d_k = 2</code>.</li>
          </ul>
          <p>The same three matrices are used for every token. The matrices start random. Training changes them so the scores become useful.</p>
        </div>
        <div class="lc-card">
          <h3>From scores to output, by hand</h3>
          <p>Take three tokens, "cat", "sat" and "mat". Part 1 in the code editor below gives these small vectors:</p>
          <table class="lc-table">
            <thead><tr><th>Token</th><th>Query</th><th>Key</th><th>Value</th></tr></thead>
            <tbody>
              <tr><td>cat</td><td>[2, 0]</td><td>[2, 0]</td><td>[1, 0]</td></tr>
              <tr><td>sat</td><td>[0, 2]</td><td>[0, 1]</td><td>[0, 2]</td></tr>
              <tr><td>mat</td><td>[1, 1]</td><td>[1, 0]</td><td>[1, 1]</td></tr>
            </tbody>
          </table>
          <p>Now follow the query of "cat", which is [2, 0]:</p>
          <ol class="lc-list">
            <li><strong>Scores:</strong> take the dot product with each key. A dot product multiplies matching numbers and adds them. [2, 0]·[2, 0] = 4, [2, 0]·[0, 1] = 0 and [2, 0]·[1, 0] = 2.</li>
            <li><strong>Scale:</strong> divide by √d_k = √2 = 1.414. You get 2.828, 0 and 1.414.</li>
            <li><strong>Softmax:</strong> the weights are 0.768, 0.045 and 0.187. They add up to 1.</li>
            <li><strong>Mix the values:</strong> 0.768 × [1, 0] + 0.045 × [0, 2] + 0.187 × [1, 1] = [0.955, 0.277].</li>
          </ol>
          <p>Doing this for all queries at once is one matrix multiplication: <code>Q @ K.T</code>. <code>K.T</code> is K turned on its side, called the <strong>transpose</strong>. It gives a 3 × 3 table of scores. Row 1 holds the scores for "cat".</p>
        </div>
        <div class="lc-card">
          <h3>Why divide by √d_k?</h3>
          <p>A dot product adds up <code>d_k</code> products. With more numbers, the scores get bigger. Real models often use <code>d_k = 64</code> or more. Big scores make softmax extreme: one weight gets almost 1 and the rest get almost 0. Then training becomes slow, because the gradients become tiny.</p>
          <p>Dividing by √d_k keeps the scores at a steady size. Part 2 in the code editor below shows this with random vectors. Without scaling, the spread of the scores grows with √d_k. After scaling, it stays near 1.</p>
          <p>PyTorch has this whole formula in one function, <code>F.scaled_dot_product_attention</code>. Part 3 in the code editor below calls it with the same numbers as Part 1.</p>
          <p>Row 1 of its output is [0.955, 0.277], just like the hand calculation. PyTorch does not run in the browser, so run Part 3 on your own computer. Part 1 prints the same output with NumPy.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: query, key or value?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Put each description under the vector it belongs to.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="q" data-label="Query"></div>
              <div data-sorter-target="bucket" data-bucket="k" data-label="Key"></div>
              <div data-sorter-target="bucket" data-bucket="v" data-label="Value"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="q" data-why="The query is what a token is searching for.">"What am I looking for?"</li>
              <li data-bucket="k" data-why="The key describes a token, so queries can match it.">The label on a library book</li>
              <li data-bucket="v" data-why="The value is the information that gets mixed into the output.">The pages you read once a book is chosen</li>
              <li data-bucket="v" data-why="The output is weights @ V, a weighted average of the values.">It gets averaged using the attention weights</li>
              <li data-bucket="k" data-why="Each query is compared with every key: Q @ K.T.">It is compared with every query to make the scores</li>
              <li data-bucket="q" data-why="Row i of the score table uses the query of token i.">One row of the score table belongs to it</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code. In Part 1, check row 1 of the weights: 0.768, 0.045 and 0.187, like the hand calculation.</li>
            <li>In Part 1, remove the scaling: change <code>scaled = scores / np.sqrt(d_k)</code> to <code>scaled = scores</code>. The first weight in row 1 grows from 0.768 to 0.867. Softmax becomes more extreme.</li>
            <li>In Part 1, change the first row of <code>W_V</code> to <code>[5, 0]</code>. The weights stay the same, but the output changes. Values only affect what is passed on.</li>
            <li>In Part 1, change the first row of <code>W_K</code> to <code>[0, 0]</code>. The keys of "cat" and "mat" get smaller. Row 1 of the weights becomes less sure: 0.673, 0.164 and 0.164.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Each token makes a query, a key and a value with three learned matrices. Queries meet keys to make scores. The scores are scaled by √d_k, and softmax turns them into weights. The weights mix the values: softmax(QKᵀ / √d_k) V.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Query, Key and Value with small numbers you can check by hand.
        import numpy as np

        # ── Part 1: make Q, K and V, then softmax(QK^T / sqrt(d_k)) V ──
        print("== Part 1: attention with Q, K and V ==")
        words = ["cat", "sat", "mat"]
        X = np.array([[1, 0, 1, 0],      # cat  (d_model = 4)
                      [0, 1, 0, 1],      # sat
                      [1, 1, 0, 0]])     # mat

        # Three weight matrices. A real model learns these. Here d_k = 2.
        W_Q = np.array([[1, 0], [0, 1], [1, 0], [0, 1]])
        W_K = np.array([[1, 0], [0, 0], [1, 0], [0, 1]])
        W_V = np.array([[1, 0], [0, 1], [0, 0], [0, 1]])

        Q = X @ W_Q      # what each word is looking for
        K = X @ W_K      # what each word offers as a label
        V = X @ W_V      # the information each word passes on
        for name, M in [("Q", Q), ("K", K), ("V", V)]:
            print(f"{name} =\n{M}")

        d_k = K.shape[1]
        scores = Q @ K.T                      # every query against every key
        scaled = scores / np.sqrt(d_k)        # keep the numbers small
        weights = np.exp(scaled) / np.exp(scaled).sum(axis=1, keepdims=True)   # softmax per row
        output = weights @ V                  # weighted average of the values

        print(f"\nscores = Q @ K.T =\n{scores}")
        print(f"scaled by sqrt({d_k}) =\n{scaled.round(3)}")
        print(f"weights (each row adds up to 1) =\n{weights.round(3)}")
        print(f"output = weights @ V =\n{output.round(3)}")

        # ── Part 2: why scale? Dot products of random vectors grow with d_k ──
        print("\n== Part 2: why divide by sqrt(d_k) ==")
        np.random.seed(42)
        for d in [4, 64, 512]:
            q = np.random.randn(1000, d)
            k = np.random.randn(1000, d)
            dots = (q * k).sum(axis=1)
            print(f"d_k = {d:3}: spread of raw scores {dots.std():6.2f}, after scaling {(dots / np.sqrt(d)).std():.2f}")

        # ── Part 3: the same attention in one PyTorch call (run this part on your own computer) ──
        print("\n== Part 3: F.scaled_dot_product_attention in PyTorch ==")
        try:
            import torch
            import torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            X = torch.tensor([[1., 0, 1, 0], [0, 1, 0, 1], [1, 1, 0, 0]])
            W_Q = torch.tensor([[1., 0], [0, 1], [1, 0], [0, 1]])
            W_K = torch.tensor([[1., 0], [0, 0], [1, 0], [0, 1]])
            W_V = torch.tensor([[1., 0], [0, 1], [0, 0], [0, 1]])

            Q, K, V = X @ W_Q, X @ W_K, X @ W_V
            out = F.scaled_dot_product_attention(Q, K, V)   # softmax(QK^T / sqrt(d_k)) V
            print(out.round(decimals=3))                    # the same numbers as Part 1

        # Try it: in Part 1, change W_Q, or remove the scaling and compare the weights.
      PYTHON
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Self-Attention Step by Step</h1>
        </div>
        <p class="lc-lead">You know the formula: softmax(QKᵀ / √d_k) V. Now you will run all of it on real numbers. In this lesson, you will take three tokens, "The cat sat", and compute <strong>self-attention</strong> in NumPy. Every matrix in between is printed, so you can see exactly what happens and check the shapes at each step.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Five steps in a row: 1, X, 3 by 4. 2, Q, K and V, 3 by 4 each. 3, scores Q times K transposed, 3 by 3. 4, weights after dividing by 2 and softmax, 3 by 3. 5, output, weights times V, 3 by 4. Below, the 3 by 3 weight table from the code. The row for The is 0.103, 0.895, 0.002. The row for cat is 0.220, 0.489, 0.291. The row for sat is 0.070, 0.014, 0.915.">
            <defs><marker id="tf8a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="14" y="24" width="130" height="70" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="79" y="46" font-weight="700" fill="#e2e0f0">1. X</text><text x="79" y="65" font-size="11.5">3 × 4</text><text x="79" y="83" font-size="11" fill="#9b99b8">input vectors</text>
              <line x1="146" y1="59" x2="160" y2="59" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf8a)"/>
              <rect x="164" y="24" width="130" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="229" y="46" font-weight="700" fill="#93c5fd">2. Q, K, V</text><text x="229" y="65" font-size="11.5">3 × 4 each</text><text x="229" y="83" font-size="11" fill="#9b99b8">X @ W_Q, W_K, W_V</text>
              <line x1="296" y1="59" x2="310" y2="59" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf8a)"/>
              <rect x="314" y="24" width="130" height="70" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="379" y="46" font-weight="700" fill="#c4b5fd">3. Scores</text><text x="379" y="65" font-size="11.5">3 × 3</text><text x="379" y="83" font-size="11" fill="#9b99b8">Q @ K.T</text>
              <line x1="446" y1="59" x2="460" y2="59" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf8a)"/>
              <rect x="464" y="24" width="130" height="70" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="529" y="46" font-weight="700" fill="#f9a8d4">4. Weights</text><text x="529" y="65" font-size="11.5">3 × 3</text><text x="529" y="83" font-size="11" fill="#9b99b8">÷ √4, softmax</text>
              <line x1="596" y1="59" x2="610" y2="59" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf8a)"/>
              <rect x="614" y="24" width="130" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="679" y="46" font-weight="700" fill="#6ee7b7">5. Output</text><text x="679" y="65" font-size="11.5">3 × 4</text><text x="679" y="83" font-size="11" fill="#9b99b8">weights @ V</text>
              <text x="275" y="120" font-weight="700" fill="#f9a8d4">The weights from the code</text>
              <text x="275" y="139" font-size="11" fill="#9b99b8">columns: the token it looks at (key)</text>
              <text x="185" y="158" font-size="12" fill="#9b99b8" dy="0">The</text>
              <text x="275" y="158" font-size="12" fill="#9b99b8" dy="0">cat</text>
              <text x="365" y="158" font-size="12" fill="#9b99b8" dy="0">sat</text>
              <text x="128" y="192" text-anchor="end" font-size="12" fill="#9b99b8">The</text>
              <rect x="140" y="166" width="86" height="40" rx="5" fill="#8b5cf6" fill-opacity="0.17" stroke="#4b4a78"/><text x="183" y="191" font-weight="400">0.103</text>
              <rect x="230" y="166" width="86" height="40" rx="5" fill="#8b5cf6" fill-opacity="0.84" stroke="#4b4a78"/><text x="273" y="191" font-weight="700">0.895</text>
              <rect x="320" y="166" width="86" height="40" rx="5" fill="#8b5cf6" fill-opacity="0.08" stroke="#4b4a78"/><text x="363" y="191" font-weight="400">0.002</text>
              <text x="128" y="236" text-anchor="end" font-size="12" fill="#9b99b8">cat</text>
              <rect x="140" y="210" width="86" height="40" rx="5" fill="#8b5cf6" fill-opacity="0.27" stroke="#4b4a78"/><text x="183" y="235" font-weight="400">0.220</text>
              <rect x="230" y="210" width="86" height="40" rx="5" fill="#8b5cf6" fill-opacity="0.50" stroke="#4b4a78"/><text x="273" y="235" font-weight="700">0.489</text>
              <rect x="320" y="210" width="86" height="40" rx="5" fill="#8b5cf6" fill-opacity="0.33" stroke="#4b4a78"/><text x="363" y="235" font-weight="400">0.291</text>
              <text x="128" y="280" text-anchor="end" font-size="12" fill="#9b99b8">sat</text>
              <rect x="140" y="254" width="86" height="40" rx="5" fill="#8b5cf6" fill-opacity="0.14" stroke="#4b4a78"/><text x="183" y="279" font-weight="400">0.070</text>
              <rect x="230" y="254" width="86" height="40" rx="5" fill="#8b5cf6" fill-opacity="0.09" stroke="#4b4a78"/><text x="273" y="279" font-weight="400">0.014</text>
              <rect x="320" y="254" width="86" height="40" rx="5" fill="#8b5cf6" fill-opacity="0.86" stroke="#4b4a78"/><text x="363" y="279" font-weight="700">0.915</text>
              <text x="140" y="318" text-anchor="start" font-size="11" fill="#9b99b8">rows: the token that looks (query)</text>
              <text x="470" y="180" text-anchor="start" font-size="12" fill="#e2e0f0">Each row is one token looking.</text>
              <text x="470" y="204" text-anchor="start" font-size="12" fill="#e2e0f0">Each row adds up to 1.</text>
              <text x="470" y="228" text-anchor="start" font-size="12" fill="#f9a8d4">"The" looks mostly at "cat" (0.895).</text>
              <text x="470" y="252" text-anchor="start" font-size="12" fill="#f9a8d4">"sat" looks mostly at itself (0.915).</text>
              <text x="470" y="276" text-anchor="start" font-size="12" fill="#f9a8d4">"cat" spreads its attention more.</text>
              <text x="470" y="300" text-anchor="start" font-size="12" fill="#9b99b8">Random weights, so no real meaning yet.</text>
            </g>
          </svg>
          <figcaption>Top: the shape of the data at each step. Bottom: the attention weights from the code. Darker cells mean bigger weights.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What "self" means</h3>
          <p>In <strong>self-attention</strong>, the queries, keys and values all come from the same sequence. Each token in "The cat sat" looks at the tokens of "The cat sat", including itself.</p>
          <p>Later in this course, you will meet <strong>cross-attention</strong>. There, the queries come from one sequence and the keys and values come from another.</p>
          <p>Here are the sizes for this lesson:</p>
          <ul class="lc-list">
            <li>3 tokens: "The", "cat" and "sat".</li>
            <li><code>d_model = 4</code>: each token vector has 4 numbers.</li>
            <li><code>d_k = 4</code>: one attention head that uses all 4 numbers.</li>
            <li>The numbers come from <code>np.random.seed(42)</code>, rounded to 1 decimal place. A trained model would have learned values instead.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Step 1 and 2: inputs and projections</h3>
          <p><code>X</code> holds the three input vectors. In a real model, each row is a word embedding plus a position vector. Then three matrix multiplications make Q, K and V: <code>Q = X @ W_Q</code>, <code>K = X @ W_K</code> and <code>V = X @ W_V</code>.</p>
          <p>Part 1 in the code editor below does this and prints X, W_Q, Q, K and V.</p>
          <p>Check one number by hand. Row 1 of X is [0.5, -0.1, 0.6, 1.5]. The first column of <code>W_Q</code> is [0.2, -1.0, 1.5, -0.5]. Multiply and add: 0.1 + 0.1 + 0.9 - 0.75 = 0.35. That is the first number of Q. Every row of Q, K and V is made the same way from one row of X.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3 and 4: scores, scaling and softmax</h3>
          <p>Part 2 in the code editor below works out the scores with <code>Q @ K.T</code>. It divides them by √4 = 2, then applies softmax to each row. It prints the scores, the scaled scores, the exps and the weights.</p>
          <p>Follow the row for "cat". The scaled scores are 0.52, 1.32 and 0.8. Their exps are 1.69, 3.76 and 2.23, which add up to 7.68. So the weights are 1.69 / 7.68 = 0.22, then 0.489 and 0.291. Each row adds up to 1.</p>
          <p>Read the table like this. Row "The" says how much "The" looks at each token. "The" puts 0.895 of its attention on "cat". The weights are random here, so they have no real meaning yet. Training is what makes them useful.</p>
        </div>
        <div class="lc-card">
          <h3>Step 5: mix the values</h3>
          <p>The output is <code>weights @ V</code>. Part 3 in the code editor below prints it, and says which token each token looks at most.</p>
          <p>Row 1 of the output is the new vector for "The". It is 0.103 × V[The] + 0.895 × V[cat] + 0.002 × V[sat]. Because "cat" has the biggest weight, the result is close to V[cat], which is [-1.52, 1.22, 1.88, 2.1].</p>
          <p>The output has the same shape as the input, 3 × 4. So the result can go straight into the next part of the transformer.</p>
        </div>
        <div class="lc-card">
          <h3>Shapes at every step</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Calculation</th><th>Shape</th></tr></thead>
            <tbody>
              <tr><td>Input</td><td><code>X</code></td><td>(3, 4)</td></tr>
              <tr><td>Projections</td><td><code>X @ W_Q</code>, <code>X @ W_K</code>, <code>X @ W_V</code></td><td>(3, 4) each</td></tr>
              <tr><td>Scores</td><td><code>Q @ K.T</code></td><td>(3, 3)</td></tr>
              <tr><td>Weights</td><td><code>softmax(scores / √4)</code></td><td>(3, 3)</td></tr>
              <tr><td>Output</td><td><code>weights @ V</code></td><td>(3, 4)</td></tr>
            </tbody>
          </table>
          <p>The score table is tokens × tokens. With 3 tokens it has 9 numbers. With 1,000 tokens it has 1,000,000. This is why long texts make attention slow and use a lot of memory.</p>
          <p>To check your NumPy work, PyTorch gives the same output with <code>torch.nn.functional.scaled_dot_product_attention(Q, K, V)</code>. Part 4 in the code editor below does this check. PyTorch does not run in the browser, so run Part 4 on your own computer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of self-attention in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Start with the input vectors X, one row per token</li>
              <li data-order="2">Multiply X by W_Q, W_K and W_V to get Q, K and V</li>
              <li data-order="3">Compute the scores with Q @ K.T</li>
              <li data-order="4">Divide the scores by √d_k</li>
              <li data-order="5">Apply softmax to each row, so each row adds up to 1</li>
              <li data-order="6">Multiply the weights by V to get the output</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code. In Part 2, find the row for "cat" in <code>weights</code> and check that it is 0.22, 0.489 and 0.291.</li>
            <li>In Part 1, change <code>np.random.seed(42)</code> to <code>np.random.seed(7)</code>. All the numbers change. Which token does each token look at now?</li>
            <li>Add a fourth token. In Part 1, change the tokens list to <code>["The", "cat", "sat", "down"]</code> and <code>np.random.randn(3, d_model)</code> to <code>np.random.randn(4, d_model)</code>. The scores and weights become 4 × 4.</li>
            <li>In Part 2, remove <code>/ np.sqrt(d_k)</code> from the scaled line. The weights get closer to 0 and 1.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Self-attention is five steps of plain matrix maths. Project X into Q, K and V. Score with Q @ K.T, scale, apply softmax to each row, and mix V. The output has one new vector per token, with the same shape as the input.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Self-attention on 3 tokens, with every step printed.
        import numpy as np

        # ── Part 1: inputs and projections (steps 1 and 2) ──
        print("== Part 1: X, then Q, K and V ==")
        np.random.seed(42)
        np.set_printoptions(suppress=True)     # plain numbers, no 1e+01 style

        def show(name, M, decimals=2):
            print(f"{name} =\n{M.round(decimals)}")

        tokens = ["The", "cat", "sat"]
        d_model, d_k = 4, 4
        X = np.random.randn(3, d_model).round(1)     # input vectors (embedding + position)
        W_Q = np.random.randn(d_model, d_k).round(1)
        W_K = np.random.randn(d_model, d_k).round(1)
        W_V = np.random.randn(d_model, d_k).round(1)

        Q = X @ W_Q                                  # (3, 4) @ (4, 4) -> (3, 4)
        K = X @ W_K
        V = X @ W_V
        show("X", X)
        show("W_Q", W_Q)
        show("Q", Q)
        show("K", K)
        show("V", V)

        # ── Part 2: scores, scaling and softmax (steps 3 and 4) ──
        print("\n== Part 2: scores, scaling and softmax ==")
        scores = Q @ K.T                     # (3, 4) @ (4, 3) -> (3, 3)
        scaled = scores / np.sqrt(d_k)       # sqrt(4) = 2
        exps = np.exp(scaled)                # softmax, part 1
        weights = exps / exps.sum(axis=1, keepdims=True)   # softmax, part 2
        show("scores", scores)
        show("scaled", scaled)
        show("exps", exps)
        show("weights", weights, 3)
        print("row sums:", weights.sum(axis=1).round(2))

        # ── Part 3: mix the values (step 5) ──
        print("\n== Part 3: mix the values ==")
        output = weights @ V                 # (3, 3) @ (3, 4) -> (3, 4)
        show("output", output)
        for i, t in enumerate(tokens):
            top = tokens[int(np.argmax(weights[i]))]
            print(f"{t!r} looks most at {top!r}")

        # ── Part 4: check with PyTorch (run this part on your own computer) ──
        print("\n== Part 4: the same output from PyTorch ==")
        try:
            import torch
            import torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            # X, W_Q, W_K and W_V are the NumPy arrays from Part 1.
            Xt = torch.tensor(X, dtype=torch.float32)
            Qt = Xt @ torch.tensor(W_Q, dtype=torch.float32)
            Kt = Xt @ torch.tensor(W_K, dtype=torch.float32)
            Vt = Xt @ torch.tensor(W_V, dtype=torch.float32)
            out = F.scaled_dot_product_attention(Qt, Kt, Vt)
            print(out.numpy().round(2))
            print("same as NumPy?", np.allclose(out.numpy(), output, atol=1e-4))

        # Try it: change the seed, add a 4th token, or remove the scaling.
      PYTHON
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Multi-Head Attention</h1>
        </div>
        <p class="lc-lead">One attention step gives each token one set of weights. But a word often needs to look at several things at once. <strong>Multi-head attention</strong> runs several small attention steps side by side. Each one is called a <strong>head</strong>. In this lesson you will split Q, K and V into heads, see that each head finds its own pattern, and join the heads back together. You will follow the shape of the data at every step.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Multi-head attention shapes. X is 4 by 4. It is projected to Q, K and V, each 4 by 4. Columns 1 and 2 go to head 1 and columns 3 and 4 go to head 2. Each head works on 4 by 2 matrices, makes a 4 by 4 weight table and a 4 by 2 output. The two outputs are joined side by side into a 4 by 4 matrix, then multiplied by W_O to give a 4 by 4 output.">
            <defs><marker id="tf9a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="48" y="92" font-weight="700">X</text>
              <rect x="20" y="104" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="34" y="104" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="48" y="104" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="62" y="104" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="20" y="118" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="34" y="118" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="48" y="118" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="62" y="118" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="20" y="132" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="34" y="132" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="48" y="132" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="62" y="132" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="20" y="146" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="34" y="146" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="48" y="146" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="62" y="146" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/>
              <text x="48" y="182">4 × 4</text>
              <text x="48" y="198" font-size="11" fill="#9b99b8">tokens ×</text>
              <text x="48" y="212" font-size="11" fill="#9b99b8">d_model</text>
              <line x1="84" y1="132" x2="138" y2="132" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf9a)"/>
              <text x="111" y="122" font-size="11" fill="#9b99b8">× W</text>
              <text x="174" y="92" font-weight="700">Q, K, V</text>
              <rect x="146" y="104" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="160" y="104" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="174" y="104" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="188" y="104" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="146" y="118" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="160" y="118" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="174" y="118" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="188" y="118" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="146" y="132" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="160" y="132" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="174" y="132" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="188" y="132" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="146" y="146" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="160" y="146" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="174" y="146" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="188" y="146" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/>
              <text x="174" y="182">each 4 × 4</text>
              <text x="174" y="198" font-size="11" fill="#c4b5fd">cols 1-2: head 1</text>
              <text x="174" y="212" font-size="11" fill="#f9a8d4">cols 3-4: head 2</text>
              <path d="M210,118 L250,78" fill="none" stroke="#8b5cf6" stroke-width="1.5" marker-end="url(#tf9a)"/>
              <path d="M210,146 L250,200" fill="none" stroke="#ec4899" stroke-width="1.5" marker-end="url(#tf9a)"/>
              <rect x="256" y="28" width="240" height="96" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="376" y="50" font-weight="700" fill="#c4b5fd">Head 1</text>
              <text x="376" y="72">Q₁, K₁, V₁: each 4 × 2</text>
              <text x="376" y="92">weights = softmax(Q₁K₁ᵀ / √2): 4 × 4</text>
              <text x="376" y="112">output = weights · V₁: 4 × 2</text>
              <rect x="256" y="156" width="240" height="96" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="376" y="178" font-weight="700" fill="#f9a8d4">Head 2</text>
              <text x="376" y="200">Q₂, K₂, V₂: each 4 × 2</text>
              <text x="376" y="220">weights = softmax(Q₂K₂ᵀ / √2): 4 × 4</text>
              <text x="376" y="240">output = weights · V₂: 4 × 2</text>
              <path d="M498,78 L540,116" fill="none" stroke="#8b5cf6" stroke-width="1.5" marker-end="url(#tf9a)"/>
              <path d="M498,204 L540,150" fill="none" stroke="#ec4899" stroke-width="1.5" marker-end="url(#tf9a)"/>
              <text x="574" y="92" font-weight="700">concat</text>
              <rect x="546" y="104" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="560" y="104" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="574" y="104" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="588" y="104" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="546" y="118" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="560" y="118" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="574" y="118" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="588" y="118" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="546" y="132" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="560" y="132" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="574" y="132" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="588" y="132" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="546" y="146" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="560" y="146" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="574" y="146" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/><rect x="588" y="146" width="14" height="14" fill="#ec4899" fill-opacity="0.45" stroke="#ec4899"/>
              <text x="574" y="182">4 × 4</text>
              <line x1="610" y1="132" x2="654" y2="132" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf9a)"/>
              <text x="632" y="122" font-size="11" fill="#9b99b8">× W_O</text>
              <text x="692" y="92" font-weight="700">output</text>
              <rect x="664" y="104" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="678" y="104" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="692" y="104" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="706" y="104" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="664" y="118" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="678" y="118" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="692" y="118" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="706" y="118" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="664" y="132" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="678" y="132" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="692" y="132" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="706" y="132" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="664" y="146" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="678" y="146" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="692" y="146" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="706" y="146" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/>
              <text x="692" y="182">4 × 4</text>
              <text x="692" y="198" font-size="11" fill="#9b99b8">same shape</text>
              <text x="692" y="212" font-size="11" fill="#9b99b8">as X</text>
              <text x="380" y="280" font-size="11" fill="#9b99b8">d_model = 4, 2 heads, so each head has d_k = 4 / 2 = 2 columns</text>
            </g>
          </svg>
          <figcaption>Multi-head attention with 4 tokens, d_model = 4 and 2 heads. Each head gets its own slice of columns, does normal attention, and the results are joined again.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why one head is not enough</h3>
          <p>Take the running sentence: "The cat sat on the mat because it was warm." The word "it" has more than one question to ask:</p>
          <ul class="lc-list">
            <li>Which noun do I mean? Is it "cat" or "mat"?</li>
            <li>What is said about me? The answer is "was warm".</li>
            <li>Which word is right next to me?</li>
          </ul>
          <p>One attention step gives one set of weights, and the weights add up to 1. So one head must share its attention between all these questions. The answers get mixed into one average.</p>
          <p>With several heads, each head has its own weights. One head can look for the noun. Another head can look at the next word. Each head gives its own answer, and the model keeps all of them.</p>
          <p>Nobody tells a head what to look for. Each head learns its own pattern during training. Some patterns are easy to name, like "look at the previous word". Many are not.</p>
        </div>
        <div class="lc-card">
          <h3>Split into heads</h3>
          <p>The model does not compute separate Q, K and V for each head from scratch. It makes one big Q, K and V, as before. Then it cuts their columns into equal slices. Each slice belongs to one head.</p>
          <p>The size of one head is <strong>d_k = d_model / number of heads</strong>. With d_model = 4 and 2 heads, each head gets 2 columns. In the original 2017 Transformer, d_model was 512 with 8 heads, so each head had 64 columns.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Shape (4 tokens, d_model = 4, 2 heads)</th></tr></thead>
            <tbody>
              <tr><td>Input X</td><td>(4, 4)</td></tr>
              <tr><td>Q, K, V</td><td>(4, 4) each</td></tr>
              <tr><td>Q, K, V for one head</td><td>(4, 2) each</td></tr>
              <tr><td>Attention weights for one head</td><td>(4, 4)</td></tr>
              <tr><td>Output of one head</td><td>(4, 2)</td></tr>
              <tr><td>All heads joined (concat)</td><td>(4, 4)</td></tr>
              <tr><td>After W_O</td><td>(4, 4)</td></tr>
            </tbody>
          </table>
          <p>In code, one reshape does the split for all heads at once. Part 2 in the code editor below fills Q with the numbers 0 to 15, so you can see where each column goes.</p>
          <p>The shape (2, 4, 2) means 2 heads, 4 tokens and 2 columns per head. Each head then runs normal attention: softmax(QKᵀ / √d_k) V. Note that it divides by √d_k of the head, here √2, not √d_model.</p>
        </div>
        <div class="lc-card">
          <h3>Concat and the output projection</h3>
          <p>Each head gives a (4, 2) result. <strong>Concat</strong> (short for concatenate) puts them side by side. Head 1 fills columns 1 and 2. Head 2 fills columns 3 and 4. The result is (4, 4) again.</p>
          <p>Then the model multiplies by one more learned matrix, <strong>W_O</strong> (the output projection). It has shape (d_model, d_model). W_O mixes the heads. Without it, the answer from head 1 would stay stuck in columns 1 and 2. After W_O, every output number can use every head.</p>
          <p>The full formula is:</p>
          <p><strong>head_i = softmax(Q_i K_iᵀ / √d_k) V_i</strong></p>
          <p><strong>MultiHead(X) = Concat(head_1, ..., head_h) W_O</strong></p>
          <p>The output has the same shape as the input X. This matters. The next part of the block can take it without any change.</p>
        </div>
        <div class="lc-card">
          <h3>Multi-head attention in PyTorch</h3>
          <p>PyTorch has a ready-made layer, <code>nn.MultiheadAttention</code>. Part 3 in the code editor below builds it with d_model = 4 and 2 heads, on a sentence of 4 tokens. PyTorch does not run in the browser, so copy Part 3 to your own computer to run it. Parts 1 and 2 run a NumPy version of the same idea.</p>
          <ul class="lc-list">
            <li>We pass <code>x</code> three times, for Q, K and V. That makes it <em>self</em>-attention.</li>
            <li>The output <code>out</code> has shape (1, 4, 4): the same shape as the input.</li>
            <li>The <code>weights</code> have shape (1, 2, 4, 4): 1 sentence, 2 heads, and a 4 × 4 table for each head.</li>
            <li>This layer has 80 parameters: four 4 × 4 matrices (W_Q, W_K, W_V, W_O) give 64, plus 16 biases. With 1 head or 4 heads, the count is still 80. Heads split the work. They do not add weights.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: follow the shapes</h3>
          <p>Step through one pass of multi-head attention on "the cat was warm". Say the shape out loud before you open each step.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Input">4 tokens: "the cat was warm". X has shape (4, 4): 4 tokens, d_model = 4.</li>
              <li data-kind="tool" data-label="Project">Q = X W_Q, K = X W_K, V = X W_V. Each one is (4, 4).</li>
              <li data-kind="thought" data-label="Split">2 heads, so d_k = 4 / 2 = 2. Head 1 takes columns 1-2. Head 2 takes columns 3-4. Each head has Q, K and V of shape (4, 2).</li>
              <li data-kind="tool" data-label="Attend in each head">weights = softmax(QKᵀ / √2) has shape (4, 4) in each head. Output = weights V has shape (4, 2).</li>
              <li data-kind="result" data-label="Concat">Put the two (4, 2) outputs side by side. The result is (4, 4).</li>
              <li data-kind="tool" data-label="Mix with W_O">(4, 4) times W_O (4, 4) gives (4, 4).</li>
              <li data-kind="check" data-label="Shape check">The output is (4, 4), the same as X. The next layer can use it directly.</li>
              <li data-kind="answer" data-label="Result">Each token has a new vector. It mixes what 2 heads found, each with its own pattern.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the starter code runs multi-head attention on "the cat was warm" with random weights. It prints the weight table for each head and which word each token looks at most. Part 2 shows the reshape that splits Q into heads. Part 3 is the PyTorch layer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, compare the two heads. Does "the" look at the same word in head 1 and head 2?</li>
            <li>In Part 1, change <code>n_heads = 2</code> to <code>n_heads = 1</code>. Now there is one head with d_k = 4. Check the printed shapes.</li>
            <li>In Part 1, set <code>n_heads = 4</code>. Each head now has only 1 column. You get 4 weight tables.</li>
            <li>In Part 1, change the seed in <code>np.random.seed(42)</code>. The patterns change, because the weights are random. In a real model, training makes each head's pattern useful.</li>
            <li>Look at Part 2. Check that head 1 holds columns 1 and 2 of Q, and head 2 holds columns 3 and 4. Python counts from 0, so in code these are indexes 0 and 1, then 2 and 3.</li>
            <li>On your own computer, run Part 3 with <code>num_heads=1</code>. The parameter count is still 80.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Multi-head attention cuts Q, K and V into slices and runs attention on each slice. Each head can learn its own pattern. Concat and W_O join the heads back into one vector per token, with the same shape as the input.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Multi-head attention: 4 tokens, d_model = 4, 2 heads.
        import numpy as np

        # ── Part 1: multi-head attention in NumPy ──
        print("== Part 1: multi-head attention in NumPy ==")
        np.random.seed(42)
        tokens = ["the", "cat", "was", "warm"]
        n_tokens, d_model = 4, 4
        n_heads = 2                      # try 1 or 4 (d_model must divide by n_heads)
        d_k = d_model // n_heads         # size of each head

        X = np.random.randn(n_tokens, d_model)          # token vectors (embeddings + positions)
        W_q, W_k, W_v, W_o = [np.random.randn(d_model, d_model) * 0.8 for _ in range(4)]

        def softmax(s):
            e = np.exp(s - s.max(axis=-1, keepdims=True))
            return e / e.sum(axis=-1, keepdims=True)

        # 1) One big projection for Q, K and V
        Q, K, V = X @ W_q, X @ W_k, X @ W_v
        print("X", X.shape, "-> Q, K, V", Q.shape)

        # 2) Each head gets its own slice of columns
        head_outputs = []
        for h in range(n_heads):
            cols = slice(h * d_k, (h + 1) * d_k)
            q, k, v = Q[:, cols], K[:, cols], V[:, cols]
            weights = softmax(q @ k.T / np.sqrt(d_k))   # (4, 4): who looks at whom
            head_outputs.append(weights @ v)            # (4, d_k)
            print(f"\nHead {h + 1}: q, k, v {q.shape}, weights {weights.shape}")
            for i, tok in enumerate(tokens):
                row = " ".join(f"{w:.2f}" for w in weights[i])
                top = tokens[weights[i].argmax()]
                print(f"  {tok:5} -> [{row}]  looks most at '{top}'")

        # 3) Join the heads side by side, then mix them with W_o
        concat = np.concatenate(head_outputs, axis=1)
        output = concat @ W_o
        print("\nConcat", concat.shape, "-> output", output.shape)
        print("Output row for 'cat':", output[1].round(2))

        # ── Part 2: the reshape trick splits all heads at once ──
        # Q holds the numbers 0 to 15, so you can see where each column goes.
        print("\n== Part 2: split Q into heads with one reshape ==")
        Q = np.arange(16).reshape(4, 4)        # 4 tokens, d_model = 4
        heads = Q.reshape(4, 2, 2).transpose(1, 0, 2)
        print(heads.shape)                     # (heads, tokens, d_k)
        print(heads[0])                        # head 1: columns 1 and 2 (Python indexes 0 and 1)
        print(heads[1])                        # head 2: columns 3 and 4 (Python indexes 2 and 3)

        # ── Part 3: nn.MultiheadAttention in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: multi-head attention in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            mha = nn.MultiheadAttention(embed_dim=4, num_heads=2, batch_first=True)
            x = torch.randn(1, 4, 4)              # 1 sentence, 4 tokens, d_model = 4
            out, weights = mha(x, x, x, average_attn_weights=False)
            print(out.shape)                      # torch.Size([1, 4, 4])
            print(weights.shape)                  # torch.Size([1, 2, 4, 4])
            print(sum(p.numel() for p in mha.parameters()))   # 80
      PYTHON
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Feed-Forward Layers</h1>
        </div>
        <p class="lc-lead">Attention lets tokens share information. After that, each token needs time to work with what it collected. That is the job of the <strong>feed-forward network</strong> (FFN). It is a small neural network that runs on each token on its own. In this lesson you will see how it widens each vector four times, uses the GELU activation, and shrinks it back. You will also find out why most of a transformer's parameters live here.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The feed-forward network for one token. The vector for cat has 4 numbers. It is multiplied by W1 to give 16 numbers. GELU is applied to each of the 16 numbers. W2 shrinks them back to 4 numbers. A side panel says the same FFN runs on every token, with no mixing between tokens.">
            <defs><marker id="tf10a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="57" y="104" font-weight="700">"cat"</text>
              <rect x="50" y="114" width="14" height="14" fill="#3b82f6" fill-opacity="0.45" stroke="#3b82f6"/><rect x="50" y="128" width="14" height="14" fill="#3b82f6" fill-opacity="0.45" stroke="#3b82f6"/><rect x="50" y="142" width="14" height="14" fill="#3b82f6" fill-opacity="0.45" stroke="#3b82f6"/><rect x="50" y="156" width="14" height="14" fill="#3b82f6" fill-opacity="0.45" stroke="#3b82f6"/>
              <text x="57" y="188">4 numbers</text>
              <text x="57" y="204" font-size="11" fill="#9b99b8">d_model</text>
              <line x1="72" y1="142" x2="214" y2="142" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf10a)"/>
              <text x="143" y="132">× W₁ + b₁</text>
              <text x="143" y="162" font-size="11" fill="#9b99b8">W₁ is 4 × 16</text>
              <rect x="222" y="30" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="44" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="58" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="72" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="86" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="100" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="114" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="128" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="142" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="156" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="170" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="184" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="198" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="212" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="226" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/><rect x="222" y="240" width="14" height="14" fill="#8b5cf6" fill-opacity="0.45" stroke="#8b5cf6"/>
              <text x="229" y="272">16 numbers</text>
              <text x="229" y="288" font-size="11" fill="#9b99b8">d_ff = 4 × d_model</text>
              <line x1="244" y1="142" x2="362" y2="142" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf10a)"/>
              <text x="303" y="132">GELU</text>
              <text x="303" y="162" font-size="11" fill="#9b99b8">each number</text>
              <text x="303" y="176" font-size="11" fill="#9b99b8">on its own</text>
              <rect x="370" y="30" width="14" height="14" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/><rect x="370" y="44" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="370" y="58" width="14" height="14" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/><rect x="370" y="72" width="14" height="14" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/><rect x="370" y="86" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="370" y="100" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="370" y="114" width="14" height="14" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/><rect x="370" y="128" width="14" height="14" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/><rect x="370" y="142" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="370" y="156" width="14" height="14" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/><rect x="370" y="170" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="370" y="184" width="14" height="14" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/><rect x="370" y="198" width="14" height="14" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/><rect x="370" y="212" width="14" height="14" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/><rect x="370" y="226" width="14" height="14" fill="#27274e" fill-opacity="1" stroke="#4b4a78"/><rect x="370" y="240" width="14" height="14" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/>
              <text x="377" y="272">after GELU</text>
              <text x="377" y="288" font-size="11" fill="#9b99b8">negatives near 0</text>
              <line x1="392" y1="142" x2="526" y2="142" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf10a)"/>
              <text x="459" y="132">× W₂ + b₂</text>
              <text x="459" y="162" font-size="11" fill="#9b99b8">W₂ is 16 × 4</text>
              <text x="541" y="104" font-weight="700">new "cat"</text>
              <rect x="534" y="114" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="534" y="128" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="534" y="142" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><rect x="534" y="156" width="14" height="14" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/>
              <text x="541" y="188">4 numbers</text>
              <rect x="600" y="40" width="148" height="206" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="674" y="64" font-weight="700" fill="#67e8f9">Same FFN for</text>
              <text x="674" y="82" font-weight="700" fill="#67e8f9">every token</text>
              <text x="674" y="112">the → FFN → the</text>
              <text x="674" y="136">cat → FFN → cat</text>
              <text x="674" y="160">was → FFN → was</text>
              <text x="674" y="184">warm → FFN → warm</text>
              <text x="674" y="214" font-size="11" fill="#9b99b8">no mixing between</text>
              <text x="674" y="230" font-size="11" fill="#9b99b8">tokens here</text>
            </g>
          </svg>
          <figcaption>The FFN for one token: widen from 4 to 16 numbers, apply GELU, then shrink back to 4. Every token goes through the same FFN, one at a time.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What the feed-forward network does</h3>
          <p>A transformer block has two main parts. First comes attention. Then comes the feed-forward network. You can think of them like this:</p>
          <ul class="lc-list">
            <li><strong>Attention</strong> is talking. Tokens share information with each other.</li>
            <li><strong>The FFN</strong> is thinking. Each token works on its own vector, alone.</li>
          </ul>
          <p>The FFN is a small <strong>MLP</strong> (multi-layer perceptron). That is a network of two linear layers with an activation function in between:</p>
          <p><strong>FFN(x) = GELU(x W₁ + b₁) W₂ + b₂</strong></p>
          <p>Here x is one token's vector. W₁ and W₂ are learned weight matrices. b₁ and b₂ are learned bias vectors.</p>
          <p>The same W₁, W₂, b₁ and b₂ are used for every token in the layer. The FFN never looks at other tokens. So "cat" gets the same result whether it is alone or in a sentence. The starter code checks this for you.</p>
        </div>
        <div class="lc-card">
          <h3>The 4x expansion</h3>
          <p>The first layer makes each vector wider. The middle size is called <strong>d_ff</strong>. In most transformers, d_ff = 4 × d_model. The second layer shrinks it back to d_model.</p>
          <table class="lc-table">
            <thead><tr><th>Model size</th><th>d_model</th><th>d_ff (middle)</th><th>Shape of W₁</th></tr></thead>
            <tbody>
              <tr><td>Our tiny example</td><td>4</td><td>16</td><td>4 × 16</td></tr>
              <tr><td>Original 2017 Transformer (base)</td><td>512</td><td>2048</td><td>512 × 2048</td></tr>
              <tr><td>GPT-2 small</td><td>768</td><td>3072</td><td>768 × 3072</td></tr>
            </tbody>
          </table>
          <p>Why widen? Each of the middle numbers works like a small detector. It switches on when the vector matches some pattern. More middle numbers means more patterns the model can detect. The second layer then turns the detectors that fired into an update for the token.</p>
          <p>Some research suggests that FFN layers store much of what a model learned in training, such as facts and word patterns. This is still an active research area.</p>
        </div>
        <div class="lc-card">
          <h3>GELU: the activation in the middle</h3>
          <p>Without an activation, two linear layers in a row act like one linear layer. The activation adds a bend, so the network can learn more complex patterns.</p>
          <p>Transformers often use <strong>GELU</strong> (Gaussian Error Linear Unit). Its formula is GELU(x) = x × Φ(x). Here Φ(x) is the chance that a random value from a standard normal distribution is below x. Large positive numbers pass through almost unchanged. Large negative numbers become almost 0.</p>
          <table class="lc-table">
            <thead><tr><th>x</th><th>-2</th><th>-1</th><th>-0.5</th><th>0</th><th>0.5</th><th>1</th><th>2</th></tr></thead>
            <tbody>
              <tr><td>ReLU(x)</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>1.00</td><td>2.00</td></tr>
              <tr><td>GELU(x)</td><td>-0.05</td><td>-0.16</td><td>-0.15</td><td>0</td><td>0.35</td><td>0.84</td><td>1.95</td></tr>
            </tbody>
          </table>
          <p>GELU is like a smooth ReLU. It has no sharp corner at 0, and it lets small negative values through. Many newer language models use a "gated" FFN instead, such as SwiGLU. The idea is the same: widen, apply a bend, shrink. Check a model's documentation to see which one it uses.</p>
        </div>
        <div class="lc-card">
          <h3>Where most parameters live</h3>
          <p>Count the weights in one block. Call d_model just d.</p>
          <ul class="lc-list">
            <li><strong>Attention:</strong> W_Q, W_K, W_V and W_O are each d × d. That is 4d² weights.</li>
            <li><strong>FFN:</strong> W₁ is d × 4d and W₂ is 4d × d. That is 8d² weights.</li>
          </ul>
          <p>So the FFN has about twice as many weights as attention. With d = 768, and biases included, attention has 2,362,368 parameters and the FFN has 4,722,432. The FFN holds about two thirds of the block. Part 3 in the code editor below does this count.</p>
          <p>Part 4 in the code editor builds the same FFN in PyTorch, with d_model = 768, and runs it on a sentence of 10 tokens. It prints the shape (1, 10, 768) and the count 4,722,432. PyTorch does not run in the browser, so copy Part 4 to your own computer to run it.</p>
          <p><code>nn.Linear</code> works on the last dimension only. So all 10 tokens go through the same layers, each on its own. The shape stays (1, 10, 768).</p>
        </div>
        <div class="lc-card">
          <h3>Activity: attention or FFN?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which part of the transformer block does each thing?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="attn" data-label="Attention"></div>
              <div data-sorter-target="bucket" data-bucket="ffn" data-label="Feed-forward network"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="attn" data-why="Moving information from one token to another is the job of attention.">Lets "it" collect information from "cat"</li>
              <li data-bucket="ffn" data-why="The FFN uses the same weights on each token, and never looks at other tokens.">Works on each token alone, with the same weights</li>
              <li data-bucket="ffn" data-why="W₁ widens each vector to d_ff = 4 × d_model, which is 3072 when d_model is 768.">Widens each vector from 768 to 3072 numbers</li>
              <li data-bucket="attn" data-why="Attention compares every token with every token, so its weight table is (tokens, tokens).">Makes a weight table of shape (tokens, tokens)</li>
              <li data-bucket="ffn" data-why="The FFN has 8d² weights and attention has 4d², so the FFN holds about two thirds.">Holds about two thirds of the block's parameters</li>
              <li data-bucket="ffn" data-why="GELU sits between the two linear layers of the FFN.">Uses GELU between two linear layers</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The starter code has four parts. Part 1 prints GELU next to ReLU. Part 2 runs a tiny FFN on 4 tokens. Part 3 counts parameters for a 768-wide block. Part 4 is the PyTorch version.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, check that "cat" gives the same result in the batch and on its own.</li>
            <li>In Part 2, change <code>d_ff = 4 * d_model</code> to <code>d_ff = 8 * d_model</code>. Look at the new hidden shape.</li>
            <li>In Part 2, replace <code>gelu</code> with <code>relu</code> in the line <code>hidden = gelu(X @ W1 + b1)</code>. How does the output for "cat" change?</li>
            <li>In Part 3, change <code>d = 768</code> to <code>d = 4096</code>. Does the FFN share of the block change? Why not?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The FFN is a small two-layer network that runs on each token on its own. It widens the vector about 4 times, applies GELU, and shrinks it back. Because it is so wide, it holds about two thirds of each block's parameters.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # The feed-forward network (FFN) in a transformer block.
        import numpy as np

        np.random.seed(42)

        def gelu(x):
            # The common tanh version of GELU
            return 0.5 * x * (1 + np.tanh(np.sqrt(2 / np.pi) * (x + 0.044715 * x**3)))

        def relu(x):
            return np.maximum(0, x)

        # ── Part 1: GELU compared with ReLU ──
        print("== Part 1: GELU compared with ReLU ==")
        print("   x    ReLU   GELU")
        for x in [-2, -1, -0.5, 0, 0.5, 1, 2]:
            print(f"{x:5}  {relu(x):5.2f}  {gelu(x):5.2f}")

        # ── Part 2: the FFN: widen, GELU, shrink ──
        # The same weights are used for every token.
        print("\n== Part 2: a tiny FFN on 4 tokens ==")
        tokens = ["the", "cat", "was", "warm"]
        d_model = 4
        d_ff = 4 * d_model                     # the usual 4x expansion
        X = np.random.randn(len(tokens), d_model)
        W1, b1 = np.random.randn(d_model, d_ff) * 0.5, np.zeros(d_ff)
        W2, b2 = np.random.randn(d_ff, d_model) * 0.5, np.zeros(d_model)

        hidden = gelu(X @ W1 + b1)             # (4, 16)
        out = hidden @ W2 + b2                 # (4, 4)
        print("X", X.shape, "-> hidden", hidden.shape, "-> out", out.shape)

        # Each token alone gives the same answer: no token looks at another here
        cat_alone = gelu(X[1] @ W1 + b1) @ W2 + b2
        print("'cat' in the batch:", out[1].round(3))
        print("'cat' on its own:  ", cat_alone.round(3))

        # ── Part 3: where the parameters live (weights + biases, one block) ──
        print("\n== Part 3: count the parameters ==")
        d = 768                                # a GPT-2-small-sized model
        attn = 4 * (d * d + d)                 # W_q, W_k, W_v, W_o
        ffn = (d * 4 * d + 4 * d) + (4 * d * d + d)
        print(f"d_model = {d}: attention {attn:,}, FFN {ffn:,}")
        print(f"FFN share of the block: {ffn / (attn + ffn):.0%}")

        # ── Part 4: the same FFN in PyTorch (run this part on your own computer) ──
        print("\n== Part 4: the FFN in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            d_model = 768
            ffn = nn.Sequential(
                nn.Linear(d_model, 4 * d_model),   # widen: 768 -> 3072
                nn.GELU(),
                nn.Linear(4 * d_model, d_model),   # shrink: 3072 -> 768
            )
            x = torch.randn(1, 10, d_model)        # 1 sentence, 10 tokens
            print(ffn(x).shape)                    # torch.Size([1, 10, 768])
            print(sum(p.numel() for p in ffn.parameters()))   # 4722432
      PYTHON
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Residual Connections and Layer Norm</h1>
        </div>
        <p class="lc-lead">Attention and the feed-forward network do the real work. But a transformer stacks dozens of these layers, and deep stacks are hard to train. Two simple tools make it possible. A <strong>residual connection</strong> adds each layer's input back to its output. <strong>Layer norm</strong> keeps each token's numbers in a steady range. In this lesson you will learn both, with real numbers, and see the two ways to arrange them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Two ways to arrange a sublayer. Post-norm, from the 2017 paper: x goes into the sublayer, the result is added to x, then layer norm is applied. Pre-norm, used by most large language models today: x goes into layer norm, then the sublayer, then the result is added to x. In pre-norm the skip path from x to the output has nothing on it.">
            <defs>
              <marker id="tf11a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker>
              <marker id="tf11b" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#10b981"/></marker>
            </defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="362" height="300" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="191" y="34" font-weight="700" fill="#fcd34d">Post-norm (2017 paper)</text>
              <text x="150" y="62" font-weight="700">x</text>
              <line x1="150" y1="68" x2="150" y2="88" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf11a)"/>
              <rect x="80" y="92" width="140" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="150" y="115">Sublayer</text>
              <line x1="150" y1="128" x2="150" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf11a)"/>
              <circle cx="150" cy="162" r="14" fill="#27274e" stroke="#10b981"/>
              <text x="150" y="167" font-size="16" font-weight="700">+</text>
              <line x1="150" y1="176" x2="150" y2="194" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf11a)"/>
              <rect x="80" y="198" width="140" height="36" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="150" y="221">LayerNorm</text>
              <line x1="150" y1="234" x2="150" y2="252" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf11a)"/>
              <text x="150" y="268">output</text>
              <path d="M156,58 L280,58 L280,162 L168,162" fill="none" stroke="#10b981" stroke-width="2" marker-end="url(#tf11b)"/>
              <text x="318" y="106" font-size="11" fill="#6ee7b7">skip path</text>
              <text x="318" y="121" font-size="11" fill="#6ee7b7">(residual)</text>
              <text x="191" y="296" fill="#c4b5fd">LayerNorm(x + Sublayer(x))</text>
              <rect x="388" y="10" width="362" height="300" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="569" y="34" font-weight="700" fill="#fcd34d">Pre-norm (most LLMs today)</text>
              <text x="528" y="62" font-weight="700">x</text>
              <line x1="528" y1="68" x2="528" y2="88" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf11a)"/>
              <rect x="458" y="92" width="140" height="36" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="528" y="115">LayerNorm</text>
              <line x1="528" y1="128" x2="528" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf11a)"/>
              <rect x="458" y="150" width="140" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="528" y="173">Sublayer</text>
              <line x1="528" y1="186" x2="528" y2="204" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf11a)"/>
              <circle cx="528" cy="220" r="14" fill="#27274e" stroke="#10b981"/>
              <text x="528" y="225" font-size="16" font-weight="700">+</text>
              <line x1="528" y1="234" x2="528" y2="252" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf11a)"/>
              <text x="528" y="268">output</text>
              <path d="M534,58 L658,58 L658,220 L546,220" fill="none" stroke="#10b981" stroke-width="2" marker-end="url(#tf11b)"/>
              <text x="700" y="132" font-size="11" fill="#6ee7b7">clean</text>
              <text x="700" y="147" font-size="11" fill="#6ee7b7">skip path</text>
              <text x="569" y="296" fill="#c4b5fd">x + Sublayer(LayerNorm(x))</text>
            </g>
          </svg>
          <figcaption>"Sublayer" means attention or the feed-forward network. The green line is the residual (skip) path. In pre-norm it carries x to the output with nothing in the way.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The residual connection: x + Sublayer(x)</h3>
          <p>A <strong>residual connection</strong> (also called a skip connection) adds the input of a layer to its output:</p>
          <p><strong>output = x + Sublayer(x)</strong></p>
          <p>Here "Sublayer" means attention or the FFN. So the sublayer does not have to rebuild the whole vector. It only learns a <em>change</em> to add. Here is a small example for one token:</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Vector</th></tr></thead>
            <tbody>
              <tr><td>x (input)</td><td>[1.0, 2.0, 0.5, -1.0]</td></tr>
              <tr><td>Sublayer(x) (the change)</td><td>[0.1, -0.2, 0.0, 0.3]</td></tr>
              <tr><td>x + Sublayer(x)</td><td>[1.1, 1.8, 0.5, -0.7]</td></tr>
            </tbody>
          </table>
          <p>The token keeps what it already knew and adds a small update. You can picture each token's vector as a road that runs through the whole model. People call it the <strong>residual stream</strong>. Each sublayer reads from the road and adds its result back to it.</p>
        </div>
        <div class="lc-card">
          <h3>Why it helps deep stacks</h3>
          <p>Training sends a gradient backwards through every layer. Earlier in this course you saw the problem with long chains: the signal can shrink at each step. After many steps almost nothing is left. This is the <strong>vanishing gradient</strong> problem.</p>
          <p>Without a skip path, each layer multiplies the signal by its weights. If each layer makes it a bit smaller, 30 layers make it tiny. With the skip path, the slope of x + Sublayer(x) is 1 + (slope of Sublayer). The "1" means the signal can always pass straight through.</p>
          <p>Part 2 in the code editor below sends a signal of size 2.83 through 30 layers with small random weights:</p>
          <table class="lc-table">
            <thead><tr><th>After layer</th><th>Size without + x</th><th>Size with + x</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>0.328</td><td>2.62</td></tr>
              <tr><td>10</td><td>0.0000000117</td><td>2.83</td></tr>
              <tr><td>30</td><td>1.25e-25 (almost zero)</td><td>4.38</td></tr>
            </tbody>
          </table>
          <p>Without the skip path, the signal is gone after a few layers. With it, the signal stays healthy, so every layer can still learn.</p>
        </div>
        <div class="lc-card">
          <h3>Layer norm, step by step</h3>
          <p><strong>Layer norm</strong> (layer normalisation) rescales one token's vector. It makes the numbers have a mean of 0 and a standard deviation of 1. Then it applies a learned scale and shift. The formula is:</p>
          <p><strong>y = γ × (x - mean) / √(variance + ε) + β</strong></p>
          <ul class="lc-list">
            <li><strong>mean</strong> and <strong>variance</strong> are taken over the d_model numbers of <em>one</em> token.</li>
            <li><strong>ε</strong> (epsilon) is a tiny number, such as 0.00001. It stops a division by zero.</li>
            <li><strong>γ</strong> (gamma, the scale) and <strong>β</strong> (beta, the shift) are learned. They start at 1 and 0.</li>
          </ul>
          <p>Worked example with x = [2, 4, 6, 8]:</p>
          <ol class="lc-list">
            <li>Mean = (2 + 4 + 6 + 8) / 4 = 5.</li>
            <li>Differences from the mean: [-3, -1, 1, 3].</li>
            <li>Variance = (9 + 1 + 1 + 9) / 4 = 5. Its square root is about 2.236.</li>
            <li>Divide: [-3, -1, 1, 3] / 2.236 = [-1.342, -0.447, 0.447, 1.342].</li>
          </ol>
          <p>Part 1 in the code editor below does these steps by hand in NumPy. In PyTorch, <code>nn.LayerNorm(4)</code> gives the same numbers: -1.3416, -0.4472, 0.4472 and 1.3416. Part 5 checks this, but PyTorch does not run in the browser. Copy Part 5 to your own computer to run it.</p>
          <p>Why do this? As vectors pass through many layers, their numbers can grow very big or very small. Layer norm brings them back to a steady range, so training stays stable. Some newer models use <strong>RMSNorm</strong>, a simpler version that skips the mean step.</p>
        </div>
        <div class="lc-card">
          <h3>Pre-norm vs post-norm</h3>
          <p>There are two common places to put layer norm. Look at the diagram above.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Post-norm</th><th>Pre-norm</th></tr></thead>
            <tbody>
              <tr><td>Formula</td><td>LayerNorm(x + Sublayer(x))</td><td>x + Sublayer(LayerNorm(x))</td></tr>
              <tr><td>Used in</td><td>The original 2017 Transformer</td><td>GPT-2 and most large language models since</td></tr>
              <tr><td>Skip path</td><td>Goes through a layer norm after every sublayer</td><td>Clean: nothing on it from input to output</td></tr>
              <tr><td>Training</td><td>Often needs a slow warm-up of the learning rate. Harder when very deep.</td><td>Usually easier to train deep stacks</td></tr>
              <tr><td>Extra</td><td>None</td><td>Adds one final layer norm after the last block</td></tr>
            </tbody>
          </table>
          <p>In code, the difference is one line. Part 4 in the code editor below writes both lines and runs them on one token.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a pre-norm block</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of one pre-norm transformer block in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Start with x: one vector per token</li>
              <li data-order="2">Apply layer norm to x</li>
              <li data-order="3">Run multi-head attention on the normalised vectors</li>
              <li data-order="4">Add the attention result to x (first residual)</li>
              <li data-order="5">Apply layer norm again</li>
              <li data-order="6">Run the feed-forward network</li>
              <li data-order="7">Add the FFN result to x (second residual)</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the starter code computes layer norm by hand. Part 2 sends a signal through 30 layers, with and without the skip path. Part 3 shows layer norm on big and small numbers. Part 4 compares post-norm and pre-norm. Part 5 is the PyTorch check.</p>
          <ol class="lc-list">
            <li>Run it. Check the Part 1 result against the worked example above.</li>
            <li>In Part 1, change <code>x</code> to <code>[1.0, 1.0, 1.0, 5.0]</code>. Which number stands out after layer norm?</li>
            <li>In Part 1, change <code>y = layer_norm(x)</code> to <code>y = layer_norm(x, gamma=2.0, beta=1.0)</code>. Now the new mean is 1 and the new standard deviation is 2.</li>
            <li>In Part 2, change <code>SCALE = 0.05</code> to <code>SCALE = 0.3</code>. Now the "with + x" column grows very large. This is why transformers use the skip path <em>and</em> layer norm together.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The residual connection, x + Sublayer(x), gives the signal and the gradient a straight road through a deep stack. Layer norm keeps each token's numbers in a steady range. Most modern models use pre-norm: x + Sublayer(LayerNorm(x)).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Residual connections and layer norm.
        import numpy as np

        np.random.seed(42)

        def layer_norm(x, gamma=1.0, beta=0.0, eps=1e-5):
            mean = x.mean(axis=-1, keepdims=True)
            var = x.var(axis=-1, keepdims=True)
            return gamma * (x - mean) / np.sqrt(var + eps) + beta

        # ── Part 1: layer norm on one token vector ──
        print("== Part 1: layer norm by hand ==")
        x = np.array([2.0, 4.0, 6.0, 8.0])
        y = layer_norm(x)
        print("x:", x, "  mean", x.mean(), "  variance", x.var())
        print("layer_norm(x):", y.round(3))
        print("new mean", abs(y.mean().round(3)), "  new std", y.std().round(3))

        # ── Part 2: send a signal through a deep stack of layers ──
        # The gradient flows back along the same path in training.
        print("\n== Part 2: 30 layers, with and without the skip path ==")
        d_model, n_layers = 8, 30
        SCALE = 0.05                       # size of the random layer weights
        weights = [np.random.randn(d_model, d_model) * SCALE for _ in range(n_layers)]

        start = np.ones(d_model)
        plain = start.copy()
        residual = start.copy()
        print(f"size of the start signal: {np.linalg.norm(start):.2f}")
        print("layer   size without +x   size with +x")
        for i, W in enumerate(weights, start=1):
            plain = plain @ W                  # output = Sublayer(x)
            residual = residual + residual @ W # output = x + Sublayer(x)
            if i in (1, 2, 5, 10, 20, 30):
                print(f"{i:5}   {np.linalg.norm(plain):16.2e}   {np.linalg.norm(residual):12.2f}")

        # ── Part 3: layer norm brings big or small numbers to the same steady range ──
        print("\n== Part 3: big and small numbers after layer norm ==")
        for v in [np.array([900.0, 1800.0, 1300.0, 2200.0]), np.array([0.9, 1.8, 1.3, 2.2])]:
            print(v, "->", layer_norm(v).round(2))

        # ── Part 4: post-norm vs pre-norm ──
        # In code, the difference is one line.
        print("\n== Part 4: post-norm vs pre-norm ==")
        norm = layer_norm
        W_sub = np.random.randn(4, 4) * 0.5
        def sublayer(x):                       # stands in for attention or the FFN
            return x @ W_sub

        x = np.array([2.0, 4.0, 6.0, 8.0])
        post = norm(x + sublayer(x))           # post-norm: LayerNorm(x + Sublayer(x))
        pre = x + sublayer(norm(x))            # pre-norm:  x + Sublayer(LayerNorm(x))
        print("post-norm:", post.round(2))
        print("pre-norm: ", pre.round(2))

        # ── Part 5: nn.LayerNorm in PyTorch (run this part on your own computer) ──
        print("\n== Part 5: layer norm in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 5 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            norm = nn.LayerNorm(4)               # gamma starts at 1, beta at 0
            x = torch.tensor([[2.0, 4.0, 6.0, 8.0]])
            print(norm(x).detach())              # tensor([[-1.3416, -0.4472,  0.4472,  1.3416]])
      PYTHON
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">The Encoder</h1>
        </div>
        <p class="lc-lead">You now know every part of a transformer block: multi-head attention, the feed-forward network, residual connections and layer norm. The <strong>encoder</strong> stacks these blocks on top of each other. It reads a whole sentence at once and gives back one rich vector for every token. In this lesson you will build the encoder, follow the shapes, and see why its attention looks both ways.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 400" role="img" aria-label="The encoder. Tokens become embeddings plus positions with shape 11 by d_model. They go through an encoder block: multi-head self-attention, add and norm, feed-forward network, add and norm. The block is repeated N times. The output is one vector per token, shape 11 by d_model. Below, the sentence The cat sat on the mat because it was warm, with arrows from it to cat and mat on the left and to warm on the right.">
            <defs><marker id="tf12a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="14" y="110" width="128" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="78" y="134" font-weight="700">Tokens</text>
              <text x="78" y="154" font-size="11" fill="#9b99b8">11 token IDs</text>
              <line x1="142" y1="141" x2="166" y2="141" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf12a)"/>
              <rect x="170" y="102" width="136" height="78" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="238" y="124" font-weight="700">Embedding</text>
              <text x="238" y="142">+ position</text>
              <text x="238" y="164" font-size="11" fill="#9b99b8">(11, d_model)</text>
              <path d="M306,141 L322,141 L322,74 L348,74" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf12a)"/>
              <rect x="334" y="22" width="238" height="244" rx="12" fill="#1f1f44" stroke="#8b5cf6" stroke-dasharray="6 4"/>
              <text x="453" y="44" font-weight="700" fill="#c4b5fd">Encoder block</text>
              <rect x="352" y="56" width="202" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="453" y="79">Multi-head self-attention</text>
              <line x1="453" y1="92" x2="453" y2="106" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf12a)"/>
              <rect x="352" y="110" width="202" height="30" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="453" y="130">Add &amp; Norm</text>
              <line x1="453" y1="140" x2="453" y2="154" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf12a)"/>
              <rect x="352" y="158" width="202" height="36" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="453" y="181">Feed-forward network</text>
              <line x1="453" y1="194" x2="453" y2="208" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf12a)"/>
              <rect x="352" y="212" width="202" height="30" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="453" y="232">Add &amp; Norm</text>
              <text x="453" y="259" font-size="11" fill="#9b99b8">no mask: every token sees every token</text>
              <path d="M554,227 L588,227 L588,141 L610,141" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf12a)"/>
              <text x="606" y="40" font-weight="700" fill="#fcd34d">× N</text>
              <text x="606" y="56" font-size="11" fill="#9b99b8">blocks</text>
              <rect x="614" y="102" width="134" height="78" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="681" y="124" font-weight="700">Output</text>
              <text x="681" y="142">1 vector per token</text>
              <text x="681" y="164" font-size="11" fill="#9b99b8">(11, d_model)</text>
              <rect x="20" y="330" width="60" height="28" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="50" y="349">The</text>
              <rect x="86" y="330" width="60" height="28" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="116" y="349">cat</text>
              <rect x="152" y="330" width="60" height="28" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="182" y="349">sat</text>
              <rect x="218" y="330" width="60" height="28" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="248" y="349">on</text>
              <rect x="284" y="330" width="60" height="28" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="314" y="349">the</text>
              <rect x="350" y="330" width="60" height="28" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="380" y="349">mat</text>
              <rect x="416" y="330" width="60" height="28" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="446" y="349">because</text>
              <rect x="482" y="330" width="60" height="28" rx="6" fill="#27274e" stroke="#ec4899"/><text x="512" y="349">it</text>
              <rect x="548" y="330" width="60" height="28" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="578" y="349">was</text>
              <rect x="614" y="330" width="60" height="28" rx="6" fill="#27274e" stroke="#f59e0b"/><text x="644" y="349">warm</text>
              <rect x="680" y="330" width="60" height="28" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="710" y="349">.</text>
              <path d="M512,328 Q314,262 120,326" fill="none" stroke="#3b82f6" stroke-width="2.2" marker-end="url(#tf12a)"/>
              <path d="M512,328 Q446,292 384,326" fill="none" stroke="#3b82f6" stroke-width="1.5" marker-end="url(#tf12a)"/>
              <path d="M512,328 Q578,292 640,326" fill="none" stroke="#f59e0b" stroke-width="2" marker-end="url(#tf12a)"/>
              <text x="380" y="386" font-size="11.5" fill="#9b99b8">Bidirectional: "it" can look left (cat, mat) and right (warm) in the same step.</text>
            </g>
          </svg>
          <figcaption>Top: the encoder is a stack of N blocks with the same design. Bottom: encoder attention has no mask, so a token can use words before and after it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A stack of blocks</h3>
          <p>An <strong>encoder block</strong> joins the parts from earlier in this course in a fixed order:</p>
          <ol class="lc-list">
            <li><strong>Multi-head self-attention:</strong> tokens share information.</li>
            <li><strong>Add &amp; Norm:</strong> a residual connection, then layer norm.</li>
            <li><strong>Feed-forward network:</strong> each token works on its own vector.</li>
            <li><strong>Add &amp; Norm:</strong> a second residual connection and layer norm.</li>
          </ol>
          <p>The diagram shows the post-norm order from the 2017 paper. Many newer encoders use pre-norm instead. The parts are the same. Only the place of layer norm changes.</p>
          <p>The <strong>encoder</strong> is a stack of N of these blocks. Every block has the same design, but each block has its own weights. The original Transformer used 6 encoder blocks. BERT-base, a well-known encoder model, uses 12.</p>
          <p>Before the first block, each token ID becomes an embedding, and the positional encoding is added. After the last block, you get the output.</p>
        </div>
        <div class="lc-card">
          <h3>The shape never changes</h3>
          <p>Each block takes a (tokens, d_model) matrix and returns a matrix of the same shape. That is why you can stack as many blocks as you like.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Shape for our sentence (11 tokens)</th></tr></thead>
            <tbody>
              <tr><td>Token IDs</td><td>(11,)</td></tr>
              <tr><td>Embeddings + positions</td><td>(11, d_model)</td></tr>
              <tr><td>After block 1</td><td>(11, d_model)</td></tr>
              <tr><td>After block N</td><td>(11, d_model)</td></tr>
            </tbody>
          </table>
          <p>The output has one vector for each input token. These are often called <strong>contextual embeddings</strong>. At the start, "it" had the same embedding in every sentence. After the encoder, the vector for "it" also carries information about "cat" and "warm".</p>
          <p>What can you do with these vectors?</p>
          <ul class="lc-list">
            <li>Label each token, for example to find names of people and places.</li>
            <li>Combine them into one vector for the whole sentence. Then classify it, for example as a positive or negative review.</li>
            <li>Compare sentence vectors to find similar texts, as in search.</li>
            <li>Give them to a decoder, which writes a translation.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Bidirectional: looking both ways</h3>
          <p>In the encoder, attention has no mask. Every token can look at every other token, before and after it. This is called <strong>bidirectional</strong> attention.</p>
          <p>Take "The cat sat on the mat because it was warm." To understand "it", the word "warm" is a useful clue. It suggests that "it" is the mat. But "warm" comes <em>after</em> "it". The encoder lets "it" use "warm" anyway.</p>
          <p>This is great for understanding text that you already have. It does not work for writing new text. When you write, the next words do not exist yet. Models that write text use a mask to hide future tokens. You will meet this later in the course.</p>
          <p>Part 2 in the code editor below tests this. It runs the encoder twice: once with "warm" and once with "cold". Only a word <em>after</em> "cat" changes. But the output vector for "cat" still changes.</p>
        </div>
        <div class="lc-card">
          <h3>The encoder in PyTorch</h3>
          <p>PyTorch has the encoder ready-made. Part 3 in the code editor below builds a 2-block encoder with d_model = 8 and runs it on 11 tokens. The output shape is (1, 11, 8). PyTorch does not run in the browser, so copy Part 3 to your own computer to run it. Parts 1 and 2 run a NumPy version of the same encoder.</p>
          <ul class="lc-list">
            <li><code>TransformerEncoderLayer</code> is one block: self-attention, FFN, two residuals and two layer norms.</li>
            <li><code>norm_first=True</code> means pre-norm. <code>dim_feedforward=32</code> is d_ff = 4 × 8.</li>
            <li><code>TransformerEncoder</code> makes 2 copies of the block. Each copy gets its own weights.</li>
            <li>Each block in this PyTorch encoder has 872 parameters: 288 in attention, 552 in the FFN and 32 in the two layer norms. Two blocks give 1744.</li>
          </ul>
          <p>Here <code>x</code> stands in for embeddings plus positions. A full model would add an embedding layer in front.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: true for the encoder?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each statement about a transformer encoder.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="yes" data-label="True for the encoder"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not true"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="yes" data-why="Encoder attention has no mask, so it is bidirectional.">A token can look at tokens that come after it</li>
              <li data-bucket="yes" data-why="Each block keeps the shape (tokens, d_model), so the output has one vector per token.">The output has one vector for each input token</li>
              <li data-bucket="no" data-why="The encoder does not hide future tokens. Masks are used in models that write text.">It hides future tokens with a mask</li>
              <li data-bucket="yes" data-why="All blocks share the same design, but each block learns its own weights.">Every block has its own weights</li>
              <li data-bucket="no" data-why="Every block returns the same shape it was given. That is what makes stacking possible.">Each block makes the matrix smaller</li>
              <li data-bucket="no" data-why="The encoder reads the whole input at once. Writing one token at a time is what a decoder does.">It writes new text one token at a time</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the starter code builds a 2-block encoder with random weights. It encodes the running sentence and prints the shapes. Part 2 changes "warm" to "cold" and measures the change in the vector for "cat". Part 3 is the PyTorch encoder.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check that the output shape is (11, 8): one vector for each of the 11 tokens.</li>
            <li>In Part 1, change <code>n_layers = 2</code> to <code>n_layers = 4</code>. The shape stays the same after every block.</li>
            <li>In Part 2, change "cold" back to "warm" in the second sentence. The change in "cat" becomes 0.</li>
            <li>In Part 1, add <code>"tired"</code> to the end of <code>vocab</code>. In Part 2, use it in place of "cold". Does "cat" change by a different amount?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The encoder is a stack of identical blocks: self-attention, then a feed-forward network, each with a residual and layer norm. Its attention looks both ways, and it turns every input token into one vector that knows about the whole sentence.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A tiny transformer encoder (random weights, no training).
        import numpy as np

        # ── Part 1: build a 2-block encoder in NumPy ──
        print("== Part 1: encode the running sentence ==")
        np.random.seed(42)
        d_model, n_heads, n_layers = 8, 2, 2
        d_k = d_model // n_heads
        vocab = ["the", "cat", "sat", "on", "mat", "because", "it", "was", "warm", ".", "cold"]   # IDs 0-9 match the toy vocabulary from earlier
        emb = np.random.randn(len(vocab), d_model)       # embedding table

        def positions(n):                                # sinusoidal positional encoding
            pos, i = np.arange(n)[:, None], np.arange(d_model)[None, :]
            angle = pos / 10000 ** ((i // 2 * 2) / d_model)
            return np.where(i % 2 == 0, np.sin(angle), np.cos(angle))

        def layer_norm(x):
            return (x - x.mean(-1, keepdims=True)) / np.sqrt(x.var(-1, keepdims=True) + 1e-5)

        def softmax(s):
            e = np.exp(s - s.max(-1, keepdims=True))
            return e / e.sum(-1, keepdims=True)

        def gelu(x):
            return 0.5 * x * (1 + np.tanh(0.7978845608 * (x + 0.044715 * x**3)))

        r = lambda rows, cols: np.random.randn(rows, cols) / np.sqrt(rows)   # random weights
        D, F = d_model, 4 * d_model
        blocks = [dict(Wq=r(D, D), Wk=r(D, D), Wv=r(D, D), Wo=r(D, D), W1=r(D, F), W2=r(F, D))
                  for _ in range(n_layers)]                # each block has its own weights

        def encoder_block(x, b):
            h = layer_norm(x)
            Q, K, V = h @ b["Wq"], h @ b["Wk"], h @ b["Wv"]
            heads = []
            for c in range(0, d_model, d_k):             # each head: its own columns, no mask
                w = softmax(Q[:, c:c+d_k] @ K[:, c:c+d_k].T / np.sqrt(d_k))
                heads.append(w @ V[:, c:c+d_k])
            x = x + np.concatenate(heads, axis=1) @ b["Wo"]      # attention + residual
            h = layer_norm(x)
            return x + gelu(h @ b["W1"]) @ b["W2"]               # FFN + residual

        def encode(sentence, show=False):
            words = sentence.split()
            x = emb[[vocab.index(w) for w in words]] + positions(len(words))
            for n, b in enumerate(blocks, start=1):
                x = encoder_block(x, b)
                if show: print(f"after block {n}: shape {x.shape}")
            return layer_norm(x), words

        out, words = encode("the cat sat on the mat because it was warm .", show=True)
        print("one vector per token:", len(words), "tokens ->", out.shape)

        # ── Part 2: bidirectional attention ──
        # Change a word AFTER "cat" and look at the vector for "cat".
        print("\n== Part 2: change 'warm' and watch 'cat' ==")
        out2, _ = encode("the cat sat on the mat because it was cold .")
        print("'cat' vector, warm:", out[1, :4].round(2))
        print("'cat' vector, cold:", out2[1, :4].round(2))
        print("change in 'cat':", np.abs(out - out2)[1].sum().round(3))

        # ── Part 3: the encoder in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: the encoder in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            layer = nn.TransformerEncoderLayer(d_model=8, nhead=2, dim_feedforward=32,
                                               activation="gelu", norm_first=True, batch_first=True)
            encoder = nn.TransformerEncoder(layer, num_layers=2, enable_nested_tensor=False)
            x = torch.randn(1, 11, 8)    # 1 sentence, 11 tokens, d_model = 8
            print(encoder(x).shape)      # torch.Size([1, 11, 8])
            print(sum(p.numel() for p in encoder.parameters()))   # 1744
      PYTHON
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">The Decoder</h1>
        </div>
        <p class="lc-lead">The encoder reads a sentence and gives one vector per token. The <strong>decoder</strong> is the part that writes the output, one token at a time. In the original 2017 transformer, the decoder wrote the translation. In this lesson you will see the three parts of a decoder block: masked self-attention, cross-attention and the feed-forward network. You will also run cross-attention on a small translation.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="An encoder on the left reads the English words the black cat sleeps and gives 4 output vectors. These vectors go to the cross-attention layer of the decoder as keys and values. The decoder on the right reads the French words written so far, start, le, chat. Its block has masked self-attention, then cross-attention, then a feed-forward network. A final linear and softmax layer predicts the next French word, noir.">
            <defs><marker id="tf13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="150" y="98" font-weight="700" fill="#93c5fd">Encoder</text>
              <rect x="50" y="110" width="200" height="110" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="1.5"/>
              <text x="150" y="146">self-attention</text>
              <text x="150" y="166">+ feed-forward</text>
              <text x="150" y="198" font-size="12" fill="#9b99b8">× N blocks, no mask</text>
              <line x1="150" y1="268" x2="150" y2="224" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf13a)"/>
              <text x="150" y="290">the black cat sleeps</text>
              <text x="150" y="308" font-size="11.5" fill="#9b99b8">English input (4 tokens)</text>
              <line x1="252" y1="165" x2="396" y2="165" stroke="#f59e0b" stroke-width="2" marker-end="url(#tf13a)"/>
              <text x="324" y="155" font-size="12" fill="#fcd34d">K and V</text>
              <text x="324" y="185" font-size="11.5" fill="#9b99b8">4 vectors</text>
              <text x="520" y="28" font-weight="700" fill="#c4b5fd">Decoder</text>
              <rect x="388" y="76" width="264" height="190" rx="12" fill="none" stroke="#4b4a78" stroke-dasharray="5 4"/>
              <text x="630" y="258" font-size="11.5" fill="#9b99b8">× N</text>
              <rect x="400" y="208" width="240" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="520" y="231">1. Masked self-attention</text>
              <rect x="400" y="147" width="240" height="36" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="520" y="170">2. Cross-attention</text>
              <rect x="400" y="86" width="240" height="36" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="520" y="109">3. Feed-forward (FFN)</text>
              <line x1="520" y1="206" x2="520" y2="187" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf13a)"/>
              <text x="534" y="200" font-size="11" fill="#9b99b8" text-anchor="start">Q</text>
              <line x1="520" y1="145" x2="520" y2="126" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf13a)"/>
              <rect x="430" y="38" width="180" height="30" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="520" y="58">Linear + softmax</text>
              <line x1="520" y1="84" x2="520" y2="72" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf13a)"/>
              <line x1="612" y1="53" x2="660" y2="53" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf13a)"/>
              <rect x="664" y="36" width="86" height="34" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="707" y="58" font-weight="700" fill="#6ee7b7">noir</text>
              <line x1="520" y1="282" x2="520" y2="248" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf13a)"/>
              <text x="520" y="298">&lt;start&gt; le chat</text>
              <text x="520" y="315" font-size="11.5" fill="#9b99b8">French written so far</text>
            </g>
          </svg>
          <figcaption>The original encoder-decoder setup for translation. Each decoder block has three sublayers. Cross-attention is the bridge to the encoder. Every sublayer also has a residual connection and layer norm (not drawn).</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What the decoder does</h3>
          <p>The 2017 paper "Attention Is All You Need" built a translator. The <strong>encoder</strong> read the English sentence. The <strong>decoder</strong> wrote the French (or German) sentence.</p>
          <p>The decoder writes <strong>one token at a time</strong>. It reads the tokens it has written so far. Then it predicts the next one. The new token is added to its input, and it runs again.</p>
          <p>Here is our running example in this lesson:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Tokens</th></tr></thead>
            <tbody>
              <tr><td>Encoder input (English)</td><td>the black cat sleeps</td></tr>
              <tr><td>Decoder input so far</td><td>&lt;start&gt; le chat</td></tr>
              <tr><td>Next token to predict</td><td>noir</td></tr>
            </tbody>
          </table>
          <p><code>&lt;start&gt;</code> is a special token. It tells the decoder to begin. When the decoder outputs a special <code>&lt;end&gt;</code> token, the translation is finished.</p>
        </div>
        <div class="lc-card">
          <h3>The three sublayers of a decoder block</h3>
          <p>An encoder block has two sublayers. A decoder block has three:</p>
          <ol class="lc-list">
            <li><strong>Masked self-attention.</strong> Each French token looks at the French tokens before it, and at itself. It cannot look at later tokens. Those tokens do not exist yet when the model writes.</li>
            <li><strong>Cross-attention.</strong> Each French token looks at the English sentence. The <strong>queries</strong> come from the decoder. The <strong>keys</strong> and <strong>values</strong> come from the encoder output.</li>
            <li><strong>Feed-forward network (FFN).</strong> The same per-token network as in the encoder.</li>
          </ol>
          <p>Each sublayer has "add &amp; norm" around it: a residual connection and layer norm. The decoder stacks N such blocks. The original paper used N = 6 for both the encoder and the decoder.</p>
          <p>After the last block, a linear layer and softmax turn each vector into probabilities for the next token.</p>
        </div>
        <div class="lc-card">
          <h3>Cross-attention: the same maths, different inputs</h3>
          <p>Cross-attention uses the same formula as self-attention:</p>
          <p><code>softmax(Q Kᵀ / √d_k) V</code></p>
          <p>The only change is where Q, K and V come from:</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Self-attention</th><th>Cross-attention</th></tr></thead>
            <tbody>
              <tr><td>Q (queries)</td><td>this sequence</td><td>decoder (French)</td></tr>
              <tr><td>K and V</td><td>this sequence</td><td>encoder output (English)</td></tr>
              <tr><td>Weights shape</td><td>(n, n)</td><td>(3 French, 4 English)</td></tr>
              <tr><td>Output shape</td><td>(n, d_model)</td><td>(3, d_model): one per French token</td></tr>
            </tbody>
          </table>
          <p>The weights matrix does not need to be square. The two sentences can have different lengths. Cross-attention has no mask: the whole English sentence is known from the start.</p>
          <p>Look at the word order. English says "black cat". French says "chat noir", so the order flips. Cross-attention handles this well. Each French position can look at any English word, in any order.</p>
        </div>
        <div class="lc-card">
          <h3>A decoder layer in PyTorch</h3>
          <p>PyTorch has a ready-made decoder block. <code>memory</code> is the encoder output. The mask hides future tokens. You will learn about that mask soon. Part 2 in the code editor below builds one decoder layer with d_model = 8. It uses 4 English tokens as memory and 3 French tokens as input.</p>
          <p>The output shape is (1, 3, 8). Three French tokens go in, and three vectors come out. Each has 8 numbers. The encoder's 4 tokens shape the result, but they do not change the output length. PyTorch does not run in the browser, so copy Part 2 to your own computer to run it. Part 1 uses NumPy to show the cross-attention step by itself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one pass through a decoder block</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for one pass in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The encoder reads "the black cat sleeps" and gives 4 vectors</li>
              <li data-order="2">The decoder embeds "&lt;start&gt; le chat" and adds positions</li>
              <li data-order="3">Masked self-attention: each French token looks at earlier French tokens</li>
              <li data-order="4">Cross-attention: French queries look at the English keys and values</li>
              <li data-order="5">The feed-forward network updates each token on its own</li>
              <li data-order="6">Linear + softmax at the last position gives "noir" the top probability</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the starter code runs cross-attention with hand-made vectors. Each decoder position looks for the English word it needs to write the <em>next</em> French word. So "chat" looks at "black", because the next word is "noir". Part 2 is the PyTorch decoder layer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check the shapes: the weights are (3, 4), not square.</li>
            <li>In Part 1, change the row for <code>chat</code> to <code>[0.0, 0.0, 0.0, 2.0]</code>. Now it looks at "sleeps".</li>
            <li>In Part 1, add a fourth decoder row <code>[0.0, 0.0, 0.5, 2.0]</code> for <code>"noir"</code>. Add <code>"noir"</code> to <code>tgt</code> too. Which English word does it pick?</li>
            <li>In Part 1, multiply <code>dec_states</code> by 0.3. The weights become flatter, because the scores are smaller.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A decoder block is an encoder block plus cross-attention. Masked self-attention reads the output written so far. Cross-attention takes queries from the decoder and keys and values from the encoder.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Cross-attention: the decoder looks at the encoder's output.
        # English "the black cat sleeps" -> French "le chat noir dort".
        import numpy as np

        # ── Part 1: cross-attention in NumPy ──
        print("== Part 1: cross-attention on a small translation ==")
        # Pretend encoder output: one vector per English token (d_model = 4).
        # Features: [article, cat, colour, sleep]
        src = ["the", "black", "cat", "sleeps"]
        enc_out = np.array([
            [3.0, 0.0, 0.0, 0.0],   # the
            [0.0, 0.0, 3.0, 0.0],   # black
            [0.0, 3.0, 0.0, 0.0],   # cat
            [0.0, 0.0, 0.0, 3.0],   # sleeps
        ])

        # Pretend decoder states after masked self-attention.
        # Each French position asks: "which English word do I need to write the NEXT word?"
        tgt = ["<start>", "le", "chat"]
        dec_states = np.array([
            [2.0, 0.5, 0.0, 0.0],   # <start> wants "the" (to write "le")
            [0.5, 2.0, 0.0, 0.0],   # le wants "cat" (to write "chat")
            [0.0, 0.5, 2.0, 0.0],   # chat wants "black" (to write "noir")
        ])

        def softmax(x):
            e = np.exp(x - x.max(axis=-1, keepdims=True))
            return e / e.sum(axis=-1, keepdims=True)

        Q = dec_states          # queries come from the DECODER
        K = enc_out             # keys come from the ENCODER
        V = enc_out             # values come from the ENCODER
        d_k = Q.shape[1]

        scores = Q @ K.T / np.sqrt(d_k)   # shape (3 French, 4 English)
        weights = softmax(scores)
        out = weights @ V                 # shape (3, 4): one new vector per French token

        print("Q", Q.shape, "K", K.shape, "weights", weights.shape, "out", out.shape)
        print("\nCross-attention weights (rows = French, columns = English):")
        print(" " * 9 + "".join(f"{w:>8}" for w in src))
        for name, row in zip(tgt, weights):
            print(f"{name:>8} " + "".join(f"{x:8.2f}" for x in row))
        for name, row in zip(tgt, weights):
            print(f"{name} looks most at '{src[row.argmax()]}'")

        # ── Part 2: a decoder layer in PyTorch (run this part on your own computer) ──
        print("\n== Part 2: a decoder layer in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 2 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            layer = nn.TransformerDecoderLayer(d_model=8, nhead=2, batch_first=True)

            memory = torch.randn(1, 4, 8)   # encoder output: 4 English tokens
            tgt = torch.randn(1, 3, 8)      # decoder input: 3 French tokens so far
            mask = nn.Transformer.generate_square_subsequent_mask(3)

            out = layer(tgt, memory, tgt_mask=mask)
            print(out.shape)                # torch.Size([1, 3, 8])
      PYTHON
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Masked Attention</h1>
        </div>
        <p class="lc-lead">A decoder writes text from left to right. So when it predicts a word, it must not see the words that come after. <strong>Masked attention</strong> makes sure of this. It uses a simple matrix, called the <strong>causal mask</strong>, to hide the future. In this lesson you will build that mask, apply it with numbers, and see why it lets a transformer train on a whole sentence at once.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Left: a 4 by 4 grid of attention scores for the tokens the, cat, sat, on. Every cell above the diagonal is set to minus infinity. Right: after softmax, those cells become 0. Each row of weights adds up to 1. For example, the row for cat is 0.37, 0.63, 0, 0.">
            <defs><marker id="tf14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="190" y="24" font-weight="700" fill="#f9a8d4">Masked scores</text>
              <text x="565" y="24" font-weight="700" fill="#6ee7b7">Weights after softmax</text>
              <g font-size="11.5" fill="#9b99b8">
                <text x="106" y="50">the</text><text x="162" y="50">cat</text><text x="218" y="50">sat</text><text x="274" y="50">on</text>
                <text x="481" y="50">the</text><text x="537" y="50">cat</text><text x="593" y="50">sat</text><text x="649" y="50">on</text>
              </g>
              <g font-size="11.5" fill="#9b99b8" text-anchor="end">
                <text x="72" y="81">the</text><text x="72" y="117">cat</text><text x="72" y="153">sat</text><text x="72" y="189">on</text>
                <text x="447" y="81">the</text><text x="447" y="117">cat</text><text x="447" y="153">sat</text><text x="447" y="189">on</text>
              </g>
              <g stroke="#4b4a78">
                <rect x="78" y="60" width="56" height="36" fill="#27274e"/><rect x="134" y="60" width="56" height="36" fill="#3b1d3a"/><rect x="190" y="60" width="56" height="36" fill="#3b1d3a"/><rect x="246" y="60" width="56" height="36" fill="#3b1d3a"/>
                <rect x="78" y="96" width="56" height="36" fill="#27274e"/><rect x="134" y="96" width="56" height="36" fill="#27274e"/><rect x="190" y="96" width="56" height="36" fill="#3b1d3a"/><rect x="246" y="96" width="56" height="36" fill="#3b1d3a"/>
                <rect x="78" y="132" width="56" height="36" fill="#27274e"/><rect x="134" y="132" width="56" height="36" fill="#27274e"/><rect x="190" y="132" width="56" height="36" fill="#27274e"/><rect x="246" y="132" width="56" height="36" fill="#3b1d3a"/>
                <rect x="78" y="168" width="56" height="36" fill="#27274e"/><rect x="134" y="168" width="56" height="36" fill="#27274e"/><rect x="190" y="168" width="56" height="36" fill="#27274e"/><rect x="246" y="168" width="56" height="36" fill="#27274e"/>
              </g>
              <text x="106" y="83">-1.64</text><text x="162" y="83" fill="#f9a8d4">-∞</text><text x="218" y="83" fill="#f9a8d4">-∞</text><text x="274" y="83" fill="#f9a8d4">-∞</text>
              <text x="106" y="119">-1.18</text><text x="162" y="119">-0.64</text><text x="218" y="119" fill="#f9a8d4">-∞</text><text x="274" y="119" fill="#f9a8d4">-∞</text>
              <text x="106" y="155">0.86</text><text x="162" y="155">-0.09</text><text x="218" y="155">0.34</text><text x="274" y="155" fill="#f9a8d4">-∞</text>
              <text x="106" y="191">0.76</text><text x="162" y="191">0.74</text><text x="218" y="191">0.72</text><text x="274" y="191">0.20</text>
              <line x1="316" y1="132" x2="400" y2="132" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf14a)"/>
              <text x="356" y="122" font-size="12">softmax</text>
              <text x="356" y="152" font-size="11" fill="#9b99b8">each row</text>
              <g stroke="#4b4a78">
                <rect x="453" y="60" width="56" height="36" fill="#1d3b33"/><rect x="509" y="60" width="56" height="36" fill="#1f1f44"/><rect x="565" y="60" width="56" height="36" fill="#1f1f44"/><rect x="621" y="60" width="56" height="36" fill="#1f1f44"/>
                <rect x="453" y="96" width="56" height="36" fill="#1d3b33"/><rect x="509" y="96" width="56" height="36" fill="#1d3b33"/><rect x="565" y="96" width="56" height="36" fill="#1f1f44"/><rect x="621" y="96" width="56" height="36" fill="#1f1f44"/>
                <rect x="453" y="132" width="56" height="36" fill="#1d3b33"/><rect x="509" y="132" width="56" height="36" fill="#1d3b33"/><rect x="565" y="132" width="56" height="36" fill="#1d3b33"/><rect x="621" y="132" width="56" height="36" fill="#1f1f44"/>
                <rect x="453" y="168" width="56" height="36" fill="#1d3b33"/><rect x="509" y="168" width="56" height="36" fill="#1d3b33"/><rect x="565" y="168" width="56" height="36" fill="#1d3b33"/><rect x="621" y="168" width="56" height="36" fill="#1d3b33"/>
              </g>
              <text x="481" y="83">1.00</text><text x="537" y="83" fill="#9b99b8">0</text><text x="593" y="83" fill="#9b99b8">0</text><text x="649" y="83" fill="#9b99b8">0</text>
              <text x="481" y="119">0.37</text><text x="537" y="119">0.63</text><text x="593" y="119" fill="#9b99b8">0</text><text x="649" y="119" fill="#9b99b8">0</text>
              <text x="481" y="155">0.51</text><text x="537" y="155">0.20</text><text x="593" y="155">0.30</text><text x="649" y="155" fill="#9b99b8">0</text>
              <text x="481" y="191">0.28</text><text x="537" y="191">0.28</text><text x="593" y="191">0.27</text><text x="649" y="191">0.16</text>
              <g font-size="11" fill="#9b99b8" text-anchor="start">
                <text x="688" y="83">sum 1</text><text x="688" y="119">sum 1</text><text x="688" y="155">sum 1</text><text x="688" y="191">sum 1</text>
              </g>
              <text x="380" y="236" fill="#9b99b8">Row = the token that is looking. Column = the token it looks at.</text>
              <text x="380" y="258" fill="#9b99b8">Pink cells are in the future, so they are set to -∞ and get weight 0.</text>
            </g>
          </svg>
          <figcaption>The causal mask on "the cat sat on". The numbers come from the starter code. The future is hidden before softmax, so each row's weights still add up to 1.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why the decoder must not see the future</h3>
          <p>Think about how the decoder is used. It writes "the", then "cat", then "sat". When it predicts the word after "cat", the word "sat" does not exist yet.</p>
          <p>During training, we have the full sentence. If the token "cat" could look at "sat", the model would just copy the answer. It would learn nothing useful. At writing time, the answer is not there, so the model would fail.</p>
          <p>So we add a rule: <strong>each token may look only at itself and the tokens before it</strong>. Models that follow this rule are called <strong>causal</strong>. "Causal" here means "only the past can affect the present".</p>
        </div>
        <div class="lc-card">
          <h3>The causal mask matrix</h3>
          <p>For n tokens, the mask is an n × n matrix. Row i is the token that is looking. Column j is the token it looks at. Token i must not look at any j that is bigger than i. Those cells are <strong>above the diagonal</strong>.</p>
          <p>NumPy builds this with <code>np.triu</code> ("upper triangle"). The <code>k=1</code> part means "start one place above the diagonal".</p>
          <p>Part 1 in the code editor below builds the mask and hides the future with <code>np.where</code>. True in the mask means "this is the future, hide it". Those scores become <code>-inf</code>, and softmax gives them weight 0.</p>
          <p>Part 3 does one row by hand, with a mask of 0s and 1s. A 1 means "this is the future". The row belongs to "cat" and has 4 scores: 2.0, 1.0, 3.0 and 0.5. The last two are in the future, so they become <code>-inf</code>. Softmax gives "the" 0.73, "cat" 0.27, and the future words 0.</p>
        </div>
        <div class="lc-card">
          <h3>Why minus infinity?</h3>
          <p>Why not just set the future <em>weights</em> to 0 after softmax? Because then the row would no longer add up to 1.</p>
          <p>Instead, we change the <em>scores</em> before softmax. Softmax uses <code>exp(score)</code>. And <code>exp(-∞) = 0</code>. So a future token gets weight exactly 0. The other weights share the full total of 1.</p>
          <p>Worked example for "cat" in Part 1 of the code: its scores are -1.18 and -0.64 for "the" and "cat". Softmax of just these two gives 0.37 and 0.63. These add up to 1. Many libraries use a very large negative number instead of true <code>-inf</code>. The effect is the same.</p>
          <p>In PyTorch, you can pass <code>is_causal=True</code> to <code>torch.nn.functional.scaled_dot_product_attention</code>. It applies this mask for you.</p>
        </div>
        <div class="lc-card">
          <h3>Why the mask allows parallel training</h3>
          <p>An RNN had to read one word, then the next, then the next. A transformer with a causal mask does something smarter.</p>
          <p>It reads the whole sentence in <strong>one pass</strong>. Every position predicts its next token at the same time:</p>
          <table class="lc-table">
            <thead><tr><th>Position</th><th>Can see</th><th>Must predict</th></tr></thead>
            <tbody>
              <tr><td>0</td><td>the</td><td>cat</td></tr>
              <tr><td>1</td><td>the cat</td><td>sat</td></tr>
              <tr><td>2</td><td>the cat sat</td><td>on</td></tr>
              <tr><td>3</td><td>the cat sat on</td><td>the</td></tr>
            </tbody>
          </table>
          <p>So one sentence of 4 tokens gives 4 training examples in a single pass. The mask makes each example fair, because no position can see its answer. This is called <strong>teacher forcing</strong>: the model gets the real earlier tokens, not its own guesses. GPUs are very good at this kind of parallel work. It is a big reason why transformers train faster than RNNs.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: can this token see that token?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">The sentence is "the cat sat on the mat". Use a causal mask. Is each look allowed?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="seen" data-label="Allowed"></div>
              <div data-sorter-target="bucket" data-bucket="masked" data-label="Masked (-∞)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="seen" data-why="&quot;cat&quot; comes before &quot;sat&quot;. Looking back is always allowed.">"sat" looks at "cat"</li>
              <li data-bucket="masked" data-why="&quot;mat&quot; is the last word. It is in the future for &quot;cat&quot;.">"cat" looks at "mat"</li>
              <li data-bucket="seen" data-why="A token can always look at itself. The diagonal is not masked.">"on" looks at "on"</li>
              <li data-bucket="masked" data-why="&quot;cat&quot; is the second token. It is in the future for the first token.">the first "the" looks at "cat"</li>
              <li data-bucket="seen" data-why="The first &quot;the&quot; is the very first token. Every later token can see it.">"mat" looks at the first "the"</li>
              <li data-bucket="masked" data-why="&quot;sat&quot; comes after &quot;cat&quot;, so it is above the diagonal.">"cat" looks at "sat"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. In Part 1, check that every cell above the diagonal has weight 0.00, and every row adds up to 1.</li>
            <li>In Part 1, change <code>k=1</code> to <code>k=2</code>. Now each token can also see one future token. This would let the model cheat in training.</li>
            <li>In Part 1, remove the mask: set <code>masked = scores</code>. Compare the weights. "the" now spreads its attention over all four tokens.</li>
            <li>Add a fifth token <code>"the"</code> to <code>tokens</code> in Part 1, and <code>"mat"</code> to <code>targets</code> in Part 2. The mask grows to 5 × 5 by itself.</li>
            <li>In Part 3, use <code>mask[2]</code> instead of <code>mask[1]</code>. Now only the last score is hidden.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The causal mask sets every future score to -∞ before softmax, so future tokens get weight 0. This lets the model train on every position of a sentence at once, without seeing the answers.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Masked (causal) self-attention on "the cat sat on".
        import numpy as np

        # ── Part 1: masked self-attention on 4 tokens ──
        print("== Part 1: the causal mask on 'the cat sat on' ==")
        np.random.seed(42)
        tokens = ["the", "cat", "sat", "on"]
        n, d_k = len(tokens), 4

        # Random Q and K stand in for the learned projections.
        Q = np.random.randn(n, d_k)
        K = np.random.randn(n, d_k)
        V = np.random.randn(n, d_k)

        scores = Q @ K.T / np.sqrt(d_k)

        # The causal mask: True above the diagonal means "this is the future".
        future = np.triu(np.ones((n, n), dtype=bool), k=1)
        masked = np.where(future, -np.inf, scores)     # hide the future

        def softmax(x):
            e = np.exp(x - x.max(axis=-1, keepdims=True))   # exp(-inf) = 0
            return e / e.sum(axis=-1, keepdims=True)

        weights = softmax(masked)
        out = weights @ V

        def show(title, m):
            print(title)
            print(" " * 6 + "".join(f"{t:>7}" for t in tokens))
            for t, row in zip(tokens, m):
                print(f"{t:>5} " + "".join(f"{x:7.2f}" for x in row))
            print()

        show("Scores after the mask (rows look at columns):", masked)
        show("Weights after softmax:", weights)
        print("Each row adds up to:", weights.sum(axis=1).round(2))

        # ── Part 2: one training pass gives an example at every position ──
        print("\n== Part 2: one pass, many training examples ==")
        targets = ["cat", "sat", "on", "the"]
        for i, t in enumerate(targets):
            print(f"position {i}: sees {tokens[:i + 1]} -> should predict '{t}'")

        # ── Part 3: the mask as 0s and 1s, and one row by hand ──
        print("\n== Part 3: mask one row by hand ==")
        n = 4
        mask = np.triu(np.ones((n, n)), k=1)   # 1 above the diagonal = future
        print(mask)

        scores = np.array([2.0, 1.0, 3.0, 0.5])      # the second row: "cat"
        scores[mask[1] == 1] = -np.inf               # hide the future
        weights = np.exp(scores) / np.exp(scores).sum()
        print(weights.round(2))
      PYTHON
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">How a Transformer Predicts the Next Word</h1>
        </div>
        <p class="lc-lead">The decoder stack gives one vector for each token. But we want a word, not a vector. In this lesson you will follow the last steps: the final hidden state, the output layer that makes <strong>logits</strong>, softmax, and <strong>sampling</strong>. Then you will see the <strong>generation loop</strong> that repeats these steps to write whole sentences.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="The context the cat sat on the goes through the transformer. The final hidden state of the last token is multiplied by the output layer to give one logit per word: mat 2.0, floor 1.0, sofa 0.5, car minus 1.0. Softmax turns these into probabilities 0.61, 0.22, 0.14 and 0.03. One word, mat, is sampled and added to the context, and the loop runs again.">
            <defs><marker id="tf15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="26" fill="#9b99b8">Context: "the cat sat on the"</text>
              <rect x="10" y="50" width="130" height="140" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="75" y="74" font-weight="700" fill="#c4b5fd">1. Hidden state</text>
              <text x="75" y="100">vector of the</text>
              <text x="75" y="118">last token</text>
              <text x="75" y="144" fill="#9b99b8" font-size="11.5">d_model numbers</text>
              <text x="75" y="162" fill="#9b99b8" font-size="11.5">(768 in GPT-2)</text>
              <line x1="142" y1="120" x2="160" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf15a)"/>
              <rect x="164" y="50" width="134" height="140" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="231" y="74" font-weight="700" fill="#93c5fd">2. Output layer</text>
              <text x="231" y="100">h × W_out</text>
              <text x="231" y="126" fill="#9b99b8" font-size="11.5">d_model → vocab</text>
              <text x="231" y="144" fill="#9b99b8" font-size="11.5">one score</text>
              <text x="231" y="162" fill="#9b99b8" font-size="11.5">per word</text>
              <line x1="300" y1="120" x2="318" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf15a)"/>
              <rect x="322" y="50" width="128" height="140" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="386" y="74" font-weight="700" fill="#fcd34d">3. Logits</text>
              <g text-anchor="start"><text x="342" y="102">mat</text><text x="342" y="124">floor</text><text x="342" y="146">sofa</text><text x="342" y="168">car</text></g>
              <g text-anchor="end"><text x="430" y="102">2.0</text><text x="430" y="124">1.0</text><text x="430" y="146">0.5</text><text x="430" y="168">-1.0</text></g>
              <line x1="452" y1="120" x2="470" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf15a)"/>
              <rect x="474" y="50" width="140" height="140" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="544" y="74" font-weight="700" fill="#67e8f9">4. Softmax</text>
              <g text-anchor="start" font-size="11.5"><text x="484" y="102">mat</text><text x="484" y="124">floor</text><text x="484" y="146">sofa</text><text x="484" y="168">car</text></g>
              <rect x="522" y="92" width="49" height="12" rx="2" fill="#22d3ee"/>
              <rect x="522" y="114" width="18" height="12" rx="2" fill="#22d3ee"/>
              <rect x="522" y="136" width="11" height="12" rx="2" fill="#22d3ee"/>
              <rect x="522" y="158" width="3" height="12" rx="2" fill="#22d3ee"/>
              <g text-anchor="end" font-size="11.5"><text x="606" y="102">0.61</text><text x="606" y="124">0.22</text><text x="606" y="146">0.14</text><text x="606" y="168">0.03</text></g>
              <line x1="616" y1="120" x2="634" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf15a)"/>
              <rect x="638" y="50" width="112" height="140" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="694" y="74" font-weight="700" fill="#6ee7b7">5. Sample</text>
              <text x="694" y="100" fill="#9b99b8" font-size="11.5">roll a weighted</text>
              <text x="694" y="118" fill="#9b99b8" font-size="11.5">dice</text>
              <rect x="660" y="134" width="68" height="34" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="694" y="156" font-weight="700" fill="#6ee7b7">mat</text>
              <path d="M694,192 L694,240 L75,240 L75,194" fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#tf15a)"/>
              <rect x="190" y="228" width="380" height="24" rx="6" fill="#1f1f44"/>
              <text x="380" y="245" fill="#fcd34d">add "mat" to the context and run the model again</text>
              <text x="380" y="276" font-size="11.5" fill="#9b99b8">A real vocabulary has tens of thousands of words. Only four are shown here.</text>
            </g>
          </svg>
          <figcaption>One step of generation. The logits and probabilities are the worked example in this lesson. The dashed arrow is the generation loop.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: the final hidden state</h3>
          <p>The input goes through every decoder block. At the end, each token has a vector of size <code>d_model</code>. This vector is called the <strong>final hidden state</strong>.</p>
          <p>To predict the next word, we use only the hidden state of the <strong>last</strong> token. Thanks to masked attention, that last token has already looked at every earlier token. So its vector holds the meaning of the whole context.</p>
          <p>Pre-norm models, such as GPT-2, apply one final layer norm here, before the output layer.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 2 and 3: the output layer makes logits</h3>
          <p>The <strong>output layer</strong> is one linear layer. Its weight matrix <code>W_out</code> has shape (d_model, vocab_size). It turns the hidden state into one score per word in the vocabulary.</p>
          <p>These raw scores are called <strong>logits</strong>. A logit can be any number, positive or negative. A higher logit means "this word fits better".</p>
          <table class="lc-table">
            <thead><tr><th>Model</th><th>Hidden state</th><th>W_out shape</th><th>Logits</th></tr></thead>
            <tbody>
              <tr><td>Starter code</td><td>8 numbers</td><td>(8, 9)</td><td>9 scores</td></tr>
              <tr><td>GPT-2 small</td><td>768 numbers</td><td>(768, 50,257)</td><td>50,257 scores</td></tr>
            </tbody>
          </table>
          <p>Many models reuse the embedding table as the output layer. This is called <strong>weight tying</strong>. A word gets a high logit when the hidden state points in a similar direction to that word's embedding. GPT-2 does this, and so does the starter code.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 4 and 5: softmax, then sampling</h3>
          <p><strong>Softmax</strong> turns logits into probabilities. They are all between 0 and 1, and they add up to 1. Here is the worked example from the diagram:</p>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Logit</th><th>Temperature 1.0</th><th>Temperature 0.5</th><th>Temperature 2.0</th></tr></thead>
            <tbody>
              <tr><td>mat</td><td>2.0</td><td>0.61</td><td>0.84</td><td>0.43</td></tr>
              <tr><td>floor</td><td>1.0</td><td>0.22</td><td>0.11</td><td>0.26</td></tr>
              <tr><td>sofa</td><td>0.5</td><td>0.14</td><td>0.04</td><td>0.21</td></tr>
              <tr><td>car</td><td>-1.0</td><td>0.03</td><td>0.00</td><td>0.10</td></tr>
            </tbody>
          </table>
          <p><strong>Temperature</strong> divides the logits before softmax. A low temperature makes the top word even more likely. A high temperature makes the choices more even, so the text is more surprising.</p>
          <p>Then the model must pick one word. There are a few common ways:</p>
          <ul class="lc-list">
            <li><strong>Greedy:</strong> always take the word with the highest probability. Here that is "mat".</li>
            <li><strong>Sampling:</strong> pick at random, using the probabilities as weights. "mat" wins 61% of the time, "floor" 22% of the time.</li>
            <li><strong>Top-k or top-p:</strong> first drop the unlikely words, then sample from the rest. This avoids strange choices like "car".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The output step in PyTorch</h3>
          <p>Part 2 in the code editor below does the output step in PyTorch. Its hidden state has 4 numbers, and the vocabulary has 6 words. The output layer is <code>nn.Linear(4, 6, bias=False)</code>.</p>
          <p>The layer gives 6 logits, one per word. With random weights, the probabilities are almost even: from 0.12 to 0.2. <code>torch.multinomial</code> samples one word ID. After training, the probabilities would be much more uneven. PyTorch does not run in the browser, so copy Part 2 to your own computer to run it. Part 1 uses NumPy for the same steps.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the generation loop</h3>
          <p>These steps follow the starter code. Click through to see one full loop.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Start">The context is just "the".</li>
              <li data-kind="tool" data-label="Run the model">The transformer reads "the". The hidden state of the last token goes through W_out, giving 9 logits.</li>
              <li data-kind="result" data-label="Softmax">cat = 1.00. Sampling picks "cat". The context is now "the cat".</li>
              <li data-kind="thought" data-label="Loop again">The model runs again on the longer context. It predicts "sat", then "on", then "the".</li>
              <li data-kind="check" data-label="Context matters">Now the last word is "the" again. But "on" is in the context, so the model predicts "mat", not "cat".</li>
              <li data-kind="warn" data-label="Stop rule">The loop stops when it outputs "." or reaches the length limit. Without a stop rule, it would run forever.</li>
              <li data-kind="answer" data-label="Output">"the cat sat on the mat ."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the starter code has a real output layer, softmax and sampling. The transformer itself is faked by <code>fake_transformer</code>, which returns a hidden state close to a sensible next word. Part 2 is the PyTorch output step.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, each line shows the context and the top 3 probabilities.</li>
            <li>In Part 1, change <code>TEMPERATURE</code> to <code>2.0</code>. The choices get more random, and the sentence can stop making sense.</li>
            <li>In Part 1, change the start to <code>context = ["the", "dog"]</code>. What does it write now?</li>
            <li>Make Part 1 greedy: replace the sampling line with <code>next_id = int(np.argmax(probs))</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The last token's hidden state goes through one linear layer to give a logit for every word. Softmax turns logits into probabilities, and the model samples one word. Generation is this step in a loop, with each new word added to the input.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # From the final hidden state to the next word, then the generation loop.
        import numpy as np

        # ── Part 1: output layer, softmax, sampling, in a loop ──
        print("== Part 1: the generation loop ==")
        np.random.seed(42)
        vocab = ["the", "cat", "sat", "on", "mat", ".", "dog", "ran", "sofa"]
        d_model = 8
        E = np.random.randn(len(vocab), d_model)   # embedding table (9 words x 8 numbers)
        W_out = E.T                                # output projection (8 x 9), shared with E

        def fake_transformer(context):
            """Stands in for the real stack. Returns the final hidden state of the last token."""
            last = context[-1]
            if last == "the":
                goal = "mat" if "on" in context else "cat"   # the whole context matters
            else:
                goal = {"cat": "sat", "sat": "on", "on": "the", "mat": ".", "dog": "ran", "ran": ".", "sofa": "."}[last]
            return 1.5 * E[vocab.index(goal)] + 0.3 * np.random.randn(d_model)

        def softmax(x):
            e = np.exp(x - x.max())
            return e / e.sum()

        TEMPERATURE = 1.0   # lower = safer choices, higher = more random
        context = ["the"]
        while context[-1] != "." and len(context) < 10:
            h = fake_transformer(context)           # shape (8,)
            logits = h @ W_out                      # shape (9,): one score per word
            probs = softmax(logits / TEMPERATURE)   # scores -> probabilities that add up to 1
            top = np.argsort(probs)[::-1][:3]
            print(" ".join(context).ljust(22), " ".join(f"{vocab[i]}={probs[i]:.2f}" for i in top))
            next_id = np.random.choice(len(vocab), p=probs)   # sample one word
            context.append(vocab[next_id])

        print("\nGenerated:", " ".join(context))

        # ── Part 2: the output step in PyTorch (run this part on your own computer) ──
        print("\n== Part 2: the output step in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 2 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            h = torch.randn(1, 4)                      # final hidden state of the last token
            lm_head = nn.Linear(4, 6, bias=False)      # d_model = 4, vocabulary = 6 words
            logits = lm_head(h)                        # one score per word
            probs = torch.softmax(logits, dim=-1)
            next_id = torch.multinomial(probs, num_samples=1)
            print(logits.shape)                        # torch.Size([1, 6])
            print([round(p, 2) for p in probs[0].tolist()])
            print(next_id.item())                      # the sampled word ID
      PYTHON
    },
    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Encoder-Only vs Decoder-Only Models (BERT vs GPT)</h1>
        </div>
        <p class="lc-lead">The original transformer had an encoder and a decoder. Soon, researchers found that each half is useful on its own. <strong>BERT</strong> keeps only the encoder. <strong>GPT</strong> keeps only the decoder. <strong>T5</strong> keeps both. In this lesson you will compare how each one is trained, what each one can see, and which jobs each one is good at.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Three model families side by side. BERT is encoder-only: every token sees every other token, and it learns by filling in masked words. GPT is decoder-only: each token sees only earlier tokens, and it learns by predicting the next token. T5 is encoder-decoder: a full encoder and a causal decoder, and it learns by turning input text into output text.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="236" height="270" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="128" y="36" font-weight="700" font-size="14" fill="#93c5fd">BERT</text>
              <text x="128" y="56" font-size="11.5" fill="#9b99b8">encoder-only</text>
              <g fill="#3b82f6" stroke="#1f1f44">
                <rect x="92" y="70" width="18" height="18"/><rect x="110" y="70" width="18" height="18"/><rect x="128" y="70" width="18" height="18"/><rect x="146" y="70" width="18" height="18"/>
                <rect x="92" y="88" width="18" height="18"/><rect x="110" y="88" width="18" height="18"/><rect x="128" y="88" width="18" height="18"/><rect x="146" y="88" width="18" height="18"/>
                <rect x="92" y="106" width="18" height="18"/><rect x="110" y="106" width="18" height="18"/><rect x="128" y="106" width="18" height="18"/><rect x="146" y="106" width="18" height="18"/>
                <rect x="92" y="124" width="18" height="18"/><rect x="110" y="124" width="18" height="18"/><rect x="128" y="124" width="18" height="18"/><rect x="146" y="124" width="18" height="18"/>
              </g>
              <text x="128" y="162" font-size="11.5" fill="#9b99b8">sees both sides</text>
              <text x="128" y="192" font-weight="700">Fill in the [MASK]</text>
              <text x="128" y="214" font-size="11.5">the [MASK] sat → cat</text>
              <text x="128" y="246" font-size="11.5" fill="#93c5fd">Good for: classify,</text>
              <text x="128" y="264" font-size="11.5" fill="#93c5fd">search, embeddings</text>
              <rect x="262" y="10" width="236" height="270" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="36" font-weight="700" font-size="14" fill="#f9a8d4">GPT</text>
              <text x="380" y="56" font-size="11.5" fill="#9b99b8">decoder-only</text>
              <g stroke="#1f1f44">
                <rect x="344" y="70" width="18" height="18" fill="#ec4899"/><rect x="362" y="70" width="18" height="18" fill="#3b1d3a"/><rect x="380" y="70" width="18" height="18" fill="#3b1d3a"/><rect x="398" y="70" width="18" height="18" fill="#3b1d3a"/>
                <rect x="344" y="88" width="18" height="18" fill="#ec4899"/><rect x="362" y="88" width="18" height="18" fill="#ec4899"/><rect x="380" y="88" width="18" height="18" fill="#3b1d3a"/><rect x="398" y="88" width="18" height="18" fill="#3b1d3a"/>
                <rect x="344" y="106" width="18" height="18" fill="#ec4899"/><rect x="362" y="106" width="18" height="18" fill="#ec4899"/><rect x="380" y="106" width="18" height="18" fill="#ec4899"/><rect x="398" y="106" width="18" height="18" fill="#3b1d3a"/>
                <rect x="344" y="124" width="18" height="18" fill="#ec4899"/><rect x="362" y="124" width="18" height="18" fill="#ec4899"/><rect x="380" y="124" width="18" height="18" fill="#ec4899"/><rect x="398" y="124" width="18" height="18" fill="#ec4899"/>
              </g>
              <text x="380" y="162" font-size="11.5" fill="#9b99b8">sees only the past</text>
              <text x="380" y="192" font-weight="700">Predict the next token</text>
              <text x="380" y="214" font-size="11.5">the cat sat → on</text>
              <text x="380" y="246" font-size="11.5" fill="#f9a8d4">Good for: chat,</text>
              <text x="380" y="264" font-size="11.5" fill="#f9a8d4">writing, code</text>
              <rect x="514" y="10" width="236" height="270" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="632" y="36" font-weight="700" font-size="14" fill="#6ee7b7">T5</text>
              <text x="632" y="56" font-size="11.5" fill="#9b99b8">encoder-decoder</text>
              <g fill="#3b82f6" stroke="#1f1f44">
                <rect x="560" y="79" width="18" height="18"/><rect x="578" y="79" width="18" height="18"/><rect x="596" y="79" width="18" height="18"/>
                <rect x="560" y="97" width="18" height="18"/><rect x="578" y="97" width="18" height="18"/><rect x="596" y="97" width="18" height="18"/>
                <rect x="560" y="115" width="18" height="18"/><rect x="578" y="115" width="18" height="18"/><rect x="596" y="115" width="18" height="18"/>
              </g>
              <text x="626" y="110" font-size="13" fill="#9b99b8">+</text>
              <g stroke="#1f1f44">
                <rect x="650" y="79" width="18" height="18" fill="#ec4899"/><rect x="668" y="79" width="18" height="18" fill="#3b1d3a"/><rect x="686" y="79" width="18" height="18" fill="#3b1d3a"/>
                <rect x="650" y="97" width="18" height="18" fill="#ec4899"/><rect x="668" y="97" width="18" height="18" fill="#ec4899"/><rect x="686" y="97" width="18" height="18" fill="#3b1d3a"/>
                <rect x="650" y="115" width="18" height="18" fill="#ec4899"/><rect x="668" y="115" width="18" height="18" fill="#ec4899"/><rect x="686" y="115" width="18" height="18" fill="#ec4899"/>
              </g>
              <text x="632" y="162" font-size="11.5" fill="#9b99b8">full in, causal out</text>
              <text x="632" y="192" font-weight="700">Text in, text out</text>
              <text x="632" y="214" font-size="11.5">translate: cat → chat</text>
              <text x="632" y="246" font-size="11.5" fill="#6ee7b7">Good for: translate,</text>
              <text x="632" y="264" font-size="11.5" fill="#6ee7b7">summarise</text>
            </g>
          </svg>
          <figcaption>The small grids are attention patterns. A coloured cell means "this row's token can see this column's token". Dark cells are masked.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three ways to use the transformer</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Encoder-only</th><th>Decoder-only</th><th>Encoder-decoder</th></tr></thead>
            <tbody>
              <tr><td>Famous example</td><td>BERT (Google, 2018)</td><td>GPT (OpenAI, 2018)</td><td>T5 (Google, 2019)</td></tr>
              <tr><td>Attention</td><td>Bidirectional (no mask)</td><td>Causal mask</td><td>Full encoder, causal decoder, plus cross-attention</td></tr>
              <tr><td>Training task</td><td>Masked language modelling</td><td>Next-token prediction</td><td>Text-to-text (input text to output text)</td></tr>
              <tr><td>Output</td><td>One vector per token</td><td>New text, one token at a time</td><td>New text, based on an input text</td></tr>
            </tbody>
          </table>
          <p><strong>Bidirectional</strong> means a token can see the words on its left and on its right. <strong>Causal</strong> means a token sees only the words on its left.</p>
        </div>
        <div class="lc-card">
          <h3>BERT: masked language modelling</h3>
          <p>BERT learns with a fill-in-the-blank game. This is called <strong>masked language modelling</strong> (MLM).</p>
          <ol class="lc-list">
            <li>Take a sentence: "the cat sat on the mat because it was warm".</li>
            <li>Hide about 15% of the tokens. Replace them with a special <code>[MASK]</code> token.</li>
            <li>The model must guess the hidden tokens. The loss uses only those positions.</li>
          </ol>
          <p>Example: "the [MASK] sat on the mat because it [MASK] warm". To guess "was", the model can use "it" on the left and "warm" on the right. Seeing both sides gives BERT a deep understanding of each word in its context.</p>
          <p>But BERT cannot easily write new text. It was never trained to continue a sentence from left to right. So BERT-style models are used to <strong>understand</strong> text: sort emails into groups, find names in text, or turn sentences into vectors for search.</p>
        </div>
        <div class="lc-card">
          <h3>GPT: next-token prediction</h3>
          <p>GPT learns by predicting the next token at every position, with a causal mask. You saw this earlier in this course.</p>
          <p>Every token in the text is a training example. No labels are needed, so the model can learn from huge amounts of plain text. And because it always predicts the next token, it can <strong>generate</strong>: write a word, add it, and write the next one.</p>
          <p>Most of today's large chat models are decoder-only. Training them is simple, it scales well, and almost any task can be written as "continue this text".</p>
        </div>
        <div class="lc-card">
          <h3>T5: encoder-decoder</h3>
          <p>T5 means "Text-to-Text Transfer Transformer". It keeps the original design. The encoder reads the input with full attention. The decoder writes the output with a causal mask and cross-attention.</p>
          <p>T5 treats every task as text in, text out. For example, the input "translate English to German: The cat is black." gives the German sentence as output. The input "summarize: ..." gives a summary (T5 uses the US spelling in this prefix).</p>
          <p>T5 is trained with <strong>span corruption</strong>. It hides whole groups of words and replaces each group with a special token. Then the decoder writes the missing groups. Encoder-decoder models are still common for translation and speech. Whisper, a speech-to-text model, is one example.</p>
        </div>
        <div class="lc-card">
          <h3>Using each type with Hugging Face</h3>
          <p>The Hugging Face <code>transformers</code> library has a <code>pipeline</code> for each job. Part 5 in the code editor below uses a fill-mask pipeline with BERT and a text-generation pipeline with GPT-2. It downloads the models, so it cannot run in the browser editor. Copy Part 5 to your own computer to run it.</p>
          <p>The BERT line prints its best guess for the hidden word, a single word that fits the blank. The GPT-2 line prints the prompt followed by a few new words. The GPT-2 words can change each time you run it, because it samples. Check the current Hugging Face docs for model names and options.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which model type fits the job?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Pick the best type of model for each task.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="enc" data-label="Encoder-only (BERT)"></div>
              <div data-sorter-target="bucket" data-bucket="dec" data-label="Decoder-only (GPT)"></div>
              <div data-sorter-target="bucket" data-bucket="encdec" data-label="Encoder-decoder (T5)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="enc" data-why="This only needs to understand the text and give one label. No new text is written.">Sort customer reviews into positive and negative</li>
              <li data-bucket="dec" data-why="A chat assistant writes new text, one token at a time. That is next-token prediction.">A chat assistant that answers questions</li>
              <li data-bucket="encdec" data-why="The input is a full sentence in one language. The output is a new sentence in another. This was the original job of the encoder-decoder.">Translate a sentence from English to French</li>
              <li data-bucket="enc" data-why="Search needs one vector per sentence. Bidirectional encoders are good at this.">Turn sentences into vectors for a search engine</li>
              <li data-bucket="dec" data-why="Writing code means continuing text from left to right.">Finish a line of code as you type</li>
              <li data-bucket="encdec" data-why="The model reads a whole document, then writes a shorter text about it. That is text in, text out.">Summarise a long news article</li>
            </ul>
          </div>
          <p>In practice, large decoder-only models can also translate and summarise well. The buckets show the classic best fit.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The starter code turns the running sentence into training examples for all three model types. Part 1 is BERT, Part 2 is GPT and Part 3 is T5. Part 4 shows what one word can see. Part 5 uses real models with Hugging Face.</p>
          <ol class="lc-list">
            <li>Run it. Compare what BERT must guess in Part 1, what GPT must predict in Part 2, and what the T5 decoder must write in Part 3.</li>
            <li>In Part 1, change <code>MASK_RATE</code> to <code>0.4</code>. More tokens become <code>[MASK]</code>, so the game gets harder.</li>
            <li>In Part 3, change <code>spans</code> to <code>[(1, 2), (5, 7)]</code>. Which words does T5 now have to write?</li>
            <li>In Part 4, change <code>tokens.index("it")</code> to <code>tokens.index("cat")</code>. How many tokens can GPT's "cat" see?</li>
            <li>On your own computer, run Part 5 with a different sentence, such as "The dog ran to the [MASK]."</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> BERT sees both sides and learns by filling in masked words, so it is best at understanding text. GPT sees only the past and learns by predicting the next token, so it can generate. T5 uses both halves to turn one text into another.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # How BERT, GPT and T5 turn the same sentence into training examples.
        import numpy as np

        np.random.seed(42)
        tokens = "the cat sat on the mat because it was warm".split()
        n = len(tokens)

        # ── Part 1: BERT: masked language modelling (MLM) ──
        # Hide about 15% of tokens.
        print("== Part 1: BERT fills in the blanks ==")
        MASK_RATE = 0.15
        num_masked = max(1, round(MASK_RATE * n))
        hidden = sorted(np.random.choice(n, size=num_masked, replace=False))
        bert_input = ["[MASK]" if i in hidden else t for i, t in enumerate(tokens)]
        print("BERT input :", " ".join(bert_input))
        print("BERT must guess:", {int(i): tokens[i] for i in hidden})

        # ── Part 2: GPT: next-token prediction ──
        # Every position predicts the token after it.
        print("\n== Part 2: GPT predicts the next token ==")
        print(f"GPT examples (first 4 of {n - 1}):")
        for i in range(4):
            print(f"  {' '.join(tokens[:i + 1]):<16} -> {tokens[i + 1]}")

        # ── Part 3: T5: span corruption ──
        # Whole spans are swapped for sentinel tokens.
        print("\n== Part 3: T5 span corruption ==")
        spans = [(2, 4), (9, 10)]          # hide "sat on" and "warm"
        t5_in, t5_out, start = [], [], 0
        for k, (a, b) in enumerate(spans):
            t5_in += tokens[start:a] + [f"<extra_id_{k}>"]
            t5_out += [f"<extra_id_{k}>"] + tokens[a:b]
            start = b
        t5_in += tokens[start:]
        t5_out += [f"<extra_id_{len(spans)}>"]   # a final sentinel marks the end
        print("T5 encoder input :", " ".join(t5_in))
        print("T5 decoder target:", " ".join(t5_out))

        # ── Part 4: who can the word "it" look at? ──
        print("\n== Part 4: what 'it' can see ==")
        pos = tokens.index("it")
        bert_sees = tokens                 # bidirectional: every token
        gpt_sees = tokens[:pos + 1]        # causal: itself and earlier tokens only
        print(f"'{tokens[pos]}' in BERT sees {len(bert_sees)} tokens:", " ".join(bert_sees))
        print(f"'{tokens[pos]}' in GPT  sees {len(gpt_sees)} tokens:", " ".join(gpt_sees))

        # ── Part 5: BERT and GPT-2 with Hugging Face (run this part on your own computer) ──
        # On your computer, first run:  pip install transformers torch
        # This part downloads two models the first time it runs.
        print("\n== Part 5: BERT and GPT-2 with Hugging Face ==")
        try:
            from transformers import pipeline
        except ImportError:
            pipeline = None
        if pipeline is None:
            print("Part 5 uses the transformers library, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            fill = pipeline("fill-mask", model="google-bert/bert-base-uncased")
            print(fill("The cat sat on the [MASK].")[0]["token_str"])

            gen = pipeline("text-generation", model="openai-community/gpt2")
            print(gen("The cat sat on the", max_new_tokens=5)[0]["generated_text"])
      PYTHON
    },
    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Vision Transformers (ViT)</h1>
        </div>
        <p class="lc-lead">A transformer only needs a sequence of vectors, so it can work on pictures too. The <strong>Vision Transformer</strong> (<strong>ViT</strong>) cuts an image into patches and treats each patch like a word. In this lesson you will build those patch tokens, add a class token and positions, and compare ViTs with CNNs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="An image is cut into a grid of 9 patches. The patches are put in a row, p1 to p9. Each patch has 768 numbers. One shared patch embedding layer turns each patch into a token. A CLS token is added at the front and a position vector is added to every token. The 10 tokens go through a transformer encoder. The CLS output goes to a classifier that says cat.">
            <defs><marker id="tf17a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="74" y="28" font-weight="700" fill="#93c5fd">Image</text>
              <g fill="#27274e" stroke="#3b82f6">
                <rect x="20" y="40" width="36" height="36"/><rect x="56" y="40" width="36" height="36"/><rect x="92" y="40" width="36" height="36"/>
                <rect x="20" y="76" width="36" height="36"/><rect x="56" y="76" width="36" height="36"/><rect x="92" y="76" width="36" height="36"/>
                <rect x="20" y="112" width="36" height="36"/><rect x="56" y="112" width="36" height="36"/><rect x="92" y="112" width="36" height="36"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="38" y="62">1</text><text x="74" y="62">2</text><text x="110" y="62">3</text>
                <text x="38" y="98">4</text><text x="74" y="98">5</text><text x="110" y="98">6</text>
                <text x="38" y="134">7</text><text x="74" y="134">8</text><text x="110" y="134">9</text>
              </g>
              <line x1="134" y1="94" x2="164" y2="94" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf17a)"/>
              <text x="349" y="62" font-weight="700" fill="#c4b5fd">Patches in reading order</text>
              <g fill="#1f1f44" stroke="#8b5cf6">
                <rect x="172" y="76" width="34" height="36" rx="5"/><rect x="212" y="76" width="34" height="36" rx="5"/><rect x="252" y="76" width="34" height="36" rx="5"/>
                <rect x="292" y="76" width="34" height="36" rx="5"/><rect x="332" y="76" width="34" height="36" rx="5"/><rect x="372" y="76" width="34" height="36" rx="5"/>
                <rect x="412" y="76" width="34" height="36" rx="5"/><rect x="452" y="76" width="34" height="36" rx="5"/><rect x="492" y="76" width="34" height="36" rx="5"/>
              </g>
              <g font-size="11.5">
                <text x="189" y="98">p1</text><text x="229" y="98">p2</text><text x="269" y="98">p3</text>
                <text x="309" y="98">p4</text><text x="349" y="98">p5</text><text x="389" y="98">p6</text>
                <text x="429" y="98">p7</text><text x="469" y="98">p8</text><text x="509" y="98">p9</text>
              </g>
              <text x="349" y="132" font-size="11.5" fill="#9b99b8">each patch: 16 × 16 × 3 = 768 numbers</text>
              <line x1="532" y1="94" x2="562" y2="94" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf17a)"/>
              <rect x="566" y="62" width="176" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="654" y="88" font-weight="700" fill="#6ee7b7">Patch embedding</text>
              <text x="654" y="108" font-size="11">one matrix for all patches</text>
              <path d="M654,128 L654,164 L237,164 L237,190" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf17a)"/>
              <rect x="20" y="196" width="38" height="34" rx="5" fill="#27274e" stroke="#ec4899"/><text x="39" y="217" font-size="11" fill="#f9a8d4">CLS</text>
              <g fill="#27274e" stroke="#10b981">
                <rect x="64" y="196" width="38" height="34" rx="5"/><rect x="108" y="196" width="38" height="34" rx="5"/><rect x="152" y="196" width="38" height="34" rx="5"/>
                <rect x="196" y="196" width="38" height="34" rx="5"/><rect x="240" y="196" width="38" height="34" rx="5"/><rect x="284" y="196" width="38" height="34" rx="5"/>
                <rect x="328" y="196" width="38" height="34" rx="5"/><rect x="372" y="196" width="38" height="34" rx="5"/><rect x="416" y="196" width="38" height="34" rx="5"/>
              </g>
              <g font-size="11">
                <text x="83" y="217">t1</text><text x="127" y="217">t2</text><text x="171" y="217">t3</text>
                <text x="215" y="217">t4</text><text x="259" y="217">t5</text><text x="303" y="217">t6</text>
                <text x="347" y="217">t7</text><text x="391" y="217">t8</text><text x="435" y="217">t9</text>
              </g>
              <g font-size="10.5" fill="#fcd34d">
                <text x="39" y="248">+p0</text><text x="83" y="248">+p1</text><text x="127" y="248">+p2</text><text x="171" y="248">+p3</text><text x="215" y="248">+p4</text>
                <text x="259" y="248">+p5</text><text x="303" y="248">+p6</text><text x="347" y="248">+p7</text><text x="391" y="248">+p8</text><text x="435" y="248">+p9</text>
              </g>
              <text x="237" y="276" font-size="11.5" fill="#9b99b8">add a learned position vector to every token</text>
              <line x1="460" y1="213" x2="490" y2="213" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf17a)"/>
              <rect x="494" y="186" width="124" height="54" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="556" y="208" font-weight="700" fill="#c4b5fd">Transformer</text>
              <text x="556" y="227" font-size="11">encoder</text>
              <line x1="620" y1="213" x2="644" y2="213" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf17a)"/>
              <rect x="648" y="186" width="100" height="54" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="698" y="208" font-weight="700" fill="#f9a8d4">CLS output</text>
              <text x="698" y="227" font-size="11">→ "cat"</text>
            </g>
          </svg>
          <figcaption>A ViT reads an image like a sentence. Each patch becomes one token. The CLS token collects a summary of the whole image.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>An image as a sentence of patches</h3>
          <p>A sentence is a list of tokens. A ViT makes an image into a list too. It cuts the image into small squares called <strong>patches</strong>. Each patch plays the role of one word.</p>
          <p>The first ViT paper was "An Image is Worth 16x16 Words" (Dosovitskiy and others, Google, 2020). Its title gives the idea. Take a 224 × 224 colour image and cut it into 16 × 16 patches:</p>
          <ul class="lc-list">
            <li>224 ÷ 16 = 14 patches across and 14 patches down.</li>
            <li>14 × 14 = <strong>196 patches</strong>, so 196 tokens.</li>
            <li>Each patch has 16 × 16 pixels and 3 colours (red, green, blue). So it holds 16 × 16 × 3 = <strong>768 numbers</strong>.</li>
          </ul>
          <p>The patches are put in a row in reading order: left to right, then top to bottom. This process is called <strong>flattening</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Patch embedding, class token and position</h3>
          <p>Next, the ViT turns patches into vectors of size d_model. This is the <strong>patch embedding</strong>. It is one learned matrix, the same for every patch. For a text model, the embedding table does this job.</p>
          <p>Two more steps make the input ready:</p>
          <ol class="lc-list">
            <li><strong>Class token.</strong> The ViT puts one extra learned vector at the front, called <strong>[CLS]</strong>. It is not a patch. Through attention, it collects information from all the patches. At the end, only the [CLS] output goes to the classifier.</li>
            <li><strong>Position.</strong> Attention does not know order. So the ViT adds a learned position vector to each token. Without it, a shuffled image would look the same to the model.</li>
          </ol>
          <p>After that, it is a normal transformer encoder. There is no mask, so every patch can look at every other patch. The ViT-Base model uses 12 encoder blocks and d_model = 768.</p>
          <p>In PyTorch, a convolution with kernel size 16 and stride 16 cuts and embeds the patches in one step. Part 3 in the code editor below shows this. It runs on your own computer, because PyTorch does not run in the browser.</p>
          <p>The final shape is (1, 197, 768). That is 1 image, 196 patch tokens plus 1 [CLS] token, and 768 numbers per token. Part 1 in the code editor does the same steps in NumPy on a tiny image. Part 2 counts the tokens for a real 224 × 224 image.</p>
        </div>
        <div class="lc-card">
          <h3>ViT compared to a CNN</h3>
          <p>A <strong>CNN</strong> (convolutional neural network) slides small filters over the image. ViTs and CNNs see images in very different ways.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>CNN</th><th>Vision Transformer</th></tr></thead>
            <tbody>
              <tr><td>What it looks at first</td><td>Small nearby areas, such as 3 × 3 pixels</td><td>All patches, from the first layer</td></tr>
              <tr><td>Built-in ideas about images</td><td>Strong: nearby pixels belong together</td><td>Weak: it must learn this from data</td></tr>
              <tr><td>Data needed</td><td>Works well on smaller datasets</td><td>Needs a lot of data or pre-training</td></tr>
              <tr><td>Very large data</td><td>Improves too</td><td>Benefits a lot from more data</td></tr>
              <tr><td>Cost as images grow</td><td>Grows with the number of pixels</td><td>Attention grows with the number of patches squared</td></tr>
            </tbody>
          </table>
          <p>The original paper found that ViTs did worse than strong CNNs on mid-sized data. With very large pre-training data, they matched or beat them. Today, many image and multimodal models use a ViT as their image part. Check current model docs for details.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the ViT pipeline</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of a ViT classifier in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Cut the image into 16 × 16 patches</li>
              <li data-order="2">Flatten each patch into a list of numbers</li>
              <li data-order="3">Multiply each patch by the patch embedding matrix</li>
              <li data-order="4">Put the [CLS] token at the front</li>
              <li data-order="5">Add a position vector to every token</li>
              <li data-order="6">Run the tokens through the encoder blocks</li>
              <li data-order="7">Send the [CLS] output to the classifier</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code turns an 8 × 8 grey image into tokens. It uses 4 × 4 patches and d_model = 4.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check the shapes: 4 patches of 16 pixels, then 4 tokens, then 5 tokens with [CLS].</li>
            <li>In Part 1, change <code>P = 4</code> to <code>P = 2</code>. How many patches do you get now? Each patch is smaller, so there are more tokens.</li>
            <li>In Part 1, move the bright square with <code>image[4:8, 4:8] = 1.0</code>. Which patch now has a mean brightness of 1?</li>
            <li>In Part 2, change <code>patch = 16</code> to <code>patch = 32</code>. Fewer tokens means less attention work.</li>
            <li>On your own computer with PyTorch, run Part 3 and check the shape (1, 197, 768).</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A Vision Transformer treats image patches as words. Patch embedding, a [CLS] token and position vectors turn a picture into a sequence. After that, it is the same encoder you met earlier in this course.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A Vision Transformer's first steps.
        # Part 1 runs in NumPy here. Part 2 counts tokens for a real image. Part 3 shows the patch step in PyTorch.
        import numpy as np

        # ── Part 1: turn a tiny image into patch tokens (NumPy) ──
        print("== Part 1: a tiny image becomes patch tokens ==")
        np.random.seed(42)

        # An 8x8 grayscale image: a bright 4x4 square in the top-left corner.
        image = np.zeros((8, 8))
        image[0:4, 0:4] = 1.0

        P = 4          # patch size: each patch is 4x4 pixels
        D = 4          # d_model: the length of each token vector

        # 1) Cut the image into patches and flatten each one.
        patches = []
        for r in range(0, 8, P):
            for c in range(0, 8, P):
                patches.append(image[r:r+P, c:c+P].flatten())
        patches = np.array(patches)
        print("Patches:", patches.shape, "(number of patches, pixels per patch)")
        print("Mean brightness of each patch:", patches.mean(axis=1))

        # 2) Patch embedding: one shared matrix turns P*P pixels into D numbers.
        W_patch = np.random.randn(P * P, D) * 0.1
        tokens = patches @ W_patch
        print("Patch tokens:", tokens.shape)

        # 3) Put a learned [CLS] token at the front.
        cls = np.random.randn(1, D) * 0.1
        tokens = np.vstack([cls, tokens])
        print("With [CLS]:", tokens.shape)

        # 4) Add a learned position vector to every token.
        pos = np.random.randn(tokens.shape[0], D) * 0.1
        x = tokens + pos
        print("Input to the encoder:", x.shape)
        print(np.round(x, 2))

        # ── Part 2: count the tokens for a real image ──
        print("\n== Part 2: tokens for a real 224x224 image ==")
        size, patch = 224, 16
        n = (size // patch) ** 2
        print(f"{size}x{size} image, {patch}x{patch} patches -> {n} patches + 1 [CLS] = {n + 1} tokens")
        print(f"Numbers in one colour patch: {patch} x {patch} x 3 = {patch * patch * 3}")

        # ── Part 3: the patch step in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: the same steps in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            images = torch.randn(1, 3, 224, 224)          # 1 RGB image, 224x224

            # A conv with kernel = stride = 16 cuts and embeds 16x16 patches in one step.
            patch_embed = nn.Conv2d(3, 768, kernel_size=16, stride=16)
            x = patch_embed(images)                       # (1, 768, 14, 14)
            x = x.flatten(2).transpose(1, 2)              # (1, 196, 768)

            cls = nn.Parameter(torch.zeros(1, 1, 768))
            pos = nn.Parameter(torch.zeros(1, 197, 768))
            x = torch.cat([cls, x], dim=1) + pos          # (1, 197, 768)
            print(x.shape)
      PYTHON
    },
    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Visualising Attention</h1>
        </div>
        <p class="lc-lead">Every attention head makes a table of weights, and you can draw it as an <strong>attention heatmap</strong>. Heatmaps show where each token looks, so they help you find heads with clear jobs. In this lesson you will read heatmaps and learn why they can also fool you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 360" role="img" aria-label="Two attention heatmaps for the sentence the cat sat on the mat because it was warm. Rows are the word that looks, columns are the word it looks at. Head 1 has a dark diagonal just left of the main diagonal: each word looks at the previous word. Head 2 is mostly light. The row for sat is dark at cat with 0.62. The row for it is split between cat 0.36 and mat 0.44. The row for warm is dark at it with 0.62.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="218" y="24" font-weight="700" fill="#3b82f6">Head 1: the previous word</text>
              <text x="83" y="58" font-size="10.5" fill="#9b99b8">the</text>
              <text x="113" y="74" font-size="10.5" fill="#9b99b8">cat</text>
              <text x="143" y="58" font-size="10.5" fill="#9b99b8">sat</text>
              <text x="173" y="74" font-size="10.5" fill="#9b99b8">on</text>
              <text x="203" y="58" font-size="10.5" fill="#9b99b8">the</text>
              <text x="233" y="74" font-size="10.5" fill="#9b99b8">mat</text>
              <text x="263" y="58" font-size="10.5" fill="#9b99b8">because</text>
              <text x="293" y="74" font-size="10.5" fill="#9b99b8">it</text>
              <text x="323" y="58" font-size="10.5" fill="#9b99b8">was</text>
              <text x="353" y="74" font-size="10.5" fill="#9b99b8">warm</text>
              <text x="62" y="99" font-size="10.5" text-anchor="end">the</text>
              <rect x="68" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="68" y="84" width="30" height="22" fill="#3b82f6" fill-opacity="0.86"/>
              <text x="83" y="99" font-size="10">0.86</text>
              <rect x="98" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="128" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="158" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="188" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="218" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="248" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="278" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="308" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="338" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <text x="62" y="121" font-size="10.5" text-anchor="end">cat</text>
              <rect x="68" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="68" y="106" width="30" height="22" fill="#3b82f6" fill-opacity="0.86"/>
              <text x="83" y="121" font-size="10">0.86</text>
              <rect x="98" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="128" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="158" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="188" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="218" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="248" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="278" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="308" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="338" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <text x="62" y="143" font-size="10.5" text-anchor="end">sat</text>
              <rect x="68" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="98" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="98" y="128" width="30" height="22" fill="#3b82f6" fill-opacity="0.86"/>
              <text x="113" y="143" font-size="10">0.86</text>
              <rect x="128" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="158" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="188" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="218" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="248" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="278" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="308" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="338" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <text x="62" y="165" font-size="10.5" text-anchor="end">on</text>
              <rect x="68" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="98" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="128" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="128" y="150" width="30" height="22" fill="#3b82f6" fill-opacity="0.86"/>
              <text x="143" y="165" font-size="10">0.86</text>
              <rect x="158" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="188" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="218" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="248" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="278" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="308" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="338" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <text x="62" y="187" font-size="10.5" text-anchor="end">the</text>
              <rect x="68" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="98" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="128" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="158" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="158" y="172" width="30" height="22" fill="#3b82f6" fill-opacity="0.86"/>
              <text x="173" y="187" font-size="10">0.86</text>
              <rect x="188" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="218" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="248" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="278" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="308" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="338" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <text x="62" y="209" font-size="10.5" text-anchor="end">mat</text>
              <rect x="68" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="98" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="128" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="158" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="188" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="188" y="194" width="30" height="22" fill="#3b82f6" fill-opacity="0.86"/>
              <text x="203" y="209" font-size="10">0.86</text>
              <rect x="218" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="248" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="278" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="308" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="338" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <text x="62" y="231" font-size="10.5" text-anchor="end">because</text>
              <rect x="68" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="98" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="128" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="158" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="188" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="218" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="218" y="216" width="30" height="22" fill="#3b82f6" fill-opacity="0.86"/>
              <text x="233" y="231" font-size="10">0.86</text>
              <rect x="248" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="278" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="308" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="338" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <text x="62" y="253" font-size="10.5" text-anchor="end">it</text>
              <rect x="68" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="98" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="128" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="158" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="188" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="218" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="248" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="248" y="238" width="30" height="22" fill="#3b82f6" fill-opacity="0.86"/>
              <text x="263" y="253" font-size="10">0.86</text>
              <rect x="278" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="308" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="338" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <text x="62" y="275" font-size="10.5" text-anchor="end">was</text>
              <rect x="68" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="98" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="128" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="158" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="188" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="218" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="248" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="278" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="278" y="260" width="30" height="22" fill="#3b82f6" fill-opacity="0.86"/>
              <text x="293" y="275" font-size="10">0.86</text>
              <rect x="308" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="338" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <text x="62" y="297" font-size="10.5" text-anchor="end">warm</text>
              <rect x="68" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="98" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="128" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="158" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="188" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="218" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="248" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="278" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="308" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="308" y="282" width="30" height="22" fill="#3b82f6" fill-opacity="0.86"/>
              <text x="323" y="297" font-size="10">0.86</text>
              <rect x="338" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <text x="604" y="24" font-weight="700" fill="#ec4899">Head 2: a related word</text>
              <text x="469" y="58" font-size="10.5" fill="#9b99b8">the</text>
              <text x="499" y="74" font-size="10.5" fill="#9b99b8">cat</text>
              <text x="529" y="58" font-size="10.5" fill="#9b99b8">sat</text>
              <text x="559" y="74" font-size="10.5" fill="#9b99b8">on</text>
              <text x="589" y="58" font-size="10.5" fill="#9b99b8">the</text>
              <text x="619" y="74" font-size="10.5" fill="#9b99b8">mat</text>
              <text x="649" y="58" font-size="10.5" fill="#9b99b8">because</text>
              <text x="679" y="74" font-size="10.5" fill="#9b99b8">it</text>
              <text x="709" y="58" font-size="10.5" fill="#9b99b8">was</text>
              <text x="739" y="74" font-size="10.5" fill="#9b99b8">warm</text>
              <text x="448" y="99" font-size="10.5" text-anchor="end">the</text>
              <rect x="454" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="454" y="84" width="30" height="22" fill="#ec4899" fill-opacity="0.33"/>
              <text x="469" y="99" font-size="10">0.33</text>
              <rect x="484" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="484" y="84" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="514" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="514" y="84" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="544" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="544" y="84" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="574" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="574" y="84" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="604" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="604" y="84" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="634" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="634" y="84" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="664" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="664" y="84" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="694" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="694" y="84" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="724" y="84" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="724" y="84" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <text x="448" y="121" font-size="10.5" text-anchor="end">cat</text>
              <rect x="454" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="454" y="106" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="484" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="484" y="106" width="30" height="22" fill="#ec4899" fill-opacity="0.33"/>
              <text x="499" y="121" font-size="10">0.33</text>
              <rect x="514" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="514" y="106" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="544" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="544" y="106" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="574" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="574" y="106" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="604" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="604" y="106" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="634" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="634" y="106" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="664" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="664" y="106" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="694" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="694" y="106" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="724" y="106" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="724" y="106" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <text x="448" y="143" font-size="10.5" text-anchor="end">sat</text>
              <rect x="454" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="454" y="128" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="484" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="484" y="128" width="30" height="22" fill="#ec4899" fill-opacity="0.62"/>
              <text x="499" y="143" font-size="10">0.62</text>
              <rect x="514" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="514" y="128" width="30" height="22" fill="#ec4899" fill-opacity="0.14"/>
              <rect x="544" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="544" y="128" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="574" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="574" y="128" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="604" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="604" y="128" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="634" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="634" y="128" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="664" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="664" y="128" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="694" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="694" y="128" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="724" y="128" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="724" y="128" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <text x="448" y="165" font-size="10.5" text-anchor="end">on</text>
              <rect x="454" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="454" y="150" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="484" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="484" y="150" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="514" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="514" y="150" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="544" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="544" y="150" width="30" height="22" fill="#ec4899" fill-opacity="0.33"/>
              <text x="559" y="165" font-size="10">0.33</text>
              <rect x="574" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="574" y="150" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="604" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="604" y="150" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="634" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="634" y="150" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="664" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="664" y="150" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="694" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="694" y="150" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="724" y="150" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="724" y="150" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <text x="448" y="187" font-size="10.5" text-anchor="end">the</text>
              <rect x="454" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="454" y="172" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="484" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="484" y="172" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="514" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="514" y="172" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="544" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="544" y="172" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="574" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="574" y="172" width="30" height="22" fill="#ec4899" fill-opacity="0.33"/>
              <text x="589" y="187" font-size="10">0.33</text>
              <rect x="604" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="604" y="172" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="634" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="634" y="172" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="664" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="664" y="172" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="694" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="694" y="172" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="724" y="172" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="724" y="172" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <text x="448" y="209" font-size="10.5" text-anchor="end">mat</text>
              <rect x="454" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="454" y="194" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="484" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="484" y="194" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="514" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="514" y="194" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="544" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="544" y="194" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="574" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="574" y="194" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="604" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="604" y="194" width="30" height="22" fill="#ec4899" fill-opacity="0.33"/>
              <text x="619" y="209" font-size="10">0.33</text>
              <rect x="634" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="634" y="194" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="664" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="664" y="194" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="694" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="694" y="194" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="724" y="194" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="724" y="194" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <text x="448" y="231" font-size="10.5" text-anchor="end">because</text>
              <rect x="454" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="454" y="216" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="484" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="484" y="216" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="514" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="514" y="216" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="544" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="544" y="216" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="574" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="574" y="216" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="604" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="604" y="216" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="634" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="634" y="216" width="30" height="22" fill="#ec4899" fill-opacity="0.33"/>
              <text x="649" y="231" font-size="10">0.33</text>
              <rect x="664" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="664" y="216" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="694" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="694" y="216" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="724" y="216" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="724" y="216" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <text x="448" y="253" font-size="10.5" text-anchor="end">it</text>
              <rect x="454" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="484" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="484" y="238" width="30" height="22" fill="#ec4899" fill-opacity="0.36"/>
              <text x="499" y="253" font-size="10">0.36</text>
              <rect x="514" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="544" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="574" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="604" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="604" y="238" width="30" height="22" fill="#ec4899" fill-opacity="0.44"/>
              <text x="619" y="253" font-size="10">0.44</text>
              <rect x="634" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="664" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="664" y="238" width="30" height="22" fill="#ec4899" fill-opacity="0.08"/>
              <rect x="694" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="724" y="238" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <text x="448" y="275" font-size="10.5" text-anchor="end">was</text>
              <rect x="454" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="454" y="260" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="484" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="484" y="260" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="514" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="514" y="260" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="544" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="544" y="260" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="574" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="574" y="260" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="604" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="604" y="260" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="634" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="634" y="260" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="664" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="664" y="260" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <rect x="694" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="694" y="260" width="30" height="22" fill="#ec4899" fill-opacity="0.33"/>
              <text x="709" y="275" font-size="10">0.33</text>
              <rect x="724" y="260" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="724" y="260" width="30" height="22" fill="#ec4899" fill-opacity="0.07"/>
              <text x="448" y="297" font-size="10.5" text-anchor="end">warm</text>
              <rect x="454" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="454" y="282" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="484" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="484" y="282" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="514" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="514" y="282" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="544" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="544" y="282" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="574" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="574" y="282" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="604" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="604" y="282" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="634" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="634" y="282" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="664" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="664" y="282" width="30" height="22" fill="#ec4899" fill-opacity="0.62"/>
              <text x="679" y="297" font-size="10">0.62</text>
              <rect x="694" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="694" y="282" width="30" height="22" fill="#ec4899" fill-opacity="0.03"/>
              <rect x="724" y="282" width="30" height="22" fill="#1f1f44" stroke="#2f2f5a"/>
              <rect x="724" y="282" width="30" height="22" fill="#ec4899" fill-opacity="0.14"/>
              <text x="380" y="328" font-size="11.5" fill="#9b99b8">Rows: the word that looks. Columns: the word it looks at. Each row adds up to 1.</text>
              <text x="380" y="350" font-size="11.5" fill="#9b99b8">Darker cell = bigger weight. Numbers are shown for weights of 0.30 or more.</text>
            </g>
          </svg>
          <figcaption>Two heads, one sentence. Head 1 follows position. Head 2 links related words. These weights are made by hand in Part 1 of the code editor to copy patterns found in real models.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How to read a heatmap</h3>
          <p>For n tokens, one head gives an n × n table of weights. Earlier in this course you computed this table with softmax(QKᵀ / √d_k). Now you draw it:</p>
          <ul class="lc-list">
            <li>Each <strong>row</strong> is one token doing the looking (the query).</li>
            <li>Each <strong>column</strong> is a token being looked at (the key).</li>
            <li>The colour shows the weight. Dark means a big weight. Each row adds up to 1.</li>
          </ul>
          <p>Look at the row for "it" in head 2. It gives 0.44 to "mat" and 0.36 to "cat". The sentence is unclear: a warm mat or a warm cat? The head spreads its weight over both.</p>
          <p>A decoder model, such as GPT, uses a causal mask. Its heatmaps are empty above the diagonal, because no token can look at a later token.</p>
        </div>
        <div class="lc-card">
          <h3>Patterns researchers have found</h3>
          <p>A real model has many layers, and each layer has many heads. BERT-base has 12 layers with 12 heads each, so 144 heatmaps per sentence. Studies of models like BERT and GPT-2 found some common patterns:</p>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>What the heatmap looks like</th></tr></thead>
            <tbody>
              <tr><td>Previous or next token</td><td>A dark line just beside the diagonal, like head 1</td></tr>
              <tr><td>Syntax (grammar links)</td><td>A verb looks at its subject, or a word looks at the noun it describes</td></tr>
              <tr><td>Pronoun links</td><td>A pronoun such as "it" looks at nouns it may refer to</td></tr>
              <tr><td>"Do nothing" heads</td><td>Almost every token looks at the first token or a special token, such as [SEP]</td></tr>
              <tr><td>Broad heads</td><td>Weight spread evenly over many tokens</td></tr>
            </tbody>
          </table>
          <p>To get real weights with the Hugging Face <code>transformers</code> library, ask the model to return them with <code>output_attentions=True</code>. Part 4 in the code editor below does this for BERT-base. It needs a model download, so it runs on your own computer, not in the browser.</p>
          <p>For BERT-base, <code>out.attentions</code> holds 12 tensors, one per layer. Each has the shape (batch, heads, tokens, tokens). Tools such as BertViz draw these as interactive heatmaps. Check the library docs for current options.</p>
        </div>
        <div class="lc-card">
          <h3>The limits of attention maps</h3>
          <p>A heatmap is easy to read. But it is not a full explanation of what the model did. There are several reasons:</p>
          <ul class="lc-list">
            <li><strong>Weights are not the output.</strong> The head mixes value vectors. A big weight on a token with a tiny value vector adds very little. Part 3 in the code editor shows this with head 3.</li>
            <li><strong>Many heads and layers.</strong> One head is a small part of the model. Other heads and the feed-forward network (FFN) also change each token.</li>
            <li><strong>Tokens get mixed.</strong> After the first layer, the vector at "mat" already holds information from other words. So "looks at mat" does not only mean the word "mat".</li>
            <li><strong>Other weights can work too.</strong> Researchers have shown that some models can still give the same answer with quite different attention weights.</li>
          </ul>
          <p>So use heatmaps to form ideas, not as proof. To test an idea, change the input or switch off a head, then see if the output changes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what can a heatmap tell you?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each claim about an attention heatmap.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fair" data-label="A fair claim"></div>
              <div data-sorter-target="bucket" data-bucket="strong" data-label="Too strong a claim"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fair" data-why="This is exactly what the weights in that row show.">In this head, "it" gives its biggest weight to "mat".</li>
              <li data-bucket="strong" data-why="One head is a small part of the model. Other heads, layers and the FFN also affect the answer.">The model decided "it" means the mat because of this head.</li>
              <li data-bucket="fair" data-why="A dark line beside the diagonal is a clear position pattern.">This head seems to track the previous token.</li>
              <li data-bucket="strong" data-why="A big weight on a token with a tiny value vector adds very little to the output.">The token with the biggest weight is always the most important one.</li>
              <li data-bucket="fair" data-why="This is a good way to test an idea from a heatmap.">If we switch off this head and the answer changes, the head matters for this input.</li>
              <li data-bucket="strong" data-why="Researchers have shown that quite different weights can sometimes give the same answer.">These weights are the only way the model could reach its answer.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Activity: explore example weights</h3>
          <p>Click a word to see where it looks. Try "it" first. These weights are examples made for teaching.</p>
          <div class="lcw" data-controller="attention"></div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 2 of the code prints three heatmaps as text. Darker symbols (# and @) mean bigger weights.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, find the diagonal line in head 1 and the "it" row in head 2.</li>
            <li>In Part 1, change the head 2 score for "it" and "mat" from <code>3.2</code> to <code>4.0</code>. The weight moves away from "cat".</li>
            <li>In Part 1, change <code>max(i - 1, 0)</code> to <code>min(i + 1, n - 1)</code> in head 1. Now each word looks at the next word.</li>
            <li>Look at Part 3. "the" has weight 0.69, but a small share once you count value size. Change <code>0.05</code> to <code>1.0</code> and run again.</li>
            <li>On your own computer, run Part 4. It prints 12 layers, each with the shape (1, 12, 13, 13): 1 sentence, 12 heads and 13 tokens.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An attention heatmap shows where each token looks in one head. It is a great way to spot patterns, but it is not proof of why the model gave its answer.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Attention heatmaps as text, for three hand-made heads.
        import numpy as np

        # ── Part 1: three hand-made heads ──
        print("== Part 1: three heads and their scores ==")
        np.random.seed(42)
        words = "the cat sat on the mat because it was warm".split()
        n = len(words)
        idx = {w: i for i, w in enumerate(words)}   # "the" -> its last position

        def softmax(rows):
            e = np.exp(rows - rows.max(axis=1, keepdims=True))
            return e / e.sum(axis=1, keepdims=True)

        # Head 1: every word looks at the word before it (a position pattern).
        s1 = np.zeros((n, n))
        for i in range(n):
            s1[i, max(i - 1, 0)] = 4.0

        # Head 2: some words look at a related word (a meaning pattern).
        s2 = np.eye(n) * 1.5
        s2[idx["sat"], idx["cat"]] = 3.0     # verb -> who did it
        s2[idx["it"], idx["cat"]] = 3.0      # pronoun -> possible nouns
        s2[idx["it"], idx["mat"]] = 3.2
        s2[idx["warm"], idx["it"]] = 3.0

        # Head 3: every word looks at the first word (a "do nothing" pattern).
        s3 = np.zeros((n, n))
        s3[:, 0] = 3.0
        print("Each head has a", s1.shape, "table of scores, one row per word.")

        # ── Part 2: draw the heatmaps ──
        print("\n== Part 2: the heatmaps (darker symbol = bigger weight) ==")
        SHADES = " .:+#@"   # light to dark

        def heatmap(name, scores):
            weights = softmax(scores)
            print(name)
            print("          " + " ".join(w[:3].ljust(3) for w in words))
            for i, w in enumerate(words):
                cells = [SHADES[min(int(v * 6), 5)] * 3 for v in weights[i]]
                print(f"  {w:>7} " + " ".join(cells))
            print()
            return weights

        heatmap("Head 1 (previous word)", s1)
        w2 = heatmap("Head 2 (related word)", s2)
        w3 = heatmap("Head 3 (first word)", s3)

        print("Row 'it' in head 2:", {w: round(float(v), 2) for w, v in zip(words, w2[idx["it"]]) if v > 0.05})

        # ── Part 3: a big weight is not the full story ──
        print("\n== Part 3: weight vs size-adjusted share ==")
        # Multiply each weight by the size of that word's value vector.
        values = np.random.randn(n, 4)
        values[0] *= 0.05                    # the first "the" carries almost no information
        size = np.linalg.norm(values, axis=1)
        row = w3[idx["warm"]]
        effect = row * size
        share = effect / effect.sum()          # how much each word really adds to the output
        print("Row 'warm' in head 3:")
        for w, wt, sh in zip(words[:3], row[:3], share[:3]):
            print(f"  {w:>4}: weight {wt:.2f}   size-adjusted share {sh:.2f}")

        # ── Part 4: real attention weights from BERT (run this part on your own computer) ──
        print("\n== Part 4: real weights from a Hugging Face model ==")
        # On your computer first run:  pip install torch transformers
        try:
            import torch
            from transformers import AutoTokenizer, AutoModel
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch and Hugging Face transformers, which do not run in the browser. Copy this part to your computer to run it.")
        else:
            # This downloads bert-base-uncased (about 440 MB) the first time.
            tok = AutoTokenizer.from_pretrained("bert-base-uncased")
            model = AutoModel.from_pretrained("bert-base-uncased", attn_implementation="eager")
            inputs = tok("The cat sat on the mat because it was warm.", return_tensors="pt")
            out = model(**inputs, output_attentions=True)
            print(len(out.attentions), out.attentions[0].shape)
      PYTHON
    },
    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tf">How Transformers Work</div>
          <h1 class="lc-title">Project: Build a Mini Transformer</h1>
        </div>
        <p class="lc-lead">In this project you put every part together in a tiny decoder-only transformer, like a very small GPT. It has embeddings, positional encoding, masked multi-head attention, an FFN, residuals, layer norm and logits. You build it in NumPy to see every step, then see the same model in PyTorch.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The mini transformer. Token IDs 0, 1, 2, 3 go into embedding plus position, shape 4 by 4. Then a decoder block: layer norm, masked multi-head attention with 2 heads, add the residual, layer norm, feed-forward 4 to 16 to 4, add the residual. Then a final layer norm, a linear layer to logits of shape 4 by 10, and softmax on the last row to pick the next word.">
            <defs><marker id="tf19a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="60" width="112" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="66" y="84" font-weight="700" fill="#93c5fd">Token IDs</text>
              <text x="66" y="104" font-size="11">[0, 1, 2, 3]</text>
              <line x1="124" y1="92" x2="148" y2="92" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf19a)"/>
              <rect x="152" y="60" width="120" height="64" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="212" y="82" font-weight="700" fill="#67e8f9">Embedding</text>
              <text x="212" y="100" font-size="11">+ position</text>
              <text x="212" y="116" font-size="11" fill="#9b99b8">(4, 4)</text>
              <line x1="274" y1="92" x2="294" y2="92" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf19a)"/>
              <rect x="298" y="20" width="452" height="160" rx="12" fill="none" stroke="#8b5cf6" stroke-dasharray="6 4"/>
              <text x="524" y="40" font-weight="700" fill="#c4b5fd">Decoder block</text>
              <rect x="310" y="64" width="44" height="56" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <text x="332" y="96" font-size="11.5">LN</text>
              <line x1="354" y1="92" x2="364" y2="92" stroke="#9b99b8" stroke-width="1.5"/>
              <rect x="364" y="64" width="116" height="56" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="422" y="86" font-weight="700" font-size="12" fill="#f9a8d4">Masked MHA</text>
              <text x="422" y="106" font-size="11">2 heads</text>
              <line x1="480" y1="92" x2="490" y2="92" stroke="#9b99b8" stroke-width="1.5"/>
              <circle cx="502" cy="92" r="12" fill="#1f1f44" stroke="#f59e0b"/><text x="502" y="97" font-weight="700" fill="#fcd34d">+</text>
              <line x1="514" y1="92" x2="524" y2="92" stroke="#9b99b8" stroke-width="1.5"/>
              <rect x="524" y="64" width="44" height="56" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <text x="546" y="96" font-size="11.5">LN</text>
              <line x1="568" y1="92" x2="578" y2="92" stroke="#9b99b8" stroke-width="1.5"/>
              <rect x="578" y="64" width="116" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="636" y="86" font-weight="700" font-size="12" fill="#6ee7b7">FFN + GELU</text>
              <text x="636" y="106" font-size="11">4 → 16 → 4</text>
              <line x1="694" y1="92" x2="704" y2="92" stroke="#9b99b8" stroke-width="1.5"/>
              <circle cx="716" cy="92" r="12" fill="#1f1f44" stroke="#f59e0b"/><text x="716" y="97" font-weight="700" fill="#fcd34d">+</text>
              <path d="M304,92 L304,140 L502,140 L502,106" fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="4 3" marker-end="url(#tf19a)"/>
              <path d="M518,92 L518,140 L716,140 L716,106" fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="4 3" marker-end="url(#tf19a)"/>
              <text x="410" y="160" font-size="11" fill="#fcd34d">residual</text>
              <text x="624" y="160" font-size="11" fill="#fcd34d">residual</text>
              <path d="M716,180 L716,206 L372,206 L372,224" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf19a)"/>
              <rect x="300" y="228" width="144" height="56" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="372" y="252" font-weight="700">Final LN</text>
              <text x="372" y="272" font-size="11" fill="#9b99b8">(4, 4)</text>
              <line x1="446" y1="256" x2="470" y2="256" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf19a)"/>
              <rect x="474" y="228" width="130" height="56" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="539" y="252" font-weight="700" fill="#93c5fd">Linear → logits</text>
              <text x="539" y="272" font-size="11" fill="#9b99b8">(4, 10)</text>
              <line x1="606" y1="256" x2="630" y2="256" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tf19a)"/>
              <rect x="634" y="228" width="116" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="692" y="252" font-weight="700" fill="#6ee7b7">Softmax</text>
              <text x="692" y="272" font-size="11">last row → word</text>
              <text x="140" y="236" font-size="11.5" fill="#9b99b8">d_model = 4, 2 heads,</text>
              <text x="140" y="254" font-size="11.5" fill="#9b99b8">vocabulary of 10 words,</text>
              <text x="140" y="272" font-size="11.5" fill="#9b99b8">"the cat sat on"</text>
            </g>
          </svg>
          <figcaption>The full mini transformer, with shapes. The input is 4 tokens. The output is one row of 10 logits for each token.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The plan</h3>
          <p>We use the small sizes from this course: d_model = 4, 2 heads and the 10-word vocabulary of our running sentence. The input is "the cat sat on", so the IDs are [0, 1, 2, 3]. The model must give scores for the next word.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>What it does</th><th>Shape after</th></tr></thead>
            <tbody>
              <tr><td>1. Embedding + position</td><td>Look up each ID, add a sinusoidal position vector</td><td>(4, 4)</td></tr>
              <tr><td>2. Layer norm</td><td>Scale each token vector to mean 0, variance 1</td><td>(4, 4)</td></tr>
              <tr><td>3. Masked multi-head attention</td><td>2 heads with d_k = 2, future scores set to −∞</td><td>weights (2, 4, 4), output (4, 4)</td></tr>
              <tr><td>4. Residual</td><td>x = x + attention output</td><td>(4, 4)</td></tr>
              <tr><td>5. Layer norm + FFN</td><td>4 → 16 → 4 with GELU, then a residual</td><td>(4, 4)</td></tr>
              <tr><td>6. Final layer norm + linear</td><td>Turn each vector into 10 logits</td><td>(4, 10)</td></tr>
              <tr><td>7. Softmax on the last row</td><td>Probabilities for the next word</td><td>(10,)</td></tr>
            </tbody>
          </table>
          <p>This block is <strong>pre-norm</strong>: x = x + Sublayer(LayerNorm(x)). Our layer norm skips the learned gamma and beta, to keep the code short.</p>
        </div>
        <div class="lc-card">
          <h3>The key lines in NumPy</h3>
          <p>The full program is in the code editor below. Part 1 builds the embeddings and positions. Part 2 does the masked multi-head attention. A <code>reshape</code> splits d_model = 4 into 2 heads of size 2. The mask sets every future score to −∞. Part 3 adds the FFN and makes the logits.</p>
          <p>Run the code to see the weights of head 1. Look at the zeros above the diagonal. That is the mask at work. "the" can only look at itself, so its weight is 1. Each row still adds up to 1.</p>
          <p>The weights are random, because the model is not trained. So the top word it prints for "the cat sat on" is only luck. Training would change all these numbers so that the right next word gets a high probability.</p>
        </div>
        <div class="lc-card">
          <h3>The same model in PyTorch</h3>
          <p>In PyTorch, ready-made layers do most of the work. <code>nn.MultiheadAttention</code> does the split into heads and the output projection. In its <code>attn_mask</code>, <code>True</code> means "do not look here". This version uses learned position embeddings instead of sinusoidal ones. Part 4 in the code editor below builds the block and the full model this way.</p>
          <p>A full model wraps this block with <code>nn.Embedding</code> for tokens and positions, a final <code>nn.LayerNorm</code> and an <code>nn.Linear(d, 10)</code> head. For "the cat sat on", the logits have the shape (1, 4, 10). That is 1 sentence, 4 tokens and 10 logits per token, the same as the NumPy version. To train it, you would compare the logits with the true next tokens using cross-entropy loss. GPT-2 small has the same kinds of parts, just bigger and with 12 blocks. Part 4 runs on your own computer, because PyTorch does not run in the browser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow one forward pass</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Input">"the cat sat on" becomes the IDs [0, 1, 2, 3].</li>
              <li data-kind="tool" data-label="Embed">Look up 4 rows of the embedding table and add position vectors. Shape (4, 4).</li>
              <li data-kind="thought" data-label="Attention">Layer norm, then 2 heads. Each head scores every pair of tokens. Shape (2, 4, 4).</li>
              <li data-kind="warn" data-label="Mask">Scores for future tokens become −∞. After softmax, their weights are 0.</li>
              <li data-kind="tool" data-label="Mix and add">Join the heads, apply W_O, and add the result to x (the residual).</li>
              <li data-kind="tool" data-label="FFN">Layer norm, then 4 → 16 → 4 with GELU, and another residual. Shape still (4, 4).</li>
              <li data-kind="result" data-label="Logits">Final layer norm and a linear layer give 10 logits per token. Shape (4, 10).</li>
              <li data-kind="answer" data-label="Next word">Softmax on the last row gives the next-word probabilities. Sample or pick the top word.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the program. In Part 2, check that the attention weights are 0 above the diagonal.</li>
            <li>In Part 1, change the input to <code>"the cat sat on the mat"</code> and <code>T</code> to 6. Every shape grows to 6 tokens.</li>
            <li>In Part 2, remove the line <code>scores[:, mask] = -np.inf</code>. Now early tokens can see the future, which a decoder must not do.</li>
            <li>In Part 1, change <code>np.random.seed(42)</code> to another number. The top word in Part 3 changes, because the weights are random.</li>
            <li>On your own computer with PyTorch, run Part 4. The logits have the shape (1, 4, 10), and the model has 406 parameters.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A transformer is a short list of simple steps: embed, add position, masked attention, FFN, residuals and layer norm, then logits. Real models repeat the block many times with bigger sizes, and training sets the weights.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A mini transformer (one decoder block). The weights are random, not trained.
        import numpy as np

        # ── Part 1: setup, embeddings and positions (NumPy) ──
        print("== Part 1: embeddings + positions ==")
        np.random.seed(42)
        vocab = "the cat sat on mat because it was warm .".split()
        D, H, T = 4, 2, 4               # d_model, number of heads, number of tokens
        ids = [vocab.index(w) for w in "the cat sat on".split()]
        r = lambda *shape: np.random.randn(*shape) * 0.5   # small random weights

        def softmax(x):
            e = np.exp(x - x.max(axis=-1, keepdims=True))
            return e / e.sum(axis=-1, keepdims=True)

        def layer_norm(x):
            return (x - x.mean(-1, keepdims=True)) / np.sqrt(x.var(-1, keepdims=True) + 1e-5)

        def gelu(x):
            return 0.5 * x * (1 + np.tanh(0.7978845608 * (x + 0.044715 * x ** 3)))

        # Token embeddings + sinusoidal positional encoding
        E = r(len(vocab), D)
        pos = np.arange(T)[:, None]
        i = np.arange(D)[None, :]
        angle = pos / 10000 ** ((i // 2 * 2) / D)
        PE = np.where(i % 2 == 0, np.sin(angle), np.cos(angle))
        x = E[ids] + PE                                       # (T, D)
        print("IDs:", ids, "| x", x.shape)

        # ── Part 2: masked multi-head self-attention, with a residual ──
        print("\n== Part 2: masked multi-head attention ==")
        Wq, Wk, Wv, Wo = r(D, D), r(D, D), r(D, D), r(D, D)
        h = layer_norm(x)
        # The reshape splits d_model = 4 into 2 heads of size 2.
        q, k, v = [(h @ W).reshape(T, H, D // H).transpose(1, 0, 2) for W in (Wq, Wk, Wv)]
        scores = q @ k.transpose(0, 2, 1) / np.sqrt(D // H)   # (H, T, T)
        mask = np.triu(np.ones((T, T)), k=1) == 1             # True above the diagonal = future
        scores[:, mask] = -np.inf
        weights = softmax(scores)
        heads = (weights @ v).transpose(1, 0, 2).reshape(T, D)
        x = x + heads @ Wo
        print("Head 1 attention weights (row = token, column = token it looks at):")
        print(np.round(weights[0], 2))

        # ── Part 3: feed-forward network, final layer norm and logits ──
        print("\n== Part 3: FFN, then logits ==")
        W1, W2 = r(D, 4 * D), r(4 * D, D)                     # 4 -> 16 -> 4
        x = x + gelu(layer_norm(x) @ W1) @ W2                 # FFN + residual
        logits = layer_norm(x) @ r(D, len(vocab))             # (T, vocab size)
        probs = softmax(logits[-1])
        print("Shapes: x", x.shape, "| scores", scores.shape, "| logits", logits.shape)
        print("Next word after 'the cat sat on':")
        for j in np.argsort(-probs)[:3]:
            print(f"  {vocab[j]:<8} {probs[j]:.2f}")

        # ── Part 4: the same model in PyTorch (run this part on your own computer) ──
        print("\n== Part 4: the same model in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)

            class Block(nn.Module):
                def __init__(self, d, heads):
                    super().__init__()
                    self.ln1 = nn.LayerNorm(d)
                    self.attn = nn.MultiheadAttention(d, heads, batch_first=True)
                    self.ln2 = nn.LayerNorm(d)
                    self.ffn = nn.Sequential(nn.Linear(d, 4 * d), nn.GELU(), nn.Linear(4 * d, d))

                def forward(self, x):
                    T = x.shape[1]
                    mask = torch.triu(torch.ones(T, T, dtype=torch.bool), diagonal=1)
                    h = self.ln1(x)
                    x = x + self.attn(h, h, h, attn_mask=mask)[0]   # masked attention + residual
                    x = x + self.ffn(self.ln2(x))                   # feed-forward + residual
                    return x

            class MiniTransformer(nn.Module):
                def __init__(self, vocab_size, d=4, heads=2, max_len=16):
                    super().__init__()
                    self.tok = nn.Embedding(vocab_size, d)
                    self.pos = nn.Embedding(max_len, d)             # learned positions
                    self.block = Block(d, heads)
                    self.ln = nn.LayerNorm(d)
                    self.head = nn.Linear(d, vocab_size)

                def forward(self, ids):
                    positions = torch.arange(ids.shape[1])
                    x = self.tok(ids) + self.pos(positions)
                    x = self.block(x)
                    return self.head(self.ln(x))                    # logits

            model = MiniTransformer(vocab_size=10)
            ids = torch.tensor([[0, 1, 2, 3]])                      # "the cat sat on"
            logits = model(ids)
            print(logits.shape)
            print(sum(p.numel() for p in model.parameters()), "parameters")
      PYTHON
    },
  }.freeze
end

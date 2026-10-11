module HowLlmsWorkContent
  # Units (sidebar dividers): 1–5 From Text to Numbers · 6–11 Inside the Transformer · 12–16 Training a Model · 17–21 Using Models Well · 22 Capstone
  # Widgets: sequence, sorter, stepper, tokenizer, next-token, attention. Starter code is Python run in the browser (Pyodide).
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">What Is a Large Language Model?</h1>
        </div>
        <p class="lc-lead">A <strong>large language model</strong> (LLM) is a program that reads text and writes text. Claude and many other AI assistants are built on LLMs. Inside, an LLM does one simple job again and again: it guesses the next small piece of text. In this lesson, you will learn what that job looks like, what "large" means, and what these models can and cannot do.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="The text 'The cat sat on the' goes into the LLM. The LLM gives a probability for each possible next token, such as mat 0.41 and floor 0.22. One token is picked and added to the text, and the loop repeats.">
            <defs><marker id="lw1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="85" width="190" height="50" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="105" y="108">"The cat sat on the"</text>
              <text x="105" y="126" font-size="11" fill="#9b99b8">text so far</text>
              <line x1="202" y1="110" x2="236" y2="110" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw1a)"/>
              <rect x="240" y="75" width="130" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="305" y="106" font-weight="700" fill="#67e8f9">LLM</text>
              <text x="305" y="126" font-size="11" fill="#9b99b8">billions of numbers</text>
              <line x1="372" y1="110" x2="406" y2="110" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw1a)"/>
              <rect x="410" y="15" width="340" height="180" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="580" y="40" font-weight="700">Next-token probabilities</text>
              <g text-anchor="start" font-size="12.5">
                <text x="425" y="70" fill="#6ee7b7">mat</text><rect x="490" y="58" width="164" height="16" rx="3" fill="#10b981"/><text x="662" y="70" fill="#6ee7b7">0.41</text>
                <text x="425" y="98">floor</text><rect x="490" y="86" width="88" height="16" rx="3" fill="#3b82f6"/><text x="586" y="98">0.22</text>
                <text x="425" y="126">sofa</text><rect x="490" y="114" width="48" height="16" rx="3" fill="#3b82f6"/><text x="546" y="126">0.12</text>
                <text x="425" y="154">bed</text><rect x="490" y="142" width="32" height="16" rx="3" fill="#3b82f6"/><text x="530" y="154">0.08</text>
                <text x="425" y="182" fill="#9b99b8" font-size="11">… and every other token (tiny numbers)</text>
              </g>
              <path d="M580,197 L580,228 L105,228 L105,141" fill="none" stroke="#f59e0b" stroke-width="1.5" marker-end="url(#lw1a)"/>
              <rect x="235" y="216" width="250" height="24" rx="6" fill="#1f1f44"/>
              <text x="360" y="233" font-size="12" fill="#fcd34d">pick one token, add it, repeat</text>
            </g>
          </svg>
          <figcaption>An LLM scores every possible next token. The program picks one, adds it to the text, and asks again. (The numbers are made up for this example.)</figcaption>
        </figure>
        <div class="lc-card">
          <h3>One job: predict the next token</h3>
          <p>A <strong>token</strong> is a small piece of text. It is often a whole word, part of a word, or a punctuation mark. You will learn more about tokens in the next lesson.</p>
          <p>You give the model some text. The model gives back a <strong>probability</strong> (a number from 0 to 1 that says how likely something is) for every token it knows. All these probabilities add up to 1.</p>
          <table class="lc-table">
            <thead><tr><th>Text so far</th><th>Likely next tokens (example numbers)</th></tr></thead>
            <tbody>
              <tr><td>The cat sat on the</td><td>mat 0.41, floor 0.22, sofa 0.12</td></tr>
              <tr><td>The capital of France is</td><td>Paris 0.93, a 0.02, the 0.01</td></tr>
              <tr><td>def add(a, b):</td><td>return 0.71, (new line) 0.20</td></tr>
            </tbody>
          </table>
          <p>The model does not look up answers in a database. It learned which tokens usually follow which text. That is all it does, but it does it very well.</p>
        </div>
        <div class="lc-card">
          <h3>What makes it "large"?</h3>
          <ul class="lc-list">
            <li><strong>Parameters.</strong> A parameter is one number inside the model. The model uses these numbers to turn text into predictions. Large models have <em>billions</em> of parameters.</li>
            <li><strong>Training data.</strong> The model learns from a huge amount of text, such as books, websites and code.</li>
            <li><strong>Training.</strong> During training, the model guesses the next token many times. After each guess, its parameters are changed a little, so the next guess is better.</li>
          </ul>
          <p>Nobody writes the rules by hand. Grammar, facts and coding style all come from this one training job. Exact sizes differ for each model. Check the model's documentation if you need them.</p>
        </div>
        <div class="lc-card">
          <h3>What LLMs can and cannot do</h3>
          <table class="lc-table">
            <thead><tr><th>Usually good at</th><th>Weak at</th></tr></thead>
            <tbody>
              <tr><td>Writing, summarising and translating text</td><td>Exact maths on long numbers (a tool or code does this better)</td></tr>
              <tr><td>Explaining and writing code</td><td>Facts that are newer than their training data</td></tr>
              <tr><td>Answering questions in a clear way</td><td>Knowing when they are wrong. They can write false text that sounds true.</td></tr>
              <tr><td>Following instructions and examples</td><td>Remembering past chats. The app must send the old messages again.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: a chat reply, one token at a time</h3>
          <p>A chat reply looks like one answer. Inside, it is next-token prediction in a loop. Step through one short reply.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your message">What is the capital of France?</li>
              <li data-kind="thought" data-label="Step 1 · predict">The app turns the chat into tokens. The model scores every token. "Paris" gets the highest probability.</li>
              <li data-kind="result" data-label="Token 1">Paris</li>
              <li data-kind="thought" data-label="Step 2 · predict">The text now ends with "Paris". The model predicts again from the start. A full stop is most likely.</li>
              <li data-kind="result" data-label="Token 2">.</li>
              <li data-kind="thought" data-label="Step 3 · predict">The most likely next token is a special "end of turn" token.</li>
              <li data-kind="check" data-label="The app stops">The app sees the end token. It stops the loop.</li>
              <li data-kind="answer" data-label="What you see">Paris.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code has a tiny "model": a table of next-word probabilities that we wrote by hand. A real LLM learns numbers like these from text.</li>
            <li>Run it. It prints the probabilities for one word. Then it writes a sentence one word at a time, in a loop.</li>
            <li>Change <code>GREEDY = True</code> to <code>False</code>. Now it picks words at random, using the probabilities. Change the seed to get a different sentence.</li>
            <li>Notice that the toy only looks at the last word. A real LLM looks at all the text so far.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An LLM only predicts the next token. Everything else, such as chat, answers and code, comes from running that prediction in a loop.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A tiny "language model": next-word probabilities, written by hand.
        # A real LLM learns numbers like these from huge amounts of text.
        # It also works on tokens (pieces of words), not whole words.
        import random

        random.seed(3)
        GREEDY = True        # True: always pick the most likely word. False: pick at random.

        NEXT = {
            "the":  {"cat": 0.5, "dog": 0.3, "mat": 0.2},
            "cat":  {"sat": 0.6, "ran": 0.4},
            "dog":  {"ran": 0.7, "sat": 0.3},
            "sat":  {"on": 0.8, "<end>": 0.2},
            "ran":  {"away": 0.6, "<end>": 0.4},
            "on":   {"the": 1.0},
            "mat":  {"<end>": 1.0},
            "away": {"<end>": 1.0},
        }

        def predict(text):
            last_word = text.split()[-1]            # this toy only looks at the last word
            return NEXT.get(last_word, {"<end>": 1.0})

        # 1) One prediction: a probability for every possible next word.
        print("Next-word probabilities after 'the cat sat on the':")
        for word, p in sorted(predict("the cat sat on the").items(), key=lambda x: -x[1]):
            print(f"  {word:6} {p:.2f} " + "#" * int(p * 40))

        # 2) Generation: predict, pick one word, add it, repeat.
        def generate(prompt, max_words=8):
            text = prompt
            for step in range(1, max_words + 1):
                probs = predict(text)
                if GREEDY:
                    word = max(probs, key=probs.get)
                else:
                    word = random.choices(list(probs), weights=list(probs.values()))[0]
                print(f"  step {step}: picked {word!r}")
                if word == "<end>":
                    break
                text += " " + word
            return text

        print("\nGenerating from 'the':")
        print("Result:", generate("the"))
        print("It repeats, because this toy only sees the last word. A real LLM sees all the text so far.")

        count = sum(len(options) for options in NEXT.values())
        print(f"\nThis toy model has {count} numbers. Large models have billions.")

        # Try it: set GREEDY = False and change the seed. Then add a new word, like "bird", to NEXT.
      PYTHON
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Tokens: How Models Read Text</h1>
        </div>
        <p class="lc-lead">A model cannot read letters. It reads <strong>tokens</strong>: small pieces of text, each with a number. In this lesson, you will learn why models use tokens instead of words or letters. You will see how text becomes token IDs. You will also learn why the number of tokens matters for limits, speed and cost.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="The text 'I love tokenization!' is split into five tokens: I, space love, space token, ization, and an exclamation mark. Each token is then turned into a number called a token ID.">
            <defs><marker id="lw2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g text-anchor="start" fill="#9b99b8" font-size="12"><text x="14" y="44">Text</text><text x="14" y="124">Tokens</text><text x="14" y="204">Token IDs</text></g>
              <rect x="200" y="20" width="360" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="45">I love tokenization!</text>
              <line x1="380" y1="62" x2="380" y2="94" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw2a)"/>
              <text x="470" y="84" font-size="11" fill="#9b99b8">split by the tokenizer</text>
              <rect x="136" y="100" width="60" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="166" y="125">I</text>
              <rect x="208" y="100" width="100" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="258" y="125">·love</text>
              <rect x="320" y="100" width="110" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="375" y="125">·token</text>
              <rect x="442" y="100" width="110" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="497" y="125">ization</text>
              <rect x="564" y="100" width="60" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="594" y="125">!</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw2a)">
                <line x1="166" y1="142" x2="166" y2="176"/><line x1="258" y1="142" x2="258" y2="176"/><line x1="375" y1="142" x2="375" y2="176"/><line x1="497" y1="142" x2="497" y2="176"/><line x1="594" y1="142" x2="594" y2="176"/>
              </g>
              <g font-weight="700" fill="#67e8f9"><text x="166" y="200">40</text><text x="258" y="200">1842</text><text x="375" y="200">11241</text><text x="497" y="200">1634</text><text x="594" y="200">0</text></g>
              <text x="380" y="230" font-size="11" fill="#9b99b8">5 tokens · the model only sees these numbers</text>
            </g>
          </svg>
          <figcaption>A tokenizer splits text into tokens and gives each one an ID. A dot (·) marks a space that is part of the token. These are the real GPT-2 tokens and IDs. Other tokenizers give different ones.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Words, characters or tokens?</h3>
          <p>A <strong>tokenizer</strong> is the program that splits text into tokens. It could split text in three ways:</p>
          <table class="lc-table">
            <thead><tr><th>Split into</th><th>"unbelievable" becomes</th><th>Problem</th></tr></thead>
            <tbody>
              <tr><td>Whole words</td><td><code>unbelievable</code> (1 piece)</td><td>There are too many words. New words, typos and names would be unknown.</td></tr>
              <tr><td>Characters</td><td><code>u n b e l i e v a b l e</code> (12 pieces)</td><td>Texts get very long. One letter carries very little meaning.</td></tr>
              <tr><td>Subword tokens</td><td><code>un believ able</code> (3 pieces, example)</td><td>A good balance. Common words stay whole. Rare words are split into parts.</td></tr>
            </tbody>
          </table>
          <p>Modern LLMs use subword tokens. The exact splits depend on the tokenizer. Every model family has its own tokenizer, so the same text can give different tokens.</p>
        </div>
        <div class="lc-card">
          <h3>Token IDs</h3>
          <p>The tokenizer has a fixed list of tokens called the <strong>vocabulary</strong>. Each token in the list has a number, its <strong>token ID</strong>. The model only ever sees these IDs.</p>
          <ul class="lc-list">
            <li>The GPT-2 tokenizer, a well-known example, has 50,257 tokens. Many newer models use bigger vocabularies.</li>
            <li>A space is often part of the token. So <code>" cat"</code> and <code>"cat"</code> can be two different tokens with different IDs.</li>
            <li>Capital letters matter too. <code>"Cat"</code> and <code>"cat"</code> are usually different tokens.</li>
          </ul>
          <p>When the model writes, it works the other way. It picks a token ID, and the tokenizer turns the ID back into text.</p>
        </div>
        <div class="lc-card">
          <h3>Languages and code use different numbers of tokens</h3>
          <ul class="lc-list">
            <li><strong>English:</strong> common words are often one token each. A rough rule for many tokenizers is 1 token for about 4 characters of English.</li>
            <li><strong>Other languages:</strong> text in Hindi, Tamil or Malayalam often needs more tokens for the same meaning. This happens because many tokenizers learned mostly from English text.</li>
            <li><strong>Code:</strong> spaces, brackets and symbols all use tokens. Deep indentation can add many tokens.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Why you should count tokens</h3>
          <table class="lc-table">
            <thead><tr><th>What</th><th>Why tokens matter</th></tr></thead>
            <tbody>
              <tr><td>Limits</td><td>A model can only read a fixed number of tokens at once. This is its <strong>context window</strong>.</td></tr>
              <tr><td>Cost</td><td>APIs usually charge per token, for both input and output tokens. Prices differ by model, so check the official docs.</td></tr>
              <tr><td>Speed</td><td>The model writes one token at a time. More output tokens take more time.</td></tr>
            </tbody>
          </table>
          <p>With the Anthropic API, every response has a <code>usage</code> field. It shows <code>input_tokens</code> and <code>output_tokens</code>, so you can see what each call used.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: see real tokens</h3>
          <p>This box runs the real GPT-2 tokenizer in your browser. Other models use other tokenizers, but the idea is the same.</p>
          <div class="lcw" data-controller="tokenizer" data-tokenizer-text-value="I love tokenization!"></div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the tokenizer box, type <code>cat</code>, then <code> cat</code> with a space, then <code>Cat</code>. Look at the IDs.</li>
            <li>Type a sentence in English. Then type the same meaning in Hindi or another language you know. Compare the token counts.</li>
            <li>Run the starter code. It builds a character tokenizer and a tiny subword tokenizer. It also counts UTF-8 bytes and estimates a cost.</li>
            <li>Add a new piece to <code>SUBWORDS</code>, such as <code>"able"</code>, and see how the token count changes.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Models read and write tokens, not words. Limits, speed and cost are all counted in tokens, so the same text can cost more in one language than another.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Three ways to split text, plus token IDs and a cost estimate.

        text = "unbelievable tokenizers are unbelievably useful"

        # 1) Character tokenizer: every character is a token.
        chars = sorted(set(text))
        char_vocab = {ch: i for i, ch in enumerate(chars)}      # token -> ID
        char_ids = [char_vocab[ch] for ch in text]
        print("Characters:", len(char_ids), "tokens")
        print("  first IDs:", char_ids[:12])

        # 2) Word tokenizer: split on spaces.
        words = text.split()
        print("Words:     ", len(words), "tokens:", words)

        # 3) Tiny subword tokenizer: take the longest known piece each time.
        SUBWORDS = ["un", "believ", "ably", "token", "izer", "s", " ", "are", "use", "ful"]
        SUBWORDS += list("abcdefghijklmnopqrstuvwxyz")      # single letters, so most lowercase text is known
        sub_vocab = {piece: i for i, piece in enumerate(dict.fromkeys(SUBWORDS))}

        def tokenize(s):
            tokens, i = [], 0
            while i < len(s):
                for size in range(len(s) - i, 0, -1):          # try the longest piece first
                    piece = s[i:i + size]
                    if piece in sub_vocab:
                        tokens.append(piece)
                        i += size
                        break
                else:                                          # unknown character: keep it as its own token
                    tokens.append(s[i])
                    i += 1
            return tokens

        tokens = tokenize(text)
        print("Subwords:  ", len(tokens), "tokens:", tokens)
        print("  IDs:", [sub_vocab.get(t, "?") for t in tokens])        # "?" means not in the vocabulary

        # 4) Other scripts need more bytes. Byte-level tokenizers start from these bytes.
        for sample in ["hello", "नमस्ते"]:
            print(f"{sample!r}: {len(sample)} characters, {len(sample.encode('utf-8'))} UTF-8 bytes")

        # 5) A cost estimate. The price is a made-up example. Real prices are in the official docs.
        PRICE_PER_MILLION_TOKENS = 3.00
        tokens_per_request = 1200
        requests_per_day = 5000
        daily = tokens_per_request * requests_per_day / 1_000_000 * PRICE_PER_MILLION_TOKENS
        print(f"About {tokens_per_request * requests_per_day:,} tokens a day, costing about ${daily:.2f} (example price)")

        # Try it: add "able" to SUBWORDS, or change the text, and compare the token counts.
      PYTHON
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Byte-Pair Encoding: Building a Tokenizer</h1>
        </div>
        <p class="lc-lead">Where does a tokenizer's vocabulary come from? Most LLM tokenizers learn it from text with a method called <strong>byte-pair encoding</strong> (BPE). In this lesson, you will learn the BPE idea step by step. Then you will train a tiny BPE tokenizer yourself in Python.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="The word lowest starts as six single letters. Four merges follow: s plus t, e plus st, o plus w, and l plus ow. At the end the word is two tokens: low and est.">
            <defs><marker id="lw3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g text-anchor="start" font-size="12"><text x="14" y="42" fill="#9b99b8">Start</text><text x="14" y="102" fill="#fcd34d">Merge s + t</text><text x="14" y="162" fill="#fcd34d">Merge e + st</text><text x="14" y="222" fill="#fcd34d">Merge o + w</text><text x="14" y="282" fill="#fcd34d">Merge l + ow</text></g>
              <g fill="#27274e" stroke="#4b4a78">
                <rect x="170" y="20" width="44" height="34" rx="6"/><rect x="220" y="20" width="44" height="34" rx="6"/><rect x="270" y="20" width="44" height="34" rx="6"/><rect x="320" y="20" width="44" height="34" rx="6"/><rect x="370" y="20" width="44" height="34" rx="6"/><rect x="420" y="20" width="44" height="34" rx="6"/>
                <rect x="170" y="80" width="44" height="34" rx="6"/><rect x="220" y="80" width="44" height="34" rx="6"/><rect x="270" y="80" width="44" height="34" rx="6"/><rect x="320" y="80" width="44" height="34" rx="6"/>
                <rect x="170" y="140" width="44" height="34" rx="6"/><rect x="220" y="140" width="44" height="34" rx="6"/><rect x="270" y="140" width="44" height="34" rx="6"/>
                <rect x="170" y="200" width="94" height="34" rx="6"/>
              </g>
              <rect x="370" y="80" width="94" height="34" rx="6" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <rect x="320" y="140" width="144" height="34" rx="6" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <rect x="220" y="200" width="94" height="34" rx="6" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <rect x="320" y="200" width="144" height="34" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="170" y="260" width="144" height="34" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <rect x="320" y="260" width="144" height="34" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="192" y="42">l</text><text x="242" y="42">o</text><text x="292" y="42">w</text><text x="342" y="42">e</text><text x="392" y="42">s</text><text x="442" y="42">t</text>
              <text x="192" y="102">l</text><text x="242" y="102">o</text><text x="292" y="102">w</text><text x="342" y="102">e</text><text x="417" y="102">st</text>
              <text x="192" y="162">l</text><text x="242" y="162">o</text><text x="292" y="162">w</text><text x="392" y="162">est</text>
              <text x="192" y="222">l</text><text x="267" y="222">ow</text><text x="392" y="222">est</text>
              <text x="242" y="282" fill="#6ee7b7">low</text><text x="392" y="282" fill="#6ee7b7">est</text>
              <g stroke="#9b99b8" stroke-width="1.2" marker-end="url(#lw3a)"><line x1="480" y1="37" x2="480" y2="93"/><line x1="480" y1="97" x2="480" y2="153"/><line x1="480" y1="157" x2="480" y2="213"/><line x1="480" y1="217" x2="480" y2="273"/></g>
              <rect x="520" y="20" width="230" height="274" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="635" y="46" font-weight="700" fill="#67e8f9">New tokens in the vocabulary</text>
              <g text-anchor="start"><text x="540" y="102">+ st</text><text x="540" y="162">+ est</text><text x="540" y="222">+ ow</text><text x="540" y="282">+ low</text></g>
              <g text-anchor="start" font-size="11" fill="#9b99b8"><text x="600" y="102">seen 9 times</text><text x="600" y="162">seen 9 times</text><text x="600" y="222">seen 7 times</text><text x="600" y="282">seen 7 times</text></g>
              <text x="380" y="320" font-size="11.5" fill="#9b99b8">"lowest" ends as 2 tokens: low + est</text>
            </g>
          </svg>
          <figcaption>Each merge joins the most frequent pair in the training text into a new token. These are the real merges from this lesson's starter code.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The BPE idea</h3>
          <p>BPE builds a vocabulary from the bottom up. Training works like this:</p>
          <ol class="lc-list">
            <li>Split all training text into single characters (or single bytes).</li>
            <li>Count every <strong>pair</strong> of tokens that sit next to each other.</li>
            <li>Find the pair that appears most often. Join it into one new token and add it to the vocabulary.</li>
            <li>Replace that pair everywhere in the text with the new token.</li>
            <li>Repeat until the vocabulary is the size you want.</li>
          </ol>
          <p>The tokenizer also saves the list of merges, in order. That list <em>is</em> the trained tokenizer.</p>
        </div>
        <div class="lc-card">
          <h3>A worked example</h3>
          <p>The training text has four words. The number shows how often each word appears.</p>
          <pre><code>low: 5   lower: 2   newest: 6   widest: 3</code></pre>
          <table class="lc-table">
            <thead><tr><th>Merge</th><th>Most frequent pair</th><th>Count</th><th>Why that count</th></tr></thead>
            <tbody>
              <tr><td>1</td><td><code>s</code> + <code>t</code></td><td>9</td><td>newest (6) + widest (3)</td></tr>
              <tr><td>2</td><td><code>e</code> + <code>st</code></td><td>9</td><td>newest (6) + widest (3)</td></tr>
              <tr><td>3</td><td><code>o</code> + <code>w</code></td><td>7</td><td>low (5) + lower (2)</td></tr>
              <tr><td>4</td><td><code>l</code> + <code>ow</code></td><td>7</td><td>low (5) + lower (2)</td></tr>
            </tbody>
          </table>
          <p>Common endings like <code>est</code> and common words like <code>low</code> quickly become single tokens. When two pairs have the same count, the program needs a rule to choose. Ours picks by alphabet.</p>
        </div>
        <div class="lc-card">
          <h3>Vocabulary size and unknown words</h3>
          <ul class="lc-list">
            <li><strong>Each merge adds one token.</strong> You choose how many merges to do, so you choose the vocabulary size.</li>
            <li><strong>A bigger vocabulary</strong> means fewer tokens for the same text. But the model needs a bigger table of token vectors to store them.</li>
            <li><strong>Real tokenizers</strong> have vocabularies from tens of thousands to a few hundred thousand tokens.</li>
            <li><strong>Unknown words still work.</strong> A new word is split into smaller known pieces. In the worst case, it becomes single characters.</li>
            <li><strong>Byte-level BPE</strong> starts from the 256 possible byte values instead of letters. Every text, in any language, is made of bytes. So no text is ever unknown.</li>
          </ul>
          <p>To tokenize new text, the tokenizer uses the saved merges in the same order they were learned.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: train BPE in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of BPE training in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Split the training text into single characters or bytes</li>
              <li data-order="2">Count every pair of neighbouring tokens</li>
              <li data-order="3">Pick the pair with the highest count</li>
              <li data-order="4">Join that pair into a new token and add it to the vocabulary</li>
              <li data-order="5">Replace the pair everywhere in the text</li>
              <li data-order="6">Repeat until the vocabulary is big enough</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. It trains BPE on the four words above and prints each merge.</li>
            <li>Look at how it tokenizes new words like <code>slowest</code>. It never saw that word, but it still splits it into known pieces.</li>
            <li>Change <code>NUM_MERGES</code> to 10. Watch whole words become single tokens.</li>
            <li>Add <code>"slower": 8</code> to the corpus. Which merge comes first now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> BPE learns tokens from data. It keeps joining the most common pair. Frequent text becomes few tokens, and rare text becomes many small tokens, but nothing is left out.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Byte-pair encoding (BPE): train a tiny tokenizer on a few words.
        from collections import Counter

        # Training text: each word and how many times it appears.
        corpus = {"low": 5, "lower": 2, "newest": 6, "widest": 3}
        NUM_MERGES = 6                     # each merge adds one token to the vocabulary

        # Step 1: split every word into single characters.
        words = {tuple(word): count for word, count in corpus.items()}
        vocab = sorted({ch for word in corpus for ch in word})
        print("Start vocabulary:", vocab)

        def count_pairs(words):
            pairs = Counter()
            for pieces, count in words.items():
                for a, b in zip(pieces, pieces[1:]):
                    pairs[(a, b)] += count
            return pairs

        def merge(pieces, pair):
            out, i = [], 0
            while i < len(pieces):
                if i + 1 < len(pieces) and (pieces[i], pieces[i + 1]) == pair:
                    out.append(pieces[i] + pieces[i + 1])
                    i += 2
                else:
                    out.append(pieces[i])
                    i += 1
            return tuple(out)

        # Step 2: find the most frequent pair, merge it, repeat.
        merges = []
        for step in range(1, NUM_MERGES + 1):
            pairs = count_pairs(words)
            if not pairs:
                break                                          # every word is one token now
            best = max(pairs, key=lambda p: (pairs[p], p))     # ties: pick by alphabet, so runs repeat
            merges.append(best)
            vocab.append(best[0] + best[1])
            words = {merge(pieces, best): count for pieces, count in words.items()}
            print(f"Merge {step}: {best[0]!r} + {best[1]!r} (seen {pairs[best]} times) -> {best[0] + best[1]!r}")
            print("   words now:", ["|".join(p) for p in words])

        print("\nVocabulary size:", len(vocab))

        # Step 3: tokenize new words by using the merges in the same order.
        def tokenize(word):
            pieces = tuple(word)
            for pair in merges:
                pieces = merge(pieces, pair)
            return list(pieces)

        for word in ["lowest", "slowest", "newer", "wide"]:
            print(f"{word:8} -> {tokenize(word)}")

        # Byte-level BPE starts from bytes, so even unseen letters have a token.
        print("\n'zebra' as UTF-8 bytes:", list("zebra".encode("utf-8")))

        # Try it: change NUM_MERGES to 10, or add "slower": 8 to the corpus, and run again.
      PYTHON
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Embeddings: Words as Vectors</h1>
        </div>
        <p class="lc-lead">A token ID like 812 is just a label. It says nothing about meaning. So the first thing an LLM does is turn each token ID into an <strong>embedding</strong>: a vector (a list of numbers) that describes the token. In this lesson, you will learn how that works, and how to measure if two vectors are similar.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: the token cat has ID 812. The model looks up row 812 in the embedding table and gets a vector of numbers. Right: a 2D map where cat, kitten and dog are close together, and car, bus and train are close together in another area.">
            <defs><marker id="lw4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="360" height="280" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="190" y="36" font-weight="700">1. Look up the vector</text>
              <rect x="30" y="56" width="90" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="75" y="79">"·cat"</text>
              <line x1="122" y1="74" x2="156" y2="74" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw4a)"/>
              <rect x="160" y="56" width="90" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="205" y="79">ID 812</text>
              <text x="190" y="120" font-size="11.5" fill="#9b99b8">embedding table (one row per token)</text>
              <g text-anchor="start" font-size="12">
                <rect x="30" y="130" width="320" height="28" rx="4" fill="#27274e"/><text x="40" y="149" fill="#9b99b8">811</text><text x="90" y="149" fill="#9b99b8">0.12  0.40  -0.33  …</text>
                <rect x="30" y="162" width="320" height="28" rx="4" fill="#27274e" stroke="#22d3ee" stroke-width="2"/><text x="40" y="181" fill="#67e8f9">812</text><text x="90" y="181">0.21  -0.54  0.88  …</text>
                <rect x="30" y="194" width="320" height="28" rx="4" fill="#27274e"/><text x="40" y="213" fill="#9b99b8">813</text><text x="90" y="213" fill="#9b99b8">-0.70  0.05  0.19  …</text>
              </g>
              <path d="M205,94 Q330,110 340,158" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw4a)"/>
              <text x="190" y="250" fill="#67e8f9">vector for "·cat"</text>
              <text x="190" y="272" font-size="11" fill="#9b99b8">real vectors have hundreds or thousands of numbers</text>
              <rect x="390" y="10" width="360" height="280" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="570" y="36" font-weight="700">2. Similar meaning, close vectors</text>
              <line x1="420" y1="265" x2="730" y2="265" stroke="#4b4a78"/><line x1="420" y1="265" x2="420" y2="55" stroke="#4b4a78"/>
              <g stroke="#10b981" stroke-width="1.5" stroke-dasharray="4 3" marker-end="url(#lw4a)"><line x1="420" y1="265" x2="496" y2="96"/><line x1="420" y1="265" x2="527" y2="98"/></g>
              <g stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="4 3" marker-end="url(#lw4a)"><line x1="420" y1="265" x2="672" y2="214"/></g>
              <g fill="#10b981"><circle cx="500" cy="88" r="5"/><circle cx="532" cy="90" r="5"/><circle cx="516" cy="118" r="5"/></g>
              <g fill="#10b981" font-size="12"><text x="484" y="76">cat</text><text x="552" y="84">kitten</text><text x="545" y="126">dog</text></g>
              <g fill="#f59e0b"><circle cx="680" cy="212" r="5"/><circle cx="700" cy="186" r="5"/><circle cx="652" cy="190" r="5"/></g>
              <g fill="#fcd34d" font-size="12"><text x="680" y="236">car</text><text x="716" y="176">bus</text><text x="640" y="178">train</text></g>
              <text x="620" y="150" font-size="11" fill="#9b99b8">small angle = similar</text>
            </g>
          </svg>
          <figcaption>The model looks up each token's vector in a table. After training, tokens with similar meanings have vectors that point in similar directions. (Real vectors have far more than 2 numbers.)</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From token ID to vector</h3>
          <p>A <strong>vector</strong> is a list of numbers, like <code>[0.21, -0.54, 0.88]</code>. The model has an <strong>embedding table</strong>. It has one row for every token in the vocabulary. Each row is that token's vector.</p>
          <p>Turning a token into a vector is a simple lookup. Token ID 812 means "take row 812". Here is a tiny table with 4 numbers per token:</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Token</th><th>Vector (4 numbers, example)</th></tr></thead>
            <tbody>
              <tr><td>0</td><td>cat</td><td>[0.9, 0.8, 0.1, 0.0]</td></tr>
              <tr><td>1</td><td>dog</td><td>[0.8, 0.9, 0.2, 0.1]</td></tr>
              <tr><td>…</td><td>…</td><td>…</td></tr>
              <tr><td>3</td><td>car</td><td>[0.1, 0.0, 0.9, 0.2]</td></tr>
            </tbody>
          </table>
          <p>In real models, each vector has hundreds or thousands of numbers. This length is called the <strong>embedding size</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Cosine similarity: are two vectors alike?</h3>
          <p>Think of each vector as an arrow. <strong>Cosine similarity</strong> measures the angle between two arrows. It gives a number from -1 to 1.</p>
          <ul class="lc-list">
            <li><strong>Close to 1:</strong> the arrows point the same way. The tokens are used in similar ways.</li>
            <li><strong>Close to 0:</strong> the arrows are not related.</li>
            <li><strong>Close to -1:</strong> the arrows point in opposite directions.</li>
          </ul>
          <p>The formula is: multiply the vectors number by number and add the results (the <strong>dot product</strong>). Then divide by the length of each vector.</p>
          <pre><code>cat = [0.9, 0.8]    dog = [0.8, 0.9]
        dot    = 0.9*0.8 + 0.8*0.9       = 1.44
        length = sqrt(0.9² + 0.8²)       = 1.204  (same for dog)
        cosine = 1.44 / (1.204 * 1.204)  = 0.99   very similar</code></pre>
        </div>
        <div class="lc-card">
          <h3>The table is learned</h3>
          <p>Nobody types these numbers in. At the start of training, the table is filled with small random numbers. During training, the numbers are changed a little after each guess, so predictions get better.</p>
          <p>Tokens that appear in similar places, such as "cat" and "dog", slowly get similar vectors. This helps the model: what it learns about "cat" also helps a little with "dog".</p>
          <p>Each number in a vector usually has no simple human meaning. The meaning is in the pattern of all the numbers together.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: close or far?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">In a well-trained model, which pairs of words would have similar vectors?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="close" data-label="Similar vectors"></div>
              <div data-sorter-target="bucket" data-bucket="far" data-label="Not similar"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="close" data-why="Both are young or adult cats. They appear in very similar sentences.">cat and kitten</li>
              <li data-bucket="close" data-why="They mean almost the same thing, so they fit the same places in a sentence.">happy and glad</li>
              <li data-bucket="close" data-why="Both are capital cities. Text talks about them in similar ways.">Washington, D.C. and London</li>
              <li data-bucket="far" data-why="They almost never appear in the same kind of sentence.">banana and keyboard</li>
              <li data-bucket="close" data-why="They are two forms of the same verb.">run and ran</li>
              <li data-bucket="far" data-why="One is a food and one is a type of government. Their contexts are very different.">pizza and democracy</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. It looks up token vectors in a small table. Then it finds the most similar words to "cat" using cosine similarity.</li>
            <li>It then does the same with a <em>random</em> table. The results make no sense. That is what a model has before training.</li>
            <li>Add <code>"puppy"</code> to the end of <code>tokens</code>, and a vector close to dog's to the end of <code>table</code>. Check that it shows up as a close match.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An embedding turns a token ID into a vector the model can compute with. Training places tokens with similar uses close together, and cosine similarity measures how close they are.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Embeddings: look up token vectors and compare them with cosine similarity.
        import math
        import random

        # A tiny "trained" embedding table: one row (vector) per token. We wrote these numbers by hand.
        tokens = ["cat", "dog", "kitten", "car", "bus", "apple", "banana"]
        vocab = {tok: i for i, tok in enumerate(tokens)}        # token -> ID
        table = [
            [0.9, 0.8, 0.1, 0.0],    # cat
            [0.8, 0.9, 0.2, 0.1],    # dog
            [0.9, 0.7, 0.0, 0.1],    # kitten
            [0.1, 0.0, 0.9, 0.2],    # car
            [0.0, 0.1, 0.8, 0.1],    # bus
            [0.1, 0.0, 0.1, 0.9],    # apple
            [0.0, 0.1, 0.2, 0.8],    # banana
        ]

        def embed(token, table):
            return table[vocab[token]]                          # the lookup: ID -> row

        def cosine(a, b):
            dot = sum(x * y for x, y in zip(a, b))
            length_a = math.sqrt(sum(x * x for x in a))
            length_b = math.sqrt(sum(y * y for y in b))
            return dot / (length_a * length_b)

        def most_similar(word, table):
            scores = [(other, cosine(embed(word, table), embed(other, table))) for other in tokens if other != word]
            return sorted(scores, key=lambda s: -s[1])

        print("ID of 'cat':", vocab["cat"], " vector:", embed("cat", table))
        print("\nMost similar to 'cat' (trained table):")
        for other, score in most_similar("cat", table):
            print(f"  {other:7} {score:5.2f}")

        # Before training, the table is random. Similar words are not close yet.
        random.seed(1)
        random_table = [[random.uniform(-1, 1) for _ in range(4)] for _ in tokens]
        print("\nMost similar to 'cat' (random table, before training):")
        for other, score in most_similar("cat", random_table):
            print(f"  {other:7} {score:5.2f}")

        # Try it: add "puppy" to the end of tokens, and [0.8, 0.9, 0.1, 0.1] to the end of table.
      PYTHON
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Position: Knowing the Order of Words</h1>
        </div>
        <p class="lc-lead">"Dog bites man" and "man bites dog" use the same three tokens. But they mean very different things. In this lesson, you will learn why a transformer needs extra help to know word order. You will also learn the main ways models add <strong>position</strong> information to their tokens.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="For the sentence man bites dog, each token vector is added to a position vector for position 0, 1 or 2. The sums are the input vectors that go into the model.">
            <defs><marker id="lw5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g text-anchor="start" font-size="12" fill="#9b99b8"><text x="14" y="50">Token vector</text><text x="14" y="120">Position vector</text><text x="14" y="206">Input to model</text></g>
              <rect x="160" y="28" width="120" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="220" y="51">man</text>
              <rect x="340" y="28" width="120" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="400" y="51">bites</text>
              <rect x="520" y="28" width="120" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="580" y="51">dog</text>
              <g font-size="18" fill="#9b99b8"><text x="220" y="88">+</text><text x="400" y="88">+</text><text x="580" y="88">+</text></g>
              <rect x="160" y="98" width="120" height="36" rx="8" fill="#27274e" stroke="#ec4899"/><text x="220" y="121">position 0</text>
              <rect x="340" y="98" width="120" height="36" rx="8" fill="#27274e" stroke="#ec4899"/><text x="400" y="121">position 1</text>
              <rect x="520" y="98" width="120" height="36" rx="8" fill="#27274e" stroke="#ec4899"/><text x="580" y="121">position 2</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw5a)"><line x1="220" y1="136" x2="220" y2="178"/><line x1="400" y1="136" x2="400" y2="178"/><line x1="580" y1="136" x2="580" y2="178"/></g>
              <rect x="160" y="184" width="120" height="36" rx="8" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/><text x="220" y="207" fill="#67e8f9">"man" at 0</text>
              <rect x="340" y="184" width="120" height="36" rx="8" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/><text x="400" y="207" fill="#67e8f9">"bites" at 1</text>
              <rect x="520" y="184" width="120" height="36" rx="8" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/><text x="580" y="207" fill="#67e8f9">"dog" at 2</text>
              <text x="400" y="252" font-size="12" fill="#9b99b8">In "dog bites man", dog gets position 0 instead, so its input vector is different.</text>
            </g>
          </svg>
          <figcaption>One common method: add a position vector to each token vector. Now the same word at a different place gives a different input.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Order changes meaning</h3>
          <table class="lc-table">
            <thead><tr><th>Sentence</th><th>Who does what?</th></tr></thead>
            <tbody>
              <tr><td>Dog bites man.</td><td>The dog does the biting.</td></tr>
              <tr><td>Man bites dog.</td><td>The man does the biting.</td></tr>
              <tr><td><code>x = a - b</code></td><td>A different answer from <code>x = b - a</code></td></tr>
            </tbody>
          </table>
          <p>The tokens are the same, so the token vectors are the same too. Something else must tell the model where each token is.</p>
        </div>
        <div class="lc-card">
          <h3>Attention alone ignores order</h3>
          <p>Transformers use <strong>attention</strong> (a step where each token looks at the other tokens to collect information). You will learn how it works later in this course.</p>
          <p>Attention compares tokens by their vectors only. It has no idea which token came first. If you shuffle the tokens, each token gets exactly the same result as before, just in a new place. (This is true for plain attention. Chat models also use a mask, which you will meet later, but they still need clear position information.)</p>
          <p>So without extra help, "dog bites man" and "man bites dog" would look the same to attention. The fix is to put position information into the vectors.</p>
        </div>
        <div class="lc-card">
          <h3>How models add position</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>How it works</th><th>Where you see it</th></tr></thead>
            <tbody>
              <tr><td>Learned position embeddings</td><td>A second table with one learned vector per position (0, 1, 2 …). It is added to each token vector.</td><td>GPT-2 and other early models</td></tr>
              <tr><td>Sine and cosine positions</td><td>Fixed vectors made from sine and cosine waves of different speeds. They are added to each token vector.</td><td>The original transformer paper, "Attention Is All You Need" (2017)</td></tr>
              <tr><td>Rotary positions (RoPE)</td><td>Inside attention, vectors are rotated by an angle that depends on their position. The attention score then depends on how far apart two tokens are.</td><td>Many modern models</td></tr>
            </tbody>
          </table>
          <p>With rotary positions, the <em>distance</em> between two tokens matters most. "3 tokens apart" looks the same at the start or the end of the text.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: does order matter here?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Swap the order as shown. Does the meaning change?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="changes" data-label="Meaning changes"></div>
              <div data-sorter-target="bucket" data-bucket="same" data-label="Meaning stays the same"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="changes" data-why="Now a different person pays.">"Ravi paid Asha" to "Asha paid Ravi"</li>
              <li data-bucket="same" data-why="A list joined by 'and' means the same in any order.">"tea and biscuits" to "biscuits and tea"</li>
              <li data-bucket="changes" data-why="Subtraction gives a different result when you swap the numbers.">"x = a - b" to "x = b - a"</li>
              <li data-bucket="changes" data-why="The first says you ate only one. The second says nobody else ate one.">"I only ate one" to "Only I ate one"</li>
              <li data-bucket="same" data-why="Addition gives the same result in any order.">"total = a + b" to "total = b + a"</li>
            </ul>
          </div>
          <p>A model must handle both kinds. Position information lets it learn when order matters.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. First, it checks the token vectors of both sentences. They are the same set of vectors, only in a different order.</li>
            <li>Next, it adds sine and cosine position vectors. Now "dog" at position 0 and "dog" at position 2 get different input vectors.</li>
            <li>Last, it shows the rotary idea with 2 numbers. The score is the same for any two tokens that are 2 steps apart.</li>
            <li>Change <code>angle=0.5</code> to <code>1.0</code>, or add new position pairs to the rotary list, and run it again.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Token vectors say <em>what</em> a token is. Position information says <em>where</em> it is. A transformer needs both to tell "dog bites man" from "man bites dog".
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Position: why the model needs to know word order.
        import math

        DIM = 4
        token_vectors = {                     # tiny hand-written token embeddings
            "dog":   [0.9, 0.1, 0.3, 0.0],
            "bites": [0.0, 0.8, 0.1, 0.5],
            "man":   [0.2, 0.3, 0.9, 0.1],
        }

        def add(a, b):
            return [x + y for x, y in zip(a, b)]

        def show(v):
            return "[" + ", ".join(f"{x:5.2f}" for x in v) + "]"

        s1 = ["dog", "bites", "man"]
        s2 = ["man", "bites", "dog"]

        # 1) Without position, both sentences give the same set of vectors, only shuffled.
        #    Attention treats its input like a set, so it cannot tell them apart.
        set1 = sorted(tuple(token_vectors[t]) for t in s1)
        set2 = sorted(tuple(token_vectors[t]) for t in s2)
        print("Without position, same set of vectors?", set1 == set2)

        # 2) Sine and cosine positions, as in "Attention Is All You Need" (2017).
        def position_vector(pos):
            vec = []
            for i in range(DIM):
                speed = 1 / (10000 ** ((i // 2 * 2) / DIM))
                vec.append(math.sin(pos * speed) if i % 2 == 0 else math.cos(pos * speed))
            return vec

        print("\nPosition vectors:")
        for pos in range(3):
            print(f"  position {pos}:", show(position_vector(pos)))

        def inputs(sentence):
            return [add(token_vectors[tok], position_vector(pos)) for pos, tok in enumerate(sentence)]

        in1, in2 = inputs(s1), inputs(s2)
        print("\nWith position, the input for 'dog' is different in each sentence:")
        print("  dog bites man -> dog at 0:", show(in1[0]))
        print("  man bites dog -> dog at 2:", show(in2[2]))
        same = sorted(map(tuple, in1)) == sorted(map(tuple, in2))
        print("With position, same set of vectors?", same)

        # 3) The rotary idea (RoPE) with 2 numbers: rotate each vector by an angle based on its position.
        def rotate(v, pos, angle=0.5):
            a = pos * angle
            return [v[0] * math.cos(a) - v[1] * math.sin(a), v[0] * math.sin(a) + v[1] * math.cos(a)]

        query, key = [1.0, 0.2], [0.6, 0.8]
        print("\nRotary positions: the score depends on the distance between tokens")
        for q_pos, k_pos in [(2, 0), (7, 5), (12, 10), (5, 4)]:
            q, k = rotate(query, q_pos), rotate(key, k_pos)
            score = q[0] * k[0] + q[1] * k[1]
            print(f"  query at {q_pos:2}, key at {k_pos:2} (distance {q_pos - k_pos}): score {score:.3f}")

        # Try it: change angle=0.5 to 1.0, or add pairs like (9, 7) to the rotary list.
      PYTHON
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">The Transformer at a Glance</h1>
        </div>
        <p class="lc-lead">Almost every large language model today is a <strong>transformer</strong>. This is a design for a neural network (a big maths function with learned numbers). It was introduced in the paper "Attention Is All You Need" (2017). In this lesson you will see the whole machine from far away. Text goes in as tokens. It passes through a stack of layers. Out comes one score for every token the model knows. The next lessons open each part one by one.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="Tokens become vectors. The vectors pass through a stack of layers. Each layer has attention and a feed-forward network, and each adds its result to the token's vector. The output layer gives a score for every vocabulary token, and mat gets the highest score.">
            <defs><marker id="lw6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="60" y="12" width="300" height="36" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="210" y="35">Tokens: the · cat · sat · on · the</text>
              <line x1="210" y1="48" x2="210" y2="68" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw6a)"/>
              <rect x="60" y="72" width="300" height="46" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="210" y="92">Embeddings + positions</text>
              <text x="210" y="109" font-size="11" fill="#9b99b8">one vector (list of numbers) per token</text>
              <line x1="210" y1="118" x2="210" y2="136" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw6a)"/>
              <rect x="30" y="140" width="370" height="126" rx="12" fill="#1f1f44" stroke="#8b5cf6" stroke-dasharray="6 4"/>
              <text x="44" y="158" text-anchor="start" font-weight="700" fill="#c4b5fd">One layer</text>
              <text x="388" y="158" text-anchor="end" font-size="11" fill="#9b99b8">repeated N times</text>
              <rect x="70" y="166" width="260" height="38" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="200" y="190">Attention: tokens share information</text>
              <line x1="200" y1="204" x2="200" y2="216" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw6a)"/>
              <rect x="70" y="220" width="260" height="38" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="200" y="244">Feed-forward: each token alone</text>
              <circle cx="362" cy="185" r="12" fill="#1f1f44" stroke="#22d3ee"/><text x="362" y="190" fill="#22d3ee" font-weight="700">+</text>
              <circle cx="362" cy="239" r="12" fill="#1f1f44" stroke="#22d3ee"/><text x="362" y="244" fill="#22d3ee" font-weight="700">+</text>
              <line x1="210" y1="266" x2="210" y2="286" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw6a)"/>
              <rect x="60" y="290" width="300" height="46" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="210" y="310">Output layer</text>
              <text x="210" y="327" font-size="11" fill="#9b99b8">a score for every vocabulary token</text>
              <line x1="362" y1="313" x2="444" y2="313" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw6a)"/>
              <rect x="450" y="12" width="290" height="116" rx="12" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="595" y="36" font-weight="700" fill="#67e8f9">The residual stream</text>
              <text x="595" y="60" font-size="12">Each token's vector flows up</text>
              <text x="595" y="78" font-size="12">through every layer.</text>
              <text x="595" y="96" font-size="12">Each part adds its result (+)</text>
              <text x="595" y="114" font-size="12">to that vector.</text>
              <rect x="450" y="150" width="290" height="190" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="595" y="174" font-weight="700" fill="#fcd34d">Scores (logits) for the next token</text>
              <g text-anchor="start" font-size="12">
                <text x="468" y="206">mat</text><rect x="530" y="194" width="150" height="16" rx="3" fill="#f59e0b"/><text x="686" y="206">8.2</text>
                <text x="468" y="234">floor</text><rect x="530" y="222" width="110" height="16" rx="3" fill="#f59e0b" opacity="0.8"/><text x="646" y="234">6.1</text>
                <text x="468" y="262">bed</text><rect x="530" y="250" width="84" height="16" rx="3" fill="#f59e0b" opacity="0.65"/><text x="620" y="262">4.7</text>
                <text x="468" y="290">cat</text><rect x="530" y="278" width="34" height="16" rx="3" fill="#f59e0b" opacity="0.5"/><text x="570" y="290">1.9</text>
              </g>
              <text x="595" y="324" font-size="11" fill="#9b99b8">… and one score for every other token</text>
            </g>
          </svg>
          <figcaption>The big picture. Vectors go up through N layers. Each layer changes them a little. The last step scores every possible next token. (The scores are example numbers.)</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main parts</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it does</th><th>What goes out</th></tr></thead>
            <tbody>
              <tr><td><strong>Embedding</strong></td><td>Looks up a vector (a list of numbers) for each token ID</td><td>One vector per token</td></tr>
              <tr><td><strong>Position information</strong></td><td>Tells the model the order of the tokens</td><td>The same vectors, now with order</td></tr>
              <tr><td><strong>Attention</strong></td><td>Lets each token collect information from other tokens</td><td>A change to add to each vector</td></tr>
              <tr><td><strong>Feed-forward network</strong></td><td>Works on each token alone and processes what it has collected</td><td>A change to add to each vector</td></tr>
              <tr><td><strong>Residual stream</strong></td><td>The running vector for each token. Every part adds its change to it.</td><td>Updated vectors</td></tr>
              <tr><td><strong>Output layer</strong></td><td>Turns the last vector into a score for every token in the vocabulary</td><td>Scores called <em>logits</em></td></tr>
            </tbody>
          </table>
          <p>The <strong>vocabulary</strong> is the full list of tokens the model knows. It often has tens of thousands of tokens, or more.</p>
        </div>
        <div class="lc-card">
          <h3>A stack of the same layer</h3>
          <p>A transformer is built from many copies of one <strong>layer</strong> (also called a block). Every layer has the same design: attention, then a feed-forward network. But each layer has its own learned numbers, called <strong>weights</strong> or parameters. Small models have a few layers. Large models have dozens.</p>
          <p>The shape never changes inside the stack. If 5 tokens go in, 5 vectors come out of every layer:</p>
          <pre><code>tokens:        5 token IDs
        embeddings:    5 vectors of d numbers   (d is the model width)
        layer 1:       5 vectors of d numbers
        ...
        layer N:       5 vectors of d numbers
        output layer:  5 lists of scores, one score per vocabulary token</code></pre>
          <p>Researchers find that early layers often deal with simple things, such as spelling and nearby words. Later layers often deal with more abstract meaning. This is a rough pattern, not a strict rule.</p>
          <p>The 2017 transformer had two halves: an encoder and a decoder. It was built for translation. Most chat models today use only the decoder half. This is called a <strong>decoder-only</strong> transformer, and it is what this course describes.</p>
        </div>
        <div class="lc-card">
          <h3>What comes out</h3>
          <p>The model makes a list of scores at every position. To choose the next token, it uses the scores from the <em>last</em> position. That position has had the chance to collect information from the whole prompt.</p>
          <p>Then the model turns the scores into probabilities. It picks one token, adds it to the text, and runs again. The lesson on logits and softmax shows this step in detail.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the path through the model</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in order. What happens to a prompt inside a transformer?</p>
            <ol data-sequence-target="list">
              <li data-order="1">The text is split into tokens, and each token gets its ID</li>
              <li data-order="2">Each token ID is turned into an embedding vector</li>
              <li data-order="3">In the first layer, attention lets the tokens share information</li>
              <li data-order="4">The feed-forward network updates each token on its own</li>
              <li data-order="5">The same two steps repeat in every other layer</li>
              <li data-order="6">The output layer gives a score for every vocabulary token</li>
              <li data-order="7">The scores become probabilities, and one next token is chosen</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code runs a tiny transformer with 4 numbers per vector and 2 layers. The weights are random, so it has learned nothing yet.</li>
            <li>Run it. Follow the prompt through each stage: tokens, vectors, layers and scores.</li>
            <li>Change <code>N_LAYERS</code> to 6, or <code>D</code> to 8. The numbers change, but the shapes stay the same.</li>
            <li>The top guess is random. Training is what makes the scores useful. You will learn about training later in this course.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A transformer is a stack of the same layer. Attention moves information between tokens. The feed-forward network works on each token alone. Both add their results to the residual stream. At the end, the model gives a score for every possible next token.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # The transformer at a glance: a toy forward pass with tiny numbers.
        # The weights are random, not trained, so the "prediction" is random too.
        # Real models do the same steps with thousands of numbers per vector.
        import math
        import random

        random.seed(0)
        VOCAB = ["the", "cat", "sat", "on", "mat", "."]
        D = 4            # numbers in each token vector (real models: thousands)
        N_LAYERS = 2     # layers in the stack (real models: dozens)

        def rand_vec(n):
            return [random.uniform(-1, 1) for _ in range(n)]

        def rand_matrix(rows, cols):
            return [rand_vec(cols) for _ in range(rows)]

        def add(a, b):
            return [x + y for x, y in zip(a, b)]

        def dot(a, b):
            return sum(x * y for x, y in zip(a, b))

        def matvec(m, v):             # m has one row per output number
            return [dot(row, v) for row in m]

        def norm(v):                  # layer normalisation: mean 0, spread 1
            mean = sum(v) / len(v)
            var = sum((x - mean) ** 2 for x in v) / len(v)
            return [(x - mean) / math.sqrt(var + 1e-5) for x in v]

        def show(v):
            return "[" + ", ".join(f"{x:+.2f}" for x in v) + "]"

        embedding = {w: rand_vec(D) for w in VOCAB}
        positions = [rand_vec(D) for _ in range(8)]
        layers = [{"w1": rand_matrix(8, D), "w2": rand_matrix(D, 8)} for _ in range(N_LAYERS)]

        def attention(vectors):
            # Toy attention: each token takes the average of itself and the tokens before it.
            # Real attention learns how much each token matters (see the attention lessons).
            out = []
            for i in range(len(vectors)):
                seen = vectors[: i + 1]
                out.append([sum(col) / len(seen) for col in zip(*seen)])
            return out

        def feed_forward(v, layer):
            hidden = [max(0.0, h) for h in matvec(layer["w1"], v)]   # ReLU
            return [x * 0.5 for x in matvec(layer["w2"], hidden)]

        prompt = ["the", "cat", "sat", "on", "the"]
        print("1) Tokens:", prompt)

        stream = [add(embedding[w], positions[i]) for i, w in enumerate(prompt)]
        print(f"2) Embeddings + positions: {len(stream)} vectors of {D} numbers")
        print("   last token:", show(stream[-1]))

        for n, layer in enumerate(layers, start=1):
            mixed = attention([norm(v) for v in stream])
            stream = [add(v, m) for v, m in zip(stream, mixed)]             # residual add
            stream = [add(v, feed_forward(norm(v), layer)) for v in stream]  # residual add
            print(f"3) After layer {n} (attention + feed-forward): last token {show(stream[-1])}")

        final = norm(stream[-1])
        logits = {w: dot(final, embedding[w]) for w in VOCAB}   # output layer (shares the embedding table)
        print(f"4) Output layer: one score (logit) for each of the {len(VOCAB)} vocabulary tokens")
        for w, s in sorted(logits.items(), key=lambda p: -p[1]):
            print(f"   {w!r:7} {s:+.2f}")
        print("Top next-token guess:", max(logits, key=logits.get), "(random, because nothing is trained)")

        # Try it: change N_LAYERS to 6 or D to 8 and run again. The shapes stay the same: one vector per token in, one score per vocabulary word out.
      PYTHON
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Attention: Letting Words Look at Each Other</h1>
        </div>
        <p class="lc-lead">The word "bank" can mean the side of a river. It can also mean a place for money. Its embedding is the same in both sentences, so the model needs another way to tell them apart. That way is <strong>attention</strong>. Attention lets each token look at the other tokens and take in information from the ones that matter. In this lesson you will learn the idea of attention, without the maths. The next lesson shows the maths.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Two sentences. In I sat by the river bank, the word bank gives a large weight, 0.36, to river, so it moves towards the river meaning. In I put cash in the bank, bank gives 0.37 to cash, so it moves towards the money meaning.">
            <defs><marker id="lw7a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="40" y="90" width="80" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="80" y="111">I</text>
              <text x="80" y="140" font-size="11.5" fill="#9b99b8">0.06</text>
              <rect x="132" y="90" width="80" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="172" y="111">sat</text>
              <text x="172" y="140" font-size="11.5" fill="#9b99b8">0.07</text>
              <rect x="224" y="90" width="80" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="264" y="111">by</text>
              <text x="264" y="140" font-size="11.5" fill="#9b99b8">0.06</text>
              <rect x="316" y="90" width="80" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="356" y="111">the</text>
              <text x="356" y="140" font-size="11.5" fill="#9b99b8">0.06</text>
              <rect x="408" y="90" width="80" height="32" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="448" y="111">river</text>
              <text x="448" y="140" font-size="11.5" fill="#3b82f6" font-weight="700">0.36</text>
              <rect x="500" y="90" width="80" height="32" rx="7" fill="#27274e" stroke="#ec4899"/><text x="540" y="111">bank</text>
              <text x="540" y="140" font-size="11.5" fill="#9b99b8">0.38 (itself)</text>
              <path d="M540,88 Q310.0,-18.799999999999997 86,86" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw7a)"/>
              <path d="M540,88 Q356.0,-2.239999999999995 178,86" fill="none" stroke="#9b99b8" stroke-width="1.6" marker-end="url(#lw7a)"/>
              <path d="M540,88 Q402.0,14.319999999999993 270,86" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw7a)"/>
              <path d="M540,88 Q448.0,30.880000000000003 362,86" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw7a)"/>
              <path d="M540,88 Q494.0,47.44 454,86" fill="none" stroke="#3b82f6" stroke-width="4.2" marker-end="url(#lw7a)"/>
              <line x1="582" y1="106" x2="610" y2="106" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw7a)"/>
              <rect x="614" y="84" width="116" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="672" y="102" font-weight="700">river bank</text><text x="672" y="119" font-size="11" fill="#9b99b8">water sense</text>
              <rect x="40" y="215" width="80" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="80" y="236">I</text>
              <text x="80" y="265" font-size="11.5" fill="#9b99b8">0.06</text>
              <rect x="132" y="215" width="80" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="172" y="236">put</text>
              <text x="172" y="265" font-size="11.5" fill="#9b99b8">0.07</text>
              <rect x="224" y="215" width="80" height="32" rx="7" fill="#27274e" stroke="#f59e0b"/><text x="264" y="236">cash</text>
              <text x="264" y="265" font-size="11.5" fill="#f59e0b" font-weight="700">0.37</text>
              <rect x="316" y="215" width="80" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="356" y="236">in</text>
              <text x="356" y="265" font-size="11.5" fill="#9b99b8">0.06</text>
              <rect x="408" y="215" width="80" height="32" rx="7" fill="#27274e" stroke="#4b4a78"/><text x="448" y="236">the</text>
              <text x="448" y="265" font-size="11.5" fill="#9b99b8">0.06</text>
              <rect x="500" y="215" width="80" height="32" rx="7" fill="#27274e" stroke="#ec4899"/><text x="540" y="236">bank</text>
              <text x="540" y="265" font-size="11.5" fill="#9b99b8">0.38 (itself)</text>
              <path d="M540,213 Q310.0,106.2 86,211" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw7a)"/>
              <path d="M540,213 Q356.0,122.76 178,211" fill="none" stroke="#9b99b8" stroke-width="1.6" marker-end="url(#lw7a)"/>
              <path d="M540,213 Q402.0,139.32 270,211" fill="none" stroke="#f59e0b" stroke-width="4.3" marker-end="url(#lw7a)"/>
              <path d="M540,213 Q448.0,155.88 362,211" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw7a)"/>
              <path d="M540,213 Q494.0,172.44 454,211" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw7a)"/>
              <line x1="582" y1="231" x2="610" y2="231" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw7a)"/>
              <rect x="614" y="209" width="116" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="672" y="227" font-weight="700">money bank</text><text x="672" y="244" font-size="11" fill="#9b99b8">money sense</text>
            </g>
          </svg>
          <figcaption>The token "bank" gives each word a weight. Thicker arrows mean bigger weights. The number under each word is its weight. The weights come from the starter code.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why context matters</h3>
          <p>Each token starts as a vector from the embedding table. The table has one vector for "bank". So "river bank" and "money bank" start with the <em>same</em> vector. That start vector is a mix of both meanings.</p>
          <p>Attention fixes this. The "bank" token looks at the other words in the sentence. It finds "river" or "cash". Then it adds some of that word's information to its own vector. After this step, "bank" has a vector that fits its sentence.</p>
          <p>The same idea works for pronouns. In "The animal did not cross the street because it was too tired", the word "it" needs information from "animal". Attention lets "it" collect that information.</p>
        </div>
        <div class="lc-card">
          <h3>How attention works (the idea)</h3>
          <p>For every token, attention does these steps:</p>
          <ol class="lc-list">
            <li><strong>Score:</strong> give every other token a score. The score shows how useful that token is right now.</li>
            <li><strong>Weights:</strong> turn the scores into <strong>weights</strong>. A weight is a number from 0 to 1. The weights for one token always add up to 1.</li>
            <li><strong>Mix:</strong> take a weighted average of information from the tokens. A big weight means more information from that token.</li>
            <li><strong>Add:</strong> add the result to the token's own vector.</li>
          </ol>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Weight from "bank" (river sentence)</th></tr></thead>
            <tbody>
              <tr><td>I, sat, by, the</td><td>about 0.06 each</td></tr>
              <tr><td>river</td><td>0.36</td></tr>
              <tr><td>bank (itself)</td><td>0.38</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>1.00</strong></td></tr>
            </tbody>
          </table>
          <p>In chat models, a token can only look at itself and the tokens <em>before</em> it. It never looks at later tokens. You will see why in the next lesson.</p>
          <p>Every token does this at the same time, in every layer. Nobody writes rules like "look at the noun". The model learns where to look during training.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: explore attention weights</h3>
          <p>Click a word in the sentence. The widget shows how much that word looks at each of the other words. Try "it" first. Then try "tired". These are example weights made for teaching. A real model has many sets of weights, and they are often less clear.</p>
          <div class="lcw" data-controller="attention"></div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code gives each word a hand-written vector with 3 numbers: money, water and other.</li>
            <li>Run it. In each sentence, "bank" scores every word, turns the scores into weights, and makes a new vector. Check that the weights add up to 1.</li>
            <li>Change the vector for "cash" to <code>[0.5, 0.0, 0.2]</code>. The weight on "cash" goes down, and "bank" moves less towards money.</li>
            <li>Add your own sentence, such as <code>attend("i put cash by the river bank")</code>. Which meaning wins? It is very close. Use only words that are in <code>vectors</code>, or add new ones.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Attention lets every token collect information from the other tokens. Each token gives weights that add up to 1, and takes a weighted mix. This is how the same word gets a different meaning in different sentences.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Attention, simplified: the word "bank" looks at the other words in its sentence.
        # Each word has a hand-written vector with 3 numbers: [money, water, other].
        # Real models learn vectors with thousands of numbers. The idea is the same.
        import math

        vectors = {
            "i":     [0.0, 0.0, 1.0],
            "sat":   [0.0, 0.2, 0.8],
            "by":    [0.0, 0.0, 1.0],
            "put":   [0.1, 0.0, 0.8],
            "cash":  [2.0, 0.0, 0.2],
            "in":    [0.0, 0.0, 1.0],
            "the":   [0.0, 0.0, 1.0],
            "river": [0.0, 2.0, 0.2],
            "bank":  [1.0, 1.0, 0.3],   # on its own, "bank" could mean either thing
        }

        def dot(a, b):
            return sum(x * y for x, y in zip(a, b))

        def softmax(scores):
            exps = [math.exp(s) for s in scores]
            total = sum(exps)
            return [e / total for e in exps]

        def attend(sentence, word="bank"):
            words = sentence.split()
            me = vectors[word]
            scores = [dot(me, vectors[w]) for w in words]   # how well each word matches "bank"
            weights = softmax(scores)                       # turn scores into weights that add up to 1
            new_vec = [sum(wt * vectors[w][d] for wt, w in zip(weights, words)) for d in range(3)]
            print(f'Sentence: "{sentence}"')
            for w, wt in zip(words, weights):
                print(f"  {w:6} weight {wt:.2f}  " + "#" * round(wt * 40))
            print(f"  weights add up to {sum(weights):.2f}")
            print(f"  new 'bank' vector [money, water, other] = [{new_vec[0]:.2f}, {new_vec[1]:.2f}, {new_vec[2]:.2f}]")
            meaning = "money bank" if new_vec[0] > new_vec[1] else "river bank"
            print(f"  so here 'bank' leans towards: {meaning}\n")

        attend("i sat by the river bank")
        attend("i put cash in the bank")

        # Try it: change the vector for "cash" to [0.5, 0.0, 0.2] and run again. The pull towards "money" gets weaker.
      PYTHON
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Queries, Keys and Values</h1>
        </div>
        <p class="lc-lead">You know that attention lets each token take information from other tokens. But how does a token decide which tokens matter? The answer is three small vectors for every token: a <strong>query</strong>, a <strong>key</strong> and a <strong>value</strong>. In this lesson you will work through one attention step by hand, with tiny numbers. You will also learn why a token is not allowed to look at future tokens.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A token vector is multiplied by three weight matrices to make a query, a key and a value. The query and each key give a score, which is scaled. Future tokens are masked, then softmax turns the scores into weights. The weights give a weighted sum of the values, which is the new vector for the token.">
            <defs><marker id="lw8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="115" width="100" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="65" y="139">token</text><text x="65" y="157">vector x</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lw8a)">
                <path d="M115,135 Q135,60 156,55"/>
                <line x1="115" y1="143" x2="156" y2="143"/>
                <path d="M115,151 Q135,230 156,235"/>
              </g>
              <rect x="160" y="30" width="170" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="245" y="51">Query q = x · W_q</text><text x="245" y="69" font-size="11" fill="#9b99b8">"what am I looking for?"</text>
              <rect x="160" y="118" width="170" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="245" y="139">Key k = x · W_k</text><text x="245" y="157" font-size="11" fill="#9b99b8">"what do I contain?"</text>
              <rect x="160" y="210" width="170" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="245" y="231">Value v = x · W_v</text><text x="245" y="249" font-size="11" fill="#9b99b8">"what I pass on"</text>
              <rect x="390" y="55" width="170" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="475" y="76">score = q · k ÷ √d_k</text><text x="475" y="94" font-size="11" fill="#9b99b8">for each earlier token</text>
              <rect x="390" y="135" width="170" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="475" y="156">mask, then softmax</text><text x="475" y="174" font-size="11" fill="#9b99b8">weights add up to 1</text>
              <rect x="390" y="215" width="170" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="475" y="236">weighted sum</text><text x="475" y="254" font-size="11" fill="#9b99b8">of the values</text>
              <rect x="600" y="215" width="145" height="50" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="672" y="236">new vector</text><text x="672" y="254" font-size="11" fill="#9b99b8">for this token</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lw8a)">
                <line x1="330" y1="60" x2="386" y2="72"/>
                <line x1="330" y1="138" x2="386" y2="92"/>
                <line x1="475" y1="105" x2="475" y2="131"/>
                <line x1="475" y1="185" x2="475" y2="211"/>
                <line x1="330" y1="240" x2="386" y2="240"/>
                <line x1="560" y1="240" x2="596" y2="240"/>
              </g>
              <rect x="600" y="20" width="145" height="165" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="672" y="42" font-weight="700" fill="#c4b5fd">Tiny example</text>
              <text x="672" y="68" font-size="12">q = [1, 1]</text>
              <text x="672" y="90" font-size="12">k = [2, 1]</text>
              <text x="672" y="112" font-size="12">q · k = 1×2 + 1×1 = 3</text>
              <text x="672" y="134" font-size="12">d_k = 2</text>
              <text x="672" y="156" font-size="12">3 ÷ √2 ≈ 2.12</text>
            </g>
          </svg>
          <figcaption>One attention step for one token. Every token does this at the same time.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three roles for every token</h3>
          <p>Each token vector is multiplied by three learned weight matrices (tables of numbers). This gives three new, shorter vectors:</p>
          <table class="lc-table">
            <thead><tr><th>Vector</th><th>Its job</th><th>Example for the token "it"</th></tr></thead>
            <tbody>
              <tr><td><strong>Query</strong> (q)</td><td>Describes what this token is looking for</td><td>"I need a noun that I could refer to"</td></tr>
              <tr><td><strong>Key</strong> (k)</td><td>Describes what this token offers, so queries can find it</td><td>"animal": "I am a noun about a living thing"</td></tr>
              <tr><td><strong>Value</strong> (v)</td><td>The information this token passes on if it is chosen</td><td>Details about the animal</td></tr>
            </tbody>
          </table>
          <p>The words in the last column are only a way to think about it. Real queries and keys are lists of numbers. Nobody writes their meaning. The model learns the weight matrices during training.</p>
        </div>
        <div class="lc-card">
          <h3>The calculation, step by step</h3>
          <pre><code>Attention(Q, K, V) = softmax(Q · Kᵀ / √d_k  +  mask) · V</code></pre>
          <ol class="lc-list">
            <li><strong>Dot product.</strong> Multiply the query and a key number by number, then add the results. A big result means a good match.</li>
            <li><strong>Scale.</strong> Divide by √d_k. Here d_k is the number of values in each key. Long vectors give big dot products. Without this step, softmax would often give almost all the weight to one token.</li>
            <li><strong>Mask.</strong> Set the score of every future token to minus infinity.</li>
            <li><strong>Softmax.</strong> Turn the scores into weights from 0 to 1 that add up to 1. Minus infinity becomes a weight of exactly 0.</li>
            <li><strong>Weighted sum.</strong> Multiply each value by its weight, and add them up. This is the output for the token.</li>
          </ol>
          <p>In the formula, Q, K and V hold the vectors for all tokens, one row per token. So the model does all tokens at once with fast matrix maths.</p>
        </div>
        <div class="lc-card">
          <h3>Causal masking: no looking ahead</h3>
          <p>In training, the model guesses the next token at every position at the same time. If a token could see later tokens, it could just copy the answer. The <strong>causal mask</strong> stops this. Each token can only look at itself and the tokens before it.</p>
          <p>The same rule helps when the model writes text. Earlier tokens never change, so their keys and values do not change either. The model saves them in a <strong>KV cache</strong> (a store of keys and values). For each new token, it only computes one new query, key and value.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one attention step by hand</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="The task">Sentence: "the cat sat". Find the attention output for the last token, "sat". These numbers match the starter code.</li>
              <li data-kind="thought" data-label="Step 1 · make vectors">Query of "sat": q = [1, 1]. Keys: the = [0, 1], cat = [2, 1], sat = [1, 2]. Values: the = [1, 0], cat = [2, 3], sat = [1, 2].</li>
              <li data-kind="tool" data-label="Step 2 · dot products">q · k for each token: the = 1×0 + 1×1 = 1. cat = 1×2 + 1×1 = 3. sat = 1×1 + 1×2 = 3.</li>
              <li data-kind="tool" data-label="Step 3 · scale">d_k = 2, so divide by √2 ≈ 1.414. Scores: 0.707, 2.121, 2.121.</li>
              <li data-kind="check" data-label="Step 4 · mask">"sat" is the last token. No token comes after it, so nothing is masked.</li>
              <li data-kind="result" data-label="Step 5 · softmax">Weights: the = 0.108, cat = 0.446, sat = 0.446. They add up to 1.</li>
              <li data-kind="answer" data-label="Step 6 · weighted sum">0.108 × [1, 0] + 0.446 × [2, 3] + 0.446 × [1, 2] = [1.45, 2.23]. This is the new information for "sat".</li>
              <li data-kind="warn" data-label="What about 'the'?">For the first token, "the", the scores for "cat" and "sat" are masked. It can only look at itself, so its weight on itself is 1.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code builds Q, K and V from three token vectors and three small weight matrices.</li>
            <li>Run it. It prints the scores and weights for every token. Check the numbers for "sat" against the activity.</li>
            <li>Set <code>USE_CAUSAL_MASK = False</code>. Now "the" and "cat" can see later tokens, so their outputs change. The output for "sat" stays the same. Why?</li>
            <li>Change one number in <code>W_k</code>. See how the weights move.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The query asks, the keys answer, and the values carry the information. Scores are dot products, scaled by √d_k. The mask removes future tokens. Softmax turns the scores into weights, and the output is a weighted sum of the values.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Queries, keys and values: one attention step on 3 tokens, done by hand.
        import math

        tokens = ["the", "cat", "sat"]

        # Each token's vector (after embedding + position). 3 numbers each.
        X = [
            [1.0, 0.0, 0.0],   # the
            [0.0, 1.0, 1.0],   # cat
            [1.0, 1.0, 0.0],   # sat
        ]

        # Weight matrices. In a real model these are learned in training.
        # Each one turns a 3-number vector into a 2-number vector (d_k = 2).
        W_q = [[0.0, 1.0], [1.0, 0.0], [0.0, 1.0]]
        W_k = [[0.0, 1.0], [1.0, 1.0], [1.0, 0.0]]
        W_v = [[1.0, 0.0], [0.0, 2.0], [2.0, 1.0]]

        USE_CAUSAL_MASK = True

        def times(v, W):                        # vector (3) times matrix (3 x 2) -> vector (2)
            return [sum(v[i] * W[i][j] for i in range(len(v))) for j in range(len(W[0]))]

        def dot(a, b):
            return sum(x * y for x, y in zip(a, b))

        def softmax(scores):
            top = max(scores)
            exps = [math.exp(s - top) for s in scores]   # exp(-inf) is 0, so masked tokens get weight 0
            total = sum(exps)
            return [e / total for e in exps]

        def fmt(v):
            return "[" + ", ".join(f"{x:.2f}" for x in v) + "]"

        Q = [times(x, W_q) for x in X]
        K = [times(x, W_k) for x in X]
        V = [times(x, W_v) for x in X]
        d_k = len(Q[0])

        print("Step 1: make a query, key and value for every token")
        for t, q, k, v in zip(tokens, Q, K, V):
            print(f"  {t:4} q={fmt(q)}  k={fmt(k)}  v={fmt(v)}")

        for i, t in enumerate(tokens):
            print(f"\nToken '{t}' asks: which tokens matter to me?")
            scores = []
            for j, other in enumerate(tokens):
                s = dot(Q[i], K[j]) / math.sqrt(d_k)          # Step 2 + 3: dot product, then scale
                if USE_CAUSAL_MASK and j > i:
                    s = float("-inf")                            # Step 4: cannot look at the future
                scores.append(s)
            weights = softmax(scores)                            # Step 5: softmax
            out = [sum(w * V[j][d] for j, w in enumerate(weights)) for d in range(d_k)]   # Step 6
            for other, s, w in zip(tokens, scores, weights):
                shown = "masked" if s == float("-inf") else f"{s:.3f}"
                print(f"  score with {other:4} = {shown:>6}   weight = {w:.3f}")
            print(f"  output = weighted sum of values = {fmt(out)}")

        # Try it: set USE_CAUSAL_MASK = False. Now "the" and "cat" can see later tokens. Their outputs change, but "sat" stays the same.
      PYTHON
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Multi-Head Attention</h1>
        </div>
        <p class="lc-lead">One attention calculation gives each token one set of weights. But a token often needs several kinds of information at once. For example, a verb may need its subject and also the word just before it. So each layer runs several attention calculations side by side. Each one is called a <strong>head</strong>. In this lesson you will learn how heads work, how their results are joined, and what they tend to learn.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="The same token vectors go into three heads. Each head has its own query, key and value weights and makes its own attention pattern: one looks at the previous token, one at a noun, one spreads its weight evenly. The head outputs are joined and multiplied by W_o to give one vector per token.">
            <defs><marker id="lw9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="105" width="110" height="60" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="70" y="130">token</text><text x="70" y="148">vectors</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lw9a)">
                <path d="M125,125 Q140,62 156,58"/>
                <line x1="125" y1="135" x2="156" y2="135"/>
                <path d="M125,145 Q140,210 156,214"/>
              </g>
              <rect x="160" y="30" width="190" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="255" y="52">Head 1</text><text x="255" y="71" font-size="11" fill="#9b99b8">own W_q, W_k, W_v</text>
              <rect x="160" y="108" width="190" height="56" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="255" y="130">Head 2</text><text x="255" y="149" font-size="11" fill="#9b99b8">own W_q, W_k, W_v</text>
              <rect x="160" y="186" width="190" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="255" y="208">Head 3</text><text x="255" y="227" font-size="11" fill="#9b99b8">own W_q, W_k, W_v</text>
              <rect x="372" y="34" width="11" height="11" fill="#8b5cf6" opacity="1.00"/>
              <rect x="384" y="34" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="396" y="34" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="408" y="34" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="372" y="46" width="11" height="11" fill="#8b5cf6" opacity="1.00"/>
              <rect x="384" y="46" width="11" height="11" fill="#8b5cf6" opacity="0.08"/>
              <rect x="396" y="46" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="408" y="46" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="372" y="58" width="11" height="11" fill="#8b5cf6" opacity="0.08"/>
              <rect x="384" y="58" width="11" height="11" fill="#8b5cf6" opacity="1.00"/>
              <rect x="396" y="58" width="11" height="11" fill="#8b5cf6" opacity="0.08"/>
              <rect x="408" y="58" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="372" y="70" width="11" height="11" fill="#8b5cf6" opacity="0.08"/>
              <rect x="384" y="70" width="11" height="11" fill="#8b5cf6" opacity="0.08"/>
              <rect x="396" y="70" width="11" height="11" fill="#8b5cf6" opacity="1.00"/>
              <rect x="408" y="70" width="11" height="11" fill="#8b5cf6" opacity="0.08"/>
              <rect x="372" y="114" width="11" height="11" fill="#ec4899" opacity="1.00"/>
              <rect x="384" y="114" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="396" y="114" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="408" y="114" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="372" y="126" width="11" height="11" fill="#ec4899" opacity="0.08"/>
              <rect x="384" y="126" width="11" height="11" fill="#ec4899" opacity="1.00"/>
              <rect x="396" y="126" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="408" y="126" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="372" y="138" width="11" height="11" fill="#ec4899" opacity="0.08"/>
              <rect x="384" y="138" width="11" height="11" fill="#ec4899" opacity="1.00"/>
              <rect x="396" y="138" width="11" height="11" fill="#ec4899" opacity="0.08"/>
              <rect x="408" y="138" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="372" y="150" width="11" height="11" fill="#ec4899" opacity="0.08"/>
              <rect x="384" y="150" width="11" height="11" fill="#ec4899" opacity="1.00"/>
              <rect x="396" y="150" width="11" height="11" fill="#ec4899" opacity="0.08"/>
              <rect x="408" y="150" width="11" height="11" fill="#ec4899" opacity="0.08"/>
              <rect x="372" y="194" width="11" height="11" fill="#f59e0b" opacity="1.00"/>
              <rect x="384" y="194" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="396" y="194" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="408" y="194" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="372" y="206" width="11" height="11" fill="#f59e0b" opacity="0.50"/>
              <rect x="384" y="206" width="11" height="11" fill="#f59e0b" opacity="0.50"/>
              <rect x="396" y="206" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="408" y="206" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="372" y="218" width="11" height="11" fill="#f59e0b" opacity="0.33"/>
              <rect x="384" y="218" width="11" height="11" fill="#f59e0b" opacity="0.33"/>
              <rect x="396" y="218" width="11" height="11" fill="#f59e0b" opacity="0.33"/>
              <rect x="408" y="218" width="11" height="11" fill="#1f1f44" stroke="#33335c"/>
              <rect x="372" y="230" width="11" height="11" fill="#f59e0b" opacity="0.25"/>
              <rect x="384" y="230" width="11" height="11" fill="#f59e0b" opacity="0.25"/>
              <rect x="396" y="230" width="11" height="11" fill="#f59e0b" opacity="0.25"/>
              <rect x="408" y="230" width="11" height="11" fill="#f59e0b" opacity="0.25"/>
              <g font-size="11" fill="#9b99b8" text-anchor="start">
                <text x="428" y="56">previous token</text>
                <text x="428" y="136">looks at a noun</text>
                <text x="428" y="216">spreads evenly</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lw9a)">
                <path d="M525,58 Q545,70 556,118"/>
                <line x1="525" y1="137" x2="556" y2="137"/>
                <path d="M525,216 Q545,204 556,156"/>
              </g>
              <rect x="560" y="108" width="80" height="56" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="600" y="131">join</text><text x="600" y="149" font-size="11" fill="#9b99b8">side by side</text>
              <line x1="640" y1="136" x2="656" y2="136" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw9a)"/>
              <rect x="660" y="108" width="88" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="704" y="131">× W_o</text><text x="704" y="149" font-size="11" fill="#9b99b8">one vector</text>
              <text x="380" y="262" font-size="11" fill="#9b99b8">Each grid: rows are tokens, columns are the tokens they look at. Brighter = bigger weight.</text>
            </g>
          </svg>
          <figcaption>Three heads read the same tokens but make different attention patterns. The empty squares are future tokens, which the mask hides.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why more than one head?</h3>
          <p>One head makes one set of weights for each token. That is one weighted mix of information. If a token needs two different things, one mix is not enough. It would have to split its weight and get a blurry mix of both.</p>
          <p>With several heads, each head has its <em>own</em> query, key and value matrices. So each head scores the tokens in its own way. One head can follow the previous word. Another head can find the subject of a verb. They work at the same time and do not get in each other's way.</p>
        </div>
        <div class="lc-card">
          <h3>How the heads fit together</h3>
          <ol class="lc-list">
            <li>Each head makes its own queries, keys and values. These vectors are short. For example, a model width of 512 with 8 heads gives each head vectors of 64 numbers. These are the sizes from the 2017 paper.</li>
            <li>Each head does the full attention step: scores, scaling, mask, softmax and weighted sum.</li>
            <li>The outputs of all heads are joined side by side (<strong>concatenated</strong>). 8 heads × 64 numbers gives 512 numbers again.</li>
            <li>One more learned matrix, <strong>W_o</strong> (the output matrix), mixes the joined vector. The result is added to the residual stream.</li>
          </ol>
          <pre><code>head_1 = attention(x · W_q1, x · W_k1, x · W_v1)
        head_2 = attention(x · W_q2, x · W_k2, x · W_v2)
        ...
        output = concat(head_1, head_2, ..., head_h) · W_o</code></pre>
          <p>Many recent models save memory with <strong>grouped-query attention</strong>. Here, a group of heads shares one set of keys and values. Each head still has its own queries. This makes the KV cache much smaller.</p>
        </div>
        <div class="lc-card">
          <h3>What do heads learn?</h3>
          <p>Nobody tells a head what to look for. Each head learns its job during training. Researchers who study models have found some clear kinds of heads:</p>
          <ul class="lc-list">
            <li><strong>Previous-token heads</strong> look mostly at the token just before.</li>
            <li><strong>Induction heads</strong> help copy patterns. If "Harry Potter" appeared earlier, and "Harry" appears again, they help predict "Potter".</li>
            <li>Some heads follow grammar, such as a verb looking at its subject.</li>
          </ul>
          <p>But many heads do not have one clear job. Their patterns are hard to explain. Some heads can even be removed with little change in the output.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: shared or separate?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">In one multi-head attention layer, sort each thing into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="same" data-label="Same for every head"></div>
              <div data-sorter-target="bucket" data-bucket="own" data-label="Different for each head"></div>
              <div data-sorter-target="bucket" data-bucket="after" data-label="Used after the heads are joined"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="same" data-why="All heads read the same token vectors from the residual stream.">The input token vectors</li>
              <li data-bucket="own" data-why="Each head has its own learned matrices. This is why heads can look for different things.">The query and key weight matrices</li>
              <li data-bucket="own" data-why="Different queries and keys give different scores, so each head has its own pattern.">The attention pattern (who looks at whom)</li>
              <li data-bucket="same" data-why="The causal mask is the same rule for every head: no looking at future tokens.">The causal mask</li>
              <li data-bucket="own" data-why="Each head makes its own weighted sum of its own values.">The short output vector for each token</li>
              <li data-bucket="after" data-why="W_o mixes the joined head outputs into one vector per token.">The output matrix W_o</li>
              <li data-bucket="after" data-why="The final result of the attention layer is added to the residual stream once.">Adding the result to the residual stream</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code has two hand-made heads for "the cat sat on the mat". Head 1 looks at the previous token. Head 2 looks for nouns.</li>
            <li>Run it. For each token, see which word each head looks at most. The first token can only look at itself.</li>
            <li>In head 1, change both <code>5.0</code> values to <code>1.0</code>. The scores are now close together, so the pattern gets blurry.</li>
            <li>Add "dog" to the sentence and to <code>NOUNS</code>. Watch head 2 split its weight between the nouns.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Multi-head attention runs several attention steps side by side. Each head has its own weights, so it can look for a different pattern. The head outputs are joined and mixed by W_o. This gives each token several kinds of information in one layer.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Multi-head attention: two heads look at the same sentence in different ways.
        # The weights are hand-written so you can see the patterns.
        # In a real model, each head learns its own weights, and the patterns are often less clear.
        import math

        sentence = ["the", "cat", "sat", "on", "the", "mat"]
        NOUNS = {"cat", "mat"}
        N = len(sentence)

        # Each token vector: 6 position numbers (one-hot) + 1 "is a noun" number.
        def token_vector(i, word):
            pos = [1.0 if p == i else 0.0 for p in range(N)]
            return pos + [1.0 if word in NOUNS else 0.0]

        X = [token_vector(i, w) for i, w in enumerate(sentence)]
        DIM = len(X[0])

        def matrix(fn, rows, cols):
            return [[fn(r, c) for c in range(cols)] for r in range(rows)]

        def times(v, W):
            return [sum(v[r] * W[r][c] for r in range(len(v))) for c in range(len(W[0]))]

        def softmax(scores):
            top = max(scores)
            exps = [math.exp(s - top) for s in scores]
            return [e / sum(exps) for e in exps]

        # Head 1, "previous token": the query at position p points at position p-1.
        head1 = {
            "W_q": matrix(lambda r, c: 5.0 if r < N and c == r - 1 else 0.0, DIM, N),
            "W_k": matrix(lambda r, c: 5.0 if r < N and c == r else 0.0, DIM, N),
        }
        # Head 2, "find the nouns": every query is the same; keys are big for nouns.
        head2 = {
            "W_q": matrix(lambda r, c: 1.0 if r < N else 0.0, DIM, 1),
            "W_k": matrix(lambda r, c: 4.0 if r == N else 0.0, DIM, 1),
        }

        def attention_pattern(head):
            Q = [times(x, head["W_q"]) for x in X]
            K = [times(x, head["W_k"]) for x in X]
            d_k = len(Q[0])
            rows = []
            for i in range(N):
                scores = [sum(a * b for a, b in zip(Q[i], K[j])) / math.sqrt(d_k) if j <= i else float("-inf")
                          for j in range(N)]                     # causal mask: only look back
                rows.append(softmax(scores))
            return rows

        for name, head in [("Head 1: previous token", head1), ("Head 2: find the nouns", head2)]:
            print(name)
            for i, row in enumerate(attention_pattern(head)):
                best = max(range(N), key=lambda j: row[j])
                print(f"  {sentence[i]:4} looks most at {sentence[best]!r:6} (weight {row[best]:.2f})")
            print()

        print("Each head gives its own output vector for every token.")
        print("The model joins (concatenates) the head outputs side by side.")
        print("Then one more learned matrix (W_o) mixes them into a single vector per token.")

        # Try it: change the 5.0 values in head 1 to 1.0. The pattern gets blurry, because the scores are closer together.
      PYTHON
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Feed-Forward Layers and the Residual Stream</h1>
        </div>
        <p class="lc-lead">Attention moves information between tokens. But every layer has a second part: the <strong>feed-forward network</strong>. It works on each token alone and holds a large share of the model's learned numbers. In this lesson you will learn what the feed-forward network does. You will also see how the <strong>residual stream</strong> keeps information flowing through dozens of layers, and how <strong>layer normalisation</strong> keeps the numbers stable.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="One transformer layer drawn as a main line called the residual stream. A branch takes a normalised copy through attention and adds the result back with a plus. A second branch takes a normalised copy through the feed-forward network and adds that result back. Inside the feed-forward network the vector grows about four times wider, goes through GELU, and shrinks back.">
            <defs><marker id="lw10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker><marker id="lw10b" markerUnits="userSpaceOnUse" markerWidth="14" markerHeight="14" refX="10" refY="7" orient="auto"><path d="M0,0 L14,7 L0,14 z" fill="#22d3ee"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="24" y="36" text-anchor="start" font-weight="700" fill="#67e8f9">Residual stream</text>
              <text x="24" y="54" text-anchor="start" font-size="11" fill="#9b99b8">one token's vector, x</text>
              <line x1="20" y1="130" x2="740" y2="130" stroke="#22d3ee" stroke-width="4" marker-end="url(#lw10b)"/>
              <text x="24" y="120" text-anchor="start" font-size="11" fill="#9b99b8">from the layer below</text>
              <text x="745" y="152" text-anchor="end" font-size="11" fill="#9b99b8">next layer</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <path d="M60,132 L60,215 L76,215" marker-end="url(#lw10a)"/>
                <line x1="150" y1="215" x2="166" y2="215" marker-end="url(#lw10a)"/>
                <path d="M290,215 L330,215 L330,146" marker-end="url(#lw10a)"/>
                <path d="M380,132 L380,215 L396,215" marker-end="url(#lw10a)"/>
                <line x1="470" y1="215" x2="486" y2="215" marker-end="url(#lw10a)"/>
                <path d="M610,215 L660,215 L660,146" marker-end="url(#lw10a)"/>
              </g>
              <rect x="80" y="195" width="70" height="40" rx="8" fill="#27274e" stroke="#9b99b8"/><text x="115" y="220">Norm</text>
              <rect x="170" y="190" width="120" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="230" y="220">Attention</text>
              <rect x="400" y="195" width="70" height="40" rx="8" fill="#27274e" stroke="#9b99b8"/><text x="435" y="220">Norm</text>
              <rect x="490" y="190" width="120" height="50" rx="8" fill="#27274e" stroke="#10b981"/><text x="550" y="220">Feed-forward</text>
              <circle cx="330" cy="130" r="13" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/><text x="330" y="135" font-weight="700" fill="#67e8f9">+</text>
              <circle cx="660" cy="130" r="13" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/><text x="660" y="135" font-weight="700" fill="#67e8f9">+</text>
              <text x="330" y="100" font-size="12">x = x + attention(norm(x))</text>
              <text x="630" y="100" font-size="12">x = x + ffn(norm(x))</text>
              <rect x="410" y="14" width="200" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="510" y="34" font-size="12" font-weight="700" fill="#6ee7b7">Inside the feed-forward</text>
              <text x="510" y="52" font-size="11.5">grow: d → about 4d numbers</text>
              <text x="510" y="68" font-size="11.5">GELU, then shrink: 4d → d</text>
              <text x="380" y="262" font-size="11" fill="#9b99b8">Each branch reads a normalised copy of x and adds its result back to x.</text>
            </g>
          </svg>
          <figcaption>One layer. The thick line is the residual stream. The two branches only add changes to it. They never replace it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The feed-forward network</h3>
          <p>The <strong>feed-forward network</strong> (also called the MLP, for multi-layer perceptron) is a small neural network. It runs on each token's vector separately. It never looks at other tokens. That is the job of attention.</p>
          <ol class="lc-list">
            <li><strong>Grow:</strong> multiply the vector by a matrix that makes it wider. It is often about 4 times wider. In the 2017 paper, 512 numbers grew to 2,048.</li>
            <li><strong>Activation:</strong> apply a simple function to every number, such as GELU. GELU keeps positive numbers and pushes negative numbers close to 0. This step lets the network learn more than straight-line patterns.</li>
            <li><strong>Shrink:</strong> multiply by a second matrix to get back to the original width.</li>
          </ol>
          <p>In a standard layer, about two thirds of the weights are in the feed-forward network. Research suggests that much of what a model "knows", such as facts, is stored in these weights. Many recent models use a variant with a third matrix, called a gated feed-forward network (for example SwiGLU).</p>
          <p>Some large models are <strong>mixture-of-experts</strong> (MoE) models. They have many feed-forward networks, called experts, in each layer. For each token, a small router picks only a few experts to run. So the model can hold many weights, but each token uses only some of them.</p>
        </div>
        <div class="lc-card">
          <h3>The residual stream</h3>
          <p>Look at the plus signs in the diagram. Attention does not replace the token's vector. It computes a change, and the change is <em>added</em> to the vector. The feed-forward network does the same. These additions are called <strong>residual connections</strong>. The running vector is called the <strong>residual stream</strong>.</p>
          <pre><code>for layer in layers:
            x = x + layer.attention(layer.norm1(x))
            x = x + layer.ffn(layer.norm2(x))
        x = final_norm(x)
        logits = output_layer(x)</code></pre>
          <p>Residual connections help in two ways:</p>
          <ul class="lc-list">
            <li><strong>Information is kept.</strong> The original token and the results of earlier layers stay in the vector. A later layer can still use them.</li>
            <li><strong>Training works for deep models.</strong> The learning signal can travel straight back through the additions. Without them, networks with many layers are very hard to train.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Layer normalisation (briefly)</h3>
          <p><strong>Layer normalisation</strong> rescales one token's vector so its numbers have an average of 0 and a spread of 1. Then it multiplies by learned numbers. This keeps the numbers in a steady range, so training stays stable.</p>
          <pre><code>[10, 20, 30, 40]  →  [-1.34, -0.45, 0.45, 1.34]</code></pre>
          <p>Many recent models use a simpler version called <strong>RMSNorm</strong>. It does not subtract the average. It only divides by the root mean square, a kind of average size of the numbers. The 2017 paper put the norm after each addition. Most models today put it before each branch, as in the diagram. This is called <em>pre-norm</em>, and it makes deep models easier to train.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: inside one layer</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of one pre-norm transformer layer in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The token vectors x arrive from the layer below</li>
              <li data-order="2">Normalise a copy of each vector</li>
              <li data-order="3">Attention mixes in information from other tokens</li>
              <li data-order="4">Add the attention result to x</li>
              <li data-order="5">Normalise a copy of the new x</li>
              <li data-order="6">The feed-forward network processes each token alone</li>
              <li data-order="7">Add the feed-forward result to x and pass it to the next layer</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code first normalises <code>[10, 20, 30, 40]</code>. Then it sends one token through a feed-forward network: 4 numbers grow to 16, go through GELU and shrink back to 4.</li>
            <li>Next, it runs 24 random layers two ways: with residual connections and without them. The table shows how similar the vector still is to the original token.</li>
            <li>With residuals, the value stays high, mostly near 0.9 or above. Without them, the original direction is lost after the first layer.</li>
            <li>Set <code>N_LAYERS = 48</code> and add 32 and 48 to the printed layers. The residual column slowly drifts, because many small changes add up. In a trained model, those changes carry useful meaning.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Attention moves information between tokens. The feed-forward network then works on each token alone. Both only add changes to the residual stream, so earlier information is kept. Layer normalisation keeps the numbers steady, so deep stacks can be trained.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Feed-forward layers, the residual stream and layer normalisation, with small numbers.
        import math
        import random

        random.seed(7)
        D, HIDDEN = 4, 16        # real models: thousands of numbers, hidden layer often about 4 times bigger
        N_LAYERS = 24

        def rand_matrix(rows, cols, scale):
            return [[random.gauss(0, scale) for _ in range(cols)] for _ in range(rows)]

        def matvec(m, v):
            return [sum(a * b for a, b in zip(row, v)) for row in m]

        def gelu(x):             # a smooth version of "keep positive numbers, shrink negative ones"
            return 0.5 * x * (1 + math.tanh(math.sqrt(2 / math.pi) * (x + 0.044715 * x ** 3)))

        def layer_norm(v):       # make the numbers have mean 0 and spread 1
            mean = sum(v) / len(v)
            var = sum((x - mean) ** 2 for x in v) / len(v)
            return [(x - mean) / math.sqrt(var + 1e-5) for x in v]

        def cosine(a, b):
            dot = sum(x * y for x, y in zip(a, b))
            return dot / (math.sqrt(sum(x * x for x in a)) * math.sqrt(sum(y * y for y in b)))

        def fmt(v):
            return "[" + ", ".join(f"{x:+.2f}" for x in v) + "]"

        # 1) Layer normalisation
        raw = [10.0, 20.0, 30.0, 40.0]
        print("Layer norm:", raw, "->", fmt(layer_norm(raw)))

        # 2) One feed-forward network (MLP): grow, apply GELU, shrink back
        ffns = [(rand_matrix(HIDDEN, D, 0.5), rand_matrix(D, HIDDEN, 0.05)) for _ in range(N_LAYERS)]

        def feed_forward(v, ffn):
            w1, w2 = ffn
            hidden = [gelu(h) for h in matvec(w1, v)]     # 4 numbers -> 16 numbers
            return matvec(w2, hidden)                     # 16 numbers -> 4 numbers

        token = [1.0, -0.5, 0.3, 0.8]
        print("\nOne token through one feed-forward network:")
        print("  in :", fmt(token))
        print("  out:", fmt(feed_forward(token, ffns[0])))
        print("  (It works on each token alone. It never looks at other tokens.)")

        # 3) Many layers, with and without residual connections
        with_res, without_res = token[:], token[:]
        print(f"\nHow similar is the vector to the original token after each layer? (1.00 = same direction)")
        print("layer  with residual  without residual")
        for n, ffn in enumerate(ffns, start=1):
            with_res = [x + y for x, y in zip(with_res, feed_forward(layer_norm(with_res), ffn))]   # x = x + f(norm(x))
            without_res = feed_forward(layer_norm(without_res), ffn)                             # x = f(norm(x))
            if n in (1, 2, 4, 8, 16, 24):
                print(f"{n:5}  {cosine(token, with_res):13.2f}  {cosine(token, without_res):16.2f}")
        print("With residuals, each layer only adds a small edit, so the original token is still there.")
        print("Without them, each layer replaces the vector, so the original direction is lost.")

        # Try it: set N_LAYERS = 48 and add 32 and 48 to the tuple of layers to print. Does the residual column stay close to 1.00?
      PYTHON
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">From Scores to Probabilities: Logits and Softmax</h1>
        </div>
        <p class="lc-lead">After the last layer, the model has one vector for each position. The output layer turns the last vector into a score for every token in the vocabulary. These raw scores are called <strong>logits</strong>. A function called <strong>softmax</strong> turns them into probabilities that add up to 1. In this lesson you will compute softmax by hand and find the most likely next token.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="The last token's vector goes into the output layer, which gives a logit for every vocabulary token: Paris 9.1, a 5.3, the 5.0, Lyon 3.1, banana minus 2.0. Softmax turns them into probabilities: Paris 0.952, a 0.021, the 0.016, Lyon 0.002, banana 0.000. Paris is the most likely next token.">
            <defs><marker id="lw11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="18" font-size="12" fill="#9b99b8">Prompt: "The capital of France is"</text>
              <rect x="15" y="100" width="120" height="66" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="75" y="124">last vector</text><text x="75" y="144" font-size="11" fill="#9b99b8">[0.8, -1.2, …]</text>
              <line x1="135" y1="133" x2="161" y2="133" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw11a)"/>
              <rect x="165" y="100" width="120" height="66" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="225" y="124">Output layer</text><text x="225" y="144" font-size="11" fill="#9b99b8">one score per token</text>
              <line x1="285" y1="133" x2="311" y2="133" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw11a)"/>
              <rect x="315" y="30" width="150" height="220" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="390" y="54" font-weight="700" fill="#fcd34d">Logits</text>
              <g font-size="12">
                <text x="335" y="84" text-anchor="start">Paris</text><text x="448" y="84" text-anchor="end">9.1</text>
                <text x="335" y="112" text-anchor="start">a</text><text x="448" y="112" text-anchor="end">5.3</text>
                <text x="335" y="140" text-anchor="start">the</text><text x="448" y="140" text-anchor="end">5.0</text>
                <text x="335" y="168" text-anchor="start">Lyon</text><text x="448" y="168" text-anchor="end">3.1</text>
                <text x="335" y="196" text-anchor="start">banana</text><text x="448" y="196" text-anchor="end">-2.0</text>
              </g>
              <text x="390" y="232" font-size="11" fill="#9b99b8">any number</text>
              <line x1="465" y1="133" x2="511" y2="133" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw11a)"/>
              <text x="488" y="124" font-size="11" fill="#c4b5fd">softmax</text>
              <rect x="515" y="30" width="230" height="220" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="630" y="54" font-weight="700" fill="#c4b5fd">Probabilities</text>
              <g font-size="12" text-anchor="start">
                <text x="530" y="84">Paris</text><rect x="585" y="73" width="110" height="14" rx="3" fill="#8b5cf6"/><text x="700" y="84">0.952</text>
                <text x="530" y="112">a</text><rect x="585" y="101" width="3" height="14" rx="1" fill="#8b5cf6"/><text x="594" y="112">0.021</text>
                <text x="530" y="140">the</text><rect x="585" y="129" width="2" height="14" rx="1" fill="#8b5cf6"/><text x="594" y="140">0.016</text>
                <text x="530" y="168">Lyon</text><text x="594" y="168">0.002</text>
                <text x="530" y="196">banana</text><text x="594" y="196">0.000</text>
              </g>
              <text x="630" y="232" font-size="11" fill="#9b99b8">all add up to 1</text>
            </g>
          </svg>
          <figcaption>Logits can be any number. Softmax turns them into probabilities. (Example numbers. The full vocabulary has many more tokens.)</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Logits: one score for every token</h3>
          <p>The <strong>output layer</strong> multiplies the final vector by a big matrix. The matrix has one column for each token in the vocabulary. So the result is one number per token. For example, the GPT-2 vocabulary has 50,257 tokens, so GPT-2 makes 50,257 logits at each position. Other models have their own vocabulary sizes. Check the model's documentation.</p>
          <p>A <strong>logit</strong> is a raw score. It can be any number: positive, negative, big or small. A higher logit means the model likes that token more. But logits are not probabilities yet. They do not add up to 1.</p>
          <p>Some models use the embedding table again as the output matrix. This is called <strong>weight tying</strong>. The model makes logits at every position. In training, all of them are used. To generate text, only the logits from the last position are needed.</p>
        </div>
        <div class="lc-card">
          <h3>Softmax, worked by hand</h3>
          <p>Softmax has two steps. First, take <em>e</em> (about 2.718) to the power of each logit. This makes every number positive. Second, divide each result by their total.</p>
          <pre><code>probability of token i = e^(logit i) / (sum of e^(logit) for all tokens)</code></pre>
          <table class="lc-table">
            <thead><tr><th>Token</th><th>Logit</th><th>e^logit</th><th>Probability</th></tr></thead>
            <tbody>
              <tr><td>A</td><td>2.0</td><td>7.39</td><td>7.39 / 11.21 = <strong>0.659</strong></td></tr>
              <tr><td>B</td><td>1.0</td><td>2.72</td><td>2.72 / 11.21 = <strong>0.242</strong></td></tr>
              <tr><td>C</td><td>0.1</td><td>1.11</td><td>1.11 / 11.21 = <strong>0.099</strong></td></tr>
              <tr><td><strong>Total</strong></td><td></td><td>11.21</td><td><strong>1.000</strong></td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li>Every probability is between 0 and 1, and they all add up to 1.</li>
            <li>The order stays the same. The biggest logit always gets the biggest probability.</li>
            <li>Adding the same number to every logit changes nothing. Only the differences between logits matter.</li>
            <li>A gap of 1 in logits means about 2.7 times more likely. So big gaps give very confident predictions.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Choosing the next token</h3>
          <p>The simplest choice is the token with the highest probability. This is called <strong>greedy decoding</strong>. Here it picks " Paris". Most chat apps do not always pick the top token. They <em>sample</em> from the probabilities instead. You will learn about this in the lesson on temperature and sampling.</p>
          <p>Programs often use the logarithm of a probability, called a <strong>log-probability</strong>. For " Paris", log(0.952) is about -0.05. Log-probabilities are easier to add up over many tokens. Training uses them to measure how wrong the model was.</p>
          <p>Remember: a high probability means the model thinks that token is a likely <em>continuation</em>. It does not prove the text is true.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: logit or probability?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Is each statement about logits or about probabilities?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="logit" data-label="Logits"></div>
              <div data-sorter-target="bucket" data-bucket="prob" data-label="Probabilities"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="logit" data-why="Logits are raw scores. They can be negative or bigger than 1.">Can be any number, such as -3.2 or 9.1</li>
              <li data-bucket="prob" data-why="Softmax makes every value positive and at most 1.">Always between 0 and 1</li>
              <li data-bucket="prob" data-why="Softmax divides by the total, so the values add up to exactly 1.">All of them add up to 1</li>
              <li data-bucket="logit" data-why="The output layer gives raw scores. Softmax comes after it.">Come straight out of the output layer</li>
              <li data-bucket="prob" data-why="Sampling picks a token using these chances.">Used to pick a token at random by its chance</li>
              <li data-bucket="logit" data-why="Softmax only cares about differences, so adding 5 to every logit gives the same probabilities.">Adding 5 to all of them changes nothing in the final result</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code runs softmax on <code>[2.0, 1.0, 0.1]</code>. Check the result against the table above.</li>
            <li>It shows that adding 100 to every logit gives the same probabilities.</li>
            <li>Then it ranks a small made-up vocabulary for "The capital of France is". It prints each logit, each probability and a bar.</li>
            <li>Change the logit for " Lyon" to 9.1, the same as " Paris". Now the two share the top probability. Try making " banana" the biggest.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The output layer gives a logit for every token in the vocabulary. Softmax turns logits into probabilities between 0 and 1 that add up to 1. Only the differences between logits matter. The next token is then chosen from these probabilities.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # From scores to probabilities: logits and softmax.
        import math

        def softmax(logits):
            top = max(logits)                                 # subtract the biggest logit first:
            exps = [math.exp(z - top) for z in logits]        # same answer, but no overflow with big numbers
            total = sum(exps)
            return [e / total for e in exps]

        # 1) The tiny example from the lesson
        logits = [2.0, 1.0, 0.1]
        probs = softmax(logits)
        print("logits:", logits)
        print("probs :", [round(p, 3) for p in probs], " sum =", round(sum(probs), 6))

        # 2) Adding the same number to every logit changes nothing
        print("logits + 100:", [round(p, 3) for p in softmax([z + 100 for z in logits])])

        # 3) A small made-up vocabulary. The numbers are examples, not from a real model.
        prompt = "The capital of France is"
        vocab_logits = {
            " Paris": 9.1, " a": 5.3, " the": 5.0, " located": 4.2,
            " Lyon": 3.1, " not": 2.4, " banana": -2.0, "!": -1.5,
        }
        words = list(vocab_logits)
        probs = softmax(list(vocab_logits.values()))
        ranked = sorted(zip(words, vocab_logits.values(), probs), key=lambda t: -t[2])

        print(f"\nPrompt: {prompt!r}")
        print(f"{'token':10} {'logit':>6} {'probability':>12}")
        for w, z, p in ranked:
            print(f"{w!r:10} {z:6.1f} {p:12.4f}  " + "#" * round(p * 40))
        print("sum of probabilities:", round(sum(probs), 6))

        best = ranked[0][0]
        print(f"\nMost likely next token (greedy choice): {best!r}")
        print(f"Log-probability of {best!r}: {math.log(ranked[0][2]):.3f}  (training uses numbers like this)")

        # Try it: change the logit for " Lyon" to 9.1, the same as " Paris". Now they share the top probability.
      PYTHON
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Pre-training: Learning from Text</h1>
        </div>
        <p class="lc-lead">A new model knows nothing. Its parameters (the numbers inside it) start as random values. So how does it learn language? In <strong>pre-training</strong>, the model reads a huge amount of text. At every position, it guesses the next token. Then it checks how wrong the guess was and changes its numbers a tiny bit. In this lesson, you will learn the three key ideas: the next-token task, the <strong>loss</strong>, and <strong>gradient descent</strong>. You will also train a very small model yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="One training step. The text 'the cat sat on the' goes into the model. The model gives probabilities: mat 0.40, floor 0.25, rug 0.15, other 0.20. The real next token is mat, so the loss is minus ln 0.40, about 0.92. Gradients flow back and nudge the parameters.">
            <defs><marker id="lw12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="70" width="170" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="94" font-weight="700" fill="#93c5fd">Text so far</text>
              <text x="95" y="116" font-size="11.5">"the cat sat on the"</text>
              <line x1="182" y1="100" x2="212" y2="100" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw12a)"/>
              <rect x="215" y="70" width="130" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="280" y="94" font-weight="700" fill="#c4b5fd">Model</text>
              <text x="280" y="116" font-size="11" fill="#9b99b8">parameters</text>
              <line x1="347" y1="100" x2="377" y2="100" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw12a)"/>
              <rect x="380" y="20" width="175" height="160" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="467" y="42" font-weight="700" fill="#67e8f9">Predicted next</text>
              <g text-anchor="start" font-size="11.5">
                <text x="392" y="72">mat</text><rect x="440" y="61" width="80" height="14" rx="3" fill="#10b981"/><text x="524" y="72">0.40</text>
                <text x="392" y="102">floor</text><rect x="440" y="91" width="50" height="14" rx="3" fill="#3b82f6"/><text x="494" y="102">0.25</text>
                <text x="392" y="132">rug</text><rect x="440" y="121" width="30" height="14" rx="3" fill="#3b82f6"/><text x="474" y="132">0.15</text>
                <text x="392" y="162">other</text><rect x="440" y="151" width="40" height="14" rx="3" fill="#3b82f6"/><text x="484" y="162">0.20</text>
              </g>
              <line x1="557" y1="100" x2="587" y2="100" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw12a)"/>
              <rect x="590" y="60" width="160" height="80" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="670" y="82" font-weight="700" fill="#fcd34d">Loss</text>
              <text x="670" y="102" font-size="11">real next token: mat</text>
              <text x="670" y="124" font-size="11.5">-ln(0.40) = 0.92</text>
              <path d="M670,142 L670,215 L280,215 L280,134" fill="none" stroke="#ec4899" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#lw12a)"/>
              <text x="475" y="235" font-size="11.5" fill="#f9a8d4">gradients: nudge every parameter so "mat" gets more likely</text>
            </g>
          </svg>
          <figcaption>One training step: guess, measure the error, adjust. Pre-training repeats this a huge number of times.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The task: guess the next token</h3>
          <p>The training data is ordinary text: web pages, books, code and more. No person needs to label it. The text already contains the answer. The label for each position is simply the token that comes next.</p>
          <p>So one short sentence gives many training examples:</p>
          <table class="lc-table">
            <thead><tr><th>Context (what the model sees)</th><th>Target (the real next token)</th></tr></thead>
            <tbody>
              <tr><td><code>the</code></td><td><code>cat</code></td></tr>
              <tr><td><code>the cat</code></td><td><code>sat</code></td></tr>
              <tr><td><code>the cat sat</code></td><td><code>on</code></td></tr>
              <tr><td><code>the cat sat on the</code></td><td><code>mat</code></td></tr>
            </tbody>
          </table>
          <p>This is called <strong>self-supervised learning</strong>. The data supervises itself. That is why models can learn from so much text. To guess well, the model must pick up spelling, grammar, facts and some reasoning.</p>
        </div>
        <div class="lc-card">
          <h3>Loss: a number for "how wrong"</h3>
          <p>The model outputs a probability for every token in its vocabulary. The <strong>loss</strong> is one number that says how bad the guess was. LLMs use <strong>cross-entropy loss</strong>. For one position, it is simple:</p>
          <pre><code>loss = -ln(probability the model gave to the real next token)</code></pre>
          <p>Here <code>ln</code> is the natural logarithm. Look at what happens for different guesses when the real token is <code>mat</code>:</p>
          <table class="lc-table">
            <thead><tr><th>Probability given to "mat"</th><th>Loss</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>0.99</td><td>0.01</td><td>Almost perfect</td></tr>
              <tr><td>0.40</td><td>0.92</td><td>OK, but unsure</td></tr>
              <tr><td>0.01</td><td>4.61</td><td>Very wrong</td></tr>
              <tr><td>1 / 50,000 (random guess)</td><td>10.82</td><td>A model that knows nothing</td></tr>
            </tbody>
          </table>
          <p>A confident wrong guess gets a big loss. The training loss is the average loss over many positions. Training tries to make this average as small as possible.</p>
        </div>
        <div class="lc-card">
          <h3>Gradient descent: small steps downhill</h3>
          <p>A model has billions of parameters. Which ones should change, and by how much? A method called <strong>backpropagation</strong> answers this. For every parameter, it computes a <strong>gradient</strong>: the direction that makes the loss go up. So we move each parameter a little in the opposite direction.</p>
          <pre><code>parameter = parameter - learning_rate * gradient</code></pre>
          <p>The <strong>learning rate</strong> is a small number that controls the step size. Too big, and training jumps around. Too small, and it is very slow.</p>
          <ul class="lc-list">
            <li>The model learns from a <strong>batch</strong> (a group of text pieces) at each step, not the whole data at once.</li>
            <li>Real training uses improved versions of this rule, such as the Adam optimizer. The idea stays the same.</li>
            <li>After pre-training, you have a <strong>base model</strong>. It is very good at continuing text. It is not yet a helpful assistant.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: one training step</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the parts of one pre-training step in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Take a batch of text from the training data</li>
              <li data-order="2">Split it into tokens and feed them to the model</li>
              <li data-order="3">The model gives probabilities for the next token at every position</li>
              <li data-order="4">Compute the loss by comparing with the real next tokens</li>
              <li data-order="5">Backpropagation computes a gradient for every parameter</li>
              <li data-order="6">Move each parameter a small step to lower the loss</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the program. First it shows cross-entropy for a few example guesses.</li>
            <li>Then it trains a tiny character model with gradient descent. Watch the average loss fall.</li>
            <li>At the end, it shows what the model predicts after the letter <code>h</code>.</li>
            <li>Change <code>LEARNING_RATE</code> to <code>0.5</code> and then to <code>50</code>. How does the loss curve change?</li>
            <li>Change the training text. Add a new sentence and train again.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Pre-training has one simple goal: give high probability to the real next token. Everything the model "knows" comes from millions of tiny parameter changes made to reach this goal.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Pre-training in miniature: learn next-character probabilities with gradient descent.
        import math

        # 1) Cross-entropy loss for one guess: -ln(probability of the real next token)
        print("Loss for different guesses (real next token = 'mat'):")
        for p in [0.99, 0.40, 0.01, 1 / 50000]:
            print(f"  p(mat) = {p:<8.5f} -> loss = {-math.log(p):.2f}")

        # 2) A tiny model. Its parameters are scores (logits): W[previous char][next char].
        TEXT = "the cat sat on the mat. the dog sat on the log. the cat saw the dog. "
        chars = sorted(set(TEXT))
        V = len(chars)
        idx = {c: i for i, c in enumerate(chars)}
        pairs = [(idx[a], idx[b]) for a, b in zip(TEXT, TEXT[1:])]   # (context, target)
        W = [[0.0] * V for _ in range(V)]                              # all zeros = no knowledge yet

        def softmax(scores):
            m = max(scores)
            exps = [math.exp(s - m) for s in scores]
            total = sum(exps)
            return [e / total for e in exps]

        def average_loss():
            return sum(-math.log(softmax(W[a])[b]) for a, b in pairs) / len(pairs)

        LEARNING_RATE = 5.0
        print(f"\nVocabulary: {V} characters. Training examples: {len(pairs)}")
        print(f"Random-guess loss would be ln({V}) = {math.log(V):.2f}\n")
        for step in range(301):
            if step % 50 == 0:
                print(f"step {step:3d}  average loss = {average_loss():.3f}")
            grad = [[0.0] * V for _ in range(V)]
            for a, b in pairs:
                probs = softmax(W[a])
                for j in range(V):
                    # gradient of cross-entropy with softmax: probability minus 1 for the real token
                    grad[a][j] += probs[j] - (1.0 if j == b else 0.0)
            for a in range(V):
                for j in range(V):
                    W[a][j] -= LEARNING_RATE * grad[a][j] / len(pairs)   # a small step downhill

        # 3) What did it learn?
        probs = softmax(W[idx["h"]])
        top = sorted(range(V), key=lambda j: -probs[j])[:3]
        print("\nAfter 'h' the model predicts:")
        for j in top:
            print(f"  {chars[j]!r}: {probs[j]:.2f}")

        # Try it: set LEARNING_RATE to 0.5 or 50, or change TEXT, then run again.
      PYTHON
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Build a Tiny Language Model</h1>
        </div>
        <p class="lc-lead">You now know the goal of a language model: predict the next token. In this lesson, you will build the simplest real language model, a <strong>bigram model</strong>. It predicts the next word using only the one word before it. You will train it by counting, generate text with it, and compare it to a real LLM. It is tiny, but the generate loop is the same one that chat models use.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 230" role="img" aria-label="Building a bigram model. A small text is turned into a count table of word pairs. The counts after 'the' are cat 3, dog 2, mat 1, rug 1. The counts become probabilities. The model samples a next word, adds it to the text and repeats.">
            <defs><marker id="lw13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="160" height="120" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="90" y="54" font-weight="700" fill="#93c5fd">1. Small text</text>
              <text x="90" y="76" font-size="11">the cat sat on the mat</text>
              <text x="90" y="96" font-size="11">the dog sat on the rug</text>
              <text x="90" y="116" font-size="11">the cat saw the dog</text>
              <text x="90" y="136" font-size="11">a bird saw the cat</text>
              <line x1="172" y1="90" x2="198" y2="90" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw13a)"/>
              <rect x="200" y="30" width="170" height="120" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="54" font-weight="700" fill="#c4b5fd">2. Count pairs</text>
              <text x="285" y="76" font-size="11" fill="#9b99b8">after "the":</text>
              <text x="285" y="96" font-size="11.5">cat 3 · dog 2</text>
              <text x="285" y="116" font-size="11.5">mat 1 · rug 1</text>
              <text x="285" y="136" font-size="11" fill="#9b99b8">total 7</text>
              <line x1="372" y1="90" x2="398" y2="90" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw13a)"/>
              <rect x="400" y="30" width="165" height="120" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="482" y="54" font-weight="700" fill="#67e8f9">3. Probabilities</text>
              <text x="482" y="80" font-size="11.5">cat 3/7 = 0.43</text>
              <text x="482" y="100" font-size="11.5">dog 2/7 = 0.29</text>
              <text x="482" y="120" font-size="11.5">mat, rug 0.14</text>
              <line x1="567" y1="90" x2="593" y2="90" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw13a)"/>
              <rect x="595" y="30" width="155" height="120" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="672" y="54" font-weight="700" fill="#6ee7b7">4. Sample</text>
              <text x="672" y="80" font-size="11.5">"the" → "dog"</text>
              <text x="672" y="100" font-size="11.5">"dog" → "sat"</text>
              <text x="672" y="120" font-size="11.5">"sat" → "on" …</text>
              <path d="M672,152 L672,195 L482,195 L482,154" fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#lw13a)"/>
              <text x="577" y="215" font-size="11.5" fill="#fcd34d">new word becomes the context: repeat</text>
            </g>
          </svg>
          <figcaption>Training is counting. Generating is looking up the last word and rolling a weighted dice.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a bigram model is</h3>
          <p>A <strong>bigram</strong> is a pair of words that appear next to each other. A bigram model stores, for every word, how often each other word came right after it. It has a very short memory: it sees only the last word.</p>
          <p>Training is just counting. You read the text once and count every pair. Then you turn the counts into probabilities:</p>
          <pre><code>P(next = "cat" | previous = "the") = count("the cat") / count("the" followed by anything)
                                  = 3 / 7 = 0.43</code></pre>
          <p>This counting is not a shortcut. For a bigram model, these counted probabilities are exactly the ones that give the lowest cross-entropy loss on the training text. So it is the same goal as pre-training, solved in one step.</p>
        </div>
        <div class="lc-card">
          <h3>Generating text</h3>
          <p>To write new text, the model runs a loop:</p>
          <ol class="lc-list">
            <li>Look at the last word.</li>
            <li>Get the probabilities for the next word.</li>
            <li><strong>Sample</strong> one word: pick at random, but likely words get picked more often.</li>
            <li>Add the word to the text. Stop at a full stop or after a set number of words.</li>
          </ol>
          <p>An LLM uses the same loop. The only change is step 2. An LLM computes the probabilities with a transformer that reads the whole context, not one word.</p>
        </div>
        <div class="lc-card">
          <h3>A bigram model compared to a real LLM</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Bigram model</th><th>Large language model</th></tr></thead>
            <tbody>
              <tr><td>Context it uses</td><td>1 word</td><td>Its whole context window, often many thousands of tokens</td></tr>
              <tr><td>Parameters</td><td>A count table</td><td>Billions of learned numbers</td></tr>
              <tr><td>How it learns</td><td>Counting pairs</td><td>Gradient descent on next-token loss</td></tr>
              <tr><td>Unseen pairs</td><td>Probability 0. It cannot produce them.</td><td>It generalises from similar text</td></tr>
              <tr><td>Output</td><td>Sounds locally fine, but has no overall meaning</td><td>Stays on topic across long answers</td></tr>
            </tbody>
          </table>
          <p>The biggest weakness is memory. After "sat on the", a bigram model only sees "the". It has forgotten who sat. Attention fixes this by letting every token look back at all earlier tokens.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: watch the model write</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Start word">the</li>
              <li data-kind="thought" data-label="Look up &quot;the&quot;">Counts after "the": cat 3, dog 2, mat 1, rug 1. Probabilities: 0.43, 0.29, 0.14, 0.14.</li>
              <li data-kind="result" data-label="Sample">Picked "dog". Text so far: "the dog"</li>
              <li data-kind="thought" data-label="Look up &quot;dog&quot;">Counts after "dog": sat 1, . 1. Probabilities: 0.5 and 0.5.</li>
              <li data-kind="result" data-label="Sample">Picked "sat". Text so far: "the dog sat"</li>
              <li data-kind="thought" data-label="Look up &quot;sat&quot;, then &quot;on&quot;">"sat" is always followed by "on". "on" is always followed by "the".</li>
              <li data-kind="warn" data-label="Short memory">Now the model sees only "the". It has forgotten the dog. It may pick "cat" next.</li>
              <li data-kind="answer" data-label="Output">"the dog sat on the cat ." Every pair is real, but the sentence is new and a bit silly.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the program. It prints the counts after "the", then generates four sentences.</li>
            <li>It also scores two sentences. One contains a pair the model never saw, so its probability is 0.</li>
            <li>Change <code>random.seed(42)</code> to another number. You get different sentences from the same model.</li>
            <li>Add your own sentences to <code>TEXT</code>. Put spaces around the full stops. Which new sentences can it now write?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A language model is a machine for "probabilities of the next token, given the context". A bigram model uses a tiny context and a count table. An LLM uses a huge context and a transformer. The generate loop is the same.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A bigram word model: train by counting, then generate text.
        import random
        from collections import Counter, defaultdict

        random.seed(42)
        TEXT = """
        the cat sat on the mat . the dog sat on the rug .
        the cat saw the dog . a bird saw the cat .
        """
        words = TEXT.split()

        # Training = counting which word follows which.
        counts = defaultdict(Counter)
        for prev, nxt in zip(words, words[1:]):
            counts[prev][nxt] += 1

        def probabilities(prev):
            total = sum(counts[prev].values())
            return {w: c / total for w, c in counts[prev].items()}

        print("After 'the':")
        for w, p in sorted(probabilities("the").items(), key=lambda kv: -kv[1]):
            print(f"  {w:<5} count {counts['the'][w]}  p = {p:.3f}")

        def next_word(prev):
            options = counts[prev]
            return random.choices(list(options), weights=list(options.values()))[0]

        def generate(start="the", max_words=15):
            out = [start]
            while out[-1] != "." and len(out) < max_words:
                out.append(next_word(out[-1]))   # the same loop an LLM runs
            return " ".join(out)

        print("\nGenerated sentences:")
        for _ in range(4):
            print("  " + generate())

        def sentence_probability(sentence):
            ws = sentence.split()
            p = 1.0
            for prev, nxt in zip(ws, ws[1:]):
                p *= probabilities(prev).get(nxt, 0.0)   # unseen pair -> 0
            return p

        print("\nHow likely is each sentence?")
        for s in ["the cat sat on the rug .", "the bird sat on the mat ."]:
            print(f"  {s!r}: {sentence_probability(s):.5f}")
        print("  ('the bird' never appears in TEXT, so the second one gets 0.)")

        # Try it: change the seed, or add sentences to TEXT and run again.
      PYTHON
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Scaling: Data, Parameters and Compute</h1>
        </div>
        <p class="lc-lead">Why are today's models so much better than models from a few years ago? A big part of the answer is <strong>scale</strong>. Researchers found that models get better in a predictable way when you grow three things together: the data, the number of parameters, and the compute. In this lesson, you will learn what these three things are, what "scaling laws" say, what training costs, and why small models are still very useful.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Three ingredients, data, parameters and compute, feed into a chart. The chart shows the general shape of a scaling law: loss falls smoothly as scale grows, fast at first and then more slowly. The chart is illustrative, not real data.">
            <defs><marker id="lw14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="200" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="110" y="45" font-weight="700" fill="#93c5fd">Data</text>
              <text x="110" y="65" font-size="11" fill="#9b99b8">training tokens</text>
              <rect x="10" y="100" width="200" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="110" y="125" font-weight="700" fill="#c4b5fd">Parameters</text>
              <text x="110" y="145" font-size="11" fill="#9b99b8">size of the model</text>
              <rect x="10" y="180" width="200" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="110" y="205" font-weight="700" fill="#fcd34d">Compute</text>
              <text x="110" y="225" font-size="11" fill="#9b99b8">chip time for training</text>
              <line x1="214" y1="130" x2="258" y2="130" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw14a)"/>
              <rect x="262" y="10" width="488" height="240" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <line x1="320" y1="30" x2="320" y2="210" stroke="#9b99b8" stroke-width="1.2"/>
              <line x1="320" y1="210" x2="730" y2="210" stroke="#9b99b8" stroke-width="1.2"/>
              <text x="300" y="120" font-size="11" fill="#9b99b8" transform="rotate(-90 300 120)">loss (lower is better)</text>
              <text x="525" y="236" font-size="11" fill="#9b99b8">scale: data, parameters and compute (each step = 10x more)</text>
              <path d="M330,45 C390,120 450,160 540,176 S680,190 725,193" fill="none" stroke="#22d3ee" stroke-width="2.5"/>
              <circle cx="360" cy="86" r="4" fill="#22d3ee"/><circle cx="450" cy="158" r="4" fill="#22d3ee"/><circle cx="600" cy="184" r="4" fill="#22d3ee"/><circle cx="715" cy="192" r="4" fill="#22d3ee"/>
              <text x="440" y="70" font-size="11.5" fill="#67e8f9">big gains at first</text>
              <text x="640" y="160" font-size="11.5" fill="#67e8f9">smaller gains later</text>
              <text x="640" y="30" font-size="10.5" fill="#9b99b8">shape only, not real data</text>
            </g>
          </svg>
          <figcaption>Scaling laws describe a smooth, predictable curve. Each extra gain costs much more than the one before.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The three ingredients</h3>
          <table class="lc-table">
            <thead><tr><th>Ingredient</th><th>What it means</th><th>Typical scale for a large model</th></tr></thead>
            <tbody>
              <tr><td><strong>Parameters</strong></td><td>The learned numbers inside the model (its weights)</td><td>Billions</td></tr>
              <tr><td><strong>Data</strong></td><td>The number of tokens the model reads during training</td><td>Trillions of tokens</td></tr>
              <tr><td><strong>Compute</strong></td><td>The total number of calculations. It grows with both parameters and data.</td><td>Thousands of GPUs or similar chips, for weeks or months</td></tr>
            </tbody>
          </table>
          <p>A common rule of thumb links them. Training compute is roughly <code>6 × parameters × training tokens</code> floating-point operations (simple maths steps). So doubling the model size and doubling the data means about four times the compute.</p>
          <p>Companies rarely publish exact numbers for their commercial models. Check a model's documentation or technical report for what they share.</p>
        </div>
        <div class="lc-card">
          <h3>What scaling laws say</h3>
          <p>A <strong>scaling law</strong> is a pattern found by experiment. Researchers train many models of different sizes. Then they plot the loss against the scale. Well-known papers include "Scaling Laws for Neural Language Models" (2020) and "Training Compute-Optimal Large Language Models" (2022). The general findings are:</p>
          <ul class="lc-list">
            <li><strong>Loss falls smoothly and predictably</strong> as you add parameters, data and compute. So teams can test on small models and predict big ones.</li>
            <li><strong>Returns get smaller.</strong> Each extra step of improvement needs many times more resources.</li>
            <li><strong>Grow data and parameters together.</strong> A huge model with too little data wastes compute. Lots of data in a tiny model also stops helping.</li>
            <li><strong>Lower loss is not everything.</strong> Data quality matters a lot. Later training stages (instruction tuning and feedback) shape how useful the model feels.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Costs, and why small models still matter</h3>
          <p>Training a frontier model needs huge amounts of chips, electricity, engineering time and data cleaning. Running the model for users (called <strong>inference</strong>) also costs money for every token. Bigger models cost more per token and answer more slowly.</p>
          <p>Small models are a good choice when:</p>
          <ul class="lc-list">
            <li>The task is narrow and simple, such as sorting text into a few groups or pulling out fields.</li>
            <li>You need fast answers or a very high volume of requests.</li>
            <li>The model must run on a phone or laptop, or without internet.</li>
            <li>You can fine-tune it on your own task, or train it with <strong>distillation</strong> (a small model learns from a big model's outputs).</li>
          </ul>
          <p>A good habit: start with the smallest model that passes your tests. Move up only when it fails.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: big or small?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">For each job, decide if a large model is worth the cost, or if a small model is enough.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="big" data-label="Large model worth it"></div>
              <div data-sorter-target="bucket" data-bucket="small" data-label="Small model is enough"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="small" data-why="A narrow task with a few fixed labels. Small models do this well, fast and cheaply.">Sort support emails into 5 fixed groups</li>
              <li data-bucket="small" data-why="It must run on the device, quickly, with no internet.">Suggest the next word on a phone keyboard, offline</li>
              <li data-bucket="big" data-why="Long, multi-step reasoning is where larger models help most.">Plan and write a change across many files in a big codebase</li>
              <li data-bucket="small" data-why="Simple extraction at very high volume. Cost per token matters most here.">Pull the date and total from millions of invoices</li>
              <li data-bucket="big" data-why="Subtle reasoning over long, messy documents benefits from a stronger model.">Compare three long legal contracts and explain the risky differences</li>
              <li data-bucket="big" data-why="Hard problems with many steps. Small models make more mistakes here.">Solve a tricky maths word problem and check each step</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the program. It makes a small artificial language and trains character models on more and more data.</li>
            <li>A bigger "context" (n) means a bigger model with more table entries. Read the table of test loss.</li>
            <li>Notice two things. More data lowers the loss. A bigger model only helps when there is enough data.</li>
            <li>Change <code>SIZES</code> or <code>ORDERS</code> and run again. Try <code>ORDERS = [1, 2, 3, 4, 6]</code>.</li>
            <li>Change the example numbers in the compute estimate at the end.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Scale makes models better in a smooth, predictable way, but each gain costs more. Data and model size must grow together. The best model for your job is often not the biggest one.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Scaling in miniature: bigger models need more data. (Toy n-gram models, not a transformer.)
        import math
        import random
        from collections import Counter

        random.seed(1)
        SUBJECTS = ["the cat", "the dog", "a bird", "my friend", "the teacher", "an old man"]
        VERBS = ["sees", "likes", "finds", "helps", "follows", "paints"]
        OBJECTS = ["the ball", "a book", "the river", "some food", "the garden", "a red door"]

        def sentence():
            return f"{random.choice(SUBJECTS)} {random.choice(VERBS)} {random.choice(OBJECTS)}. "

        test_text = "".join(sentence() for _ in range(150))      # held-out text the model never trains on
        train_text = "".join(sentence() for _ in range(3000))
        V = len(set(test_text + train_text))                        # vocabulary: characters

        def train(text, n):
            pairs, contexts = Counter(), Counter()
            for i in range(n - 1, len(text)):
                ctx = text[i - n + 1:i]                             # the previous n-1 characters
                pairs[(ctx, text[i])] += 1
                contexts[ctx] += 1
            return pairs, contexts

        def test_loss(model, n, k=0.1):
            pairs, contexts = model
            total, count = 0.0, 0
            for i in range(n - 1, len(test_text)):
                ctx = test_text[i - n + 1:i]
                p = (pairs[(ctx, test_text[i])] + k) / (contexts[ctx] + k * V)   # smoothing: never 0
                total -= math.log(p)
                count += 1
            return total / count

        SIZES = [100, 1000, 10000, 80000]     # training characters ("data")
        ORDERS = [1, 2, 3, 5]                 # characters of context ("model size")

        print(f"Vocabulary: {V} characters. Random guessing loss = {math.log(V):.2f}\n")
        print("Test loss (lower is better)")
        print("n (context+1)  table entries " + "".join(f"{s:>9,}" for s in SIZES))
        for n in ORDERS:
            row = [test_loss(train(train_text[:s], n), n) for s in SIZES]
            print(f"{n:<14} {V ** n:>13,} " + "".join(f"{x:>9.2f}" for x in row))

        print("\nRead down a column: a bigger model is better only with enough data.")
        print("Read along a row: more data helps, but by less each time. The n=1 model soon stops improving.")

        # Rule of thumb: training compute ~ 6 x parameters x tokens (example numbers only)
        params, tokens = 1e9, 20e9
        print(f"\nExample: {params:.0e} parameters x {tokens:.0e} tokens -> about {6 * params * tokens:.1e} operations")

        # Try it: change SIZES or ORDERS (for example ORDERS = [1, 2, 3, 4, 6]) and run again.
      PYTHON
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Instruction Tuning and Chat Models</h1>
        </div>
        <p class="lc-lead">After pre-training, you have a <strong>base model</strong>. It is great at continuing text, but it does not follow instructions. Ask it a question and it may write more questions. In this lesson, you will learn how <strong>instruction tuning</strong> turns a base model into an assistant. You will also learn about <strong>chat templates</strong>: the hidden text format that turns a conversation into one long string of tokens.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A base model is fine-tuned on examples of instructions and good answers to make a chat model. Given the prompt 'Write a haiku about rain', the base model continues with more instructions, like a worksheet. The chat model writes the haiku.">
            <defs><marker id="lw15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="15" width="200" height="60" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="110" y="40" font-weight="700">Base model</text>
              <text x="110" y="60" font-size="11" fill="#9b99b8">continues any text</text>
              <line x1="212" y1="45" x2="268" y2="45" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw15a)"/>
              <rect x="272" y="15" width="220" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="382" y="40" font-weight="700" fill="#fcd34d">Supervised fine-tuning</text>
              <text x="382" y="60" font-size="11" fill="#9b99b8">instruction + good answer examples</text>
              <line x1="494" y1="45" x2="548" y2="45" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw15a)"/>
              <rect x="552" y="15" width="198" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="651" y="40" font-weight="700" fill="#6ee7b7">Chat model</text>
              <text x="651" y="60" font-size="11" fill="#9b99b8">follows instructions</text>
              <text x="380" y="110" font-size="12" fill="#67e8f9">Same prompt: "Write a haiku about rain."</text>
              <rect x="10" y="125" width="360" height="130" rx="10" fill="#27274e" stroke="#9b99b8"/>
              <text x="190" y="148" font-weight="700">Base model output</text>
              <g text-anchor="start" font-size="11.5">
                <text x="28" y="176">Write a haiku about snow.</text>
                <text x="28" y="198">Write a haiku about the sea.</text>
                <text x="28" y="220">Homework due Friday.</text>
              </g>
              <text x="190" y="245" font-size="10.5" fill="#9b99b8">it guesses this looks like a worksheet</text>
              <rect x="390" y="125" width="360" height="130" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="570" y="148" font-weight="700">Chat model output</text>
              <g text-anchor="start" font-size="11.5">
                <text x="408" y="176">Grey clouds gather low,</text>
                <text x="408" y="198">soft drops tap the window glass,</text>
                <text x="408" y="220">the dry earth drinks deep.</text>
              </g>
              <text x="570" y="245" font-size="10.5" fill="#9b99b8">it has learned to answer as an assistant</text>
            </g>
          </svg>
          <figcaption>Both outputs are "likely next text". Fine-tuning changes what the model thinks is likely: an answer, not more questions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A base model only continues text</h3>
          <p>A base model learned from web pages, books and code. It answers one question: "What text usually comes next?" On the internet, an instruction is often followed by more instructions, not an answer. So the base model may continue the list, change the topic or stop halfway.</p>
          <p>The knowledge is already inside the base model. What it lacks is the <em>behaviour</em> of an assistant. The next training stages teach that behaviour.</p>
        </div>
        <div class="lc-card">
          <h3>Supervised fine-tuning (SFT)</h3>
          <p><strong>Fine-tuning</strong> means training an already trained model a bit more, on special data. In <strong>supervised fine-tuning</strong>, the data is a set of example conversations. Each one has an instruction and a good answer. People write many of them. Today, models also help write and check them.</p>
          <table class="lc-table">
            <thead><tr><th>Instruction</th><th>Good answer</th></tr></thead>
            <tbody>
              <tr><td>Translate "good morning" into Hindi.</td><td>"Good morning" in Hindi is "suprabhat" (सुप्रभात).</td></tr>
              <tr><td>What is 15% of 80?</td><td>15% of 80 is 12.</td></tr>
              <tr><td>Who won the 2031 World Cup?</td><td>I can't know that. It is after my training data ends.</td></tr>
            </tbody>
          </table>
          <p>The training method is the same as pre-training: next-token prediction and cross-entropy loss. But usually the loss is counted only on the <strong>answer tokens</strong>. The model learns to write answers, not to write user questions. This dataset is tiny compared to pre-training data, yet it changes the model's behaviour a lot.</p>
        </div>
        <div class="lc-card">
          <h3>Chat templates: roles become text</h3>
          <p>A model only reads one sequence of tokens. So how does it know who said what? A <strong>chat template</strong> turns the conversation into one string. It uses <strong>special tokens</strong> (reserved tokens that mark roles and turn ends). Here is a made-up example format:</p>
          <pre><code>&lt;|system|&gt;You are a helpful tutor.&lt;|end|&gt;
        &lt;|user|&gt;What is a token?&lt;|end|&gt;
        &lt;|assistant|&gt;</code></pre>
          <p>The text ends right after the assistant tag. So the most likely next tokens are the assistant's answer. When the answer is done, the model outputs the end-of-turn token, and generation stops.</p>
          <ul class="lc-list">
            <li>Every model family has its own template and special tokens. Using the wrong one makes answers worse.</li>
            <li>With an API, you do not write the template yourself. You send a list of messages with roles, and the provider builds the text. For example: <code>client.messages.create(model="claude-opus-5", max_tokens=500, system="You are a helpful tutor.", messages=[{"role": "user", "content": "What is a token?"}])</code>.</li>
            <li>The <code>stop_reason</code> in the response tells you why it stopped. <code>"end_turn"</code> means the model finished its turn by itself.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: one chat request, step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your code sends">system: "You are a helpful tutor." · user: "What is a token?"</li>
              <li data-kind="tool" data-label="Provider applies the chat template">&lt;|system|&gt;You are a helpful tutor.&lt;|end|&gt;&lt;|user|&gt;What is a token?&lt;|end|&gt;&lt;|assistant|&gt;</li>
              <li data-kind="thought" data-label="Model predicts, token by token">After the assistant tag, an answer is the likely next text. SFT taught it this pattern.</li>
              <li data-kind="result" data-label="Tokens so far">"A token is a small piece of text, often part of a word. …"</li>
              <li data-kind="check" data-label="End of turn">The model outputs the &lt;|end|&gt; token. Generation stops. stop_reason is "end_turn".</li>
              <li data-kind="answer" data-label="Your code receives">A content block with the answer text. The special tokens are removed.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the program. It builds the chat template text from a list of messages.</li>
            <li>It then shows one SFT training example and marks which tokens the loss counts.</li>
            <li>Finally, it compares a pretend base model and a pretend chat model on the same prompt.</li>
            <li>Add another user and assistant turn to <code>messages</code>. See how the template grows.</li>
            <li>Change the tag strings in <code>TAGS</code>. Real model families often use different ones.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A chat model is still a next-token predictor. Instruction tuning and a chat template make "a helpful answer" the most likely next text.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Chat templates and SFT examples. The format here is made up; each model family has its own.

        TAGS = {"system": "<|system|>", "user": "<|user|>", "assistant": "<|assistant|>", "end": "<|end|>"}

        def apply_chat_template(system, messages, add_generation_prompt=True):
            text = f"{TAGS['system']}{system}{TAGS['end']}\n"
            for m in messages:
                text += f"{TAGS[m['role']]}{m['content']}{TAGS['end']}\n"
            if add_generation_prompt:
                text += TAGS["assistant"]          # the model continues from here
            return text

        messages = [
            {"role": "user", "content": "What is a token?"},
        ]
        print("=== Text the model actually reads ===")
        print(apply_chat_template("You are a helpful tutor.", messages))

        # One SFT example: the loss counts only the assistant's answer tokens.
        example = [
            {"role": "user", "content": "What is 15% of 80?"},
            {"role": "assistant", "content": "15% of 80 is 12."},
        ]
        print("\n=== One SFT training example (learn = loss counted) ===")
        for m in example:
            tokens = [TAGS[m["role"]]] + m["content"].split() + [TAGS["end"]]
            learn = m["role"] == "assistant"
            for i, tok in enumerate(tokens):
                flag = "learn" if learn and i > 0 else "skip"   # the role tag is given, not learned
                print(f"  {tok:<14} {flag}")

        # Pretend models (canned text) to show the difference in behaviour.
        def base_model(prompt):
            return prompt + "\nWrite a haiku about snow.\nWrite a haiku about the sea.\nHomework due Friday."

        def chat_model(system, messages):
            _ = apply_chat_template(system, messages)
            reply = "Grey clouds gather low,\nsoft drops tap the window glass,\nthe dry earth drinks deep."
            return {"content": [{"type": "text", "text": reply}], "stop_reason": "end_turn"}

        print("\n=== Base model continues the text ===")
        print(base_model("Write a haiku about rain."))
        print("\n=== Chat model answers ===")
        response = chat_model("You are a poet.", [{"role": "user", "content": "Write a haiku about rain."}])
        print(response["content"][0]["text"])
        print("stop_reason:", response["stop_reason"])

        # Try it: add another user/assistant turn to messages, or change the TAGS strings.
      PYTHON
    },
    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Learning from Feedback</h1>
        </div>
        <p class="lc-lead">Instruction tuning teaches a model to answer. But some answers are better than others: clearer, more honest, safer. It is hard to write the perfect answer for every question. It is much easier to compare two answers and say which is better. In this lesson, you will learn how models learn from these comparisons. The best-known method is <strong>reinforcement learning from human feedback (RLHF)</strong>. You will also meet related methods and the goal of making models helpful, honest and harmless.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="The RLHF loop. A prompt gets two answers from the model. A person picks the better one. These choices train a reward model. The reward model scores new answers, and reinforcement learning updates the chat model to get higher scores. The loop repeats.">
            <defs><marker id="lw16a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="60" width="120" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="70" y="85" font-weight="700" fill="#93c5fd">Prompt</text>
              <text x="70" y="105" font-size="11" fill="#9b99b8">"Is it safe to…?"</text>
              <line x1="132" y1="90" x2="162" y2="90" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw16a)"/>
              <rect x="165" y="20" width="160" height="60" rx="10" fill="#27274e" stroke="#9b99b8"/>
              <text x="245" y="45" font-weight="700">Answer A</text>
              <text x="245" y="65" font-size="11" fill="#9b99b8">confident, wrong</text>
              <rect x="165" y="100" width="160" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="245" y="125" font-weight="700" fill="#6ee7b7">Answer B</text>
              <text x="245" y="145" font-size="11" fill="#9b99b8">correct, explains risk</text>
              <line x1="327" y1="90" x2="357" y2="90" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw16a)"/>
              <rect x="360" y="60" width="120" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="420" y="85" font-weight="700" fill="#f9a8d4">Person</text>
              <text x="420" y="105" font-size="11" fill="#9b99b8">"B is better"</text>
              <line x1="482" y1="90" x2="512" y2="90" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw16a)"/>
              <rect x="515" y="60" width="130" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="580" y="85" font-weight="700" fill="#fcd34d">Reward model</text>
              <text x="580" y="105" font-size="11" fill="#9b99b8">learns to score</text>
              <line x1="647" y1="90" x2="672" y2="90" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw16a)"/>
              <rect x="675" y="60" width="75" height="60" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="712" y="85" font-weight="700" fill="#67e8f9">RL</text>
              <text x="712" y="105" font-size="11" fill="#9b99b8">update</text>
              <path d="M712,122 L712,205 L245,205 L245,164" fill="none" stroke="#22d3ee" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#lw16a)"/>
              <text x="480" y="225" font-size="11.5" fill="#67e8f9">the chat model changes to write answers that score higher, then new answers are compared</text>
            </g>
          </svg>
          <figcaption>People compare answers. A reward model learns their taste. Reinforcement learning pushes the chat model towards high-scoring answers.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Preference data</h3>
          <p><strong>Preference data</strong> is a set of comparisons. For one prompt, the model writes two (or more) answers. A person reads them and picks the better one. Here is one example:</p>
          <table class="lc-table">
            <thead><tr><th>Prompt</th><th>Answer A</th><th>Answer B</th><th>Chosen</th></tr></thead>
            <tbody>
              <tr><td>Can I give my dog grapes?</td><td>Yes, grapes are a healthy snack for dogs.</td><td>No. Grapes can harm dogs, even in small amounts. Contact a vet if your dog ate some.</td><td>B</td></tr>
              <tr><td>What is the population of my village?</td><td>It is exactly 4,213 people.</td><td>I don't have reliable data for that. The latest census report is a good place to check.</td><td>B</td></tr>
            </tbody>
          </table>
          <p>Comparing is faster and more consistent than writing perfect answers. It also captures things that are hard to write as rules, such as tone and clarity.</p>
        </div>
        <div class="lc-card">
          <h3>How RLHF works</h3>
          <ol class="lc-list">
            <li><strong>Train a reward model.</strong> This is another model that reads a prompt and an answer and gives a score. It learns from the comparisons: the chosen answer should score higher than the rejected one.</li>
            <li><strong>Improve the chat model with reinforcement learning (RL).</strong> RL means learning by trial and reward. The chat model writes answers, the reward model scores them, and the chat model is updated to get higher scores. A common algorithm for this is PPO.</li>
            <li><strong>Stay close to the original.</strong> A penalty stops the model from drifting too far from the fine-tuned model. Without it, the model may find strange tricks that fool the reward model. This is called <strong>reward hacking</strong>.</li>
          </ol>
          <p>There are simpler methods too. <strong>Direct Preference Optimization (DPO)</strong> learns straight from the chosen and rejected pairs. It needs no separate reward model and no RL loop. Labs use many variations. The core idea is the same: move the model towards answers people prefer.</p>
        </div>
        <div class="lc-card">
          <h3>Helpful, honest and harmless</h3>
          <p>A common goal for this stage is a model that is <strong>helpful</strong> (it really solves the task), <strong>honest</strong> (it does not make things up and says when it is unsure) and <strong>harmless</strong> (it avoids causing harm).</p>
          <ul class="lc-list">
            <li><strong>Principles instead of only people.</strong> In a constitutional-style approach, developers write a list of principles. A model uses them to critique and improve answers, and to judge which answer is better. This is AI feedback guided by written rules. Anthropic described this in its Constitutional AI work.</li>
            <li><strong>Known problems.</strong> A model can learn to please the rater instead of being right. For example, it may agree with the user too much. This is called <strong>sycophancy</strong>. Raters may also prefer long answers even when short ones are better.</li>
            <li><strong>Feedback from checks.</strong> For maths and code, a program can check if the answer is correct. RL on these checked tasks is a big part of how reasoning models are trained.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: the RLHF pipeline</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of learning from human feedback in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Start with an instruction-tuned chat model</li>
              <li data-order="2">Have the model write two answers for many prompts</li>
              <li data-order="3">People pick the better answer in each pair</li>
              <li data-order="4">Train a reward model to score chosen answers higher</li>
              <li data-order="5">Use RL to update the chat model towards higher scores, while staying close to the original</li>
              <li data-order="6">Test the new model, collect fresh comparisons and repeat</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the program. Each answer is described by a few simple features, such as "admits it is unsure" or "makes up a fact".</li>
            <li>It trains a tiny reward model from preference pairs. Then it prints the weight it learned for each feature.</li>
            <li>It uses the reward model to pick the best of four new answers. This is called best-of-n.</li>
            <li>Set <code>RATERS_LIKE_LONG = True</code>. Now raters always prefer longer answers. Watch the reward model learn to like length. This is how reward hacking starts.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Feedback training does not add much new knowledge. It shapes behaviour: which answer the model prefers to give. The model can only be as good as the preferences and principles it learns from.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A tiny reward model trained on preference pairs, then used to pick the best answer.
        # A real reward model is a neural network that reads the full text. We use hand-made features.
        import math
        import random

        random.seed(3)
        FEATURES = ["answers_question", "admits_unsure", "makes_up_fact", "rude", "long"]
        RATERS_LIKE_LONG = False     # try True

        def random_answer():
            return {f: random.random() < 0.5 for f in FEATURES}

        def rater_prefers(a, b):
            # Our pretend people: they value honest, helpful, polite answers.
            def taste(x):
                score = 2 * x["answers_question"] + 1 * x["admits_unsure"] - 3 * x["makes_up_fact"] - 2 * x["rude"]
                if RATERS_LIKE_LONG:
                    score += 4 * x["long"]
                return score + random.gauss(0, 0.5)       # people are not perfectly consistent
            return taste(a) > taste(b)

        # 1) Collect preference pairs: (chosen, rejected)
        pairs = []
        for _ in range(400):
            a, b = random_answer(), random_answer()
            pairs.append((a, b) if rater_prefers(a, b) else (b, a))

        # 2) Train the reward model: reward = sum(weight * feature)
        w = {f: 0.0 for f in FEATURES}
        def reward(x):
            return sum(w[f] * x[f] for f in FEATURES)

        LR = 0.1
        for epoch in range(60):
            for chosen, rejected in pairs:
                # P(chosen beats rejected) = sigmoid(reward difference). Push it towards 1.
                p = 1 / (1 + math.exp(-(reward(chosen) - reward(rejected))))
                for f in FEATURES:
                    w[f] += LR * (1 - p) * (chosen[f] - rejected[f])

        print("Learned reward weights:")
        for f in FEATURES:
            print(f"  {f:<17} {w[f]:+.2f}")

        # 3) Best-of-n: score candidate answers and keep the highest.
        candidates = {
            "Yes, it's exactly 4,213 people.":                 {"answers_question": 1, "admits_unsure": 0, "makes_up_fact": 1, "rude": 0, "long": 0},
            "I don't have reliable data. Check the census.":   {"answers_question": 1, "admits_unsure": 1, "makes_up_fact": 0, "rude": 0, "long": 0},
            "Why would you even ask that?":                    {"answers_question": 0, "admits_unsure": 0, "makes_up_fact": 0, "rude": 1, "long": 0},
            "A very long essay about villages in general...":  {"answers_question": 0, "admits_unsure": 0, "makes_up_fact": 0, "rude": 0, "long": 1},
        }
        print("\nScoring four answers to: 'What is the population of my village?'")
        ranked = sorted(candidates.items(), key=lambda kv: -reward(kv[1]))
        for text, feats in ranked:
            print(f"  {reward(feats):+6.2f}  {text}")
        print("\nBest-of-n picks:", ranked[0][0])

        # Try it: set RATERS_LIKE_LONG = True and see which answer wins now.
      PYTHON
    },
    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Generating Text: Temperature and Sampling</h1>
        </div>
        <p class="lc-lead">A model does not give you one next word. It gives a probability for every token in its vocabulary. Something must then <strong>choose</strong> one token. This choice is called <strong>decoding</strong>. In this lesson you will learn greedy decoding, sampling, temperature, top-k and top-p. You will also see why the same prompt can give a different answer each time.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Logits are divided by the temperature, turned into probabilities by softmax, filtered by top-k or top-p, and then one token is picked at random. Below, three panels show the probabilities for the next token after 'The capital of France is' at temperature 0.5, 1 and 2. Low temperature puts almost all probability on Paris. High temperature spreads it out.">
            <defs><marker id="lw17a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="14" width="130" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="75" y="41">Logits</text>
              <rect x="162" y="14" width="130" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="227" y="41">÷ temperature</text>
              <rect x="314" y="14" width="130" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="379" y="41">softmax</text>
              <rect x="466" y="14" width="130" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="531" y="41">top-k / top-p</text>
              <rect x="618" y="14" width="132" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="684" y="41">random pick</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw17a)"><line x1="141" y1="36" x2="159" y2="36"/><line x1="293" y1="36" x2="311" y2="36"/><line x1="445" y1="36" x2="463" y2="36"/><line x1="597" y1="36" x2="615" y2="36"/></g>
              <g font-size="11" fill="#9b99b8"><text x="75" y="76">raw scores</text><text x="227" y="76">sharpen or flatten</text><text x="379" y="76">probabilities</text><text x="531" y="76">drop unlikely ones</text><text x="684" y="76">one token</text></g>
              <rect x="10" y="96" width="235" height="196" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="262" y="96" width="235" height="196" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="514" y="96" width="236" height="196" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="127" y="120" font-weight="700" fill="#22d3ee">Temperature 0.5</text>
              <text x="379" y="120" font-weight="700" fill="#22d3ee">Temperature 1</text>
              <text x="632" y="120" font-weight="700" fill="#22d3ee">Temperature 2</text>
              <g text-anchor="start" font-size="11.5">
                <text x="22" y="152">Paris</text><text x="22" y="180">a</text><text x="22" y="208">the</text><text x="22" y="236">located</text>
                <rect x="80" y="141" width="107" height="14" rx="3" fill="#22d3ee"/><text x="192" y="152">97%</text>
                <rect x="80" y="169" width="2" height="14" rx="1" fill="#22d3ee"/><text x="88" y="180">2%</text>
                <rect x="80" y="197" width="1" height="14" rx="1" fill="#22d3ee"/><text x="88" y="208">1%</text>
                <text x="88" y="236">&lt;1%</text>
                <text x="274" y="152">Paris</text><text x="274" y="180">a</text><text x="274" y="208">the</text><text x="274" y="236">located</text>
                <rect x="332" y="141" width="85" height="14" rx="3" fill="#22d3ee"/><text x="422" y="152">77%</text>
                <rect x="332" y="169" width="12" height="14" rx="2" fill="#22d3ee"/><text x="350" y="180">10%</text>
                <rect x="332" y="197" width="8" height="14" rx="2" fill="#22d3ee"/><text x="346" y="208">7%</text>
                <rect x="332" y="225" width="4" height="14" rx="1" fill="#22d3ee"/><text x="342" y="236">4%</text>
                <text x="526" y="152">Paris</text><text x="526" y="180">a</text><text x="526" y="208">the</text><text x="526" y="236">located</text>
                <rect x="584" y="141" width="54" height="14" rx="3" fill="#22d3ee"/><text x="643" y="152">49%</text>
                <rect x="584" y="169" width="20" height="14" rx="2" fill="#22d3ee"/><text x="610" y="180">18%</text>
                <rect x="584" y="197" width="16" height="14" rx="2" fill="#22d3ee"/><text x="606" y="208">15%</text>
                <rect x="584" y="225" width="12" height="14" rx="2" fill="#22d3ee"/><text x="602" y="236">11%</text>
              </g>
              <g font-size="11" fill="#9b99b8"><text x="127" y="274">almost always Paris</text><text x="379" y="274">usually Paris</text><text x="632" y="274">more variety, more mistakes</text></g>
            </g>
          </svg>
          <figcaption>Prompt: "The capital of France is". Same logits, three temperatures. The numbers are example values.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Greedy decoding vs sampling</h3>
          <p>The model gives <strong>logits</strong> (raw scores, one for each token). Softmax turns them into probabilities. Now there are two main ways to choose.</p>
          <ul class="lc-list">
            <li><strong>Greedy decoding:</strong> always pick the token with the highest probability. The same prompt gives the same answer. But text can become dull or repeat itself.</li>
            <li><strong>Sampling:</strong> pick a token at random, using the probabilities as weights. A token with 77% is picked about 77 times in 100. A token with 4% is picked sometimes.</li>
          </ul>
          <p>After one token is chosen, it is added to the text. Then the model predicts the next token again. So one early random choice can change the whole answer. This is why you get different answers to the same question.</p>
        </div>
        <div class="lc-card">
          <h3>Temperature</h3>
          <p><strong>Temperature</strong> is a number that divides every logit before softmax. It changes how "sharp" the probabilities are.</p>
          <table class="lc-table">
            <thead><tr><th>Temperature</th><th>What happens</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>Close to 0</td><td>The top token gets almost all the probability. It is close to greedy.</td><td>Facts, code, data extraction</td></tr>
              <tr><td>1</td><td>The model's own probabilities, unchanged</td><td>General chat</td></tr>
              <tr><td>Above 1</td><td>Probabilities become flatter. Rare tokens are picked more often.</td><td>Brainstorming. Too high gives nonsense.</td></tr>
            </tbody>
          </table>
          <p>A tiny example: logits <code>[5.0, 3.0, 2.6]</code> divided by 0.5 become <code>[10, 6, 5.2]</code>. The gaps between them are now twice as big. So after softmax, the top token wins by much more.</p>
        </div>
        <div class="lc-card">
          <h3>Top-k and top-p</h3>
          <p>Even at a normal temperature, thousands of bad tokens each have a tiny chance. Together they can add up. Two filters remove them before the random pick.</p>
          <ul class="lc-list">
            <li><strong>Top-k:</strong> keep only the <code>k</code> most likely tokens. With <code>k = 2</code>, only "Paris" and "a" can be picked.</li>
            <li><strong>Top-p</strong> (also called nucleus sampling): sort tokens from most to least likely. Keep adding them until their total reaches <code>p</code>. With <code>p = 0.9</code> above: 77% + 10% = 87%, so add "the" (7%) to pass 90%. Three tokens stay.</li>
          </ul>
          <p>After filtering, the kept probabilities are scaled so they add up to 1 again. Many APIs let you set <code>temperature</code>, <code>top_k</code> and <code>top_p</code>. Some newer models, including current Claude models, do not accept these settings. Check the model's documentation.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: play with temperature and top-k</h3>
          <div class="lcw" data-controller="next-token"></div>
          <p>Pick a prompt. Move the temperature slider to 0.2, then to 2. Watch the bars. Then lower top-k to 1. What kind of decoding is that?</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code uses example logits for "The capital of France is". It builds softmax with temperature, top-k and top-p from scratch.</li>
            <li>Run it. Compare the three temperature tables. Then look at the 10 random samples for each temperature.</li>
            <li>Change the temperature list to <code>(0.1, 1.0, 5.0)</code>. Change <code>top_p(probs, 0.9)</code> to <code>0.5</code>. How many tokens stay?</li>
            <li>Change the seed in <code>random.Random(42)</code>. The samples change, but greedy never does.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The model only gives probabilities. Decoding settings decide how to turn them into text. Low temperature is steady and safe. High temperature is varied and riskier. Random sampling is why the same prompt can give different answers.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Temperature, top-k and top-p, built from scratch.
        # The logits are example scores for the next token after the prompt.
        import math
        import random

        prompt = "The capital of France is"
        logits = {" Paris": 5.0, " a": 3.0, " the": 2.6, " located": 2.0, " one": 1.0}

        def softmax(scores, temperature=1.0):
            scaled = {tok: s / temperature for tok, s in scores.items()}
            biggest = max(scaled.values())            # subtract the max so exp() stays small
            exps = {tok: math.exp(s - biggest) for tok, s in scaled.items()}
            total = sum(exps.values())
            return {tok: e / total for tok, e in exps.items()}

        def renormalise(probs):
            total = sum(probs.values())
            return {tok: p / total for tok, p in probs.items()}

        def top_k(probs, k):
            best = sorted(probs.items(), key=lambda kv: -kv[1])[:k]
            return renormalise(dict(best))

        def top_p(probs, p):
            kept, running = {}, 0.0
            for tok, prob in sorted(probs.items(), key=lambda kv: -kv[1]):
                kept[tok] = prob
                running += prob
                if running >= p:
                    break
            return renormalise(kept)

        def show(title, probs):
            print(title)
            for tok, p in sorted(probs.items(), key=lambda kv: -kv[1]):
                print(f"  {tok!r:12} {p:6.1%}  {'#' * round(p * 40)}")

        print("Prompt:", prompt)
        for t in (0.5, 1.0, 2.0):
            show(f"\nTemperature {t}:", softmax(logits, t))

        probs = softmax(logits, 1.0)
        show("\nTop-k, k=2 (only the 2 best tokens stay):", top_k(probs, 2))
        show("\nTop-p, p=0.9 (smallest group that reaches 90%):", top_p(probs, 0.9))

        greedy = max(probs, key=probs.get)
        print("\nGreedy decoding always picks:", repr(greedy))

        rng = random.Random(42)   # fixed seed, so each run gives the same "random" picks
        def sample(probs):
            tokens = list(probs)
            return rng.choices(tokens, weights=[probs[t] for t in tokens])[0]

        for t in (0.5, 1.0, 2.0):
            picks = [sample(softmax(logits, t)).strip() for _ in range(10)]
            print(f"10 samples at T={t}: {', '.join(picks)}")

        # Try it: add a new token such as " Lyon": 4.0 to the logits and run again.
      PYTHON
    },
    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Context Windows and Memory</h1>
        </div>
        <p class="lc-lead">A model can only use the text you send it in one request. This text is called the <strong>context</strong>. The largest amount of text it can take is its <strong>context window</strong>, measured in tokens. In this lesson you will learn what fits in the window and why the model has no memory between calls. You will also learn how chat apps "remember" things.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Old turns 1 and 2 are outside the context window and are not sent. The window holds the system prompt, turns 3 to 5 and the new message. Everything in the window goes to the model, which writes an answer. The answer also uses space in the window.">
            <defs><marker id="lw18a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="92" y="60" font-size="11.5" fill="#9b99b8">Not sent this time</text>
              <rect x="10" y="100" width="80" height="44" rx="8" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="5 4"/><text x="50" y="127" fill="#9b99b8">Turn 1</text>
              <rect x="100" y="100" width="80" height="44" rx="8" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="5 4"/><text x="140" y="127" fill="#9b99b8">Turn 2</text>
              <text x="95" y="168" font-size="11" fill="#fca5a5">the model cannot see these</text>
              <rect x="200" y="72" width="550" height="100" rx="12" fill="none" stroke="#22d3ee" stroke-width="2"/>
              <text x="475" y="60" font-weight="700" fill="#22d3ee">Context window: everything sent in this one call</text>
              <rect x="212" y="100" width="96" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="260" y="127">System</text>
              <rect x="318" y="100" width="96" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="366" y="127">Turn 3</text>
              <rect x="424" y="100" width="96" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="472" y="127">Turn 4</text>
              <rect x="530" y="100" width="96" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="578" y="127">Turn 5</text>
              <rect x="636" y="100" width="100" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="686" y="127">New message</text>
              <line x1="475" y1="174" x2="475" y2="204" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw18a)"/>
              <rect x="395" y="208" width="160" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="475" y="235">Model</text>
              <line x1="556" y1="230" x2="596" y2="230" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw18a)"/>
              <rect x="600" y="208" width="150" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="675" y="228">Answer</text><text x="675" y="244" font-size="10.5" fill="#9b99b8">also uses window space</text>
              <text x="190" y="228" font-size="11.5" fill="#9b99b8">Next call: your app sends</text>
              <text x="190" y="246" font-size="11.5" fill="#9b99b8">the history again</text>
            </g>
          </svg>
          <figcaption>The model reads only what is inside the window. Anything not sent does not exist for it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What is in the context window?</h3>
          <p>Everything the model reads in one request counts as tokens in the window:</p>
          <ul class="lc-list">
            <li>The <strong>system prompt</strong> (instructions that set the model's role and rules)</li>
            <li>The earlier messages of the conversation</li>
            <li>Documents, code or tool results you paste in</li>
            <li>The new message, and the answer the model writes</li>
          </ul>
          <p>Window sizes are different for each model. Some recent models accept hundreds of thousands of tokens or more. Check the model's documentation for the exact number. If your input is too big, the API returns an error, or your app must cut something out.</p>
        </div>
        <div class="lc-card">
          <h3>No memory between calls</h3>
          <p>A model API is <strong>stateless</strong>. This means it keeps nothing after it answers. A chat app looks like it remembers you. In fact, it sends the whole conversation again with every new message.</p>
          <pre><code>history = []
        history.append({"role": "user", "content": "My name is Priya."})
        reply = client.messages.create(model="claude-opus-5", max_tokens=1024, messages=history)
        history.append({"role": "assistant", "content": reply.content[0].text})

        # Second call: the model knows the name ONLY because we send history again
        history.append({"role": "user", "content": "What is my name?"})
        reply = client.messages.create(model="claude-opus-5", max_tokens=1024, messages=history)</code></pre>
          <p>The model's weights also do not change when you chat. What it "learned" in training stays fixed. So a "memory" feature in an app is your code saving notes and adding them to later prompts.</p>
        </div>
        <div class="lc-card">
          <h3>Long context has costs</h3>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Why</th><th>What you can do</th></tr></thead>
            <tbody>
              <tr><td>Cost</td><td>You pay for all input tokens on every call, including resent history</td><td>Send only what is needed. Some APIs cache a repeated start of the prompt.</td></tr>
              <tr><td>Speed</td><td>More tokens take longer to read</td><td>Keep prompts short</td></tr>
              <tr><td>Reliability</td><td>In very long inputs, a model can miss or mix up details, especially in the middle</td><td>Put key instructions clearly. Retrieve only the relevant parts.</td></tr>
              <tr><td>Window full</td><td>Old turns no longer fit</td><td>Drop the oldest turns, or replace them with a short summary</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: can the model see it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Your app makes one API call now. For each item, decide if the model can see it in this call.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="yes" data-label="In this call's context"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not visible to the model"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="yes" data-why="The system prompt is sent with the request, so it is in the context.">The system prompt your code sends with this request</li>
              <li data-bucket="no" data-why="The API keeps nothing. If your app does not resend it, the model never sees it.">A message from yesterday's chat that your app did not resend</li>
              <li data-bucket="yes" data-why="Pasted text is part of the message, so it is in the window.">A report you pasted into the new message</li>
              <li data-bucket="yes" data-why="A summary your code adds to the prompt is normal context text.">A short summary of old turns that your code added</li>
              <li data-bucket="no" data-why="Each request is separate. Other conversations are not shared.">A question you asked in a different chat window</li>
              <li data-bucket="no" data-why="Old turns that were cut to fit the window are not sent, so the model cannot read them.">Turn 1 of a very long chat, after your app cut it to save space</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code has a fake, stateless model and a small window of 40 "tokens" (words, to keep it simple).</li>
            <li>Run it. In test 1 the model forgets the name, because the history was not resent. In test 2 it remembers.</li>
            <li>In test 3 the chat gets long. The name falls out of the window, so the model forgets again. Test 4 fixes this with a saved note.</li>
            <li>Change <code>WINDOW = 40</code> to <code>80</code>, then to <code>100</code>. When does test 3 remember the name?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The model knows only two things: what it learned in training and what is in the current context window. Every kind of "memory" is your code choosing what to put back into the window.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A chat app with a small context window. The model is fake, but the rules are real:
        # 1) the model sees only what you send in this call
        # 2) when the window is full, old messages must be dropped or summarised

        WINDOW = 40              # window size in "tokens" (here we count words)
        SAVE_FOR_ANSWER = 10     # the answer needs space in the window too

        def count_tokens(text):
            return len(text.split())   # real tokenizers differ; words are a rough stand-in

        def fake_model(system, messages):
            """Stateless, like a real API: it only reads its arguments."""
            seen = " ".join([system] + [m["content"] for m in messages]).lower()
            if "my name is" in seen:
                name = seen.split("my name is")[1].split()[0].strip(".,!")
                return f"Your name is {name.title()}."
            return "I don't know your name. It is not in this conversation."

        def fit_to_window(system, history):
            budget = WINDOW - SAVE_FOR_ANSWER - count_tokens(system)
            kept = []
            for msg in reversed(history):          # keep the newest messages first
                cost = count_tokens(msg["content"])
                if cost > budget:
                    break
                kept.insert(0, msg)
                budget -= cost
            return kept

        system = "You are a helpful assistant."

        print("Test 1: two separate calls, no history resent")
        fake_model(system, [{"role": "user", "content": "Hi, my name is Priya."}])
        print("  ", fake_model(system, [{"role": "user", "content": "What is my name?"}]))

        print("Test 2: the app resends the history")
        history = [{"role": "user", "content": "Hi, my name is Priya."},
                   {"role": "assistant", "content": "Nice to meet you, Priya."},
                   {"role": "user", "content": "What is my name?"}]
        print("  ", fake_model(system, history))

        print("Test 3: a long chat, trimmed to fit the window")
        history = [{"role": "user", "content": "Hi, my name is Priya."},
                   {"role": "assistant", "content": "Nice to meet you, Priya."}]
        for i in range(1, 4):
            history.append({"role": "user", "content": f"Question {i}: please explain how tokens and embeddings work."})
            history.append({"role": "assistant", "content": f"Answer {i}: tokens are pieces of text and embeddings are vectors."})
        history.append({"role": "user", "content": "What is my name?"})
        sent = fit_to_window(system, history)
        print(f"   {len(history)} messages in history, only {len(sent)} fit in the window")
        print("  ", fake_model(system, sent))

        print("Test 4: save a short note and add it to the system prompt")
        note = "Notes: user said my name is Priya."
        sent = fit_to_window(system + " " + note, history)
        print(f"   {len(sent)} messages sent, plus the note")
        print("  ", fake_model(system + " " + note, sent))

        # Try it: set WINDOW = 100 and see if test 3 now remembers the name.
      PYTHON
    },
    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Why Models Make Things Up</h1>
        </div>
        <p class="lc-lead">Sometimes a model gives an answer that sounds right but is false. This is called a <strong>hallucination</strong>. It might invent a book, a quote, a date or a function that does not exist. In this lesson you will learn why next-token prediction causes this. You will also learn practical ways to make it happen less.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Top path: a question about a book that does not exist goes to the model. It sees several likely-sounding names and writes a confident but false answer. Bottom path: the same question with sources and permission to say I don't know. The model finds no match and says it could not find the book.">
            <defs><marker id="lw19a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="10" y="22" text-anchor="start" font-weight="700" fill="#fca5a5">Without grounding</text>
              <rect x="10" y="36" width="200" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="110" y="61">Who wrote "The Silent River"?</text><text x="110" y="80" font-size="10.5" fill="#9b99b8">(this book does not exist)</text>
              <rect x="238" y="44" width="110" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="293" y="71">Model</text>
              <rect x="376" y="30" width="170" height="72" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="461" y="50" font-size="11" fill="#9b99b8">next token after "by"</text>
              <text x="461" y="68" font-size="11.5">Maria 21% · John 18%</text><text x="461" y="86" font-size="11.5">Anna 15% · ...</text>
              <rect x="574" y="36" width="176" height="60" rx="8" fill="#27274e" stroke="#ec4899"/><text x="662" y="61" fill="#fca5a5">"By Maria Lopez, 1998."</text><text x="662" y="80" font-size="10.5" fill="#9b99b8">sounds right, not true</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw19a)"><line x1="211" y1="66" x2="235" y2="66"/><line x1="349" y1="66" x2="373" y2="66"/><line x1="547" y1="66" x2="571" y2="66"/></g>
              <line x1="10" y1="132" x2="750" y2="132" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="10" y="166" text-anchor="start" font-weight="700" fill="#6ee7b7">With grounding</text>
              <rect x="10" y="180" width="200" height="72" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="110" y="202">Same question</text><text x="110" y="220" font-size="11">+ a book list as sources</text><text x="110" y="238" font-size="11">+ "say if you don't know"</text>
              <rect x="238" y="194" width="110" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="293" y="221">Model</text>
              <rect x="376" y="180" width="170" height="72" rx="8" fill="#1f1f44" stroke="#4b4a78"/><text x="461" y="210">Reads the sources</text><text x="461" y="230" font-size="11" fill="#9b99b8">no matching book</text>
              <rect x="574" y="180" width="176" height="72" rx="8" fill="#27274e" stroke="#10b981"/><text x="662" y="206" fill="#6ee7b7">"I could not find this</text><text x="662" y="224" fill="#6ee7b7">book in the sources."</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw19a)"><line x1="211" y1="216" x2="235" y2="216"/><line x1="349" y1="216" x2="373" y2="216"/><line x1="547" y1="216" x2="571" y2="216"/></g>
              <text x="380" y="280" font-size="11" fill="#9b99b8">The percentages are example numbers.</text>
            </g>
          </svg>
          <figcaption>The model always writes a likely next token. Grounding gives it real text to copy from, and a safe way to say "I don't know".</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why it happens</h3>
          <ul class="lc-list">
            <li><strong>The goal is "likely text", not "true text".</strong> Pre-training rewards the model for predicting the next token well. It does not check facts. A made-up author name can be very likely text.</li>
            <li><strong>It must always pick a token.</strong> At each step the model outputs some token. It has no built-in "stop, I am not sure" step unless training taught it to say so.</li>
            <li><strong>Rare facts are learned weakly.</strong> A famous fact appears thousands of times in training data. A small detail may appear once or never. The model fills the gap with a pattern that fits.</li>
            <li><strong>Guessing can be rewarded.</strong> If training or tests give points for any answer and none for "I don't know", a model learns to guess.</li>
            <li><strong>Each token builds on the last.</strong> Once a wrong name is written, the next tokens continue it smoothly. The false answer sounds confident.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The training data cut-off</h3>
          <p>A model learns from text collected up to a certain date. This date is its <strong>training data cut-off</strong>. It knows nothing about events after it. If you ask about recent news, it may give old information as if it were current.</p>
          <p>The fix is to give it fresh information. You can paste the text into the prompt, or let it use a search tool.</p>
        </div>
        <div class="lc-card">
          <h3>Ways to reduce made-up answers</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>How it helps</th></tr></thead>
            <tbody>
              <tr><td>Grounding</td><td>Put the source text in the prompt. Say "answer only from this text".</td></tr>
              <tr><td>Allow "I don't know"</td><td>Tell the model it is fine to say it does not know. This removes the pressure to guess.</td></tr>
              <tr><td>Ask for quotes or citations</td><td>Ask the model to quote the source for each claim. Then check that the quote really exists.</td></tr>
              <tr><td>Use tools</td><td>Search, a database lookup or a calculator give real data instead of a guess.</td></tr>
              <tr><td>Check the output</td><td>Run the code, test the function, or open the link. Never trust a citation you have not checked.</td></tr>
            </tbody>
          </table>
          <p>These methods reduce hallucinations, but no method removes them fully. For important facts, a person or a program should check the answer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what really helps?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each idea. Does it really reduce made-up answers?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="helps" data-label="Helps"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Does not really help"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="helps" data-why="The model can copy facts from real text instead of guessing.">Paste the relevant document and say "answer only from this text"</li>
              <li data-bucket="no" data-why="Telling the model it is an expert does not give it any new facts.">Add "You are an expert who never makes mistakes"</li>
              <li data-bucket="helps" data-why="It gives the model a safe answer when it lacks the facts.">Say "If the answer is not in the text, say you don't know"</li>
              <li data-bucket="helps" data-why="You can check each quote against the source and catch invented claims.">Ask for a quote from the source for each claim, then check the quotes</li>
              <li data-bucket="no" data-why="A longer answer has more places for errors. It does not add facts.">Ask for a longer, more detailed answer</li>
              <li data-bucket="helps" data-why="Recent facts come from the tool, not from old training data.">Let the model use a search tool for recent events</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code trains a tiny word-pair model on six true sentences. Then it writes new sentences.</li>
            <li>Run it. Some new sentences are true. Others are made up but sound just as confident. Each one is checked against the true facts.</li>
            <li>Then compare two answerers. The "guesser" always answers. The "grounded" one answers only from its sources, or says it does not know.</li>
            <li>Add a new true sentence to <code>facts</code>. Ask the grounded answerer about that person.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A language model is trained to write likely text, not to check facts. So a false answer can sound as sure as a true one. Give it real sources, let it say "I don't know", and check important claims yourself.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Why models make things up: a tiny word-pair (bigram) model trained on TRUE sentences.
        import random
        from collections import defaultdict

        facts = [
            "marie curie was born in warsaw",
            "marie curie won the nobel prize in physics",
            "albert einstein was born in ulm",
            "albert einstein won the nobel prize in physics",
            "ada lovelace was born in london",
            "alan turing was born in london",
        ]

        # Train: count which word follows which word.
        follows = defaultdict(list)
        for sentence in facts:
            words = ["<start>"] + sentence.split() + ["<end>"]
            for a, b in zip(words, words[1:]):
                follows[a].append(b)

        rng = random.Random(3)

        def generate(first_two):
            words = first_two.split()
            while words[-1] != "<end>" and len(words) < 12:
                words.append(rng.choice(follows[words[-1]]))
            return " ".join(words[:-1])

        print("Sentences written by the model (every training sentence was true):")
        seen = set()
        for name in ["marie curie", "albert einstein", "ada lovelace", "alan turing"] * 3:
            s = generate(name)
            if s in seen:
                continue
            seen.add(s)
            label = "TRUE" if s in facts else "MADE UP"
            print(f"  [{label:7}] {s}")

        print("\nQuestion: where was grace hopper born?")

        def guesser(person):
            # Always answers with the most common pattern it has seen.
            places = [s.split("born in ")[1] for s in facts if "born in" in s]
            most_common = max(set(places), key=places.count)
            return f"{person.title()} was born in {most_common.title()}."

        def grounded(person, sources):
            for s in sources:
                if s.startswith(person) and "born in" in s:
                    return f"{person.title()} was born in {s.split('born in ')[1].title()}."
            return "I don't know. My sources do not say."

        print("  Guesser: ", guesser("grace hopper"), " <- confident, but not from any source")
        print("  Grounded:", grounded("grace hopper", facts))
        print("  Grounded:", grounded("ada lovelace", facts))

        # Try it: add "grace hopper was born in new york city" to facts and run again.
      PYTHON
    },
    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Reasoning and Thinking Models</h1>
        </div>
        <p class="lc-lead">Some questions need several steps, like a maths word problem or a bug hunt. A model does better on these when it writes out its steps before the final answer. Modern <strong>thinking models</strong> are trained to do this on their own. In this lesson you will learn why step-by-step text helps, how thinking works in an API, and what it costs. You will also learn why the reasoning text is not a guaranteed explanation.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Top: a question goes straight to a short answer, which is fast but can skip steps. Bottom: the same question goes to a thinking block with three written steps and a check, then to the final answer 67. Thinking uses more tokens, time and money.">
            <defs><marker id="lw20a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="10" y="22" text-anchor="start" font-weight="700" fill="#fcd34d">Answer straight away</text>
              <rect x="10" y="34" width="230" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="125" y="55">48 apples, sell 17,</text><text x="125" y="72">add 3 boxes of 12. Total?</text>
              <line x1="241" y1="59" x2="298" y2="59" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw20a)"/>
              <rect x="302" y="34" width="150" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="377" y="64">"About 60"</text>
              <text x="600" y="55" font-size="11" fill="#9b99b8">few tokens, fast</text><text x="600" y="72" font-size="11" fill="#9b99b8">may skip a step</text>
              <line x1="10" y1="104" x2="750" y2="104" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="10" y="130" text-anchor="start" font-weight="700" fill="#22d3ee">Think first</text>
              <rect x="10" y="150" width="230" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="125" y="171">48 apples, sell 17,</text><text x="125" y="188">add 3 boxes of 12. Total?</text>
              <line x1="241" y1="175" x2="276" y2="175" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw20a)"/>
              <rect x="280" y="120" width="250" height="112" rx="10" fill="#1f1f44" stroke="#22d3ee" stroke-dasharray="5 4"/>
              <text x="405" y="140" font-weight="700" fill="#22d3ee">thinking</text>
              <g text-anchor="start" font-size="11.5"><text x="298" y="162">step 1: 48 - 17 = 31</text><text x="298" y="182">step 2: 3 × 12 = 36</text><text x="298" y="202">step 3: 31 + 36 = 67</text><text x="298" y="222" fill="#6ee7b7">check: 67 - 36 + 17 = 48 ✓</text></g>
              <line x1="531" y1="175" x2="566" y2="175" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw20a)"/>
              <rect x="570" y="150" width="180" height="50" rx="8" fill="#27274e" stroke="#10b981"/><text x="660" y="180" fill="#6ee7b7">"67 apples"</text>
              <text x="380" y="262" font-size="11.5" fill="#9b99b8">More thinking means more output tokens: more time and more cost.</text>
            </g>
          </svg>
          <figcaption>Writing the steps gives the model room to work. Each step is in the context when it writes the next one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why step-by-step text helps</h3>
          <p>For each token, the model does a fixed amount of computing. A hard problem may need more work than one token allows. When the model writes steps, it gets many more tokens to compute with.</p>
          <p>Each written step also goes into the context. Later tokens can read it, like notes on paper. So "31" from step 1 is ready to use in step 3.</p>
          <p>People first used this with prompts like "Let's think step by step". This is called <strong>chain-of-thought prompting</strong>. A well-known paper is "Chain-of-Thought Prompting Elicits Reasoning in Large Language Models" (2022).</p>
        </div>
        <div class="lc-card">
          <h3>Thinking models</h3>
          <p>A <strong>thinking model</strong> (or reasoning model) is trained to reason before it answers. The training often uses reinforcement learning on problems with checkable answers, like maths and code. The model learns that careful steps lead to rewards.</p>
          <p>In the Claude API, current models use <strong>adaptive thinking</strong>. The model decides if a question needs thinking, and how much. You can guide the overall effort with an effort setting:</p>
          <pre><code>response = client.messages.create(
            model="claude-opus-5",
            max_tokens=16000,
            thinking={"type": "adaptive"},       # the model decides how much to think
            output_config={"effort": "high"},    # low, medium, high... guides how hard it works
            messages=[{"role": "user", "content": "48 apples, sell 17, add 3 boxes of 12. Total?"}],
        )
        for block in response.content:
            print(block.type)    # "thinking" block(s) first, then a "text" block with the answer</code></pre>
          <p>Older models used a fixed thinking budget: you set an exact number of thinking tokens. Current models replace this with adaptive thinking. The API may return a summary of the thinking or leave it empty. Check the docs for the details of each model.</p>
        </div>
        <div class="lc-card">
          <h3>Costs, and a warning</h3>
          <table class="lc-table">
            <thead><tr><th>Use thinking for</th><th>Thinking is often not needed for</th></tr></thead>
            <tbody>
              <tr><td>Maths and logic problems</td><td>Short rewrites and translations</td></tr>
              <tr><td>Writing and fixing code</td><td>Simple classification ("positive or negative?")</td></tr>
              <tr><td>Planning many steps, agent tasks</td><td>Looking up one simple fact from given text</td></tr>
            </tbody>
          </table>
          <p>Thinking tokens are output tokens. You pay for them, and they take time to generate. So a thinking answer is slower and costs more.</p>
          <p><strong>Warning:</strong> the reasoning text is not a guaranteed explanation of how the model got its answer. The real computing happens inside the network. The written steps can look convincing and still be wrong. Or the model can reach the answer in a different way than it wrote. Always check important answers with tests, tools or a person.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow a thinking model</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="User">A train leaves at 09:40. The trip takes 2 hours 35 minutes. When does it arrive?</li>
              <li data-kind="thought" data-label="Thinking">This needs time arithmetic. I will add the hours first, then the minutes.</li>
              <li data-kind="thought" data-label="Thinking">09:40 + 2 hours = 11:40. Then 11:40 + 35 minutes = 11:75, which is 12:15.</li>
              <li data-kind="check" data-label="Check">Check backwards: 12:15 minus 2:35. 12:15 - 2:00 = 10:15, and 10:15 - 0:35 = 09:40. Correct.</li>
              <li data-kind="answer" data-label="Answer">The train arrives at 12:15.</li>
              <li data-kind="warn" data-label="Remember">The thinking was extra output tokens, so it cost more than a direct answer. For "What is 2 + 2?" the model would usually skip thinking.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code has a fake client with the same method names as the real SDK. On a real machine you would use the <code>anthropic</code> library.</li>
            <li>The fake model thinks only when a problem has more than one step. That is the adaptive idea. It adds a check step when effort is <code>"high"</code>.</li>
            <li>Run it. Compare the fast answers with the thinking answers, and the output token counts.</li>
            <li>Change <code>EFFORT</code> to <code>"low"</code>. The check step goes away and fewer tokens are used.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Thinking gives a model more tokens to work through a problem, so hard tasks get better answers. It costs more time and money. The written reasoning is helpful, but it is not proof. Still check the final answer.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Thinking vs answering straight away, with a fake client.
        # On a real machine you would use: import anthropic; client = anthropic.Anthropic()
        from dataclasses import dataclass, field

        EFFORT = "high"   # try "low"

        # Each problem is a list of steps: (description, expression)
        PROBLEMS = {
            "What is 7 + 5?": [("7 + 5", 7 + 5)],
            "48 apples, sell 17, add 3 boxes of 12. Total?": [("48 - 17", 48 - 17), ("3 * 12", 3 * 12), ("31 + 36", 31 + 36)],
            "Pens cost 15 each. Buy 4, pay with 100. Change?": [("15 * 4", 15 * 4), ("100 - 60", 100 - 60)],
        }

        @dataclass
        class Block:
            type: str
            text: str = ""
            thinking: str = ""

        @dataclass
        class Response:
            content: list
            usage: dict = field(default_factory=dict)

        def tokens(text):
            return len(text.split())   # a rough count, for comparing only

        class FakeMessages:
            def create(self, model, max_tokens, messages, thinking=None, output_config=None):
                question = messages[-1]["content"]
                steps = PROBLEMS[question]
                blocks = []
                if thinking and thinking["type"] == "adaptive" and len(steps) > 1:
                    lines = [f"step {i}: {d} = {v}" for i, (d, v) in enumerate(steps, 1)]
                    if (output_config or {}).get("effort") == "high":
                        lines.append(f"check: I redo the last step and get {steps[-1][1]} again")
                    blocks.append(Block("thinking", thinking="\n".join(lines)))
                    answer = steps[-1][1]
                else:
                    # Without thinking, this fake model does multi-step problems in one rough jump.
                    answer = steps[-1][1] if len(steps) == 1 else round(steps[-1][1], -1)
                    if len(steps) > 1:
                        answer = f"about {answer}"
                blocks.append(Block("text", text=f"The answer is {answer}."))
                out = sum(tokens(b.text or b.thinking) for b in blocks)
                return Response(blocks, {"output_tokens": out})

        class FakeClient:
            messages = FakeMessages()

        client = FakeClient()

        for question in PROBLEMS:
            print("Q:", question)
            # Note: this fake skips thinking when you leave out `thinking`. Some real models,
            # such as claude-opus-5, think by default. Check the docs for each model.
            fast = client.messages.create(model="claude-opus-5", max_tokens=1000,
                                          messages=[{"role": "user", "content": question}])
            print(f"  fast:     {fast.content[-1].text}  ({fast.usage['output_tokens']} output tokens)")
            slow = client.messages.create(model="claude-opus-5", max_tokens=1000,
                                          thinking={"type": "adaptive"},
                                          output_config={"effort": EFFORT},
                                          messages=[{"role": "user", "content": question}])
            for block in slow.content:
                if block.type == "thinking":
                    for line in block.thinking.split("\n"):
                        print("    [thinking]", line)
            print(f"  thinking: {slow.content[-1].text}  ({slow.usage['output_tokens']} output tokens)\n")

        # Try it: add your own problem with 3 or 4 steps to PROBLEMS and set EFFORT = "low".
      PYTHON
    },
    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Multimodal Models</h1>
        </div>
        <p class="lc-lead">Many models can read more than text. You can send a screenshot, a photo, a chart or a PDF page and ask about it. A model that works with several kinds of input is called <strong>multimodal</strong>. In this lesson you will learn how an image becomes tokens, what vision-language models are good at, and where they still make mistakes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="An image is cut into a grid of square patches. A vision encoder turns each patch into a vector. The patch vectors and the text tokens form one sequence. The transformer reads the whole sequence and writes a text answer.">
            <defs><marker id="lw21a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="92" y="30" font-weight="700">Image</text>
              <g stroke="#1f1f44" stroke-width="3">
                <rect x="20" y="44" width="72" height="72" fill="#3b82f6"/><rect x="92" y="44" width="72" height="72" fill="#22d3ee"/>
                <rect x="20" y="116" width="72" height="72" fill="#10b981"/><rect x="92" y="116" width="72" height="72" fill="#f59e0b"/>
              </g>
              <g font-size="11" fill="#1f1f44" font-weight="700"><text x="56" y="84">1</text><text x="128" y="84">2</text><text x="56" y="156">3</text><text x="128" y="156">4</text></g>
              <text x="92" y="210" font-size="11" fill="#9b99b8">cut into patches</text>
              <line x1="168" y1="116" x2="200" y2="116" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw21a)"/>
              <rect x="204" y="86" width="130" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="269" y="111">Vision encoder</text><text x="269" y="129" font-size="10.5" fill="#9b99b8">patch → vector</text>
              <line x1="336" y1="116" x2="356" y2="84" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw21a)"/>
              <text x="512" y="30" font-weight="700">One sequence of tokens</text>
              <g>
                <rect x="360" y="46" width="34" height="34" rx="5" fill="#27274e" stroke="#3b82f6"/><rect x="398" y="46" width="34" height="34" rx="5" fill="#27274e" stroke="#22d3ee"/>
                <rect x="436" y="46" width="34" height="34" rx="5" fill="#27274e" stroke="#10b981"/><rect x="474" y="46" width="34" height="34" rx="5" fill="#27274e" stroke="#f59e0b"/>
                <rect x="522" y="46" width="48" height="34" rx="5" fill="#27274e" stroke="#ec4899"/><rect x="574" y="46" width="34" height="34" rx="5" fill="#27274e" stroke="#ec4899"/>
                <rect x="612" y="46" width="42" height="34" rx="5" fill="#27274e" stroke="#ec4899"/><rect x="658" y="46" width="34" height="34" rx="5" fill="#27274e" stroke="#ec4899"/>
              </g>
              <g font-size="11"><text x="377" y="67">p1</text><text x="415" y="67">p2</text><text x="453" y="67">p3</text><text x="491" y="67">p4</text><text x="546" y="67">What</text><text x="591" y="67">is</text><text x="633" y="67">this</text><text x="675" y="67">?</text></g>
              <text x="434" y="98" font-size="10.5" fill="#9b99b8">image tokens</text><text x="607" y="98" font-size="10.5" fill="#9b99b8">text tokens</text>
              <line x1="526" y1="106" x2="526" y2="140" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw21a)"/>
              <rect x="376" y="144" width="300" height="46" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="526" y="163">Transformer</text><text x="526" y="180" font-size="10.5" fill="#9b99b8">attention across image and text</text>
              <line x1="526" y1="192" x2="526" y2="222" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lw21a)"/>
              <rect x="416" y="226" width="220" height="40" rx="8" fill="#27274e" stroke="#10b981"/><text x="526" y="251">"A red bicycle by a wall."</text>
            </g>
          </svg>
          <figcaption>An image becomes a short row of patch tokens. After that, the transformer treats them much like text tokens.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How an image becomes tokens</h3>
          <ol class="lc-list">
            <li><strong>Cut into patches.</strong> The image is split into small squares called <strong>patches</strong>. A common size is 16 × 16 pixels. The paper "An Image is Worth 16x16 Words" (2020) made this idea popular.</li>
            <li><strong>Turn each patch into a vector.</strong> Each patch is a grid of pixel colour numbers. A learned network, the <strong>vision encoder</strong>, turns it into a vector. The vector has the same length as a text token's embedding.</li>
            <li><strong>Add position.</strong> Position information tells the model where each patch was in the image.</li>
            <li><strong>Join with the text.</strong> The patch vectors and the text tokens go into one sequence. Attention lets text tokens look at image patches, and patches look at each other.</li>
          </ol>
          <p>A bigger image gives more patches, so more tokens and more cost. Many APIs resize very large images first. Other inputs work in a similar way. Audio is cut into short time slices. A video can be treated as a series of frames.</p>
        </div>
        <div class="lc-card">
          <h3>Sending an image in the API</h3>
          <p>In the Claude Messages API, an image is a content block in the user message, next to a text block:</p>
          <pre><code>message = client.messages.create(
            model="claude-opus-5",
            max_tokens=1024,
            messages=[{
                "role": "user",
                "content": [
                    {"type": "image",
                     "source": {"type": "base64", "media_type": "image/png", "data": png_base64}},
                    {"type": "text", "text": "What error does this screenshot show?"},
                ],
            }],
        )</code></pre>
          <p>The answer comes back as normal text. Supported image types and size limits differ, so check the docs.</p>
        </div>
        <div class="lc-card">
          <h3>What they do well, and their limits</h3>
          <table class="lc-table">
            <thead><tr><th>Usually good at</th><th>Often weak at</th></tr></thead>
            <tbody>
              <tr><td>Reading clear text in screenshots and documents</td><td>Tiny or blurry text in low-resolution images</td></tr>
              <tr><td>Describing a scene or a photo</td><td>Counting many small objects exactly</td></tr>
              <tr><td>Explaining the main trend of a chart</td><td>Reading exact values or measuring distances</td></tr>
              <tr><td>Turning a sketch or table into text or code</td><td>Tricky spatial questions ("which is left of which?")</td></tr>
            </tbody>
          </table>
          <p>Image answers can also be made up. The model may "see" a detail that is not there. Check important numbers against the original.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: good job for a vision model?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each task. Is it usually a strength or a weak spot for vision-language models?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Usually good"></div>
              <div data-sorter-target="bucket" data-bucket="weak" data-label="Often weak"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="Clear printed text in a screenshot is easy to read from patches.">Explain the error message in a clear screenshot</li>
              <li data-bucket="weak" data-why="Exact counting of many small objects is a known weak spot.">Count exactly 47 birds in a photo of a flock</li>
              <li data-bucket="good" data-why="The overall shape of a chart is easy to see.">Say whether sales go up or down in a line chart</li>
              <li data-bucket="weak" data-why="Exact measurements need pixel-level precision the model does not have.">Measure the exact distance in pixels between two buttons</li>
              <li data-bucket="weak" data-why="Tiny, blurred text may be lost when the image is cut into patches or resized.">Read small blurry text on a far-away sign</li>
              <li data-bucket="good" data-why="Describing a scene is a core skill of vision-language models.">Describe what is happening in a holiday photo</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code makes an 8 × 8 "image" of numbers with a cross shape in it.</li>
            <li>It cuts the image into 4 × 4 patches, turns each patch into a small vector, and joins them with text token vectors.</li>
            <li>Run it. Look at the patch numbers and the final sequence. Then see how many patch tokens bigger images would need.</li>
            <li>Change <code>PATCH = 4</code> to <code>2</code>. How many image tokens do you get now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A multimodal model turns images into patch tokens. Then the same transformer reads them together with the text. Because images become tokens, bigger images cost more. The model can also make mistakes about what it "sees".
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # How an image becomes tokens: patches -> vectors -> one sequence with the text.
        import random

        SIZE, PATCH, DIM = 8, 4, 3    # image is 8x8 pixels, patches are PATCH x PATCH, vectors have 3 numbers

        # A tiny grayscale image: 0 = black, 9 = white. It has a bright cross in the middle.
        image = [[9 if r in (3, 4) or c in (3, 4) else 1 for c in range(SIZE)] for r in range(SIZE)]
        print("Image:")
        for row in image:
            print("  " + " ".join(str(v) for v in row))

        # 1) Cut into patches, row by row.
        patches = []
        for top in range(0, SIZE, PATCH):
            for left in range(0, SIZE, PATCH):
                pixels = [image[r][c] for r in range(top, top + PATCH) for c in range(left, left + PATCH)]
                patches.append(pixels)
        print(f"\n{len(patches)} patches, each with {PATCH * PATCH} pixel numbers")

        # 2) A "vision encoder": here one fixed random matrix (a real one is learned in training).
        rng = random.Random(0)
        W = [[round(rng.uniform(-0.1, 0.1), 3) for _ in range(PATCH * PATCH)] for _ in range(DIM)]

        def encode(pixels, position):
            vec = [sum(w * p for w, p in zip(row, pixels)) for row in W]
            return [round(v + 0.01 * position, 2) for v in vec]   # add a small position signal

        image_tokens = [encode(p, i) for i, p in enumerate(patches)]
        for i, v in enumerate(image_tokens):
            print(f"  patch {i + 1}: {v}")

        # 3) Text tokens get embeddings from a table (here: made-up vectors).
        text = ["What", "shape", "is", "this", "?"]
        text_tokens = [[round(rng.uniform(-1, 1), 2) for _ in range(DIM)] for _ in text]

        # 4) One sequence: the transformer reads all of these together.
        sequence = [(f"<patch {i + 1}>", v) for i, v in enumerate(image_tokens)] + list(zip(text, text_tokens))
        print(f"\nSequence sent to the transformer ({len(sequence)} tokens):")
        print("  " + " ".join(name for name, _ in sequence))

        # Bigger images need many more patch tokens.
        print("\nPatch tokens for real image sizes, with 16x16 patches:")
        for w, h in [(224, 224), (512, 512), (1024, 768)]:
            print(f"  {w}x{h}: {(w // 16) * (h // 16)} patch tokens")

        # Try it: set PATCH = 2 and see how the number of image tokens changes.
      PYTHON
    },
    22 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-llm">How LLMs Work</div>
          <h1 class="lc-title">Capstone: Trace a Prompt Through a Tiny Model</h1>
        </div>
        <p class="lc-lead">In this capstone you will follow one short prompt through every stage of a language model. The prompt is "the cat sat on the". A small Python program will tokenize it, embed it, run one attention step, compute logits, apply softmax and sample the next word. The weights are hand-written, so you can read every number. Real models use the same stages, only much bigger.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="The pipeline: text is tokenized into IDs, each ID becomes an embedding, an attention step mixes information between tokens, the result gives logits for every word, softmax with temperature turns them into probabilities, one word is sampled, and it is added to the text to repeat.">
            <defs><marker id="lw22a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="160" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="90" y="53">Text</text><text x="90" y="72" font-size="10.5" fill="#9b99b8">"the cat sat on the"</text>
              <rect x="200" y="30" width="160" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="280" y="53">Tokenize</text><text x="280" y="72" font-size="10.5" fill="#9b99b8">[0, 1, 3, 5, 0]</text>
              <rect x="390" y="30" width="160" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="470" y="53">Embed</text><text x="470" y="72" font-size="10.5" fill="#9b99b8">4 numbers per token</text>
              <rect x="580" y="30" width="170" height="56" rx="8" fill="#27274e" stroke="#ec4899"/><text x="665" y="53">Attention</text><text x="665" y="72" font-size="10.5" fill="#9b99b8">last "the" looks at "on"</text>
              <rect x="580" y="160" width="170" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="665" y="183">Logits</text><text x="665" y="202" font-size="10.5" fill="#9b99b8">one score per word</text>
              <rect x="390" y="160" width="160" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="470" y="183">Softmax ÷ T</text><text x="470" y="202" font-size="10.5" fill="#9b99b8">probabilities</text>
              <rect x="200" y="160" width="160" height="56" rx="8" fill="#27274e" stroke="#10b981"/><text x="280" y="183">Sample</text><text x="280" y="202" font-size="10.5" fill="#9b99b8">random pick</text>
              <rect x="10" y="160" width="160" height="56" rx="8" fill="#27274e" stroke="#10b981"/><text x="90" y="183">Next token</text><text x="90" y="202" font-size="10.5" fill="#6ee7b7">"mat"</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lw22a)">
                <line x1="171" y1="58" x2="197" y2="58"/><line x1="361" y1="58" x2="387" y2="58"/><line x1="551" y1="58" x2="577" y2="58"/>
                <line x1="665" y1="88" x2="665" y2="156"/>
                <line x1="579" y1="188" x2="553" y2="188"/><line x1="389" y1="188" x2="363" y2="188"/><line x1="199" y1="188" x2="173" y2="188"/>
                <line x1="90" y1="158" x2="90" y2="90"/>
              </g>
              <text x="100" y="128" text-anchor="start" font-size="11" fill="#9b99b8">add it to the text and repeat</text>
              <text x="380" y="248" font-size="11" fill="#9b99b8">A real model repeats the attention step in many layers, with learned weights.</text>
            </g>
          </svg>
          <figcaption>Every stage of the course, in order. The loop at the left is how a model writes more than one token.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The tiny model</h3>
          <p>The model has a vocabulary of 9 words. Each word has a 4-number embedding. We chose what the 4 numbers mean, so you can read them:</p>
          <pre><code>#          [animal, action, place word, "the"]
        "the":     [0.0,    0.0,    0.0,        1.0]
        "cat":     [1.0,    0.0,    0.0,        0.0]
        "sat":     [0.0,    1.0,    0.0,        0.0]
        "on":      [0.0,    0.0,    1.0,        0.0]</code></pre>
          <p>In a real model, nobody chooses these numbers. Training learns them, and each vector has hundreds or thousands of numbers. Their meaning is also much harder to read.</p>
          <p>The attention step uses a simple rule for what each word looks for. For example, "the" looks for a place word like "on". This decides the attention weights. Then the output vectors score every word. A "the" that comes after "on" should be followed by a place, like "mat".</p>
        </div>
        <div class="lc-card">
          <h3>Checklist: each stage and where you learned it</h3>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>In the tiny model</th><th>In a real LLM</th></tr></thead>
            <tbody>
              <tr><td>Tokenize</td><td>Split on words, look up IDs</td><td>A BPE-style tokenizer with a vocabulary of many thousands of tokens (tokens and BPE lessons)</td></tr>
              <tr><td>Embed</td><td>4 hand-written numbers per word</td><td>A learned embedding table with long vectors (embeddings lesson)</td></tr>
              <tr><td>Position</td><td>A small bonus for more recent tokens</td><td>Position embeddings or rotary positions (position lesson)</td></tr>
              <tr><td>Attention</td><td>One head, one layer, causal (no future tokens)</td><td>Many heads in many layers, plus feed-forward layers and the residual stream (transformer lessons)</td></tr>
              <tr><td>Logits</td><td>Dot product with 9 output vectors</td><td>A score for every token in the vocabulary (logits lesson)</td></tr>
              <tr><td>Softmax and sampling</td><td>Temperature, then a seeded random pick</td><td>Temperature, top-k or top-p, then a random pick (sampling lesson)</td></tr>
              <tr><td>Training</td><td>None: weights are hand-written</td><td>Pre-training, instruction tuning and learning from feedback (training unit)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: put the stages in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the stages in the order a model uses to write one new token.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Split the prompt into tokens and look up their IDs</li>
              <li data-order="2">Turn each token ID into an embedding vector, with position information</li>
              <li data-order="3">Run attention so each token can use information from earlier tokens</li>
              <li data-order="4">Compute a logit (score) for every word in the vocabulary</li>
              <li data-order="5">Apply temperature and softmax to get probabilities</li>
              <li data-order="6">Pick one token at random using the probabilities</li>
              <li data-order="7">Add the token to the text and start again for the next one</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. It prints every stage for "the cat sat on the": token IDs, embeddings, attention weights, logits and probabilities.</li>
            <li>Look at the attention weights. The last "the" pays most attention to "on". That is why "mat" and "sofa" win.</li>
            <li>At the end it generates text from "the" at two temperatures. Change <code>PROMPT</code> to <code>"the dog slept under"</code> and run again.</li>
            <li>Change the <code>"mat"</code> output vector, or set <code>TEMPERATURE = 3.0</code>. How do the probabilities and the generated text change?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every large language model runs the same loop: tokens, embeddings, attention, logits, softmax, sample, repeat. Real models are huge and their weights are learned, not written by hand. But now you know what happens at every step.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Capstone: trace one prompt through a tiny language model.
        # Stages: tokenize -> embed -> attention -> logits -> softmax (with temperature) -> sample.
        import math
        import random
        import re

        PROMPT = "the cat sat on the"
        TEMPERATURE = 1.0

        # Embeddings: 4 numbers per word. We chose the meaning: [animal, action, place word, "the"]
        EMB = {
            "the":   [0.0, 0.0, 0.0, 1.0],
            "cat":   [1.0, 0.0, 0.0, 0.0],
            "dog":   [0.9, 0.0, 0.0, 0.1],
            "sat":   [0.0, 1.0, 0.0, 0.0],
            "slept": [0.1, 0.9, 0.0, 0.0],
            "on":    [0.0, 0.0, 1.0, 0.0],
            "under": [0.0, 0.1, 0.9, 0.0],
            "mat":   [0.2, 0.0, 0.0, 0.0],
            "sofa":  [0.2, 0.0, 0.0, 0.0],
        }
        # Output vectors: each word's logit is a dot product with one of these.
        OUT = {
            "the":   [-1.0, 0.0, 3.0, -2.0],   # likely after a place word like "on"
            "cat":   [-2.0, 0.0, -3.0, 2.0],   # likely after "the", if no place word came before
            "dog":   [-2.0, 0.0, -3.0, 1.8],
            "sat":   [3.0, -2.0, 0.0, -1.0],   # likely after an animal
            "slept": [2.8, -2.0, 0.0, -1.0],
            "on":    [0.0, 3.0, -2.0, -1.0],   # likely after an action
            "under": [0.0, 2.7, -2.0, -1.0],
            "mat":   [-2.0, 0.0, 2.0, 1.5],    # likely after "on the"
            "sofa":  [-2.0, 0.0, 1.9, 1.5],
        }
        VOCAB = list(EMB)

        def tokenize(text):
            return [VOCAB.index(w) for w in re.findall(r"[a-z]+", text.lower())]

        def dot(a, b):
            return sum(x * y for x, y in zip(a, b))

        def softmax(xs, temperature=1.0):
            biggest = max(xs)
            exps = [math.exp((x - biggest) / temperature) for x in xs]
            return [e / sum(exps) for e in exps]

        def query(x):
            animal, action, place, the = x
            # What each kind of word looks for (a real model learns this):
            return [3 * action,   # an action looks for the animal
                    3 * place,    # "on" looks for the action
                    3 * the,      # "the" looks for a place word
                    3 * animal]   # an animal looks for "the"

        def forward(ids, show=False):
            xs = [EMB[VOCAB[t]] for t in ids]                       # embed
            q = query(xs[-1])                                       # the last token asks
            # Causal attention: only tokens up to the last one. Newer tokens get a small bonus (position).
            scores = [dot(q, k) / math.sqrt(4) + 0.3 * i for i, k in enumerate(xs)]
            weights = softmax(scores)
            mixed = [sum(w * x[d] for w, x in zip(weights, xs)) for d in range(4)]
            h = [a + b for a, b in zip(xs[-1], mixed)]              # residual: keep the token's own vector
            logits = [dot(h, OUT[w]) for w in VOCAB]
            if show:
                print("\n3) Attention weights of the last token:")
                for t, w in zip(ids, weights):
                    print(f"   {VOCAB[t]:6} {w:.2f} {'#' * round(w * 30)}")
                print("   vector after attention:", [round(v, 2) for v in h])
            return logits

        ids = tokenize(PROMPT)
        print("Prompt:", repr(PROMPT))
        print("\n1) Token IDs:", ids)
        print("\n2) Embeddings:")
        for t in ids:
            print(f"   {VOCAB[t]:6} {EMB[VOCAB[t]]}")
        logits = forward(ids, show=True)
        print("\n4) Logits:", {w: round(l, 2) for w, l in zip(VOCAB, logits)})
        probs = softmax(logits, TEMPERATURE)
        print(f"\n5) Probabilities at temperature {TEMPERATURE}:")
        for w, p in sorted(zip(VOCAB, probs), key=lambda wp: -wp[1])[:5]:
            print(f"   {w:6} {p:6.1%} {'#' * round(p * 40)}")

        rng = random.Random(7)
        choice = rng.choices(VOCAB, weights=probs)[0]
        print("\n6) Sampled next token:", repr(choice))

        def generate(text, steps, temperature):
            for _ in range(steps):
                p = softmax(forward(tokenize(text)), temperature)
                text += " " + rng.choices(VOCAB, weights=p)[0]
            return text

        print("\n7) Repeat the loop, starting from 'the':")
        for t in (0.3, 1.5):
            print(f"   T={t}: {generate('the', 5, t)}")

        # Try it: set PROMPT = "the dog slept under" or TEMPERATURE = 3.0 and run again.
      PYTHON
    }
  }.freeze
end

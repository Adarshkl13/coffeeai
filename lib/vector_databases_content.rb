module VectorDatabasesContent
  # Units (sidebar dividers): 1–5 Embeddings & Similarity · 6–11 Qdrant Fundamentals
  #                           12–16 Indexing & Scale · 17–20 Use Cases & Capstone
  # Widgets: similarity, vector-plot, search-compare, vector-lab (need the in-browser embedding model
  # or /labs/vector), plus sequence, sorter, stepper.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Why Vector Databases?</h1>
        </div>
        <p class="lc-lead">Imagine you search a help centre for <em>"cancel my plan"</em>. A keyword search does not find the article <em>"How to end your subscription"</em>. The reason: the two texts share no words. But people search by <strong>meaning</strong>, not by exact words. Vector databases let you search by meaning. Each text becomes a list of numbers. Texts with similar meanings get numbers that are close together.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Keyword search matches words and misses a text with the same meaning. Vector search matches meaning and finds it.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="10" y="15" width="360" height="240" rx="12" fill="#1f1f44" stroke="#ef4444"/>
              <text x="190" y="42" text-anchor="middle" font-weight="700" fill="#fca5a5">Keyword search</text>
              <text x="30" y="72">query: "cancel my plan"</text>
              <text x="30" y="100" fill="#9b99b8">looks for the words cancel, my, plan</text>
              <text x="30" y="135">✗ "How to end your subscription"</text>
              <text x="30" y="160">✓ "Plan prices for 2026" <tspan fill="#9b99b8">(wrong!)</tspan></text>
              <text x="30" y="195" fill="#fca5a5">matches spelling, not meaning</text>
              <text x="30" y="220" fill="#9b99b8">great for exact codes and names</text>
              <rect x="390" y="15" width="360" height="240" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="570" y="42" text-anchor="middle" font-weight="700" fill="#6ee7b7">Vector (semantic) search</text>
              <circle cx="560" cy="150" r="70" fill="rgba(16,185,129,.08)" stroke="#10b981" stroke-dasharray="4 4"/>
              <circle cx="545" cy="140" r="7" fill="#fbbf24"/><text x="430" y="115" fill="#fcd34d">query: cancel my plan</text>
              <circle cx="585" cy="160" r="6" fill="#34d399"/><text x="595" y="165" font-size="11.5">end your subscription</text>
              <circle cx="540" cy="185" r="6" fill="#34d399"/><text x="430" y="205" font-size="11.5">close my account</text>
              <circle cx="700" cy="80" r="6" fill="#6b6988"/><text x="620" y="70" font-size="11.5" fill="#9b99b8">plan prices</text>
              <circle cx="690" cy="235" r="6" fill="#6b6988"/><text x="610" y="245" font-size="11.5" fill="#9b99b8">reset password</text>
            </g>
          </svg>
          <figcaption>Vector search finds the texts with the meaning closest to the query. It works even when they share no words.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The big idea in three steps</h3>
          <ol class="lc-list">
            <li><strong>Embed:</strong> an <em>embedding model</em> turns each text (or image, or product) into a vector. A vector is a list of numbers with a fixed length, such as 384 or 1536 numbers.</li>
            <li><strong>Store:</strong> a vector database keeps the vectors. It also keeps the original data next to them (this data is called the <em>payload</em>).</li>
            <li><strong>Search:</strong> the same model turns the query into a vector. The database then returns the stored vectors that are <em>nearest</em> to it.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Why not just a Python list?</h3>
          <p>For 1,000 vectors, a loop over a NumPy array works fine. You will write one in the Try It. You need a vector database when you need these things:</p>
          <table class="lc-table">
            <thead><tr><th>Need</th><th>What the database gives you</th></tr></thead>
            <tbody>
              <tr><td>Millions of vectors, with answers in milliseconds</td><td>Fast "approximate nearest-neighbour" indexes, such as HNSW (Unit 3)</td></tr>
              <tr><td>"Only English docs from 2025"</td><td>Payload filters used together with vector search (Lesson 9)</td></tr>
              <tr><td>Adding, changing and deleting data while people search</td><td>Upserts, deletes, saving to disk and snapshots</td></tr>
              <tr><td>Less memory</td><td>Quantisation and storage on disk (Lesson 15)</td></tr>
              <tr><td>Keyword and meaning search together</td><td>Hybrid search with sparse and dense vectors (Lesson 19)</td></tr>
            </tbody>
          </table>
          <p>This course uses <strong>Qdrant</strong>. It is an open-source vector database. The same ideas work in other tools too, such as pgvector (an add-on for PostgreSQL), Pinecone, Weaviate, Milvus and Chroma.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: keyword or vector search?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which kind of search works best for each query?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="kw" data-label="Keyword search"></div>
              <div data-sorter-target="bucket" data-bucket="vec" data-label="Vector search"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="kw" data-why="This is an exact ID. Meaning does not help here. An exact match does.">Order number INV-20391</li>
              <li data-bucket="vec" data-why="You can say this in many ways. The meaning matters more than the words.">"my screen goes black when I open the app"</li>
              <li data-bucket="kw" data-why="Error codes are rare, exact words. Keyword search matches them exactly.">Error code E-4021</li>
              <li data-bucket="vec" data-why="This is a description, not a name. Semantic search finds similar products.">"comfortable shoes for long walks"</li>
              <li data-bucket="vec" data-why="Embeddings are made to find texts with a similar meaning.">Find support tickets similar to this one</li>
            </ul>
          </div>
          <p>Real systems often use both at the same time. This is called <em>hybrid search</em> (Lesson 19).</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code compares keyword search and vector search on a tiny help centre. The vectors are made by hand. They have 4 dimensions with labels, so you can see what each number means. Real embeddings have hundreds of dimensions and no labels.</li>
            <li>Run it. Keyword search finds the wrong article for "cancel my plan". Vector search finds the right one.</li>
            <li>Add your own article with a hand-made vector. Then add a query that should find it.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A vector database stores meaning as numbers. It finds the nearest ones fast. It also gives you filters, updates and room to grow. Keyword search is still best for exact codes and names. So good systems often use both.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Keyword search vs vector search on a tiny help centre.
        import numpy as np

        # Hand-made 4-D "embeddings". Each dimension has a clear meaning:
        #            [billing, account-closing, security, pricing]
        articles = {
            "How to end your subscription": [0.3, 0.9, 0.0, 0.1],
            "Plan prices for 2026":         [0.4, 0.0, 0.0, 0.9],
            "Reset your password":          [0.0, 0.1, 0.9, 0.0],
            "Update your card details":     [0.9, 0.1, 0.2, 0.1],
        }
        query_text = "cancel my plan"
        query_vec = np.array([0.3, 0.8, 0.0, 0.3])   # the kind of vector a model might give

        def keyword_search(q):
            words = set(q.lower().split())
            scores = {t: len(words & set(t.lower().split())) for t in articles}
            return max(scores, key=scores.get), scores

        def vector_search(v):
            def cos(a, b):
                a, b = np.array(a), np.array(b)
                return float(a @ b / (np.linalg.norm(a) * np.linalg.norm(b)))
            scores = {t: round(cos(v, vec), 3) for t, vec in articles.items()}
            return max(scores, key=scores.get), scores

        best, scores = keyword_search(query_text)
        print("KEYWORD:", best, scores)
        best, scores = vector_search(query_vec)
        print("VECTOR: ", best, scores)

        # Try it: add ("Delete my account", [0.1, 0.95, 0.2, 0.0]) to articles and search again.
      PYTHON
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">What Is an Embedding?</h1>
        </div>
        <p class="lc-lead">An <strong>embedding</strong> is a list of numbers that stands for the meaning of a text. An embedding model learns from a very large amount of text. After training, sentences with similar meanings get vectors that point in similar directions. The single numbers mean nothing to us. What matters is how the vectors compare to each other.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Text goes into an embedding model and comes out as 384 numbers. Similar sentences end up close together in vector space.">
            <defs><marker id="v2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="10" y="60" width="180" height="46" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="100" y="88" text-anchor="middle">"A cat sits on the mat"</text>
              <rect x="10" y="140" width="180" height="46" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="100" y="168" text-anchor="middle">"Stock prices fell"</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#v2a)"><line x1="195" y1="83" x2="245" y2="115"/><line x1="195" y1="163" x2="245" y2="130"/><line x1="385" y1="123" x2="430" y2="123"/></g>
              <rect x="250" y="85" width="135" height="76" rx="12" fill="#27274e" stroke="#9d5cf6" stroke-width="2"/>
              <text x="317" y="118" text-anchor="middle" font-weight="700">Embedding</text><text x="317" y="136" text-anchor="middle" font-weight="700">model</text>
              <text x="440" y="100" font-family="monospace" font-size="11.5" fill="#fcd34d">[0.021, -0.113, 0.064, … 384 numbers]</text>
              <text x="440" y="150" font-family="monospace" font-size="11.5" fill="#93c5fd">[-0.047, 0.089, -0.012, … 384 numbers]</text>
              <rect x="440" y="170" width="310" height="70" rx="10" fill="#18183a" stroke="#4b4a78"/>
              <circle cx="490" cy="200" r="6" fill="#fbbf24"/><text x="502" y="204" font-size="11">cat on mat</text>
              <circle cx="520" cy="220" r="6" fill="#fbbf24"/><text x="532" y="224" font-size="11">kitten on rug</text>
              <circle cx="700" cy="195" r="6" fill="#60a5fa"/><text x="620" y="215" font-size="11">stock prices</text>
              <text x="595" y="188" text-anchor="middle" font-size="10.5" fill="#9b99b8">vector space (shown in 2-D)</text>
            </g>
          </svg>
          <figcaption>The same model always gives the same length of output, for any length of input. Similar meaning gives nearby vectors.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Key facts about embeddings</h3>
          <ul class="lc-list">
            <li><strong>Fixed length:</strong> a model always gives the same number of dimensions (numbers). The widgets in this course use the model <code>all-MiniLM-L6-v2</code>. It gives 384 numbers.</li>
            <li><strong>Direction shows meaning:</strong> similar texts get vectors that point in similar directions. We measure this with <em>cosine similarity</em>. 1 means the same direction. 0 means not related. Below 0 means pointing away.</li>
            <li><strong>Dimensions have no labels:</strong> the toy vectors in Lesson 1 had labels, but real ones do not. No single number means "about cats". The meaning is spread across all the numbers.</li>
            <li><strong>Compare only vectors from one model:</strong> vectors from two different models live in different spaces (Lesson 3).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Similarity playground</h3>
          <p>Type two sentences and press <strong>Compare</strong>. Your browser runs a real embedding model. It shows the cosine similarity, the angle between the two vectors, and the vectors themselves.</p>
          <div class="lcw" data-controller="similarity">
            <ul data-similarity-target="presets">
              <li data-a="A cat sits on the mat" data-b="A kitten is resting on a rug">Same meaning, new words</li>
              <li data-a="How do I cancel my plan?" data-b="How to end your subscription">No shared words</li>
              <li data-a="A cat sits on the mat" data-b="Stock prices fell sharply today">Unrelated</li>
              <li data-a="I love this movie" data-b="I do not love this movie">Negation</li>
              <li data-a="Python is a programming language" data-b="A python is a large snake">Same word, two meanings</li>
            </ul>
          </div>
          <p>The plot is correct in one way. Both vectors are drawn with length 1 at their real angle. This angle is exactly what cosine similarity measures. But the plot cannot show the other 382 dimensions.</p>
        </div>
        <div class="lc-card">
          <h3>Where embeddings do not work well</h3>
          <table class="lc-table">
            <thead><tr><th>Weakness</th><th>Try it in the playground</th></tr></thead>
            <tbody>
              <tr><td>Negation (saying "not") is weak. "love" and "do not love" share most words and the same topic</td><td>The <em>Negation</em> preset usually gets a high score</td></tr>
              <tr><td>Exact codes and rare names carry little meaning</td><td>Compare "error E-4021" with "error E-4022"</td></tr>
              <tr><td>Long texts get cut off. This model reads only about the first 256 word pieces</td><td>This is why we split documents into chunks (Lesson 17)</td></tr>
              <tr><td>The model learned mostly from English. Other languages may work less well</td><td>Try a sentence in Hindi or Tamil and its English translation</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code builds tiny 5-D toy embeddings from a table of words. It compares sentences with cosine similarity. The playground uses the same maths on 384 dimensions.</li>
            <li>Run it. Then add the word <code>"kitten"</code> to <code>WORDS</code> with a vector close to <code>"cat"</code>. See how the similarity of the two cat sentences goes up.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An embedding is a vector with a fixed length. Its <em>direction</em> holds the meaning. Close directions mean similar meaning. This is only true for vectors from the same model. It also does not work well for negation, exact codes or very long texts.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Toy embeddings: take the average of the vectors of known words (real models are much smarter).
        import numpy as np

        #          dims: [animal, rest, finance, fall, pet]
        WORDS = {
            "cat":    [0.9, 0.0, 0.0, 0.0, 0.8],
            "sits":   [0.0, 0.8, 0.0, 0.1, 0.0],
            "mat":    [0.1, 0.6, 0.0, 0.0, 0.2],
            "rug":    [0.1, 0.6, 0.0, 0.0, 0.2],
            "resting":[0.0, 0.9, 0.0, 0.0, 0.0],
            "stock":  [0.0, 0.0, 0.9, 0.2, 0.0],
            "prices": [0.0, 0.0, 0.8, 0.1, 0.0],
            "fell":   [0.0, 0.1, 0.2, 0.9, 0.0],
        }

        def embed(sentence):
            vecs = [WORDS[w] for w in sentence.lower().split() if w in WORDS]
            return np.mean(vecs, axis=0) if vecs else np.zeros(5)

        def cosine(a, b):
            return float(a @ b / (np.linalg.norm(a) * np.linalg.norm(b)))

        pairs = [
            ("a cat sits on the mat", "a kitten resting on a rug"),
            ("a cat sits on the mat", "stock prices fell"),
        ]
        for s1, s2 in pairs:
            print(f"{cosine(embed(s1), embed(s2)):.3f}  {s1!r} vs {s2!r}")

        # Try it: add "kitten": [0.85, 0.0, 0.0, 0.0, 0.9] to WORDS and run again.
      PYTHON
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Dimensions and Embedding Models</h1>
        </div>
        <p class="lc-lead">When you choose an embedding model, you fix three things for as long as your collection lives. First, the <strong>number of dimensions</strong>. Second, the <strong>quality</strong> of meaning it finds in your kind of text. Third, the <strong>vector space</strong> that every query must use. If you change the model, you must embed everything again.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Two models make vector spaces that do not fit together. Mixing them gives a similarity with no meaning.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="10" y="20" width="230" height="200" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="125" y="45" text-anchor="middle" font-weight="700" fill="#93c5fd">Model A's space</text>
              <circle cx="80" cy="110" r="6" fill="#fbbf24"/><text x="92" y="114" font-size="11">cat</text>
              <circle cx="100" cy="135" r="6" fill="#fbbf24"/><text x="112" y="139" font-size="11">kitten</text>
              <circle cx="190" cy="185" r="6" fill="#60a5fa"/><text x="150" y="205" font-size="11">stocks</text>
              <rect x="265" y="20" width="230" height="200" rx="12" fill="#1f1f44" stroke="#9d5cf6"/>
              <text x="380" y="45" text-anchor="middle" font-weight="700" fill="#c4b5fd">Model B's space</text>
              <circle cx="430" cy="90" r="6" fill="#fbbf24"/><text x="442" y="94" font-size="11">cat</text>
              <circle cx="410" cy="110" r="6" fill="#fbbf24"/><text x="350" y="114" font-size="11">kitten</text>
              <circle cx="310" cy="190" r="6" fill="#60a5fa"/><text x="322" y="194" font-size="11">stocks</text>
              <rect x="520" y="20" width="230" height="200" rx="12" fill="rgba(239,68,68,.1)" stroke="#ef4444"/>
              <text x="635" y="45" text-anchor="middle" font-weight="700" fill="#fca5a5">Mixed: A docs + B query</text>
              <text x="540" y="85">query "cat" from model B</text>
              <text x="540" y="110">vs "stocks" from model A</text>
              <text x="540" y="145" fill="#fca5a5">similarity is meaningless,</text>
              <text x="540" y="165" fill="#fca5a5">even if both have 384 numbers</text>
              <text x="380" y="243" text-anchor="middle" fill="#c4b5fd">Each model arranges meaning in its own way. Never compare vectors across models.</text>
            </g>
          </svg>
          <figcaption>Each space makes sense on its own. Comparing across them is like comparing positions from two different maps.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Some common embedding models</h3>
          <table class="lc-table">
            <thead><tr><th>Model</th><th>Dimensions</th><th>Runs</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>all-MiniLM-L6-v2</td><td>384</td><td>On your own computer, even in a browser</td><td>Small and fast. The widgets and Vector Lab in this course use it</td></tr>
              <tr><td>BGE (small / base / large)</td><td>384 / 768 / 1024</td><td>On your own computer</td><td>A family of open-source models. Very good at finding the right results</td></tr>
              <tr><td>OpenAI text-embedding-3-small / -large</td><td>1536 / 3072</td><td>API</td><td>You can ask for fewer dimensions to save space</td></tr>
              <tr><td>Google gemini-embedding-001</td><td>3072 (768 and 1536 also available)</td><td>API</td><td>Works with many languages</td></tr>
            </tbody>
          </table>
          <p>The list of models changes fast. Do not trust a leaderboard alone. Test the models on <strong>your own queries and documents</strong> (Lesson 16).</p>
        </div>
        <div class="lc-card">
          <h3>What dimensions cost</h3>
          <p>Each dimension is usually stored as a 4-byte float (a decimal number). The memory for the raw vectors is:</p>
          <pre class="lc-code">
        memory ≈ number_of_vectors × dimensions × 4 bytes

        1,000,000 × 384  × 4 ≈ 1.5 GB
        1,000,000 × 1536 × 4 ≈ 6.1 GB
        1,000,000 × 3072 × 4 ≈ 12.3 GB      (plus the index on top)</pre>
          <p>More dimensions <em>can</em> hold more small details of meaning. But they cost more memory, disk and search time. A smaller model that works well on your data is often the better choice. Quantisation (Lesson 15) can make these numbers much smaller.</p>
        </div>
        <div class="lc-card">
          <h3>Rules for a healthy collection</h3>
          <ul class="lc-list">
            <li><strong>Use one model per collection</strong> (or per named vector). Write the model name and version in your config.</li>
            <li><strong>Prepare documents and queries the same way.</strong> Some models expect prefixes such as <code>query:</code> and <code>passage:</code>. Read the model card to check.</li>
            <li><strong>Stay inside the input limit.</strong> The model cuts off text past its maximum length, and it does not warn you. So split long documents into chunks.</li>
            <li><strong>A new model means you must embed everything again.</strong> Then you switch over safely (Lesson 11).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: safe or broken?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Will search work correctly in each case?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Works"></div>
              <div data-sorter-target="bucket" data-bucket="bad" data-label="Broken"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Documents and queries use the same model, so you can compare the vectors.">Docs and queries both embedded with bge-small</li>
              <li data-bucket="bad" data-why="The same length does not mean the same space. The numbers mean different things.">Docs with MiniLM (384), queries with a different 384-d model</li>
              <li data-bucket="bad" data-why="A 1536-d vector cannot go into a 384-d collection. Qdrant rejects it.">Upserting 1536-d vectors into a 384-d collection</li>
              <li data-bucket="ok" data-why="You embed everything again with the new model, so all vectors are in one space.">New model: re-embed all docs into a new collection</li>
              <li data-bucket="bad" data-why="The model cuts off most of the document before embedding it, so most of the meaning is lost.">Embedding a 40-page PDF as one text with a 256-token model</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Part 1 is a memory calculator. Change <code>N</code> and <code>DIMS</code> to match a project you have in mind.</li>
            <li>Part 2 pretends to be a second model. It does this by rotating the vector space. The vectors keep their length, but similarities across the two models become random noise. See how "cat" vs "kitten" is no longer the best match.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The embedding model decides the space. Use one model for documents and queries. Plan memory as vectors × dimensions × 4 bytes. If you change the model, plan to embed all your data again.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Part 1: how much memory do the raw vectors need?
        N = 1_000_000
        for DIMS in (384, 768, 1536, 3072):
            gb = N * DIMS * 4 / 1e9
            print(f"{N:,} vectors x {DIMS:>4} dims x 4 bytes = {gb:5.1f} GB")

        # Part 2: two "models" = two different spaces (we fake this with a random rotation)
        rng = np.random.default_rng(0)
        model_a = {
            "cat":    np.array([0.9, 0.1, 0.0, 0.1]),
            "kitten": np.array([0.85, 0.2, 0.0, 0.05]),
            "stocks": np.array([0.0, 0.1, 0.95, 0.2]),
        }
        rotation, _ = np.linalg.qr(rng.normal(size=(4, 4)))   # meaning is arranged in a different way
        model_b = {w: rotation @ v for w, v in model_a.items()}

        cos = lambda a, b: float(a @ b / (np.linalg.norm(a) * np.linalg.norm(b)))
        query = model_b["cat"]  # the query is embedded with model B
        print("\nSame model (B vs B):")
        for w in model_b:
            print(f"  cat vs {w:<7} {cos(query, model_b[w]):+.3f}")
        print("Mixed models (B query vs A docs):")
        for w in model_a:
            print(f"  cat vs {w:<7} {cos(query, model_a[w]):+.3f}")
      PYTHON
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Similarity Metrics: Cosine, Dot Product, Euclidean</h1>
        </div>
        <p class="lc-lead">What does "nearest" mean? We need a clear rule. Vector databases give you a few <strong>distance metrics</strong> (ways to measure how close two vectors are). Each one looks at something different. It can be the <em>angle</em> between vectors, their <em>length</em>, or the straight-line <em>gap</em> between them. Drag the vectors below and you will see the difference clearly.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Three metrics. Cosine measures the angle. Dot product uses angle and length. Euclidean measures the straight-line distance.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <g transform="translate(20,20)">
                <rect width="230" height="200" rx="12" fill="#1f1f44" stroke="#9d5cf6"/>
                <text x="115" y="26" text-anchor="middle" font-weight="700" fill="#c4b5fd">Cosine</text>
                <line x1="40" y1="160" x2="190" y2="120" stroke="#fbbf24" stroke-width="3"/><line x1="40" y1="160" x2="140" y2="60" stroke="#60a5fa" stroke-width="3"/>
                <path d="M85 148 A 45 45 0 0 0 72 128" fill="none" stroke="#c4b5fd" stroke-width="2"/><text x="92" y="136" fill="#c4b5fd" font-size="11">θ</text>
                <text x="115" y="188" text-anchor="middle" fill="#9b99b8" font-size="11.5">cos θ · angle only, −1 … 1</text>
              </g>
              <g transform="translate(265,20)">
                <rect width="230" height="200" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="115" y="26" text-anchor="middle" font-weight="700" fill="#fcd34d">Dot product</text>
                <line x1="40" y1="160" x2="190" y2="120" stroke="#fbbf24" stroke-width="3"/><line x1="40" y1="160" x2="140" y2="60" stroke="#60a5fa" stroke-width="3"/>
                <line x1="140" y1="60" x2="150" y2="136" stroke="#9b99b8" stroke-dasharray="3 3"/>
                <text x="115" y="188" text-anchor="middle" fill="#9b99b8" font-size="11.5">|A|·|B|·cos θ · angle and length</text>
              </g>
              <g transform="translate(510,20)">
                <rect width="230" height="200" rx="12" fill="#1f1f44" stroke="#ef4444"/>
                <text x="115" y="26" text-anchor="middle" font-weight="700" fill="#fca5a5">Euclidean</text>
                <line x1="40" y1="160" x2="190" y2="120" stroke="#fbbf24" stroke-width="3"/><line x1="40" y1="160" x2="140" y2="60" stroke="#60a5fa" stroke-width="3"/>
                <line x1="190" y1="120" x2="140" y2="60" stroke="#ef4444" stroke-width="2.5" stroke-dasharray="5 3"/>
                <text x="115" y="188" text-anchor="middle" fill="#9b99b8" font-size="11.5">gap between tips · lower = closer</text>
              </g>
            </g>
          </svg>
          <figcaption>The same two vectors, measured in three different ways.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The formulas</h3>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Formula</th><th>Range</th><th>Closer means</th><th>Qdrant name</th></tr></thead>
            <tbody>
              <tr><td>Cosine similarity</td><td><code>A·B / (|A| |B|)</code></td><td>−1 to 1</td><td>higher</td><td><code>Cosine</code></td></tr>
              <tr><td>Dot product</td><td><code>Σ aᵢ·bᵢ</code></td><td>any number</td><td>higher</td><td><code>Dot</code></td></tr>
              <tr><td>Euclidean distance</td><td><code>√Σ (aᵢ − bᵢ)²</code></td><td>0 and up</td><td>lower</td><td><code>Euclid</code></td></tr>
              <tr><td>Manhattan distance</td><td><code>Σ |aᵢ − bᵢ|</code></td><td>0 and up</td><td>lower</td><td><code>Manhattan</code></td></tr>
            </tbody>
          </table>
          <p><code>|A|</code> is the length of the vector (also called its <em>norm</em>): <code>√Σ aᵢ²</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Drag the vectors</h3>
          <div class="lcw" data-controller="vector-plot"></div>
          <p>Things to try: press <em>Same direction, different length</em>. Cosine says 1.00 (the same). Dot product and Euclidean do not agree. Then tick <strong>Normalise both</strong>. Now all three agree that the vectors are the same.</p>
        </div>
        <div class="lc-card">
          <h3>When to use each one</h3>
          <ul class="lc-list">
            <li><strong>Cosine</strong>: the default for text embeddings. Only the direction (the meaning) matters, not how "long" the vector is.</li>
            <li><strong>Dot product</strong>: use it when the length carries information. For example, in some recommendation models a longer vector means a more popular item. It is also the fastest choice when vectors are already normalised (length 1).</li>
            <li><strong>Euclidean</strong>: use it when the exact position matters, such as image features or sensor readings. Also use it when the model was trained with it.</li>
          </ul>
          <p>The most important rule is this: <strong>use the metric the embedding model was trained for</strong>. The model card usually tells you.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which metric changes?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Vector B changes as described. Which metrics change their value?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="len" data-label="Changes dot and Euclidean, NOT cosine"></div>
              <div data-sorter-target="bucket" data-bucket="all" data-label="Changes all three"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="len" data-why="Making it longer keeps the direction, so the angle (cosine) stays the same.">B is doubled in length</li>
              <li data-bucket="all" data-why="Rotating B changes the angle. This changes every metric.">B is rotated 45° away from A</li>
              <li data-bucket="len" data-why="Making it half as long keeps the direction, so cosine does not change.">B is shrunk to half its length</li>
              <li data-bucket="all" data-why="Flipping the direction changes the angle to 180°.">B is flipped to point the opposite way</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code uses NumPy to calculate all four metrics for three pairs of vectors.</li>
            <li>Look at the "same direction" pair. Cosine is 1.0, but the Euclidean distance is not 0.</li>
            <li>Add your own pair. Guess all four values <em>before</em> you run it.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Cosine looks only at the angle. Dot product looks at the angle <em>and</em> the length. Euclidean measures the gap between the tips. Choose the one your embedding model was trained with. For most text models, this is cosine.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        def metrics(a, b):
            a, b = np.array(a, float), np.array(b, float)
            return {
                "cosine":    a @ b / (np.linalg.norm(a) * np.linalg.norm(b)),
                "dot":       a @ b,
                "euclidean": np.linalg.norm(a - b),
                "manhattan": np.abs(a - b).sum(),
            }

        pairs = {
            "same direction": ([1, 2], [2, 4]),
            "perpendicular":  ([3, 0], [0, 3]),
            "opposite":       ([1, 1], [-1, -1]),
        }

        for name, (a, b) in pairs.items():
            m = metrics(a, b)
            print(f"{name:<15}" + "  ".join(f"{k}={v:+.3f}" for k, v in m.items()))

        # Try it: add "short vs long": ([1, 1], [4, 4.5]) and guess the values first.
      PYTHON
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Normalisation and Choosing a Metric</h1>
        </div>
        <p class="lc-lead">Here is a surprise that makes things much easier. Suppose every vector has length 1. Then cosine similarity, dot product and Euclidean distance put the search results in <strong>exactly the same order</strong>. Many embedding models already give normalised vectors (vectors with length 1). Also, Qdrant normalises vectors by itself when a collection uses the Cosine metric.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Normalising scales every vector onto the unit circle. After that, dot product equals cosine, and Euclidean distance depends only on cosine.">
            <defs><marker id="v5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <g transform="translate(120,125)">
                <line x1="0" y1="0" x2="95" y2="-40" stroke="#fbbf24" stroke-width="3"/><line x1="0" y1="0" x2="30" y2="-75" stroke="#60a5fa" stroke-width="3"/><line x1="0" y1="0" x2="-45" y2="-20" stroke="#34d399" stroke-width="3"/>
                <text x="0" y="100" text-anchor="middle" fill="#9b99b8">raw vectors: different lengths</text>
              </g>
              <line x1="260" y1="115" x2="330" y2="115" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#v5a)"/><text x="295" y="105" text-anchor="middle" font-size="11" fill="#9b99b8">v / |v|</text>
              <g transform="translate(450,125)">
                <circle r="60" fill="none" stroke="#6b6988" stroke-dasharray="4 4"/>
                <line x1="0" y1="0" x2="55" y2="-23" stroke="#fbbf24" stroke-width="3"/><line x1="0" y1="0" x2="22" y2="-56" stroke="#60a5fa" stroke-width="3"/><line x1="0" y1="0" x2="-55" y2="-24" stroke="#34d399" stroke-width="3"/>
                <text x="0" y="100" text-anchor="middle" fill="#9b99b8">unit vectors: length 1</text>
              </g>
              <rect x="560" y="45" width="190" height="130" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="655" y="72" text-anchor="middle" font-weight="700" fill="#6ee7b7">When |A| = |B| = 1</text>
              <text x="575" y="100">dot = cosine</text>
              <text x="575" y="125">euclid² = 2 − 2·cosine</text>
              <text x="575" y="155" fill="#9b99b8" font-size="11.5">→ same ranking for all</text>
            </g>
          </svg>
          <figcaption>Normalising removes the length. After that, the three metrics give different score numbers, but the same order.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why the rankings match</h3>
          <p>For unit vectors (length 1), <code>|A − B|² = |A|² + |B|² − 2 A·B = 2 − 2 A·B</code>. So a <em>higher</em> dot product always means a <em>lower</em> Euclidean distance. Also, the dot product equals the cosine. You get the same neighbours in the same order. Only the score numbers are different.</p>
        </div>
        <div class="lc-card">
          <h3>Compare settings side by side</h3>
          <p>Your browser embeds this corpus (the set of texts). Run the same query with two different metrics and top-k values. Then untick <strong>Normalise vectors</strong>. Now dot product prefers vectors that are just <em>longer</em>, and the two lists become different. With this model, the one-word text "Pets." has one of the longest raw vectors. So it moves up the dot-product list. Length is not meaning.</p>
          <div class="lcw" data-controller="search-compare" data-search-compare-query-value="happy pets at home" data-search-compare-left-value="cosine" data-search-compare-right-value="dot">
            <ol data-search-compare-target="corpus">
              <li>Cats purr when they feel safe and relaxed.</li>
              <li>My dog wags its tail whenever I come home.</li>
              <li>The hamster runs on its wheel all night.</li>
              <li>Virat Kohli scored a century in the test match.</li>
              <li>The bowler took three wickets in the final over.</li>
              <li>Add turmeric and cumin to the hot oil.</li>
              <li>Knead the dough for ten minutes until smooth.</li>
              <li>Python lists can grow and shrink as you add items.</li>
              <li>The central bank raised interest rates again.</li>
              <li>Our puppy finally learned to sit and stay!</li>
              <li>Pets.</li>
              <li>A very long, detailed and enthusiastic description of how wonderful, loving, cheerful and joyful our family's many pets, including cats, dogs and a parrot, are every single day at home.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Choosing a metric: a checklist</h3>
          <ol class="lc-list">
            <li><strong>Read the model card.</strong> Use the metric the model was trained with.</li>
            <li><strong>Text embeddings and no advice on the card?</strong> Choose <code>Cosine</code>. It is the safe default.</li>
            <li><strong>Vectors already normalised?</strong> <code>Dot</code> gives the same order as cosine and skips the normalising step.</li>
            <li><strong>Does the length mean something</strong> (popularity, confidence)? Then use <code>Dot</code> on raw vectors, on purpose.</li>
            <li>You set the metric when you create a Qdrant collection. To change it, you need a new collection.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code makes 1,000 random vectors and a query. It ranks them with all three metrics. First it uses raw vectors, then normalised ones.</li>
            <li>Raw: the top-5 lists are different. Normalised: all three lists are the same.</li>
            <li>It also checks the rule <code>euclid² = 2 − 2·cosine</code> with real numbers.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> If you normalise, the metric no longer changes <em>which</em> results you get. For text, choose Cosine (or Dot on normalised vectors). If the model card says something else, follow the model card.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        rng = np.random.default_rng(42)
        docs = rng.normal(size=(1000, 64)) * rng.uniform(0.2, 3.0, size=(1000, 1))  # many different lengths
        query = rng.normal(size=64)

        def top5(docs, q, metric):
            if metric == "cosine":
                scores = docs @ q / (np.linalg.norm(docs, axis=1) * np.linalg.norm(q))
                return list(np.argsort(-scores)[:5])
            if metric == "dot":
                return list(np.argsort(-(docs @ q))[:5])
            if metric == "euclid":
                return list(np.argsort(np.linalg.norm(docs - q, axis=1))[:5])

        for label, D, q in [("RAW", docs, query),
                            ("NORMALISED", docs / np.linalg.norm(docs, axis=1, keepdims=True),
                             query / np.linalg.norm(query))]:
            print(label)
            for m in ("cosine", "dot", "euclid"):
                print(f"  {m:<7}", [int(i) for i in top5(D, q, m)])

        a, b = rng.normal(size=8), rng.normal(size=8)
        a, b = a / np.linalg.norm(a), b / np.linalg.norm(b)
        print(f"\nunit vectors: euclid^2 = {np.linalg.norm(a - b)**2:.6f}, 2 - 2*cos = {2 - 2 * a @ b:.6f}")
      PYTHON
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Meet Qdrant: Collections, Points and Payloads</h1>
        </div>
        <p class="lc-lead">Qdrant (say "quadrant") is an open-source vector database. It is written in Rust. Its data model is small. A server holds <strong>collections</strong>. A collection holds <strong>points</strong>. Each point has an <strong>ID</strong>, one or more <strong>vectors</strong> and a JSON <strong>payload</strong> (extra data). Learn these four words and the whole API will make sense.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A Qdrant server holds collections. Each collection has a fixed vector size and distance. It holds points, and each point has an id, a vector and a payload.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="10" y="10" width="740" height="260" rx="14" fill="#18183a" stroke="#4b4a78"/>
              <text x="30" y="36" font-weight="700" fill="#c4b5fd">Qdrant server  ·  REST :6333  ·  gRPC :6334</text>
              <rect x="30" y="52" width="470" height="200" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="48" y="76" font-weight="700" fill="#f9a8d4">Collection "help_articles"</text>
              <text x="48" y="96" fill="#9b99b8" font-size="11.5">size: 384 · distance: Cosine  (fixed when created)</text>
              <rect x="48" y="110" width="435" height="60" rx="8" fill="#27274e"/>
              <text x="62" y="132">Point  <tspan fill="#9b99b8">id:</tspan> 17</text>
              <text x="62" y="152" font-family="monospace" font-size="11" fill="#fcd34d">vector: [0.021, -0.113, …384]</text>
              <text x="290" y="132" font-family="monospace" font-size="11" fill="#6ee7b7">payload: {"title": "End your</text>
              <text x="290" y="148" font-family="monospace" font-size="11" fill="#6ee7b7">subscription", "lang": "en"}</text>
              <rect x="48" y="178" width="435" height="60" rx="8" fill="#27274e"/>
              <text x="62" y="200">Point  <tspan fill="#9b99b8">id:</tspan> "4f8c…-uuid"</text>
              <text x="62" y="220" font-family="monospace" font-size="11" fill="#fcd34d">vector: [-0.047, 0.089, …384]</text>
              <text x="290" y="208" font-family="monospace" font-size="11" fill="#6ee7b7">payload: {"year": 2025, …}</text>
              <rect x="520" y="52" width="210" height="95" rx="12" fill="#1f1f44" stroke="#9d5cf6"/>
              <text x="535" y="76" font-weight="700" fill="#c4b5fd">Collection "products"</text>
              <text x="535" y="96" fill="#9b99b8" font-size="11.5">size: 768 · Dot</text>
              <text x="535" y="120" fill="#9b99b8" font-size="11.5">each collection has its</text>
              <text x="535" y="136" fill="#9b99b8" font-size="11.5">own size and metric</text>
              <rect x="520" y="160" width="210" height="92" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="535" y="184" font-weight="700" fill="#93c5fd">Dashboard</text>
              <text x="535" y="206" fill="#9b99b8" font-size="11.5">localhost:6333/dashboard</text>
              <text x="535" y="226" fill="#9b99b8" font-size="11.5">browse points, run queries</text>
            </g>
          </svg>
          <figcaption>Server → collections → points. Each point is an ID, a vector and a payload.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four building blocks</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>What it is</th><th>Same idea in a normal SQL database</th></tr></thead>
            <tbody>
              <tr><td>Collection</td><td>A set of points with a name. It has a fixed vector size and distance metric</td><td>A table</td></tr>
              <tr><td>Point</td><td>One item: ID + vector(s) + payload</td><td>A row</td></tr>
              <tr><td>ID</td><td>A whole number (0 or more) or a UUID string. It must be unique in the collection</td><td>Primary key</td></tr>
              <tr><td>Payload</td><td>Any JSON: title, text, language, dates, tenant ID…</td><td>The other columns</td></tr>
            </tbody>
          </table>
          <p>A collection can also have <strong>named vectors</strong>. This means each point has several vectors, such as <code>"text"</code> (384-d) and <code>"image"</code> (512-d). Each one has its own size and metric.</p>
        </div>
        <div class="lc-card">
          <h3>Running Qdrant</h3>
          <pre class="lc-code">
        # Local, with Docker (data kept in ./qdrant_storage)
        docker run -p 6333:6333 -p 6334:6334 \
          -v "$(pwd)/qdrant_storage:/qdrant/storage" qdrant/qdrant

        # Python client
        pip install qdrant-client

        from qdrant_client import QdrantClient
        client = QdrantClient(url="http://localhost:6333")
        print(client.get_collections())</pre>
          <p>Other options: run a single program file without Docker, or use <strong>Qdrant Cloud</strong>, which has a free plan. There are official clients for Python, JavaScript/TypeScript, Rust, Go, Java and .NET. Everything also works with plain REST. You will see this in the next lesson.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: where does it go?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">You are building a help-centre search. Where does each piece of data go?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="vec" data-label="Vector"></div>
              <div data-sorter-target="bucket" data-bucket="pay" data-label="Payload"></div>
              <div data-sorter-target="bucket" data-bucket="col" data-label="Collection settings"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="vec" data-why="Similarity search compares the embeddings.">The 384 numbers from the embedding model</li>
              <li data-bucket="pay" data-why="Extra data that you filter on goes in the payload.">The article's language: "en"</li>
              <li data-bucket="pay" data-why="You need the text or URL to show results. Store it in the payload.">The article URL to show in results</li>
              <li data-bucket="col" data-why="Each collection has one fixed size and metric.">Distance metric: Cosine</li>
              <li data-bucket="col" data-why="Every vector in a collection has exactly this length.">Vector size: 384</li>
              <li data-bucket="pay" data-why="Dates are extra data. You use them in filters such as 'newer than 2025'.">Last-updated date</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code is <code>MiniQdrant</code>. It is a copy of Qdrant's data model in 40 lines, kept in memory. It shows how collections, points and payloads fit together, without a server.</li>
            <li>Run it. Then add a third point with any payload you like, and query again.</li>
            <li>Try to upsert a vector of the wrong size. Like the real Qdrant, it refuses.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A collection fixes the vector size and metric. A point has an ID, the vector and a JSON payload. Search compares the vectors. You use the payload to filter results and to show them to users.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # MiniQdrant: a copy of Qdrant's data model, kept in memory (only for learning).
        import numpy as np

        class MiniQdrant:
            def __init__(self):
                self.collections = {}

            def create_collection(self, name, size, distance="Cosine"):
                self.collections[name] = {"size": size, "distance": distance, "points": {}}

            def upsert(self, name, points):
                col = self.collections[name]
                for p in points:
                    if len(p["vector"]) != col["size"]:
                        raise ValueError(f"wrong vector size: expected {col['size']}, got {len(p['vector'])}")
                    col["points"][p["id"]] = p          # same id -> the old point is replaced ("upsert")

            def query(self, name, vector, limit=3):
                col, q = self.collections[name], np.array(vector, float)
                def score(v):
                    v = np.array(v, float)
                    if col["distance"] == "Cosine":
                        return float(v @ q / (np.linalg.norm(v) * np.linalg.norm(q)))
                    if col["distance"] == "Dot":
                        return float(v @ q)
                    return float(np.linalg.norm(v - q))  # Euclid
                hits = [(score(p["vector"]), p) for p in col["points"].values()]
                hits.sort(key=lambda h: h[0], reverse=col["distance"] != "Euclid")
                return [(round(s, 3), p["id"], p["payload"]) for s, p in hits[:limit]]

        db = MiniQdrant()
        db.create_collection("help_articles", size=3, distance="Cosine")
        db.upsert("help_articles", [
            {"id": 1, "vector": [0.1, 0.9, 0.0], "payload": {"title": "End your subscription", "lang": "en"}},
            {"id": 2, "vector": [0.0, 0.1, 0.9], "payload": {"title": "Reset your password", "lang": "en"}},
        ])
        for hit in db.query("help_articles", [0.2, 0.8, 0.1]):
            print(hit)

        # Try it: upsert {"id": 3, "vector": [1, 2], "payload": {}} and read the error.
      PYTHON
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Creating Collections and Adding Points</h1>
        </div>
        <p class="lc-lead">You need two calls to put data into Qdrant. First, <strong>create a collection</strong> with a size and metric that match your embedding model. Then <strong>upsert points</strong>. "Upsert" means: insert the point, or replace it if the ID already exists. Because of this, you can safely run an import again.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 200" role="img" aria-label="Loading data: documents, embedding model, batches of points, upsert into a collection.">
            <defs><marker id="v8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#v8a)"><line x1="150" y1="80" x2="180" y2="80"/><line x1="330" y1="80" x2="360" y2="80"/><line x1="510" y1="80" x2="540" y2="80"/></g>
              <rect x="10" y="45" width="140" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="80" y="75" font-weight="700">Documents</text><text x="80" y="95" fill="#9b99b8" font-size="11">text + metadata</text>
              <rect x="185" y="45" width="145" height="70" rx="10" fill="#1f1f44" stroke="#9d5cf6"/><text x="257" y="75" font-weight="700">Embed</text><text x="257" y="95" fill="#9b99b8" font-size="11">same model as queries</text>
              <rect x="365" y="45" width="145" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="437" y="75" font-weight="700">Batch points</text><text x="437" y="95" fill="#9b99b8" font-size="11">id · vector · payload</text>
              <rect x="545" y="45" width="205" height="70" rx="10" fill="#1f1f44" stroke="#ec4899"/><text x="647" y="75" font-weight="700">PUT …/points (upsert)</text><text x="647" y="95" fill="#9b99b8" font-size="11">size + metric must match</text>
              <text x="380" y="160" fill="#c4b5fd">Create the collection once. Upsert as often as the data changes.</text>
            </g>
          </svg>
          <figcaption>The steps for loading data (the ingestion pipeline).</figcaption>
        </figure>
        <div class="lc-card">
          <h3>With the REST API</h3>
          <pre class="lc-code">
        # 1. Create a collection (size and distance must match your embedding model)
        PUT /collections/help_articles
        { "vectors": { "size": 384, "distance": "Cosine" } }

        # 2. Upsert points (wait=true: respond once the data is stored)
        PUT /collections/help_articles/points?wait=true
        { "points": [
            { "id": 17, "vector": [0.021, -0.113, ...],
              "payload": { "title": "End your subscription", "lang": "en" } }
        ] }</pre>
        </div>
        <div class="lc-card">
          <h3>With the Python client</h3>
          <pre class="lc-code">
        from qdrant_client import QdrantClient, models
        from sentence_transformers import SentenceTransformer

        model = SentenceTransformer("all-MiniLM-L6-v2")        # 384 dimensions
        client = QdrantClient(url="http://localhost:6333")

        client.create_collection(
            collection_name="help_articles",
            vectors_config=models.VectorParams(size=384, distance=models.Distance.COSINE),
        )

        articles = [{"id": 17, "title": "End your subscription", "lang": "en"}, ...]
        vectors = model.encode([a["title"] for a in articles])

        client.upsert(
            collection_name="help_articles",
            points=[models.PointStruct(id=a["id"], vector=v.tolist(), payload=a)
                    for a, v in zip(articles, vectors)],
        )</pre>
        </div>
        <div class="lc-card">
          <h3>Good habits for loading data</h3>
          <ul class="lc-list">
            <li><strong>Upsert in batches</strong> (for example 100–1,000 points per request). Do not send one request per point.</li>
            <li><strong>Use stable IDs</strong> that come from your own data. For example, use the article's database ID, or a UUID made from its URL. Then, when you run the import again, it updates points and does not make copies.</li>
            <li><strong>Store what you need to show</strong> (title, URL, a short piece of text) in the payload. Then a search does not need a second database lookup.</li>
            <li><strong>Write down the model name</strong> in your config or payload. Then you know which model made each vector.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: order the setup</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for loading a new collection in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Choose the embedding model and note its dimensions and metric</li>
              <li data-order="2">Create the collection with that size and distance</li>
              <li data-order="3">Embed the documents with the model</li>
              <li data-order="4">Build points with stable IDs, vectors and payloads</li>
              <li data-order="5">Upsert the points in batches</li>
              <li data-order="6">Run a test query, embedded with the same model</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code imports articles into <code>MiniQdrant</code> in batches. It makes each ID from the article URL with <code>uuid5</code>. So when you run the import again, it does not create copies.</li>
            <li>Run it. The second import updates the points that already exist, and the count stays the same.</li>
            <li>Change <code>make_id</code> to use <code>uuid4()</code> (random) and run again. Now every import makes a copy of the data.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Create the collection to match your model. Then upsert in batches with stable IDs. Upsert is idempotent: if you run the same import twice, you still have one copy of each point.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Batch upserts with stable IDs: running an import again updates points, it does not copy them.
        import uuid

        collection = {}   # id -> point  (this stands in for a Qdrant collection)

        def make_id(url):
            return str(uuid.uuid5(uuid.NAMESPACE_URL, url))   # same URL -> same id, every time

        def fake_embed(text):
            return [len(text) % 7 / 7, text.count("e") / 10, 0.5]   # stands in for a real model

        def upsert(points):
            for p in points:
                collection[p["id"]] = p

        def import_articles(articles, batch_size=2):
            points = [{"id": make_id(a["url"]), "vector": fake_embed(a["title"]), "payload": a}
                      for a in articles]
            for i in range(0, len(points), batch_size):
                upsert(points[i:i + batch_size])
                print(f"  upserted batch {i // batch_size + 1} ({len(points[i:i + batch_size])} points)")

        articles = [
            {"url": "https://help.example/cancel", "title": "End your subscription"},
            {"url": "https://help.example/password", "title": "Reset your password"},
            {"url": "https://help.example/card", "title": "Update your card details"},
        ]
        print("first import"); import_articles(articles)
        articles[0]["title"] = "How to end your subscription"   # someone edited the article
        print("second import"); import_articles(articles)
        print("points stored:", len(collection))
        print("title now:", collection[make_id("https://help.example/cancel")]["payload"]["title"])
      PYTHON
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Searching: Top-k, Scores and Thresholds</h1>
        </div>
        <p class="lc-lead">A vector search always returns the <strong>k nearest</strong> points. It does this even when none of them is really useful. Nearest does not mean good. In this lesson you learn how to choose k and how to read the scores. You also learn how a score threshold (a minimum score) stops weak matches from reaching your users.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Results sorted by score. Top-k cuts the list after k results. A score threshold cuts it at a minimum score.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <text x="20" y="30" fill="#c4b5fd" font-weight="700">query: "how do I stop my subscription"</text>
              <g>
                <rect x="20" y="45" width="560" height="28" rx="5" fill="#1f1f44"/><rect x="20" y="45" width="460" height="28" rx="5" fill="rgba(16,185,129,.35)"/><text x="30" y="64">0.82  End your subscription</text>
                <rect x="20" y="78" width="560" height="28" rx="5" fill="#1f1f44"/><rect x="20" y="78" width="370" height="28" rx="5" fill="rgba(16,185,129,.35)"/><text x="30" y="97">0.66  Pause your plan</text>
                <rect x="20" y="111" width="560" height="28" rx="5" fill="#1f1f44"/><rect x="20" y="111" width="280" height="28" rx="5" fill="rgba(245,158,11,.3)"/><text x="30" y="130">0.50  Plan prices</text>
                <rect x="20" y="144" width="560" height="28" rx="5" fill="#1f1f44"/><rect x="20" y="144" width="140" height="28" rx="5" fill="rgba(239,68,68,.3)"/><text x="30" y="163">0.25  Reset your password</text>
                <rect x="20" y="177" width="560" height="28" rx="5" fill="#1f1f44"/><rect x="20" y="177" width="90" height="28" rx="5" fill="rgba(239,68,68,.3)"/><text x="30" y="196">0.16  Office opening hours</text>
              </g>
              <line x1="15" y1="141" x2="600" y2="141" stroke="#9d5cf6" stroke-width="2" stroke-dasharray="6 4"/>
              <text x="610" y="145" fill="#c4b5fd">top-k = 3</text>
              <line x1="328" y1="40" x2="328" y2="215" stroke="#f59e0b" stroke-width="2"/>
              <text x="336" y="232" fill="#fcd34d">score_threshold = 0.55 → only 2 results</text>
            </g>
          </svg>
          <figcaption>top-k limits how many results you get. A threshold limits how weak they can be.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The query</h3>
          <pre class="lc-code">
        # REST
        POST /collections/help_articles/points/query
        { "query": [0.018, -0.094, ...], "limit": 3, "with_payload": true,
          "score_threshold": 0.55 }

        # Python
        hits = client.query_points(
            collection_name="help_articles",
            query=model.encode("how do I stop my subscription").tolist(),
            limit=3,
            with_payload=True,
            score_threshold=0.55,
        ).points
        for h in hits:
            print(round(h.score, 3), h.payload["title"])</pre>
          <p>Each hit (result) has an <code>id</code>, a <code>score</code> and, if you ask for it, the <code>payload</code>. For Cosine and Dot, a higher score means closer. For Euclid, the score is a distance, so lower means closer. There, the threshold works as a maximum distance.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing k and a threshold</h3>
          <ul class="lc-list">
            <li><strong>Search box:</strong> k is about 5–20 results, for the user to look through.</li>
            <li><strong>RAG:</strong> k is about 3–10 chunks. This gives the model enough context, but not too much (Lesson 18).</li>
            <li><strong>Scores depend on the model.</strong> A good match might score 0.8 with one model and 0.5 with another. To choose a threshold, look at the scores for real queries, both good ones and bad ones.</li>
            <li><strong>Plan for "no good results".</strong> An empty result after a threshold is an honest answer. It is better to show "no matching articles" than an article that does not help.</li>
            <li><strong>Pages of results:</strong> use <code>offset</code> with <code>limit</code> to get "page 2".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Compare top-k settings</h3>
          <p>This is the same kind of corpus as before. Set both sides to Cosine. Then give one side top-k 1 and the other side 5. See how fast the extra results stop being useful.</p>
          <div class="lcw" data-controller="search-compare" data-search-compare-query-value="cooking with spices" data-search-compare-left-value="cosine" data-search-compare-right-value="cosine">
            <ol data-search-compare-target="corpus">
              <li>Add turmeric and cumin to the hot oil.</li>
              <li>Roast the cumin seeds before grinding them.</li>
              <li>Knead the dough for ten minutes until smooth.</li>
              <li>Cats purr when they feel safe and relaxed.</li>
              <li>My dog wags its tail whenever I come home.</li>
              <li>Virat Kohli scored a century in the test match.</li>
              <li>Python lists can grow and shrink as you add items.</li>
              <li>The central bank raised interest rates again.</li>
              <li>Store spices in airtight jars away from sunlight.</li>
              <li>The train to Los Angeles leaves at 6 a.m.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code has scores for good and bad queries. It tries several thresholds. For each one, it counts how many good answers it keeps and how many bad ones it lets through.</li>
            <li>Choose the threshold that you think gives the best balance. There is no perfect value. You choose a trade-off on purpose.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Vector search always returns something. Choose k for the task. Read scores with your model in mind. Use a score threshold, so that "nothing useful found" can be an answer.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Choose a score threshold from real examples (all scores come from one embedding model).

        # (score of the top result, was it really useful?)
        examples = [
            (0.82, True), (0.74, True), (0.69, True), (0.61, True), (0.57, True), (0.52, True),
            (0.58, False), (0.49, False), (0.44, False), (0.38, False), (0.31, False), (0.22, False),
        ]

        print("threshold  good kept  bad let through")
        for t in [0.3, 0.4, 0.5, 0.55, 0.6, 0.7]:
            good = sum(1 for s, ok in examples if ok and s >= t)
            bad = sum(1 for s, ok in examples if not ok and s >= t)
            total_good = sum(ok for _, ok in examples)
            print(f"   {t:.2f}      {good}/{total_good}          {bad}")

        # Try it: which threshold would you use? Add more examples from "your" data and check again.
      PYTHON
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Filtering with Payloads</h1>
        </div>
        <p class="lc-lead">Real searches have conditions, such as "only English articles", "only this customer's documents" or "published after 2025". Qdrant uses payload <strong>filters during the vector search</strong>. So you get the k nearest points that <em>also</em> match the filter. You do not get k nearest points with some of them removed afterwards.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Filtering after the search takes the top 3 and then removes results that do not match, so too few are left. Filtering during the search returns 3 matching results.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="10" y="15" width="360" height="220" rx="12" fill="#1f1f44" stroke="#ef4444"/>
              <text x="190" y="40" text-anchor="middle" font-weight="700" fill="#fca5a5">Top-3, then filter lang = "hi"</text>
              <text x="30" y="72">1. Cancel plan (en)  <tspan fill="#fca5a5">✗ removed</tspan></text>
              <text x="30" y="97">2. प्लान रद्द करें (hi)  <tspan fill="#6ee7b7">✓</tspan></text>
              <text x="30" y="122">3. Pause plan (en)  <tspan fill="#fca5a5">✗ removed</tspan></text>
              <text x="30" y="165" fill="#fca5a5">only 1 result, although more</text>
              <text x="30" y="185" fill="#fca5a5">Hindi articles exist further down</text>
              <rect x="390" y="15" width="360" height="220" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="570" y="40" text-anchor="middle" font-weight="700" fill="#6ee7b7">Filter during search (Qdrant)</text>
              <text x="410" y="72">1. प्लान रद्द करें (hi)  <tspan fill="#6ee7b7">✓</tspan></text>
              <text x="410" y="97">2. सदस्यता समाप्त करें (hi)  <tspan fill="#6ee7b7">✓</tspan></text>
              <text x="410" y="122">3. प्लान रोकें (hi)  <tspan fill="#6ee7b7">✓</tspan></text>
              <text x="410" y="165" fill="#6ee7b7">3 nearest points that match</text>
              <text x="410" y="185" fill="#9b99b8">index the field for speed</text>
            </g>
          </svg>
          <figcaption>If you filter after the search, you can end up with too few results. Qdrant filters inside the search.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Filter syntax</h3>
          <pre class="lc-code">
        POST /collections/help_articles/points/query
        {
          "query": [...],
          "limit": 5,
          "filter": {
            "must":     [ { "key": "lang",  "match": { "value": "en" } },
                          { "key": "year",  "range": { "gte": 2025 } } ],
            "should":   [ { "key": "topic", "match": { "any": ["billing", "account"] } } ],
            "must_not": [ { "key": "archived", "match": { "value": true } } ]
          }
        }</pre>
          <table class="lc-table">
            <thead><tr><th>Clause</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>must</code></td><td>Every condition must match (AND)</td></tr>
              <tr><td><code>should</code></td><td>At least one condition must match (OR)</td></tr>
              <tr><td><code>must_not</code></td><td>No condition may match (NOT)</td></tr>
            </tbody>
          </table>
          <p>In Python: <code>query_filter=models.Filter(must=[models.FieldCondition(key="lang", match=models.MatchValue(value="en"))])</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Index the fields you filter on</h3>
          <pre class="lc-code">
        PUT /collections/help_articles/index
        { "field_name": "lang", "field_schema": "keyword" }</pre>
          <p>A <strong>payload index</strong> helps Qdrant find matching points fast. It also helps Qdrant plan filtered searches well. Index the fields you often filter on (tenant ID, language, category, dates). Field types include <code>keyword</code>, <code>integer</code>, <code>float</code>, <code>bool</code> and <code>datetime</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the filter</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">"English or Hindi articles, from 2025 onwards, not archived." Which clause does each condition go in?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="must" data-label="must"></div>
              <div data-sorter-target="bucket" data-bucket="should" data-label="should"></div>
              <div data-sorter-target="bucket" data-bucket="not" data-label="must_not"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="must" data-why="Every result must meet the date condition.">year ≥ 2025</li>
              <li data-bucket="should" data-why="Either language is fine, so at least one must match.">lang = "en"</li>
              <li data-bucket="should" data-why="Either language is fine, so at least one must match.">lang = "hi"</li>
              <li data-bucket="not" data-why="Archived articles must be left out.">archived = true</li>
            </ul>
          </div>
          <p>A shorter way to write the language part: one <code>must</code> condition with <code>"match": {"any": ["en", "hi"]}</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code builds <code>must</code> / <code>should</code> / <code>must_not</code>. It compares <em>filter-then-rank</em> (what Qdrant does) with <em>rank-then-filter</em> (filtering after the search).</li>
            <li>Run it. Filtering after the search returns fewer results than you asked for.</li>
            <li>Add a <code>must_not</code> condition and check the results.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Put extra data (metadata) in the payload. Filter with must / should / must_not. Index the fields you filter on. When you filter inside the search, you get a full top-k of matching results.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Payload filters: must (AND), should (OR), must_not (NOT), used during the search.
        import numpy as np

        points = [
            {"id": 1, "v": [0.9, 0.1], "p": {"lang": "en", "year": 2024, "title": "Cancel plan"}},
            {"id": 2, "v": [0.85, 0.2], "p": {"lang": "hi", "year": 2025, "title": "Plan cancel (hi)"}},
            {"id": 3, "v": [0.8, 0.3], "p": {"lang": "en", "year": 2025, "title": "Pause plan"}},
            {"id": 4, "v": [0.7, 0.4], "p": {"lang": "hi", "year": 2025, "title": "End subscription (hi)"}},
            {"id": 5, "v": [0.6, 0.5], "p": {"lang": "hi", "year": 2026, "title": "Pause plan (hi)"}},
            {"id": 6, "v": [0.1, 0.9], "p": {"lang": "en", "year": 2026, "title": "Reset password"}},
        ]

        def matches(payload, cond):
            key, op, val = cond
            if op == "eq":  return payload.get(key) == val
            if op == "gte": return payload.get(key, float("-inf")) >= val
            if op == "any": return payload.get(key) in val

        def passes(payload, flt):
            ok = all(matches(payload, c) for c in flt.get("must", []))
            if flt.get("should"):
                ok = ok and any(matches(payload, c) for c in flt["should"])
            return ok and not any(matches(payload, c) for c in flt.get("must_not", []))

        def score(v, q):
            v, q = np.array(v), np.array(q)
            return float(v @ q / (np.linalg.norm(v) * np.linalg.norm(q)))

        def search(q, flt, k=3, post_filter=False):
            ranked = sorted(points, key=lambda p: -score(p["v"], q))
            if post_filter:
                return [p["p"]["title"] for p in ranked[:k] if passes(p["p"], flt)]
            return [p["p"]["title"] for p in ranked if passes(p["p"], flt)][:k]

        query = [1.0, 0.1]
        flt = {"must": [("lang", "eq", "hi")]}
        print("filter during search:", search(query, flt))
        print("rank, then filter:   ", search(query, flt, post_filter=True))

        # Try it: flt = {"must": [("year", "gte", 2025)], "should": [("lang", "any", ["en", "hi"])],
        #               "must_not": [("title", "eq", "Pause plan")]}
      PYTHON
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Vector Lab: Your Own Collection</h1>
        </div>
        <p class="lc-lead">Now it is time to use a real vector database. The <strong>Vector Lab</strong> gives you your own Qdrant collections. Their names include your user ID. You choose the distance metrics, add text, look at the embeddings, run searches and compare the results. Your browser makes the embeddings with the same model as the playground. Qdrant stores them and searches them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 210" role="img" aria-label="Your browser embeds text and sends the vector to the academy server. The server stores and searches it in your own Qdrant collections, one for each metric.">
            <defs><marker id="v11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#v11a)"><line x1="215" y1="100" x2="265" y2="100"/><line x1="460" y1="100" x2="510" y2="100"/></g>
              <rect x="10" y="40" width="205" height="120" rx="12" fill="#1f1f44" stroke="#3b82f6"/><text x="112" y="70" font-weight="700">Your browser</text><text x="112" y="94" fill="#9b99b8" font-size="11.5">embeds text with</text><text x="112" y="110" fill="#9b99b8" font-size="11.5">all-MiniLM-L6-v2</text><text x="112" y="135" fill="#fcd34d" font-size="11.5">384 numbers</text>
              <rect x="270" y="40" width="190" height="120" rx="12" fill="#1f1f44" stroke="#9d5cf6"/><text x="365" y="70" font-weight="700">Academy server</text><text x="365" y="94" fill="#9b99b8" font-size="11.5">checks limits,</text><text x="365" y="110" fill="#9b99b8" font-size="11.5">your collections only</text>
              <rect x="515" y="20" width="235" height="165" rx="12" fill="#1f1f44" stroke="#ec4899"/><text x="632" y="45" font-weight="700" fill="#f9a8d4">Qdrant</text>
              <rect x="530" y="58" width="205" height="30" rx="6" fill="#27274e"/><text x="632" y="78" font-size="11.5">lab_u&lt;your id&gt;_cosine</text>
              <rect x="530" y="95" width="205" height="30" rx="6" fill="#27274e"/><text x="632" y="115" font-size="11.5">lab_u&lt;your id&gt;_dot</text>
              <rect x="530" y="132" width="205" height="30" rx="6" fill="#27274e"/><text x="632" y="152" font-size="11.5">lab_u&lt;your id&gt;_euclid</text>
              <text x="380" y="200" fill="#c4b5fd">Each text goes into all your collections, so you can compare metrics on the same data.</text>
            </g>
          </svg>
          <figcaption>How the lab works.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Your lab</h3>
          <div class="lcw lcw-lab" data-controller="vector-lab"></div>
          <p class="lcw-lab-hint" style="margin-top:10px">Limits: up to 100 texts of 300 characters each, and a set number of lab actions per day. If you do not use a collection for 30 days, it is deleted automatically. <strong>Do not add personal or private information.</strong> Many learners share this server.</p>
        </div>
        <div class="lc-card">
          <h3>Guided tasks</h3>
          <ol class="lc-list">
            <li><strong>Create</strong> a Cosine collection. Its name contains <code>lab_u</code> and then your user ID.</li>
            <li>Press <strong>Add 10 sample texts</strong>. Your browser embeds each one, and then Qdrant stores it.</li>
            <li>Press <strong>Vector</strong> next to a text. Look at the heat-strip. It shows 384 numbers, and no single one means "cricket".</li>
            <li><strong>Search</strong> for <em>"a happy pet"</em> with top-k 3. Then try <em>"money and banks"</em> and <em>"baking bread"</em>. Do the results make sense, even with no shared words?</li>
            <li><strong>Create Dot and Euclid</strong> collections too. The lab copies your texts into them. Search again and compare the three columns. Are the rankings the same? (Remember Lesson 5.)</li>
            <li>Press <strong>Vector</strong> on a text again. Look at the stored-vector table. The cosine collection holds a <strong>length-1</strong> copy, because Qdrant normalised it. Dot and Euclid keep the original length.</li>
            <li>Add your own sentence that should come first for one of your queries. Check that it does.</li>
            <li>When you are finished, try <strong>Reset lab</strong>. This deletes everything, and you can start again.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>What the lab does in the background</h3>
          <pre class="lc-code">
        client.create_collection("lab_u42_cosine",
            vectors_config=models.VectorParams(size=384, distance=models.Distance.COSINE))
        client.upsert("lab_u42_cosine", points=[models.PointStruct(
            id=str(uuid.uuid4()), vector=embedding, payload={"text": text})])
        client.query_points("lab_u42_cosine", query=query_embedding, limit=3)</pre>
          <p>These are the same three calls you learned in Lessons 7 and 8. The lab puts them inside a small web API with limits for each learner.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Before you compare metrics in the lab, <em>guess</em> what you will see. The starter code stores the same raw vectors "the Qdrant way" for each metric. It prints the stored lengths and the rankings.</li>
            <li>See how, on raw vectors, Dot puts a <em>longer</em> vector first. But Cosine and Euclid both say "happy cat" is the best match.</li>
            <li>Check your guesses in the lab. With real embeddings the differences are usually smaller, but you will still see them.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The lab is a real Qdrant. It has collections with a fixed size and metric, upserted points and nearest-neighbour queries. Look at how Cosine stores unit vectors (length 1). Look at where the metrics agree or differ on the same data. This is the fastest way to understand Unit 1 in practice.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Guess what the lab will show: store the same raw vectors "the Qdrant way" for each metric.
        import numpy as np

        rng = np.random.default_rng(0)
        texts = ["happy cat", "loyal dog", "cricket match", "bank rates", "fresh bread"]
        raw = {t: rng.normal(size=8) * rng.uniform(0.5, 3) for t in texts}   # fake embeddings
        query = raw["happy cat"] + rng.normal(size=8) * 0.8                   # a query close to "happy cat"

        def store(v, metric):
            # For Cosine collections, Qdrant normalises vectors when you upload them
            return v / np.linalg.norm(v) if metric == "cosine" else v

        for metric in ["cosine", "dot", "euclid"]:
            stored = {t: store(v, metric) for t, v in raw.items()}
            q = store(query, metric)
            if metric == "euclid":
                ranking = sorted(stored, key=lambda t: np.linalg.norm(stored[t] - q))
            else:
                ranking = sorted(stored, key=lambda t: -(stored[t] @ q))
            lengths = ", ".join(f"{np.linalg.norm(v):.2f}" for v in stored.values())
            print(f"{metric:<7} stored lengths [{lengths}]")
            print(f"        ranking: {ranking}")
      PYTHON
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Updating, Deleting and Re-embedding</h1>
        </div>
        <p class="lc-lead">Data changes over time. Articles get edited. Products are no longer sold. One day you will move to a better embedding model (the model that turns text into vectors). Qdrant gives you a clear tool for each case. <strong>Collection aliases</strong> (a second name that points to a collection) let you swap in a whole new, re-embedded collection. Your app keeps working the whole time, with no downtime.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Blue-green switch: the alias docs points to docs_v1. You build docs_v2 with the new model. Then you switch the alias in one single step.">
            <defs><marker id="v12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9d5cf6"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="300" y="15" width="160" height="50" rx="25" fill="#27274e" stroke="#9d5cf6" stroke-width="2"/><text x="380" y="45" font-weight="700">alias "docs"</text>
              <text x="470" y="45" text-anchor="start" fill="#9b99b8" font-size="11.5">your app always queries "docs"</text>
              <rect x="60" y="130" width="230" height="80" rx="12" fill="#1f1f44" stroke="#6b6988"/><text x="175" y="160" font-weight="700">docs_v1</text><text x="175" y="182" fill="#9b99b8" font-size="11.5">old model · 384-d</text>
              <rect x="470" y="130" width="230" height="80" rx="12" fill="#1f1f44" stroke="#10b981"/><text x="585" y="160" font-weight="700">docs_v2</text><text x="585" y="182" fill="#9b99b8" font-size="11.5">new model · 768-d, re-embedded</text>
              <path d="M340 65 C 300 100, 220 110, 190 128" fill="none" stroke="#6b6988" stroke-dasharray="5 4"/>
              <path d="M420 65 C 460 100, 540 110, 570 128" fill="none" stroke="#9d5cf6" stroke-width="2" marker-end="url(#v12a)"/>
              <text x="175" y="228" fill="#9b99b8" font-size="11.5">before</text><text x="585" y="228" fill="#6ee7b7" font-size="11.5">after one atomic switch</text>
            </g>
          </svg>
          <figcaption>Build the new collection next to the old one. Test it. Then point the alias to it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Everyday changes</h3>
          <table class="lc-table">
            <thead><tr><th>Change</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>The text of an article was edited</td><td>Embed it again and <strong>upsert</strong> it with the same ID (upsert means insert or update, so the old point is replaced)</td></tr>
              <tr><td>Only the metadata changed (for example <code>archived: true</code>)</td><td><strong>Set payload</strong>: <code>POST /collections/docs/points/payload</code>. You do not need to embed again</td></tr>
              <tr><td>One article was deleted</td><td><strong>Delete by ID</strong>: <code>POST /collections/docs/points/delete</code> with <code>{"points": [17]}</code></td></tr>
              <tr><td>A whole customer leaves</td><td><strong>Delete by filter</strong>: <code>{"filter": {"must": [{"key": "tenant", "match": {"value": "acme"}}]}}</code></td></tr>
              <tr><td>You want a backup before a risky change</td><td>Take a <strong>snapshot</strong> (a saved copy) of the collection</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Change models with no downtime</h3>
          <pre class="lc-code">
        # 1. Build docs_v2 with the new model (the app keeps using "docs" -> docs_v1)
        # 2. Test docs_v2 with your evaluation queries (Lesson 16)
        # 3. Switch the alias in ONE request, so there's no moment with no collection
        POST /collections/aliases
        { "actions": [
            { "delete_alias": { "alias_name": "docs" } },
            { "create_alias": { "collection_name": "docs_v2", "alias_name": "docs" } }
        ] }
        # 4. Keep docs_v1 for a while so you can switch back, then delete it</pre>
          <p>Switch the <strong>query</strong> embedding model at the same moment as the alias. A query embedded with the old model does not fit the new vector space.</p>
        </div>
        <div class="lc-card">
          <h3>Watch a model change, step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Goal">Move the help search from MiniLM (384-d) to a stronger 768-d model.</li>
              <li data-kind="tool" data-label="Create">PUT /collections/docs_v2  {"vectors": {"size": 768, "distance": "Cosine"}}</li>
              <li data-kind="tool" data-label="Re-embed + upsert">Embed all 12,400 articles with the new model. Upsert them in batches of 500.</li>
              <li data-kind="check" data-label="Test">Hit rate@5 on 200 test queries: v1 0.81 → v2 0.89</li>
              <li data-kind="tool" data-label="Switch">POST /collections/aliases: delete "docs", create "docs" → docs_v2 (one request)</li>
              <li data-kind="tool" data-label="Deploy">At the same time, the app starts to embed queries with the new model.</li>
              <li data-kind="warn" data-label="Keep a way back">Keep docs_v1 for one week. If users complain more, point the alias back.</li>
              <li data-kind="answer" data-label="Clean up">One week later: DELETE /collections/docs_v1</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code acts like a set of collections and an alias. The app always searches through the alias.</li>
            <li>Run it. The switch happens in one single step. To go back (a rollback), you just switch again.</li>
            <li>Try to switch the alias to a collection that does not exist. A safe switch refuses to do it.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use upsert to replace a point. Use set payload to change metadata. Delete by ID or by filter. For a new model, embed everything again into a new collection and test it. Then switch the alias in one step. Keep the old collection until you are sure.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Blue-green switch: move between collections by changing an alias.

        collections = {
            "docs_v1": {"model": "MiniLM-384", "points": 12400},
        }
        aliases = {"docs": "docs_v1"}

        def search(alias):
            name = aliases[alias]
            return f"searching {name} ({collections[name]['model']})"

        def switch_alias(alias, target):
            if target not in collections:
                raise ValueError(f"refusing: collection {target!r} does not exist")
            old = aliases.get(alias)
            aliases[alias] = target            # the change happens in one single step
            print(f"alias {alias!r}: {old} -> {target}")

        print(search("docs"))
        collections["docs_v2"] = {"model": "new-768", "points": 12400}   # new collection, built and tested
        switch_alias("docs", "docs_v2")
        print(search("docs"))
        switch_alias("docs", "docs_v1")                                   # rollback: go back to the old one
        print(search("docs"))

        # Try it: switch_alias("docs", "docs_v3")
      PYTHON
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Exact vs Approximate Search</h1>
        </div>
        <p class="lc-lead">The simplest search compares the query with <strong>every</strong> stored vector. It is always correct, but it gets slow as your data grows. An approximate nearest neighbour (<strong>ANN</strong>) index compares the query with only a small, well-chosen part of the vectors. It is much faster. The cost is that it will sometimes miss a true neighbour.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Exact search compares every vector. Approximate search looks at a small area only, so it may miss a neighbour.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="10" y="15" width="360" height="220" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="190" y="40" text-anchor="middle" font-weight="700" fill="#93c5fd">Exact (brute force)</text>
              <g fill="#60a5fa">
                <circle cx="60" cy="80" r="4"/><circle cx="100" cy="120" r="4"/><circle cx="150" cy="70" r="4"/><circle cx="210" cy="100" r="4"/><circle cx="260" cy="80" r="4"/><circle cx="320" cy="120" r="4"/>
                <circle cx="80" cy="170" r="4"/><circle cx="140" cy="190" r="4"/><circle cx="200" cy="160" r="4"/><circle cx="250" cy="190" r="4"/><circle cx="300" cy="170" r="4"/><circle cx="340" cy="200" r="4"/>
              </g>
              <circle cx="190" cy="135" r="6" fill="#fbbf24"/>
              <text x="190" y="225" text-anchor="middle" fill="#9b99b8" font-size="11.5">compares all N vectors · always right · O(N·d)</text>
              <rect x="390" y="15" width="360" height="220" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="570" y="40" text-anchor="middle" font-weight="700" fill="#6ee7b7">Approximate (ANN index)</text>
              <circle cx="570" cy="135" r="65" fill="rgba(16,185,129,.1)" stroke="#10b981" stroke-dasharray="4 4"/>
              <g fill="#6b6988"><circle cx="430" cy="80" r="4"/><circle cx="700" cy="70" r="4"/><circle cx="720" cy="200" r="4"/><circle cx="440" cy="200" r="4"/><circle cx="690" cy="185" r="4"/></g>
              <g fill="#34d399"><circle cx="540" cy="110" r="4"/><circle cx="600" cy="150" r="4"/><circle cx="560" cy="170" r="4"/><circle cx="610" cy="105" r="4"/></g>
              <circle cx="645" cy="135" r="4" fill="#ef4444"/><text x="655" y="130" fill="#fca5a5" font-size="11">missed</text>
              <circle cx="570" cy="135" r="6" fill="#fbbf24"/>
              <text x="570" y="225" text-anchor="middle" fill="#9b99b8" font-size="11.5">compares a small fraction · fast · recall &lt; 100%</text>
            </g>
          </svg>
          <figcaption>ANN gives up a little accuracy (recall) to get a lot of speed.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How slow is exact search?</h3>
          <p>Comparing two vectors with d dimensions takes about d multiply-adds (one multiply and one add). So one query against N vectors takes about <code>N × d</code>:</p>
          <table class="lc-table">
            <thead><tr><th>Vectors</th><th>Dimensions</th><th>Multiply-adds per query</th></tr></thead>
            <tbody>
              <tr><td>10,000</td><td>384</td><td>3.8 million: instant</td></tr>
              <tr><td>1,000,000</td><td>768</td><td>768 million: you notice the delay, most of all with many queries per second</td></tr>
              <tr><td>100,000,000</td><td>1536</td><td>154 billion: much too slow for live search</td></tr>
            </tbody>
          </table>
          <p>Exact search is still the right choice in some cases. Use it for small collections. Use it to build "ground truth" (the correct answers you test against). Use it when you must never miss a result. Qdrant scans everything by itself for small segments. You can also force a full scan with the search parameter <code>"exact": true</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Recall: the cost of speed</h3>
          <p><strong>recall@k</strong> is the share of the true top-k results (from exact search) that the ANN search also found. Example: exact search says the 10 nearest are {1…10}. The index returns 9 of them. So recall@10 = 0.9. Good indexes reach 0.95–0.99, and they compare only a small part of the vectors. Lesson 16 shows you how to measure it.</p>
        </div>
        <div class="lc-card">
          <h3>The main types of index</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Idea</th><th>Used by</th></tr></thead>
            <tbody>
              <tr><td>Graph (HNSW)</td><td>Jump from one nearby vector to the next, moving closer to the query</td><td>Qdrant, pgvector (hnsw), Weaviate, Milvus, FAISS</td></tr>
              <tr><td>Clustering (IVF)</td><td>Put vectors into groups (clusters). Search only the closest groups</td><td>FAISS, pgvector (ivfflat), Milvus</td></tr>
              <tr><td>Quantisation</td><td>Make vectors smaller, so each comparison costs less</td><td>Used together with one of the two above</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: exact or approximate?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which search fits each case?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="exact" data-label="Exact"></div>
              <div data-sorter-target="bucket" data-bucket="ann" data-label="Approximate (ANN)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="exact" data-why="The data is tiny. A full scan takes only microseconds.">2,000 FAQ entries</li>
              <li data-bucket="ann" data-why="With this much data, a full scan for every query is much too slow.">50 million product images, 200 searches per second</li>
              <li data-bucket="exact" data-why="Ground truth must be exact. You use it to measure recall.">Building the "correct answers" to test an index</li>
              <li data-bucket="ann" data-why="Live search over millions of chunks needs an index.">Chat-with-docs over 8 million text chunks</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code times exact search in NumPy as the collection gets bigger. It also counts the multiply-adds.</li>
            <li>Make the numbers in <code>SIZES</code> bigger. Be careful: the browser has little memory. See how the time grows at about the same rate as N.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Exact search costs N × d per query. It is perfect when N is small, and too slow when N is huge. ANN indexes compare only a small part of the vectors. You measure what they lose with <em>recall</em>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # How does the time for exact (brute-force) search grow as you add more vectors?
        import numpy as np, time

        D = 128
        SIZES = [1_000, 10_000, 50_000, 100_000]
        rng = np.random.default_rng(0)
        query = rng.normal(size=D).astype(np.float32)

        for n in SIZES:
            data = rng.normal(size=(n, D)).astype(np.float32)
            start = time.perf_counter()
            for _ in range(10):                        # 10 queries
                scores = data @ query                  # compare the query with EVERY vector
                top10 = np.argpartition(-scores, 10)[:10]
            ms = (time.perf_counter() - start) / 10 * 1000
            print(f"N={n:>7,}  multiply-adds/query={n * D:>12,}  time/query={ms:7.2f} ms")
      PYTHON
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">HNSW: Searching a Graph of Neighbours</h1>
        </div>
        <p class="lc-lead"><strong>HNSW</strong> (Hierarchical Navigable Small World) is the index that Qdrant uses. It is a graph. Every vector is a node (a point in the graph), and it is linked to a few of its nearest neighbours. A search starts at one node. It keeps jumping to the neighbour that is closer to the query. It stops when no neighbour is closer. Upper layers have long links, so the search reaches the right area quickly.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three HNSW layers: a top layer with few nodes and long links, a middle layer, and a full bottom layer. The search moves down from the entry point to the nearest neighbour.">
            <defs><marker id="v15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#fbbf24"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="20" y="45" fill="#c4b5fd">Layer 2</text><text x="20" y="145" fill="#c4b5fd">Layer 1</text><text x="20" y="245" fill="#c4b5fd">Layer 0 (all)</text>
              <g stroke="#4b4a78" stroke-width="1.5">
                <line x1="150" y1="40" x2="520" y2="40"/>
                <line x1="150" y1="140" x2="330" y2="140"/><line x1="330" y1="140" x2="520" y2="140"/><line x1="520" y1="140" x2="660" y2="140"/>
                <line x1="150" y1="240" x2="230" y2="240"/><line x1="230" y1="240" x2="330" y2="240"/><line x1="330" y1="240" x2="420" y2="240"/><line x1="420" y1="240" x2="520" y2="240"/><line x1="520" y1="240" x2="590" y2="240"/><line x1="590" y1="240" x2="660" y2="240"/><line x1="660" y1="240" x2="720" y2="240"/>
                <line x1="230" y1="240" x2="330" y2="200"/><line x1="420" y1="240" x2="520" y2="200"/><line x1="590" y1="240" x2="520" y2="200"/>
              </g>
              <g stroke="#27274e" stroke-dasharray="3 3"><line x1="150" y1="40" x2="150" y2="240"/><line x1="520" y1="40" x2="520" y2="240"/><line x1="330" y1="140" x2="330" y2="240"/><line x1="660" y1="140" x2="660" y2="240"/></g>
              <g fill="#6b6988"><circle cx="150" cy="40" r="7"/><circle cx="520" cy="40" r="7"/>
                <circle cx="150" cy="140" r="7"/><circle cx="330" cy="140" r="7"/><circle cx="520" cy="140" r="7"/><circle cx="660" cy="140" r="7"/>
                <circle cx="150" cy="240" r="6"/><circle cx="230" cy="240" r="6"/><circle cx="330" cy="240" r="6"/><circle cx="330" cy="200" r="6"/><circle cx="420" cy="240" r="6"/><circle cx="520" cy="240" r="6"/><circle cx="520" cy="200" r="6"/><circle cx="590" cy="240" r="6"/><circle cx="660" cy="240" r="6"/><circle cx="720" cy="240" r="6"/></g>
              <circle cx="150" cy="40" r="9" fill="none" stroke="#9d5cf6" stroke-width="2"/><text x="120" y="22" fill="#c4b5fd">entry point</text>
              <g stroke="#fbbf24" stroke-width="3" fill="none" marker-end="url(#v15a)">
                <path d="M158 40 L 508 40"/><path d="M520 50 L 520 128"/><path d="M528 140 L 648 140"/><path d="M660 150 L 660 228"/><path d="M652 240 L 600 240"/>
              </g>
              <circle cx="590" cy="240" r="9" fill="#34d399"/><text x="590" y="275" text-anchor="middle" fill="#6ee7b7">nearest to query</text>
              <text x="600" y="75" fill="#fcd34d">long hops first,</text><text x="600" y="92" fill="#fcd34d">then short ones</text>
            </g>
          </svg>
          <figcaption>A greedy search (one that always takes the best next step) moves down the layers. It makes long jumps on the upper layers, which have few nodes. It makes small steps on the full bottom layer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Go through a search step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Query">Find the 5 vectors nearest to q.</li>
              <li data-kind="tool" data-label="Layer 2">Start at the entry point. Compare q with its few far-away neighbours. Jump to the closest one.</li>
              <li data-kind="tool" data-label="Layer 2">No neighbour is closer than the current node. Go down one layer, at the same node.</li>
              <li data-kind="tool" data-label="Layer 1">Jump along medium-length links towards q. Stop when no neighbour is closer.</li>
              <li data-kind="tool" data-label="Layer 0">On the full graph, keep a candidate list of size ef (for example 64). Look at the neighbours of the best candidate. Keep the ef closest vectors found so far.</li>
              <li data-kind="result" data-label="Stop">Stop when the best candidate left is worse than the worst result in the list.</li>
              <li data-kind="answer" data-label="Answer">Return the top 5 of the ef candidates. The search compared only a few hundred vectors out of millions.</li>
              <li data-kind="warn" data-label="The problem">Greedy jumping can get stuck in one "local" area and miss a true neighbour. A bigger ef looks at more nodes, so it misses less.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>The three settings</h3>
          <table class="lc-table">
            <thead><tr><th>Parameter</th><th>When you set it</th><th>A higher value means</th><th>Qdrant default</th></tr></thead>
            <tbody>
              <tr><td><code>m</code></td><td>When you build the index</td><td>More links per node: better recall, more memory, slower build</td><td>16</td></tr>
              <tr><td><code>ef_construct</code></td><td>When you build the index</td><td>More candidates while linking: a better graph, slower build</td><td>100</td></tr>
              <tr><td><code>hnsw_ef</code></td><td>On each search</td><td>A wider search: higher recall, slower query</td><td>You set it for each query in <code>params</code></td></tr>
            </tbody>
          </table>
          <pre class="lc-code">
        # index settings (collection level)
        PATCH /collections/docs
        { "hnsw_config": { "m": 16, "ef_construct": 100 } }

        # per query: trade speed for recall
        POST /collections/docs/points/query
        { "query": [...], "limit": 10, "params": { "hnsw_ef": 128 } }</pre>
          <p>HNSW in Qdrant also works with filters. When a filter removes many points, Qdrant still keeps the graph easy to move through. This is why payload indexes are important (Lesson 9).</p>
        </div>
        <div class="lc-card">
          <h3>Activity: tune it</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">What would you change for each problem?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ef" data-label="Raise hnsw_ef (at query time)"></div>
              <div data-sorter-target="bucket" data-bucket="build" data-label="Raise m / ef_construct (rebuild)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ef" data-why="You can raise ef for each query. You do not need to rebuild anything.">Recall is 0.90. You need 0.95 today, and the search is fast enough to allow a slower query</li>
              <li data-bucket="build" data-why="If even a very high ef cannot give good recall, the graph itself needs more links.">Even with a very large hnsw_ef, recall stays low</li>
              <li data-bucket="ef" data-why="You can give one important type of query a larger ef, just for that query.">One important type of query needs very high recall</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code builds a graph with one layer. Each vector is linked to its <code>M</code> nearest neighbours. Then it runs the greedy candidate-list search with different <code>ef</code> values.</li>
            <li>It prints recall@10. It also prints how many vectors each search compared, out of 3,000. Pure Python is slow, so look at "vectors compared". That number is the real cost.</li>
            <li>Change <code>M</code> to 4 and then to 24. How do recall and the number of comparisons change?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> HNSW jumps through a graph of neighbours. It goes from rough upper layers to the detailed bottom layer. It compares only a tiny part of the vectors. <code>m</code> and <code>ef_construct</code> shape the graph. <code>hnsw_ef</code> lets you choose speed or recall on every query.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A graph with one layer + greedy beam search: the main idea of HNSW.
        import numpy as np, heapq

        rng = np.random.default_rng(1)
        N, D, K, M = 3000, 32, 10, 12
        data = rng.normal(size=(N, D)).astype(np.float32)
        data /= np.linalg.norm(data, axis=1, keepdims=True)
        queries = rng.normal(size=(30, D)).astype(np.float32)
        queries /= np.linalg.norm(queries, axis=1, keepdims=True)

        truth = [set(np.argsort(-(data @ q))[:K].tolist()) for q in queries]   # exact answers

        # Build: link every vector to its M nearest neighbours (brute force is OK for 3,000)
        sims = data @ data.T
        np.fill_diagonal(sims, -np.inf)
        neighbours = np.argpartition(-sims, M, axis=1)[:, :M]

        def search(q, ef, entry=0):
            visited = {entry}
            s = float(data[entry] @ q)
            candidates = [(-s, entry)]        # max-heap: most similar comes out first
            best = [(s, entry)]               # min-heap: the ef best found so far
            while candidates:
                neg, node = heapq.heappop(candidates)
                if len(best) >= ef and -neg < best[0][0]:
                    break                     # no better node is left to check
                for nb in neighbours[node]:
                    nb = int(nb)
                    if nb in visited:
                        continue
                    visited.add(nb)
                    s = float(data[nb] @ q)
                    if len(best) < ef or s > best[0][0]:
                        heapq.heappush(candidates, (-s, nb))
                        heapq.heappush(best, (s, nb))
                        if len(best) > ef:
                            heapq.heappop(best)
            top = {i for _, i in sorted(best, reverse=True)[:K]}
            return top, len(visited)

        print(f"{'ef':>4}  recall@10  vectors compared (of {N})")
        for ef in [10, 20, 40, 80, 160]:
            results = [search(q, ef) for q in queries]
            recall = np.mean([len(got & t) / K for (got, _), t in zip(results, truth)])
            compared = np.mean([n for _, n in results])
            print(f"{ef:>4}     {recall:.3f}      {compared:6.0f}")
      PYTHON
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">IVF: Searching by Clusters</h1>
        </div>
        <p class="lc-lead"><strong>IVF</strong> (Inverted File index) gets its speed in a different way. It puts the vectors into groups, called clusters, with k-means (a method that finds groups of nearby points). When you search, it finds the few clusters whose centres are closest to the query. Then it checks only the vectors inside those clusters. Qdrant uses HNSW, not IVF. But you will see IVF in FAISS, pgvector and Milvus. It is also the clearest way to understand the balance between speed and recall.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Vectors in clusters, each with a centre. The query checks the two nearest clusters. With nprobe 1, it misses a neighbour just across a border.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="10" y="10" width="740" height="260" rx="12" fill="#18183a" stroke="#4b4a78"/>
              <line x1="260" y1="10" x2="260" y2="270" stroke="#4b4a78" stroke-dasharray="4 4"/><line x1="500" y1="10" x2="500" y2="270" stroke="#4b4a78" stroke-dasharray="4 4"/><line x1="10" y1="140" x2="750" y2="140" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <rect x="260" y="140" width="240" height="130" fill="rgba(16,185,129,.12)"/>
              <rect x="500" y="140" width="250" height="130" fill="rgba(16,185,129,.06)"/>
              <g fill="#6b6988"><circle cx="80" cy="60" r="4"/><circle cx="150" cy="90" r="4"/><circle cx="120" cy="200" r="4"/><circle cx="190" cy="230" r="4"/><circle cx="330" cy="60" r="4"/><circle cx="420" cy="100" r="4"/><circle cx="600" cy="60" r="4"/><circle cx="680" cy="110" r="4"/></g>
              <g fill="#60a5fa"><circle cx="320" cy="200" r="4"/><circle cx="380" cy="235" r="4"/><circle cx="430" cy="180" r="4"/><circle cx="560" cy="220" r="4"/><circle cx="640" cy="190" r="4"/></g>
              <g fill="#f59e0b"><rect x="126" y="66" width="10" height="10"/><rect x="370" y="76" width="10" height="10"/><rect x="636" y="76" width="10" height="10"/><rect x="146" y="206" width="10" height="10"/><rect x="376" y="196" width="10" height="10"/><rect x="606" y="196" width="10" height="10"/></g>
              <circle cx="470" cy="215" r="7" fill="#fbbf24"/><text x="440" y="250" fill="#fcd34d">query</text>
              <circle cx="515" cy="205" r="5" fill="#ef4444"/><text x="520" y="180" fill="#fca5a5" font-size="11">true neighbour, other cluster</text>
              <text x="30" y="32" fill="#fcd34d">■ centroid (cluster centre)</text>
              <text x="280" y="160" fill="#6ee7b7">nprobe = 1 scans only this cluster</text>
              <text x="520" y="262" fill="#9b99b8">nprobe = 2 also scans this one → finds it</text>
            </g>
          </svg>
          <figcaption>With nprobe = 1, the search misses a close vector just across the cluster border. Checking more clusters fixes this, but it costs more time.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How IVF works</h3>
          <ol class="lc-list">
            <li><strong>Train:</strong> run k-means on the vectors (or on a sample of them). This finds <code>nlist</code> cluster centres, called centroids.</li>
            <li><strong>Assign:</strong> put every vector in the list of its nearest centroid. This list is the "inverted list".</li>
            <li><strong>Search:</strong> compare the query with all centroids. Pick the <code>nprobe</code> nearest ones. Check only the vectors in those lists.</li>
          </ol>
          <table class="lc-table">
            <thead><tr><th>Setting</th><th>Effect</th><th>Common names</th></tr></thead>
            <tbody>
              <tr><td>Number of clusters</td><td>More clusters: smaller lists and faster checks, but more misses at the borders</td><td>FAISS <code>nlist</code>, pgvector <code>lists</code></td></tr>
              <tr><td>Clusters searched</td><td>More probes (clusters checked): higher recall, but slower</td><td>FAISS <code>nprobe</code>, pgvector <code>ivfflat.probes</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>HNSW vs IVF</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>HNSW</th><th>IVF</th></tr></thead>
            <tbody>
              <tr><td>Speed / recall</td><td>Usually excellent</td><td>Good. It depends on nprobe</td></tr>
              <tr><td>Memory</td><td>Needs extra memory for the graph links</td><td>Small (only the centroids and the lists)</td></tr>
              <tr><td>Build</td><td>Slower. Adding new vectors one by one is fine</td><td>Needs a training step. Clusters can become less accurate as the data changes</td></tr>
              <tr><td>Where</td><td>Qdrant, pgvector hnsw, Weaviate, Milvus</td><td>FAISS, pgvector ivfflat, Milvus</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: order the IVF search</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of an IVF index in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Run k-means to find the cluster centres</li>
              <li data-order="2">Put every vector in the list of its nearest centre</li>
              <li data-order="3">A query comes in: compare it with every centre</li>
              <li data-order="4">Pick the nprobe nearest centres</li>
              <li data-order="5">Check only the vectors in those lists and return the top-k</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code builds an IVF index with k-means in NumPy. It uses 4,000 vectors that form clusters. Then it searches with bigger and bigger <code>nprobe</code> values.</li>
            <li>Read the table. It shows recall@10 and how many vectors each query checked. Find the smallest nprobe that gives recall ≥ 0.95.</li>
            <li>Change <code>NLIST</code> to 16, then to 256, and run it again. How does the best nprobe change?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> IVF checks only the clusters nearest to the query. <code>nprobe</code> is the setting that moves between speed and recall. Misses happen at the borders between clusters. Qdrant uses HNSW, but the same idea applies.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # IVF: make clusters with k-means, then check only the nprobe nearest clusters.
        import numpy as np

        rng = np.random.default_rng(2)
        NLIST, K = 64, 10
        centers = rng.normal(size=(40, 32))
        data = centers[rng.integers(0, 40, 4000)] + rng.normal(size=(4000, 32)) * 0.6
        data /= np.linalg.norm(data, axis=1, keepdims=True)
        queries = centers[rng.integers(0, 40, 40)] + rng.normal(size=(40, 32)) * 0.6
        queries /= np.linalg.norm(queries, axis=1, keepdims=True)
        truth = [set(np.argsort(-(data @ q))[:K].tolist()) for q in queries]

        def kmeans(x, k, iters=10):
            c = x[rng.choice(len(x), k, replace=False)].copy()
            for _ in range(iters):
                assign = np.argmax(x @ c.T, axis=1)
                for j in range(k):
                    members = x[assign == j]
                    if len(members):
                        m = members.mean(axis=0)
                        c[j] = m / np.linalg.norm(m)
            return c, np.argmax(x @ c.T, axis=1)

        centroids, assign = kmeans(data, NLIST)
        lists = [np.where(assign == j)[0] for j in range(NLIST)]   # the "inverted lists": one list of vector IDs per cluster

        print("nprobe  recall@10  vectors scanned (of 4000)")
        for nprobe in [1, 2, 4, 8, 16, NLIST]:
            recalls, scanned = [], []
            for q, t in zip(queries, truth):
                probe = np.argsort(-(centroids @ q))[:nprobe]
                ids = np.concatenate([lists[j] for j in probe])
                top = ids[np.argsort(-(data[ids] @ q))[:K]]
                recalls.append(len(set(top.tolist()) & t) / K)
                scanned.append(len(ids))
            print(f"{nprobe:>6}    {np.mean(recalls):.3f}      {np.mean(scanned):6.0f}")
      PYTHON
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Quantisation: Smaller Vectors, Faster Search</h1>
        </div>
        <p class="lc-lead">A float32 number uses 4 bytes. <strong>Quantisation</strong> stores a less exact copy of each vector. It uses 1 byte per number (scalar) or 1 bit per number (binary). Vectors become 4× or even 32× smaller. More of them fit in RAM, and comparisons are faster. You lose a little accuracy. <strong>Rescoring</strong> (checking the best results again with the original vectors) gets most of it back.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Memory for one million vectors with 1024 dimensions: float32 4 GB, int8 1 GB, binary 128 MB.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <text x="20" y="30" fill="#c4b5fd">1 million vectors × 1024 dimensions</text>
              <text x="20" y="72">float32 (4 bytes)</text><rect x="190" y="55" width="520" height="26" rx="4" fill="#3b82f6"/><text x="700" y="73" text-anchor="end" font-weight="700">≈ 4.1 GB</text>
              <text x="20" y="122">scalar int8 (1 byte)</text><rect x="190" y="105" width="130" height="26" rx="4" fill="#9d5cf6"/><text x="330" y="123">≈ 1 GB · 4× smaller</text>
              <text x="20" y="172">binary (1 bit)</text><rect x="190" y="155" width="16" height="26" rx="3" fill="#10b981"/><text x="216" y="173">≈ 128 MB · 32× smaller</text>
              <text x="20" y="222" fill="#9b99b8" font-size="11.5">Keep originals on disk to rescore. Keep small copies in RAM for a fast first pass.</text>
            </g>
          </svg>
          <figcaption>Quantisation makes the data that must stay in RAM smaller.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three types of quantisation in Qdrant</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>How</th><th>Size</th><th>Accuracy</th></tr></thead>
            <tbody>
              <tr><td>Scalar (int8)</td><td>Map the range of float values onto 256 steps</td><td>4× smaller</td><td>Very close to the original. A safe default</td></tr>
              <tr><td>Binary</td><td>Keep only the sign (1 bit) of each number</td><td>32× smaller</td><td>Works best with models that have many dimensions (about 1024 or more). Needs rescoring</td></tr>
              <tr><td>Product (PQ)</td><td>Split the vector into parts. Replace each part with the nearest entry from a "codebook" (a fixed list of sample parts)</td><td>Up to 64×</td><td>Lowest accuracy. For very large data that does not fit in memory</td></tr>
            </tbody>
          </table>
          <pre class="lc-code">
        # enable scalar quantisation on a collection
        PATCH /collections/docs
        { "quantization_config": { "scalar": { "type": "int8", "quantile": 0.99, "always_ram": true } } }

        # search: fast pass on quantised vectors, then rescore the best with the originals
        POST /collections/docs/points/query
        { "query": [...], "limit": 10,
          "params": { "quantization": { "rescore": true, "oversampling": 2.0 } } }</pre>
          <p><strong>Oversampling 2.0</strong> means this: get 2 × 10 = 20 candidates with the quantised vectors. Then score those 20 again with the full, exact vectors. Return the best 10.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: pick the quantisation</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which option fits each case best?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="none" data-label="No quantisation"></div>
              <div data-sorter-target="bucket" data-bucket="int8" data-label="Scalar int8"></div>
              <div data-sorter-target="bucket" data-bucket="bin" data-label="Binary + rescoring"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="none" data-why="The data already fits easily in RAM. You do not need to give up any accuracy.">20,000 vectors on a server with 16 GB RAM</li>
              <li data-bucket="int8" data-why="4× smaller and almost no loss of accuracy. This is the usual first step.">20 million 768-d vectors, and RAM is almost full</li>
              <li data-bucket="bin" data-why="Binary works well with many dimensions. Rescoring gets the accuracy back.">300 million 1536-d vectors, and cost is the most important thing</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code quantises 4,000 vectors to int8 and to binary. It measures recall@10 against the exact float32 search. It also shows the memory each version uses.</li>
            <li>int8 keeps recall very close to the original. Binary does badly on these vectors with 32 dimensions. But rescoring with more <code>oversampling</code> brings recall back up.</li>
            <li>Change <code>D</code> to 256 and run it again. Binary recall gets better as the number of dimensions grows. With oversampling ×8, it goes from about 0.91 to 0.97. This is why binary is recommended for models with many dimensions.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Quantisation gives up a little accuracy to save a lot of memory and time. Start with int8. Use binary for models with many dimensions and very large data. Turn on rescoring with oversampling to get accuracy back.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Scalar (int8) and binary quantisation: memory vs recall, and rescoring.
        import numpy as np

        rng = np.random.default_rng(2)
        N, D, K = 4000, 32, 10
        centers = rng.normal(size=(40, D))
        data = centers[rng.integers(0, 40, N)] + rng.normal(size=(N, D)) * 0.6
        data = (data / np.linalg.norm(data, axis=1, keepdims=True)).astype(np.float32)
        queries = centers[rng.integers(0, 40, 40)] + rng.normal(size=(40, D)) * 0.6
        queries /= np.linalg.norm(queries, axis=1, keepdims=True)
        truth = [set(np.argsort(-(data @ q))[:K].tolist()) for q in queries]

        # int8: map the range of values onto 0..255
        lo, hi = data.min(), data.max()
        q8 = np.round((data - lo) / (hi - lo) * 255).astype(np.uint8)
        back = q8.astype(np.float32) / 255 * (hi - lo) + lo
        # binary: keep only the sign (positive or not)
        bits = data > 0

        def recall(score_fn, oversample=1):
            total = 0
            for q, t in zip(queries, truth):
                cand = np.argsort(-score_fn(q))[:K * oversample]
                top = cand[np.argsort(-(data[cand] @ q))[:K]]      # score again with the original vectors
                total += len(set(top.tolist()) & t) / K
            return total / len(queries)

        print(f"float32 : {data.nbytes:>8,} bytes  recall {recall(lambda q: data @ q):.3f}")
        print(f"int8    : {q8.nbytes:>8,} bytes  recall {recall(lambda q: back @ q):.3f}")
        packed = np.packbits(bits, axis=1).nbytes
        for over in [1, 2, 4, 8]:
            r = recall(lambda q: (bits == (q > 0)).sum(axis=1), oversample=over)
            print(f"binary  : {packed:>8,} bytes  recall {r:.3f}  (oversampling x{over}, rescored)")
      PYTHON
    },
    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Measuring Recall and Latency</h1>
        </div>
        <p class="lc-lead">If you tune an index without measuring, you are only guessing. The method is simple. First, find the <strong>ground truth</strong> (the correct results) with exact search for a set of test queries. Next, measure <strong>recall@k</strong> and <strong>latency</strong> (how long a query takes) for each setting. Then pick the cheapest setting that meets your goals.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A curve of recall against latency. The chosen point is the cheapest setting that reaches the recall goal of 0.95.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <line x1="70" y1="220" x2="720" y2="220" stroke="#4b4a78"/><line x1="70" y1="20" x2="70" y2="220" stroke="#4b4a78"/>
              <text x="395" y="250" text-anchor="middle" fill="#9b99b8">latency per query (ms) →</text>
              <text x="30" y="120" text-anchor="middle" fill="#9b99b8" transform="rotate(-90 30 120)">recall@10</text>
              <line x1="70" y1="60" x2="720" y2="60" stroke="#10b981" stroke-dasharray="5 4"/><text x="715" y="52" text-anchor="end" fill="#6ee7b7">target 0.95</text>
              <path d="M90 200 C 150 120, 220 80, 300 62 S 520 42, 700 38" fill="none" stroke="#9d5cf6" stroke-width="3"/>
              <g fill="#c4b5fd"><circle cx="90" cy="200" r="5"/><circle cx="150" cy="128" r="5"/><circle cx="215" cy="86" r="5"/><circle cx="300" cy="62" r="7" fill="#34d399"/><circle cx="450" cy="47" r="5"/><circle cx="700" cy="38" r="5"/></g>
              <text x="102" y="212" fill="#9b99b8" font-size="11">ef 8</text><text x="150" y="118" fill="#9b99b8" font-size="11">16</text><text x="215" y="76" fill="#9b99b8" font-size="11">32</text><text x="300" y="85" fill="#6ee7b7" font-size="11.5">ef 64 ← choose</text><text x="450" y="37" fill="#9b99b8" font-size="11">128</text><text x="700" y="28" fill="#9b99b8" font-size="11">512</text>
            </g>
          </svg>
          <figcaption>Example curve: after a certain point, more latency gives very little extra recall.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How to measure, step by step</h3>
          <ol class="lc-list">
            <li><strong>Collect test queries</strong> that look like real user queries. A few hundred is enough to start.</li>
            <li><strong>Ground truth:</strong> run each query with exact search (<code>"params": {"exact": true}</code> in Qdrant). Save the top-k IDs.</li>
            <li><strong>For each setting</strong> (for example hnsw_ef 16, 32, 64, 128), run the same queries. Compute recall@k against the ground truth. Write down the latency.</li>
            <li><strong>Report percentiles</strong>, not only the average. Use p50 (the typical time) and p95 or p99 (the slowest queries). Users notice the slow queries.</li>
            <li><strong>Choose</strong> the cheapest setting that meets your recall and latency goals. Check again when the data grows.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Recall is not the same as relevance</h3>
          <p>Recall@k compares the index with <em>exact search</em>. It does not tell you if exact search itself gives <em>useful</em> results. That depends on the embedding model, the chunking and the data. Measure it on its own, with "right answers" chosen by people (hit rate, Lesson 20).</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Metric</th><th>Compared with</th></tr></thead>
            <tbody>
              <tr><td>Does my index find the true nearest neighbours?</td><td>recall@k</td><td>Exact search</td></tr>
              <tr><td>Are the results really useful?</td><td>hit rate@k, MRR</td><td>Correct answers chosen by people</td></tr>
              <tr><td>Is it fast enough?</td><td>p50 / p95 latency</td><td>The maximum latency your product allows</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: order the tuning loop</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for tuning an index in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Collect realistic test queries</li>
              <li data-order="2">Compute ground truth with exact search</li>
              <li data-order="3">Run the queries with each setting you want to test</li>
              <li data-order="4">Compute recall@k and p50 / p95 latency for each setting</li>
              <li data-order="5">Pick the cheapest setting that meets both goals</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code runs all the steps on the IVF index from Lesson 14. It finds the ground truth, recall@10, and p50 / p95 latency for each <code>nprobe</code>.</li>
            <li>Then it picks the cheapest setting that reaches <code>TARGET_RECALL</code>. Change the goal to 0.99 and see how the choice changes.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Tune with real numbers. Get ground truth from exact search. Use recall@k for accuracy and p95 latency for speed. Then pick the cheapest setting that meets both. Remember: recall measures the index, not how useful the results are.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Measure recall@k and latency percentiles for each nprobe, then choose the best one.
        import numpy as np, time

        rng = np.random.default_rng(3)
        NLIST, K, TARGET_RECALL = 64, 10, 0.95
        centers = rng.normal(size=(40, 32))
        data = centers[rng.integers(0, 40, 4000)] + rng.normal(size=(4000, 32)) * 0.6
        data /= np.linalg.norm(data, axis=1, keepdims=True)
        queries = centers[rng.integers(0, 40, 60)] + rng.normal(size=(60, 32)) * 0.6
        queries /= np.linalg.norm(queries, axis=1, keepdims=True)

        # 1. ground truth with exact search
        truth = [set(np.argsort(-(data @ q))[:K].tolist()) for q in queries]

        # 2. a simple IVF index (random centroids, then improved with 5 k-means steps)
        cent = data[rng.choice(len(data), NLIST, replace=False)].copy()
        for _ in range(5):
            assign = np.argmax(data @ cent.T, axis=1)
            for j in range(NLIST):
                if (assign == j).any():
                    m = data[assign == j].mean(0); cent[j] = m / np.linalg.norm(m)
        assign = np.argmax(data @ cent.T, axis=1)
        lists = [np.where(assign == j)[0] for j in range(NLIST)]

        def ivf_search(q, nprobe):
            ids = np.concatenate([lists[j] for j in np.argsort(-(cent @ q))[:nprobe]])
            return set(ids[np.argsort(-(data[ids] @ q))[:K]].tolist())

        # 3-4. measure each setting
        rows = []
        for nprobe in [1, 2, 4, 8, 16]:
            times, recalls = [], []
            for q, t in zip(queries, truth):
                start = time.perf_counter()
                got = ivf_search(q, nprobe)
                times.append((time.perf_counter() - start) * 1000)
                recalls.append(len(got & t) / K)
            rows.append((nprobe, np.mean(recalls), np.percentile(times, 50), np.percentile(times, 95)))
            print(f"nprobe={nprobe:>2}  recall@10={rows[-1][1]:.3f}  p50={rows[-1][2]:.2f} ms  p95={rows[-1][3]:.2f} ms")

        # 5. choose
        ok = [r for r in rows if r[1] >= TARGET_RECALL]
        print("\nchoose nprobe =", ok[0][0] if ok else "none reaches the target - rebuild with other settings")
      PYTHON
    },
    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Semantic Search in Practice</h1>
        </div>
        <p class="lc-lead">A real semantic search (search by meaning) needs more than "embed and query". You clean the documents and split them into <strong>chunks</strong> (small pieces of text). Every chunk has <strong>metadata</strong> (extra facts about it) for filtering and display. Each customer's data is kept separate. You <strong>evaluate</strong> (test) the results with real questions. In this lesson you put the full pipeline together.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Ingestion pipeline: clean, chunk, embed, upsert with payload. Query pipeline: embed, filter by tenant, search, apply a threshold, show results with links.">
            <defs><marker id="v20a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="30" text-anchor="start" fill="#c4b5fd" font-weight="700">Ingestion (offline)</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#v20a)"><line x1="140" y1="70" x2="160" y2="70"/><line x1="290" y1="70" x2="310" y2="70"/><line x1="440" y1="70" x2="460" y2="70"/></g>
              <rect x="10" y="45" width="130" height="50" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="75" y="75">Load + clean</text>
              <rect x="165" y="45" width="125" height="50" rx="8" fill="#1f1f44" stroke="#9d5cf6"/><text x="227" y="75">Chunk</text>
              <rect x="315" y="45" width="125" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="377" y="75">Embed</text>
              <rect x="465" y="45" width="285" height="50" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="607" y="67">Upsert: vector + payload</text><text x="607" y="84" fill="#9b99b8" font-size="10.5">doc_id, chunk_no, title, url, tenant_id, lang</text>
              <text x="20" y="145" text-anchor="start" fill="#c4b5fd" font-weight="700">Query (online)</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#v20a)"><line x1="140" y1="185" x2="160" y2="185"/><line x1="290" y1="185" x2="310" y2="185"/><line x1="440" y1="185" x2="460" y2="185"/><line x1="590" y1="185" x2="610" y2="185"/></g>
              <rect x="10" y="160" width="130" height="50" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="75" y="190">Embed query</text>
              <rect x="165" y="160" width="125" height="50" rx="8" fill="#1f1f44" stroke="#ef4444"/><text x="227" y="182">Filter</text><text x="227" y="199" fill="#9b99b8" font-size="10.5">tenant, lang</text>
              <rect x="315" y="160" width="125" height="50" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="377" y="190">Search top-k</text>
              <rect x="465" y="160" width="125" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="527" y="182">Threshold</text><text x="527" y="199" fill="#9b99b8" font-size="10.5">+ group by doc</text>
              <rect x="615" y="160" width="135" height="50" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="682" y="182">Show results</text><text x="682" y="199" fill="#9b99b8" font-size="10.5">title, snippet, link</text>
              <text x="380" y="250" fill="#9b99b8">Same embedding model in both pipelines. Test with real questions before launch.</text>
            </g>
          </svg>
          <figcaption>Two pipelines that use the same embedding model.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Chunking in one card</h3>
          <p>An embedding model can read only a limited number of tokens (small pieces of words). Also, one vector for a 40-page document mixes all its topics together. So you split documents into <strong>chunks</strong>, often a few hundred tokens each. Chunks have a small <strong>overlap</strong> (they share a few words). This way, a sentence cut at the edge of one chunk still appears whole in another. Each chunk is its own point. Its payload points back to its document.</p>
          <p>The <em>Building RAG Applications</em> course teaches chunking methods in detail, with a live chunking visualiser.</p>
        </div>
        <div class="lc-card">
          <h3>Design choices</h3>
          <table class="lc-table">
            <thead><tr><th>Choice</th><th>Good default</th></tr></thead>
            <tbody>
              <tr><td>What to store in the payload</td><td>doc_id, chunk number, title, URL, a short snippet, language, dates, tenant_id</td></tr>
              <tr><td>The results have many chunks from one document</td><td>Group by <code>doc_id</code> (Qdrant supports grouped search), or remove duplicates in code</td></tr>
              <tr><td>Many customers share one collection</td><td>Put a <code>tenant_id</code> in every payload. Add a payload index on it. Filter on it in <em>every</em> query</td></tr>
              <tr><td>No good result</td><td>Use a score threshold (a minimum score), and show an honest "no results" message</td></tr>
              <tr><td>Exact codes, names, SKUs</td><td>Add keyword search (hybrid search, Lesson 19)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Multi-tenancy: the embedding does not keep data private</h3>
          <pre class="lc-code">
        # index the tenant field (is_tenant tells Qdrant to optimise storage for it)
        PUT /collections/docs/index
        { "field_name": "tenant_id", "field_schema": { "type": "keyword", "is_tenant": true } }

        # EVERY query includes the tenant filter, set by your server from the logged-in user,
        # never from anything the user typed
        { "query": [...], "limit": 10,
          "filter": { "must": [ { "key": "tenant_id", "match": { "value": "acme" } } ] } }</pre>
          <p>A tenant is one customer whose data shares the collection with others. If even one query forgets the filter, one customer can see another customer's documents. Put the filter in one shared function that every search uses. Then write a test for it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: order the ingestion pipeline</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the ingestion steps (the steps that load data into the database) in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Load the documents. Remove menus, footers and other repeated text</li>
              <li data-order="2">Split each document into chunks that overlap</li>
              <li data-order="3">Embed each chunk with the chosen model</li>
              <li data-order="4">Build payloads: doc_id, chunk number, title, URL, tenant_id</li>
              <li data-order="5">Upsert in batches, with IDs that do not change</li>
              <li data-order="6">Test with a set of real questions</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code splits two documents into chunks (by words, with overlap). It builds points with payloads. Then it runs a search with a tenant filter. The "embedding" here is a simple word-count vector. It takes the place of a real model.</li>
            <li>Change <code>CHUNK_WORDS</code> and <code>OVERLAP</code>. See how the number of chunks changes.</li>
            <li>Remove the tenant filter from <code>search()</code>. See how a chunk from another tenant shows up in the results.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Real semantic search is a pipeline. Clean the text, chunk it and embed it. Store useful payloads. Filter by tenant every time. Use a threshold to drop weak matches. Test with real questions.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Split into chunks -> build points with payloads -> search with a tenant filter.
        import re
        import numpy as np

        CHUNK_WORDS, OVERLAP = 12, 4

        docs = [
            {"doc_id": "d1", "tenant": "acme", "title": "Acme leave policy",
             "text": "Employees get 24 days of paid leave each year. Unused leave can be carried over "
                     "for three months. Sick leave needs a doctor's note after two days."},
            {"doc_id": "d2", "tenant": "globex", "title": "Globex leave policy",
             "text": "Globex staff receive 30 days of paid leave. Leave cannot be carried over to the next year."},
        ]

        def chunk(text):
            words = text.split()
            step = CHUNK_WORDS - OVERLAP
            return [" ".join(words[i:i + CHUNK_WORDS]) for i in range(0, max(1, len(words) - OVERLAP), step)]

        vocab = sorted({w for d in docs for w in re.findall(r"[a-z]+", d["text"].lower())})
        def embed(text):   # takes the place of a real model: normalised word counts
            v = np.array([re.findall(r"[a-z]+", text.lower()).count(w) for w in vocab], float)
            return v / (np.linalg.norm(v) or 1)

        points = []
        for d in docs:
            for n, c in enumerate(chunk(d["text"])):
                points.append({"vector": embed(c), "payload": {"doc_id": d["doc_id"], "chunk": n,
                               "title": d["title"], "tenant_id": d["tenant"], "text": c}})
        print(f"{len(points)} chunks stored")

        def search(query, tenant_id, k=2):
            q = embed(query)
            allowed = [p for p in points if p["payload"]["tenant_id"] == tenant_id]   # the tenant filter: keep only this customer's chunks
            ranked = sorted(allowed, key=lambda p: -(p["vector"] @ q))[:k]
            return [(round(float(p["vector"] @ q), 2), p["payload"]["title"], p["payload"]["text"]) for p in ranked]

        for hit in search("can unused leave be carried over", tenant_id="acme"):
            print(hit)
      PYTHON
    },
    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Vectors in RAG</h1>
        </div>
        <p class="lc-lead"><strong>Retrieval-Augmented Generation (RAG)</strong> lets a language model answer from <em>your</em> documents. A vector search finds the chunks that match the question best. Your code adds them to the prompt, with an instruction to answer only from them. The vector database is the "R" (retrieval, which means finding). The answer can only be as good as the chunks it finds.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="RAG: question, embed, vector search in Qdrant, top chunks, prompt with the chunks, language model, answer with sources.">
            <defs><marker id="v21a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#v21a)"><line x1="120" y1="90" x2="140" y2="90"/><line x1="245" y1="90" x2="265" y2="90"/><line x1="390" y1="90" x2="410" y2="90"/><line x1="530" y1="90" x2="550" y2="90"/><line x1="650" y1="115" x2="650" y2="150"/></g>
              <rect x="10" y="60" width="110" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="65" y="86" font-weight="700">Question</text><text x="65" y="104" fill="#9b99b8" font-size="10.5">"can I get a refund?"</text>
              <rect x="145" y="60" width="100" height="60" rx="10" fill="#1f1f44" stroke="#9d5cf6"/><text x="195" y="95" font-weight="700">Embed</text>
              <rect x="270" y="45" width="120" height="90" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/><text x="330" y="80" font-weight="700" fill="#f9a8d4">Qdrant</text><text x="330" y="100" fill="#9b99b8" font-size="10.5">top-k + filter</text><text x="330" y="115" fill="#9b99b8" font-size="10.5">+ threshold</text>
              <rect x="415" y="45" width="115" height="90" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="472" y="75" font-weight="700">Prompt</text><text x="472" y="95" fill="#9b99b8" font-size="10.5">question +</text><text x="472" y="110" fill="#9b99b8" font-size="10.5">numbered chunks</text>
              <rect x="555" y="60" width="195" height="55" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="652" y="92" font-weight="700">Language model</text>
              <rect x="555" y="155" width="195" height="60" rx="10" fill="rgba(16,185,129,.12)" stroke="#10b981"/><text x="652" y="180">Answer + citations</text><text x="652" y="198" fill="#9b99b8" font-size="10.5">"Yes, within 7 days [1]"</text>
              <text x="250" y="200" fill="#c4b5fd">If the right chunk isn't retrieved,</text><text x="250" y="218" fill="#c4b5fd">no prompt can fix the answer.</text>
            </g>
          </svg>
          <figcaption>Retrieve (find chunks), augment (add them to the prompt), generate (write the answer). The answer can never be better than what you retrieve.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Go through one RAG request step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="User">I paid 5 days ago and I've done 10% of the course. Can I get a refund?</li>
              <li data-kind="tool" data-label="Embed">The question becomes a vector of 384 numbers. It uses the same model as the stored chunks.</li>
              <li data-kind="tool" data-label="Qdrant query">limit 3 · filter tenant_id = "academy" · score_threshold 0.3</li>
              <li data-kind="result" data-label="Retrieved">[1] 0.74 "Refunds are available within 7 days of payment if you have completed less than 20% of a course."
        [2] 0.38 "Certificates are issued automatically when you finish every lesson…"</li>
              <li data-kind="tool" data-label="Prompt">Answer ONLY from the sources below. Cite them like [1]. If they don't contain the answer, say you don't know.
        Sources: [1] … [2] …
        Question: …</li>
              <li data-kind="answer" data-label="Model">Yes. Refunds are available within 7 days of payment if you've completed less than 20% of the course, so you qualify [1].</li>
              <li data-kind="check" data-label="Check">The citation [1] points to a real chunk from the search. That chunk supports the answer.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>What the vector database controls in RAG</h3>
          <table class="lc-table">
            <thead><tr><th>Setting</th><th>Too low</th><th>Too high</th></tr></thead>
            <tbody>
              <tr><td>top-k</td><td>The chunk with the answer is missed</td><td>Useless text in the prompt, higher cost, and the model loses focus</td></tr>
              <tr><td>Chunk size</td><td>Chunks do not have enough context</td><td>Chunks mix topics and match only loosely</td></tr>
              <tr><td>Score threshold</td><td>Chunks that do not match get in, and the model gives wrong answers that sound sure</td><td>The right chunk is removed, so the model says "I don't know"</td></tr>
            </tbody>
          </table>
          <p>When a RAG answer is wrong, <strong>check retrieval first</strong>. Was the right chunk in the list of results? If not, fix the search (model, chunking, hybrid search, reranking). Do not fix the prompt.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: where is the problem?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">A RAG bot gives a bad answer. Where is the problem?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ret" data-label="Retrieval (vector search)"></div>
              <div data-sorter-target="bucket" data-bucket="gen" data-label="Generation (prompt / model)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ret" data-why="The information never reached the model.">The correct chunk is not in the top-5 results</li>
              <li data-bucket="gen" data-why="The search worked. The model read the source wrongly or ignored it.">The correct chunk is ranked #1, but the answer says the opposite</li>
              <li data-bucket="ret" data-why="Chunks with mixed topics match loosely. They push out the exact chunks.">Each chunk is a whole 20-page document</li>
              <li data-bucket="gen" data-why="The prompt must say: use only the sources, and say so when they do not have the answer.">The model answers from general knowledge, not from the sources</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code builds the RAG prompt from the search results. It uses a threshold. It numbers the sources so the model can cite them. It also handles the case with "no sources".</li>
            <li>Raise <code>THRESHOLD</code> to 0.8. No result passes, so the prompt tells the model to say it does not know.</li>
            <li>The <em>Building RAG Applications</em> course builds the full system, including the generation step.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In RAG, the vector database decides what the model can read. Tune top-k, chunking and thresholds. When an answer is wrong, check retrieval first. Only then look at the prompt.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Turn vector-search results into a RAG prompt based only on sources (with a "no sources" case).

        THRESHOLD = 0.3
        question = "I paid 5 days ago and finished 10% of the course. Can I get a refund?"
        hits = [  # (score, payload), in the same form Qdrant returns them
            (0.74, {"title": "Refunds", "text": "Refunds are available within 7 days of payment if you have completed less than 20% of a course."}),
            (0.38, {"title": "Certificates", "text": "Certificates are issued automatically when you finish every lesson in a course."}),
            (0.21, {"title": "Offline", "text": "The mobile app works offline for lessons you have downloaded in advance."}),
        ]

        def build_prompt(question, hits):
            sources = [h for h in hits if h[0] >= THRESHOLD]
            if not sources:
                return ("No relevant sources were found. Reply: \"I don't know based on our help "
                        "articles\" and suggest contacting support.\n\nQuestion: " + question)
            numbered = "\n".join(f"[{i}] ({p['title']}) {p['text']}" for i, (_, p) in enumerate(sources, 1))
            return ("Answer ONLY from the sources below. Cite sources like [1]. If they don't "
                    "contain the answer, say you don't know.\n\n"
                    f"Sources:\n{numbered}\n\nQuestion: {question}")

        print(build_prompt(question, hits))

        # Try it: set THRESHOLD = 0.8 and run again.
      PYTHON
    },
    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Hybrid Search: Dense + Sparse</h1>
        </div>
        <p class="lc-lead">Dense embeddings (normal embeddings, where every number has a value) are very good at meaning. They are weak at exact tokens such as <code>E-4021</code>, <code>INV-20391</code> or a rare product name. <strong>Sparse vectors</strong> (BM25, SPLADE) work like keyword search. Most of their numbers are zero, and they are the opposite: good at exact words, weak at meaning. <strong>Hybrid search</strong> runs both searches. Then it fuses (merges) the two ranked lists, so you get the strengths of both.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="The query runs as a dense search and as a sparse search. The two ranked lists are merged with reciprocal rank fusion.">
            <defs><marker id="v22a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="10" y="105" width="140" height="50" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="80" y="128" text-anchor="middle" font-weight="700">Query</text><text x="80" y="145" text-anchor="middle" fill="#9b99b8" font-size="10.5">"error E-4021 on login"</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#v22a)" fill="none"><path d="M150 120 L 200 65"/><path d="M150 140 L 200 195"/><path d="M430 65 L 490 115"/><path d="M430 195 L 490 145"/></g>
              <rect x="205" y="20" width="225" height="90" rx="10" fill="#1f1f44" stroke="#9d5cf6"/><text x="317" y="42" text-anchor="middle" font-weight="700" fill="#c4b5fd">Dense (meaning)</text>
              <text x="220" y="64">1. Login problems FAQ</text><text x="220" y="82">2. Reset your password</text><text x="220" y="100">3. Error E-4021 explained</text>
              <rect x="205" y="150" width="225" height="90" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="317" y="172" text-anchor="middle" font-weight="700" fill="#fcd34d">Sparse (exact terms)</text>
              <text x="220" y="194">1. Error E-4021 explained</text><text x="220" y="212">2. Error E-4022 explained</text><text x="220" y="230">3. Login problems FAQ</text>
              <rect x="495" y="90" width="255" height="80" rx="10" fill="rgba(16,185,129,.12)" stroke="#10b981"/><text x="622" y="112" text-anchor="middle" font-weight="700" fill="#6ee7b7">RRF fused</text>
              <text x="510" y="134">1. Error E-4021 explained</text><text x="510" y="152">2. Login problems FAQ</text>
            </g>
          </svg>
          <figcaption>Results that rank high in both lists move to the top after fusion.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Reciprocal Rank Fusion (RRF)</h3>
          <p>Dense scores and sparse scores use different scales. So you cannot just add them together. RRF uses only the <strong>ranks</strong> (the positions in each list):</p>
          <pre class="lc-code">
        RRF(doc) = Σ over each list   1 / (k + rank of doc in that list)      (k is usually 60)

        "E-4021 explained": 1/(60+3) + 1/(60+1) = 0.0159 + 0.0164 = 0.0323   ← top
        "Login problems":   1/(60+1) + 1/(60+3) = 0.0164 + 0.0159 = 0.0323   ← tie, then rank order
        "Reset password":   1/(60+2)            = 0.0161</pre>
          <p>A document that both searches find scores higher than a document that only one search finds.</p>
        </div>
        <div class="lc-card">
          <h3>Hybrid search in Qdrant</h3>
          <pre class="lc-code">
        # collection with a named dense vector and a sparse vector (IDF weighting, like BM25)
        PUT /collections/help
        { "vectors": { "dense": { "size": 384, "distance": "Cosine" } },
          "sparse_vectors": { "sparse": { "modifier": "idf" } } }

        # one query: two prefetches, fused with RRF
        POST /collections/help/points/query
        { "prefetch": [
            { "query": [0.01, ...], "using": "dense", "limit": 20 },
            { "query": { "indices": [102, 5531], "values": [1.0, 1.0] }, "using": "sparse", "limit": 20 }
          ],
          "query": { "fusion": "rrf" },
          "limit": 10 }</pre>
          <p>In the sparse vector, <code>indices</code> are token IDs and <code>values</code> are weights. Libraries such as FastEmbed make BM25 or SPLADE sparse vectors for you. After fusion, many systems add a <strong>reranker</strong> (a model that sorts the results again) for the final order. The RAG course covers this.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which search is better?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">For each query, which search would work better on its own?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="dense" data-label="Dense"></div>
              <div data-sorter-target="bucket" data-bucket="sparse" data-label="Sparse"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="sparse" data-why="A rare, exact token. Keyword matching finds it exactly.">SKU "TX-889-B"</li>
              <li data-bucket="dense" data-why="It shares no words with the answer. The meaning is what matters.">"the app won't let me in"</li>
              <li data-bucket="sparse" data-why="An exact function name is a rare token.">"pd.merge_asof"</li>
              <li data-bucket="dense" data-why="The same idea, said in other words.">"ways to lower my monthly bill"</li>
            </ul>
          </div>
          <p>With hybrid search, you do not have to choose.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code ranks documents with a simple keyword score (TF-IDF). It also has a small, made-up dense ranking. Then it fuses the two with RRF.</li>
            <li>Run it for the query with an error code. Keyword search finds the exact code. Dense search finds related meaning. RRF puts the best of both at the top.</li>
            <li>Change <code>K_RRF</code> from 60 to 1. See how much more the top ranks count.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Dense vectors capture meaning. Sparse vectors capture exact words. Run both and merge them by rank with RRF. Then you can handle both "the app won't let me in" and "E-4021".
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Hybrid search: keyword (TF-IDF) ranking + dense ranking, merged with RRF.
        import math, re

        K_RRF = 60
        docs = {
            "A": "Error E-4021 explained: your session token expired during login.",
            "B": "Error E-4022 explained: the payment gateway timed out.",
            "C": "Login problems FAQ: what to do when the app won't let you sign in.",
            "D": "Reset your password from the sign-in page.",
            "E": "Download lessons for offline study.",
        }
        query = "error E-4021 on login"

        # sparse / keyword ranking (TF-IDF)
        tokens = {d: re.findall(r"[a-z0-9-]+", t.lower()) for d, t in docs.items()}
        def idf(term):
            n = sum(term in toks for toks in tokens.values())
            return math.log((len(docs) + 1) / (n + 1)) + 1
        q_terms = re.findall(r"[a-z0-9-]+", query.lower())
        kw_scores = {d: sum(toks.count(t) * idf(t) for t in q_terms) for d, toks in tokens.items()}
        sparse_rank = sorted(docs, key=lambda d: -kw_scores[d])

        # dense ranking: imagine these came from an embedding model (it ranks by meaning, not exact words)
        dense_rank = ["C", "D", "A", "B", "E"]

        def rrf(rankings, k=K_RRF):
            scores = {}
            for ranking in rankings:
                for pos, d in enumerate(ranking, start=1):
                    scores[d] = scores.get(d, 0) + 1 / (k + pos)
            return sorted(scores.items(), key=lambda x: -x[1])

        print("sparse:", sparse_rank)
        print("dense: ", dense_rank)
        for d, s in rrf([sparse_rank, dense_rank]):
            print(f"  {s:.4f}  {d}: {docs[d]}")
      PYTHON
    },
    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-vdb">Vector Databases</div>
          <h1 class="lc-title">Capstone: Semantic FAQ Search in the Vector Lab</h1>
        </div>
        <p class="lc-lead">In this final project, you build and test a real semantic search. It searches the FAQ of an online learning platform, stored in your Vector Lab. You will load the data. You will test it with questions that share almost no words with the answers. You will measure <strong>hit rate</strong> and <strong>MRR</strong> and compare distance metrics. Finally, you will find exactly where a score threshold stops working.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 170" role="img" aria-label="Project steps: reset, create collections, add FAQ, ask test questions, write down ranks, compute metrics, study the threshold.">
            <defs><marker id="v23a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#v23a)"><line x1="100" y1="75" x2="112" y2="75"/><line x1="206" y1="75" x2="218" y2="75"/><line x1="312" y1="75" x2="324" y2="75"/><line x1="418" y1="75" x2="430" y2="75"/><line x1="524" y1="75" x2="536" y2="75"/><line x1="630" y1="75" x2="642" y2="75"/></g>
              <rect x="10"  y="45" width="90" height="60" rx="10" fill="#1f1f44" stroke="#ef4444"/><text x="55" y="72" font-weight="700">1 Reset</text><text x="55" y="90" fill="#9b99b8" font-size="10.5">clean start</text>
              <rect x="116" y="45" width="90" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/><text x="161" y="72" font-weight="700">2 Create</text><text x="161" y="90" fill="#9b99b8" font-size="10.5">cosine + dot</text>
              <rect x="222" y="45" width="90" height="60" rx="10" fill="#1f1f44" stroke="#9d5cf6"/><text x="267" y="72" font-weight="700">3 Load</text><text x="267" y="90" fill="#9b99b8" font-size="10.5">10 FAQs</text>
              <rect x="328" y="45" width="90" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="373" y="72" font-weight="700">4 Ask</text><text x="373" y="90" fill="#9b99b8" font-size="10.5">10 questions</text>
              <rect x="434" y="45" width="90" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="479" y="72" font-weight="700">5 Record</text><text x="479" y="90" fill="#9b99b8" font-size="10.5">rank, score</text>
              <rect x="540" y="45" width="90" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="585" y="72" font-weight="700">6 Measure</text><text x="585" y="90" fill="#9b99b8" font-size="10.5">hit rate, MRR</text>
              <rect x="646" y="45" width="104" height="60" rx="10" fill="rgba(16,185,129,.15)" stroke="#10b981"/><text x="698" y="72" font-weight="700">7 Improve</text><text x="698" y="90" fill="#9b99b8" font-size="10.5">threshold, data</text>
              <text x="380" y="145" fill="#c4b5fd">Everything from Units 1–3, applied to one real search problem.</text>
            </g>
          </svg>
          <figcaption>The steps of the final project.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Steps 1–3 · Build the FAQ search</h3>
          <ol class="lc-list">
            <li>Press <strong>Reset lab</strong> to start clean.</li>
            <li>Create the <strong>Cosine</strong> and <strong>Dot</strong> collections.</li>
            <li>Press <strong>Add FAQ set</strong>. This embeds and stores the 10 FAQ answers.</li>
          </ol>
          <div class="lcw lcw-lab" data-controller="vector-lab" data-vector-lab-samples-label-value="Add FAQ set (10)" data-vector-lab-samples-value='["Forgot your password? Use the Forgot password link on the login page and we will email you a reset link.", "To cancel your subscription, open Settings, then Billing, and choose End plan. You keep access until the period ends.", "Refunds are available within 7 days of payment if you have completed less than 20% of a course.", "Certificates are issued automatically when you finish every lesson in a course. Download them from your profile.", "You can change the email address on your account under Settings, then Profile. We will ask you to confirm the new address.", "The mobile app works offline for lessons you have downloaded in advance over Wi-Fi.", "Group discounts: teams of 5 or more learners get 30% off annual plans. Contact sales to set it up.", "Lessons include a code editor that runs Python in your browser, so you do not need to install anything.", "If a video will not play, check your internet connection, then try another browser or clear the cache.", "We accept UPI, debit and credit cards, and net banking. Payments are processed securely by our payment partner."]'></div>
        </div>
        <div class="lc-card">
          <h3>Step 4–5 · Ask the test questions</h3>
          <p>Search each question with top-k 3. Write down the <strong>rank</strong> of the correct FAQ (1, 2, 3 or "not found"). Also write down the <strong>top score</strong>. The last two questions have <em>no</em> correct answer in the FAQ. A good search should return nothing for them.</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Question</th><th>Correct FAQ</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>I can't remember how to log in</td><td>Password reset</td></tr>
              <tr><td>2</td><td>How do I stop paying every month?</td><td>Cancel subscription</td></tr>
              <tr><td>3</td><td>I finished half the course, can I still get a refund?</td><td>Refunds</td></tr>
              <tr><td>4</td><td>Will I receive proof that I completed the course?</td><td>Certificates</td></tr>
              <tr><td>5</td><td>Can I watch lessons on my phone during a flight?</td><td>Offline app</td></tr>
              <tr><td>6</td><td>Is my card information safe with you?</td><td>Payments</td></tr>
              <tr><td>7</td><td>Who do I talk to about buying for 40 employees?</td><td>Group discounts</td></tr>
              <tr><td>8</td><td>The clip is stuck and not loading</td><td>Video won't play</td></tr>
              <tr><td>9</td><td>Do you offer courses in Tamil?</td><td><em>none</em></td></tr>
              <tr><td>10</td><td>How do I delete my account?</td><td><em>none</em></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Step 6 · Measure</h3>
          <ul class="lc-list">
            <li><strong>Hit rate@k</strong>: the share of answerable questions where the correct FAQ is in the top k.</li>
            <li><strong>MRR</strong> (mean reciprocal rank): the average of 1/rank (0 if not found). Rank 1 → 1.0, rank 2 → 0.5, rank 3 → 0.33.</li>
            <li><strong>Threshold check</strong>: is there one score that keeps every correct answer and also blocks both questions that have no answer?</li>
          </ul>
          <p>The editor below has the results we measured with this same model. Replace them with your own numbers from the lab. Then run it.</p>
        </div>
        <div class="lc-card">
          <h3>Step 7 · Improve and report</h3>
          <ol class="lc-list">
            <li>Compare the Cosine and Dot columns. Are the rankings the same? (With this model's vectors, they should be very similar.)</li>
            <li>You will probably find that a question with no answer scores <em>higher</em> than some correct answers. So no threshold can separate them. Name two fixes. For example: add FAQs for common topics (account deletion, languages), use hybrid search or a reranker, or try a stronger embedding model.</li>
            <li>Add an FAQ entry that answers question 10 (write it in the Add text box). Run the question again. Write down the new rank.</li>
            <li>Write three sentences: your hit rate@3, your MRR, and what you would change before launch.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> You only know how good a search is when you measure it. Hit rate and MRR show how often it finds the answer. Questions with no answer show if the search knows when to return nothing. Scores alone often cannot tell you this.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Final project test. Replace these values with YOUR results from the Vector Lab.
        # rank = position of the correct FAQ in the top 3 (None if not found); score = score of the top result.
        # We measured these values with all-MiniLM-L6-v2 on the Cosine collection.

        results = [
            # (question,                                     answerable, rank, top_score)
            ("I can't remember how to log in",                 True,  1, 0.641),
            ("How do I stop paying every month?",               True,  1, 0.629),
            ("I finished half the course, can I still get a refund?", True,  1, 0.747),
            ("Will I receive proof that I completed the course?", True,  1, 0.539),
            ("Can I watch lessons on my phone during a flight?", True,  1, 0.539),
            ("Is my card information safe with you?",           True,  1, 0.317),
            ("Who do I talk to about buying for 40 employees?", True,  1, 0.299),
            ("The clip is stuck and not loading",               True,  1, 0.356),
            ("Do you offer courses in Tamil?",                  False, None, 0.367),
            ("How do I delete my account?",                     False, None, 0.434),
        ]

        answerable = [r for r in results if r[1]]
        hit1 = sum(1 for r in answerable if r[2] == 1) / len(answerable)
        hit3 = sum(1 for r in answerable if r[2] and r[2] <= 3) / len(answerable)
        mrr = sum(1 / r[2] if r[2] else 0 for r in answerable) / len(answerable)
        print(f"hit rate@1 = {hit1:.2f}   hit rate@3 = {hit3:.2f}   MRR = {mrr:.2f}")

        print("\nthreshold  correct kept  unanswerable blocked")
        for t in [0.29, 0.30, 0.33, 0.36, 0.40, 0.45]:
            kept = sum(1 for r in answerable if r[3] >= t)
            blocked = sum(1 for r in results if not r[1] and r[3] < t)
            print(f"   {t:.2f}        {kept}/{len(answerable)}              {blocked}/2")
        print("\nIs there a threshold that keeps all correct answers AND blocks both unanswerable ones?")
      PYTHON
    }
  }.freeze
end

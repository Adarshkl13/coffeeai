module AiInvestingResearchContent
  # Units (sidebar dividers): 1–4 Investing and AI Basics · 5–9 Researching Companies · 10–14 Portfolios, Risk and Safety · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">How Markets and Investing Work</h1>
        </div>
        <p class="lc-lead">Before you use AI for investing, you need to know the basic parts of the market. In this lesson you will learn what shares, bonds and mutual funds are. You will learn what a stock exchange, a broker and a demat account do. You will also learn what SEBI does to protect investors. With these words clear, you can ask AI better questions and spot wrong answers. This course is education only. It is not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A buyer and a seller each place orders through a broker. The orders meet on a stock exchange, NSE or BSE. After the trade, a depository, NSDL or CDSL, holds the shares in demat accounts. SEBI watches over the exchange and the brokers.">
            <defs><marker id="inv1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="230" y="12" width="300" height="46" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="32" font-weight="700" fill="#fcd34d">SEBI: the market regulator</text>
              <text x="380" y="50" font-size="11" fill="#9b99b8">sets rules, registers brokers, acts on fraud</text>
              <g stroke="#f59e0b" stroke-width="1.2" stroke-dasharray="4 4" fill="none">
                <line x1="300" y1="58" x2="235" y2="100"/>
                <line x1="380" y1="58" x2="380" y2="100"/>
                <line x1="460" y1="58" x2="525" y2="100"/>
              </g>
              <rect x="10" y="100" width="120" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="70" y="126" font-weight="700">Buyer</text>
              <text x="70" y="146" font-size="11" fill="#9b99b8">Ananya</text>
              <rect x="160" y="100" width="130" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="225" y="126" font-weight="700">Broker</text>
              <text x="225" y="146" font-size="11" fill="#9b99b8">app or website</text>
              <rect x="320" y="100" width="120" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="126" font-weight="700">Exchange</text>
              <text x="380" y="146" font-size="11" fill="#9b99b8">NSE or BSE</text>
              <rect x="470" y="100" width="130" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="535" y="126" font-weight="700">Broker</text>
              <text x="535" y="146" font-size="11" fill="#9b99b8">app or website</text>
              <rect x="630" y="100" width="120" height="60" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="690" y="126" font-weight="700">Seller</text>
              <text x="690" y="146" font-size="11" fill="#9b99b8">another investor</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inv1a)">
                <line x1="132" y1="130" x2="156" y2="130"/>
                <line x1="292" y1="130" x2="316" y2="130"/>
                <line x1="468" y1="130" x2="444" y2="130"/>
                <line x1="628" y1="130" x2="604" y2="130"/>
                <line x1="380" y1="162" x2="380" y2="196"/>
              </g>
              <text x="390" y="184" font-size="10.5" fill="#9b99b8" text-anchor="start">trade settles</text>
              <rect x="160" y="200" width="440" height="46" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="228" font-size="12.5">Depository (NSDL or CDSL): holds shares in demat accounts</text>
              <text x="380" y="280" font-size="11" fill="#9b99b8">Sahyadri Foods Ltd (a made-up company) first sold its shares to raise money.</text>
            </g>
          </svg>
          <figcaption>You never trade with the exchange directly. You use a registered broker. Your shares are kept electronically in your demat account.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three things you can invest in</h3>
          <p>Most people start with three kinds of investments. Here they are in simple words.</p>
          <table class="lc-table">
            <thead><tr><th>Investment</th><th>What it is</th><th>How you may earn</th><th>Main risk</th></tr></thead>
            <tbody>
              <tr><td><strong>Share</strong> (also called stock or equity)</td><td>A small part of a company. You become a part-owner.</td><td>The price may rise. The company may pay a <strong>dividend</strong> (a part of its profit paid in cash).</td><td>The price can fall a lot. The company can even fail.</td></tr>
              <tr><td><strong>Bond</strong> (also called debt)</td><td>A loan you give to a company or a government.</td><td>Interest, usually at a fixed rate. You get your money back on a fixed date.</td><td>The borrower may <strong>default</strong> (fail to pay). Bond prices also move when interest rates change.</td></tr>
              <tr><td><strong>Mutual fund</strong></td><td>A pool of money from many investors. A fund house invests it in shares, bonds or both.</td><td>The value of your units rises if the fund's investments rise.</td><td>The same risks as what the fund holds, plus yearly costs.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A worked example: buying shares</h3>
          <p>Ananya is a 28-year-old software tester in London. She wants to learn how shares work. These numbers are made up.</p>
          <ul class="lc-list">
            <li>She opens a <strong>demat account</strong> (an account that holds shares electronically) and a trading account with a broker.</li>
            <li>She buys 10 shares of Sahyadri Foods Ltd at ₹250 each. She pays 10 × ₹250 = ₹2,500, plus small charges.</li>
            <li>If the price rises to ₹275, her shares are worth ₹2,750. That is a gain of ₹250, or 10%.</li>
            <li>If the price falls to ₹225, her shares are worth ₹2,250. That is a loss of ₹250, or 10%.</li>
          </ul>
          <p>The gain or loss is only "on paper" until she sells. Nobody knows which way the price will move. Not her broker, not a news channel and not an AI tool.</p>
          <p>A bond works differently. Say Coastal Cement Ltd issues a bond with a face value of ₹10,000 and 8% yearly interest. The holder gets ₹800 a year (8% of ₹10,000), if the company pays on time.</p>
        </div>
        <div class="lc-card">
          <h3>Who runs and protects the market</h3>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><strong>NSE and BSE</strong></td><td>India's main stock exchanges. They match buy and sell orders and publish prices and company announcements.</td></tr>
              <tr><td><strong>Broker</strong></td><td>A firm registered with SEBI. It sends your orders to the exchange. You use its app or website.</td></tr>
              <tr><td><strong>Depository</strong> (NSDL, CDSL)</td><td>Keeps shares in electronic form in your demat account.</td></tr>
              <tr><td><strong>SEBI</strong> (Securities and Exchange Board of India)</td><td>The regulator. It makes rules for exchanges, brokers, mutual funds and advisers. It also acts against fraud.</td></tr>
            </tbody>
          </table>
          <p>You can ask AI to explain any of these words. Compare two prompts:</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Explain the stock market.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am a beginner in India. Explain shares, bonds and mutual funds
        in simple English. Use one small example with rupee amounts for each.
        Then explain what NSE, BSE, a broker, a demat account and SEBI do.
        Do not recommend any investment.</code></pre>
          <p>AI explains general ideas well. But rules and charges change. Check details on official sites such as sebi.gov.in, the exchange websites and your broker's help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: share, bond or mutual fund?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each statement into the investment it describes.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="share" data-label="Share"></div>
              <div data-sorter-target="bucket" data-bucket="bond" data-label="Bond"></div>
              <div data-sorter-target="bucket" data-bucket="fund" data-label="Mutual fund"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="share" data-why="A share makes you a part-owner of the company.">Ananya owns 10 shares of Sahyadri Foods Ltd. She owns a tiny part of the company.</li>
              <li data-bucket="bond" data-why="This is a loan with fixed interest. That is a bond.">Coastal Cement Ltd borrows ₹10,000 from you and pays 8% interest each year.</li>
              <li data-bucket="fund" data-why="Your money joins a pool that holds many companies. That is a mutual fund.">You put ₹2,000 a month into a scheme that holds shares of 50 companies.</li>
              <li data-bucket="share" data-why="Owners of shares may get dividends from the company's profit.">If the company does well, you may get a dividend.</li>
              <li data-bucket="bond" data-why="A bond has a fixed date when the loan is paid back.">You get your money back on a fixed date, if the borrower does not default.</li>
              <li data-bucket="fund" data-why="In a mutual fund, a fund manager or an index decides what to buy.">A fund manager decides what to buy with the pooled money.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain the basic parts of the market using a simple story. Then check the answer against the points below.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient teacher of personal finance for beginners in India. Use simple English and short sentences.

        About me: [I am a salaried person in London. I have never invested in shares or mutual funds].

        Please:
        1. Explain what a share, a bond and a mutual fund are. Give a small made-up example with rupee amounts for each.
        2. Explain the job of NSE, BSE, a broker, a demat account and SEBI in one or two sentences each.
        3. Follow one made-up order: I buy 10 shares of [Sahyadri Foods Ltd, a made-up company]. Show who does what, step by step.
        4. List 3 words I should look up on official websites to learn more.

        Rules: This is education only. Do not tell me to buy or sell anything. Do not give current prices, charges or tax rates. If something depends on current rules, say "check the official website".</pre>
            <ul class="ai-try-checks">
              <li>A share is described as part-ownership and a bond as a loan.</li>
              <li>The example sums are correct (for example 10 × ₹250 = ₹2,500).</li>
              <li>SEBI is described as the regulator, not as a company that sells investments.</li>
              <li>There is no advice to buy or sell anything.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A share is ownership, a bond is a loan, and a mutual fund is a pool of both. Exchanges match orders, brokers place them, depositories hold them and SEBI sets the rules. Once you know these parts, you can tell when an AI answer mixes them up.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">What AI Can and Cannot Do for Investors</h1>
        </div>
        <p class="lc-lead">AI can be a very good research helper. It can explain terms, summarise long reports and help you plan your questions. But it is not a fortune teller. It cannot predict share prices. It may give old data or invent numbers that look real. In this lesson you will learn where AI helps, where it fails and how to check its answers. Everything in this course is education only, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Two columns. AI is a good research helper: it explains terms, summarises reports you give it, builds checklists, compares data you paste in and shows both sides. AI is not a fortune teller: it cannot predict prices, may not know today's prices or news, should not tell you what to buy, does not know your full situation and can get numbers wrong.">
            <defs><marker id="inv2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="12" width="350" height="200" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="195" y="40" font-weight="700" fill="#6ee7b7" text-anchor="middle">Good research helper</text>
              <text x="44" y="72">• Explains terms in simple words</text>
              <text x="44" y="100">• Summarises reports you give it</text>
              <text x="44" y="128">• Builds checklists and questions</text>
              <text x="44" y="156">• Compares data you paste in</text>
              <text x="44" y="184">• Shows both sides of an idea</text>
              <rect x="390" y="12" width="350" height="200" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="565" y="40" font-weight="700" fill="#f9a8d4" text-anchor="middle">Not a fortune teller</text>
              <text x="414" y="72">• Cannot predict share prices</text>
              <text x="414" y="100">• May not know today's prices or news</text>
              <text x="414" y="128">• Should not tell you what to buy</text>
              <text x="414" y="156">• Does not know your full situation</text>
              <text x="414" y="184">• Can invent numbers that look real</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inv2a)">
                <line x1="195" y1="214" x2="300" y2="236"/>
                <line x1="565" y1="214" x2="460" y2="236"/>
              </g>
              <text x="380" y="252" font-weight="700" text-anchor="middle">AI suggests. You check facts in official sources.</text>
              <text x="380" y="272" font-size="11" fill="#9b99b8" text-anchor="middle">Education only. Not investment advice.</text>
            </g>
          </svg>
          <figcaption>Use AI for understanding and planning. Use official sources for facts. Use your own judgement, or a qualified adviser, for decisions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI really helps</h3>
          <p>An AI assistant is a language model. It is very good with words and ideas. These are safe, useful jobs for it:</p>
          <ul class="lc-list">
            <li><strong>Explaining:</strong> "What does P/E mean? Show me with a small example." (P/E is the share price divided by the profit per share.)</li>
            <li><strong>Summarising:</strong> You paste in part of an annual report. AI lists the main points and risks.</li>
            <li><strong>Planning:</strong> "Give me 10 questions to research before I study a cement company."</li>
            <li><strong>Organising:</strong> You paste numbers you collected. AI puts them in a table and explains the ratios.</li>
            <li><strong>Balancing:</strong> "Give me the case for and the case against this idea." This helps you see what you missed.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Where AI fails, and why</h3>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Why it happens</th><th>What you do</th></tr></thead>
            <tbody>
              <tr><td><strong>Old data</strong></td><td>A model learns from data up to a <strong>cut-off date</strong>. It may not know recent prices, results or news.</td><td>Get prices and results from the exchange website or the company's filings.</td></tr>
              <tr><td><strong>Invented data</strong></td><td>AI predicts likely words. It can write a confident number that is simply made up. This is called a <strong>hallucination</strong>.</td><td>Never use an AI number until you find it in an official source.</td></tr>
              <tr><td><strong>Web search mistakes</strong></td><td>Some AI tools search the web. They may pick an old article, a blog or a rumour.</td><td>Open the links yourself. Check the date and who published it.</td></tr>
              <tr><td><strong>Predictions</strong></td><td>Prices depend on future events that nobody knows.</td><td>Ignore any "target price" or "will go up" from AI.</td></tr>
              <tr><td><strong>No personal context</strong></td><td>AI does not know your income, loans, goals or family needs.</td><td>For real decisions, talk to a SEBI-registered investment adviser.</td></tr>
            </tbody>
          </table>
          <p>Never paste your PAN, account numbers, passwords or real statements into a public AI tool. Use made-up sample data to learn.</p>
        </div>
        <div class="lc-card">
          <h3>Official places to check facts</h3>
          <ul class="lc-list">
            <li><strong>Company results and announcements:</strong> the NSE and BSE websites, and the company's own investor page.</li>
            <li><strong>Mutual fund NAVs and data:</strong> the AMFI website (amfiindia.com) and the fund house's factsheet.</li>
            <li><strong>Rules and registered advisers:</strong> the SEBI website (sebi.gov.in). SEBI lists registered intermediaries, such as investment advisers and brokers.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Should I buy Sahyadri Foods shares? What will the price be next year?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Explain what I should research to understand a listed food company.
        List the facts I need, and the official place to check each one.
        Do not predict prices and do not tell me to buy or sell.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the bad answer</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Ananya asks">"What is the share price and P/E of Sahyadri Foods Ltd today?"</li>
              <li data-kind="answer" data-label="AI replies">"The share price is ₹412 and the P/E is 18.5. It looks cheap for its sector."</li>
              <li data-kind="warn" data-label="Problem">The AI has no live data here. The numbers may be old or invented. "Looks cheap" is an opinion, not a fact.</li>
              <li data-kind="user" data-label="Better question">"Explain what P/E means. Tell me where to find the official latest price and profit per share."</li>
              <li data-kind="answer" data-label="AI replies">It explains P/E = price ÷ EPS (earnings per share: profit divided by the number of shares). It points to the exchange website and the latest results.</li>
              <li data-kind="tool" data-label="Ananya checks">She opens the exchange website and the company's latest results filing.</li>
              <li data-kind="result" data-label="What she finds">The price is ₹270 and the EPS for the last 12 months is ₹9. Both differ from the first AI answer.</li>
              <li data-kind="check" data-label="Her own maths">In a spreadsheet she types <code>=270/9</code>. The P/E is 30, not 18.5. She notes the date of her data.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain its own limits for a research question. Then ask it which facts you must check yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful research assistant for a beginner investor in India. Use simple English. This is education only.

        I want to understand [Coastal Cement Ltd, a made-up listed cement company].

        Please:
        1. Tell me clearly what you CAN help me with (explaining terms, planning questions, summarising text I give you).
        2. Tell me what you CANNOT do reliably (live prices, recent results, predictions, personal advice).
        3. Make a table of 6 facts I would need to research this company. Columns: Fact, Why it matters, Official place to check it (for example the NSE or BSE website, the annual report, the company's results filing).
        4. Warn me about any number you are not sure of. Do not give any number you cannot support.

        Rules: Do not predict the share price. Do not tell me to buy, sell or hold. End with one line saying this is not investment advice.</pre>
            <ul class="ai-try-checks">
              <li>The AI admits it may not have current prices or results.</li>
              <li>Each fact in the table has an official place to check it.</li>
              <li>There is no price prediction or buy or sell advice.</li>
              <li>If the AI gives any number, you treat it as unchecked until you find it in an official source.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Treat AI as a smart study partner, not as a source of facts or a tip provider. Let it explain and organise. Take every price, ratio and date from an official source, and write down the date you checked it.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Risk, Return and Time</h1>
        </div>
        <p class="lc-lead">Every investment has a link between risk and return. Investments that may earn more usually swing more in value. In this lesson you will learn what volatility and drawdowns are. You will learn why your time horizon matters. You will also learn what a risk profile is. AI can help you understand these ideas with your own made-up numbers. It cannot tell you how much risk is right for you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A line chart of two made-up funds over five years, each starting at 1 lakh rupees. Fund A rises steadily to 1,44,199 rupees. Fund B jumps up and down and ends at 1,49,175 rupees, with a 15 percent drop in year two.">
            <defs><marker id="inv3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <line x1="80" y1="230" x2="640" y2="230" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#inv3a)"/>
              <line x1="80" y1="230" x2="80" y2="40" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#inv3a)"/>
              <line x1="80" y1="50" x2="600" y2="50" stroke="#4b4a78" stroke-dasharray="3 5"/>
              <text x="72" y="234" text-anchor="end" font-size="11" fill="#9b99b8">₹1,00,000</text>
              <text x="72" y="54" text-anchor="end" font-size="11" fill="#9b99b8">₹1,50,000</text>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="80" y="250">Start</text><text x="184" y="250">Year 1</text><text x="288" y="250">Year 2</text>
                <text x="392" y="250">Year 3</text><text x="496" y="250">Year 4</text><text x="600" y="250">Year 5</text>
              </g>
              <polyline points="80,230 184,201 288,174 392,137 496,109 600,71" fill="none" stroke="#3b82f6" stroke-width="2.5"/>
              <polyline points="80,230 184,122 288,192 392,93 496,143 600,53" fill="none" stroke="#ec4899" stroke-width="2.5"/>
              <circle cx="288" cy="192" r="5" fill="none" stroke="#f59e0b" stroke-width="2"/>
              <text x="298" y="214" font-size="11" fill="#fcd34d">15% drop (drawdown)</text>
              <text x="612" y="75" fill="#93c5fd">A: ₹1,44,199</text>
              <text x="612" y="57" fill="#f9a8d4">B: ₹1,49,175</text>
              <text x="100" y="24" font-weight="700" fill="#93c5fd">Fund A: steady</text>
              <text x="240" y="24" font-weight="700" fill="#f9a8d4">Fund B: bumpy</text>
              <text x="380" y="24" font-size="11" fill="#9b99b8">Made-up funds, ₹1,00,000 each</text>
            </g>
          </svg>
          <figcaption>Fund B ended a little higher, but the path was much bumpier. Could you stay calm through that 15% drop?</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Key words in plain English</h3>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><strong>Return</strong></td><td>How much your money grew or shrank, usually as a percentage.</td></tr>
              <tr><td><strong>Risk</strong></td><td>The chance that you lose money, or that you do not reach your goal on time.</td></tr>
              <tr><td><strong>Volatility</strong></td><td>How much and how often the value goes up and down.</td></tr>
              <tr><td><strong>Drawdown</strong></td><td>A fall from the highest value to a later low, as a percentage.</td></tr>
              <tr><td><strong>Time horizon</strong></td><td>How long until you need the money.</td></tr>
              <tr><td><strong>Risk profile</strong></td><td>How much risk you can afford (capacity) and how much you can live with calmly (tolerance).</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: steady vs bumpy</h3>
          <p>These two funds are made up. Each starts with ₹1,00,000.</p>
          <table class="lc-table">
            <thead><tr><th>Year</th><th>Fund A return</th><th>Fund A value</th><th>Fund B return</th><th>Fund B value</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>+8%</td><td>₹1,08,000</td><td>+30%</td><td>₹1,30,000</td></tr>
              <tr><td>2</td><td>+7%</td><td>₹1,15,560</td><td>−15%</td><td>₹1,10,500</td></tr>
              <tr><td>3</td><td>+9%</td><td>₹1,25,960</td><td>+25%</td><td>₹1,38,125</td></tr>
              <tr><td>4</td><td>+6%</td><td>₹1,33,518</td><td>−10%</td><td>₹1,24,313</td></tr>
              <tr><td>5</td><td>+8%</td><td>₹1,44,199</td><td>+20%</td><td>₹1,49,175</td></tr>
            </tbody>
          </table>
          <p>Three lessons from this table:</p>
          <ul class="lc-list">
            <li><strong>Averages mislead.</strong> Fund B's yearly returns average 10%. But the money grew only about 8.3% a year. Losses hurt more than gains help.</li>
            <li><strong>Losses need bigger gains to recover.</strong> A 25% fall (₹1,00,000 to ₹75,000) needs a 33.3% gain to get back. A 50% fall needs a 100% gain.</li>
            <li><strong>Timing matters.</strong> If you needed Fund B's money at the end of year 2, you had ₹1,10,500. Fund A had ₹1,15,560 then.</li>
          </ul>
          <p>You can check these sums in a spreadsheet. For the yearly growth rate of Fund B, type <code>=(149175/100000)^(1/5)-1</code>. The answer is about 8.3%.</p>
        </div>
        <div class="lc-card">
          <h3>Time horizon and risk profile</h3>
          <p>Money you need soon should not depend on share prices. Prices can fall just when you need to sell. Money for goals many years away has more time to recover from falls. This is a general idea, not a rule for you.</p>
          <p>Compare Ananya and Ravi and Meena. Ananya is 28, single, with a steady salary and no loans. Ravi and Meena live in Los Angeles, have one child and pay a home loan. Ananya may have more <em>capacity</em> for risk. But her <em>tolerance</em> may still be low if falls make her panic. Both parts matter.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How much risk should I take?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Explain the difference between risk capacity and risk tolerance.
        Use this made-up person: 28, salaried, no loans, emergency fund of 6 months.
        List the questions a SEBI-registered adviser might ask to judge a risk profile.
        Do not suggest any product or percentage for me.</code></pre>
          <p>AI can explain the ideas and give you questions to think about. A real risk profile needs your full situation. For that, speak to a SEBI-registered investment adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: match the goal to its time horizon</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each goal by how soon the money is needed. The cut-offs are just a common way to group goals.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="short" data-label="Short (under 3 years)"></div>
              <div data-sorter-target="bucket" data-bucket="medium" data-label="Medium (3 to 7 years)"></div>
              <div data-sorter-target="bucket" data-bucket="long" data-label="Long (over 7 years)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="short" data-why="The fees are due within a year. A price fall would leave no time to recover.">Ravi and Meena: their child's school fees due next June</li>
              <li data-bucket="short" data-why="An emergency fund may be needed any day, so it is short term.">Ananya: an emergency fund in case she loses her job</li>
              <li data-bucket="medium" data-why="Five years away sits in the middle group.">Ananya: a down payment for a flat in 5 years</li>
              <li data-bucket="long" data-why="Fifteen years gives a lot of time for ups and downs.">Ravi and Meena: their child's college fees in 15 years</li>
              <li data-bucket="long" data-why="Ananya is 28, so retirement at 60 is more than 30 years away.">Ananya: money for retirement at age 60</li>
              <li data-bucket="medium" data-why="Four years away is a medium time horizon.">The owner of Sweet Crumbs bakery: a new oven in 4 years</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to show risk and return with made-up numbers. Then check its sums in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a finance teacher. Explain risk, return and time to a beginner in India. Use simple English and short sentences.

        Use these made-up yearly returns for two funds, each starting with Rs 1,00,000:
        Fund A: [+8%, +7%, +9%, +6%, +8%]
        Fund B: [+30%, -15%, +25%, -10%, +20%]

        Please:
        1. Make a table with the value of each fund at the end of every year.
        2. Find the biggest drawdown (fall from a high point) for each fund.
        3. Explain why the simple average return is not the same as the real yearly growth.
        4. Explain why a short time horizon makes a bumpy fund more risky.
        5. List 5 questions I can ask myself to understand my own risk tolerance.

        Rules: Show your sums. This is education only. Do not recommend any fund, product or asset mix for me.</pre>
            <ul class="ai-try-checks">
              <li>Fund A ends near ₹1,44,199 and Fund B near ₹1,49,175. Check each year in a spreadsheet.</li>
              <li>Fund B's biggest drawdown is 15% (₹1,30,000 to ₹1,10,500).</li>
              <li>The answer explains that losses need bigger gains to recover.</li>
              <li>There is no advice on what you should buy.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Return is only half the story. Ask how bumpy the path is, how deep the falls can be and when you need the money. AI can do the maths and explain the ideas, but only you (with a qualified adviser) can judge your risk profile.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Prompts for Investment Research</h1>
        </div>
        <p class="lc-lead">The way you ask decides the kind of answer you get. If you ask "Is this a good buy?", AI may simply agree with you or guess. In this lesson you will learn to write research prompts that stay neutral. You will ask for both sides of an idea. You will also ask AI to list the facts you must check and where to check them. These habits turn AI into a fair research helper instead of a tip machine.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A research prompt in five parts: set the role, give context, ask neutrally, ask for both sides, and ask for sources to check. Below, a leading question that pushes AI to agree is compared with a neutral question that gets both sides.">
            <defs><marker id="inv4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="128" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="74" y="50" font-weight="700">1. Role</text>
              <text x="74" y="72" font-size="10.5" fill="#9b99b8">research tutor</text>
              <rect x="163" y="20" width="128" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="227" y="50" font-weight="700">2. Context</text>
              <text x="227" y="72" font-size="10.5" fill="#9b99b8">goal, time, data</text>
              <rect x="316" y="20" width="128" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="50" font-weight="700">3. Neutral ask</text>
              <text x="380" y="72" font-size="10.5" fill="#9b99b8">no "good buy?"</text>
              <rect x="469" y="20" width="128" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="533" y="50" font-weight="700">4. Both sides</text>
              <text x="533" y="72" font-size="10.5" fill="#9b99b8">for and against</text>
              <rect x="622" y="20" width="128" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="686" y="50" font-weight="700">5. Sources</text>
              <text x="686" y="72" font-size="10.5" fill="#9b99b8">what to check</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inv4a)">
                <line x1="140" y1="55" x2="159" y2="55"/>
                <line x1="293" y1="55" x2="312" y2="55"/>
                <line x1="446" y1="55" x2="465" y2="55"/>
                <line x1="599" y1="55" x2="618" y2="55"/>
              </g>
              <rect x="20" y="120" width="350" height="120" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="195" y="148" font-weight="700" fill="#f9a8d4" font-size="13">Leading question</text>
              <text x="195" y="184" font-size="13">"Coastal Cement will go up, right?"</text>
              <text x="195" y="214" font-size="11" fill="#9b99b8">pushes AI to agree and to guess</text>
              <rect x="390" y="120" width="350" height="120" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="565" y="148" font-weight="700" fill="#6ee7b7" font-size="13">Neutral question</text>
              <text x="565" y="184" font-size="13">"What could help or hurt its profits?"</text>
              <text x="565" y="214" font-size="11" fill="#9b99b8">gets both sides and facts to check</text>
            </g>
          </svg>
          <figcaption>A good research prompt has five parts. The neutral question in the middle matters most.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why neutral questions matter</h3>
          <p>AI assistants often try to be helpful and agreeable. If your question already contains an opinion, the answer may simply repeat it. A <strong>leading question</strong> is a question that suggests the answer you want.</p>
          <table class="lc-table">
            <thead><tr><th>Leading question</th><th>Neutral question</th></tr></thead>
            <tbody>
              <tr><td>"Why is Sahyadri Foods a great company?"</td><td>"What are the strengths and weaknesses of Sahyadri Foods' business?"</td></tr>
              <tr><td>"Coastal Cement will go up after the new road project, right?"</td><td>"How could a new road project affect cement companies? What else could affect them?"</td></tr>
              <tr><td>"Tell me this fund is safe."</td><td>"What risks does this type of fund carry? Where can I read them in the fund documents?"</td></tr>
              <tr><td>"Which stock will double this year?"</td><td>(No good version. Nobody can know this. Skip it.)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A full research prompt, step by step</h3>
          <p>Ananya wants to understand Coastal Cement Ltd, a made-up listed company. She has copied a few numbers from its latest annual report.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is Coastal Cement a good buy?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Role: You are a neutral research tutor. Education only.
        Context: I am learning to study listed companies in India.
        Data from the annual report (made-up): revenue Rs 3,200 crore,
        net profit Rs 240 crore, debt Rs 800 crore.
        Task: Explain what these numbers tell me and what they do not.
        Give 3 points in favour of the business and 3 concerns.
        List 5 facts I should check, and the official source for each.
        Rules: No price predictions. No buy, sell or hold advice.
        Say "I am not sure" when you are not sure.</code></pre>
          <p>Notice the parts. She gives a role, her context and her own data. She asks a neutral question and asks for both sides. She asks for sources to check. She sets clear rules.</p>
          <p>One more habit: ask the AI to separate facts from opinions. For example, "Mark each point as Fact (from my data), General knowledge, or Opinion."</p>
        </div>
        <div class="lc-card">
          <h3>Asking for sources the right way</h3>
          <p>AI may invent links, report names or page numbers. So do not ask "give me links that prove this". Ask "where should I look to check this?" Then go to that place yourself.</p>
          <ul class="lc-list">
            <li>Company numbers: the annual report and results filed on the NSE or BSE website.</li>
            <li>Mutual fund data: the fund's factsheet, its scheme documents and the AMFI website.</li>
            <li>Rules and adviser registration: the SEBI website.</li>
          </ul>
          <p>If a fact matters for a decision, you must see it in the official source with your own eyes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: order a research session</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps of a careful AI research session in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down your question and what you already know.</li>
              <li data-order="2">Give the AI a role, your context and data from official sources.</li>
              <li data-order="3">Ask a neutral question, not a leading one.</li>
              <li data-order="4">Ask for the points in favour and the concerns.</li>
              <li data-order="5">Ask which facts need checking and where to check them.</li>
              <li data-order="6">Check those facts in official sources yourself.</li>
              <li data-order="7">Write your own notes. Talk to a SEBI-registered adviser before any real decision.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use this template to research any made-up or real company in a neutral way. Change the details in brackets.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">Role: You are a neutral investment research tutor. This is education only, not advice.

        Context: I am a beginner in India. I want to understand [Sahyadri Foods Ltd, a made-up listed packaged-food company].
        Data I collected (made-up): [revenue Rs 2,400 crore, net profit Rs 180 crore, debt Rs 300 crore, 3 segments: packaged snacks, dairy, exports].

        Task:
        1. Explain what my data tells me and what it does not tell me.
        2. Give 3 points in favour of the business and 3 concerns. Keep them balanced.
        3. Mark each point as Fact (from my data), General knowledge, or Opinion.
        4. List 5 facts I must check, with the official place to check each one.
        5. Suggest 3 more neutral questions I should ask next.

        Rules: Do not predict the share price. Do not say buy, sell or hold. If you are not sure, say so.</pre>
            <ul class="ai-try-checks">
              <li>The points in favour and the concerns are balanced, not one-sided.</li>
              <li>Each point is labelled Fact, General knowledge or Opinion.</li>
              <li>The sources are places you can visit yourself, such as the annual report or the exchange website.</li>
              <li>There is no price prediction and no buy, sell or hold advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ask neutral questions, ask for both sides and ask where to check. A leading question gets you an echo of your own opinion. A neutral one gets you a list of things to learn and verify.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Mutual Funds and Index Funds</h1>
        </div>
        <p class="lc-lead">Many people in India start investing through mutual funds, often with a monthly SIP. In this lesson you will learn the main types of funds. You will learn what NAV and expense ratio mean, and how a SIP works. You will also learn how index funds differ from actively managed funds. Then you will use AI to compare two funds with data you collect yourself. This is education only, not a recommendation of any fund.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Many investors, such as Ananya and Ravi and Meena, put money into one mutual fund pool run by an asset management company. The fund holds a portfolio of shares, bonds and cash. Below, the NAV formula: assets minus liabilities, divided by the number of units. Example: 52 crore minus 2 crore, divided by 4 crore units, equals 12.50 rupees per unit.">
            <defs><marker id="inv5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="140" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="80" y="45">Ananya</text>
              <rect x="10" y="75" width="140" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="80" y="100">Ravi and Meena</text>
              <rect x="10" y="130" width="140" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="80" y="155">Other investors</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inv5a)">
                <line x1="152" y1="40" x2="196" y2="78"/>
                <line x1="152" y1="95" x2="196" y2="95"/>
                <line x1="152" y1="150" x2="196" y2="112"/>
                <line x1="402" y1="95" x2="446" y2="95"/>
              </g>
              <rect x="200" y="50" width="200" height="90" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="300" y="80" font-weight="700" fill="#c4b5fd">Mutual fund</text>
              <text x="300" y="102" font-size="11" fill="#9b99b8">pooled money, split into units</text>
              <text x="300" y="122" font-size="11" fill="#9b99b8">run by a fund house (AMC)</text>
              <rect x="450" y="20" width="300" height="150" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="600" y="44" font-weight="700" fill="#93c5fd">Portfolio</text>
              <text x="600" y="74">Shares of many companies</text>
              <text x="600" y="100">Bonds</text>
              <text x="600" y="126">Some cash</text>
              <text x="600" y="154" font-size="11" fill="#9b99b8">a fund manager or an index decides</text>
              <rect x="10" y="195" width="740" height="95" rx="12" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="222" font-weight="700" fill="#fcd34d">NAV (net asset value) = (assets − liabilities) ÷ number of units</text>
              <text x="380" y="248">Example: (₹52 crore − ₹2 crore) ÷ 4 crore units = ₹12.50 per unit</text>
              <text x="380" y="274" font-size="11" fill="#9b99b8">Expense ratio: the yearly running cost, taken out of the fund before the NAV is shown</text>
            </g>
          </svg>
          <figcaption>You own units of the pool, not the shares directly. The NAV is the value of one unit. All numbers here are made up.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Key words: NAV, expense ratio and SIP</h3>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><strong>AMC</strong> (asset management company)</td><td>The fund house that runs the fund. It must be registered with SEBI.</td></tr>
              <tr><td><strong>NAV</strong> (net asset value)</td><td>The value of one unit of the fund. Funds publish it for each business day. A higher NAV does not mean a fund is "expensive" or better.</td></tr>
              <tr><td><strong>Expense ratio</strong> (TER, total expense ratio)</td><td>The yearly cost of running the fund, as a percentage of your money. It is taken out daily, before the NAV is shown.</td></tr>
              <tr><td><strong>Direct plan and regular plan</strong></td><td>The same fund in two versions. A direct plan is bought without a distributor, for example on the fund house website. It has no distributor commission, so its expense ratio is lower. A regular plan is bought through a distributor and includes a commission.</td></tr>
              <tr><td><strong>SIP</strong> (systematic investment plan)</td><td>Investing a fixed amount at regular times, for example ₹5,000 on the 5th of each month.</td></tr>
              <tr><td><strong>Exit load</strong></td><td>A fee some funds charge if you sell within a set time. Check the scheme documents.</td></tr>
              <tr><td><strong>Riskometer</strong></td><td>A SEBI-required label on every fund that shows its risk level. It has six levels: Low, Low to Moderate, Moderate, Moderately High, High and Very High.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Types of funds, and index funds</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Mainly holds</th><th>In general</th></tr></thead>
            <tbody>
              <tr><td><strong>Equity fund</strong></td><td>Shares</td><td>Higher ups and downs. Usually meant for long time horizons.</td></tr>
              <tr><td><strong>Debt fund</strong></td><td>Bonds and similar loans</td><td>Usually smaller swings, but not risk-free.</td></tr>
              <tr><td><strong>Hybrid fund</strong></td><td>A mix of shares and bonds</td><td>In between, depending on the mix.</td></tr>
              <tr><td><strong>Index fund</strong></td><td>The same shares as an index, such as the Nifty 50</td><td>Copies the index. No stock picking, so costs are usually low.</td></tr>
              <tr><td><strong>ETF</strong> (exchange traded fund)</td><td>Often an index</td><td>Trades on the exchange like a share. You need a demat account.</td></tr>
            </tbody>
          </table>
          <p>An <strong>active fund</strong> has a manager who picks investments and tries to beat an index. An <strong>index fund</strong> (a passive fund) only tries to match the index. It is not trying to beat the index. Its return is usually a little below the index, mainly because of costs. This gap is called <strong>tracking difference</strong>. How much the gap moves around is called <strong>tracking error</strong>. Fund houses publish these numbers. SEBI sets the fund categories. It revised them in February 2026, for example by adding Life Cycle Funds and removing the old solution-oriented category. Rules can change again, so check the current categories on the SEBI or AMFI website.</p>
        </div>
        <div class="lc-card">
          <h3>Worked examples: SIP and costs</h3>
          <p><strong>A SIP over four months (made-up NAVs).</strong> Ravi and Meena invest ₹5,000 each month.</p>
          <table class="lc-table">
            <thead><tr><th>Month</th><th>Amount</th><th>NAV</th><th>Units bought</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>₹5,000</td><td>₹20</td><td>250</td></tr>
              <tr><td>2</td><td>₹5,000</td><td>₹25</td><td>200</td></tr>
              <tr><td>3</td><td>₹5,000</td><td>₹16</td><td>312.5</td></tr>
              <tr><td>4</td><td>₹5,000</td><td>₹20</td><td>250</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>₹20,000</strong></td><td></td><td><strong>1,012.5</strong></td></tr>
            </tbody>
          </table>
          <p>They bought more units when the NAV was low. Their average cost is ₹20,000 ÷ 1,012.5 = about ₹19.75 per unit. The simple average NAV was ₹20.25. This effect is called <strong>rupee cost averaging</strong>. It does not guarantee a profit. If the NAV keeps falling, a SIP still loses money.</p>
          <p><strong>How costs add up.</strong> Say ₹1,00,000 grows at 10% a year before costs, for 10 years. This is simplified and made up.</p>
          <ul class="lc-list">
            <li>Expense ratio 0.2%: about 9.8% a year after costs. Final value about ₹2,54,697.</li>
            <li>Expense ratio 1.0%: about 9.0% a year after costs. Final value about ₹2,36,736.</li>
            <li>The difference is about ₹17,960, from a cost gap of just 0.8% a year.</li>
          </ul>
          <p>In a spreadsheet: <code>=100000*(1+0.098)^10</code> and <code>=100000*(1+0.09)^10</code>. Past returns do not tell you future returns. Costs, however, are known in advance.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: compare two index funds with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Collect data">Ravi and Meena open the factsheets of two made-up funds that track the same index. Fund A is a direct plan. Fund B is a regular plan.</li>
              <li data-kind="user" data-label="Their prompt">"Both funds track the Nifty 50. Fund A: expense ratio 0.20%. Fund B: expense ratio 0.80%. Explain the differences in simple words. No recommendation."</li>
              <li data-kind="answer" data-label="AI replies">Both funds hold nearly the same shares, because they copy the same index. The main difference is cost. The AI explains direct and regular plans.</li>
              <li data-kind="check" data-label="Their maths">On ₹1,00,000, 0.20% is ₹200 a year. 0.80% is ₹800 a year. The gap is ₹600 a year, before any growth.</li>
              <li data-kind="warn" data-label="Catch this">The AI adds "Fund A returned 14% last year". They never gave it that number. It may be invented, so they delete it from their notes.</li>
              <li data-kind="tool" data-label="Check officially">They check the latest NAVs on the AMFI website and the expense ratios in each fund's latest factsheet.</li>
              <li data-kind="result" data-label="What they find">Fund B's expense ratio is now 0.78%. Costs can change, so they write down the date they checked.</li>
              <li data-kind="check" data-label="Next step">They also compare tracking error and exit load. For a real decision, they plan to speak to a SEBI-registered investment adviser.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to help you compare two funds using data from their factsheets. Use made-up data first to learn.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a neutral mutual fund tutor for beginners in India. Use simple English. This is education only.

        Here is data I copied from two fund factsheets (made-up for practice):
        Fund A: [index fund, tracks Nifty 50, direct plan, expense ratio 0.20%, tracking error 0.05%, no exit load]
        Fund B: [active large-cap equity fund, regular plan, expense ratio 1.60%, exit load 1% if sold within 1 year]

        Please:
        1. Explain every term in my data in one simple sentence each.
        2. Make a table comparing the two funds on type, plan, costs and exit load.
        3. Work out the yearly cost of each fund on Rs 1,00,000. Show the sum.
        4. List 5 questions I should answer before choosing any fund (goal, time horizon, risk and so on).
        5. List which facts I must check again in the latest factsheet, the scheme documents or on the AMFI website.

        Rules: Use only my data. Do not add past returns. Do not recommend a fund.</pre>
            <ul class="ai-try-checks">
              <li>Yearly costs are correct: 0.20% of ₹1,00,000 is ₹200 and 1.60% is ₹1,600.</li>
              <li>The AI does not add returns or ratings you did not give it.</li>
              <li>Direct and regular plans are explained correctly (a regular plan includes distributor commission).</li>
              <li>There is no recommendation to pick one fund.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A mutual fund is a pool, the NAV is the value of one unit and the expense ratio is the yearly cost. You cannot control future returns, but you can see costs before you invest. Let AI explain and compare the data you collect. Always check the numbers on the fund's factsheet and the AMFI website.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Reading a Company's Annual Report</h1>
        </div>
        <p class="lc-lead">An <strong>annual report</strong> is the yearly book a listed company publishes for its shareholders. It explains what the company does, how it earned money, and what could go wrong. It is long, often 200 pages or more. In this lesson, you will learn which parts matter most. You will also learn to use AI to summarise one section at a time, and then check every number yourself. This is education only, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A map of six parts of an annual report: chairman's letter, management discussion, directors' report, financial statements, notes to accounts and auditor's report. Below, a three-step flow: pick one section, AI summarises, you check page numbers.">
            <defs><marker id="inv6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" fill="#9b99b8" font-size="12">Inside the annual report of Sahyadri Foods Ltd (made-up company)</text>
              <rect x="10" y="34" width="235" height="58" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="127" y="58" font-weight="700">Chairman's letter</text>
              <text x="127" y="78" fill="#9b99b8" font-size="11.5">the story, often very positive</text>
              <rect x="262" y="34" width="235" height="58" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="379" y="58" font-weight="700">Management Discussion</text>
              <text x="379" y="78" fill="#9b99b8" font-size="11.5">MD&amp;A: business, results, outlook</text>
              <rect x="514" y="34" width="236" height="58" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="632" y="58" font-weight="700">Directors' report</text>
              <text x="632" y="78" fill="#9b99b8" font-size="11.5">dividend, board, governance</text>
              <rect x="10" y="106" width="235" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="127" y="130" font-weight="700">Financial statements</text>
              <text x="127" y="150" fill="#9b99b8" font-size="11.5">profit and loss, balance sheet</text>
              <rect x="262" y="106" width="235" height="58" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="379" y="130" font-weight="700">Notes to accounts</text>
              <text x="379" y="150" fill="#9b99b8" font-size="11.5">debt, segments, hidden details</text>
              <rect x="514" y="106" width="236" height="58" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="632" y="130" font-weight="700">Auditor's report</text>
              <text x="632" y="150" fill="#9b99b8" font-size="11.5">any warnings from the auditor?</text>
              <rect x="30" y="210" width="200" height="50" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="130" y="240">Pick one section</text>
              <rect x="280" y="210" width="200" height="50" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="240">AI summarises it</text>
              <rect x="530" y="210" width="200" height="50" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="630" y="240">You check page numbers</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#inv6a)"><line x1="232" y1="235" x2="276" y2="235"/><line x1="482" y1="235" x2="526" y2="235"/></g>
              <text x="380" y="288" fill="#9b99b8" font-size="11.5">Work one section at a time. Never trust a number you have not found in the report.</text>
            </g>
          </svg>
          <figcaption>The six parts to know, and a safe way to use AI on them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What is inside an annual report</h3>
          <p>In India, listed companies publish their annual report on their own website, usually on an "Investors" page. You can also find it in the company's filings on the NSE and BSE websites. Always use the latest report, and note the year it covers. For example, "FY2025-26" means the financial year from April 2025 to March 2026.</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>What it tells you</th><th>What to watch for</th></tr></thead>
            <tbody>
              <tr><td><strong>Chairman's letter</strong></td><td>The company's own story of the year</td><td>It is written to sound good. Treat it as the company's view.</td></tr>
              <tr><td><strong>Management Discussion and Analysis (MD&amp;A)</strong></td><td>The business, the industry, results, risks and plans</td><td>Plans are hopes, not facts. Look for the risks they name.</td></tr>
              <tr><td><strong>Financial statements</strong></td><td>Profit and loss statement (sales, costs, profit), balance sheet (what it owns and owes), cash flow statement (cash in and out)</td><td>Standalone (the company alone) and consolidated (with its subsidiaries) numbers are different. Use the same one every time.</td></tr>
              <tr><td><strong>Notes to accounts</strong></td><td>Details behind each number: loans, segments, related party deals</td><td>Related party transactions (deals with the owners' own firms) and contingent liabilities (possible future costs, such as court cases).</td></tr>
              <tr><td><strong>Auditor's report</strong></td><td>An outside accountant's opinion on the accounts</td><td>Words like "qualified opinion" or "emphasis of matter" mean the auditor has a concern. Read that part carefully.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: Sahyadri Foods Ltd (made-up numbers)</h3>
          <p>Ananya, a software tester in London, wants to understand Sahyadri Foods Ltd. She starts with the business model: how does the company make money? The MD&amp;A says it makes packaged snacks and dairy products, and sells them through shops and online. Here is its segment information (the split of sales by business line) for FY2025-26. The amounts are in ₹ crore (1 crore = 10 million).</p>
          <table class="lc-table">
            <thead><tr><th>Segment</th><th>Revenue (₹ crore)</th><th>Share of total</th></tr></thead>
            <tbody>
              <tr><td>Packaged snacks</td><td>1,440</td><td>60%</td></tr>
              <tr><td>Dairy</td><td>720</td><td>30%</td></tr>
              <tr><td>Exports</td><td>240</td><td>10%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>2,400</strong></td><td><strong>100%</strong></td></tr>
            </tbody>
          </table>
          <p>Last year's revenue was ₹2,100 crore, so revenue grew by ₹300 crore. That is 300 ÷ 2,100 = about 14.3%. Net profit (profit after all costs and tax) rose from ₹150 crore to ₹180 crore, which is 20% growth. The MD&amp;A lists three risks: milk prices, strong competition, and a big share of sales in one state.</p>
          <p>Ananya writes these facts down with page numbers. She does not decide anything yet. One good year does not tell her if the company is a good investment.</p>
        </div>
        <div class="lc-card">
          <h3>Summarising with AI: weak and better prompts</h3>
          <p>An annual report is public, so you can paste parts of it into an AI tool. Paste one section at a time. Long files can be cut short or partly skipped by the AI without warning.</p>
          <pre><code>Weak prompt:
        Summarise Sahyadri Foods annual report. Is it a good company?</code></pre>
          <pre><code>Better prompt:
        You are a research assistant. Below is the MD&amp;A section of the
        FY2025-26 annual report of Sahyadri Foods Ltd.
        1. Explain the business model in 3 simple sentences.
        2. List each segment with its revenue, as written in the text.
        3. List every risk management mentions, with a short quote.
        4. Give the page number or heading for each point.
        Use only the text below. If something is missing, say "not found".
        Do not give an opinion on buying or selling the share.
        [paste the MD&amp;A text here]</code></pre>
          <p><strong>What you must still check:</strong></p>
          <ul class="lc-list">
            <li>Every number, against the page in the report. AI can mix up years, crore and lakh, or standalone and consolidated figures.</li>
            <li>That the quotes really appear in the report. AI sometimes writes quotes that are not there.</li>
            <li>That the AI did not add facts from its memory. Its memory may be old or wrong.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: read an annual report in a sensible order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps in a good order for studying a company's annual report with AI's help.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Download the latest annual report from the company's website or the NSE or BSE website.</li>
              <li data-order="2">Read the business overview, so you know what the company sells and to whom.</li>
              <li data-order="3">Paste the MD&amp;A section into AI and ask for a summary with quotes and page numbers.</li>
              <li data-order="4">Check each number and quote in the summary against the report.</li>
              <li data-order="5">Read the notes and the auditor's report for debt, related party deals and warnings.</li>
              <li data-order="6">Write a short note in your own words, with what you still do not understand.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste one section of any company's annual report into the prompt. If you leave it empty, the AI will use a short made-up example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient research assistant for a beginner investor. Use simple English. This is for education only, not investment advice.

        Company: [Sahyadri Foods Ltd]
        Report year: [FY2025-26]
        Section: [Management Discussion and Analysis]
        Text: [paste the section here]

        If no text is pasted above, write a short made-up MD&amp;A for this company first, and label it clearly as made up.

        Then:
        1. Explain the business model in 3 short sentences: what it sells, to whom, and how it earns money.
        2. Make a table of segments with revenue and share of total, only from the text.
        3. List every risk the text mentions, each with a short quote.
        4. List 3 questions I should answer by reading the financial statements, notes or auditor's report.

        Rules: use only the text. Write "not found" if something is missing. Do not add numbers from memory. Do not say whether to buy or sell.</pre>
            <ul class="ai-try-checks">
              <li>Every number in the table appears in the text you pasted.</li>
              <li>The quotes are real words from the text, not new sentences.</li>
              <li>The AI said "not found" instead of guessing missing facts.</li>
              <li>There is no buy or sell advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is good at turning a long section into a short, clear summary. It is not a reliable source of numbers. Use AI to find and explain, then check every figure on the page it came from.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Key Stock Ratios</h1>
        </div>
        <p class="lc-lead">A <strong>ratio</strong> is one number divided by another. Stock ratios help you compare a company's price with its profit, its assets, its debt and its dividends. In this lesson, you will learn six common ratios: EPS, P/E, P/B, ROE, debt-to-equity and dividend yield. You will work them out for two made-up companies, in a spreadsheet. You will also see why you should not let AI do the maths without checking. This is education only, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Numbers from the annual report and today's share price feed six ratio cards for Sahyadri Foods Ltd: EPS 9 rupees, P/E 30, P/B 4.5, ROE 15 percent, debt-to-equity 0.25 and dividend yield 2 percent.">
            <defs><marker id="inv7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="120" y="10" width="520" height="44" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="380" y="30" font-weight="700">Inputs: annual report + today's share price</text>
              <text x="380" y="46" fill="#9b99b8" font-size="11">Sahyadri Foods Ltd (made-up): profit ₹180 cr, 20 cr shares, price ₹270</text>
              <line x1="380" y1="56" x2="380" y2="80" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#inv7a)"/>
              <rect x="10" y="86" width="240" height="96" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="130" y="112" font-weight="700" fill="#c4b5fd">EPS</text>
              <text x="130" y="136" font-size="12">Net profit ÷ shares</text>
              <text x="130" y="162" font-size="12" fill="#9b99b8">₹180 cr ÷ 20 cr = ₹9</text>
              <rect x="260" y="86" width="240" height="96" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="112" font-weight="700" fill="#93c5fd">P/E</text>
              <text x="380" y="136" font-size="12">Share price ÷ EPS</text>
              <text x="380" y="162" font-size="12" fill="#9b99b8">₹270 ÷ ₹9 = 30</text>
              <rect x="510" y="86" width="240" height="96" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="630" y="112" font-weight="700" fill="#67e8f9">P/B</text>
              <text x="630" y="136" font-size="12">Price ÷ book value per share</text>
              <text x="630" y="162" font-size="12" fill="#9b99b8">₹270 ÷ ₹60 = 4.5</text>
              <rect x="10" y="194" width="240" height="96" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="130" y="220" font-weight="700" fill="#6ee7b7">ROE</text>
              <text x="130" y="244" font-size="12">Net profit ÷ equity</text>
              <text x="130" y="270" font-size="12" fill="#9b99b8">₹180 cr ÷ ₹1,200 cr = 15%</text>
              <rect x="260" y="194" width="240" height="96" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="220" font-weight="700" fill="#fcd34d">Debt-to-equity</text>
              <text x="380" y="244" font-size="12">Total debt ÷ equity</text>
              <text x="380" y="270" font-size="12" fill="#9b99b8">₹300 cr ÷ ₹1,200 cr = 0.25</text>
              <rect x="510" y="194" width="240" height="96" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="630" y="220" font-weight="700" fill="#f9a8d4">Dividend yield</text>
              <text x="630" y="244" font-size="12">Dividend per share ÷ price</text>
              <text x="630" y="270" font-size="12" fill="#9b99b8">₹5.40 ÷ ₹270 = 2.0%</text>
            </g>
          </svg>
          <figcaption>Six ratios for one made-up company. Each is a simple division you can do in a spreadsheet.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The six ratios in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>Ratio</th><th>Formula</th><th>What it tells you</th></tr></thead>
            <tbody>
              <tr><td><strong>EPS</strong> (earnings per share)</td><td>Net profit ÷ number of shares</td><td>How much profit belongs to one share</td></tr>
              <tr><td><strong>P/E</strong> (price-to-earnings)</td><td>Share price ÷ EPS</td><td>How many rupees you pay for ₹1 of yearly profit</td></tr>
              <tr><td><strong>P/B</strong> (price-to-book)</td><td>Share price ÷ book value per share</td><td>Price compared with the company's net worth. Book value per share = shareholders' equity ÷ shares.</td></tr>
              <tr><td><strong>ROE</strong> (return on equity)</td><td>Net profit ÷ shareholders' equity</td><td>How much profit the company makes on the owners' money</td></tr>
              <tr><td><strong>Debt-to-equity</strong></td><td>Total debt ÷ shareholders' equity</td><td>How much the company borrows compared with the owners' money</td></tr>
              <tr><td><strong>Dividend yield</strong></td><td>Dividend per share ÷ share price</td><td>The cash dividend as a percentage of the price you pay</td></tr>
            </tbody>
          </table>
          <p><strong>Shareholders' equity</strong> (also called net worth) is what the company owns minus what it owes. You find it on the balance sheet.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: two made-up companies</h3>
          <p>All numbers below are made up for learning. Amounts are in ₹ crore, except per-share values.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Sahyadri Foods Ltd</th><th>Coastal Cement Ltd</th></tr></thead>
            <tbody>
              <tr><td>Share price</td><td>₹270</td><td>₹300</td></tr>
              <tr><td>Net profit</td><td>180</td><td>240</td></tr>
              <tr><td>Number of shares (crore)</td><td>20</td><td>20</td></tr>
              <tr><td>Shareholders' equity</td><td>1,200</td><td>1,600</td></tr>
              <tr><td>Total debt</td><td>300</td><td>800</td></tr>
              <tr><td>Dividend per share</td><td>₹5.40</td><td>₹3.00</td></tr>
              <tr><td><strong>EPS</strong></td><td>180 ÷ 20 = ₹9.00</td><td>240 ÷ 20 = ₹12.00</td></tr>
              <tr><td><strong>P/E</strong></td><td>270 ÷ 9 = 30</td><td>300 ÷ 12 = 25</td></tr>
              <tr><td><strong>Book value per share</strong></td><td>1,200 ÷ 20 = ₹60</td><td>1,600 ÷ 20 = ₹80</td></tr>
              <tr><td><strong>P/B</strong></td><td>270 ÷ 60 = 4.5</td><td>300 ÷ 80 = 3.75</td></tr>
              <tr><td><strong>ROE</strong></td><td>180 ÷ 1,200 = 15%</td><td>240 ÷ 1,600 = 15%</td></tr>
              <tr><td><strong>Debt-to-equity</strong></td><td>300 ÷ 1,200 = 0.25</td><td>800 ÷ 1,600 = 0.5</td></tr>
              <tr><td><strong>Dividend yield</strong></td><td>5.40 ÷ 270 = 2.0%</td><td>3 ÷ 300 = 1.0%</td></tr>
            </tbody>
          </table>
          <p>Put the inputs in a sheet: price in B2, net profit in B3, shares in B4, equity in B5, debt in B6 and dividend per share in B7. Then use these formulas (format ROE and yield as percentages):</p>
          <pre><code>EPS              =B3/B4
        P/E              =B2/(B3/B4)
        Book value/share =B5/B4
        P/B              =B2/(B5/B4)
        ROE              =B3/B5
        Debt-to-equity   =B6/B5
        Dividend yield   =B7/B2</code></pre>
          <p>Copy the formulas to column C for Coastal Cement Ltd. The sheet does the maths the same way every time.</p>
        </div>
        <div class="lc-card">
          <h3>What ratios cannot tell you</h3>
          <ul class="lc-list">
            <li><strong>A low P/E is not automatically "cheap".</strong> Profits may be about to fall. A high P/E is not automatically "expensive". The market may expect fast growth.</li>
            <li><strong>Compare within the same industry.</strong> A cement company and a food company have very different normal ratios. The sector lesson shows how to compare fairly.</li>
            <li><strong>Your numbers may differ slightly from the company's.</strong> Companies calculate EPS using the average number of shares during the year. Websites may use the last four quarters of profit.</li>
            <li><strong>Debt-to-equity does not fit banks.</strong> For a bank like Navkar Bank (made-up), borrowing and deposits are the business itself, so other measures are used.</li>
            <li><strong>Prices change every day.</strong> Always note the date of the price you used.</li>
          </ul>
          <p>Ratios help you ask better questions. They do not tell you what to buy or sell, and no ratio can predict the share price.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check the AI's ratio maths</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Ananya's prompt">"Coastal Cement Ltd (made-up): price ₹300, net profit ₹240 crore, 20 crore shares, equity ₹1,600 crore, debt ₹800 crore, dividend ₹3 per share. Calculate EPS, P/E, P/B, ROE, debt-to-equity and dividend yield."</li>
              <li data-kind="answer" data-label="AI reply">"EPS ₹12, P/E 25, P/B 3.75, ROE 15%, debt-to-equity 2.0, dividend yield 1.0%. With a P/E of only 25, this stock looks cheap."</li>
              <li data-kind="tool" data-label="Spreadsheet">Ananya types the inputs into her sheet. She uses <code>=B6/B5</code> for debt-to-equity.</li>
              <li data-kind="result" data-label="Sheet shows">Debt-to-equity = 800 ÷ 1,600 = 0.5. The other five ratios match the AI.</li>
              <li data-kind="warn" data-label="Mistake 1">The AI divided equity by debt (1,600 ÷ 800 = 2.0). It turned the ratio upside down.</li>
              <li data-kind="warn" data-label="Mistake 2">"Looks cheap" is an opinion. A P/E means little until you compare it with similar companies and understand why it is low.</li>
              <li data-kind="check" data-label="Ananya's rule">She keeps the spreadsheet as her source of truth. She also checks the share price and its date on the NSE or BSE website.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to work out the six ratios and show every step. Then check its answers in your own spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly finance teacher. Use simple English. This is education only, not investment advice.

        Here are made-up numbers for a listed company:
        Company: [Sahyadri Foods Ltd]
        Share price: [₹270]
        Net profit: [₹180 crore]
        Number of shares: [20 crore]
        Shareholders' equity: [₹1,200 crore]
        Total debt: [₹300 crore]
        Dividend per share: [₹5.40]

        Please:
        1. Calculate EPS, P/E, book value per share, P/B, ROE, debt-to-equity and dividend yield.
        2. For each one, show the formula, the numbers you used and the answer.
        3. Explain what each ratio means in one simple sentence.
        4. Give the Excel or Google Sheets formula for each, if price is in B2, profit in B3, shares in B4, equity in B5, debt in B6 and dividend in B7.
        5. List 3 things these ratios cannot tell me.

        Do not say whether the share is cheap or expensive, and do not suggest buying or selling.</pre>
            <ul class="ai-try-checks">
              <li>Redo each ratio in your spreadsheet. The default numbers give EPS ₹9, P/E 30, P/B 4.5, ROE 15%, debt-to-equity 0.25 and yield 2.0%.</li>
              <li>Debt-to-equity is debt divided by equity, not the other way round.</li>
              <li>The spreadsheet formulas point to the right cells.</li>
              <li>There is no "cheap", "expensive", buy or sell language.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every stock ratio is one simple division. Do the maths in a spreadsheet, not in your head or in a chat. Use AI to explain what the ratios mean, and remember that a ratio is a question to explore, never a buy or sell signal.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Comparing Companies in a Sector</h1>
        </div>
        <p class="lc-lead">A ratio on its own means little. A P/E of 30 may be normal in one industry and very high in another. So investors compare a company with its <strong>peer group</strong>: other companies that do similar business. In this lesson, you will choose fair peers, build a comparison table, and think about quality compared with price. You will also use AI to spot differences and ask questions, without letting it rank or recommend. This is education only, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A chart with P/E on the horizontal axis and ROE on the vertical axis. Food Peer A has P/E 25 and ROE 12 percent. Sahyadri Foods has P/E 30 and ROE 15 percent. Food Peer B has P/E 40 and ROE 15 percent. Coastal Cement sits outside the chart as not a peer.">
            <defs><marker id="inv8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="60" y="30" width="440" height="200" fill="#1f1f44" stroke="#4b4a78"/>
              <line x1="280" y1="30" x2="280" y2="230" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <line x1="60" y1="130" x2="500" y2="130" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="70" y="50" fill="#9b99b8" font-size="11">higher ROE, lower P/E</text>
              <text x="490" y="50" fill="#9b99b8" font-size="11" text-anchor="end">higher ROE, higher P/E</text>
              <text x="70" y="220" fill="#9b99b8" font-size="11">lower ROE, lower P/E</text>
              <text x="490" y="220" fill="#9b99b8" font-size="11" text-anchor="end">lower ROE, higher P/E</text>
              <circle cx="148" cy="173" r="7" fill="#3b82f6"/><text x="160" y="177">Food Peer A</text>
              <circle cx="236" cy="87" r="7" fill="#10b981"/><text x="224" y="91" text-anchor="end">Sahyadri</text>
              <circle cx="412" cy="87" r="7" fill="#f59e0b"/><text x="400" y="91" text-anchor="end">Food Peer B</text>
              <line x1="60" y1="252" x2="500" y2="252" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#inv8a)"/>
              <text x="280" y="275" text-anchor="middle" fill="#9b99b8" font-size="11.5">P/E: the price you pay for ₹1 of profit (higher to the right)</text>
              <line x1="40" y1="230" x2="40" y2="34" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#inv8a)"/>
              <text x="28" y="130" text-anchor="middle" fill="#9b99b8" font-size="11.5" transform="rotate(-90 28 130)">ROE: quality</text>
              <rect x="540" y="30" width="210" height="96" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="645" y="54" text-anchor="middle" font-weight="700">Peer group</text>
              <text x="645" y="76" text-anchor="middle" fill="#9b99b8" font-size="11.5">food companies, similar</text>
              <text x="645" y="94" text-anchor="middle" fill="#9b99b8" font-size="11.5">products and customers</text>
              <text x="645" y="112" text-anchor="middle" fill="#9b99b8" font-size="11.5">compare these three</text>
              <rect x="540" y="140" width="210" height="90" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="5 4"/>
              <text x="645" y="164" text-anchor="middle" font-weight="700" fill="#f9a8d4">Not a peer</text>
              <text x="645" y="186" text-anchor="middle" font-size="11.5">Coastal Cement Ltd</text>
              <text x="645" y="206" text-anchor="middle" fill="#9b99b8" font-size="11.5">different business,</text>
              <text x="645" y="222" text-anchor="middle" fill="#9b99b8" font-size="11.5">different normal ratios</text>
            </g>
          </svg>
          <figcaption>Quality (ROE) against price (P/E) for three made-up food companies. A cement company does not belong in this chart.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Choosing a fair peer group</h3>
          <p>A good peer sells similar products to similar customers. It should also be roughly similar in size. For Sahyadri Foods Ltd, peers are other packaged food and dairy companies. Coastal Cement Ltd is not a peer. Cement companies need big factories and loans, and their profits rise and fall with building activity.</p>
          <ul class="lc-list">
            <li>Look at the competitors the company names in its own annual report.</li>
            <li>Check the industry or sector the stock exchange lists for each company.</li>
            <li>Use the same year for every company, for example FY2025-26.</li>
            <li>Use the same basis for every company: all consolidated or all standalone numbers.</li>
            <li>Note share prices from the same date.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: a comparison table (made-up numbers)</h3>
          <p>Ananya builds this table in a spreadsheet. "Food Peer A" and "Food Peer B" are made-up companies. She checks each ratio with the formulas from the ratios lesson.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Sahyadri Foods Ltd</th><th>Food Peer A</th><th>Food Peer B</th></tr></thead>
            <tbody>
              <tr><td>Share price</td><td>₹270</td><td>₹450</td><td>₹120</td></tr>
              <tr><td>EPS</td><td>₹9</td><td>₹18</td><td>₹3</td></tr>
              <tr><td>P/E</td><td>270 ÷ 9 = 30</td><td>450 ÷ 18 = 25</td><td>120 ÷ 3 = 40</td></tr>
              <tr><td>Book value per share</td><td>₹60</td><td>₹150</td><td>₹20</td></tr>
              <tr><td>P/B</td><td>270 ÷ 60 = 4.5</td><td>450 ÷ 150 = 3.0</td><td>120 ÷ 20 = 6.0</td></tr>
              <tr><td>ROE</td><td>15%</td><td>12%</td><td>15%</td></tr>
              <tr><td>Debt-to-equity</td><td>0.25</td><td>0.10</td><td>0.60</td></tr>
              <tr><td>Dividend yield</td><td>5.40 ÷ 270 = 2.0%</td><td>9 ÷ 450 = 2.0%</td><td>1.20 ÷ 120 = 1.0%</td></tr>
              <tr><td>Revenue growth (1 year)</td><td>14%</td><td>8%</td><td>22%</td></tr>
            </tbody>
          </table>
          <p>(ROE here is EPS ÷ book value per share, which gives the same answer as net profit ÷ equity. For example, 9 ÷ 60 = 15%.)</p>
          <p><strong>Quality compared with price:</strong> "Quality" means signs of a strong business, such as high ROE, low debt and steady growth. "Price" means how much you pay, shown by P/E and P/B. Food Peer B has the highest P/E. The market may expect its fast 22% growth to continue, but it also has the most debt. Food Peer A has the lowest P/E, but also the lowest ROE and growth. None of this says which one to buy. It tells you which questions to research next.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI for comparison: weak and better prompts</h3>
          <pre><code>Weak prompt:
        Compare Sahyadri Foods with its competitors and tell me the best stock.</code></pre>
          <pre><code>Better prompt:
        You are a research assistant. Below is my comparison table for three
        food companies (FY2025-26, consolidated, prices from [date]).
        1. Describe the main differences in simple words.
        2. For each company, give one possible reason for its P/E, and one
           question I should check in its annual report.
        3. Point out any number that looks odd or inconsistent.
        Use only my table. Do not rank the companies or recommend any.
        [paste table]</code></pre>
          <p>The weak prompt asks the AI to pick peers, find numbers and choose a winner. It may use old or invented numbers from memory. It may also pick companies from a different industry. The better prompt gives your checked numbers and asks for questions, not a verdict.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: is it a fair peer?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">You are comparing Sahyadri Foods Ltd, a packaged snacks and dairy company in India. Sort each company or data source.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="peer" data-label="Fair peer"></div>
              <div data-sorter-target="bucket" data-bucket="care" data-label="Use with care"></div>
              <div data-sorter-target="bucket" data-bucket="not" data-label="Not a peer"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="peer" data-why="Similar products, similar customers, similar size.">Food Peer A: sells packaged snacks across India</li>
              <li data-bucket="peer" data-why="Dairy and snacks overlap with Sahyadri's two biggest segments.">Food Peer B: sells dairy products and snacks in South India</li>
              <li data-bucket="not" data-why="Cement is a different business with different costs, debt levels and cycles.">Coastal Cement Ltd</li>
              <li data-bucket="not" data-why="Banks earn money from lending. Their ratios work in a different way.">Navkar Bank</li>
              <li data-bucket="care" data-why="Same industry, but its size and markets are very different. Its ratios may not be fair to compare.">A global food company 40 times bigger that sells mostly outside India</li>
              <li data-bucket="care" data-why="It may be a peer, but you must use the same year for every company.">A snacks company whose latest numbers you found are from 2021</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a comparison table and ask it to explain the differences and suggest questions. It should not choose a winner.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful equity research assistant. Use simple English. This is education only, not investment advice.

        Sector: [packaged foods in India]
        All numbers are made up, for FY2025-26:
        [Sahyadri Foods Ltd: P/E 30, P/B 4.5, ROE 15%, debt-to-equity 0.25, dividend yield 2.0%, revenue growth 14%
        Food Peer A: P/E 25, P/B 3.0, ROE 12%, debt-to-equity 0.10, dividend yield 2.0%, revenue growth 8%
        Food Peer B: P/E 40, P/B 6.0, ROE 15%, debt-to-equity 0.60, dividend yield 1.0%, revenue growth 22%]

        Please:
        1. Show the numbers in one table and add the median (middle value) for each row.
        2. For each company, explain in 2 sentences how it differs from the others on quality (ROE, debt, growth) and price (P/E, P/B).
        3. List 2 research questions for each company that I can answer from its annual report.
        4. Tell me what extra information a fair comparison needs.

        Use only my numbers. Do not rank the companies. Do not say which to buy or sell.</pre>
            <ul class="ai-try-checks">
              <li>The medians are right. With the default numbers, the median P/E is 30 and the median ROE is 15%.</li>
              <li>The AI used only your numbers and did not add new ones.</li>
              <li>The questions can be answered from public reports.</li>
              <li>There is no ranking, "best stock" or buy/sell advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A ratio only makes sense next to fair peers, from the same year and on the same basis. Collect the numbers yourself from filings. Ask AI to explain differences and suggest questions, never to pick a winner.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Reading Financial News Carefully</h1>
        </div>
        <p class="lc-lead">Financial news mixes facts, opinions and hype in the same article. A headline may say a share "will fly", while the facts inside are small and ordinary. In this lesson, you will learn to separate these three kinds of statements. You will also use AI to read the tone of an article and to find the original source. Then you will check that source yourself. This is education only, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A news headline splits into three kinds of statements. Facts: check the filing. Opinions: note who says it and why. Hype: ignore it.">
            <defs><marker id="inv9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="130" y="10" width="500" height="62" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="380" y="34" font-weight="700">"Sahyadri Foods jumps 8%! Is this the next</text>
              <text x="380" y="54" font-weight="700">multibagger? Analysts see big upside"</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inv9a)">
                <path d="M300,74 L135,112"/><line x1="380" y1="74" x2="380" y2="112"/><path d="M460,74 L625,112"/>
              </g>
              <rect x="10" y="118" width="240" height="78" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="130" y="142" font-weight="700" fill="#6ee7b7">Fact</text>
              <text x="130" y="164" font-size="12">"Revenue was ₹640 crore,</text>
              <text x="130" y="182" font-size="12">up 12% from a year ago"</text>
              <rect x="260" y="118" width="240" height="78" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="142" font-weight="700" fill="#fcd34d">Opinion</text>
              <text x="380" y="164" font-size="12">"An analyst expects profit</text>
              <text x="380" y="182" font-size="12">to double in two years"</text>
              <rect x="510" y="118" width="240" height="78" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="630" y="142" font-weight="700" fill="#f9a8d4">Hype</text>
              <text x="630" y="164" font-size="12">"Next multibagger!</text>
              <text x="630" y="182" font-size="12">Do not miss out!"</text>
              <rect x="10" y="212" width="240" height="44" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="130" y="239">Check the filing</text>
              <rect x="260" y="212" width="240" height="44" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="239">Note who says it and why</text>
              <rect x="510" y="212" width="240" height="44" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="630" y="239">Ignore it</text>
              <text x="380" y="280" fill="#9b99b8" font-size="11.5">Made-up headline about a made-up company</text>
            </g>
          </svg>
          <figcaption>Split every article into facts, opinions and hype. Each one needs a different response.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Facts, opinions and hype</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it looks like</th><th>What you do</th></tr></thead>
            <tbody>
              <tr><td><strong>Fact</strong></td><td>A number or event you can check: results, dates, a board decision, a regulator's order</td><td>Find the original source, such as the company's filing on the NSE or BSE website, and compare.</td></tr>
              <tr><td><strong>Opinion</strong></td><td>A view about the future: "expects", "could", "target price", "we believe"</td><td>Note who said it, and whether they gain if you act on it. An opinion can be wrong.</td></tr>
              <tr><td><strong>Hype</strong></td><td>Emotional words with no evidence: "rocket", "sure shot", "multibagger", "last chance"</td><td>Ignore it. Pressure to act fast is a warning sign.</td></tr>
            </tbody>
          </table>
          <p>A <strong>multibagger</strong> is slang for a share that rises many times in value. Articles use the word to excite readers. Nobody can know in advance which share will do this. AI cannot predict share prices either.</p>
        </div>
        <div class="lc-card">
          <h3>Sentiment, and why tone is not truth</h3>
          <p><strong>Sentiment</strong> means the tone of an article: positive, negative or neutral. AI is good at labelling tone and pulling out claims. But a positive tone does not mean the company is doing well. Also, by the time you read good news, the share price may already include it.</p>
          <p>Watch for these common problems:</p>
          <ul class="lc-list">
            <li><strong>Headline and body do not match.</strong> The headline says "jumps", but the body says the share rose 8% for one day.</li>
            <li><strong>Old news shared again.</strong> Always check the date of the article and the date of the event.</li>
            <li><strong>Paid or sponsored content.</strong> Look for labels like "sponsored", "advertorial" or "partner content".</li>
            <li><strong>Screenshots and forwards.</strong> A screenshot on WhatsApp or social media can be edited or fake.</li>
            <li><strong>AI without web access.</strong> It may not know recent news at all, or may mix up two events. Even with web search, open the links yourself.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Using AI to read news: weak and better prompts</h3>
          <pre><code>Weak prompt:
        Is this news good for Sahyadri Foods share price? Should I buy?</code></pre>
          <pre><code>Better prompt:
        Below is a news article. Please:
        1. List every factual claim, with the source the article gives.
        2. List every opinion or prediction, and who made it.
        3. List any hype words or pressure to act fast.
        4. Label the overall tone: positive, negative or neutral.
        5. Tell me which original documents I should check, such as the
           company's quarterly results on the NSE or BSE website.
        Do not predict the share price. Do not give buy or sell advice.
        [paste article]</code></pre>
          <p>After the AI replies, open the company's filing yourself. Compare the numbers. In a made-up example, the filing shows revenue of ₹640 crore, up 12%. But profit is up only 3%, which the article did not mention. That is a useful finding.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fact, opinion or hype?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort these made-up lines from news stories about Sahyadri Foods Ltd.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fact" data-label="Fact"></div>
              <div data-sorter-target="bucket" data-bucket="opinion" data-label="Opinion"></div>
              <div data-sorter-target="bucket" data-bucket="hype" data-label="Hype"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fact" data-why="You can check this number in the quarterly results filed with the exchanges.">The company reported quarterly revenue of ₹640 crore.</li>
              <li data-bucket="fact" data-why="Board decisions like dividends are announced to the stock exchanges.">The board announced a dividend of ₹5.40 per share.</li>
              <li data-bucket="opinion" data-why="This is a view about the future from one person.">A brokerage analyst expects profit to double in two years.</li>
              <li data-bucket="opinion" data-why="A target price is a forecast. It can be wrong.">The article says the fair value of the share is ₹400.</li>
              <li data-bucket="hype" data-why="Emotional words and no evidence.">This rocket stock is ready to fly. Do not miss out!</li>
              <li data-bucket="hype" data-why="Pressure to act fast is a common sign of a tip or a scam.">Buy before Monday or you will regret it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a real financial news article, or leave the brackets and let the AI use a made-up one. Then check the facts it lists against the original source.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful news-reading assistant for a beginner investor. Use simple English. This is education only, not investment advice.

        Article: [paste a financial news article here]

        If no article is pasted, write a short made-up news article (about 120 words) about a made-up company called Sahyadri Foods Ltd. Mix facts, opinions and hype, and label it as made up.

        Then make a table with these columns: Statement, Type (fact, opinion or hype), Who said it, How I can check it.
        After the table:
        1. Label the overall tone: positive, negative or neutral. Give one reason.
        2. Say if the headline matches the body of the article.
        3. List the original documents or official websites I should check (for example the company's filing on the NSE or BSE website).
        4. List anything important the article does not say.

        Do not predict the share price. Do not say whether to buy or sell.</pre>
            <ul class="ai-try-checks">
              <li>Each "fact" is something you could check in a filing or official source.</li>
              <li>Predictions and target prices are marked as opinions.</li>
              <li>The AI did not invent a source, date or number.</li>
              <li>There is no price prediction or buy/sell advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Read news in three layers: facts to check, opinions to weigh, and hype to ignore. AI can sort an article into these layers quickly. The original filing, not the article or the AI, is where you confirm the facts.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Diversification and Asset Allocation</h1>
        </div>
        <p class="lc-lead"><strong>Diversification</strong> means spreading your money, so one bad investment cannot hurt you too much. <strong>Asset allocation</strong> means deciding how much of your money goes into each type of asset, such as shares, bonds and gold. In this lesson, you will learn both ideas with simple numbers. You will also learn <strong>rebalancing</strong>: bringing your mix back to your plan after markets move. You will use a spreadsheet and AI to do the maths. This is education only, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Three stacked bars. Target: 60 percent equity, 30 percent debt, 10 percent gold. After one year: 65 percent equity, 25.8 percent debt, 9.2 percent gold. After rebalancing: back to 60, 30 and 10 percent.">
            <defs><marker id="inv10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="130" y="12" width="14" height="14" rx="3" fill="#3b82f6" fill-opacity="0.45" stroke="#3b82f6"/><text x="152" y="24">Equity funds</text>
              <rect x="290" y="12" width="14" height="14" rx="3" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/><text x="312" y="24">Debt funds</text>
              <rect x="440" y="12" width="14" height="14" rx="3" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/><text x="462" y="24">Gold</text>
              <text x="120" y="73" text-anchor="end">Target</text>
              <rect x="130" y="50" width="336" height="36" fill="#3b82f6" fill-opacity="0.45" stroke="#3b82f6"/>
              <rect x="466" y="50" width="168" height="36" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/>
              <rect x="634" y="50" width="56" height="36" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/>
              <text x="298" y="73" text-anchor="middle">60%</text><text x="550" y="73" text-anchor="middle">30%</text><text x="662" y="73" text-anchor="middle">10%</text>
              <text x="700" y="73" fill="#9b99b8">₹10 L</text>
              <text x="120" y="141" text-anchor="end">After 1 year</text>
              <rect x="130" y="118" width="364" height="36" fill="#3b82f6" fill-opacity="0.45" stroke="#3b82f6"/>
              <rect x="494" y="118" width="145" height="36" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/>
              <rect x="639" y="118" width="51" height="36" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/>
              <text x="312" y="141" text-anchor="middle">65%</text><text x="566" y="141" text-anchor="middle">25.8%</text><text x="664" y="141" text-anchor="middle">9.2%</text>
              <text x="700" y="141" fill="#9b99b8">₹12 L</text>
              <line x1="720" y1="158" x2="720" y2="190" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#inv10a)"/>
              <text x="410" y="177" text-anchor="middle" fill="#9b99b8" font-size="11.5">Move ₹60,000 out of equity: ₹50,000 to debt, ₹10,000 to gold</text>
              <text x="120" y="221" text-anchor="end">Rebalanced</text>
              <rect x="130" y="198" width="336" height="36" fill="#3b82f6" fill-opacity="0.45" stroke="#3b82f6"/>
              <rect x="466" y="198" width="168" height="36" fill="#10b981" fill-opacity="0.45" stroke="#10b981"/>
              <rect x="634" y="198" width="56" height="36" fill="#f59e0b" fill-opacity="0.45" stroke="#f59e0b"/>
              <text x="298" y="221" text-anchor="middle">60%</text><text x="550" y="221" text-anchor="middle">30%</text><text x="662" y="221" text-anchor="middle">10%</text>
              <text x="700" y="221" fill="#9b99b8">₹12 L</text>
              <text x="410" y="254" text-anchor="middle" fill="#9b99b8" font-size="11">Made-up portfolio of Ravi and Meena (L = lakh)</text>
            </g>
          </svg>
          <figcaption>Markets move your mix away from your plan. Rebalancing brings it back.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Diversification: do not depend on one thing</h3>
          <p>Suppose Ananya puts all her savings into Sahyadri Foods Ltd shares. If the share falls 40%, her whole portfolio falls 40%. Now suppose that share is only 10% of her portfolio. The same 40% fall costs her portfolio 10% × 40% = 4%.</p>
          <p>You can diversify in several ways:</p>
          <ul class="lc-list">
            <li><strong>Across companies and sectors.</strong> A diversified mutual fund or index fund holds many companies in one product.</li>
            <li><strong>Across asset types.</strong> Shares, bonds and gold often do not rise and fall at the same time.</li>
            <li><strong>Across time.</strong> A SIP (systematic investment plan: a fixed amount invested every month) buys at many different prices.</li>
          </ul>
          <p>Diversification lowers the damage from one bad company. It does not remove market risk. When the whole market falls, most shares fall together.</p>
        </div>
        <div class="lc-card">
          <h3>Asset allocation: your mix of asset types</h3>
          <table class="lc-table">
            <thead><tr><th>Asset type</th><th>Examples</th><th>Usual role</th><th>Main risks</th></tr></thead>
            <tbody>
              <tr><td><strong>Equity</strong></td><td>Shares, equity mutual funds, index funds</td><td>Growth over many years</td><td>Large falls that can last years</td></tr>
              <tr><td><strong>Debt</strong></td><td>Fixed deposits, bonds, debt funds</td><td>Steadier value and income</td><td>Returns may not beat inflation. The borrower may fail to repay (credit risk).</td></tr>
              <tr><td><strong>Gold</strong></td><td>Gold funds, gold ETFs</td><td>Often moves differently from shares</td><td>Can fall or stay flat for years</td></tr>
              <tr><td><strong>Cash</strong></td><td>Savings account, emergency fund</td><td>Money for emergencies and short-term needs</td><td>Loses value to inflation over time</td></tr>
            </tbody>
          </table>
          <p>The right mix depends on your goals and your time horizon (how long before you need the money). It also depends on your risk profile (how much loss you can handle). There is no single correct mix. A SEBI-registered investment adviser can help you choose one for your own situation.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: rebalancing (made-up numbers)</h3>
          <p>Ravi and Meena, a couple in Los Angeles, chose a target mix with their adviser: 60% equity funds, 30% debt funds and 10% gold. They started with ₹10,00,000. After one year, markets have moved:</p>
          <table class="lc-table">
            <thead><tr><th>Asset</th><th>Value now</th><th>Share now</th><th>Target</th><th>Target value</th><th>Change needed</th></tr></thead>
            <tbody>
              <tr><td>Equity funds</td><td>₹7,80,000</td><td>65.0%</td><td>60%</td><td>₹7,20,000</td><td>−₹60,000</td></tr>
              <tr><td>Debt funds</td><td>₹3,10,000</td><td>25.8%</td><td>30%</td><td>₹3,60,000</td><td>+₹50,000</td></tr>
              <tr><td>Gold</td><td>₹1,10,000</td><td>9.2%</td><td>10%</td><td>₹1,20,000</td><td>+₹10,000</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>₹12,00,000</strong></td><td>100%</td><td>100%</td><td>₹12,00,000</td><td>₹0</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, put values in B2:B4 and target percentages in D2:D4. Then use:</p>
          <pre><code>Share now      =B2/SUM($B$2:$B$4)
        Target value   =D2*SUM($B$2:$B$4)
        Change needed  =D2*SUM($B$2:$B$4)-B2</code></pre>
          <p>There are two common ways to rebalance. You can sell some of the asset that grew and buy the others. Or you can send new money, such as the next few SIPs, only to the assets that are below target. Selling can mean tax and exit loads (a fee some funds charge if you sell early). Rules change, so check with a chartered accountant. Many people rebalance once a year, or when an asset is 5 percentage points or more away from its target.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: rebalance in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these rebalancing steps for Ravi and Meena in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down the target mix they agreed with their adviser: 60% equity, 30% debt, 10% gold.</li>
              <li data-order="2">Note the current value of each holding from their statements, on the same date.</li>
              <li data-order="3">Calculate the share of each asset and the change needed in a spreadsheet.</li>
              <li data-order="4">Ask AI to explain the result and double-check the maths, using made-up or rounded numbers only.</li>
              <li data-order="5">Choose how to rebalance: redirect new SIPs, or sell and buy, after checking tax and exit loads.</li>
              <li data-order="6">Set a date to review the mix again, for example in one year.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain diversification and calculate a rebalancing plan for a sample portfolio. Use made-up numbers, not your real account details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly personal finance teacher. Use simple English. This is education only, not investment advice.

        Sample portfolio (made-up numbers):
        [Equity funds: ₹7,80,000
        Debt funds: ₹3,10,000
        Gold funds: ₹1,10,000]
        Target mix: [60% equity, 30% debt, 10% gold]

        Please:
        1. Explain diversification and asset allocation in 3 short sentences each.
        2. Make a table: asset, value now, share now (%), target (%), target value, change needed. Show the total row.
        3. Show the working for each calculation.
        4. Explain two ways to rebalance: selling and buying, or sending new SIP money to the assets below target. Give one pro and one con for each.
        5. List what I should check with a chartered accountant or a SEBI-registered investment adviser before acting.

        Do not name specific funds or shares. Do not tell me what my target mix should be.</pre>
            <ul class="ai-try-checks">
              <li>The changes add up to zero. With the default numbers: equity −₹60,000, debt +₹50,000, gold +₹10,000.</li>
              <li>Each "share now" is the value divided by the total (₹12,00,000 by default).</li>
              <li>The AI did not name funds or suggest a target mix.</li>
              <li>Tax and exit loads are mentioned as things to check, not stated as exact rates.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Diversification limits the damage from one bad investment. Asset allocation sets your overall mix, and rebalancing keeps that mix on plan. The mix is your decision, ideally with a qualified adviser. A spreadsheet and AI can do the maths, but they cannot choose your goals for you.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Reviewing a Portfolio with AI</h1>
        </div>
        <p class="lc-lead">A <strong>portfolio</strong> is everything you have invested in, taken together. Once or twice a year, it helps to look at the whole picture. Is too much money in one place? Do two funds hold the same shares? How much do you pay in fund costs? In this lesson, you will review a made-up portfolio with a spreadsheet and an AI assistant. You will use sample data only. This is education, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Ananya's sample portfolio of three funds and one share feeds four checks: concentration, overlap, costs and fit with her goal. The checks lead to notes and questions for her own review or for a SEBI-registered adviser.">
            <defs><marker id="inv11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="170" height="210" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="95" y="46" font-weight="700">Sample portfolio</text>
              <text x="95" y="66" font-size="11" fill="#9b99b8">made-up data</text>
              <g font-size="11.5" text-anchor="start">
                <text x="24" y="100">Fund A  ₹1,20,000</text>
                <text x="24" y="128">Fund B  ₹80,000</text>
                <text x="24" y="156">Fund C  ₹50,000</text>
                <text x="24" y="184">Sahyadri shares</text>
                <text x="24" y="200">₹50,000</text>
              </g>
              <rect x="220" y="20" width="280" height="42" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="360" y="46" font-size="12.5">Concentration: too much in one?</text>
              <rect x="220" y="76" width="280" height="42" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="360" y="102" font-size="12.5">Overlap: same shares twice?</text>
              <rect x="220" y="132" width="280" height="42" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="360" y="158" font-size="12.5">Costs: weighted expense ratio</text>
              <rect x="220" y="188" width="280" height="42" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="360" y="214" font-size="12.5">Fit: matches goal and time?</text>
              <rect x="545" y="60" width="205" height="130" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="647" y="92" font-weight="700" fill="#6ee7b7">Your notes</text>
              <text x="647" y="118" font-size="12">questions for your own</text>
              <text x="647" y="138" font-size="12">review or for a</text>
              <text x="647" y="158" font-size="12">SEBI-registered adviser</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inv11a)">
                <line x1="182" y1="125" x2="216" y2="41"/>
                <line x1="182" y1="125" x2="216" y2="97"/>
                <line x1="182" y1="125" x2="216" y2="153"/>
                <line x1="182" y1="125" x2="216" y2="209"/>
                <line x1="502" y1="41" x2="541" y2="90"/>
                <line x1="502" y1="97" x2="541" y2="115"/>
                <line x1="502" y1="153" x2="541" y2="137"/>
                <line x1="502" y1="209" x2="541" y2="162"/>
              </g>
            </g>
          </svg>
          <figcaption>A portfolio review asks four simple questions. The answers become notes and questions, not buy or sell orders.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The sample portfolio</h3>
          <p>Ananya is a 28-year-old software tester in London. Her made-up portfolio is worth ₹3,00,000. The fund names are made up too.</p>
          <table class="lc-table">
            <thead><tr><th>Holding</th><th>Type</th><th>Value (₹)</th><th>Share of total</th><th>Expense ratio</th></tr></thead>
            <tbody>
              <tr><td>Fund A</td><td>Large-cap index fund, direct plan</td><td>1,20,000</td><td>40%</td><td>0.20%</td></tr>
              <tr><td>Fund B</td><td>Large-cap active fund, regular plan</td><td>80,000</td><td>26.7%</td><td>1.60%</td></tr>
              <tr><td>Fund C</td><td>Flexi-cap active fund, regular plan</td><td>50,000</td><td>16.7%</td><td>1.10%</td></tr>
              <tr><td>Sahyadri Foods Ltd</td><td>Shares of one company</td><td>50,000</td><td>16.7%</td><td>none</td></tr>
            </tbody>
          </table>
          <p>The <strong>expense ratio</strong> is the yearly fee a fund takes, as a percentage of your money in it. A <strong>direct plan</strong> is bought without a distributor, for example on the fund house website. A <strong>regular plan</strong> is bought through a distributor, and it usually has a higher expense ratio because it includes the distributor's commission. These numbers are examples. Always check the fund's latest factsheet.</p>
        </div>
        <div class="lc-card">
          <h3>Check 1 and 2: concentration and overlap</h3>
          <p><strong>Concentration</strong> means a large part of your money depends on one company, one sector or one fund. Ananya holds Sahyadri Foods shares directly. But her funds may hold it too. Adding up both is called a <strong>look-through</strong> view.</p>
          <table class="lc-table">
            <thead><tr><th>Top holdings (sample)</th><th>Weight in Fund A</th><th>Weight in Fund B</th><th>Common part</th></tr></thead>
            <tbody>
              <tr><td>Navkar Bank</td><td>9%</td><td>8%</td><td>8%</td></tr>
              <tr><td>Coastal Cement Ltd</td><td>6%</td><td>7%</td><td>6%</td></tr>
              <tr><td>Sahyadri Foods Ltd</td><td>5%</td><td>3%</td><td>3%</td></tr>
              <tr><td>Other companies</td><td>80%</td><td>82%</td><td>not checked yet</td></tr>
            </tbody>
          </table>
          <p><strong>Overlap</strong> is how much two funds hold the same shares. For each common share, take the smaller of the two weights. Then add them up. Here, the top holdings alone give 8 + 6 + 3 = 17%. Two large-cap funds often overlap a lot, so the second fund may add less variety than you think.</p>
          <p>Look-through for Sahyadri Foods: ₹50,000 direct, plus 5% of ₹1,20,000 (₹6,000), plus 3% of ₹80,000 (₹2,400). That is ₹58,400, or about 19.5% of the portfolio.</p>
          <p>Get the holdings from each fund's latest monthly portfolio disclosure on the fund house website. Do not trust holdings that an AI tool "remembers". They may be old or invented.</p>
        </div>
        <div class="lc-card">
          <h3>Check 3 and 4: costs and fit</h3>
          <p>A <strong>weighted expense ratio</strong> is the average fee across all your funds, where bigger holdings count more. Put the fund values in B2:B4 and the expense ratios in C2:C4. Then use this formula in Excel or Google Sheets:</p>
          <pre><code>=SUMPRODUCT(B2:B4,C2:C4)/SUM(B2:B4)</code></pre>
          <p>For Ananya's funds: (1,20,000 × 0.20% + 80,000 × 1.60% + 50,000 × 1.10%) ÷ 2,50,000. That is ₹2,070 ÷ ₹2,50,000, or about 0.83% a year. So her funds cost roughly ₹2,070 a year at today's values.</p>
          <p><strong>Fit</strong> means the portfolio matches her goal, her time horizon (how many years until she needs the money) and her comfort with ups and downs. Only Ananya, or an adviser who knows her full situation, can judge this.</p>
          <pre><code>Weak:
        Is my portfolio good? What should I sell?

        Better:
        Here is a made-up portfolio table with values, fund types,
        expense ratios and top holdings. Do not tell me what to buy
        or sell. Instead: 1) show the share of each holding,
        2) find overlap between funds, 3) show your cost maths step
        by step, 4) list questions I should ask a SEBI-registered
        adviser. Mark anything you are not sure about.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Walk through a review session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">Ananya types her made-up holdings, values and expense ratios into a sheet. She adds each fund's top holdings from the fund house's latest factsheet.</li>
              <li data-kind="user" data-label="Prompt">She pastes the table into an AI assistant. She asks for concentration, overlap and cost maths, with no buy or sell advice.</li>
              <li data-kind="answer" data-label="AI reply">The AI says Fund A and Fund B share three top holdings, with about 17% overlap. It says the weighted expense ratio is 0.83%.</li>
              <li data-kind="check" data-label="Check the maths">She runs =SUMPRODUCT(B2:B4,C2:C4)/SUM(B2:B4) herself. It gives 0.83%, so the AI's number matches.</li>
              <li data-kind="warn" data-label="Catch a mistake">The AI also says "Fund C holds 12% in Navkar Bank". Fund C's holdings were never in her table. She marks this as unchecked and looks at the real factsheet.</li>
              <li data-kind="result" data-label="Notes">She writes three questions for a SEBI-registered adviser: about overlap, the regular plans and her single-share holding.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a made-up portfolio. Use sample data only, never your real account details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient teacher who explains investing to beginners in India. This is education only. Do not recommend buying or selling anything.

        Review this made-up portfolio of [Ananya, 28, salaried, goal: house in 10 years]:
        - Fund A: large-cap index fund, direct plan, ₹1,20,000, expense ratio 0.20%
        - Fund B: large-cap active fund, regular plan, ₹80,000, expense ratio 1.60%
        - Fund C: flexi-cap active fund, regular plan, ₹50,000, expense ratio 1.10%
        - Shares of Sahyadri Foods Ltd: ₹50,000
        Top holdings: Fund A has Navkar Bank 9%, Coastal Cement 6%, Sahyadri Foods 5%. Fund B has Navkar Bank 8%, Coastal Cement 7%, Sahyadri Foods 3%.

        Please:
        1. Show each holding's share of the total in a table.
        2. Work out the overlap between Fund A and Fund B from the top holdings. Show the steps.
        3. Work out the weighted expense ratio and the yearly cost in rupees. Show the steps.
        4. Work out the look-through amount in Sahyadri Foods.
        5. List 4 questions to ask a SEBI-registered investment adviser.
        Use only the data above. Say clearly where you are unsure.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate the shares, overlap and cost in a spreadsheet</li>
              <li>The AI used only the data you gave, with no invented holdings</li>
              <li>There is no buy, sell or switch recommendation</li>
              <li>The questions for the adviser are clear and specific</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A portfolio review is a set of simple checks: concentration, overlap, costs and fit. AI can do the first draft of the maths and the questions. You must check the numbers and the holdings yourself, and real changes need a qualified adviser.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Behavioural Mistakes</h1>
        </div>
        <p class="lc-lead">Most investing mistakes do not come from bad maths. They come from feelings. Fear makes people sell after prices fall. Greed makes people buy after prices rise. Tips from friends make people act without research. In this lesson, you will learn the common <strong>behavioural mistakes</strong> (errors caused by emotions and habits). You will also use AI as a calm second voice and build a short checklist to use before you act. This is education, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="The emotion cycle. Prices rise fast, greed leads to buying near the top, prices fall, fear leads to selling near the bottom, and the cycle repeats. In the centre, a written plan and a 24-hour pause break the cycle.">
            <defs><marker id="inv12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="40" y="30" width="230" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="155" y="54" font-weight="700">Prices rise fast</text>
              <text x="155" y="74" font-size="11" fill="#9b99b8">friends talk about gains</text>
              <rect x="490" y="30" width="230" height="58" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="605" y="54" font-weight="700" fill="#fcd34d">Greed: buy near the top</text>
              <text x="605" y="74" font-size="11" fill="#9b99b8">fear of missing out</text>
              <rect x="490" y="194" width="230" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="605" y="218" font-weight="700">Prices fall</text>
              <text x="605" y="238" font-size="11" fill="#9b99b8">news turns scary</text>
              <rect x="40" y="194" width="230" height="58" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="155" y="218" font-weight="700" fill="#f9a8d4">Fear: sell near the bottom</text>
              <text x="155" y="238" font-size="11" fill="#9b99b8">the loss becomes real</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inv12a)">
                <line x1="272" y1="59" x2="486" y2="59"/>
                <line x1="605" y1="90" x2="605" y2="190"/>
                <line x1="488" y1="223" x2="274" y2="223"/>
                <line x1="155" y1="192" x2="155" y2="92"/>
              </g>
              <rect x="285" y="108" width="190" height="66" rx="10" fill="#1f1f44" stroke="#10b981" stroke-dasharray="5 4"/>
              <text x="380" y="134" font-weight="700" fill="#6ee7b7">Written plan</text>
              <text x="380" y="156" font-size="12">+ 24-hour pause</text>
            </g>
          </svg>
          <figcaption>Emotions push people to buy high and sell low. A written plan and a pause before acting help break the cycle.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Common mistakes, in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>Mistake</th><th>What it means</th><th>Example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Panic selling</strong> (fear)</td><td>Selling because prices fell, not because your plan changed</td><td>The market falls 12%. Ravi wants to stop all SIPs and sell everything.</td></tr>
              <tr><td><strong>FOMO</strong> (fear of missing out)</td><td>Buying because others made money recently</td><td>A cousin says Coastal Cement doubled. Meena wants to buy it the same day.</td></tr>
              <tr><td><strong>Chasing tips</strong></td><td>Acting on a message or video without your own research</td><td>A forwarded message says "Sahyadri Foods will jump 40% this week".</td></tr>
              <tr><td><strong>Overtrading</strong></td><td>Buying and selling too often</td><td>Ananya trades 30 times a month. Brokerage, taxes and other charges add up.</td></tr>
              <tr><td><strong>Loss aversion</strong></td><td>Holding a loser too long because selling "makes the loss real"</td><td>Holding a share only to "get back to my buying price"</td></tr>
              <tr><td><strong>Confirmation bias</strong></td><td>Looking only for news that agrees with you</td><td>Reading only positive posts about a share you already own</td></tr>
              <tr><td><strong>Herd behaviour</strong></td><td>Doing what everyone else is doing</td><td>Putting money into a new fund because it is "trending"</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Use AI as a calm second voice</h3>
          <p>When you feel a strong urge to act, AI can help you slow down. Ask it to argue the other side and to list questions. Do not ask it to predict prices. No one can do that reliably, and AI cannot either.</p>
          <pre><code>Weak:
        The market is crashing. Should I sell everything now?

        Better:
        I feel scared because the market fell 12% this month.
        My plan (made up): SIP of ₹10,000 a month for a goal
        12 years away. Do not tell me to buy or sell.
        1) Which behavioural mistakes might I be making?
        2) What does history say about short falls, in general terms?
        3) What questions should I answer before I change my plan?
        4) When should I talk to a SEBI-registered adviser?</code></pre>
          <p>Check what the AI says about "history". It may quote numbers that are wrong or out of date. Look for data from official sources such as the NSE or BSE websites, or ask a qualified adviser.</p>
        </div>
        <div class="lc-card">
          <h3>A before-you-act checklist</h3>
          <p>Ravi and Meena, a married couple in Los Angeles with one child, keep this list on their phone. They go through it before any buy or sell.</p>
          <ol class="lc-list">
            <li>Has my goal, time horizon or income changed? If not, why change the plan?</li>
            <li>Am I acting because of a feeling: fear, excitement or a friend's story?</li>
            <li>Where did this idea come from? Is the source registered with SEBI?</li>
            <li>Have I read the official facts: filings, factsheets, exchange data?</li>
            <li>What will this cost in charges and taxes? Check with a chartered accountant if unsure.</li>
            <li>Have I waited 24 hours and written down my reason?</li>
          </ol>
          <p>If most answers are "no" or "I don't know", the safe step is to wait and research. This checklist is a habit, not advice. Big decisions still need a SEBI-registered investment adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Name the mistake</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up situation into the main feeling or habit behind it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fear" data-label="Fear"></div>
              <div data-sorter-target="bucket" data-bucket="greed" data-label="Greed or FOMO"></div>
              <div data-sorter-target="bucket" data-bucket="herd" data-label="Following others"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fear" data-why="Selling only because prices fell is panic. The goal did not change.">Ravi stops his SIP after one bad month, though his goal is 12 years away.</li>
              <li data-bucket="greed" data-why="Buying because a price already went up a lot is fear of missing out.">Meena buys a share because it doubled last month.</li>
              <li data-bucket="herd" data-why="Acting on a forwarded message means following others without research.">Ananya buys a share after a "sure-shot" tip in an office WhatsApp group.</li>
              <li data-bucket="fear" data-why="Checking prices all day and selling at the first dip is driven by fear of loss.">Ananya checks prices 20 times a day and sells at every small fall.</li>
              <li data-bucket="greed" data-why="Putting most savings in one idea to get rich fast is greed. It also breaks diversification.">Ravi wants to move most of his savings into one small company to "make fast money".</li>
              <li data-bucket="herd" data-why="Choosing a fund because it is trending is herd behaviour, not research.">Meena picks a new fund only because many online videos talk about it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to slow down a decision and find the feeling behind it. Keep the details made up.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a calm coach who teaches investors about behavioural mistakes. This is education only. Do not recommend buying or selling anything, and do not predict prices.

        My made-up situation: [I am Ravi, 38, from Los Angeles. I run a monthly SIP of ₹10,000 for my child's education in 12 years. The market fell 12% this month and my friends say they are selling. I want to stop my SIP and sell.]

        Please:
        1. Name the behavioural mistakes I may be making, with one line each.
        2. Give the strongest case for staying with my plan and the strongest case for changing it.
        3. Turn this into a 6-question checklist I should answer before acting.
        4. Tell me which questions need a SEBI-registered adviser or a chartered accountant.
        Keep the language simple. Do not quote market statistics unless you name a source I can check.</pre>
            <ul class="ai-try-checks">
              <li>The AI gave both sides, not only one</li>
              <li>There is no price prediction and no buy or sell call</li>
              <li>Any statistics come with a source you can check</li>
              <li>The checklist questions are ones you can really answer</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Strong feelings are a signal to slow down, not to act. Write down your plan, wait a day and go through a checklist. AI can play the calm second voice, but it cannot know the future.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Tips, Scams and Fake Advice</h1>
        </div>
        <p class="lc-lead">Every day, people get messages like "Buy this share now, 300% returns guaranteed". Some come from WhatsApp or Telegram groups. Some come from fake apps or even deepfake videos of famous people. In this lesson, you will learn how the common scams work and how to check any tip using SEBI's own tools. You will also use AI to spot red flags in a message. AI can help you notice warning signs, but only official sources can confirm who is registered.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A pump-and-dump price chart. The price is flat while insiders quietly buy. Then tips, fake news and deepfake videos push the price up. Insiders sell at the peak, and the price crashes, leaving late buyers with losses.">
            <defs><marker id="inv13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <line x1="60" y1="225" x2="730" y2="225" stroke="#4b4a78" stroke-width="1.5" marker-end="url(#inv13a)"/>
              <line x1="60" y1="225" x2="60" y2="25" stroke="#4b4a78" stroke-width="1.5" marker-end="url(#inv13a)"/>
              <text x="30" y="130" fill="#9b99b8" text-anchor="middle" transform="rotate(-90 30 130)">Price</text>
              <text x="700" y="248" fill="#9b99b8" text-anchor="middle">Time</text>
              <polyline points="60,205 200,200 260,185 330,135 400,75 440,58 470,82 510,170 560,208 720,212" fill="none" stroke="#f59e0b" stroke-width="3"/>
              <text x="75" y="180" fill="#9b99b8">1. Insiders buy quietly</text>
              <text x="110" y="48" fill="#fcd34d">2. Pump: tips, fake news, deepfakes</text>
              <line x1="300" y1="56" x2="352" y2="112" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#inv13a)"/>
              <text x="478" y="44" fill="#f9a8d4">3. Dump: insiders sell</text>
              <line x1="505" y1="50" x2="462" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#inv13a)"/>
              <text x="555" y="160" fill="#fca5a5">4. Late buyers lose money</text>
            </g>
          </svg>
          <figcaption>In a pump-and-dump, the people sending the tips sell to the people who follow them. Made-up chart for learning only.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Common scams and how they work</h3>
          <table class="lc-table">
            <thead><tr><th>Scam</th><th>How it works</th><th>Warning sign</th></tr></thead>
            <tbody>
              <tr><td><strong>Unregistered tipster</strong></td><td>A person or group gives "buy" and "sell" calls for a fee, without SEBI registration</td><td>No SEBI registration number, or a number that does not match SEBI's list</td></tr>
              <tr><td><strong>Pump-and-dump</strong></td><td>Insiders buy a small, thinly traded share, hype it in groups, then sell at the top</td><td>Many strangers push the same small company at the same time</td></tr>
              <tr><td><strong>Fake trading app</strong></td><td>You get a link to a private app that shows big "profits". When you try to withdraw, it blocks you or asks for more "fees".</td><td>App not from a known broker, link sent in a chat, withdrawals "on hold"</td></tr>
              <tr><td><strong>Deepfake endorsement</strong></td><td>An AI-made video shows a famous investor or business leader "recommending" a scheme</td><td>The video pushes you to a chat group or a link, not to an official website</td></tr>
              <tr><td><strong>Impersonation</strong></td><td>Someone pretends to be from a real broker, a fund house or SEBI</td><td>Asks for OTP, password, or payment to a personal UPI ID or account</td></tr>
            </tbody>
          </table>
          <p>One rule covers most cases: <strong>no one can guarantee returns in the share market</strong>. A promise of fixed, high or "sure-shot" returns is a red flag.</p>
        </div>
        <div class="lc-card">
          <h3>How to check a tip or an adviser</h3>
          <ol class="lc-list">
            <li><strong>Check registration on SEBI's website.</strong> SEBI's website has a search for registered intermediaries (firms and people SEBI allows to work in the market). It covers investment advisers, research analysts, brokers and others. Search by name or registration number.</li>
            <li><strong>Match the details.</strong> A real registration number must match the same name, address and contact details on SEBI's list. Scammers often copy a real number.</li>
            <li><strong>Check where you pay.</strong> SEBI now asks registered intermediaries to collect money through special UPI IDs that end in <code>@valid</code>. Your UPI app should show a green thumbs-up icon for these. SEBI also offers <strong>SEBI Check</strong>, on its website and its Saarthi app. It lets you check a UPI ID (typed in or from a QR code) or bank account details before you pay. Check SEBI's help pages for the current steps.</li>
            <li><strong>Get apps only from your broker.</strong> Use the link on your broker's official website, or the official app store. Check the broker on SEBI's list first.</li>
            <li><strong>Report problems.</strong> You can complain about a SEBI-registered entity or a listed company on SEBI's SCORES portal (scores.sebi.gov.in). For cyber fraud, use the national cybercrime portal (cybercrime.gov.in) or the helpline 1930.</li>
          </ol>
          <p>SEBI rules also stop registered firms from working with unregistered "finfluencers" (social media influencers) who give advice or claim returns. A genuine registered adviser or research analyst can give you a SEBI registration number that you can check. Rules change, so check SEBI's investor pages for the current details.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to spot red flags</h3>
          <p>AI is good at reading a message and pointing out pressure tactics and false promises. It is <strong>not</strong> good at confirming registration. It may say "this adviser is registered" when it cannot know that.</p>
          <pre><code>Weak:
        Is this tip genuine? Should I invest?

        Better:
        Here is a message I received (personal details removed).
        List every red flag you see, such as guaranteed returns,
        urgency, requests for OTP or payment to a personal account.
        Do not say whether anyone is registered: tell me exactly
        what to check on SEBI's website instead.</code></pre>
          <p>Before you paste a message, remove phone numbers, names and links you do not want to share. Never paste your own OTP, PAN, Aadhaar, passwords or account numbers into any AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Red flag or normal?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up situation. Is it a red flag, or a normal practice?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="red" data-label="Red flag"></div>
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Normal practice"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="red" data-why="No one can guarantee returns in the share market. This promise alone is a warning sign.">A Telegram channel promises "5% profit every week, guaranteed".</li>
              <li data-bucket="red" data-why="Paying to a personal UPI ID skips the checks. Registered entities should use verified payment details.">An "adviser" asks you to pay the fee to a personal UPI ID.</li>
              <li data-bucket="ok" data-why="A real adviser shows a registration number that you can check on SEBI's website.">An adviser's website shows a SEBI registration number that matches SEBI's list.</li>
              <li data-bucket="red" data-why="Famous people are often faked with AI video. A push to a private chat group is a common scam pattern.">A video of a famous investor tells you to join a "VIP group" for secret picks.</li>
              <li data-bucket="red" data-why="Fake apps show made-up profits, then block withdrawals or ask for more money.">A trading app sent by link says you must pay a "tax" before you can withdraw.</li>
              <li data-bucket="ok" data-why="Official broker apps are linked from the broker's own website, and you can check the broker on SEBI's list.">You download your broker's app from the link on its official website.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a made-up tip message and ask AI to find the red flags and list what to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fraud-awareness teacher for Indian investors. This is education only. Do not recommend buying or selling anything.

        Read this message. It is made up, and personal details are removed:
        "[Namaste! I am a senior analyst. Join our VIP group for FREE. Our last pick Sahyadri Foods gave 280% in 2 weeks. Next pick will give 300% GUARANTEED. Only 20 seats left today. Pay ₹4,999 to my UPI to join. Download our trading app from this link for extra bonus.]"

        Please:
        1. List every red flag in the message, with one simple line explaining each.
        2. Say which common scam type it looks like (for example pump-and-dump, fake app, unregistered tipster).
        3. Give a step-by-step list of what I should check on SEBI's own website and tools before trusting anyone.
        4. Tell me where people in India can report investment fraud.
        Do not claim that any person or firm is or is not registered. Tell me to check that myself.</pre>
            <ul class="ai-try-checks">
              <li>It flags guaranteed returns, urgency and payment to a personal UPI ID</li>
              <li>It does not claim to know who is registered</li>
              <li>The checking steps point to SEBI's own website or tools</li>
              <li>Any website or helpline it names is one you can confirm yourself</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Guaranteed returns, urgency and payment to a personal account are the three loudest warning signs. AI can point out red flags, but only SEBI's own website and tools can confirm who is registered.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Building Your Research Checklist</h1>
        </div>
        <p class="lc-lead">Good investors use the same steps every time. A <strong>research checklist</strong> is a list of questions you answer for any investment idea, before you decide anything. A <strong>research journal</strong> is where you write down what you found and why you decided. In this lesson, you will build both in a spreadsheet, with AI's help. They stop you from skipping steps when you feel excited or scared. This is education, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Six checklist sections in order: business, numbers, valuation, risks, fit with my plan, and decision and reason. They end in a journal entry with the date, facts, reasons and a review date.">
            <defs><marker id="inv14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="220" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="130" y="44" font-weight="700">1. Business</text>
              <text x="130" y="63" font-size="11" fill="#9b99b8">how it makes money</text>
              <rect x="270" y="20" width="220" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="44" font-weight="700">2. Numbers</text>
              <text x="380" y="63" font-size="11" fill="#9b99b8">sales, profit, debt trends</text>
              <rect x="520" y="20" width="220" height="56" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="630" y="44" font-weight="700">3. Valuation</text>
              <text x="630" y="63" font-size="11" fill="#9b99b8">P/E, P/B vs peers</text>
              <rect x="20" y="110" width="220" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="130" y="134" font-weight="700">4. Risks</text>
              <text x="130" y="153" font-size="11" fill="#9b99b8">what could go wrong</text>
              <rect x="270" y="110" width="220" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="134" font-weight="700">5. Fit with my plan</text>
              <text x="380" y="153" font-size="11" fill="#9b99b8">goal, time, asset mix</text>
              <rect x="520" y="110" width="220" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="630" y="134" font-weight="700">6. Decision and reason</text>
              <text x="630" y="153" font-size="11" fill="#9b99b8">written, after 24 hours</text>
              <rect x="130" y="200" width="500" height="50" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="222" font-weight="700" fill="#6ee7b7">Journal entry</text>
              <text x="380" y="240" font-size="11" fill="#9b99b8">date, facts with sources, reasons, review date</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inv14a)">
                <line x1="242" y1="48" x2="266" y2="48"/>
                <line x1="492" y1="48" x2="516" y2="48"/>
                <line x1="630" y1="78" x2="134" y2="107"/>
                <line x1="242" y1="138" x2="266" y2="138"/>
                <line x1="492" y1="138" x2="516" y2="138"/>
                <line x1="630" y1="168" x2="560" y2="197"/>
              </g>
            </g>
          </svg>
          <figcaption>The same six sections, in the same order, for every idea. The journal keeps a record you can learn from later.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in the checklist</h3>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>Example questions</th><th>Where to check</th></tr></thead>
            <tbody>
              <tr><td>Business</td><td>What does the company sell? Who are its customers? What are its segments?</td><td>Annual report, company website</td></tr>
              <tr><td>Numbers</td><td>Are sales and profit growing over 5 years? Is debt rising?</td><td>Filings on the NSE or BSE website, annual report</td></tr>
              <tr><td>Valuation</td><td>What are the P/E (price to earnings) and P/B (price to book) ratios? How do they compare with peers?</td><td>Your own calculation from filings and the exchange price</td></tr>
              <tr><td>Risks</td><td>What risks does the company itself list? Any legal cases, debt or one big customer?</td><td>Risk section of the annual report, exchange announcements</td></tr>
              <tr><td>Fit with my plan</td><td>Does this match my goal and time horizon? How much of my portfolio would it be?</td><td>Your own plan, a SEBI-registered adviser</td></tr>
              <tr><td>Decision and reason</td><td>What did I decide, and why? What would change my mind?</td><td>Your journal</td></tr>
            </tbody>
          </table>
          <p>For mutual funds, change the questions: fund type, expense ratio, what the fund holds, overlap with your other funds, and the risk level shown in its documents.</p>
        </div>
        <div class="lc-card">
          <h3>Build it in a spreadsheet</h3>
          <p>Make one row per question. Column A holds the section, B the question, C "Yes" or "No" (is it done?), D the answer and E the source. Then add a progress score:</p>
          <pre><code>=COUNTIF(C2:C19,"Yes")/COUNTA(B2:B19)</code></pre>
          <p>Format the cell as a percentage. If the score is below 100%, the research is not finished. Here is a sample journal row for Ananya, with made-up data:</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Idea</th><th>Key facts (with source)</th><th>Decision</th><th>Review on</th></tr></thead>
            <tbody>
              <tr><td>28-09-2026</td><td>Coastal Cement Ltd</td><td>P/E 25 vs peer average 20 (my calculation from annual report); debt rising (annual report)</td><td>No action yet. Two risks not understood.</td><td>28-12-2026</td></tr>
            </tbody>
          </table>
          <p>A "no action" decision is a real decision. Write it down too. Later, you can compare what you expected with what happened.</p>
        </div>
        <div class="lc-card">
          <h3>Let AI draft, then make it yours</h3>
          <pre><code>Weak:
        Give me a stock checklist.

        Better:
        I am a beginner investor in India. Draft a research
        checklist for any listed company, in 6 sections: business,
        numbers, valuation, risks, fit with my plan, decision and
        reason. Give 3 questions per section and, for each one,
        the official place to check the answer (annual report,
        exchange filings). Output a table I can paste into a
        spreadsheet. Do not include any buy or sell advice.</code></pre>
          <p>Then edit the draft. Remove questions you do not understand, or learn what they mean first. Check that every "where to check" place is real. Keep the list short enough that you will really use it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Put the research steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps for researching a new idea in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down where the idea came from and why it caught your eye</li>
              <li data-order="2">Understand the business from the annual report</li>
              <li data-order="3">Collect the numbers from official filings and check the ratios yourself</li>
              <li data-order="4">Compare with peers and list the main risks</li>
              <li data-order="5">Check fit with your goal, time horizon and asset mix</li>
              <li data-order="6">Wait 24 hours, then write the decision and reason in your journal</li>
              <li data-order="7">Set a review date and compare later with what really happened</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a checklist and a journal template you can paste into a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a teacher who helps beginners in India build good research habits. This is education only. Do not recommend buying or selling anything.

        I want a research checklist for [listed company shares] that I can use every time. About me (made up): [Ananya, 28, salaried, long-term goal of 10+ years].

        Please give me:
        1. A checklist table with columns: Section, Question, Done (Yes/No), My answer, Source. Use 6 sections: business, numbers, valuation, risks, fit with my plan, decision and reason. Give 3 questions per section, in simple English.
        2. For each question, name the official place to find the answer (for example the annual report, NSE or BSE filings, fund factsheet).
        3. A journal template with columns: Date, Idea, Where the idea came from, Key facts with source, Decision, Reason, Review date.
        4. A Google Sheets formula that shows what percentage of the checklist is done.
        Keep it short enough to finish in about one hour per idea.</pre>
            <ul class="ai-try-checks">
              <li>Every question is clear to you, or you know what to learn</li>
              <li>The sources named are real, official places</li>
              <li>The formula works when you test it in a sheet</li>
              <li>There is no buy or sell advice</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A checklist makes you ask the same good questions every time. A journal makes you honest about your reasons. AI can draft both in minutes, but you must check the sources and keep the list short enough to use.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Capstone: Research a Company Like an Analyst</h1>
        </div>
        <p class="lc-lead">In this capstone, you will bring the whole course together. You will research a made-up listed company, Coastal Cement Ltd, the way an analyst does. You will write a business summary, work out key ratios, compare it with peers, list the risks and finish with a <strong>neutral research note</strong>. A neutral note explains the facts and open questions. It does not say "buy" or "sell". AI will help at each step, and you will check every number. This is education, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 230" role="img" aria-label="Five capstone steps: business, ratios, peers, risks and research note. Below them, two rules apply to every step: check every number in official filings, and make no buy or sell call.">
            <defs><marker id="inv15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="132" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="76" y="60" font-weight="700">1. Business</text>
              <text x="76" y="80" font-size="11" fill="#9b99b8">what and how</text>
              <rect x="160" y="30" width="132" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="226" y="60" font-weight="700">2. Ratios</text>
              <text x="226" y="80" font-size="11" fill="#9b99b8">EPS, P/E, ROE</text>
              <rect x="310" y="30" width="132" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="376" y="60" font-weight="700">3. Peers</text>
              <text x="376" y="80" font-size="11" fill="#9b99b8">side by side</text>
              <rect x="460" y="30" width="132" height="70" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="526" y="60" font-weight="700">4. Risks</text>
              <text x="526" y="80" font-size="11" fill="#9b99b8">what could go wrong</text>
              <rect x="610" y="30" width="140" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="680" y="60" font-weight="700">5. Research note</text>
              <text x="680" y="80" font-size="11" fill="#9b99b8">neutral, 1 page</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#inv15a)">
                <line x1="144" y1="65" x2="156" y2="65"/>
                <line x1="294" y1="65" x2="306" y2="65"/>
                <line x1="444" y1="65" x2="456" y2="65"/>
                <line x1="594" y1="65" x2="606" y2="65"/>
              </g>
              <rect x="10" y="130" width="740" height="36" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="153">Check every number in the annual report and exchange filings</text>
              <rect x="10" y="178" width="740" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="201">No buy or sell call: facts, open questions and sources only</text>
            </g>
          </svg>
          <figcaption>Five steps, two rules. The rules apply to every step, not only the last one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1 and 2: business summary and ratios</h3>
          <p>Coastal Cement Ltd is a made-up cement maker. Start with the annual report. Write 5 lines: what it sells, where, to whom, its main segments and its main costs. AI can summarise the report, but check each line against the report itself.</p>
          <p>Then work out the ratios yourself. Here is made-up data for one year:</p>
          <table class="lc-table">
            <thead><tr><th>Item (made up)</th><th>Value</th><th>Ratio and working</th></tr></thead>
            <tbody>
              <tr><td>Net profit</td><td>₹240 crore</td><td>EPS (earnings per share) = 240 ÷ 20 = ₹12</td></tr>
              <tr><td>Number of shares</td><td>20 crore</td><td>P/E (price to earnings) = 300 ÷ 12 = 25</td></tr>
              <tr><td>Share price</td><td>₹300</td><td>Book value per share = 1,600 ÷ 20 = ₹80</td></tr>
              <tr><td>Shareholders' equity (book value)</td><td>₹1,600 crore</td><td>P/B (price to book) = 300 ÷ 80 = 3.75</td></tr>
              <tr><td>Total debt</td><td>₹800 crore</td><td>ROE (return on equity) = 240 ÷ 1,600 = 15%</td></tr>
              <tr><td>Dividend per share</td><td>₹3</td><td>Debt-to-equity = 800 ÷ 1,600 = 0.5; dividend yield = 3 ÷ 300 = 1%</td></tr>
            </tbody>
          </table>
          <p>Put the raw numbers in a sheet and use formulas, for example <code>=B2/B3</code> for EPS. Then you can compare your results with any number the AI gives you.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3 and 4: peers and risks</h3>
          <p><strong>Peers</strong> are similar companies in the same sector. Compare the same ratios for the same year. The peers below are made-up cement companies of a similar size, selling to similar customers.</p>
          <table class="lc-table">
            <thead><tr><th>Company (made up)</th><th>P/E</th><th>P/B</th><th>ROE</th><th>Debt-to-equity</th><th>5-year sales growth</th></tr></thead>
            <tbody>
              <tr><td>Coastal Cement Ltd</td><td>25</td><td>3.75</td><td>15%</td><td>0.5</td><td>9% a year</td></tr>
              <tr><td>Cement Peer A Ltd</td><td>18</td><td>2.2</td><td>12%</td><td>0.9</td><td>6% a year</td></tr>
              <tr><td>Cement Peer B Ltd</td><td>22</td><td>3.0</td><td>14%</td><td>0.3</td><td>8% a year</td></tr>
            </tbody>
          </table>
          <p>What the table shows: Coastal Cement has a higher P/E and P/B than both peers. It also has the highest ROE and growth in this group. A higher price for higher quality is a common pattern. Whether it is "too high" is a judgement, not a fact.</p>
          <p>For risks, start with the risk section of the annual report. Add risks from the numbers, for example rising fuel costs or new debt. Ask AI for more ideas, then check each one in the filings. Mark any risk you could not confirm as "not checked".</p>
        </div>
        <div class="lc-card">
          <h3>Step 5: write a neutral research note</h3>
          <p>Use this template. Keep it to one page.</p>
          <pre><code>RESEARCH NOTE: Coastal Cement Ltd (made-up company)
        Date: [date]      Data from: [annual report year, filings]
        1. Business in 5 lines
        2. Key numbers and ratios (with my working)
        3. Peer comparison table and 3 observations
        4. Main risks (confirmed / not checked)
        5. Open questions I could not answer
        6. Sources, with links or page numbers
        Note: Education only. Not a buy or sell recommendation.</code></pre>
          <p>Ask AI to check your note for loaded words such as "bargain", "sure winner" or "must buy". Replace them with facts. Ask it to list every number, so you can tick each one against its source.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: A capstone session, step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">Ananya asks AI to summarise the business section of Coastal Cement's (made-up) annual report that she pasted in.</li>
              <li data-kind="answer" data-label="AI summary">The AI gives 5 lines on products, regions, customers and costs.</li>
              <li data-kind="tool" data-label="Spreadsheet">She enters profit, shares, price, equity, debt and dividend. Her formulas give EPS ₹12, P/E 25, P/B 3.75, ROE 15%.</li>
              <li data-kind="warn" data-label="Catch a mistake">The AI's draft says "P/E of 18". That was Cement Peer A's P/E, not Coastal Cement's. She corrects it to 25.</li>
              <li data-kind="check" data-label="Check the risks">She confirms three risks in the annual report. She marks a fourth risk, which the AI suggested, as "not checked".</li>
              <li data-kind="result" data-label="Research note">Her one-page note has facts, ratios, peers, risks, open questions and sources, with no buy or sell call.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a neutral research note from the made-up data. Then check every number.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful equity research teacher. This is education only. Do not recommend buying, selling or holding, and do not predict prices.

        Write a one-page neutral research note on [Coastal Cement Ltd], a made-up cement company in India. Use ONLY this data:
        - Net profit ₹240 crore, 20 crore shares, share price ₹300
        - Shareholders' equity ₹1,600 crore, total debt ₹800 crore, dividend ₹3 per share
        - 5-year sales growth 9% a year
        - Cement Peer A: P/E 18, P/B 2.2, ROE 12%, debt-to-equity 0.9, growth 6%
        - Cement Peer B: P/E 22, P/B 3.0, ROE 14%, debt-to-equity 0.3, growth 8%

        Sections:
        1. Business summary (say what I must fill in from the annual report)
        2. Ratios: EPS, P/E, P/B, ROE, debt-to-equity, dividend yield, with working shown
        3. Peer table and 3 neutral observations
        4. Possible risks for a cement company, marked "to be checked in filings"
        5. Open questions
        6. A list of every number used, so I can check each one
        End with: "Education only. Not a recommendation."</pre>
            <ul class="ai-try-checks">
              <li>Recalculate every ratio in a spreadsheet (EPS 12, P/E 25, P/B 3.75, ROE 15%)</li>
              <li>The note uses neutral words, with no buy, sell or hold call</li>
              <li>Risks are marked as needing a check in the filings</li>
              <li>No outside numbers or facts were invented</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An analyst's real work is clear facts, checked numbers, fair comparisons and honest open questions. AI speeds up the drafting, but you own every number. A neutral note helps you think. Real investment decisions need a SEBI-registered adviser.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

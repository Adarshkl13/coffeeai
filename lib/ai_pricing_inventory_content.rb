module AiPricingInventoryContent
  # Units (sidebar dividers): 1–4 Pricing and Stock Basics · 5–9 Pricing with AI · 10–14 Inventory Planning · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Pricing and Inventory Basics</h1>
        </div>
        <p class="lc-lead">Two decisions shape the profit of every online shop: the <strong>price</strong> you charge and the <strong>stock</strong> you keep. A price that is too low leaves no money after fees and shipping. Too little stock loses sales. Too much stock locks up your cash. In this lesson you will learn the key numbers for price and stock and see how they connect. You will follow <strong>Rangrez Crafts</strong>, a made-up Manchester handicrafts brand, all through this course. Its owner Neha sells about 20 products on her own Shopify store, Amazon and Flipkart. She is getting ready for Diwali on Sunday 8 November 2026.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="How price and stock drive profit for the Buta Bagh bedsheet set in September. Price 1,899 rupees gives about 473 rupees per order after all costs. Times 122 orders gives 57,711 rupees. Stock on hand of 240 sets limits orders. Too little stock causes stockouts and lost orders. Too much stock locks up cash and can become dead stock.">
            <defs><marker id="pi1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Buta Bagh bedsheet set, September 2026 (made-up numbers)</text>
              <rect x="20" y="42" width="150" height="74" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="66" font-weight="700">Price</text>
              <text x="95" y="90" font-size="16" fill="#93c5fd">₹1,899</text>
              <text x="95" y="107" font-size="11" fill="#9b99b8">includes GST</text>
              <rect x="210" y="42" width="150" height="74" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="66" font-weight="700">Per order</text>
              <text x="285" y="90" font-size="16" fill="#c4b5fd">≈ ₹473</text>
              <text x="285" y="107" font-size="11" fill="#9b99b8">after all costs</text>
              <rect x="400" y="42" width="150" height="74" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="475" y="66" font-weight="700">Orders</text>
              <text x="475" y="90" font-size="16" fill="#67e8f9">× 122</text>
              <text x="475" y="107" font-size="11" fill="#9b99b8">in September</text>
              <rect x="590" y="42" width="150" height="74" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="66" font-weight="700">Contribution</text>
              <text x="665" y="90" font-size="16" fill="#6ee7b7">= ₹57,711</text>
              <text x="665" y="107" font-size="11" fill="#9b99b8">pays fixed costs</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi1a)"><line x1="172" y1="79" x2="206" y2="79"/><line x1="362" y1="79" x2="396" y2="79"/><line x1="552" y1="79" x2="586" y2="79"/></g>
              <rect x="280" y="176" width="200" height="64" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="200" font-weight="700">Stock on hand</text>
              <text x="380" y="222" fill="#fcd34d">240 sets = ₹1,72,800</text>
              <text x="380" y="258" font-size="11" fill="#9b99b8">about 59 days of cover at</text>
              <text x="380" y="273" font-size="11" fill="#9b99b8">the September sales rate</text>
              <line x1="430" y1="174" x2="462" y2="122" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi1a)"/>
              <text x="520" y="152" font-size="11" fill="#9b99b8">limits orders</text>
              <rect x="20" y="176" width="210" height="64" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="125" y="200" font-weight="700" fill="#f9a8d4">Too little stock</text>
              <text x="125" y="222" font-size="12">stockouts, lost orders</text>
              <rect x="530" y="176" width="210" height="64" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="635" y="200" font-weight="700" fill="#f9a8d4">Too much stock</text>
              <text x="635" y="222" font-size="12">cash stuck, dead stock</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi1a)"><line x1="278" y1="208" x2="234" y2="208"/><line x1="482" y1="208" x2="526" y2="208"/></g>
            </g>
          </svg>
          <figcaption>Price decides how much each order earns. Stock decides how many orders you can fill, and how much cash waits on the shelf.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The key numbers</h3>
          <p>You will use these numbers in every lesson. The examples are for Rangrez Crafts' best seller, the <strong>Buta Bagh bedsheet set</strong>. All numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>What it means</th><th>Buta Bagh example</th></tr></thead>
            <tbody>
              <tr><td><strong>MRP</strong></td><td>Maximum retail price: the highest price you may charge, including all taxes. It is printed on the pack.</td><td>₹2,499</td></tr>
              <tr><td><strong>Selling price</strong></td><td>The price the shopper actually pays. In India it includes GST.</td><td>₹1,899</td></tr>
              <tr><td><strong>Unit cost</strong></td><td>What you pay to make or buy one unit.</td><td>₹720 from the block-print unit</td></tr>
              <tr><td><strong>Gross margin</strong></td><td>The share of the price (without GST) left after the unit cost.</td><td>60.2%</td></tr>
              <tr><td><strong>Contribution per order</strong></td><td>Money left from one order after <em>all</em> costs of that order: fees, packing, shipping, returns and ads.</td><td>about ₹473 on average</td></tr>
              <tr><td><strong>Stock on hand</strong></td><td>Units you have now and can sell.</td><td>240 sets on 1 October</td></tr>
              <tr><td><strong>Stock cover days</strong></td><td>How many days your stock will last at the current sales rate. Stock on hand ÷ average daily sales.</td><td>240 ÷ (122 ÷ 30) = about 59 days</td></tr>
              <tr><td><strong>Lead time</strong></td><td>Days between placing an order with your supplier and getting the stock.</td><td>21 days</td></tr>
              <tr><td><strong>Sell-through</strong></td><td>The share of the stock you had that you sold in a period. Units sold ÷ units available.</td><td>122 ÷ 362 = 33.7% in September</td></tr>
            </tbody>
          </table>
          <p>In September, Rangrez had 362 Buta Bagh sets available (stock at the start plus new stock). It sold 122 and kept 240 for October.</p>
        </div>
        <div class="lc-card">
          <h3>How price and stock connect</h3>
          <ul class="lc-list">
            <li><strong>Price sets the money per order.</strong> Every order pays fees, packing and shipping. What is left is the contribution.</li>
            <li><strong>Contribution × orders pays the fixed costs.</strong> Fixed costs are costs that stay the same each month, like rent and salaries. Anything left after them is profit.</li>
            <li><strong>Price also changes how many people buy.</strong> A lower price may bring more orders but less money per order.</li>
            <li><strong>Stock limits orders.</strong> You cannot sell what you do not have. A stockout (no stock left to sell) in Diwali week hurts the most.</li>
            <li><strong>Stock costs cash.</strong> The 240 Buta Bagh sets cost ₹1,72,800. That cash cannot pay for anything else until the sets sell.</li>
            <li><strong>Lead time decides when you must reorder.</strong> Stock that arrives after Diwali does not help Diwali sales.</li>
          </ul>
          <p><strong>A quick example.</strong> Suppose Buta Bagh sells about 8 sets a day in the 10 days before Diwali. If it runs out, Rangrez loses about 80 orders. At about ₹473 each, that is about ₹37,840 of lost contribution. Now look at the Chandni table runner. Rangrez has 210 runners and sells about 2.9 a day, so the stock covers about 73 days. ₹39,900 of cash sits on the shelf.</p>
        </div>
        <div class="lc-card">
          <h3>Asking AI about these numbers</h3>
          <p>An AI assistant can explain the numbers, calculate them and point out problems. But it needs your real data and a clear task.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How is my shop doing? Should I order more stock?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a stock and pricing analyst for a small online shop.
        Here are 3 products with September sales and stock on 1 October:
        Buta Bagh bedsheet set: sold 122, stock 240, lead time 21 days
        Neel Kamal cushion covers: sold 164, stock 180, lead time 14 days
        Gota Patti potli bags: sold 96, stock 90, lead time 10 days
        1. Work out stock cover days for each: stock ÷ (September sales ÷ 30).
        2. Show the formula and the working for each row.
        3. Diwali is 38 days away. List the products that may run out before it.</code></pre>
          <p>The AI should find cover of about 59, 33 and 28 days. Always check the maths yourself in a spreadsheet. The AI does not know about your Diwali rush unless you tell it. You still decide what to order.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which question does each number answer?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each number. Does it tell you if you make money on a sale, or if you have the right stock?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="money" data-label="Do I make money on each sale?"></div>
              <div data-sorter-target="bucket" data-bucket="stock" data-label="Do I have the right stock?"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="money" data-why="Gross margin shows the share of the price left after the unit cost.">Gross margin</li>
              <li data-bucket="money" data-why="It is the money left from one order after fees, packing, shipping, returns and ads.">Contribution per order</li>
              <li data-bucket="stock" data-why="It shows how many days your stock will last at the current sales rate.">Stock cover days</li>
              <li data-bucket="stock" data-why="It tells you how early you must order from the supplier.">Supplier lead time</li>
              <li data-bucket="money" data-why="A bigger discount leaves less money in each order.">Discount from the MRP</li>
              <li data-bucket="stock" data-why="It shows how much of the stock you had actually sold.">Sell-through</li>
              <li data-bucket="money" data-why="Every percent the marketplace keeps comes out of each order.">Marketplace fee %</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a one-page "price and stock health check" for a few products. Use the sample data or your own product totals. Do not paste customer details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a pricing and stock analyst for a small online shop in India. Explain in simple English.

        My shop: [Rangrez Crafts, a Manchester handicrafts brand selling on its own store, Amazon and Flipkart].
        Big sale date: [Diwali, Sunday 8 November 2026]. Today: [1 October 2026].
        Prices include GST. Use [5%] as an example GST rate only.

        Products (price incl. GST, unit cost, units sold last month, stock now, supplier lead time):
        [Buta Bagh bedsheet set: ₹1,899, ₹720, 122, 240, 21 days
        Neel Kamal cushion covers: ₹999, ₹310, 164, 180, 14 days
        Chandni table runner: ₹649, ₹190, 86, 210, 14 days
        Gota Patti potli bags: ₹549, ₹160, 96, 90, 10 days]

        Please:
        1. Make a table: net price without GST, gross margin %, average daily sales (last month ÷ 30), stock cover days.
        2. Show the Google Sheets formula for each column.
        3. Flag products that may run out before the sale date, and products with too much stock.
        4. List 3 questions I should answer before I change any price or order stock.
        Do not invent numbers that are not in my data.</pre>
            <ul class="ai-try-checks">
              <li>Is GST removed before the margin? Buta Bagh: 1,899 ÷ 1.05 = 1,809, margin 60.2%.</li>
              <li>Is cover worked out as stock ÷ daily sales? Buta Bagh: about 59 days.</li>
              <li>Check one row yourself in a spreadsheet.</li>
              <li>Does it say festival demand will be higher than last month?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Price decides how much each order earns. Stock decides how many orders you can fill, and how much cash is waiting on the shelf. Watch both together, with a small set of numbers you check yourself.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Where AI Helps with Pricing and Stock</h1>
        </div>
        <p class="lc-lead">AI assistants can save you hours of spreadsheet work. They can sum up sales, spot trends, write formulas and draft supplier messages. But they can also get maths wrong, invent facts and suggest prices that are unfair to customers. In this lesson you will learn which jobs to give AI, which jobs to keep for yourself, and a safe way to work that catches mistakes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A safe workflow in five steps: your data without customer details, the AI assistant explains and drafts, the spreadsheet does the exact maths, you check and decide, then you act. Below are four risks to watch: wrong maths, made-up facts, unfair prices and private data.">
            <defs><marker id="pi2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">A safe way to use AI for price and stock work</text>
              <rect x="16" y="44" width="128" height="84" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="80" y="70" font-weight="700">Your data</text>
              <text x="80" y="92" font-size="11" fill="#9b99b8">SKU totals only</text>
              <text x="80" y="108" font-size="11" fill="#9b99b8">no customer details</text>
              <rect x="164" y="44" width="128" height="84" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="228" y="70" font-weight="700">AI assistant</text>
              <text x="228" y="92" font-size="11" fill="#9b99b8">explains, finds</text>
              <text x="228" y="108" font-size="11" fill="#9b99b8">trends, drafts</text>
              <rect x="312" y="44" width="128" height="84" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="376" y="70" font-weight="700">Spreadsheet</text>
              <text x="376" y="92" font-size="11" fill="#9b99b8">does the exact</text>
              <text x="376" y="108" font-size="11" fill="#9b99b8">maths</text>
              <rect x="460" y="44" width="128" height="84" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="524" y="70" font-weight="700">You check</text>
              <text x="524" y="92" font-size="11" fill="#9b99b8">numbers, fairness,</text>
              <text x="524" y="108" font-size="11" fill="#9b99b8">then decide</text>
              <rect x="608" y="44" width="128" height="84" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="672" y="70" font-weight="700">Act</text>
              <text x="672" y="92" font-size="11" fill="#9b99b8">new price, or a</text>
              <text x="672" y="108" font-size="11" fill="#9b99b8">purchase order</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi2a)"><line x1="146" y1="86" x2="160" y2="86"/><line x1="294" y1="86" x2="308" y2="86"/><line x1="442" y1="86" x2="456" y2="86"/><line x1="590" y1="86" x2="604" y2="86"/></g>
              <text x="380" y="172" font-weight="700" fill="#f9a8d4">Risks to watch at every step</text>
              <rect x="16" y="190" width="170" height="74" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="101" y="216" font-weight="700">Wrong maths</text>
              <text x="101" y="238" font-size="11" fill="#9b99b8">GST left in the margin</text>
              <rect x="206" y="190" width="170" height="74" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="291" y="216" font-weight="700">Made-up facts</text>
              <text x="291" y="238" font-size="11" fill="#9b99b8">old fees, guessed prices</text>
              <rect x="396" y="190" width="170" height="74" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="481" y="216" font-weight="700">Unfair prices</text>
              <text x="481" y="238" font-size="11" fill="#9b99b8">fake urgency, gouging</text>
              <rect x="586" y="190" width="158" height="74" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="665" y="216" font-weight="700">Private data</text>
              <text x="665" y="238" font-size="11" fill="#9b99b8">names, phones</text>
              <text x="665" y="253" font-size="11" fill="#9b99b8">in public tools</text>
            </g>
          </svg>
          <figcaption>AI drafts and explains. The spreadsheet does the exact maths. You check the result and make the decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five jobs AI does well</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Rangrez Crafts example</th><th>What you still check</th></tr></thead>
            <tbody>
              <tr><td><strong>Sum up sales</strong></td><td>"Which of my 20 SKUs grew most from July to September?" (SKU: stock keeping unit, one product code)</td><td>Totals match your sales report</td></tr>
              <tr><td><strong>Explain and estimate</strong></td><td>"Potli sales went from 36 in June to 96 in September. Is this seasonal? Give a rough Diwali estimate."</td><td>The estimate uses your real history, not a guess</td></tr>
              <tr><td><strong>Write formulas</strong></td><td>"Write a Google Sheets formula for stock cover days."</td><td>Test the formula on one row you worked out by hand</td></tr>
              <tr><td><strong>Draft rules and alerts</strong></td><td>"Mark a product 'Reorder now' when its cover is less than the lead time plus 7 days."</td><td>The rule fits your real lead times and sales</td></tr>
              <tr><td><strong>Write messages</strong></td><td>A polite email to the Kidderminster dhurrie weaver asking to confirm a 35-day lead time</td><td>Quantities, dates and prices are correct</td></tr>
            </tbody>
          </table>
          <p>Here is the alert rule from the table as a spreadsheet formula. Column B has stock on hand, C has last month's sales, D has lead time in days.</p>
          <pre><code>=IF(B2/(C2/30) &lt; D2+7, "Reorder now", "OK")</code></pre>
          <p>For Buta Bagh: 240 ÷ (122 ÷ 30) = 59 days of cover. The lead time plus 7 days is 28. So the result is "OK". A simple rule like this ignores festival demand. Later in this course you will learn proper reorder points and safety stock.</p>
        </div>
        <div class="lc-card">
          <h3>Four risks, with examples</h3>
          <ul class="lc-list">
            <li><strong>Wrong maths.</strong> Neha asked an AI for the Buta Bagh gross margin. It said 62.1%, because it used the price with GST: (1,899 − 720) ÷ 1,899. The right way removes GST first: (1,809 − 720) ÷ 1,809 = 60.2%. AI tools can also mix up rows or round badly. Let a spreadsheet do the final maths.</li>
            <li><strong>Made-up facts.</strong> AI may state marketplace fees, GST rates or competitor prices from old or wrong memory. In this course we use made-up example fees. Always check the current fee pages in Amazon Seller Central or Flipkart Seller Hub help. Ask your CA (chartered accountant) about GST.</li>
            <li><strong>Unfair prices.</strong> Some ideas may be legal but still break trust. Examples: raising prices sharply when buyers are desperate, or fake "only 2 left" messages. In India, the CCPA (Central Consumer Protection Authority) guidelines on dark patterns (2023) ban tricks like false urgency and hidden charges.</li>
            <li><strong>Private data.</strong> Never paste customer names, phone numbers or addresses into a public AI tool. For pricing and stock work you only need totals by product. Use the AI tools your business has approved.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better one</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here is my sales file. Tell me the best prices for Diwali.</code></pre>
          <p>The AI does not know your costs, fees or goals. It will guess, and it will sound sure.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are helping me review stock before Diwali. Below are monthly units
        sold (April to September) for 6 products. There is no customer data.
        1. For each product, compare July-September with April-June.
           Show both totals and the % change.
        2. Point out any product whose sales jumped in the last 2 months.
        3. Do not suggest prices. Do not guess numbers that are not in my table.
        4. List what else you would need to know to plan Diwali stock.
        [paste the table of SKU, month and units]</code></pre>
          <p>The better prompt gives a narrow task, clear limits and a checkable output. You can check every number it returns against your own table.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: who should do this job?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each task. Can AI do it (and you check), must you decide it, or should nobody do it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI drafts, you check"></div>
              <div data-sorter-target="bucket" data-bucket="you" data-label="You decide"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not do this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Formulas are a good AI job. Test the formula on one row you worked out by hand.">Write a spreadsheet formula for stock cover days</li>
              <li data-bucket="ai" data-why="AI is quick at comparing totals. Check the totals against your sales report.">Find which products grew most from July to September</li>
              <li data-bucket="you" data-why="The final price affects profit, trust and competition. AI can suggest options, but you choose.">Set the final Diwali price for the Buta Bagh set</li>
              <li data-bucket="you" data-why="Spending cash on stock is a business decision. You know your cash and your risk.">Decide how much cash to spend on a new razai order</li>
              <li data-bucket="no" data-why="This shares private customer data with a public tool. Use product totals only.">Paste the full order export, with customer phone numbers, into a free chatbot</li>
              <li data-bucket="no" data-why="This is false urgency, a dark pattern. It is misleading when you have 240 in stock.">Show "Only 2 left!" on a product with 240 in stock</li>
              <li data-bucket="ai" data-why="Drafting messages is a good AI job. Check the quantities, dates and prices before sending.">Draft an email asking a supplier to confirm lead time</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a weekly price and stock routine for your shop. It should say which steps AI can draft, which the spreadsheet should calculate and which you must decide.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an operations coach for small online sellers in India. Use simple English.

        My shop: [Rangrez Crafts, a Manchester handicrafts brand with about 20 products on its own Shopify store, Amazon and Flipkart].
        Team: [owner Neha, and Kabir who packs orders and counts stock].
        Tools: [Google Sheets, the seller dashboards, and an AI assistant].
        Big event coming: [Diwali, Sunday 8 November 2026].

        My weekly tasks:
        [check sales by product, check stock and reorder, compare competitor prices, change prices, plan discounts, message suppliers]

        Please:
        1. Make a table with columns: task, who does it (AI drafts / spreadsheet calculates / person decides), what the person must check, time needed.
        2. For each AI task, write the exact prompt I can reuse.
        3. For each spreadsheet task, give the Google Sheets formula.
        4. Add 3 safety rules: no customer data in AI tools, check every number, no fake urgency or fake discounts.
        Keep it to one page.</pre>
            <ul class="ai-try-checks">
              <li>Are price and purchase decisions left to a person?</li>
              <li>Test each formula on one row you know the answer to.</li>
              <li>Does any reused prompt ask for customer names or phone numbers? Remove it.</li>
              <li>Does it quote fees or tax rates as facts? Check them on the current help pages.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to draft, explain and spot patterns. Use the spreadsheet for the exact maths. Keep the decisions on price, stock and fairness for yourself.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Costs and Unit Economics</h1>
        </div>
        <p class="lc-lead"><strong>Unit economics</strong> means the money you make or lose on one order. A ₹1,899 sale does not put ₹1,899 in your bank. GST, marketplace fees, the product, packing, shipping, returns and ads all come out first. In this lesson you will list every cost of one order. Then you will work out the <strong>contribution per order</strong> in rupees, in a spreadsheet, and compare your sales channels.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Waterfall chart for one Buta Bagh bedsheet set sold on Amazon, with made-up example fees. Price 1,899 rupees. Minus GST 90, fee 323, product 720, packing 40 and shipping 90 leaves 636 rupees per kept order. Minus 59 for failed orders and 133 for ads leaves about 444 rupees per order.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Buta Bagh on Amazon: where ₹1,899 goes (made-up example fees)</text>
              <line x1="20" y1="250" x2="740" y2="250" stroke="#4b4a78"/>
              <rect x="29" y="70.0" width="54" height="180.0" rx="3" fill="#3b82f6"/><text x="56" y="64" font-size="12">1,899</text>
              <rect x="101" y="70.0" width="54" height="8.5" rx="2" fill="#9b99b8"/><text x="128" y="64" font-size="12">−90</text>
              <rect x="173" y="78.5" width="54" height="30.6" rx="2" fill="#ec4899"/><text x="200" y="72.5" font-size="12">−323</text>
              <rect x="245" y="109.1" width="54" height="68.2" rx="2" fill="#ec4899"/><text x="272" y="103" font-size="12">−720</text>
              <rect x="317" y="177.4" width="54" height="3.8" rx="1" fill="#ec4899"/><text x="344" y="171.4" font-size="12">−40</text>
              <rect x="389" y="181.2" width="54" height="8.5" rx="2" fill="#ec4899"/><text x="416" y="175.2" font-size="12">−90</text>
              <rect x="461" y="189.7" width="54" height="60.3" rx="3" fill="#10b981"/><text x="488" y="183.7" font-size="12" font-weight="700">636</text>
              <rect x="533" y="189.7" width="54" height="5.6" rx="2" fill="#f59e0b"/><text x="560" y="183.7" font-size="12">−59</text>
              <rect x="605" y="195.3" width="54" height="12.6" rx="2" fill="#f59e0b"/><text x="632" y="189.3" font-size="12">−133</text>
              <rect x="677" y="207.9" width="54" height="42.1" rx="3" fill="#10b981"/><text x="704" y="201.9" font-size="12" font-weight="700">≈ 444</text>
              <g font-size="11" fill="#9b99b8">
                <text x="56" y="268">Price</text><text x="128" y="268">GST</text><text x="200" y="268">Fee</text><text x="272" y="268">Product</text><text x="344" y="268">Pack</text><text x="416" y="268">Ship</text><text x="488" y="268">Per kept</text><text x="560" y="268">Fails</text><text x="632" y="268">Ads</text><text x="704" y="268">Per order</text>
                <text x="128" y="283">5% example</text><text x="200" y="283">17%</text><text x="488" y="283">order</text><text x="560" y="283">RTO, returns</text><text x="632" y="283">7%</text>
              </g>
            </g>
          </svg>
          <figcaption>From a ₹1,899 price, about ₹444 is left per Amazon order after every cost. All fees and rates here are made up.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The costs of one order</h3>
          <p>Made-up example fees; check the current fee pages. Real fees change often and differ by category, size and weight.</p>
          <table class="lc-table">
            <thead><tr><th>Cost</th><th>What it is</th><th>Buta Bagh on Amazon</th></tr></thead>
            <tbody>
              <tr><td><strong>GST</strong></td><td>Tax inside the price. You pass it on to the government, so it is not your income. Real rates depend on the product and sometimes its price, and they change.</td><td>₹90, using 5% as a made-up example rate. Check the real rate with your CA.</td></tr>
              <tr><td><strong>Marketplace fee</strong></td><td>What the marketplace keeps: commission, closing fee and other charges. On your own store it is the payment gateway fee.</td><td>₹323 (17% of ₹1,899, made up)</td></tr>
              <tr><td><strong>Product cost</strong></td><td>What one unit costs you, without GST.</td><td>₹720</td></tr>
              <tr><td><strong>Packaging</strong></td><td>Box, tissue, tag, tape.</td><td>₹40</td></tr>
              <tr><td><strong>Shipping</strong></td><td>Courier cost to send one parcel.</td><td>₹90</td></tr>
              <tr><td><strong>Returns and RTO</strong></td><td>RTO (return to origin): the parcel comes back undelivered, often a refused COD order. A return: the customer got it and sent it back. You lose both shipping trips and the packaging.</td><td>2% RTO, 5% returns. Each failed order costs 90 + 90 + 40 = ₹220.</td></tr>
              <tr><td><strong>Ads</strong></td><td>Average ad spend for each order.</td><td>₹133 (7% of price)</td></tr>
            </tbody>
          </table>
          <p>In this example we assume the fee is refunded when an order fails, and the product comes back in good condition. Real marketplaces may keep part of the fee. Some returns come back damaged. Check your own settlement reports. They may also show tax amounts that the marketplace collects. Ask your CA how to treat them. This is general education, not tax advice.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: contribution per order in a spreadsheet</h3>
          <p><strong>Contribution per order</strong> is the money one order leaves you after all its own costs. It pays for fixed costs, like rent and salaries, and then becomes profit. Here is Neha's sheet for Buta Bagh on Amazon. Column C shows what each formula returns, rounded to 2 decimal places.</p>
          <pre><code>    A                                  B                            C (result)
        1   Selling price (incl. GST)          1899
        2   GST rate (example only)            5%
        3   Net revenue                        =ROUND(B1/(1+B2),0)          1809
        4   Fee rate (made-up example)         17%
        5   Fee                                =ROUND(B1*B4,0)              323
        6   Product cost                       720
        7   Packaging                          40
        8   Shipping (one way)                 90
        9   Contribution per kept order        =B3-B5-B6-B7-B8              636
        10  RTO rate (share of shipped)        2%
        11  Return rate (share of delivered)   5%
        12  Kept share                         =(1-B10)*(1-B11)             0.931
        13  Cost of one failed order           =2*B8+B7                     220
        14  Per order, before ads              =B12*B9-(1-B12)*B13          576.94
        15  Ad rate (made-up example)          7%
        16  Ads per order                      =ROUND(B1*B15,0)             133
        17  Contribution per order after ads   =B14-B16                     443.94</code></pre>
          <p>Row 14 in plain words: out of 1,000 Amazon orders, 20 come back as RTO and 980 are delivered. Of those, 49 are returned, so 931 are kept. The kept orders earn 931 × ₹636 = ₹5,92,116. The 69 failed orders cost 69 × ₹220 = ₹15,180. That leaves ₹5,76,936, or about ₹577 per order.</p>
        </div>
        <div class="lc-card">
          <h3>Compare your channels</h3>
          <p>Neha ran the same sheet for all three channels. Made-up example fees; check the current fee pages.</p>
          <table class="lc-table">
            <thead><tr><th>Buta Bagh, per order (₹)</th><th>Own Shopify store</th><th>Amazon</th><th>Flipkart</th></tr></thead>
            <tbody>
              <tr><td>Fee</td><td>2% = 38</td><td>17% = 323</td><td>15% = 285</td></tr>
              <tr><td>Contribution per kept order</td><td>921</td><td>636</td><td>674</td></tr>
              <tr><td>RTO / returns</td><td>10% / 4%</td><td>2% / 5%</td><td>6% / 5%</td></tr>
              <tr><td>Per order, before ads</td><td>765.82</td><td>576.94</td><td>578.34</td></tr>
              <tr><td>Ads per order</td><td>12% = 228</td><td>7% = 133</td><td>6% = 114</td></tr>
              <tr><td><strong>Per order, after ads</strong></td><td><strong>about 538</strong></td><td><strong>about 444</strong></td><td><strong>about 464</strong></td></tr>
            </tbody>
          </table>
          <p>The own store has the lowest fee. But many COD orders are refused, and Neha pays more for ads to bring shoppers there. It still earns the most per order. If the RTO rate rose, that gap would shrink. This is why you need every cost, not only the fee.</p>
          <p><strong>Weak prompt:</strong> "What is my profit on a ₹1,899 bedsheet on Amazon?" The AI will guess the fees and forget RTO.</p>
          <p><strong>Better prompt:</strong> give the AI every number from your own sheet and settlement reports. Ask it to show each step and flag any cost you did not give it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: work out contribution in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in order to work out the contribution per order for one product on one channel.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Remove GST from the selling price to get net revenue.</li>
              <li data-order="2">Subtract the marketplace fee or payment gateway fee.</li>
              <li data-order="3">Subtract product cost, packaging and shipping to get the contribution per kept order.</li>
              <li data-order="4">Adjust for RTO and returns, using your real rates and the cost of a failed order.</li>
              <li data-order="5">Subtract the average ad spend per order.</li>
              <li data-order="6">Compare the result with a real settlement report and fix any cost you missed.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a contribution-per-order sheet for one of your products on each channel. Use the sample numbers or your own costs and fee rates from your settlement reports.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an e-commerce finance helper for a small Indian seller. Use simple English. This is for learning, not tax advice.

        Product: [Buta Bagh bedsheet set], selling price [₹1,899] including GST.
        GST: use [5%] as an example rate only.
        Product cost [₹720] (without GST), packaging [₹40], shipping one way [₹90].

        Channels (made-up example rates; I will check the current fee pages):
        [Own store: fee 2%, RTO 10% of shipped, returns 4% of delivered, ads 12% of price
        Amazon: fee 17%, RTO 2%, returns 5%, ads 7%
        Flipkart: fee 15%, RTO 6%, returns 5%, ads 6%]
        A failed order (RTO or return) costs 2 x shipping + packaging. Assume the fee is refunded on failed orders.

        Please:
        1. Make a table per channel: net revenue, fee, contribution per kept order, kept share, per order before ads, ads, per order after ads.
        2. Give the Google Sheets formula for each row.
        3. Say which channel earns most per order, and why.
        4. List any costs I may have missed.</pre>
            <ul class="ai-try-checks">
              <li>Net revenue should be 1,899 ÷ 1.05 = 1,809, not 1,899.</li>
              <li>Amazon per order after ads should be about ₹444 with the sample numbers.</li>
              <li>Kept share is (1 − RTO) × (1 − returns), not 1 − RTO − returns.</li>
              <li>Replace the sample fees with your real ones before you decide anything.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The price is not your income. Take out GST, fees, product, packing, shipping, failed orders and ads, and look at what is left per order. Compare channels on this number, not on the fee alone.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Margins and Break-Even</h1>
        </div>
        <p class="lc-lead">Margin and markup both describe the same profit, but they divide by different numbers. Mixing them up is one of the most common pricing mistakes, and AI tools make it too. In this lesson you will calculate gross margin and markup correctly. Then you will work out <strong>break-even</strong>: how many orders you need each month before you make any profit. You will use Rangrez Crafts' made-up numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Left: the Buta Bagh net price of 1,809 rupees splits into cost 720 and gross profit 1,089. Markup divides 1,089 by cost, about 151 percent. Margin divides 1,089 by net price, 60.2 percent. Right: a break-even chart. Contribution at 327 rupees per order rises with orders and crosses fixed costs of 1,20,000 rupees at 367 orders. Below that is a loss, above it a profit.">
            <defs><marker id="pi4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="190" y="24" font-weight="700" fill="#c4b5fd">Same ₹1,089, two percentages</text>
              <text x="190" y="54" font-size="12" fill="#9b99b8">Buta Bagh net price without GST: ₹1,809</text>
              <rect x="30" y="66" width="127" height="42" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="93" y="92" font-size="12">Cost ₹720</text>
              <rect x="157" y="66" width="193" height="42" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="253" y="92" font-size="12">Gross profit ₹1,089</text>
              <text x="190" y="142">Markup = 1,089 ÷ 720 ≈ 151%</text>
              <text x="190" y="160" font-size="11" fill="#9b99b8">divides by the cost</text>
              <text x="190" y="192">Margin = 1,089 ÷ 1,809 = 60.2%</text>
              <text x="190" y="210" font-size="11" fill="#9b99b8">divides by the net price</text>
              <text x="190" y="252" font-size="12" fill="#fcd34d">A 50% markup is only a 33.3% margin</text>
              <line x1="362" y1="16" x2="362" y2="276" stroke="#4b4a78"/>
              <text x="570" y="24" font-weight="700" fill="#c4b5fd">Break-even: ₹1,20,000 fixed a month</text>
              <line x1="430" y1="250" x2="740" y2="250" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi4a)"/>
              <line x1="430" y1="250" x2="430" y2="60" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi4a)"/>
              <text x="424" y="78" font-size="10.5" fill="#9b99b8" text-anchor="end">₹2,00,000</text>
              <text x="424" y="254" font-size="10.5" fill="#9b99b8" text-anchor="end">₹0</text>
              <line x1="430" y1="142" x2="730" y2="142" stroke="#ec4899" stroke-width="2" stroke-dasharray="6 4"/>
              <text x="438" y="134" font-size="11" fill="#f9a8d4" text-anchor="start">Fixed costs ₹1,20,000</text>
              <line x1="430" y1="250" x2="730" y2="73.4" stroke="#10b981" stroke-width="2.5"/>
              <text x="700" y="78" font-size="11" fill="#6ee7b7" text-anchor="end">Contribution: ₹327 × orders</text>
              <line x1="613.5" y1="142" x2="613.5" y2="250" stroke="#f59e0b" stroke-dasharray="3 3"/>
              <circle cx="613.5" cy="142" r="5" fill="#f59e0b"/>
              <text x="613.5" y="266" font-size="11" fill="#fcd34d">367 orders</text>
              <text x="730" y="266" font-size="11" fill="#9b99b8" text-anchor="end">600</text>
              <text x="530" y="182" font-size="12" fill="#f9a8d4">Loss</text>
              <text x="688" y="128" font-size="12" fill="#6ee7b7">Profit</text>
            </g>
          </svg>
          <figcaption>Markup and margin share the same profit but divide by different numbers. Break-even is where contribution covers fixed costs.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Gross margin and markup</h3>
          <ul class="lc-list">
            <li><strong>Gross profit</strong> = net price (without GST) − unit cost.</li>
            <li><strong>Gross margin</strong> = gross profit ÷ net price. It shows the share of the price you keep after the product cost.</li>
            <li><strong>Markup</strong> = gross profit ÷ unit cost. It shows how much you added on top of the cost.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Product</th><th>Net price</th><th>Unit cost</th><th>Gross profit</th><th>Gross margin</th><th>Markup</th></tr></thead>
            <tbody>
              <tr><td>Buta Bagh bedsheet set</td><td>₹1,809</td><td>₹720</td><td>₹1,089</td><td>60.2%</td><td>about 151%</td></tr>
              <tr><td>Neel Kamal cushion covers</td><td>₹951</td><td>₹310</td><td>₹641</td><td>67.4%</td><td>about 207%</td></tr>
              <tr><td>Gota Patti potli bags</td><td>₹523</td><td>₹160</td><td>₹363</td><td>69.4%</td><td>about 227%</td></tr>
            </tbody>
          </table>
          <p>Net price = selling price ÷ 1.05, using 5% as a made-up example GST rate. In Google Sheets, put the net price in B2 and the unit cost in C2:</p>
          <pre><code>Gross margin (E2):   =(B2-C2)/B2    → 0.602 for Buta Bagh (format as %)
        Markup (F2):         =(B2-C2)/C2    → 1.5125 for Buta Bagh
        Margin from markup:  =F2/(1+F2)     → 0.602
        Markup from margin:  =E2/(1-E2)     → 1.5125</code></pre>
          <p><strong>The classic mistake.</strong> Kabir says, "Add 50% to the cost of ₹720." That gives ₹1,080. The profit is ₹360. The margin is 360 ÷ 1,080 = 33.3%, not 50%. When someone gives you a percentage, always ask: "Percent of the cost, or percent of the price?"</p>
        </div>
        <div class="lc-card">
          <h3>Gross margin is not the whole story</h3>
          <p>The potli bags have the best gross margin, at 69.4%. But after fees, packing, shipping, failed orders and ads, each potli order leaves only about ₹146. A Buta Bagh order leaves about ₹473. Shipping and packing cost almost the same for a small item as for a big one. So they eat a much bigger share of a low price.</p>
          <p>Use gross margin to compare products quickly. Use <strong>contribution per order</strong> (money left after all the costs of one order) to decide prices and break-even. Made-up example fees; check the current fee pages.</p>
        </div>
        <div class="lc-card">
          <h3>Break-even orders</h3>
          <p><strong>Fixed costs</strong> stay the same whether you sell 100 orders or 1,000. Rangrez Crafts' made-up monthly fixed costs:</p>
          <table class="lc-table">
            <thead><tr><th>Fixed cost</th><th>₹ per month</th></tr></thead>
            <tbody>
              <tr><td>Neha's salary</td><td>50,000</td></tr>
              <tr><td>Kabir's salary</td><td>30,000</td></tr>
              <tr><td>Workroom rent</td><td>18,000</td></tr>
              <tr><td>Software and apps</td><td>7,000</td></tr>
              <tr><td>Accountant</td><td>6,000</td></tr>
              <tr><td>Photos and samples</td><td>9,000</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>1,20,000</strong></td></tr>
            </tbody>
          </table>
          <p><strong>Break-even orders = fixed costs ÷ contribution per order.</strong> In September, the 6 key products left about ₹327 per order after all costs. So Rangrez needs 1,20,000 ÷ 327 = 366.97, or about <strong>367 orders a month</strong>. Always round up, because you cannot sell part of an order.</p>
          <pre><code>=ROUNDUP(120000/327,0)       → 367
        =ROUNDUP(45000/473,0)        → 96</code></pre>
          <p>The second formula checks a one-off cost. Neha wants to spend ₹45,000 on a Diwali photo shoot and creator videos for Buta Bagh. Each Buta Bagh order leaves about ₹473. So she needs about 96 extra Buta Bagh orders just to cover that spend.</p>
          <p>Break-even moves when the product mix moves. If more shoppers buy low-price potlis and the average falls to ₹250, break-even rises to 1,20,000 ÷ 250 = 480 orders.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the break-even mistake</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha asks">Our fixed costs are ₹1,20,000 a month. The Buta Bagh gross profit is ₹1,089 a set. How many orders do we need to break even?</li>
              <li data-kind="answer" data-label="AI replies">1,20,000 ÷ 1,089 = 110.2. So you need about 111 orders a month to break even.</li>
              <li data-kind="check" data-label="Kabir checks">Gross profit only takes off the product cost. It ignores fees, packing, shipping, failed orders and ads.</li>
              <li data-kind="warn" data-label="The mistake">Using gross profit makes break-even look about 3 times easier than it really is.</li>
              <li data-kind="user" data-label="Neha asks again">Use contribution per order after all costs instead. Across our key products last month, it was about ₹327. Show the formula.</li>
              <li data-kind="answer" data-label="AI replies">1,20,000 ÷ 327 = 366.97, so about 367 orders a month. Google Sheets: =ROUNDUP(120000/327,0).</li>
              <li data-kind="tool" data-label="Google Sheets">Kabir types the formula into the shop's planning sheet.</li>
              <li data-kind="result" data-label="Sheet shows">367</li>
              <li data-kind="check" data-label="Neha decides">September had 513 orders from the 6 key products, so the shop is above break-even. She notes that break-even rises if sales shift to cheaper items.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check your margins and break-even. Use the sample numbers or your own. Then check the answers in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly finance tutor for small online sellers in India. Use simple English. This is for learning, not financial advice.

        Prices include GST. Use [5%] as an example GST rate only.
        My products (selling price incl. GST, unit cost without GST, contribution per order after all costs):
        [Buta Bagh bedsheet set: ₹1,899, ₹720, ₹473
        Neel Kamal cushion covers: ₹999, ₹310, ₹293
        Gota Patti potli bags: ₹549, ₹160, ₹146]
        Monthly fixed costs: [₹1,20,000]. Average contribution per order across all products: [₹327].
        One-off spend I am planning: [₹45,000 on Diwali photos and videos for the bedsheet set].

        Please:
        1. For each product, work out net price, gross profit, gross margin % and markup %. Show the working.
        2. Explain in 2 lines why the product with the best gross margin may not earn the most per order.
        3. Work out monthly break-even orders, and the extra orders needed to cover the one-off spend. Round up.
        4. Make a small table: break-even orders if average contribution is 20% lower or 20% higher.
        5. Give the Google Sheets formula for each calculation.</pre>
            <ul class="ai-try-checks">
              <li>Margin divides by the net price. Markup divides by the cost.</li>
              <li>Buta Bagh: gross margin 60.2%, markup about 151%.</li>
              <li>Break-even uses contribution after all costs, not gross profit: 367 orders with the sample.</li>
              <li>Break-even numbers are rounded up, not down.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Margin divides by the price and markup divides by the cost, so always ask which one you are looking at. For break-even, divide fixed costs by the contribution left after all costs, not by gross profit.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Pricing Strategies</h1>
        </div>
        <p class="lc-lead">There is no single "right" price. There is a range of good prices, set by your costs, your competitors and what buyers think the product is worth. In this lesson you will learn five common ways to set a price: <strong>cost-plus, value-based, competitive, psychological and bundles</strong>. You will use each one on Rangrez Crafts' Buta Bagh bedsheet set. You will also learn the rules that keep your prices honest.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A price line for the Buta Bagh set from 800 to 2,600 rupees. Costs of 850 rupees are at the left. The lowest price that meets the 600 rupee Amazon target is 1,854 rupees. Made-up competitor prices run from 1,650 to 2,299 rupees. The chosen price is 1,899 rupees and the MRP is 2,499 rupees. Below are the five strategies: cost-plus, value-based, competitive, psychological and bundles.">
            <defs><marker id="pi5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Buta Bagh bedsheet set: where the price can sit</text>
              <line x1="361" y1="72" x2="606" y2="72" stroke="#22d3ee" stroke-width="1.5"/>
              <line x1="361" y1="66" x2="361" y2="78" stroke="#22d3ee" stroke-width="1.5"/>
              <line x1="606" y1="66" x2="606" y2="78" stroke="#22d3ee" stroke-width="1.5"/>
              <text x="484" y="58" font-size="12" fill="#67e8f9">Competitors ₹1,650–₹2,299 (made-up)</text>
              <rect x="361" y="142" width="245" height="16" rx="3" fill="#22d3ee" fill-opacity="0.18"/>
              <line x1="30" y1="150" x2="735" y2="150" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi5a)"/>
              <circle cx="59" cy="150" r="6" fill="#ec4899"/>
              <text x="50" y="126" font-size="12" text-anchor="start" fill="#f9a8d4">Costs ₹850</text>
              <line x1="455" y1="150" x2="455" y2="120" stroke="#10b981" stroke-width="2"/>
              <circle cx="455" cy="150" r="7" fill="#10b981"/>
              <text x="455" y="112" font-weight="700" fill="#6ee7b7">Price ₹1,899</text>
              <circle cx="682" cy="150" r="6" fill="#f59e0b"/>
              <text x="682" y="126" font-size="12" fill="#fcd34d">MRP ₹2,499</text>
              <circle cx="438" cy="150" r="5" fill="#8b5cf6"/>
              <line x1="438" y1="156" x2="424" y2="176" stroke="#8b5cf6" stroke-width="1.5"/>
              <text x="420" y="192" font-size="12" fill="#c4b5fd">Floor ₹1,854</text>
              <text x="420" y="207" font-size="11" fill="#9b99b8">₹600 per kept Amazon order</text>
              <g font-size="10.5" fill="#9b99b8">
                <text x="40" y="170">₹800</text><text x="191" y="170">₹1,200</text><text x="342" y="170">₹1,600</text><text x="569" y="170">₹2,200</text>
              </g>
              <g font-size="12">
                <rect x="10" y="228" width="140" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="80" y="253">Cost-plus</text>
                <rect x="160" y="228" width="140" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="230" y="253">Value-based</text>
                <rect x="310" y="228" width="140" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="380" y="253">Competitive</text>
                <rect x="460" y="228" width="140" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="530" y="253">Psychological</text>
                <rect x="610" y="228" width="140" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="680" y="253">Bundles</text>
              </g>
            </g>
          </svg>
          <figcaption>Costs set the floor. Competitors and buyer value set the range. The honest MRP is the ceiling. The five strategies help you pick a point.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five ways to set a price</h3>
          <table class="lc-table">
            <thead><tr><th>Strategy</th><th>How it works</th><th>Buta Bagh example</th><th>Watch out</th></tr></thead>
            <tbody>
              <tr><td><strong>Cost-plus</strong></td><td>Add a fixed markup to your costs.</td><td>Costs ₹850 (product, packing, shipping) × 2 = ₹1,700, plus 5% example GST = ₹1,785. Round to ₹1,799.</td><td>It ignores the fee, which is a % of the price. On Amazon, ₹1,799 leaves only ₹557 per kept order.</td></tr>
              <tr><td><strong>Value-based</strong></td><td>Price by what the buyer gets and what they compare it with.</td><td>Hand block-printed in Sanganer, double size, 2 pillow covers. Buyers compare it with machine-printed sets.</td><td>Use only true product facts. Never invent features, awards or reviews.</td></tr>
              <tr><td><strong>Competitive</strong></td><td>Price against similar products that shoppers see.</td><td>Similar hand-block sets sell for ₹1,650 to ₹2,299 (made-up range).</td><td>Compare like with like: size, fabric, print method, pillow covers.</td></tr>
              <tr><td><strong>Psychological</strong></td><td>Use price points that feel right to buyers.</td><td>₹1,899, not ₹1,900. The honest MRP of ₹2,499 shows a real 24% saving.</td><td>No fake "was" prices, false urgency or charges hidden until checkout.</td></tr>
              <tr><td><strong>Bundles</strong></td><td>Sell items together for one price.</td><td>Buta Bagh + Neel Kamal cushion covers for ₹2,699, instead of ₹2,898 bought separately.</td><td>Check the bundle still earns enough. Show clearly what is inside.</td></tr>
            </tbody>
          </table>
          <p>Most sellers mix these. Costs give you the lowest safe price. Competitors and buyer value give you the range. Psychology helps you pick the exact number inside it.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: price from a target, then a bundle</h3>
          <p><strong>1. Find the floor.</strong> Neha wants at least ₹600 from each kept Amazon order. Her costs are ₹850. The fee is 17% of the price (made-up example fees; check the current fee pages). GST is 5% (example rate only). So the price must be:</p>
          <pre><code>Price = (costs + target) ÷ (1/1.05 − fee rate)
        =(850+600)/(1/1.05-17%)        → 1853.32</code></pre>
          <p>The floor is about ₹1,854. The competitor range is ₹1,650 to ₹2,299, so the floor fits inside it. Neha picks the price point <strong>₹1,899</strong>. Check: 1,809 − 323 − 850 = ₹636 per kept order, which is above ₹600.</p>
          <p><strong>2. Check a bundle.</strong> On her own store, Neha tests Buta Bagh + Neel Kamal cushion covers for ₹2,699. The shopper saves ₹199. One parcel costs ₹50 to pack and ₹110 to ship.</p>
          <table class="lc-table">
            <thead><tr><th>Own store, per kept order (₹)</th><th>Buta Bagh alone</th><th>Bundle at ₹2,699</th></tr></thead>
            <tbody>
              <tr><td>Net revenue (÷ 1.05)</td><td>1,809</td><td>2,570</td></tr>
              <tr><td>Payment fee (2%)</td><td>38</td><td>54</td></tr>
              <tr><td>Product cost</td><td>720</td><td>1,030</td></tr>
              <tr><td>Packing + shipping</td><td>130</td><td>160</td></tr>
              <tr><td><strong>Contribution per kept order</strong></td><td><strong>921</strong></td><td><strong>1,326</strong></td></tr>
            </tbody>
          </table>
          <p>If a shopper buys the two items in separate orders, Rangrez earns 921 + 536 = ₹1,457. So the bundle earns less than that. But most bedsheet buyers do not also buy cushion covers. Each one who switches to the bundle adds ₹405 (1,326 − 921). Failed orders and ads are left out here to keep it simple.</p>
          <p><strong>Weak prompt:</strong> "What price should I charge for my bedsheet?" <strong>Better prompt:</strong> give your costs, fee rate, target, competitor range and true product facts. Ask for the floor price, three price points and the contribution at each.</p>
        </div>
        <div class="lc-card">
          <h3>Keep your prices honest</h3>
          <ul class="lc-list">
            <li><strong>Never sell above the MRP.</strong> Under the Legal Metrology (Packaged Commodities) Rules, the MRP includes all taxes.</li>
            <li><strong>Show a discount only from a real price.</strong> Do not raise the MRP just before a sale to make the discount look bigger.</li>
            <li><strong>Show the total price.</strong> The Consumer Protection (E-Commerce) Rules, 2020 ask sellers to show the total price and a break-up of other charges.</li>
            <li><strong>No dark patterns.</strong> The CCPA guidelines on dark patterns (2023) ban tricks like false urgency and drip pricing. Drip pricing means adding charges late in checkout.</li>
            <li><strong>Follow marketplace pricing rules.</strong> Amazon and Flipkart have their own fair pricing policies. They change often, so check Seller Central and Seller Hub help.</li>
          </ul>
          <p>This is general education, not legal advice. For a real decision, ask a qualified professional.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: name the strategy</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which pricing strategy is each seller using?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="cost" data-label="Cost-plus"></div>
              <div data-sorter-target="bucket" data-bucket="value" data-label="Value-based"></div>
              <div data-sorter-target="bucket" data-bucket="comp" data-label="Competitive"></div>
              <div data-sorter-target="bucket" data-bucket="psych" data-label="Psychological"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="cost" data-why="The price starts from the cost and adds a fixed markup.">Rangrez adds a 100% markup to the ₹310 cost of its cushion covers.</li>
              <li data-bucket="psych" data-why="₹899 feels cheaper than ₹900, even though the gap is only ₹1.">Sweet Crumbs prices its Diwali gift box at ₹899, not ₹900.</li>
              <li data-bucket="value" data-why="The price is based on what buyers get and what they compare it with.">Rangrez prices the handwoven dhurrie well above machine-made rugs, because buyers value the hand work.</li>
              <li data-bucket="comp" data-why="The price is set by looking at similar products on the same marketplace.">Rangrez sets the table runner ₹50 below the middle price of 12 similar runners on Flipkart.</li>
              <li data-bucket="cost" data-why="The price is worked out from costs plus a fixed amount of profit.">Zari &amp; Co prices a new kurta so it earns ₹500 after all costs.</li>
              <li data-bucket="comp" data-why="The seller watches rivals and stays close to their prices.">Rangrez checks 5 similar razais every Monday and stays within ₹100 of their middle price.</li>
              <li data-bucket="psych" data-why="A higher option nearby makes the middle option look like good value.">Sweet Crumbs shows gift boxes at ₹599, ₹899 and ₹1,499, so the middle one looks like good value.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to price one of your products with all five strategies and suggest a final range. Use the sample or your own numbers. You make the final choice.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a pricing adviser for small Indian online sellers. Use simple English.

        Product: [Buta Bagh bedsheet set: hand block-printed in Sanganer, double size, 2 pillow covers].
        Costs per order: [product ₹720, packing ₹40, shipping ₹90].
        Channel: [Amazon], fee [17%] of price (made-up example; I will check the current fee pages).
        Prices include GST. Use [5%] as an example GST rate only.
        Target: at least [₹600] per kept order. Honest MRP: [₹2,499].
        Similar products I found: [₹1,650 to ₹2,299].
        Possible bundle: [with cushion covers (cost ₹310) for ₹2,699].

        Please:
        1. Work out a price with each strategy: cost-plus (100% markup), target floor, competitive, value-based, psychological.
        2. For each price, show the contribution per kept order: price ÷ 1.05 − fee − costs.
        3. Say if the bundle is worth testing, and why.
        4. Suggest 2 or 3 final price points and who each suits.
        5. List honesty checks: no price above MRP, no fake discounts, total price shown.
        Use only the product facts I gave. Do not invent features.</pre>
            <ul class="ai-try-checks">
              <li>The floor should be about ₹1,854 with the sample numbers.</li>
              <li>At ₹1,899 the contribution per kept order should be ₹636.</li>
              <li>No suggested price is above the MRP.</li>
              <li>It does not add product features or reviews that you did not give.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Costs set the lowest safe price. Competitors and buyer value set the range. Pick the exact number with care, and keep it honest: real MRP, real discounts, and the total price shown up front.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Competitor Price Research</h1>
        </div>
        <p class="lc-lead">Shoppers compare prices before they buy, so you need to know what they see. But a competitor list is only useful if you collect it fairly and compare like with like. In this lesson you will collect competitor prices the right way. You will remove listings that are not the same product and find the real middle of the market. Then you will draw a <strong>price positioning map</strong> that shows where your product sits. You will use Rangrez Crafts' Buta Bagh bedsheet set and 8 made-up competitor listings.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Price positioning map for hand block-printed double bedsheet sets, with made-up listings. Price runs from 1,100 to 2,400 rupees along the bottom. Craft level runs up: machine print, hand block, natural dyes. Rangrez at 1,899 rupees sits in the hand block row, just right of the like-for-like median of 1,874 rupees. Listings A, B, C, D and adjusted G are also hand block. E is a natural-dye set at 2,299 rupees. F, a machine-printed set, and H, a single-size set, are left out.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Buta Bagh set: price positioning map (made-up listings)</text>
              <g font-size="12" fill="#9b99b8" text-anchor="start">
                <text x="10" y="89">Natural dyes</text>
                <text x="10" y="169">Hand block</text>
                <text x="10" y="249">Machine print</text>
              </g>
              <g stroke="#4b4a78" stroke-dasharray="2 4"><line x1="110" y1="85" x2="730" y2="85"/><line x1="110" y1="165" x2="730" y2="165"/><line x1="110" y1="245" x2="730" y2="245"/></g>
              <line x1="110" y1="268" x2="730" y2="268" stroke="#9b99b8" stroke-width="1.5"/>
              <g font-size="11" fill="#9b99b8"><text x="157" y="284">₹1,200</text><text x="345" y="284">₹1,600</text><text x="532" y="284">₹2,000</text><text x="720" y="284">₹2,400</text></g>
              <g stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4"><line x1="473" y1="60" x2="473" y2="115"/><line x1="473" y1="134" x2="473" y2="268"/></g>
              <text x="473" y="52" font-size="12" fill="#fcd34d">Like-for-like median ₹1,874</text>
              <g fill="#22d3ee"><circle cx="368" cy="165" r="6"/><circle cx="391" cy="165" r="6"/><circle cx="438" cy="165" r="6"/><circle cx="508" cy="165" r="6"/><circle cx="579" cy="165" r="6"/><circle cx="673" cy="85" r="6"/></g>
              <g fill="none" stroke="#9b99b8" stroke-width="2"><circle cx="157" cy="245" r="6"/><circle cx="297" cy="165" r="6"/></g>
              <circle cx="485" cy="165" r="8" fill="#10b981"/>
              <text x="485" y="128" font-size="12" font-weight="700" fill="#6ee7b7">Rangrez ₹1,899</text>
              <g font-size="12">
                <text x="368" y="150">A</text><text x="438" y="150">B</text><text x="579" y="150">D</text>
                <text x="391" y="188">G*</text><text x="508" y="188">C</text>
                <text x="297" y="188" fill="#9b99b8">H single</text>
                <text x="157" y="232" fill="#9b99b8">F</text>
                <text x="673" y="72">E</text>
              </g>
              <text x="250" y="308" font-size="12" fill="#9b99b8">Delivered price (made-up listings)</text>
              <circle cx="470" cy="304" r="5" fill="#22d3ee"/><text x="480" y="308" font-size="12" text-anchor="start">compare</text>
              <circle cx="560" cy="304" r="5" fill="none" stroke="#9b99b8" stroke-width="2"/><text x="570" y="308" font-size="12" text-anchor="start">left out</text>
              <text x="640" y="308" font-size="12" text-anchor="start">G* adjusted</text>
            </g>
          </svg>
          <figcaption>Rangrez sits in the middle of the hand block sets, just above the median. G has no pillow covers, so ₹300 was added to compare it fairly. F and H are different products, so they are left out.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Collect prices fairly</h3>
          <p>Competitor research means looking at the prices shoppers see for products like yours. Collect only what any normal shopper can see. Kabir spends 30 minutes each Monday on it. For each listing he writes down these fields:</p>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td>Date, time and pincode</td><td>Prices and delivery charges change by day and by delivery area.</td></tr>
              <tr><td>Listed price and delivery charge</td><td>Shoppers pay both. Add them to get the <strong>delivered price</strong>.</td></tr>
              <tr><td>Product facts</td><td>Size, fabric, print method, pieces in the set. You need these to compare like with like.</td></tr>
              <tr><td>Star rating and number of ratings</td><td>A seller with thousands of good ratings can often charge more.</td></tr>
              <tr><td>Link to the listing</td><td>So you, or anyone checking, can open it again.</td></tr>
            </tbody>
          </table>
          <p><strong>Fair rules to follow:</strong></p>
          <ul class="lc-list">
            <li>Open each listing yourself. Many sites do not allow automatic scraping (copying data with a bot). Read a site's terms before you use any automatic price tool.</li>
            <li>Never agree prices with a competitor, even in a friendly chat. Competition law in India does not allow price fixing. This is general education, not legal advice.</li>
            <li>Do not place fake orders or use fake accounts to see prices or stock.</li>
            <li>Do not copy a competitor's photos or product text.</li>
            <li>AI tools that browse the web may show old or wrong prices. Treat any price from AI as a lead, then open the page and check it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Compare like with like</h3>
          <p>Neha's product: hand block-printed in Sanganer, 100% cotton, double size, 2 pillow covers, ₹1,899 with free delivery. Kabir found 8 listings on 1 October 2026 (made-up examples).</p>
          <table class="lc-table">
            <thead><tr><th>Listing</th><th>Product facts</th><th>Price + delivery</th><th>Delivered price</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>A (Amazon)</td><td>Hand block, cotton, double, 2 covers</td><td>₹1,650 + free</td><td>₹1,650</td><td>Compare</td></tr>
              <tr><td>B (Flipkart)</td><td>Hand block, cotton, double, 2 covers</td><td>₹1,749 + ₹50</td><td>₹1,799</td><td>Compare (use the delivered price)</td></tr>
              <tr><td>C (Amazon)</td><td>Hand block, cotton, double, 2 covers</td><td>₹1,949 + free</td><td>₹1,949</td><td>Compare</td></tr>
              <tr><td>D (brand's own site)</td><td>Hand block, cotton, double, 2 covers</td><td>₹2,099 + free</td><td>₹2,099</td><td>Compare</td></tr>
              <tr><td>E (Amazon)</td><td>Hand block with natural dyes, cotton, double, 2 covers</td><td>₹2,299 + free</td><td>₹2,299</td><td>Compare (a premium version)</td></tr>
              <tr><td>F (Amazon)</td><td>Machine screen print, poly-cotton, double, 2 covers</td><td>₹1,199 + free</td><td>n/a</td><td>Leave out: different product</td></tr>
              <tr><td>G (Flipkart)</td><td>Hand block, cotton, double, <strong>no</strong> pillow covers</td><td>₹1,399 + free</td><td>₹1,699 after adding ₹300</td><td>Adjust</td></tr>
              <tr><td>H (Amazon)</td><td>Hand block, cotton, <strong>single</strong> size, 1 cover</td><td>₹1,499 + free</td><td>n/a</td><td>Leave out: different size</td></tr>
            </tbody>
          </table>
          <p>For G, Kabir added ₹300, the usual price of 2 matching pillow covers. That is his estimate, so he notes it in the sheet. The 6 comparable delivered prices are in column E, rows 2 to 7:</p>
          <pre><code>Like-for-like median:   =MEDIAN(E2:E7)           → 1874
        Price index:            =1899/MEDIAN(E2:E7)*100  → 101.33
        Lowest and highest:     =MIN(E2:E7), =MAX(E2:E7) → 1650, 2299</code></pre>
          <p>A <strong>median</strong> is the middle value. It is not pulled up or down by one very cheap or very costly listing. A <strong>price index</strong> is your price ÷ the market median × 100. Above 100 means you are above the middle. Rangrez is about 1.3% above the like-for-like median.</p>
          <p><strong>Why this matters:</strong> the median of all 8 listed prices, without any cleaning, is ₹1,699.50. Against that, Rangrez looks 11.7% too expensive. Neha might have cut her price for no good reason.</p>
        </div>
        <div class="lc-card">
          <h3>Read the positioning map, with AI's help</h3>
          <p>A <strong>price positioning map</strong> plots each product by price and by one value that buyers care about. Here it is craft level. The map shows three things:</p>
          <ul class="lc-list">
            <li>Rangrez is in the middle of the hand block sets. There is no need to cut the price.</li>
            <li>E charges ₹2,299 for natural dyes. If Rangrez ever uses natural dyes for real, there is room at the top.</li>
            <li>F is much cheaper, but it is a different product. Say "hand block-printed in Sanganer" clearly in the listing, so shoppers see the difference.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What do other sellers charge for block print bedsheets? Is my ₹1,899 price OK?</code></pre>
          <p>The AI may invent prices, or mix in machine-printed and single-size sets.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below are 8 bedsheet listings I checked by hand today. Columns: listing,
        print method, fabric, size, pillow covers, price, delivery charge.
        1. Work out the delivered price for each.
        2. Mark each one: compare, adjust or leave out, compared with my product
           (hand block, cotton, double, 2 pillow covers). Give a reason.
        3. For a missing pair of pillow covers, add ₹300.
        4. Give the median of the comparable delivered prices and my price index.
        Use only my data. Do not add prices, ratings or features.
        [paste the table]</code></pre>
          <p>Check the AI's "compare" and "leave out" choices yourself. You know your product better than the AI does.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: compare, adjust or leave out?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Neha sells a hand block-printed, cotton, double bedsheet set with 2 pillow covers. What should Kabir do with each listing?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="compare" data-label="Compare as it is"></div>
              <div data-sorter-target="bucket" data-bucket="adjust" data-label="Adjust, then compare"></div>
              <div data-sorter-target="bucket" data-bucket="out" data-label="Leave out"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="compare" data-why="Same print method, fabric, size and pieces, and free delivery. It is a true like-for-like listing.">Hand block, cotton, double, 2 covers, ₹1,949 with free delivery</li>
              <li data-bucket="compare" data-why="It is the same product. Just use the delivered price the shopper pays: ₹1,799.">Hand block, cotton, double, 2 covers, ₹1,749 plus ₹50 delivery</li>
              <li data-bucket="adjust" data-why="Add the usual price of 2 pillow covers, and note that it is an estimate.">Hand block, cotton, double, no pillow covers, ₹1,399</li>
              <li data-bucket="out" data-why="Machine printing on poly-cotton is a different product at a different cost.">Machine screen print, poly-cotton, double, 2 covers, ₹1,199</li>
              <li data-bucket="out" data-why="A single-size set is a different product. Compare only double sets.">Hand block, cotton, single size, 1 cover, ₹1,499</li>
              <li data-bucket="out" data-why="An AI tool named this price, but nobody opened the listing. Check it first, or leave it out.">A price an AI chatbot mentioned, with no link</li>
              <li data-bucket="compare" data-why="It is the same kind of product with a real extra feature. Keep it, and note that it is a premium version.">Hand block with natural dyes, cotton, double, 2 covers, ₹2,299</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to clean a competitor price list and place your product on a positioning map. Use the sample listings, or listings you checked by hand.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a pricing analyst for a small Indian online seller. Use simple English.

        My product: [bedsheet set: hand block, 100% cotton, double, 2 pillow covers], [₹1,899] incl. GST, free delivery.
        Listings I checked by hand on [1 October 2026], pincode [302001]:
        [A: hand block, cotton, double, 2 covers, ₹1,650, free
        B: hand block, cotton, double, 2 covers, ₹1,749 + ₹50 delivery
        C: hand block, cotton, double, 2 covers, ₹1,949, free
        D: hand block, cotton, double, 2 covers, ₹2,099, free
        E: hand block, natural dyes, cotton, double, 2 covers, ₹2,299, free
        F: machine screen print, poly-cotton, double, 2 covers, ₹1,199, free
        G: hand block, cotton, double, no pillow covers, ₹1,399, free
        H: hand block, cotton, single, 1 cover, ₹1,499, free]

        Please:
        1. Work out each delivered price.
        2. Mark each: compare, adjust or leave out, with a reason. Add [₹300] for missing pillow covers.
        3. Give the median of the comparable delivered prices, and my price index (my price ÷ median × 100).
        4. Describe a positioning map: price across, craft level up. Where do I sit?
        5. List 3 things to check before I change my price.
        Use only my facts. Do not invent prices, ratings or features.</pre>
            <ul class="ai-try-checks">
              <li>F and H are left out, and G is adjusted to ₹1,699.</li>
              <li>With the sample, the median is ₹1,874 and the price index is about 101.</li>
              <li>Check the median yourself with =MEDIAN() in a spreadsheet.</li>
              <li>It does not add ratings, reviews or features you did not give.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A competitor price list is only as good as its cleaning. Collect public prices by hand, use the delivered price, remove different products, and compare against the like-for-like median. Otherwise you may cut a good price for no reason.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Discounts and Promotions</h1>
        </div>
        <p class="lc-lead">A discount looks small on the price tag, but it takes a big bite out of the money you keep. In this lesson you will work out what a discount really costs. You will also find how many extra orders you need to make up for it. You will choose which products to promote for a festival sale, based on your stock. You will also learn how to show MRP and discounts honestly, so shoppers can trust your offers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Bar chart for the Buta Bagh set on Amazon, with made-up fees. At 1,899 rupees each order leaves about 444 rupees. At 1,799 it leaves about 377, so you need 18 percent more orders. At 1,699 it leaves about 312, so you need 42 percent more orders. At 1,499 it leaves about 181, so you need 146 percent more orders.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Small price cut, big drop in money per order</text>
              <text x="380" y="42" font-size="12" fill="#9b99b8">Buta Bagh on Amazon, per order after all costs (made-up example fees)</text>
              <line x1="40" y1="240" x2="720" y2="240" stroke="#4b4a78"/>
              <rect x="90" y="70" width="80" height="170" rx="4" fill="#10b981"/>
              <rect x="260" y="95.5" width="80" height="144.5" rx="4" fill="#3b82f6"/>
              <rect x="430" y="120.6" width="80" height="119.4" rx="4" fill="#f59e0b"/>
              <rect x="600" y="170.9" width="80" height="69.1" rx="4" fill="#ec4899"/>
              <g font-weight="700">
                <text x="130" y="62">≈ ₹444</text><text x="300" y="87">≈ ₹377</text><text x="470" y="112">≈ ₹312</text><text x="640" y="162">≈ ₹181</text>
              </g>
              <g font-size="12">
                <text x="130" y="258" font-weight="700">Price ₹1,899</text><text x="300" y="258" font-weight="700">Price ₹1,799</text><text x="470" y="258" font-weight="700">Price ₹1,699</text><text x="640" y="258" font-weight="700">Price ₹1,499</text>
                <text x="130" y="275" fill="#9b99b8">24% off MRP</text><text x="300" y="275" fill="#9b99b8">28% off MRP</text><text x="470" y="275" fill="#9b99b8">32% off MRP</text><text x="640" y="275" fill="#9b99b8">40% off MRP</text>
                <text x="130" y="294" fill="#fcd34d">today's price</text><text x="300" y="294" fill="#fcd34d">needs +18% orders</text><text x="470" y="294" fill="#fcd34d">needs +42% orders</text><text x="640" y="294" fill="#fcd34d">needs +146% orders</text>
              </g>
            </g>
          </svg>
          <figcaption>A 10.5% price cut, from ₹1,899 to ₹1,699, cuts the money per order by about 30%. You need about 42% more orders just to earn the same total.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Discount maths: how many more orders do you need?</h3>
          <p>A discount comes straight out of your contribution per order (the money left after all the costs of one order). The costs of the product, packing and shipping do not fall. So the money per order falls much faster than the price. Here is Neha's sheet for Buta Bagh on Amazon. Made-up example fees; check the current fee pages. GST is a 5% example rate only.</p>
          <table class="lc-table">
            <thead><tr><th>Per Amazon order (₹)</th><th>₹1,899</th><th>₹1,799</th><th>₹1,699</th><th>₹1,499</th></tr></thead>
            <tbody>
              <tr><td>Net revenue (price ÷ 1.05)</td><td>1,809</td><td>1,713</td><td>1,618</td><td>1,428</td></tr>
              <tr><td>Fee (17%)</td><td>323</td><td>306</td><td>289</td><td>255</td></tr>
              <tr><td>Contribution per kept order (after ₹850 of product, packing, shipping)</td><td>636</td><td>557</td><td>479</td><td>323</td></tr>
              <tr><td>After failed orders, before ads</td><td>576.94</td><td>503.39</td><td>430.77</td><td>285.53</td></tr>
              <tr><td>Ads (7% of price)</td><td>133</td><td>126</td><td>119</td><td>105</td></tr>
              <tr><td><strong>Per order after all costs</strong></td><td><strong>443.94</strong></td><td><strong>377.39</strong></td><td><strong>311.77</strong></td><td><strong>180.53</strong></td></tr>
              <tr><td><strong>Extra orders needed</strong></td><td>n/a</td><td>17.6%</td><td>42.4%</td><td>145.9%</td></tr>
            </tbody>
          </table>
          <p>The rule: <strong>extra orders needed = old money per order ÷ new money per order − 1</strong>. In Google Sheets:</p>
          <pre><code>=443.94/311.77-1         → 0.424  (format as %: 42.4%)
        =ROUND(1699/1.05,0)      → 1618
        =ROUND(1699*17%,0)       → 289
        =1618-289-850            → 479</code></pre>
          <p>So a ₹1,699 Diwali price only pays off if it brings at least 42% more orders. Ask yourself: will it really? A discount can also bring new buyers who come back later. That is a real benefit, but write it down as a guess, not a fact.</p>
        </div>
        <div class="lc-card">
          <h3>Plan festival promotions around your stock</h3>
          <p>Do not discount everything. Discount products you have too much of. Protect products that may run out. Neha looked at her stock cover (how many days the stock lasts at the September sales rate) on 1 October:</p>
          <table class="lc-table">
            <thead><tr><th>Product</th><th>Stock cover</th><th>Promotion plan</th></tr></thead>
            <tbody>
              <tr><td>Buta Bagh bedsheet set</td><td>59 days</td><td>No price cut. Diwali demand will be higher, and her rough festival estimate is about 232 sets against 240 in stock. A ₹1,699 price needs 42% more orders, which would sell out. Promote the bedsheet and cushion cover bundle instead.</td></tr>
              <tr><td>Neel Kamal cushion covers</td><td>33 days</td><td>No discount. Stock is already short for Diwali.</td></tr>
              <tr><td>Gota Patti potli bags</td><td>28 days</td><td>No discount. Potlis sell fast as festival gifts.</td></tr>
              <tr><td>Chandni table runner</td><td>73 days</td><td>Test ₹599 instead of ₹649. Per Amazon order falls from ₹172.26 to ₹138.02, so it needs about 25% more orders. It clears extra stock before the season ends.</td></tr>
              <tr><td>Mor Pankh dhurrie</td><td>87 days</td><td>Try a small offer or a gift note, and track sales weekly. Each dhurrie holds ₹1,700 of cash.</td></tr>
            </tbody>
          </table>
          <p><strong>Types of promotion:</strong> % off, flat ₹ off, a bundle, free shipping above an order value, or a coupon on your own store. Marketplace festival sale events have their own rules, dates and deal types. Who pays for a deal can also differ. Check Seller Central and Seller Hub help before you join.</p>
        </div>
        <div class="lc-card">
          <h3>Honest MRP and honest discounts</h3>
          <p>Indian rules protect shoppers from fake offers. Here are the main ideas, described generally. This is general education, not legal advice. Ask a qualified professional before a real decision.</p>
          <ul class="lc-list">
            <li><strong>MRP is a real maximum price.</strong> Under the Legal Metrology (Packaged Commodities) Rules, the MRP includes all taxes and is declared on the pack. You may not sell above it.</li>
            <li><strong>Discounts must come from a real price.</strong> Do not raise the MRP just before a sale to make the "% off" look bigger. Rangrez's ₹2,499 MRP stays the same all year.</li>
            <li><strong>No false urgency.</strong> The CCPA guidelines on dark patterns (2023) ban tricks like fake "only 2 left" messages and timers that restart for each visitor.</li>
            <li><strong>No basket sneaking.</strong> Do not add gift wrap, insurance or a donation to the cart without the shopper choosing it.</li>
            <li><strong>No drip pricing.</strong> Do not reveal a COD fee or other charge only at the last step of checkout.</li>
            <li><strong>Clear offer terms.</strong> If a price needs a coupon, a bank card or a minimum order, say so next to the price.</li>
          </ul>
          <p>A true line for a listing: "₹1,899 (MRP ₹2,499, 24% off). Offer valid until 8 November 2026." Only write an end date if the offer really ends then.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fix an AI promotion plan</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha asks">Plan a Diwali offer for the Buta Bagh set. The MRP is ₹2,499 and our price is ₹1,899. We want the offer to look big.</li>
              <li data-kind="answer" data-label="AI replies">Raise the MRP to ₹2,999, then sell at ₹1,799. Shoppers will see 40% off. Add a 2-hour countdown timer that restarts for each visitor.</li>
              <li data-kind="warn" data-label="The problem">Raising the MRP only to inflate the discount misleads buyers and can break the Legal Metrology rules. A timer that restarts is false urgency, a dark pattern.</li>
              <li data-kind="user" data-label="Neha asks again">Keep the real MRP of ₹2,499. Work out the money per Amazon order after all costs at ₹1,899, ₹1,799 and ₹1,699. How many more orders does each price need?</li>
              <li data-kind="answer" data-label="AI replies">At ₹1,899: about ₹444. At ₹1,799: about ₹377, so about 18% more orders. At ₹1,699: about ₹312, so about 42% more orders.</li>
              <li data-kind="tool" data-label="Google Sheets">Kabir checks the last one with =443.94/311.77-1.</li>
              <li data-kind="result" data-label="Sheet shows">0.424, so 42.4% more orders.</li>
              <li data-kind="check" data-label="Neha decides">42% more orders would sell out the 240 sets before Diwali. She keeps ₹1,899, promotes the bundle, and tests ₹599 on the slow-selling table runner.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to test discount ideas against your costs and stock, and to write honest offer text. Use the sample numbers or your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a promotions planner for a small Indian online seller. Use simple English. This is general education, not legal advice.

        Channel: [Amazon], fee [17%] of price (made-up example; I will check the current fee pages). Prices include GST; use [5%] as an example rate only.
        Kept share after RTO and returns: [0.931]. A failed order costs 2 x shipping + packing. Ads: [7%] of price.
        Products (MRP, price now, unit cost, packing, shipping, stock, rough units to sell before the festival):
        [Buta Bagh bedsheet set: 2499, 1899, 720, 40, 90, 240, 232
        Chandni table runner: 899, 649, 190, 20, 55, 210, 163]
        Discount ideas: [bedsheet at ₹1,799 and ₹1,699; runner at ₹599]

        Please:
        1. For each price: net = price ÷ 1.05; kept = net − fee − cost − packing − shipping; per order = 0.931 × kept − 0.069 × failed cost − ads.
        2. Work out the % more orders each discount needs to earn the same total.
        3. Compare with stock and the rough estimate. Which product should get a discount?
        4. Write one honest offer line per product: real MRP, true % off, clear end date, no false urgency.
        5. Give the Google Sheets formula for step 2.</pre>
            <ul class="ai-try-checks">
              <li>Bedsheet at ₹1,699 needs about 42% more orders. Runner at ₹599 needs about 25% more.</li>
              <li>The % off is worked out from the real MRP, not a raised one.</li>
              <li>It does not suggest countdown timers, fake stock messages or hidden charges.</li>
              <li>Check one row in a spreadsheet before you trust the rest.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A discount cuts the money per order much faster than the price. Work out the extra orders you need before you run it. Discount the products you have too much of, protect the ones that may run out, and keep every MRP and offer honest.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Dynamic Pricing and Price Rules</h1>
        </div>
        <p class="lc-lead"><strong>Dynamic pricing</strong> means changing prices often, based on rules and data such as competitor prices, stock or the time of year. A <strong>repricing rule</strong> is an instruction that a tool follows to change a price for you. Rules save time, but a bad rule can drop your price below cost overnight. In this lesson you will write a simple price rule, add <strong>guardrails</strong> (limits the rule can never cross), test it in a spreadsheet, and keep your pricing fair for shoppers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A repricing rule for the Buta Bagh set on Amazon, in five steps: competitor median, floor and ceiling, price point, daily limit, new price. Below, three test cases. Median 1,874 rupees gives a new price of 1,899 with no change. Median 1,774 is below the floor of 1,854, so the price stays 1,899 and Neha gets an alert. Median 2,074 gives a price point of 2,099, but the daily limit caps the new price at 1,999.">
            <defs><marker id="pi8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Buta Bagh on Amazon: a price rule with guardrails</text>
              <rect x="20" y="44" width="128" height="86" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="84" y="68" font-weight="700">Competitors</text>
              <text x="84" y="92" font-size="11" fill="#9b99b8">like-for-like</text>
              <text x="84" y="108" font-size="11" fill="#9b99b8">median</text>
              <rect x="168" y="44" width="128" height="86" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="232" y="68" font-weight="700">Floor, ceiling</text>
              <text x="232" y="92" font-size="11" fill="#9b99b8">floor ₹1,854</text>
              <text x="232" y="108" font-size="11" fill="#9b99b8">ceiling ₹2,299</text>
              <rect x="316" y="44" width="128" height="86" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="68" font-weight="700">Price point</text>
              <text x="380" y="92" font-size="11" fill="#9b99b8">round up to end</text>
              <text x="380" y="108" font-size="11" fill="#9b99b8">in 49 or 99</text>
              <rect x="464" y="44" width="128" height="86" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="528" y="68" font-weight="700">Daily limit</text>
              <text x="528" y="92" font-size="11" fill="#9b99b8">move at most</text>
              <text x="528" y="108" font-size="11" fill="#9b99b8">₹100 a day</text>
              <rect x="612" y="44" width="128" height="86" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="676" y="68" font-weight="700">New price</text>
              <text x="676" y="92" font-size="11" fill="#9b99b8">alerts Neha on</text>
              <text x="676" y="108" font-size="11" fill="#9b99b8">big moves</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi8a)"><line x1="150" y1="87" x2="164" y2="87"/><line x1="298" y1="87" x2="312" y2="87"/><line x1="446" y1="87" x2="460" y2="87"/><line x1="594" y1="87" x2="608" y2="87"/></g>
              <rect x="20" y="152" width="720" height="124" rx="10" fill="#27274e" stroke="#4b4a78"/>
              <g font-size="12" font-weight="700" fill="#c4b5fd">
                <text x="110" y="176">Competitor median</text><text x="290" y="176">Inside floor, ceiling</text><text x="470" y="176">Price point</text><text x="650" y="176">New price</text>
              </g>
              <g stroke="#4b4a78"><line x1="36" y1="186" x2="724" y2="186"/><line x1="36" y1="216" x2="724" y2="216"/><line x1="36" y1="246" x2="724" y2="246"/></g>
              <g font-size="12">
                <text x="110" y="206">₹1,874</text><text x="290" y="206">₹1,874</text><text x="470" y="206">₹1,899</text><text x="650" y="206" fill="#6ee7b7">₹1,899, no change</text>
                <text x="110" y="236">₹1,774</text><text x="290" y="236" fill="#f9a8d4">₹1,854 (floor)</text><text x="470" y="236">₹1,899</text><text x="650" y="236" fill="#fcd34d">₹1,899 + alert</text>
                <text x="110" y="266">₹2,074</text><text x="290" y="266">₹2,074</text><text x="470" y="266">₹2,099</text><text x="650" y="266" fill="#fcd34d">₹1,999 (capped) + alert</text>
              </g>
            </g>
          </svg>
          <figcaption>The rule follows the market. The guardrails stop it going below the floor, above the ceiling or too far in one day.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four kinds of price rules</h3>
          <table class="lc-table">
            <thead><tr><th>Rule type</th><th>Rangrez Crafts example</th><th>Risk if there is no guardrail</th></tr></thead>
            <tbody>
              <tr><td><strong>Competitor-based</strong></td><td>Match the like-for-like median price of similar bedsheet sets.</td><td>Two sellers' tools keep undercutting each other. Prices fall until neither makes money.</td></tr>
              <tr><td><strong>Stock-based</strong></td><td>Stop price cuts on potli bags when stock runs low.</td><td>A tool cuts the price of an item that is about to sell out anyway.</td></tr>
              <tr><td><strong>Time-based</strong></td><td>Start the table runner offer on 15 October. End it on 8 November.</td><td>The offer never ends, or starts before the stock arrives.</td></tr>
              <tr><td><strong>Demand-based</strong></td><td>Raise the razai price a little when winter orders jump.</td><td>Big jumps feel unfair and hurt trust.</td></tr>
            </tbody>
          </table>
          <p>Marketplaces and third-party apps offer automatic repricing tools. When several sellers offer the exact same product, the marketplace often picks one offer for the main buy button. Amazon calls this the featured offer, often known as the Buy Box. Features, fees and rules differ and change often. Check Seller Central or Seller Hub help before you use any tool.</p>
        </div>
        <div class="lc-card">
          <h3>Guardrails, and a rule you can test</h3>
          <table class="lc-table">
            <thead><tr><th>Guardrail</th><th>Buta Bagh setting</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td><strong>Floor price</strong> for each channel</td><td>Own store ₹1,556, Flipkart ₹1,808, Amazon ₹1,854</td><td>The lowest price that still leaves ₹600 per kept order after the fee and ₹850 of costs</td></tr>
              <tr><td><strong>Ceiling price</strong></td><td>₹2,299, and never above the ₹2,499 MRP</td><td>The top of the like-for-like range</td></tr>
              <tr><td><strong>Daily limit</strong></td><td>Move at most ₹100 a day</td><td>Stops sudden jumps and runaway mistakes</td></tr>
              <tr><td><strong>Price points</strong></td><td>End in 49 or 99</td><td>Keeps prices tidy and familiar</td></tr>
              <tr><td><strong>Stock rule</strong></td><td>No price cuts if stock cover is below lead time + 7 days</td><td>A cut would only make a stockout come sooner</td></tr>
              <tr><td><strong>Human check</strong></td><td>Alert Neha when the floor is hit or the price moves ₹100</td><td>A person looks at big or unusual changes</td></tr>
            </tbody>
          </table>
          <p>The floors come from the target-price formula. For Flipkart: <code>=(850+600)/(1/1.05-15%)</code> gives 1807.12, so the floor is ₹1,808. Made-up example fees; check the current fee pages. GST is a 5% example rate only.</p>
          <p>Before turning on any tool, Kabir tests the rule in a sheet. Column C shows what each formula returns today.</p>
          <pre><code>    A                           B                                  C (result)
        1   Current price               1899
        2   Like-for-like median        =MEDIAN(Competitors!E2:E7)         1874
        3   Floor (Amazon)              1854
        4   Ceiling                     2299
        5   Inside floor and ceiling    =MIN(B4,MAX(B3,B2))                1874
        6   Price point (49 or 99)      =CEILING(B5,50)-1                  1899
        7   Daily limit (₹)             100
        8   New price                   =MIN(B1+B7,MAX(B1-B7,B6))          1899
        9   Alert?                      =IF(OR(B2&lt;B3,ABS(B8-B1)&gt;=B7),"Alert Neha","OK")   OK</code></pre>
          <p>Then he types "what if" medians into B2. At ₹1,774, the floor holds the price at ₹1,899 and Neha gets an alert. At ₹2,074, the price point is ₹2,099, but the daily limit gives ₹1,999 for today. An alert tells Neha to decide. She may answer a cheaper rival with a bundle, not a lower price.</p>
        </div>
        <div class="lc-card">
          <h3>Fairness and trust</h3>
          <ul class="lc-list">
            <li><strong>Same price for everyone.</strong> On one channel at one time, show all shoppers the same price. Open offers, like a coupon anyone can use, are fine. Do not charge people more because of their device, area or personal data.</li>
            <li><strong>No price spikes on essentials in a crisis.</strong> If Swift Mart, an online grocery app, raised the price of milk during a flood, it would lose trust fast. It may also break the rules.</li>
            <li><strong>No raise-then-discount.</strong> Do not raise a price before a sale so the "deal" looks bigger.</li>
            <li><strong>The checkout price matches the shown price.</strong> A price must not change after the shopper adds the item to the cart.</li>
            <li><strong>Never align prices with competitors.</strong> Agreeing prices, even through a shared tool, can break competition law.</li>
            <li><strong>Keep a price log.</strong> Record every change, with the date and the reason. It helps you answer complaints and prove your "was" prices are real.</li>
          </ul>
          <p>This is general education, not legal advice. Ask a qualified professional about your own case.</p>
          <p><strong>Weak prompt:</strong> "Write me a rule to always be the cheapest seller." <strong>Better prompt:</strong> give the AI your floor, ceiling, daily limit and like-for-like listings. Ask it to test the rule on 3 "what if" cases and show when it would alert you.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: set up a price rule safely</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Neha's steps in order, from first to last.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Work out the floor price for each channel from costs, fees and the target.</li>
              <li data-order="2">Choose only the competitor listings that are truly like for like.</li>
              <li data-order="3">Write the rule, for example: match the like-for-like median price.</li>
              <li data-order="4">Add guardrails: floor, ceiling below the MRP, a daily limit and price points.</li>
              <li data-order="5">Test the rule in a spreadsheet with "what if" competitor prices.</li>
              <li data-order="6">Turn it on in the pricing tool, with alerts for floor hits and big moves.</li>
              <li data-order="7">Review the price change log every week and adjust the rule.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write a price rule with guardrails and test it on "what if" cases. Use the sample numbers or your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketplace pricing adviser for a small Indian seller. Use simple English. Put fairness to shoppers first.

        Product: [Buta Bagh bedsheet set] on [Amazon]. Current price: [₹1,899] (includes GST). MRP: [₹2,499].
        Floor: [₹1,854] (lowest price that meets my profit target). Ceiling: [₹2,299].
        Daily limit: move at most [₹100] a day. Price points must end in [49 or 99].
        Stock now: [240], lead time [21 days], rough daily sales [6.1].
        Rule idea: [match the median price of like-for-like competitor listings].

        Please:
        1. Write the rule and guardrails in plain words, as numbered steps.
        2. Give Google Sheets formulas for: price inside floor and ceiling, price point, daily limit, and an alert.
        3. Test 3 cases: competitor median [₹1,874], [₹1,774] and [₹2,074]. Show the new price for each.
        4. Add a stock rule: no price cut if stock cover is below lead time + 7 days. Is it on or off today?
        5. List 3 fairness rules this tool must follow.
        Do not suggest a price above the MRP or below the floor.</pre>
            <ul class="ai-try-checks">
              <li>The 3 test cases give ₹1,899, ₹1,899 and ₹1,999 with the sample.</li>
              <li>No price goes below the floor or above the MRP.</li>
              <li>Stock cover is 240 ÷ 6.1, about 39 days, above 28, so price cuts are allowed today.</li>
              <li>Paste each formula into a sheet and check it gives the same answer.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A price rule is only safe with guardrails: a floor from your costs, a ceiling below the MRP, a daily limit and alerts for a person to check. Test it in a spreadsheet first, and keep every price fair and the same for all shoppers.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Demand Forecasting</h1>
        </div>
        <p class="lc-lead">A <strong>demand forecast</strong> is your best estimate of how many units you will sell in a coming period. Every stock order and every festival plan starts from one. In this lesson you will read six months of sales history. You will spot the trend and the season, and see what a moving average can and cannot do. Then you will add a festival uplift as a clear, written assumption. You will build Rangrez Crafts' forecast for the 38 days before Diwali in a spreadsheet, and check it every week.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Bar chart of Buta Bagh sets sold per day. Actual: April 3.20, May 2.84, June 2.80, July 2.90, August 3.35, September 4.07. Forecast for 1 October to 7 November, based on an assumption: 6.10 a day, which is the September rate times 1.5.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Buta Bagh bedsheet set: units sold per day</text>
              <text x="380" y="42" font-size="12" fill="#9b99b8">Six months of history, then a festival forecast (made-up data)</text>
              <line x1="30" y1="240" x2="730" y2="240" stroke="#4b4a78"/>
              <g fill="#3b82f6">
                <rect x="50" y="160.0" width="60" height="80.0" rx="3"/>
                <rect x="150" y="169.0" width="60" height="71.0" rx="3"/>
                <rect x="250" y="170.0" width="60" height="70.0" rx="3"/>
                <rect x="350" y="167.4" width="60" height="72.6" rx="3"/>
                <rect x="450" y="156.1" width="60" height="83.9" rx="3"/>
                <rect x="550" y="138.3" width="60" height="101.7" rx="3" fill="#22d3ee"/>
              </g>
              <rect x="650" y="87.5" width="60" height="152.5" rx="3" fill="#f59e0b" fill-opacity="0.25" stroke="#f59e0b" stroke-dasharray="5 3"/>
              <g font-size="12" font-weight="700">
                <text x="80" y="152">3.20</text><text x="180" y="161">2.84</text><text x="280" y="162">2.80</text><text x="380" y="159">2.90</text><text x="480" y="148">3.35</text><text x="580" y="130">4.07</text>
                <text x="680" y="79" fill="#fcd34d">6.10</text>
              </g>
              <g font-size="12">
                <text x="80" y="258">Apr</text><text x="180" y="258">May</text><text x="280" y="258">Jun</text><text x="380" y="258">Jul</text><text x="480" y="258">Aug</text><text x="580" y="258">Sep</text>
                <text x="680" y="258" fill="#fcd34d">1 Oct–7 Nov</text>
              </g>
              <text x="330" y="280" font-size="12" fill="#9b99b8">Actual sales (units per day)</text>
              <text x="680" y="280" font-size="12" fill="#fcd34d">Sep × 1.5 (assumed)</text>
            </g>
          </svg>
          <figcaption>Sales dipped in summer and rose from August. The forecast bar uses Neha's assumed festival uplift of 1.5 on top of the September rate. It is an estimate, not a fact.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Read and clean your sales history</h3>
          <p>Put units sold per product per month in a sheet. Row 2 is Buta Bagh, with April to September in columns B to G:</p>
          <table class="lc-table">
            <thead><tr><th>Product</th><th>Apr</th><th>May</th><th>Jun</th><th>Jul</th><th>Aug</th><th>Sep</th><th>Total</th></tr></thead>
            <tbody>
              <tr><td>Buta Bagh bedsheet set</td><td>96</td><td>88</td><td>84</td><td>90</td><td>104</td><td>122</td><td>584</td></tr>
              <tr><td>Neel Kamal cushion covers</td><td>126</td><td>118</td><td>112</td><td>120</td><td>138</td><td>164</td><td>778</td></tr>
              <tr><td>Jaipuri razai</td><td>14</td><td>8</td><td>6</td><td>7</td><td>12</td><td>26</td><td>73</td></tr>
              <tr><td>Gota Patti potli bags</td><td>40</td><td>38</td><td>36</td><td>52</td><td>70</td><td>96</td><td>332</td></tr>
            </tbody>
          </table>
          <p>Three words help you read it:</p>
          <ul class="lc-list">
            <li><strong>Trend:</strong> the general direction. Buta Bagh is rising since July.</li>
            <li><strong>Seasonality:</strong> a pattern that repeats at the same time each year. The razai is a winter product, so it rises from August.</li>
            <li><strong>Festival uplift:</strong> the extra sales in the weeks before a festival like Diwali. Potlis are festival gifts, so they rise fast.</li>
          </ul>
          <p><strong>Clean the data first.</strong> Your report shows units shipped, not true demand. On days you were out of stock, demand was hidden. Take out one-off bulk orders. Mark months with a big sale. If you do not, your forecast copies these accidents.</p>
        </div>
        <div class="lc-card">
          <h3>Four simple methods, compared</h3>
          <p>Neha needs a forecast for the 38 days before Diwali: 1 October to 7 November. A spreadsheet does the maths. You choose the method.</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Google Sheets formula</th><th>Buta Bagh, 38 days</th></tr></thead>
            <tbody>
              <tr><td>6-month average (183 days)</td><td><code>=ROUND(SUM(B2:G2)/183*38,1)</code></td><td>121.3</td></tr>
              <tr><td>3-month average (Jul to Sep, 92 days)</td><td><code>=ROUND(SUM(E2:G2)/92*38,1)</code></td><td>130.5</td></tr>
              <tr><td>September rate (30 days)</td><td><code>=ROUND(G2/30*38,1)</code></td><td>154.5</td></tr>
              <tr><td><strong>September rate × festival uplift 1.5</strong></td><td><code>=G2/30*1.5*38</code></td><td><strong>231.8</strong></td></tr>
            </tbody>
          </table>
          <p>A <strong>moving average</strong> is the average of the last few months, worked out again each month. The 3-month moving average for September is <code>=AVERAGE(E2:G2)</code>, which gives 105.3 sets. Real September sales were 122. A moving average is smooth, but it lags behind a rising trend. Before a festival, a plain average will forecast too low.</p>
          <p>Spreadsheets also have trend functions, such as FORECAST.LINEAR. With only six months of data and a summer dip, a simple rate × uplift is easier to explain and to check.</p>
        </div>
        <div class="lc-card">
          <h3>Write the uplift down as an assumption</h3>
          <p>Neha's uplift is <strong>an assumption, not a fact</strong>. It is her own estimate: from 1 October to Diwali, each product will sell 1.5 times its September daily rate. If you have last year's festival sales, use them to set your uplift. Because it is a guess, she also tests a low case and a high case.</p>
          <table class="lc-table">
            <thead><tr><th>Buta Bagh case</th><th>Uplift on September rate</th><th>Units per day</th><th>Forecast, 38 days</th><th>Stock on 1 Oct</th></tr></thead>
            <tbody>
              <tr><td>Low</td><td>1.3 ×</td><td>5.29</td><td>200.9</td><td>240</td></tr>
              <tr><td><strong>Base</strong></td><td><strong>1.5 ×</strong></td><td><strong>6.10</strong></td><td><strong>231.8</strong></td><td>240</td></tr>
              <tr><td>High</td><td>1.7 ×</td><td>6.91</td><td>262.7</td><td>240</td></tr>
            </tbody>
          </table>
          <p>Base forecast for all 6 key products, with the same uplift. Daily demand = September sales ÷ 30 × 1.5.</p>
          <table class="lc-table">
            <thead><tr><th>Product</th><th>Units per day</th><th>Forecast, 38 days</th><th>Stock on 1 Oct</th><th>Gap</th></tr></thead>
            <tbody>
              <tr><td>Buta Bagh bedsheet set</td><td>6.10</td><td>231.8</td><td>240</td><td>+8.2 (very tight)</td></tr>
              <tr><td>Neel Kamal cushion covers</td><td>8.20</td><td>311.6</td><td>180</td><td>−131.6 short</td></tr>
              <tr><td>Jaipuri razai</td><td>1.30</td><td>49.4</td><td>60</td><td>+10.6</td></tr>
              <tr><td>Chandni table runner</td><td>4.30</td><td>163.4</td><td>210</td><td>+46.6</td></tr>
              <tr><td>Mor Pankh dhurrie</td><td>0.95</td><td>36.1</td><td>55</td><td>+18.9</td></tr>
              <tr><td>Gota Patti potli bags</td><td>4.80</td><td>182.4</td><td>90</td><td>−92.4 short</td></tr>
            </tbody>
          </table>
          <p>The razai and potlis may need a higher uplift, because of winter and wedding gifting. <strong>Check the forecast every week.</strong> For 1 to 7 October, the Buta Bagh forecast is 42.7 sets (6.1 × 7). If 50 sell, the error is <code>=(50-42.7)/42.7</code>, about +17%. Then Neha moves towards the high case.</p>
          <p><strong>Weak prompt:</strong> "How many bedsheets will I sell this Diwali?" The AI knows nothing about your shop, so it can only guess. <strong>Better prompt:</strong> give your monthly sales, the dates and your uplift assumptions. Ask for low, base and high cases, with the working.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a forecast with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha asks">Forecast Buta Bagh sales from 1 October to 7 November. April to September sales were 96, 88, 84, 90, 104 and 122.</li>
              <li data-kind="answer" data-label="AI replies">The 6-month average is 3.19 sets a day. Over 38 days, that is about 121 sets. You have 240 in stock, so you have plenty.</li>
              <li data-kind="check" data-label="Neha checks">Sales rose in August and September, and Diwali is coming. A flat 6-month average ignores both.</li>
              <li data-kind="user" data-label="Neha adds">Use the September rate, 122 ÷ 30. My own assumption is that festival demand is 1.5 times that rate. Show the working.</li>
              <li data-kind="answer" data-label="AI replies">122 ÷ 30 × 1.5 = 6.1 sets a day. Over 38 days: 6.1 × 38 = 231.8, about 232 sets. Studies show festival sales in India grow 150% every year.</li>
              <li data-kind="warn" data-label="Made-up fact">The "studies" line has no source. The AI invented it. Delete it, and use only your own data and your written assumptions.</li>
              <li data-kind="tool" data-label="Google Sheets">Kabir types =122/30*1.5*38.</li>
              <li data-kind="result" data-label="Sheet shows">231.8</li>
              <li data-kind="check" data-label="Neha decides">Only 8 sets spare, so stock is very tight. She records the low case (200.9) and the high case (262.7). Every Monday she will compare the forecast with real sales.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a festival forecast with clear assumptions and three cases. Use the sample sales or your own product totals. Do not paste customer data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a demand planner for a small Indian online seller. Use simple English.

        Festival: [Diwali, Sunday 8 November 2026]. Forecast period: [1 October to 7 November 2026, 38 days].
        Units sold per month, April to September 2026:
        [Buta Bagh bedsheet set: 96, 88, 84, 90, 104, 122
        Neel Kamal cushion covers: 126, 118, 112, 120, 138, 164
        Gota Patti potli bags: 40, 38, 36, 52, 70, 96]
        Stock on 1 October: [240, 180, 90].
        My assumption: festival daily demand = September sales ÷ 30 × uplift. Uplift: low [1.3], base [1.5], high [1.7].

        Please:
        1. For each product, work out the 6-month average, the 3-month average and the September rate per day.
        2. Make the forecast for the period in each case, and compare it with stock.
        3. Give the Google Sheets formula for the base case.
        4. Say which products may run short, and in which cases.
        5. Suggest a weekly check that compares forecast and real sales.
        Label every uplift as my assumption. Do not add outside statistics.</pre>
            <ul class="ai-try-checks">
              <li>Buta Bagh base forecast is 231.8 with the sample; low 200.9, high 262.7.</li>
              <li>Cushion covers and potlis show a shortfall in every case.</li>
              <li>Uplifts are labelled as assumptions, with no made-up "studies".</li>
              <li>Check one product's forecast in your own sheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good forecast is simple, written down and checked every week. Start from your cleaned sales history and add the festival uplift as a clear assumption. Test low and high cases, and update as real sales come in.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Reorder Points and Safety Stock</h1>
        </div>
        <p class="lc-lead">If you reorder too late, you run out while the new stock is still on its way. If you reorder too early, cash sits on the shelf. A <strong>reorder point</strong> tells you the stock level at which to place the next order. <strong>Safety stock</strong> is the extra stock that protects you if sales are higher or the supplier is late. In this lesson you will work out both with simple spreadsheet formulas. Then you will check them against the Diwali calendar for Rangrez Crafts' 6 key products.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 305" role="img" aria-label="Stock level over 40 days for Neel Kamal cushion covers at 8.2 sets a day. Stock starts at 180, just above the reorder point of 172.2, so an order is placed on day 0. After the 14-day lead time, stock is down to 65 and 190 new sets arrive. Stock falls to the reorder point again on about day 24, the next order is placed, and stock falls to the safety stock of 57.4 just as that order arrives.">
            <defs><marker id="pi10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">How a reorder point works</text>
              <text x="380" y="44" font-size="12" fill="#9b99b8">Neel Kamal cushion covers at the festival forecast of 8.2 a day (made-up)</text>
              <rect x="70" y="225.6" width="650" height="34.4" fill="#f59e0b" fill-opacity="0.18"/>
              <text x="400" y="248" font-size="12" fill="#fcd34d">Safety stock: 57.4</text>
              <line x1="70" y1="156.7" x2="720" y2="156.7" stroke="#ec4899" stroke-width="1.5" stroke-dasharray="6 4"/>
              <text x="615" y="150" font-size="12" fill="#f9a8d4">Reorder point: 172.2</text>
              <line x1="70" y1="260" x2="730" y2="260" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi10a)"/>
              <line x1="70" y1="260" x2="70" y2="62" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi10a)"/>
              <g font-size="11" fill="#9b99b8" text-anchor="end"><text x="64" y="160.7">172</text><text x="64" y="229.6">57</text><text x="64" y="264">0</text></g>
              <text x="730" y="278" font-size="11" fill="#9b99b8" text-anchor="end">days</text>
              <polyline points="70,152 297.5,220.9 297.5,106.9 462,156.7 689.5,225.6 689.5,111.6 720,120.8" fill="none" stroke="#22d3ee" stroke-width="2.5"/>
              <circle cx="70" cy="152" r="5" fill="#f59e0b"/>
              <text x="78" y="134" font-size="12" fill="#fcd34d" text-anchor="start">Order placed</text>
              <circle cx="297.5" cy="106.9" r="5" fill="#10b981"/>
              <text x="297" y="96" font-size="12" fill="#6ee7b7">190 new sets arrive</text>
              <circle cx="462" cy="156.7" r="5" fill="#f59e0b"/>
              <text x="462" y="130" font-size="12" fill="#fcd34d">Order again</text>
              <circle cx="689.5" cy="111.6" r="5" fill="#10b981"/>
              <g stroke="#9b99b8" stroke-width="1.5"><line x1="462" y1="275" x2="689.5" y2="275"/><line x1="462" y1="269" x2="462" y2="281"/><line x1="689.5" y1="269" x2="689.5" y2="281"/></g>
              <text x="576" y="295" font-size="12">Lead time 14 days: 114.8 sold</text>
            </g>
          </svg>
          <figcaption>Order when stock falls to the reorder point. During the 14-day lead time, sales use up stock down to the safety stock, just as the new stock arrives.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The key terms and one formula</h3>
          <ul class="lc-list">
            <li><strong>Lead time:</strong> days from placing an order to having the stock ready to sell. Neel Kamal: 14 days.</li>
            <li><strong>Daily demand:</strong> units you expect to sell per day. Use your forecast, not only last month.</li>
            <li><strong>Lead-time demand:</strong> daily demand × lead time. It is what you sell while you wait.</li>
            <li><strong>Safety stock:</strong> extra units kept for bad luck: a sales spike or a late supplier.</li>
            <li><strong>Service level:</strong> the chance that you do not run out before new stock arrives. For example, 95%.</li>
          </ul>
          <pre><code>Reorder point = daily demand × lead time + safety stock</code></pre>
          <p>When stock on hand falls to the reorder point, place the order. How much to order is a separate question, which the supplier planning lesson covers.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Neel Kamal cushion covers</h3>
          <p>September sales were 164 sets. Neha's festival forecast assumes 1.5 times the September daily rate. The Sanganer unit is often up to a week late in October (made-up), so she keeps 7 <strong>safety days</strong> of stock. Column C shows what each formula returns.</p>
          <pre><code>    A                            B                          C (result)
        1   September sales              164
        2   Uplift (assumption)          1.5
        3   Daily demand                 =B1/30*B2                  8.2
        4   Lead time (days)             14
        5   Lead-time demand             =B3*B4                     114.8
        6   Safety days                  7
        7   Safety stock                 =B3*B6                     57.4
        8   Reorder point                =B5+B7                     172.2
        9   Stock on hand (1 Oct)        180
        10  Days until reorder point     =(B9-B8)/B3                0.95
        11  Order date                   =DATE(2026,10,1)+MAX(0,ROUNDDOWN(B10,0))   1 Oct 2026</code></pre>
          <p>Row 8 is the same as <code>=B3*(B4+B6)</code>: daily demand × (lead time + 7). Stock is less than one day above the reorder point, so Kabir orders cushion covers today. In a stock app that needs whole numbers, set the alert at 173, the next whole unit up.</p>
          <p><strong>A second method, if you have daily sales.</strong> Safety stock = Z × standard deviation of daily sales × √lead time. Z sets the service level: 1.65 means about 95%. Google Sheets gives it with <code>=NORM.S.INV(0.95)</code>, which returns 1.645. The standard deviation shows how much daily sales swing. Get it with <code>=STDEV.S()</code> on a column of daily sales. Suppose it is 3.5 sets a day (made-up):</p>
          <pre><code>=1.65*3.5*SQRT(14)             → 21.61  (safety stock)
        =114.8+1.65*3.5*SQRT(14)       → 136.41 (reorder point)</code></pre>
          <p>This method covers swings in daily sales, but not a late supplier. That is why Neha uses the bigger 7-day buffer in festival season.</p>
        </div>
        <div class="lc-card">
          <h3>All 6 products, and the festival check</h3>
          <p>Neha used the same method for every product: festival daily demand, 7 safety days. Made-up data.</p>
          <table class="lc-table">
            <thead><tr><th>Product</th><th>Daily demand</th><th>Lead time</th><th>Reorder point</th><th>Stock 1 Oct</th><th>Order date (rule)</th><th>Arrives</th><th>Order by, to arrive by 1 Nov</th></tr></thead>
            <tbody>
              <tr><td>Buta Bagh bedsheet set</td><td>6.1</td><td>21</td><td>170.8</td><td>240</td><td>12 Oct</td><td>2 Nov</td><td>11 Oct</td></tr>
              <tr><td>Neel Kamal cushion covers</td><td>8.2</td><td>14</td><td>172.2</td><td>180</td><td>1 Oct</td><td>15 Oct</td><td>18 Oct</td></tr>
              <tr><td>Jaipuri razai</td><td>1.3</td><td>28</td><td>45.5</td><td>60</td><td>12 Oct</td><td>9 Nov</td><td>4 Oct</td></tr>
              <tr><td>Chandni table runner</td><td>4.3</td><td>14</td><td>90.3</td><td>210</td><td>28 Oct</td><td>11 Nov</td><td>18 Oct</td></tr>
              <tr><td>Mor Pankh dhurrie</td><td>0.95</td><td>35</td><td>39.9</td><td>55</td><td>16 Oct</td><td>20 Nov</td><td>27 Sep (passed)</td></tr>
              <tr><td>Gota Patti potli bags</td><td>4.8</td><td>10</td><td>81.6</td><td>90</td><td>2 Oct</td><td>12 Oct</td><td>22 Oct</td></tr>
            </tbody>
          </table>
          <p>Formulas for Buta Bagh: <code>=122/30*1.5*(21+7)</code> gives 170.8. <code>=DATE(2026,10,1)+MAX(0,ROUNDDOWN((240-170.8)/6.1,0))</code> gives 12 October 2026. <code>=DATE(2026,11,1)-21</code> gives 11 October 2026.</p>
          <p><strong>Why the festival check matters.</strong> The rule says order Buta Bagh on 12 October. That stock arrives on 2 November, with only about 45 sets left. That is too close to Diwali, and the Sanganer unit is often late in October. Neha wants festival stock in the workroom by 1 November. So she orders a week early, on 5 October, and the sets arrive on 26 October. Cushion covers and potlis need orders now. The dhurrie cannot arrive before 1 November, but its 55 in stock cover the forecast of 36.1.</p>
          <p><strong>Ask AI to build the sheet, not to decide.</strong> Give it your lead times, forecast rates and safety days. Ask for formulas and both dates for each product. Then check one row by hand.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: more or less safety stock?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">For each situation, should Neha keep more safety stock or less?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="more" data-label="More safety stock"></div>
              <div data-sorter-target="bucket" data-bucket="less" data-label="Less safety stock"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="more" data-why="A late supplier means more days of sales before new stock arrives.">The Sanganer unit is often up to a week late in October.</li>
              <li data-bucket="more" data-why="Big swings in daily sales make a stockout more likely, so you need a bigger buffer.">Potli sales jump between 1 and 9 sets a day in festival weeks.</li>
              <li data-bucket="more" data-why="A higher cost of running out justifies a higher service level.">Running out in Diwali week would lose many high-value orders.</li>
              <li data-bucket="less" data-why="A short, reliable lead time means you can refill quickly.">A local unit can now deliver table runners in 3 days.</li>
              <li data-bucket="less" data-why="Steady sales need a smaller buffer, and each extra dhurrie ties up ₹1,700 of cash.">Dhurrie sales are slow and steady, with 87 days of cover.</li>
              <li data-bucket="less" data-why="Extra stock of a product you are dropping may become dead stock.">A cushion design will be dropped after Diwali.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a reorder point sheet with order dates for your festival. Use the sample numbers or your own product totals.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an inventory planner for a small Indian online seller. Use simple English.

        Today: [1 October 2026]. I want festival stock in by: [1 November 2026]. Festival: [Diwali, 8 November 2026].
        Products (September units sold, stock now, supplier lead time in days):
        [Buta Bagh bedsheet set: 122, 240, 21
        Neel Kamal cushion covers: 164, 180, 14
        Gota Patti potli bags: 96, 90, 10
        Jaipuri razai: 26, 60, 28]
        My assumption: festival daily demand = September ÷ 30 × [1.5]. Safety stock = [7] days of demand.

        Please:
        1. Make a table: daily demand, lead-time demand, safety stock, reorder point, days until the reorder point.
        2. Add "order date by the rule" (today + whole days until the reorder point) and its arrival date.
        3. Add "order by" so stock arrives by my date (that date − lead time). Flag any product where the rule date is too late.
        4. Give the Google Sheets formula for each column.
        5. Say what could make these numbers wrong.
        Do not decide order quantities. Label the uplift as my assumption.</pre>
            <ul class="ai-try-checks">
              <li>Buta Bagh reorder point is 170.8 and cushion covers 172.2 with the sample.</li>
              <li>Buta Bagh's rule date (12 October) is flagged as too late for 1 November.</li>
              <li>Cushion covers and potlis should be ordered now.</li>
              <li>Paste the formulas into a sheet and check one row by hand.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Reorder point = daily demand × lead time + safety stock. Use your forecast demand, not last month's, and size safety stock for late suppliers and sales swings. Before a festival, also check the date the stock will arrive.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">ABC Analysis and Stock Priorities</h1>
        </div>
        <p class="lc-lead">You cannot watch every product every day. ABC analysis helps you choose where to spend your time. You rank your products by how much money they bring in. The few top products are your <strong>A items</strong>. They get the most care. In this lesson you will run an ABC analysis on Rangrez Crafts' 6 key products in a spreadsheet. You will also learn what to do with each class, and when the ranking can mislead you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Bar chart of each product's share of sales value from April to September 2026. Buta Bagh bedsheet 38.9 percent, class A. Neel Kamal cushions 27.3 percent, cumulative 66.2 percent, class A. Mor Pankh dhurrie 11.6 percent, class B. Chandni table runner 8.6 percent, class B. Jaipuri razai 7.2 percent, class C. Gota Patti potli 6.4 percent, class C.">
            <defs><marker id="pi11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd" text-anchor="middle">Share of sales value, April to September 2026 (made-up numbers)</text>
              <g font-size="12" fill="#9b99b8" font-weight="700">
                <text x="20" y="48">Product</text>
                <text x="230" y="48">Share of sales value</text>
                <text x="650" y="48" text-anchor="middle">Cumulative</text>
                <text x="720" y="48" text-anchor="middle">Class</text>
              </g>
              <text x="20" y="74">Buta Bagh bedsheet</text>
              <rect x="230" y="59" width="331" height="22" rx="4" fill="#10b981"/>
              <text x="569" y="74">38.9%</text>
              <text x="650" y="74" text-anchor="middle">38.9%</text>
              <rect x="705" y="59" width="30" height="22" rx="6" fill="#1f1f44" stroke="#10b981"/>
              <text x="720" y="74" text-anchor="middle" font-weight="700" fill="#6ee7b7">A</text>
              <text x="20" y="112">Neel Kamal cushions</text>
              <rect x="230" y="97" width="232" height="22" rx="4" fill="#10b981"/>
              <text x="470" y="112">27.3%</text>
              <text x="650" y="112" text-anchor="middle">66.2%</text>
              <rect x="705" y="97" width="30" height="22" rx="6" fill="#1f1f44" stroke="#10b981"/>
              <text x="720" y="112" text-anchor="middle" font-weight="700" fill="#6ee7b7">A</text>
              <line x1="20" y1="129" x2="740" y2="129" stroke="#9b99b8" stroke-dasharray="4 4"/>
              <text x="20" y="150">Mor Pankh dhurrie</text>
              <rect x="230" y="135" width="99" height="22" rx="4" fill="#3b82f6"/>
              <text x="337" y="150">11.6%</text>
              <text x="650" y="150" text-anchor="middle">77.8%</text>
              <rect x="705" y="135" width="30" height="22" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="720" y="150" text-anchor="middle" font-weight="700" fill="#93c5fd">B</text>
              <text x="20" y="188">Chandni table runner</text>
              <rect x="230" y="173" width="73" height="22" rx="4" fill="#3b82f6"/>
              <text x="311" y="188">8.6%</text>
              <text x="650" y="188" text-anchor="middle">86.4%</text>
              <rect x="705" y="173" width="30" height="22" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="720" y="188" text-anchor="middle" font-weight="700" fill="#93c5fd">B</text>
              <line x1="20" y1="205" x2="740" y2="205" stroke="#9b99b8" stroke-dasharray="4 4"/>
              <text x="20" y="226">Jaipuri razai</text>
              <rect x="230" y="211" width="61" height="22" rx="4" fill="#f59e0b"/>
              <text x="299" y="226">7.2%</text>
              <text x="650" y="226" text-anchor="middle">93.6%</text>
              <rect x="705" y="211" width="30" height="22" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="720" y="226" text-anchor="middle" font-weight="700" fill="#fcd34d">C</text>
              <text x="20" y="264">Gota Patti potli</text>
              <rect x="230" y="249" width="54" height="22" rx="4" fill="#f59e0b"/>
              <text x="292" y="264">6.4%</text>
              <text x="650" y="264" text-anchor="middle">100%</text>
              <rect x="705" y="249" width="30" height="22" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="720" y="264" text-anchor="middle" font-weight="700" fill="#fcd34d">C</text>
              <text x="380" y="302" text-anchor="middle" font-size="12" fill="#9b99b8">A: cumulative share up to 70%. B: up to 90%. C: the rest.</text>
              <text x="380" y="322" text-anchor="middle" font-size="12" fill="#9b99b8">The 2 A items hold 51% of the ₹4,45,400 stock value.</text>
            </g>
          </svg>
          <figcaption>Two products bring in about two thirds of Rangrez Crafts' sales value. They are the A items and get the most attention.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What ABC analysis is</h3>
          <p>In most shops, a few products bring in most of the money. ABC analysis finds them. You need three simple numbers for each product.</p>
          <ul class="lc-list">
            <li><strong>Sales value:</strong> units sold × selling price, for the same period for every product. Rangrez uses April to September 2026.</li>
            <li><strong>Share:</strong> the product's sales value ÷ the total sales value of all products.</li>
            <li><strong>Cumulative share:</strong> sort the products from the highest sales value to the lowest. Then add the shares down the list. The last row is always 100%.</li>
          </ul>
          <p>Then you give each product a class. Rangrez uses this rule:</p>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Rule (cumulative share)</th><th>What it usually means</th></tr></thead>
            <tbody>
              <tr><td><strong>A</strong></td><td>Up to 70%</td><td>A few products that bring in most of the money</td></tr>
              <tr><td><strong>B</strong></td><td>Above 70%, up to 90%</td><td>Steady middle products</td></tr>
              <tr><td><strong>C</strong></td><td>Above 90%</td><td>Many small products that bring in little money each</td></tr>
            </tbody>
          </table>
          <p>These cut-off points are a common choice, not a law. Some shops use 80% and 95%. Pick one rule and keep it, so you can compare one month with the next.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Rangrez Crafts' 6 key products</h3>
          <p>Kabir puts April to September sales in a sheet. Column B has units, column C has the selling price. He sorts the rows by sales value, largest first. Then he fills columns D to G. All numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>SKU</th><th>Units</th><th>Price ₹</th><th>Sales value ₹</th><th>Share</th><th>Cumulative</th><th>Class</th></tr></thead>
            <tbody>
              <tr><td>RC-BS-01 Buta Bagh bedsheet set</td><td>584</td><td>1,899</td><td>11,09,016</td><td>38.9%</td><td>38.9%</td><td><strong>A</strong></td></tr>
              <tr><td>RC-CC-02 Neel Kamal cushion covers</td><td>778</td><td>999</td><td>7,77,222</td><td>27.3%</td><td>66.2%</td><td><strong>A</strong></td></tr>
              <tr><td>RC-DR-05 Mor Pankh dhurrie</td><td>83</td><td>3,999</td><td>3,31,917</td><td>11.6%</td><td>77.8%</td><td><strong>B</strong></td></tr>
              <tr><td>RC-TR-04 Chandni table runner</td><td>380</td><td>649</td><td>2,46,620</td><td>8.6%</td><td>86.4%</td><td><strong>B</strong></td></tr>
              <tr><td>RC-QT-03 Jaipuri razai</td><td>73</td><td>2,799</td><td>2,04,327</td><td>7.2%</td><td>93.6%</td><td><strong>C</strong></td></tr>
              <tr><td>RC-PT-06 Gota Patti potli bags</td><td>332</td><td>549</td><td>1,82,268</td><td>6.4%</td><td>100.0%</td><td><strong>C</strong></td></tr>
            </tbody>
          </table>
          <p>Total sales value: ₹28,51,370. Here are the formulas for row 2 (Buta Bagh). Copy them down to row 7.</p>
          <pre><code>Cell  What          Formula                                   Result
        D2    Sales value   =B2*C2                                    1109016
        E2    Share         =D2/SUM($D$2:$D$7)                        38.9%
        F2    Cumulative    =SUM($E$2:E2)                             38.9%
        G2    Class         =IF(F2&lt;=70%,"A",IF(F2&lt;=90%,"B","C"))      A</code></pre>
          <p>In row 3, F3 becomes <code>=SUM($E$2:E3)</code>, which gives 66.2%. That is still under 70%, so Neel Kamal is also an A item. Format columns E and F as percentages.</p>
          <p><strong>Now look at stock.</strong> On 1 October, the A items hold ₹2,28,600 of stock (51.3% of ₹4,45,400). The B items hold ₹1,33,400 (30.0%). The C items hold ₹83,400 (18.7%). The dhurrie alone holds ₹93,500. That is a lot of cash for a B item.</p>
        </div>
        <div class="lc-card">
          <h3>What to do with A, B and C items</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>How Rangrez manages it</th></tr></thead>
            <tbody>
              <tr><td><strong>A</strong>: Buta Bagh, Neel Kamal</td><td>Count stock every week. Forecast with care. Keep a bigger safety stock (extra stock kept in case sales jump or supply is late). Order early. A stockout here costs the most.</td></tr>
              <tr><td><strong>B</strong>: dhurrie, table runner</td><td>Check stock every two weeks. Use the normal reorder rules.</td></tr>
              <tr><td><strong>C</strong>: razai, potli bags</td><td>Use simple rules and small orders. Check once a month. Watch for slow movers.</td></tr>
            </tbody>
          </table>
          <p>A <strong>slow mover</strong> is a product whose stock lasts much longer than normal. Rangrez treats anything over 90 days of stock cover as slow. At the 6-month average rate, the dhurrie has about 121 days of cover and the table runner about 101 days.</p>
          <p><strong>ABC looks backwards, so you must still think.</strong></p>
          <ul class="lc-list">
            <li><strong>Growing items:</strong> potli bags are class C, but sales grew from 40 in April to 96 in September. Diwali gifts drive this. Plan them like an A item this season.</li>
            <li><strong>Seasonal items:</strong> the razai sold 6 in June but 26 in September. It is a winter product. Its 150 days of cover at the 6-month rate is misleading. At the September rate it is about 69 days.</li>
            <li><strong>Profit per order:</strong> the dhurrie earns about ₹878 per order after all costs, the most of the six. Sales value does not show this.</li>
          </ul>
          <p>You can run a second ABC on contribution (money left after all costs of each order) and compare the two lists.</p>
        </div>
        <div class="lc-card">
          <h3>Ask AI to do the ranking</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Which of my products are most important?</code></pre>
          <p>The AI does not know your sales. It will give general advice or guess.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are 6 products with units sold (April to September) and selling price.
        Do an ABC analysis by sales value (units x price).
        Rule: cumulative share up to 70% = A, up to 90% = B, the rest = C.
        Show a table sorted by sales value with share and cumulative share.
        Give the Google Sheets formulas.
        Then flag any C item whose monthly sales are growing fast.
        [paste your 6 rows: SKU, name, units, price, monthly units]</code></pre>
          <p>Check the total and one cumulative number yourself. AI tools sometimes add wrongly or sort in the wrong order. Paste product totals only, never customer names or phone numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: classify with recent sales</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Neha runs ABC again on July to September only. Total sales value is ₹15,91,437. The list below is sorted from highest to lowest. Put each product in class A (up to 70% cumulative), B (up to 90%) or C.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="a" data-label="Class A"></div>
              <div data-sorter-target="bucket" data-bucket="b" data-label="Class B"></div>
              <div data-sorter-target="bucket" data-bucket="c" data-label="Class C"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="a" data-why="6,00,084 ÷ 15,91,437 = 37.7%. Cumulative 37.7% is under 70%.">Buta Bagh bedsheet set: ₹6,00,084</li>
              <li data-bucket="a" data-why="Share 26.5%. Cumulative 37.7% + 26.5% = 64.2%, still under 70%.">Neel Kamal cushion covers: ₹4,21,578</li>
              <li data-bucket="b" data-why="Share 11.6%. Cumulative 75.8% is above 70% but under 90%.">Mor Pankh dhurrie: ₹1,83,954</li>
              <li data-bucket="b" data-why="Share 8.8%. Cumulative 84.6%, under 90%.">Chandni table runner: ₹1,40,184</li>
              <li data-bucket="c" data-why="Share 7.9%. Cumulative 92.5% is above 90%. But it is a winter item, so watch it.">Jaipuri razai: ₹1,25,955</li>
              <li data-bucket="c" data-why="Share 7.5%. Cumulative reaches 100%. Its share is growing fast before Diwali.">Gota Patti potli bags: ₹1,19,682</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to run an ABC analysis on your products and suggest how to manage each class. Use the sample data or your own product totals.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a stock planner for a small online shop. Use simple English.

        Do an ABC analysis of my products by sales value (units sold x selling price).
        Rule: sort by sales value, largest first. Cumulative share up to 70% = A, up to 90% = B, the rest = C.

        Products (name, selling price, units sold per month for the last 6 months, stock now, unit cost):
        [Bedsheet set, ₹1,899, 96 88 84 90 104 122, 240, ₹720
        Cushion covers, ₹999, 126 118 112 120 138 164, 180, ₹310
        Razai, ₹2,799, 14 8 6 7 12 26, 60, ₹1,150
        Table runner, ₹649, 58 54 52 60 70 86, 210, ₹190
        Dhurrie, ₹3,999, 14 12 11 12 15 19, 55, ₹1,700
        Potli bags, ₹549, 40 38 36 52 70 96, 90, ₹160]

        Please:
        1. Make a table: sales value, share, cumulative share, class, stock value at cost.
        2. Give the Google Sheets formula for each column.
        3. Suggest how often to count and reorder each class.
        4. Flag products whose class may mislead me: fast growth, seasonal sales or slow-moving stock.
        Do not invent any numbers. Say if you need more data.</pre>
            <ul class="ai-try-checks">
              <li>With the sample data, total sales value should be ₹28,51,370.</li>
              <li>The bedsheet and cushion covers should be A (cumulative 66.2%).</li>
              <li>Is the list sorted before the cumulative share is added?</li>
              <li>Does it flag the potli bags as growing and the razai as seasonal?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> ABC analysis tells you where to look first: A items get weekly care and must not run out. But it only shows the past, so check for growing, seasonal and slow-moving products before you decide.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Stockouts, Overstock and Dead Stock</h1>
        </div>
        <p class="lc-lead">Stock goes wrong in three ways. You run out, you have too much, or you have stock that stops selling. Each problem costs real money, but the cost is often hidden. In this lesson you will put a rupee number on each problem for Rangrez Crafts before Diwali. Then you will build an honest clearance plan for stock that is left over, and use AI to compare the options.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three stock problems with made-up costs. Stockout: Neel Kamal cushion covers with no new order run out around 22 October, about 132 lost orders, about 38,600 rupees of lost contribution. Overstock: about 19 Mor Pankh dhurries left at Diwali, 32,300 rupees of cash on the shelf. Dead stock risk: if 300 potli sets are ordered, about 208 are left after Diwali, worth 33,280 rupees, and take about 173 days to sell.">
            <defs><marker id="pi12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">What each stock problem costs Rangrez Crafts (made-up numbers)</text>
              <rect x="20" y="40" width="230" height="160" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="135" y="66" font-weight="700" fill="#f9a8d4">Stockout</text>
              <text x="135" y="88" font-size="12" fill="#9b99b8">Neel Kamal, no new order</text>
              <text x="135" y="116" font-size="12">Runs out around 22 Oct</text>
              <text x="135" y="138" font-size="12">About 132 lost orders</text>
              <text x="135" y="168" font-size="15" font-weight="700" fill="#f9a8d4">≈ ₹38,600</text>
              <text x="135" y="188" font-size="11" fill="#9b99b8">lost contribution</text>
              <rect x="265" y="40" width="230" height="160" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="66" font-weight="700" fill="#fcd34d">Overstock</text>
              <text x="380" y="88" font-size="12" fill="#9b99b8">Mor Pankh dhurrie</text>
              <text x="380" y="116" font-size="12">About 19 left at Diwali</text>
              <text x="380" y="138" font-size="12">Holding cost 2% a month</text>
              <text x="380" y="168" font-size="15" font-weight="700" fill="#fcd34d">₹32,300</text>
              <text x="380" y="188" font-size="11" fill="#9b99b8">cash waiting on the shelf</text>
              <rect x="510" y="40" width="230" height="160" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="625" y="66" font-weight="700" fill="#c4b5fd">Dead stock risk</text>
              <text x="625" y="88" font-size="12" fill="#9b99b8">If 300 potli sets are ordered</text>
              <text x="625" y="116" font-size="12">About 208 left after Diwali</text>
              <text x="625" y="138" font-size="12">About 173 days to sell</text>
              <text x="625" y="168" font-size="15" font-weight="700" fill="#c4b5fd">₹33,280</text>
              <text x="625" y="188" font-size="11" fill="#9b99b8">at cost, may need clearance</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi12a)"><line x1="135" y1="204" x2="135" y2="232"/><line x1="380" y1="204" x2="380" y2="232"/><line x1="625" y1="204" x2="625" y2="232"/></g>
              <rect x="20" y="236" width="720" height="48" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="257" font-weight="700" fill="#6ee7b7">Fix: order the right amount at the right time</text>
              <text x="380" y="275" font-size="12" fill="#9b99b8">and plan honest clearance before the season ends</text>
            </g>
          </svg>
          <figcaption>A stockout loses orders. Overstock and dead stock lock up cash. Each one has a rupee cost you can work out.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three problems, three kinds of cost</h3>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>What it means</th><th>What it costs</th></tr></thead>
            <tbody>
              <tr><td><strong>Stockout</strong></td><td>No stock left, so shoppers cannot buy.</td><td>Lost contribution on every missed order. Shoppers buy from someone else. On marketplaces, a listing that is often out of stock may also lose its place in search.</td></tr>
              <tr><td><strong>Overstock</strong></td><td>More stock than you will sell soon. It will sell, but slowly.</td><td>Cash stuck on the shelf. Holding cost: interest on that cash, storage space, damage and dust.</td></tr>
              <tr><td><strong>Dead stock</strong></td><td>Stock that has not sold for a long time, for example 90 or 180 days, and may never sell at full price.</td><td>All the holding costs, plus the loss when you finally sell it cheap, give it away or write it off.</td></tr>
            </tbody>
          </table>
          <p>To size these problems, Neha needs a forecast (her best estimate of future sales). She uses a simple, made-up rule for the 38 days before Diwali, 1 October to 7 November: <strong>September daily sales × 1.5</strong>. That gives, for example, 8.2 cushion cover sets a day and 4.8 potli sets a day. The forecasting lesson shows better methods.</p>
          <p>For holding cost, Rangrez uses a made-up <strong>2% of stock value per month</strong>. Your real number depends on your interest rate, rent and damage.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: put a rupee number on each problem</h3>
          <p>Kabir builds the sheet below. Column C shows what each formula returns. Contribution per order is the money left after all costs of the order, from the unit economics lesson.</p>
          <pre><code>    A                                     B                           C (result)
        1   STOCKOUT: Neel Kamal, no new order
        2   Demand to Diwali (8.2 a day x 38)     =8.2*38                     311.6
        3   Short by                              =B2-180                     131.6
        4   Lost contribution (₹292.67 each)      =ROUND(B3,0)*292.67         38632.44
        5   Potli, no new order                   =ROUND(4.8*38-90,0)*146.07  13438.44
        6   OVERSTOCK: Mor Pankh dhurrie
        7   Left at Diwali (0.95 a day x 38)      =55-0.95*38                 18.9
        8   Cash in leftover dhurries             =ROUND(B7,0)*1700           32300
        9   Holding cost a month, all 55          =55*1700*2%                 1870
        10  DEAD STOCK RISK: 300 potlis ordered
        11  Left after Diwali                     =90+300-4.8*38              207.6
        12  Value at cost                         =ROUND(B11,0)*160           33280
        13  Days to sell at the June rate         =ROUND(B11,0)/(36/30)       173.33</code></pre>
          <p>In plain words: without a new order, the cushion covers run out around 22 October. Rangrez would lose about ₹38,600 in the busiest weeks. The potlis run out even earlier, around 19 October.</p>
          <p>If Kabir orders 300 potlis "to be safe", about 208 are left after Diwali. Gift sales drop after the festival. At June's rate of 36 a month, those potlis take about 173 days to sell. Their holding cost is about ₹666 a month (₹33,280 × 2%). The right order is closer to 130, as the purchase order lesson shows.</p>
          <p>A stockout on an A item costs more than overstock on a slow item. But both are real. Check every forecast number before you act on it.</p>
        </div>
        <div class="lc-card">
          <h3>An honest clearance plan</h3>
          <p>Clearance means selling extra stock quickly, often at a lower price, to get cash back. Plan it early, while the stock can still sell. Here are Rangrez's options for 208 leftover potli sets. Contribution per order uses the usual channel mix and is made up.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Money per set</th><th>Speed</th><th>What to check</th></tr></thead>
            <tbody>
              <tr><td>Keep ₹549 for the wedding season</td><td>about ₹146 per order</td><td>Slow</td><td>Is wedding demand real? Look at last year's sales.</td></tr>
              <tr><td>Sale price ₹449 (43.8% below the real MRP of ₹799)</td><td>about ₹80 per order</td><td>Faster, if shoppers respond</td><td>Test it on one channel for two weeks first.</td></tr>
              <tr><td>Bundle: a potli with a bedsheet or cushion set</td><td>depends on the bundle price</td><td>Moves stock with A items</td><td>Work out the bundle's contribution first.</td></tr>
              <tr><td>Bulk sale to a wholesaler (made-up offer ₹180 a set)</td><td>₹20 above cost, ₹37,440 cash now</td><td>Fast</td><td>The cash can fund A items. Agree who pays transport.</td></tr>
              <tr><td>Donate</td><td>none</td><td>Fast</td><td>Last option. Ask your CA about the tax effect.</td></tr>
            </tbody>
          </table>
          <p><strong>Keep clearance honest.</strong> Show discounts only from the real MRP. Never raise the MRP to make a discount look bigger. Do not add false urgency, such as "sale ends tonight" when it does not. India's CCPA guidelines on dark patterns (tricks that push shoppers into buying) cover this. This is general education, not legal or tax advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the clearance mistakes</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha asks">We may have about 208 potli sets left after Diwali. They cost us ₹160 each. Suggest a clearance plan.</li>
              <li data-kind="answer" data-label="AI replies">Raise the MRP to ₹999 and show "55% off, today only" at ₹449. Each sale still makes ₹449 − ₹160 = ₹289 profit.</li>
              <li data-kind="warn" data-label="Honesty problem">Raising the MRP to show a bigger discount misleads shoppers. "Today only" is false urgency if the offer runs for weeks. Neha rejects both.</li>
              <li data-kind="check" data-label="Kabir checks the maths">₹289 ignores GST, fees, packing, shipping, failed orders and ads. The real money per order is much lower.</li>
              <li data-kind="user" data-label="Neha asks again">Keep the real MRP of ₹799. At ₹549 our contribution per order after all costs is ₹146.07. Work it out at ₹449 and ₹399 with our channel mix. Show each step.</li>
              <li data-kind="answer" data-label="AI replies">At ₹449, about ₹79.82 per order. At ₹399, about ₹45.68 per order.</li>
              <li data-kind="tool" data-label="Google Sheets">Kabir types both prices into the contribution sheet from the unit economics lesson.</li>
              <li data-kind="result" data-label="Sheet shows">79.82 and 45.68. The AI is right this time.</li>
              <li data-kind="check" data-label="Neha decides">She will try ₹449 on her own store for two weeks after Diwali. If more than 100 sets are still left, she will ask the wholesaler for a quote.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find your stockout, overstock and dead stock risks and to put a rupee cost on each. Use the sample data or your own product totals.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a stock planner for a small online shop in India. Use simple English.

        Sale event: [Diwali], [38] days from today.
        Holding cost: [2%] of stock value per month (my estimate).
        Products (stock now, forecast sales per day until the event, unit cost, contribution per order after all costs, units already on order):
        [Cushion covers: 180, 8.2, ₹310, ₹292.67, 0
        Potli bags: 90, 4.8, ₹160, ₹146.07, 0
        Dhurrie: 55, 0.95, ₹1,700, ₹877.66, 0
        Table runner: 210, 4.3, ₹190, ₹179.75, 0]

        Please:
        1. For each product, work out stock left on the event day, or the units I will be short.
        2. Label each: stockout risk, overstock risk or OK. Estimate the day each stockout starts.
        3. Put a ₹ cost on each risk: lost contribution for stockouts, cash on the shelf and monthly holding cost for overstock.
        4. For leftover stock, suggest 3 honest clearance options. No fake MRPs and no false urgency.
        5. Show each formula so I can check it in Google Sheets.</pre>
            <ul class="ai-try-checks">
              <li>Cushion covers should be short by about 132 units, costing about ₹38,600.</li>
              <li>Stockout cost uses contribution per order, not the selling price.</li>
              <li>Discounts must start from the real MRP.</li>
              <li>Remember the forecast is an estimate. Check it against your real sales each week.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Put a rupee number on every stock problem. Lost contribution shows the cost of a stockout. Cash on the shelf and holding cost show the cost of overstock. When stock is left over, plan an honest clearance early, while it can still sell.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Multi-Channel Stock and Warehouses</h1>
        </div>
        <p class="lc-lead">When you sell on your own store and on marketplaces, the same stock shows in several places. If the numbers do not match, you sell stock you do not have. Then you cancel orders and upset shoppers. In this lesson you will learn to run one shared stock across channels. You will set a small buffer and catch sync errors. You will also decide when to send stock to a marketplace warehouse. You will plan Rangrez Crafts' Buta Bagh stock for Diwali.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Buta Bagh stock plan. The Manchester workroom keeps 180 sets as one shared stock for the own Shopify store at 1.5 sets a day and Flipkart at 1.8 a day. 60 sets are sent to a marketplace warehouse that serves Amazon at 2.8 a day. A stock sync box shows that an order on any channel lowers stock on the others, with a buffer of 5 units hidden from marketplaces.">
            <defs><marker id="pi13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Buta Bagh stock for Diwali: festive sales per day (made-up)</text>
              <rect x="20" y="56" width="210" height="124" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="125" y="82" font-weight="700">Manchester workroom</text>
              <text x="125" y="104" font-size="12" fill="#9b99b8">one shared stock</text>
              <text x="125" y="130" fill="#fcd34d">Buta Bagh: 180 sets</text>
              <text x="125" y="152" font-size="11" fill="#9b99b8">3.3 a day, about 54 days</text>
              <rect x="20" y="222" width="210" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="125" y="248" font-weight="700">Marketplace warehouse</text>
              <text x="125" y="270" font-size="12" fill="#c4b5fd">60 Buta Bagh sets</text>
              <line x1="125" y1="182" x2="125" y2="218" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi13a)"/>
              <text x="135" y="204" font-size="11" fill="#9b99b8" text-anchor="start">send 60 sets</text>
              <rect x="330" y="44" width="180" height="50" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="420" y="65" font-weight="700">Own Shopify store</text>
              <text x="420" y="84" font-size="12" fill="#93c5fd">1.5 a day</text>
              <rect x="330" y="112" width="180" height="50" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="420" y="133" font-weight="700">Flipkart</text>
              <text x="420" y="152" font-size="12" fill="#93c5fd">1.8 a day</text>
              <rect x="330" y="229" width="180" height="50" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="420" y="250" font-weight="700">Amazon</text>
              <text x="420" y="269" font-size="12" fill="#c4b5fd">2.8 a day</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi13a)"><line x1="232" y1="100" x2="326" y2="72"/><line x1="232" y1="130" x2="326" y2="137"/><line x1="232" y1="254" x2="326" y2="254"/></g>
              <rect x="560" y="56" width="180" height="180" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="650" y="82" font-weight="700" fill="#6ee7b7">Stock sync</text>
              <text x="650" y="106" font-size="12">An order on any</text>
              <text x="650" y="124" font-size="12">channel lowers the</text>
              <text x="650" y="142" font-size="12">stock on the others</text>
              <text x="650" y="176" font-size="12" fill="#fcd34d">Buffer: hide 5 units</text>
              <text x="650" y="194" font-size="12" fill="#fcd34d">from marketplaces</text>
              <text x="650" y="218" font-size="11" fill="#9b99b8">count and fix weekly</text>
              <g stroke="#10b981" stroke-width="1.2" stroke-dasharray="4 4"><line x1="512" y1="69" x2="558" y2="100"/><line x1="512" y1="137" x2="558" y2="146"/><line x1="512" y1="254" x2="558" y2="210"/></g>
            </g>
          </svg>
          <figcaption>The Manchester stock serves the own store and Flipkart. A marketplace warehouse holds a separate stock for Amazon. A sync keeps every channel's number up to date.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>One stock, three shop windows</h3>
          <p>Rangrez Crafts ships every order from one Manchester workroom. The same 240 Buta Bagh sets show on Shopify, Amazon and Flipkart. This is called <strong>pooled stock</strong>: one stock that all channels share.</p>
          <p>Pooled stock works well for a small shop. You do not need to guess each channel's share. But every channel must know the real number. When a set sells on Amazon, the number on Shopify and Flipkart must drop too. This is <strong>stock sync</strong>. Many sellers use an inventory app or the store's own marketplace connection for it. Check how often your tool syncs: every few minutes, or once a day.</p>
          <p>If the sync fails, you <strong>oversell</strong>: you accept an order for stock you do not have. You must cancel it. Marketplaces track seller cancellations. Too many can hurt your listings or your account. Check Seller Central or Seller Hub help for the current rules.</p>
          <p><strong>Common sync errors:</strong></p>
          <ul class="lc-list">
            <li><strong>Wrong SKU link:</strong> the "set of 5" cushion listing is linked to a single-cover SKU, so one sale removes only one cover.</li>
            <li><strong>Bundles:</strong> a bedsheet + cushion bundle sells, but only one of the two items goes down.</li>
            <li><strong>Returns:</strong> a good returned item is not added back, or a damaged one is added back.</li>
            <li><strong>Hand edits:</strong> Kabir changes Flipkart stock by hand and forgets Shopify.</li>
            <li><strong>Delays:</strong> the sync runs once a night, and Diwali orders come in all day.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Buffers and bundle stock in a sheet</h3>
          <p>A <strong>buffer</strong> is a few units you hide from some channels. It protects you when stock is low and the sync is slow. Rangrez hides about one day of festive sales from the marketplaces. For potli bags, that is 4.8 a day, so the buffer is 5 sets. The own store shows the full stock.</p>
          <p>In the sheet, column B holds the real stock. The own store column uses <code>=B2</code>. The marketplace column uses <code>=MAX(0,B2-5)</code>, so it never goes below 0. Copy both down.</p>
          <table class="lc-table">
            <thead><tr><th>Potli stock level</th><th>Real stock (B)</th><th>Own store shows</th><th>Amazon and Flipkart show</th></tr></thead>
            <tbody>
              <tr><td>Plenty</td><td>40</td><td>40</td><td>35</td></tr>
              <tr><td>Getting low</td><td>12</td><td>12</td><td>7</td></tr>
              <tr><td>Almost gone</td><td>5</td><td>5</td><td>0</td></tr>
            </tbody>
          </table>
          <p>The last row shows the point. With only 5 sets left, the marketplaces show 0. The last sets sell on Neha's own store, where a late cancellation hurts less.</p>
          <p><strong>Bundle stock:</strong> a bundle can only sell as many as its scarcest item. If Rangrez has 240 Buta Bagh sets and 180 Neel Kamal sets, the bundle listing should show <code>=MIN(240,180)</code>, which is 180. And each bundle sale must lower both items.</p>
          <p>Count your real stock every week in the festive season. Fix any channel that shows a different number. The count in the workroom is the truth, not the number on a screen.</p>
        </div>
        <div class="lc-card">
          <h3>Marketplace fulfilment: send stock to their warehouse</h3>
          <p>Amazon's service is called Fulfillment by Amazon (FBA). Flipkart has its own fulfilment service too. The idea is the same: you send stock to the marketplace's warehouse. The marketplace stores it, packs orders, ships them and handles many returns. It can make delivery faster and may make your listing eligible for faster-delivery labels.</p>
          <p><strong>What it costs.</strong> You pay transport to the warehouse, fulfilment fees per order and storage fees. Stock that sits for a long time can cost more. Taking unsold stock back also costs money. If the warehouse is in another state, you usually need a GST registration in that state too, with the warehouse added as a place of business. Ask your CA before you send stock. The fees, rules and programme names change, so check Seller Central or Seller Hub help.</p>
          <p><strong>The stock is split.</strong> Stock in a marketplace warehouse serves only that marketplace. It cannot fill a Shopify order. You now have two stocks to watch.</p>
          <p><strong>Worked example.</strong> In September, 56 of the 122 Buta Bagh sets sold on Amazon (45.9%). The festive forecast is 6.1 sets a day, so Amazon's share is about 2.8 a day. Neha sends three weeks of Amazon sales: 2.8 × 21 = 58.8, so 60 sets. Manchester keeps 180 sets for the own store and Flipkart. At 3.3 a day, that lasts about 54 days.</p>
          <table class="lc-table">
            <thead><tr><th>Good fit for a marketplace warehouse</th><th>Poor fit</th></tr></thead>
            <tbody>
              <tr><td>A items with steady marketplace sales, like Buta Bagh</td><td>Slow, bulky items, like the Mor Pankh dhurrie (0.95 a day, 55 in stock)</td></tr>
              <tr><td>Items with plenty of stock after the split</td><td>Items already short, like the potli bags before the new stock arrives</td></tr>
              <tr><td>Items you can refill before the warehouse runs out</td><td>Items with a long supplier lead time and no spare stock</td></tr>
            </tbody>
          </table>
          <p>Set a refill rule. For example: send more when the warehouse holds about 10 days of Amazon sales, which is 28 sets. Check the marketplace's own stock report every few days.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: safe or risky?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Kabir lists some stock habits for the Diwali rush. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="safe" data-label="Safe practice"></div>
              <div data-sorter-target="bucket" data-bucket="risky" data-label="Risky practice"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="safe" data-why="A small buffer stops overselling when the stock is low and the sync is slow.">Hide 5 potli sets from the marketplaces when stock is low</li>
              <li data-bucket="risky" data-why="Orders come in all day in the festive season. A nightly sync can oversell many units.">Sync stock to all channels once a night</li>
              <li data-bucket="safe" data-why="The count in the workroom is the truth. Weekly counts catch sync errors early.">Count stock every week and fix any channel that is wrong</li>
              <li data-bucket="risky" data-why="A slow, bulky item in a marketplace warehouse can pile up storage fees, and it cannot serve other channels.">Send all 55 dhurries to a marketplace warehouse</li>
              <li data-bucket="safe" data-why="Three weeks of Amazon sales leaves plenty of stock in Manchester for the other channels.">Send 60 Buta Bagh sets to a marketplace warehouse and keep 180 in Manchester</li>
              <li data-bucket="risky" data-why="A bundle can only sell as many as its scarcest item, and both items must go down.">Show the bundle stock as 240 because there are 240 bedsheets</li>
              <li data-bucket="risky" data-why="Hand edits on one channel are easy to forget on the others.">Change Flipkart stock by hand in the evening</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan your stock across channels for a busy season. Use the sample data or your own channel sales and stock.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an e-commerce operations adviser for a small Indian seller. Use simple English.

        I sell on [my own Shopify store, Amazon and Flipkart] and ship from [one workroom in Manchester].
        Busy season: [Diwali], [38] days away.
        Products (stock now, forecast sales per day, share of sales by channel own/Amazon/Flipkart):
        [Bedsheet set: 240, 6.1, 25%/46%/29%
        Cushion covers: 180 (190 more arrive in 14 days), 8.2, 25%/45%/30%
        Potli bags: 90 (70 more arrive in 10 days), 4.8, 25%/45%/30%
        Dhurrie: 55, 0.95, 25%/45%/30%]

        Please:
        1. Say which products, if any, suit a marketplace warehouse, and how many units to send. Explain why.
        2. Suggest a buffer for each product and a Google Sheets formula for the stock each channel should show.
        3. Give me a weekly checklist to catch sync errors (SKU links, bundles, returns, hand edits).
        4. List the fees and rules I must check on the marketplace help pages. Do not state fee amounts.</pre>
            <ul class="ai-try-checks">
              <li>Does it keep enough stock at home for the other channels after any split?</li>
              <li>Does it avoid sending slow or short-stock items to a warehouse?</li>
              <li>Buffer formulas should never show less than 0, for example =MAX(0,B2-5).</li>
              <li>It should not state marketplace fees as facts. Check the current help pages.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> One shared stock is simple, but only if every channel shows the true number. Use a small buffer, count every week, and send stock to a marketplace warehouse only when you can spare it and refill it in time.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Supplier Planning and Purchase Orders</h1>
        </div>
        <p class="lc-lead">A good forecast is useless if the stock arrives too late. Supplier planning turns your forecast into orders: what to buy, how much, and by which date. In this lesson you will use lead times and MOQs to build Rangrez Crafts' Diwali purchase orders in a spreadsheet. You will also use AI to draft a clear order message, and check every number before you send it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Timeline of purchase orders from 1 October to 9 November 2026. Neel Kamal 190 sets ordered 1 October, arrive 15 October. Potli 70 sets ordered 1 October, arrive 11 October. Potli 60 more ordered 17 October, arrive 27 October. Buta Bagh 100 sets ordered 5 October, arrive 26 October. Razai 40 ordered 12 October, arrive 9 November, after Diwali. Dhurrie review on 16 October and table runner review on 28 October. Diwali is 8 November.">
            <defs><marker id="pi14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd" text-anchor="middle">Rangrez Crafts' Diwali purchase orders (made-up)</text>
              <line x1="682" y1="52" x2="682" y2="262" stroke="#ec4899" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="682" y="46" font-size="12" font-weight="700" fill="#f9a8d4" text-anchor="middle">Diwali 8 Nov</text>
              <text x="20" y="75">Neel Kamal: 190</text>
              <rect x="150" y="61" width="196" height="18" rx="4" fill="#10b981"/>
              <text x="352" y="75" font-size="11" fill="#9b99b8">arrives 15 Oct</text>
              <text x="20" y="109">Potli: 70</text>
              <rect x="150" y="95" width="140" height="18" rx="4" fill="#f59e0b"/>
              <text x="296" y="109" font-size="11" fill="#9b99b8">arrives 11 Oct</text>
              <text x="20" y="143">Potli: 60 more</text>
              <rect x="374" y="129" width="140" height="18" rx="4" fill="#f59e0b"/>
              <text x="520" y="143" font-size="11" fill="#9b99b8">arrives 27 Oct</text>
              <text x="20" y="177">Buta Bagh: 100</text>
              <rect x="206" y="163" width="294" height="18" rx="4" fill="#10b981"/>
              <text x="506" y="177" font-size="11" fill="#9b99b8">arrives 26 Oct</text>
              <text x="20" y="211">Razai: 40</text>
              <rect x="304" y="197" width="392" height="18" rx="4" fill="#3b82f6"/>
              <text x="500" y="210" font-size="11" fill="#ffffff" text-anchor="middle">arrives 9 Nov, after Diwali</text>
              <text x="20" y="245">Review only</text>
              <path d="M360,232 L367,239 L360,246 L353,239 z" fill="#8b5cf6"/>
              <text x="372" y="244" font-size="11" fill="#c4b5fd">dhurrie, 16 Oct</text>
              <path d="M528,232 L535,239 L528,246 L521,239 z" fill="#8b5cf6"/>
              <text x="540" y="244" font-size="11" fill="#c4b5fd">runner, 28 Oct</text>
              <line x1="150" y1="266" x2="700" y2="266" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi14a)"/>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="150" y="286">1 Oct</text>
                <text x="346" y="286">15 Oct</text>
                <text x="584" y="286">1 Nov</text>
              </g>
            </g>
          </svg>
          <figcaption>Each bar runs from the order date to the arrival date. That gap is the supplier's lead time. The razai arrives after Diwali on purpose, for the winter.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The words and the rule</h3>
          <ul class="lc-list">
            <li><strong>PO (purchase order):</strong> a written order to your supplier. It lists the items, quantities, prices and delivery date.</li>
            <li><strong>Lead time:</strong> days from sending the PO to having the stock ready to sell.</li>
            <li><strong>MOQ (minimum order quantity):</strong> the smallest order the supplier accepts. Rangrez's block-print unit makes at least 100 Buta Bagh sets per order.</li>
            <li><strong>Reorder point:</strong> the stock level that tells you to order now. Daily demand × lead time, plus safety stock (extra stock in case sales jump or supply is late).</li>
            <li><strong>Stock on order:</strong> units you have ordered but not yet received. Count them, or you will order twice.</li>
          </ul>
          <p>Rangrez uses one simple rule for the Diwali season:</p>
          <pre><code>Need     = demand until Diwali + safety stock − stock on hand − stock on order
        PO size  = the need, rounded up to a multiple of 10, and never less than the MOQ</code></pre>
          <p>The forecast is Neha's made-up estimate: September daily sales × 1.5. Safety stock is 7 days of that forecast. Rangrez plans for the 38 days before Diwali: 1 October to 7 November. Add the 7 safety days, and the need covers 38 + 7 = 45 days of forecast. That is why the sheet uses <code>B2*45</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the PO plan in a sheet</h3>
          <p>Kabir fills in columns A to D and H. The sheet works out the rest. Nothing is on order yet. All numbers are made up.</p>
          <pre><code>Col  What                   Formula (row 2)                                   Buta Bagh result
        B    Forecast per day       typed in                                          6.1
        C    Lead time (days)       typed in                                          21
        D    Stock on hand          typed in                                          240
        E    Reorder point          =B2*(C2+7)                                        170.8
        F    Order by               =DATE(2026,10,1)+MAX(0,ROUNDDOWN((D2-E2)/B2,0))   12 Oct 2026
        G    Need until Diwali      =B2*45-D2                                         34.5
        H    MOQ                    typed in                                          100
        I    PO size                =IF(G2&lt;=0,0,MAX(H2,CEILING(G2,10)))              100</code></pre>
          <p>Format column F as a date. Here is the whole plan:</p>
          <table class="lc-table">
            <thead><tr><th>Product</th><th>Per day</th><th>Lead time</th><th>Stock</th><th>Reorder point</th><th>Order by (rule)</th><th>Need</th><th>MOQ</th><th>PO size (rule)</th></tr></thead>
            <tbody>
              <tr><td>Buta Bagh (A)</td><td>6.1</td><td>21</td><td>240</td><td>170.8</td><td>12 Oct</td><td>34.5</td><td>100</td><td>100</td></tr>
              <tr><td>Neel Kamal (A)</td><td>8.2</td><td>14</td><td>180</td><td>172.2</td><td>1 Oct</td><td>189.0</td><td>150</td><td>190</td></tr>
              <tr><td>Razai (C)</td><td>1.3</td><td>28</td><td>60</td><td>45.5</td><td>12 Oct</td><td>−1.5</td><td>40</td><td>0</td></tr>
              <tr><td>Table runner (B)</td><td>4.3</td><td>14</td><td>210</td><td>90.3</td><td>28 Oct</td><td>−16.5</td><td>100</td><td>0</td></tr>
              <tr><td>Dhurrie (B)</td><td>0.95</td><td>35</td><td>55</td><td>39.9</td><td>16 Oct</td><td>−12.25</td><td>30</td><td>0</td></tr>
              <tr><td>Potli bags (C)</td><td>4.8</td><td>10</td><td>90</td><td>81.6</td><td>2 Oct</td><td>126.0</td><td>60</td><td>130</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Where Neha changes the sheet's answer</h3>
          <p>The sheet gives a first answer. Neha knows things the sheet does not.</p>
          <ul class="lc-list">
            <li><strong>Buta Bagh: order a week early.</strong> The rule date is 12 October, so the sets would arrive on 2 November, with only about 45 left. That is too close to Diwali, and the Sanganer unit is often late in October. Many workshops also close for a few days around the festival. Neha orders a week early, on 5 October, so the sets arrive on 26 October.</li>
            <li><strong>Buta Bagh: accept the MOQ.</strong> The need is only 35 sets, but the MOQ is 100. That is 65 extra sets, or ₹46,800. It is an A item, and 65 sets is about 16 days of September sales. Neha accepts.</li>
            <li><strong>Potli bags: split the order.</strong> She orders 70 now and 60 more on 17 October, after checking real sales. Both parts meet the MOQ of 60. If gift sales are weaker, she can cut the second order.</li>
            <li><strong>Razai: order for winter.</strong> The need until Diwali is below zero. But stock hits the reorder point on 12 October, and winter sales come after Diwali. She orders the MOQ of 40 on 12 October.</li>
            <li><strong>Dhurrie and runner: wait.</strong> Both have enough stock for Diwali. A dhurrie order would cost ₹51,000 and arrive on 20 November. Neha will review them on their reorder dates with real sales.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>PO</th><th>Send on</th><th>Arrives</th><th>Cost at unit cost</th></tr></thead>
            <tbody>
              <tr><td>Neel Kamal, 190 sets × ₹310</td><td>1 Oct</td><td>15 Oct</td><td>₹58,900</td></tr>
              <tr><td>Potli, 70 sets now + 60 later × ₹160</td><td>1 Oct and 17 Oct</td><td>11 Oct and 27 Oct</td><td>₹20,800</td></tr>
              <tr><td>Buta Bagh, 100 sets × ₹720</td><td>5 Oct</td><td>26 Oct</td><td>₹72,000</td></tr>
              <tr><td>Razai, 40 pieces × ₹1,150</td><td>12 Oct</td><td>9 Nov</td><td>₹46,000</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td></td><td><strong>₹1,97,700</strong></td></tr>
            </tbody>
          </table>
          <p>Check that you have the cash, and check the payment terms. Costs here are without GST. Ask your CA how GST on supplier bills works for you. This is general education, not financial or tax advice.</p>
        </div>
        <div class="lc-card">
          <h3>Write a clear PO message with AI</h3>
          <p>A clear PO prevents wrong colours, short deliveries and late stock. AI can draft it fast, in English or Hindi. You must check every number against your sheet.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a message to my supplier to send more cushion covers fast.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a short, polite purchase order message to my supplier, [Sanganer block-print unit].
        PO number [RC-PO-2026-041], date [1 October 2026].
        Item: [Neel Kamal cushion covers, set of 5, indigo print, 16 x 16 inch], SKU [RC-CC-02].
        Quantity: [190 sets]. Price: [₹310 per set, as per your last quote]. GST as per invoice.
        Deliver to: [our Manchester workroom] by [15 October 2026].
        Ask them to confirm quantity, price and date in writing today.
        Ask if they close for Diwali, and if part delivery is possible.
        Give an English version and a simple Hindi version. Do not add any terms I did not give.</code></pre>
          <p>Before you send, check the PO number, SKU, quantity, price and date. Make sure the AI did not add discounts, penalties or payment terms that you never agreed.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: plan a purchase order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Kabir's purchase order steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Count stock on hand and note any stock already on order.</li>
              <li data-order="2">Forecast daily demand until the sale ends.</li>
              <li data-order="3">Work out the reorder point and the order-by date for each product.</li>
              <li data-order="4">Work out the need, then round it up to meet the MOQ.</li>
              <li data-order="5">Check cash and dates, then adjust: order early, split an order, or wait.</li>
              <li data-order="6">Send a clear PO and get the supplier to confirm quantity, price and date in writing.</li>
              <li data-order="7">Track each delivery and update the plan with real sales every week.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a purchase order plan and a supplier message. Use the sample data or your own products, lead times and MOQs.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a purchasing planner for a small online shop in India. Use simple English.

        Today: [1 October 2026]. Sale event: [Diwali, 8 November 2026].
        Rule: safety stock = [7] days of forecast. Reorder point = forecast per day x (lead time + safety days).
        Need = forecast x (days to the event + safety days) - stock on hand - stock on order.
        PO size = need rounded up to a multiple of 10, and at least the MOQ.

        Products (forecast per day, lead time in days, stock on hand, stock on order, MOQ, unit cost):
        [Cushion covers: 8.2, 14, 180, 0, 150, ₹310
        Potli bags: 4.8, 10, 90, 0, 60, ₹160
        Bedsheet set: 6.1, 21, 240, 0, 100, ₹720
        Razai: 1.3, 28, 60, 0, 40, ₹1,150]

        Please:
        1. Make a table: reorder point, order-by date, need, PO size, arrival date and PO cost.
        2. Give the Google Sheets formula for each column.
        3. Flag any order that arrives too close to the event or only because of the MOQ.
        4. Draft a short PO message for the first order, in English and simple Hindi, asking the supplier to confirm in writing.</pre>
            <ul class="ai-try-checks">
              <li>Cushion covers: need 189, PO size 190, order today.</li>
              <li>Bedsheet set: need 34.5, but the MOQ makes it 100.</li>
              <li>Does it subtract stock already on order?</li>
              <li>Check the PO message for any terms or prices you did not give.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A purchase order plan starts from the date you need the stock and works back through the lead time. Let the sheet do the maths, then use what you know: order early before festivals, split big orders, and wait on slow items.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Capstone: Price and Stock Plan for a Festival Season</h1>
        </div>
        <p class="lc-lead">Now you will put the whole course together. It is 1 October 2026, and Diwali is on Sunday 8 November, 38 days away. Neha wants one plan for Rangrez Crafts' 6 key products. It must cover what each order earns and which products come first. It must also cover prices, offers, the forecast and purchase orders. Last, it must say what to do with leftover stock after Diwali. You will follow her plan step by step, check the key numbers, and then use AI to build the same plan for your own shop.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="The festive plan in six steps. One: unit economics, 146 to 878 rupees per order. Two: priorities, A items are Buta Bagh and Neel Kamal. Three: forecast, about 975 units in 38 days. Four: prices and offers, one honest offer on Buta Bagh at 1,799 rupees. Five: purchase orders, 1,97,700 rupees in 4 orders. Six: after Diwali, clearance plans for potli, dhurrie and runner. A weekly review every Monday compares real sales with the forecast.">
            <defs><marker id="pi15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Rangrez Crafts' Diwali 2026 plan (made-up numbers)</text>
              <rect x="20" y="42" width="220" height="78" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="130" y="66" font-weight="700">1. Unit economics</text>
              <text x="130" y="90" fill="#93c5fd">₹146 to ₹878</text>
              <text x="130" y="108" font-size="11" fill="#9b99b8">per order, after all costs</text>
              <rect x="270" y="42" width="220" height="78" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="66" font-weight="700">2. Priorities (ABC)</text>
              <text x="380" y="90" fill="#6ee7b7">A: Buta Bagh, Neel Kamal</text>
              <text x="380" y="108" font-size="11" fill="#9b99b8">watch potli and razai too</text>
              <rect x="520" y="42" width="220" height="78" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="630" y="66" font-weight="700">3. Forecast</text>
              <text x="630" y="90" fill="#67e8f9">about 975 units</text>
              <text x="630" y="108" font-size="11" fill="#9b99b8">in 38 days, Sept × 1.5</text>
              <rect x="20" y="162" width="220" height="78" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="130" y="186" font-weight="700">4. Prices and offers</text>
              <text x="130" y="210" fill="#fcd34d">Buta Bagh ₹1,799</text>
              <text x="130" y="228" font-size="11" fill="#9b99b8">one honest offer, real MRP</text>
              <rect x="270" y="162" width="220" height="78" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="186" font-weight="700">5. Purchase orders</text>
              <text x="380" y="210" fill="#c4b5fd">₹1,97,700 in 4 POs</text>
              <text x="380" y="228" font-size="11" fill="#9b99b8">order early, split potli</text>
              <rect x="520" y="162" width="220" height="78" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="630" y="186" font-weight="700">6. After Diwali</text>
              <text x="630" y="210" fill="#f9a8d4">clearance triggers</text>
              <text x="630" y="228" font-size="11" fill="#9b99b8">potli, dhurrie, runner</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pi15a)">
                <line x1="242" y1="81" x2="266" y2="81"/><line x1="492" y1="81" x2="516" y2="81"/>
                <line x1="630" y1="122" x2="140" y2="158"/>
                <line x1="242" y1="201" x2="266" y2="201"/><line x1="492" y1="201" x2="516" y2="201"/>
              </g>
              <rect x="20" y="266" width="720" height="40" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="291" font-weight="700" fill="#6ee7b7">Every Monday: real sales vs forecast, then adjust steps 3 to 6</text>
            </g>
          </svg>
          <figcaption>The festive plan runs in six steps. The weekly review keeps it up to date as real Diwali sales come in.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Steps 1 to 3: the numbers behind the plan</h3>
          <p>Neha starts with three facts for each product. All numbers are made up, and the fees are made-up examples.</p>
          <ul class="lc-list">
            <li><strong>Unit economics:</strong> contribution per order after GST, fees, packing, shipping, failed orders and ads. Using the usual channel mix, it runs from about ₹146 (potli bags) to about ₹878 (dhurrie).</li>
            <li><strong>Priorities:</strong> ABC analysis makes Buta Bagh and Neel Kamal the A items. Potli bags are C, but they are growing fast. The razai is C, but it is a winter product.</li>
            <li><strong>Forecast:</strong> September daily sales × 1.5 for the 38 days before Diwali, 1 October to 7 November. Neha chose the 1.5 herself, so it is an estimate to test each week.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Product (class)</th><th>Forecast to Diwali</th><th>Stock + new POs</th><th>Left at Diwali</th><th>Price plan</th><th>After Diwali</th></tr></thead>
            <tbody>
              <tr><td>Buta Bagh (A)</td><td>231.8</td><td>240 + 100</td><td>about 108</td><td>Test ₹1,799</td><td>Keep selling in the wedding season</td></tr>
              <tr><td>Neel Kamal (A)</td><td>311.6</td><td>180 + 190</td><td>about 58</td><td>Full price ₹999</td><td>Reorder if sales stay high</td></tr>
              <tr><td>Razai (C, winter)</td><td>49.4</td><td>60 (+40 on 9 Nov)</td><td>about 11</td><td>Full price ₹2,799</td><td>Winter sales; new stock arrives</td></tr>
              <tr><td>Table runner (B)</td><td>163.4</td><td>210</td><td>about 47</td><td>Add-on offer</td><td>Review on 28 Oct</td></tr>
              <tr><td>Dhurrie (B)</td><td>36.1</td><td>55</td><td>about 19</td><td>Full price ₹3,999</td><td>Clearance test if 10+ left on 30 Nov</td></tr>
              <tr><td>Potli bags (C, growing)</td><td>182.4</td><td>90 + 130</td><td>about 38</td><td>Full price ₹549</td><td>Clearance test if 30+ left on 20 Nov</td></tr>
            </tbody>
          </table>
          <p>Left at Diwali = stock + new POs − forecast. For Buta Bagh: 240 + 100 − 231.8 = 108.2. The razai's 40 pieces arrive after Diwali, so they are not counted.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: prices and offers that fit the stock</h3>
          <p>The rule is simple: <strong>do not discount a product that is already short</strong>. Neel Kamal and the potli bags only just have enough stock with the new POs. A discount would bring more orders than the stock can fill. So they stay at full price.</p>
          <p>Buta Bagh has spare stock: 340 sets for a forecast of about 232. Neha tests a Diwali price of ₹1,799. The MRP stays ₹2,499, so the offer is 28.0% below the real MRP.</p>
          <pre><code>    A                                     B                                C (result)
        1   Contribution per order at ₹1,899      473.53
        2   Contribution per order at ₹1,799      406.38
        3   Change                                =B2/B1-1                         -14.2%
        4   Orders needed to earn the same        =ROUNDUP(231.8*B1/B2,0)          271
        5   Extra orders needed                   =B4/231.8-1                      16.9%
        6   Daily orders needed (6.1 now)         =6.1*B1/B2                       7.11
        7   Stock left if 271 sell                =240+100-B4                      69</code></pre>
          <p>In plain words: each order earns about 14% less, so Neha needs about 17% more orders to earn the same. That is about 7.1 orders a day instead of 6.1. The stock can cover it and still leave 69 sets, above the safety stock of about 43.</p>
          <p>She starts the offer on 26 October, when the new sets arrive. She shows the real end date. She tracks daily orders every Monday. If orders stay near 6.1 a day, the offer earns less than full price did. Then she will not repeat it next year.</p>
          <p><strong>Keep every offer honest.</strong> Show the discount from the real MRP. Show the total price, with any shipping, before the shopper pays. No fake countdown timers and no "only 2 left" when you have 100. These are dark patterns under India's CCPA guidelines. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 5 and 6: orders, cash and clearance</h3>
          <p>The purchase orders come from the supplier lesson: Neel Kamal 190 sets on 1 October, potli 70 + 60 sets, Buta Bagh 100 sets on 5 October, and 40 razais on 12 October. Together they cost ₹1,97,700 without GST. Buta Bagh is ordered a week before its rule date of 12 October, so the sets arrive on 26 October.</p>
          <table class="lc-table">
            <thead><tr><th>Big number</th><th>Value</th></tr></thead>
            <tbody>
              <tr><td>Stock on 1 October, at cost</td><td>₹4,45,400</td></tr>
              <tr><td>New purchase orders, at cost</td><td>₹1,97,700</td></tr>
              <tr><td>Contribution in 38 days, if the forecast comes true (current prices)</td><td>about ₹3,18,700</td></tr>
              <tr><td>Stock left at Diwali, at cost (before the razai PO)</td><td>about ₹1,55,200</td></tr>
              <tr><td>Fixed costs</td><td>₹1,20,000 a month</td></tr>
            </tbody>
          </table>
          <p><strong>Weekly triggers</strong> (Neha writes them down now, so she does not panic later):</p>
          <ul class="lc-list">
            <li>A product sells 20% above forecast for a week: move its next PO earlier, or make the second potli order bigger.</li>
            <li>A product sells 20% below forecast: cut or delay its next PO.</li>
            <li>A supplier is more than 3 days late: set the marketplace buffer higher and tell the team.</li>
            <li>Potli bags: 30 or more left on 20 November: make wedding-season gift sets, then test ₹449 (about ₹80 per order).</li>
            <li>Dhurrie: 10 or more left on 30 November: test ₹3,599 (about ₹612 per order across the channels, instead of ₹878).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: check Neha's AI planning session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha asks">Here is my stock, forecast and contribution per order for 6 products. Suggest Diwali offers.</li>
              <li data-kind="answer" data-label="AI replies">Give 20% off everything in Diwali week to boost sales.</li>
              <li data-kind="warn" data-label="The mistake">Potli bags and Neel Kamal only just have enough stock. A discount would cause stockouts and earn less on every order.</li>
              <li data-kind="user" data-label="Neha asks again">Only suggest offers for products with spare stock. For Buta Bagh at ₹1,799 instead of ₹1,899, contribution falls from ₹473.53 to ₹406.38. How many orders do I need to earn the same as 231.8 orders now?</li>
              <li data-kind="answer" data-label="AI replies">231.8 × 473.53 ÷ 406.38 = 270.1, so about 271 orders. That is about 17% more.</li>
              <li data-kind="tool" data-label="Google Sheets">Kabir types =ROUNDUP(231.8*473.53/406.38,0) into the plan.</li>
              <li data-kind="result" data-label="Sheet shows">271</li>
              <li data-kind="check" data-label="Kabir checks stock">240 sets now + 100 on order = 340. After 271 sales, 69 are left. That is above the safety stock.</li>
              <li data-kind="check" data-label="Neha decides">She runs ₹1,799 from 26 October with a real end date. She will check each Monday if daily orders reach about 7.1.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a festive price and stock plan for your own shop. Use the sample data or your own numbers. Use product totals only, never customer data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a pricing and stock planner for a small online shop in India. Use simple English. This is for learning, not financial advice.

        Event: [Diwali, 8 November 2026]. Today: [1 October 2026]. Forecast: [last month's daily sales x 1.5]. Safety stock: [7] days.
        Products (price incl. GST, real MRP, contribution per order after all costs, last month's sales, stock, lead time days, MOQ, unit cost):
        [Bedsheet set: ₹1,899, ₹2,499, ₹473.53, 122, 240, 21, 100, ₹720
        Cushion covers: ₹999, ₹1,299, ₹292.67, 164, 180, 14, 150, ₹310
        Potli bags: ₹549, ₹799, ₹146.07, 96, 90, 10, 60, ₹160]

        Make a one-page plan:
        1. Forecast to the event, stock left, and any shortfall.
        2. POs: size (need rounded up to 10, at least the MOQ), order date, arrival and cost.
        3. Offers only for products with spare stock. Show contribution at the new price and the extra orders needed.
        4. Clearance triggers after the event, and 3 weekly checks.
        5. Google Sheets formulas for the key numbers.
        Keep MRPs and discounts honest. Do not invent numbers.</pre>
            <ul class="ai-try-checks">
              <li>Cushion covers and potli bags should need POs of 190 and 130, with no discount.</li>
              <li>Does it work out contribution at the new price before suggesting an offer?</li>
              <li>Discounts start from the real MRP, with no fake urgency.</li>
              <li>Check two numbers yourself in a spreadsheet before you use the plan.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A festive plan links price and stock. Discount only what you can supply. Order early for the products that matter most. Write clearance triggers before the rush, and check real sales against the plan every week.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

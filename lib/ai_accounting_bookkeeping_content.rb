module AiAccountingBookkeepingContent
  # Units (sidebar dividers): 1–4 Accounting and AI Basics · 5–9 Daily Bookkeeping · 10–14 Reports, Tax and Controls · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Accounting Basics</h1>
        </div>
        <p class="lc-lead">Every business needs to know two things: "Are we making money?" and "How much cash do we have?" Books of accounts answer these questions. In this lesson you will learn what bookkeeping and accounting are, how they are different, and why every business keeps books. You will also see a simple cash book for a small bakery. These basics make the rest of the course, and your AI prompts, much clearer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 230" role="img" aria-label="A flow from a business event, to documents, to bookkeeping, to accounting, to decisions. Bookkeeping is the daily recording. Accounting is the summary, reports and advice.">
            <defs><marker id="acc1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="15" y="26" text-anchor="start" font-size="12" fill="#9b99b8">From one sale to a business decision</text>
              <rect x="15" y="45" width="130" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="80" y="75" font-weight="700">Business event</text><text x="80" y="96" font-size="11" fill="#9b99b8">sale, purchase</text>
              <rect x="165" y="45" width="130" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="230" y="75" font-weight="700">Documents</text><text x="230" y="96" font-size="11" fill="#9b99b8">invoice, receipt</text>
              <rect x="315" y="45" width="130" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="75" font-weight="700">Bookkeeping</text><text x="380" y="96" font-size="11" fill="#9b99b8">record each one</text>
              <rect x="465" y="45" width="130" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="530" y="75" font-weight="700">Accounting</text><text x="530" y="96" font-size="11" fill="#9b99b8">summarise, check</text>
              <rect x="615" y="45" width="130" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="680" y="75" font-weight="700">Decisions</text><text x="680" y="96" font-size="11" fill="#9b99b8">owner, bank, tax</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#acc1a)">
                <line x1="146" y1="80" x2="163" y2="80"/>
                <line x1="296" y1="80" x2="313" y2="80"/>
                <line x1="446" y1="80" x2="463" y2="80"/>
                <line x1="596" y1="80" x2="613" y2="80"/>
              </g>
              <rect x="15" y="140" width="430" height="62" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="230" y="166" font-size="12.5" fill="#67e8f9">Bookkeeping: record every transaction, every day</text>
              <text x="230" y="188" font-size="11" fill="#9b99b8">cash book, sales, purchases, bank payments</text>
              <rect x="465" y="140" width="280" height="62" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="605" y="166" font-size="12.5" fill="#fcd34d">Accounting: summarise and report</text>
              <text x="605" y="188" font-size="11" fill="#9b99b8">P&amp;L, balance sheet, tax returns</text>
            </g>
          </svg>
          <figcaption>Bookkeeping records the facts. Accounting turns them into reports that help people decide.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Bookkeeping and accounting</h3>
          <p>A <strong>transaction</strong> is any event where money or value moves. A sale, a purchase and a salary payment are all transactions.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Bookkeeping</th><th>Accounting</th></tr></thead>
            <tbody>
              <tr><td><strong>What</strong></td><td>Records each transaction with its date, amount and details</td><td>Checks the records, summarises them and explains what they mean</td></tr>
              <tr><td><strong>When</strong></td><td>Every day or every week</td><td>Every month, quarter and year</td></tr>
              <tr><td><strong>Who</strong></td><td>The owner, a bookkeeper or an accounts assistant</td><td>An accountant or a chartered accountant (CA)</td></tr>
              <tr><td><strong>Output</strong></td><td>Cash book, sales list, purchase list, bank entries</td><td>P&amp;L (profit and loss statement), balance sheet, tax returns, advice</td></tr>
            </tbody>
          </table>
          <p>Small businesses often keep books in a spreadsheet. Bigger ones use accounting software such as Tally, Zoho Books or QuickBooks. The ideas are the same in every tool.</p>
        </div>
        <div class="lc-card">
          <h3>Why businesses keep books</h3>
          <ul class="lc-list">
            <li><strong>To know the profit.</strong> Profit is income minus expenses. Without books, the owner can only guess.</li>
            <li><strong>To know the cash.</strong> A business can show a profit and still run out of cash to pay bills.</li>
            <li><strong>To file tax and GST returns.</strong> The numbers in a return come from the books.</li>
            <li><strong>To get a loan.</strong> Banks usually ask for financial statements before they lend.</li>
            <li><strong>To follow the law.</strong> Tax law and company law require many businesses to keep proper books. The exact rules depend on the type of business.</li>
            <li><strong>To catch mistakes and fraud.</strong> Good records show missing money quickly.</li>
          </ul>
          <p>This course is education only. It is not tax, legal or financial advice. For real decisions, talk to a qualified chartered accountant.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a day at Sweet Crumbs</h3>
          <p>Sweet Crumbs is a small bakery in London. On 1 September it starts the day with ₹20,000 in cash and bank together. This is its <strong>opening balance</strong> (the money at the start of the day). Here is its simple cash book.</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Details</th><th>Money in (₹)</th><th>Money out (₹)</th><th>Balance (₹)</th></tr></thead>
            <tbody>
              <tr><td>01-09-2026</td><td>Opening balance</td><td></td><td></td><td>20,000</td></tr>
              <tr><td>01-09-2026</td><td>Cake sales received by UPI</td><td>4,800</td><td></td><td>24,800</td></tr>
              <tr><td>01-09-2026</td><td>Paid flour supplier</td><td></td><td>1,500</td><td>23,300</td></tr>
              <tr><td>01-09-2026</td><td>Paid electricity bill</td><td></td><td>2,200</td><td>21,100</td></tr>
              <tr><td>01-09-2026</td><td>Cookie sales in cash</td><td>650</td><td></td><td>21,750</td></tr>
              <tr><td></td><td><strong>Total</strong></td><td><strong>5,450</strong></td><td><strong>3,700</strong></td><td><strong>21,750</strong></td></tr>
            </tbody>
          </table>
          <p>Check: 20,000 + 5,450 − 3,700 = 21,750. In a spreadsheet, put the opening balance in cell E2. Then type this in E3 and copy it down:</p>
          <pre><code>=E2+C3-D3</code></pre>
          <p>AI can help you set up a template like this and explain new words. But the final balance must match the real cash and the bank statement. Only you can count the cash and check.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from a sale to a report</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps of the accounting cycle in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">A customer buys a birthday cake from Sweet Crumbs</li>
              <li data-order="2">The bakery gives a bill and keeps a copy</li>
              <li data-order="3">The sale is recorded in the books</li>
              <li data-order="4">At month end, the books are matched with the bank statement</li>
              <li data-order="5">The accountant prepares the profit and loss statement</li>
              <li data-order="6">The owner uses the report to plan next month</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain the basics in simple words and to build a starter cash book for a business you know.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly bookkeeping tutor for small business owners in India. I run [Sweet Crumbs, a small bakery in London]. I am new to bookkeeping.

        1. Explain bookkeeping and accounting in 5 simple sentences.
        2. Explain these words in one line each: transaction, invoice, receipt, cash book, profit.
        3. Make a simple cash book as a table with these columns: Date, Details, Money in (₹), Money out (₹), Balance (₹). Start with an opening balance of [₹20,000]. Add 5 made-up transactions that fit my business.
        4. Give the Google Sheets formula for the Balance column. The opening balance is in cell E2 and the first transaction is in row 3.

        Use simple English. Use made-up numbers only. Do not give tax advice or state any tax rates.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate each balance: previous balance + money in − money out.</li>
              <li>The formula should look like =E2+C3-D3.</li>
              <li>The sample transactions fit your kind of business.</li>
              <li>The answer does not state tax rates or rules as facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Bookkeeping records every transaction. Accounting turns those records into reports for decisions. AI can explain and draft, but the numbers must always match real documents, real cash and the real bank statement.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Where AI Helps in Accounting</h1>
        </div>
        <p class="lc-lead">AI assistants such as Claude can read documents, sort transactions and explain numbers in plain words. This can save hours of typing every month. But AI can misread a digit, add numbers wrongly or invent a tax rule. In this lesson you will learn the main jobs where AI helps, what it gets wrong, and what an accountant must always check and decide.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Your inputs, such as invoices, bank lines and receipts, go to AI. AI drafts four jobs: reading documents, suggesting categories, matching bank and books, and explaining changes. You check totals, accounts and judgement calls before anything reaches the books and reports.">
            <defs><marker id="acc2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="70" width="150" height="90" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="90" y="94" font-weight="700">Your inputs</text>
              <text x="90" y="116" font-size="11" fill="#9b99b8">invoices</text>
              <text x="90" y="132" font-size="11" fill="#9b99b8">bank lines</text>
              <text x="90" y="148" font-size="11" fill="#9b99b8">receipts</text>
              <rect x="205" y="20" width="250" height="190" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="330" y="44" font-weight="700" fill="#c4b5fd">AI drafts</text>
              <rect x="225" y="58" width="210" height="30" rx="6" fill="#27274e"/><text x="330" y="78" font-size="12.5">Read documents</text>
              <rect x="225" y="96" width="210" height="30" rx="6" fill="#27274e"/><text x="330" y="116" font-size="12.5">Suggest categories</text>
              <rect x="225" y="134" width="210" height="30" rx="6" fill="#27274e"/><text x="330" y="154" font-size="12.5">Match bank and books</text>
              <rect x="225" y="172" width="210" height="30" rx="6" fill="#27274e"/><text x="330" y="192" font-size="12.5">Explain changes</text>
              <rect x="495" y="40" width="150" height="150" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="570" y="64" font-weight="700" fill="#6ee7b7">You check</text>
              <text x="570" y="92" font-size="11" fill="#9b99b8">totals and tax</text>
              <text x="570" y="114" font-size="11" fill="#9b99b8">right account</text>
              <text x="570" y="136" font-size="11" fill="#9b99b8">judgement calls</text>
              <text x="570" y="158" font-size="11" fill="#9b99b8">final sign-off</text>
              <rect x="672" y="85" width="78" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="711" y="111" font-weight="700">Books</text>
              <text x="711" y="130" font-size="11" fill="#9b99b8">&amp; reports</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#acc2a)">
                <line x1="166" y1="115" x2="203" y2="115"/>
                <line x1="456" y1="115" x2="493" y2="115"/>
                <line x1="646" y1="115" x2="670" y2="115"/>
              </g>
              <text x="380" y="242" font-size="12">AI is fast at the first draft. You are responsible for the final numbers.</text>
            </g>
          </svg>
          <figcaption>AI drafts four common jobs. A person checks every draft before it goes into the books.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Jobs where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>How AI helps</th><th>What you check</th></tr></thead>
            <tbody>
              <tr><td>Reading documents</td><td>Pulls vendor, date, amount and tax from invoices and receipts into a table</td><td>Every number against the original. Totals add up.</td></tr>
              <tr><td>Categorising</td><td>Suggests an account for each bank line, such as Rent or Raw materials</td><td>The account is right for your business. Unclear items go to a person.</td></tr>
              <tr><td>Reconciling</td><td>Helps match bank statement lines with entries in your books (reconciling means checking that both agree)</td><td>Every unmatched item has a real reason</td></tr>
              <tr><td>Reports and explanations</td><td>Explains why costs went up and drafts a short note for the owner</td><td>The reasons are true. The numbers come from your books.</td></tr>
              <tr><td>Writing</td><td>Drafts polite payment reminders and emails to suppliers</td><td>Amounts, dates and tone</td></tr>
            </tbody>
          </table>
          <p>Accounting software such as Tally, Zoho Books and QuickBooks also has automation features, and some tools add AI features. These change often, so check each tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>What AI gets wrong</h3>
          <ul class="lc-list">
            <li><strong>It misreads digits.</strong> A blurry 8 can become a 3. A missing decimal point can make ₹450.00 look like ₹45,000.</li>
            <li><strong>It can add wrongly.</strong> Do all adding and checking in a spreadsheet, not in the chat.</li>
            <li><strong>It can invent things.</strong> It may state a tax rate, a due date or a rule that is old or wrong.</li>
            <li><strong>It sounds sure even when it is wrong.</strong> A confident answer is not a correct answer.</li>
          </ul>
          <p>Some decisions need professional judgement. Is a ₹60,000 oven an expense or an asset? Can this bill be used to claim input tax credit? The accountant decides. AI can only suggest.</p>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Categorise these transactions.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You help Sweet Crumbs, a small bakery in London, sort its bank lines.
        Use only these categories: Cake sales, Raw materials, Rent,
        Electricity, Packaging, Salaries, Owner drawings, Unsure.
        For each line give: date, amount, category and a one-line reason.
        If you are not sure, choose Unsure and write the question to ask the owner.
        Do not change any amount. Do not add lines.
        Lines: [paste made-up or anonymised lines]</code></pre>
          <p>The better prompt gives a fixed list of categories and a safe way to say "I don't know". The AI might mark "UPI/RAHUL K ₹2,000" as Unsure. That is good. It could be a salary, a refund or money the owner took. Only the owner knows.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: AI draft or human decision?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each task. Can AI draft it, or must a person decide?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI can draft it"></div>
              <div data-sorter-target="bucket" data-bucket="human" data-label="A person must decide"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Reading fields is a good AI job. You still check every number against the receipt.">Copy vendor, date and amount from 40 receipts into a table</li>
              <li data-bucket="ai" data-why="AI can suggest categories from a fixed list. You review them.">Suggest a category for each line of a bank statement</li>
              <li data-bucket="human" data-why="This is a judgement about accounting rules. The accountant decides.">Decide if a new ₹60,000 oven is an asset or an expense</li>
              <li data-bucket="human" data-why="A tax return is a legal filing. A responsible person must check and approve it.">Approve and file the GST return</li>
              <li data-bucket="ai" data-why="Drafting a polite message is easy for AI. You check the amount and due date.">Write a first draft of a payment reminder to a customer</li>
              <li data-bucket="human" data-why="New bank details are a common fraud trick. A person must confirm them directly with the supplier.">Approve a payment to a supplier's new bank account</li>
              <li data-bucket="ai" data-why="AI can draft the explanation. You check that the reasons match the books.">Explain in plain words why electricity costs rose this month</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to categorise six made-up bank lines. Then check its work like an accountant would.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful bookkeeping assistant for [Sweet Crumbs, a small bakery in London].

        Categorise the bank lines below. Use only these categories: Cake sales, Raw materials, Rent, Electricity, Packaging, Salaries, Owner drawings, Unsure.

        Give a table with columns: Date, Details, Money in (₹), Money out (₹), Category, Reason (one line).
        If you are not sure, choose Unsure and write the question I should ask the owner.
        Do not change any amount. Do not add or remove lines.
        After the table, give the total money in and total money out.

        Bank lines (made up):
        01-09-2026 | UPI/ANNAPURNA MILLS | out 3,450
        03-09-2026 | UPI/PUNE CAFE HOUSE | in 6,500
        05-09-2026 | NEFT/SHOP RENT SEPT | out 18,000
        07-09-2026 | BILLPAY/ELECTRICITY | out 2,200
        09-09-2026 | UPI/RAHUL K | out 2,000
        10-09-2026 | UPI/SWEETBOX PACKAGING | out 1,150</pre>
            <ul class="ai-try-checks">
              <li>All six lines are in the table, with the same amounts.</li>
              <li>If you did not change the lines, money in is ₹6,500 and money out is ₹26,800.</li>
              <li>The payment to RAHUL K is marked Unsure with a clear question.</li>
              <li>Every category comes from the list you gave.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI for reading, sorting and drafting. Use a spreadsheet for adding and checking. Keep judgement calls, approvals and filings with a qualified person.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Double-Entry and the Chart of Accounts</h1>
        </div>
        <p class="lc-lead">Almost every business in the world uses <strong>double-entry bookkeeping</strong>. Every transaction is written in at least two accounts. One account gets a <strong>debit</strong> and another gets a <strong>credit</strong> of the same total amount. In this lesson you will learn the five types of accounts and the simple rules for debits and credits. You will also build a small chart of accounts. You need these ideas to check any entry that AI suggests.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Sweet Crumbs sells cakes for 15,000 rupees by UPI. The Bank account is debited 15,000 because an asset goes up. The Sales account is credited 15,000 because income goes up. Debits increase assets and expenses. Credits increase liabilities, equity and income.">
            <defs><marker id="acc3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="210" y="12" width="340" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="37" font-size="12.5">Sweet Crumbs sells cakes: ₹15,000 by UPI</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#acc3a)">
                <line x1="320" y1="54" x2="220" y2="86"/>
                <line x1="440" y1="54" x2="540" y2="86"/>
              </g>
              <rect x="60" y="90" width="280" height="90" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="200" y="118" font-weight="700" fill="#93c5fd">Debit: Bank</text>
              <text x="200" y="143" font-size="15">+ ₹15,000</text>
              <text x="200" y="166" font-size="11" fill="#9b99b8">an asset goes up</text>
              <text x="380" y="143" font-size="22" fill="#9b99b8">=</text>
              <rect x="420" y="90" width="280" height="90" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="560" y="118" font-weight="700" fill="#f9a8d4">Credit: Sales</text>
              <text x="560" y="143" font-size="15">+ ₹15,000</text>
              <text x="560" y="166" font-size="11" fill="#9b99b8">income goes up</text>
              <rect x="60" y="200" width="280" height="64" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="200" y="225" font-weight="700">Debit increases</text>
              <text x="200" y="248" font-size="12" fill="#9b99b8">Assets, Expenses</text>
              <rect x="420" y="200" width="280" height="64" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="560" y="225" font-weight="700">Credit increases</text>
              <text x="560" y="248" font-size="12" fill="#9b99b8">Liabilities, Equity, Income</text>
            </g>
          </svg>
          <figcaption>One sale, two accounts. The debit total always equals the credit total.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five types of accounts</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Meaning</th><th>Sweet Crumbs example</th><th>Increases with</th></tr></thead>
            <tbody>
              <tr><td><strong>Asset</strong></td><td>Something the business owns or is owed</td><td>Bank account, cash, oven</td><td>Debit</td></tr>
              <tr><td><strong>Liability</strong></td><td>Money the business owes to others</td><td>Unpaid flour bill, bank loan</td><td>Credit</td></tr>
              <tr><td><strong>Equity</strong></td><td>The owner's share in the business</td><td>Money the owner put in</td><td>Credit</td></tr>
              <tr><td><strong>Income</strong></td><td>Money earned from the business</td><td>Cake sales</td><td>Credit</td></tr>
              <tr><td><strong>Expense</strong></td><td>Costs of running the business</td><td>Rent, electricity, flour</td><td>Debit</td></tr>
            </tbody>
          </table>
          <p>The <strong>accounting equation</strong> links them: Assets = Liabilities + Equity. Profit (income minus expenses) adds to equity. A loss reduces it. Double-entry keeps this equation true after every entry.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Sweet Crumbs' first month</h3>
          <p>A <strong>journal entry</strong> is the record of one transaction in debit and credit form. GST is left out to keep this example simple. The GST lesson later in this course shows how tax is recorded.</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Transaction</th><th>Debit (₹)</th><th>Credit (₹)</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Owner puts ₹2,00,000 into the Navkar Bank account</td><td>Bank 2,00,000</td><td>Owner's capital 2,00,000</td></tr>
              <tr><td>2</td><td>Buys an oven, paid from the bank</td><td>Oven (equipment) 60,000</td><td>Bank 60,000</td></tr>
              <tr><td>3</td><td>Buys flour on credit from a supplier</td><td>Raw materials 8,000</td><td>Creditors 8,000</td></tr>
              <tr><td>4</td><td>Sells cakes, paid by UPI</td><td>Bank 15,000</td><td>Cake sales 15,000</td></tr>
              <tr><td>5</td><td>Pays shop rent from the bank</td><td>Rent 12,000</td><td>Bank 12,000</td></tr>
            </tbody>
          </table>
          <p><strong>Creditors</strong> (also called accounts payable) is the money you owe suppliers. Now add up each account. This list is a <strong>trial balance</strong>: a check that total debits equal total credits.</p>
          <table class="lc-table">
            <thead><tr><th>Account</th><th>Type</th><th>Debit (₹)</th><th>Credit (₹)</th></tr></thead>
            <tbody>
              <tr><td>Navkar Bank account</td><td>Asset</td><td>1,43,000</td><td></td></tr>
              <tr><td>Oven (equipment)</td><td>Asset</td><td>60,000</td><td></td></tr>
              <tr><td>Raw materials</td><td>Expense</td><td>8,000</td><td></td></tr>
              <tr><td>Rent</td><td>Expense</td><td>12,000</td><td></td></tr>
              <tr><td>Owner's capital</td><td>Equity</td><td></td><td>2,00,000</td></tr>
              <tr><td>Creditors</td><td>Liability</td><td></td><td>8,000</td></tr>
              <tr><td>Cake sales</td><td>Income</td><td></td><td>15,000</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>2,23,000</strong></td><td><strong>2,23,000</strong></td></tr>
            </tbody>
          </table>
          <p>The bank balance is 2,00,000 − 60,000 + 15,000 − 12,000 = 1,43,000. So far the bakery has a loss of ₹5,000 (sales 15,000 minus costs 20,000). The equation still works. Assets are 2,03,000. Liabilities 8,000 + equity 1,95,000 is also 2,03,000.</p>
        </div>
        <div class="lc-card">
          <h3>A small chart of accounts</h3>
          <p>A <strong>chart of accounts</strong> is the list of all accounts a business uses, often with a code for each. A fixed list keeps your books tidy. It also makes AI prompts much better: you tell AI to use only these accounts.</p>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Account</th><th>Type</th></tr></thead>
            <tbody>
              <tr><td>1010</td><td>Cash in hand</td><td>Asset</td></tr>
              <tr><td>1020</td><td>Navkar Bank current account</td><td>Asset</td></tr>
              <tr><td>1100</td><td>Debtors (customers who owe you money)</td><td>Asset</td></tr>
              <tr><td>1500</td><td>Equipment (oven, mixer)</td><td>Asset</td></tr>
              <tr><td>2010</td><td>Creditors (money you owe suppliers)</td><td>Liability</td></tr>
              <tr><td>2200</td><td>Loan from Navkar Bank</td><td>Liability</td></tr>
              <tr><td>3010</td><td>Owner's capital</td><td>Equity</td></tr>
              <tr><td>4010</td><td>Cake sales</td><td>Income</td></tr>
              <tr><td>5010</td><td>Raw materials</td><td>Expense</td></tr>
              <tr><td>5020</td><td>Rent</td><td>Expense</td></tr>
              <tr><td>5030</td><td>Electricity</td><td>Expense</td></tr>
              <tr><td>5040</td><td>Salaries</td><td>Expense</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a journal entry for rent.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a bookkeeping tutor. Sweet Crumbs paid shop rent of ₹12,000
        from its Navkar Bank current account on 05-09-2026.
        Write the journal entry as a table: Date, Account code, Account, Debit, Credit.
        Use only accounts from this chart of accounts: [paste your list].
        Ignore GST. Show that total debits equal total credits.
        Explain in one line why each account is debited or credited.</code></pre>
          <p>The answer should be: debit 5020 Rent ₹12,000, credit 1020 Navkar Bank ₹12,000. Always check that the two sides are equal and that each account type makes sense.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: name the account type</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each Sweet Crumbs account into its type.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="asset" data-label="Asset"></div>
              <div data-sorter-target="bucket" data-bucket="liability" data-label="Liability"></div>
              <div data-sorter-target="bucket" data-bucket="income" data-label="Income"></div>
              <div data-sorter-target="bucket" data-bucket="expense" data-label="Expense"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="asset" data-why="The bakery owns the money in its bank account.">Navkar Bank current account</li>
              <li data-bucket="asset" data-why="The oven is owned and used for years, so it is an asset.">The new oven</li>
              <li data-bucket="liability" data-why="The bakery must pay this loan back.">Loan from Navkar Bank</li>
              <li data-bucket="liability" data-why="An unpaid bill is money the bakery owes. It is a creditor.">Unpaid bill from the flour supplier</li>
              <li data-bucket="income" data-why="Money earned from selling cakes is income.">Cake sales</li>
              <li data-bucket="expense" data-why="Rent is a cost of running the shop.">Shop rent</li>
              <li data-bucket="expense" data-why="The monthly electricity bill is a running cost.">Electricity bill</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write journal entries for five made-up transactions. Then check that every entry balances.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a bookkeeping tutor for beginners in India.

        Business: [Rangrez Crafts, a handicrafts store in Manchester].
        Use only these accounts: Bank, Stock purchases, Creditors, Owner's capital, Sales, Rent.
        Ignore GST in this exercise.

        Transactions (made up):
        1. The owner puts [₹1,50,000] into the business bank account.
        2. The store buys block print bedsheets for resale on credit from a supplier: ₹40,000.
        3. The store sells goods for ₹25,000. The customer pays by UPI.
        4. The store pays shop rent of ₹10,000 by bank transfer.
        5. The store pays the supplier ₹20,000 of the amount it owes.

        For each transaction, give a table row: No., Account debited, Account credited, Amount (₹), One-line reason.
        Then list each account's final balance and say if it is a debit or a credit balance.
        Show that total debits equal total credits. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every entry has one debit and one credit of the same amount.</li>
              <li>The payment to the supplier debits Creditors and credits Bank.</li>
              <li>With the sample numbers, Bank ends at ₹1,45,000 debit and Creditors at ₹20,000 credit.</li>
              <li>Total debits equal total credits in the final list.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every entry has two sides that must be equal. Debits increase assets and expenses. Credits increase liabilities, equity and income. If an AI entry does not balance or uses the wrong account type, it is wrong.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Data Safety for Accounts Work</h1>
        </div>
        <p class="lc-lead">Accounts work uses some of the most private data a business has: bank details, PAN numbers, salaries and client profits. If you paste this into the wrong AI tool, you may break a client's trust, your company's rules or the law. In this lesson you will learn what data is sensitive, how to make safe sample data, and what to ask about your company's AI policy.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="On the left, real data with a client name, PAN, bank account number, phone and sales. In the middle, a step to remove or replace details in your own file. On the right, a safe sample with Client A and the private numbers removed, but the sales figure kept.">
            <defs><marker id="acc4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="230" height="190" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="130" y="46" font-weight="700" fill="#f9a8d4">Real data (private)</text>
              <g text-anchor="start" font-size="12">
                <text x="35" y="80">Client: Rangrez Crafts</text>
                <text x="35" y="105">PAN: ABCDE1234F</text>
                <text x="35" y="130">A/c: 1234 5678 9012</text>
                <text x="35" y="155">Phone: 98765 43210</text>
                <text x="35" y="180">Sales: ₹4,25,000</text>
              </g>
              <rect x="285" y="80" width="190" height="80" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="112" font-weight="700" fill="#fcd34d">Remove or replace</text>
              <text x="380" y="136" font-size="11" fill="#9b99b8">in your own private file</text>
              <rect x="515" y="20" width="230" height="190" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="630" y="46" font-weight="700" fill="#6ee7b7">Safe sample for AI</text>
              <g text-anchor="start" font-size="12">
                <text x="535" y="80">Client: Client A</text>
                <text x="535" y="105">PAN: [removed]</text>
                <text x="535" y="130">A/c: [removed]</text>
                <text x="535" y="155">Phone: [removed]</text>
                <text x="535" y="180">Sales: ₹4,25,000</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#acc4a)">
                <line x1="246" y1="120" x2="283" y2="120"/>
                <line x1="476" y1="120" x2="513" y2="120"/>
              </g>
              <text x="380" y="242" font-size="12" fill="#9b99b8">Use only an approved AI tool. Keep the list of codes (who is Client A) offline.</text>
            </g>
          </svg>
          <figcaption>Remove what identifies a person or account. Keep only what the task needs.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What counts as sensitive</h3>
          <ul class="lc-list">
            <li><strong>Identity numbers:</strong> PAN, Aadhaar, passport numbers.</li>
            <li><strong>Bank details:</strong> account numbers, card numbers, UPI IDs, cheque images.</li>
            <li><strong>Login details:</strong> passwords, OTPs (one-time passwords), net banking or GST portal logins. Never share these with any AI tool, ever.</li>
            <li><strong>People's pay:</strong> salaries with names, loans to staff.</li>
            <li><strong>Client business data:</strong> client names, profits, unpublished results, deals.</li>
            <li><strong>Contact details:</strong> customer names, phone numbers, emails and addresses.</li>
          </ul>
          <p>Accountants have a duty of <strong>confidentiality</strong>: they must keep client information private. Professional bodies such as ICAI (the Institute of Chartered Accountants of India) have ethics rules on this. India's Digital Personal Data Protection Act, 2023 also sets rules for handling personal data. This is general education, not legal advice. Ask your company's legal or compliance team what applies to you.</p>
        </div>
        <div class="lc-card">
          <h3>Public AI tools and approved work tools</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>What to know</th><th>What you may share</th></tr></thead>
            <tbody>
              <tr><td>Free personal AI account</td><td>Your chats may be stored. Some may be used to improve the product, depending on settings. Your company has no agreement with the provider.</td><td>Only made-up sample data and general questions</td></tr>
              <tr><td>Company-approved AI tool</td><td>Your company has chosen it and set its data rules. It may be a business plan with stronger privacy terms.</td><td>What your policy allows. Still share only what the task needs.</td></tr>
              <tr><td>Any tool</td><td>No setting makes it safe to share logins</td><td>Never passwords, OTPs or full card numbers</td></tr>
            </tbody>
          </table>
          <p>Data settings and terms change. Check the tool's current privacy pages and your company policy before you start.</p>
        </div>
        <div class="lc-card">
          <h3>How to make safe sample data</h3>
          <ol class="lc-list">
            <li>Copy the data into a new spreadsheet. Never edit the original.</li>
            <li>Delete columns the task does not need, such as PAN, account numbers and phone numbers.</li>
            <li>Replace names with codes, such as Client A or V001. This is called <strong>pseudonymising</strong>.</li>
            <li>Save the code list (V001 = the real name) in a separate private file. Never paste it into AI.</li>
            <li>Read the sheet again before you paste. Look for names inside the "Details" or "Narration" text.</li>
          </ol>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here is our full vendor payment list with bank accounts and PAN.
        Find duplicate payments.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are last month's payments. Vendor names are replaced with codes.
        Columns: Date, Vendor code, Amount (₹), Reference.
        List every pair with the same vendor code and the same amount within 7 days.
        Show both rows for each pair. Do not guess. Do not add rows.
        [paste the anonymised rows]</code></pre>
          <p>The AI does not need names or bank numbers to find duplicates. Codes and amounts are enough. For practice, it is even safer to use data that is fully made up.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a safe duplicate check</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="thought" data-label="The task">You work in the accounts team at LedgerLite Pvt Ltd, a software company in San Francisco. Your manager asks you to find possible duplicate vendor payments in last month's 200 payments.</li>
              <li data-kind="warn" data-label="Stop">The export has vendor names, bank account numbers and PAN. Pasting it into a free AI chat would share private data outside the company.</li>
              <li data-kind="check" data-label="Check the policy">You read the company AI policy. It allows the approved AI tool for internal data after personal and bank details are removed.</li>
              <li data-kind="tool" data-label="Spreadsheet">You delete the PAN and account number columns. You replace vendor names with codes like V001. You save the code list in a separate private file.</li>
              <li data-kind="user" data-label="Your prompt">Here are 200 payments with columns Date, Vendor code, Amount, Reference. List pairs with the same vendor code and amount within 7 days. Show both rows. Do not guess.</li>
              <li data-kind="answer" data-label="AI reply">Three possible duplicates: V014 ₹48,500 on 03-09 and 05-09. V027 ₹12,000 twice on 11-09. V031 ₹7,250 on 18-09 and 22-09.</li>
              <li data-kind="check" data-label="You confirm">You look up the codes in your private file and open each invoice. One pair is a real duplicate. The other two are separate orders. You report only the real one.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a safety checklist and a fully made-up practice dataset. You can use this data in the rest of the course.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a data-safety trainer for a small accounts team in India.

        Please create three things:

        1. A checklist of 8 short points to check before I paste any accounts data into an AI tool.

        2. A fully made-up practice table of 8 sales invoices for [Rangrez Crafts, a handicrafts store in Manchester]. Columns: Invoice no, Date (DD-MM-YYYY), Customer code, Amount (₹), Paid (Yes/No). Use codes like C01 instead of customer names. Do not include any PAN, Aadhaar, bank account, phone number or email, even fake ones.

        3. Five questions I should ask my manager about our company's AI policy.

        Use simple English. Do not give legal advice. Where rules may differ by company, say so.</pre>
            <ul class="ai-try-checks">
              <li>The table uses customer codes, not names.</li>
              <li>There are no ID numbers, bank details, phone numbers or emails.</li>
              <li>The checklist says never to share passwords or OTPs.</li>
              <li>All dates are real dates in DD-MM-YYYY format.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI rarely needs real names or account numbers to do accounts work. Remove or replace them first, use only approved tools, and never share passwords or OTPs. When in doubt, use made-up data.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Reading Invoices and Receipts with AI</h1>
        </div>
        <p class="lc-lead">Typing bills into a spreadsheet is slow and boring. AI can read an invoice photo or PDF and turn it into a neat table in seconds. But AI can misread a blurry digit or mix up a date. In this lesson you will learn which fields to extract and how to write a clear prompt. You will also check every row with a simple spreadsheet formula.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A receipt from Shree Gas Agency goes to AI, which fills a table with vendor, taxable value, GST, total and a check column. Two rows show OK. The gas agency row shows CHECK because AI read 2,380 as 2,330.">
            <defs><marker id="acc5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="200" height="235" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <g text-anchor="start" font-size="11.5">
                <text x="30" y="40" font-weight="700">TAX INVOICE</text>
                <text x="30" y="64">Shree Gas Agency</text>
                <text x="30" y="86">Inv: SG-7781</text>
                <text x="30" y="108">Date: 08-09-2026</text>
                <text x="30" y="136">Taxable: ₹2,380.00</text>
                <text x="30" y="158">GST: ₹428.40</text>
                <line x1="30" y1="170" x2="200" y2="170" stroke="#9b99b8"/>
                <text x="30" y="190" font-weight="700">Total: ₹2,808.40</text>
                <text x="30" y="230" fill="#9b99b8" font-size="11">photo, a little blurry</text>
              </g>
              <rect x="255" y="95" width="110" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="310" y="124" font-weight="700" fill="#c4b5fd">AI reads</text>
              <text x="310" y="144" font-size="11" fill="#9b99b8">the fields</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#acc5a)">
                <line x1="216" y1="130" x2="253" y2="130"/>
                <line x1="366" y1="130" x2="393" y2="130"/>
              </g>
              <g font-size="11">
                <rect x="395" y="40" width="350" height="28" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="445" y="58" font-weight="700">Vendor</text>
                <text x="530" y="58" font-weight="700">Taxable</text>
                <text x="595" y="58" font-weight="700">GST</text>
                <text x="660" y="58" font-weight="700">Total</text>
                <text x="720" y="58" font-weight="700">Check</text>
                <rect x="395" y="68" width="350" height="28" fill="#27274e"/>
                <text x="445" y="86">London Pack</text><text x="530" y="86">5,000</text><text x="595" y="86">900</text><text x="660" y="86">5,900</text><text x="720" y="86" fill="#6ee7b7">OK</text>
                <rect x="395" y="96" width="350" height="28" fill="#1f1f44"/>
                <text x="445" y="114">Deccan Dairy</text><text x="530" y="114">12,400</text><text x="595" y="114">620</text><text x="660" y="114">13,020</text><text x="720" y="114" fill="#6ee7b7">OK</text>
                <rect x="395" y="124" width="350" height="28" fill="#27274e" stroke="#ec4899"/>
                <text x="445" y="142">Shree Gas</text><text x="530" y="142" fill="#fca5a5">2,330</text><text x="595" y="142">428.40</text><text x="660" y="142">2,808.40</text><text x="720" y="142" fill="#fca5a5" font-weight="700">CHECK</text>
              </g>
              <text x="570" y="185" font-size="11.5" fill="#9b99b8">AI read ₹2,380 as ₹2,330.</text>
              <text x="570" y="205" font-size="11.5" fill="#9b99b8">2,330 + 428.40 ≠ 2,808.40, so the row fails.</text>
              <text x="570" y="240" font-size="12">Taxable + GST must equal Total on every row.</text>
            </g>
          </svg>
          <figcaption>AI fills the table fast. A simple check column catches the digit it misread.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to extract from each bill</h3>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Meaning</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td>Vendor name</td><td>The business that sold to you</td><td>Links the bill to the right supplier</td></tr>
              <tr><td>Vendor GSTIN</td><td>The seller's 15-character GST registration number</td><td>Needed for GST records and matching</td></tr>
              <tr><td>Invoice number</td><td>The seller's number for this bill</td><td>Helps you find duplicate bills</td></tr>
              <tr><td>Invoice date</td><td>The date on the bill</td><td>Puts the cost in the right month</td></tr>
              <tr><td>Taxable value</td><td>The amount before GST</td><td>This is the real cost for most businesses</td></tr>
              <tr><td>GST amount</td><td>The tax on the bill. It may be split into CGST and SGST, or shown as IGST.</td><td>May be claimed as input tax credit if the rules are met</td></tr>
              <tr><td>Total</td><td>Taxable value plus GST</td><td>The amount you pay</td></tr>
            </tbody>
          </table>
          <p>Indian bills usually write dates as DD-MM-YYYY. AI may read 03-09-2026 as 9 March. Always tell it the date format.</p>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Read these receipts.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Read the 3 attached receipts for Sweet Crumbs, a bakery in London.
        Make a table with columns: Vendor, Invoice no, Date (DD-MM-YYYY),
        Taxable value (₹), GST (₹), Total (₹).
        Copy every number exactly as printed. Do not calculate or fix any number.
        If a field is missing or you cannot read it, write UNCLEAR.
        After the table, list anything you were not sure about.</code></pre>
          <p>"Copy exactly" matters. You want the AI to read, not to calculate. If it "fixes" a total, you lose the chance to catch a wrong bill. Use a tool your company has approved, because bills contain supplier details.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: check every row in a spreadsheet</h3>
          <p>Sweet Crumbs gets this table from AI and pastes it into Google Sheets. The sample tax amounts are made up for practice. Real GST rates depend on the item, so check official sources such as the GST portal.</p>
          <table class="lc-table">
            <thead><tr><th>Vendor</th><th>Invoice no</th><th>Date</th><th>Taxable (₹)</th><th>GST (₹)</th><th>Total (₹)</th><th>Check</th></tr></thead>
            <tbody>
              <tr><td>London Pack House</td><td>INV-2291</td><td>03-09-2026</td><td>5,000.00</td><td>900.00</td><td>5,900.00</td><td>OK</td></tr>
              <tr><td>Deccan Dairy Supplies</td><td>DDS/118</td><td>05-09-2026</td><td>12,400.00</td><td>620.00</td><td>13,020.00</td><td>OK</td></tr>
              <tr><td>Shree Gas Agency</td><td>SG-7781</td><td>08-09-2026</td><td>2,330.00</td><td>428.40</td><td>2,808.40</td><td>CHECK</td></tr>
            </tbody>
          </table>
          <p>Columns D, E and F hold Taxable, GST and Total. Put this formula in G2 and copy it down:</p>
          <pre><code>=IF(ROUND(D2+E2,2)=ROUND(F2,2),"OK","CHECK")</code></pre>
          <p>Row 3 fails: 2,330 + 428.40 = 2,758.40, not 2,808.40. You open the photo. The taxable value is really ₹2,380. After the fix, the totals are: taxable ₹19,780, GST ₹1,948.40 and total ₹21,728.40. And 19,780 + 1,948.40 = 21,728.40, so the batch agrees.</p>
          <p>To find a bill entered twice, add this in H2 and copy it down. It shows TRUE if the invoice number in column B appears more than once:</p>
          <pre><code>=COUNTIF(B:B,B2)&gt;1</code></pre>
          <p>A matching row does not prove the bill is right. Two numbers can both be misread. You must still check the vendor, the date, the GSTIN, and that it is a business cost, not a personal one.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: extract and check three receipts</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">Read these 3 made-up Sweet Crumbs receipts. Make a table: Vendor, Invoice no, Date (DD-MM-YYYY), Taxable, GST, Total. Copy numbers exactly. Write UNCLEAR if you cannot read a field.</li>
              <li data-kind="answer" data-label="AI table">London Pack House: 5,000, 900, 5,900. Deccan Dairy Supplies: 12,400, 620, 13,020. Shree Gas Agency: 2,330, 428.40, 2,808.40. "All fields were read clearly."</li>
              <li data-kind="warn" data-label="Catch this">The AI says everything is clear. That is not proof. Always run your own checks.</li>
              <li data-kind="tool" data-label="Spreadsheet">You paste the table into Google Sheets. You add the Check column with the ROUND formula.</li>
              <li data-kind="result" data-label="Check column">Rows 1 and 2 show OK. Row 3 shows CHECK: 2,330 + 428.40 = 2,758.40, not 2,808.40.</li>
              <li data-kind="check" data-label="You open the receipt">The photo shows ₹2,380. The blurry 8 looked like a 3. You fix the cell and row 3 now shows OK.</li>
              <li data-kind="check" data-label="Batch total">Taxable ₹19,780 + GST ₹1,948.40 = ₹21,728.40. This matches the sum of the Total column. The batch is ready for the books.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to extract four made-up receipts into a table with a check column. One receipt has a wrong total. See if the AI flags it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful bookkeeping assistant for [Rangrez Crafts, a handicrafts store in Manchester].

        Read the made-up receipts below. Dates are in Indian format (DD/MM/YYYY).
        Make a table with columns: Vendor, Bill no, Date (DD-MM-YYYY), Taxable (₹), GST (₹), Total (₹), Check.
        Copy every number exactly as written. Do not fix any number.
        If a field is missing, write MISSING. Do not guess.
        In the Check column, write OK if Taxable + GST equals Total. Otherwise write CHECK and show the sum.
        After the table, list any receipt that needs a person to look at it, and why.

        Receipt A: Trafford Print Works. Bill TPW/0457. 12/09/2026. 20 cotton bedsheets at ₹450 each = ₹9,000. GST ₹450. Total ₹9,450.
        Receipt B: Pink City Couriers. Bill 8812. 14/09/2026. Courier charges ₹1,200. GST ₹216. Total ₹1,416.
        Receipt C: Handwritten note. Tea and snacks for staff. 15/09/2026. ₹340 paid in cash.
        Receipt D: Manchester Stationers. Bill MS-332. 16/09/2026. Taxable ₹800. GST ₹144. Total ₹954.</pre>
            <ul class="ai-try-checks">
              <li>Receipt D is flagged: 800 + 144 = 944, not 954.</li>
              <li>Receipt C shows MISSING for the bill number, vendor and GST.</li>
              <li>The AI copied the numbers and did not quietly fix the wrong total.</li>
              <li>All dates are in September, not in December or other months.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI read; let the spreadsheet check. Ask AI to copy numbers exactly and to say UNCLEAR when it cannot read. Then check that Taxable + GST = Total on every row and look for repeated invoice numbers.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Categorising Transactions</h1>
        </div>
        <p class="lc-lead">Every line on a bank statement must go to the right account in your books. This job is called <strong>categorising</strong>. It is slow when you do it by hand, and small mistakes make your reports wrong. In this lesson, you will learn to use simple rules first, then ask AI to suggest accounts for the rest. You will also learn how to handle unclear items, and how to check that nothing is lost.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A workflow with five steps: bank lines, rules first, AI suggests, you review, books. Below, three sample lines: a flour mill payment goes to Raw Materials by a rule, a UPI cake order goes to Sales with an AI suggestion, and an ATM withdrawal is unclear, so you ask the owner.">
            <defs><marker id="acc6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="75" y="48">Bank lines</text><text x="75" y="68" font-size="11" fill="#9b99b8">CSV from the bank</text>
              <rect x="160" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#22d3ee"/><text x="225" y="48">Rules first</text><text x="225" y="68" font-size="11" fill="#9b99b8">known payees</text>
              <rect x="310" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="375" y="48">AI suggests</text><text x="375" y="68" font-size="11" fill="#9b99b8">account + reason</text>
              <rect x="460" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="525" y="48">You review</text><text x="525" y="68" font-size="11" fill="#9b99b8">fix and approve</text>
              <rect x="610" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="675" y="48">Books</text><text x="675" y="68" font-size="11" fill="#9b99b8">post to accounts</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#acc6a)">
                <line x1="142" y1="53" x2="156" y2="53"/><line x1="292" y1="53" x2="306" y2="53"/><line x1="442" y1="53" x2="456" y2="53"/><line x1="592" y1="53" x2="606" y2="53"/>
              </g>
              <text x="20" y="122" text-anchor="start" font-size="12" fill="#9b99b8">Sample lines from Sweet Crumbs' Navkar Bank statement</text>
              <rect x="10" y="134" width="740" height="32" rx="6" fill="#27274e"/>
              <text x="24" y="155" text-anchor="start">NEFT/SHREE FLOUR MILLS   −₹6,400</text>
              <text x="736" y="155" text-anchor="end" fill="#67e8f9">Raw Materials (by a rule)</text>
              <rect x="10" y="174" width="740" height="32" rx="6" fill="#27274e"/>
              <text x="24" y="195" text-anchor="start">UPI/ANIKET JOSHI/CAKE ORDER   +₹1,850</text>
              <text x="736" y="195" text-anchor="end" fill="#c4b5fd">Sales (AI suggestion, you approve)</text>
              <rect x="10" y="214" width="740" height="32" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="24" y="235" text-anchor="start">ATM WDL BANER   −₹5,000</text>
              <text x="736" y="235" text-anchor="end" fill="#fcd34d">Unclear: Suspense, ask the owner</text>
            </g>
          </svg>
          <figcaption>Rules handle the regular payees. AI suggests the rest. A person approves every line before it goes into the books.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What categorising means</h3>
          <p>Your <strong>chart of accounts</strong> is the list of account names your business uses, such as Sales, Rent and Salaries. Categorising means you choose one of these accounts for each bank line. Accounting software such as Tally, Zoho Books or QuickBooks can import a bank statement and suggest accounts. You can also do it in a spreadsheet.</p>
          <p>Here is one week of sample lines from Sweet Crumbs, a small bakery in London. The names and amounts are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Bank description</th><th>In (₹)</th><th>Out (₹)</th><th>Account</th></tr></thead>
            <tbody>
              <tr><td>01 Sep</td><td>UPI/ANIKET JOSHI/CAKE ORDER</td><td>1,850</td><td></td><td>Sales</td></tr>
              <tr><td>02 Sep</td><td>NEFT/SHREE FLOUR MILLS</td><td></td><td>6,400</td><td>Raw Materials</td></tr>
              <tr><td>03 Sep</td><td>RENT SEP SHOP BANER</td><td></td><td>18,000</td><td>Rent</td></tr>
              <tr><td>04 Sep</td><td>FOOD APP SETTLEMENT</td><td>12,640</td><td></td><td>Sales (see note below)</td></tr>
              <tr><td>05 Sep</td><td>ATM WDL BANER</td><td></td><td>5,000</td><td>Suspense: ask the owner</td></tr>
              <tr><td>05 Sep</td><td>BANK CHARGES SMS</td><td></td><td>59</td><td>Bank Charges</td></tr>
              <tr><td>06 Sep</td><td>UPI/RK PACKAGING</td><td></td><td>2,360</td><td>Packaging</td></tr>
              <tr><td>07 Sep</td><td>IMPS/MEENAKSHI K/SALARY</td><td></td><td>12,000</td><td>Salaries</td></tr>
              <tr><td></td><td><strong>Total</strong></td><td><strong>14,490</strong></td><td><strong>43,819</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>Note: a food delivery app usually pays you the sale amount minus its commission. The full sale and the commission may need separate entries. Check the app's settlement report, and ask your accountant how to record it.</p>
        </div>
        <div class="lc-card">
          <h3>Rules first, AI second</h3>
          <p>Many lines repeat every month: the same supplier, the same rent, the same salary. For these, a simple <strong>rule</strong> is faster and more reliable than AI. A rule says: "If the description contains this word, use this account." Most accounting software has bank rules. In a spreadsheet, you can use a formula like this:</p>
          <pre><code>=IFS(ISNUMBER(SEARCH("FLOUR MILLS",B2)),"Raw Materials",
        ISNUMBER(SEARCH("RENT SEP",B2)),"Rent",
        ISNUMBER(SEARCH("PACKAGING",B2)),"Packaging",
        TRUE,"Unclear")</code></pre>
          <p>Keep your rule words specific. The word "RENT" alone would also match "CURRENT A/C". Then use AI only for the lines that the rules leave as "Unclear". Here is a weak prompt:</p>
          <pre><code>Categorise these bank transactions.</code></pre>
          <p>The AI will invent its own account names. It may also guess when it is not sure. A better prompt gives your list and your rules:</p>
          <pre><code>You are a bookkeeping assistant for a small bakery.
        Put each line into ONE account from this list only:
        Sales, Raw Materials, Packaging, Rent, Salaries, Bank Charges,
        Owner's Drawings, Suspense.
        If you are not sure, use Suspense and write a question for the owner.
        Output a table: description | amount | account | reason.
        [paste sample or masked lines here]</code></pre>
          <p>Before you paste lines, remove account numbers and other private details. Follow your company's AI policy.</p>
        </div>
        <div class="lc-card">
          <h3>Unclear items and the final check</h3>
          <p><strong>Suspense</strong> is a temporary account for lines you cannot place yet. Clear it before the month ends. These lines are often unclear:</p>
          <ul class="lc-list">
            <li><strong>Cash withdrawals.</strong> Was the cash for shop expenses (petty cash) or for the owner (drawings)?</li>
            <li><strong>UPI to or from a person.</strong> It could be a sale, a refund, a salary or a personal payment.</li>
            <li><strong>Transfers between your own accounts.</strong> These are not income or expenses.</li>
            <li><strong>Credits with only a reference number.</strong> It could be a sale, a loan or new money from the owner.</li>
          </ul>
          <p>Send the owner one short list of questions each week. Do not let AI decide these items.</p>
          <p>Last, check that nothing was lost. Money in by account must add up to ₹14,490. Money out must add up to ₹43,819. In a spreadsheet, <code>=SUMIF(E:E,"Rent",D:D)</code> gives the total paid to Rent, where column E has the account and column D has money out. If the account totals do not match the statement totals, a line is missing or counted twice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: income, expense or ask first?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort these sample bank lines from Sweet Crumbs.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="income" data-label="Income"></div>
              <div data-sorter-target="bucket" data-bucket="expense" data-label="Expense"></div>
              <div data-sorter-target="bucket" data-bucket="ask" data-label="Ask the owner first"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="income" data-why="A customer paid for a cake order. This is a sale.">UPI/ANIKET JOSHI/CAKE ORDER, +₹1,850</li>
              <li data-bucket="expense" data-why="Flour is a raw material for the bakery.">NEFT/SHREE FLOUR MILLS, −₹6,400</li>
              <li data-bucket="expense" data-why="The bank took a small fee. This is a bank charge.">BANK CHARGES SMS, −₹59</li>
              <li data-bucket="ask" data-why="The cash could be petty cash for the shop or money for the owner. Only the owner knows.">ATM WDL BANER, −₹5,000</li>
              <li data-bucket="ask" data-why="Money moved to the owner's own account is not a business expense. Ask how the owner wants it recorded.">IMPS to owner's savings account, −₹20,000</li>
              <li data-bucket="expense" data-why="Boxes and bags for cakes are a packaging cost.">UPI/RK PACKAGING, −₹2,360</li>
              <li data-bucket="ask" data-why="A credit with only a reference number could be a sale, a loan or the owner's money.">NEFT CREDIT REF 88213, +₹9,000</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to categorise a week of sample bank lines using only your chart of accounts. Then check its totals yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful bookkeeping assistant for [Sweet Crumbs, a small bakery in London].
        Task: put each bank line below into ONE account from my chart of accounts.

        Chart of accounts: Sales, Raw Materials, Packaging, Rent, Electricity, Salaries, Bank Charges, Owner's Drawings, Suspense.

        Bank lines (made-up sample data):
        01-09 | UPI/ANIKET JOSHI/CAKE ORDER | in 1,850
        02-09 | NEFT/SHREE FLOUR MILLS | out 6,400
        03-09 | RENT SEP SHOP BANER | out 18,000
        05-09 | ATM WDL BANER | out 5,000
        05-09 | BANK CHARGES SMS | out 59
        06-09 | UPI/RK PACKAGING | out 2,360
        07-09 | IMPS/MEENAKSHI K/SALARY | out 12,000

        Rules:
        - Use only accounts from my list. Do not invent new accounts.
        - If a line is unclear, use Suspense and write one short question for the owner.
        - Do not guess.

        Output:
        1. A table: Date | Description | In | Out | Account | Confidence (high/medium/low) | Reason or question.
        2. Total money in, total money out, and the total for each account.
        3. A list of questions for the owner.</pre>
            <ul class="ai-try-checks">
              <li>Total money in is ₹1,850 and total money out is ₹43,819.</li>
              <li>The account totals add up to the same money-out total.</li>
              <li>The ATM withdrawal is in Suspense with a question, not guessed.</li>
              <li>Every account comes from your list. No new accounts were invented.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use rules for the lines that repeat, AI for the rest, and the owner for anything unclear. Then check that the account totals match the bank statement totals. The totals check catches most lost or double-counted lines.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Bank Reconciliation</h1>
        </div>
        <p class="lc-lead">Your books show one bank balance. The bank statement often shows a different one. A <strong>bank reconciliation</strong> explains every rupee of that difference. It finds entries you forgot, payments that have not cleared yet, and typing errors. In this lesson, you will learn the steps, see a full worked example, and use AI to sort the unmatched items. You will also see why you must recalculate the AI's numbers yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Two panels. Bank side: closing balance 62,480 plus deposit in transit 6,200 minus unpresented cheque 8,500 gives 60,180. Books side: book balance 58,483 minus bank charges 118 plus interest 45 plus UPI not recorded 1,500 plus error fix 270 gives 60,180. Both sides match.">
            <defs><marker id="acc7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="10" y="10" width="360" height="210" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="190" y="36" text-anchor="middle" font-weight="700" fill="#93c5fd">Bank side</text>
              <text x="26" y="66">Bank closing balance</text><text x="354" y="66" text-anchor="end">₹62,480</text>
              <text x="26" y="92">+ Deposit in transit</text><text x="354" y="92" text-anchor="end">₹6,200</text>
              <text x="26" y="118">− Unpresented cheque</text><text x="354" y="118" text-anchor="end">₹8,500</text>
              <line x1="26" y1="184" x2="354" y2="184" stroke="#4b4a78"/>
              <text x="26" y="206" font-weight="700">Adjusted bank balance</text><text x="354" y="206" text-anchor="end" font-weight="700" fill="#6ee7b7">₹60,180</text>
              <rect x="390" y="10" width="360" height="210" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="570" y="36" text-anchor="middle" font-weight="700" fill="#c4b5fd">Books side</text>
              <text x="406" y="66">Book balance</text><text x="734" y="66" text-anchor="end">₹58,483</text>
              <text x="406" y="92">− Bank charges</text><text x="734" y="92" text-anchor="end">₹118</text>
              <text x="406" y="118">+ Interest from bank</text><text x="734" y="118" text-anchor="end">₹45</text>
              <text x="406" y="144">+ UPI receipt not recorded</text><text x="734" y="144" text-anchor="end">₹1,500</text>
              <text x="406" y="170">+ Error fix (2,360 typed as 2,630)</text><text x="734" y="170" text-anchor="end">₹270</text>
              <line x1="406" y1="184" x2="734" y2="184" stroke="#4b4a78"/>
              <text x="406" y="206" font-weight="700">Adjusted book balance</text><text x="734" y="206" text-anchor="end" font-weight="700" fill="#6ee7b7">₹60,180</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#acc7a)"><path d="M190,222 L190,250 L226,250"/><path d="M570,222 L570,250 L534,250"/></g>
              <rect x="230" y="232" width="300" height="38" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="256" text-anchor="middle" fill="#6ee7b7">Both sides ₹60,180: reconciled</text>
              <text x="380" y="292" text-anchor="middle" font-size="11" fill="#9b99b8">Sweet Crumbs, 30 September 2026. Sample numbers.</text>
            </g>
          </svg>
          <figcaption>Adjust each side for the items it does not know about yet. When both adjusted balances are equal, the bank account is reconciled.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why the two balances are different</h3>
          <p>The bank records money when it clears. You record money when you pay or receive it. So the two lists do not match on the same day. The differences fall into three groups.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>What it means</th><th>Example</th><th>What you do</th></tr></thead>
            <tbody>
              <tr><td><strong>Timing difference</strong></td><td>It is in your books but the bank has not processed it yet</td><td>A deposit in transit (cash deposited on 30 Sep, credited on 1 Oct). An unpresented cheque (a cheque you gave, not yet cashed).</td><td>Nothing. Check that it clears next month.</td></tr>
              <tr><td><strong>Missing in books</strong></td><td>The bank has it, but you did not record it</td><td>Bank charges, interest, a UPI receipt nobody entered</td><td>Post an entry in your books</td></tr>
              <tr><td><strong>Error</strong></td><td>Someone typed a wrong amount, date or account</td><td>A ₹2,360 payment entered as ₹2,630</td><td>Correct the entry in your books</td></tr>
            </tbody>
          </table>
          <p>A bank can also make mistakes. If a bank line looks wrong, ask the bank. Do not change your books to match it.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Sweet Crumbs, September</h3>
          <p>On 30 September 2026, the Navkar Bank statement shows ₹62,480. The bank account in the books shows ₹58,483. The difference is ₹3,997. Here is how the items explain it.</p>
          <pre><code>BANK SIDE
        Bank closing balance               62,480
        + Deposit in transit                6,200
        − Unpresented cheque (supplier)     8,500
        Adjusted bank balance              60,180

        BOOKS SIDE
        Book balance                       58,483
        − Bank charges not recorded           118
        + Interest not recorded                45
        + UPI receipt not recorded          1,500
        + Error: payment entered 2,630,
          real amount 2,360                   270
        Adjusted book balance              60,180</code></pre>
          <p>The payment error made the book balance ₹270 too low, so you add ₹270 back. Both sides reach ₹60,180, so the account is reconciled. Only the books-side items need new entries. The bank-side items will clear by themselves.</p>
          <p>To find unmatched lines in a spreadsheet, put the bank lines on one sheet and the book lines on another. In the bank sheet, this formula checks each amount:</p>
          <pre><code>=IF(COUNTIF(Books!D:D,D2)&gt;0,"Found","Not in books")</code></pre>
          <p>The same amount can appear twice, so also check the date and the description.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what you must check</h3>
          <ul class="lc-list">
            <li><strong>AI helps to sort.</strong> Give it the unmatched items and it can group them into timing differences, missing entries and possible errors.</li>
            <li><strong>AI helps to spot patterns.</strong> For example, two amounts with the same digits in a different order often mean a typing error.</li>
            <li><strong>AI can get sums wrong.</strong> Always recalculate the totals in a spreadsheet.</li>
            <li><strong>You decide the entries.</strong> Check each item against a bill, a cheque book or the next month's statement.</li>
          </ul>
          <p>Use sample or masked data in public AI tools. Never paste full account numbers or customer names without your company's permission.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a reconciliation with AI, step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">I paste two short lists of unmatched items (sample data). Bank closing balance ₹62,480. Book balance ₹58,483. "Sort each item and build a bank reconciliation statement. Show your working."</li>
              <li data-kind="answer" data-label="AI reply">The AI groups the items. Deposit ₹6,200 and cheque ₹8,500 are timing differences. Charges ₹118, interest ₹45 and UPI ₹1,500 are missing in the books. ₹2,630 against ₹2,360 looks like a typing error of ₹270.</li>
              <li data-kind="warn" data-label="Wrong total">The AI says the adjusted bank balance is ₹60,810. But 62,480 + 6,200 − 8,500 = 60,180. The AI swapped two digits.</li>
              <li data-kind="tool" data-label="Spreadsheet">You type <code>=62480+6200-8500</code> and <code>=58483-118+45+1500+270</code> into two cells.</li>
              <li data-kind="result" data-label="Result">Both cells show 60,180. The reconciliation balances.</li>
              <li data-kind="check" data-label="Proof">You open the supplier's bill. It says ₹2,360, so the book entry was wrong. You correct it and post the charges, interest and UPI receipt.</li>
              <li data-kind="check" data-label="Next month">In the October statement, you check that the ₹6,200 deposit and the ₹8,500 cheque have cleared.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI a sample list of unmatched items and ask it to build a reconciliation. Then check that both sides really balance.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a bookkeeping assistant for [Sweet Crumbs, a small bakery in London]. Help me reconcile the bank account for [September 2026].

        Made-up sample data:
        Bank statement closing balance: ₹62,480
        Book balance (bank account in our books): ₹58,483

        Unmatched items:
        1. Cash deposited on 30 Sep, not on the bank statement: ₹6,200
        2. Cheque given to a supplier, not yet on the bank statement: ₹8,500
        3. Bank charges on the statement, not in our books: ₹118
        4. Interest credited by the bank, not in our books: ₹45
        5. UPI receipt from a customer on the statement, not in our books: ₹1,500
        6. Supplier payment: bank shows ₹2,360, our books show ₹2,630

        Tasks:
        1. Put each item in one group: timing difference, missing in books, or error in books.
        2. Build a bank reconciliation statement with a bank side and a books side. Show every line and every sum.
        3. List the entries I must post or correct in my books.
        4. List what I should check next month.
        Use simple English. Do not skip any working.</pre>
            <ul class="ai-try-checks">
              <li>Both adjusted balances are ₹60,180. Recalculate them yourself.</li>
              <li>Items 1 and 2 are timing differences, with no entries in the books.</li>
              <li>Item 6 adds ₹270 back to the book balance.</li>
              <li>The entries to post are only for items 3, 4, 5 and 6.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A reconciliation is done only when both adjusted balances are exactly equal. AI can sort the items and explain them. You must still recalculate every sum and prove each item with a document.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Accounts Receivable and Payable</h1>
        </div>
        <p class="lc-lead">Many businesses sell on credit and buy on credit. <strong>Accounts receivable</strong> is the money customers owe you. <strong>Accounts payable</strong> is the money you owe your suppliers. If you do not track both, you run short of cash, even when sales are good. In this lesson, you will build an ageing report, plan supplier payments, and use AI to write polite payment reminders.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A bar chart of money owed to Rangrez Crafts on 30 September 2026, by days overdue. Not yet due 9,800. 1 to 30 days 30,500. 31 to 60 days 42,000. 61 to 90 days zero. Over 90 days 6,200. Total 88,500. Each row has a suggested action.">
            <defs><marker id="acc8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="0" y="0" width="760" height="290" rx="12" fill="#1f1f44"/>
              <text x="20" y="28" font-weight="700">Rangrez Crafts: ageing of receivables on 30 Sep 2026 (sample)</text>
              <text x="600" y="58" fill="#9b99b8" font-size="12">Suggested action</text>
              <text x="20" y="89">Not yet due</text><rect x="150" y="72" width="84" height="26" rx="4" fill="#10b981"/><text x="244" y="90">₹9,800</text><text x="600" y="90" font-size="12">Wait</text>
              <text x="20" y="129">1–30 days</text><rect x="150" y="112" width="261" height="26" rx="4" fill="#22d3ee"/><text x="421" y="130">₹30,500</text><text x="600" y="130" font-size="12">Friendly reminder</text>
              <text x="20" y="169">31–60 days</text><rect x="150" y="152" width="360" height="26" rx="4" fill="#f59e0b"/><text x="520" y="170">₹42,000</text><text x="600" y="170" font-size="12">Call + firm email</text>
              <text x="20" y="209">61–90 days</text><rect x="150" y="192" width="2" height="26" fill="#9b99b8"/><text x="162" y="210">₹0</text><text x="600" y="210" font-size="12">Final reminder</text>
              <text x="20" y="249">Over 90 days</text><rect x="150" y="232" width="53" height="26" rx="4" fill="#ec4899"/><text x="213" y="250">₹6,200</text><text x="600" y="250" font-size="12">Owner decides</text>
              <line x1="150" y1="64" x2="150" y2="266" stroke="#4b4a78"/>
              <text x="20" y="280" font-size="12" fill="#9b99b8">Days after the due date. Total owed: ₹88,500</text>
            </g>
          </svg>
          <figcaption>An ageing report groups unpaid invoices by how late they are. The oldest money is the hardest to collect, so act early.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The ageing report</h3>
          <p>Each sales invoice has <strong>credit terms</strong> (how many days the customer gets to pay), for example 30 days. The <strong>due date</strong> is the invoice date plus those days. An <strong>ageing report</strong> groups unpaid invoices by how many days they are past the due date. Here are sample invoices for Rangrez Crafts, a handicrafts store in Manchester.</p>
          <table class="lc-table">
            <thead><tr><th>Invoice</th><th>Customer</th><th>Amount (₹)</th><th>Due date</th><th>Days overdue on 30 Sep</th><th>Group</th></tr></thead>
            <tbody>
              <tr><td>RC-097</td><td>Craft Corner, New York</td><td>6,200</td><td>20 Jun 2026</td><td>102</td><td>Over 90</td></tr>
              <tr><td>RC-118</td><td>Hotel Amber Stay, Manchester</td><td>42,000</td><td>09 Aug 2026</td><td>52</td><td>31–60</td></tr>
              <tr><td>RC-124</td><td>Lotus Home Decor, Chicago</td><td>18,500</td><td>15 Sep 2026</td><td>15</td><td>1–30</td></tr>
              <tr><td>RC-127</td><td>Hotel Amber Stay, Manchester</td><td>12,000</td><td>25 Sep 2026</td><td>5</td><td>1–30</td></tr>
              <tr><td>RC-131</td><td>Neel Boutique, Cambridge</td><td>9,800</td><td>10 Oct 2026</td><td>0</td><td>Not yet due</td></tr>
              <tr><td></td><td><strong>Total</strong></td><td><strong>88,500</strong></td><td></td><td></td><td></td></tr>
            </tbody>
          </table>
          <p>You can let the spreadsheet do the counting. Put the report date in cell H1 and the due date in column D. Then use:</p>
          <pre><code>Days overdue (E2):  =MAX(0,$H$1-D2)
        Group (F2):         =IF(E2=0,"Not yet due",IF(E2&lt;=30,"1-30",
                            IF(E2&lt;=60,"31-60",IF(E2&lt;=90,"61-90","Over 90"))))</code></pre>
          <p>Check that the group totals add up to the total owed. Here: 9,800 + 30,500 + 42,000 + 0 + 6,200 = 88,500.</p>
        </div>
        <div class="lc-card">
          <h3>Planning what you pay</h3>
          <p>Payables need the same care. List the supplier bills that are due soon, then compare them with the cash you expect to have. Here are sample bills for Rangrez Crafts.</p>
          <table class="lc-table">
            <thead><tr><th>Supplier</th><th>Bill amount (₹)</th><th>Due date</th></tr></thead>
            <tbody>
              <tr><td>Manchester Packaging Co</td><td>3,540</td><td>02 Oct 2026</td></tr>
              <tr><td>Trafford Block Printers</td><td>24,000</td><td>05 Oct 2026</td></tr>
              <tr><td>Blue Pottery Works</td><td>15,000</td><td>12 Oct 2026</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>42,540</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>AI can turn a list like this into a simple week-by-week payment plan. But the owner decides which bill to pay first. Paying suppliers late can hurt the relationship. In India, there are also special payment-time rules for some registered micro and small suppliers. Ask your chartered accountant (CA) how these rules apply to you. This lesson is general education, not legal or tax advice.</p>
        </div>
        <div class="lc-card">
          <h3>Polite payment reminders with AI</h3>
          <p>Before you send any reminder, check the bank and UPI records. The customer may have already paid. A reminder for a paid invoice looks careless. Here is a weak prompt:</p>
          <pre><code>Write an email telling Hotel Amber Stay to pay us now.</code></pre>
          <p>This can give a rude or threatening email. A better prompt gives the facts, the tone and the limits:</p>
          <pre><code>Write a polite payment reminder from Rangrez Crafts, Manchester.
        Customer: Hotel Amber Stay. Invoice RC-118, ₹42,000,
        due 9 August 2026. Today is 30 September 2026.
        Tone: friendly and respectful. We value this customer.
        Include the invoice number, amount and due date.
        Ask them to reply with a payment date.
        Do not mention interest, late fees or legal action.
        Leave [payment details] as a placeholder. Under 100 words.</code></pre>
          <p>Add the real payment details yourself after the AI writes the draft. Then check every number against the invoice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: collect a payment in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps for collecting a customer payment in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Send the invoice with a clear due date and payment details</li>
              <li data-order="2">Update the ageing report every week</li>
              <li data-order="3">Check the bank and UPI records to confirm the invoice is still unpaid</li>
              <li data-order="4">Send a friendly reminder with the invoice number and amount</li>
              <li data-order="5">Call the customer and agree a payment date</li>
              <li data-order="6">Send a firm but polite final reminder</li>
              <li data-order="7">Ask the owner, and if needed a CA or lawyer, about the next steps</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to write three reminder emails for one overdue sample invoice, from friendly to firm.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an accounts assistant for [Rangrez Crafts, a handicrafts store in Manchester].
        Write three short payment reminder emails for this overdue invoice (made-up sample data):

        Customer: [Hotel Amber Stay], contact person [Mr Mehta]
        Invoice number: [RC-118]
        Amount: [₹42,000]
        Invoice date: [10 July 2026]
        Due date: [9 August 2026]
        Today: [30 September 2026]

        Email 1: a friendly reminder. Maybe they missed it.
        Email 2: a firmer reminder, to send 7 days later.
        Email 3: a final polite reminder that asks for a phone call this week.

        Rules:
        - Be polite and respectful in all three emails.
        - Include the invoice number, amount, due date and the number of days overdue.
        - Do not threaten. Do not mention legal action, interest or late fees.
        - Leave [payment details] as a placeholder.
        - Under 120 words each. Simple Indian business English.
        - Give a subject line for each email.</pre>
            <ul class="ai-try-checks">
              <li>The invoice number and amount match your data in all three emails.</li>
              <li>Days overdue is 52 on 30 September (count it yourself).</li>
              <li>No threats, no legal words and no invented late fees.</li>
              <li>The tone gets firmer but stays polite.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An ageing report tells you who to chase first. AI makes it quick to write polite reminders. But always check the bank before you chase anyone, and check every number in the email against the invoice.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Expense Claims and Petty Cash</h1>
        </div>
        <p class="lc-lead">Staff often spend their own money on work costs, such as cabs, meals and supplies. They then ask the company to pay them back. This request is an <strong>expense claim</strong>. Small cash costs in the office are paid from <strong>petty cash</strong> (a small amount of cash kept for minor expenses). In this lesson, you will check claims against a policy, find duplicate bills, and count petty cash. AI can do the first check quickly, but a person makes the final decision.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Top: an expense claim goes through four checks: claim in, check policy, find duplicates, check receipt, then a decision to approve, hold and ask, or reject. Bottom: a petty cash count where the float of 10,000 equals vouchers 6,735 plus expected cash 3,265, but counted cash is 3,165, so 100 is short.">
            <defs><marker id="acc9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="14" width="160" height="50" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="90" y="44">Claim in</text>
              <rect x="200" y="14" width="160" height="50" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="280" y="44">Check policy</text>
              <rect x="390" y="14" width="160" height="50" rx="10" fill="#1f1f44" stroke="#22d3ee"/><text x="470" y="44">Find duplicates</text>
              <rect x="580" y="14" width="160" height="50" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="660" y="44">Check receipt</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#acc9a)">
                <line x1="172" y1="39" x2="196" y2="39"/><line x1="362" y1="39" x2="386" y2="39"/><line x1="552" y1="39" x2="576" y2="39"/>
                <line x1="660" y1="66" x2="660" y2="90"/>
              </g>
              <rect x="120" y="94" width="160" height="34" rx="17" fill="#27274e" stroke="#10b981"/><text x="200" y="116" fill="#6ee7b7">Approve</text>
              <rect x="300" y="94" width="160" height="34" rx="17" fill="#27274e" stroke="#f59e0b"/><text x="380" y="116" fill="#fcd34d">Hold and ask</text>
              <rect x="480" y="94" width="160" height="34" rx="17" fill="#27274e" stroke="#ec4899"/><text x="560" y="116" fill="#f9a8d4">Reject</text>
              <line x1="120" y1="90" x2="660" y2="90" stroke="#9b99b8" stroke-width="1.5"/>
              <rect x="10" y="150" width="740" height="150" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="176" fill="#9b99b8" font-size="12">Petty cash count at LedgerLite Pvt Ltd (sample)</text>
              <rect x="40" y="192" width="170" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="125" y="214">Float</text><text x="125" y="232">₹10,000</text>
              <text x="235" y="223" font-size="18">=</text>
              <rect x="260" y="192" width="190" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="355" y="214">Vouchers (bills)</text><text x="355" y="232">₹6,735</text>
              <text x="475" y="223" font-size="18">+</text>
              <rect x="500" y="192" width="220" height="50" rx="8" fill="#27274e" stroke="#10b981"/><text x="610" y="214">Cash that should be there</text><text x="610" y="232">₹3,265</text>
              <text x="380" y="276" fill="#fcd34d">Cash counted: ₹3,165. Short by ₹100. Find the reason before the top-up.</text>
            </g>
          </svg>
          <figcaption>Every claim passes the same checks. Petty cash is simple maths: bills plus cash must always equal the fixed float.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Check claims against the policy</h3>
          <p>An <strong>expense policy</strong> is the company's written rule book for claims. Here is a made-up sample policy for LedgerLite Pvt Ltd, a software company in San Francisco. Your company's real policy will be different.</p>
          <ul class="lc-list">
            <li>Every claim needs a receipt or bill.</li>
            <li>Meals on work travel: up to ₹800 per day.</li>
            <li>Hotel: up to ₹4,000 per night.</li>
            <li>Submit the claim within 30 days of spending.</li>
            <li>No personal costs.</li>
          </ul>
          <p>Here are sample claims submitted on 25 September 2026.</p>
          <table class="lc-table">
            <thead><tr><th>Claim</th><th>Employee</th><th>Date</th><th>Item</th><th>Amount (₹)</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>C-01</td><td>Kiran</td><td>03 Sep</td><td>Cab to airport, bill CB-5521</td><td>1,150</td><td>Approve</td></tr>
              <tr><td>C-02</td><td>Kiran</td><td>03 Sep</td><td>Cab to airport, bill CB-5521</td><td>1,150</td><td>Reject: same bill as C-01</td></tr>
              <tr><td>C-03</td><td>Divya</td><td>08 Sep</td><td>Dinner on a work trip</td><td>1,350</td><td>Hold: ₹550 over the meal limit</td></tr>
              <tr><td>C-04</td><td>Divya</td><td>09 Sep</td><td>Hotel, Seattle, 1 night</td><td>3,800</td><td>Approve</td></tr>
              <tr><td>C-05</td><td>Kiran</td><td>14 Sep</td><td>Printer ink, no receipt</td><td>2,200</td><td>Hold: ask for the receipt</td></tr>
              <tr><td>C-06</td><td>Farhan</td><td>21 Jun</td><td>Taxi to client office</td><td>640</td><td>Hold: older than 30 days</td></tr>
            </tbody>
          </table>
          <p>Totals: claimed ₹10,290. Approve ₹4,950 (1,150 + 3,800). Hold ₹4,190 (1,350 + 2,200 + 640). Reject ₹1,150. Check: 4,950 + 4,190 + 1,150 = 10,290. For C-03, the manager decides whether to pay ₹800 or the full amount.</p>
        </div>
        <div class="lc-card">
          <h3>Spot duplicates, and use AI for the first check</h3>
          <p>A duplicate is the same bill claimed twice. It can be an honest mistake or fraud. In a spreadsheet, this formula flags rows with the same vendor, amount and bill number. Here column D has the vendor, E the amount and F the bill number.</p>
          <pre><code>=IF(COUNTIFS(D:D,D2,E:E,E2,F:F,F2)&gt;1,"Check: possible duplicate","")</code></pre>
          <p>Also look for claims split into two to stay under a limit, and many round amounts with no bill. AI can check a whole list against your policy and explain each result. Here is a weak prompt:</p>
          <pre><code>Are these expense claims OK?</code></pre>
          <p>A better prompt gives the policy and asks for reasons:</p>
          <pre><code>You check expense claims for a small software company.
        Policy: [paste the sample policy]. Claims: [paste the table].
        For each claim, give: Approve, Hold or Reject, and the policy rule.
        Flag possible duplicates. Give totals for each result.
        Do not approve anything the policy does not clearly allow.</code></pre>
          <p>Remove employee IDs, bank details and phone numbers before you paste. The AI's result is only a first check. A manager must approve the final payout.</p>
        </div>
        <div class="lc-card">
          <h3>Count petty cash</h3>
          <p>Many offices use a fixed <strong>float</strong> (the fixed amount of petty cash, for example ₹10,000). Each time someone takes cash, they leave a <strong>voucher</strong> (a signed slip with the bill attached). So vouchers plus cash must always equal the float. Here is a sample count at LedgerLite.</p>
          <table class="lc-table">
            <thead><tr><th>Voucher</th><th>Amount (₹)</th></tr></thead>
            <tbody>
              <tr><td>Tea and snacks for the team</td><td>1,240</td></tr>
              <tr><td>Courier</td><td>385</td></tr>
              <tr><td>Stationery</td><td>2,110</td></tr>
              <tr><td>Auto fares</td><td>1,500</td></tr>
              <tr><td>Plumber repair</td><td>1,500</td></tr>
              <tr><td><strong>Total vouchers</strong></td><td><strong>6,735</strong></td></tr>
            </tbody>
          </table>
          <p>Cash that should be in the box: 10,000 − 6,735 = ₹3,265. The cash counted is ₹3,165, so ₹100 is missing. Find the reason before you top up. Maybe a voucher is lost. If you find the voucher, top up by the new voucher total (₹6,835). If you cannot find the reason, a manager approves recording the ₹100 as a cash shortage. Either way, the top-up is ₹6,835, because 3,165 + 6,835 = ₹10,000.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: approve, hold or reject?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use the sample LedgerLite policy above to sort these claims.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="approve" data-label="Approve"></div>
              <div data-sorter-target="bucket" data-bucket="hold" data-label="Hold and ask"></div>
              <div data-sorter-target="bucket" data-bucket="reject" data-label="Reject"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="approve" data-why="Work travel with a bill, within the rules and on time.">Cab to the airport, ₹1,150, with a bill</li>
              <li data-bucket="reject" data-why="The same bill number was already claimed. Pay it only once.">A second claim for cab bill CB-5521</li>
              <li data-bucket="hold" data-why="The meal limit is ₹800 per day. The manager decides how much to pay.">Dinner on a work trip, ₹1,350</li>
              <li data-bucket="approve" data-why="It is under the ₹4,000 hotel limit and has a bill.">One hotel night, ₹3,800, with a bill</li>
              <li data-bucket="hold" data-why="Every claim needs a receipt. Ask for it before you pay.">Printer ink, ₹2,200, no receipt</li>
              <li data-bucket="hold" data-why="The claim is older than 30 days. The policy needs a manager's decision.">A taxi from June, claimed in late September</li>
              <li data-bucket="reject" data-why="A family meal at the weekend is a personal cost.">A family dinner at the weekend</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to check a list of sample claims against a sample policy. Then compare its answer with the worked example above.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an accounts assistant at [LedgerLite Pvt Ltd, a software company in San Francisco]. Check these expense claims against our policy.

        Policy (made-up sample):
        - Every claim needs a receipt or bill.
        - Meals on work travel: up to ₹800 per day.
        - Hotel: up to ₹4,000 per night.
        - Claims must be submitted within 30 days of spending.
        - No personal costs.

        Claims submitted on [25 September 2026] (made-up sample data):
        C-01 | Kiran | 03 Sep | Cab to airport | ₹1,150 | bill CB-5521
        C-02 | Kiran | 03 Sep | Cab to airport | ₹1,150 | bill CB-5521
        C-03 | Divya | 08 Sep | Dinner on work trip | ₹1,350 | bill D-778
        C-04 | Divya | 09 Sep | Hotel, 1 night | ₹3,800 | bill H-2231
        C-05 | Kiran | 14 Sep | Printer ink | ₹2,200 | no receipt
        C-06 | Farhan | 21 Jun | Taxi to client | ₹640 | bill T-310

        Output:
        1. A table: Claim | Result (Approve / Hold / Reject) | Policy rule | Note.
        2. The total claimed and the total for each result.
        3. Questions to ask each employee.
        Do not approve anything the policy does not clearly allow.</pre>
            <ul class="ai-try-checks">
              <li>C-02 is flagged as a duplicate of C-01.</li>
              <li>C-03 is ₹550 over the meal limit, and C-06 is late.</li>
              <li>The total claimed is ₹10,290, and the result totals add up to it.</li>
              <li>The final decision is left to a manager.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Claims and petty cash are about rules and simple maths. Let AI and formulas do the first check, but a person approves every payout. In petty cash, vouchers plus cash must always equal the float.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">GST Basics for Small Businesses</h1>
        </div>
        <p class="lc-lead"><strong>GST</strong> (Goods and Services Tax) is India's tax on the supply of goods and services. A business registered for GST collects GST on its sales. It can usually reduce this by the GST it paid on business purchases. In this lesson, you will learn the key terms, the fields on a tax invoice, and how to match your purchases with the GST portal. You will also use AI to find mismatches. This lesson is general education only, not tax advice. GST rules, rates and due dates change, so always check the GST portal (gst.gov.in) and ask a chartered accountant (CA).</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="How purchase invoices flow in GST. A supplier issues a tax invoice and reports it in its GSTR-1. It shows in your IMS and then your GSTR-2B. You record the invoice in your purchase register. You match GSTR-2B with your purchase register. Your GSTR-3B reports tax on sales, the input tax credit and the tax to pay. Your sales go into your own GSTR-1.">
            <defs><marker id="acc10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="10" y="18" text-anchor="start" font-size="11" fill="#9b99b8">SUPPLIER AND GST PORTAL</text>
              <rect x="10" y="28" width="170" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="95" y="54">Supplier invoice</text><text x="95" y="74" font-size="11" fill="#9b99b8">tax invoice to you</text>
              <rect x="200" y="28" width="170" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="285" y="54">Supplier GSTR-1</text><text x="285" y="74" font-size="11" fill="#9b99b8">reports the invoice</text>
              <rect x="390" y="28" width="170" height="60" rx="10" fill="#1f1f44" stroke="#22d3ee"/><text x="475" y="54">Your IMS</text><text x="475" y="74" font-size="11" fill="#9b99b8">accept, reject, pending</text>
              <rect x="580" y="28" width="170" height="60" rx="10" fill="#1f1f44" stroke="#22d3ee"/><text x="665" y="54">Your GSTR-2B</text><text x="665" y="74" font-size="11" fill="#9b99b8">credit statement</text>
              <text x="10" y="128" text-anchor="start" font-size="11" fill="#9b99b8">YOUR BOOKS AND RETURNS</text>
              <rect x="10" y="140" width="170" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="95" y="166">Purchase register</text><text x="95" y="186" font-size="11" fill="#9b99b8">your record of bills</text>
              <rect x="580" y="140" width="170" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="665" y="166">Match 2B vs books</text><text x="665" y="186" font-size="11" fill="#9b99b8">find gaps, follow up</text>
              <rect x="10" y="252" width="170" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="95" y="278">Your GSTR-1</text><text x="95" y="298" font-size="11" fill="#9b99b8">your sales invoices</text>
              <rect x="580" y="252" width="170" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="665" y="278">Your GSTR-3B</text><text x="665" y="298" font-size="11" fill="#9b99b8">summary, pay net tax</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#acc10a)">
                <line x1="182" y1="58" x2="196" y2="58"/><line x1="372" y1="58" x2="386" y2="58"/><line x1="562" y1="58" x2="576" y2="58"/>
                <line x1="95" y1="90" x2="95" y2="136"/>
                <line x1="665" y1="90" x2="665" y2="136"/>
                <line x1="182" y1="170" x2="576" y2="170"/>
                <line x1="665" y1="202" x2="665" y2="248"/>
                <line x1="182" y1="282" x2="576" y2="282"/>
              </g>
              <text x="380" y="162" font-size="11" fill="#9b99b8">compare line by line</text>
              <text x="380" y="274" font-size="11" fill="#9b99b8">tax on sales</text>
            </g>
          </svg>
          <figcaption>Your input tax credit depends on your suppliers' filings. So you match what the portal shows with your own purchase records.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Key terms and the tax invoice</h3>
          <ul class="lc-list">
            <li><strong>GSTIN</strong>: the 15-character GST number of a registered business. The first two digits are the state code. The next ten characters are the business's PAN.</li>
            <li><strong>Tax invoice</strong>: the bill a registered supplier issues for a taxable sale.</li>
            <li><strong>CGST and SGST</strong>: central and state GST. They are charged together, in equal parts, on a sale within the same state.</li>
            <li><strong>IGST</strong>: integrated GST, charged on a sale from one state to another.</li>
            <li><strong>HSN or SAC code</strong>: a code that classifies the goods (HSN) or services (SAC).</li>
          </ul>
          <p>The GST rules list the fields a tax invoice must have. The main ones are:</p>
          <table class="lc-table">
            <thead><tr><th>About</th><th>Fields</th></tr></thead>
            <tbody>
              <tr><td>Supplier</td><td>Name, address and GSTIN</td></tr>
              <tr><td>Invoice</td><td>A unique serial number for the financial year, and the date of issue</td></tr>
              <tr><td>Buyer</td><td>Name, address and GSTIN if the buyer is registered. Some sales to unregistered buyers also need the name and address.</td></tr>
              <tr><td>Items</td><td>Description, HSN or SAC code, quantity, total value and taxable value</td></tr>
              <tr><td>Tax</td><td>Rate and amount of tax, shown as CGST, SGST, IGST or cess</td></tr>
              <tr><td>Other</td><td>Place of supply (with the state name for inter-state sales), whether reverse charge applies, and the supplier's signature or digital signature</td></tr>
            </tbody>
          </table>
          <p>Here is a sample calculation for Rangrez Crafts in Manchester. It uses a <strong>made-up 10% rate</strong>, only to make the maths easy. Real rates depend on the item, so check the official rate lists.</p>
          <pre><code>SAMPLE ONLY (made-up 10% rate)
        Taxable value of a sale:             ₹10,000
        Sale within the same state:  CGST 5% = ₹500, SGST 5% = ₹500
        Sale to another state:  IGST 10% = ₹1,000
        Invoice total in both cases:         ₹11,000</code></pre>
          <p>AI can read an invoice and check that these fields are present. You must still check the GSTIN and the tax figures yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Input tax credit (ITC), simply</h3>
          <p><strong>Input tax credit</strong> means the GST you paid on business purchases can usually reduce the GST you owe on your sales. Here is a simple sample month for Rangrez Crafts. The numbers are made up.</p>
          <pre><code>SAMPLE ONLY
        GST collected on sales (output tax):   ₹18,000
        GST paid on eligible purchases (ITC):  ₹11,500
        Net GST to pay:                         ₹6,500</code></pre>
          <p>Real returns follow set-off rules for CGST, SGST and IGST. Your software or CA handles these. Also, not every purchase gives credit. In general, the GST law says you need:</p>
          <ul class="lc-list">
            <li>a valid tax invoice (or another allowed document) from a registered supplier,</li>
            <li>the goods or services actually received,</li>
            <li>the invoice shown in your GSTR-2B, because the supplier reported it,</li>
            <li>the tax paid to the government by the supplier, and your own return filed.</li>
          </ul>
          <p>Some purchases are blocked from credit, for example goods for personal use. There are also time limits, and rules about paying your supplier on time. Your CA decides what you can claim. AI must not decide it.</p>
        </div>
        <div class="lc-card">
          <h3>The returns and forms, in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>What it is</th></tr></thead>
            <tbody>
              <tr><td><strong>GSTR-1</strong></td><td>The return where you report your sales invoices (outward supplies)</td></tr>
              <tr><td><strong>IMS</strong> (Invoice Management System)</td><td>A screen on the GST portal. You can accept, reject or keep pending the invoices your suppliers reported. An invoice with no action is treated as accepted.</td></tr>
              <tr><td><strong>GSTR-2B</strong></td><td>A read-only statement of your input tax credit, made by the portal from your suppliers' filings. You do not file it.</td></tr>
              <tr><td><strong>GSTR-3B</strong></td><td>A summary return. You report total sales tax and ITC, and pay the net tax. Values fill in from your GSTR-1 and your GSTR-2B.</td></tr>
            </tbody>
          </table>
          <p>If your GSTR-1 has a mistake, the portal has a form called GSTR-1A. You can use it to correct or add sales details before you file GSTR-3B for that period. Some businesses file monthly and some quarterly. Quarterly filers can use the IFF (Invoice Furnishing Facility) to upload sales invoices to registered buyers in the first two months of a quarter. Businesses in the composition scheme (a simpler scheme for some small businesses) file different returns. Due dates and forms change. Always check the GST portal and ask your CA.</p>
          <p>Each period, match your purchase register with GSTR-2B. Here is a sample for Rangrez Crafts. The tax amounts are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Supplier, invoice</th><th>Tax in books (₹)</th><th>Tax in GSTR-2B (₹)</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>Trafford Block Printers, TBP/211</td><td>2,400</td><td>2,400</td><td>Matched</td></tr>
              <tr><td>Manchester Packaging Co, MPC-88</td><td>540</td><td>540</td><td>Matched</td></tr>
              <tr><td>Blue Pottery Works, BPW-045</td><td>1,500</td><td>not shown</td><td>Ask the supplier to report it</td></tr>
              <tr><td>Thar Textiles, TT/1190</td><td>3,200</td><td>2,300</td><td>Check the paper invoice</td></tr>
              <tr><td>Phoenix Dyes, PD-72</td><td>860</td><td>860</td><td>Matched</td></tr>
              <tr><td>Marudhar Traders, MT-19</td><td>not in books</td><td>350</td><td>Did we buy this? Check.</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>8,500</strong></td><td><strong>6,450</strong></td><td>Difference ₹2,050</td></tr>
            </tbody>
          </table>
          <p>The difference is explained: 1,500 (missing) + 900 (3,200 − 2,300) − 350 (not in books) = 2,050.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: matching purchases with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Export">You download GSTR-2B from the GST portal. You export the purchase register from your accounting software. You remove bank details first.</li>
              <li data-kind="user" data-label="Prompt">"Match these two lists by supplier and invoice number. Show matched, missing and different items, with totals. Do not tell me how much credit to claim."</li>
              <li data-kind="answer" data-label="AI reply">Three invoices match. BPW-045 is missing from GSTR-2B. TT/1190 shows ₹3,200 in the books and ₹2,300 in 2B. MT-19 is in 2B but not in the books.</li>
              <li data-kind="warn" data-label="Too far">The AI adds: "You can claim ₹8,500 of ITC this month." That is a tax decision. It also ignores that GSTR-2B shows only ₹6,450. Your CA decides.</li>
              <li data-kind="check" data-label="Invoice">You open the Thar Textiles invoice. The tax is ₹2,300. Your books had a typing error, so you correct them.</li>
              <li data-kind="check" data-label="Unknown bill">MT-19 from Marudhar Traders: nobody in the shop bought from them. You note it for your CA before you act on it in IMS.</li>
              <li data-kind="answer" data-label="Follow-up">The AI drafts a polite email asking Blue Pottery Works to report invoice BPW-045 in their GSTR-1.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to match a sample purchase register with a sample GSTR-2B list, and to draft a follow-up email.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a GST data assistant for [Rangrez Crafts, a handicrafts store in Manchester]. This is for learning. Use only the made-up sample data below.

        Our purchase register (supplier | invoice | GST amount):
        Trafford Block Printers | TBP/211 | ₹2,400
        Manchester Packaging Co | MPC-88 | ₹540
        Blue Pottery Works | BPW-045 | ₹1,500
        Thar Textiles | TT/1190 | ₹3,200
        Phoenix Dyes | PD-72 | ₹860

        GSTR-2B list (supplier | invoice | GST amount):
        Trafford Block Printers | TBP/211 | ₹2,400
        Manchester Packaging Co | MPC-88 | ₹540
        Thar Textiles | TT/1190 | ₹2,300
        Phoenix Dyes | PD-72 | ₹860
        Marudhar Traders | MT-19 | ₹350

        Tasks:
        1. Make a table: Supplier | Invoice | Books | GSTR-2B | Status (matched, missing in 2B, amount differs, not in books).
        2. Give both totals and explain the difference line by line.
        3. List what I should check for each problem.
        4. Draft a short, polite email to [Blue Pottery Works] asking them to report the missing invoice.
        Do not tell me how much input tax credit I can claim. Do not state GST rates or due dates. List questions for my chartered accountant instead.</pre>
            <ul class="ai-try-checks">
              <li>The books total is ₹8,500 and the GSTR-2B total is ₹6,450.</li>
              <li>The ₹2,050 difference is explained as 1,500 + 900 − 350.</li>
              <li>The AI does not decide your credit and does not state rates or due dates.</li>
              <li>The email is polite and names the right invoice and amount.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> GST credit depends on your suppliers' filings, so match your purchase register with GSTR-2B every period. AI is good at finding gaps and drafting follow-ups. Rates, due dates and what you can claim must come from the GST portal and your CA.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Month-End Close</h1>
        </div>
        <p class="lc-lead">The <strong>month-end close</strong> is the set of jobs you do after a month ends. When it is done, the books for that month are complete and correct. Owners, banks and tax filings all depend on these numbers. In this lesson, you will follow a close checklist, learn what an <strong>accrual</strong> is, build a <strong>trial balance</strong> and use AI to help you find errors. We use <em>Sweet Crumbs</em>, a made-up bakery in London, and its August 2026 books.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Six month-end close steps in a row: collect, record, reconcile, adjust, trial balance, and review and lock. Below them, one band shows how AI helps and one band shows what you must decide.">
            <defs><marker id="acc11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="66" y="52" font-size="11" fill="#9b99b8">Step 1</text>
              <text x="66" y="76" font-weight="700">Collect</text>
              <text x="66" y="98" font-size="11" fill="#9b99b8">bills, statements</text>
              <rect x="135" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="191" y="52" font-size="11" fill="#9b99b8">Step 2</text>
              <text x="191" y="76" font-weight="700">Record</text>
              <text x="191" y="98" font-size="11" fill="#9b99b8">all transactions</text>
              <rect x="260" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="316" y="52" font-size="11" fill="#9b99b8">Step 3</text>
              <text x="316" y="76" font-weight="700">Reconcile</text>
              <text x="316" y="98" font-size="11" fill="#9b99b8">bank and cards</text>
              <rect x="385" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="441" y="52" font-size="11" fill="#9b99b8">Step 4</text>
              <text x="441" y="76" font-weight="700">Adjust</text>
              <text x="441" y="98" font-size="11" fill="#9b99b8">accruals</text>
              <rect x="510" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="566" y="52" font-size="11" fill="#9b99b8">Step 5</text>
              <text x="566" y="76" font-weight="700">Trial balance</text>
              <text x="566" y="98" font-size="11" fill="#9b99b8">debits = credits</text>
              <rect x="635" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="691" y="52" font-size="11" fill="#9b99b8">Step 6</text>
              <text x="691" y="76" font-weight="700">Review, lock</text>
              <text x="691" y="98" font-size="11" fill="#9b99b8">then lock month</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#acc11a)">
                <line x1="123" y1="73" x2="133" y2="73"/>
                <line x1="248" y1="73" x2="258" y2="73"/>
                <line x1="373" y1="73" x2="383" y2="73"/>
                <line x1="498" y1="73" x2="508" y2="73"/>
                <line x1="623" y1="73" x2="633" y2="73"/>
              </g>
              <rect x="10" y="140" width="737" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="378" y="165" font-size="12">AI helps: lists missing bills, drafts accrual notes, matches bank lines, flags odd balances</text>
              <rect x="10" y="196" width="737" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="378" y="221" font-size="12">You decide: every entry and adjustment, and you sign off the final numbers</text>
            </g>
          </svg>
          <figcaption>A close follows the same steps every month. AI can speed up each step, but a person approves every number.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A month-end close checklist</h3>
          <p>Use the same checklist every month. Keep it in a spreadsheet and tick each row. Small businesses often finish in a few working days.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>What you do</th><th>How AI can help</th><th>What you check</th></tr></thead>
            <tbody>
              <tr><td>1. Collect</td><td>Get all bills, receipts, bank and card statements, and sales reports</td><td>Compare this month's supplier list with last month's and list missing bills</td><td>Every regular bill (rent, power, salaries) is there</td></tr>
              <tr><td>2. Record</td><td>Enter every sale, purchase and payment in the books</td><td>Read invoices into a table and suggest accounts</td><td>Totals match the documents</td></tr>
              <tr><td>3. Reconcile</td><td>Match the bank and card statements with the books</td><td>Match lines and list the ones that do not match</td><td>The difference is fully explained</td></tr>
              <tr><td>4. Adjust</td><td>Add accruals, prepayments and depreciation</td><td>Draft the adjustment entries from your notes</td><td>Amounts come from real bills or agreed estimates</td></tr>
              <tr><td>5. Trial balance</td><td>List every account balance and check that debits equal credits</td><td>Find the likely cause of a difference</td><td>Totals, and balances that look wrong</td></tr>
              <tr><td>6. Review and lock</td><td>Compare with last month, fix errors, then lock the month in the software</td><td>Explain big changes in plain words</td><td>A senior person signs off</td></tr>
            </tbody>
          </table>
          <p>Accounting software such as Tally, Zoho Books or QuickBooks can lock a closed period. The menu names differ. Check the tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Accruals: put costs in the right month</h3>
          <p>Most businesses use the <strong>accrual basis</strong>. This means you record income when you earn it and costs when you use them. The date of payment does not decide the month.</p>
          <p>An <strong>accrual</strong> (a cost you used this month, but the bill has not arrived yet) is the most common adjustment. Sweet Crumbs used electricity all through August. The bill will only come in September. The owner's estimate, from the meter reading, is ₹18,000.</p>
          <pre><code>31 Aug 2026  Electricity expense      Debit  ₹18,000
                     Accrued expenses     Credit ₹18,000
        Note: August power, bill due in September. Estimate from meter reading.</code></pre>
          <p>When the real bill arrives, you reverse the accrual and record the bill. A second common adjustment is <strong>depreciation</strong> (spreading the cost of equipment, such as ovens, over the years you use it). Sweet Crumbs records ₹6,000 each month.</p>
          <pre><code>31 Aug 2026  Depreciation expense     Debit  ₹6,000
                     Equipment            Credit ₹6,000</code></pre>
          <p>To keep it simple, this example reduces Equipment directly. Many businesses credit a separate Accumulated depreciation account instead. Follow your accountant's method.</p>
          <p>Some very small businesses keep books on a cash basis. Ask your chartered accountant which basis your business must use.</p>
        </div>
        <div class="lc-card">
          <h3>The trial balance and how to catch errors</h3>
          <p>A <strong>trial balance</strong> is a list of every account with its balance. Debit balances go in one column and credit balances in the other. In double-entry, the two totals must be equal.</p>
          <p>The first draft for Sweet Crumbs did not balance. Debits were ₹9,77,000 and credits were ₹9,68,000. The difference is ₹9,000. A difference that divides exactly by 9 often means a <strong>transposition</strong> (two digits swapped). Swapping two digits always makes a difference that divides by 9. But other errors can do this too, so the test is a clue, not proof. Here, rent of ₹45,000 was typed as ₹54,000. After fixing that and adding the two adjustments, the trial balance looks like this:</p>
          <table class="lc-table">
            <thead><tr><th>Account</th><th>Debit ₹</th><th>Credit ₹</th></tr></thead>
            <tbody>
              <tr><td>Equipment (after depreciation)</td><td>4,04,000</td><td></td></tr>
              <tr><td>Stock</td><td>45,000</td><td></td></tr>
              <tr><td>Receivables</td><td>32,000</td><td></td></tr>
              <tr><td>Bank (Navkar Bank)</td><td>1,25,000</td><td></td></tr>
              <tr><td>Cash in hand</td><td>4,000</td><td></td></tr>
              <tr><td>Owner's drawings</td><td>40,000</td><td></td></tr>
              <tr><td>Cost of goods sold</td><td>1,68,000</td><td></td></tr>
              <tr><td>Salaries</td><td>90,000</td><td></td></tr>
              <tr><td>Rent</td><td>45,000</td><td></td></tr>
              <tr><td>Electricity</td><td>18,000</td><td></td></tr>
              <tr><td>Depreciation</td><td>6,000</td><td></td></tr>
              <tr><td>Loan interest</td><td>1,500</td><td></td></tr>
              <tr><td>Marketing</td><td>7,500</td><td></td></tr>
              <tr><td>Payables</td><td></td><td>36,000</td></tr>
              <tr><td>Accrued expenses</td><td></td><td>18,000</td></tr>
              <tr><td>GST payable</td><td></td><td>12,000</td></tr>
              <tr><td>Bank loan</td><td></td><td>1,40,000</td></tr>
              <tr><td>Owner's capital (1 Aug)</td><td></td><td>3,60,000</td></tr>
              <tr><td>Sales</td><td></td><td>4,20,000</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>9,86,000</strong></td><td><strong>9,86,000</strong></td></tr>
            </tbody>
          </table>
          <p>Two spreadsheet formulas help. Debits are in column B and credits in column C.</p>
          <pre><code>=SUM(B2:B20)-SUM(C2:C20)        difference (should be 0)
        =IF(SUM(B2:B20)=SUM(C2:C20),"Balanced",IF(MOD(ABS(SUM(B2:B20)-SUM(C2:C20)),9)=0,"Divides by 9: look for swapped digits","Look for other errors"))</code></pre>
          <p><strong>Be careful:</strong> a trial balance that balances can still be wrong. It will not show a missing entry, an entry in the wrong account, or two errors that cancel out. After the rent fix, the trial balance already balanced without the ₹18,000 accrual. So always compare each balance with last month and with your documents.</p>
        </div>
        <div class="lc-card">
          <h3>Ask AI to review the trial balance</h3>
          <p>Use sample or masked data in public AI tools. Use only your company's approved AI tool for real books.</p>
          <pre><code>Weak:   Check my trial balance.

        Better: You are a careful bookkeeping assistant. Here is a draft
                trial balance for a small bakery for August (sample data).
                1. Total each column and show the difference.
                2. List likely causes, most likely first.
                3. List balances that look unusual for a bakery and say why.
                4. List month-end adjustments that may be missing.
                Ask me questions. Do not invent any amounts.</code></pre>
          <p>The better prompt asks for the sums, the reasons and questions back. Always add the totals again yourself with <code>=SUM()</code>. AI tools can make arithmetic mistakes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Put the close in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the month-end close steps for Sweet Crumbs in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Collect all bills, receipts, bank statements and sales reports for August</li>
              <li data-order="2">Record every sale, purchase and payment in the books</li>
              <li data-order="3">Reconcile the Navkar Bank statement with the books</li>
              <li data-order="4">Add the electricity accrual and the depreciation entry</li>
              <li data-order="5">Run the trial balance and check that debits equal credits</li>
              <li data-order="6">Compare with July, fix errors, get sign-off and lock August</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI a draft trial balance with an error in it. Ask it to find the difference, suggest causes and list missing adjustments.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful bookkeeping assistant. I am closing the month for [Sweet Crumbs, a small bakery in London]. Below is a draft trial balance for [August 2026]. It is made-up sample data.

        Account | Debit ₹ | Credit ₹
        Equipment | 4,10,000 |
        Stock | 45,000 |
        Receivables | 32,000 |
        Bank and cash | 1,29,000 |
        Owner's drawings | 40,000 |
        Cost of goods sold | 1,68,000 |
        Salaries | 90,000 |
        Rent | 54,000 |
        Loan interest | 1,500 |
        Marketing | 7,500 |
        Payables | | 36,000
        GST payable | | 12,000
        Bank loan | | 1,40,000
        Owner's capital | | 3,60,000
        Sales | | 4,20,000

        Tasks:
        1. Total each column and show the difference.
        2. List likely causes of the difference, most likely first. Explain the "divide by 9" test in simple words.
        3. List month-end adjustments that may be missing, such as accruals or depreciation. Ask me for amounts. Do not invent them.
        Reply with short tables and plain English.</pre>
            <ul class="ai-try-checks">
              <li>Debits total ₹9,77,000 and credits ₹9,68,000, so the difference is ₹9,000</li>
              <li>It points to rent (₹54,000 against a usual ₹45,000) as a likely swapped-digit error</li>
              <li>It lists missing adjustments (electricity, depreciation) without making up amounts</li>
              <li>You added the columns again yourself in a spreadsheet</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A balanced trial balance is a minimum check, not proof that the books are right. Follow the same checklist every month, record accruals so costs land in the right month, and check every AI suggestion against real documents.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Financial Statements Explained</h1>
        </div>
        <p class="lc-lead">After the close, the books turn into three reports called <strong>financial statements</strong>. The <strong>profit and loss</strong> statement shows if the business made money. The <strong>balance sheet</strong> shows what it owns and owes on one day. The <strong>cash flow</strong> statement shows where the cash came from and where it went. In this lesson, you will read all three for Sweet Crumbs, see how they link, and use AI to explain them. This is general education, not financial or tax advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Three boxes for Sweet Crumbs in August 2026. Profit and loss shows net profit of 84,000 rupees. Cash flow shows a net change in cash of 4,000 rupees. Balance sheet shows assets of 6,10,000 rupees. Arrows show that profit starts the cash flow, cash links to the balance sheet, and profit adds to capital.">
            <defs><marker id="acc12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="220" height="150" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="120" y="48" font-weight="700" fill="#c4b5fd">Profit and loss</text>
              <text x="120" y="74" font-size="11" fill="#9b99b8">August 2026</text>
              <text x="120" y="96">Sales ₹4,20,000</text>
              <text x="120" y="118">Costs ₹3,36,000</text>
              <text x="120" y="150" font-weight="700" fill="#6ee7b7">Net profit ₹84,000</text>
              <rect x="270" y="20" width="220" height="150" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="48" font-weight="700" fill="#67e8f9">Cash flow</text>
              <text x="380" y="74">Operating +₹1,04,000</text>
              <text x="380" y="96">Investing −₹50,000</text>
              <text x="380" y="118">Financing −₹50,000</text>
              <text x="380" y="150" font-weight="700" fill="#6ee7b7">Net change +₹4,000</text>
              <rect x="530" y="20" width="220" height="150" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="640" y="48" font-weight="700" fill="#fcd34d">Balance sheet</text>
              <text x="640" y="74" font-size="11" fill="#9b99b8">31 August 2026</text>
              <text x="640" y="96">Assets ₹6,10,000</text>
              <text x="640" y="118">Liabilities ₹2,06,000</text>
              <text x="640" y="150" font-weight="700" fill="#6ee7b7">Capital ₹4,04,000</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#acc12a)">
                <line x1="231" y1="146" x2="267" y2="146"/>
                <line x1="491" y1="96" x2="527" y2="96"/>
                <path d="M120,172 L120,194 L640,194 L640,176"/>
              </g>
              <text x="249" y="136" font-size="12" font-weight="700" fill="#fcd34d">1</text>
              <text x="509" y="86" font-size="12" font-weight="700" fill="#fcd34d">2</text>
              <text x="380" y="188" font-size="12" font-weight="700" fill="#fcd34d">3</text>
              <g font-size="12.5" text-anchor="start">
                <text x="20" y="226">1. Net profit ₹84,000 is the first line of the cash flow statement.</text>
                <text x="20" y="250">2. The net change of ₹4,000 takes bank and cash from ₹1,25,000 to ₹1,29,000.</text>
                <text x="20" y="274">3. Net profit ₹84,000 minus drawings ₹40,000 adds ₹44,000 to capital.</text>
              </g>
            </g>
          </svg>
          <figcaption>The three statements tell one story. If they do not tie together, there is an error somewhere.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Profit and loss: did we make money?</h3>
          <p>The <strong>profit and loss statement</strong> (P&amp;L, also called the income statement) covers a period, such as one month. It starts with sales and takes away costs. <strong>Cost of goods sold</strong> is the cost of the ingredients and packaging used for the goods sold. <strong>Gross profit</strong> is sales minus cost of goods sold. <strong>Net profit</strong> is what is left after all other costs.</p>
          <table class="lc-table">
            <thead><tr><th>Sweet Crumbs, August 2026</th><th>₹</th></tr></thead>
            <tbody>
              <tr><td>Sales (without GST)</td><td>4,20,000</td></tr>
              <tr><td>Cost of goods sold</td><td>(1,68,000)</td></tr>
              <tr><td><strong>Gross profit</strong> (60% of sales)</td><td><strong>2,52,000</strong></td></tr>
              <tr><td>Salaries</td><td>(90,000)</td></tr>
              <tr><td>Rent</td><td>(45,000)</td></tr>
              <tr><td>Electricity (accrued)</td><td>(18,000)</td></tr>
              <tr><td>Depreciation</td><td>(6,000)</td></tr>
              <tr><td>Loan interest</td><td>(1,500)</td></tr>
              <tr><td>Marketing</td><td>(7,500)</td></tr>
              <tr><td>Total expenses</td><td>(1,68,000)</td></tr>
              <tr><td><strong>Net profit</strong> (20% of sales)</td><td><strong>84,000</strong></td></tr>
            </tbody>
          </table>
          <p>Numbers in brackets are taken away. GST collected from customers is not income, so it is not in sales. It belongs to the government and sits in GST payable.</p>
        </div>
        <div class="lc-card">
          <h3>Balance sheet: what we own and owe on one day</h3>
          <p>The <strong>balance sheet</strong> is a picture on one date. <strong>Assets</strong> are what the business owns or is owed. <strong>Liabilities</strong> are what it owes others. <strong>Capital</strong> (called equity in a company) is the owner's share. The rule is always: <strong>Assets = Liabilities + Capital</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Sweet Crumbs</th><th>31 Jul ₹</th><th>31 Aug ₹</th></tr></thead>
            <tbody>
              <tr><td>Equipment (after depreciation)</td><td>3,60,000</td><td>4,04,000</td></tr>
              <tr><td>Stock</td><td>40,000</td><td>45,000</td></tr>
              <tr><td>Receivables (customers who owe us)</td><td>25,000</td><td>32,000</td></tr>
              <tr><td>Bank</td><td>1,20,000</td><td>1,25,000</td></tr>
              <tr><td>Cash in hand</td><td>5,000</td><td>4,000</td></tr>
              <tr><td><strong>Total assets</strong></td><td><strong>5,50,000</strong></td><td><strong>6,10,000</strong></td></tr>
              <tr><td>Payables (suppliers we owe)</td><td>30,000</td><td>36,000</td></tr>
              <tr><td>Accrued expenses</td><td>0</td><td>18,000</td></tr>
              <tr><td>GST payable</td><td>10,000</td><td>12,000</td></tr>
              <tr><td>Bank loan (Navkar Bank)</td><td>1,50,000</td><td>1,40,000</td></tr>
              <tr><td><strong>Total liabilities</strong></td><td><strong>1,90,000</strong></td><td><strong>2,06,000</strong></td></tr>
              <tr><td>Owner's capital</td><td>3,60,000</td><td>4,04,000</td></tr>
              <tr><td><strong>Liabilities + capital</strong></td><td><strong>5,50,000</strong></td><td><strong>6,10,000</strong></td></tr>
            </tbody>
          </table>
          <p>Equipment went up because the bakery bought a new oven for ₹50,000 and recorded ₹6,000 depreciation: 3,60,000 + 50,000 − 6,000 = 4,04,000. Capital moved like this: 3,60,000 + profit 84,000 − drawings 40,000 = 4,04,000. <strong>Drawings</strong> is money the owner took out for personal use. It is not an expense.</p>
          <p>Companies in India present their statements in a set format (Schedule III of the Companies Act, 2013). Your chartered accountant prepares the formal version.</p>
        </div>
        <div class="lc-card">
          <h3>Cash flow: why profit is not the same as cash</h3>
          <p>Sweet Crumbs made ₹84,000 profit, but its bank and cash went up by only ₹4,000. The <strong>cash flow statement</strong> explains the gap. The common <strong>indirect method</strong> starts with net profit and adjusts it.</p>
          <table class="lc-table">
            <thead><tr><th>Sweet Crumbs, August 2026</th><th>₹</th></tr></thead>
            <tbody>
              <tr><td>Net profit</td><td>84,000</td></tr>
              <tr><td>Add back depreciation (a cost with no cash paid)</td><td>6,000</td></tr>
              <tr><td>More stock bought than used</td><td>(5,000)</td></tr>
              <tr><td>Customers owe more</td><td>(7,000)</td></tr>
              <tr><td>We owe suppliers more</td><td>6,000</td></tr>
              <tr><td>Electricity not paid yet (accrual)</td><td>18,000</td></tr>
              <tr><td>More GST held, to pay later</td><td>2,000</td></tr>
              <tr><td><strong>Cash from operating activities</strong></td><td><strong>1,04,000</strong></td></tr>
              <tr><td>New oven (investing activities)</td><td>(50,000)</td></tr>
              <tr><td>Loan repaid (financing)</td><td>(10,000)</td></tr>
              <tr><td>Owner's drawings (financing)</td><td>(40,000)</td></tr>
              <tr><td><strong>Net change in cash</strong></td><td><strong>4,000</strong></td></tr>
              <tr><td>Bank and cash on 1 Aug</td><td>1,25,000</td></tr>
              <tr><td><strong>Bank and cash on 31 Aug</strong></td><td><strong>1,29,000</strong></td></tr>
            </tbody>
          </table>
          <p>The closing ₹1,29,000 equals bank ₹1,25,000 plus cash ₹4,000 on the balance sheet. That is the tie-out check.</p>
          <p>When you ask AI to explain or build these statements, ask it to show every sum and to check the ties. It can misread a number or add GST into sales. Check its totals with <code>=SUM()</code> before anyone uses them.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Which statement shows it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each Sweet Crumbs item into the statement where it appears as a line.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pl" data-label="Profit and loss"></div>
              <div data-sorter-target="bucket" data-bucket="bs" data-label="Balance sheet"></div>
              <div data-sorter-target="bucket" data-bucket="cf" data-label="Cash flow"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pl" data-why="Sales for a period are income. They appear in the profit and loss.">Sales for August: ₹4,20,000</li>
              <li data-bucket="bs" data-why="Stock on a date is an asset the bakery owns.">Flour, butter and packaging in stock on 31 August: ₹45,000</li>
              <li data-bucket="cf" data-why="Cash paid for equipment is an investing cash flow. The oven itself sits in equipment, but the payment is shown here.">Cash paid for a new oven during August: ₹50,000</li>
              <li data-bucket="bs" data-why="Money still owed on a date is a liability.">Loan still owed to Navkar Bank on 31 August: ₹1,40,000</li>
              <li data-bucket="pl" data-why="Salaries are a cost of running the business in the month.">Salaries for August: ₹90,000</li>
              <li data-bucket="cf" data-why="Repaying loan principal is not an expense. It is a financing cash flow. Only the interest goes in the P&amp;L.">Loan principal repaid during August: ₹10,000</li>
              <li data-bucket="pl" data-why="Depreciation is a cost with no cash paid. It reduces profit.">Depreciation for August: ₹6,000</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to build all three statements from sample data and prove that they tie together.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an accounting tutor. Explain in simple English for a small business owner. Use this made-up data for [Sweet Crumbs, a London bakery], [August 2026]. All amounts in ₹, without GST.

        Income and costs: sales 4,20,000; cost of goods sold 1,68,000; salaries 90,000; rent 45,000; electricity 18,000; depreciation 6,000; loan interest 1,500; marketing 7,500.

        Balances on 31 Jul / 31 Aug: equipment 3,60,000 / 4,04,000; stock 40,000 / 45,000; receivables 25,000 / 32,000; bank and cash 1,25,000 / 1,29,000; payables 30,000 / 36,000; accrued expenses 0 / 18,000; GST payable 10,000 / 12,000; bank loan 1,50,000 / 1,40,000; owner's capital 3,60,000 / ?

        During August: new oven bought for 50,000; owner's drawings 40,000.

        Tasks:
        1. Make a profit and loss statement.
        2. Work out closing capital. Make the 31 Aug balance sheet and show assets = liabilities + capital.
        3. Make a cash flow statement (indirect method) that ends at the closing bank and cash.
        4. In 3 sentences, explain why profit and the change in cash are different.
        Show every sum. If something does not tie, say so. Do not guess.</pre>
            <ul class="ai-try-checks">
              <li>Net profit is ₹84,000 and closing capital is ₹4,04,000</li>
              <li>Total assets and liabilities plus capital are both ₹6,10,000</li>
              <li>Operating cash is ₹1,04,000 and the net change in cash is ₹4,000</li>
              <li>The loan repayment and drawings are not shown as expenses</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The P&amp;L shows profit over a period, the balance sheet shows a position on one date, and the cash flow explains the cash. Profit feeds capital and starts the cash flow, and the cash flow ends at the balance sheet cash. Check these ties every time.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Monthly Reports for Owners</h1>
        </div>
        <p class="lc-lead">Most small business owners do not read full financial statements. They want a short report that answers three questions. How did we do? What changed? What should I do next? In this lesson, you will build a one-page <strong>owner report</strong> for Sweet Crumbs. You will compare two months in a spreadsheet and use AI to write the words. The reasons for each change must come from real facts, not from the AI.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A mock owner report for Sweet Crumbs for August 2026. Four tiles: sales 4,20,000 rupees, up 10.5 percent; gross margin 60 percent, down from 62 percent; net profit 84,000 rupees, up 29.2 percent; bank and cash 1,29,000 rupees. A bar chart compares July and August. A notes box lists three reasons confirmed by the owner.">
            <defs><marker id="acc13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="740" height="310" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="34" font-weight="700">Sweet Crumbs · Owner report · August 2026</text>
              <rect x="24" y="46" width="172" height="76" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="110" y="66" font-size="11" fill="#9b99b8">Sales</text>
              <text x="110" y="91" font-size="18" font-weight="700">₹4,20,000</text>
              <text x="110" y="111" font-size="11" fill="#6ee7b7">+10.5% vs July</text>
              <rect x="204" y="46" width="172" height="76" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="290" y="66" font-size="11" fill="#9b99b8">Gross margin</text>
              <text x="290" y="91" font-size="18" font-weight="700">60%</text>
              <text x="290" y="111" font-size="11" fill="#fcd34d">July 62%</text>
              <rect x="384" y="46" width="172" height="76" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="470" y="66" font-size="11" fill="#9b99b8">Net profit</text>
              <text x="470" y="91" font-size="18" font-weight="700">₹84,000</text>
              <text x="470" y="111" font-size="11" fill="#6ee7b7">+29.2% vs July</text>
              <rect x="564" y="46" width="172" height="76" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="650" y="66" font-size="11" fill="#9b99b8">Bank and cash</text>
              <text x="650" y="91" font-size="18" font-weight="700">₹1,29,000</text>
              <text x="650" y="111" font-size="11" fill="#6ee7b7">+₹4,000 in August</text>
              <text x="24" y="152" text-anchor="start" font-size="12" fill="#9b99b8">July vs August (₹)</text>
              <line x1="24" y1="290" x2="276" y2="290" stroke="#4b4a78"/>
              <rect x="44" y="190" width="34" height="100" fill="#3b82f6" opacity="0.6"/>
              <rect x="86" y="180" width="34" height="110" fill="#3b82f6"/>
              <rect x="170" y="273" width="34" height="17" fill="#10b981" opacity="0.6"/>
              <rect x="212" y="268" width="34" height="22" fill="#10b981"/>
              <g font-size="10" fill="#9b99b8">
                <text x="61" y="185">3.8L</text>
                <text x="103" y="175">4.2L</text>
                <text x="187" y="268">65k</text>
                <text x="229" y="263">84k</text>
                <text x="61" y="302">Jul</text>
                <text x="103" y="302">Aug</text>
                <text x="187" y="302">Jul</text>
                <text x="229" y="302">Aug</text>
              </g>
              <text x="82" y="316" font-size="11">Sales</text>
              <text x="208" y="316" font-size="11">Net profit</text>
              <rect x="300" y="138" width="436" height="170" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="518" y="164" font-weight="700" fill="#f9a8d4">Why it changed (confirmed by owner)</text>
              <g font-size="12" text-anchor="start">
                <text x="318" y="196">+ Two new café customers: sales up ₹40,000</text>
                <text x="318" y="226">− Butter price rose: gross margin 62% to 60%</text>
                <text x="318" y="256">+ No flyer campaign: marketing down ₹4,500</text>
                <text x="318" y="286" fill="#9b99b8">Action: review cake prices in September</text>
              </g>
            </g>
          </svg>
          <figcaption>A good owner report fits on one page: headline numbers, a simple comparison, confirmed reasons and one or two actions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in an owner report</h3>
          <ul class="lc-list">
            <li><strong>Headline numbers:</strong> sales, gross margin, net profit and cash. <strong>Gross margin</strong> is gross profit as a percentage of sales.</li>
            <li><strong>A comparison:</strong> this month against last month, or against the same month last year, or against the budget.</li>
            <li><strong>Reasons:</strong> two or three short, checked explanations for the biggest changes.</li>
            <li><strong>Money in and out:</strong> cash in the bank, customers who owe money, bills due soon.</li>
            <li><strong>Actions:</strong> one or two things the owner may want to decide.</li>
          </ul>
          <p>Keep it to one page. Use plain words, not accounting terms. Round big numbers for the headline, and keep exact figures in the table below it.</p>
        </div>
        <div class="lc-card">
          <h3>Compare two months in a spreadsheet</h3>
          <p>A <strong>variance</strong> is the difference between two numbers, for example this month minus last month. Do this maths in a spreadsheet, not in the AI. Put July in column B and August in column C.</p>
          <pre><code>Change in ₹:   =C2-B2
        Change in %:   =IF(B2=0,"",(C2-B2)/B2)</code></pre>
          <table class="lc-table">
            <thead><tr><th>Sweet Crumbs</th><th>July ₹</th><th>August ₹</th><th>Change ₹</th><th>Change %</th></tr></thead>
            <tbody>
              <tr><td>Sales</td><td>3,80,000</td><td>4,20,000</td><td>+40,000</td><td>+10.5%</td></tr>
              <tr><td>Cost of goods sold</td><td>1,44,400</td><td>1,68,000</td><td>+23,600</td><td>+16.3%</td></tr>
              <tr><td><strong>Gross profit</strong></td><td>2,35,600</td><td>2,52,000</td><td>+16,400</td><td>+7.0%</td></tr>
              <tr><td>Salaries</td><td>90,000</td><td>90,000</td><td>0</td><td>0%</td></tr>
              <tr><td>Rent</td><td>45,000</td><td>45,000</td><td>0</td><td>0%</td></tr>
              <tr><td>Electricity</td><td>16,000</td><td>18,000</td><td>+2,000</td><td>+12.5%</td></tr>
              <tr><td>Depreciation</td><td>6,000</td><td>6,000</td><td>0</td><td>0%</td></tr>
              <tr><td>Loan interest</td><td>1,600</td><td>1,500</td><td>−100</td><td>−6.3%</td></tr>
              <tr><td>Marketing</td><td>12,000</td><td>7,500</td><td>−4,500</td><td>−37.5%</td></tr>
              <tr><td>Total expenses</td><td>1,70,600</td><td>1,68,000</td><td>−2,600</td><td>−1.5%</td></tr>
              <tr><td><strong>Net profit</strong></td><td>65,000</td><td>84,000</td><td>+19,000</td><td>+29.2%</td></tr>
            </tbody>
          </table>
          <p>Check the story adds up. Gross profit rose ₹16,400 and expenses fell ₹2,600. Together that is ₹19,000, which is the rise in net profit. Gross margin was 62% in July (2,35,600 ÷ 3,80,000) and 60% in August (2,52,000 ÷ 4,20,000).</p>
        </div>
        <div class="lc-card">
          <h3>Let AI write the words, but you supply the reasons</h3>
          <p>AI is good at turning a table into clear sentences. But it does not know why your numbers changed. If you do not give it reasons, it may invent believable ones, such as "festival demand". So collect the reasons first from the owner, invoices and staff.</p>
          <pre><code>Weak:   Write a report on these numbers and explain the changes.

        Better: You are writing a one-page report for a bakery owner who
                is not an accountant. Use only the table and the confirmed
                facts below. Do not add any other reason. If a big change
                has no confirmed reason, write [needs check].
                Format: 4 headline numbers, 3 short "what changed" points,
                1 cash point, 2 suggested questions for the owner.
                Table: [paste]   Confirmed facts: [paste]</code></pre>
          <p>Here are the confirmed facts for August. Two new café customers ordered daily from 5 August. The butter supplier raised prices. The one-time flyer campaign ran only in July. The new oven ran from mid-August. Before you send the report, check every number against your spreadsheet.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Build the report with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">Here is the July and August P&amp;L table for Sweet Crumbs. Draft a one-page report for the owner.</li>
              <li data-kind="answer" data-label="AI draft">Sales rose 10.5% to ₹4,20,000. Net profit rose 29.2% to ₹84,000. Sales grew because of strong festival season demand.</li>
              <li data-kind="warn" data-label="Invented reason">Nobody told the AI about a festival. It guessed a reason that sounds right. An owner could make a wrong decision from it.</li>
              <li data-kind="check" data-label="Ask the owner">You check with the owner and the invoices. The real reasons: two new café customers, a butter price rise, and no flyer campaign in August.</li>
              <li data-kind="user" data-label="Your follow-up">Use only these confirmed facts as reasons. Write [needs check] for any change without a confirmed reason.</li>
              <li data-kind="answer" data-label="AI revised">Sales rose ₹40,000 because two new café customers now order daily. Gross margin fell from 62% to 60% because butter costs more. Marketing fell ₹4,500 because the July flyer campaign was one-time.</li>
              <li data-kind="tool" data-label="Spreadsheet">You recalculate the net profit change: =(84000-65000)/65000</li>
              <li data-kind="result" data-label="Result">0.2923, which is 29.2%. The AI's percentage is correct, so the report is ready to send.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI a two-month table and a list of confirmed facts. Ask for a short owner report that uses only those facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are writing a one-page monthly report for the owner of [Sweet Crumbs, a small bakery in London]. The owner is not an accountant. Use simple English. All data is made up.

        Item | July ₹ | August ₹
        Sales | 3,80,000 | 4,20,000
        Cost of goods sold | 1,44,400 | 1,68,000
        Salaries | 90,000 | 90,000
        Rent | 45,000 | 45,000
        Electricity | 16,000 | 18,000
        Depreciation | 6,000 | 6,000
        Loan interest | 1,600 | 1,500
        Marketing | 12,000 | 7,500
        Bank and cash at month end | 1,25,000 | 1,29,000

        Confirmed facts: [two new café customers from 5 August; butter supplier raised prices; July flyer campaign was one-time; new oven used from mid-August].

        Tasks:
        1. Work out gross profit, gross margin % and net profit for both months. Show the sums.
        2. Write 4 headline numbers with the change from July.
        3. Write 3 short "what changed" points. Use only the confirmed facts. Write [needs check] if a change has no confirmed reason.
        4. Suggest 2 questions the owner may want to discuss.
        Keep it under 250 words. This is not financial advice.</pre>
            <ul class="ai-try-checks">
              <li>Net profit is ₹65,000 in July and ₹84,000 in August</li>
              <li>Gross margin is 62% in July and 60% in August</li>
              <li>Every reason comes from the confirmed facts, with no invented ones</li>
              <li>You checked each percentage again in your spreadsheet</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Do the maths in a spreadsheet, get the reasons from real people and documents, and let AI write the plain-English words. An owner report with an invented reason is worse than no report.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Controls and Error Checks</h1>
        </div>
        <p class="lc-lead"><strong>Internal controls</strong> are simple rules that stop mistakes and fraud before they cause damage. Examples are "a second person approves big payments" and "the software records every change". In this lesson, you will learn four basic controls. You will also learn how to use spreadsheets and AI to spot unusual entries. We use <em>LedgerLite Pvt Ltd</em>, a made-up software company in San Francisco.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A payment moves through three different people: Priya enters the bill, Arjun approves it and Kavya releases the payment to Navkar Bank. Below, an audit trail logs who did what and when. A side box lists red flags.">
            <defs><marker id="acc14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="30" width="160" height="74" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="95" y="60" font-weight="700">Priya · maker</text>
              <text x="95" y="84" font-size="11" fill="#9b99b8">enters the bill</text>
              <rect x="205" y="30" width="160" height="74" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="285" y="60" font-weight="700">Arjun · checker</text>
              <text x="285" y="84" font-size="11" fill="#9b99b8">approves it</text>
              <rect x="395" y="30" width="160" height="74" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="475" y="60" font-weight="700">Kavya · payer</text>
              <text x="475" y="84" font-size="11" fill="#9b99b8">releases payment</text>
              <rect x="585" y="30" width="160" height="74" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="665" y="60" font-weight="700">Navkar Bank</text>
              <text x="665" y="84" font-size="11" fill="#9b99b8">pays the vendor</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#acc14a)">
                <line x1="176" y1="67" x2="202" y2="67"/>
                <line x1="366" y1="67" x2="392" y2="67"/>
                <line x1="556" y1="67" x2="582" y2="67"/>
              </g>
              <rect x="15" y="130" width="500" height="136" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="265" y="154" font-weight="700" fill="#fcd34d">Audit trail: who did what, and when</text>
              <g font-size="12" text-anchor="start">
                <text x="32" y="182">03 Aug 10:02 · Priya · created bill 4471 · ₹38,000</text>
                <text x="32" y="204">03 Aug 11:15 · Arjun · approved bill 4471</text>
                <text x="32" y="226">03 Aug 16:40 · Kavya · paid bill 4471</text>
                <text x="32" y="248" fill="#9b99b8">04 Aug 09:30 · Priya · edited memo (old text kept)</text>
              </g>
              <rect x="535" y="130" width="210" height="136" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="640" y="154" font-weight="700" fill="#f9a8d4">Red flags</text>
              <g font-size="12">
                <text x="640" y="182">Same person makes</text>
                <text x="640" y="198">and approves</text>
                <text x="640" y="224">Amount just below</text>
                <text x="640" y="240">the approval limit</text>
                <text x="640" y="258" fill="#9b99b8">Change with no log</text>
              </g>
            </g>
          </svg>
          <figcaption>Different people do different parts of a payment, and the software logs every step. This makes errors and fraud harder to hide.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four basic controls</h3>
          <table class="lc-table">
            <thead><tr><th>Control</th><th>What it means</th><th>Example at LedgerLite</th></tr></thead>
            <tbody>
              <tr><td><strong>Approvals</strong></td><td>A second person checks before money leaves. This is often called <strong>maker-checker</strong>.</td><td>Company rule: every payment above ₹50,000 needs the finance manager's approval.</td></tr>
              <tr><td><strong>Separation of duties</strong></td><td>No single person controls a whole task from start to end.</td><td>The person who adds new vendors cannot pay them. The person who pays does not reconcile the bank.</td></tr>
              <tr><td><strong>Audit trail</strong></td><td>A log of who created, changed or deleted each entry, and when.</td><td>The accounting software keeps an edit log that staff cannot switch off.</td></tr>
              <tr><td><strong>Regular reviews</strong></td><td>Someone checks the results often, such as bank reconciliations and odd entries.</td><td>Each month the finance manager reviews unusual entries.</td></tr>
            </tbody>
          </table>
          <p>In India, the Companies (Accounts) Rules have a rule from 1 April 2023. A company that keeps its books in accounting software must use software with an audit trail. It must record an edit log of every change with the date, and the audit trail must not be switched off. Your chartered accountant or auditor can explain how this applies to your business. In a very small business, one person may do many jobs. Then the owner should review the bank statement and payments every month.</p>
        </div>
        <div class="lc-card">
          <h3>Spotting unusual entries</h3>
          <p>Most errors and frauds leave signs. Look for these <strong>red flags</strong>:</p>
          <ul class="lc-list">
            <li>Payments just below an approval limit, for example ₹49,800 when the limit is ₹50,000.</li>
            <li>One bill split into several smaller payments.</li>
            <li>A new vendor that is paid very soon after it is added.</li>
            <li>The same invoice number paid twice.</li>
            <li>Entries posted late at night, on weekends or on holidays.</li>
            <li>Large round numbers with no document, such as "adjustment ₹1,00,000".</li>
            <li>The same person creates and approves an entry.</li>
          </ul>
          <p>Export the journal to a spreadsheet and add helper columns. Say the date is in column B, the amount in D, and the vendor and invoice number in C and E.</p>
          <pre><code>Weekend entry:      =WEEKDAY(B2,2)&gt;5
        Round amount:       =MOD(D2,10000)=0
        Just below limit:   =AND(D2&gt;=45000,D2&lt;=50000)
        Duplicate invoice:  =COUNTIFS(C:C,C2,E:E,E2)&gt;1</code></pre>
          <p>A red flag is a reason to look closer. It is not proof of fraud. A weekend entry may be normal if staff worked that day. Always ask for the document and the explanation.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to review a journal export</h3>
          <p>AI can read a long list and suggest which lines to check first. But journal data can be sensitive. Remove or mask names and bank details before you use a public AI tool. For real company data, use only the AI tool your company has approved.</p>
          <pre><code>Weak:   Is there any fraud in this data?

        Better: You are an internal audit assistant. Our rule: payments
                above ₹50,000 need a second approver. Review the journal
                lines below. Flag lines that show red flags, such as
                split payments, duplicate invoices, weekend posting,
                round amounts or the same maker and approver.
                For each flag, give the line ID, the reason and one
                question to ask. Do not call anything fraud.</code></pre>
          <p>The weak prompt asks the AI to judge. The better prompt gives the rule and asks for reasons and questions. A person then looks at the documents and decides.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Normal or look closer?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">LedgerLite's rule: payments above ₹50,000 need a second approver. Sort each entry.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Looks normal"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Look closer"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Same payee, same amount as every month, and a proper approver. Nothing unusual.">Office rent to the usual landlord, same amount as every month, approved by the finance manager</li>
              <li data-bucket="check" data-why="Two payments just below the limit to a brand-new vendor may be one bill split to avoid approval.">Two payments of ₹49,500 to a vendor added to the system yesterday</li>
              <li data-bucket="check" data-why="This breaks maker-checker. Nobody else checked the payment.">A payment that was entered and approved by the same person</li>
              <li data-bucket="ok" data-why="It matches an approved document. That is the normal process.">A salary payment that matches the approved payroll sheet</li>
              <li data-bucket="check" data-why="A large round amount, posted late on a Sunday, with no document. Ask who posted it and why.">A ₹2,00,000 "misc adjustment" to sales, posted at 11:50 pm on a Sunday, with no document</li>
              <li data-bucket="check" data-why="The same invoice paid twice is a common error. The money may need to be recovered.">One supplier invoice number that appears on two payments</li>
              <li data-bucket="ok" data-why="This is good separation of duties. The reviewer does not handle payments.">A bank reconciliation signed off by someone who does not make payments</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to review a small, made-up journal export and explain which lines need a closer look.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an internal audit assistant for [LedgerLite Pvt Ltd, a software company in San Francisco]. Company rule: [payments above ₹50,000 need a second approver who is not the person who entered them]. All data below is made up.

        ID | Date | Vendor | Amount ₹ | Entered by | Approved by | Note
        JE-301 | Mon 03 Aug 2026 | Metro Office Rentals | 2,50,000 | Priya | Arjun | August rent
        JE-302 | Fri 07 Aug 2026 | CloudNest Hosting | 84,300 | Priya | Arjun | Invoice CN-7781
        JE-303 | Sun 09 Aug 2026 | QuickFix IT (new vendor) | 49,800 | Rohan | Rohan | Repairs
        JE-304 | Mon 10 Aug 2026 | QuickFix IT (new vendor) | 49,800 | Rohan | Rohan | Repairs
        JE-305 | Fri 14 Aug 2026 | CloudNest Hosting | 84,300 | Priya | Arjun | Invoice CN-7781
        JE-306 | Mon 31 Aug 2026 | (none) | 1,00,000 | Rohan | Arjun | Revenue adjustment

        Tasks:
        1. Make a table: ID, red flag, why it matters, question to ask, priority (high, medium, low).
        2. Say which lines look normal and why.
        3. Suggest 2 controls that would have stopped these problems.
        Do not call anything fraud. Say what document a person should check.</pre>
            <ul class="ai-try-checks">
              <li>JE-303 and JE-304 are flagged: same maker and approver, just below the limit, new vendor, split bill</li>
              <li>JE-305 is flagged as a possible duplicate of JE-302 (same invoice number)</li>
              <li>JE-306 is flagged: round amount, no vendor, vague note</li>
              <li>JE-301 is treated as normal, and nothing is called fraud</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good controls are simple: two people for big payments, split duties, a log of every change and a regular review. AI and spreadsheet formulas help you find the lines to check, but a person must look at the documents and decide.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Capstone: Close a Month for a Small Shop</h1>
        </div>
        <p class="lc-lead">In this capstone, you will close one month for <em>Rangrez Crafts</em>, a made-up handicrafts store in Manchester. You will start with a bank statement and invoices. Then you will categorise the lines, reconcile the bank, make a GST summary, build a profit and loss statement and write an owner report. You will use AI at each step and check every number yourself. All data is made up. This is education only, not tax or financial advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 230" role="img" aria-label="Six capstone steps: documents, categorise, reconcile to 1,35,710 rupees, GST summary with net 4,110 rupees, profit and loss with profit of 44,000 rupees, and an owner report. Under each step is the check to make.">
            <defs><marker id="acc15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="66" y="52" font-size="11" fill="#9b99b8">Step 1</text>
              <text x="66" y="76" font-weight="700">Documents</text>
              <text x="66" y="98" font-size="11" fill="#9b99b8">11 bank lines</text>
              <rect x="135" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="191" y="52" font-size="11" fill="#9b99b8">Step 2</text>
              <text x="191" y="76" font-weight="700">Categorise</text>
              <text x="191" y="98" font-size="11" fill="#9b99b8">to accounts</text>
              <rect x="260" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="316" y="52" font-size="11" fill="#9b99b8">Step 3</text>
              <text x="316" y="76" font-weight="700">Reconcile</text>
              <text x="316" y="98" font-size="11" fill="#9b99b8">₹1,35,710</text>
              <rect x="385" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="441" y="52" font-size="11" fill="#9b99b8">Step 4</text>
              <text x="441" y="76" font-weight="700">GST summary</text>
              <text x="441" y="98" font-size="11" fill="#9b99b8">net ₹4,110</text>
              <rect x="510" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="566" y="52" font-size="11" fill="#9b99b8">Step 5</text>
              <text x="566" y="76" font-weight="700">P&amp;L</text>
              <text x="566" y="98" font-size="11" fill="#9b99b8">profit ₹44,000</text>
              <rect x="635" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="691" y="52" font-size="11" fill="#9b99b8">Step 6</text>
              <text x="691" y="76" font-weight="700">Owner report</text>
              <text x="691" y="98" font-size="11" fill="#9b99b8">one page</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#acc15a)">
                <line x1="123" y1="73" x2="133" y2="73"/>
                <line x1="248" y1="73" x2="258" y2="73"/>
                <line x1="373" y1="73" x2="383" y2="73"/>
                <line x1="498" y1="73" x2="508" y2="73"/>
                <line x1="623" y1="73" x2="633" y2="73"/>
              </g>
              <g font-size="11" fill="#6ee7b7">
                <text x="66" y="140">all lines used</text>
                <text x="191" y="140">no GST as a cost</text>
                <text x="316" y="140">difference = 0</text>
                <text x="441" y="140">match GSTR-2B</text>
                <text x="566" y="140">no GST in sales</text>
                <text x="691" y="140">facts confirmed</text>
              </g>
              <rect x="10" y="166" width="737" height="44" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="378" y="193" font-size="12" fill="#9b99b8">Sample data only. Education, not tax advice. A chartered accountant reviews real returns.</text>
            </g>
          </svg>
          <figcaption>The capstone follows a real close. Each step has one number to check before you move on.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Your documents for August 2026</h3>
          <p>Rangrez Crafts banks with Navkar Bank. The opening bank balance on 1 August was ₹85,000, the same in the bank and in the books. Here is the August bank statement.</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Description</th><th>Money in ₹</th><th>Money out ₹</th></tr></thead>
            <tbody>
              <tr><td>05 Aug</td><td>Shop rent</td><td></td><td>30,000</td></tr>
              <tr><td>07 Aug</td><td>Trafford Prints (fabric stock)</td><td></td><td>60,000</td></tr>
              <tr><td>08 Aug</td><td>UPI collections</td><td>42,000</td><td></td></tr>
              <tr><td>10 Aug</td><td>Salaries (2 staff)</td><td></td><td>36,000</td></tr>
              <tr><td>14 Aug</td><td>Electricity</td><td></td><td>4,200</td></tr>
              <tr><td>15 Aug</td><td>UPI collections</td><td>51,000</td><td></td></tr>
              <tr><td>20 Aug</td><td>GST payment for July</td><td></td><td>6,500</td></tr>
              <tr><td>22 Aug</td><td>UPI collections</td><td>46,500</td><td></td></tr>
              <tr><td>25 Aug</td><td>BlueLine Couriers</td><td></td><td>4,130</td></tr>
              <tr><td>29 Aug</td><td>UPI collections</td><td>48,000</td><td></td></tr>
              <tr><td>31 Aug</td><td>Bank charges</td><td></td><td>300</td></tr>
              <tr><td></td><td><strong>Totals</strong></td><td><strong>1,87,500</strong></td><td><strong>1,41,130</strong></td></tr>
            </tbody>
          </table>
          <p>Closing bank balance on the statement: 85,000 + 1,87,500 − 1,41,130 = <strong>₹1,31,370</strong>. Redo sums like this yourself in a spreadsheet.</p>
          <p>Other documents for the month (amounts in ₹):</p>
          <table class="lc-table">
            <thead><tr><th>Document</th><th>Taxable value</th><th>GST</th><th>Total</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>Sales invoices for August</td><td>2,00,000</td><td>10,000</td><td>2,10,000</td><td>UPI 1,87,500 received; card sales 12,600 on 31 Aug; 9,900 owed by a Chicago boutique</td></tr>
              <tr><td>Trafford Prints, fabric stock</td><td>80,000</td><td>4,000</td><td>84,000</td><td>60,000 paid, 24,000 still owed</td></tr>
              <tr><td>Manchester Packaging</td><td>7,000</td><td>1,260</td><td>8,260</td><td>Cheque issued 29 Aug, not yet cleared</td></tr>
              <tr><td>BlueLine Couriers</td><td>3,500</td><td>630</td><td>4,130</td><td>Paid 25 Aug</td></tr>
            </tbody>
          </table>
          <p>Rent, salaries and electricity have no GST in this example. Stock was ₹1,20,000 on 1 August and ₹1,25,000 on 31 August (counted). The card company pays the 31 August card sales into the bank on 1 September.</p>
        </div>
        <div class="lc-card">
          <h3>Categorise and reconcile</h3>
          <p>Ask AI to suggest an account for each bank line. Then check each one. Watch for one trap. The ₹6,500 GST payment is not an August expense. It pays the July GST that the shop already owed, so it reduces GST payable. Also, the courier payment splits into ₹3,500 expense and ₹630 input GST.</p>
          <p>Next, reconcile. The books show two items that the bank does not have yet. The bank shows one item that the books do not have yet.</p>
          <table class="lc-table">
            <thead><tr><th>Bank statement side</th><th>₹</th><th>Books side</th><th>₹</th></tr></thead>
            <tbody>
              <tr><td>Closing balance per bank</td><td>1,31,370</td><td>Closing balance per books</td><td>1,36,010</td></tr>
              <tr><td>Add: card sales in transit</td><td>12,600</td><td>Less: bank charges not yet recorded</td><td>(300)</td></tr>
              <tr><td>Less: cheque not yet cleared</td><td>(8,260)</td><td></td><td></td></tr>
              <tr><td><strong>Adjusted balance</strong></td><td><strong>1,35,710</strong></td><td><strong>Adjusted balance</strong></td><td><strong>1,35,710</strong></td></tr>
            </tbody>
          </table>
          <p>The books balance before the fix was 85,000 + 1,87,500 + 12,600 − 1,40,830 − 8,260 = ₹1,36,010. Both sides now show ₹1,35,710, so the bank is reconciled. Record the ₹300 bank charges in the books.</p>
        </div>
        <div class="lc-card">
          <h3>GST summary, P&amp;L and owner report</h3>
          <p><strong>GST summary.</strong> Output GST is the GST on your sales. Input tax credit (ITC) is GST on business purchases that you may be able to set off.</p>
          <pre><code>Output GST on sales                           10,000
        Less ITC: Trafford Prints 4,000 + Manchester Packaging 1,260
                  + BlueLine Couriers 630             (5,890)
        Estimated net GST for August                   4,110</code></pre>
          <p>Before anyone files the returns, check that your sales invoices match what goes into GSTR-1. Also check that each purchase invoice appears in your GSTR-2B statement on the GST portal. ITC has conditions. A chartered accountant should confirm the final figures and due dates.</p>
          <p><strong>Profit and loss for August</strong> (no GST in income or costs):</p>
          <table class="lc-table">
            <thead><tr><th>Line</th><th>₹</th></tr></thead>
            <tbody>
              <tr><td>Sales</td><td>2,00,000</td></tr>
              <tr><td>Cost of goods sold: 1,20,000 + 80,000 − 1,25,000</td><td>(75,000)</td></tr>
              <tr><td><strong>Gross profit</strong> (62.5%)</td><td><strong>1,25,000</strong></td></tr>
              <tr><td>Rent 30,000 + salaries 36,000 + electricity 4,200 + packaging 7,000 + courier 3,500 + bank charges 300</td><td>(81,000)</td></tr>
              <tr><td><strong>Net profit</strong></td><td><strong>44,000</strong></td></tr>
            </tbody>
          </table>
          <p><strong>Owner report (short version).</strong> July had sales of ₹1,80,000 and net profit of ₹38,000. So August sales rose 11.1% and profit rose 15.8%. Bank balance after reconciliation is ₹1,35,710. Customers owe ₹9,900, and ₹12,600 of card money arrives on 1 September. The shop owes Trafford Prints ₹24,000 and about ₹4,110 of GST, subject to checks. Ask the owner for the reasons behind the changes before you add any.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Walk through the close</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">Here is the made-up August bank statement for Rangrez Crafts. Suggest an account for each line in a table.</li>
              <li data-kind="answer" data-label="AI table">Rent: Rent expense. Trafford Prints: Payables. UPI: Sales receipts. GST payment for July: Tax expense. Courier: Courier expense ₹4,130.</li>
              <li data-kind="warn" data-label="Two mistakes">The ₹6,500 GST payment clears GST payable, so it is not an expense. The courier line must split into ₹3,500 expense and ₹630 input GST.</li>
              <li data-kind="tool" data-label="Spreadsheet">You total the categorised lines with =SUM() and compare them with the statement.</li>
              <li data-kind="result" data-label="Result">Money in ₹1,87,500 and money out ₹1,41,130. Both match the bank statement, so no line is missing.</li>
              <li data-kind="answer" data-label="AI reconciliation">Bank ₹1,31,370 + card sales ₹12,600 − cheque ₹8,260 = ₹1,35,710. Books ₹1,36,010 − bank charges ₹300 = ₹1,35,710.</li>
              <li data-kind="check" data-label="GST check">You check that all three purchase invoices appear in GSTR-2B before counting ₹5,890 of ITC. The net estimate is ₹4,110.</li>
              <li data-kind="check" data-label="Final review">You confirm net profit of ₹44,000, ask the owner for the reasons, and send the GST summary to the chartered accountant.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI the whole sample month and ask it to do the close with you. Then check its numbers against this lesson.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a bookkeeping assistant. Help me close [August 2026] for [Rangrez Crafts, a handicrafts shop in Manchester]. All data is made up. Amounts in ₹. Show every sum.

        Bank statement, opening balance 85,000:
        In: UPI 42,000; 51,000; 46,500; 48,000
        Out: rent 30,000; Trafford Prints 60,000; salaries 36,000; electricity 4,200; GST for July 6,500; courier 4,130; bank charges 300
        Books also show: card sales 12,600 on 31 Aug (bank credits it 1 Sep); cheque 8,260 to Manchester Packaging, not cleared. Bank charges are not in the books yet.
        Invoices: sales 2,00,000 + GST 10,000. Stock from Trafford Prints 80,000 + GST 4,000. Packaging 7,000 + GST 1,260. Courier 3,500 + GST 630. Rent, salaries, electricity: no GST.
        Stock: 1,20,000 on 1 Aug, 1,25,000 on 31 Aug.

        Tasks:
        1. Categorise each bank line.
        2. Bank reconciliation.
        3. GST summary: output GST, input tax credit, net. List checks before filing.
        4. Profit and loss (no GST in income or costs).
        5. A short owner report with [needs check] where a reason is unknown.
        Use tables.</pre>
            <ul class="ai-try-checks">
              <li>Both sides of the reconciliation show ₹1,35,710</li>
              <li>Net GST is ₹4,110, and the July GST payment is not an expense</li>
              <li>Net profit is ₹44,000 on sales of ₹2,00,000</li>
              <li>It tells you to check GSTR-2B and ask a chartered accountant before filing</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A month-end close is a chain of small checks. Every line is used, the bank reconciles, GST is kept out of profit, and the owner report uses confirmed facts. AI speeds up each step. You check every number and a professional reviews anything that is filed.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

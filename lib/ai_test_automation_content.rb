module AiTestAutomationContent
  # Units (sidebar dividers): 1–4 Automation Basics · 5–9 Writing Automated Tests · 10–14 Running and Maintaining Tests · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">What Test Automation Is</h1>
        </div>
        <p class="lc-lead">Test automation means a computer runs your checks for you, again and again, in the same way. In this lesson you will learn what an automated test is, what it gives you and what it costs. You will learn the test pyramid and what you should not automate. Through this course you will follow ShopNest, a made-up online grocery app in London. QA lead Sam Carter, tester Aisha Khan and developer Leo Martin are starting to automate login and basket tests.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="The test pyramid. The wide bottom layer is unit tests: many tests, fast, written by developers. The middle layer is API and integration tests: some tests that check the API and data. The narrow top layer is UI and end-to-end tests: few tests, slower, but they see the whole app like a user. ShopNest's login and basket UI tests sit at the top, so that layer should stay small.">
            <defs><marker id="ta1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="230" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">The test pyramid</text>
              <text x="592" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">What each layer means</text>
              <polygon points="230,40 300,110 160,110" fill="#27274e" stroke="#ec4899"/>
              <text x="230" y="98" text-anchor="middle" font-weight="700">UI / E2E</text>
              <polygon points="160,118 300,118 355,190 105,190" fill="#27274e" stroke="#3b82f6"/>
              <text x="230" y="160" text-anchor="middle" font-weight="700">API / integration</text>
              <polygon points="100,198 360,198 415,270 45,270" fill="#27274e" stroke="#10b981"/>
              <text x="230" y="240" text-anchor="middle" font-weight="700">Unit tests</text>
              <rect x="440" y="50" width="305" height="50" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="456" y="71">Few tests: slower, but they see</text>
              <text x="456" y="89">the whole app like a user</text>
              <rect x="440" y="129" width="305" height="50" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="456" y="150">Some tests: check the API, the</text>
              <text x="456" y="168">data and how parts work together</text>
              <rect x="440" y="209" width="305" height="50" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="456" y="230">Many tests: very fast, usually</text>
              <text x="456" y="248">written by developers</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta1a)">
                <line x1="300" y1="75" x2="436" y2="75"/>
                <line x1="340" y1="154" x2="436" y2="154"/>
                <line x1="400" y1="234" x2="436" y2="234"/>
              </g>
              <text x="380" y="303" font-size="12" fill="#9b99b8" text-anchor="middle">ShopNest's login and basket UI tests sit at the top. Keep that layer small and useful.</text>
            </g>
          </svg>
          <figcaption>The test pyramid: many fast unit tests, some API tests and a small number of slow UI tests.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What an automated test is</h3>
          <p>A <strong>manual test</strong> is a check that a person does by hand. Aisha opens the ShopNest staging site, types an email and password, clicks "Sign in" and looks at the page.</p>
          <p>An <strong>automated test</strong> is a small program that does the same steps. It then checks the result with an <strong>assertion</strong> (a line of code that says what must be true, such as "the heading says Welcome back"). If the assertion is true, the test passes. If not, it fails and shows why.</p>
          <p>Some words you will use in every lesson:</p>
          <ul class="lc-list">
            <li><strong>Regression testing</strong>: checking that old features still work after a change. This is the most common reason to automate.</li>
            <li><strong>Test suite</strong>: a group of automated tests that you run together.</li>
            <li><strong>CI</strong> (continuous integration): a system that builds the app and runs the tests every time a developer pushes a change.</li>
            <li><strong>Staging</strong>: a test copy of the app with made-up data. ShopNest's is <code>https://staging.shopnest.test</code>. You never run tests against real customers.</li>
          </ul>
          <p>Automation does not replace testers. A computer only checks what you told it to check. It will not notice a confusing screen or a strange new bug. People still do <strong>exploratory testing</strong> (testing by learning the product, trying ideas and following what you find).</p>
        </div>
        <div class="lc-card">
          <h3>Benefits and costs: the ShopNest numbers</h3>
          <p>Automation is an investment. You pay time now to save time later. Sam asks Aisha to do the maths before they start. All numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>ShopNest estimate</th></tr></thead>
            <tbody>
              <tr><td>Manual login and basket regression pack</td><td>40 test cases, about 3 minutes each = 2 hours per run</td></tr>
              <tr><td>Releases</td><td>2 per week, so 4 hours of manual regression per week</td></tr>
              <tr><td>Time to write and review automated tests</td><td>About 30 minutes each: 40 x 30 = 20 hours</td></tr>
              <tr><td>Upkeep (fixing tests after UI changes)</td><td>About 1 hour per week</td></tr>
              <tr><td>Time saved per week</td><td>4 hours - 1 hour upkeep = 3 hours</td></tr>
              <tr><td>Break-even point</td><td>20 / 3 = about 7 weeks</td></tr>
            </tbody>
          </table>
          <p>After about 7 weeks the suite has paid for itself. There are other benefits too:</p>
          <ul class="lc-list">
            <li>The suite can run on every change in CI, not only twice a week.</li>
            <li>Bugs are found minutes after a change, when they are cheap to fix. Testing earlier in the work like this is called <strong>shift-left</strong>.</li>
            <li>Aisha gets time back for exploratory testing.</li>
          </ul>
          <p>And the costs are real: tools, training, test data, CI time and upkeep. A badly written suite can cost more than it saves. Tests that fail at random, called <strong>flaky tests</strong>, waste hours and make people stop trusting the results.</p>
        </div>
        <div class="lc-card">
          <h3>The test pyramid and what not to automate</h3>
          <p>The <strong>test pyramid</strong> is a simple model for balancing a suite. Have many fast unit tests at the bottom. Have some API tests in the middle. Have a small number of slow UI tests at the top.</p>
          <table class="lc-table">
            <thead><tr><th>Layer</th><th>What it checks</th><th>ShopNest example</th></tr></thead>
            <tbody>
              <tr><td>Unit</td><td>One small piece of code on its own</td><td>The function that adds up basket prices</td></tr>
              <tr><td>API / integration</td><td>The app's services and data, without the screen</td><td>The basket API returns a subtotal of £7.15 for Basket A</td></tr>
              <tr><td>UI / end-to-end (E2E)</td><td>The whole app through the browser, like a user</td><td>A shopper signs in and adds bananas to the basket</td></tr>
            </tbody>
          </table>
          <p>Do <strong>not</strong> automate everything. These are usually better done by people:</p>
          <ul class="lc-list">
            <li>Features that change every week, such as ShopNest's seasonal banner.</li>
            <li>A new design that is still being decided.</li>
            <li>Checks that need human judgement: "Is this screen easy to understand?"</li>
            <li>Tests you will run only once or twice.</li>
          </ul>
          <p>Here is a weak and a better way to ask AI about this:</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Should we automate our tests?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am a tester at ShopNest, a made-up online grocery app in London.
        Our manual login and basket regression pack has 40 test cases.
        Each takes about 3 minutes. We release twice a week.
        Writing one automated test takes about 30 minutes. Upkeep is about
        1 hour a week. Work out the break-even point in weeks. Show the maths.
        Then list 3 costs we may have forgotten. Do not invent statistics.</code></pre>
          <p>Check the AI's maths yourself. You also decide what the numbers mean for your team.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: automate it or keep it manual?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each ShopNest check into the best place.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="auto" data-label="Good to automate"></div>
              <div data-sorter-target="bucket" data-bucket="manual" data-label="Keep manual"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="auto" data-why="It is high risk, it runs on every release and the page is stable.">A shopper can sign in with a valid account.</li>
              <li data-bucket="auto" data-why="The rule is clear and must be checked after every change to prices or delivery.">Delivery is free when the basket subtotal reaches £40.00.</li>
              <li data-bucket="manual" data-why="Judging how clear a screen is needs a person.">Is the new checkout page easy to understand?</li>
              <li data-bucket="manual" data-why="It changes every week, so a test would need fixing every week.">The seasonal banner on the home page.</li>
              <li data-bucket="auto" data-why="It repeats on every release and has a clear expected result.">Adding bananas to the basket updates the basket count.</li>
              <li data-bucket="manual" data-why="A one-off check does not repay the time to write a test.">A one-time check of an old promotion page before it is deleted.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to work out if automation pays off for your own regression pack. Then check its maths and its list of costs.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced test automation lead. Use simple English.

        My team: [ShopNest, a made-up online grocery app in London].
        Area: [login and basket].
        Manual regression pack: [40 test cases, about 3 minutes each].
        Release rhythm: [2 releases a week].
        Time to write and review one automated test: [about 30 minutes].
        Expected upkeep: [about 1 hour a week].

        Please:
        1. Work out the manual hours per week and the hours to build the suite.
        2. Work out the break-even point in weeks. Show each step of the maths.
        3. List 4 costs or risks that are easy to forget (for example flaky tests).
        4. List 3 kinds of checks in my area that should stay manual, and why.
        5. Say where these tests sit on the test pyramid.

        Show steps 1 and 2 as a small table. Do not invent statistics or studies.</pre>
            <ul class="ai-try-checks">
              <li>The maths is correct when you redo it yourself.</li>
              <li>Upkeep is taken away from the time saved.</li>
              <li>The manual list includes checks that need human judgement.</li>
              <li>No made-up statistics or "studies show" claims.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Automation is an investment, not magic. Automate stable, repeated, important checks. Keep the UI layer small. Leave judgement and fast-changing features to people.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Where AI Helps in Automation and Its Limits</h1>
        </div>
        <p class="lc-lead">AI assistants such as Claude can write a first draft of a test in seconds. They can explain code, read long error logs and suggest fixes. But AI can also use methods that do not exist and guess the wrong locators. It can write tests that pass without proving anything. In this lesson you will learn where AI saves time and where you must check its work. You will watch Aisha at ShopNest catch six problems in an AI-written login test.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A three-step flow: AI drafts or fixes a test, the tester checks and runs it, then the test joins the suite. Below, a green box lists what AI helps with: drafting tests from test cases, explaining code line by line, reading failure logs, suggesting test ideas and data, and suggesting fixes. A pink box lists what to watch for: made-up or outdated methods, guessed locators, fixed waits and weak checks, tests that pass but prove nothing, and secrets pasted into prompts.">
            <defs><marker id="ta2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="30" width="220" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="130" y="57">AI drafts or fixes a test</text>
                <rect x="270" y="30" width="220" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="380" y="57" font-weight="700">Tester checks and runs it</text>
                <rect x="520" y="30" width="220" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="630" y="57">Test joins the suite</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta2a)">
                <line x1="241" y1="52" x2="266" y2="52"/>
                <line x1="491" y1="52" x2="516" y2="52"/>
              </g>
              <rect x="20" y="100" width="350" height="180" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="36" y="126" font-weight="700" fill="#6ee7b7">AI helps with</text>
              <text x="36" y="154">Drafting tests from test cases</text>
              <text x="36" y="179">Explaining code line by line</text>
              <text x="36" y="204">Reading long failure logs</text>
              <text x="36" y="229">Suggesting test ideas and data</text>
              <text x="36" y="254">Suggesting fixes for failures</text>
              <rect x="390" y="100" width="350" height="180" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="406" y="126" font-weight="700" fill="#f9a8d4">Watch for</text>
              <text x="406" y="154">Made-up or outdated methods</text>
              <text x="406" y="179">Guessed locators</text>
              <text x="406" y="204">Fixed waits and weak checks</text>
              <text x="406" y="229">Tests that pass but prove nothing</text>
              <text x="406" y="254">Secrets pasted into prompts</text>
            </g>
          </svg>
          <figcaption>AI drafts and explains. A tester checks every test against the real app before it joins the suite.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI saves time</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>How AI helps</th><th>What you still do</th></tr></thead>
            <tbody>
              <tr><td>Write a test</td><td>Turns a manual test case into a first draft of test code</td><td>Check every locator and expected result against the real page</td></tr>
              <tr><td>Explain code</td><td>Explains each line in plain words</td><td>Ask about any line you do not understand</td></tr>
              <tr><td>Fix a failing test</td><td>Reads the error message and suggests causes</td><td>Decide if the test or the app is wrong</td></tr>
              <tr><td>Test ideas</td><td>Lists edge cases, such as an empty basket or 11 items in one line</td><td>Choose which ideas matter for your users</td></tr>
              <tr><td>Test data</td><td>Suggests made-up users and baskets</td><td>Check the maths and use only made-up data</td></tr>
            </tbody>
          </table>
          <p>Some tools now go further. For example, Playwright offers "test agents" that work with an AI assistant. They can plan tests, generate test files and try to repair failing tests. These features are new and change often, so check the tool's current docs. A person must still review every test they produce.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI goes wrong</h3>
          <p>Aisha asks a public AI chat: "Write a Playwright test for ShopNest login." Here is part of the answer:</p>
          <pre><code>test('login works', async ({ page }) =&gt; {
          await page.goto('https://staging.shopnest.test/login');
          await page.fill('#email', 'test.shopper1@shopnest.test');
          await page.fill('#password', 'Summer2026!');
          await page.click('.btn-primary');
          await page.waitForTimeout(3000);
          expect(await page.isVisible('text=Welcome')).toBe(true);
        });</code></pre>
          <p>It looks fine. It may even pass. But Aisha finds six problems:</p>
          <ol class="lc-list">
            <li><strong>Guessed locators.</strong> The AI never saw the page. ShopNest has no <code>#email</code> id. The real field has the label "Email address".</li>
            <li><strong>A password in the code.</strong> Secrets must come from a safe store, never from the test file or a prompt.</li>
            <li><strong>Old style methods.</strong> The Playwright docs mark <code>page.fill()</code> and <code>page.click()</code> as discouraged. They recommend locators instead.</li>
            <li><strong>A fixed wait.</strong> <code>waitForTimeout(3000)</code> always waits 3 seconds. It is slow, and still fails if the page takes 4 seconds.</li>
            <li><strong>A weak assertion.</strong> <code>isVisible()</code> checks once and does not wait. Any text with "Welcome" would pass.</li>
            <li><strong>A vague name.</strong> "login works" does not say which case is tested.</li>
          </ol>
          <p>AI can also invent methods that do not exist, such as <code>toBeLoggedIn()</code>. Or it can use methods from an old version. If you cannot find a method in the official docs, do not trust it.</p>
          <p>The biggest risk is <strong>false confidence</strong>. A green test that checks nothing useful is worse than no test. People think the feature is safe when it is not.</p>
        </div>
        <div class="lc-card">
          <h3>Safe rules for using AI on test code</h3>
          <ul class="lc-list">
            <li>Never paste passwords, API keys, tokens or real customer data into a public AI tool.</li>
            <li>Do not paste confidential company code into a tool your company has not approved. Check your company's AI policy.</li>
            <li>Give the AI facts: the real labels, roles and test IDs from the page, and your tool version.</li>
            <li>Run every AI-written test. Then break the feature on purpose, or change the expected value, and check that the test fails.</li>
            <li>Read every line. If you cannot explain a line, ask the AI or a developer before you keep it.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a Playwright login test.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write one Playwright Test in TypeScript for this case.
        Page: /login. Fields: label "Email address", label "Password".
        Button: role button, name "Sign in".
        After sign in: URL contains /shop and a heading "Welcome back, Test Shopper".
        User: test.shopper1@shopnest.test. Read the password from the
        environment variable SHOPNEST_TEST_PASSWORD. Use getByLabel and getByRole.
        Use web-first assertions. No fixed waits. Explain each line.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Aisha checks an AI-written test</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Aisha asks">"Write a Playwright test for ShopNest login."</li>
              <li data-kind="answer" data-label="AI replies">The AI gives a neat test with CSS ids, a typed password, a 3-second wait and an <code>isVisible()</code> check.</li>
              <li data-kind="tool" data-label="Aisha runs it">She runs the test against staging with <code>npx playwright test</code>.</li>
              <li data-kind="result" data-label="What she sees">It fails: no element matches <code>#email</code>. The AI guessed the page structure.</li>
              <li data-kind="warn" data-label="A bigger risk">The AI also put a password in the code. A real password would now be in a public chat. It could also end up in the code history.</li>
              <li data-kind="check" data-label="Aisha checks the page">She opens the login page and notes the real labels, roles and test IDs.</li>
              <li data-kind="user" data-label="Better prompt">She asks again with the real labels, the environment variable for the password, and "no fixed waits".</li>
              <li data-kind="check" data-label="Prove it can fail">The new test passes. She changes the expected heading to a wrong value. It fails, so the assertion really checks something.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a short test like a careful senior tester. Then check if it found the same problems Aisha found.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior test automation engineer who knows Playwright Test well. Use simple English.

        Review this AI-written test for [ShopNest, a made-up grocery app]. The real login page has a field labelled [Email address], a field labelled [Password] and a button named [Sign in]. After sign in, the page shows the heading [Welcome back, Test Shopper].

        test('login works', async ({ page }) =&gt; {
          await page.goto('https://staging.shopnest.test/login');
          await page.fill('#email', 'test.shopper1@shopnest.test');
          await page.fill('#password', 'Summer2026!');
          await page.click('.btn-primary');
          await page.waitForTimeout(3000);
          expect(await page.isVisible('text=Welcome')).toBe(true);
        });

        Please:
        1. List every problem in a table: line, problem, why it matters, fix.
        2. Rewrite the test with getByLabel, getByRole, web-first assertions and no fixed wait. Read the password from an environment variable.
        3. Say which parts I must check against the real page and the current Playwright docs.</pre>
            <ul class="ai-try-checks">
              <li>It flags the hard-coded password as a secret.</li>
              <li>It flags the fixed wait and the non-waiting <code>isVisible()</code> check.</li>
              <li>The rewrite uses only methods you can find in the Playwright docs.</li>
              <li>The rewrite checks the real heading, not just any "Welcome" text.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI writes test code fast, but it has not seen your app. Give it real facts, never give it secrets, and prove every test can fail before you trust it.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Choosing What to Automate</h1>
        </div>
        <p class="lc-lead">You cannot automate everything, and you should not try. Good teams pick the tests that give the most value for the least upkeep. In this lesson you will score test cases on risk, repetition and stability. You will build an automation candidate list (a ranked list of tests you plan to automate). You will follow Sam and Aisha as they choose the first ShopNest tests.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Nine ShopNest login and basket candidates go into a scoring step. Each is scored 1 to 3 for risk, repetition and stability, so the total is 3 to 9. Scores of 7 to 9 mean automate first: 6 candidates. Scores of 5 to 6 mean later: 1 candidate. Scores of 4 or less mean keep manual or exploratory: 2 candidates.">
            <defs><marker id="ta3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="120" width="170" height="64" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="105" y="147" text-anchor="middle" font-weight="700">9 candidates</text>
              <text x="105" y="168" text-anchor="middle" font-size="12" fill="#9b99b8">login and basket</text>
              <rect x="225" y="105" width="255" height="94" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="352" y="132" text-anchor="middle" font-weight="700">Score each 1 to 3</text>
              <text x="352" y="155" text-anchor="middle">Risk + Repetition + Stability</text>
              <text x="352" y="180" text-anchor="middle" font-size="12" fill="#9b99b8">total from 3 to 9</text>
              <rect x="520" y="35" width="220" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="536" y="60" font-weight="700">Automate first: 7 to 9</text>
              <text x="536" y="81" font-size="12" fill="#9b99b8">6 candidates</text>
              <rect x="520" y="122" width="220" height="60" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="536" y="147" font-weight="700">Later: 5 to 6</text>
              <text x="536" y="168" font-size="12" fill="#9b99b8">1 candidate</text>
              <rect x="520" y="209" width="220" height="60" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="536" y="234" font-weight="700">Manual: 4 or less</text>
              <text x="536" y="255" font-size="12" fill="#9b99b8">2 candidates</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta3a)">
                <line x1="191" y1="152" x2="221" y2="152"/>
                <line x1="481" y1="130" x2="516" y2="70"/>
                <line x1="481" y1="152" x2="516" y2="152"/>
                <line x1="481" y1="174" x2="516" y2="234"/>
              </g>
              <text x="380" y="296" text-anchor="middle" font-size="12" fill="#9b99b8">The score helps you rank. A person still makes the final call.</text>
            </g>
          </svg>
          <figcaption>Score each candidate on three factors, then sort the list into three groups.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three questions for every test case</h3>
          <p>A <strong>test case</strong> is one check with steps and an expected result. For each test case, ask three questions. Give each answer a score from 1 (low) to 3 (high).</p>
          <table class="lc-table">
            <thead><tr><th>Factor</th><th>Question</th><th>3 means</th><th>1 means</th></tr></thead>
            <tbody>
              <tr><td><strong>Risk</strong></td><td>How bad is it if this breaks?</td><td>Shoppers cannot sign in or pay</td><td>A small visual issue</td></tr>
              <tr><td><strong>Repetition</strong></td><td>How often do we run this check?</td><td>On every release</td><td>Once or twice a year</td></tr>
              <tr><td><strong>Stability</strong></td><td>Will the feature and page stay the same?</td><td>The design is final</td><td>It changes every week</td></tr>
            </tbody>
          </table>
          <p>Add the three scores. The total is between 3 and 9. ShopNest uses this rule: 7 or more means automate first. 5 or 6 means later. 4 or less means keep manual or explore by hand.</p>
          <p>This is a simple team method, not an official standard. Some teams also score cost to automate, or how hard the check is to do by hand. Pick a method your team agrees on and use it the same way every time.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the ShopNest candidate list</h3>
          <p>Aisha lists nine login and basket checks. Sam, Aisha and Leo score them together in a 20-minute meeting.</p>
          <table class="lc-table">
            <thead><tr><th>Candidate</th><th>Risk</th><th>Rep.</th><th>Stab.</th><th>Score</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>Sign in with a valid account</td><td>3</td><td>3</td><td>3</td><td>9</td><td>Automate first</td></tr>
              <tr><td>Wrong password shows an error</td><td>3</td><td>3</td><td>3</td><td>9</td><td>Automate first</td></tr>
              <tr><td>Add to basket updates the count badge</td><td>3</td><td>3</td><td>3</td><td>9</td><td>Automate first</td></tr>
              <tr><td>Change quantity updates the subtotal</td><td>3</td><td>3</td><td>2</td><td>8</td><td>Automate first</td></tr>
              <tr><td>Free delivery from £40.00</td><td>3</td><td>2</td><td>3</td><td>8</td><td>Automate first</td></tr>
              <tr><td>Account locks after 5 wrong passwords</td><td>3</td><td>1</td><td>3</td><td>7</td><td>Automate first</td></tr>
              <tr><td>Promo code TESTSAVE10 gives 10% off</td><td>2</td><td>2</td><td>2</td><td>6</td><td>Later</td></tr>
              <tr><td>New checkout page design</td><td>2</td><td>1</td><td>1</td><td>4</td><td>Manual / exploratory</td></tr>
              <tr><td>Weekly seasonal banner</td><td>1</td><td>1</td><td>1</td><td>3</td><td>Manual</td></tr>
            </tbody>
          </table>
          <p>The free delivery rule is a good automation target. It has a clear <strong>boundary</strong> (the exact value where the result changes). A basket of £39.75 must pay the £3.99 fee. A basket of exactly £40.00 must get free delivery. Testing just below and at the limit is called <strong>boundary value analysis</strong>.</p>
          <p>The checkout design scores low because it is still changing. A test written today would break next week. Aisha will explore it by hand until the design is final.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to build the list</h3>
          <p>AI can turn a list of test cases into a scored table quickly. It can also suggest checks you forgot. But it does not know your users, your past bugs or your release plans. Those facts change the scores.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Which tests should we automate?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Score these 9 ShopNest test cases for automation.
        Score Risk, Repetition and Stability from 1 (low) to 3 (high).
        Add the three scores. 7-9 = automate first, 5-6 = later, 4 or less = manual.
        Facts: we release twice a week. The checkout page design changes weekly.
        Login and basket bugs stop shoppers from buying.
        Show a table with one short reason per score. Mark any score you are
        unsure about so I can check it with the team.
        [paste the 9 test case titles here, no customer data]</code></pre>
          <p>Then check the AI's scores with your team. Leo may know that a page will be redesigned next month. Sam may know that the promo code feature caused two bugs last quarter. People who know the product make the final call.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a candidate list in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Aisha's steps for building the automation candidate list in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">List the manual login and basket test cases from the test management tool.</li>
              <li data-order="2">Agree the scoring rule with Sam: risk, repetition and stability, 1 to 3 each.</li>
              <li data-order="3">Ask AI to draft scores and reasons, using only test case titles and no customer data.</li>
              <li data-order="4">Review the scores with Sam and Leo, and change any that are wrong.</li>
              <li data-order="5">Sort the list into automate first, later and manual.</li>
              <li data-order="6">Start automating the top-scoring tests and review the list again each quarter.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to score your own test cases for automation. Then check its scores with someone who knows the product.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA lead helping a team choose what to automate first. Use simple English.

        Product: [ShopNest, a made-up online grocery app in London].
        Release rhythm: [2 releases a week].
        Known facts: [the checkout page design changes every week; login and basket bugs stop shoppers from buying].

        Test cases:
        [1. Sign in with a valid account
        2. Wrong password shows an error
        3. Add to basket updates the count badge
        4. Change quantity updates the subtotal
        5. Free delivery from £40.00
        6. Promo code gives 10% off
        7. New checkout page design looks right
        8. Weekly seasonal banner shows the right image]

        Please:
        1. Score each test case for Risk, Repetition and Stability, from 1 (low) to 3 (high), with a short reason.
        2. Add the scores. 7-9 = automate first, 5-6 = later, 4 or less = keep manual.
        3. Show one table sorted by score.
        4. Mark scores you are unsure about, and say what fact would change them.
        5. Suggest 2 missing test cases, including one boundary value test.</pre>
            <ul class="ai-try-checks">
              <li>Each total is the correct sum of its three scores.</li>
              <li>Fast-changing features score low on stability.</li>
              <li>The boundary test checks just below and at a limit.</li>
              <li>Unsure scores are marked for you to check with the team.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Automate the checks that are high risk, run often and stay stable. A simple scoring rule makes the choice clear and fair. AI can draft the scores, but the people who know the product decide.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Tools Overview</h1>
        </div>
        <p class="lc-lead">Many tools can run automated tests. Each one has strengths, and the "best" tool depends on your team. In this lesson you will learn what Playwright, Selenium and Cypress do, in plain words. You will learn about API and load testing tools too. Then you will see how ShopNest chose its tool. You will also ask AI to compare tools, and check its facts.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four tool cards side by side. Playwright: browsers Chromium, Firefox and WebKit; languages TypeScript, JavaScript, Python, Java and .NET; auto-waiting built in. Selenium: uses the W3C WebDriver standard; most browsers; Java, Python, C#, Ruby and JavaScript; Grid for many machines. Cypress: runs with the app in the browser; JavaScript and TypeScript; Chrome-family and Firefox, WebKit experimental. API and load tools: Postman collections, Playwright request, pytest with Python, k6 for load tests. Below: ShopNest chose Playwright Test with TypeScript.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="15" y="20" width="170" height="200" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="100" y="46" text-anchor="middle" font-size="14" font-weight="700" fill="#6ee7b7">Playwright</text>
              <text x="28" y="76">Browsers: Chromium,</text>
              <text x="28" y="96">Firefox, WebKit</text>
              <text x="28" y="126">TS, JS, Python,</text>
              <text x="28" y="146">Java, .NET</text>
              <text x="28" y="176">Auto-waiting</text>
              <text x="28" y="196">built in</text>
              <rect x="200" y="20" width="170" height="200" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="285" y="46" text-anchor="middle" font-size="14" font-weight="700" fill="#93c5fd">Selenium</text>
              <text x="213" y="76">Uses the W3C</text>
              <text x="213" y="96">WebDriver standard</text>
              <text x="213" y="126">Java, Python, C#,</text>
              <text x="213" y="146">Ruby, JavaScript</text>
              <text x="213" y="176">Grid runs tests on</text>
              <text x="213" y="196">many machines</text>
              <rect x="385" y="20" width="170" height="200" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="470" y="46" text-anchor="middle" font-size="14" font-weight="700" fill="#fcd34d">Cypress</text>
              <text x="398" y="76">Runs with the app</text>
              <text x="398" y="96">in the browser</text>
              <text x="398" y="126">JavaScript, TS</text>
              <text x="398" y="146">Chrome-family,</text>
              <text x="398" y="166">Firefox</text>
              <text x="398" y="196">WebKit: experimental</text>
              <rect x="570" y="20" width="170" height="200" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="655" y="46" text-anchor="middle" font-size="14" font-weight="700" fill="#f9a8d4">API and load</text>
              <text x="583" y="76">Postman:</text>
              <text x="583" y="96">request collections</text>
              <text x="583" y="126">Playwright request</text>
              <text x="583" y="146">pytest with Python</text>
              <text x="583" y="176">k6: load tests</text>
              <text x="583" y="196">(many users at once)</text>
              <rect x="150" y="240" width="460" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="267" text-anchor="middle" font-size="13" font-weight="700">ShopNest chose: Playwright Test with TypeScript</text>
            </g>
          </svg>
          <figcaption>Three common browser tools and the main API and load tools. Features change often, so check each tool's current docs.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Browser (UI) testing tools</h3>
          <p>A <strong>UI test tool</strong> (user interface test tool) opens a real browser, clicks and types like a user, and checks the page. The three most common open-source tools are below. This is a short, general summary. Features change, so check each tool's current docs.</p>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>In plain words</th><th>Languages</th><th>Good to know</th></tr></thead>
            <tbody>
              <tr><td><strong>Playwright</strong></td><td>A tool from Microsoft that drives Chromium, Firefox and WebKit (the engine behind Safari)</td><td>TypeScript, JavaScript, Python, Java, .NET</td><td>Waits for elements automatically. Its own test runner, Playwright Test, is for Node.js (JavaScript and TypeScript).</td></tr>
              <tr><td><strong>Selenium</strong></td><td>The oldest of the three. It uses WebDriver, a W3C web standard for controlling browsers.</td><td>Java, Python, C#, Ruby, JavaScript</td><td>Very large community. Selenium Grid runs tests on many machines. You choose a separate test runner, such as JUnit or pytest.</td></tr>
              <tr><td><strong>Cypress</strong></td><td>A JavaScript tool that runs alongside your app in the browser</td><td>JavaScript, TypeScript</td><td>Popular with front-end developers. Supports Chrome-family browsers and Firefox. WebKit support is experimental.</td></tr>
            </tbody>
          </table>
          <p>All three can do the job for most web apps. The team, the skills and the app matter more than the tool.</p>
        </div>
        <div class="lc-card">
          <h3>API and load testing tools</h3>
          <p>An <strong>API</strong> (application programming interface) is how parts of an app talk to each other without a screen. ShopNest's basket page calls a basket API to get the subtotal. API tests are faster and more stable than UI tests, so they sit in the middle of the test pyramid.</p>
          <ul class="lc-list">
            <li><strong>Postman</strong>: an app for sending API requests and saving them in collections. Collections can run as tests, including from the command line.</li>
            <li><strong>Playwright's request tools</strong>: let you call an API inside a Playwright test. This is handy when your UI tests are already in Playwright.</li>
            <li><strong>pytest</strong>: a popular Python test runner. Teams often use it with a Python library for API calls.</li>
            <li><strong>k6</strong>: a tool for <strong>load testing</strong> (checking how the app behaves when many users use it at once).</li>
          </ul>
          <p>You will also hear names of test management tools, such as TestRail, Zephyr, Xray and Azure DevOps. They store test cases and results. They do not run browser tests on their own, but many can show results from automated runs.</p>
        </div>
        <div class="lc-card">
          <h3>How to choose: the ShopNest decision</h3>
          <p>Sam writes down what matters for ShopNest before he looks at any tool:</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>ShopNest answer</th></tr></thead>
            <tbody>
              <tr><td>What language does the team know?</td><td>Leo and the developers use TypeScript.</td></tr>
              <tr><td>Which browsers do shoppers use?</td><td>Chrome, Safari and Firefox, on desktop and mobile.</td></tr>
              <tr><td>Do we need API tests too?</td><td>Yes, for the basket and delivery rules.</td></tr>
              <tr><td>Where will tests run?</td><td>In GitHub Actions on every pull request.</td></tr>
              <tr><td>Who will maintain them?</td><td>Aisha, with help from Leo.</td></tr>
            </tbody>
          </table>
          <p>Sam picks <strong>Playwright Test with TypeScript</strong>. It matches the developers' language. It covers the WebKit engine for Safari users. It can also send API requests in the same tests. Before deciding, Aisha and Leo try it for one week on two real tests. This short trial is called a <strong>proof of concept</strong>.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What is the best test automation tool?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Compare Playwright, Selenium and Cypress for our team.
        Team: 1 tester new to automation, developers who use TypeScript.
        App: a grocery web app. Shoppers use Chrome, Safari and Firefox.
        We also need API tests. Tests will run in GitHub Actions.
        Show a table with: languages, browsers, API testing, learning effort.
        Mark any fact that may be out of date, so I can check the official docs.</code></pre>
          <p>AI knowledge can be months old. Tools add browsers and features often. Check each fact on the tool's official website before you decide.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which kind of tool fits?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each testing need into the kind of tool that fits it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ui" data-label="Browser (UI) tool"></div>
              <div data-sorter-target="bucket" data-bucket="api" data-label="API tool"></div>
              <div data-sorter-target="bucket" data-bucket="load" data-label="Load tool"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ui" data-why="The check is about what the shopper sees on the screen, so it needs a browser.">Check that the basket count badge shows 4 after adding items on the page.</li>
              <li data-bucket="api" data-why="This checks data from the service directly, with no screen. An API test is faster and more stable.">Check that the basket service returns a subtotal of £7.15 for Basket A.</li>
              <li data-bucket="load" data-why="Many users at once is a load test question.">Check that sign in still works when 2,000 test users sign in within a few minutes.</li>
              <li data-bucket="ui" data-why="An error message on the page is user-visible behaviour.">Check that a wrong password shows "Email or password is incorrect." on the page.</li>
              <li data-bucket="api" data-why="The rule lives in the service. Test it below the screen, many times, quickly.">Check that the delivery service charges £3.99 under £40.00 and £0 at £40.00.</li>
              <li data-bucket="load" data-why="Response time under heavy use is measured with a load tool.">Check PayLite's payment page response time during a busy hour in New York.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to compare tools for your own team and app. Then check every fact it gives on the tools' official websites.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a neutral test automation consultant. Use simple English. Do not promote any tool.

        My team: [1 tester new to automation, 4 developers who use TypeScript].
        My app: [ShopNest, a made-up online grocery web app in London].
        Browsers our users use: [Chrome, Safari, Firefox; desktop and mobile].
        Other needs: [API tests for basket rules; tests run in GitHub Actions].
        Budget: [open-source tools preferred].

        Please:
        1. Compare Playwright, Selenium and Cypress in one table: languages, browsers, waiting behaviour, API testing, learning effort.
        2. Name one API tool and one load testing tool that could fit, and why.
        3. Recommend one UI tool for my team, with 3 reasons and 2 risks.
        4. Suggest a one-week proof of concept: which 2 tests to try and what to measure.
        5. Mark every fact that may be out of date. I will check it on the official docs.</pre>
            <ul class="ai-try-checks">
              <li>The recommendation matches your team's language and your users' browsers.</li>
              <li>It gives risks, not only benefits.</li>
              <li>Facts that change often are marked for you to check.</li>
              <li>You check the browser and language facts on each tool's website.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> There is no single best tool. Choose the one that fits your team's skills, your users' browsers and where your tests will run. Try it on real tests first, and check AI's tool facts against the official docs.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Your First Playwright Test</h1>
        </div>
        <p class="lc-lead">Now you will read your first real automated test. Every UI test has the same shape: go to a page, act like a user, then check the result. In this lesson you will learn the parts of a Playwright test and the common actions and assertions. You will also run a test and read its report. You will also learn how to read AI-written test code line by line. You will follow Aisha as she writes ShopNest's first login test.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="The three parts of a test. Step 1, go to the page, with page.goto. Step 2, act like a user, with fill and click. Step 3, check the result, with expect. Below: the test passes only if every expect passes. If one fails, the test stops and the report shows why.">
            <defs><marker id="ta5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="30" width="220" height="110" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="130" y="58" text-anchor="middle" font-weight="700">1. Go to the page</text>
              <text x="130" y="84" text-anchor="middle" font-size="12" fill="#9b99b8">open the login page</text>
              <text x="130" y="114" text-anchor="middle" font-size="12" font-family="monospace" fill="#93c5fd">page.goto('/login')</text>
              <rect x="270" y="30" width="220" height="110" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="58" text-anchor="middle" font-weight="700">2. Act like a user</text>
              <text x="380" y="84" text-anchor="middle" font-size="12" fill="#9b99b8">type and click</text>
              <text x="380" y="108" text-anchor="middle" font-size="12" font-family="monospace" fill="#fcd34d">.fill(...)</text>
              <text x="380" y="126" text-anchor="middle" font-size="12" font-family="monospace" fill="#fcd34d">.click()</text>
              <rect x="520" y="30" width="220" height="110" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="630" y="58" text-anchor="middle" font-weight="700">3. Check the result</text>
              <text x="630" y="84" text-anchor="middle" font-size="12" fill="#9b99b8">URL and heading are right</text>
              <text x="630" y="114" text-anchor="middle" font-size="12" font-family="monospace" fill="#6ee7b7">expect(...)</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta5a)">
                <line x1="241" y1="85" x2="266" y2="85"/>
                <line x1="491" y1="85" x2="516" y2="85"/>
                <line x1="630" y1="141" x2="630" y2="171"/>
              </g>
              <rect x="420" y="175" width="320" height="70" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="580" y="203" text-anchor="middle" font-weight="700">Pass: every expect passes</text>
              <text x="580" y="227" text-anchor="middle" font-size="12" fill="#9b99b8">Fail: the test stops, the report says why</text>
              <text x="20" y="200" font-size="12" fill="#9b99b8">Testers often call these three parts</text>
              <text x="20" y="220" font-size="12" fill="#9b99b8">Arrange, Act and Assert.</text>
            </g>
          </svg>
          <figcaption>Every UI test follows the same shape: go to the page, act like a user, check the result.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Setting up and running Playwright</h3>
          <p>Leo sets up Playwright in the ShopNest project. You need Node.js on your computer. Check the Playwright docs for the supported Node.js versions. He runs one command:</p>
          <pre><code>npm init playwright@latest</code></pre>
          <p>It asks a few questions. Then it adds these files to the project:</p>
          <ul class="lc-list">
            <li><code>playwright.config.ts</code>: the settings, such as which browsers to use and the site's base URL (<code>https://staging.shopnest.test</code>).</li>
            <li><code>tests/</code>: the folder for test files. Test files end in <code>.spec.ts</code>.</li>
            <li><code>package.json</code>: the list of tools the project uses.</li>
          </ul>
          <p>Three commands you will use all the time:</p>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>npx playwright test</code></td><td>Runs all tests. By default it runs without showing the browser window.</td></tr>
              <tr><td><code>npx playwright show-report</code></td><td>Opens the HTML report: which tests passed or failed, and why.</td></tr>
              <tr><td><code>npx playwright test --ui</code></td><td>Opens UI mode, where you can watch each step and run tests one by one.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The first ShopNest test, line by line</h3>
          <p>Aisha writes the first test in <code>tests/login.spec.ts</code>. She uses the real labels from the ShopNest login page. The test user is made up and only exists on staging.</p>
          <pre><code>import { test, expect } from '@playwright/test';

        test('shopper can sign in with a valid account', async ({ page }) =&gt; {
          await page.goto('/login');
          await page.getByLabel('Email address').fill('test.shopper1@shopnest.test');
          await page.getByLabel('Password').fill(process.env.SHOPNEST_TEST_PASSWORD!);
          await page.getByRole('button', { name: 'Sign in' }).click();
          await expect(page).toHaveURL(/\/shop/);
          await expect(page.getByRole('heading', { name: 'Welcome back, Test Shopper' })).toBeVisible();
        });</code></pre>
          <table class="lc-table">
            <thead><tr><th>Line</th><th>What it means</th></tr></thead>
            <tbody>
              <tr><td><code>import { test, expect }</code></td><td>Loads the two main tools: <code>test</code> to define a test, <code>expect</code> to check results.</td></tr>
              <tr><td><code>test('shopper can sign in…', …)</code></td><td>The test name. It says exactly what is checked. It shows in the report.</td></tr>
              <tr><td><code>async ({ page })</code></td><td>Playwright gives each test a fresh <code>page</code> (a new browser tab with no saved cookies). Tests do not share state.</td></tr>
              <tr><td><code>await</code></td><td>"Wait until this step is done before the next one." Nearly every Playwright line needs it.</td></tr>
              <tr><td><code>page.goto('/login')</code></td><td>Opens the login page. The base URL in the config is added to the front.</td></tr>
              <tr><td><code>getByLabel(…).fill(…)</code></td><td>Finds the field by its visible label and types into it.</td></tr>
              <tr><td><code>process.env.SHOPNEST_TEST_PASSWORD!</code></td><td>Reads the password from an environment variable, so it is never written in the code. The <code>!</code> tells TypeScript the value will be there.</td></tr>
              <tr><td><code>getByRole('button', { name: 'Sign in' }).click()</code></td><td>Finds the button the way a screen reader would, by role and name, and clicks it. By default the name match ignores case and also matches part of a name. Add <code>exact: true</code> for an exact match.</td></tr>
              <tr><td><code>expect(page).toHaveURL(/\/shop/)</code></td><td>Checks that the address now contains <code>/shop</code>.</td></tr>
              <tr><td><code>expect(…heading…).toBeVisible()</code></td><td>Checks that the exact welcome heading is on the screen.</td></tr>
            </tbody>
          </table>
          <p>The two <code>expect</code> lines are <strong>web-first assertions</strong>. They keep checking until the condition is true or a timeout is reached. The default is 5 seconds. So there is no need for fixed waits.</p>
        </div>
        <div class="lc-card">
          <h3>Common actions and assertions</h3>
          <table class="lc-table">
            <thead><tr><th>Actions (do something)</th><th>Assertions (check something)</th></tr></thead>
            <tbody>
              <tr><td><code>click()</code>: click an element</td><td><code>toBeVisible()</code>: the element is on screen</td></tr>
              <tr><td><code>fill('text')</code>: type into a field</td><td><code>toHaveText('4')</code>: the element's text matches</td></tr>
              <tr><td><code>check()</code>: tick a checkbox</td><td><code>toContainText('£7.15')</code>: the text includes this</td></tr>
              <tr><td><code>selectOption('2')</code>: choose from a list</td><td><code>toHaveValue('2')</code>: a field holds this value</td></tr>
              <tr><td><code>press('Enter')</code>: press a key</td><td><code>toHaveURL(…)</code>: the page address matches</td></tr>
              <tr><td><code>hover()</code>: move the mouse over</td><td><code>toHaveCount(3)</code>: this many elements match</td></tr>
            </tbody>
          </table>
          <p>When you read AI-written test code, check these five things:</p>
          <ol class="lc-list">
            <li>Every method exists in the current Playwright docs.</li>
            <li>Locators use real roles, labels or test IDs from the page.</li>
            <li>There is at least one assertion, and it checks the real expected result from the test case.</li>
            <li>No fixed waits such as <code>waitForTimeout</code>.</li>
            <li>No passwords, tokens or real customer data in the code.</li>
          </ol>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Explain this code.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am a manual tester learning Playwright Test. Explain this test line by line
        in simple English. For each line, say if it is an action or an assertion.
        Then tell me what the test does NOT check, and one way it could pass
        even if the feature is broken.
        [paste the test, with no passwords or real customer data]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Aisha runs her first test</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Aisha runs the test">She sets the password variable on her laptop and runs <code>npx playwright test</code>.</li>
              <li data-kind="result" data-label="First result">One test fails: the welcome heading is not found within 5 seconds.</li>
              <li data-kind="tool" data-label="She opens the report">She runs <code>npx playwright show-report</code> and opens the failed test.</li>
              <li data-kind="result" data-label="The report shows">The screenshot shows the heading "Hello again, Test Shopper". Her test expects "Welcome back, Test Shopper".</li>
              <li data-kind="thought" data-label="Test or app?">Is the app wrong, or the test? She checks the acceptance criteria in the user story. They say "Welcome back".</li>
              <li data-kind="check" data-label="She asks the team">Leo confirms a text change went in by mistake. Aisha logs a small bug. The test stays as it is.</li>
              <li data-kind="warn" data-label="A trap to avoid">Never "fix" a failing test to match the app without checking the requirement. That hides real bugs.</li>
              <li data-kind="result" data-label="After the fix">Leo puts back the agreed text. The test passes. Aisha changes one expected value on purpose, and it fails as it should.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn one of your manual test cases into a first Playwright test. Then check it with the five-point list above.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient Playwright Test teacher. I am a manual tester. Use simple English.

        Turn this manual test case into one Playwright Test in TypeScript.

        Test case: [Wrong password shows an error]
        App: [ShopNest staging, a made-up grocery app. The base URL is set in the config.]
        Steps: [1. Go to /login. 2. Enter test.shopper1@shopnest.test in the field labelled "Email address". 3. Enter a wrong password in the field labelled "Password". 4. Click the button named "Sign in".]
        Expected result: [An alert says "Email or password is incorrect." The URL still contains /login.]

        Rules:
        - Use getByLabel and getByRole. Use only methods from the current Playwright docs.
        - Use web-first assertions with await expect. No fixed waits.
        - Use a clear test name that says what is checked.
        - Never write a real password. Use an obviously fake wrong one.

        Then:
        1. Explain each line in one short sentence.
        2. Say what the test does not check.
        3. Tell me how to prove the test can fail.</pre>
            <ul class="ai-try-checks">
              <li>It checks both the error text and that the URL still contains /login.</li>
              <li>The assertions use <code>await expect(...)</code>, not fixed waits.</li>
              <li>Locators use the real labels and button name you gave.</li>
              <li>No real password appears anywhere.</li>
              <li>Every method can be found in the Playwright docs.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good test reads like a short story: go to the page, act like a user, check the real result. If you can explain every line, and you have seen the test fail, you can trust it.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Good Locators</h1>
        </div>
        <p class="lc-lead">A locator tells Playwright which element to use on the page: a field, a button or a price. Bad locators are the most common reason UI tests break. In this lesson you will learn the strong locator types: roles, labels, text and test IDs. You will learn why CSS paths and XPath break so often. You will also learn how to stop AI from guessing locators. You will follow Aisha as she fixes the locators in ShopNest's login and basket tests.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A locator ladder with three steps. Step 1, best: user-facing locators such as getByRole, getByLabel and getByText. Step 2: test IDs agreed with developers, such as getByTestId basket-count. Step 3, last resort: CSS or XPath, which break when the page layout changes. On the right, a list of fragile selectors to avoid.">
            <defs><marker id="ta6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="420" height="72" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="40" y="47" font-weight="700">1. User-facing locators (best)</text>
              <text x="40" y="74" font-size="12" font-family="monospace" fill="#6ee7b7">getByRole, getByLabel, getByText</text>
              <rect x="20" y="122" width="420" height="72" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="40" y="149" font-weight="700">2. Test IDs agreed with developers</text>
              <text x="40" y="176" font-size="12" font-family="monospace" fill="#93c5fd">getByTestId('basket-count')</text>
              <rect x="20" y="224" width="420" height="72" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="40" y="251" font-weight="700">3. CSS or XPath (last resort)</text>
              <text x="40" y="278" font-size="12" fill="#9b99b8">breaks when the page layout changes</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta6a)">
                <line x1="120" y1="93" x2="120" y2="118"/>
                <line x1="120" y1="195" x2="120" y2="220"/>
              </g>
              <text x="140" y="111" font-size="12" fill="#9b99b8">not possible? go down one step</text>
              <text x="140" y="213" font-size="12" fill="#9b99b8">still not possible? go down</text>
              <rect x="470" y="20" width="270" height="276" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="605" y="47" text-anchor="middle" font-weight="700">Fragile selectors to avoid</text>
              <g font-size="12" font-family="monospace" fill="#f9a8d4">
                <text x="488" y="86">#root &gt; div &gt; div:nth-child(2)</text>
                <text x="488" y="124">.btn-primary</text>
                <text x="488" y="162">//div[3]/div/button</text>
                <text x="488" y="200">.product-card:nth-child(1)</text>
              </g>
              <text x="488" y="244" font-size="12" fill="#9b99b8">They depend on layout and class</text>
              <text x="488" y="264" font-size="12" fill="#9b99b8">names, not on what users see.</text>
            </g>
          </svg>
          <figcaption>Start at the top of the ladder. Only go down a step when the step above cannot find the element.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why locators break</h3>
          <p>A <strong>selector</strong> is a rule that finds an element in the page code. A fragile selector depends on things users never see: the order of boxes, class names or ids. Developers change these all the time.</p>
          <p>Last week Leo renamed a CSS class on ShopNest from <code>btn-primary</code> to <code>button-main</code>. The page looked exactly the same. But every test that used <code>.btn-primary</code> failed. The tests that used the button's role and name kept passing.</p>
          <table class="lc-table">
            <thead><tr><th>Fragile selector</th><th>Why it breaks</th><th>Strong locator</th></tr></thead>
            <tbody>
              <tr><td><code>#root &gt; div &gt; div:nth-child(2) &gt; button</code></td><td>Any new box on the page changes the path.</td><td><code>getByRole('button', { name: 'Sign in' })</code></td></tr>
              <tr><td><code>.btn-primary</code></td><td>Class names are for styling. They change often.</td><td><code>getByRole('button', { name: 'Checkout' })</code></td></tr>
              <tr><td><code>//div[3]/div/button</code></td><td>XPath by position breaks when the layout moves.</td><td><code>getByRole('button', { name: 'Apply' })</code></td></tr>
              <tr><td><code>.product-card:nth-child(1) button</code></td><td>The first card changes when the product order changes.</td><td><code>getByTestId('product-card').filter({ hasText: 'Bananas (6 pack)' })</code></td></tr>
            </tbody>
          </table>
          <p>The Playwright docs say CSS and XPath are not recommended, because the page structure often changes. Use them only when nothing else works.</p>
        </div>
        <div class="lc-card">
          <h3>The strong locator types, with ShopNest examples</h3>
          <p>Playwright suggests locators that match what a user sees. A <strong>role</strong> is what an element is to a screen reader (software that reads the page aloud): a button, a link, a heading, a text box. The <strong>accessible name</strong> is the text a screen reader says for it.</p>
          <table class="lc-table">
            <thead><tr><th>Element</th><th>Locator</th><th>Why this one</th></tr></thead>
            <tbody>
              <tr><td>Sign in button</td><td><code>getByRole('button', { name: 'Sign in' })</code></td><td>Role and name, the way users and screen readers find it.</td></tr>
              <tr><td>Email field</td><td><code>getByLabel('Email address')</code></td><td>Form fields are best found by their visible label.</td></tr>
              <tr><td>Login error</td><td><code>getByRole('alert')</code></td><td>The error has the role alert.</td></tr>
              <tr><td>Basket heading</td><td><code>getByRole('heading', { name: 'Your basket' })</code></td><td>Headings show which page you are on.</td></tr>
              <tr><td>Basket count badge</td><td><code>getByTestId('basket-count')</code></td><td>A bare number has no label, so a test ID is clearer.</td></tr>
              <tr><td>One product card</td><td><code>getByTestId('product-card').filter({ hasText: 'Bananas (6 pack)' })</code></td><td>Many cards match, so <code>filter()</code> picks the one with this text.</td></tr>
            </tbody>
          </table>
          <p>A <strong>test ID</strong> is an attribute such as <code>data-testid="basket-count"</code>. Developers add it only for tests. Leo and Aisha agreed a rule: nobody renames a test ID without telling QA. Playwright reads <code>data-testid</code> by default. You can change the attribute name in the config with <code>testIdAttribute</code>.</p>
          <p><strong>Strict mode.</strong> Playwright refuses to click or fill when a locator matches more than one element. It stops with a "strict mode violation" error. This protects you from clicking the wrong thing. On the fruit page, every card has an "Add to basket" button. So Aisha narrows it down first:</p>
          <pre><code>const bananas = page.getByTestId('product-card').filter({ hasText: 'Bananas (6 pack)' });
        await bananas.getByRole('button', { name: 'Add to basket' }).click();
        await expect(page.getByTestId('basket-count')).toHaveText('1');</code></pre>
          <p>Two more traps:</p>
          <ul class="lc-list">
            <li><code>getByText('Basket')</code> matches the header link "Basket" and the heading "Your basket". Text matching ignores case and matches part of the text by default. Use the role and name of the exact element instead.</li>
            <li>Name matching is also partial. <code>getByRole('button', { name: 'Sign in' })</code> would also match a new "Sign in with email link" button. Add <code>exact: true</code> when that can happen.</li>
          </ul>
          <p>Avoid <code>first()</code>, <code>last()</code> and <code>nth()</code> when you can. The docs warn that they may pick a different element after the page changes.</p>
        </div>
        <div class="lc-card">
          <h3>Stop AI from guessing locators</h3>
          <p>An AI assistant has not seen your page. If you ask for a test without page facts, it invents ids and classes such as <code>#email</code> or <code>.btn-primary</code>. Give it the real roles, labels and test IDs instead.</p>
          <p>Two Playwright tools help you collect them. Check the Playwright docs for current details.</p>
          <ul class="lc-list">
            <li><strong>Codegen</strong>: run <code>npx playwright codegen https://staging.shopnest.test/login</code>. Use "Pick locator" and hover over an element. It shows the locator Playwright would choose.</li>
            <li><strong>The VS Code extension</strong> also has a "Pick locator" button.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write locators for the ShopNest basket page.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write Playwright locators for these elements on the ShopNest basket page.
        Facts from the page (from Pick locator):
        - heading "Your basket"
        - each line: data-testid="basket-line", a field labelled "Quantity",
          a button named "Remove"
        - test IDs: basket-subtotal, basket-delivery, basket-total
        - button "Checkout"
        Rules: use getByRole and getByLabel first, getByTestId only when there is
        no good role or label. No CSS classes, ids or XPath. Use filter() to pick
        one basket line by product name. Tell me if any element has no
        accessible name, so I can ask the developer to add one.</code></pre>
          <p>A good side effect: if <code>getByRole</code> cannot find a button, the page may have an accessibility problem. For example, a box made to look like a button that a screen reader cannot use. Report it to the developer. It may break WCAG 2.2 (the Web Content Accessibility Guidelines).</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Strong or fragile?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each locator from ShopNest's tests. Is it strong, or will it break easily?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="strong" data-label="Strong locator"></div>
              <div data-sorter-target="bucket" data-bucket="fragile" data-label="Fragile selector"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="strong" data-why="It uses the role and name that users and screen readers see.">getByRole('button', { name: 'Sign in' })</li>
              <li data-bucket="strong" data-why="Form fields are best found by their visible label.">getByLabel('Email address')</li>
              <li data-bucket="strong" data-why="The test ID is agreed with the developers and does not change with the layout.">getByTestId('basket-total')</li>
              <li data-bucket="fragile" data-why="Class names are for styling. This one was renamed last week and broke tests.">page.locator('.btn-primary')</li>
              <li data-bucket="fragile" data-why="XPath by position breaks when any box is added or moved.">page.locator('//div[3]/div/button')</li>
              <li data-bucket="fragile" data-why="nth(0) picks the first match. If the product order changes, it clicks a different product.">getByRole('button', { name: 'Add to basket' }).nth(0)</li>
              <li data-bucket="fragile" data-why="A long CSS path depends on the exact page structure.">page.locator('#root &gt; div &gt; div:nth-child(2) &gt; button')</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a set of locators like a senior tester and suggest stronger ones. Use your own page facts, or keep the ShopNest example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior Playwright Test reviewer. Use simple English.

        Page: [the ShopNest basket page, a made-up grocery app]
        Real facts from the page:
        [- heading "Your basket"
        - each basket line has data-testid="basket-line", a field labelled "Quantity" and a button named "Remove"
        - test IDs: basket-subtotal, basket-delivery, basket-total
        - a button named "Checkout"]

        Locators from an AI-written test:
        [1. page.locator('.basket-row:nth-child(2) input')
        2. page.locator('#checkout-btn')
        3. page.getByText('Basket')
        4. page.locator('//span[@class="total"]')
        5. page.getByRole('button', { name: 'Remove' }).first()]

        For each locator, give a table row with:
        - rating: strong, OK or fragile
        - why, in one sentence
        - a better locator using getByRole, getByLabel or getByTestId (use filter() to pick one line by product name)

        Then list questions I should ask the developer, such as missing labels or test IDs.
        Only use methods from the current Playwright docs.</pre>
            <ul class="ai-try-checks">
              <li>It rates the CSS paths, the id and the XPath as fragile.</li>
              <li>It explains that getByText('Basket') can match more than one element.</li>
              <li>The better locators use only the facts you gave, not invented ids.</li>
              <li>It picks one basket line with filter(), not first() or nth().</li>
              <li>You check each new locator with Pick locator on the real page.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Find elements the way a user does: by role, label and visible text. Use test IDs when there is nothing better. A test should break when the feature breaks, not when a developer renames a class.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Waits and Timing</h1>
        </div>
        <p class="lc-lead">Web pages do not change at once. A click sends a request to the server, and the page updates a moment later. If a test checks too early, it fails even though the app works. In this lesson you will learn how Playwright waits for you. You will learn why fixed sleeps make tests slow and unreliable, and how to handle pages that really are slow. Timing mistakes are among the most common faults in AI-written test code.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A timeline from 0 to 5 seconds. On a slow CI run, the basket subtotal updates at 1.4 seconds. A fixed 1 second wait checks once at 1 second, too early, so the test fails. A web-first assertion keeps checking and passes at 1.4 seconds. It fails only if the text is still wrong after 5 seconds.">
            <defs><marker id="ta7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <line x1="302" y1="38" x2="302" y2="205" stroke="#22d3ee" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="302" y="28" text-anchor="middle" font-size="12" fill="#67e8f9">subtotal updates at 1.4 s</text>
              <text x="20" y="77" font-weight="700">Fixed 1 s wait</text>
              <rect x="140" y="62" width="116" height="22" rx="4" fill="#27274e" stroke="#f59e0b"/>
              <text x="198" y="78" text-anchor="middle" font-size="11" fill="#fcd34d">sleeping</text>
              <circle cx="256" cy="73" r="6" fill="#ec4899"/>
              <text x="320" y="78" font-size="12" fill="#f9a8d4">checks once at 1 s, too early: FAIL</text>
              <text x="20" y="147" font-weight="700">Web-first check</text>
              <g fill="#3b82f6">
                <circle cx="150" cy="142" r="4"/>
                <circle cx="180" cy="142" r="4"/>
                <circle cx="210" cy="142" r="4"/>
                <circle cx="240" cy="142" r="4"/>
                <circle cx="270" cy="142" r="4"/>
              </g>
              <circle cx="302" cy="142" r="7" fill="#10b981"/>
              <text x="320" y="147" font-size="12" fill="#6ee7b7">keeps checking, passes at 1.4 s</text>
              <text x="320" y="170" font-size="12" fill="#9b99b8">fails only if still wrong after 5 s</text>
              <line x1="140" y1="215" x2="722" y2="215" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ta7a)"/>
              <g font-size="12" fill="#9b99b8" text-anchor="middle">
                <text x="140" y="238">0 s</text>
                <text x="256" y="238">1 s</text>
                <text x="372" y="238">2 s</text>
                <text x="488" y="238">3 s</text>
                <text x="604" y="238">4 s</text>
                <text x="712" y="238">5 s</text>
              </g>
              <text x="20" y="238" font-size="12" fill="#9b99b8">time</text>
            </g>
          </svg>
          <figcaption>A fixed wait checks once and guesses the timing. A web-first assertion keeps checking until the page is right or the timeout ends.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How Playwright waits for you</h3>
          <p>Playwright has two kinds of built-in waiting. You get both for free when you write tests the recommended way.</p>
          <p><strong>1. Actions wait until the element is ready.</strong> This is called <strong>auto-waiting</strong>. Before an action, Playwright runs <strong>actionability checks</strong> (checks that the element can really be used).</p>
          <table class="lc-table">
            <thead><tr><th>Action</th><th>Playwright waits until the element is…</th></tr></thead>
            <tbody>
              <tr><td><code>click()</code></td><td>visible, stable (not moving), able to receive the click (nothing covers it) and enabled</td></tr>
              <tr><td><code>fill()</code></td><td>visible, enabled and editable (not read-only)</td></tr>
              <tr><td><code>check()</code></td><td>visible, stable, able to receive the click and enabled</td></tr>
            </tbody>
          </table>
          <p>So ShopNest's "Checkout" button needs no extra wait. It is disabled until the basket loads. The click waits until it is enabled.</p>
          <p><strong>2. Web-first assertions retry.</strong> <code>await expect(locator).toHaveText('£8.35')</code> keeps checking until the text matches. If it never matches, it fails after the expect timeout.</p>
          <table class="lc-table">
            <thead><tr><th>Timeout</th><th>Default</th><th>What it limits</th></tr></thead>
            <tbody>
              <tr><td>Test timeout</td><td>30 seconds</td><td>One whole test, including its actions</td></tr>
              <tr><td>Expect timeout</td><td>5 seconds</td><td>Each web-first assertion</td></tr>
              <tr><td>Action and navigation</td><td>No own limit</td><td>They stop when the test timeout ends</td></tr>
            </tbody>
          </table>
          <p>These are the defaults in the Playwright docs today. Check the current docs, and your own <code>playwright.config.ts</code>, because a team can change them.</p>
        </div>
        <div class="lc-card">
          <h3>Fixed sleeps and other timing traps</h3>
          <p>A <strong>fixed sleep</strong> pauses the test for a set time, whatever the page is doing. It has two problems. It always wastes time when the page is fast. And it still fails when the page is slower than the guess. A test that sometimes passes and sometimes fails, with no code change, is called <strong>flaky</strong>.</p>
          <p>Here is part of an AI-written test. It changes the bananas in Basket A from 2 to 3. The new subtotal should be 3 × £1.20 + £1.65 + £3.10 = £3.60 + £1.65 + £3.10 = £8.35.</p>
          <p><strong>Before (AI draft):</strong></p>
          <pre><code>const bananasLine = page.getByTestId('basket-line').filter({ hasText: 'Bananas (6 pack)' });
        await bananasLine.getByLabel('Quantity').fill('3');
        await page.waitForTimeout(2000);
        const subtotal = await page.getByTestId('basket-subtotal').textContent();
        expect(subtotal).toBe('£8.35');</code></pre>
          <p><strong>After (Aisha's fix):</strong></p>
          <pre><code>const bananasLine = page.getByTestId('basket-line').filter({ hasText: 'Bananas (6 pack)' });
        await bananasLine.getByLabel('Quantity').fill('3');
        await expect(page.getByTestId('basket-subtotal')).toHaveText('£8.35');</code></pre>
          <p>Aisha's version is shorter. It moves on as soon as the subtotal is right. On a slow run it still waits up to 5 seconds.</p>
          <table class="lc-table">
            <thead><tr><th>Trap</th><th>Why it is a problem</th><th>Use instead</th></tr></thead>
            <tbody>
              <tr><td><code>page.waitForTimeout(2000)</code></td><td>Always waits, and can still be too short. The docs mark it as discouraged.</td><td>A web-first assertion</td></tr>
              <tr><td><code>expect(await loc.isVisible()).toBe(true)</code></td><td>Checks once, with no waiting.</td><td><code>await expect(loc).toBeVisible()</code></td></tr>
              <tr><td><code>textContent()</code> then <code>toBe()</code></td><td>Reads the text once, maybe before it updates.</td><td><code>await expect(loc).toHaveText('…')</code></td></tr>
              <tr><td><code>waitForLoadState('networkidle')</code></td><td>The docs say not to use it for testing. Some pages are never "idle".</td><td>Assert on the element you need</td></tr>
              <tr><td><code>click({ force: true })</code> to stop a timeout</td><td>Skips the readiness checks and can hide a real bug.</td><td>Find out why the element is not ready</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Handling pages that really are slow</h3>
          <p>Sometimes one step is slow on purpose, for example a big search. Make the extra time small and local, and explain why in a comment.</p>
          <pre><code>// Staging loads the whole fruit aisle at once. Allow up to 10 seconds for this check only.
        await expect(page.getByText('Loading products…')).toBeHidden({ timeout: 10_000 });

        // This whole test is slow, so triple the test timeout.
        test.slow();</code></pre>
          <p>Sometimes you need the server's answer itself. Then wait for the network response. Start waiting <em>before</em> the action, or you may miss it:</p>
          <pre><code>const saved = page.waitForResponse(
          (response) =&gt; response.url().includes('/api/basket/items') &amp;&amp; response.request().method() === 'PATCH'
        );
        await bananasLine.getByLabel('Quantity').fill('3');
        const response = await saved;
        expect(response.ok()).toBeTruthy();</code></pre>
          <p>Do not raise every timeout to hide a slow app. If the basket page always takes 8 seconds, that is a performance problem for real shoppers. Report it as a bug.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>My test fails sometimes. Add some waits.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>This Playwright test fails about 1 run in 10 on CI, never on my laptop.
        Here is the test and the error from the report (no secrets): [paste].
        Do not add waitForTimeout, networkidle or force: true.
        Use auto-waiting and web-first assertions. If the test needs a network
        response, use waitForResponse started before the action.
        Explain the timing problem in simple English before you change the code.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: The Checkout test that timed out</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="result" data-label="CI result">The test "shopper can start checkout from the basket" fails on CI. The test timed out after 30 seconds. The log says Playwright was waiting for the Checkout button to be enabled.</li>
              <li data-kind="user" data-label="Aisha asks AI">"My Playwright test times out waiting for the Checkout button to be enabled. Here is the error log, with no secrets. How do I fix it?"</li>
              <li data-kind="answer" data-label="AI suggests">"Add await page.waitForTimeout(5000) before the click. Or click with { force: true } so Playwright does not wait."</li>
              <li data-kind="warn" data-label="Both ideas are bad">A fixed wait adds 5 seconds to every run. A force click skips the check that the button is ready. Neither one asks why the button stayed disabled.</li>
              <li data-kind="tool" data-label="Aisha opens the trace">She opens the trace from the retry in the CI report and looks at the network calls.</li>
              <li data-kind="result" data-label="The trace shows">The basket API returned an error (status 500) on that run, so the basket never loaded. No wait would ever have helped.</li>
              <li data-kind="thought" data-label="Timing or bug?">This is not a timing problem. The test did its job: it found a real failure.</li>
              <li data-kind="check" data-label="What she does">She keeps the test unchanged and logs a bug for Leo with the trace attached. Leo finds that the basket API fails when a basket holds a product that was removed from sale.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to remove the fixed waits from a test and explain each change. Paste your own test without secrets, or use the example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a Playwright Test expert who teaches beginners. Use simple English.

        This test for [ShopNest, a made-up grocery app] passes on my laptop but sometimes fails on CI:

        [await page.goto('/shop/fruit');
        await page.waitForTimeout(3000);
        const card = page.getByTestId('product-card').filter({ hasText: 'Bananas (6 pack)' });
        await card.getByRole('button', { name: 'Add to basket' }).click();
        await page.waitForTimeout(1000);
        expect(await page.getByTestId('basket-count').textContent()).toBe('1');]

        Facts: [the page shows "Loading products…" until the cards appear. The count badge updates after a call to the basket API.]

        Please:
        1. List each timing problem and why it can fail on a slower machine.
        2. Rewrite the test with no waitForTimeout, no networkidle and no force: true. Use auto-waiting and web-first assertions.
        3. Explain what Playwright now waits for, line by line.
        4. Say what to check in the trace if it still fails.</pre>
            <ul class="ai-try-checks">
              <li>Both waitForTimeout lines are gone.</li>
              <li>The final check uses await expect(...).toHaveText('1'), not textContent() and toBe().</li>
              <li>It explains that the click already waits for the button to be ready.</li>
              <li>It does not add force: true or networkidle.</li>
              <li>You run the new test several times, and once with a wrong expected value to see it fail.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Never guess how long the page needs. Wait for the thing you need to see, with auto-waiting actions and web-first assertions. When a test times out, find out why before you add time.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Assertions and Test Data</h1>
        </div>
        <p class="lc-lead">An assertion is the check that decides if a test passes. Test data is the users, products and baskets the test uses. Weak assertions let bugs pass. Messy test data makes tests fail for no reason. In this lesson you will learn to write exact expected results that come from the requirements. You will also learn to set up known test data before each test and clean it up after. You will follow Aisha as she writes ShopNest's free delivery tests.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="The four stages of a test. Stage 1, set up: sign in a test user and empty the basket. Stage 2, act: add items and open the basket. Stage 3, assert: check exact values such as 11.14 pounds. Stage 4, clean up: empty the basket again. Below: use made-up staging users, passwords from environment variables, and never share one basket between tests that run at the same time.">
            <defs><marker id="ta8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="30" width="155" height="110" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="97" y="58" text-anchor="middle" font-weight="700">1. Set up</text>
              <text x="97" y="84" text-anchor="middle" font-size="12" fill="#9b99b8">sign in test user</text>
              <text x="97" y="104" text-anchor="middle" font-size="12" fill="#9b99b8">empty the basket</text>
              <text x="97" y="126" text-anchor="middle" font-size="11" font-family="monospace" fill="#93c5fd">beforeEach</text>
              <rect x="205" y="30" width="155" height="110" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="282" y="58" text-anchor="middle" font-weight="700">2. Act</text>
              <text x="282" y="84" text-anchor="middle" font-size="12" fill="#9b99b8">add the items</text>
              <text x="282" y="104" text-anchor="middle" font-size="12" fill="#9b99b8">open the basket</text>
              <rect x="390" y="30" width="155" height="110" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="467" y="58" text-anchor="middle" font-weight="700">3. Assert</text>
              <text x="467" y="84" text-anchor="middle" font-size="12" fill="#9b99b8">exact values from</text>
              <text x="467" y="104" text-anchor="middle" font-size="12" fill="#9b99b8">the requirement</text>
              <text x="467" y="126" text-anchor="middle" font-size="11" font-family="monospace" fill="#6ee7b7">'£11.14'</text>
              <rect x="575" y="30" width="155" height="110" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="652" y="58" text-anchor="middle" font-weight="700">4. Clean up</text>
              <text x="652" y="84" text-anchor="middle" font-size="12" fill="#9b99b8">empty the basket</text>
              <text x="652" y="104" text-anchor="middle" font-size="12" fill="#9b99b8">again</text>
              <text x="652" y="126" text-anchor="middle" font-size="11" font-family="monospace" fill="#c4b5fd">afterEach</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta8a)">
                <line x1="176" y1="85" x2="201" y2="85"/>
                <line x1="361" y1="85" x2="386" y2="85"/>
                <line x1="546" y1="85" x2="571" y2="85"/>
              </g>
              <rect x="20" y="170" width="710" height="80" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="40" y="198" font-weight="700">Test data rules</text>
              <text x="40" y="222" font-size="12" fill="#9b99b8">Made-up staging users only. Passwords from environment variables.</text>
              <text x="40" y="240" font-size="12" fill="#9b99b8">Tests that run at the same time never share one basket.</text>
            </g>
          </svg>
          <figcaption>Every test starts from a known state, checks exact values and leaves nothing behind.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Write exact expected results</h3>
          <p>The <strong>expected result</strong> is what the requirement says should happen. It comes from the user story and its <strong>acceptance criteria</strong> (the conditions a feature must meet to be accepted). It never comes from what the app shows today. If you copy today's number from the screen, your test will happily confirm a bug.</p>
          <p>For Basket A, Aisha works out the total from the price list and the delivery rule: £2.40 + £1.65 + £3.10 = £7.15. That is under £40.00, so delivery is £3.99. The total is £11.14. She checks this sum with a spreadsheet, not only with AI.</p>
          <table class="lc-table">
            <thead><tr><th>Weak assertion</th><th>Problem</th><th>Strong assertion</th></tr></thead>
            <tbody>
              <tr><td><code>await expect(total).toBeVisible()</code></td><td>Passes with any total, even a wrong one.</td><td><code>await expect(total).toHaveText('£11.14')</code></td></tr>
              <tr><td><code>await expect(total).toContainText('£')</code></td><td>Any price passes.</td><td><code>await expect(total).toHaveText('£11.14')</code></td></tr>
              <tr><td><code>expect(page.getByTestId('basket-count'))</code></td><td>No matcher and no <code>await</code>, so it checks nothing at all.</td><td><code>await expect(page.getByTestId('basket-count')).toHaveText('4')</code></td></tr>
              <tr><td><code>await expect(total).toHaveText(/£\d+\.\d\d/)</code></td><td>Checks the format, not the amount.</td><td>Check the exact amount from the requirement.</td></tr>
            </tbody>
          </table>
          <p>Basket A has three values to check. Aisha uses <strong>soft assertions</strong> for the first two. A soft assertion records a failure but lets the test continue, so one run shows every wrong value. The last check is a normal assertion with a custom message for the report:</p>
          <pre><code>await expect.soft(page.getByTestId('basket-subtotal')).toHaveText('£7.15');
        await expect.soft(page.getByTestId('basket-delivery')).toHaveText('£3.99');
        await expect(page.getByTestId('basket-total'), 'Basket A total').toHaveText('£11.14');</code></pre>
          <p>Keep one behaviour per test. "Basket A totals are correct" is one behaviour, even with three checks. "Sign in, add items and apply a promo code" is three behaviours in one test, so a failure is hard to read.</p>
        </div>
        <div class="lc-card">
          <h3>Test data: known, made-up and separate</h3>
          <ul class="lc-list">
            <li><strong>Made-up data only.</strong> Use staging test users and seed products. Never use real customer accounts.</li>
            <li><strong>No secrets in code.</strong> The password comes from the <code>SHOPNEST_TEST_PASSWORD</code> environment variable.</li>
            <li><strong>A known start.</strong> Each test sets up what it needs. It never depends on another test running first.</li>
            <li><strong>Separate data.</strong> Playwright runs test files at the same time. ShopNest also runs each test in three browsers. Two runs at the same time must never share one basket.</li>
            <li><strong>Clean up.</strong> Empty the basket after the test, so the next run starts clean.</li>
          </ul>
          <p>Leo created eight staging accounts, <code>test.worker0@shopnest.test</code> to <code>test.worker7@shopnest.test</code>. Each Playwright worker (a separate process that runs tests) has a <code>parallelIndex</code> from 0 upwards. The Playwright docs show this idea for keeping data apart. Eight accounts cover up to 8 workers, so the config must never run more workers than that. Aisha adds a small helper file, <code>tests/test-users.ts</code>:</p>
          <pre><code>import { test } from '@playwright/test';

        // Each parallel worker uses its own staging user,
        // so two tests that run at the same time never share a basket.
        export function workerEmail(): string {
          return `test.worker${test.info().parallelIndex}@shopnest.test`;
        }</code></pre>
          <p>Then she writes the free delivery tests in <code>tests/delivery.spec.ts</code>. The setup uses ShopNest's basket API, which is much faster than clicking. You will learn more about API tests later in this course. <code>page.request</code> shares cookies with the page, so the page is signed in too.</p>
          <pre><code>import { test, expect } from '@playwright/test';
        import { workerEmail } from './test-users';

        const cases = [
          { name: 'just under £40', items: [{ sku: 'COF-227', quantity: 9 }, { sku: 'CHS-400', quantity: 1 }],
            subtotal: '£39.75', delivery: '£3.99', total: '£43.74' },
          { name: 'exactly £40', items: [{ sku: 'COF-227', quantity: 10 }],
            subtotal: '£40.00', delivery: 'Free', total: '£40.00' },
          { name: 'just over £40', items: [{ sku: 'COF-227', quantity: 10 }, { sku: 'BAN-006', quantity: 1 }],
            subtotal: '£41.20', delivery: 'Free', total: '£41.20' },
        ];

        test.beforeEach(async ({ page }) =&gt; {
          const signIn = await page.request.post('/api/session', {
            data: { email: workerEmail(), password: process.env.SHOPNEST_TEST_PASSWORD },
          });
          await expect(signIn).toBeOK();
          await expect(await page.request.delete('/api/basket')).toBeOK();
        });

        test.afterEach(async ({ page }) =&gt; {
          await page.request.delete('/api/basket');
        });

        for (const c of cases) {
          test(`delivery is right for a basket ${c.name}`, async ({ page }) =&gt; {
            for (const item of c.items) {
              await expect(await page.request.post('/api/basket/items', { data: item })).toBeOK();
            }
            await page.goto('/basket');
            await expect.soft(page.getByTestId('basket-subtotal')).toHaveText(c.subtotal);
            await expect.soft(page.getByTestId('basket-delivery')).toHaveText(c.delivery);
            await expect(page.getByTestId('basket-total')).toHaveText(c.total);
          });
        }</code></pre>
          <p>The loop creates three tests from one table. This is called a <strong>data-driven</strong> (or parameterised) test. Each test gets its own name in the report.</p>
        </div>
        <div class="lc-card">
          <h3>Boundary values, checked with a spreadsheet</h3>
          <p><strong>Boundary value analysis</strong> means testing just below, exactly at and just above a limit. Bugs often hide at the limit, for example <code>&gt;</code> written where <code>&gt;=</code> was needed. The ShopNest rule is: delivery costs £3.99 under £40.00, and is free from £40.00.</p>
          <p>AI can suggest boundary cases quickly. But AI can get sums wrong, so Aisha checks every expected value in a spreadsheet. Subtotal is in column B:</p>
          <table class="lc-table">
            <thead><tr><th>A: Case</th><th>B: Subtotal</th><th>C: Delivery</th><th>D: Total</th></tr></thead>
            <tbody>
              <tr><td>9 coffee + 1 cheese</td><td>39.75</td><td>3.99</td><td>43.74</td></tr>
              <tr><td>10 coffee</td><td>40.00</td><td>0.00</td><td>40.00</td></tr>
              <tr><td>10 coffee + 1 bananas</td><td>41.20</td><td>0.00</td><td>41.20</td></tr>
            </tbody>
          </table>
          <pre><code>C2:  =IF(B2&lt;40,3.99,0)
        D2:  =B2+C2
        Copy both formulas down to row 4.</code></pre>
          <p>The coffee is £4.00 and the cheese £3.75. So 9 × £4.00 + £3.75 = £39.75. The quantity limit is 10 per line, so all three baskets are valid.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me test data for delivery.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Rule: delivery is £3.99 when the basket subtotal is under £40.00, free from £40.00.
        Max 10 of one product per basket line. Products: [paste the price list].
        Suggest baskets just below, exactly at and just above £40.00.
        For each, show the sum step by step, then subtotal, delivery and total.
        Use only the products listed. Flag any basket that breaks the quantity limit.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Build a clean data test</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of Aisha's free delivery test in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Work out the expected subtotal, delivery and total from the requirement, and check them in a spreadsheet.</li>
              <li data-order="2">Sign in as this worker's staging test user, with the password from the environment variable.</li>
              <li data-order="3">Empty the basket, so the test starts from a known state.</li>
              <li data-order="4">Add the test items through the basket API.</li>
              <li data-order="5">Open the basket page and check the exact subtotal, delivery and total.</li>
              <li data-order="6">Empty the basket again, so the next run starts clean.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to design boundary test data for a rule in your product. Then check every sum yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful test designer. Use simple English.

        Rule to test: [Delivery costs £3.99 when the basket subtotal is under £40.00. Delivery is free from £40.00. A shopper can buy at most 10 of one product per basket line.]

        Made-up products: [Bananas (6 pack) £1.20; Semi-skimmed milk 2 litres £1.65; Wholemeal bread 800 g £1.40; Free-range eggs (12) £3.10; Cheddar cheese 400 g £3.75; Ground coffee 227 g £4.00]

        Please:
        1. Use boundary value analysis. Suggest 5 baskets: below, just below, exactly at, just above and well above the limit.
        2. For each basket, show the sum step by step, then the subtotal, delivery and total.
        3. Add 2 invalid cases for the quantity rule, with the expected result.
        4. Give spreadsheet formulas I can use to check delivery and total.
        5. Give the valid cases as a TypeScript array I can loop over in a Playwright test.

        Use only made-up data. Do not invent products or prices.</pre>
            <ul class="ai-try-checks">
              <li>One basket has a subtotal of exactly £40.00, with free delivery.</li>
              <li>Every sum is correct when you check it in a spreadsheet.</li>
              <li>No valid basket has more than 10 of one product on a line.</li>
              <li>It uses only the products and prices you gave.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A test is only as good as its expected result and its data. Work out the exact value from the requirement, start every test from a known state, and never let two running tests share the same data.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Page Objects and Readable Suites</h1>
        </div>
        <p class="lc-lead">When a suite grows, the same steps appear in many tests. Then one small page change means fixing many files. A page object keeps the locators and actions for one page in one place. In this lesson you will build ShopNest's page objects and use them in tests. You will also learn how to organise and name files and tests, so anyone on the team can read the suite. Finally, you will learn how to check AI-suggested refactoring.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three columns. Left: test files login.spec.ts, basket.spec.ts and delivery.spec.ts. Middle: page objects LoginPage, ProductListPage and BasketPage. Right: app pages /login, /shop/fruit and /basket. Arrows go from tests to page objects to pages. Note: if a label changes, fix one page object, not every test.">
            <defs><marker id="ta9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="110" y="26" text-anchor="middle" font-weight="700" fill="#93c5fd">Test files</text>
              <text x="380" y="26" text-anchor="middle" font-weight="700" fill="#6ee7b7">Page objects</text>
              <text x="650" y="26" text-anchor="middle" font-weight="700" fill="#fcd34d">App pages</text>
              <g font-family="monospace" font-size="12">
                <rect x="20" y="42" width="180" height="40" rx="6" fill="#27274e" stroke="#3b82f6"/>
                <text x="110" y="67" text-anchor="middle">login.spec.ts</text>
                <rect x="20" y="102" width="180" height="40" rx="6" fill="#27274e" stroke="#3b82f6"/>
                <text x="110" y="127" text-anchor="middle">basket.spec.ts</text>
                <rect x="20" y="162" width="180" height="40" rx="6" fill="#27274e" stroke="#3b82f6"/>
                <text x="110" y="187" text-anchor="middle">delivery.spec.ts</text>
                <rect x="290" y="42" width="180" height="40" rx="6" fill="#27274e" stroke="#10b981"/>
                <text x="380" y="67" text-anchor="middle">LoginPage</text>
                <rect x="290" y="102" width="180" height="40" rx="6" fill="#27274e" stroke="#10b981"/>
                <text x="380" y="127" text-anchor="middle">ProductListPage</text>
                <rect x="290" y="162" width="180" height="40" rx="6" fill="#27274e" stroke="#10b981"/>
                <text x="380" y="187" text-anchor="middle">BasketPage</text>
                <rect x="560" y="42" width="180" height="40" rx="6" fill="#27274e" stroke="#f59e0b"/>
                <text x="650" y="67" text-anchor="middle">/login</text>
                <rect x="560" y="102" width="180" height="40" rx="6" fill="#27274e" stroke="#f59e0b"/>
                <text x="650" y="127" text-anchor="middle">/shop/fruit</text>
                <rect x="560" y="162" width="180" height="40" rx="6" fill="#27274e" stroke="#f59e0b"/>
                <text x="650" y="187" text-anchor="middle">/basket</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta9a)">
                <line x1="201" y1="62" x2="286" y2="62"/>
                <line x1="201" y1="118" x2="286" y2="118"/>
                <line x1="201" y1="128" x2="286" y2="172"/>
                <line x1="201" y1="192" x2="286" y2="192"/>
                <line x1="471" y1="62" x2="556" y2="62"/>
                <line x1="471" y1="122" x2="556" y2="122"/>
                <line x1="471" y1="182" x2="556" y2="182"/>
              </g>
              <rect x="20" y="226" width="720" height="58" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="251" text-anchor="middle" font-weight="700">A label changed? Fix one page object, not every test.</text>
              <text x="380" y="271" text-anchor="middle" font-size="12" fill="#9b99b8">Tests say what to check. Page objects know how to find things.</text>
            </g>
          </svg>
          <figcaption>Tests talk to page objects. Only page objects know the locators for each page.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a page object is</h3>
          <p>A <strong>page object</strong> is a class (a reusable building block in code) for one page or part of a page. It holds that page's locators and the actions a user can do there. The pattern is called the Page Object Model (POM). The Playwright docs say it makes tests easier to write and to maintain.</p>
          <p>ShopNest's suite had the same three sign-in lines in 12 tests. If the "Email address" label changed, Aisha would need to fix 12 places. With a page object, she fixes one. Here is <code>tests/pages/login-page.ts</code>:</p>
          <pre><code>import { type Page, type Locator } from '@playwright/test';

        export class LoginPage {
          readonly page: Page;
          readonly emailInput: Locator;
          readonly passwordInput: Locator;
          readonly signInButton: Locator;
          readonly errorAlert: Locator;

          constructor(page: Page) {
            this.page = page;
            this.emailInput = page.getByLabel('Email address');
            this.passwordInput = page.getByLabel('Password');
            this.signInButton = page.getByRole('button', { name: 'Sign in' });
            this.errorAlert = page.getByRole('alert');
          }

          async goto() {
            await this.page.goto('/login');
          }

          async signIn(email: string, password: string) {
            await this.emailInput.fill(email);
            await this.passwordInput.fill(password);
            await this.signInButton.click();
          }
        }</code></pre>
          <p>The file name does not end in <code>.spec.ts</code>, so Playwright does not run it as a test. The <code>readonly</code> fields are the locators. The <code>async</code> methods are user actions.</p>
          <p>ShopNest's team rule: <strong>page objects find and do; tests check.</strong> The <code>expect</code> lines stay in the test, so a reader can see what each test proves. Some teams put a few checks in page objects. Agree one rule and follow it.</p>
        </div>
        <div class="lc-card">
          <h3>More page objects, and fixtures</h3>
          <p>The basket page has many lines, so <code>BasketPage</code> has a method that finds one line by product name (<code>tests/pages/basket-page.ts</code>). It also has a <code>discount</code> locator for the discount line (test ID <code>basket-discount</code>). That line only shows after a promo code is applied.</p>
          <pre><code>import { type Page, type Locator } from '@playwright/test';

        export class BasketPage {
          readonly page: Page;
          readonly heading: Locator;
          readonly subtotal: Locator;
          readonly delivery: Locator;
          readonly discount: Locator;
          readonly total: Locator;
          readonly emptyMessage: Locator;

          constructor(page: Page) {
            this.page = page;
            this.heading = page.getByRole('heading', { name: 'Your basket' });
            this.subtotal = page.getByTestId('basket-subtotal');
            this.delivery = page.getByTestId('basket-delivery');
            this.discount = page.getByTestId('basket-discount');
            this.total = page.getByTestId('basket-total');
            this.emptyMessage = page.getByText('Your basket is empty.');
          }

          async goto() {
            await this.page.goto('/basket');
          }

          line(productName: string): Locator {
            return this.page.getByTestId('basket-line').filter({ hasText: productName });
          }

          async setQuantity(productName: string, quantity: number) {
            await this.line(productName).getByLabel('Quantity').fill(String(quantity));
          }

          async removeLine(productName: string) {
            await this.line(productName).getByRole('button', { name: 'Remove' }).click();
          }
        }</code></pre>
          <p><code>ProductListPage</code> (<code>tests/pages/product-list-page.ts</code>) is built the same way. It has <code>goto(aisle)</code>, <code>addToBasket(productName)</code> and the <code>basketCount</code> locator.</p>
          <p>A <strong>fixture</strong> is something Playwright prepares for a test, like the built-in <code>page</code>. Leo adds <code>tests/fixtures.ts</code>, so each test can ask for a page object by name:</p>
          <pre><code>import { test as base } from '@playwright/test';
        import { LoginPage } from './pages/login-page';
        import { ProductListPage } from './pages/product-list-page';
        import { BasketPage } from './pages/basket-page';

        type ShopNestPages = {
          loginPage: LoginPage;
          productListPage: ProductListPage;
          basketPage: BasketPage;
        };

        export const test = base.extend&lt;ShopNestPages&gt;({
          loginPage: async ({ page }, use) =&gt; {
            await use(new LoginPage(page));
          },
          productListPage: async ({ page }, use) =&gt; {
            await use(new ProductListPage(page));
          },
          basketPage: async ({ page }, use) =&gt; {
            await use(new BasketPage(page));
          },
        });

        export { expect } from '@playwright/test';</code></pre>
          <p>Now the login tests in <code>tests/login.spec.ts</code> are short and easy to read:</p>
          <pre><code>import { test, expect } from './fixtures';

        test.describe('login', () =&gt; {
          test('valid account goes to the shop', async ({ page, loginPage }) =&gt; {
            await loginPage.goto();
            await loginPage.signIn('test.shopper1@shopnest.test', process.env.SHOPNEST_TEST_PASSWORD!);
            await expect(page).toHaveURL(/\/shop/);
            await expect(page.getByRole('heading', { name: 'Welcome back, Test Shopper' })).toBeVisible();
          });

          test('wrong password shows an error', async ({ page, loginPage }) =&gt; {
            await loginPage.goto();
            await loginPage.signIn('test.shopper1@shopnest.test', 'not-the-right-password');
            await expect(loginPage.errorAlert).toHaveText('Email or password is incorrect.');
            await expect(page).toHaveURL(/\/login/);
          });
        });</code></pre>
          <p>One risk to watch: ShopNest locks an account after 5 wrong passwords in a row. The wrong-password test adds one failed try on <code>test.shopper1</code> each time it runs, in each browser. The valid sign-in test resets the count with a correct sign-in. The capstone looks at this risk again.</p>
        </div>
        <div class="lc-card">
          <h3>A readable suite: folders, names and tags</h3>
          <pre><code>tests/
          pages/
            login-page.ts
            product-list-page.ts
            basket-page.ts
          fixtures.ts
          test-users.ts
          login.spec.ts
          basket.spec.ts
          delivery.spec.ts
          basket-api.spec.ts
        playwright.config.ts</code></pre>
          <table class="lc-table">
            <thead><tr><th>What</th><th>ShopNest rule</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Test files</td><td>One file per feature</td><td><code>delivery.spec.ts</code></td></tr>
              <tr><td>Groups</td><td>One <code>test.describe</code> per feature</td><td><code>test.describe('login', …)</code></td></tr>
              <tr><td>Test names</td><td>Say the behaviour and the result</td><td>"wrong password shows an error", not "test 2"</td></tr>
              <tr><td>Page objects</td><td>One class per page, named after the page</td><td><code>BasketPage</code></td></tr>
              <tr><td>Tags</td><td>Mark the quick, most important tests</td><td><code>{ tag: '@smoke' }</code></td></tr>
            </tbody>
          </table>
          <p>A <strong>smoke test</strong> is a quick check that the most important features work at all. Playwright lets you tag a test and run only that tag:</p>
          <pre><code>test('valid account goes to the shop', { tag: '@smoke' }, async ({ page, loginPage }) =&gt; {
          // …
        });

        // Run only the smoke tests:
        // npx playwright test --grep @smoke</code></pre>
          <p>AI is good at this kind of tidy-up. Ask it to move repeated steps into page objects. Then check its work:</p>
          <ul class="lc-list">
            <li>Every test still has the same checks as before. Count the <code>expect</code> lines before and after.</li>
            <li>The locators did not change by accident.</li>
            <li>No <code>expect</code> lines were hidden inside page objects, if your team rule says so.</li>
            <li>It did not add layers you do not need, such as a method for every single click.</li>
            <li>All tests still pass, and still fail when you break an expected value.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Where does it belong?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each piece of ShopNest's suite into the place it belongs.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="po" data-label="Page object"></div>
              <div data-sorter-target="bucket" data-bucket="test" data-label="Test file"></div>
              <div data-sorter-target="bucket" data-bucket="config" data-label="Config or environment"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="po" data-why="Locators live in the page object, so a page change is fixed in one place.">The locator for the "Sign in" button</li>
              <li data-bucket="po" data-why="A user action that many tests repeat belongs in the page object.">A signIn(email, password) method</li>
              <li data-bucket="po" data-why="Finding one line among many is page knowledge, so it belongs with the page.">The filter that finds one basket line by product name</li>
              <li data-bucket="test" data-why="Expected results show what the test proves, so they stay in the test.">The check that Basket A's total is £11.14</li>
              <li data-bucket="test" data-why="ShopNest's rule: page objects find and do, tests check.">The check that the alert says "Email or password is incorrect."</li>
              <li data-bucket="config" data-why="The base URL is set once in playwright.config.ts, so tests work on any environment.">The staging address https://staging.shopnest.test</li>
              <li data-bucket="config" data-why="Secrets come from an environment variable, never from code.">The test users' password</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn repeated test steps into a page object. Then compare the checks before and after.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior Playwright Test engineer. Use simple English.

        These two tests for [the ShopNest basket page, a made-up grocery app] repeat the same steps:

        [test('removing bananas leaves 2 lines', async ({ page }) =&gt; {
          await page.goto('/basket');
          await page.getByTestId('basket-line').filter({ hasText: 'Bananas (6 pack)' }).getByRole('button', { name: 'Remove' }).click();
          await expect(page.getByTestId('basket-line')).toHaveCount(2);
        });
        test('3 bananas gives subtotal £8.35', async ({ page }) =&gt; {
          await page.goto('/basket');
          await page.getByTestId('basket-line').filter({ hasText: 'Bananas (6 pack)' }).getByLabel('Quantity').fill('3');
          await expect(page.getByTestId('basket-subtotal')).toHaveText('£8.35');
        });]

        Please:
        1. Write a BasketPage class in TypeScript with readonly locators, goto(), line(productName), setQuantity() and removeLine().
        2. Rewrite both tests to use it. Keep every expect in the tests, not in the class.
        3. List the checks before and after, to show none were lost.
        4. Suggest clearer test names if needed.
        Use only methods from the current Playwright docs.</pre>
            <ul class="ai-try-checks">
              <li>The class holds locators and actions, with no expect lines.</li>
              <li>Both tests keep exactly the same checks as before.</li>
              <li>line() uses filter() by product name, not nth() or first().</li>
              <li>You run the new tests and see them pass, then fail with a wrong expected value.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Page objects hide how to find things; tests show what is being checked. Keep locators in one place, give every test a name that says its result, and check that refactoring never removes a check.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">API Tests</h1>
        </div>
        <p class="lc-lead">An API (application programming interface) is the way programs talk to the app's server. The ShopNest web page and mobile app both use the basket API. An API test sends requests straight to the server, with no browser. It is fast and stable, and it can test rules many times. In this lesson you will learn the parts of an API request and response. You will write API tests with Playwright's request tools, and see how a tester uses Postman. You will also learn how to check AI-written API tests.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Two paths to the ShopNest basket API. A UI test goes from the test to a browser, then the web page, then the basket API and the database. An API test goes from the test straight to the basket API and the database. The UI test checks what shoppers see and is slower. The API test checks rules and data and is faster.">
            <defs><marker id="ta10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="28" font-weight="700" fill="#93c5fd">UI test: checks what shoppers see (slower)</text>
              <rect x="20" y="42" width="120" height="44" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="80" y="69" text-anchor="middle">Test</text>
              <rect x="170" y="42" width="120" height="44" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="230" y="69" text-anchor="middle">Browser</text>
              <rect x="320" y="42" width="120" height="44" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="69" text-anchor="middle">Web page</text>
              <rect x="470" y="42" width="120" height="44" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="530" y="69" text-anchor="middle">Basket API</text>
              <rect x="620" y="42" width="120" height="44" rx="6" fill="#27274e" stroke="#8b5cf6"/>
              <text x="680" y="69" text-anchor="middle">Database</text>
              <text x="20" y="138" font-weight="700" fill="#6ee7b7">API test: checks rules and data (faster)</text>
              <rect x="20" y="152" width="120" height="44" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="80" y="179" text-anchor="middle">Test</text>
              <rect x="470" y="152" width="120" height="44" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="530" y="179" text-anchor="middle">Basket API</text>
              <rect x="620" y="152" width="120" height="44" rx="6" fill="#27274e" stroke="#8b5cf6"/>
              <text x="680" y="179" text-anchor="middle">Database</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta10a)">
                <line x1="141" y1="64" x2="166" y2="64"/>
                <line x1="291" y1="64" x2="316" y2="64"/>
                <line x1="441" y1="64" x2="466" y2="64"/>
                <line x1="591" y1="64" x2="616" y2="64"/>
                <line x1="141" y1="174" x2="466" y2="174"/>
                <line x1="591" y1="174" x2="616" y2="174"/>
              </g>
              <text x="303" y="166" text-anchor="middle" font-size="12" fill="#9b99b8">no browser, no page</text>
              <rect x="20" y="220" width="350" height="64" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="36" y="245" font-size="12" font-weight="700">Request</text>
              <text x="36" y="268" font-size="12" font-family="monospace" fill="#fcd34d">POST /api/basket/items</text>
              <rect x="390" y="220" width="350" height="64" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="406" y="245" font-size="12" font-weight="700">Response</text>
              <text x="406" y="268" font-size="12" font-family="monospace" fill="#67e8f9">201 Created + JSON body</text>
            </g>
          </svg>
          <figcaption>An API test skips the browser and talks to the server directly. It checks the status code and the data that come back.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The parts of an API call</h3>
          <p>Every API call is a <strong>request</strong> from your test and a <strong>response</strong> from the server.</p>
          <ul class="lc-list">
            <li><strong>Endpoint</strong>: the address of one API feature, such as <code>/api/basket</code>.</li>
            <li><strong>Method</strong>: what you want to do. GET reads, POST creates, PATCH changes part of something, DELETE removes.</li>
            <li><strong>Body</strong>: the data sent or returned, usually in JSON (a simple text format for data).</li>
            <li><strong>Status code</strong>: a number that says how it went. 200 OK, 201 Created, 204 No Content (done, nothing to return), 400 Bad Request, 401 Unauthorized (not signed in), 404 Not Found.</li>
          </ul>
          <p>Here is the made-up ShopNest basket API on staging. Leo wrote this list in the API spec (the document that says how the API should behave).</p>
          <table class="lc-table">
            <thead><tr><th>Request</th><th>Expected response</th></tr></thead>
            <tbody>
              <tr><td><code>POST /api/session</code> with email and password</td><td>200 and a session cookie. Wrong password: 401.</td></tr>
              <tr><td><code>GET /api/basket</code></td><td>200 and the basket: items, <code>itemCount</code>, <code>subtotal</code>, <code>delivery</code>, <code>total</code>. Not signed in: 401.</td></tr>
              <tr><td><code>POST /api/basket/items</code> with <code>sku</code> and <code>quantity</code></td><td>201</td></tr>
              <tr><td><code>PATCH /api/basket/items/BAN-006</code> with <code>quantity</code></td><td>200. Quantity 0 or 11: 400 and <code>{"error":"Quantity must be between 1 and 10."}</code></td></tr>
              <tr><td><code>DELETE /api/basket</code></td><td>204, and the basket is empty</td></tr>
            </tbody>
          </table>
          <p>Money comes back as text, such as <code>"7.15"</code>. This avoids rounding errors with decimal numbers.</p>
          <p>Why test here as well as in the UI? The basket rules live in the API. The mobile app uses them too. An API test can check 20 baskets in a few seconds. It can also send bad data that the web page would block, such as a quantity of 11.</p>
        </div>
        <div class="lc-card">
          <h3>API tests with Playwright</h3>
          <p>Playwright Test has a built-in <code>request</code> fixture for API calls. It uses the <code>baseURL</code> from the config, and it keeps cookies for the whole test. Aisha writes <code>tests/basket-api.spec.ts</code>:</p>
          <pre><code>import { test, expect } from '@playwright/test';
        import { workerEmail } from './test-users';

        test.describe('basket API', () =&gt; {
          test.beforeEach(async ({ request }) =&gt; {
            const signIn = await request.post('/api/session', {
              data: { email: workerEmail(), password: process.env.SHOPNEST_TEST_PASSWORD },
            });
            await expect(signIn).toBeOK();
            await expect(await request.delete('/api/basket')).toBeOK();
          });

          test('Basket A has subtotal 7.15 and total 11.14', async ({ request }) =&gt; {
            const items = [
              { sku: 'BAN-006', quantity: 2 },
              { sku: 'MLK-2L', quantity: 1 },
              { sku: 'EGG-12', quantity: 1 },
            ];
            for (const item of items) {
              const added = await request.post('/api/basket/items', { data: item });
              expect(added.status()).toBe(201);
            }
            const response = await request.get('/api/basket');
            await expect(response).toBeOK();
            const basket = await response.json();
            expect(basket.itemCount).toBe(4);
            expect(basket.subtotal).toBe('7.15');
            expect(basket.delivery).toBe('3.99');
            expect(basket.total).toBe('11.14');
          });

          test('quantity 11 is rejected with a clear error', async ({ request }) =&gt; {
            const added = await request.post('/api/basket/items', { data: { sku: 'BAN-006', quantity: 1 } });
            expect(added.status()).toBe(201);
            const response = await request.patch('/api/basket/items/BAN-006', { data: { quantity: 11 } });
            expect(response.status()).toBe(400);
            expect(await response.json()).toEqual({ error: 'Quantity must be between 1 and 10.' });
          });
        });

        test('basket API needs a signed-in user', async ({ request }) =&gt; {
          const response = await request.get('/api/basket');
          expect(response.status()).toBe(401);
        });</code></pre>
          <table class="lc-table">
            <thead><tr><th>Line</th><th>What it means</th></tr></thead>
            <tbody>
              <tr><td><code>request.post(url, { data })</code></td><td>Sends a POST. An object in <code>data</code> is sent as JSON.</td></tr>
              <tr><td><code>await expect(response).toBeOK()</code></td><td>Checks the status is in the 200 to 299 range. Use it only when any success is fine.</td></tr>
              <tr><td><code>response.status()</code></td><td>The exact status code. Use it when the spec names one, such as 201 or 400.</td></tr>
              <tr><td><code>await response.json()</code></td><td>Reads the JSON body so you can check the fields.</td></tr>
              <tr><td><code>toBe</code> and <code>toEqual</code></td><td>Normal checks with no retry. That is fine here, because the response has already arrived.</td></tr>
            </tbody>
          </table>
          <p>The last test sits outside the <code>describe</code> block. So the <code>beforeEach</code> sign-in does not run for it, and the request has no session. The worker user and the empty basket come from the test data rules, so API tests never clash with each other.</p>
        </div>
        <div class="lc-card">
          <h3>Postman, and using AI for API tests</h3>
          <p>Jordan Lee, a QA engineer at PayLite in New York, tests the made-up PayLite payments API with Postman. Postman is an app for sending API requests by hand and saving them in <strong>collections</strong> (named groups of requests). Jordan adds checks in the request's post-response script. They run after each response arrives:</p>
          <pre><code>pm.test("Payment is created as pending", function () {
          pm.response.to.have.status(201);
          const body = pm.response.json();
          pm.expect(body.status).to.eql("pending");
          pm.expect(body.amount).to.eql("25.00");
        });</code></pre>
          <p>Jordan keeps the API token in a Postman environment as a secret variable, never in the shared collection. Collections can also run from the command line in CI. Postman's menus and features change, so check its current docs.</p>
          <p>What to check in any API test:</p>
          <ul class="lc-list">
            <li>The exact status code for success and for each error.</li>
            <li>The important fields in the body, with exact values.</li>
            <li>Error messages for bad input, such as a quantity of 0 or 11, or an amount of "0.00".</li>
            <li>Security basics: no access without signing in, and no private data in responses. The OWASP Top 10 lists common web security risks.</li>
          </ul>
          <p>AI is useful for listing API test cases from a spec. Give it the endpoint list and the rules. Never paste real tokens, real customer data or a confidential spec into a tool your company has not approved.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write API tests for a basket.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is part of our API spec (made-up staging data, no tokens): [paste].
        List test cases for PATCH /api/basket/items/{sku}: valid, boundary and error
        cases. For each give the request body, the exact expected status code and
        the expected body. Then write two of them as Playwright Test API tests in
        TypeScript, using the request fixture. Read secrets from environment variables.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Aisha checks an AI-written API test</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Aisha asks AI">"Write a Playwright API test: PATCH /api/basket/items/BAN-006 with quantity 11 should return 400 and an error message." She pastes the spec lines, with no tokens.</li>
              <li data-kind="answer" data-label="The AI draft">The test sends the request and checks <code>expect(response.status).toBe(400)</code>. It also adds a header with a real-looking token: <code>Authorization: 'Bearer eyJhbGci…'</code>.</li>
              <li data-kind="warn" data-label="Two problems">status is a method, so it needs brackets: response.status(). The token is made up by the AI, and a token must never sit in the test file. ShopNest signs in with a session instead.</li>
              <li data-kind="tool" data-label="She fixes and runs it">She uses the sign-in from beforeEach and runs <code>npx playwright test tests/basket-api.spec.ts</code>.</li>
              <li data-kind="result" data-label="Result">The test passes: status 400 and the message "Quantity must be between 1 and 10."</li>
              <li data-kind="check" data-label="Against the spec">She checks the spec. The agreed code is 400, not 422, and the message text matches word for word.</li>
              <li data-kind="check" data-label="Can it fail?">She changes the expected status to 200 for one run. The test fails, so the check really works. She changes it back.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan API tests for one endpoint and write two of them. Use your own made-up spec, or keep the ShopNest example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an API test expert who knows Playwright Test. Use simple English.

        Endpoint: [POST /api/basket/items on the ShopNest staging API, a made-up grocery app]
        Spec:
        [- The user must be signed in, or the API returns 401.
        - Body: { "sku": "BAN-006", "quantity": 2 }
        - quantity must be 1 to 10. Otherwise 400 with {"error":"Quantity must be between 1 and 10."}
        - An unknown sku returns 404.
        - Success returns 201.
        - GET /api/basket then shows itemCount, subtotal, delivery and total as text, such as "7.15".]

        Please:
        1. List 8 test cases in a table: name, request body, expected status, expected body or effect. Include boundary values.
        2. Write 2 of them as Playwright Test API tests in TypeScript with the request fixture. Assume the baseURL is set in the config.
        3. Read any password from an environment variable. Never write a token or password in the code.
        4. Say which parts of my spec are unclear and need a question to the developer.</pre>
            <ul class="ai-try-checks">
              <li>It tests quantity 0, 1, 10 and 11, not only a normal value.</li>
              <li>Each case has one exact status code that matches the spec.</li>
              <li>The code uses response.status() with brackets and await response.json().</li>
              <li>No token or password appears in the code.</li>
              <li>It asks real questions, for example what happens when the same sku is added twice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> API tests check the rules where they really live, quickly and without a browser. Check exact status codes and values from the spec, keep tokens out of code, and keep a few UI tests for what shoppers actually see.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Running Tests in CI</h1>
        </div>
        <p class="lc-lead">A test suite only helps if it runs often. In this lesson you will learn how to run Playwright tests in CI with GitHub Actions. You will read a workflow file line by line and keep the test password safe as a secret. You will also learn to read the results: the HTML report, screenshots and traces. You will follow Leo and Aisha as ShopNest's login and basket tests start to run on every pull request.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The CI flow. A push or pull request starts GitHub Actions. The runner installs the tools and browsers, runs the tests in 3 browsers, then uploads the report and traces. Each test gets one of three results: passed, which means it passed the first time; flaky, which means it failed and then passed on a retry; or failed, which means it failed on every try. When a test fails you get an HTML report, a screenshot and a trace.">
            <defs><marker id="ta11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="132" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="86" y="55">Push or</text>
              <text x="86" y="73">pull request</text>
              <rect x="168" y="30" width="132" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="234" y="55">GitHub Actions</text>
              <text x="234" y="73">starts a runner</text>
              <rect x="316" y="30" width="132" height="58" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="382" y="55">Install tools</text>
              <text x="382" y="73">and browsers</text>
              <rect x="464" y="30" width="132" height="58" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="530" y="55" font-weight="700">Run tests</text>
              <text x="530" y="73">in 3 browsers</text>
              <rect x="612" y="30" width="132" height="58" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="678" y="55">Upload report</text>
              <text x="678" y="73">and traces</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta11a)">
                <line x1="153" y1="59" x2="164" y2="59"/>
                <line x1="301" y1="59" x2="312" y2="59"/>
                <line x1="449" y1="59" x2="460" y2="59"/>
                <line x1="597" y1="59" x2="608" y2="59"/>
              </g>
              <text x="380" y="122" fill="#9b99b8">Each test gets one of three results (CI retries a failed test up to 2 times)</text>
              <rect x="20" y="138" width="230" height="64" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="135" y="163" font-weight="700" fill="#6ee7b7">passed</text>
              <text x="135" y="185">Passed the first time</text>
              <rect x="265" y="138" width="230" height="64" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="163" font-weight="700" fill="#fcd34d">flaky</text>
              <text x="380" y="185">Failed, then passed on retry</text>
              <rect x="510" y="138" width="230" height="64" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="625" y="163" font-weight="700" fill="#f9a8d4">failed</text>
              <text x="625" y="185">Failed on every try</text>
              <rect x="20" y="222" width="720" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="245" font-weight="700">When a test fails or is flaky, you get evidence</text>
              <text x="380" y="266" fill="#9b99b8">HTML report  ·  screenshot of the page  ·  trace from the first retry</text>
            </g>
          </svg>
          <figcaption>Every push or pull request runs the suite in CI. Each test is marked passed, flaky or failed, and failures come with evidence.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What CI does for your tests</h3>
          <p><strong>CI</strong> (continuous integration) is a system that builds the app and runs the tests every time someone pushes a change. ShopNest's code lives on GitHub, so Leo uses <strong>GitHub Actions</strong>, GitHub's built-in CI service. Other teams use tools such as GitLab CI, Jenkins or Azure Pipelines. The ideas are the same.</p>
          <p>Some words you will see:</p>
          <ul class="lc-list">
            <li><strong>Workflow</strong>: a YAML file that says when to run and what to do. YAML is a simple text format that uses indents to show structure.</li>
            <li><strong>Job</strong>: a group of steps that run on one machine.</li>
            <li><strong>Runner</strong>: the fresh machine in the cloud that runs the job. It starts empty every time.</li>
            <li><strong>Step</strong>: one command or one ready-made action, such as "check out the code".</li>
            <li><strong>Artifact</strong>: a file the job saves for you to download later, such as the test report.</li>
            <li><strong>Secret</strong>: a value stored safely in the repository settings, such as a password. GitHub hides it in the logs.</li>
          </ul>
          <p>Why bother? On Aisha's laptop the tests run when she remembers. In CI they run on every <strong>pull request</strong> (a request to merge a change into the main code). A developer sees a broken basket within minutes, before the change is merged.</p>
        </div>
        <div class="lc-card">
          <h3>The ShopNest workflow, line by line</h3>
          <p>Leo starts from the GitHub Actions example in the Playwright docs. He adds two things: the staging address and the password secret. The file lives at <code>.github/workflows/playwright.yml</code>.</p>
          <pre><code>name: Playwright Tests
        on:
          push:
            branches: [ main ]
          pull_request:
            branches: [ main ]
        jobs:
          test:
            timeout-minutes: 60
            runs-on: ubuntu-latest
            env:
              BASE_URL: https://staging.shopnest.test
              SHOPNEST_TEST_PASSWORD: ${{ secrets.SHOPNEST_TEST_PASSWORD }}
            steps:
            - uses: actions/checkout@v6
            - uses: actions/setup-node@v6
              with:
                node-version: lts/*
            - name: Install dependencies
              run: npm ci
            - name: Install Playwright Browsers
              run: npx playwright install --with-deps
            - name: Run Playwright tests
              run: npx playwright test
            - uses: actions/upload-artifact@v4
              if: ${{ !cancelled() }}
              with:
                name: playwright-report
                path: playwright-report/
                retention-days: 30</code></pre>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it means</th></tr></thead>
            <tbody>
              <tr><td><code>on: push / pull_request</code></td><td>Run when someone pushes to <code>main</code> or opens a pull request into <code>main</code>.</td></tr>
              <tr><td><code>runs-on: ubuntu-latest</code></td><td>Use a fresh Linux runner.</td></tr>
              <tr><td><code>env:</code></td><td>Settings for every step. <code>BASE_URL</code> is not secret. The password comes from <code>secrets</code>, never from the file.</td></tr>
              <tr><td><code>checkout</code>, <code>setup-node</code></td><td>Get the code and install Node.js.</td></tr>
              <tr><td><code>npm ci</code></td><td>Install the exact tool versions listed in the project's lock file.</td></tr>
              <tr><td><code>npx playwright install --with-deps</code></td><td>Install the browsers and the system files they need.</td></tr>
              <tr><td><code>npx playwright test</code></td><td>Run the suite.</td></tr>
              <tr><td><code>upload-artifact</code> with <code>!cancelled()</code></td><td>Save the HTML report for 30 days, even when tests fail. It is skipped only if someone cancels the run.</td></tr>
            </tbody>
          </table>
          <p>To add the secret, a repository admin opens the repository's settings and adds <code>SHOPNEST_TEST_PASSWORD</code> under the Actions secrets. Action version numbers such as <code>@v6</code> change over time. Check the current Playwright CI docs before you copy them.</p>
          <p>One safety note: GitHub does not pass secrets to workflows started from a <strong>fork</strong> (a copy of the repository in someone else's account). That protects your password from outside contributors.</p>
        </div>
        <div class="lc-card">
          <h3>CI settings in the Playwright config</h3>
          <p>The workflow starts the tests. The file <code>playwright.config.ts</code> says how they run. Leo uses <code>process.env.CI</code> to choose different settings in CI. GitHub Actions sets the <code>CI</code> variable for every run.</p>
          <pre><code>import { defineConfig, devices } from '@playwright/test';

        export default defineConfig({
          testDir: 'tests',
          forbidOnly: !!process.env.CI,
          retries: process.env.CI ? 2 : 0,
          workers: process.env.CI ? 2 : undefined,
          reporter: process.env.CI ? [['html', { open: 'never' }], ['github']] : 'html',
          use: {
            baseURL: process.env.BASE_URL,
            trace: 'on-first-retry',
            screenshot: 'only-on-failure',
          },
          projects: [
            { name: 'chromium', use: { ...devices['Desktop Chrome'] } },
            { name: 'firefox', use: { ...devices['Desktop Firefox'] } },
            { name: 'webkit', use: { ...devices['Desktop Safari'] } },
          ],
        });</code></pre>
          <ul class="lc-list">
            <li><code>forbidOnly</code>: fail the run if someone left <code>test.only</code> in the code. Otherwise CI would quietly run just one test.</li>
            <li><code>retries: 2</code> in CI: a failed test runs up to 2 more times. A test that fails and then passes is marked <strong>flaky</strong>, not passed.</li>
            <li><code>workers: 2</code>: two test files run at the same time on the runner. This saves time, but tests must not share data such as one basket.</li>
            <li><code>reporter</code>: an HTML report, plus the <code>github</code> reporter, which shows failures as notes on the pull request.</li>
            <li><code>trace: 'on-first-retry'</code>: record a <strong>trace</strong> (a step-by-step recording of the test) when a test is retried.</li>
            <li><code>screenshot: 'only-on-failure'</code>: save a picture of the page when a test fails.</li>
          </ul>
          <p>The ShopNest suite now has 12 tests. Each test runs in 3 browsers, so one run gives 36 results. A run takes about 4 minutes.</p>
        </div>
        <div class="lc-card">
          <h3>Reading the results, with help from AI</h3>
          <p>On Leo's pull request, the check shows a green tick. But the summary says <strong>35 passed, 1 flaky</strong>. Aisha does not ignore the flaky one. She downloads the <code>playwright-report</code> artifact from the run page, unzips it and opens it:</p>
          <pre><code>npx playwright show-report playwright-report</code></pre>
          <p>In the report she clicks the flaky test. She sees the error from the first try, the screenshot and the trace. In the <strong>trace viewer</strong> she can step through each action. She sees the page before and after each step, plus the network calls and console messages.</p>
          <p>AI is useful for long CI logs. But logs can hold internal URLs, user names or tokens. Remove anything private before you paste. GitHub hides secrets in its logs, but only the values it knows are secrets.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>My CI failed. Why?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run Playwright Test (TypeScript) in GitHub Actions with retries: 2.
        One test was marked flaky. Here is the error from the first try,
        with private details removed: [paste error and the test's code].
        It never fails on my laptop. List the 3 most likely causes, starting
        with the most likely. For each, say what I should look for in the
        trace viewer to confirm or rule it out. Do not guess app details.</code></pre>
          <p>The AI suggests causes. Aisha confirms the real cause in the trace before anyone changes code.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from pull request to report</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of a ShopNest CI run in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Leo opens a pull request that changes the basket page.</li>
              <li data-order="2">GitHub Actions starts a fresh runner and checks out the code.</li>
              <li data-order="3">The runner installs Node.js, the project tools and the browsers.</li>
              <li data-order="4">Playwright runs the suite in Chromium, Firefox and WebKit, with the password from the secret.</li>
              <li data-order="5">A failed test is retried. A trace is recorded on the first retry.</li>
              <li data-order="6">The HTML report is uploaded as an artifact, even though one test failed first time.</li>
              <li data-order="7">Aisha downloads the report and opens the trace to find the cause.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a CI workflow for your own suite and explain it. Then compare it with the current Playwright CI docs.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a test automation engineer who knows Playwright Test and GitHub Actions. Use simple English.

        My project: [ShopNest, a made-up grocery web app]. Tests: [Playwright Test in TypeScript, in the tests/ folder].
        Test site: [https://staging.shopnest.test]. Password for test users: [stored as the GitHub secret SHOPNEST_TEST_PASSWORD].
        Run on: [push and pull request to main].
        Browsers: [Chromium, Firefox and WebKit].

        Please:
        1. Write the GitHub Actions workflow file. Pass the password from secrets as an environment variable. Upload the HTML report as an artifact even when tests fail.
        2. Write the CI parts of playwright.config.ts: retries, workers, reporter, trace and screenshot.
        3. Explain every line in one short sentence.
        4. Mark every action version and option I should check in the current Playwright and GitHub docs.
        5. List 3 mistakes that would leak the password, and how to avoid each.

        Never write a real password in any file.</pre>
            <ul class="ai-try-checks">
              <li>The password comes from <code>secrets</code>, not from the YAML or test code.</li>
              <li>The report upload runs even when tests fail.</li>
              <li>Retries are set for CI only, and traces are recorded on retry.</li>
              <li>It tells you to check action versions in the current docs.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> CI turns your tests into a safety net that runs on every change. Keep secrets in the CI secret store and always upload the report. Treat "flaky" as a warning to fix, not a pass.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Fixing Flaky Tests</h1>
        </div>
        <p class="lc-lead">A <strong>flaky test</strong> is a test that sometimes passes and sometimes fails, with no change to the code. Flaky tests waste time and teach people to ignore red results. In this lesson you will learn the common causes of flakiness and how to measure it. You will learn how to fix the real cause instead of hiding it. You will also use AI to read a failure log. You will follow Aisha as she fixes ShopNest's flaky basket test.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three columns joined by arrows. Column 1, common causes: timing and fixed waits, shared test data, test order, slow CI machines, animations and pop-ups. Column 2, measure: flaky rate equals flaky runs divided by all runs. ShopNest's basket test was 6 out of 50, which is 12 percent, and it never failed locally. Column 3, fix the cause: a web-first assertion, its own user per worker and an empty basket first. In the next 50 runs it was flaky 0 times. Below: retries hide flakiness, they do not fix it.">
            <defs><marker id="ta12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="24" width="230" height="210" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="36" y="50" font-weight="700" fill="#f9a8d4">1. Common causes</text>
              <text x="36" y="82">Timing and fixed waits</text>
              <text x="36" y="110">Shared test data</text>
              <text x="36" y="138">Test order</text>
              <text x="36" y="166">Slow CI machines</text>
              <text x="36" y="194">Animations and pop-ups</text>
              <rect x="265" y="24" width="230" height="210" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="281" y="50" font-weight="700" fill="#fcd34d">2. Measure</text>
              <text x="281" y="82">Flaky rate =</text>
              <text x="281" y="104">flaky runs / all runs</text>
              <text x="281" y="140" fill="#9b99b8">ShopNest basket test:</text>
              <text x="281" y="164" font-weight="700">6 / 50 = 12%</text>
              <text x="281" y="194" fill="#9b99b8">Never failed on a laptop</text>
              <rect x="510" y="24" width="230" height="210" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="526" y="50" font-weight="700" fill="#6ee7b7">3. Fix the cause</text>
              <text x="526" y="82">Web-first assertion</text>
              <text x="526" y="110">Own user per worker</text>
              <text x="526" y="138">Empty basket first</text>
              <text x="526" y="172" fill="#9b99b8">Next 50 runs:</text>
              <text x="526" y="196" font-weight="700">0 flaky</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta12a)">
                <line x1="251" y1="129" x2="261" y2="129"/>
                <line x1="496" y1="129" x2="506" y2="129"/>
              </g>
              <rect x="20" y="250" width="720" height="38" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="274" text-anchor="middle">Retries hide flakiness. They do not fix it.</text>
            </g>
          </svg>
          <figcaption>Find the cause, measure the flaky rate, fix the cause, then measure again.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why tests become flaky</h3>
          <p>A flaky test is worse than it looks. If a red result is often "just flaky", people re-run it and stop reading failures. Then a real bug slips through. Flakiness almost always has a real cause. Sometimes the cause is a bug in the app itself, such as a race between two requests.</p>
          <table class="lc-table">
            <thead><tr><th>Cause</th><th>ShopNest example</th><th>Usual fix</th></tr></thead>
            <tbody>
              <tr><td>Timing and fixed waits</td><td>The test waits 1 second, but the basket API is slower on the CI runner.</td><td>Use web-first assertions that keep checking, such as <code>toHaveText</code>.</td></tr>
              <tr><td>Shared test data</td><td>Two tests running at once use the same shopper account and basket.</td><td>Give each worker its own user. Set up and clean up data in each test.</td></tr>
              <tr><td>Test order</td><td>A test only passes if an earlier test already added an item.</td><td>Make every test set up what it needs. Run tests alone to check.</td></tr>
              <tr><td>Slow or busy machines</td><td>Staging is slow when another team runs a load test.</td><td>Agree a time slot, or give the test more time only where needed.</td></tr>
              <tr><td>Animations and pop-ups</td><td>A cookie banner sometimes covers the "Sign in" button.</td><td>Accept the banner in setup, or ask the developers for a test setting that hides it.</td></tr>
              <tr><td>Things you do not control</td><td>A third-party map widget loads slowly.</td><td>Do not test other companies' services. Test only what your team owns.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Measuring flakiness</h3>
          <p>With retries on, Playwright marks a test <strong>flaky</strong> when it fails first and then passes on a retry. The CI result is still green. So you must count flaky results on purpose.</p>
          <p><strong>Flaky rate</strong> = runs where the test was flaky / all runs. Aisha copies the results of the last 50 CI runs into a spreadsheet. Column B holds <code>passed</code>, <code>flaky</code> or <code>failed</code> for each run, in rows 2 to 51:</p>
          <pre><code>=COUNTIF(B2:B51,"flaky")/COUNTA(B2:B51)</code></pre>
          <p>The result is 6 / 50 = 12%. The basket test was flaky in 6 of the last 50 runs. It never failed on Aisha's laptop.</p>
          <p>Useful Playwright options (check the current CLI docs for details):</p>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>npx playwright test tests/basket.spec.ts --repeat-each=20</code></td><td>Runs each test in the file 20 times. Good for catching a failure that happens 1 time in 10.</td></tr>
              <tr><td><code>npx playwright test --workers=4</code></td><td>Runs more tests at the same time, like a busy CI run. Shared-data problems show up faster.</td></tr>
              <tr><td><code>npx playwright test --fail-on-flaky-tests</code></td><td>Fails the run if any test is flaky. Some teams use it so flakiness is never hidden.</td></tr>
            </tbody>
          </table>
          <p>Keep a small table of flaky tests: test name, flaky rate, cause, owner and date found. Measure again after every fix.</p>
        </div>
        <div class="lc-card">
          <h3>Reading the failure log and fixing the cause</h3>
          <p>Aisha opens the report from a CI run. Here is the shortened error from the first try:</p>
          <pre><code>1) [webkit] › tests/basket.spec.ts:18:5 › basket badge shows 4 after adding Basket A

            Error: expect(received).toBe(expected) // Object.is equality

            Expected: "4"
            Received: "3"

              24 |     await page.waitForTimeout(1000);
              25 |     const count = await page.getByTestId('basket-count').textContent();
            &gt; 26 |     expect(count).toBe('4');</code></pre>
          <p>In 5 of the 6 flaky runs the badge said "3". The last item was still being added when the test read the badge. <code>textContent()</code> reads the text once, and <code>toBe</code> does not retry. In the trace, the basket API answer arrives after the 1 second wait ends.</p>
          <p>In the sixth run the badge said "8". That is more than Basket A can hold. Leo spots the second cause: tests running in parallel all used <code>test.shopper1</code>. Another test was adding items to the same basket.</p>
          <p>The fix has two parts. First, a web-first assertion replaces the fixed wait:</p>
          <pre><code>// Before (flaky): reads once after a fixed wait
        await page.waitForTimeout(1000);
        const count = await page.getByTestId('basket-count').textContent();
        expect(count).toBe('4');

        // After: keeps checking until the text is 4, up to the 5 second default
        await expect(page.getByTestId('basket-count')).toHaveText('4');</code></pre>
          <p>Second, the test must not share a basket. This was one of the first tests Aisha wrote. It still signed in as <code>test.shopper1</code> through the login page. The newer tests already use the worker accounts and the <code>workerEmail()</code> helper. Each worker has a <code>parallelIndex</code>, a number from 0 up to the number of workers minus 1. So worker 0 signs in as <code>test.worker0</code>, worker 1 as <code>test.worker1</code>, and so on. Aisha moves the badge test to the same setup:</p>
          <pre><code>import { test, expect } from './fixtures';
        import { workerEmail } from './test-users';

        test.beforeEach(async ({ page }) =&gt; {
          // Sign in through the API as this worker's own account.
          // page.request shares cookies with the page, so the page is signed in too.
          const signIn = await page.request.post('/api/session', {
            data: { email: workerEmail(), password: process.env.SHOPNEST_TEST_PASSWORD },
          });
          await expect(signIn).toBeOK();
          // Start from an empty basket.
          await expect(await page.request.delete('/api/basket')).toBeOK();
        });</code></pre>
          <p>In the next 50 CI runs the test was flaky 0 times.</p>
          <p>Two "fixes" to avoid: raising the fixed wait to 5 seconds, and adding more retries. Both hide the problem. The test gets slower and the shared-basket bug stays.</p>
          <p>If you cannot fix a flaky test quickly, <strong>quarantine</strong> it: stop it running and track it. Playwright's <code>test.fixme()</code> skips a test, and an annotation can link the bug ticket. Set a date to fix it or delete it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Aisha and AI read a flaky failure</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Aisha checks the numbers">Her spreadsheet shows the basket badge test was flaky in 6 of the last 50 CI runs: 12%.</li>
              <li data-kind="user" data-label="Aisha asks AI">She pastes the error and the test code, with no passwords or internal links. "This test is flaky only in CI. List likely causes, most likely first."</li>
              <li data-kind="answer" data-label="AI replies">"The fixed 1 second wait plus <code>textContent()</code> reads the badge once. If the basket API is slower in CI, the badge still shows 3."</li>
              <li data-kind="warn" data-label="A tempting shortcut">The AI also suggests "increase the wait to 3 seconds". That makes the test slower and still fails on a slow day.</li>
              <li data-kind="check" data-label="Aisha checks the trace">In the trace viewer, the basket API answer arrives about 1.3 seconds after the click. The AI's main idea fits the evidence.</li>
              <li data-kind="thought" data-label="One run does not fit">But one run showed "8". A slow badge cannot explain more items than the test added.</li>
              <li data-kind="result" data-label="Leo finds cause two">The old test signed in as <code>test.shopper1</code>, like other tests running at the same time. The AI could not know this, because it only saw one test.</li>
              <li data-kind="check" data-label="Fix and measure">They add a web-first assertion, the worker's own account and an empty basket first. The next 50 runs show 0 flaky results.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to diagnose a flaky test from its error and code. Then check its ideas against the trace before you change anything.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior Playwright Test engineer. Use simple English.

        This test is flaky: it fails in CI about [6 times in 50 runs] and passes on retry. It never fails on my laptop. CI runs [2 workers and 3 browsers].

        Error from the first try:
        [Expected: "4"  Received: "3"  at expect(count).toBe('4')]

        Test code:
        [await page.getByRole('button', { name: 'Add to basket' }).click();
        await page.waitForTimeout(1000);
        const count = await page.getByTestId('basket-count').textContent();
        expect(count).toBe('4');]

        Test data: [all tests sign in as the same shopper account].

        Please:
        1. List the likely causes, most likely first. Give the evidence for each.
        2. For each cause, say what I should look for in the Playwright trace to confirm it.
        3. Suggest a fix for each cause, using current Playwright APIs only.
        4. Say which "fixes" would only hide the problem.
        5. Explain how I can measure that the fix worked.</pre>
            <ul class="ai-try-checks">
              <li>It names both the fixed wait and the shared account as causes.</li>
              <li>The fix uses a web-first assertion such as <code>toHaveText</code>, not a longer wait.</li>
              <li>It warns that more retries or longer waits only hide the problem.</li>
              <li>It suggests measuring the flaky rate again over many runs.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every flaky test has a cause. Measure the flaky rate, find the cause in the trace, fix that cause, and measure again. AI can suggest causes, but only the evidence can confirm them.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Reviewing AI-Written Test Code</h1>
        </div>
        <p class="lc-lead">AI can write a test in seconds, but a test that looks right is not always right. In this lesson you will learn a four-part review checklist: correctness, readability, real assertions and no secrets. You will review a real-looking AI draft line by line and see the fixed version. You will also learn how to prove that a test can fail. You will follow Aisha as she reviews a promo code test that Leo got from an AI assistant.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A review flow: an AI-written test goes to a review with 4 checks, then the tester sees it fail once on purpose, then it is merged to main. The 4 checks are: correct, meaning the methods are in the docs and the test matches the acceptance criteria; readable, meaning a clear test name and page objects with no copied code; real assertions, meaning every expect is awaited and checks real values; and no secrets, meaning no passwords or tokens and only made-up data.">
            <defs><marker id="ta13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="28" width="165" height="46" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="102" y="56">AI-written test</text>
              <rect x="205" y="28" width="165" height="46" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="287" y="56" font-weight="700">Review: 4 checks</text>
              <rect x="390" y="28" width="165" height="46" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="472" y="56">See it fail once</text>
              <rect x="575" y="28" width="165" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="657" y="56">Merge to main</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta13a)">
                <line x1="186" y1="51" x2="201" y2="51"/>
                <line x1="371" y1="51" x2="386" y2="51"/>
                <line x1="556" y1="51" x2="571" y2="51"/>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="287" y1="75" x2="287" y2="110"/>
                <line x1="105" y1="110" x2="654" y2="110"/>
                <line x1="105" y1="110" x2="105" y2="128"/>
                <line x1="288" y1="110" x2="288" y2="128"/>
                <line x1="471" y1="110" x2="471" y2="128"/>
                <line x1="654" y1="110" x2="654" y2="128"/>
              </g>
              <rect x="20" y="130" width="170" height="110" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="105" y="160" font-weight="700" fill="#93c5fd">1. Correct</text>
              <text x="105" y="190" font-size="12">Methods are in the docs</text>
              <text x="105" y="212" font-size="12">Matches the criteria</text>
              <rect x="203" y="130" width="170" height="110" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="288" y="160" font-weight="700" fill="#67e8f9">2. Readable</text>
              <text x="288" y="190" font-size="12">Clear test name</text>
              <text x="288" y="212" font-size="12">Page objects, no copies</text>
              <rect x="386" y="130" width="170" height="110" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="471" y="160" font-weight="700" fill="#6ee7b7">3. Real assertions</text>
              <text x="471" y="190" font-size="12">Every expect is awaited</text>
              <text x="471" y="212" font-size="12">Checks real values</text>
              <rect x="569" y="130" width="170" height="110" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="654" y="160" font-weight="700" fill="#f9a8d4">4. No secrets</text>
              <text x="654" y="190" font-size="12">No passwords or tokens</text>
              <text x="654" y="212" font-size="12">Only made-up data</text>
            </g>
          </svg>
          <figcaption>Every AI-written test passes four checks and fails once on purpose before it is merged.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The review checklist</h3>
          <p>Treat AI-written test code like code from a new team member. It may be good. It may also be wrong in ways that are hard to see. ShopNest reviews every test in a <strong>pull request</strong> (a request to merge a change into the main code). Nobody merges their own test without a second person's review.</p>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Questions to ask</th></tr></thead>
            <tbody>
              <tr><td><strong>1. Correctness</strong></td><td>Is every method in the current Playwright docs? Do the locators match the real page? Does the test check what the acceptance criteria (the agreed rules for "done") say? Is the setup right, for example a signed-in user with the right basket?</td></tr>
              <tr><td><strong>2. Readability</strong></td><td>Does the test name say the behaviour, such as "TESTSAVE10 takes 10% off the subtotal"? Does it use the team's page objects instead of copied locators? Could a new tester follow it?</td></tr>
              <tr><td><strong>3. Real assertions</strong></td><td>Is there at least one <code>expect</code>? Is every web-first assertion awaited? Does it check real values, such as "£14.79", not only "something is visible"? Could it pass if the feature were broken?</td></tr>
              <tr><td><strong>4. No secrets</strong></td><td>No passwords, tokens or API keys in the code. No real customer data. Secrets come from environment variables.</td></tr>
              <tr><td>Also check</td><td>No fixed waits. No <code>test.only</code> left in. No full URLs: use the <code>baseURL</code> from the config. The test sets up its own data and does not share a basket with other tests.</td></tr>
            </tbody>
          </table>
          <p>A lint tool helps with one common mistake. The Playwright docs suggest the <code>@typescript-eslint/no-floating-promises</code> rule. It warns when you forget <code>await</code> before a Playwright call.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: an AI-written promo code test</h3>
          <p>Leo asks an AI assistant for a test of the staging-only promo code <code>TESTSAVE10</code> (10% off the subtotal). Here is the draft he puts in a pull request:</p>
          <pre><code>import { test, expect } from '@playwright/test';

        test.only('promo', async ({ page }) =&gt; {
          await page.goto('https://staging.shopnest.test/login');
          await page.getByLabel('Email address').fill('test.shopper1@shopnest.test');
          await page.getByLabel('Password').fill('Grocer2026!');
          await page.getByRole('button', { name: 'Sign in' }).click();
          await page.goto('https://staging.shopnest.test/basket');
          await page.getByLabel('Promo code').fill('TESTSAVE10');
          await page.getByRole('button', { name: 'Apply' }).click();
          await page.waitForTimeout(2000);
          expect(page.getByTestId('basket-total')).toBeTruthy();
          expect(page.getByText('Discount applied')).toBeVisible();
        });</code></pre>
          <p>It may even run green. Aisha reviews it with the checklist and finds these problems:</p>
          <table class="lc-table">
            <thead><tr><th>Line</th><th>Problem</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td><code>test.only</code></td><td>Only this test would run. In CI, <code>forbidOnly</code> fails the run.</td><td>Use <code>test</code>.</td></tr>
              <tr><td><code>'promo'</code></td><td>The name does not say what is checked.</td><td>Name the behaviour and the expected result.</td></tr>
              <tr><td><code>fill('Grocer2026!')</code></td><td>A password in the code. It would be in the code history for ever.</td><td>Read it from <code>SHOPNEST_TEST_PASSWORD</code>. If it was a real password, change it now.</td></tr>
              <tr><td>Full URLs</td><td>The test ignores <code>baseURL</code>, so it cannot run against another environment.</td><td>Use paths such as <code>/basket</code>.</td></tr>
              <tr><td>No items</td><td>The basket may be empty. 10% of nothing proves nothing.</td><td>Add known products first.</td></tr>
              <tr><td><code>test.shopper1</code></td><td>Shared with the login tests and other runs.</td><td>Use this worker's own account and empty its basket first.</td></tr>
              <tr><td><code>waitForTimeout(2000)</code></td><td>A fixed wait: slow and still flaky.</td><td>Use web-first assertions.</td></tr>
              <tr><td><code>toBeTruthy()</code> on a locator</td><td>A locator object always exists, so this always passes.</td><td>Check the real total with <code>toHaveText</code>.</td></tr>
              <tr><td>No <code>await</code> on <code>toBeVisible()</code></td><td>The test can end before the check finishes. Depending on the Playwright version, a failure may be missed.</td><td>Always <code>await expect(...)</code> for locator checks.</td></tr>
              <tr><td><code>'Discount applied'</code></td><td>The AI invented this text. The page does not show it.</td><td>Check the real discount line.</td></tr>
            </tbody>
          </table>
          <p>The AI never saw the basket page, so it guessed. Neither of its two checks proves that the discount works.</p>
        </div>
        <div class="lc-card">
          <h3>The reviewed test, and proving it can fail</h3>
          <p>Aisha rewrites the test with the team's page objects. She uses the basket page object's <code>discount</code> locator (test ID <code>basket-discount</code>). The basket: 10 x Bananas (6 pack) at £1.20 = £12.00. 10% off = £1.20. Delivery is £3.99 because the subtotal is under £40.00. Total = £12.00 - £1.20 + £3.99 = £14.79.</p>
          <pre><code>import { test, expect } from './fixtures';

        // beforeEach (same as the other basket tests): sign in through the API
        // with workerEmail() and empty the basket.

        test('TESTSAVE10 takes 10% off the subtotal', async ({ page, productListPage, basketPage }) =&gt; {
          await productListPage.goto('fruit');
          await productListPage.addToBasket('Bananas (6 pack)');
          await expect(productListPage.basketCount).toHaveText('1');

          await basketPage.goto();
          await basketPage.setQuantity('Bananas (6 pack)', 10);
          await expect(basketPage.subtotal).toHaveText('£12.00');

          await page.getByLabel('Promo code').fill('TESTSAVE10');
          await page.getByRole('button', { name: 'Apply' }).click();
          await expect(basketPage.discount).toHaveText('-£1.20');
          await expect(basketPage.total).toHaveText('£14.79');
        });</code></pre>
          <p>Notice the check on <code>£12.00</code> before the code is applied. Without it, a wrong quantity could hide a wrong discount.</p>
          <p>Next she proves the test can fail. She changes the expected total to <code>£14.80</code> and runs it. It fails and shows the real value, <code>£14.79</code>. She changes it back. She also asks Leo to break the discount on his local copy, and the test fails there too.</p>
          <p>You can ask AI to review too. It is a useful second pair of eyes, but it may miss problems or agree too easily. A person approves the pull request.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is this test OK?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Review this Playwright Test (TypeScript) as a strict senior reviewer.
        Use this checklist: correctness (methods in current docs, locators,
        setup), readability (name, page objects), real assertions (awaited,
        checks real values, could it pass if the feature is broken?), no secrets,
        no fixed waits, no test.only, no full URLs, no shared test data.
        Expected result from the story: [total £14.79 after TESTSAVE10].
        Give a table: line, problem, severity (must fix / nice to fix), fix.
        [paste the test, with no passwords or real customer data]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: must fix or fine to merge?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Aisha is reviewing AI-written lines in a pull request. Sort each line.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Must fix before merge"></div>
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine to merge"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fix" data-why="A locator object always exists, so this check can never fail.">expect(page.getByTestId('basket-total')).toBeTruthy();</li>
              <li data-bucket="ok" data-why="It is awaited, it waits for the page, and it checks the real expected value.">await expect(basketPage.total).toHaveText('£14.79');</li>
              <li data-bucket="fix" data-why="test.only makes the suite skip every other test. CI fails the run because of forbidOnly.">test.only('promo', async ({ page }) =&gt; { … });</li>
              <li data-bucket="ok" data-why="The password comes from an environment variable, not from the code.">fill(process.env.SHOPNEST_TEST_PASSWORD!)</li>
              <li data-bucket="fix" data-why="A fixed wait is slow and still fails when the page is slower than 2 seconds.">await page.waitForTimeout(2000);</li>
              <li data-bucket="ok" data-why="The name says the behaviour and the expected result.">test('TESTSAVE10 takes 10% off the subtotal', …)</li>
              <li data-bucket="fix" data-why="Without await, the test can finish before the check runs, so a failure can be missed.">expect(page.getByText('Discount applied')).toBeVisible();</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a test against the four-part checklist. Then check if it found every problem Aisha found.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a strict senior test automation reviewer who knows Playwright Test well. Use simple English.

        Review this AI-written test for [ShopNest, a made-up grocery app]. The rule it should check: [promo code TESTSAVE10 takes 10% off the basket subtotal. 10 x Bananas at £1.20 = £12.00, discount £1.20, delivery £3.99, total £14.79].

        test.only('promo', async ({ page }) =&gt; {
          await page.goto('https://staging.shopnest.test/basket');
          await page.getByLabel('Promo code').fill('TESTSAVE10');
          await page.getByRole('button', { name: 'Apply' }).click();
          await page.waitForTimeout(2000);
          expect(page.getByTestId('basket-total')).toBeTruthy();
        });

        Please:
        1. Review it against 4 areas: correctness, readability, real assertions, no secrets. Also check waits, test.only, full URLs and test data.
        2. Give a table: line, problem, must fix or nice to fix, fix.
        3. Rewrite the test with web-first assertions that check real amounts.
        4. Explain how I can prove the new test can fail.
        5. Check the maths in the rule above and say if it is right.</pre>
            <ul class="ai-try-checks">
              <li>It flags <code>toBeTruthy()</code> on a locator as a check that always passes.</li>
              <li>It flags <code>test.only</code>, the fixed wait, the full URL and the empty basket.</li>
              <li>The rewrite checks £14.79 with an awaited <code>toHaveText</code>.</li>
              <li>It suggests changing an expected value or breaking the feature to see the test fail.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A green AI-written test proves nothing until you have read every line and seen it fail. Check four things every time: correct, readable, real assertions and no secrets.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Maintaining an Automation Suite</h1>
        </div>
        <p class="lc-lead">An automation suite is never finished. The app changes, so the tests must change too. In this lesson you will learn how to update tests after a UI change. You will learn how to remove tests that no longer earn their place. You will also learn simple metrics that show if the suite is healthy. You will work them out in a spreadsheet. You will follow Aisha and Sam through ShopNest's monthly suite review for September 2026.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A dashboard for ShopNest's suite in September 2026 with five tiles. Run pass rate 92.5 percent, 148 of 160 runs. Flaky run rate 2.5 percent, 4 of 160 runs. Defect leakage 7.7 percent, 1 of 13 bugs. Automated coverage 66.7 percent, 12 of 18 criteria. Mean time to fix a broken test, 2 hours, over 3 broken tests. Below, the maintenance cycle: a UI change, update the page object, remove low-value tests, review the metrics each month, and back to the start.">
            <defs><marker id="ta14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">ShopNest suite health, September 2026</text>
              <rect x="20" y="36" width="136" height="104" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="88" y="60" font-size="12" fill="#9b99b8">Run pass rate</text>
              <text x="88" y="95" font-size="22" font-weight="700">92.5%</text>
              <text x="88" y="124" font-size="12" fill="#9b99b8">148 / 160 runs</text>
              <rect x="166" y="36" width="136" height="104" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="234" y="60" font-size="12" fill="#9b99b8">Flaky run rate</text>
              <text x="234" y="95" font-size="22" font-weight="700">2.5%</text>
              <text x="234" y="124" font-size="12" fill="#9b99b8">4 / 160 runs</text>
              <rect x="312" y="36" width="136" height="104" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="60" font-size="12" fill="#9b99b8">Defect leakage</text>
              <text x="380" y="95" font-size="22" font-weight="700">7.7%</text>
              <text x="380" y="124" font-size="12" fill="#9b99b8">1 of 13 bugs</text>
              <rect x="458" y="36" width="136" height="104" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="526" y="60" font-size="12" fill="#9b99b8">Auto coverage</text>
              <text x="526" y="95" font-size="22" font-weight="700">66.7%</text>
              <text x="526" y="124" font-size="12" fill="#9b99b8">12 / 18 criteria</text>
              <rect x="604" y="36" width="136" height="104" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="672" y="60" font-size="12" fill="#9b99b8">Time to fix a test</text>
              <text x="672" y="95" font-size="22" font-weight="700">2 h</text>
              <text x="672" y="124" font-size="12" fill="#9b99b8">mean of 3 fixes</text>
              <text x="380" y="176" fill="#9b99b8">The maintenance cycle</text>
              <rect x="20" y="192" width="165" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="102" y="225">A UI change</text>
              <rect x="205" y="192" width="165" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="287" y="216">Update the</text>
              <text x="287" y="234">page object</text>
              <rect x="390" y="192" width="165" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="472" y="216">Remove</text>
              <text x="472" y="234">low-value tests</text>
              <rect x="575" y="192" width="165" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="657" y="216">Review metrics</text>
              <text x="657" y="234">each month</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta14a)">
                <line x1="186" y1="220" x2="201" y2="220"/>
                <line x1="371" y1="220" x2="386" y2="220"/>
                <line x1="556" y1="220" x2="571" y2="220"/>
                <polyline points="657,249 657,272 102,272 102,253"/>
              </g>
            </g>
          </svg>
          <figcaption>A small set of metrics shows the suite's health. Updating and pruning tests is a regular cycle, not a one-off clean-up.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Updating tests after a UI change</h3>
          <p>In September a release changed the login page link "Forgot password?" to "Reset your password". The change was planned in ticket SN-1042. Three login tests failed in all 3 browsers: 9 failed results.</p>
          <p>Aisha does not update the tests straight away. She follows four steps:</p>
          <ol class="lc-list">
            <li><strong>Check the change was intended.</strong> She reads ticket SN-1042. The new text was agreed by the designer. So the tests are out of date, not the app.</li>
            <li><strong>Update one place.</strong> All three tests use the <code>forgotPasswordLink</code> locator in the <code>LoginPage</code> page object, so she changes one line.</li>
            <li><strong>Run the affected tests</strong> in all three browsers.</li>
            <li><strong>Get a review</strong> in a pull request, like any other code change.</li>
          </ol>
          <pre><code>// tests/pages/login-page.ts (one line changed)
        this.forgotPasswordLink = page.getByRole('link', { name: 'Reset your password' });</code></pre>
          <p>Without the page object, the same locator would be copied in three tests. That means three edits and three chances to miss one.</p>
          <p>A different case: if a <strong>test ID</strong> such as <code>product-card</code> disappears, it is usually an accident. Test IDs are an agreement between developers and testers. Aisha asks Leo to put it back instead of changing the tests.</p>
          <p>AI can help sort many failures quickly. Paste the release notes, the failure messages and the page object, with no secrets.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Fix my broken tests.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>After a release, these Playwright tests fail: [test names and errors].
        Release notes: [the "Forgot password?" link is now "Reset your password"].
        Page object: [paste login-page.ts].
        For each failure, say if it is (a) an intended UI change, so update the
        test, or (b) a possible app bug, so do not touch the test. Give your
        evidence. Suggest the smallest change, in the page object if possible.</code></pre>
          <p>The AI sorts and suggests. Aisha decides, because only the ticket and the team know what was intended.</p>
        </div>
        <div class="lc-card">
          <h3>Removing tests that do not earn their place</h3>
          <p>Every test costs time to run and to maintain. A test that never finds bugs and often breaks costs more than it gives. Each month Aisha looks for these:</p>
          <table class="lc-table">
            <thead><tr><th>Sign of a low-value test</th><th>ShopNest example</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>Checks a feature that changes all the time</td><td>"Seasonal banner shows the autumn offer" broke 4 times in September</td><td>Remove. Check it by hand.</td></tr>
              <tr><td>Duplicates another test</td><td>A second copy of "valid sign in" inside an old checkout file</td><td>Remove the copy.</td></tr>
              <tr><td>Checks a removed feature</td><td>A test for a "click and collect" option the business stopped</td><td>Remove.</td></tr>
              <tr><td>Skipped for a long time</td><td>A <code>test.fixme()</code> with no ticket, skipped since June</td><td>Fix it this sprint, or remove it.</td></tr>
              <tr><td>Slow UI test for a rule with no screen logic</td><td>A UI test that only checks the £3.99 delivery charge</td><td>Move it down the pyramid to an API test.</td></tr>
            </tbody>
          </table>
          <p>Removing a test is a decision, not a tidy-up. Sam agrees each removal. Aisha notes the reason in the pull request so the team can find it later.</p>
          <p>Other regular jobs:</p>
          <ul class="lc-list">
            <li>Weekly: check the flaky list and fix the worst one.</li>
            <li>Monthly: update Playwright to a recent version, so the tests run on recent browsers. Read the release notes first.</li>
            <li>Each quarter: review the automation candidate list with Sam and Leo.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Metrics that show the suite's health</h3>
          <p>A <strong>metric</strong> is a number you track over time. Each one needs a clear definition, or people will count different things. Here are ShopNest's numbers for September 2026. All are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>A: Metric</th><th>B: Value or formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>CI runs in September</td><td>160</td><td></td></tr>
              <tr><td>3</td><td>Green runs (no failed test)</td><td>148</td><td></td></tr>
              <tr><td>4</td><td>Runs with at least one flaky result</td><td>4</td><td></td></tr>
              <tr><td>5</td><td>Login and basket bugs found before release</td><td>12</td><td></td></tr>
              <tr><td>6</td><td>Login and basket bugs found after release</td><td>1</td><td></td></tr>
              <tr><td>7</td><td>Acceptance criteria for login and basket</td><td>18</td><td></td></tr>
              <tr><td>8</td><td>Criteria with at least one automated test</td><td>12</td><td></td></tr>
              <tr><td>9</td><td>Run pass rate</td><td><code>=B3/B2</code></td><td>92.5%</td></tr>
              <tr><td>10</td><td>Flaky run rate</td><td><code>=B4/B2</code></td><td>2.5%</td></tr>
              <tr><td>11</td><td>Defect leakage</td><td><code>=B6/(B5+B6)</code></td><td>7.7%</td></tr>
              <tr><td>12</td><td>Automated coverage of criteria</td><td><code>=B8/B7</code></td><td>66.7%</td></tr>
              <tr><td>13</td><td>Hours to fix each broken test</td><td>1, 2 and 3 in B13, C13, D13</td><td></td></tr>
              <tr><td>14</td><td>Mean time to fix a broken test</td><td><code>=AVERAGE(B13:D13)</code></td><td>2 hours</td></tr>
            </tbody>
          </table>
          <p>Format rows 9 to 12 as percentages. What the numbers mean:</p>
          <ul class="lc-list">
            <li><strong>Run pass rate</strong>: the share of CI runs with no failed test. Of the 12 red runs, 9 caught real bugs and 3 were broken tests. A red run that catches a bug is the suite doing its job.</li>
            <li><strong>Flaky run rate</strong>: the share of runs with at least one flaky result. Aim for it to fall over time.</li>
            <li><strong>Defect leakage</strong> (also called escape rate): bugs found after release divided by all bugs found, before and after release. Of the 12 found before release, automation found 9 and Aisha's exploratory testing found 3.</li>
            <li><strong>Automated coverage</strong>: the share of acceptance criteria with at least one automated test. The other 6 are tested by hand. Coverage shows what is tested, not how well.</li>
            <li><strong>Mean time to fix</strong>: how long a broken test stays broken. Long times mean people stop trusting the suite.</li>
          </ul>
          <p>Use metrics to ask questions, not to judge people. A 100% pass rate can simply mean the tests check too little. If you ask AI to summarise your metrics, give it the definitions and the raw numbers. Then check every percentage yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: keep, update or remove?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Aisha's September review. Sort each ShopNest test into the right action.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep as it is"></div>
              <div data-sorter-target="bucket" data-bucket="update" data-label="Update it"></div>
              <div data-sorter-target="bucket" data-bucket="remove" data-label="Remove it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="It covers a high-risk feature, it is stable and it caught real bugs.">"Sign in with a valid account": stable, and it caught 2 real bugs this quarter.</li>
              <li data-bucket="update" data-why="The change was intended (ticket SN-1042), so update the locator in the page object.">"Forgot password link opens the reset page": fails since the link text changed to "Reset your password".</li>
              <li data-bucket="remove" data-why="It changes every week. Checking it by hand costs less than fixing the test.">"Seasonal banner shows the autumn offer": broke 4 times in September.</li>
              <li data-bucket="remove" data-why="A second copy adds run time and upkeep but no new information.">A second copy of the valid sign-in test inside an old checkout file.</li>
              <li data-bucket="keep" data-why="It checks an important money rule at the boundary and is stable.">"Free delivery from £40.00": stable, never flaky.</li>
              <li data-bucket="update" data-why="Class names change in redesigns. Switch to a role locator so it survives the next one.">A basket test that still finds the "Checkout" button by the CSS class <code>.button-main</code>.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to run a monthly health review of your suite from your numbers. Then check its maths and its suggestions.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced QA lead. Use simple English.

        Here are made-up numbers for my automation suite for [September 2026], for [ShopNest login and basket tests]:
        - CI runs: [160]. Runs with no failed test: [148]. Runs with at least one flaky result: [4].
        - Of the red runs: [9 caught real bugs, 3 were broken tests].
        - Bugs found before release: [12]. Bugs found after release: [1].
        - Acceptance criteria: [18]. Criteria with an automated test: [12].
        - Hours to fix each broken test: [1, 2, 3].
        - Tests that broke most often: [seasonal banner test, 4 times].

        Please:
        1. Calculate run pass rate, flaky run rate, defect leakage, automated coverage and mean time to fix. Show each formula.
        2. Give the spreadsheet formula for each, if the values are in column B.
        3. Say what each number does and does not tell me.
        4. Suggest 3 maintenance actions for next month, most useful first.
        5. List any number I should check before I share this report.</pre>
            <ul class="ai-try-checks">
              <li>The percentages match yours: 92.5%, 2.5%, 7.7% and 66.7%, and the mean is 2 hours.</li>
              <li>Defect leakage divides by all bugs found, before and after release.</li>
              <li>It says coverage shows what is tested, not how well.</li>
              <li>Its actions are specific, such as removing or fixing the banner test.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A suite stays useful only if you look after it. Check that a change was intended before you update a test. Remove tests that cost more than they give. Track a few clearly defined metrics to see where to act.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Capstone: Automating ShopNest Login and Basket Tests</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole course together on one real piece of work. Sam asks Aisha to deliver ShopNest's first automated pack for login and basket. You will build five things: a candidate list, page objects, five tests, a CI plan and a flaky-test fix. At every step AI drafts and Aisha checks against the real page and the requirements. Use this lesson as a model for your own first automation project.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Five capstone steps joined by arrows. 1, candidate list: score the checks and choose 5 tests. 2, page objects: login, product list and basket. 3, five tests: 2 login tests and 3 basket tests. 4, CI plan: every pull request plus a nightly run. 5, flaky fix: find the cause and measure again. Below: at every step AI drafts and Aisha checks against the real page and the requirements. Done when 15 results are green in CI, which is 5 tests times 3 browsers, with 0 flaky results in 50 runs.">
            <defs><marker id="ta15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="28" width="132" height="96" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="86" y="54" font-weight="700">1. Candidates</text>
              <text x="86" y="80" font-size="12" fill="#9b99b8">score the checks</text>
              <text x="86" y="100" font-size="12" fill="#9b99b8">choose 5 tests</text>
              <rect x="168" y="28" width="132" height="96" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="234" y="54" font-weight="700">2. Page objects</text>
              <text x="234" y="80" font-size="12" fill="#9b99b8">login, products</text>
              <text x="234" y="100" font-size="12" fill="#9b99b8">and basket</text>
              <rect x="316" y="28" width="132" height="96" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="382" y="54" font-weight="700">3. Five tests</text>
              <text x="382" y="80" font-size="12" fill="#9b99b8">2 login tests</text>
              <text x="382" y="100" font-size="12" fill="#9b99b8">3 basket tests</text>
              <rect x="464" y="28" width="132" height="96" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="530" y="54" font-weight="700">4. CI plan</text>
              <text x="530" y="80" font-size="12" fill="#9b99b8">every pull request</text>
              <text x="530" y="100" font-size="12" fill="#9b99b8">plus a nightly run</text>
              <rect x="612" y="28" width="132" height="96" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="678" y="54" font-weight="700">5. Flaky fix</text>
              <text x="678" y="80" font-size="12" fill="#9b99b8">find the cause</text>
              <text x="678" y="100" font-size="12" fill="#9b99b8">measure again</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ta15a)">
                <line x1="153" y1="76" x2="164" y2="76"/>
                <line x1="301" y1="76" x2="312" y2="76"/>
                <line x1="449" y1="76" x2="460" y2="76"/>
                <line x1="597" y1="76" x2="608" y2="76"/>
              </g>
              <rect x="20" y="148" width="724" height="44" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="382" y="175">At every step: AI drafts, Aisha checks against the real page and the requirements</text>
              <rect x="20" y="208" width="724" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="382" y="235" font-weight="700" fill="#6ee7b7">Done when: 15 results green in CI (5 tests x 3 browsers), 0 flaky in 50 runs</text>
            </g>
          </svg>
          <figcaption>The capstone in five steps, with a person checking every AI draft and a clear "done" rule.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Part 1: the brief and the candidate list</h3>
          <p>Sam's brief: "Automate the most important login and basket checks. Run them on every pull request. No secrets in the code. No flaky tests." The manual pack has 40 test cases and takes about 2 hours per release.</p>
          <p>Aisha scores each candidate for risk, repetition and stability, from 1 (low) to 3 (high). A total of 7 or more means "automate first".</p>
          <table class="lc-table">
            <thead><tr><th>Candidate</th><th>Score</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>Sign in with a valid account</td><td>9</td><td>Capstone test 1</td></tr>
              <tr><td>Wrong password shows an error</td><td>9</td><td>Capstone test 2</td></tr>
              <tr><td>Add to basket updates the count badge</td><td>9</td><td>Capstone test 3</td></tr>
              <tr><td>Change quantity updates the subtotal</td><td>8</td><td>Capstone test 4</td></tr>
              <tr><td>Free delivery from £40.00</td><td>8</td><td>Capstone test 5</td></tr>
              <tr><td>Account locks after 5 wrong passwords</td><td>7</td><td>Next, with its own account</td></tr>
              <tr><td>Promo code TESTSAVE10</td><td>6</td><td>Later</td></tr>
              <tr><td>New checkout page design</td><td>4</td><td>Manual and exploratory</td></tr>
            </tbody>
          </table>
          <p>Why is the lockout test not in the first five? It locks the account for 15 minutes. So it needs its own account (<code>test.locked</code>) and a plan for the lock. Aisha leaves it for the next round. The checkout design keeps changing, so it stays manual.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Which tests should I automate?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Score these 8 test case titles for risk, repetition and stability,
        1 to 3 each, and add up the total. 7 or more = automate first.
        Give one short reason per score. Flag any test that changes shared
        state (such as locking an account), because it needs special test data.
        [paste test case titles only, no customer data]</code></pre>
          <p>Aisha reviews every score with Sam and Leo. The AI does not know which features matter most to ShopNest's shoppers.</p>
        </div>
        <div class="lc-card">
          <h3>Part 2: page objects and the five tests</h3>
          <p>The tests use three page objects in <code>tests/pages/</code>. A fixtures file, <code>tests/fixtures.ts</code>, gives each test ready-made <code>loginPage</code>, <code>productListPage</code> and <code>basketPage</code> objects.</p>
          <table class="lc-table">
            <thead><tr><th>Page object</th><th>Locators</th><th>Actions</th></tr></thead>
            <tbody>
              <tr><td><code>LoginPage</code></td><td>email, password, "Sign in" button, error alert</td><td><code>goto()</code>, <code>signIn(email, password)</code></td></tr>
              <tr><td><code>ProductListPage</code></td><td>product cards, basket count badge</td><td><code>goto(aisle)</code>, <code>addToBasket(productName)</code></td></tr>
              <tr><td><code>BasketPage</code></td><td>heading, basket lines, subtotal, delivery, discount, total, empty message</td><td><code>goto()</code>, <code>setQuantity(productName, quantity)</code>, <code>removeLine(productName)</code></td></tr>
            </tbody>
          </table>
          <p>Page objects hold locators and actions. The assertions stay in the tests, so you can read what each test checks. Here is <code>BasketPage</code>, the same class as in the page objects lesson:</p>
          <pre><code>import { type Page, type Locator } from '@playwright/test';

        export class BasketPage {
          readonly page: Page;
          readonly heading: Locator;
          readonly subtotal: Locator;
          readonly delivery: Locator;
          readonly discount: Locator;
          readonly total: Locator;
          readonly emptyMessage: Locator;

          constructor(page: Page) {
            this.page = page;
            this.heading = page.getByRole('heading', { name: 'Your basket' });
            this.subtotal = page.getByTestId('basket-subtotal');
            this.delivery = page.getByTestId('basket-delivery');
            this.discount = page.getByTestId('basket-discount');
            this.total = page.getByTestId('basket-total');
            this.emptyMessage = page.getByText('Your basket is empty.');
          }

          async goto() {
            await this.page.goto('/basket');
          }

          line(productName: string): Locator {
            return this.page.getByTestId('basket-line').filter({ hasText: productName });
          }

          async setQuantity(productName: string, quantity: number) {
            await this.line(productName).getByLabel('Quantity').fill(String(quantity));
          }

          async removeLine(productName: string) {
            await this.line(productName).getByRole('button', { name: 'Remove' }).click();
          }
        }</code></pre>
          <p>The two login tests, in <code>tests/login.spec.ts</code>. They do not change a basket, so they use <code>test.shopper1</code>:</p>
          <pre><code>import { test, expect } from './fixtures';

        test.describe('login', () =&gt; {
          test('valid account goes to the shop', async ({ page, loginPage }) =&gt; {
            await loginPage.goto();
            await loginPage.signIn('test.shopper1@shopnest.test', process.env.SHOPNEST_TEST_PASSWORD!);
            await expect(page).toHaveURL(/\/shop/);
            await expect(page.getByRole('heading', { name: 'Welcome back, Test Shopper' })).toBeVisible();
          });

          test('wrong password shows an error', async ({ page, loginPage }) =&gt; {
            await loginPage.goto();
            await loginPage.signIn('test.shopper1@shopnest.test', 'not-the-right-password');
            await expect(loginPage.errorAlert).toHaveText('Email or password is incorrect.');
            await expect(page).toHaveURL(/\/login/);
          });
        });</code></pre>
          <p>Two basket tests, in <code>tests/basket.spec.ts</code>. Each worker signs in with its own account and starts from an empty basket:</p>
          <pre><code>import { test, expect } from './fixtures';
        import { workerEmail } from './test-users';

        test.describe('basket', () =&gt; {
          test.beforeEach(async ({ page }) =&gt; {
            const signIn = await page.request.post('/api/session', {
              data: { email: workerEmail(), password: process.env.SHOPNEST_TEST_PASSWORD },
            });
            await expect(signIn).toBeOK();
            await expect(await page.request.delete('/api/basket')).toBeOK();
          });

          test('basket badge shows 4 after adding Basket A', async ({ productListPage }) =&gt; {
            await productListPage.goto('fruit');
            await productListPage.addToBasket('Bananas (6 pack)');
            await expect(productListPage.basketCount).toHaveText('1');
            await productListPage.addToBasket('Bananas (6 pack)');
            await expect(productListPage.basketCount).toHaveText('2');
            await productListPage.goto('dairy');
            await productListPage.addToBasket('Semi-skimmed milk 2 litres');
            await expect(productListPage.basketCount).toHaveText('3');
            await productListPage.addToBasket('Free-range eggs (12)');
            await expect(productListPage.basketCount).toHaveText('4');
          });

          test('changing quantity updates the subtotal', async ({ productListPage, basketPage }) =&gt; {
            await productListPage.goto('fruit');
            await productListPage.addToBasket('Bananas (6 pack)');
            await expect(productListPage.basketCount).toHaveText('1');
            await basketPage.goto();
            await expect(basketPage.subtotal).toHaveText('£1.20');
            await basketPage.setQuantity('Bananas (6 pack)', 3);
            await expect(basketPage.subtotal).toHaveText('£3.60');
          });
        });</code></pre>
          <p>Notice the badge check after every add. It confirms the item was saved before the test moves to another page. Leaving too early could lose an item and cause a flaky failure.</p>
          <p>The fifth test, free delivery from £40.00, is the data-driven <code>tests/delivery.spec.ts</code>. It runs one test per case:</p>
          <table class="lc-table">
            <thead><tr><th>Basket</th><th>Subtotal</th><th>Delivery</th><th>Total</th></tr></thead>
            <tbody>
              <tr><td>9 x Ground coffee + 1 x Cheddar</td><td>£39.75</td><td>£3.99</td><td>£43.74</td></tr>
              <tr><td>10 x Ground coffee</td><td>£40.00</td><td>Free</td><td>£40.00</td></tr>
              <tr><td>10 x Ground coffee + 1 x Bananas</td><td>£41.20</td><td>Free</td><td>£41.20</td></tr>
            </tbody>
          </table>
          <p>Aisha checks every expected value against the delivery rule, not against what the app shows today. Before merging, she breaks each test once by changing an expected value, and sees it fail.</p>
        </div>
        <div class="lc-card">
          <h3>Part 3: the CI plan</h3>
          <p>The tests run in GitHub Actions with the workflow from the CI lesson. Aisha writes the plan down, so everyone knows what happens when a test fails.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>ShopNest plan</th></tr></thead>
            <tbody>
              <tr><td>When do tests run?</td><td>On every pull request and push to <code>main</code>, plus a nightly run at 02:00 UTC.</td></tr>
              <tr><td>Where?</td><td>Against <code>https://staging.shopnest.test</code>, never against live customers.</td></tr>
              <tr><td>Which browsers?</td><td>Chromium, Firefox and WebKit. 5 tests x 3 browsers = 15 results per run for this pack.</td></tr>
              <tr><td>Secrets?</td><td><code>SHOPNEST_TEST_PASSWORD</code> as a GitHub Actions secret. Never in code, logs or AI prompts.</td></tr>
              <tr><td>Retries and evidence?</td><td>2 retries in CI. Trace on first retry. Screenshot on failure. HTML report kept for 30 days.</td></tr>
              <tr><td>Who looks at failures?</td><td>Aisha checks red runs the same working day. Leo helps when the app is at fault.</td></tr>
              <tr><td>What about flaky results?</td><td>Any flaky result gets a ticket. Fix it within a week, or quarantine it with <code>test.fixme()</code> and a link to the ticket.</td></tr>
              <tr><td>Known risk</td><td>The wrong-password test adds a failed try on <code>test.shopper1</code> in each of the 3 browsers. Retries and overlapping runs add more. Five in a row lock the account for 15 minutes. The valid sign-in test resets the count in each browser. If "Too many attempts" ever appears, move the login tests to accounts of their own, one per browser.</td></tr>
            </tbody>
          </table>
          <p>The nightly run is a small addition to the workflow's <code>on:</code> section. By default, GitHub reads these times as UTC. You can also set a time zone. Check the GitHub docs for details:</p>
          <pre><code>on:
          push:
            branches: [ main ]
          pull_request:
            branches: [ main ]
          schedule:
            - cron: '0 2 * * *'</code></pre>
        </div>
        <div class="lc-card">
          <h3>Part 4: the flaky-test fix and sign-off</h3>
          <p>Before sign-off, Aisha checks the last 50 CI runs. The badge test was flaky 6 times: a flaky rate of 12%. The trace showed two causes:</p>
          <ul class="lc-list">
            <li>The old test waited a fixed 1 second, then read the badge once with <code>textContent()</code> and <code>toBe('4')</code>. The basket API is slower on the CI runner.</li>
            <li>The old test signed in as <code>test.shopper1</code>, so tests running at the same time shared one basket.</li>
          </ul>
          <p>The fixed version is the one you saw above. It checks the badge with <code>await expect(...).toHaveText('4')</code> after each add. It uses the worker's own account and empties the basket in <code>beforeEach</code>. In the next 50 CI runs it was flaky 0 times.</p>
          <p>Sign-off checklist for the pack:</p>
          <ol class="lc-list">
            <li>Every test passes the review checklist: correct, readable, real assertions, no secrets.</li>
            <li>Every test has been seen to fail once on purpose.</li>
            <li>15 results green in CI, and 0 flaky results in 50 runs.</li>
            <li>The manual pack is updated: the 5 automated cases are marked "automated" in the test management tool.</li>
            <li>The metrics sheet has a row for this pack, ready for the monthly review.</li>
          </ol>
          <p>The pack does not replace exploratory testing. Aisha uses the time it saves to explore the new checkout design.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run the capstone in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Aisha's capstone steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Score the login and basket test cases and choose the five to automate first.</li>
              <li data-order="2">Note the real labels, roles and test IDs on the login, product list and basket pages.</li>
              <li data-order="3">Build the page objects and the fixtures file.</li>
              <li data-order="4">Ask AI to draft the five tests from the test cases, then review every line with the checklist.</li>
              <li data-order="5">Run each test locally and make it fail once on purpose.</li>
              <li data-order="6">Add the tests to CI, with the password as a secret and the report uploaded on every run.</li>
              <li data-order="7">Watch 50 CI runs, fix any flaky test at its cause, and sign off the pack.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to plan your own first automation pack, like Aisha's. Then check the plan with your team before you write any code.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior test automation lead who uses Playwright Test with TypeScript. Use simple English.

        Help me plan my first automation pack.
        App: [ShopNest, a made-up grocery web app on a staging site].
        Area: [login and basket].
        Manual test cases (titles only): [valid sign in; wrong password error; add to basket updates badge; change quantity updates subtotal; free delivery from £40.00; account locks after 5 wrong passwords; promo code; seasonal banner].
        Real page details: [login fields labelled "Email address" and "Password", button "Sign in"; basket test IDs basket-subtotal and basket-total].
        CI: [GitHub Actions, 3 browsers]. Test password: [in the secret SHOPNEST_TEST_PASSWORD].

        Please give me:
        1. A candidate list scored for risk, repetition and stability (1 to 3 each), and the 5 to automate first.
        2. The page objects I need, with their locators and actions.
        3. The 5 test names, each with its key assertion.
        4. A CI plan: triggers, retries, evidence, secrets and who checks failures.
        5. The 3 most likely causes of flaky tests in this pack, and how to prevent each.

        Use tables. Mark anything I must check against the real app or the current Playwright docs.</pre>
            <ul class="ai-try-checks">
              <li>The five chosen tests have high scores, and the banner stays manual.</li>
              <li>It spots that the lockout test needs its own account.</li>
              <li>Each test has a real, specific assertion, not only "is visible".</li>
              <li>The CI plan keeps the password in secrets and uploads the report.</li>
              <li>Flaky risks include shared test data and fixed waits.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good first automation pack is small, trusted and run on every change. Choose tests by risk and keep locators in page objects. Give every test its own data, and prove each test can fail. AI speeds up every step, but you sign it off.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

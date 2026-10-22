module AiSoftwareTestingContent
  # Units (sidebar dividers): 1–4 Testing Basics · 5–9 Designing Tests · 10–14 Bugs, Planning and Quality · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">How Software Testing Works</h1>
        </div>
        <p class="lc-lead">Software testing means checking that a product does what people need, and finding problems before customers do. In this lesson you will learn why teams test and the main test levels and types. You will also see what a tester does each day. You will meet ShopNest, a made-up online grocery shop in London. Its team is building a new checkout, and you will follow them through this course.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 345" role="img" aria-label="Left: five test levels from small to whole, using ISTQB names. Component or unit testing checks one price rule. Component integration checks the basket and the promo service together. System testing checks the whole checkout end to end. System integration checks checkout with the payment provider. Acceptance testing checks that Priya and shoppers agree it meets their needs. Right: three groups of test types. Functional testing asks does it work. Non-functional testing asks how well, such as speed, security, accessibility and usability. Change-related testing after a change includes regression, smoke and sanity tests.">
            <defs><marker id="st1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="190" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Test levels (ISTQB names)</text>
              <text x="570" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Types of testing</text>
              <rect x="20" y="40" width="340" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="34" y="67" font-weight="700">Component (unit)</text>
              <text x="346" y="67" font-size="11" fill="#9b99b8" text-anchor="end">one price rule</text>
              <rect x="20" y="96" width="340" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="34" y="123" font-weight="700">Component integration</text>
              <text x="346" y="123" font-size="11" fill="#9b99b8" text-anchor="end">basket + promo</text>
              <rect x="20" y="152" width="340" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="34" y="179" font-weight="700">System</text>
              <text x="346" y="179" font-size="11" fill="#9b99b8" text-anchor="end">whole checkout, end to end</text>
              <rect x="20" y="208" width="340" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="34" y="235" font-weight="700">System integration</text>
              <text x="346" y="235" font-size="11" fill="#9b99b8" text-anchor="end">checkout + payments</text>
              <rect x="20" y="264" width="340" height="44" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="34" y="291" font-weight="700">Acceptance</text>
              <text x="346" y="291" font-size="11" fill="#9b99b8" text-anchor="end">Priya and shoppers agree</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#st1a)">
                <line x1="190" y1="85" x2="190" y2="94"/>
                <line x1="190" y1="141" x2="190" y2="150"/>
                <line x1="190" y1="197" x2="190" y2="206"/>
                <line x1="190" y1="253" x2="190" y2="262"/>
              </g>
              <text x="190" y="332" font-size="11" fill="#9b99b8" text-anchor="middle">Small parts first, then the whole product.</text>
              <rect x="400" y="40" width="340" height="80" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="416" y="70" font-weight="700">Functional: does it work?</text>
              <text x="416" y="98" font-size="12" fill="#9b99b8">promo codes, slots, quantities</text>
              <rect x="400" y="134" width="340" height="80" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="416" y="164" font-weight="700">Non-functional: how well?</text>
              <text x="416" y="192" font-size="12" fill="#9b99b8">speed, security, accessibility, usability</text>
              <rect x="400" y="228" width="340" height="80" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="416" y="258" font-weight="700">After a change</text>
              <text x="416" y="286" font-size="12" fill="#9b99b8">regression, smoke and sanity tests</text>
              <text x="570" y="332" font-size="11" fill="#9b99b8" text-anchor="middle">Any level can use any type.</text>
            </g>
          </svg>
          <figcaption>Test levels go from one small part to the whole product. Test types say what you check: if it works, how well it works, and if a change broke anything.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why we test</h3>
          <p>Testing gives the team information. It shows where the product does not match what people need. It also helps the team decide if a release is ready.</p>
          <p>Three words you will use in every lesson:</p>
          <ul class="lc-list">
            <li><strong>Defect</strong> (also called a bug): a mistake in the product, such as a wrong rule.</li>
            <li><strong>Failure</strong>: what a user sees when a defect runs, such as a wrong price.</li>
            <li><strong>Requirement</strong>: something the product must do, often written as a user story.</li>
          </ul>
          <p>Here is a made-up ShopNest example. The rule says delivery is free when the products cost £60.00 or more. A shopper fills a basket worth exactly £60.00. The checkout still adds a £4.99 delivery fee. The team logs it as BUG-233. One small mistake in a rule can upset many shoppers.</p>
          <p>Testing cannot prove a product has no bugs. It can only show that bugs exist. So testers choose the most useful tests in the time they have. Problems found early, while a story is still being written, are usually cheaper to fix than problems found by customers.</p>
        </div>
        <div class="lc-card">
          <h3>Meet the ShopNest checkout team</h3>
          <p>All people, products and numbers in this course are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Person</th><th>Role</th><th>What they do in this course</th></tr></thead>
            <tbody>
              <tr><td>Sam Carter</td><td>QA lead</td><td>Plans the testing and reports on quality.</td></tr>
              <tr><td>Aisha Khan</td><td>Tester</td><td>Reads stories, designs and runs tests, reports bugs.</td></tr>
              <tr><td>Leo Martin</td><td>Developer</td><td>Builds the checkout and writes unit tests.</td></tr>
              <tr><td>Priya Shah</td><td>Product owner</td><td>Writes the user stories and answers questions about rules.</td></tr>
            </tbody>
          </table>
          <p>The new checkout (Checkout 2.0) adds three features:</p>
          <ul class="lc-list">
            <li><strong>Basket limit</strong>: up to 20 of each item, and up to 50 different items.</li>
            <li><strong>Promo codes</strong>: such as SAVE5 (£5 off) and FRESH10 (10% off).</li>
            <li><strong>Delivery slots</strong>: 1-hour slots from 08:00 to 22:00, for today and the next 6 days.</li>
          </ul>
          <p>It must work on the web site and the iPhone and Android apps. The release is planned for Thursday 5 November 2026.</p>
        </div>
        <div class="lc-card">
          <h3>Test levels and test types</h3>
          <p>A <strong>test level</strong> is how big the part under test is. The ISTQB (International Software Testing Qualifications Board) syllabus names five levels:</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>What is tested</th><th>Who often does it</th><th>ShopNest example</th></tr></thead>
            <tbody>
              <tr><td>Component (unit)</td><td>One small part on its own</td><td>Developers</td><td>The rule that adds £4.99 under £60.00</td></tr>
              <tr><td>Component integration</td><td>Parts working together</td><td>Developers and testers</td><td>The basket sends the code to the promo service</td></tr>
              <tr><td>System</td><td>The whole product, end to end</td><td>Testers</td><td>Basket to confirmation email on staging</td></tr>
              <tr><td>System integration</td><td>The product with outside systems</td><td>Testers</td><td>Checkout with the payment provider's sandbox</td></tr>
              <tr><td>Acceptance</td><td>Does it meet the users' needs?</td><td>Product owner, users</td><td>Priya checks each story before release</td></tr>
            </tbody>
          </table>
          <p>A <strong>test type</strong> is what you check. The main groups are:</p>
          <ul class="lc-list">
            <li><strong>Functional testing</strong>: does a feature do the right thing? Example: SAVE5 takes £5.00 off.</li>
            <li><strong>Non-functional testing</strong>: how well does it work? This covers speed (performance), security, accessibility (use by disabled people) and usability (ease of use).</li>
            <li><strong>Regression testing</strong>: after a change, check that old features still work.</li>
            <li><strong>Smoke testing</strong>: a quick, broad check that a new build works well enough to test further.</li>
            <li><strong>Sanity testing</strong>: a quick, narrow check of one fix or change.</li>
          </ul>
          <p>Testing also includes <strong>static testing</strong>: reviewing stories and designs without running the product. That is often where the cheapest bugs are found.</p>
        </div>
        <div class="lc-card">
          <h3>The tester's role, and a first AI prompt</h3>
          <p>A tester does more than click through screens. In each sprint (a short work cycle, often two weeks) Aisha:</p>
          <ul class="lc-list">
            <li>reads new stories early and asks questions (this is called <strong>shift-left</strong>: testing ideas move earlier in the work);</li>
            <li>designs tests and test data;</li>
            <li>runs tests and explores the product;</li>
            <li>writes clear bug reports;</li>
            <li>tells Sam and Priya what she tested, what she found and what risks remain.</li>
          </ul>
          <p>Quality is the whole team's job. The tester gives the facts. The team decides together.</p>
          <p>An AI assistant can help you plan, but it needs details. <strong>Weak prompt:</strong></p>
          <pre><code>What should I test in a checkout?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am a tester at ShopNest, a made-up London grocery app (web, iOS, Android).
        We are adding a basket limit (1 to 20 per item), promo codes and
        1-hour delivery slots. For each feature, suggest tests at the
        component, integration, system and acceptance levels. Mark each idea
        as functional or non-functional. Do not invent rules. List questions
        where the rules are unclear.</code></pre>
          <p>The AI gives you a starting list. You still check it against the real stories and the real product.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: name the test level</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each ShopNest check into the right test level.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="component" data-label="Component (unit)"></div>
              <div data-sorter-target="bucket" data-bucket="integration" data-label="Integration"></div>
              <div data-sorter-target="bucket" data-bucket="system" data-label="System"></div>
              <div data-sorter-target="bucket" data-bucket="acceptance" data-label="Acceptance"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="component" data-why="One small rule tested on its own is a component (unit) test.">Leo checks the rule that adds £4.99 when the products cost under £60.00.</li>
              <li data-bucket="integration" data-why="Two parts talking to each other is component integration testing.">Leo checks that the basket sends the typed code to the promo service correctly.</li>
              <li data-bucket="integration" data-why="Checkout working with an outside system is system integration testing.">Aisha checks that checkout and the payment provider's sandbox agree on the order total.</li>
              <li data-bucket="system" data-why="The whole product, end to end, is a system test.">Aisha places a full order on staging, from basket to confirmation email.</li>
              <li data-bucket="system" data-why="This is still the whole product end to end, just on a phone.">Aisha runs the full checkout on the iPhone app with her test basket.</li>
              <li data-bucket="acceptance" data-why="The product owner checking that stories meet user needs is acceptance testing.">Priya tries each new story on staging and confirms it meets what shoppers need.</li>
              <li data-bucket="acceptance" data-why="Real users trying the product before full release is a form of acceptance (beta) testing.">A small group of real shoppers try the new checkout in a beta before release.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to map test levels and test types for a feature you know. Then check the map against the real requirements.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior software tester. Use simple English.

        Product: [ShopNest, a made-up online grocery shop in London, with a web site and iOS and Android apps].
        New feature: [promo codes at checkout. One code per order. SAVE5 gives £5.00 off when products cost £30.00 or more].
        Release date: [in 5 weeks].

        Please make a test map for this feature:
        1. A table with the columns: Test level (component, component integration, system, system integration, acceptance), Example test, Who usually does it.
        2. Two non-functional tests (for example speed, security or accessibility) and why they matter here.
        3. Which tests to repeat as regression tests after each change, and one smoke test for a new build.
        4. Five questions I should ask the product owner before I start.

        Only use the rules I gave you. If a rule is missing, write "QUESTION" instead of guessing.</pre>
            <ul class="ai-try-checks">
              <li>Every level in the table has a test that fits that level.</li>
              <li>The tests use only the rules you gave, with no invented features.</li>
              <li>Missing rules are marked QUESTION, not guessed.</li>
              <li>The smoke test is quick and broad, not a long list.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Testing gives the team facts about quality so they can decide what to do. It cannot prove there are no bugs. Think in levels (how big the part is) and types (what you check). Start asking questions as early as you can.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Where AI Helps Testers and Its Limits</h1>
        </div>
        <p class="lc-lead">AI assistants can help testers think of ideas, draft test cases, make test data and summarise long text. They can also invent product behaviour, miss important cases and leak secrets. In this lesson you will learn where AI saves time in testing and where it fails. You will also learn how to get answers you can check. You will see how Aisha at ShopNest caught made-up rules in an AI answer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A workflow of four steps. Your inputs, such as the story, rules and notes, go to the AI, which drafts ideas, test cases and data. The tester checks the drafts against the story and the product. The result is to keep, fix or drop each idea. Below, four risks to watch: made-up behaviour, missed cases, secrets in prompts and a too-confident tone. At the bottom: you decide what to test, whether a bug is real and if the release is ready.">
            <defs><marker id="st2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">AI drafts, the tester checks</text>
              <rect x="20" y="44" width="160" height="60" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="100" y="70" font-weight="700">Your inputs</text>
              <text x="100" y="91" font-size="11" fill="#9b99b8">story, rules, notes</text>
              <rect x="210" y="44" width="160" height="60" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="290" y="70" font-weight="700">AI drafts</text>
              <text x="290" y="91" font-size="11" fill="#9b99b8">ideas, cases, data</text>
              <rect x="400" y="44" width="160" height="60" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="480" y="70" font-weight="700">Tester checks</text>
              <text x="480" y="91" font-size="11" fill="#9b99b8">story + real product</text>
              <rect x="590" y="44" width="150" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="70" font-weight="700">Result</text>
              <text x="665" y="91" font-size="11" fill="#9b99b8">keep, fix or drop</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#st2a)">
                <line x1="181" y1="74" x2="207" y2="74"/>
                <line x1="371" y1="74" x2="397" y2="74"/>
                <line x1="561" y1="74" x2="587" y2="74"/>
              </g>
              <text x="380" y="138" font-weight="700" fill="#f9a8d4">Risks to watch</text>
              <rect x="20" y="150" width="170" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="105" y="177">Made-up behaviour</text>
              <rect x="210" y="150" width="160" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="290" y="177">Missed cases</text>
              <rect x="390" y="150" width="170" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="475" y="177">Secrets in prompts</text>
              <rect x="580" y="150" width="160" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="660" y="177">Too-confident tone</text>
              <rect x="20" y="220" width="720" height="50" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="250" font-weight="700">You decide: what to test, whether a bug is real, and if the release is ready.</text>
            </g>
          </svg>
          <figcaption>AI turns your inputs into drafts. You check every draft against the story and the real product, and you make the decisions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI helps testers</h3>
          <p>An AI assistant (such as Claude) predicts useful text from what you give it. That makes it good at first drafts and at turning messy notes into clear text.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>How AI helps</th><th>What you still check</th></tr></thead>
            <tbody>
              <tr><td>Test ideas from a story</td><td>Lists happy paths, errors and edge cases fast</td><td>Each idea matches a real rule</td></tr>
              <tr><td>Finding gaps in a story</td><td>Asks "what if" questions you may miss</td><td>The product owner answers, not the AI</td></tr>
              <tr><td>Drafting test cases</td><td>Writes steps and expected results in a set format</td><td>Expected results match the rules exactly</td></tr>
              <tr><td>Test data</td><td>Makes fake names, postcodes and baskets</td><td>The data is valid, fake and covers the limits</td></tr>
              <tr><td>Bug reports</td><td>Turns rough notes into clear steps</td><td>Steps really reproduce the bug</td></tr>
              <tr><td>Summaries</td><td>Shortens long bug threads or test results</td><td>Numbers and names are copied correctly</td></tr>
              <tr><td>Learning</td><td>Explains a term or a technique in simple words</td><td>Check key facts in a trusted source</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The limits: what AI gets wrong</h3>
          <ul class="lc-list">
            <li><strong>Made-up behaviour.</strong> The AI cannot see your product or your rules. If you do not give a rule, it may guess one and state it as fact. It may say "promo codes are case-sensitive" when your product owner decided the opposite.</li>
            <li><strong>Missed cases.</strong> AI lists common tests well. It often misses rules that are special to your business. It may not test a basket worth exactly £60.00 unless you tell it that £60.00 is the free delivery limit.</li>
            <li><strong>Different answers each time.</strong> Ask twice and you may get two different lists. So the list is a starting point, not a complete set.</li>
            <li><strong>Secrets in prompts.</strong> Text you paste may be stored by the tool. Never paste passwords, keys or real customer data. The safety lesson covers this in detail.</li>
            <li><strong>A confident tone.</strong> Wrong answers sound as sure as right ones. Never treat a confident answer as a checked answer.</li>
          </ul>
          <p>No AI tool finds all bugs or proves full coverage. You still decide what is tested and what the results mean.</p>
        </div>
        <div class="lc-card">
          <h3>Ask for labels, not just answers</h3>
          <p>You can make AI answers easier to check. Give the real rules, and ask the AI to label where each idea comes from.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write test ideas for promo codes.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are helping me test promo codes at ShopNest checkout (made-up app).
        Rules: one code per order. SAVE5 = £5.00 off when products cost
        £30.00 or more. SUMMER25 expired on 31 August 2026.
        List test ideas. Label each one:
        RULE (comes from my rules), ASSUMPTION (you guessed) or QUESTION
        (the rules do not say). Do not present a guess as a rule.</code></pre>
          <p>Part of a made-up answer, with Aisha's decisions:</p>
          <table class="lc-table">
            <thead><tr><th>AI idea</th><th>AI label</th><th>Aisha's decision</th></tr></thead>
            <tbody>
              <tr><td>SAVE5 on a £30.00 basket gives £5.00 off</td><td>RULE</td><td>Keep. It tests the exact minimum.</td></tr>
              <tr><td>SAVE5 on a £29.99 basket is refused</td><td>RULE</td><td>Keep. It tests just below the minimum.</td></tr>
              <tr><td>"save5" in lowercase is refused</td><td>ASSUMPTION</td><td>Fix. Priya's rule turns lowercase into capitals, so it should work.</td></tr>
              <tr><td>Two codes give both discounts</td><td>ASSUMPTION</td><td>Drop. The rule is one code per order.</td></tr>
              <tr><td>What message shows for SUMMER25?</td><td>QUESTION</td><td>Ask Priya for the exact text.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the made-up rules</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Aisha asks">"Write test ideas for promo codes at ShopNest checkout." She does not paste the story.</li>
              <li data-kind="answer" data-label="AI replies">15 neat ideas. Two say "codes are case-sensitive, so save5 should fail" and "two codes can be combined".</li>
              <li data-kind="warn" data-label="The problem">Both are made-up behaviour. Priya's rules say lowercase turns into capitals, and only one code is allowed per order.</li>
              <li data-kind="thought" data-label="Aisha thinks">There is also no test for a basket that drops below the minimum spend after the code is applied.</li>
              <li data-kind="user" data-label="Aisha asks again">She pastes the story and the agreed rules, with no customer data. She asks for RULE, ASSUMPTION and QUESTION labels.</li>
              <li data-kind="answer" data-label="AI replies">18 ideas: 11 RULE, 4 ASSUMPTION and 3 QUESTION.</li>
              <li data-kind="check" data-label="Aisha checks">She checks each ASSUMPTION against the rules. She types "save5" on the web site and on the iPhone app.</li>
              <li data-kind="result" data-label="What she finds">The web site accepts "save5". The iPhone app says "This code is not valid". She logs it as BUG-231.</li>
              <li data-kind="result" data-label="Final list">She keeps 14 ideas, fixes 3 and drops 1. She sends the 3 questions to Priya.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for labelled test ideas. Then you can see which ideas come from real rules and which are guesses.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced software tester. Use simple English.

        Feature: [delivery slots at ShopNest checkout, a made-up London grocery app].
        Rules I know:
        [- 1-hour slots from 08:00 to 22:00.
        - Slots shown for today and the next 6 days.
        - A slot takes up to 25 orders, then shows "Full".
        - A chosen slot is held for 30 minutes.]

        Please:
        1. List 15 test ideas: happy paths, errors, limits and timing.
        2. Label each idea RULE (it comes from my rules), ASSUMPTION (you guessed the behaviour) or QUESTION (my rules do not say).
        3. Show the list as a table with the columns: ID, Test idea, Label, Why it matters.
        4. After the table, list the QUESTION items as questions for the product owner.

        Do not present any guess as a rule. Do not say the list is complete.</pre>
            <ul class="ai-try-checks">
              <li>Every RULE idea really matches one of your rules.</li>
              <li>Guesses are labelled ASSUMPTION, not stated as facts.</li>
              <li>It includes limits, such as the 25th and 26th order in one slot.</li>
              <li>The questions are ones only the product owner can answer.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is fast at drafts but cannot see your product or your rules. Give it the real rules and ask it to label guesses. Check every idea against the story and the real product. A confident answer is not a checked answer.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Using AI Tools Safely at Work</h1>
        </div>
        <p class="lc-lead">Testers handle a lot of sensitive material: logs, test accounts, passwords, customer issues and unreleased features. Pasting the wrong thing into an AI tool can leak it outside your company. In this lesson you will learn which AI tools to use and what must never go into a prompt. You will also learn how to clean text before you share it, and how to check what comes back.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Three columns like a traffic light. Green, safe to share: made-up test data, public docs and terms, your own test ideas, and placeholders such as EMAIL in brackets. Amber, approved tool only: internal user stories, test cases and plans, cleaned bug logs, and screenshots of staging. Red, never paste: passwords, keys and tokens, real customer data, real card numbers, and unfixed security bugs. Below, four steps: clean the text, use the approved tool, check the output, and you decide.">
            <defs><marker id="st3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="220" height="200" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="130" y="46" font-weight="700" fill="#6ee7b7" text-anchor="middle">Safe to share</text>
              <text x="36" y="84" font-size="12">Made-up test data</text>
              <text x="36" y="116" font-size="12">Public docs and terms</text>
              <text x="36" y="148" font-size="12">Your own test ideas</text>
              <text x="36" y="180" font-size="12">Placeholders like [EMAIL]</text>
              <rect x="270" y="20" width="220" height="200" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="46" font-weight="700" fill="#fcd34d" text-anchor="middle">Approved tool only</text>
              <text x="286" y="84" font-size="12">Internal user stories</text>
              <text x="286" y="116" font-size="12">Test cases and plans</text>
              <text x="286" y="148" font-size="12">Cleaned bug logs</text>
              <text x="286" y="180" font-size="12">Screenshots of staging</text>
              <rect x="520" y="20" width="220" height="200" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="630" y="46" font-weight="700" fill="#f9a8d4" text-anchor="middle">Never paste</text>
              <text x="536" y="84" font-size="12">Passwords, keys, tokens</text>
              <text x="536" y="116" font-size="12">Real customer data</text>
              <text x="536" y="148" font-size="12">Real card numbers</text>
              <text x="536" y="180" font-size="12">Unfixed security bugs</text>
              <g text-anchor="middle">
                <rect x="20" y="256" width="160" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="100" y="283">1. Clean the text</text>
                <rect x="210" y="256" width="160" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="290" y="283">2. Approved tool</text>
                <rect x="400" y="256" width="160" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="480" y="283">3. Check output</text>
                <rect x="590" y="256" width="150" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="665" y="283">4. You decide</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#st3a)">
                <line x1="181" y1="278" x2="207" y2="278"/>
                <line x1="371" y1="278" x2="397" y2="278"/>
                <line x1="561" y1="278" x2="587" y2="278"/>
              </g>
              <text x="380" y="322" font-size="11" fill="#9b99b8" text-anchor="middle">Amber items: only in a tool your company has approved for work data.</text>
            </g>
          </svg>
          <figcaption>Sort what you want to share into green, amber or red before you write a prompt. Then clean it, use an approved tool and check the answer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Use the tools your company approves</h3>
          <p>Many companies give staff an approved AI tool. This is often a business or enterprise account. These accounts usually come with a contract about how your data is stored and used. A free personal account may have different settings. Some tools can keep your chats or use them to improve the AI, depending on the settings.</p>
          <p>At ShopNest, Sam Carter gives the team three simple rules:</p>
          <ul class="lc-list">
            <li>Use only the company's approved AI assistant for work. Never use a personal account.</li>
            <li>Follow the company AI policy. If something is not covered, ask Sam or the security team first.</li>
            <li>AI features inside work tools (for example in Jira or a test tool) count too. Check they are switched on and approved by the company.</li>
          </ul>
          <p>Data settings and terms change. Check the tool's current help pages and your company policy, not old advice.</p>
        </div>
        <div class="lc-card">
          <h3>What never goes into a prompt</h3>
          <table class="lc-table">
            <thead><tr><th>Type of data</th><th>Made-up example</th><th>Safe replacement</th></tr></thead>
            <tbody>
              <tr><td>Secrets: passwords, API keys, access tokens</td><td>A session token copied from a log</td><td><code>[SESSION_TOKEN]</code></td></tr>
              <tr><td>Personal data of real customers</td><td>A complaint with a name, email and address</td><td><code>[CUSTOMER_NAME]</code>, <code>[EMAIL]</code>, <code>[POSTCODE_AREA]</code></td></tr>
              <tr><td>Payment data</td><td>A real card number in a support ticket</td><td>Remove it. Use the payment provider's published test cards for testing.</td></tr>
              <tr><td>Internal system details</td><td>Server names, internal web addresses</td><td><code>[API_HOST]</code></td></tr>
              <tr><td>Confidential code</td><td>Large parts of the checkout code</td><td>Only if your company approves it, and only in the approved tool</td></tr>
              <tr><td>Unfixed security problems</td><td>"Anyone can see other users' orders"</td><td>Report it through the company security process. Do not paste it.</td></tr>
            </tbody>
          </table>
          <p>Customer names, emails, addresses and order history are personal data under UK GDPR (the UK's data protection law). A company needs a lawful reason and the right contracts before it shares personal data with an outside tool. This is general information, not legal advice. Ask your data protection officer or a qualified adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Clean the text before you share it</h3>
          <p><strong>Redacting</strong> means removing or hiding sensitive parts of a text. Replace each private value with a clear placeholder, so the AI still understands the structure.</p>
          <p><strong>Before</strong> (a made-up log line, not safe to paste):</p>
          <pre><code>12:41:07 POST https://api-int.shopnest.test/promo/apply
        user=qa.shopper03@shopnest.test token=eyJhbGciOi...k9Q
        code=save5 result=INVALID_CODE app=iOS 5.8.0</code></pre>
          <p><strong>After</strong> (cleaned):</p>
          <pre><code>12:41:07 POST https://[API_HOST]/promo/apply
        user=[TEST_EMAIL] token=[SESSION_TOKEN]
        code=save5 result=INVALID_CODE app=iOS 5.8.0</code></pre>
          <p>Keep the parts the AI needs: the time, the action, the code typed, the result and the app version. Remove the rest. Even test accounts and staging tokens can give access to company systems, so treat them as secrets.</p>
          <p>Placeholders lower the risk, but they do not always make data anonymous. Rare details, such as a street name with an order time, can still point to a real person. When in doubt, leave it out.</p>
        </div>
        <div class="lc-card">
          <h3>Check what comes back</h3>
          <ul class="lc-list">
            <li><strong>Check facts.</strong> Test ideas, rule names, standard numbers and tool features can be wrong. Check them in the story, the real product or the official docs.</li>
            <li><strong>Run it before you trust it.</strong> A test case or a bug's steps are only correct once you have tried them.</li>
            <li><strong>Watch for hidden instructions.</strong> A page or file you paste can contain text that tries to steer the AI. Read answers with care. Never let an AI tool close bugs or change test results without your check.</li>
            <li><strong>Keep a record.</strong> If your team asks, note which work was drafted with AI.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: clean a log before asking AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Aisha collects">After BUG-231, Aisha copies a 60-line error log from the iOS test build.</li>
              <li data-kind="warn" data-label="Stop">The log has a test account email, a session token and an internal server address. A token can give access, even on staging.</li>
              <li data-kind="check" data-label="Policy check">She opens the company AI policy. She will use the approved company assistant, not a personal account.</li>
              <li data-kind="tool" data-label="Aisha cleans">She replaces the values with [TEST_EMAIL], [SESSION_TOKEN] and [API_HOST]. She deletes 40 lines that are not about the promo code.</li>
              <li data-kind="user" data-label="Aisha asks">"Here is a cleaned 20-line error log from our iOS app. Explain in simple words why lowercase codes get the error 'This code is not valid'. Mark guesses as guesses."</li>
              <li data-kind="answer" data-label="AI replies">The app may send the code before it turns it into capitals, and the server may compare the text exactly. The AI marks this as a likely cause, not a fact.</li>
              <li data-kind="check" data-label="Aisha decides">She does not write the guess as fact in the bug report. She adds the cleaned log lines and asks Leo to confirm the cause.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a short safe-use checklist for your test team. Then compare it with your company's real AI policy.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA lead writing simple guidance for testers. Use simple English and short sentences.

        Team: [6 testers at ShopNest, a made-up online grocery company in London].
        Our approved AI tool: [the company's enterprise AI assistant].
        What we work with: [user stories, test cases, bug reports, app logs, test accounts, staging screenshots].

        Please write:
        1. A one-page checklist in three parts: Before I paste, While I prompt, After I get an answer. Five points or fewer in each part.
        2. A table of 8 kinds of sensitive data testers see, with columns: Data, Why it is risky, Safe placeholder or action.
        3. Two short "bad prompt, safe prompt" pairs based on a bug log and a customer complaint. Use only made-up details.

        Say that the checklist does not replace our company policy or legal advice. Do not name specific laws unless you are sure they exist.</pre>
            <ul class="ai-try-checks">
              <li>Secrets, tokens and real customer data are clearly marked as never to paste.</li>
              <li>The placeholders keep the meaning but remove the private values.</li>
              <li>It says to check answers against the story and the real product.</li>
              <li>It points to your real company policy, not only its own advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Before every prompt, ask yourself if you would be happy for this text to leave the company. Use only approved tools. Replace secrets and personal data with placeholders, and check every answer before you act on it.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Reading Requirements and User Stories</h1>
        </div>
        <p class="lc-lead">Good tests start with good requirements. If a rule is unclear, the developer guesses one thing and the tester guesses another. In this lesson you will learn how user stories and acceptance criteria work. You will learn which questions find the gaps, and how AI can help you spot missing rules. You will review a real-looking ShopNest story and see how one small gap changes the price a shopper pays.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Left: the user story US-102 Apply a promo code, as written. As a shopper, I want to enter a promo code, so that I get a discount. AC1: I can enter one promo code at checkout. AC2: A valid code shows the discount. AC3: An invalid code shows an error message. Right: four gap questions with arrows to the criteria. Capitals or lowercase, and what if I add a second code, point to AC1. Basket drops below the minimum points to AC2. Which error text points to AC3.">
            <defs><marker id="st4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="220" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">The story as written</text>
              <text x="615" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Gaps to ask about</text>
              <rect x="20" y="40" width="400" height="200" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="36" y="68" font-weight="700">US-102 Apply a promo code</text>
              <text x="36" y="98" font-size="12">As a shopper, I want to enter a promo code,</text>
              <text x="36" y="118" font-size="12">so that I get a discount.</text>
              <text x="36" y="150" font-size="12">AC1: I can enter one promo code at checkout.</text>
              <text x="36" y="180" font-size="12">AC2: A valid code shows the discount.</text>
              <text x="36" y="210" font-size="12">AC3: An invalid code shows an error message.</text>
              <g text-anchor="middle">
                <rect x="490" y="50" width="250" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="615" y="75">Capitals or lowercase?</text>
                <rect x="490" y="100" width="250" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="615" y="125">What if I add a 2nd code?</text>
                <rect x="490" y="150" width="250" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="615" y="175">Basket drops below min?</text>
                <rect x="490" y="200" width="250" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="615" y="225">Which error text?</text>
              </g>
              <g stroke="#f59e0b" stroke-width="1.5" fill="none" marker-end="url(#st4a)">
                <line x1="488" y1="70" x2="426" y2="142"/>
                <line x1="488" y1="120" x2="426" y2="148"/>
                <line x1="488" y1="170" x2="426" y2="178"/>
                <line x1="488" y1="220" x2="426" y2="208"/>
              </g>
              <text x="380" y="272" font-size="11" fill="#9b99b8" text-anchor="middle">Four gaps found before anyone writes code or tests.</text>
            </g>
          </svg>
          <figcaption>A short story can hide many open questions. Each gap is a place where the developer and the tester might guess differently.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>User stories and acceptance criteria</h3>
          <p>A <strong>user story</strong> is a short description of a feature from the user's view. It often uses this pattern: "As a [type of user], I want [something], so that [reason]."</p>
          <p><strong>Acceptance criteria</strong> (AC) are the rules that must be true for the story to be done. Testers turn them into tests. So each one must be <strong>testable</strong>: clear enough that a test can pass or fail.</p>
          <table class="lc-table">
            <thead><tr><th>Hard to test</th><th>Testable</th></tr></thead>
            <tbody>
              <tr><td>Delivery is free on bigger orders.</td><td>Delivery is free when the product subtotal after any discount is £60.00 or more.</td></tr>
              <tr><td>An invalid code shows an error.</td><td>An unknown code shows "This code is not valid". An expired code shows "This code has expired".</td></tr>
              <tr><td>The maximum quantity is 20.</td><td>Quantity is a whole number from 1 to 20 per product. Typing 21 shows "You can buy up to 20 of this item".</td></tr>
            </tbody>
          </table>
          <p>Many teams also use the INVEST checklist for stories: Independent, Negotiable, Valuable, Estimable, Small and Testable. A tester cares most about the last one.</p>
        </div>
        <div class="lc-card">
          <h3>Questions that find gaps</h3>
          <p>Read each story with these question types. The examples come from the ShopNest checkout stories.</p>
          <table class="lc-table">
            <thead><tr><th>Question type</th><th>Ask</th><th>ShopNest example</th></tr></thead>
            <tbody>
              <tr><td>Inputs and limits</td><td>What values are allowed? What are the edges?</td><td>What happens if a shopper types 0, 21 or 2.5 as a quantity?</td></tr>
              <tr><td>Errors and messages</td><td>What does the user see when something fails?</td><td>What exact message shows for the expired code SUMMER25?</td></tr>
              <tr><td>Money and order of rules</td><td>Which rule runs first?</td><td>Is the £60.00 free delivery limit checked before or after the promo discount?</td></tr>
              <tr><td>Time and state</td><td>What changes over time?</td><td>What if the 30-minute slot hold ends during payment?</td></tr>
              <tr><td>Users and platforms</td><td>Who uses it, and where?</td><td>Does the basket limit work the same on web, iOS and Android?</td></tr>
              <tr><td>Non-functional</td><td>How fast, how safe, how accessible?</td><td>Can a screen reader user pick a delivery slot? (WCAG 2.2 is the common accessibility standard.)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Finding gaps with AI: a worked example</h3>
          <p>AI is good at asking "what if" questions. Give it the story exactly as written, and ask for questions, not answers.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is this user story OK?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a tester reviewing a user story before the sprint starts.
        Story US-104 Place the order (ShopNest, a made-up grocery app):
        AC1: The order summary shows products, discount, delivery fee and total.
        AC2: Orders under the minimum order value cannot be placed.
        AC3: Delivery is free on bigger orders.
        AC4: I get a confirmation email.
        List the gaps as questions for the product owner. For each question,
        give one example where two people could read the rule differently.
        Do not answer the questions yourself.</code></pre>
          <p>The AI's made-up answer asks: "Is free delivery checked before or after the promo discount?". Aisha works it out with her made-up Basket A:</p>
          <table class="lc-table">
            <thead><tr><th>Basket A with code FRESH10 (10% off)</th><th>Rule checked before discount</th><th>Rule checked after discount</th></tr></thead>
            <tbody>
              <tr><td>Products</td><td>£62.40</td><td>£62.40</td></tr>
              <tr><td>Discount</td><td>-£6.24</td><td>-£6.24</td></tr>
              <tr><td>Subtotal after discount</td><td>£56.16</td><td>£56.16</td></tr>
              <tr><td>Delivery fee</td><td>Free (£62.40 is £60.00 or more)</td><td>£4.99 (£56.16 is under £60.00)</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>£56.16</strong></td><td><strong>£61.15</strong></td></tr>
            </tbody>
          </table>
          <p>The same basket costs £4.99 more under one reading. Priya, the product owner, decides: the check uses the subtotal after the discount. Aisha adds this to AC3.</p>
        </div>
        <div class="lc-card">
          <h3>What you still decide</h3>
          <ul class="lc-list">
            <li><strong>The AI asks. People answer.</strong> AI may suggest a "normal" answer, such as "most shops check before the discount". That is a guess, not your rule.</li>
            <li><strong>Pick the questions that matter.</strong> AI may list 25 questions. Keep the ones that change behaviour, money or risk.</li>
            <li><strong>Talk it through.</strong> Many teams hold a short "three amigos" meeting: product owner, developer and tester review the story together.</li>
            <li><strong>Write the answers down.</strong> Add each answer to the acceptance criteria, so tests and code follow the same rule.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: review a story in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Aisha's steps for reviewing US-104 in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Read the story and acceptance criteria on her own first.</li>
              <li data-order="2">Note her own questions using the question types.</li>
              <li data-order="3">Ask the approved AI tool for more gap questions, with no customer data.</li>
              <li data-order="4">Merge both lists and keep the questions that change behaviour or money.</li>
              <li data-order="5">Discuss them with Priya and Leo in a three amigos meeting.</li>
              <li data-order="6">Update the acceptance criteria with the agreed answers.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find the gaps in a user story. Then decide which questions you would really take to your product owner.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced tester reviewing a user story before development starts. Use simple English.

        Product: [ShopNest, a made-up online grocery app in London, on web, iOS and Android].
        Story:
        [US-103 Choose a delivery slot
        As a shopper, I want to choose a delivery slot, so that I am at home when my food arrives.
        AC1: I can see 1-hour slots for the next 7 days.
        AC2: Full slots cannot be chosen.
        AC3: My chosen slot is shown on the order summary.]

        Please:
        1. List up to 12 gaps as questions for the product owner. Group them under: Inputs and limits, Errors and messages, Time and state, Users and platforms, Non-functional.
        2. For each question, give one example where two people could read the rule differently.
        3. Mark the 3 questions with the biggest risk, and say why.
        4. Rewrite any vague criterion as a testable one, with [TBC] where a value is unknown.

        Do not answer the questions or invent rules.</pre>
            <ul class="ai-try-checks">
              <li>The questions are about real gaps in this story, not general advice.</li>
              <li>The AI does not invent answers, such as a cut-off time.</li>
              <li>The rewritten criteria could pass or fail in a test.</li>
              <li>Unknown values are marked [TBC], not filled in.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every unclear rule is a bug waiting to happen. Turn vague criteria into testable ones. Use AI to ask more "what if" questions. Let the product owner, not the AI, give the answers.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Writing Test Cases with AI</h1>
        </div>
        <p class="lc-lead">A test case tells anyone on the team exactly what to do and what should happen. Clear test cases make results easy to repeat and easy to trust. In this lesson you will learn the parts of a test case. You will write steps and expected results that can really pass or fail, and use the Given-When-Then format. You will also use AI to draft test cases for the ShopNest basket. Then you will review the draft like a professional.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: a test case card with eight fields. ID TC-104-05. Title: free delivery at exactly 60 pounds. Links to US-104 AC3. Precondition: logged in on staging. Test data: Basket B worth 60 pounds. Steps: open the basket, go to checkout. Expected: delivery shows Free and the total is 60 pounds. Priority: High. An arrow points to the right box, which shows the same test in Given-When-Then form: Given my basket costs 60 pounds, When I open the order summary, Then delivery shows Free, And the total is 60 pounds.">
            <defs><marker id="st5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="230" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Test case (for TestRail or a sheet)</text>
              <text x="610" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Same test as Given-When-Then</text>
              <rect x="20" y="40" width="420" height="225" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <g font-size="12">
                <text x="36" y="66"><tspan font-weight="700">ID:</tspan> TC-104-05</text>
                <text x="36" y="91"><tspan font-weight="700">Title:</tspan> Free delivery at exactly £60.00</text>
                <text x="36" y="116"><tspan font-weight="700">Links to:</tspan> US-104 AC3</text>
                <text x="36" y="141"><tspan font-weight="700">Precondition:</tspan> logged in on staging</text>
                <text x="36" y="166"><tspan font-weight="700">Test data:</tspan> Basket B (£60.00)</text>
                <text x="36" y="191"><tspan font-weight="700">Steps:</tspan> 1. Open basket  2. Go to checkout</text>
                <text x="36" y="216"><tspan font-weight="700">Expected:</tspan> delivery Free, total £60.00</text>
                <text x="36" y="241"><tspan font-weight="700">Priority:</tspan> High</text>
              </g>
              <rect x="480" y="40" width="260" height="225" rx="10" fill="#27274e" stroke="#10b981"/>
              <g font-size="12">
                <text x="496" y="90"><tspan font-weight="700" fill="#6ee7b7">Given</tspan> my basket costs £60.00</text>
                <text x="496" y="125"><tspan font-weight="700" fill="#6ee7b7">When</tspan> I open the order summary</text>
                <text x="496" y="160"><tspan font-weight="700" fill="#6ee7b7">Then</tspan> delivery shows Free</text>
                <text x="496" y="195"><tspan font-weight="700" fill="#6ee7b7">And</tspan> the total is £60.00</text>
              </g>
              <line x1="442" y1="152" x2="476" y2="152" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#st5a)"/>
              <text x="380" y="290" font-size="11" fill="#9b99b8" text-anchor="middle">One clear action per step. One result you can check.</text>
            </g>
          </svg>
          <figcaption>The same test written two ways: as a structured test case and as a Given-When-Then scenario. Both link back to the rule they test.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Test scenarios and test cases</h3>
          <p>A <strong>test scenario</strong> is a short line that says what to test, such as "Check the free delivery limit". A <strong>test case</strong> gives the exact steps, data and expected result for one check. One scenario often becomes several test cases.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it holds</th><th>ShopNest example</th></tr></thead>
            <tbody>
              <tr><td>ID and title</td><td>A unique number and a short name</td><td>TC-104-05 Free delivery at exactly £60.00</td></tr>
              <tr><td>Link to requirement</td><td>The story and criterion it tests</td><td>US-104 AC3</td></tr>
              <tr><td>Preconditions</td><td>What must be true before you start</td><td>Logged in as qa.shopper02 on staging, <code>checkout_v2</code> on</td></tr>
              <tr><td>Test data</td><td>The exact values to use</td><td>Basket B: 4 salmon, 4 chicken, 4 rice = £60.00</td></tr>
              <tr><td>Steps</td><td>Numbered actions, one per line</td><td>1. Open the basket. 2. Select Checkout.</td></tr>
              <tr><td>Expected result</td><td>What should happen, exactly</td><td>Delivery shows Free. Total shows £60.00.</td></tr>
              <tr><td>Priority</td><td>How important it is to run</td><td>High: it is money and a known boundary</td></tr>
            </tbody>
          </table>
          <p>The link to a requirement is called <strong>traceability</strong>. It lets Sam see which rules have tests, and which tests to re-run when a rule changes. In tools such as TestRail, Zephyr or Xray you usually link a test case to a Jira story. Check your tool's current docs for how.</p>
        </div>
        <div class="lc-card">
          <h3>Steps and expected results that can fail</h3>
          <p>A good test case can clearly pass or fail. Two different testers should get the same result.</p>
          <ul class="lc-list">
            <li>Write one action per step.</li>
            <li>Use exact data, such as "type 21", not "type a big number".</li>
            <li>Write the expected result as something you can see: a message, a number, a screen.</li>
            <li>Take the expected result from the rule, never from what the product does today.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Weak</th><th>Strong</th></tr></thead>
            <tbody>
              <tr><td>Check the promo code works.</td><td>Basket A (£62.40), apply SAVE5. Discount shows -£5.00. Subtotal shows £57.40. Delivery shows £4.99.</td></tr>
              <tr><td>An error appears.</td><td>The message "This code has expired" appears under the code box. No discount is applied.</td></tr>
              <tr><td>Quantity is limited.</td><td>Type 21. The message "You can buy up to 20 of this item" appears. The quantity stays at its last value.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Given-When-Then (Gherkin)</h3>
          <p><strong>Given-When-Then</strong> is a plain-language format for tests. Its formal name is <strong>Gherkin</strong>. Business people, developers and testers can all read it.</p>
          <ul class="lc-list">
            <li><strong>Given</strong>: the starting situation.</li>
            <li><strong>When</strong>: the action the user takes.</li>
            <li><strong>Then</strong>: the result you expect. <strong>And</strong> and <strong>But</strong> add more lines of the same kind.</li>
          </ul>
          <p>A <strong>Scenario Outline</strong> runs the same steps once for each row of an <strong>Examples</strong> table. This is useful for limits:</p>
          <pre><code>Scenario Outline: Typing a quantity for one item
          Given my basket has 1 "Free-range eggs (12)" at £3.75
          When I type &lt;typed&gt; in the quantity box
          Then I see &lt;result&gt;

          Examples:
            | typed | result                                                   |
            | 1     | quantity 1 and a line total of £3.75                     |
            | 20    | quantity 20 and a line total of £75.00                   |
            | 21    | "You can buy up to 20 of this item" and quantity 1       |
            | 0     | the eggs are removed from the basket                     |</code></pre>
          <p>The row for 21 would catch BUG-232, where the web site accepts 21. Some teams also turn Gherkin into automated tests, but it is useful as clear written tests on its own.</p>
        </div>
        <div class="lc-card">
          <h3>Drafting test cases with AI, then reviewing them</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write test cases for a shopping basket.</code></pre>
          <p><strong>Better prompt:</strong> give the story, the agreed rules, the format and the columns. Ask the AI to mark guesses. The Try It below is a full example.</p>
          <p>Aisha's review of a made-up AI draft of 12 test cases for US-101:</p>
          <table class="lc-table">
            <thead><tr><th>What she found</th><th>What she did</th></tr></thead>
            <tbody>
              <tr><td>3 cases said "an error appears" with no message</td><td>Added the exact message from the rules</td></tr>
              <tr><td>1 case said business accounts may buy up to 99. No such rule exists.</td><td>Deleted it: invented behaviour</td></tr>
              <tr><td>2 cases tested the same thing (quantity 5 and quantity 6)</td><td>Kept one</td></tr>
              <tr><td>No case for the 50-product limit</td><td>Added two: the 50th product and the 51st</td></tr>
              <tr><td>No case on the iPhone or Android app</td><td>Added the platform to the preconditions of the key cases</td></tr>
            </tbody>
          </table>
          <p>After review she has 12 test cases: 12 - 1 - 1 + 2 = 12. Only then does she add them to TestRail.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: strong or weak expected result?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each expected result. Is it strong (clear pass or fail) or weak (too vague)?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="strong" data-label="Strong"></div>
              <div data-sorter-target="bucket" data-bucket="weak" data-label="Weak"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="strong" data-why="It names exact values that anyone can check on screen.">Delivery shows Free and the total shows £60.00.</li>
              <li data-bucket="weak" data-why="'Works correctly' does not say what to look for. Two testers could disagree.">The checkout works correctly.</li>
              <li data-bucket="strong" data-why="It gives the exact message and the exact quantity.">With 3 in the basket, typing 21 shows "You can buy up to 20 of this item" and the quantity stays at 3.</li>
              <li data-bucket="weak" data-why="Which error? Where? The exact message is part of the rule.">An error is shown.</li>
              <li data-bucket="strong" data-why="Each number comes from the rules and Basket A: £62.40 minus £5.00 is £57.40, which is under £60.00, so delivery costs £4.99.">With SAVE5 on Basket A, the subtotal shows £57.40 and delivery shows £4.99.</li>
              <li data-bucket="weak" data-why="'Looks fine' is an opinion, not a result you can check.">The slot list looks fine.</li>
              <li data-bucket="strong" data-why="13:05 plus 2 hours is 15:05, so the first slot that starts after that is 16:00 to 17:00.">For an order at 13:05, the first slot shown today is 16:00 to 17:00.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft test cases from a story and its rules. Then review the draft with the checks below before you use it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful software tester. Use simple English.

        Story: [US-101 Change quantities in the basket, ShopNest (a made-up grocery app on web, iOS and Android)].
        Agreed rules:
        [- Quantity is a whole number from 1 to 20 per product.
        - Typing 0 removes the product.
        - Above 20: message "You can buy up to 20 of this item"; quantity stays at its last value.
        - Decimals and letters are not accepted.
        - Up to 50 different products in the basket.
        - The total updates straight away.]

        Please:
        1. Write 10 test cases as a table with the columns: ID, Title, Rule tested, Preconditions, Test data, Steps, Expected result, Priority.
        2. Include the limits: 0, 1, 20, 21, the 50th and the 51st product.
        3. Write 2 of the cases again in Given-When-Then form.
        4. Mark any case that uses behaviour not in my rules as ASSUMPTION.

        Expected results must be exact (messages, numbers). Do not invent rules.</pre>
            <ul class="ai-try-checks">
              <li>Every expected result matches a rule exactly, including message text.</li>
              <li>The limits 0, 1, 20, 21 and the 51st product are covered.</li>
              <li>No invented rules; guesses are marked ASSUMPTION.</li>
              <li>Each case links to a rule, so you could trace it in your test tool.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good test case can clearly pass or fail, and it links to the rule it tests. AI can draft many cases fast. You must still check every expected result against the real rules. Remove invented behaviour and add the cases it missed.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Equivalence Partitioning and Boundary Values</h1>
        </div>
        <p class="lc-lead">You cannot test every possible value. A quantity box alone accepts thousands of inputs. Equivalence partitioning and boundary value analysis are two classic test design techniques that help you pick a few strong tests instead. In this lesson you will split inputs into groups and test the edges of each group. You will use the ShopNest quantity box and the delivery fee rules. You will also use AI to draft the groups and check its work. Many real bugs, like BUG-233, sit exactly on an edge.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 305" role="img" aria-label="Two number lines split into partitions. Top: the quantity typed into the box. Below 0 is a question for the product owner. 0 removes the line. 1 to 20 is accepted. 21 and above shows a message. Boundary values to test are 0, 1, 20 and 21. Bottom: the product subtotal after discount. Under 25 pounds the order cannot be placed. From 25 pounds to 59.99 pounds the delivery fee is 4.99 pounds. At 60 pounds or more delivery is free. Boundary values are 24.99 and 25.00, and 59.99 and 60.00.">
            <defs><marker id="st6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Quantity typed into the box (rule: 1 to 20)</text>
              <rect x="20" y="40" width="130" height="50" rx="8" fill="#27274e" stroke="#f59e0b" stroke-dasharray="5 4"/>
              <text x="85" y="61" font-weight="700">Below 0</text>
              <text x="85" y="79" font-size="11" fill="#9b99b8">QUESTION</text>
              <rect x="160" y="40" width="100" height="50" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="210" y="61" font-weight="700">0</text>
              <text x="210" y="79" font-size="11" fill="#9b99b8">removes line</text>
              <rect x="270" y="40" width="300" height="50" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="420" y="61" font-weight="700">1 to 20</text>
              <text x="420" y="79" font-size="11" fill="#9b99b8">accepted</text>
              <rect x="580" y="40" width="160" height="50" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="660" y="61" font-weight="700">21 and above</text>
              <text x="660" y="79" font-size="11" fill="#9b99b8">message shown</text>
              <line x1="20" y1="112" x2="738" y2="112" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#st6a)"/>
              <circle cx="240" cy="112" r="5" fill="#22d3ee"/>
              <circle cx="290" cy="112" r="5" fill="#10b981"/>
              <circle cx="550" cy="112" r="5" fill="#10b981"/>
              <circle cx="600" cy="112" r="5" fill="#ec4899"/>
              <text x="240" y="134" font-size="12">0</text>
              <text x="290" y="134" font-size="12">1</text>
              <text x="550" y="134" font-size="12">20</text>
              <text x="600" y="134" font-size="12">21</text>
              <text x="380" y="158" font-size="11" fill="#9b99b8">Other partitions to test: decimals (2.5), letters (two) and an empty box.</text>
              <text x="380" y="190" font-weight="700" fill="#c4b5fd">Product subtotal after discount</text>
              <rect x="20" y="204" width="220" height="50" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="130" y="225" font-weight="700">Under £25.00</text>
              <text x="130" y="243" font-size="11" fill="#9b99b8">cannot place order</text>
              <rect x="260" y="204" width="240" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="225" font-weight="700">£25.00 to £59.99</text>
              <text x="380" y="243" font-size="11" fill="#9b99b8">delivery £4.99</text>
              <rect x="520" y="204" width="220" height="50" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="630" y="225" font-weight="700">£60.00 or more</text>
              <text x="630" y="243" font-size="11" fill="#9b99b8">free delivery</text>
              <line x1="20" y1="274" x2="738" y2="274" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#st6a)"/>
              <circle cx="222" cy="274" r="5" fill="#ec4899"/>
              <circle cx="278" cy="274" r="5" fill="#f59e0b"/>
              <circle cx="482" cy="274" r="5" fill="#f59e0b"/>
              <circle cx="538" cy="274" r="5" fill="#10b981"/>
              <text x="210" y="296" font-size="12">£24.99</text>
              <text x="290" y="296" font-size="12">£25.00</text>
              <text x="470" y="296" font-size="12">£59.99</text>
              <text x="550" y="296" font-size="12">£60.00</text>
            </g>
          </svg>
          <figcaption>Each box is a partition: values the product should treat the same way. The dots are the boundary values to test. BUG-233 sits on the £60.00 dot.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Equivalence partitioning: one test per group</h3>
          <p>An <strong>equivalence partition</strong> (also called an equivalence class) is a group of values the product should treat the same way. If one value in the group works, the others should work too. So you test one value from each partition, not every value.</p>
          <p>Partitions can be <strong>valid</strong> (the product accepts the value) or <strong>invalid</strong> (the product refuses it). Test each invalid partition on its own. If you mix two wrong values in one test, you will not know which one caused the error.</p>
          <p>Here are the partitions for the ShopNest quantity box, using the rules Priya agreed:</p>
          <table class="lc-table">
            <thead><tr><th>Partition</th><th>Valid or invalid</th><th>Example value</th><th>Expected result</th></tr></thead>
            <tbody>
              <tr><td>1 to 20</td><td>Valid</td><td>7</td><td>Quantity 7 is shown. The total updates straight away.</td></tr>
              <tr><td>0</td><td>Valid (special)</td><td>0</td><td>The product line is removed from the basket.</td></tr>
              <tr><td>21 and above</td><td>Invalid</td><td>35</td><td>"You can buy up to 20 of this item". The quantity stays at its last valid value.</td></tr>
              <tr><td>Decimals</td><td>Invalid</td><td>2.5</td><td>Not accepted.</td></tr>
              <tr><td>Letters</td><td>Invalid</td><td>two</td><td>Not accepted.</td></tr>
              <tr><td>Below 0</td><td>Unknown</td><td>-3</td><td>QUESTION: the rules do not say.</td></tr>
              <tr><td>Empty box</td><td>Unknown</td><td>(nothing)</td><td>QUESTION: the rules do not say.</td></tr>
            </tbody>
          </table>
          <p>Writing partitions often finds gaps. "Not accepted" is still vague: what does the shopper see? Aisha takes three questions to Priya: negative numbers, an empty box and the exact message for decimals and letters.</p>
        </div>
        <div class="lc-card">
          <h3>Boundary value analysis: test the edges</h3>
          <p>A <strong>boundary</strong> is the edge of a partition: its smallest or largest value. Developers often make mistakes at edges. For example, they write "more than" when the rule says "or more". <strong>Boundary value analysis</strong> (BVA) tests the values on and next to each edge.</p>
          <p>The ISTQB Foundation Level syllabus describes two versions:</p>
          <ul class="lc-list">
            <li><strong>2-value BVA</strong>: test the boundary value and its nearest neighbour in the next partition. For 1 to 20, test 0, 1, 20 and 21.</li>
            <li><strong>3-value BVA</strong>: test the boundary value and both of its neighbours. For 1 to 20, test 0, 1, 2 and 19, 20, 21. Use it when a mistake would be costly, for example with money.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>Boundary</th><th>2-value tests</th><th>Expected results</th></tr></thead>
            <tbody>
              <tr><td>Minimum order (subtotal after discount)</td><td>£25.00</td><td>£24.99 and £25.00</td><td>£24.99: the order cannot be placed. £25.00: it can.</td></tr>
              <tr><td>Free delivery (subtotal after discount)</td><td>£60.00</td><td>£59.99 and £60.00</td><td>£59.99: delivery £4.99. £60.00: delivery free.</td></tr>
              <tr><td>SAVE5 minimum (product subtotal)</td><td>£30.00</td><td>£29.99 and £30.00</td><td>£29.99: code refused. £30.00: £5.00 off.</td></tr>
              <tr><td>Slot capacity</td><td>25 orders</td><td>25th and 26th order</td><td>The 25th order books the slot. Then the slot shows "Full".</td></tr>
              <tr><td>Products in the basket</td><td>50 lines</td><td>50th and 51st product</td><td>The 50th is added. The 51st: QUESTION (no message agreed yet).</td></tr>
            </tbody>
          </table>
          <p><strong>Why this matters:</strong> BUG-233 charges £4.99 delivery on a basket of exactly £60.00. The check uses "more than £60" instead of "£60 or more". A test at £60.00 finds it at once. Tests at £45.00 or £80.00 never would.</p>
          <p><strong>A real-world catch:</strong> all ShopNest prices are multiples of 5p. So you cannot build a £59.99 basket from real products. The nearest value you can build is £59.95. Write this down. Then ask Leo to cover the exact 1p step in a component (unit) test.</p>
        </div>
        <div class="lc-card">
          <h3>Drafting partitions with AI, then checking them</h3>
          <p>AI is quick at listing partitions and boundaries. It is often wrong about the expected results, because it does not know your rules.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me boundary values for a quantity field.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a tester at ShopNest (a made-up grocery app). Rules:
        quantity is a whole number from 1 to 20; 0 removes the line; above 20
        shows "You can buy up to 20 of this item"; decimals and letters are
        not accepted. Delivery is £4.99 when the product subtotal after the
        discount is below £60.00, and free at £60.00 or more.
        1. Make a table of equivalence partitions: partition, valid or
           invalid, example value, expected result from my rules.
        2. List the 2-value boundary values. Money moves in 1p steps.
        3. Mark anything my rules do not say as QUESTION.</code></pre>
          <p>Aisha's review of the made-up AI answer:</p>
          <table class="lc-table">
            <thead><tr><th>What the AI wrote</th><th>Problem</th><th>Aisha's fix</th></tr></thead>
            <tbody>
              <tr><td>"0 shows an error message"</td><td>The rule says 0 removes the line</td><td>Changed the expected result</td></tr>
              <tr><td>£59.00 as the value below £60.00</td><td>The nearest neighbour is £59.99</td><td>Changed to £59.99 (and £59.95 for a real basket)</td></tr>
              <tr><td>Free delivery checked on the subtotal before the discount</td><td>The rule uses the subtotal after the discount</td><td>Added Basket A with FRESH10: £56.16, so delivery is £4.99</td></tr>
              <tr><td>"Negative numbers show an error"</td><td>A guess. The rules do not say.</td><td>Marked as QUESTION for Priya</td></tr>
            </tbody>
          </table>
          <p>Promo codes have a length rule too: 4 to 12 characters. A 3-character code and a 13-character code are good boundary tests. But both show "This code is not valid", the same as any unknown code. So you cannot see the length check from the screen. Aisha asks Leo for two staging-only codes with exactly 4 and 12 characters.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which partition is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">A shopper types each value into the ShopNest quantity box. Sort each value into the partition it belongs to.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="valid" data-label="Accepted (1 to 20)"></div>
              <div data-sorter-target="bucket" data-bucket="remove" data-label="Removes the line"></div>
              <div data-sorter-target="bucket" data-bucket="invalid" data-label="Not accepted"></div>
              <div data-sorter-target="bucket" data-bucket="question" data-label="Ask Priya"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="valid" data-why="1 is the lowest value in the valid partition. It is a boundary value.">1</li>
              <li data-bucket="valid" data-why="20 is the highest value in the valid partition. It is a boundary value.">20</li>
              <li data-bucket="remove" data-why="The agreed rule says 0 removes the product line.">0</li>
              <li data-bucket="invalid" data-why="21 is just above the limit. The shopper sees &quot;You can buy up to 20 of this item&quot;. This value catches BUG-232 on the web.">21</li>
              <li data-bucket="invalid" data-why="Decimals are not accepted. It is its own invalid partition, so test it on its own.">2.5</li>
              <li data-bucket="invalid" data-why="Letters are not accepted. This is another separate invalid partition.">two</li>
              <li data-bucket="question" data-why="The rules do not say what happens with negative numbers. Do not guess. Ask the product owner.">-3</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to apply both techniques to money rules. Then check every boundary and every total yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior software tester. Use simple English.

        Feature: [checkout at ShopNest, a made-up online grocery shop in London].
        Rules:
        [- Minimum order: the product subtotal after the promo discount must be at least £25.00.
        - Delivery fee: £4.99 when the product subtotal after the discount is below £60.00. Free at £60.00 or more.
        - Promo code SAVE5: £5.00 off products. The product subtotal must be at least £30.00.]

        Please:
        1. Make a table of equivalence partitions for each rule, with the columns: Rule, Partition, Valid or invalid, Example value, Expected result.
        2. List the boundary values using 2-value boundary value analysis. Money moves in 1p steps.
        3. Add 3-value tests for the free delivery rule.
        4. Write 6 test cases with exact basket values. Show the maths for every total.
        5. Mark anything my rules do not say as QUESTION.

        Do not invent rules or messages.</pre>
            <ul class="ai-try-checks">
              <li>The boundaries are £24.99 and £25.00, £59.99 and £60.00, and £29.99 and £30.00.</li>
              <li>Delivery and the minimum order use the subtotal after the discount.</li>
              <li>Every total is correct when you work it out yourself.</li>
              <li>Missing details, such as message text, are marked QUESTION.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Split inputs into groups the product should treat the same way, and test one value from each group. Then test the edges, because that is where developers slip. AI can list partitions fast, but you must take every expected result from the real rules.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Decision Tables and State Transitions</h1>
        </div>
        <p class="lc-lead">Some rules depend on several conditions at once. Others depend on what happened before. These are the places where testers miss combinations. In this lesson you will learn two techniques for them: decision tables and state transition testing. You will build a decision table for ShopNest delivery fees and a state model for promo codes. You will also use AI to draft both and check its work.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A state transition diagram for a ShopNest promo code. Three states: No code, Code applied, and Confirm replace. From No code, a valid code with the minimum spend met moves to Code applied. An invalid or expired code loops back to No code. From Code applied, the subtotal dropping below the code's minimum moves back to No code, and the code is removed. Entering a second code moves to Confirm replace. From Confirm replace, Yes applies the new code and No keeps the old code, and both go back to Code applied. Below: test all 6 arrows at least once, then try an invalid move.">
            <defs><marker id="st7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="40" y="110" width="150" height="56" rx="28" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="115" y="143" font-weight="700">No code</text>
              <rect x="305" y="110" width="150" height="56" rx="28" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="143" font-weight="700">Code applied</text>
              <rect x="570" y="110" width="170" height="56" rx="28" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="655" y="143" font-weight="700">Confirm replace?</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#st7a)">
                <path d="M95 110 C95 70, 135 70, 135 106"/>
                <line x1="190" y1="126" x2="301" y2="126"/>
                <line x1="305" y1="152" x2="194" y2="152"/>
                <line x1="455" y1="126" x2="566" y2="126"/>
                <line x1="570" y1="152" x2="459" y2="152"/>
              </g>
              <g font-size="12">
                <text x="115" y="60" fill="#f9a8d4">invalid or expired code</text>
                <text x="247" y="86" fill="#6ee7b7">valid code,</text>
                <text x="247" y="102" fill="#6ee7b7">minimum met</text>
                <text x="247" y="190" fill="#fcd34d">below minimum</text>
                <text x="247" y="206" fill="#9b99b8">(code removed)</text>
                <text x="512" y="104" fill="#6ee7b7">enter 2nd code</text>
                <text x="512" y="190" fill="#fcd34d">Yes: new code</text>
                <text x="512" y="206" fill="#fcd34d">No: keep old code</text>
              </g>
              <text x="380" y="250" font-size="12" fill="#c4b5fd">Valid transitions coverage: test all 6 arrows at least once.</text>
              <text x="380" y="272" font-size="12" fill="#9b99b8">Then try an invalid move, such as changing the code after the order is placed.</text>
            </g>
          </svg>
          <figcaption>A state transition diagram shows the states a promo code can be in and the events that move it between them. Each arrow is something to test.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Decision tables: every combination of conditions</h3>
          <p>A <strong>decision table</strong> lists the <strong>conditions</strong> (questions with yes or no answers) and the <strong>actions</strong> (what the product does). Each column is one <strong>rule</strong>: one combination of answers and its result.</p>
          <p>The method has four steps:</p>
          <ul class="lc-list">
            <li>Count the combinations. With 3 yes/no conditions there are 2 × 2 × 2 = 8.</li>
            <li>Remove combinations that cannot happen (called infeasible).</li>
            <li>Merge columns where one condition does not change the result. Mark that condition "–" (does not matter).</li>
            <li>Write at least one test for each column that is left.</li>
          </ul>
          <p>The ISTQB syllabus calls this <strong>decision table testing</strong>. Full coverage means every feasible column has a test.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: ShopNest delivery fees</h3>
          <p>Three conditions decide if an order can be placed and what delivery costs. "Subtotal" here means the product subtotal after any discount.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>R1</th><th>R2</th><th>R3</th><th>R4</th><th>R5</th></tr></thead>
            <tbody>
              <tr><td>C1: Subtotal £25.00 or more?</td><td>No</td><td>Yes</td><td>Yes</td><td>Yes</td><td>Yes</td></tr>
              <tr><td>C2: Subtotal £60.00 or more?</td><td>No</td><td>No</td><td>No</td><td>Yes</td><td>Yes</td></tr>
              <tr><td>C3: FREEDEL applied?</td><td>–</td><td>No</td><td>Yes</td><td>No</td><td>Yes</td></tr>
              <tr><td><strong>A1: Order can be placed</strong></td><td>No</td><td>Yes</td><td>Yes</td><td>Yes</td><td>Yes</td></tr>
              <tr><td><strong>A2: Delivery fee</strong></td><td>–</td><td>£4.99</td><td>Free</td><td>Free</td><td>Free</td></tr>
              <tr><td>Test with</td><td>Just-under-minimum basket (1 banana bunch, 3 chicken, 1 salmon): £24.95</td><td>Basket A + FRESH10: £56.16</td><td>Exact-minimum basket (£30.00) + FREEDEL, new account</td><td>Basket B: £60.00</td><td>Basket A + FREEDEL: £62.40</td></tr>
            </tbody>
          </table>
          <p><strong>How 8 became 5:</strong> "C1 No, C2 Yes" cannot happen. A subtotal under £25.00 cannot also be £60.00 or more. That removes 2 columns. When C1 is No, the order is blocked whatever C3 says. So 2 columns merge into R1. That leaves 8 - 2 - 1 = 5 rules.</p>
          <p><strong>Check the maths for R2:</strong> £62.40 - £6.24 (10%) = £56.16. That is under £60.00, so delivery is £4.99. The total is £56.16 + £4.99 = £61.15.</p>
          <p><strong>Gaps the table shows:</strong> R4 is where BUG-233 fails: Basket B is charged £4.99. R5 raises a question for Priya: if a shopper uses FREEDEL on a basket that is already free, is the code used up? FREEDEL is for the first order only, so the answer matters. FREEDEL also needs a test account with no past orders, such as qa.shopper01.</p>
        </div>
        <div class="lc-card">
          <h3>State transition testing: what happened before</h3>
          <p>A <strong>state</strong> is a situation the product is in, such as "Code applied". An <strong>event</strong> is something the shopper or the system does. A <strong>transition</strong> is an event that moves the product from one state to another. The diagram above shows the promo code model.</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>From state</th><th>Event</th><th>To state</th><th>What the shopper sees</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>No code</td><td>SAVE5 on Basket A (£62.40)</td><td>Code applied</td><td>Discount -£5.00</td></tr>
              <tr><td>2</td><td>No code</td><td>SUMMER25 (expired)</td><td>No code</td><td>"This code has expired"</td></tr>
              <tr><td>3</td><td>Code applied</td><td>Subtotal drops below the code's minimum</td><td>No code</td><td>Code removed, with a message</td></tr>
              <tr><td>4</td><td>Code applied</td><td>Enter a second code</td><td>Confirm replace?</td><td>A confirm message</td></tr>
              <tr><td>5</td><td>Confirm replace?</td><td>Yes</td><td>Code applied</td><td>The new discount</td></tr>
              <tr><td>6</td><td>Confirm replace?</td><td>No</td><td>Code applied</td><td>The old discount stays</td></tr>
            </tbody>
          </table>
          <p>The ISTQB syllabus names three levels of coverage:</p>
          <ul class="lc-list">
            <li><strong>All states</strong>: visit each state at least once (3 states here).</li>
            <li><strong>Valid transitions</strong>: follow each valid arrow at least once (6 arrows here).</li>
            <li><strong>All transitions</strong>: also try the invalid ones, such as changing the code after the order is placed.</li>
          </ul>
          <p>One test journey can cover several arrows. Aisha applies SAVE5 to Basket A, enters FRESH10 and taps Yes. Then she removes the chicken (£16.50) and the salmon (£14.50). The subtotal is £62.40 - £31.00 = £31.40. That is below the FRESH10 minimum of £40.00, so the code is removed. This one journey covers arrows 1, 4, 5 and 3.</p>
          <p>Delivery slots are another good model: Not chosen, Held (30 minutes), Booked and Hold ended. The model shows the gap at once: what if the hold ends during payment?</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to draft tables and models</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a decision table for promo codes.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are the agreed ShopNest promo code rules (made-up app): [rules].
        1. Draw a state transition table: from state, event, to state,
           what the shopper sees. Use only the states my rules need.
        2. List the invalid transitions worth testing.
        3. Mark any message or behaviour not in my rules as QUESTION.</code></pre>
          <p>Check the draft for these common AI mistakes:</p>
          <ul class="lc-list">
            <li>It adds states the product does not have, such as "Code paused".</li>
            <li>It keeps impossible columns, such as a subtotal under £25.00 that is also over £60.00.</li>
            <li>It fills empty actions with a guess instead of marking them QUESTION.</li>
            <li>It forgets that discounts change which column applies.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: build a decision table</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Aisha's steps for building the delivery fee decision table in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">List the conditions as yes or no questions, such as "Subtotal £60.00 or more?".</li>
              <li data-order="2">List the actions the product takes, such as "Order can be placed" and "Delivery fee".</li>
              <li data-order="3">Write out every combination: 3 conditions give 8 columns.</li>
              <li data-order="4">Remove the combinations that cannot happen.</li>
              <li data-order="5">Fill in each action from the agreed rules, and mark unknowns as QUESTION.</li>
              <li data-order="6">Merge columns where a condition does not change the result.</li>
              <li data-order="7">Write at least one test case, with a real basket, for each column left.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a decision table and a state model for delivery slots. Then check each column and arrow against the rules.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior software tester. Use simple English.

        Feature: [choosing a delivery slot at ShopNest, a made-up London grocery app].
        Rules:
        [- 1-hour slots from 08:00 to 22:00, for today and the next 6 days.
        - Same-day slots must start at least 2 hours after the time of ordering.
        - A slot takes up to 25 orders, then shows "Full" and cannot be chosen.
        - A chosen slot is held for 30 minutes.
        - Only some London postcode areas get deliveries.]

        Please:
        1. Make a decision table for "Can the shopper choose this slot?". Use yes/no conditions. Show all combinations, then remove impossible ones and merge where a condition does not matter. Explain each removal.
        2. Make a state transition table for one slot booking: From state, Event, To state, What the shopper sees.
        3. List 3 invalid transitions worth testing.
        4. Give one test for each decision table column, with an exact time and date.
        5. Mark anything my rules do not say as QUESTION.</pre>
            <ul class="ai-try-checks">
              <li>The number of starting combinations is 2 to the power of the number of conditions.</li>
              <li>Each removed column really is impossible, not just unlikely.</li>
              <li>The states match the rules, with no invented states.</li>
              <li>The hold ending during payment appears as a QUESTION, not a made-up answer.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use a decision table when several conditions combine, and a state model when the past changes what happens next. Both turn hidden combinations into a visible list of tests. AI can draft them fast, but you must check every column and arrow against the real rules.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Finding Edge Cases and Negative Tests</h1>
        </div>
        <p class="lc-lead">Shoppers do not always do what designers expect. They type spaces, tap twice, wait too long and use old codes. Negative tests and edge cases check that the product stays safe and clear when this happens. In this lesson you will learn four places where edge cases hide: error inputs, limits, timing and permissions. You will use AI as a brainstorming partner, then choose the tests that matter most for ShopNest checkout.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Four boxes show where edge cases hide in ShopNest checkout. Error inputs: a code with spaces around it, a code with a space inside, and letters or 2.5 as a quantity. Limits: the 51st product line, a basket of exactly 60 pounds, and the 26th order in one slot. Timing: an order at 19:01 with no slot left today, a hold that ends during payment, and the clocks going back on 25 October. Permissions and state: FREEDEL on a second order, another user's order number, and a double tap on Place order.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Where edge cases hide in ShopNest checkout</text>
              <rect x="20" y="40" width="350" height="128" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="36" y="66" font-weight="700" fill="#f9a8d4">Error inputs</text>
              <text x="36" y="94" font-size="12">" save5 " with spaces around it</text>
              <text x="36" y="120" font-size="12">"SAVE 5" with a space inside</text>
              <text x="36" y="146" font-size="12">Letters or 2.5 as a quantity</text>
              <rect x="390" y="40" width="350" height="128" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="406" y="66" font-weight="700" fill="#fcd34d">Limits</text>
              <text x="406" y="94" font-size="12">The 51st product line</text>
              <text x="406" y="120" font-size="12">A basket of exactly £60.00</text>
              <text x="406" y="146" font-size="12">The 26th order in one slot</text>
              <rect x="20" y="182" width="350" height="128" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="36" y="208" font-weight="700" fill="#67e8f9">Timing</text>
              <text x="36" y="236" font-size="12">Order at 19:01: no slot left today</text>
              <text x="36" y="262" font-size="12">The 30-minute hold ends during payment</text>
              <text x="36" y="288" font-size="12">UK clocks go back on Sunday 25 October</text>
              <rect x="390" y="182" width="350" height="128" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="406" y="208" font-weight="700" fill="#c4b5fd">Permissions and state</text>
              <text x="406" y="236" font-size="12">FREEDEL on a second order</text>
              <text x="406" y="262" font-size="12">Another user's order number</text>
              <text x="406" y="288" font-size="12">A double tap on Place order</text>
            </g>
          </svg>
          <figcaption>Four places to look for edge cases. Each example is a real risk in the ShopNest Checkout 2.0 rules.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Negative tests and edge cases</h3>
          <p>A <strong>positive test</strong> checks that the product works when the user does the right thing. A <strong>negative test</strong> checks what happens when the user does something wrong or unexpected. A good product refuses bad input with a clear message. It does not crash, lose the basket or charge the wrong amount.</p>
          <p>An <strong>edge case</strong> is a situation at the far end of what the product expects: the largest value, the last minute or an unusual order of actions. Edge cases are rare for one shopper. But with thousands of shoppers, rare things happen every day.</p>
          <p>The boundary and decision table techniques find many edge cases. This lesson adds the ones that come from timing, people and real-life behaviour.</p>
        </div>
        <div class="lc-card">
          <h3>Four places edge cases hide</h3>
          <table class="lc-table">
            <thead><tr><th>Where</th><th>ShopNest test</th><th>Expected result (from the rules)</th></tr></thead>
            <tbody>
              <tr><td>Error inputs</td><td>Type " save5 " with spaces before and after</td><td>Accepted as SAVE5. Spaces are removed and lowercase becomes capitals.</td></tr>
              <tr><td>Error inputs</td><td>Type "SAVE 5" with a space inside</td><td>"This code is not valid". Only spaces before and after are removed.</td></tr>
              <tr><td>Limits</td><td>Add a 51st different product</td><td>QUESTION: the limit is 50, but no message is agreed.</td></tr>
              <tr><td>Timing</td><td>Order at 19:00, then at 19:01</td><td>At 19:00, the 21:00 to 22:00 slot is shown. At 19:01, no slot is left today.</td></tr>
              <tr><td>Timing</td><td>Let the 30-minute slot hold end while on the payment page</td><td>QUESTION: the rules do not say.</td></tr>
              <tr><td>Timing</td><td>View slots on Saturday 24 October for the next 7 days</td><td>Slots on Sunday 25 October still show 08:00 to 22:00 after the clocks go back.</td></tr>
              <tr><td>Permissions</td><td>Use FREEDEL with qa.shopper02, who has past orders</td><td>Refused, because FREEDEL is for the first order only. QUESTION: which message?</td></tr>
              <tr><td>Permissions</td><td>Change the order number in the web address to another account's order</td><td>The other order must never be shown.</td></tr>
              <tr><td>State</td><td>Double tap Place order on a slow connection</td><td>One order and one payment only.</td></tr>
            </tbody>
          </table>
          <p>Seeing another user's order is called <strong>broken access control</strong>. It is the top risk in the OWASP Top 10, a widely used list of web security risks. If you find one, report it through the company security process. Do not paste the details into an AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>AI as a brainstorming partner</h3>
          <p>AI is good at long lists of odd inputs and "what if" situations. But its lists are often generic, and it may state guesses as rules. Give it your rules and ask for groups and labels.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What are some negative tests for a checkout?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a tester at ShopNest (a made-up grocery app). Here are the
        agreed promo code rules: [rules]. List negative tests and edge
        cases in 4 groups: error inputs, limits, timing, permissions
        and state. Label each RULE, ASSUMPTION or QUESTION. Rate each
        High, Medium or Low risk for money, lost orders and privacy.</code></pre>
          <p>Then choose. You cannot run every idea, so rank them by <strong>risk</strong>: how likely the problem is, and how bad it would be. Money, privacy and lost orders come first. A strange emoji in the promo box matters less than a double charge.</p>
          <p>What you must still do yourself:</p>
          <ul class="lc-list">
            <li>Check every expected result against the agreed rules.</li>
            <li>Send each QUESTION to the product owner. Do not accept the AI's guess.</li>
            <li>Run the tests on the real product. The AI cannot see how ShopNest behaves.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a brainstorm with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Aisha asks">She pastes US-102 and the agreed promo code rules into the approved AI tool. She asks for negative tests in 4 groups, labelled RULE, ASSUMPTION or QUESTION.</li>
              <li data-kind="answer" data-label="AI replies">24 ideas, including " save5 " with spaces, a 13-character code, SUMMER25, FREEDEL on a second order and removing items after a code is applied.</li>
              <li data-kind="warn" data-label="A wrong rule">One idea says "SAVE 5 should work, because spaces are removed". The rule only removes spaces before and after the code. A space inside makes it not valid.</li>
              <li data-kind="thought" data-label="Aisha thinks">Nothing covers the code's end date. What if FRESH10 is applied at 23:59 on 30 November and paid for at 00:01 on 1 December?</li>
              <li data-kind="check" data-label="Aisha decides">She writes it as a QUESTION for Priya, with the exact times. She does not guess the answer.</li>
              <li data-kind="tool" data-label="Aisha tests">On staging she uses the Exact-minimum basket (£30.00): 2 chicken, 2 salmon, 2 rice. She applies SAVE5, then removes 1 rice.</li>
              <li data-kind="result" data-label="What she sees">The subtotal is now £27.75, below the £30.00 minimum. SAVE5 is removed with a message. The total shows £27.75 + £4.99 = £32.74, as the rules say.</li>
              <li data-kind="result" data-label="Final list">She keeps 19 ideas, fixes 1 and drops 4 duplicates. She marks the 6 highest-risk ideas to run first.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to brainstorm edge cases and negative tests for a feature. Then rank them by risk and check them against the rules.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced software tester who is good at finding edge cases. Use simple English.

        Product: [ShopNest, a made-up online grocery app in London, on web, iOS and Android].
        Feature and rules:
        [Delivery slots. 1-hour slots from 08:00 to 22:00, for today and the next 6 days. Same-day slots must start at least 2 hours after the time of ordering. Each slot takes up to 25 orders, then shows "Full". A chosen slot is held for 30 minutes. Some postcodes are outside the delivery area.]

        Please:
        1. List 20 negative tests and edge cases in 4 groups: Error inputs, Limits, Timing, Permissions and state.
        2. For each one give: the exact test (times, values, steps), the expected result from my rules, and a label: RULE, ASSUMPTION or QUESTION.
        3. Rate each High, Medium or Low risk, and give one reason.
        4. Name the 5 tests I should run first.

        Do not invent rules or messages. Do not say the list is complete.</pre>
            <ul class="ai-try-checks">
              <li>The tests use exact values, such as an order at 19:00 and 19:01.</li>
              <li>Expected results match your rules. Guesses are labelled.</li>
              <li>Timing tests include the 30-minute hold and the 2-hour cut-off.</li>
              <li>The top 5 are about money, lost orders or privacy, not small details.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Real shoppers type odd things, wait too long and tap twice. Look for edge cases in four places: inputs, limits, timing, and permissions and state. Use AI to widen the list, then rank it by risk. Take every expected result from the rules, not from the AI.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Test Data with AI</h1>
        </div>
        <p class="lc-lead">Every test needs data: accounts, baskets, codes, addresses and amounts. Good test data hits the limits and covers each rule. Safe test data never exposes a real person. In this lesson you will learn what test data you need and how to keep it privacy-safe. You will build a data table for ShopNest and check it with a spreadsheet. You will also see how AI makes realistic fake data fast, and where it slips.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A workflow of four steps. 1. List the rules, limits and partitions. 2. AI drafts a fake data table. 3. You check that it is valid, fake and that the sums are right. 4. Load it on staging with test accounts only. Below, four safe values: emails at shopnest.test, UK phones from 07700 900000 to 07700 900999, US phones 555-0100 to 555-0199, and the payment provider's test cards. At the bottom: never use real customers, real card numbers or a raw copy of live data.">
            <defs><marker id="st9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="160" height="64" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="100" y="58" font-weight="700">1. List the rules</text>
              <text x="100" y="79" font-size="11" fill="#9b99b8">limits, partitions</text>
              <rect x="210" y="30" width="160" height="64" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="290" y="58" font-weight="700">2. AI drafts</text>
              <text x="290" y="79" font-size="11" fill="#9b99b8">a fake data table</text>
              <rect x="400" y="30" width="160" height="64" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="480" y="58" font-weight="700">3. You check</text>
              <text x="480" y="79" font-size="11" fill="#9b99b8">valid, fake, sums</text>
              <rect x="590" y="30" width="150" height="64" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="58" font-weight="700">4. Load on staging</text>
              <text x="665" y="79" font-size="11" fill="#9b99b8">test accounts only</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#st9a)">
                <line x1="181" y1="62" x2="207" y2="62"/>
                <line x1="371" y1="62" x2="397" y2="62"/>
                <line x1="561" y1="62" x2="587" y2="62"/>
              </g>
              <text x="380" y="134" font-weight="700" fill="#6ee7b7">Safe values to use</text>
              <rect x="20" y="148" width="165" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="102" y="171" font-weight="700">Emails</text>
              <text x="102" y="192" font-size="11" fill="#9b99b8">@shopnest.test</text>
              <rect x="205" y="148" width="165" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="287" y="171" font-weight="700">UK phones</text>
              <text x="287" y="192" font-size="11" fill="#9b99b8">07700 900000-900999</text>
              <rect x="390" y="148" width="165" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="472" y="171" font-weight="700">US phones</text>
              <text x="472" y="192" font-size="11" fill="#9b99b8">555-0100 to 555-0199</text>
              <rect x="575" y="148" width="165" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="657" y="171" font-weight="700">Cards</text>
              <text x="657" y="192" font-size="11" fill="#9b99b8">provider test cards</text>
              <rect x="20" y="234" width="720" height="44" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="261" font-weight="700">Never: real customers, real card numbers, or a raw copy of live data.</text>
            </g>
          </svg>
          <figcaption>Plan the data from the rules, let AI draft it, check it yourself, and load it only into a test environment. Use values that are reserved for fiction and testing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What test data you need</h3>
          <p><strong>Test data</strong> is every value a test uses: accounts, products, codes, addresses, dates and amounts. Plan it from the rules, just like the tests.</p>
          <table class="lc-table">
            <thead><tr><th>Kind of data</th><th>What it is for</th><th>ShopNest example</th></tr></thead>
            <tbody>
              <tr><td>Valid</td><td>Happy paths</td><td>Basket A (£62.40) with SAVE5</td></tr>
              <tr><td>Invalid</td><td>Negative tests</td><td>Code "SAVE 5", quantity 2.5, postcode CR0</td></tr>
              <tr><td>Boundary</td><td>The edges of each rule</td><td>Basket B (exactly £60.00), the 50th and 51st product</td></tr>
              <tr><td>State</td><td>Accounts in a certain situation</td><td>A new account with no orders, for FREEDEL</td></tr>
              <tr><td>Volume</td><td>Large amounts</td><td>50 product lines with 20 of each: 1,000 items</td></tr>
            </tbody>
          </table>
          <p>Keep your data in one shared table, with an ID for each item. Then test cases can point to "Basket B" instead of repeating the products each time.</p>
        </div>
        <div class="lc-card">
          <h3>Privacy-safe data</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Risk</th><th>When to use it</th></tr></thead>
            <tbody>
              <tr><td>Synthetic data (made up from scratch)</td><td>Low</td><td>The default. AI is good at making it.</td></tr>
              <tr><td>Masked copy of live data (names and emails replaced)</td><td>Medium</td><td>Only with approval from your data protection team</td></tr>
              <tr><td>Raw copy of live customer data</td><td>High</td><td>Do not use it for testing or in AI tools</td></tr>
            </tbody>
          </table>
          <p>Be careful with masked data. The UK data protection regulator (the ICO) explains that <strong>pseudonymised</strong> data is still personal data under UK GDPR. Pseudonymised means names are swapped for codes, but the company can still link them back. This is general information, not legal advice. Ask your data protection officer or a qualified adviser.</p>
          <p>Use values that are reserved for fiction or testing, so you never reach a real person:</p>
          <ul class="lc-list">
            <li><strong>Emails</strong>: domains like <code>shopnest.test</code> or <code>example.com</code>. The <code>.test</code> and <code>example.com</code> names are reserved for testing and examples.</li>
            <li><strong>UK phone numbers</strong>: 07700 900000 to 07700 900999. Ofcom (the UK telecoms regulator) keeps these for drama and fiction.</li>
            <li><strong>US phone numbers</strong>: 555-0100 to 555-0199, which are kept for fictional use.</li>
            <li><strong>Payment cards</strong>: only the test card numbers your payment provider publishes for its sandbox. Check the provider's current docs.</li>
            <li><strong>Addresses</strong>: a postcode area such as SE15 or NW1, with a made-up street. Never copy a real customer's address.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The ShopNest data table, checked with a spreadsheet</h3>
          <p>Aisha keeps one table of test accounts. All of them are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Account</th><th>State</th><th>Postcode area</th><th>Used for</th></tr></thead>
            <tbody>
              <tr><td>qa.shopper01@shopnest.test</td><td>New, no orders yet</td><td>SE15</td><td>FREEDEL (first order only)</td></tr>
              <tr><td>qa.shopper02@shopnest.test</td><td>Returning, past orders</td><td>NW1</td><td>FREEDEL refused, Basket B</td></tr>
              <tr><td>qa.shopper03@shopnest.test</td><td>Uses the iOS app</td><td>E14</td><td>iPhone checkout tests</td></tr>
              <tr><td>qa.shopper04@shopnest.test</td><td>Uses the Android app</td><td>SW11</td><td>Android checkout tests</td></tr>
              <tr><td>qa.shopper05@shopnest.test</td><td>Outside the delivery area</td><td>CR0</td><td>"We do not deliver here yet"</td></tr>
            </tbody>
          </table>
          <p>AI can make baskets fast, but it often gets sums wrong. So Aisha checks each basket in a sheet. For Basket A she puts the price in column B and the quantity in column C, in rows 2 to 9:</p>
          <pre><code>D2:  =B2*C2               (copy down to D9: line totals)
        C10: =SUM(C2:C9)           17      (items)
        D10: =SUM(D2:D9)           62.40   (product subtotal)
        D11: =ROUND(D10*10%,2)     6.24    (FRESH10 discount)
        D12: =D10-D11              56.16   (subtotal after discount)
        D13: =IF(D12&gt;=60,0,4.99)   4.99    (delivery fee)
        D14: =D12+D13              61.15   (total to pay)</code></pre>
          <p>Notice <code>&gt;=</code> in the delivery formula. With <code>&gt;</code> the sheet would make the same mistake as BUG-233.</p>
          <p>She also adds two edge baskets for the SAVE5 minimum of £30.00:</p>
          <table class="lc-table">
            <thead><tr><th>Basket</th><th>Products</th><th>Subtotal</th><th>Expected with SAVE5</th></tr></thead>
            <tbody>
              <tr><td>Exact-minimum basket</td><td>2 chicken breast, 2 salmon fillets, 2 rice</td><td>£30.00</td><td>£25.00 after discount (exactly the minimum order), delivery £4.99, total £29.99</td></tr>
              <tr><td>Just-under-SAVE5 basket</td><td>4 sourdough, 3 chicken breast, 1 rice</td><td>£29.95</td><td>SAVE5 refused. Delivery £4.99, total £34.94</td></tr>
            </tbody>
          </table>
          <p>Why £29.95 and not £29.99? All ShopNest prices are multiples of 5p, so £29.95 is the closest real basket below £30.00. An AI may suggest "a £29.99 basket" that you cannot build.</p>
        </div>
        <div class="lc-card">
          <h3>A US example, and prompts that work</h3>
          <p>Jordan Lee tests the "Send money" screen at PayLite, a made-up payments app in New York. The made-up rule: one transfer is $0.01 to $2,500.00. Jordan needs payees and amounts.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me some test customers with phone numbers and card details.</code></pre>
          <p>This may return real-looking numbers that belong to real people. <strong>Better prompt:</strong></p>
          <pre><code>Make 8 fake payees for testing a US payments app (made-up company).
        Use emails at example.com and phone numbers from 555-0100 to
        555-0199 only. No card numbers. Add transfer amounts for the rule
        "$0.01 to $2,500.00": $0.00, $0.01, $2,500.00 and $2,500.01, with
        the expected result for each. Return a table and a CSV block.</code></pre>
          <p>One row from a made-up answer: Maria Lopez, maria.lopez@example.com, (212) 555-0142, $2,500.01, expected "refused". Jordan still checks each row:</p>
          <ul class="lc-list">
            <li>Every phone number and email is in a reserved range or domain.</li>
            <li>Dates are real dates (no 31 September) and amounts follow the rules.</li>
            <li>Names are not real public people.</li>
            <li>The data covers every partition and boundary, not only happy paths.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: is this test data safe?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Aisha is building test data for ShopNest staging. Sort each item.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="safe" data-label="Safe to use"></div>
              <div data-sorter-target="bucket" data-bucket="approval" data-label="Only with approval"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="safe" data-why="It is a made-up test account on a .test domain, which is reserved for testing.">qa.shopper07@shopnest.test</li>
              <li data-bucket="safe" data-why="Ofcom keeps 07700 900000 to 07700 900999 for drama, so it reaches no real person.">The phone number 07700 900123</li>
              <li data-bucket="approval" data-why="Names swapped for codes is pseudonymised data. It is still personal data, so the data protection team must approve it.">Last month's real orders, with names swapped for codes</li>
              <li data-bucket="never" data-why="Real card numbers must never be used in tests or pasted into AI tools.">A real card number copied from a refund ticket</li>
              <li data-bucket="safe" data-why="AI-made fake data with only a postcode area does not describe a real person.">A made-up name and street in postcode area SE15, made by AI</li>
              <li data-bucket="never" data-why="A real person's number could get test messages. Use a reserved number instead.">A colleague's real mobile number</li>
              <li data-bucket="safe" data-why="Payment providers publish test cards for their sandbox. They cannot take real money.">The payment provider's published test card</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a safe test data table for a feature. Then check the values and recalculate every total in a sheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a test data specialist. Use simple English.

        Product: [ShopNest, a made-up online grocery app in London. Money in £].
        Rules to cover:
        [- Delivery fee £4.99 when the product subtotal after discount is below £60.00; free at £60.00 or more.
        - Minimum order: product subtotal after discount of at least £25.00.
        - Promo code SAVE5: £5.00 off products, minimum product subtotal £30.00.
        - Delivery only to London postcode areas E, N, NW, SE, SW and W.]
        Products and prices: [bananas £1.20, milk £1.45, sourdough £2.80, eggs £3.75, chicken breast £5.50, salmon fillets £7.25, rice £2.25].

        Please:
        1. Make 6 test shoppers. Use emails at shopnest.test, UK phones from 07700 900000 to 07700 900999, a postcode area and a made-up street.
        2. Make 6 baskets that hit the boundaries. Show each line, the subtotal, the discount, the delivery fee and the total.
        3. Say which rule each item tests.
        4. Give the baskets again as a CSV block.

        Use only made-up data. No card numbers.</pre>
            <ul class="ai-try-checks">
              <li>Every total is correct when you recalculate it in a sheet.</li>
              <li>The baskets really reach the boundaries, or the AI says how close they get.</li>
              <li>Phones, emails and addresses are reserved or clearly made up.</li>
              <li>At least one shopper is outside the delivery area.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Plan test data from the rules, so it hits every partition and boundary. Make it synthetic, and use values reserved for fiction and testing. AI can draft data tables in seconds, but check every value and recalculate every sum before you trust it.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Exploratory Testing with AI</h1>
        </div>
        <p class="lc-lead">Written test cases check what someone expected. Exploratory testing finds what nobody expected. In this lesson you will learn how to run exploratory testing with a clear goal, a time limit and good notes. You will write charters, use heuristics for test ideas, keep session notes and hold a short debrief. You will also see how AI helps before and after a session, and why it must never add findings you did not see.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A cycle of four steps. 1. Charter: a goal and a time box. 2. Session: explore and take notes. 3. Notes: bugs, questions and ideas. 4. Debrief: talk it through with the QA lead using PROOF. An arrow from Debrief goes back to Charter: new charters from what you learned. Under each step is how AI helps: AI drafts charters from risks, AI suggests heuristics and ideas, AI tidies your rough notes, and AI drafts a summary. At the bottom: you decide what is a bug; AI only works with what you saw.">
            <defs><marker id="st10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="12" fill="#9b99b8">New charters from what you learned</text>
              <path d="M665 50 L665 34 L100 34 L100 46" stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#st10a)"/>
              <rect x="20" y="50" width="160" height="64" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="100" y="78" font-weight="700">1. Charter</text>
              <text x="100" y="99" font-size="11" fill="#9b99b8">goal + time box</text>
              <rect x="210" y="50" width="160" height="64" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="290" y="78" font-weight="700">2. Session</text>
              <text x="290" y="99" font-size="11" fill="#9b99b8">explore, take notes</text>
              <rect x="400" y="50" width="160" height="64" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="480" y="78" font-weight="700">3. Notes</text>
              <text x="480" y="99" font-size="11" fill="#9b99b8">bugs, questions, ideas</text>
              <rect x="590" y="50" width="150" height="64" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="78" font-weight="700">4. Debrief</text>
              <text x="665" y="99" font-size="11" fill="#9b99b8">PROOF with Sam</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#st10a)">
                <line x1="181" y1="82" x2="207" y2="82"/>
                <line x1="371" y1="82" x2="397" y2="82"/>
                <line x1="561" y1="82" x2="587" y2="82"/>
              </g>
              <g stroke="#9b99b8" stroke-width="1" stroke-dasharray="3 3">
                <line x1="100" y1="114" x2="100" y2="150"/>
                <line x1="290" y1="114" x2="290" y2="150"/>
                <line x1="480" y1="114" x2="480" y2="150"/>
                <line x1="665" y1="114" x2="665" y2="150"/>
              </g>
              <g font-size="11">
                <rect x="20" y="150" width="160" height="50" rx="8" fill="#27274e" stroke="#f59e0b" stroke-dasharray="5 4"/>
                <text x="100" y="171" font-weight="700" fill="#fcd34d">AI drafts</text>
                <text x="100" y="188" fill="#9b99b8">charters from risks</text>
                <rect x="210" y="150" width="160" height="50" rx="8" fill="#27274e" stroke="#f59e0b" stroke-dasharray="5 4"/>
                <text x="290" y="171" font-weight="700" fill="#fcd34d">AI suggests</text>
                <text x="290" y="188" fill="#9b99b8">heuristics, ideas</text>
                <rect x="400" y="150" width="160" height="50" rx="8" fill="#27274e" stroke="#f59e0b" stroke-dasharray="5 4"/>
                <text x="480" y="171" font-weight="700" fill="#fcd34d">AI tidies</text>
                <text x="480" y="188" fill="#9b99b8">your rough notes</text>
                <rect x="590" y="150" width="150" height="50" rx="8" fill="#27274e" stroke="#f59e0b" stroke-dasharray="5 4"/>
                <text x="665" y="171" font-weight="700" fill="#fcd34d">AI drafts</text>
                <text x="665" y="188" fill="#9b99b8">a summary</text>
              </g>
              <rect x="20" y="226" width="720" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="251" font-weight="700">You decide what is a bug. AI only works with what you saw.</text>
            </g>
          </svg>
          <figcaption>Session-based exploratory testing is a loop: charter, session, notes and debrief. AI helps around the session, but the tester does the exploring and judges the results.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What exploratory testing is</h3>
          <p><strong>Exploratory testing</strong> means designing and running tests at the same time. You learn about the product as you test, and each result gives you the next idea. It finds problems that nobody wrote down in a test case.</p>
          <p>It is not random clicking. Many teams use <strong>session-based test management</strong>, a method first described by James and Jonathan Bach. Each session has:</p>
          <ul class="lc-list">
            <li>a <strong>charter</strong>: the goal of the session;</li>
            <li>a <strong>time box</strong>: a fixed length, often 60 to 90 minutes, with no interruptions;</li>
            <li><strong>session notes</strong>: what you did, what you found and what you could not test;</li>
            <li>a <strong>debrief</strong>: a short talk with the QA lead after the session.</li>
          </ul>
          <p>Exploratory testing and written test cases work together. Test cases check the agreed rules. Exploring finds the surprises around them.</p>
        </div>
        <div class="lc-card">
          <h3>Charters and heuristics</h3>
          <p>A popular charter template comes from Elisabeth Hendrickson's book <em>Explore It!</em>:</p>
          <pre><code>Explore [target] with [resources] to discover [information].</code></pre>
          <table class="lc-table">
            <thead><tr><th>Weak charter</th><th>Strong charter</th></tr></thead>
            <tbody>
              <tr><td>Test the delivery slots.</td><td>Explore choosing a delivery slot with the iOS app 5.8.0, qa.shopper03 and a slot set to Full, to discover problems with the 30-minute hold.</td></tr>
              <tr><td>Try promo codes.</td><td>Explore promo codes with odd inputs (spaces, lowercase, long codes) on web and Android, to discover where the two behave differently.</td></tr>
            </tbody>
          </table>
          <p>A <strong>heuristic</strong> is a rule of thumb that gives you test ideas. It does not guarantee a bug. It points you to likely places. Some well-known ones:</p>
          <table class="lc-table">
            <thead><tr><th>Heuristic</th><th>Ask</th><th>ShopNest idea</th></tr></thead>
            <tbody>
              <tr><td>SFDIPOT (from James Bach's Heuristic Test Strategy Model)</td><td>Structure, Function, Data, Interfaces, Platform, Operations, Time</td><td>Time: what happens when the slot hold ends?</td></tr>
              <tr><td>Too big, too small, just right</td><td>Try sizes at and past the limits</td><td>A basket with 50 lines of 20 items each</td></tr>
              <tr><td>Interrupt</td><td>Stop in the middle of a task</td><td>Lock the phone on the payment page, then come back</td></tr>
              <tr><td>Create, read, update, delete</td><td>Do every action on one thing</td><td>Choose a slot, view it, change it, cancel the order</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Session notes and the debrief</h3>
          <p>Aisha runs a 60-minute session on Wednesday 14 October 2026, on the iOS app 5.8.0. Before it, Leo sets one test slot (18:00 to 19:00 on Friday 16 October) to take only 1 order, so she can test "Full". Her notes after the session:</p>
          <pre><code>Charter: Explore choosing a delivery slot with iOS 5.8.0, qa.shopper03
          and a slot set to Full, to discover problems with the 30-minute hold.
        Time: 10:00 to 11:00   Build: iOS 5.8.0 (staging)
        Time split: setup 10 min, testing 35 min, bug investigation 15 min
        BUG?  After the hold ended, the app still said "slot held" until
              I left the screen and came back.
        BUG?  VoiceOver read a Full slot as "button" and did not say "Full".
        QUESTION  What should happen if the hold ends during payment?
        IDEA  New charter: slots around Sunday 25 October (clocks go back).
        NOT TESTED  Android. Postcodes outside the area.</code></pre>
          <p>The time split shows how much of the session was real testing: 10 + 35 + 15 = 60 minutes. The VoiceOver note is an accessibility problem. WCAG 2.2, the common accessibility standard, expects controls to have names that screen readers can read.</p>
          <p>After the session, Sam and Aisha hold a 10-minute debrief. Sam uses <strong>PROOF</strong>, a checklist from Jonathan Bach:</p>
          <ul class="lc-list">
            <li><strong>Past</strong>: what happened in the session?</li>
            <li><strong>Results</strong>: what did you find?</li>
            <li><strong>Obstacles</strong>: what got in the way?</li>
            <li><strong>Outlook</strong>: what still needs testing?</li>
            <li><strong>Feelings</strong>: how do you feel about this area?</li>
          </ul>
          <p>After the debrief, Aisha logs the hold problem in Jira. She sends the QUESTION to Priya and adds the clock change charter to the list. The VoiceOver note goes on the list for the planned accessibility tests. When those tests run on the release build, the team logs it as BUG-235.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI helps, and where it must not</h3>
          <table class="lc-table">
            <thead><tr><th>Moment</th><th>How AI helps</th><th>What you check</th></tr></thead>
            <tbody>
              <tr><td>Before</td><td>Turns a risk list into charters. Suggests heuristics for a feature.</td><td>Each charter fits one time box and has a clear goal.</td></tr>
              <tr><td>During</td><td>Gives quick ideas when you feel stuck.</td><td>Keep exploring the product, not chatting with the AI.</td></tr>
              <tr><td>After</td><td>Turns rough notes into a tidy session report and a debrief summary.</td><td>Every finding is one you really saw. Nothing is added or made stronger.</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write up my testing session.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are my rough exploratory session notes: [notes]. Turn them into
        a short session report with these parts: Charter, Time split,
        Possible bugs, Questions, Ideas, Not tested. Use only facts in my
        notes. Do not add findings, causes or steps I did not write.</code></pre>
          <p>Clean your notes first. Remove tokens, internal addresses and any real customer data before you paste them.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow a session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Aisha asks">She gives the approved AI tool the US-103 rules and a list of risks. She asks for 4 charters, each for a 60-minute session.</li>
              <li data-kind="answer" data-label="AI replies">4 charters. One says "Explore all of checkout to discover all bugs".</li>
              <li data-kind="warn" data-label="Too wide">That charter has no clear target and cannot fit one time box. No session can find all bugs. She drops it.</li>
              <li data-kind="tool" data-label="Session starts">10:00. She takes the slot hold charter, opens the iOS app with qa.shopper03 and starts a timer.</li>
              <li data-kind="thought" data-label="Heuristic">She uses "interrupt": she chooses a slot, locks the phone for 31 minutes and comes back.</li>
              <li data-kind="result" data-label="What she sees">The app still says the slot is held, but the hold should have ended. She notes the exact steps and times.</li>
              <li data-kind="user" data-label="After the session">She pastes her cleaned notes and asks the AI for a tidy session report, using only her facts.</li>
              <li data-kind="check" data-label="Aisha checks">The draft says the bug "happens on all phones". She only tested one iPhone, so she removes that claim before the debrief with Sam.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft exploratory testing charters and a notes sheet for a feature. Then choose the charter you would run first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced exploratory tester. Use simple English.

        Product: [ShopNest, a made-up online grocery app in London, on web, iOS and Android].
        Feature: [promo codes at checkout. One code per order. A second code replaces the first after a confirm message. Codes are 4 to 12 letters and digits. Spaces before and after are removed, and lowercase becomes capitals].
        Risks we worry about: [web and apps behave differently; the discount is wrong when the basket changes; expired codes].
        Session length: [60 minutes].

        Please:
        1. Write 5 charters using the template "Explore [target] with [resources] to discover [information]". Each must fit one session.
        2. For each charter, give 3 heuristics or test ideas and the test data I need.
        3. Give me a one-page session notes template with: Charter, Build, Time split, Possible bugs, Questions, Ideas, Not tested.
        4. Say which charter to run first and why.

        Do not invent product behaviour. Do not say any session will find all bugs.</pre>
            <ul class="ai-try-checks">
              <li>Each charter has a clear target, resources and goal.</li>
              <li>Each charter is small enough for one 60-minute session.</li>
              <li>The test ideas link to your listed risks.</li>
              <li>The notes template has a place for what was not tested.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Exploratory testing is planned learning: a clear charter, a time box, honest notes and a debrief. AI can draft charters and tidy your notes. But only you can see the product, so every finding in the report must be one you really saw.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Writing Clear Bug Reports</h1>
        </div>
        <p class="lc-lead">A bug report is a message to a busy developer. If it is clear, the bug gets fixed fast. If it is vague, people waste hours trying to see the problem. In this lesson you will learn the parts of a good bug report. You will learn the difference between severity and priority, and which evidence to add. You will also see how Aisha turns rough notes into a clear report with AI, and what she must fix in the AI draft.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A grid of three rows and three columns. Rows are priority, how soon to fix: high, medium and low. Columns are severity, how much harm: low, medium and high. High priority row: a typo in the shop name has low severity; BUG-231, lowercase code rejected, and BUG-233, a fee charged at exactly 60 pounds, have medium severity; payment failing for all shoppers has high severity. Medium priority row: BUG-232, quantity 21 accepted, has medium severity. Low priority row: a typo in a help page has low severity; a crash on a very old phone has high severity.">
            <defs><marker id="st11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Severity (how much harm) is not the same as priority (how soon to fix)</text>
              <g text-anchor="end" font-weight="700">
                <text x="130" y="85">High priority</text>
                <text x="130" y="165">Medium priority</text>
                <text x="130" y="245">Low priority</text>
              </g>
              <rect x="144" y="44" width="192" height="72" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <rect x="344" y="44" width="192" height="72" rx="8" fill="#27274e" stroke="#ec4899"/>
              <rect x="544" y="44" width="192" height="72" rx="8" fill="#27274e" stroke="#ec4899"/>
              <rect x="144" y="124" width="192" height="72" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="344" y="124" width="192" height="72" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="544" y="124" width="192" height="72" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="144" y="204" width="192" height="72" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <rect x="344" y="204" width="192" height="72" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="544" y="204" width="192" height="72" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <g font-size="12" text-anchor="middle">
                <text x="240" y="85">Typo in shop name</text>
                <text x="440" y="75">BUG-231 lowercase code</text>
                <text x="440" y="97">BUG-233 fee at £60.00</text>
                <text x="640" y="85">Payment fails for all</text>
                <text x="440" y="165">BUG-232 qty 21 accepted</text>
                <text x="240" y="245">Typo in help page</text>
                <text x="640" y="245">Crash on very old phone</text>
              </g>
              <g text-anchor="middle" font-weight="700">
                <text x="240" y="300">Low severity</text>
                <text x="440" y="300">Medium severity</text>
                <text x="640" y="300">High severity</text>
              </g>
              <text x="380" y="328" font-size="11" fill="#9b99b8" text-anchor="middle">The tester proposes severity from the harm. The product owner and team agree the priority.</text>
            </g>
          </svg>
          <figcaption>Severity and priority are two different questions. A small typo can be urgent, and a serious crash can wait if almost nobody meets it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The parts of a good bug report</h3>
          <p>A good bug report lets someone else see the bug without asking you anything. At ShopNest, bugs go into Jira. These are the parts Aisha fills in for BUG-233:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it holds</th><th>BUG-233 example</th></tr></thead>
            <tbody>
              <tr><td>Title</td><td>Where, what goes wrong, and when</td><td>Checkout charges £4.99 delivery when products cost exactly £60.00</td></tr>
              <tr><td>Environment</td><td>Build, device, browser, settings, test account</td><td>Staging, web 2.14.0 (Chrome, Safari), iOS and Android 5.8.0, <code>checkout_v2</code> on</td></tr>
              <tr><td>Steps to reproduce</td><td>Numbered actions with exact data</td><td>Add 4 salmon fillets, 4 chicken breasts and 4 bags of rice. Open the order summary.</td></tr>
              <tr><td>Expected result</td><td>What should happen, and the rule it comes from</td><td>Delivery: Free. Total: £60.00. (US-104 AC3)</td></tr>
              <tr><td>Actual result</td><td>What really happens, word for word</td><td>Delivery: £4.99. Total: £64.99.</td></tr>
              <tr><td>How often</td><td>How many tries showed the bug</td><td>3 out of 3 tries on each platform</td></tr>
              <tr><td>Severity and priority</td><td>How much harm, and how soon to fix</td><td>Severity Medium, priority High</td></tr>
              <tr><td>Evidence and links</td><td>Screenshots, recordings, cleaned logs, story and test case</td><td>Order summary screenshots, US-104, TC-104-05</td></tr>
            </tbody>
          </table>
          <p>A good title follows a simple pattern: <strong>where</strong> + <strong>what goes wrong</strong> + <strong>when</strong>. "Checkout broken" says nothing. The BUG-233 title tells the developer the screen, the wrong amount and the exact condition.</p>
        </div>
        <div class="lc-card">
          <h3>Severity and priority</h3>
          <p>The ISTQB glossary defines <strong>severity</strong> as the degree of impact a defect has on the system. <strong>Priority</strong> is the business importance of fixing it. Put simply, severity is "how bad" and priority is "how soon".</p>
          <table class="lc-table">
            <thead><tr><th>Severity</th><th>Meaning (a common scale)</th><th>ShopNest checkout example</th></tr></thead>
            <tbody>
              <tr><td>Critical</td><td>A main feature is down, with no workaround, or money or data is lost</td><td>No shopper can pay for any order</td></tr>
              <tr><td>High</td><td>A main feature fails for some users or gives wrong results</td><td>A removed promo code still gives its discount</td></tr>
              <tr><td>Medium</td><td>A feature is wrong, but there is a workaround or the harm is small</td><td>BUG-231: lowercase codes fail on iOS, but capitals work</td></tr>
              <tr><td>Low</td><td>A small visual or text problem</td><td>A spelling mistake on the help page</td></tr>
            </tbody>
          </table>
          <p>Each company sets its own scale, so use the one in your team's guide. Usually the tester proposes the severity. The product owner and the team agree the priority.</p>
          <p>BUG-231 shows why the two can differ. The severity is Medium, because shoppers can type the code in capitals. But Priya sets the priority to High. The launch email tells shoppers to type a code, and most orders come from the apps.</p>
        </div>
        <div class="lc-card">
          <h3>From rough notes to a clear report with AI</h3>
          <p>Aisha's notes, typed fast while testing (made-up):</p>
          <pre><code>basket b 60.00 -&gt; delivery 4.99?? total 64.99
        web chrome + safari same. ios same. android same.
        62.40 basket = free, ok. tried 3x each.
        build 2.14.0 / 5.8.0. flag on. maybe rounding??</code></pre>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a bug report from these notes.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are helping a tester write a Jira bug report. Use simple English.
        Rule: delivery is free when the product subtotal after any discount
        is £60.00 or more. Below that, delivery costs £4.99.
        Notes: [paste the notes, with the test account replaced by [TEST_ACCOUNT]]
        Write: title (where + what + when), environment, numbered steps with
        exact data, expected result with the rule, actual result, how often.
        Use only facts from my notes. Do not guess the cause.
        Write QUESTION where a fact is missing.</code></pre>
          <p>What Aisha changed in the AI draft:</p>
          <ul class="lc-list">
            <li>The draft said "Cause: a rounding error". That was a guess from her own note "maybe rounding??". She removed it. Leo finds the cause.</li>
            <li>The draft said the bug happens "on all baskets over £60.00". That is wrong. The £62.40 basket gets free delivery. She wrote "only at exactly £60.00".</li>
            <li>The draft set severity to Critical. She changed it to Medium, using the team's scale, and left the priority for Priya.</li>
            <li>She followed the steps exactly as written, on a fresh test account, to make sure they really show the bug.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Evidence and good habits</h3>
          <ul class="lc-list">
            <li><strong>Show it.</strong> Add a screenshot where the wrong number is visible. Add a short screen recording for bugs that need several steps.</li>
            <li><strong>Add the build and device.</strong> "It fails on iOS" is not enough. Write "iOS app 5.8.0 on a recent iPhone".</li>
            <li><strong>Clean logs first.</strong> Remove tokens, passwords and personal data before you attach a log or paste it into AI.</li>
            <li><strong>One bug per report.</strong> Two problems in one report get lost when one is fixed.</li>
            <li><strong>Search first.</strong> Check Jira for an existing report, so you do not log a duplicate.</li>
            <li><strong>State facts, not blame.</strong> Write "the total shows £64.99", not "the developer broke the total".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: check the AI draft of BUG-233</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Aisha tests">With Basket B (£60.00) on staging, delivery shows £4.99 and the total is £64.99. She sees the same on web, iOS and Android.</li>
              <li data-kind="user" data-label="Aisha asks">She pastes her rough notes and the free delivery rule into the approved AI tool. The test account is replaced with [TEST_ACCOUNT].</li>
              <li data-kind="answer" data-label="AI replies">A neat draft with a title, steps and results. It adds "Cause: rounding error" and "happens on all baskets over £60.00".</li>
              <li data-kind="warn" data-label="Two problems">The cause is a guess. The second claim is false, because the £62.40 basket gets free delivery.</li>
              <li data-kind="check" data-label="Aisha fixes">She removes the cause and writes "only at exactly £60.00". She sets severity Medium from the team's scale.</li>
              <li data-kind="check" data-label="Aisha reproduces">She follows the steps exactly as written, on a fresh account. The bug appears again, 3 out of 3 times.</li>
              <li data-kind="result" data-label="Logged">She searches Jira for duplicates, then logs BUG-233 with screenshots. Priya sets the priority to High.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI some rough test notes and ask for a clear bug report. Then check every line against your notes and the rule.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior tester helping me write a bug report for Jira. Use simple English.

        Product: [ShopNest, a made-up online grocery app in London (web, iOS, Android)].
        Rule: [Quantity is a whole number from 1 to 20 per product. Above 20, the message "You can buy up to 20 of this item" shows and the quantity stays at its last valid value.]
        My rough notes: [web 2.14.0 staging, chrome + safari. typed 21 in qty box for eggs -&gt; accepted, line shows 21, total updated. + button stops at 20 ok. tried 3 times. ios and android not tested yet.]

        Please write:
        1. A title using the pattern: where + what goes wrong + when.
        2. Environment, preconditions, numbered steps with exact data.
        3. Expected result (with the rule) and actual result.
        4. How often it happened, and what was NOT tested.
        5. A suggested severity (Critical, High, Medium or Low) with one reason. Leave priority as "for the product owner".

        Use only facts from my notes. Do not guess the cause. Write QUESTION where a fact is missing.</pre>
            <ul class="ai-try-checks">
              <li>The title says where, what and when, in one line.</li>
              <li>The expected result comes from the rule, with the exact message.</li>
              <li>No guessed cause, and untested platforms are not claimed as failing.</li>
              <li>The severity has a reason, and priority is left for the product owner.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good bug report lets a developer see the bug without asking you anything. Use exact steps, an expected result from the rule, and clear evidence. Severity is how bad, priority is how soon. AI can tidy your notes, but remove every guess and follow the steps yourself before you log it.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Regression Testing and Test Selection</h1>
        </div>
        <p class="lc-lead">Every change to a product can break something that worked before. You rarely have time to re-run every test after every change. In this lesson you will learn what regression testing is, and how to choose what to re-test. You will use impact analysis and risk scores, and see how AI can suggest a test selection. You will follow Aisha as she picks tests after Leo fixes the £60.00 delivery bug.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 345" role="img" aria-label="Left: three rings around a change. In the centre, the BUG-233 fix to the delivery fee check. The middle ring is targeted regression: fee, promo, minimum order and totals. The outer ring is smoke and nightly tests: slots, login and search. Right: four test sets. Retest the fix: TC-104-05 on 3 platforms. Targeted regression: 12 manual cases, about 2 hours. Smoke test: 10 cases per build. Nightly automated run: 150 tests in CI, about 25 minutes.">
            <defs><marker id="st12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="230" y="22" font-weight="700" fill="#c4b5fd">What the change can touch</text>
              <ellipse cx="230" cy="180" rx="210" ry="140" fill="#1f1f44" stroke="#3b82f6"/>
              <ellipse cx="230" cy="180" rx="145" ry="95" fill="#27274e" stroke="#f59e0b"/>
              <ellipse cx="230" cy="180" rx="75" ry="42" fill="#1f1f44" stroke="#ec4899"/>
              <text x="230" y="177" font-weight="700">BUG-233 fix</text>
              <text x="230" y="195" font-size="11" fill="#9b99b8">fee check</text>
              <text x="230" y="110" font-weight="700">Targeted regression</text>
              <text x="230" y="128" font-size="11" fill="#9b99b8">fee, promo, minimum, totals</text>
              <text x="230" y="64" font-weight="700">Smoke + nightly</text>
              <text x="230" y="292" font-size="11" fill="#9b99b8">slots, login, search</text>
              <text x="605" y="22" font-weight="700" fill="#c4b5fd">Tests Aisha picks</text>
              <rect x="470" y="38" width="270" height="60" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="605" y="63" font-weight="700">1. Retest the fix</text>
              <text x="605" y="84" font-size="11" fill="#9b99b8">TC-104-05 on 3 platforms</text>
              <rect x="470" y="108" width="270" height="60" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="605" y="133" font-weight="700">2. Targeted regression</text>
              <text x="605" y="154" font-size="11" fill="#9b99b8">12 manual cases, about 2 hours</text>
              <rect x="470" y="178" width="270" height="60" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="605" y="203" font-weight="700">3. Smoke test</text>
              <text x="605" y="224" font-size="11" fill="#9b99b8">10 cases on each new build</text>
              <rect x="470" y="248" width="270" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="605" y="273" font-weight="700">4. Nightly automated run</text>
              <text x="605" y="294" font-size="11" fill="#9b99b8">150 tests in CI, about 25 minutes</text>
              <text x="380" y="336" font-size="11" fill="#9b99b8">Test hardest close to the change. Use quicker, broader checks further away.</text>
            </g>
          </svg>
          <figcaption>Start at the change and work outwards. The closer a feature is to the change, the more carefully you re-test it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Regression, retest, smoke and sanity</h3>
          <p>A <strong>regression</strong> is a feature that worked before but breaks after a change. <strong>Regression testing</strong> means re-running tests to find these problems. Changes include bug fixes, new features, new settings and updates to other systems.</p>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Plain meaning</th><th>ShopNest example</th></tr></thead>
            <tbody>
              <tr><td>Retest (confirmation testing)</td><td>Run the test that failed, to check the fix works</td><td>Run TC-104-05 again: £60.00 basket, delivery Free</td></tr>
              <tr><td>Regression testing</td><td>Check that the change did not break other things</td><td>FRESH10 on Basket A still gives a £4.99 fee</td></tr>
              <tr><td>Smoke test</td><td>A quick, broad check that a build works well enough to test</td><td>Log in, add to basket, pick a slot, pay with a test card</td></tr>
              <tr><td>Sanity test</td><td>A quick, narrow check of one change</td><td>Open the order summary for the £60.00 basket</td></tr>
              <tr><td>Regression pack</td><td>The saved set of regression tests</td><td>180 checkout test cases in TestRail</td></tr>
            </tbody>
          </table>
          <p>ShopNest's checkout regression pack has 180 test cases. 150 are automated and run every night in CI (continuous integration: a system that builds and tests the code after changes). That run takes about 25 minutes. The other 30 are manual, mostly app screens and accessibility. Automated tests save time, but someone must still read the results and check any failures.</p>
        </div>
        <div class="lc-card">
          <h3>Impact analysis: what did the change touch?</h3>
          <p><strong>Impact analysis</strong> means working out which parts of the product a change can affect. Start by asking the developer. On Tuesday 27 October, web 2.14.1 reaches staging. Leo's change note says:</p>
          <pre><code>Web 2.14.1 / server change
        BUG-233: free delivery check changed from "more than £60.00"
        to "£60.00 or more". The fee is worked out on the server.
        BUG-232: quantity box on web now stops at 20.</code></pre>
          <p>Aisha asks Leo three questions:</p>
          <ul class="lc-list">
            <li><strong>Where does the code run?</strong> On the server. So the fix affects the web site and both apps, not only the web.</li>
            <li><strong>What else uses it?</strong> The order summary, the payment page and the confirmation email all show the delivery fee.</li>
            <li><strong>Did anything else change?</strong> Yes: the BUG-232 fix to the quantity box. That needs its own retest.</li>
          </ul>
          <p>One line of code can still touch many screens. The change note alone said "web". The developer's answers showed the apps were affected too.</p>
        </div>
        <div class="lc-card">
          <h3>Risk-based selection: a worked example</h3>
          <p><strong>Risk-based testing</strong> means you spend most effort where a failure is most likely and most harmful. Aisha scores each area from 1 to 3 for likelihood (how likely the change broke it) and impact (how much harm if it did). Risk = likelihood x impact.</p>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Likelihood</th><th>Impact</th><th>Risk</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>Delivery fee and free delivery</td><td>3</td><td>3</td><td>9</td><td>Run now</td></tr>
              <tr><td>Promo discount with the fee</td><td>2</td><td>3</td><td>6</td><td>Run now</td></tr>
              <tr><td>Minimum order (£25.00)</td><td>2</td><td>3</td><td>6</td><td>Run now</td></tr>
              <tr><td>Totals on payment page and email</td><td>2</td><td>3</td><td>6</td><td>Run now</td></tr>
              <tr><td>Delivery slots</td><td>1</td><td>2</td><td>2</td><td>Smoke and nightly run</td></tr>
              <tr><td>Basket quantities (web)</td><td>1</td><td>2</td><td>2</td><td>Smoke and nightly run, plus the BUG-232 retest</td></tr>
              <tr><td>Login</td><td>1</td><td>1</td><td>1</td><td>Smoke and nightly run</td></tr>
            </tbody>
          </table>
          <p>The team rule: 6 to 9 means run now. 3 or 4 means run if there is time, or wait for the full run. 1 or 2 means the smoke test and nightly run are enough.</p>
          <p>Aisha's selection for 2.14.1:</p>
          <ul class="lc-list">
            <li><strong>Retest:</strong> TC-104-05 on web, iOS and Android. Basket B (£60.00) must show delivery Free and a total of £60.00.</li>
            <li><strong>Boundary neighbours:</strong> a £59.95 basket (2 chicken breasts, 4 olive oils, 3 salmon fillets) must still pay £4.99, total £64.94. Basket A (£62.40) with no code must still be free.</li>
            <li><strong>Rule next to the change:</strong> Basket A with FRESH10 must still pay £4.99, because £56.16 after the discount is under £60.00. If Leo had moved the check to before the discount, this test would catch it.</li>
            <li><strong>Targeted regression:</strong> 12 manual cases in total, about 2 hours. The nightly run covers the 150 automated tests.</li>
          </ul>
          <p>The day before, on Monday 26 October, Aisha also re-ran the slot tests. UK clocks went back on Sunday 25 October. The slots still showed 08:00 to 22:00 UK time.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to suggest a test selection</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What should I regression test after a bug fix?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are helping me choose regression tests. Change: [paste the change
        note]. The fee is worked out on the server for web, iOS and Android.
        Test case titles: [paste the list from TestRail].
        Score each area for likelihood and impact (1 to 3). Pick the tests to
        run now, and say why. Mark any link you are not sure of as QUESTION.</code></pre>
          <p>AI is good at linking a change note to test titles. It cannot see your code or know which screens share it. Aisha checks the links with Leo. She also adds tests the AI missed, such as the confirmation email total. Paste change notes and test titles only. Do not paste code unless your company approves it for that tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: choose the tests after the BUG-233 fix</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Web 2.14.1 changes the free delivery check to "£60.00 or more". Sort each test.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="retest" data-label="Retest the fix"></div>
              <div data-sorter-target="bucket" data-bucket="targeted" data-label="Targeted regression now"></div>
              <div data-sorter-target="bucket" data-bucket="later" data-label="Smoke and nightly run"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="retest" data-why="This is the test that failed. Running it again confirms the fix.">TC-104-05: Basket B (£60.00) shows delivery Free and a total of £60.00.</li>
              <li data-bucket="targeted" data-why="It sits just below the changed boundary. The fix must not make it free.">A £59.95 basket still pays £4.99 delivery.</li>
              <li data-bucket="targeted" data-why="The check uses the subtotal after the discount. This test catches a fix that moved the check to before the discount.">Basket A with FRESH10 (£56.16 after discount) still pays £4.99.</li>
              <li data-bucket="targeted" data-why="The email shows the delivery fee and total, so it uses the changed rule.">The confirmation email for Basket B shows a total of £60.00.</li>
              <li data-bucket="later" data-why="Slots do not use the fee check. Risk 1 x 2 = 2.">The slot list shows 14 one-hour slots a day.</li>
              <li data-bucket="later" data-why="Login is far from the change. The smoke test covers it.">A test account can log in.</li>
              <li data-bucket="later" data-why="Expired codes do not use the delivery fee check.">SUMMER25 shows "This code has expired".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to rank regression tests for a change in your product. Then check its links with the developer before you run anything.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA lead helping me plan regression testing. Use simple English.

        Product: [ShopNest, a made-up online grocery app (web, iOS, Android)].
        The change: [The promo code check now removes spaces before and after the code. The check runs on the server for all platforms.]
        Time I have: [half a day for manual tests; automated tests run every night].
        Test areas: [promo codes, delivery fee, minimum order, basket quantities, delivery slots, payment, confirmation email, login, search].

        Please:
        1. Make a table with the columns: Area, Likelihood (1-3), Impact (1-3), Risk (likelihood x impact), Why.
        2. List the retest for the change itself, then 8 to 12 targeted regression tests with exact test data.
        3. Say which areas can wait for the smoke test or the nightly run.
        4. List 3 QUESTIONS to ask the developer about what the change touches.

        Do not assume links you cannot see. Mark them QUESTION.</pre>
            <ul class="ai-try-checks">
              <li>Risk equals likelihood times impact in every row.</li>
              <li>The retest comes first and checks the change itself.</li>
              <li>Tests sit next to the change, such as codes with and without spaces.</li>
              <li>Unclear links are marked QUESTION, for you to check with the developer.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> You cannot re-run everything after every change, so choose with care. Ask the developer what the change touches, score the risk, and test hardest next to the change. AI can suggest links between a change and your tests. Only the developer and the real product can confirm them.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Test Plans and Strategies</h1>
        </div>
        <p class="lc-lead">A test plan tells the whole team what will be tested, how, by whom and by when. It also says when testing can start and when it is done. In this lesson you will learn the difference between a test strategy and a test plan. You will learn the main parts of a plan, including scope, risks, environments, and entry and exit criteria. You will see Sam Carter's one-page plan for ShopNest Checkout 2.0, and how to draft one with AI.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A timeline from 12 October to 5 November 2026. Sprint 21 system testing runs from 12 to 23 October. Fixes and regression run from 26 to 28 October. Final regression runs from 29 October to 3 November. Milestones: clocks go back on Sunday 25 October, code freeze on Thursday 29 October, go or no-go meeting on Wednesday 4 November and release on Thursday 5 November. At the bottom, entry criteria: build ready, smoke passes, data ready. Exit criteria: pass rate of 95 percent or more and no open Critical or High bugs.">
            <defs><marker id="st13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Checkout 2.0 test plan: key dates (2026)</text>
              <rect x="40" y="50" width="336" height="50" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="208" y="72" font-weight="700" text-anchor="middle">Sprint 21: system testing</text>
              <text x="208" y="90" font-size="11" fill="#9b99b8" text-anchor="middle">12 to 23 Oct</text>
              <rect x="432" y="50" width="84" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="474" y="72" font-weight="700" text-anchor="middle">Fixes</text>
              <text x="474" y="90" font-size="11" fill="#9b99b8" text-anchor="middle">26 to 28 Oct</text>
              <rect x="516" y="50" width="168" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="600" y="72" font-weight="700" text-anchor="middle">Final regression</text>
              <text x="600" y="90" font-size="11" fill="#9b99b8" text-anchor="middle">29 Oct to 3 Nov</text>
              <line x1="40" y1="120" x2="724" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#st13a)"/>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="40" y="138">12 Oct</text>
                <text x="236" y="138">19 Oct</text>
                <text x="432" y="138">26 Oct</text>
                <text x="628" y="138">2 Nov</text>
              </g>
              <g stroke-width="1.5">
                <line x1="404" y1="120" x2="404" y2="156" stroke="#22d3ee"/>
                <line x1="516" y1="120" x2="516" y2="186" stroke="#ec4899"/>
                <line x1="684" y1="120" x2="684" y2="216" stroke="#f59e0b"/>
                <line x1="712" y1="120" x2="712" y2="246" stroke="#10b981"/>
              </g>
              <g font-size="12">
                <text x="404" y="172" text-anchor="middle">Clocks go back, Sun 25 Oct</text>
                <text x="516" y="202" text-anchor="middle">Code freeze, Thu 29 Oct</text>
                <text x="676" y="232" text-anchor="end">Go/no-go, Wed 4 Nov</text>
                <text x="704" y="262" text-anchor="end">Release, Thu 5 Nov</text>
              </g>
              <rect x="20" y="280" width="350" height="42" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="195" y="306" font-size="12" text-anchor="middle">Entry: build ready, smoke passes, data ready</text>
              <rect x="390" y="280" width="350" height="42" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="565" y="306" font-size="12" text-anchor="middle">Exit: 95%+ pass, no Critical/High bugs open</text>
            </g>
          </svg>
          <figcaption>The plan fixes the dates, the order of testing and the rules for starting and finishing. The team can see at a glance what happens when.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Test strategy and test plan</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Test strategy</th><th>Test plan</th></tr></thead>
            <tbody>
              <tr><td>Covers</td><td>How a company or product team tests in general</td><td>One project, release or feature</td></tr>
              <tr><td>Changes</td><td>Rarely</td><td>For every project, and during it</td></tr>
              <tr><td>Answers</td><td>Which test levels, how much automation, which tools, how we handle risk</td><td>What we test, who, where, when, and when we are done</td></tr>
              <tr><td>ShopNest example</td><td>"Developers write unit tests for every rule. We automate stable regression tests and run them nightly in CI."</td><td>"Checkout 2.0: test US-101 to US-104 on web, iOS and Android by Wednesday 4 November."</td></tr>
            </tbody>
          </table>
          <p>Many strategies use the <strong>test pyramid</strong>. It has many fast unit tests at the bottom and fewer integration and API tests in the middle. At the top are a few slow end-to-end tests through the screens. Strategies also aim to <strong>shift left</strong>: review stories and test early, when problems are cheaper to fix.</p>
          <p>The ISO/IEC/IEEE 29119 series of software testing standards includes templates for test documents, such as a test plan and a test completion report. Many agile teams use a shorter version: one page that the team really reads.</p>
        </div>
        <div class="lc-card">
          <h3>What goes into a test plan</h3>
          <p>Sam's one-page plan for Checkout 2.0 (made-up):</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>Checkout 2.0</th></tr></thead>
            <tbody>
              <tr><td>Scope: in</td><td>US-101 to US-104 on web (Chrome, Safari, Firefox, Edge), the iOS app and the Android app. Accessibility checks of checkout screens against WCAG 2.2 level AA. A basic load test (many users at once) of checkout, run by Leo with k6. The checkout regression pack.</td></tr>
              <tr><td>Scope: out</td><td>The payment provider's own systems (we only test our use of its sandbox). Tablets. The old checkout, apart from the regression pack.</td></tr>
              <tr><td>Approach</td><td>Story reviews before the sprint. Test design with boundaries and decision tables. Exploratory sessions. Automated regression run nightly.</td></tr>
              <tr><td>Environments</td><td>Staging with <code>checkout_v2</code> on. Test accounts qa.shopper01 to qa.shopper10. Payment sandbox with test cards only. Data resets nightly at 02:00.</td></tr>
              <tr><td>People</td><td>Sam (plan and report), Aisha (test design and running), Leo (unit tests, load test, fixes), Priya (acceptance and priorities).</td></tr>
              <tr><td>Schedule</td><td>System testing 12 to 23 Oct. Fixes and regression 26 to 28 Oct. Code freeze Thu 29 Oct. Final regression to Tue 3 Nov. Go/no-go Wed 4 Nov. Release Thu 5 Nov.</td></tr>
              <tr><td>Deliverables</td><td>Test cases in TestRail, bug reports in Jira, a daily status note, and a test summary report for the go/no-go meeting.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Risks, and entry and exit criteria</h3>
          <p>A <strong>product risk</strong> is something that could go wrong for users. A <strong>project risk</strong> is something that could stop the testing itself. The plan lists both, with what the team will do.</p>
          <table class="lc-table">
            <thead><tr><th>Risk</th><th>Type</th><th>What we do</th></tr></thead>
            <tbody>
              <tr><td>Wrong totals at money boundaries (£25.00, £30.00, £40.00, £60.00)</td><td>Product</td><td>Boundary tests on all three platforms. Retest every fix.</td></tr>
              <tr><td>Slot times shift when clocks go back on Sunday 25 October</td><td>Product</td><td>Re-run slot tests on Monday 26 October.</td></tr>
              <tr><td>Two orders take the last place in a slot at once</td><td>Product</td><td>Leo lowers a slot's capacity in the admin panel. Two testers book at the same time.</td></tr>
              <tr><td>App builds arrive late</td><td>Project</td><td>Test the web first. Plan app testing for the days after each app build.</td></tr>
              <tr><td>Staging data resets at 02:00</td><td>Project</td><td>Set up test data each morning with a saved checklist.</td></tr>
            </tbody>
          </table>
          <p><strong>Entry criteria</strong> say when testing can start. <strong>Exit criteria</strong> say when testing is done enough to make a release decision. For Checkout 2.0:</p>
          <ul class="lc-list">
            <li><strong>Entry:</strong> the build is on staging with <code>checkout_v2</code> on; smoke tests pass; stories have agreed acceptance criteria; test accounts and data are ready.</li>
          </ul>
          <p><strong>Exit:</strong></p>
          <ul class="lc-list">
            <li>All High priority test cases are run.</li>
            <li>The pass rate of executed tests is 95% or more.</li>
            <li>No Critical or High severity bugs are open.</li>
            <li>Every open Medium bug has a plan agreed by Priya.</li>
            <li>All 14 acceptance criteria have at least one test.</li>
            <li>The regression pack has run on the release builds.</li>
          </ul>
          <p>Exit criteria help the team decide. They do not make the decision. Priya and the team still decide at the go/no-go meeting.</p>
        </div>
        <div class="lc-card">
          <h3>Drafting a plan with AI</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a test plan for an online shop checkout.</code></pre>
          <p>This gets a long, general plan with invented tools, people and dates. <strong>Better prompt:</strong></p>
          <pre><code>Draft a one-page test plan. Use only these facts: [stories, platforms,
        dates, environments, people, tools]. Sections: scope in and out,
        approach, environments, people, schedule, risks (product and project),
        entry and exit criteria, deliverables. Write QUESTION where a fact
        is missing. Do not invent dates, people or tools.</code></pre>
          <p>Then check the draft:</p>
          <ul class="lc-list">
            <li>Every date, build and name matches the real project.</li>
            <li>Risks are about this product, not general advice such as "the software may have bugs".</li>
            <li>Exit criteria numbers, such as 95%, are agreed by the team, not picked by the AI.</li>
            <li>Out of scope is written down, so nobody assumes it was tested.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: entry, exit or risk?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each line from Sam's Checkout 2.0 plan.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="entry" data-label="Entry criterion"></div>
              <div data-sorter-target="bucket" data-bucket="exit" data-label="Exit criterion"></div>
              <div data-sorter-target="bucket" data-bucket="risk" data-label="Risk"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="entry" data-why="It must be true before testing of a build can start.">The build is on staging with checkout_v2 switched on.</li>
              <li data-bucket="entry" data-why="If the smoke test fails, the build is not ready for deeper testing.">The smoke tests pass on the new build.</li>
              <li data-bucket="entry" data-why="Without test accounts and data, testers cannot start.">Test accounts and test data are ready.</li>
              <li data-bucket="exit" data-why="It says when testing is done enough to decide on the release.">No Critical or High severity bugs are open.</li>
              <li data-bucket="exit" data-why="A pass rate target is checked at the end, before the release decision.">The pass rate of executed tests is 95% or more.</li>
              <li data-bucket="risk" data-why="It is something that could go wrong for users, so the plan says how to test it.">Slot times may shift when UK clocks go back on 25 October.</li>
              <li data-bucket="risk" data-why="Late builds could stop the testing. This is a project risk.">The app builds may arrive late.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-page test plan from facts you give it. Then fill the gaps with your team, not with the AI.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA lead. Draft a one-page test plan in simple English.

        Project: [Checkout 2.0 for ShopNest, a made-up London grocery app].
        Stories: [quantities in the basket, promo codes, delivery slots, placing the order].
        Platforms: [web (Chrome, Safari, Firefox, Edge), iOS app, Android app].
        Dates: [testing 12 Oct to 3 Nov 2026; code freeze 29 Oct; release 5 Nov].
        People: [QA lead, one tester, one developer, one product owner].
        Environments and tools: [staging with a feature flag; test accounts; payment sandbox; Jira; TestRail].

        Use these sections, as short bullet points:
        1. Scope: in and out.
        2. Approach (test levels, techniques, automation).
        3. Environments and test data.
        4. Schedule.
        5. Risks: a table with Risk, Product or project, What we do.
        6. Entry criteria and exit criteria.
        7. Deliverables.

        Use only my facts. Write QUESTION where something is missing. Do not invent people, tools or dates.</pre>
            <ul class="ai-try-checks">
              <li>Every date and name matches what you gave.</li>
              <li>Risks are specific to this product, not general.</li>
              <li>There is an out-of-scope list.</li>
              <li>Exit criteria can be measured, and the numbers are for your team to agree.</li>
              <li>Missing facts are marked QUESTION.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A test strategy is how you test in general. A test plan is what you test, how, who and when for one project. Write down what is out of scope, the real risks, and clear entry and exit criteria. AI can draft the structure fast. The dates, numbers and decisions must come from your team.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Measuring Quality</h1>
        </div>
        <p class="lc-lead">Managers and product owners ask "Are we ready?". Good test metrics help you answer with facts instead of feelings. In this lesson you will learn the most useful testing metrics and how to calculate each one correctly. These include pass rate, requirements coverage, defect leakage and flaky rate. You will work through Sam Carter's real-looking numbers for ShopNest, check them with spreadsheet formulas, and see where AI gets the maths wrong.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A quality dashboard for Checkout 2.0 on Friday 23 October. Four tiles: pass rate 92.7 percent, 101 of 109 run. Executed 90.8 percent, 109 of 120 planned. Acceptance criteria passing 11 of 14, 78.6 percent. Flaky rate 4 percent, 6 of 150 automated tests. Below, a bar chart of bugs found by story: US-101 5, US-102 12, US-103 9, US-104 5. On the right, defect leakage of the last release: 10 percent, 5 of 50. Target now under 5 percent.">
            <defs><marker id="st14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Checkout 2.0 quality dashboard, Friday 23 October</text>
              <g text-anchor="middle">
                <rect x="20" y="40" width="165" height="100" rx="10" fill="#1f1f44" stroke="#10b981"/>
                <text x="102" y="64" font-size="12" fill="#9b99b8">Pass rate</text>
                <text x="102" y="100" font-size="26" font-weight="700">92.7%</text>
                <text x="102" y="124" font-size="11" fill="#9b99b8">101 of 109 run</text>
                <rect x="205" y="40" width="165" height="100" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="287" y="64" font-size="12" fill="#9b99b8">Executed</text>
                <text x="287" y="100" font-size="26" font-weight="700">90.8%</text>
                <text x="287" y="124" font-size="11" fill="#9b99b8">109 of 120 planned</text>
                <rect x="390" y="40" width="165" height="100" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="472" y="64" font-size="12" fill="#9b99b8">Criteria passing</text>
                <text x="472" y="100" font-size="26" font-weight="700">11 of 14</text>
                <text x="472" y="124" font-size="11" fill="#9b99b8">78.6% of criteria</text>
                <rect x="575" y="40" width="165" height="100" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="657" y="64" font-size="12" fill="#9b99b8">Flaky rate</text>
                <text x="657" y="100" font-size="26" font-weight="700">4%</text>
                <text x="657" y="124" font-size="11" fill="#9b99b8">6 of 150 automated</text>
              </g>
              <text x="20" y="172" font-weight="700">Bugs found by story (to 23 Oct)</text>
              <g font-size="12">
                <text x="80" y="200" text-anchor="end">US-101</text>
                <rect x="90" y="187" width="150" height="18" rx="3" fill="#3b82f6"/>
                <text x="248" y="200">5</text>
                <text x="80" y="232" text-anchor="end">US-102</text>
                <rect x="90" y="219" width="360" height="18" rx="3" fill="#ec4899"/>
                <text x="458" y="232">12</text>
                <text x="80" y="264" text-anchor="end">US-103</text>
                <rect x="90" y="251" width="270" height="18" rx="3" fill="#f59e0b"/>
                <text x="368" y="264">9</text>
                <text x="80" y="296" text-anchor="end">US-104</text>
                <rect x="90" y="283" width="150" height="18" rx="3" fill="#3b82f6"/>
                <text x="248" y="296">5</text>
              </g>
              <rect x="520" y="160" width="220" height="140" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <g text-anchor="middle">
                <text x="630" y="184" font-size="12" fill="#9b99b8">Defect leakage, last release</text>
                <text x="630" y="222" font-size="26" font-weight="700">10%</text>
                <text x="630" y="250" font-size="11" fill="#9b99b8">5 of 50 bugs found after release</text>
                <text x="630" y="276" font-size="12">Target now: under 5%</text>
              </g>
              <text x="380" y="322" font-size="11" fill="#9b99b8" text-anchor="middle">Each number needs its definition and a short story next to it.</text>
            </g>
          </svg>
          <figcaption>A small dashboard with a few well-defined numbers is more useful than a long list of numbers nobody understands.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main metrics, defined</h3>
          <p>A <strong>metric</strong> is a number you track to understand quality or progress. Always write down how you count it, so the number means the same thing every week. The ShopNest numbers below are made up, from the Checkout 2.0 test run on Friday 23 October.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Formula</th><th>ShopNest</th></tr></thead>
            <tbody>
              <tr><td>Execution progress</td><td>tests executed / tests planned</td><td>109 / 120 = 90.8%</td></tr>
              <tr><td>Pass rate</td><td>tests passed / tests executed</td><td>101 / 109 = 92.7%</td></tr>
              <tr><td>Requirements coverage (tested)</td><td>criteria with at least one test / all criteria</td><td>14 / 14 = 100%</td></tr>
              <tr><td>Requirements coverage (passing)</td><td>criteria whose tests all pass / all criteria</td><td>11 / 14 = 78.6%</td></tr>
              <tr><td>Defect leakage (escape rate)</td><td>bugs found after release / all bugs found (before + after)</td><td>Last release: 5 / (45 + 5) = 10%</td></tr>
              <tr><td>Defect density</td><td>bugs found / size of the work</td><td>US-102: 12 bugs / 5 story points = 2.4</td></tr>
              <tr><td>Flaky rate</td><td>flaky tests / all automated tests</td><td>6 / 150 = 4%</td></tr>
              <tr><td>Mean time to fix</td><td>total time from report to checked fix / bugs fixed</td><td>64 working days / 20 bugs = 3.2 days</td></tr>
            </tbody>
          </table>
          <p>Notes on the definitions:</p>
          <ul class="lc-list">
            <li><strong>Executed</strong> here means passed plus failed. Blocked tests (tests that could not run, for example because of a broken build) and tests not yet run are not executed. Some teams count differently, so write your rule down.</li>
            <li><strong>Defect leakage</strong> needs a fixed time window. ShopNest counts bugs found in the 30 days after release. For Checkout 2.0 that window ends on Saturday 5 December 2026. The target is under 5%.</li>
            <li><strong>Defect density</strong> is often counted per 1,000 lines of code. Sam uses story points (the team's estimate of a story's size) because that is what he has. Bugs per point: US-101 5/3 = 1.67, US-102 12/5 = 2.4, US-103 9/8 = 1.13, US-104 5/5 = 1.0.</li>
            <li>A <strong>flaky test</strong> passes and fails on the same code with no change. Sam counts a test as flaky if it did both in the last 10 nightly runs.</li>
            <li><strong>Mean time to detect</strong> is a related metric: the average time from when a bug enters the product to when someone finds it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: Sam's spreadsheet</h3>
          <p>Sam exports the test run counts from TestRail. He works the numbers out in a spreadsheet, not in his head and not only in an AI chat. The formulas work in Excel and Google Sheets.</p>
          <table class="lc-table">
            <thead><tr><th>Cell</th><th>Label (column A)</th><th>Value or formula (column B)</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>B2</td><td>Planned</td><td>120</td><td>120</td></tr>
              <tr><td>B3</td><td>Passed</td><td>101</td><td>101</td></tr>
              <tr><td>B4</td><td>Failed</td><td>8</td><td>8</td></tr>
              <tr><td>B5</td><td>Blocked</td><td>3</td><td>3</td></tr>
              <tr><td>B6</td><td>Not run</td><td>8</td><td>8</td></tr>
              <tr><td>B7</td><td>Check: adds up to planned?</td><td><code>=SUM(B3:B6)=B2</code></td><td>TRUE</td></tr>
              <tr><td>B8</td><td>Executed</td><td><code>=B3+B4</code></td><td>109</td></tr>
              <tr><td>B9</td><td>Execution progress</td><td><code>=B8/B2</code></td><td>90.8%</td></tr>
              <tr><td>B10</td><td>Pass rate</td><td><code>=B3/B8</code></td><td>92.7%</td></tr>
              <tr><td>B11</td><td>Bugs before release (last release)</td><td>45</td><td>45</td></tr>
              <tr><td>B12</td><td>Bugs after release (30 days)</td><td>5</td><td>5</td></tr>
              <tr><td>B13</td><td>Defect leakage</td><td><code>=B12/(B11+B12)</code></td><td>10.0%</td></tr>
            </tbody>
          </table>
          <p>Format B9, B10 and B13 as percentages with one decimal place. The check in B7 catches typing mistakes before anyone sees the report.</p>
          <p>The 3 acceptance criteria that are not passing yet are US-101 AC3 (BUG-232), US-102 AC2 (BUG-231) and US-104 AC3 (BUG-233). So the coverage number links straight to three open bugs. The plan's exit criterion is a 95% pass rate. On 23 October the team is not there yet, which is normal in the middle of testing.</p>
        </div>
        <div class="lc-card">
          <h3>Using metrics and AI with care</h3>
          <ul class="lc-list">
            <li><strong>AI can get the maths wrong.</strong> It may pick the wrong denominator (the number you divide by) or round badly. Check every number with a spreadsheet formula.</li>
            <li><strong>Give the AI counts, not people.</strong> Paste totals, not exports with names, emails or customer data.</li>
            <li><strong>Numbers need context.</strong> A 92.7% pass rate sounds good. But some of the 8 failed tests are about prices and the delivery fee. Say that next to the number.</li>
            <li><strong>Numbers can be gamed.</strong> Skipping hard tests raises the pass rate. Splitting one bug into three raises bug counts. Watch trends and ask why.</li>
            <li><strong>Do not rank people with bug counts.</strong> It makes people hide bugs or argue about them. Use metrics to improve the product and the process.</li>
            <li><strong>Coverage is not quality.</strong> 100% of criteria with a test does not mean the tests are good, or that no bugs are left.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Sam checks the AI's numbers</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sam asks">"Planned 120, passed 101, failed 8, blocked 3, not run 8. Write a short quality status for Priya." He pastes counts only.</li>
              <li data-kind="answer" data-label="AI replies">"The pass rate is 84.2%. Testing is going well, and the product is almost ready."</li>
              <li data-kind="warn" data-label="Wrong maths">84.2% is 101 / 120. The AI divided by planned tests, not executed tests. "Almost ready" is an opinion, not a fact.</li>
              <li data-kind="tool" data-label="Spreadsheet">Sam types the counts into his sheet. <code>=B3/B8</code> gives 92.7%. <code>=B8/B2</code> gives 90.8%.</li>
              <li data-kind="check" data-label="Sam checks">He checks that 101 + 8 + 3 + 8 = 120, so no counts are missing.</li>
              <li data-kind="user" data-label="Sam asks again">"Use pass rate = passed / (passed + failed). Show your working. Do not say if we are ready."</li>
              <li data-kind="result" data-label="Final note">Pass rate 92.7%, 90.8% executed, 11 of 14 criteria passing, 3 open bugs behind the failing criteria. Below the 95% exit criterion. Decision at go/no-go.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn test counts into a short quality status note. Then check every number with your own spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA lead writing a short quality status note for a product owner. Use simple English.

        Test run counts: [planned 120, passed 101, failed 8, blocked 3, not run 8].
        Acceptance criteria: [14 in total; 14 have at least one test; 11 have all tests passing].
        Open bugs: [3, all about prices or codes: severity Medium].
        Last release: [45 bugs found before release, 5 found in the 30 days after].
        Exit criterion: [pass rate of executed tests 95% or more].

        Definitions to use:
        - Executed = passed + failed.
        - Pass rate = passed / executed.
        - Execution progress = executed / planned.
        - Defect leakage = bugs after release / (bugs before + bugs after).

        Please:
        1. Calculate each metric. Show the working for each one, to one decimal place.
        2. Check that passed + failed + blocked + not run equals planned.
        3. Write a 5-line status note: numbers, what they mean, the main risks.
        4. Say if the exit criterion is met. Do not say whether to release. That is the team's decision.</pre>
            <ul class="ai-try-checks">
              <li>The pass rate divides by executed tests, not planned tests.</li>
              <li>Every result matches your own spreadsheet formula.</li>
              <li>The note gives context, such as what the open bugs are about.</li>
              <li>It does not make the release decision for the team.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A metric is only useful if everyone counts it the same way. Write down each definition and check every number with a spreadsheet, not only with AI. Put a short story next to each number. Use metrics to improve the product, never to blame people.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Capstone: Testing a New Checkout for ShopNest</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole course together on one real-looking task. You will follow Aisha as she tests how promo codes and the minimum order work together in ShopNest Checkout 2.0. She reviews the requirement, designs tests with boundaries, writes test cases, reports a serious bug and helps Sam write the test summary. At every step, AI drafts and Aisha checks. At the end, you will run the same process on a feature of your own.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Five steps from left to right with arrows. 1 Review: 3 questions, removal message agreed with Priya. 2 Design: boundaries at 25 pounds and 30 pounds. 3 Test cases: 6 cases linked to US-102 and US-104. 4 Bug report: BUG-234 on Android 5.9.0, severity High, priority High. 5 Summary: pass rate 97.5 percent, 2 open bugs, recommendation Go with known risks. At the bottom: AI drafts each step; Aisha checks it against the rules and the product.">
            <defs><marker id="st15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">From requirement to release decision</text>
              <rect x="14" y="44" width="130" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="79" y="70" font-weight="700">1. Review</text>
              <text x="79" y="89" font-size="11" fill="#9b99b8">story gaps</text>
              <rect x="164" y="44" width="130" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="229" y="70" font-weight="700">2. Design</text>
              <text x="229" y="89" font-size="11" fill="#9b99b8">boundaries</text>
              <rect x="314" y="44" width="130" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="379" y="70" font-weight="700">3. Test cases</text>
              <text x="379" y="89" font-size="11" fill="#9b99b8">steps, results</text>
              <rect x="464" y="44" width="130" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="529" y="70" font-weight="700">4. Bug report</text>
              <text x="529" y="89" font-size="11" fill="#9b99b8">facts, evidence</text>
              <rect x="614" y="44" width="130" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="679" y="70" font-weight="700">5. Summary</text>
              <text x="679" y="89" font-size="11" fill="#9b99b8">for go/no-go</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#st15a)">
                <line x1="145" y1="72" x2="161" y2="72"/>
                <line x1="295" y1="72" x2="311" y2="72"/>
                <line x1="445" y1="72" x2="461" y2="72"/>
                <line x1="595" y1="72" x2="611" y2="72"/>
              </g>
              <g font-size="11">
                <rect x="14" y="116" width="130" height="100" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="79" y="144">3 questions</text>
                <text x="79" y="166">removal message</text>
                <text x="79" y="188">agreed with Priya</text>
                <rect x="164" y="116" width="130" height="100" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="229" y="144">£25.00 minimum</text>
                <text x="229" y="166">£30.00 for SAVE5</text>
                <text x="229" y="188">below and at each</text>
                <rect x="314" y="116" width="130" height="100" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="379" y="144">6 test cases</text>
                <text x="379" y="166">linked to US-102</text>
                <text x="379" y="188">and US-104</text>
                <rect x="464" y="116" width="130" height="100" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="529" y="144">BUG-234</text>
                <text x="529" y="166">Android 5.9.0</text>
                <text x="529" y="188">High / High</text>
                <rect x="614" y="116" width="130" height="100" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="679" y="144">Pass rate 97.5%</text>
                <text x="679" y="166">2 open bugs</text>
                <text x="679" y="188">Go, with risks</text>
              </g>
              <rect x="14" y="236" width="730" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="379" y="263">AI drafts each step. Aisha checks it against the rules and the real product.</text>
            </g>
          </svg>
          <figcaption>The capstone follows one feature through five steps. Each step produces something the team can use, and each one is checked by a person.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief and step 1: review the requirement</h3>
          <p>It is Thursday 29 October, the day of code freeze. Sam asks Aisha to test one risky area from start to finish: how promo codes and the minimum order work together. The rules she has:</p>
          <ul class="lc-list">
            <li>SAVE5 gives £5.00 off products. It needs a product subtotal of £30.00 or more.</li>
            <li>The product subtotal after the discount must be at least £25.00, or the order cannot be placed.</li>
            <li>If the subtotal falls below a code's minimum after the code is applied, the code is removed "with a message".</li>
          </ul>
          <p>She asks the approved AI tool to find gaps, giving it only the rules above. It suggests 9 questions. She keeps the 3 that change behaviour or money, and Priya answers them:</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Priya's answer</th></tr></thead>
            <tbody>
              <tr><td>What exact message shows when a code is removed?</td><td>"Your basket is now below the minimum spend for this code, so we have removed it"</td></tr>
              <tr><td>When is the minimum checked again?</td><td>Every time the basket changes</td></tr>
              <tr><td>What does the shopper see under the £25.00 minimum?</td><td>Place order is disabled, and "Minimum order is £25.00 after discounts" shows</td></tr>
            </tbody>
          </table>
          <p>The AI also suggested "codes can be used again after removal" as a rule. That was a guess, so Aisha dropped it.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 2 and 3: design the tests and write the cases</h3>
          <p>Aisha uses <strong>boundary value analysis</strong> (testing at a limit and just below it). There are two limits: £30.00 for SAVE5 and £25.00 for the order. All prices are multiples of 5p, so "just below" is 5p below. She works every total out with a spreadsheet:</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Basket (products)</th><th>Action</th><th>Expected result</th></tr></thead>
            <tbody>
              <tr><td>TC-102-21</td><td>Exact-minimum basket: 2 chicken, 2 salmon, 2 rice = £30.00</td><td>Apply SAVE5</td><td>Discount -£5.00, subtotal £25.00, delivery £4.99, total £29.99. Order can be placed.</td></tr>
              <tr><td>TC-102-22</td><td>2 eggs, 3 chicken, 1 olive oil = £30.80</td><td>Apply SAVE5</td><td>Subtotal £25.80, delivery £4.99, total £30.79</td></tr>
              <tr><td>TC-102-23</td><td>Same as TC-102-22</td><td>Apply SAVE5, then change eggs to 1 (£27.05)</td><td>The removal message shows. No discount. Subtotal £27.05, delivery £4.99, total £32.04.</td></tr>
              <tr><td>TC-102-24</td><td>Just-under-minimum basket: 1 banana bunch, 3 chicken, 1 salmon = £24.95</td><td>No code</td><td>Place order is disabled. "Minimum order is £25.00 after discounts" shows.</td></tr>
              <tr><td>TC-102-25</td><td>Same as TC-102-21 (£30.00)</td><td>Apply SAVE5, then remove 1 rice (£27.75)</td><td>The removal message shows. Subtotal £27.75. Order can be placed.</td></tr>
              <tr><td>TC-102-26</td><td>Same as TC-102-23</td><td>Run on web, iOS and Android</td><td>Same results on all three platforms</td></tr>
            </tbody>
          </table>
          <p>TC-102-21 is the key edge: £30.00 minus £5.00 is exactly £25.00, the order minimum. The AI draft said this order "should be blocked". That is wrong, because the rule says "at least £25.00". Aisha fixed it and linked every case to US-102 or US-104 in TestRail.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: the bug report</h3>
          <p>On Friday 30 October, TC-102-23 fails on the Android release build. Aisha follows the steps 3 times, then writes the report. She uses AI only to tidy her notes, and removes its guess about the cause.</p>
          <pre><code>BUG-234  Android: SAVE5 stays applied after the basket drops below £30.00

        Environment: staging, Android app 5.9.0, checkout_v2 on, test account
        Preconditions: logged in, basket empty, no code applied
        Steps:
        1. Add Free-range eggs (12) x2, Chicken breast 600 g x3, Olive oil x1
           (products £30.80).
        2. Apply code SAVE5. Subtotal shows £25.80.
        3. Change the eggs quantity to 1 (products £27.05).
        Expected (US-102 agreed rule): SAVE5 is removed with the message
           "Your basket is now below the minimum spend for this code, so we
           have removed it". Subtotal £27.05, delivery £4.99, total £32.04.
        Actual: no message. Discount -£5.00 still shown. Subtotal £22.05,
           delivery £4.99, total £27.04. Place order works, although £22.05
           is below the £25.00 minimum (US-104 AC2).
        How often: 3 out of 3. Web 2.15.0 and iOS 5.9.0: works as expected.
        Severity: High (wrong price and the minimum order rule is broken)
        Priority: High (set by Priya)
        Evidence: screen recording, 2 screenshots, links TC-102-23</code></pre>
          <p>The code freeze allows fixes for Critical or High severity bugs only, with Priya's approval. Leo fixes it in Android 5.9.1 on Monday 2 November. Aisha retests on Tuesday 3 November. It passes, and she re-runs the nearby cases too.</p>
        </div>
        <div class="lc-card">
          <h3>Step 5: the test summary report</h3>
          <p>A <strong>test summary report</strong> (also called a test completion report) tells decision makers what was tested, what was found and what risk is left. Sam drafts it with AI from counts only, checks each number in his spreadsheet, and compares it with the exit criteria in the plan.</p>
          <table class="lc-table">
            <thead><tr><th>Exit criterion</th><th>Result on Wednesday 4 November</th><th>Met?</th></tr></thead>
            <tbody>
              <tr><td>All High priority test cases run</td><td>120 of 120 Checkout 2.0 test cases run</td><td>Yes</td></tr>
              <tr><td>Pass rate 95% or more</td><td>117 / 120 = 97.5%</td><td>Yes</td></tr>
              <tr><td>No open Critical or High bugs</td><td>38 bugs found, 36 fixed and checked. BUG-234 fixed.</td><td>Yes</td></tr>
              <tr><td>Open Medium bugs have a plan</td><td>BUG-235 (iOS 5.9.0: VoiceOver does not say "Full" for full slots, first noted in an exploratory session): fix in iOS 5.9.2 by Thursday 19 November</td><td>Yes</td></tr>
              <tr><td>Every criterion has a test</td><td>14 of 14. All tests passing for 12 of 14 (85.7%).</td><td>Yes</td></tr>
              <tr><td>Regression pack on release builds</td><td>180 of 180 passed</td><td>Yes</td></tr>
            </tbody>
          </table>
          <p>The other open bug is BUG-236 (Low): long product names are cut off in the order summary on small Android screens. The 3 failed tests come from these 2 open bugs. Sam's recommendation is "Go, with these two known bugs". He also lists what was not tested, such as tablets. The decision belongs to Priya and the team at the go/no-go meeting.</p>
          <p>After release, the team will measure defect leakage for 30 days, until Saturday 5 December.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the capstone steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Aisha's capstone work in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Read the rules and ask AI for gap questions, using no customer data.</li>
              <li data-order="2">Get answers from Priya and update the acceptance criteria.</li>
              <li data-order="3">Design boundary tests at £25.00 and £30.00, and check each total in a spreadsheet.</li>
              <li data-order="4">Write the 6 test cases and link each one to its story in TestRail.</li>
              <li data-order="5">Run the tests, reproduce the failure 3 times and log BUG-234.</li>
              <li data-order="6">Retest the fix and re-run the nearby cases.</li>
              <li data-order="7">Give Sam the results for the test summary report.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run a mini capstone on a feature you know. Use the AI's work as a draft, then check each part against the real rules and the real product.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior tester coaching me through a small test project. Use simple English.

        Feature: [Gift cards at checkout for ShopNest, a made-up London grocery app on web, iOS and Android].
        Rules I have: [A gift card code is 16 digits. A card can pay for all or part of an order. The balance must be at least £0.01. Expired cards are refused.]

        Please do these 5 steps:
        1. Review: list 6 gap questions for the product owner. Do not answer them.
        2. Design: a boundary table for each number in the rules (at, just below, just above).
        3. Test cases: 6 cases as a table with ID, Rule, Test data, Steps, Expected result. Mark guesses ASSUMPTION.
        4. Bug report: a template I can fill in, with title pattern, environment, steps, expected, actual, how often, severity, priority, evidence.
        5. Summary: a one-page test summary template with exit criteria, and blanks for my real numbers.

        Use only my rules. Write QUESTION where a rule is missing. Do not invent numbers or results.</pre>
            <ul class="ai-try-checks">
              <li>The gap questions are about real holes in the rules, and are not answered by the AI.</li>
              <li>The boundary table tests at, just below and just above each limit.</li>
              <li>Expected results come from your rules; guesses are marked ASSUMPTION.</li>
              <li>The summary template has blanks for real numbers, not invented results.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good testing is a chain: clear rules, smart test design, exact test cases, clear bug reports and an honest summary. AI can speed up every link in the chain. You check every rule, number and result against the real product, and the team makes the release decision.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

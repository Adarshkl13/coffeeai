module AiApiTestingContent
  # Units (sidebar dividers): 1–4 API Basics · 5–9 Designing API Tests · 10–14 Running and Improving · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">What an API Is</h1>
        </div>
        <p class="lc-lead">An API (application programming interface) lets one program ask another program for data or actions. Most apps you use talk to APIs all day. In this lesson you will learn the parts of an API call: the request, the response, the endpoint and the JSON data inside them. Through this course you will follow Jordan Lee, a QA engineer at PayLite. PayLite is a made-up payments app in New York. Jordan tests its made-up REST API for payments, refunds and customers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="One API call. On the left is the client, such as an app, a browser or a test tool. On the right is the PayLite API server. The client sends a request with a method and URL (POST /v1/payments), headers (Authorization and Content-Type) and a JSON body (amount, currency, customer_id). The server sends back a response with a status code (201 Created), headers and a JSON body (id, status, amount, created_at).">
            <defs><marker id="api1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd" text-anchor="middle">One API call: a request goes out, a response comes back</text>
              <rect x="20" y="105" width="150" height="90" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="95" y="138" font-weight="700" text-anchor="middle">Client</text>
              <text x="95" y="158" font-size="11" fill="#9b99b8" text-anchor="middle">app, browser or</text>
              <text x="95" y="174" font-size="11" fill="#9b99b8" text-anchor="middle">test tool</text>
              <rect x="590" y="105" width="150" height="90" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="665" y="138" font-weight="700" text-anchor="middle">PayLite API</text>
              <text x="665" y="158" font-size="11" fill="#9b99b8" text-anchor="middle">server at</text>
              <text x="665" y="174" font-size="11" fill="#9b99b8" text-anchor="middle">api.paylite.example</text>
              <rect x="200" y="40" width="360" height="100" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="216" y="62" font-weight="700" fill="#93c5fd">REQUEST</text>
              <text x="216" y="84" font-size="12">Method + URL: POST /v1/payments</text>
              <text x="216" y="104" font-size="12">Headers: Authorization, Content-Type</text>
              <text x="216" y="124" font-size="12">Body (JSON): amount, currency, customer_id</text>
              <rect x="200" y="160" width="360" height="100" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="216" y="182" font-weight="700" fill="#6ee7b7">RESPONSE</text>
              <text x="216" y="204" font-size="12">Status code: 201 Created</text>
              <text x="216" y="224" font-size="12">Headers: Content-Type: application/json</text>
              <text x="216" y="244" font-size="12">Body (JSON): id, status, amount, created_at</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#api1a)">
                <line x1="170" y1="125" x2="196" y2="95"/>
                <line x1="560" y1="95" x2="587" y2="125"/>
                <line x1="590" y1="175" x2="564" y2="205"/>
                <line x1="200" y1="205" x2="174" y2="175"/>
              </g>
              <text x="380" y="288" font-size="12" fill="#9b99b8" text-anchor="middle">The status code tells you what happened. The body gives the details.</text>
            </g>
          </svg>
          <figcaption>Every API call has two halves. The client sends a request. The server sends back a response.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Requests, responses and endpoints</h3>
          <p>When you pay in the PayLite app, you do not see the API. The app sends a <strong>request</strong> to the PayLite server. The server does the work and sends back a <strong>response</strong>. An API tester sends these requests directly, without the app screens.</p>
          <ul class="lc-list">
            <li><strong>Endpoint</strong>: one address that does one job, such as <code>/v1/payments</code>. The <code>v1</code> part is the API version.</li>
            <li><strong>Method</strong>: the action, such as <code>GET</code> (read) or <code>POST</code> (create). A later lesson covers all the main methods.</li>
            <li><strong>Headers</strong>: extra details sent with the request or response, such as the access token or the data type.</li>
            <li><strong>Body</strong>: the main data, usually written in JSON.</li>
            <li><strong>Status code</strong>: a three-digit number in the response. <code>201</code> means "created". <code>400</code> means "your request was wrong".</li>
          </ul>
          <p>Here is a made-up request that Jordan sends to the PayLite <strong>sandbox</strong> (a test copy of the system with no real money):</p>
          <pre><code>POST https://sandbox.paylite.example/v1/payments
        Authorization: Bearer pl_test_FAKE_admin_7Q2x
        Content-Type: application/json
        Idempotency-Key: jl-test-0001

        {
          "amount": 42.50,
          "currency": "USD",
          "customer_id": "cus_1001",
          "description": "Coffee subscription"
        }</code></pre>
          <p>And here is the response:</p>
          <pre><code>201 Created
        Content-Type: application/json

        {
          "id": "pay_5006",
          "status": "pending",
          "amount": 42.50,
          "currency": "USD",
          "customer_id": "cus_1001",
          "description": "Coffee subscription",
          "created_at": "2026-10-02T14:05:31Z"
        }</code></pre>
          <p>The token, the IDs and the domain are all made up. Real tokens are secrets. You will learn to keep them safe later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>JSON in five minutes</h3>
          <p><strong>JSON</strong> (JavaScript Object Notation) is a plain-text way to write data. Most web APIs send and receive JSON. You do not need to code to read it.</p>
          <table class="lc-table">
            <thead><tr><th>JSON part</th><th>What it looks like</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Object</td><td>Curly brackets around key and value pairs</td><td><code>{ "id": "pay_5006" }</code></td></tr>
              <tr><td>Key</td><td>A field name in double quotes</td><td><code>"currency"</code></td></tr>
              <tr><td>String</td><td>Text in double quotes</td><td><code>"USD"</code></td></tr>
              <tr><td>Number</td><td>A number with no quotes</td><td><code>42.50</code></td></tr>
              <tr><td>Boolean</td><td><code>true</code> or <code>false</code>, no quotes</td><td><code>"refundable": true</code></td></tr>
              <tr><td>Null</td><td>No value</td><td><code>"description": null</code></td></tr>
              <tr><td>Array</td><td>A list in square brackets</td><td><code>"refunds": ["re_7001"]</code></td></tr>
            </tbody>
          </table>
          <p>Testers care about these types. <code>42.50</code> (a number) and <code>"42.50"</code> (a string) look alike, but an API may treat them very differently. A good test checks both.</p>
        </div>
        <div class="lc-card">
          <h3>REST basics and your first prompt</h3>
          <p><strong>REST</strong> (Representational State Transfer) is a common style for web APIs. In a REST API, each kind of thing is a <strong>resource</strong> with its own URL. PayLite has three: payments, refunds and customers. You use standard HTTP methods on them. Each request carries everything the server needs, including the token.</p>
          <p>An AI assistant can explain a response you do not understand. Give it the real context, but never real secrets.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What does this API response mean?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am a QA engineer testing a payments REST API (sandbox, fake data).
        I sent POST /v1/payments with amount 42.50 and currency USD.
        Here is the response, with the token removed:
        [paste the status line and JSON body]
        Explain each field in plain English. Tell me which fields I should
        check in a test, and what values I should expect. If you are not
        sure what a field means, say so. Do not guess.</code></pre>
          <p>The AI can explain JSON well. It does not know PayLite's real rules. Always compare its answer with the API documentation.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: request or response?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Jordan is reading one PayLite API call. Sort each part into the request or the response.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="req" data-label="Request (sent by the client)"></div>
              <div data-sorter-target="bucket" data-bucket="res" data-label="Response (sent by the server)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="req" data-why="The method and URL say what the client wants. They are part of the request.">POST /v1/payments</li>
              <li data-bucket="res" data-why="Only the server sends a status code. It tells you what happened.">201 Created</li>
              <li data-bucket="req" data-why="The client sends its token so the server knows who is calling.">Authorization: Bearer pl_test_FAKE_admin_7Q2x</li>
              <li data-bucket="res" data-why="The server creates the ID and sends it back in the response body.">"id": "pay_5006"</li>
              <li data-bucket="req" data-why="The client chooses the amount and sends it in the request body.">"amount": 42.50 sent to create a payment</li>
              <li data-bucket="res" data-why="The server records the time the payment was made and returns it.">"created_at": "2026-10-02T14:05:31Z"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain a made-up API response field by field. Then turn the explanation into your first list of checks.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient API testing mentor. I am new to APIs. Use simple English.

        I am testing a made-up payments API in a sandbox (no real money, fake data).
        Request: [POST /v1/payments with amount 42.50, currency USD, customer_id cus_1001]
        Response:
        [201 Created
        {"id": "pay_5006", "status": "pending", "amount": 42.50, "currency": "USD", "customer_id": "cus_1001", "description": "Coffee subscription", "created_at": "2026-10-02T14:05:31Z"}]

        Please:
        1. Explain the status code in one sentence.
        2. Make a table with columns: Field, JSON type (string, number, boolean, null, object, array), Meaning, What I should check.
        3. List 3 questions I should ask the developer, where the response alone does not tell me the rule.
        4. Name one thing that would worry you if it appeared in this response.

        Do not invent business rules. If a meaning is a guess, label it "guess".</pre>
            <ul class="ai-try-checks">
              <li>Each field has the correct JSON type (42.50 is a number, "USD" is a string).</li>
              <li>Guesses about meaning are clearly labelled.</li>
              <li>The questions are about real rules, such as amount limits or allowed currencies.</li>
              <li>It does not invent fields that are not in the response.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every API call is a request and a response. Read the status code first, then the body. Testing an API means checking that each request gets the right response, with the right data and the right types.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Where AI Helps in API Testing and Its Limits</h1>
        </div>
        <p class="lc-lead">AI can make API testing faster. It can read long docs, suggest test ideas, make fake test data and draft requests. But it can also invent endpoints that do not exist, guess the wrong status codes and repeat secrets you paste into it. In this lesson you will learn where AI helps, where it goes wrong, and what you must never paste into an AI tool. You will see how Jordan Lee at PayLite caught two AI mistakes in one session.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Left column, where AI helps: explain docs and errors, suggest test ideas, make fake test data, draft requests and checks, summarise test results. Right column, where AI goes wrong: invents endpoints or fields, guesses wrong status codes, misses business rules, leaks keys you paste in, sounds sure when wrong. Both columns point to the middle: you check against the spec, the real API and the team. Then you decide.">
            <defs><marker id="api2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="135" y="28" font-weight="700" fill="#6ee7b7">Where AI helps</text>
              <text x="625" y="28" font-weight="700" fill="#f9a8d4">Where AI goes wrong</text>
              <rect x="20" y="44" width="230" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="135" y="68">Explain docs and errors</text>
              <rect x="20" y="92" width="230" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="135" y="116">Suggest test ideas</text>
              <rect x="20" y="140" width="230" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="135" y="164">Make fake test data</text>
              <rect x="20" y="188" width="230" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="135" y="212">Draft requests and checks</text>
              <rect x="20" y="236" width="230" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="135" y="260">Summarise test results</text>
              <rect x="510" y="44" width="230" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="625" y="68">Invents endpoints or fields</text>
              <rect x="510" y="92" width="230" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="625" y="116">Guesses wrong status codes</text>
              <rect x="510" y="140" width="230" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="625" y="164">Misses business rules</text>
              <rect x="510" y="188" width="230" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="625" y="212">Leaks keys you paste in</text>
              <rect x="510" y="236" width="230" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="625" y="260">Sounds sure when wrong</text>
              <rect x="290" y="100" width="180" height="104" rx="10" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="380" y="128" font-weight="700">You check</text>
              <text x="380" y="150" font-size="12" fill="#9b99b8">against the spec,</text>
              <text x="380" y="168" font-size="12" fill="#9b99b8">the real API</text>
              <text x="380" y="186" font-size="12" fill="#9b99b8">and the team</text>
              <rect x="290" y="236" width="180" height="38" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="380" y="260" font-weight="700">Then you decide</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#api2a)">
                <line x1="252" y1="152" x2="286" y2="152"/>
                <line x1="508" y1="152" x2="474" y2="152"/>
                <line x1="380" y1="205" x2="380" y2="232"/>
              </g>
              <text x="380" y="305" font-size="12" fill="#9b99b8">AI drafts and suggests. Testers check and decide.</text>
            </g>
          </svg>
          <figcaption>AI is useful for drafts and ideas. Every output still goes through your checks before it becomes a test.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>How AI helps</th><th>PayLite example (made up)</th></tr></thead>
            <tbody>
              <tr><td>Reading docs</td><td>Summarises a long spec into a table of endpoints, fields and rules</td><td>Turns 30 pages about refunds into one table of rules</td></tr>
              <tr><td>Test ideas</td><td>Suggests positive, negative and edge cases you might miss</td><td>"What if the refund amount has three decimal places?"</td></tr>
              <tr><td>Test data</td><td>Makes fake but realistic data</td><td>Twenty fake customers with US and UK names and <code>example.com</code> emails</td></tr>
              <tr><td>Requests and checks</td><td>Drafts request bodies and the checks for each response</td><td>A request body for a 0.49 USD payment and the expected 400 error</td></tr>
              <tr><td>Errors and results</td><td>Explains an error message or summarises a test run</td><td>Explains why a 422 came back, in plain words</td></tr>
            </tbody>
          </table>
          <p>Use an AI tool your company has approved for work. Check the tool's current data policy with your IT or security team.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI goes wrong</h3>
          <p>AI tools predict likely text. They do not know your API unless you show them. This causes four common problems:</p>
          <ul class="lc-list">
            <li><strong>Made-up endpoints and fields.</strong> Many payment APIs have a "cancel" endpoint. So the AI may suggest <code>POST /v1/refunds/{id}/cancel</code>, even though PayLite has no such endpoint.</li>
            <li><strong>Wrong status codes.</strong> The AI may expect <code>400</code> where PayLite's spec says <code>422</code>. Your spec is the source of truth, not the AI.</li>
            <li><strong>Missed business rules.</strong> The AI does not know that PayLite refunds close after 180 days unless the doc says so.</li>
            <li><strong>Too much confidence.</strong> A wrong answer often sounds as sure as a right one.</li>
          </ul>
          <p>Also, AI never finds all bugs and never guarantees coverage. It gives you ideas. You decide which ones become tests.</p>
        </div>
        <div class="lc-card">
          <h3>What you may paste, and what you must never paste</h3>
          <table class="lc-table">
            <thead><tr><th>Safe to paste (after a check)</th><th>Never paste into a public AI tool</th></tr></thead>
            <tbody>
              <tr><td>Public API docs, or internal docs your company allows you to share</td><td>Real API keys, tokens, passwords or client secrets</td></tr>
              <tr><td>Fake test data made for the sandbox</td><td>Real customer names, emails, card numbers or bank details</td></tr>
              <tr><td>Requests with the token replaced by <code>[TOKEN]</code></td><td>Production logs that contain personal data</td></tr>
              <tr><td>Error messages with IDs and personal data removed</td><td>Confidential source code or unreleased plans, unless your company allows it</td></tr>
            </tbody>
          </table>
          <p>If you paste a real key by mistake, do not just delete the chat. Tell your security team at once, so they can revoke (switch off) the key and issue a new one.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write tests for our refunds API. Token: [a real token pasted here]</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is the spec section for POST /v1/refunds (sandbox, no secrets):
        [paste the spec text]
        Suggest 10 test ideas. Use ONLY endpoints, fields and status codes
        that appear in this text. If you think a rule is missing, list it
        under "Questions for the team". Do not invent it.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: one AI session, two catches</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Jordan's prompt">Jordan pastes the POST /v1/refunds spec section, with the token replaced by [TOKEN]. He asks for 10 test ideas that use only the spec.</li>
              <li data-kind="answer" data-label="AI reply">The AI lists 10 ideas. Idea 7 says: "Call POST /v1/refunds/{id}/cancel and expect 200."</li>
              <li data-kind="tool" data-label="Search the spec">Jordan searches the PayLite spec for the word "cancel".</li>
              <li data-kind="result" data-label="Search result">0 matches. There is no cancel endpoint for refunds.</li>
              <li data-kind="warn" data-label="Made-up endpoint">The AI invented this endpoint. Jordan deletes idea 7 and adds "Can a refund be cancelled?" to his questions for the developer.</li>
              <li data-kind="answer" data-label="AI reply">Idea 4 says: "Refund 100.01 USD on pay_5002 (100.00 left). Expect 400 Bad Request."</li>
              <li data-kind="check" data-label="Check the code">The spec says a refund above the remaining amount returns 422 refund_exceeds_remaining. Jordan corrects the expected result.</li>
              <li data-kind="result" data-label="Final list">Nine checked ideas go into the test management tool, tagged "AI-drafted, reviewed by JL".</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for test ideas from a short spec, with strict rules to stop it inventing things. Then check each idea against the spec text.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful API test analyst. Use simple English.

        Here is part of a made-up API spec (sandbox, no real data or secrets):
        [POST /v1/refunds
        Body: payment_id (required), amount (optional, 0.01 up to the remaining refundable amount, 2 decimal places; missing = refund all that remains), reason (optional: duplicate, requested_by_customer, fraudulent).
        Payment must be succeeded or partially_refunded, else 422 payment_not_refundable.
        Amount above remaining: 422 refund_exceeds_remaining.
        Refunds allowed up to 180 days after the payment, else 422 refund_window_closed.
        Success: 201 with id, payment_id, amount, currency, status, created_at.
        Missing or bad token: 401. Role not allowed: 403.]

        Tasks:
        1. Suggest 10 test ideas as a table: ID, Idea, Expected status code, Spec line it comes from.
        2. Use ONLY endpoints, fields and codes in the text above.
        3. Under "Questions for the team", list rules the text does not answer.
        4. Under "Things I am unsure about", list any guesses.</pre>
            <ul class="ai-try-checks">
              <li>Every expected status code matches the spec text (for example 422, not 400, for too large a refund).</li>
              <li>No endpoint, field or code appears that is not in the spec.</li>
              <li>Each idea points to a real line in the spec.</li>
              <li>The questions are real gaps, such as how the 180 days are counted.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Treat AI output as a draft from a fast helper who has never seen your API. Check every endpoint, field and status code against the spec. Never paste real keys or customer data into a public AI tool.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Reading API Documentation</h1>
        </div>
        <p class="lc-lead">API documentation tells you what an API should do. It is the main source for your expected results. Many teams write it as an OpenAPI spec. In this lesson you will learn to read an endpoint entry: its path, method, parameters, request body, responses and security. You will also learn to use AI to summarise a spec and find gaps, as Jordan Lee does before testing PayLite refunds.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Five parts of an endpoint entry on the left, each with an arrow to the tests it gives you on the right. Path and method, POST /v1/refunds, gives a test for the right URL and method. Parameters (path, query, header) give tests for missing and wrong parameters. The request body schema gives tests for each rule, type and limit. Responses with codes and examples give a test that each listed code happens. Security gives tests with no token and the wrong role.">
            <defs><marker id="api3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Read each part of an endpoint, then turn it into tests</text>
              <rect x="20" y="40" width="300" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="36" y="67">Path + method: POST /v1/refunds</text>
              <rect x="20" y="96" width="300" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="36" y="123">Parameters: path, query, header</text>
              <rect x="20" y="152" width="300" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="36" y="179">Request body schema: fields, types</text>
              <rect x="20" y="208" width="300" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="36" y="235">Responses: codes + examples</text>
              <rect x="20" y="264" width="300" height="44" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="36" y="291">Security: who may call it</text>
              <rect x="420" y="40" width="320" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="436" y="67">Test: right URL and method only</text>
              <rect x="420" y="96" width="320" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="436" y="123">Test: missing and wrong params</text>
              <rect x="420" y="152" width="320" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="436" y="179">Test: each rule, type and limit</text>
              <rect x="420" y="208" width="320" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="436" y="235">Test: each listed code happens</text>
              <rect x="420" y="264" width="320" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="436" y="291">Test: no token, wrong role</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#api3a)">
                <line x1="322" y1="62" x2="416" y2="62"/>
                <line x1="322" y1="118" x2="416" y2="118"/>
                <line x1="322" y1="174" x2="416" y2="174"/>
                <line x1="322" y1="230" x2="416" y2="230"/>
                <line x1="322" y1="286" x2="416" y2="286"/>
              </g>
            </g>
          </svg>
          <figcaption>Each part of an endpoint entry gives you a group of tests. A part with no detail gives you a question for the team.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What an OpenAPI spec is</h3>
          <p>The <strong>OpenAPI Specification</strong> is a standard format for describing REST APIs. Its older name is Swagger. A spec file is written in YAML or JSON. Tools can turn it into readable web pages, and some test tools can import it.</p>
          <p>The newest version is OpenAPI 3.2, released in September 2025. Many teams still use 3.0 or 3.1. The ideas in this lesson are the same in all three. Check which version your team uses, and check your tools' current docs for support.</p>
          <p>Here is a short, made-up part of the PayLite spec. <strong>YAML</strong> (a plain-text data format) uses indents to show which items belong together:</p>
          <pre><code>/v1/refunds:
          post:
            summary: Refund all or part of a payment
            security:
              - bearerAuth: []
            requestBody:
              required: true
              content:
                application/json:
                  schema:
                    type: object
                    required: [payment_id]
                    properties:
                      payment_id: { type: string, example: pay_5002 }
                      amount:     { type: number, minimum: 0.01 }
                      reason:
                        type: string
                        enum: [duplicate, requested_by_customer, fraudulent]
            responses:
              "201": { description: Refund created }
              "401": { description: Missing, bad or expired token }
              "403": { description: Role not allowed }
              "422": { description: Business rule broken }</code></pre>
        </div>
        <div class="lc-card">
          <h3>How to read an endpoint entry</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it tells you</th><th>PayLite example</th></tr></thead>
            <tbody>
              <tr><td>Path and method</td><td>The address and the action</td><td><code>POST /v1/refunds</code></td></tr>
              <tr><td>Path parameter</td><td>A value inside the URL</td><td><code>{id}</code> in <code>/v1/payments/{id}</code></td></tr>
              <tr><td>Query parameter</td><td>A filter after the <code>?</code></td><td><code>?status=succeeded&amp;limit=20</code></td></tr>
              <tr><td>Header parameter</td><td>A value in the headers</td><td><code>Idempotency-Key</code> on POST /v1/payments</td></tr>
              <tr><td>Request body schema</td><td>Fields, types, required fields, limits, allowed values</td><td><code>reason</code> must be one of three values</td></tr>
              <tr><td>Responses</td><td>Each status code and what its body looks like</td><td><code>201</code>, <code>401</code>, <code>403</code>, <code>422</code></td></tr>
              <tr><td>Security</td><td>How callers prove who they are</td><td>A bearer token in the <code>Authorization</code> header</td></tr>
            </tbody>
          </table>
          <p>A <strong>schema</strong> is the shape of the data: which fields exist, their types and their limits. An <strong>enum</strong> is a fixed list of allowed values.</p>
          <p>Read the spec like a tester. Look for what it does <em>not</em> say. Jordan's doc review of the PayLite spec found three gaps:</p>
          <ul class="lc-list">
            <li>Is the 180-day refund window counted from <code>created_at</code>, or from when the payment succeeded?</li>
            <li>What happens with <code>limit=0</code> or <code>limit=101</code> on the payments list: a 400 error, or a changed value?</li>
            <li>Can PATCH change a customer's <code>country</code>? The spec does not say.</li>
          </ul>
          <p>Gaps like these are cheap to fix before coding ends. Finding them early is part of <strong>shift-left</strong> testing (testing earlier in the project).</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to read a spec</h3>
          <p>AI is good at turning a long spec into a short table. It is also good at spotting missing rules. But it may fill a gap with a "normal" rule from other APIs. That is a guess, not your spec.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Summarise this API.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is the OpenAPI section for POST /v1/refunds (made-up sandbox API):
        [paste the YAML]
        1. Make a table: Field, Type, Required?, Limits or allowed values.
        2. List every status code and when it happens.
        3. List rules a tester needs that this text does NOT state.
        Use only the text above. Mark anything you infer as "inferred".</code></pre>
          <p>Check the AI's table line by line against the spec. Then take the gaps to the developer or product owner. Record the answers where the team can see them.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: review a spec with AI</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Jordan's spec review steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Get the latest spec version from the team, not an old copy.</li>
              <li data-order="2">Remove any secrets and real data from the examples.</li>
              <li data-order="3">Ask AI to summarise endpoints, fields and rules into a table.</li>
              <li data-order="4">Check the AI's table line by line against the spec.</li>
              <li data-order="5">Ask AI to list gaps and unclear rules.</li>
              <li data-order="6">Take the questions to the developer or product owner and record the answers.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a short spec section and ask AI to turn it into a rules table and a list of gaps. Then check its table against the spec yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior QA engineer who reviews API docs before testing. Use simple English.

        Here is part of a made-up OpenAPI spec (sandbox only):
        [POST /v1/payments
        Header: Idempotency-Key (required, 1 to 64 characters)
        Body:
          amount: number, required, 0.50 to 10000.00, max 2 decimal places
          currency: string, required, enum [USD, GBP, EUR]
          customer_id: string, required, must exist
          description: string, optional, max 140 characters
        Responses: 201 created, 400 invalid field, 401 bad token, 404 customer not found, 409 same key with a different body]

        Please:
        1. Make a table: Field, Type, Required?, Limits or allowed values, One test idea.
        2. List each status code and the exact situation that causes it.
        3. List at least 4 gaps or unclear rules a tester should ask about.
        4. Mark anything not written in the spec as "inferred".</pre>
            <ul class="ai-try-checks">
              <li>The table matches the spec exactly (limits, enum values, required fields).</li>
              <li>Inferred rules are clearly marked, not stated as facts.</li>
              <li>The gaps are real, such as "Is lower-case usd allowed?" or "What happens when the key is reused with the same body?"</li>
              <li>No extra fields or status codes appear.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The spec is where your expected results come from. Read every part of an endpoint and turn it into tests. Anything the spec does not say is a question for the team, not a gap for AI to fill.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">HTTP Methods and Status Codes</h1>
        </div>
        <p class="lc-lead">Every API request uses an HTTP method, and every response has a status code. The method says what you want to do. The status code says what happened. In this lesson you will learn the five main methods and the status code families. You will also learn the codes testers mix up most, such as 401 and 403, and 400 and 422. Jordan Lee uses all of them to test PayLite.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Top row: five HTTP methods. GET reads a payment. POST creates a payment. PUT replaces a whole item. PATCH changes part of an item, such as an email. DELETE deletes a customer. Bottom: three status code families. 2xx success: 200 OK, 201 Created, 204 No Content. 4xx client error, the caller's mistake: 400, 401, 403, 404, 409, 422, 429. 5xx server error, the server's mistake: 500, 502, 503, 504.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Methods say what to do. Status codes say what happened.</text>
              <rect x="20" y="34" width="136" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="88" y="58" font-weight="700">GET</text>
              <text x="88" y="80" font-size="11" fill="#9b99b8">read a payment</text>
              <rect x="166" y="34" width="136" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="234" y="58" font-weight="700">POST</text>
              <text x="234" y="80" font-size="11" fill="#9b99b8">create a payment</text>
              <rect x="312" y="34" width="136" height="60" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="58" font-weight="700">PUT</text>
              <text x="380" y="80" font-size="11" fill="#9b99b8">replace whole item</text>
              <rect x="458" y="34" width="136" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="526" y="58" font-weight="700">PATCH</text>
              <text x="526" y="80" font-size="11" fill="#9b99b8">change an email</text>
              <rect x="604" y="34" width="136" height="60" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="672" y="58" font-weight="700">DELETE</text>
              <text x="672" y="80" font-size="11" fill="#9b99b8">delete a customer</text>
              <rect x="20" y="110" width="233" height="172" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="136" y="134" font-weight="700" fill="#6ee7b7">2xx Success</text>
              <text x="136" y="152" font-size="11" fill="#9b99b8">it worked</text>
              <text x="136" y="178" font-size="12">200 OK</text>
              <text x="136" y="196" font-size="12">201 Created</text>
              <text x="136" y="214" font-size="12">204 No Content</text>
              <rect x="263" y="110" width="233" height="172" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="379" y="134" font-weight="700" fill="#fcd34d">4xx Client error</text>
              <text x="379" y="152" font-size="11" fill="#9b99b8">the caller's mistake</text>
              <text x="379" y="172" font-size="12">400 Bad Request</text>
              <text x="379" y="188" font-size="12">401 Unauthorized</text>
              <text x="379" y="204" font-size="12">403 Forbidden</text>
              <text x="379" y="220" font-size="12">404 Not Found</text>
              <text x="379" y="236" font-size="12">409 Conflict</text>
              <text x="379" y="252" font-size="12">422 Unprocessable Content</text>
              <text x="379" y="268" font-size="12">429 Too Many Requests</text>
              <rect x="506" y="110" width="233" height="172" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="622" y="134" font-weight="700" fill="#f9a8d4">5xx Server error</text>
              <text x="622" y="152" font-size="11" fill="#9b99b8">the server's mistake</text>
              <text x="622" y="178" font-size="12">500 Internal Server Error</text>
              <text x="622" y="196" font-size="12">502 Bad Gateway</text>
              <text x="622" y="214" font-size="12">503 Service Unavailable</text>
              <text x="622" y="232" font-size="12">504 Gateway Timeout</text>
              <text x="380" y="306" font-size="12" fill="#9b99b8">Read the code first. Then read the body for the details.</text>
            </g>
          </svg>
          <figcaption>Five methods do almost all the work in a REST API. The first digit of a status code tells you which family it belongs to.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five main HTTP methods</h3>
          <p>Two words help you test methods. A <strong>safe</strong> method only reads data. It must not change anything. An <strong>idempotent</strong> method has the same effect on the server whether you send it once or many times.</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What it does</th><th>Safe?</th><th>Idempotent?</th><th>PayLite example</th></tr></thead>
            <tbody>
              <tr><td><code>GET</code></td><td>Reads data</td><td>Yes</td><td>Yes</td><td><code>GET /v1/payments/pay_5001</code></td></tr>
              <tr><td><code>POST</code></td><td>Creates something new</td><td>No</td><td>No</td><td><code>POST /v1/payments</code></td></tr>
              <tr><td><code>PUT</code></td><td>Replaces a whole item</td><td>No</td><td>Yes</td><td>Not used by PayLite</td></tr>
              <tr><td><code>PATCH</code></td><td>Changes part of an item</td><td>No</td><td>Not always</td><td><code>PATCH /v1/customers/cus_1002</code> with a new email</td></tr>
              <tr><td><code>DELETE</code></td><td>Removes an item</td><td>No</td><td>Yes</td><td><code>DELETE /v1/customers/cus_1003</code></td></tr>
            </tbody>
          </table>
          <p>Why this matters for payments: if a phone loses signal, the app may send the same <code>POST</code> twice. That could charge the customer twice. So PayLite asks for an <code>Idempotency-Key</code> header on new payments. Many payment APIs use a key like this. If the same key arrives again with the same body, PayLite returns the first payment. It does not create a second one. That is a test you must write.</p>
          <p>Also test that a <code>GET</code> never changes data, and that methods the spec does not list are refused.</p>
        </div>
        <div class="lc-card">
          <h3>Status codes in PayLite</h3>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Meaning</th><th>When PayLite returns it</th></tr></thead>
            <tbody>
              <tr><td><code>200 OK</code></td><td>It worked, here is the data</td><td>GET a payment, PATCH a customer</td></tr>
              <tr><td><code>201 Created</code></td><td>A new item was made</td><td>POST a payment, refund or customer</td></tr>
              <tr><td><code>204 No Content</code></td><td>It worked, and there is no body</td><td>DELETE a customer</td></tr>
              <tr><td><code>400 Bad Request</code></td><td>The request or a field is wrong</td><td>Amount 0.49, currency "XYZ", broken JSON</td></tr>
              <tr><td><code>401 Unauthorized</code></td><td>We do not know who you are</td><td>No token, wrong token, expired token</td></tr>
              <tr><td><code>403 Forbidden</code></td><td>We know you, but you may not do this</td><td>The read-only token tries to POST</td></tr>
              <tr><td><code>404 Not Found</code></td><td>The item does not exist</td><td><code>GET /v1/payments/pay_9999</code></td></tr>
              <tr><td><code>409 Conflict</code></td><td>Clashes with the current state</td><td>Email already used, or delete a customer with a pending payment</td></tr>
              <tr><td><code>422 Unprocessable Content</code></td><td>Well formed, but breaks a business rule</td><td>Refund more than remains, refund a failed payment</td></tr>
              <tr><td><code>429 Too Many Requests</code></td><td>Slow down</td><td>More than 100 requests in one minute from one token</td></tr>
              <tr><td><code>500 Internal Server Error</code></td><td>The server broke</td><td>Never expected. Always a bug to report.</td></tr>
            </tbody>
          </table>
          <p>The official name of 401 is "Unauthorized", but it really means "not authenticated" (we cannot confirm who you are). 403 is the true "not allowed" code. The difference between 400 and 422 depends on each API's own rules. Always use your spec.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to predict expected codes</h3>
          <p>AI can build a table of expected codes quickly. Give it your spec's rules, or it will use common habits from other APIs.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What status code should a refund that is too big return?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Our spec says: 400 = field format or range wrong; 422 = request is
        well formed but breaks a business rule; 401 = no or bad token;
        403 = valid token, role not allowed.
        For each scenario below, give the expected status code and the
        spec rule it comes from. If the rules above do not decide it,
        write "ASK THE TEAM".
        [list of scenarios]</code></pre>
          <p>Check the AI's codes against the spec. Then run the requests in the sandbox. The real API may disagree with both the AI and the spec. That difference is a bug or a doc error, and you report it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which status code?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up PayLite request by the status code the spec expects.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="c201" data-label="201 Created"></div>
              <div data-sorter-target="bucket" data-bucket="c400" data-label="400 Bad Request"></div>
              <div data-sorter-target="bucket" data-bucket="c401" data-label="401 Unauthorized"></div>
              <div data-sorter-target="bucket" data-bucket="c403" data-label="403 Forbidden"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="c201" data-why="0.50 is the lowest allowed amount. It is inside the range, so the payment is created.">POST /v1/payments with amount 0.50 USD and a valid admin token</li>
              <li data-bucket="c400" data-why="XYZ is not in the allowed list (USD, GBP, EUR). A field value is wrong, so it is 400.">POST /v1/payments with currency "XYZ"</li>
              <li data-bucket="c401" data-why="With no token, the server cannot tell who is calling. That is 401.">GET /v1/payments/pay_5001 with no Authorization header</li>
              <li data-bucket="c403" data-why="The token is valid, but the read_only role may not create anything. That is 403.">POST /v1/customers with the read_only token</li>
              <li data-bucket="c401" data-why="An expired token cannot prove who you are. PayLite returns 401, not 403.">POST /v1/refunds with the expired token pl_test_FAKE_expired_0000</li>
              <li data-bucket="c400" data-why="Three decimal places break the amount format rule. That is a field error, so 400.">POST /v1/payments with amount 10.005</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your API's code rules and a list of scenarios. Ask for a table of expected status codes, then check it against the spec.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an API test designer. Use simple English.

        Status code rules for my made-up payments API (sandbox):
        [200 = read or update worked; 201 = created; 204 = deleted, no body;
        400 = bad JSON or a field breaks its format or range;
        401 = no, wrong or expired token; 403 = valid token, role not allowed;
        404 = item not found; 409 = clashes with current state (email taken, customer has a pending payment);
        422 = well formed but breaks a business rule (refund too big, payment not refundable);
        429 = more than 100 requests per minute]

        Scenarios:
        [1. GET a payment that does not exist
        2. Refund 100.01 when 100.00 remains
        3. Create a customer with an email that is already used
        4. DELETE a customer, read-only token
        5. Payment with amount -5.00
        6. DELETE a customer who has no payments, admin token
        7. Send the 101st request in one minute]

        Make a table: Scenario, Method, Expected code, Rule it comes from.
        If my rules do not clearly decide a code, write "ASK THE TEAM". Do not guess.</pre>
            <ul class="ai-try-checks">
              <li>Scenario 2 is 422 and scenario 5 is 400, as the rules say.</li>
              <li>Scenario 4 is 403, not 401, because the token is valid.</li>
              <li>Scenario 6 is 204 with no body.</li>
              <li>Any unclear case says "ASK THE TEAM" instead of a guess.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The method says what you asked for, and the status code says what happened. Learn the families: 2xx worked, 4xx the caller's mistake, 5xx the server's mistake. A 500 is always a bug, and the spec decides the rest.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Designing API Test Cases</h1>
        </div>
        <p class="lc-lead">A good set of API tests checks more than the happy path. It also checks bad input, the edges of every range and who is allowed to do what. In this lesson you will learn four kinds of API test cases: positive, negative, boundary and permission. You will use equivalence partitioning and boundary value analysis to choose test values. You will also see how Jordan Lee found a real bug in PayLite's amount check with one boundary test.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="In the centre is the endpoint POST /v1/payments with fields amount, currency and customer_id. Around it are four kinds of tests. Positive: a valid request is accepted, for example 42.50 USD returns 201. Negative: bad input is refused, for example currency XYZ returns 400. Boundary: test the edges of a range, 0.49, 0.50, 10,000.00 and 10,000.01. Permission: only the right role may act, for example the read_only token returns 403.">
            <defs><marker id="api5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="280" y="110" width="200" height="80" rx="10" fill="#27274e" stroke="#22d3ee" stroke-width="2"/>
              <text x="380" y="140" font-weight="700">POST /v1/payments</text>
              <text x="380" y="160" font-size="11" fill="#9b99b8">amount, currency,</text>
              <text x="380" y="176" font-size="11" fill="#9b99b8">customer_id</text>
              <rect x="20" y="20" width="230" height="90" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="135" y="48" font-weight="700" fill="#6ee7b7">Positive</text>
              <text x="135" y="70" font-size="12">Valid request is accepted</text>
              <text x="135" y="90" font-size="11" fill="#9b99b8">e.g. 42.50 USD → 201</text>
              <rect x="510" y="20" width="230" height="90" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="625" y="48" font-weight="700" fill="#f9a8d4">Negative</text>
              <text x="625" y="70" font-size="12">Bad input is refused</text>
              <text x="625" y="90" font-size="11" fill="#9b99b8">e.g. currency XYZ → 400</text>
              <rect x="20" y="190" width="230" height="90" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="135" y="218" font-weight="700" fill="#fcd34d">Boundary</text>
              <text x="135" y="240" font-size="12">Test the edges of a range</text>
              <text x="135" y="260" font-size="11" fill="#9b99b8">0.49, 0.50, 10,000.00, 10,000.01</text>
              <rect x="510" y="190" width="230" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="625" y="218" font-weight="700" fill="#c4b5fd">Permission</text>
              <text x="625" y="240" font-size="12">Only the right role may act</text>
              <text x="625" y="260" font-size="11" fill="#9b99b8">e.g. read_only token → 403</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#api5a)">
                <line x1="280" y1="125" x2="254" y2="100"/>
                <line x1="480" y1="125" x2="506" y2="100"/>
                <line x1="280" y1="175" x2="254" y2="200"/>
                <line x1="480" y1="175" x2="506" y2="200"/>
              </g>
            </g>
          </svg>
          <figcaption>Four kinds of test cases for one endpoint. A strong test set has some of each.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four kinds of API test cases</h3>
          <ul class="lc-list">
            <li><strong>Positive tests</strong> send valid requests and expect success. Example: a 42.50 USD payment for <code>cus_1001</code> returns <code>201</code> with the right fields.</li>
            <li><strong>Negative tests</strong> send invalid requests and expect a clear refusal. Examples: a missing <code>customer_id</code>, currency <code>"XYZ"</code>, or the amount sent as text.</li>
            <li><strong>Boundary tests</strong> check values at the edges of a range, where bugs often hide.</li>
            <li><strong>Permission tests</strong> check who may do what. Example: the <code>read_only</code> token tries to create a refund and should get <code>403</code>.</li>
          </ul>
          <p>A <strong>test case</strong> is one check with clear steps and one expected result. A <strong>test scenario</strong> is a wider situation to test, such as "refund a payment". One scenario usually needs several test cases.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing values: partitions and boundaries</h3>
          <p><strong>Equivalence partitioning</strong> splits inputs into groups that the API should treat the same way. You test one value from each group. <strong>Boundary value analysis</strong> tests the values on and just outside each edge of a range.</p>
          <p>PayLite's rule: <code>amount</code> must be from 0.50 to 10,000.00, with at most 2 decimal places.</p>
          <table class="lc-table">
            <thead><tr><th>Value</th><th>Why</th><th>Expected</th></tr></thead>
            <tbody>
              <tr><td>0.49</td><td>Just below the minimum</td><td><code>400 amount_out_of_range</code></td></tr>
              <tr><td>0.50</td><td>The minimum</td><td><code>201</code></td></tr>
              <tr><td>42.50</td><td>A normal value from the valid group</td><td><code>201</code></td></tr>
              <tr><td>10,000.00</td><td>The maximum</td><td><code>201</code></td></tr>
              <tr><td>10,000.01</td><td>Just above the maximum</td><td><code>400 amount_out_of_range</code></td></tr>
              <tr><td>10.005</td><td>Three decimal places</td><td><code>400</code></td></tr>
              <tr><td>0 and -5.00</td><td>Zero and negative groups</td><td><code>400</code></td></tr>
            </tbody>
          </table>
          <p>For <code>currency</code>, the groups are: allowed codes (<code>USD</code>, <code>GBP</code>, <code>EUR</code>), real but unsupported codes such as <code>JPY</code>, made-up codes, lower case, empty and missing. Each group needs one test.</p>
          <p>Write each test case in a format your test management tool (such as TestRail, Zephyr or Xray) can hold:</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Title</th><th>Request</th><th>Expected</th></tr></thead>
            <tbody>
              <tr><td>PAY-B04</td><td>Amount just above maximum is refused</td><td>POST /v1/payments, admin token, amount 10000.01, USD, cus_1001</td><td>400, error.code <code>amount_out_of_range</code>, error.field <code>amount</code>, no payment created</td></tr>
              <tr><td>REF-P02</td><td>Read-only role cannot refund</td><td>POST /v1/refunds, read_only token, payment_id pay_5001</td><td>403, error.code <code>forbidden</code>, no refund created</td></tr>
            </tbody>
          </table>
          <p>Notice "no payment created". A good negative test also checks that nothing changed on the server.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to draft test cases</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write test cases for a payments API.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Endpoint: POST /v1/payments (made-up sandbox API).
        Rules: amount 0.50 to 10000.00, max 2 decimals; currency USD, GBP
        or EUR; customer_id must exist; read_only role cannot POST (403).
        Write test cases as a table: ID, Type (positive, negative, boundary,
        permission), Title, Request, Expected status, Expected error.code.
        Use boundary value analysis for amount and equivalence partitions
        for currency. Use only the rules above. List any rule you need
        but do not have under "Questions".</code></pre>
          <p>AI is good at listing many cases fast. You still decide which ones matter most, remove duplicates and check every expected result against the spec.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from AI draft to real bug</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Jordan's prompt">Jordan gives the AI the amount rule and asks for boundary test values for POST /v1/payments.</li>
              <li data-kind="answer" data-label="AI reply">The AI suggests 0.49, 0.50, 0.51, 9,999.99, 10,000.00 and 10,000.01, each with an expected code.</li>
              <li data-kind="check" data-label="Check the draft">Jordan checks the values against the spec. They are right. He adds 10.005, because the spec also limits decimal places.</li>
              <li data-kind="tool" data-label="Send the request">In the sandbox, Jordan sends a payment of 10000.01 USD for cus_1001 with the admin token.</li>
              <li data-kind="result" data-label="API response">201 Created. A new payment, pay_5007, exists for 10,000.01 USD.</li>
              <li data-kind="warn" data-label="Bug found">The spec expects 400 amount_out_of_range. The API accepted an amount above the limit. This breaks a money rule.</li>
              <li data-kind="check" data-label="Report it">Jordan runs it again to confirm. He logs BUG-101 with the request, the response, expected and actual results, and severity high.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a full set of test cases for a refunds endpoint. Then check every expected result against the rules in the prompt.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA engineer who designs API test cases. Use simple English.

        Endpoint: [POST /v1/refunds] (made-up sandbox payments API, fake data only).
        Rules:
        [- payment_id required; payment must be succeeded or partially_refunded, else 422 payment_not_refundable
        - amount optional, 0.01 up to the remaining refundable amount, 2 decimal places; above remaining: 422 refund_exceeds_remaining; bad format or 0.00: 400
        - reason optional: duplicate, requested_by_customer or fraudulent; other values: 400
        - admin token may refund; read_only token: 403; no or expired token: 401
        - Test data: pay_5002 was 120.00 USD with 20.00 already refunded; pay_5004 failed]

        Please:
        1. Write 12 test cases as a table: ID, Type (positive, negative, boundary, permission), Title, Request, Expected status, Expected error code.
        2. Include at least 3 of each type except permission, which needs at least 2.
        3. Use boundary value analysis on amount for pay_5002.
        4. For negative tests, add "check nothing was created".
        5. List rules you needed but did not have under "Questions".</pre>
            <ul class="ai-try-checks">
              <li>Boundaries use the remaining 100.00: 100.00 gives 201 and 100.01 gives 422.</li>
              <li>A refund on the failed payment pay_5004 expects 422 payment_not_refundable.</li>
              <li>The read-only test expects 403 and the expired-token test expects 401.</li>
              <li>No endpoints, fields or error codes appear that are not in the rules.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Design tests in four groups: positive, negative, boundary and permission. Use partitions and boundaries to pick a few values that find many bugs. AI drafts the list quickly, but you check every expected result against the spec and confirm it in the real API.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Checking Responses</h1>
        </div>
        <p class="lc-lead">A test that only checks the status code can miss many bugs. A response can say <code>200 OK</code> and still send the wrong amount, a missing field or a number written as text. In this lesson you will learn to check five things in every API response. They are the status code, the headers, the body values, the schema and the response time. You will also learn to ask AI to draft these checks, as Jordan Lee does for PayLite.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="On the left is a PayLite response for GET /v1/payments/pay_5001. It has a status line 200 OK, a header Content-Type: application/json, a JSON body with id, status, amount and created_at, and a response time of 184 milliseconds. Arrows link each part to a check on the right. Check 1: the status code is 200. Check 2: the headers say JSON. Check 3: the body has the right values. Check 4: the schema has the right shape and types. Check 5: the time is under the limit.">
            <defs><marker id="api6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="190" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Response: GET /v1/payments/pay_5001</text>
              <text x="590" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Five checks</text>
              <rect x="20" y="40" width="340" height="276" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="34" y="54" width="312" height="36" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="48" y="77" font-weight="700">200 OK</text>
              <rect x="34" y="100" width="312" height="36" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="48" y="123" font-size="12">Content-Type: application/json</text>
              <rect x="34" y="146" width="312" height="114" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="48" y="170" font-size="12">"id": "pay_5001"</text>
              <text x="48" y="192" font-size="12">"status": "succeeded"</text>
              <text x="48" y="214" font-size="12">"amount": 42.50</text>
              <text x="48" y="236" font-size="12">"created_at": "2026-09-14T15:02:11Z"</text>
              <rect x="34" y="270" width="312" height="36" rx="6" fill="#27274e" stroke="#22d3ee"/>
              <text x="48" y="293" font-size="12">Response time: 184 ms</text>
              <rect x="440" y="52" width="300" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="456" y="79">1. Status code is 200</text>
              <rect x="440" y="110" width="300" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="456" y="137">2. Headers: the type is JSON</text>
              <rect x="440" y="168" width="300" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="456" y="195">3. Body: the right values</text>
              <rect x="440" y="226" width="300" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="456" y="253">4. Schema: right shape and types</text>
              <rect x="440" y="276" width="300" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="456" y="301">5. Time: under the limit</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#api6a)">
                <line x1="348" y1="72" x2="436" y2="74"/>
                <line x1="348" y1="118" x2="436" y2="130"/>
                <line x1="348" y1="190" x2="436" y2="190"/>
                <line x1="348" y1="220" x2="436" y2="246"/>
                <line x1="348" y1="288" x2="436" y2="296"/>
              </g>
            </g>
          </svg>
          <figcaption>Each part of a response needs its own check. The body needs two: the values and the schema.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five things to check in every response</h3>
          <p>Jordan sends <code>GET /v1/payments/pay_5001</code> to the PayLite sandbox with the admin token. Here is what he checks, and why each check matters.</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>What to look for</th><th>PayLite example (made up)</th></tr></thead>
            <tbody>
              <tr><td>1. Status code</td><td>The exact code the spec expects, not just "any 2xx"</td><td><code>200</code> for a GET. <code>201</code> for a new payment. <code>204</code> for a delete.</td></tr>
              <tr><td>2. Headers</td><td>The data type, and any special headers the spec lists</td><td><code>Content-Type: application/json</code>. A <code>429</code> must have <code>Retry-After</code>.</td></tr>
              <tr><td>3. Body values</td><td>Each field has the value you expect for this request</td><td><code>id</code> is <code>pay_5001</code>, <code>amount</code> is 42.50, <code>currency</code> is <code>USD</code>, <code>customer_id</code> is <code>cus_1001</code></td></tr>
              <tr><td>4. Schema</td><td>Required fields exist, types are right, values are from allowed lists</td><td><code>amount</code> is a number, not text. <code>status</code> is one of the five allowed values.</td></tr>
              <tr><td>5. Response time</td><td>The answer arrives fast enough</td><td>184 ms. The team goal is measured over many requests, in the performance lesson.</td></tr>
            </tbody>
          </table>
          <p>Also check what is <em>not</em> in the response. A payment response must never show card data, full tokens or internal server details.</p>
          <p>For a <code>204 No Content</code> response, check that the body is really empty. For a <code>POST</code>, check the new item again with a <code>GET</code>. This shows that the server really saved it.</p>
        </div>
        <div class="lc-card">
          <h3>Schemas: checking the shape of the data</h3>
          <p>A <strong>schema check</strong> compares the response with a description of its shape. Many teams write this description in <strong>JSON Schema</strong> (a standard way to describe JSON data). OpenAPI 3.1 and later use JSON Schema for their data models. So you can often reuse the schemas from your API spec.</p>
          <p>Here is a short, made-up schema for a PayLite payment. You do not need to write it yourself. You need to read it and check that it matches the spec.</p>
          <pre><code>{
          "type": "object",
          "required": ["id", "status", "amount", "currency", "customer_id", "created_at"],
          "properties": {
            "id":          { "type": "string", "pattern": "^pay_[0-9]{4}$" },
            "status":      { "enum": ["pending", "succeeded", "failed", "refunded", "partially_refunded"] },
            "amount":      { "type": "number", "minimum": 0.50, "maximum": 10000.00 },
            "currency":    { "enum": ["USD", "GBP", "EUR"] },
            "customer_id": { "type": "string", "pattern": "^cus_[0-9]{4}$" },
            "description": { "type": ["string", "null"], "maxLength": 140 },
            "created_at":  { "type": "string", "format": "date-time" }
          }
        }</code></pre>
          <p>A <strong>pattern</strong> is a text rule. <code>^pay_[0-9]{4}$</code> means "pay_ followed by exactly 4 digits".</p>
          <p>Schema checks and value checks find different bugs:</p>
          <ul class="lc-list">
            <li>Imagine a new build sends <code>"amount": "42.50"</code> (text). The value looks right to a person. The <strong>schema check</strong> fails, because the type should be a number. Apps that add up amounts may break.</li>
            <li>Imagine the build sends <code>"currency": "GBP"</code> for a USD payment. The schema is happy, because GBP is allowed. Only the <strong>value check</strong> catches it.</li>
          </ul>
          <p>Note: in many tools, <code>"format": "date-time"</code> is only a note unless you switch on format checks. Check your tool's current docs.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to draft response checks</h3>
          <p>AI is quick at turning a sample response into a list of checks. It can also draft a schema from the spec. But it may copy values from your sample as if they were rules. For example, it may write "status must be succeeded", when the spec allows five values.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write tests for this response: [paste response]</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I test GET /v1/payments/{id} on a made-up sandbox API.
        Spec rules for the response: [paste fields, types, allowed values].
        Sample response, token removed: [paste status, headers and body].
        Make a checklist in 5 groups: status, headers, body values,
        schema (required fields, types, allowed values), response time.
        For each check, say if it comes from the spec or from the sample.
        Do not turn sample values into rules. Flag anything in the sample
        that breaks the spec.</code></pre>
          <p>Then check the list yourself. Remove checks that are too strict, such as an exact <code>created_at</code> time on a new payment. Add checks the AI missed, such as "nothing secret in the body".</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which check catches it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each item is a made-up problem in a PayLite response. Sort it by the check that catches it first.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="status" data-label="Status code check"></div>
              <div data-sorter-target="bucket" data-bucket="header" data-label="Header check"></div>
              <div data-sorter-target="bucket" data-bucket="value" data-label="Body value check"></div>
              <div data-sorter-target="bucket" data-bucket="schema" data-label="Schema check"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="status" data-why="The payment does not exist, so the spec expects 404. A 200 here is wrong, whatever the body says.">GET /v1/payments/pay_9999 returns 200 with an empty body</li>
              <li data-bucket="header" data-why="The data type is in the Content-Type header. text/html means the server did not send JSON.">The response has Content-Type: text/html</li>
              <li data-bucket="schema" data-why="The value looks right, but the type is text, not a number. Only a type check catches this.">"amount": "42.50" comes back in quotes</li>
              <li data-bucket="value" data-why="GBP is an allowed currency, so the schema passes. Only a check of the expected value finds it.">A USD payment comes back with "currency": "GBP"</li>
              <li data-bucket="schema" data-why="created_at is a required field. A schema check fails when a required field is missing.">The created_at field is missing</li>
              <li data-bucket="status" data-why="The spec says a delete returns 204 No Content. 200 with a body is a different contract.">DELETE /v1/customers/cus_1003 returns 200 with a body</li>
              <li data-bucket="header" data-why="The spec says a 429 must tell the caller when to try again, in the Retry-After header.">A 429 response has no Retry-After header</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI the spec rules and a sample response that hides two problems. Ask for a full checklist, and see if it finds the problems.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior API tester. Use simple English.

        I test GET /v1/payments/{id} on a made-up payments API (sandbox, fake data).
        Spec rules for a 200 response:
        [- Header Content-Type: application/json
        - Required fields: id (pay_ + 4 digits), status (pending, succeeded, failed, refunded, partially_refunded), amount (number, 0.50 to 10000.00), currency (USD, GBP or EUR), customer_id (cus_ + 4 digits), created_at (ISO 8601 UTC, ending in Z)
        - Optional: description (text, up to 140 characters)]

        Sample response for pay_5001:
        [200 OK
        Content-Type: application/json
        {"id": "pay_5001", "status": "succeeded", "amount": "42.50", "currency": "USD", "customer_id": "cus_1001", "created_at": "2026-09-14 15:02:11", "description": "Coffee subscription"}]

        Please:
        1. Make a checklist in 5 groups: status, headers, body values, schema, response time.
        2. Mark each check "spec" or "sample".
        3. List every place where the sample breaks the spec.
        4. Do not invent rules that are not in the spec.</pre>
            <ul class="ai-try-checks">
              <li>It finds that amount is text ("42.50"), not a number.</li>
              <li>It finds that created_at has no T and no Z, so it is not ISO 8601 UTC.</li>
              <li>It does not say "status must be succeeded"; the spec allows five values.</li>
              <li>The response time check does not use a made-up limit, or it says the limit must come from the team.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A green status code is only the first check. Check the headers, the values, the schema and the time too. Value checks and schema checks catch different bugs, so use both, and take every rule from the spec, not from a sample response.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Authentication and Authorisation Tests</h1>
        </div>
        <p class="lc-lead">Payment APIs move money, so the most serious bugs are often about access. In this lesson you will learn the difference between authentication (who are you?) and authorisation (what may you do?). You will build a test matrix of tokens and endpoints, and learn to keep API keys and tokens safe. You will also see how Jordan Lee found a critical access bug in PayLite refunds.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A request with a token passes two gates. Gate 1 is authentication: who are you? If the token is missing, wrong or expired, the API returns 401 Unauthorized. Gate 2 is authorisation: may you do this? If the role is not allowed, the API returns 403 Forbidden. Only a request that passes both gates reaches the endpoint and gets a 2xx success.">
            <defs><marker id="api7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Every request must pass two gates</text>
              <rect x="20" y="70" width="140" height="70" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="90" y="100" font-weight="700">Request</text>
              <text x="90" y="122" font-size="11" fill="#9b99b8">+ Bearer token</text>
              <rect x="200" y="60" width="160" height="90" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="280" y="88" font-weight="700" fill="#93c5fd">Gate 1</text>
              <text x="280" y="108" font-size="12">Authentication</text>
              <text x="280" y="128" font-size="11" fill="#9b99b8">Who are you?</text>
              <rect x="400" y="60" width="160" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="480" y="88" font-weight="700" fill="#c4b5fd">Gate 2</text>
              <text x="480" y="108" font-size="12">Authorisation</text>
              <text x="480" y="128" font-size="11" fill="#9b99b8">May you do this?</text>
              <rect x="600" y="70" width="140" height="70" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="670" y="100" font-weight="700" fill="#6ee7b7">Endpoint</text>
              <text x="670" y="122" font-size="11" fill="#9b99b8">2xx success</text>
              <rect x="190" y="200" width="180" height="70" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="280" y="228" font-weight="700" fill="#f9a8d4">401 Unauthorized</text>
              <text x="280" y="250" font-size="11" fill="#9b99b8">no, wrong or expired token</text>
              <rect x="390" y="200" width="180" height="70" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="480" y="228" font-weight="700" fill="#fcd34d">403 Forbidden</text>
              <text x="480" y="250" font-size="11" fill="#9b99b8">valid token, role not allowed</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#api7a)">
                <line x1="160" y1="105" x2="196" y2="105"/>
                <line x1="360" y1="105" x2="396" y2="105"/>
                <line x1="560" y1="105" x2="596" y2="105"/>
                <line x1="280" y1="150" x2="280" y2="196"/>
                <line x1="480" y1="150" x2="480" y2="196"/>
              </g>
              <text x="378" y="97" font-size="11" fill="#6ee7b7">pass</text>
              <text x="578" y="97" font-size="11" fill="#6ee7b7">pass</text>
              <text x="300" y="178" font-size="11" fill="#f9a8d4">fail</text>
              <text x="500" y="178" font-size="11" fill="#f9a8d4">fail</text>
              <text x="380" y="292" font-size="12" fill="#9b99b8">A refused request must change nothing on the server.</text>
            </g>
          </svg>
          <figcaption>Authentication checks who you are. Authorisation checks what you may do. Each gate has its own error code.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who are you, and what may you do?</h3>
          <p><strong>Authentication</strong> checks who is calling. <strong>Authorisation</strong> checks what that caller may do. You need tests for both.</p>
          <table class="lc-table">
            <thead><tr><th>Credential</th><th>What it is</th><th>What to test</th></tr></thead>
            <tbody>
              <tr><td>API key</td><td>A long secret string that identifies an app or account</td><td>Missing key, wrong key, a key that was switched off</td></tr>
              <tr><td>Bearer token</td><td>A token sent as <code>Authorization: Bearer &lt;token&gt;</code>. PayLite uses this.</td><td>Missing, wrong, expired, and sent in the wrong format</td></tr>
              <tr><td>OAuth 2.0 access token</td><td>A token an app gets after a user or system allows access. It often has limited permissions, called scopes.</td><td>Expired tokens, and actions outside the token's scopes</td></tr>
              <tr><td>Role</td><td>The set of actions a user or token may do</td><td>Each role on each endpoint</td></tr>
            </tbody>
          </table>
          <p>PayLite's made-up sandbox tokens:</p>
          <ul class="lc-list">
            <li><code>pl_test_FAKE_admin_7Q2x</code>: role <code>merchant_admin</code>. It may do every action.</li>
            <li><code>pl_test_FAKE_readonly_4Kd9</code>: role <code>read_only</code>. It may only use GET. Any POST, PATCH or DELETE must return <code>403</code>.</li>
            <li><code>pl_test_FAKE_expired_0000</code>: an expired token. It must return <code>401</code>.</li>
          </ul>
          <p>Some tokens are JWTs (JSON Web Tokens). The data inside a JWT is usually only encoded, not encrypted. Anyone with the token can read it. So treat every token as a secret.</p>
        </div>
        <div class="lc-card">
          <h3>The access test matrix</h3>
          <p>A <strong>test matrix</strong> is a table that crosses two lists, so you do not miss a mix. Jordan crosses PayLite's 9 endpoints with 5 token states: admin, read-only, expired, no token, and a broken token such as <code>Bearer abc</code>. That makes 9 × 5 = 45 checks.</p>
          <table class="lc-table">
            <thead><tr><th>Token state</th><th>4 GET endpoints</th><th>5 write endpoints (POST, PATCH, DELETE)</th><th>Checks</th></tr></thead>
            <tbody>
              <tr><td>Admin</td><td><code>200</code></td><td><code>201</code>, <code>200</code> or <code>204</code>, as the spec says</td><td>9</td></tr>
              <tr><td>Read-only</td><td><code>200</code></td><td><code>403 forbidden</code></td><td>9</td></tr>
              <tr><td>Expired</td><td><code>401 unauthenticated</code></td><td><code>401 unauthenticated</code></td><td>9</td></tr>
              <tr><td>No token</td><td><code>401 unauthenticated</code></td><td><code>401 unauthenticated</code></td><td>9</td></tr>
              <tr><td>Broken token</td><td><code>401 unauthenticated</code></td><td><code>401 unauthenticated</code></td><td>9</td></tr>
            </tbody>
          </table>
          <p>In total: 13 success checks, 5 checks for <code>403</code> and 27 checks for <code>401</code>. For every refused request, also check:</p>
          <ul class="lc-list">
            <li>Nothing changed. Send a GET with the admin token to confirm that no payment, refund or customer was created or changed.</li>
            <li>The error body uses the standard format and shows no data, such as the payment's amount.</li>
            <li>The headers. The HTTP standard (RFC 9110) says a <code>401</code> response must include a <code>WWW-Authenticate</code> header. The PayLite spec does not mention it, so Jordan adds it to his questions for the team.</li>
          </ul>
          <p>If your API has many customer accounts, also test that one account cannot read another account's data. This is one of the top API security risks. The security lesson covers it later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Keeping keys and tokens safe</h3>
          <p>Tokens are passwords for programs. Testers handle many of them, so testers can leak them by accident.</p>
          <table class="lc-table">
            <thead><tr><th>Do</th><th>Do not</th></tr></thead>
            <tbody>
              <tr><td>Use sandbox tokens for testing, never live ones</td><td>Test with a production token "just once"</td></tr>
              <tr><td>Keep tokens in your tool's secret store or a local-only variable</td><td>Type tokens into shared collections, test cases or wiki pages</td></tr>
              <tr><td>Mask tokens in bug reports, such as <code>pl_test_****4Kd9</code></td><td>Paste full tokens into tickets, chats or screenshots</td></tr>
              <tr><td>Replace tokens with <code>[TOKEN]</code> before you use AI</td><td>Paste any real token into a public AI tool</td></tr>
              <tr><td>Report a leaked token to the security team at once</td><td>Delete the message and hope no one saw it</td></tr>
            </tbody>
          </table>
          <p>A leaked token must be <strong>revoked</strong> (switched off) and replaced. Deleting the message does not make the token safe again.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write auth tests. My token is pl_live_[a real token].</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Made-up sandbox API. Roles: merchant_admin (all actions) and
        read_only (GET only; writes must return 403). No, bad or expired
        token: 401. Endpoints: [list]. Tokens are shown as [ADMIN_TOKEN]
        and [READONLY_TOKEN]. Build a matrix of endpoint x token state,
        with the expected code and a "check nothing changed" step for
        every refused write. Mark rules you are unsure of as "ASK".</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: the read-only refund</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Jordan's prompt">Jordan pastes the roles and endpoints, with tokens shown as [ADMIN_TOKEN] and [READONLY_TOKEN]. He asks AI for the access test matrix.</li>
              <li data-kind="answer" data-label="AI reply">The AI returns 45 rows. Row 19 says: "POST /v1/refunds, read-only token, payment pay_5001: expect 403 forbidden."</li>
              <li data-kind="check" data-label="Check the matrix">Jordan checks the rows against the spec. Two rows expect 403 for an expired token. He changes them to 401.</li>
              <li data-kind="tool" data-label="Send the request">In the sandbox, he sends POST /v1/refunds for pay_5001 with the read-only token pl_test_FAKE_readonly_4Kd9.</li>
              <li data-kind="result" data-label="API response">201 Created. A refund re_7002 for the full 42.50 USD now exists. GET with the admin token shows pay_5001 as refunded.</li>
              <li data-kind="warn" data-label="Critical bug">A read-only token moved money. The spec expects 403 forbidden and no refund. This is an authorisation bug.</li>
              <li data-kind="check" data-label="Report it">Jordan repeats the test once to confirm. He logs BUG-102 as critical, with the token masked as pl_test_****4Kd9. He tells the team that pay_5001 has changed.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build an access test matrix for a small API. Then check every expected code against the role rules in the prompt.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an API security tester. Use simple English.

        Made-up sandbox API (fake data, no real secrets):
        [Endpoints:
        POST /v1/customers (success 201)
        GET /v1/customers/{id} (success 200)
        PATCH /v1/customers/{id} (success 200)
        DELETE /v1/customers/{id} (success 204)
        Roles and tokens:
        [ADMIN_TOKEN] = merchant_admin, may do every action
        [READONLY_TOKEN] = read_only, GET only; POST, PATCH and DELETE return 403 forbidden
        [EXPIRED_TOKEN] = expired; returns 401 unauthenticated
        No token, or a broken token: 401 unauthenticated]

        Please:
        1. Make a matrix table: Endpoint, Token state (admin, read-only, expired, none, broken), Expected code, Expected error.code.
        2. For every refused write, add a step to check that nothing changed.
        3. Count the rows for each expected code.
        4. List 3 questions for the team that these rules do not answer.
        Do not invent roles, endpoints or codes.</pre>
            <ul class="ai-try-checks">
              <li>There are 20 rows: 4 endpoints x 5 token states.</li>
              <li>The read-only token gets 200 on GET and 403 on POST, PATCH and DELETE.</li>
              <li>Expired, missing and broken tokens all get 401, never 403.</li>
              <li>Every refused write has a "check nothing changed" step.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Test both gates: 401 when the API cannot tell who you are, 403 when you are known but not allowed. Cross every endpoint with every token state, check that refused requests change nothing, and treat every token as a secret.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Test Data for APIs</h1>
        </div>
        <p class="lc-lead">API tests change data on the server. They create payments, refunds and customers. If tests share data, one test can break another, and results stop making sense. In this lesson you will learn where test data comes from, how to make it unique, and how to clean it up. You will also use AI and a spreadsheet to make safe, fake data. Then you will see why one of Jordan Lee's PayLite tests failed for no clear reason.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="The life of test data in five steps: 1 plan with a unique run ID, 2 create the data in setup, 3 use it in the test, 4 check the results and the server state, 5 clean up in teardown. Below are three helpers. Generated fake data from AI or a spreadsheet feeds the create step. Seed data is read but never changed by the test. A nightly sandbox reset is a safety net after clean-up.">
            <defs><marker id="api8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Each test owns its data, from start to finish</text>
              <rect x="20" y="44" width="124" height="66" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="82" y="72" font-weight="700">1. Plan</text>
              <text x="82" y="94" font-size="11" fill="#9b99b8">unique run ID</text>
              <rect x="169" y="44" width="124" height="66" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="231" y="72" font-weight="700">2. Create</text>
              <text x="231" y="94" font-size="11" fill="#9b99b8">setup</text>
              <rect x="318" y="44" width="124" height="66" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="72" font-weight="700">3. Use</text>
              <text x="380" y="94" font-size="11" fill="#9b99b8">run the test</text>
              <rect x="467" y="44" width="124" height="66" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="529" y="72" font-weight="700">4. Check</text>
              <text x="529" y="94" font-size="11" fill="#9b99b8">result + state</text>
              <rect x="616" y="44" width="124" height="66" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="678" y="72" font-weight="700">5. Clean up</text>
              <text x="678" y="94" font-size="11" fill="#9b99b8">teardown</text>
              <rect x="20" y="190" width="230" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="135" y="218" font-weight="700">Generated fake data</text>
              <text x="135" y="240" font-size="11" fill="#9b99b8">from AI or a spreadsheet</text>
              <rect x="265" y="190" width="230" height="70" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="218" font-weight="700">Seed data</text>
              <text x="380" y="240" font-size="11" fill="#9b99b8">read it, never change it</text>
              <rect x="510" y="190" width="230" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="625" y="218" font-weight="700">Nightly sandbox reset</text>
              <text x="625" y="240" font-size="11" fill="#9b99b8">a safety net, not a plan</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#api8a)">
                <line x1="144" y1="77" x2="165" y2="77"/>
                <line x1="293" y1="77" x2="314" y2="77"/>
                <line x1="442" y1="77" x2="463" y2="77"/>
                <line x1="591" y1="77" x2="612" y2="77"/>
                <line x1="190" y1="188" x2="225" y2="114"/>
                <line x1="380" y1="188" x2="380" y2="114"/>
                <line x1="678" y1="112" x2="655" y2="186"/>
              </g>
              <text x="380" y="296" font-size="12" fill="#9b99b8">Unique values stop tests from clashing. Clean-up stops data from piling up.</text>
            </g>
          </svg>
          <figcaption>Good API tests plan, create, use, check and clean up their own data. Shared seed data is only read.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where test data comes from</h3>
          <table class="lc-table">
            <thead><tr><th>Kind of data</th><th>What it is</th><th>PayLite example (made up)</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td>Seed data</td><td>Fixed data loaded into the sandbox for everyone</td><td><code>cus_1001</code> Maya Brooks, <code>pay_5002</code> with 100.00 USD left to refund</td><td>If one test changes it, other tests break</td></tr>
              <tr><td>Created by the test</td><td>Data a test makes for itself in setup</td><td>A new customer with a unique email, then a payment for that customer</td><td>It piles up unless you clean it up</td></tr>
              <tr><td>Generated data</td><td>Fake data made by AI, a spreadsheet or a data tool</td><td>20 fake customers with <code>example.com</code> emails</td><td>Check it follows the rules and contains no real people</td></tr>
              <tr><td>Special seeded data</td><td>Data you cannot make through the API, so developers load it</td><td><code>pay_4001</code>, a 75.00 USD payment from 2026-03-20</td><td>Ask early. It needs a developer's time.</td></tr>
            </tbody>
          </table>
          <p>Why does PayLite need <code>pay_4001</code>? Refunds close 180 days after a payment. Jordan cannot wait 180 days to test <code>422 refund_window_closed</code>. So the developers seeded a payment from 2026-03-20. Its window closed on 2026-09-16. Even this test hits the open question about how the 180 days are counted. Jordan keeps the question open until the product owner answers.</p>
          <p>Never copy production data (real customer data) into a test environment unless your company has an approved, anonymised process. Use <code>example.com</code> emails. That domain is reserved for examples, so no real person gets your test emails.</p>
        </div>
        <div class="lc-card">
          <h3>Why shared data breaks tests</h3>
          <p>One afternoon, Jordan's list test failed. It called <code>GET /v1/payments?customer_id=cus_1001</code> and expected 2 payments: <code>pay_5001</code> and <code>pay_5005</code>. It got 4. Earlier tests had created <code>pay_5006</code> and <code>pay_5007</code> for the same seed customer.</p>
          <p>Worse, after the read-only refund bug, <code>pay_5001</code> showed <code>refunded</code>, not <code>succeeded</code>. Any test that expected the seed value now failed. The API was fine. The data was not.</p>
          <p>A test that passes on one run and fails on the next, with no change to the code, is called a <strong>flaky test</strong>. Shared data is a common cause. Four rules prevent it:</p>
          <ul class="lc-list">
            <li><strong>Own your data.</strong> Create a new customer for tests that change things. Only read seed data.</li>
            <li><strong>Make values unique.</strong> Put a run ID in emails, descriptions and <code>Idempotency-Key</code> values.</li>
            <li><strong>Do not depend on order.</strong> Each test sets up what it needs, so it can run alone.</li>
            <li><strong>Clean up, and report clean-up problems.</strong> A failed clean-up must show in the report.</li>
          </ul>
          <p>The PayLite sandbox also resets to the seed data every night at 01:00 New York time. This is a safety net. Tests must not rely on it.</p>
        </div>
        <div class="lc-card">
          <h3>Making unique and edge-case data</h3>
          <p>Customer emails must be unique. A second customer with the same email gets <code>409 email_taken</code>. So Jordan builds emails from a run ID in a spreadsheet. Cell B1 holds the run ID <code>R0412</code>. Column A holds 1, 2, 3 and so on. This formula works in Excel and Google Sheets:</p>
          <pre><code>="qa."&amp;LOWER($B$1)&amp;"."&amp;TEXT(A2,"000")&amp;"@example.com"</code></pre>
          <p>Row 2 gives <code>qa.r0412.001@example.com</code>. Row 13, where A13 is 12, gives <code>qa.r0412.012@example.com</code>.</p>
          <p>For length limits, <code>=REPT("A",100)</code> makes a name of exactly 100 characters, the maximum. <code>=REPT("A",101)</code> makes one that is too long. Check with <code>=LEN(C2)</code>, which should show 100 or 101.</p>
          <p>AI is good at making realistic fake data with edge cases. Ask for the edge cases by name, and ask for the expected result next to each row.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me some customer test data.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Make 10 fake customers for POST /v1/customers (made-up sandbox).
        Rules: name 1 to 100 characters; email valid and unique; country
        US or GB only. Use example.com emails with run ID r0412.
        Include edge cases: an apostrophe, an accented letter, a
        100-character name, a 101-character name, a duplicate email,
        country "FR". Output CSV: name,email,country,expected_status.
        No real people, no real email domains.</code></pre>
          <p>Check the AI's data before you use it. AI often miscounts characters, so check long names with <code>LEN</code>. Check that the expected codes match the spec.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a test that owns its data</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Jordan rewrites the list test so it uses its own data. Put the steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Pick a unique run ID, such as R0412.</li>
              <li data-order="2">Create a new customer with the email qa.r0412.001@example.com.</li>
              <li data-order="3">Create two payments for that customer, each with the description "autotest R0412".</li>
              <li data-order="4">List payments for the new customer and check that exactly those two come back.</li>
              <li data-order="5">Try to delete the customer. If it returns 409 because a payment is still pending, record the ID for the nightly reset.</li>
              <li data-order="6">Show any clean-up problem in the test report, so data does not pile up unnoticed.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a set of fake customers with named edge cases and expected results. Then check the lengths and codes yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a test data designer for API testing. Use simple English.

        Endpoint: [POST /v1/customers] on a made-up sandbox API.
        Rules: [name 1 to 100 characters (empty or longer: 400); email valid format and unique (bad format: 400, already used: 409 email_taken); country US or GB only (other values: 400)]
        Run ID: [r0412]

        Please:
        1. Make 12 fake customers as CSV with columns: test_id, name, email, country, expected_status, reason.
        2. Use only example.com emails that include the run ID, such as qa.r0412.001@example.com.
        3. Include these edge cases: an apostrophe in the name, an accented letter, a name of exactly 100 characters, a name of 101 characters, an empty name, a bad email format, a duplicate email, country FR, country "us" in lower case.
        4. Under the CSV, list any row where the rules do not clearly decide the result, as a question for the team.
        Do not use real people, real companies or real email domains.</pre>
            <ul class="ai-try-checks">
              <li>The 100-character and 101-character names really have those lengths (check with LEN in a spreadsheet).</li>
              <li>The duplicate email row expects 409, and only the second use of the email fails.</li>
              <li>Every email ends in example.com and includes the run ID.</li>
              <li>Lower-case "us" is flagged as a question, because the rules do not say.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Most "random" API test failures are data problems, not code problems. Give each test its own unique data, only read shared seed data, and clean up after yourself. Use AI and spreadsheets to make fake data fast, then check every value.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Error Handling Tests</h1>
        </div>
        <p class="lc-lead">When a request is wrong, a good API says so clearly. It returns the right status code and a message that helps the caller fix the problem. It never shows internal details, such as code, database names or tokens. In this lesson you will learn what a good error response looks like and how to design error tests. You will also see how Jordan Lee found an error-handling bug in PayLite that also leaked internal details.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="One request, POST /v1/payments with currency usd in lower case, and two responses. On the left, the actual response, bug BUG-103: 500 Internal Server Error, a stack trace in the body, an internal table name pl_payments_v2, no error code and no field, so the caller cannot fix it. On the right, the expected response: 400 Bad Request, code invalid_currency, a clear message, field currency, and a request_id for support.">
            <defs><marker id="api9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="200" y="14" width="360" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="39" text-anchor="middle">POST /v1/payments, "currency": "usd"</text>
              <rect x="20" y="84" width="340" height="210" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="190" y="110" font-weight="700" fill="#f9a8d4" text-anchor="middle">Actual (BUG-103)</text>
              <text x="40" y="142">✗ 500 Internal Server Error</text>
              <text x="40" y="170">✗ Stack trace in the body</text>
              <text x="40" y="198">✗ Shows table pl_payments_v2</text>
              <text x="40" y="226">✗ No error.code, no field</text>
              <text x="40" y="254">✗ The caller cannot fix it</text>
              <rect x="400" y="84" width="340" height="210" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="570" y="110" font-weight="700" fill="#6ee7b7" text-anchor="middle">Expected (spec)</text>
              <text x="420" y="142">✓ 400 Bad Request</text>
              <text x="420" y="170">✓ code: invalid_currency</text>
              <text x="420" y="198">✓ message: allowed values</text>
              <text x="420" y="226">✓ field: currency</text>
              <text x="420" y="254">✓ request_id for support</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#api9a)">
                <line x1="300" y1="54" x2="240" y2="80"/>
                <line x1="460" y1="54" x2="520" y2="80"/>
              </g>
              <text x="380" y="312" font-size="12" fill="#9b99b8" text-anchor="middle">A good error is correct, clear and safe.</text>
            </g>
          </svg>
          <figcaption>The same bad request, two very different answers. The left one is a bug twice over: the wrong code and leaked internal details.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a good error response looks like</h3>
          <p>Every PayLite error (4xx and 5xx) must use the same made-up format:</p>
          <pre><code>400 Bad Request
        Content-Type: application/json

        {
          "error": {
            "code": "invalid_currency",
            "message": "currency must be USD, GBP or EUR",
            "field": "currency",
            "request_id": "req_9c1t7b"
          }
        }</code></pre>
          <p>The <code>request_id</code> lets support staff find the request in their logs, without showing the logs to the caller. Check each error response against this list:</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Question to ask</th></tr></thead>
            <tbody>
              <tr><td>Right code</td><td>Is it the code the spec lists, such as 400, 404, 409 or 422? Never a 500 for bad input.</td></tr>
              <tr><td>Standard format</td><td>Are <code>code</code>, <code>message</code>, <code>field</code> and <code>request_id</code> all there?</td></tr>
              <tr><td>Clear message</td><td>Does the message say what is wrong and what is allowed, in plain words?</td></tr>
              <tr><td>Right field</td><td>Does <code>field</code> name the field that is really wrong?</td></tr>
              <tr><td>Nothing sensitive</td><td>No stack traces, SQL, server names, file paths, full tokens or card data</td></tr>
              <tr><td>Nothing changed</td><td>Did a GET confirm that no payment, refund or customer was created?</td></tr>
            </tbody>
          </table>
          <p>Some APIs use a standard error format called "Problem Details for HTTP APIs" (RFC 9457, which replaced RFC 7807). PayLite uses its own format. Either way, test against the format your spec defines.</p>
        </div>
        <div class="lc-card">
          <h3>Error tests to design</h3>
          <p>Go through each kind of mistake a caller can make. Here are made-up PayLite examples:</p>
          <table class="lc-table">
            <thead><tr><th>Kind of mistake</th><th>Example request</th><th>Expected</th></tr></thead>
            <tbody>
              <tr><td>Broken JSON</td><td>Body with a missing closing bracket</td><td><code>400 invalid_json</code></td></tr>
              <tr><td>Missing required field</td><td>Payment with no <code>amount</code></td><td><code>400 missing_required_field</code>, field <code>amount</code></td></tr>
              <tr><td>Out of range</td><td>Amount 0.49</td><td><code>400 amount_out_of_range</code>, field <code>amount</code></td></tr>
              <tr><td>Value not allowed</td><td>Currency <code>XYZ</code> or <code>usd</code></td><td><code>400 invalid_currency</code>, field <code>currency</code></td></tr>
              <tr><td>Item not found</td><td>Payment for <code>cus_9999</code></td><td><code>404 customer_not_found</code></td></tr>
              <tr><td>Business rule broken</td><td>Refund the failed payment <code>pay_5004</code></td><td><code>422 payment_not_refundable</code></td></tr>
              <tr><td>Conflict</td><td>Same <code>Idempotency-Key</code>, different body</td><td><code>409 idempotency_conflict</code></td></tr>
              <tr><td>Two mistakes at once</td><td>Amount 0.49 and currency <code>XYZ</code></td><td>Not in the spec: ask the team</td></tr>
            </tbody>
          </table>
          <p>The last row matters. PayLite's format has room for only one <code>field</code>. Which error comes first? The spec does not say, so Jordan asks the PayLite developers and records the answer where the team can see it.</p>
        </div>
        <div class="lc-card">
          <h3>Sensitive details and safe AI use</h3>
          <p>Internal details in an error help attackers. A stack trace shows how the code is built. A table name shows how data is stored. The OWASP API Security Top 10 (2023) lists this under "Security Misconfiguration". So a leak is a security bug, even when the status code is right.</p>
          <p>When Jordan sent currency <code>"usd"</code>, PayLite returned this (shortened and made up):</p>
          <pre><code>500 Internal Server Error
        Content-Type: text/plain

        Unhandled error: value "usd" not allowed for currency
          at PaymentsRepository.insert
          table: pl_payments_v2</code></pre>
          <p>The full response belongs in your company's internal bug tracker. It does not belong in a public AI tool. Before you ask AI for help with the bug report, remove the internal details.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a bug report for this: [full stack trace pasted]</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a bug report for a made-up sandbox payments API.
        Request: POST /v1/payments, currency "usd" (lower case), other
        fields valid. Actual: 500, body is a plain-text stack trace that
        names an internal table [TABLE NAME REMOVED]. Expected: 400
        invalid_currency in the standard error format, no internal
        details. Use sections: Title, Steps, Expected, Actual, Severity
        (with a reason), Notes. Keep it short and factual.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: finding BUG-103</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Jordan's prompt">Jordan gives AI the currency rule (exactly USD, GBP or EUR) and asks for one test value from each equivalence partition.</li>
              <li data-kind="answer" data-label="AI reply">The AI suggests USD, GBP, EUR, JPY, XYZ, "usd", an empty string, a missing field and the number 840.</li>
              <li data-kind="tool" data-label="Run the tests">Jordan sends each value to POST /v1/payments in the sandbox, with the admin token and cus_1003.</li>
              <li data-kind="result" data-label="API response">Most values return 201 or 400 invalid_currency. But "usd" returns 500 with a plain-text stack trace that names pl_payments_v2.</li>
              <li data-kind="warn" data-label="Two problems">The code is wrong (expected 400 invalid_currency), and the body leaks internal details. Both are bugs.</li>
              <li data-kind="check" data-label="Make it safe for AI">Before asking AI to tidy the bug report, Jordan replaces the stack trace and the table name with [REMOVED].</li>
              <li data-kind="check" data-label="Report it">He logs BUG-103 as high severity in the internal tracker, with the full response attached there only. He adds "usd" to the regression tests.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI some made-up error responses and a checklist. Ask it to grade each one and say what is wrong.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an API tester who reviews error responses. Use simple English.

        Our made-up API's error rules:
        [Every 4xx and 5xx body is {"error": {"code", "message", "field", "request_id"}}. 400 = format or range wrong. 404 = item not found. 422 = business rule broken. Errors must never show stack traces, SQL, table or server names, full tokens or card data.]

        Responses to review (all made up):
        [A) Amount 0.49 gives 400 {"error": {"code": "amount_out_of_range", "message": "amount must be between 0.50 and 10000.00", "field": "amount", "request_id": "req_1a2b3c"}}
        B) Customer cus_9999 gives 400 {"error": {"code": "bad_request", "message": "Error", "field": null, "request_id": "req_4d5e6f"}}
        C) Refund on a failed payment gives 500 "NullPointer at RefundService line 212, host db-prod-03"
        D) Bad token gives 401 {"error": {"code": "unauthenticated", "message": "token pl_test_FAKE_admin_7Q2x is not valid", "field": null, "request_id": "req_7g8h9i"}}]

        Make a table: Response, Right code?, Format OK?, Message clear?, Sensitive details?, Verdict (pass or bug), Expected instead.</pre>
            <ul class="ai-try-checks">
              <li>A passes every check.</li>
              <li>B is a bug: the code should be 404 customer_not_found, and the message is not clear.</li>
              <li>C is a bug twice: 500 instead of 422, and it leaks a class name and a server name.</li>
              <li>D is a bug because the message repeats the full token.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Test the unhappy paths as carefully as the happy ones. A good error has the right code, the standard format, a clear message and no internal details. A 500 for bad input, or a leaked stack trace, is always a bug to report.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Using Postman or Similar Tools</h1>
        </div>
        <p class="lc-lead">Sending one request at a time is slow. API testing tools let you save requests, group them, reuse values and run them all with one click. Postman is a widely used tool for this. Others include Insomnia, Bruno and Hoppscotch. In this lesson you will learn the main ideas these tools share: collections, environments, variables, checks and runs. You will see how Jordan Lee organises the PayLite tests, and where AI helps.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="An environment called PayLite Sandbox holds base_url and customer_id. A vault holds the secret tokens admin_token and readonly_token. Both feed into the collection PayLite API v1, which has five folders: 00 Setup, 01 Payments with 3 requests, 02 Refunds with 2, 03 Customers with 4, and 99 Cleanup. The collection goes to the Collection Runner. A data file, amounts.csv, also feeds the runner. The runner produces a report: 8 of 9 passed.">
            <defs><marker id="api10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="40" width="210" height="100" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="125" y="66" font-weight="700" text-anchor="middle">Env: PayLite Sandbox</text>
              <text x="36" y="92" font-size="12">base_url</text>
              <text x="36" y="114" font-size="12">customer_id = cus_1001</text>
              <rect x="20" y="170" width="210" height="100" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="125" y="196" font-weight="700" text-anchor="middle">Vault (secrets)</text>
              <text x="36" y="222" font-size="12">admin_token = ••••••</text>
              <text x="36" y="244" font-size="12">readonly_token = ••••••</text>
              <rect x="270" y="40" width="230" height="230" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="385" y="66" font-weight="700" fill="#c4b5fd" text-anchor="middle">Collection: PayLite API v1</text>
              <rect x="290" y="80" width="190" height="30" rx="6" fill="#27274e" stroke="#9b99b8"/>
              <text x="385" y="100" text-anchor="middle">00 Setup</text>
              <rect x="290" y="116" width="190" height="30" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="385" y="136" text-anchor="middle">01 Payments (3)</text>
              <rect x="290" y="152" width="190" height="30" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="385" y="172" text-anchor="middle">02 Refunds (2)</text>
              <rect x="290" y="188" width="190" height="30" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="385" y="208" text-anchor="middle">03 Customers (4)</text>
              <rect x="290" y="224" width="190" height="30" rx="6" fill="#27274e" stroke="#9b99b8"/>
              <text x="385" y="244" text-anchor="middle">99 Cleanup</text>
              <rect x="540" y="40" width="200" height="60" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="640" y="75" text-anchor="middle">Data file: amounts.csv</text>
              <rect x="540" y="125" width="200" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="640" y="160" font-weight="700" text-anchor="middle">Collection Runner</text>
              <rect x="540" y="210" width="200" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="640" y="245" text-anchor="middle">Report: 8 of 9 passed</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#api10a)">
                <line x1="230" y1="90" x2="266" y2="110"/>
                <line x1="230" y1="220" x2="266" y2="200"/>
                <line x1="500" y1="155" x2="536" y2="155"/>
                <line x1="640" y1="100" x2="640" y2="121"/>
                <line x1="640" y1="185" x2="640" y2="206"/>
              </g>
              <text x="380" y="304" font-size="12" fill="#9b99b8" text-anchor="middle">Variables in {{double braces}} are filled in when each request runs.</text>
            </g>
          </svg>
          <figcaption>A collection holds the requests and checks. The environment and vault supply the values. The runner sends everything and reports the results.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Collections, folders and requests</h3>
          <p>A <strong>collection</strong> is a saved group of requests. Each request stores its method, URL, headers, body and checks. <strong>Folders</strong> group requests inside a collection. Jordan's made-up collection, "PayLite API v1", looks like this:</p>
          <table class="lc-table">
            <thead><tr><th>Folder</th><th>Requests</th><th>Example checks</th></tr></thead>
            <tbody>
              <tr><td>00 Setup</td><td>Create a test customer</td><td>Status 201, save the new customer ID</td></tr>
              <tr><td>01 Payments</td><td>Create payment, Get payment, List payments</td><td>Status 201, schema, amount and currency match the request</td></tr>
              <tr><td>02 Refunds</td><td>Create refund, Get refund</td><td>Status 201, refund amount not above the remaining amount</td></tr>
              <tr><td>03 Customers</td><td>Create, Get, Update, Delete customer</td><td>Status 204 and an empty body on delete</td></tr>
              <tr><td>99 Cleanup</td><td>Delete the test data the run created, where the API allows it</td><td>Report anything that could not be deleted</td></tr>
            </tbody>
          </table>
          <p>A request can pass a value to the next one. This is called <strong>chaining</strong>. "Create payment" saves the new <code>id</code> into a variable, such as <code>payment_id</code>. "Get payment" then calls <code>{{base_url}}/payments/{{payment_id}}</code>. So each run checks the payment it really created.</p>
          <p>Some tools can import an OpenAPI spec and build a first collection for you. Check the requests it makes against the spec, because you still need to add the checks.</p>
        </div>
        <div class="lc-card">
          <h3>Environments and variables</h3>
          <p>A <strong>variable</strong> is a named value, such as <code>base_url</code>. You write it in double curly braces, <code>{{base_url}}</code>, and the tool fills it in. An <strong>environment</strong> is a set of variables for one place, such as the sandbox. To test somewhere else, you switch the environment, not every request.</p>
          <p>Postman has several variable scopes (levels). If two scopes use the same name, the narrower scope wins.</p>
          <table class="lc-table">
            <thead><tr><th>Scope</th><th>Good for</th><th>PayLite example</th></tr></thead>
            <tbody>
              <tr><td>Global</td><td>Rarely needed. Shared across a whole workspace.</td><td>Avoid</td></tr>
              <tr><td>Collection</td><td>Values that are the same everywhere for this API</td><td><code>max_amount</code> = 10000.00</td></tr>
              <tr><td>Environment</td><td>Values that change between environments</td><td><code>base_url</code> = https://sandbox.paylite.example/v1</td></tr>
              <tr><td>Data</td><td>Values from a data file, one row per run</td><td><code>amount</code> and <code>expected_status</code></td></tr>
              <tr><td>Local</td><td>Short-lived values inside one run</td><td>A value used once in a check</td></tr>
            </tbody>
          </table>
          <p>For tokens, Postman offers a vault for secrets. Collections and environments can be shared and exported, and their values can travel with them. So keep tokens in the vault, or in environment values that are marked secret and stay on your own computer. Other tools have similar features. Check your tool's current docs.</p>
        </div>
        <div class="lc-card">
          <h3>Checks, AI help and data-driven runs</h3>
          <p>In Postman, checks are small scripts. A <strong>pre-request script</strong> runs before a request, for example to make a unique <code>Idempotency-Key</code>. A <strong>post-response script</strong> runs after it and holds the checks, such as "status is 201". The scripts are written in JavaScript, but you do not have to write them from scratch.</p>
          <p>Postman has built-in AI features that can draft scripts and checks from a plain-English request. A general AI assistant can draft them too. Review them like any AI output. Make sure each check matches the spec, and that no check only confirms whatever the API returned.</p>
          <p>A <strong>data-driven run</strong> sends the same request once for each row of a data file (CSV or JSON). Jordan's <code>amounts.csv</code> holds the boundary values for <code>POST /v1/payments</code>:</p>
          <pre><code>amount,expected_status
        0.49,400
        0.50,201
        0.51,201
        9999.99,201
        10000.00,201
        10000.01,400
        10.005,400
        0,400
        -5.00,400</code></pre>
          <p>The run sends 9 requests. 8 pass. The 10000.01 row fails, because the API returns 201. That is BUG-101, which is already logged. The <strong>pass rate</strong> is passed tests ÷ tests run × 100 = 8 ÷ 9 × 100 = 88.9%. A pass rate is only useful with the list of failures next to it.</p>
          <p>Number the folders, as Jordan does, so they run in order: setup first, clean-up last.</p>
          <p>Two data points to watch. First, each row needs a new <code>Idempotency-Key</code>. Reusing one key with a different body returns <code>409 idempotency_conflict</code>. Postman has built-in random values, such as <code>{{$guid}}</code>, for this. Second, each run creates 5 payments, so use a test customer, not seed data.</p>
          <p>To run a collection outside the app, Postman offers the Postman CLI, and Newman is its open-source command-line runner. Running tests in CI comes later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: where should each value live?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Jordan is setting up the PayLite collection. Sort each value into the best place to keep it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="coll" data-label="Collection variable"></div>
              <div data-sorter-target="bucket" data-bucket="env" data-label="Environment variable"></div>
              <div data-sorter-target="bucket" data-bucket="vault" data-label="Secret (vault or local-only)"></div>
              <div data-sorter-target="bucket" data-bucket="data" data-label="Data file"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="env" data-why="The address changes between the sandbox and other environments, so it belongs in the environment.">base_url = https://sandbox.paylite.example/v1</li>
              <li data-bucket="vault" data-why="Tokens are secrets. Keep them out of anything that is shared or exported.">admin_token for the sandbox</li>
              <li data-bucket="vault" data-why="Even a read-only token is a secret. It can still read customer data.">readonly_token for the sandbox</li>
              <li data-bucket="coll" data-why="The maximum amount is a rule of the API. It is the same in every environment.">max_amount = 10000.00</li>
              <li data-bucket="data" data-why="Many values for the same request, one per run, belong in a data file.">The 9 boundary amounts and their expected codes</li>
              <li data-bucket="env" data-why="Seed customers can differ between environments, so the ID belongs with the environment.">customer_id = cus_1001, a seed customer to read</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a collection for an API, in plain words, with no code. Then check the plan against the spec and your team's secret rules.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA lead who sets up API test collections in tools like Postman, Insomnia or Bruno. Use simple English. Do not write code.

        Made-up sandbox API: [PayLite API v1, base URL https://sandbox.paylite.example/v1]
        Endpoints: [POST /v1/payments (201), GET /v1/payments/{id} (200), GET /v1/payments (200), POST /v1/refunds (201), GET /v1/refunds/{id} (200), POST /v1/customers (201), GET /v1/customers/{id} (200), PATCH /v1/customers/{id} (200), DELETE /v1/customers/{id} (204)]
        Tokens: [an admin token and a read-only token; both are secrets]
        Rules: [POST /v1/payments needs a unique Idempotency-Key; amount 0.50 to 10000.00]

        Please plan:
        1. Folders and requests, in a sensible run order.
        2. Variables: name, scope (collection, environment, data, secret), example value. Never show a real token.
        3. Which values to chain from one request to the next.
        4. Three checks per request, in plain words.
        5. One data file for amount boundaries, with expected codes.
        6. How the run creates and cleans up its own test data.</pre>
            <ul class="ai-try-checks">
              <li>Tokens are kept as secrets, not as shared collection values.</li>
              <li>The run order creates a customer before payments and refunds.</li>
              <li>Each data row gets a new Idempotency-Key.</li>
              <li>Checks use the spec's codes, such as 204 with no body for DELETE.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good collection is organised like the API: folders for resources, variables for anything that changes, secrets in a vault and checks in every request. AI can draft the scripts, but you check that every check comes from the spec.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Contract Testing Basics</h1>
        </div>
        <p class="lc-lead">Apps that use an API depend on it staying the same. If a field is renamed, an app can break overnight. A contract is the written promise of what an API sends and accepts. In this lesson you will learn what an API contract is and three ways to check it. You will learn which changes are breaking changes and which are safe. You will also see how Jordan Lee uses AI to review a proposed new version of the PayLite spec.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="At the top, three boxes. On the left, the consumer: the PayLite mobile app, which relies on the contract. In the middle, the contract: the OpenAPI spec version 1.4.0. On the right, the provider: the PayLite API, which must match the contract. Below the contract are three kinds of check. One: response check, real responses match the spec. Two: spec diff, compare the old spec with the new spec to find breaking changes. Three: consumer contract, each consumer's needs are still met.">
            <defs><marker id="api11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="210" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="125" y="58" font-weight="700" fill="#93c5fd">Consumer</text>
              <text x="125" y="80">PayLite mobile app</text>
              <text x="125" y="98" font-size="11" fill="#9b99b8">relies on the contract</text>
              <rect x="275" y="30" width="210" height="80" rx="10" fill="#27274e" stroke="#14b8a6" stroke-width="2"/>
              <text x="380" y="58" font-weight="700" fill="#5eead4">Contract</text>
              <text x="380" y="80">OpenAPI spec v1.4.0</text>
              <text x="380" y="98" font-size="11" fill="#9b99b8">the written promise</text>
              <rect x="530" y="30" width="210" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="635" y="58" font-weight="700" fill="#c4b5fd">Provider</text>
              <text x="635" y="80">PayLite API</text>
              <text x="635" y="98" font-size="11" fill="#9b99b8">must match the contract</text>
              <rect x="20" y="180" width="220" height="90" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="130" y="208" font-weight="700" fill="#6ee7b7">1. Response check</text>
              <text x="130" y="230" font-size="12">Real responses</text>
              <text x="130" y="248" font-size="12">match the spec</text>
              <rect x="270" y="180" width="220" height="90" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="208" font-weight="700" fill="#fcd34d">2. Spec diff</text>
              <text x="380" y="230" font-size="12">Old spec vs new spec:</text>
              <text x="380" y="248" font-size="12">anything broken?</text>
              <rect x="520" y="180" width="220" height="90" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="630" y="208" font-weight="700" fill="#f9a8d4">3. Consumer contract</text>
              <text x="630" y="230" font-size="12">Each consumer's needs</text>
              <text x="630" y="248" font-size="12">are still met</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#api11a)">
                <line x1="230" y1="70" x2="271" y2="70"/>
                <line x1="530" y1="70" x2="489" y2="70"/>
                <line x1="340" y1="110" x2="160" y2="176"/>
                <line x1="380" y1="110" x2="380" y2="176"/>
                <line x1="420" y1="110" x2="600" y2="176"/>
              </g>
            </g>
          </svg>
          <figcaption>The contract sits between the apps that use the API and the API itself. Three kinds of check keep both sides in step.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What an API contract is</h3>
          <p>An <strong>API contract</strong> is the agreed description of an API. It lists the endpoints, the fields, their types, the required fields and the status codes. At PayLite, the contract is the OpenAPI spec, version 1.4.0.</p>
          <p>Two sides depend on the contract:</p>
          <ul class="lc-list">
            <li>The <strong>provider</strong> is the system that offers the API. Here it is the PayLite API.</li>
            <li>A <strong>consumer</strong> is any app that calls the API. PayLite has two: the mobile app (iOS and Android) and the merchant dashboard (a website for shops).</li>
          </ul>
          <p><strong>Contract testing</strong> checks that both sides still agree. It does not test every business rule. It tests the shape of requests and responses. It is fast, so teams run it on every change.</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Question it answers</th><th>Tools (in general)</th></tr></thead>
            <tbody>
              <tr><td>Response check (schema check)</td><td>Does each real response match the schema in the spec?</td><td>Tests in Postman or similar tools, or a schema validator</td></tr>
              <tr><td>Spec diff</td><td>Does the new spec break anything the old spec promised?</td><td>OpenAPI diff tools, such as oasdiff</td></tr>
              <tr><td>Consumer-driven contract test</td><td>Does the provider still give each consumer what it uses?</td><td>Pact and similar tools</td></tr>
            </tbody>
          </table>
          <p>In <strong>consumer-driven contract testing</strong>, each consumer writes down the requests it sends and the fields it uses. The provider runs those expectations against its own code before it releases. Tools change often, so check each tool's current docs.</p>
        </div>
        <div class="lc-card">
          <h3>A response check that fails</h3>
          <p>The v1.4.0 schema says <code>amount</code> is a number. Jordan sends <code>GET /v1/payments/pay_5001</code> in the sandbox. Part of the response looks like this:</p>
          <pre><code>{
          "id": "pay_5001",
          "status": "succeeded",
          "amount": "42.50",
          "currency": "USD",
          "customer_id": "cus_1001"
        }</code></pre>
          <p>The status is <code>200</code> and the value looks right. But <code>"42.50"</code> in quotes is a <strong>string</strong> (text), not a number. The schema check fails. The mobile app may do maths with this field, so it could show a wrong total or crash.</p>
          <p>This is why contract checks matter. A person reading the response can miss two quote marks. A schema check never does.</p>
        </div>
        <div class="lc-card">
          <h3>Breaking and safe changes</h3>
          <p>A <strong>breaking change</strong> is a change that can make an existing consumer fail, even if the consumer did nothing wrong. A developer proposes PayLite spec v1.5.0. Jordan sorts the changes:</p>
          <table class="lc-table">
            <thead><tr><th>Proposed change</th><th>Type</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Rename response field <code>description</code> to <code>note</code></td><td>Breaking</td><td>Apps that read <code>description</code> get nothing.</td></tr>
              <tr><td>Add a new required request field <code>statement_descriptor</code></td><td>Breaking</td><td>Old requests without it will now get <code>400</code>.</td></tr>
              <tr><td>Change <code>amount</code> in responses from number to string</td><td>Breaking</td><td>Apps that expect a number may fail.</td></tr>
              <tr><td>Change DELETE customer from <code>204</code> (no body) to <code>200</code> with a body</td><td>Breaking</td><td>Apps may check for exactly <code>204</code>.</td></tr>
              <tr><td>Add an optional response field <code>receipt_url</code></td><td>Usually safe</td><td>Well-built apps ignore fields they do not know.</td></tr>
              <tr><td>Add a new endpoint <code>GET /v1/refunds?payment_id=</code></td><td>Safe</td><td>Nothing that exists changes.</td></tr>
              <tr><td>Add a new payment status value <code>disputed</code></td><td>Ask consumers</td><td>An app with a fixed list of statuses may not handle it.</td></tr>
            </tbody>
          </table>
          <p>Breaking changes are not always wrong. But they need a plan: a new version (such as <code>/v2</code>), a warning to consumers and a date when the old behaviour stops.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is the new spec OK?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below are two versions of a made-up API spec: v1.4.0 and v1.5.0.
        [paste both sections, no secrets, no real data]
        1. List every difference as a table: Location, Old, New.
        2. Mark each one Breaking, Safe or Ask consumers, with one reason.
        3. For each breaking change, say which client behaviour would fail.
        Use only the text above. Say "not sure" when you are not sure.</code></pre>
          <p>AI explains changes well, but it can miss one line in a long spec. Use a diff tool as your main check. Use AI to explain the results and draft the note to consumers. You and the team decide what ships.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: breaking or safe?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each proposed PayLite v1.5.0 change into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="breaking" data-label="Breaking"></div>
              <div data-sorter-target="bucket" data-bucket="safe" data-label="Safe"></div>
              <div data-sorter-target="bucket" data-bucket="ask" data-label="Ask consumers"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="breaking" data-why="Apps that read the old name will find the field missing.">Rename the response field description to note.</li>
              <li data-bucket="breaking" data-why="Every old request without the new field will now be refused.">Add a required request field statement_descriptor to POST /v1/payments.</li>
              <li data-bucket="breaking" data-why="Apps that check for 204 with no body may treat 200 as a surprise or fail to parse it.">DELETE a customer now returns 200 with a body instead of 204.</li>
              <li data-bucket="safe" data-why="Adding a new endpoint does not change any existing request or response.">Add a new endpoint GET /v1/refunds?payment_id=.</li>
              <li data-bucket="safe" data-why="An optional extra field in a response is usually safe, because apps ignore fields they do not use.">Add an optional response field receipt_url to payments.</li>
              <li data-bucket="ask" data-why="Some apps handle unknown values well and some do not. Check with each consumer team.">Add a new payment status value disputed.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI an old and a new version of a spec section. Ask it to list every change and mark each one as breaking, safe or "ask consumers".</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA engineer who reviews API changes before release. Use simple English.

        This is a made-up sandbox API. Consumers: [a mobile app and a merchant website].

        OLD spec (v1.4.0), response of GET /v1/payments/{id}:
        [id: string; status: enum pending, succeeded, failed, refunded, partially_refunded; amount: number; currency: string; description: string; created_at: string (ISO 8601)]

        NEW spec (v1.5.0), same endpoint:
        [id: string; status: enum pending, succeeded, failed, refunded, partially_refunded, disputed; amount: string; currency: string; note: string; created_at: string (ISO 8601); receipt_url: string, optional]

        Please:
        1. List every difference in a table: Field, Old, New.
        2. Mark each one Breaking, Safe or Ask consumers, with a one-line reason.
        3. For each breaking change, write one test that would catch it.
        4. Draft a 4-line note to consumer teams about the breaking changes.
        Use only the text above. Do not invent other fields.</pre>
            <ul class="ai-try-checks">
              <li>It finds all four differences: the new status value, amount type, description renamed to note, and receipt_url.</li>
              <li>The amount type change and the rename are marked Breaking.</li>
              <li>The new disputed value is marked Ask consumers or Breaking, with a reason.</li>
              <li>No fields appear that are not in the two specs.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A contract is the promise between an API and the apps that use it. Check real responses against the spec, compare every new spec with the old one, and treat breaking changes as a team decision. AI can explain the changes, but a diff tool and a person must confirm them.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Performance and Reliability Basics</h1>
        </div>
        <p class="lc-lead">An API can give the right answer and still fail its users. It may be too slow, or it may break when many people use it at once. In this lesson you will learn the main performance words: response time, percentiles, throughput and error rate. You will learn the main kinds of load test in general words. You will also see how Jordan Lee reads a small PayLite load test, and why an average can hide a real problem.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A bar chart of p95 response time for GET /v1/payments/{id} at three load levels, with a goal line at 800 milliseconds. At 10 virtual users p95 is 410 ms. At 50 users it is 690 ms. Both are under the goal. At 100 users it is 1,240 ms, above the goal. On the right, error rates: 0.00 percent at 10 users, 0.02 percent at 50 users and 2.10 percent at 100 users, against a goal of under 1 percent. Verdict: 50 users pass, 100 users fail.">
            <defs><marker id="api12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="250" y="26" font-weight="700" fill="#5eead4" text-anchor="middle">p95 response time (ms)</text>
              <line x1="70" y1="270" x2="440" y2="270" stroke="#9b99b8"/>
              <line x1="70" y1="70" x2="70" y2="270" stroke="#9b99b8"/>
              <line x1="70" y1="156" x2="440" y2="156" stroke="#ec4899" stroke-dasharray="6 4"/>
              <text x="64" y="160" font-size="11" fill="#f9a8d4" text-anchor="end">800</text>
              <text x="80" y="150" font-size="11" fill="#f9a8d4">goal: p95 under 800 ms</text>
              <rect x="100" y="211" width="70" height="59" fill="#10b981"/>
              <text x="135" y="204" text-anchor="middle">410</text>
              <rect x="220" y="171" width="70" height="99" fill="#10b981"/>
              <text x="255" y="185" text-anchor="middle" fill="#0b1020">690</text>
              <rect x="340" y="93" width="70" height="177" fill="#ec4899"/>
              <text x="375" y="86" text-anchor="middle">1,240</text>
              <g font-size="12" fill="#9b99b8" text-anchor="middle">
                <text x="135" y="290">10 users</text>
                <text x="255" y="290">50 users</text>
                <text x="375" y="290">100 users</text>
              </g>
              <rect x="480" y="40" width="260" height="170" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="610" y="66" font-weight="700" fill="#67e8f9" text-anchor="middle">Error rate (goal under 1%)</text>
              <text x="500" y="100">10 users</text>
              <text x="720" y="100" text-anchor="end" fill="#6ee7b7">0.00%</text>
              <text x="500" y="135">50 users</text>
              <text x="720" y="135" text-anchor="end" fill="#6ee7b7">0.02%</text>
              <text x="500" y="170">100 users</text>
              <text x="720" y="170" text-anchor="end" fill="#f9a8d4">2.10%</text>
              <rect x="480" y="225" width="260" height="65" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="610" y="252" text-anchor="middle" fill="#6ee7b7">50 users: pass</text>
              <text x="610" y="276" text-anchor="middle" fill="#f9a8d4">100 users: fail both goals</text>
            </g>
          </svg>
          <figcaption>A made-up PayLite sandbox load test. The API meets both goals at 50 users but not at 100 users.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The words you need</h3>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Plain meaning</th><th>PayLite example</th></tr></thead>
            <tbody>
              <tr><td>Response time</td><td>The time from sending a request to getting the full response</td><td>A GET payment takes 230 ms (milliseconds; 1,000 ms = 1 second).</td></tr>
              <tr><td>Percentile (p95)</td><td>95% of requests were this fast or faster</td><td>Goal: p95 under 800 ms in the sandbox</td></tr>
              <tr><td>Throughput</td><td>How many requests the API handles per second</td><td>About 49 requests per second at 50 users</td></tr>
              <tr><td>Error rate</td><td>Failed requests divided by all requests</td><td>Goal: under 1% during load tests</td></tr>
              <tr><td>Virtual user (VU)</td><td>A simulated user that sends requests in a loop</td><td>The test runs 10, then 50, then 100 VUs</td></tr>
            </tbody>
          </table>
          <p>Kinds of performance test, in general words:</p>
          <ul class="lc-list">
            <li><strong>Load test</strong>: the expected number of users. Does it meet the goals?</li>
            <li><strong>Stress test</strong>: more and more users until it breaks. Where is the limit?</li>
            <li><strong>Spike test</strong>: a sudden jump in users. Does it recover?</li>
            <li><strong>Soak test</strong>: normal load for many hours. Does it slow down over time?</li>
          </ul>
          <p>Common tools include k6, JMeter, Gatling and Locust. Their features change, so check each tool's current docs. A performance engineer usually owns big tests. As an API tester, you plan small ones and read the results.</p>
        </div>
        <div class="lc-card">
          <h3>Why the average is not enough</h3>
          <p>Jordan times 20 calls to <code>GET /v1/payments/{id}</code> in the sandbox. He puts the times (in ms) in cells B2 to B21 of a spreadsheet:</p>
          <pre><code>182, 195, 201, 210, 214, 223, 230, 238, 245, 251,
        262, 270, 288, 301, 315, 342, 380, 455, 690, 1420</code></pre>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Formula (Excel or Google Sheets)</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Average</td><td><code>=AVERAGE(B2:B21)</code></td><td>345.6 ms</td></tr>
              <tr><td>Median (p50)</td><td><code>=MEDIAN(B2:B21)</code></td><td>256.5 ms</td></tr>
              <tr><td>p95</td><td><code>=PERCENTILE.INC(B2:B21,0.95)</code></td><td>726.5 ms</td></tr>
              <tr><td>Slowest</td><td><code>=MAX(B2:B21)</code></td><td>1,420 ms</td></tr>
              <tr><td>Calls over 800 ms</td><td><code>=COUNTIF(B2:B21,"&gt;800")</code></td><td>1 (5% of 20)</td></tr>
            </tbody>
          </table>
          <p>One slow call (1,420 ms) pulls the average up. The median shows a typical call. The p95 shows how slow it gets for the unlucky users. That is why goals use percentiles, not averages.</p>
          <p>Tools work out percentiles in slightly different ways. Another common method gives 690 ms for this data, not 726.5 ms. Both are under 800. Always say which tool or formula you used. Also, 20 calls is far too few for a real decision. A real test uses hundreds or thousands.</p>
        </div>
        <div class="lc-card">
          <h3>Reliability checks and safe load testing</h3>
          <p><strong>Reliability</strong> means the API keeps working correctly when things go wrong. Useful PayLite checks:</p>
          <ul class="lc-list">
            <li><strong>Rate limit</strong>: send 101 requests in one minute with one token. Request 101 should get <code>429</code> with a <code>Retry-After</code> header.</li>
            <li><strong>Safe retries</strong>: send the same payment twice with the same <code>Idempotency-Key</code>, as a phone on a bad network might. Only one payment should exist.</li>
            <li><strong>Recovery</strong>: after a spike, response times and errors return to normal.</li>
          </ul>
          <p>Rules for safe load testing:</p>
          <ul class="lc-list">
            <li>Test only in the sandbox or a test environment, never in production, unless the team plans it in writing.</li>
            <li>Agree the time with the team. Tell anyone who shares the environment.</li>
            <li>Never load test a third-party API, such as a bank's, without written permission.</li>
            <li>Use a load-test token. PayLite's normal limit is 100 requests per minute, so a normal token would just get <code>429</code>. The team made a sandbox-only token, <code>pl_test_FAKE_load_3Hv8</code>, with a higher limit.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is my API fast enough?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Goals: p95 under 800 ms and error rate under 1% (sandbox).
        Load test results for GET /v1/payments/{id}, 5 minutes per stage:
        [10 users: 2,950 requests, p95 410 ms, 0 errors
        50 users: 14,700 requests, p95 690 ms, 3 errors
        100 users: 28,800 requests, p95 1,240 ms, 605 errors]
        1. Work out the error rate for each stage. Show the sum.
        2. Say pass or fail for each stage against both goals.
        3. List 3 questions I should ask the developers.
        Do not guess causes. Mark ideas as "possible cause".</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: reading a load test with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Jordan's prompt">Jordan pastes the three stage results and the goals, and asks the AI for a pass or fail per stage.</li>
              <li data-kind="answer" data-label="AI reply">"Average response times look fine at every stage. The API performs well."</li>
              <li data-kind="warn" data-label="Wrong measure">The goals are about p95 and error rate, not the average. An average can look fine while many users wait too long.</li>
              <li data-kind="check" data-label="Check the sums">Jordan works it out himself. At 100 users, 605 errors out of 28,800 requests is 2.10%. The p95 is 1,240 ms. Both goals fail.</li>
              <li data-kind="tool" data-label="Look at the errors">He opens the test tool's report to see what the errors were.</li>
              <li data-kind="result" data-label="Error details">591 errors were 503 Service Unavailable and 14 requests timed out. There were no 429s, so the load-test token worked.</li>
              <li data-kind="check" data-label="Report it">Jordan logs PERF-201, severity medium. He includes the stages, the goals, the tool and the time of the test.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to help you plan a small, safe load test for one endpoint. Then check its plan against your team's goals and rules.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA engineer who plans simple API performance tests. Use simple English. Do not write code.

        API: [a made-up payments API, sandbox only]
        Endpoint to test: [GET /v1/payments/{id}]
        Goals: [p95 under 800 ms, error rate under 1%]
        Rate limit: [100 requests per minute per token; a special load-test token is allowed in the sandbox]
        Expected real use: [about 40 requests per second at busy times]

        Please:
        1. Suggest 3 load stages (number of virtual users and minutes for each), with one reason each.
        2. List the numbers to record for each stage.
        3. Explain how to work out the error rate, with a made-up example.
        4. Write 5 safety rules for running this test.
        5. Explain in two sentences why p95 is better than the average here.
        6. List 3 questions to ask the team before starting.</pre>
            <ul class="ai-try-checks">
              <li>The stages go up step by step and include at least one stage above the expected use.</li>
              <li>The error rate example is correct: failed requests divided by all requests.</li>
              <li>The safety rules say sandbox only, agreed timing and no third-party APIs.</li>
              <li>It does not promise the API will be fast, or invent results.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Judge speed with percentiles and error rates against agreed goals, not with averages. Load test only where and when the team allows. AI can help you plan a test and explain results, but you check every number yourself.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Security Basics for API Testers</h1>
        </div>
        <p class="lc-lead">APIs carry money, personal data and business rules, so attackers target them. You do not need to be a security expert to find many API security bugs. Simple, careful tests find a lot. In this lesson you will learn the OWASP API Security Top 10 in general words. You will learn which risks a tester can check with ordinary requests. You will also learn the rules for testing safely, and see the PayLite security tests Jordan Lee runs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="The ten risks of the OWASP API Security Top 10, 2023 edition, in two columns. Left: API1 broken object level authorisation, API2 broken authentication, API3 broken object property level authorisation, API4 unrestricted resource consumption, API5 broken function level authorisation. Right: API6 sensitive business flows without limits, API7 server side request forgery, API8 security misconfiguration, API9 improper inventory management, API10 unsafe consumption of APIs. Eight are marked as risks you can test with simple requests. API7 and API10 are marked as mostly for security specialists.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="26" font-size="13" font-weight="700" fill="#5eead4" text-anchor="middle">OWASP API Security Top 10 (2023 edition)</text>
              <rect x="20" y="44" width="350" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="34" y="68">API1 Broken object level authorisation</text>
              <rect x="20" y="90" width="350" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="34" y="114">API2 Broken authentication</text>
              <rect x="20" y="136" width="350" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="34" y="160">API3 Broken object property level authorisation</text>
              <rect x="20" y="182" width="350" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="34" y="206">API4 Unrestricted resource consumption</text>
              <rect x="20" y="228" width="350" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="34" y="252">API5 Broken function level authorisation</text>
              <rect x="390" y="44" width="350" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="404" y="68">API6 Sensitive business flows without limits</text>
              <rect x="390" y="90" width="350" height="38" rx="8" fill="#27274e" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="404" y="114" fill="#9b99b8">API7 Server side request forgery (SSRF)</text>
              <rect x="390" y="136" width="350" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="404" y="160">API8 Security misconfiguration</text>
              <rect x="390" y="182" width="350" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="404" y="206">API9 Improper inventory management</text>
              <rect x="390" y="228" width="350" height="38" rx="8" fill="#27274e" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="404" y="252" fill="#9b99b8">API10 Unsafe consumption of APIs</text>
              <rect x="150" y="284" width="14" height="14" rx="3" fill="#1f1f44" stroke="#10b981"/>
              <text x="172" y="296" fill="#6ee7b7">You can test with simple requests</text>
              <rect x="430" y="284" width="14" height="14" rx="3" fill="#27274e" stroke="#9b99b8" stroke-dasharray="3 2"/>
              <text x="452" y="296" fill="#9b99b8">Mostly for security specialists</text>
            </g>
          </svg>
          <figcaption>The ten risk areas in short, plain words. A tester can check most of them with ordinary API requests and the right tokens.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What the OWASP API Security Top 10 is</h3>
          <p><strong>OWASP</strong> (the Open Worldwide Application Security Project) is a non-profit group that shares free security guidance. Its <strong>API Security Top 10</strong> lists the most common API security risks. The current edition is from 2023. Check the OWASP website for any newer edition.</p>
          <p>It is different from the general OWASP Top 10, which covers web apps. Both are useful, but this list is written for APIs.</p>
          <p>Three words you will see often:</p>
          <ul class="lc-list">
            <li><strong>Authentication</strong>: proving who you are, for example with a token.</li>
            <li><strong>Authorisation</strong>: checking what you are allowed to do or see.</li>
            <li><strong>Object</strong>: one record, such as payment <code>pay_5001</code> or customer <code>cus_1002</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>PayLite security tests a tester can run</h3>
          <p>For one test, the PayLite sandbox has a second made-up merchant, Hudson Bagels. It has its own token, <code>pl_test_FAKE_merchantB_9Wm3</code>, and its own payment, <code>pay_6001</code>.</p>
          <table class="lc-table">
            <thead><tr><th>Risk</th><th>Plain meaning</th><th>PayLite test</th><th>Expected</th></tr></thead>
            <tbody>
              <tr><td>API1 Object level</td><td>You can read or change someone else's record by changing an ID</td><td>Use Jordan's admin token to GET <code>pay_6001</code>, which belongs to Hudson Bagels</td><td><code>404 payment_not_found</code> (do not even confirm it exists)</td></tr>
              <tr><td>API2 Authentication</td><td>Weak or broken login and token checks</td><td>Send the expired token, a token with one changed letter, and no token</td><td><code>401 unauthenticated</code> each time</td></tr>
              <tr><td>API3 Object property level</td><td>You can set or see fields you should not</td><td>PATCH <code>cus_1002</code> with an extra field <code>"id": "cus_9999"</code></td><td><code>400 unknown_field</code>, and the ID does not change</td></tr>
              <tr><td>API4 Resource consumption</td><td>No limits, so one caller can overload the API</td><td>Send 101 requests in one minute; ask for <code>limit=100000</code></td><td><code>429</code> with <code>Retry-After</code>; the list limit is enforced</td></tr>
              <tr><td>API5 Function level</td><td>A low role can use an action meant for a higher role</td><td>POST a refund with the read_only token</td><td><code>403 forbidden</code>. This is BUG-102, which returned <code>201</code>.</td></tr>
              <tr><td>API8 Misconfiguration</td><td>Unsafe settings, such as detailed error pages</td><td>Send currency <code>"usd"</code> in lower case</td><td>Standard <code>400</code> error, no stack trace. BUG-103 showed a stack trace.</td></tr>
              <tr><td>API9 Inventory</td><td>Old or forgotten API versions are still running</td><td>Try <code>https://sandbox.paylite.example/v0/payments</code></td><td><code>404</code>; no old version answers</td></tr>
            </tbody>
          </table>
          <p>Notice that two bugs found earlier in this course, BUG-102 and BUG-103, are security bugs. Many security bugs are found by normal permission and error tests.</p>
        </div>
        <div class="lc-card">
          <h3>Testing safely, and using AI safely</h3>
          <p>Security testing can harm real systems and real people. Follow these rules:</p>
          <ul class="lc-list">
            <li>Get written permission that says what you may test, where and when. This is called the <strong>scope</strong>.</li>
            <li>Test only the sandbox or test environment, with fake tokens and fake data.</li>
            <li>Do not run attack tools or heavy scans unless the security team asks you to.</li>
            <li>If you see real customer data, stop. Report it to the security team at once.</li>
            <li>Report security bugs privately, in a restricted ticket, not in a public chat channel.</li>
          </ul>
          <p>Testing a system without permission can be a crime in both the UK and the US. Examples are the UK Computer Misuse Act 1990 and the US Computer Fraud and Abuse Act. This is general education, not legal advice. Check with your security team or a qualified adviser.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How do I hack this API?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am a QA engineer with written permission to test a made-up
        payments API in its sandbox. Endpoints: [list]. Roles: merchant_admin
        and read_only. Error rules: 401 for bad tokens, 403 for roles not
        allowed, 404 for other merchants' records.
        Map each endpoint to the OWASP API Security Top 10 (2023) risks
        that apply. For each, suggest one safe test with ordinary requests,
        and the expected status code. No attack tools, no load testing.</code></pre>
          <p>Never paste real tokens, real stack traces with server names, or real customer data into a public AI tool. Replace them with fake values first.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: match the test to the risk</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each PayLite test into the OWASP API risk it checks.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="api1" data-label="API1 Object level"></div>
              <div data-sorter-target="bucket" data-bucket="api4" data-label="API4 Resource use"></div>
              <div data-sorter-target="bucket" data-bucket="api5" data-label="API5 Function level"></div>
              <div data-sorter-target="bucket" data-bucket="api8" data-label="API8 Misconfiguration"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="api1" data-why="Changing the ID to reach another merchant's record tests object level authorisation.">Jordan's token asks for pay_6001, which belongs to Hudson Bagels.</li>
              <li data-bucket="api1" data-why="This tests whether one merchant can change a record that belongs to another merchant.">Hudson Bagels' token tries to PATCH customer cus_1003.</li>
              <li data-bucket="api5" data-why="The read_only role is using an action only the admin role may use.">The read_only token tries to DELETE customer cus_1004.</li>
              <li data-bucket="api4" data-why="This checks that the API limits how much one caller can use it.">Send 101 requests in one minute and expect 429 with Retry-After.</li>
              <li data-bucket="api4" data-why="Asking for a huge page of results tests limits on resource use.">GET /v1/payments with limit=100000.</li>
              <li data-bucket="api8" data-why="Detailed internal errors are an unsafe setting that leaks information.">Check that a 500 error never shows a stack trace or table name.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a short security test checklist for one API, mapped to the OWASP API Security Top 10. Then check that every test is safe and every expected result matches your rules.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA engineer who writes safe API security tests. Use simple English. I have written permission to test the sandbox only.

        API: [a made-up payments API with fake data]
        Endpoints: [POST /v1/payments, GET /v1/payments/{id}, POST /v1/refunds, PATCH /v1/customers/{id}, DELETE /v1/customers/{id}]
        Roles: [merchant_admin (all actions), read_only (GET only)]
        Rules: [401 for missing, bad or expired tokens; 403 when the role is not allowed; 404 when a record belongs to another merchant; 429 after 100 requests per minute; errors never show stack traces]

        Please:
        1. Make a table: OWASP API risk (2023 edition), Endpoint, Test idea, Request in plain words, Expected result.
        2. Give 8 to 10 tests. Use ordinary requests only. No attack tools, no load tests.
        3. Mark risks you did not cover and say why.
        4. Add 3 rules for reporting a security bug safely.</pre>
            <ul class="ai-try-checks">
              <li>Risk names match the 2023 list, such as API1 Broken Object Level Authorization.</li>
              <li>Expected codes follow the rules: 401, 403, 404 or 429, never "it depends".</li>
              <li>Every test is safe for a sandbox, with no attack tools or heavy load.</li>
              <li>No endpoints or roles appear that are not in the prompt.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Many API security bugs are permission and error bugs that a careful tester can find with ordinary requests. Use the OWASP API Security Top 10 as a checklist, test only within written permission, and report security bugs privately. AI suggests test ideas; you check that they are safe and correct.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Running API Tests in CI</h1>
        </div>
        <p class="lc-lead">API tests are most useful when they run by themselves on every change. Then a broken endpoint is caught in minutes, not days. In this lesson you will learn what CI is, which API tests to run at each stage, and how a failed test stops a build. You will also learn to read a test report, handle flaky tests and keep secrets out of your pipeline. Jordan Lee sets this up for the PayLite API.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A CI pipeline for the PayLite API. A developer opens a pull request. The pipeline builds the code and deploys it to the sandbox. It runs 12 smoke tests, then a contract check against the spec. The results go into a test report. A gate asks: did every check pass? If yes, the change may be merged. If no, the build fails and the merge is blocked until someone fixes it.">
            <defs><marker id="api14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="160" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="100" y="58" font-weight="700">Pull request</text>
              <text x="100" y="78" font-size="11" fill="#9b99b8">a code change</text>
              <rect x="210" y="30" width="160" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="290" y="58" font-weight="700">Build + deploy</text>
              <text x="290" y="78" font-size="11" fill="#9b99b8">to the sandbox</text>
              <rect x="400" y="30" width="160" height="64" rx="10" fill="#1f1f44" stroke="#14b8a6"/>
              <text x="480" y="58" font-weight="700">Smoke tests</text>
              <text x="480" y="78" font-size="11" fill="#9b99b8">12 tests, about 2 min</text>
              <rect x="590" y="30" width="150" height="64" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="665" y="58" font-weight="700">Contract check</text>
              <text x="665" y="78" font-size="11" fill="#9b99b8">spec diff</text>
              <rect x="560" y="150" width="180" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="650" y="174" font-weight="700">Test report</text>
              <text x="650" y="193" font-size="11" fill="#9b99b8">passed, failed, skipped</text>
              <rect x="300" y="150" width="200" height="56" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="400" y="174" font-weight="700" fill="#fcd34d">Gate</text>
              <text x="400" y="193" font-size="12">Did every check pass?</text>
              <rect x="20" y="130" width="250" height="50" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="145" y="160" font-size="12" fill="#6ee7b7">Yes: merge allowed</text>
              <rect x="20" y="220" width="250" height="50" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="145" y="250" font-size="12" fill="#f9a8d4">No: build fails, merge blocked</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#api14a)">
                <line x1="180" y1="62" x2="206" y2="62"/>
                <line x1="370" y1="62" x2="396" y2="62"/>
                <line x1="560" y1="62" x2="586" y2="62"/>
                <line x1="665" y1="94" x2="665" y2="146"/>
                <line x1="560" y1="178" x2="504" y2="178"/>
                <line x1="300" y1="168" x2="274" y2="158"/>
                <line x1="300" y1="190" x2="274" y2="240"/>
              </g>
            </g>
          </svg>
          <figcaption>On every pull request, the pipeline deploys the change, runs the smoke tests and the contract check, and blocks the merge if anything fails.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What CI is, and which tests run when</h3>
          <p><strong>CI</strong> (continuous integration) means every code change is built and tested automatically, many times a day. A <strong>pipeline</strong> is the list of steps the CI tool runs. Common CI tools are GitHub Actions, GitLab CI, Jenkins and Azure Pipelines.</p>
          <p>Your API tests run in the pipeline through a command-line runner. Postman collections can run with Newman or the Postman CLI. Code-based tests can run with tools such as pytest. These runners give an <strong>exit code</strong> (a number that says "passed" or "failed"). A failed test gives a non-zero exit code, and the CI tool marks the build as failed. Check your tools' current docs for the exact options.</p>
          <p>Not every test runs every time. Fast tests run often. Slow tests run less often.</p>
          <table class="lc-table">
            <thead><tr><th>When</th><th>What runs at PayLite</th><th>If it fails</th></tr></thead>
            <tbody>
              <tr><td>Every pull request</td><td>12 smoke tests (about 2 minutes) and the contract check</td><td>Merge is blocked</td></tr>
              <tr><td>Every merge to main</td><td>Full regression: 76 API tests</td><td>The team fixes it before the next release</td></tr>
              <tr><td>Every night at 02:00 New York time</td><td>Full regression again, plus a small performance check</td><td>A ticket is raised in the morning</td></tr>
            </tbody>
          </table>
          <p>A <strong>smoke test</strong> is a quick check that the most important features work at all. A <strong>regression test</strong> checks that old features still work after a change.</p>
        </div>
        <div class="lc-card">
          <h3>Reading a report, and flaky tests</h3>
          <p>Most runners can save a report in <strong>JUnit XML</strong>, a common report format that most CI tools can show as a list of passed and failed tests. Here is one made-up nightly run from later in the project. By then, BUG-102 and BUG-103 were fixed, and the team had answered the three open questions. So all 76 tests could run:</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Value</th><th>How it is worked out</th></tr></thead>
            <tbody>
              <tr><td>Tests run</td><td>76</td><td>From the report</td></tr>
              <tr><td>Passed</td><td>74</td><td>From the report</td></tr>
              <tr><td>Failed</td><td>2</td><td>PAY-B04 and PAY-L03</td></tr>
              <tr><td>Pass rate</td><td>97.4%</td><td>Passed ÷ tests run × 100 = 74 ÷ 76 × 100</td></tr>
            </tbody>
          </table>
          <p>The two failures are different:</p>
          <ul class="lc-list">
            <li><strong>PAY-B04</strong> (amount 10000.01 is refused) fails because of BUG-101, a known open bug. This is a real failure. The fix is in the code, not the test.</li>
            <li><strong>PAY-L03</strong> (list a customer's payments, newest first) is <strong>flaky</strong>: it passes and fails on the same code. It failed 3 of the last 20 nightly runs with no code change. Its flaky rate is 3 ÷ 20 = 15%.</li>
          </ul>
          <p>The suite has 2 known flaky tests out of 76, which is 2.6% of the suite. Flaky tests are dangerous because people start to ignore red builds. Fix them quickly. While you fix one, you may move it to a separate "quarantine" group so it does not block merges. Keep a ticket open so it is not forgotten.</p>
          <p>Flaky API tests often come from shared test data, tests that depend on order, timing, or rate limits. For PAY-L03, two payments had the same <code>created_at</code> second, so their order was not fixed.</p>
        </div>
        <div class="lc-card">
          <h3>Secrets, and using AI with reports</h3>
          <p>Never put tokens in a collection file or in the pipeline settings as plain text. Store them in the CI tool's secret store. The pipeline passes them to the runner at run time. Most CI tools mask (hide) secrets in logs, but check that yours does.</p>
          <p>AI is useful after a run. It can group failures by cause, explain an error and draft a bug report. But a report may contain tokens, URLs and data. Remove them before you paste it into an AI tool.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Why did my build fail?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is a summary of last night's API test run (tokens removed):
        [test ID, title, status, expected, actual, for each failed test]
        Known bugs still open: [BUG-101: amount 10000.01 accepted]
        History: [PAY-L03 failed 3 of the last 20 nightly runs, no code change]
        1. Group each failure: known bug, possible new bug, flaky test,
           or test or data problem. Give one reason for each.
        2. Work out the pass rate. Show the sum.
        3. Draft a 5-line summary for the team channel.
        Mark guesses as "possible". Do not invent test results.</code></pre>
          <p>Always open the real failed request and response before you decide. The AI only sees what you pasted.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: set up API tests in CI</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Jordan's steps for adding PayLite API tests to CI in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Choose the 12 most important tests for the smoke suite.</li>
              <li data-order="2">Make the tests create and clean up their own test data.</li>
              <li data-order="3">Store the sandbox tokens in the CI tool's secret store.</li>
              <li data-order="4">Add a pipeline step that runs the smoke tests with a command-line runner.</li>
              <li data-order="5">Save a JUnit XML report so failed tests show in the CI tool.</li>
              <li data-order="6">Make the merge depend on the smoke tests passing.</li>
              <li data-order="7">Watch the first week of runs and fix or quarantine any flaky test.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to help you plan which API tests run at each stage of a CI pipeline, and what happens when they fail. Then check the plan with your team.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA lead who plans API test automation in CI. Use simple English. Do not write code or pipeline files.

        Context:
        [- A made-up payments API with 9 endpoints, tested in a sandbox
        - 76 API tests in one Postman-style collection; the full run takes about 9 minutes
        - CI tool: GitHub Actions, GitLab CI, Jenkins or similar
        - Developers merge about 15 pull requests a day
        - 2 tests are known to be flaky]

        Please:
        1. Suggest which tests run on each pull request, on each merge to main, and nightly. Give the reason for each.
        2. Give rules for when a failed test blocks a merge and when it only raises a ticket.
        3. Explain how to keep tokens and secrets safe in the pipeline.
        4. Write a short plan for handling the 2 flaky tests.
        5. Define pass rate and flaky rate with a made-up example sum for each.</pre>
            <ul class="ai-try-checks">
              <li>The pull request stage uses a small, fast smoke set, not all 76 tests.</li>
              <li>Pass rate is passed ÷ tests run × 100, and the example sum is correct.</li>
              <li>Secrets go in the CI tool's secret store, never in the collection file.</li>
              <li>Flaky tests are fixed or quarantined with a ticket, not simply deleted or ignored.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Run fast API tests on every change and slower ones on a schedule, and let a failed test stop the build. Keep secrets in the CI secret store, and fix flaky tests quickly so people keep trusting red builds. AI can sort failures and draft summaries, but you check the real requests and responses.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-qa">Software Testing</div>
          <h1 class="lc-title">Capstone: Testing the PayLite Payments API</h1>
        </div>
        <p class="lc-lead">In this capstone you will follow one full test cycle for the PayLite payments API, from the first read of the docs to the final report. You will see five stages: doc review, a test matrix, auth and error tests, a collection plan and a test summary report. At each stage you will see what AI drafted and what Jordan Lee had to check or decide himself. Then you will use AI to draft your own report from real numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Five stages in a row. One: doc review, 3 open questions. Two: test matrix, 76 tests planned. Three: auth and error tests, 3 bugs confirmed. Four: collection plan, 5 folders and 1 environment. Five: report, a go or no-go recommendation. Below, the run results: planned 76, blocked 3, executed 73, passed 70, failed 3. Pass rate 70 divided by 73 is 95.9 percent. Requirements coverage 22 of 24 is 91.7 percent. Bugs: BUG-102 critical, BUG-101 high, BUG-103 high. Recommendation: no-go until all three are fixed and retested.">
            <defs><marker id="api15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="132" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="86" y="62" font-weight="700">1 Doc review</text>
              <text x="86" y="86" font-size="11" fill="#9b99b8">3 open questions</text>
              <rect x="167" y="30" width="132" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="233" y="62" font-weight="700">2 Test matrix</text>
              <text x="233" y="86" font-size="11" fill="#9b99b8">76 tests planned</text>
              <rect x="314" y="30" width="132" height="80" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="62" font-weight="700">3 Auth + errors</text>
              <text x="380" y="86" font-size="11" fill="#9b99b8">3 bugs confirmed</text>
              <rect x="461" y="30" width="132" height="80" rx="10" fill="#1f1f44" stroke="#14b8a6"/>
              <text x="527" y="62" font-weight="700">4 Collection</text>
              <text x="527" y="86" font-size="11" fill="#9b99b8">5 folders, 1 env</text>
              <rect x="608" y="30" width="132" height="80" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="674" y="62" font-weight="700">5 Report</text>
              <text x="674" y="86" font-size="11" fill="#9b99b8">go or no-go advice</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#api15a)">
                <line x1="152" y1="70" x2="164" y2="70"/>
                <line x1="299" y1="70" x2="311" y2="70"/>
                <line x1="446" y1="70" x2="458" y2="70"/>
                <line x1="593" y1="70" x2="605" y2="70"/>
              </g>
              <rect x="20" y="140" width="720" height="76" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="170">Planned 76 · Blocked 3 · Executed 73 · Passed 70 · Failed 3</text>
              <text x="380" y="198" fill="#67e8f9">Pass rate 70 ÷ 73 = 95.9% · Coverage 22 ÷ 24 = 91.7%</text>
              <rect x="20" y="240" width="160" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="100" y="266" font-weight="700" fill="#f9a8d4">BUG-102</text>
              <text x="100" y="286" font-size="11" fill="#9b99b8">critical: access</text>
              <rect x="195" y="240" width="160" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="275" y="266" font-weight="700" fill="#fcd34d">BUG-101</text>
              <text x="275" y="286" font-size="11" fill="#9b99b8">high: amount limit</text>
              <rect x="370" y="240" width="160" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="450" y="266" font-weight="700" fill="#fcd34d">BUG-103</text>
              <text x="450" y="286" font-size="11" fill="#9b99b8">high: 500 + leak</text>
              <rect x="545" y="240" width="195" height="60" rx="10" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="642" y="266" font-weight="700">Recommend: no-go</text>
              <text x="642" y="286" font-size="11" fill="#9b99b8">until all 3 are retested</text>
            </g>
          </svg>
          <figcaption>The full PayLite test cycle in five stages, with the run results, the bugs found and the release recommendation.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Stages 1 and 2: doc review and the test matrix</h3>
          <p><strong>Doc review.</strong> Jordan asked AI to turn the PayLite spec into a rules table and list the gaps. He checked the table line by line. He then took three open questions to the team:</p>
          <ul class="lc-list">
            <li>Is the 180-day refund window counted from <code>created_at</code> or from when the payment succeeded?</li>
            <li>What does the payments list return for <code>limit=0</code> or <code>limit=101</code>: <code>400</code> or a changed value?</li>
            <li>May PATCH change a customer's <code>country</code>?</li>
          </ul>
          <p><strong>Test matrix.</strong> A <strong>test matrix</strong> is a grid that shows how many tests cover each part of the system. Jordan's matrix has one row per endpoint and one column per test type. AI drafted it. Jordan removed duplicates and added the permission tests the AI missed.</p>
          <table class="lc-table">
            <thead><tr><th>Endpoint</th><th>Positive</th><th>Negative</th><th>Boundary</th><th>Permission</th><th>Total</th></tr></thead>
            <tbody>
              <tr><td>POST /v1/payments</td><td>4</td><td>6</td><td>7</td><td>3</td><td>20</td></tr>
              <tr><td>GET /v1/payments/{id}</td><td>2</td><td>2</td><td>0</td><td>3</td><td>7</td></tr>
              <tr><td>GET /v1/payments (list)</td><td>2</td><td>2</td><td>4</td><td>1</td><td>9</td></tr>
              <tr><td>POST /v1/refunds</td><td>3</td><td>4</td><td>4</td><td>3</td><td>14</td></tr>
              <tr><td>GET /v1/refunds/{id}</td><td>1</td><td>1</td><td>0</td><td>1</td><td>3</td></tr>
              <tr><td>POST /v1/customers</td><td>2</td><td>3</td><td>2</td><td>1</td><td>8</td></tr>
              <tr><td>GET /v1/customers/{id}</td><td>1</td><td>1</td><td>0</td><td>1</td><td>3</td></tr>
              <tr><td>PATCH /v1/customers/{id}</td><td>2</td><td>2</td><td>2</td><td>2</td><td>8</td></tr>
              <tr><td>DELETE /v1/customers/{id}</td><td>1</td><td>2</td><td>0</td><td>1</td><td>4</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>18</strong></td><td><strong>23</strong></td><td><strong>19</strong></td><td><strong>16</strong></td><td><strong>76</strong></td></tr>
            </tbody>
          </table>
          <p>The Permission column holds the most important access checks, chosen by risk. It does not repeat all 45 checks from the full access matrix.</p>
          <p>The matrix shows gaps at a glance. A zero in the Boundary column is fine for a GET by ID, which has no range to test. A zero in the Permission column would be a warning sign.</p>
        </div>
        <div class="lc-card">
          <h3>Stages 3 and 4: auth and error tests, and the collection plan</h3>
          <p>These are the key auth and error tests from the run. Each one was run in the sandbox, with fake tokens and fake data.</p>
          <table class="lc-table">
            <thead><tr><th>Test</th><th>Expected</th><th>Actual</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>No token on GET /v1/payments/pay_5001</td><td><code>401 unauthenticated</code></td><td><code>401</code></td><td>Pass</td></tr>
              <tr><td>Expired token on POST /v1/customers</td><td><code>401 unauthenticated</code></td><td><code>401</code></td><td>Pass</td></tr>
              <tr><td>read_only token: POST /v1/refunds for a succeeded payment</td><td><code>403 forbidden</code></td><td><code>201</code>, refund created</td><td>Fail: BUG-102 (critical)</td></tr>
              <tr><td>Admin token reads Hudson Bagels' payment pay_6001</td><td><code>404 payment_not_found</code></td><td><code>404</code></td><td>Pass</td></tr>
              <tr><td>Amount 10000.01 USD</td><td><code>400 amount_out_of_range</code></td><td><code>201</code>, payment created</td><td>Fail: BUG-101 (high)</td></tr>
              <tr><td>Currency <code>"usd"</code> in lower case</td><td><code>400 invalid_currency</code>, standard error format</td><td><code>500</code> with a stack trace and table name</td><td>Fail: BUG-103 (high)</td></tr>
              <tr><td>Refund 100.01 on pay_5002 (100.00 remaining)</td><td><code>422 refund_exceeds_remaining</code></td><td><code>422</code></td><td>Pass</td></tr>
              <tr><td>DELETE cus_1001, which has a pending payment</td><td><code>409 customer_has_pending_payments</code></td><td><code>409</code></td><td>Pass</td></tr>
            </tbody>
          </table>
          <p><strong>Collection plan.</strong> All 76 tests live in one collection, "PayLite API v1", with five folders:</p>
          <ul class="lc-list">
            <li><strong>00 Setup</strong>: create the test customer and payment, and save their IDs in variables.</li>
            <li><strong>01 Payments</strong>, <strong>02 Refunds</strong> and <strong>03 Customers</strong>: the tests from the matrix, grouped by endpoint.</li>
            <li><strong>99 Cleanup</strong>: delete or close the data the run created.</li>
          </ul>
          <p>One environment, "PayLite Sandbox", holds <code>base_url</code> and the IDs, such as <code>customer_id</code> and <code>payment_id</code>. The run also uses four secret tokens: <code>admin_token</code>, <code>readonly_token</code>, <code>expired_token</code> and <code>merchant_b_token</code>. On Jordan's computer they live in the vault. In CI they come from the CI secret store, never from the collection file. The 12 smoke tests run on every pull request. The full collection runs on every merge and every night.</p>
        </div>
        <div class="lc-card">
          <h3>Stage 5: the test summary report</h3>
          <p>A <strong>test summary report</strong> tells the team what was tested, what was found and what the tester recommends. Define every number, so no one can read it two ways.</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>How it is worked out</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Tests planned</td><td>From the test matrix</td><td>76</td></tr>
              <tr><td>Blocked</td><td>Waiting for answers on <code>limit=0</code>, <code>limit=101</code> and PATCH <code>country</code></td><td>3</td></tr>
              <tr><td>Executed</td><td>Planned − blocked = 76 − 3</td><td>73</td></tr>
              <tr><td>Passed / failed</td><td>From the run</td><td>70 / 3</td></tr>
              <tr><td>Pass rate</td><td>Passed ÷ executed × 100 = 70 ÷ 73 × 100</td><td>95.9%</td></tr>
              <tr><td>Execution progress</td><td>Executed ÷ planned × 100 = 73 ÷ 76 × 100</td><td>96.1%</td></tr>
              <tr><td>Requirements coverage</td><td>Spec rules with at least one executed test ÷ all spec rules = 22 ÷ 24 × 100</td><td>91.7%</td></tr>
            </tbody>
          </table>
          <p>A 95.9% pass rate sounds good. But one of the three failures is critical, and two are high. The number of failures matters less than how serious they are. Jordan's recommendation: <strong>no-go</strong> for release until BUG-102, BUG-101 and BUG-103 are fixed and retested. He also lists PERF-201 (slow at 100 users) as a known risk.</p>
          <p>The tester recommends. The product owner and the team decide. Write the report so they can decide quickly.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a test report for my API.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a test summary report for a made-up payments API release.
        Use only these facts: [planned, blocked, executed, passed, failed,
        bug IDs with severity and one-line summary, open questions, risks].
        Sections: Scope, Results, Bugs, Blocked tests, Risks, Recommendation.
        Show every sum. Pass rate = passed ÷ executed × 100.
        Do not add facts, tests or bugs that are not listed.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: drafting the report with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Jordan's prompt">Jordan gives the AI the run numbers, the three bugs and the open questions, and asks for a test summary report.</li>
              <li data-kind="answer" data-label="AI draft">The draft is clear and well organised. It says: "Pass rate: 70 of 76 tests, 92.1%."</li>
              <li data-kind="warn" data-label="Wrong sum">The AI divided by all planned tests. The 3 blocked tests were never run, so they cannot pass or fail.</li>
              <li data-kind="check" data-label="Fix the number">Jordan works it out again: 70 passed ÷ 73 executed × 100 = 95.9%. He reports the blocked tests on a separate line.</li>
              <li data-kind="check" data-label="Check the bugs">He checks each bug against its ticket. The AI called BUG-103 "medium". The ticket says high, because it leaks internal details.</li>
              <li data-kind="tool" data-label="Final check">He opens the CI report for the run and compares every number in the draft with it.</li>
              <li data-kind="result" data-label="Report sent">The report matches the CI results. Jordan sends it to the product owner with a no-go recommendation.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to draft a test summary report from a set of run results. Then check every number and every severity yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA engineer writing a test summary report for a release of a made-up payments API. Use simple English. Use only the facts below.

        Results: [76 tests planned, 3 blocked (waiting for answers from the team), 73 executed, 70 passed, 3 failed]
        Spec rules: [24 in total, 22 with at least one executed test]
        Bugs:
        [- BUG-102, critical: the read-only role can create refunds (should get 403)
        - BUG-101, high: amount 10000.01 is accepted (should get 400)
        - BUG-103, high: currency "usd" gives 500 with a stack trace and table name (should get 400)]
        Known risk: [at 100 virtual users, p95 is 1,240 ms against a goal of 800 ms]
        Open questions: [limit=0 and limit=101 on the payments list; can PATCH change country?]

        Please write:
        1. Scope (2 lines)
        2. Results table: measure, how it is worked out, result. Include pass rate (passed ÷ executed × 100), execution progress and requirements coverage.
        3. Bugs table, most severe first
        4. Blocked tests and open questions
        5. Risks
        6. Recommendation (go or no-go) with reasons. Say that the team makes the final decision.</pre>
            <ul class="ai-try-checks">
              <li>Pass rate is 70 ÷ 73 = 95.9%, not 70 ÷ 76.</li>
              <li>Execution progress is 96.1% and requirements coverage is 91.7%.</li>
              <li>Bugs are in severity order with BUG-102 first, and the severities match the prompt.</li>
              <li>The recommendation is no-go while a critical bug is open, and no new bugs or tests are invented.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A full API test cycle runs from doc review to a clear report. AI speeds up every stage: rules tables, test matrices, collection plans and report drafts. But you check every rule against the spec, every result against the real API and every number against the real run. The tester recommends, and the team decides.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

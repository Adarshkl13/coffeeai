module CustomerFeedbackAnalysisContent
  # Units (sidebar dividers): 1–4 Feedback Basics · 5–9 Analysing Feedback · 10–14 Acting on Feedback · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Why Customer Feedback Matters</h1>
        </div>
        <p class="lc-lead">Customer feedback is anything customers tell you about your product or service. It arrives as survey answers, reviews, chats, tickets and calls. In this lesson you will learn where feedback comes from and how the feedback loop works. You will also see how AI helps you listen to hundreds of comments. In this course you will follow Backwater Trails, a made-up travel agency in Kerala. It sells houseboat trips and hill trips, and most customers book on WhatsApp. Its customer experience lead, Anjali, wants to know what customers really think.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four feedback sources for Backwater Trails in September 2026: 120 post-trip survey responses, 64 Google reviews, 180 WhatsApp messages and 96 support tickets, 460 items in total. They feed a loop of four steps: collect, analyse, act, and tell customers what changed, then collect again.">
            <defs><marker id="cfa1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="15" y="24" text-anchor="start" font-weight="700" fill="#67e8f9">Feedback sources, Sept 2026</text>
              <rect x="15" y="38" width="200" height="46" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="115" y="58" font-weight="700">Post-trip survey</text>
              <text x="115" y="75" font-size="11" fill="#9b99b8">120 responses</text>
              <rect x="15" y="94" width="200" height="46" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="115" y="114" font-weight="700">Google reviews</text>
              <text x="115" y="131" font-size="11" fill="#9b99b8">64 new reviews</text>
              <rect x="15" y="150" width="200" height="46" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="115" y="170" font-weight="700">WhatsApp messages</text>
              <text x="115" y="187" font-size="11" fill="#9b99b8">180 messages</text>
              <rect x="15" y="206" width="200" height="46" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="115" y="226" font-weight="700">Support tickets</text>
              <text x="115" y="243" font-size="11" fill="#9b99b8">96 tickets</text>
              <text x="115" y="280" font-size="12.5" font-weight="700" fill="#67e8f9">Total: 460 items</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="215" y1="61" x2="240" y2="61"/>
                <line x1="215" y1="117" x2="240" y2="117"/>
                <line x1="215" y1="173" x2="240" y2="173"/>
                <line x1="215" y1="229" x2="240" y2="229"/>
                <line x1="240" y1="61" x2="240" y2="229"/>
              </g>
              <rect x="300" y="38" width="190" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="395" y="63" font-weight="700">1. Collect</text>
              <text x="395" y="83" font-size="11" fill="#9b99b8">gather every source</text>
              <rect x="548" y="38" width="190" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="643" y="63" font-weight="700">2. Analyse</text>
              <text x="643" y="83" font-size="11" fill="#9b99b8">themes, scores, reasons</text>
              <rect x="548" y="188" width="190" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="643" y="213" font-weight="700">3. Act</text>
              <text x="643" y="233" font-size="11" fill="#9b99b8">fix the top problems</text>
              <rect x="300" y="188" width="190" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="395" y="213" font-weight="700">4. Tell customers</text>
              <text x="395" y="233" font-size="11" fill="#9b99b8">say what changed</text>
              <text x="519" y="138" font-weight="700" fill="#c4b5fd">The feedback loop</text>
              <text x="519" y="158" font-size="11" fill="#9b99b8">repeat every month</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cfa1a)">
                <line x1="240" y1="68" x2="296" y2="68"/>
                <line x1="492" y1="68" x2="544" y2="68"/>
                <line x1="643" y1="100" x2="643" y2="184"/>
                <line x1="546" y1="218" x2="494" y2="218"/>
                <line x1="395" y1="186" x2="395" y2="102"/>
              </g>
              <text x="519" y="282" font-size="12" fill="#9b99b8">Customers who see changes give more feedback.</text>
            </g>
          </svg>
          <figcaption>Anjali's four sources feed one loop. Feedback is only useful when it leads to a change that customers can see.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where feedback comes from</h3>
          <p>There are two kinds of feedback. <strong>Solicited feedback</strong> is feedback you ask for, such as a survey. <strong>Unsolicited feedback</strong> is feedback customers choose to share, such as a review or a complaint. You need both. Surveys give you numbers you can compare each month. Reviews and messages show what upsets or delights people enough to speak up.</p>
          <p>Here is what Anjali collected in September 2026. Backwater Trails completed 400 trips that month.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Type</th><th>Count</th><th>What it tells you</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Post-trip survey</strong></td><td>Solicited</td><td>120 responses (sent to 400)</td><td>Scores and short comments from a mix of guests</td><td>Only 30% answered</td></tr>
              <tr><td><strong>Google reviews</strong></td><td>Unsolicited, public</td><td>64 new reviews</td><td>What future customers read before they book</td><td>Mostly very happy or very upset people</td></tr>
              <tr><td><strong>WhatsApp messages</strong></td><td>Unsolicited</td><td>180 feedback messages</td><td>Problems in the moment: late pickup, AC, payment</td><td>Short, mixed languages, voice notes</td></tr>
              <tr><td><strong>Support tickets</strong></td><td>Unsolicited</td><td>96 tickets</td><td>Serious problems: refunds, cancellations, extra charges</td><td>Only problems, almost never praise</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>460 items</strong></td><td></td><td></td></tr>
            </tbody>
          </table>
          <p>Other useful sources are phone calls, Instagram comments and notes from staff. Houseboat crews and drivers hear a lot. Ask them to note what guests say.</p>
        </div>
        <div class="lc-card">
          <h3>The feedback loop</h3>
          <p>The feedback loop is a repeating cycle: collect feedback, analyse it, act on it, and tell customers what changed. Then you collect again to see if the change worked. Here is one loop at Backwater Trails:</p>
          <ol class="lc-list">
            <li><strong>Collect.</strong> Guests complain in reviews, surveys and WhatsApp that the houseboat is "too hot in the afternoon".</li>
            <li><strong>Analyse.</strong> Anjali finds 47 comments about AC across all four sources. Most guests did not know the AC runs only from 9 pm to 6 am.</li>
            <li><strong>Act.</strong> The AC is not broken. The information is missing. The team adds the AC hours to the WhatsApp booking confirmation and the trip page.</li>
            <li><strong>Tell customers.</strong> Anjali replies to the reviews and explains the change. New guests now know before they pay.</li>
          </ol>
          <p>Next month, she counts the AC comments again. If they drop, the change worked. Many businesses collect feedback and stop after step 1 or 2. Customers notice this. If nothing changes, they stop giving feedback.</p>
        </div>
        <div class="lc-card">
          <h3>Listening at scale</h3>
          <p>Anjali has 460 items for one month. If she reads each one in 1 minute, that takes 460 minutes. That is about 7 hours and 40 minutes, every month. Reading is also not enough. She must group, count and compare the comments.</p>
          <p>This is where AI helps. It can sort comments into topics, count them, summarise them and translate Malayalam or Hindi messages. You will learn each of these jobs in this course. But Anjali still reads samples, checks the counts and decides what to do.</p>
          <p><strong>Loud is not the same as common.</strong> In September, one angry 1-star review about a slow refund got a lot of attention. But only 29 items mention refunds. 88 items mention booking and payment problems on WhatsApp. Counting helps you fix the biggest problem first.</p>
          <p><strong>Some feedback cannot wait.</strong> A message about safety, a medical problem or a legal threat goes to a person the same day. It does not wait for the monthly report.</p>
          <p><strong>Protect customer data.</strong> Before you paste feedback into an AI tool, remove names, phone numbers, booking IDs and payment details. Use only AI tools your company has approved for customer data.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: solicited or unsolicited?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Did Backwater Trails ask for this feedback, or did the customer choose to share it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="sol" data-label="Solicited (we asked)"></div>
              <div data-sorter-target="bucket" data-bucket="unsol" data-label="Unsolicited (they chose to share)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="sol" data-why="The guest answered a question in a survey that Backwater Trails sent.">A score of 4 out of 5 in the post-trip survey</li>
              <li data-bucket="unsol" data-why="Nobody asked for this review. The guest wrote it on their own.">A 1-star Google review about a late airport pickup</li>
              <li data-bucket="unsol" data-why="The guest sent it because of a problem. Nobody asked.">A WhatsApp voice note from the houseboat: "AC is not working"</li>
              <li data-bucket="sol" data-why="The guide asked a direct question, so this is solicited.">A guest's reply when the guide asks, "Is everything OK with your room?"</li>
              <li data-bucket="unsol" data-why="The customer raised this ticket to get help. It was not asked for.">A support ticket asking for a refund after a trip was cancelled</li>
              <li data-bucket="sol" data-why="Anjali called and asked for this feedback.">Notes from a follow-up call Anjali made to an unhappy guest</li>
              <li data-bucket="unsol" data-why="The person chose to comment in public.">An Instagram comment under a houseboat photo</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to sort a small mix of feedback, find patterns and flag urgent items. Then check that every pattern is backed by real items. F7 uses a made-up Malayalam slang word ("adipoli"). A native speaker should check examples like this.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer experience analyst for [Backwater Trails, a travel agency in Kerala that sells houseboat and hill trips]. Below is feedback from different sources, with names removed.

        Feedback (replace with [8 to 20 of your own items, names removed]):
        F1 (survey, 5/5): The houseboat food was excellent. Karimeen fry was the best part.
        F2 (Google review, 2 stars): Driver came 50 min late at the airport. Nobody answered our WhatsApp.
        F3 (WhatsApp): AC is off in the afternoon, very hot inside. Is it broken?
        F4 (ticket): Trip cancelled due to heavy rain. Asked for refund 12 days ago. No update.
        F5 (survey, 3/5): Hill hotel was OK but the drive was too long for one day.
        F6 (WhatsApp): Paid the advance on UPI. Still no confirmation.
        F7 (Google review, 5 stars): Crew were very friendly and helpful. Food adipoli!
        F8 (WhatsApp): Booked for 12 Oct, still no reply about pickup time.

        Tasks:
        1. Make a table: ID, source, topic, feeling (positive, negative or mixed), needs a person today (yes/no).
        2. List the 3 biggest patterns. Give the IDs that support each one.
        3. For each "yes" item, say why a person must reply today.
        4. Suggest one small change to try next month.

        Use only this feedback. Do not invent numbers or quotes. If something is unclear, say so.</pre>
            <ul class="ai-try-checks">
              <li>Every pattern lists IDs that really support it.</li>
              <li>The refund (F4) and the missing confirmations (F6, F8) are flagged for a person.</li>
              <li>No made-up numbers, such as "40% of customers".</li>
              <li>"Adipoli" (Malayalam slang for excellent) is read as praise, or marked unclear.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Feedback is only useful when it leads to a change that customers can see. Collect from many sources, count before you decide, and always close the loop. AI helps you read at scale, but a person decides what to fix.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Where AI Helps with Feedback</h1>
        </div>
        <p class="lc-lead">AI can read hundreds of customer comments in a few minutes. It can group them into themes, label the feeling in each one, write summaries and translate. But it also makes mistakes that look convincing. In this lesson you will learn the four main jobs AI does with feedback. You will learn how to prompt for each one. You will also learn to catch wrong themes and made-up quotes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="460 feedback items go to AI, which drafts four things: themes, sentiment labels, summaries and translations. For each one, a person checks: are the themes real, are the labels right, is every quote real, and is the meaning kept. At the bottom: watch for wrong or merged themes, made-up quotes and wrong counts.">
            <defs><marker id="cfa2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="80" y="24" font-weight="700" fill="#67e8f9">Feedback</text>
              <text x="295" y="24" font-weight="700" fill="#c4b5fd">AI drafts</text>
              <text x="596" y="24" font-weight="700" fill="#6ee7b7">A person checks</text>
              <rect x="15" y="38" width="130" height="206" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="80" y="126" font-weight="700">460 items</text>
              <text x="80" y="148" font-size="11" fill="#9b99b8">survey, reviews,</text>
              <text x="80" y="166" font-size="11" fill="#9b99b8">WhatsApp, tickets</text>
              <rect x="185" y="38" width="220" height="44" rx="9" fill="#27274e" stroke="#8b5cf6"/>
              <text x="295" y="57" font-weight="700">Find themes</text>
              <text x="295" y="74" font-size="11" fill="#9b99b8">AC hours, pickup, food</text>
              <rect x="185" y="92" width="220" height="44" rx="9" fill="#27274e" stroke="#8b5cf6"/>
              <text x="295" y="111" font-weight="700">Label sentiment</text>
              <text x="295" y="128" font-size="11" fill="#9b99b8">positive, negative, mixed</text>
              <rect x="185" y="146" width="220" height="44" rx="9" fill="#27274e" stroke="#8b5cf6"/>
              <text x="295" y="165" font-weight="700">Summarise</text>
              <text x="295" y="182" font-size="11" fill="#9b99b8">top issues this month</text>
              <rect x="185" y="200" width="220" height="44" rx="9" fill="#27274e" stroke="#8b5cf6"/>
              <text x="295" y="219" font-weight="700">Translate</text>
              <text x="295" y="236" font-size="11" fill="#9b99b8">Malayalam, Hindi to English</text>
              <rect x="447" y="38" width="298" height="44" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="596" y="57" font-weight="700">Is each theme real?</text>
              <text x="596" y="74" font-size="11" fill="#9b99b8">read 10 to 20 comments per theme</text>
              <rect x="447" y="92" width="298" height="44" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="596" y="111" font-weight="700">Are the labels right?</text>
              <text x="596" y="128" font-size="11" fill="#9b99b8">compare with your own labels</text>
              <rect x="447" y="146" width="298" height="44" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="596" y="165" font-weight="700">Is every quote real?</text>
              <text x="596" y="182" font-size="11" fill="#9b99b8">search for the exact words</text>
              <rect x="447" y="200" width="298" height="44" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="596" y="219" font-weight="700">Is the meaning kept?</text>
              <text x="596" y="236" font-size="11" fill="#9b99b8">ask a native speaker</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cfa2a)">
                <line x1="147" y1="60" x2="181" y2="60"/>
                <line x1="147" y1="114" x2="181" y2="114"/>
                <line x1="147" y1="168" x2="181" y2="168"/>
                <line x1="147" y1="222" x2="181" y2="222"/>
                <line x1="407" y1="60" x2="443" y2="60"/>
                <line x1="407" y1="114" x2="443" y2="114"/>
                <line x1="407" y1="168" x2="443" y2="168"/>
                <line x1="407" y1="222" x2="443" y2="222"/>
              </g>
              <rect x="15" y="262" width="730" height="38" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="286" font-size="12.5" fill="#f9a8d4">Watch for: wrong or merged themes, made-up quotes and wrong counts</text>
            </g>
          </svg>
          <figcaption>AI drafts the first pass quickly. A person checks each kind of output before anyone uses it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four jobs AI does well</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>What it means</th><th>Backwater Trails example</th><th>What you must check</th></tr></thead>
            <tbody>
              <tr><td><strong>Finding themes</strong></td><td>Grouping comments by topic. A theme is a topic that many comments share.</td><td>"AC hours", "pickup delays", "booking on WhatsApp"</td><td>Read 10 to 20 comments in each theme. Are they really about the same thing?</td></tr>
              <tr><td><strong>Sentiment</strong></td><td>Labelling the feeling in a comment: positive, negative, mixed or neutral.</td><td>"Food was great but the AC was off all afternoon" is mixed.</td><td>Sarcasm and mixed comments are often labelled wrongly.</td></tr>
              <tr><td><strong>Summaries</strong></td><td>A short overview of many comments.</td><td>"The 5 main issues in 180 WhatsApp messages"</td><td>Check the counts. Look for important issues the summary left out.</td></tr>
              <tr><td><strong>Translation</strong></td><td>Turning Malayalam, Hindi, Tamil or mixed-language comments into English.</td><td>Manglish (Malayalam words in English letters): "Food adipoli!" means "The food was excellent!" (a made-up example for a native speaker to check)</td><td>Ask a native speaker to check a sample. Local words are easy to get wrong.</td></tr>
            </tbody>
          </table>
          <p>AI is fast at the first pass. It does not know your business, your guests or what happened on the trip. You add that knowledge when you check its work.</p>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <p>Anjali wants a summary of 40 WhatsApp feedback messages. Here is a weak prompt:</p>
          <pre><code>Summarise these customer comments.</code></pre>
          <p>The AI will write a smooth paragraph. But she cannot check it, and it may hide small but serious problems. Here is a better prompt:</p>
          <pre><code>You are helping the customer experience team at Backwater Trails.
        Below are 40 WhatsApp feedback messages from September 2026.
        Each has an ID (W-001 to W-040). Names and phone numbers are removed.

        1. Group the messages into 4 to 7 themes. Give each theme a short
           name and a one-line definition.
        2. For each theme, give the count and list every message ID in it.
        3. Give up to 2 example quotes per theme. Copy the exact words and
           add the ID. Do not change, shorten or combine quotes.
        4. Put messages that fit no theme under "Other". Do not force them.
        5. Flag any message about safety, health or a refund for a person
           to read today.</code></pre>
          <p>Each line has a purpose. The IDs let Anjali check every claim. The "exact words" rule makes fake quotes easier to spot. The "Other" group stops the AI from forcing comments into the wrong theme. The flag rule makes sure urgent messages reach a person.</p>
        </div>
        <div class="lc-card">
          <h3>Two mistakes to catch: wrong themes and made-up quotes</h3>
          <p><strong>Wrong themes</strong> look tidy but lead to the wrong fix. Watch for these:</p>
          <ul class="lc-list">
            <li><strong>Merged themes.</strong> The AI puts "AC off in the afternoon" and "power cut at night" into one theme called "AC problems". The first is missing information. The second is a generator fault. They need different fixes.</li>
            <li><strong>Invented themes.</strong> The AI reports a "Wi-Fi" theme, but only 1 message mentions Wi-Fi.</li>
            <li><strong>Themes that are too broad.</strong> "Service issues" holds half the messages. It tells you nothing useful.</li>
          </ul>
          <p><strong>Made-up quotes</strong> are quotes that no customer wrote. Here is an example. The AI summary says:</p>
          <pre><code>Guests were angry: "The houseboat was dirty and the staff did not care." (W-017)</code></pre>
          <p>Anjali opens W-017. It really says:</p>
          <pre><code>Room was not cleaned on day 2, but staff fixed it fast when we asked.</code></pre>
          <p>The AI turned a mixed comment into an angry one. If this quote went into her report, it would be unfair to the crew.</p>
          <p><strong>How to check:</strong> search for each quote's exact words in your spreadsheet (Ctrl+F, or Cmd+F on a Mac). Recount one theme by hand. Check 20 random sentiment labels against your own judgement.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Anjali checks an AI summary</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Anjali">She pastes 40 WhatsApp messages (names and numbers removed) with the better prompt.</li>
              <li data-kind="answer" data-label="AI">"5 themes: Booking and payment (14), Pickup delays (9), AC hours (8), Food (6), Other (3)." It adds two quotes per theme.</li>
              <li data-kind="check" data-label="Anjali checks the total">14 + 9 + 8 + 6 + 3 = 40. The total matches the number of messages.</li>
              <li data-kind="tool" data-label="Spreadsheet search">She searches for the W-017 quote with Ctrl+F in her feedback sheet.</li>
              <li data-kind="result" data-label="No match">W-017 really says: "Room was not cleaned on day 2, but staff fixed it fast when we asked."</li>
              <li data-kind="warn" data-label="Made-up quote">The AI rewrote a mixed comment as an angry quote. This quote cannot go in any report.</li>
              <li data-kind="user" data-label="Anjali">"Your W-017 quote is not the exact text. Recheck every quote against the messages. Copy exact words only."</li>
              <li data-kind="answer" data-label="AI">It fixes W-017. It also fixes one more quote it had shortened.</li>
              <li data-kind="check" data-label="Anjali reads samples">She reads 5 messages in each theme. Two "Pickup" messages are about hotel check-in, so she moves them to Other. Pickup is now 7, Other is 5.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to find themes in 10 mixed-language comments. Then check every quote, count and translation yourself. C2 (Manglish) and C5 (Hindi in English letters) are made-up examples. A native speaker should check them and the AI's translations.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful feedback analyst for [Backwater Trails, a travel agency in Kerala]. Group the comments below into themes. Names are removed.

        Comments (or paste [10 to 30 of your own comments, names removed]):
        C1: Pickup driver was 40 min late at the railway station.
        C2: Food super aayirunnu, but AC only at night, afternoon was too hot.
        C3: Booking on WhatsApp took 2 days, replies very slow.
        C4: Crew was friendly. Loved the sunset on Vembanad lake.
        C5: Hamein pehle nahi bataya ki AC sirf raat mein chalega.
        C6: I paid the advance on UPI but got no receipt.
        C7: Hill hotel had no hot water in the morning.
        C8: Great trip overall, but the driver did not know where our hotel was.
        C9: We were charged ₹1,500 extra for day-time AC. Nobody told us before.
        C10: Staff very polite, will book again.

        Tasks:
        1. Make 3 to 5 themes. For each: name, one-line definition, comment IDs and count.
        2. Give one quote per theme. Copy the exact words and add the ID.
        3. Translate C2 and C5 into English. Mark them "machine translation: check with a native speaker".
        4. Label each comment positive, negative or mixed.
        5. End with a list called "Things I was not sure about".

        Do not invent comments, numbers or quotes.</pre>
            <ul class="ai-try-checks">
              <li>Each quote appears word for word in the list, with the right ID.</li>
              <li>The theme counts match the IDs listed (a comment in two themes is clearly shown).</li>
              <li>C2, C5 and C9 are all linked to the AC issue, even though they use different words and languages.</li>
              <li>C2 and C8 are labelled mixed, not simply positive or negative.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast first reader, not a final judge. Always ask for IDs and exact quotes, so you can check every claim. A theme or quote you have not checked must not go into a report.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Collecting Feedback</h1>
        </div>
        <p class="lc-lead">Good analysis starts with good feedback. In this lesson you will learn the main ways to collect feedback: surveys, reviews, tickets, social media and calls. You will learn when to ask, so answers are fresh and useful. You will also learn why the people who answer are not always like all your customers. This problem is called bias, and it can make your results look better or worse than they really are.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 296" role="img" aria-label="The Backwater Trails customer journey: enquiry, booking, pickup, on the trip, trip ends, and later. Under each stage is a way to collect feedback: chat notes, tickets and calls, driver check, day-1 check-in, a survey the next day, and Google reviews. Below: bias notes. Only 120 of 400 guests answered the survey, and reviews come mostly from very happy or very upset guests.">
            <defs><marker id="cfa3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="22" text-anchor="start" font-weight="700" fill="#67e8f9">Customer journey and when to listen</text>
              <rect x="12" y="34" width="116" height="48" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="70" y="54" font-weight="700">Enquiry</text>
              <text x="70" y="72" font-size="11" fill="#9b99b8">on WhatsApp</text>
              <rect x="137" y="34" width="116" height="48" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="195" y="54" font-weight="700">Booking</text>
              <text x="195" y="72" font-size="11" fill="#9b99b8">advance on UPI</text>
              <rect x="262" y="34" width="116" height="48" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="320" y="54" font-weight="700">Pickup</text>
              <text x="320" y="72" font-size="11" fill="#9b99b8">airport, hotel</text>
              <rect x="387" y="34" width="116" height="48" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="445" y="54" font-weight="700">On the trip</text>
              <text x="445" y="72" font-size="11" fill="#9b99b8">boat or hills</text>
              <rect x="512" y="34" width="116" height="48" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="570" y="54" font-weight="700">Trip ends</text>
              <text x="570" y="72" font-size="11" fill="#9b99b8">check-out</text>
              <rect x="637" y="34" width="116" height="48" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="695" y="54" font-weight="700">Later</text>
              <text x="695" y="72" font-size="11" fill="#9b99b8">weeks after</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cfa3a)">
                <line x1="70" y1="84" x2="70" y2="104"/>
                <line x1="195" y1="84" x2="195" y2="104"/>
                <line x1="320" y1="84" x2="320" y2="104"/>
                <line x1="445" y1="84" x2="445" y2="104"/>
                <line x1="570" y1="84" x2="570" y2="104"/>
                <line x1="695" y1="84" x2="695" y2="104"/>
              </g>
              <rect x="12" y="108" width="116" height="52" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="70" y="129" font-weight="700">Chat notes</text>
              <text x="70" y="147" font-size="11" fill="#9b99b8">questions asked</text>
              <rect x="137" y="108" width="116" height="52" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="195" y="129" font-weight="700">Tickets, calls</text>
              <text x="195" y="147" font-size="11" fill="#9b99b8">payment issues</text>
              <rect x="262" y="108" width="116" height="52" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="320" y="129" font-weight="700">Driver check</text>
              <text x="320" y="147" font-size="11" fill="#9b99b8">late or on time</text>
              <rect x="387" y="108" width="116" height="52" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="445" y="129" font-weight="700">Day-1 check-in</text>
              <text x="445" y="147" font-size="11" fill="#9b99b8">fix it now</text>
              <rect x="512" y="108" width="116" height="52" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="570" y="129" font-weight="700">Survey next day</text>
              <text x="570" y="147" font-size="11" fill="#9b99b8">5 questions</text>
              <rect x="637" y="108" width="116" height="52" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="695" y="129" font-weight="700">Google reviews</text>
              <text x="695" y="147" font-size="11" fill="#9b99b8">tickets, social</text>
              <rect x="12" y="184" width="365" height="104" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="194" y="208" font-weight="700" fill="#fcd34d">Who answers the survey?</text>
              <text x="194" y="232" font-size="12">120 of 400 answered (30%)</text>
              <text x="194" y="252" font-size="12">Houseboat 33%, hills and combo 25%</text>
              <text x="194" y="272" font-size="12">English only, so fewer Hindi replies</text>
              <rect x="388" y="184" width="365" height="104" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="570" y="208" font-weight="700" fill="#f9a8d4">Who writes reviews and tickets?</text>
              <text x="570" y="232" font-size="12">Mostly very happy or very upset guests</text>
              <text x="570" y="252" font-size="12">Tickets and chats show only problems</text>
              <text x="570" y="272" font-size="12">Quiet, middle-score guests are missed</text>
            </g>
          </svg>
          <figcaption>Each stage of the journey has a good moment to listen. Each channel also has its own bias about who speaks up.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five ways to collect feedback</h3>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>What you get</th><th>Strength</th><th>Weakness</th></tr></thead>
            <tbody>
              <tr><td><strong>Surveys</strong></td><td>Scores and short comments</td><td>You choose the questions. You can compare month to month.</td><td>Only some people answer.</td></tr>
              <tr><td><strong>Reviews</strong> (Google, travel sites)</td><td>Public star ratings and text</td><td>Honest words. New customers read them before booking.</td><td>You cannot choose who writes. Mostly extreme views. Some may be fake.</td></tr>
              <tr><td><strong>Tickets and chats</strong> (helpdesk, WhatsApp)</td><td>Problems in the customer's own words</td><td>Detailed and written in the moment</td><td>Mostly problems. Messy text, voice notes, mixed languages.</td></tr>
              <tr><td><strong>Social media</strong> (Instagram, Facebook, YouTube)</td><td>Public comments, tags and stories</td><td>Shows what people tell their friends</td><td>Hard to find all of it. Some writers are not customers.</td></tr>
              <tr><td><strong>Calls</strong></td><td>Tone of voice and long explanations</td><td>Best for unhappy or confused customers</td><td>Hard to analyse unless someone takes notes or uses speech-to-text.</td></tr>
            </tbody>
          </table>
          <p>Speech-to-text tools turn call recordings into written text. They can make mistakes with Malayalam, Hindi and strong accents. Check a sample of transcripts by listening to the call. If you record calls, tell the caller first and follow your company's privacy rules.</p>
        </div>
        <div class="lc-card">
          <h3>When to ask</h3>
          <ul class="lc-list">
            <li><strong>Ask soon after the experience.</strong> Backwater Trails sends its survey the day after the trip ends. Guests still remember the details.</li>
            <li><strong>Check in during the trip.</strong> On day 1, the team sends a WhatsApp message: "Is everything OK with your houseboat? Reply 1 if all is well, 2 if you need help." A problem found on day 1 can be fixed the same day.</li>
            <li><strong>Do not ask too often.</strong> Send one survey per trip and one reminder after 3 days. Too many requests annoy people, and fewer will answer.</li>
            <li><strong>Use the customer's channel.</strong> Most Backwater Trails guests book on WhatsApp, so the survey link goes there, not only by email.</li>
          </ul>
          <p>WhatsApp has rules for business messages. For example, customers must agree to get messages from you. This is called opt-in. On the WhatsApp Business Platform, a message you send more than 24 hours after the customer's last message must use an approved message template. Check Meta's current rules before you plan survey messages.</p>
        </div>
        <div class="lc-card">
          <h3>Who answers? Bias in feedback</h3>
          <p><strong>Non-response bias</strong> means the people who answer are different from the people who do not. Then your results do not show all your customers. Here are Anjali's September survey numbers:</p>
          <table class="lc-table">
            <thead><tr><th>Trip type</th><th>Surveys sent</th><th>Responses</th><th>Response rate</th></tr></thead>
            <tbody>
              <tr><td>Houseboat</td><td>240</td><td>80</td><td>33%</td></tr>
              <tr><td>Hills</td><td>100</td><td>25</td><td>25%</td></tr>
              <tr><td>Combo (hills + houseboat)</td><td>60</td><td>15</td><td>25%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>400</strong></td><td><strong>120</strong></td><td><strong>30%</strong></td></tr>
            </tbody>
          </table>
          <p>Houseboat guests answer more often. So the total score leans towards houseboat opinions. Anjali looks at each trip type on its own as well as the total. The survey was also in English only. Families who prefer Hindi or Malayalam may have answered less, so she plans to add both languages.</p>
          <p>Reviews have a different bias. Of 64 Google reviews in September, 34 were 5 stars and 8 were 1 star. Only 6 were 3 stars. People with strong feelings write reviews. Tickets show only problems, never praise.</p>
          <p><strong>Never collect feedback in a way that hides bad news.</strong> Do not send the review link only to happy guests. This is called review gating, and Google's review policies do not allow it. Do not offer gifts or discounts in return for good reviews either. Check Google's current review policies before you plan review requests.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Backwater Trails' feedback steps</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for one guest's trip in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The guest agrees on WhatsApp to get trip updates and a short survey (opt-in).</li>
              <li data-order="2">On day 1 of the trip, the team sends a check-in message and fixes any problem that day.</li>
              <li data-order="3">The trip ends and the team marks the booking as completed.</li>
              <li data-order="4">The next day, the survey link goes out on WhatsApp.</li>
              <li data-order="5">After 3 days, one reminder goes to guests who have not answered.</li>
              <li data-order="6">Guests with low scores get a call from a person within 2 working days.</li>
              <li data-order="7">At the end of the month, Anjali checks response rates by trip type and language.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to draft a one-month feedback collection plan for a business. Then check it for bias and for rules it should not guess.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer experience adviser. Create a feedback collection plan for [Backwater Trails, a travel agency in Kerala. Customers book houseboat and hill trips on WhatsApp. About 400 trips a month].

        1. List the stages of the customer journey, from first enquiry to 2 weeks after the trip.
        2. For each stage, give: the feedback channel, when to ask, the exact short question or message (under 30 words), and who on the team owns it.
        3. For each channel, name one bias risk (who might not answer) and one way to reduce it.
        4. Add rules: how often one customer may be asked, what to do with urgent feedback, and how to get permission before messaging.
        5. Show the plan as one table, then a short list of rules.

        Constraints:
        - Send review requests to all customers, not only happy ones.
        - Do not offer rewards for positive reviews.
        - Where platform rules matter (for example WhatsApp business messages), say "check the current rules" instead of stating details.
        - Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every stage has a channel, a timing and an owner.</li>
              <li>The review request goes to all customers, with no reward for good reviews.</li>
              <li>One customer gets at most one survey and one reminder per trip.</li>
              <li>Urgent feedback (safety, health, refunds) goes to a person the same day.</li>
              <li>It does not state exact platform rules without saying to check them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Where and when you ask decides who answers. Ask soon, in the customer's own channel, and never only the happy ones. Always report the response rate next to any score, so readers know how many people it represents.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Survey Design</h1>
        </div>
        <p class="lc-lead">A survey is only as good as its questions. A confusing question gives you confusing data, and no AI tool can fix that later. In this lesson you will learn how to write clear questions and choose the right answer scale. You will also learn to use open-ended questions well and keep surveys short, so more people answer. You will also use AI to review a draft survey.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four draft survey questions and their better versions. How amazing was your houseboat stay is leading; better: how satisfied were you with the houseboat. How were the food and the AC is two questions in one; better: ask about the food and the AC separately. Rate our transfer SLA uses jargon; better: was your driver on time for pickup. Any comments is too vague; better: what is one thing we should improve.">
            <defs><marker id="cfa4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="165" y="26" font-weight="700" fill="#fca5a5">Draft question</text>
              <text x="380" y="26" font-weight="700" fill="#fcd34d">Problem</text>
              <text x="595" y="26" font-weight="700" fill="#6ee7b7">Better question</text>
              <rect x="15" y="40" width="300" height="46" rx="9" fill="#27274e" stroke="#ec4899"/>
              <text x="165" y="68">How amazing was your houseboat stay?</text>
              <text x="380" y="58" font-size="11" fill="#fcd34d">Leading</text>
              <rect x="445" y="40" width="300" height="46" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="595" y="59">How satisfied were you with the houseboat?</text>
              <text x="595" y="77" font-size="11" fill="#9b99b8">neutral words</text>
              <rect x="15" y="100" width="300" height="46" rx="9" fill="#27274e" stroke="#ec4899"/>
              <text x="165" y="128">How were the food and the AC?</text>
              <text x="380" y="118" font-size="11" fill="#fcd34d">Two in one</text>
              <rect x="445" y="100" width="300" height="46" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="595" y="119">How satisfied were you with the food?</text>
              <text x="595" y="137" font-size="11" fill="#9b99b8">ask about the AC separately</text>
              <rect x="15" y="160" width="300" height="46" rx="9" fill="#27274e" stroke="#ec4899"/>
              <text x="165" y="188">Rate our transfer SLA.</text>
              <text x="380" y="178" font-size="11" fill="#fcd34d">Jargon</text>
              <rect x="445" y="160" width="300" height="46" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="595" y="179">Was your driver on time for pickup?</text>
              <text x="595" y="197" font-size="11" fill="#9b99b8">the customer's own words</text>
              <rect x="15" y="220" width="300" height="46" rx="9" fill="#27274e" stroke="#ec4899"/>
              <text x="165" y="248">Any comments?</text>
              <text x="380" y="238" font-size="11" fill="#fcd34d">Too vague</text>
              <rect x="445" y="220" width="300" height="46" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="595" y="239">What is one thing we should improve?</text>
              <text x="595" y="257" font-size="11" fill="#9b99b8">asks for one clear thing</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cfa4a)">
                <line x1="325" y1="70" x2="437" y2="70"/>
                <line x1="325" y1="130" x2="437" y2="130"/>
                <line x1="325" y1="190" x2="437" y2="190"/>
                <line x1="325" y1="250" x2="437" y2="250"/>
              </g>
              <text x="380" y="291" font-size="12" fill="#67e8f9">Keep it short: 5 questions, about 2 minutes, open questions optional.</text>
            </g>
          </svg>
          <figcaption>Small wording changes decide whether a question gives honest, useful answers.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Write questions people can answer honestly</h3>
          <p>A good question asks about one thing, in neutral words, in the customer's own language. Here are the most common problems:</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Weak question</th><th>Better question</th></tr></thead>
            <tbody>
              <tr><td><strong>Leading</strong> (pushes people towards one answer)</td><td>How amazing was your houseboat stay?</td><td>How satisfied were you with your houseboat stay?</td></tr>
              <tr><td><strong>Double-barrelled</strong> (two questions in one)</td><td>How were the food and the AC?</td><td>Ask two questions: one about the food, one about the AC.</td></tr>
              <tr><td><strong>Jargon</strong> (words customers do not use)</td><td>Rate our transfer SLA.</td><td>Was your driver on time for pickup?</td></tr>
              <tr><td><strong>Wrong assumption</strong> (not true for everyone)</td><td>How much did you enjoy the tea estate visit?</td><td>Show it only to hill trip guests, or add "I did not visit".</td></tr>
              <tr><td><strong>Too vague</strong></td><td>Any comments?</td><td>What is one thing we should improve?</td></tr>
            </tbody>
          </table>
          <p>Test your survey before you send it. Ask 5 real customers or staff members to answer it while you watch. If anyone asks "What does this mean?", rewrite that question.</p>
        </div>
        <div class="lc-card">
          <h3>Choose the right scale</h3>
          <p>A scale is the set of answers people choose from. Each common score uses its own standard scale:</p>
          <table class="lc-table">
            <thead><tr><th>Scale</th><th>Use it for</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>1 to 5 (1 = very dissatisfied, 5 = very satisfied)</td><td>Satisfaction with one experience (CSAT)</td><td>Overall, how satisfied were you with your trip?</td></tr>
              <tr><td>0 to 10 (0 = not at all likely, 10 = extremely likely)</td><td>Likelihood to recommend (NPS)</td><td>How likely are you to recommend Backwater Trails to a friend or colleague?</td></tr>
              <tr><td>1 to 7 (1 = strongly disagree, 7 = strongly agree)</td><td>How easy a task was (CES)</td><td>"Backwater Trails made it easy for me to book my trip."</td></tr>
              <tr><td>Yes / No</td><td>Simple facts</td><td>Was your driver on time for pickup?</td></tr>
            </tbody>
          </table>
          <p>You will learn to calculate CSAT, NPS and CES in the next lesson. For now, follow these rules:</p>
          <ul class="lc-list">
            <li>Label the ends of every scale in words. Numbers alone are unclear.</li>
            <li>Make high numbers mean "good" on every question. Mixed directions confuse people.</li>
            <li>Add "Not applicable" when a question may not apply to everyone.</li>
            <li>Keep the same scale every month. If you change it, you cannot compare months.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Open questions, short surveys and response rates</h3>
          <p>An <strong>open-ended question</strong> lets customers answer in their own words. Scores tell you "how much". Open answers tell you "why". Use one or two open questions, make them optional, and put them after the scores. Here is Anjali's final survey:</p>
          <pre><code>Backwater Trails: post-trip survey (5 questions, about 2 minutes)

        1. Overall, how satisfied were you with your trip?
           1 = Very dissatisfied ... 5 = Very satisfied
        2. How likely are you to recommend Backwater Trails to a friend
           or colleague?
           0 = Not at all likely ... 10 = Extremely likely
        3. "Backwater Trails made it easy for me to book my trip."
           1 = Strongly disagree ... 7 = Strongly agree
        4. What is one thing we should improve? (optional)
        5. What did you like most? (optional)</code></pre>
          <p>The <strong>response rate</strong> is the share of people who completed the survey, out of everyone who received it. The <strong>completion rate</strong> is the share who finished, out of those who started. In September, 400 guests received the survey, 150 started it and 120 finished it.</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Calculation</th><th>Spreadsheet formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Response rate</td><td>120 ÷ 400</td><td><code>=C2/A2</code></td><td>0.30, shown as 30%</td></tr>
              <tr><td>Completion rate</td><td>120 ÷ 150</td><td><code>=C2/B2</code></td><td>0.80, shown as 80%</td></tr>
            </tbody>
          </table>
          <p>Here, cell A2 holds 400 (received), B2 holds 150 (started) and C2 holds 120 (finished). Format these cells as percentages to show 30% and 80%.</p>
          <p>To get more answers, send the survey soon after the trip and say how long it takes. Keep it mobile-friendly. Send one reminder, and offer the languages your customers use. Telling guests what you changed after last month's feedback also helps. Never give rewards only for high scores.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: good question or problem?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each draft question from Anjali's team.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good question"></div>
              <div data-sorter-target="bucket" data-bucket="leading" data-label="Leading"></div>
              <div data-sorter-target="bucket" data-bucket="double" data-label="Two in one"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="It asks about one thing in neutral words.">How satisfied were you with the houseboat food?</li>
              <li data-bucket="leading" data-why="&quot;Wasn't it wonderful&quot; pushes people to agree.">Wasn't our hill guide wonderful?</li>
              <li data-bucket="double" data-why="A room can be clean but not comfortable. Ask two questions.">How clean and comfortable was your room?</li>
              <li data-bucket="good" data-why="It asks one clear fact in the customer's words.">Was your driver on time for pickup?</li>
              <li data-bucket="leading" data-why="Saying &quot;most guests love it&quot; puts pressure on people to agree.">Most guests love our sunset cruise. Did you?</li>
              <li data-bucket="double" data-why="Booking and payment are two different steps. One may be easy and the other hard.">How easy were booking and payment?</li>
              <li data-bucket="good" data-why="It is open, neutral and asks for one specific thing.">What is one thing we should improve?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to review a weak draft survey and rewrite it. Then check the new version against the rules in this lesson.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a survey design expert. Review this draft post-trip survey for [Backwater Trails, a travel agency in Kerala. Guests answer on their phones through a WhatsApp link].

        Draft survey (or paste [your own draft survey]):
        1. How amazing was your trip with us?
        2. How were the houseboat food and the AC?
        3. Rate our transfer SLA from 1 to 10.
        4. Do you agree that our prices are fair and our staff are helpful?
        5. How much did you enjoy the tea estate visit?
        6. On a scale of 1 to 5 (1 = excellent, 5 = poor), rate the booking process.
        7. Any comments?
        8. Please give your full name, phone number and email.

        Tasks:
        1. For each question, name the problem in plain words.
        2. Rewrite the survey with at most 6 questions. Include one 1 to 5 satisfaction question, one 0 to 10 recommend question, one 1 to 7 ease question and one optional open question.
        3. Label the ends of every scale. Make high numbers mean good on every scale.
        4. Estimate how long it takes and write a friendly WhatsApp invite (under 40 words).
        5. Explain what you removed and why.</pre>
            <ul class="ai-try-checks">
              <li>Questions 2 and 4 are split or cut, because each asks two things.</li>
              <li>The reversed scale in question 6 is fixed, so 5 means good.</li>
              <li>The tea estate question is only for hill trip guests or has a "did not visit" option.</li>
              <li>Question 8 is removed, because the business already knows who the guest is. No personal data is asked for without a reason.</li>
              <li>The new survey has 6 questions or fewer, and the invite says how long it takes.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good analysis starts with good questions. Ask one thing at a time, in neutral words, on a clearly labelled scale. Keep surveys short, and add one open question to learn why people gave their score.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">CSAT, NPS and CES</h1>
        </div>
        <p class="lc-lead">Three scores are used everywhere in customer experience: CSAT, NPS and CES. Each one asks a different question and uses a different formula. Teams often calculate them wrongly, and then make decisions on wrong numbers. In this lesson you will learn what each score means and what it is good for. You will calculate each one by hand and in a spreadsheet. You will use Anjali's September survey results from Backwater Trails.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three score cards for Backwater Trails in September 2026. CSAT: how satisfied were you, scale 1 to 5, 4s and 5s divided by answers, 90 divided by 120 equals 75 percent. NPS: how likely to recommend us, scale 0 to 10, percent of 9 and 10 minus percent of 0 to 6, 45 percent minus 20 percent equals plus 25. CES: it was easy to book my trip, scale 1 to 7, 5s, 6s and 7s divided by answers, 84 divided by 116 equals 72 percent.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="12" width="236" height="276" rx="12" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="133" y="42" font-size="18" font-weight="700" fill="#67e8f9">CSAT</text>
              <text x="133" y="62" font-size="11" fill="#9b99b8">Customer Satisfaction Score</text>
              <line x1="35" y1="74" x2="231" y2="74" stroke="#4b4a78"/>
              <text x="133" y="96" font-size="11" fill="#9b99b8">Question</text>
              <text x="133" y="116">How satisfied were you?</text>
              <text x="133" y="138" font-size="11" fill="#9b99b8">Scale: 1 to 5</text>
              <text x="133" y="168">(4s + 5s) ÷ answers</text>
              <text x="133" y="190" fill="#9b99b8">90 ÷ 120</text>
              <text x="133" y="234" font-size="30" font-weight="700" fill="#67e8f9">75%</text>
              <text x="133" y="270" font-size="11" fill="#9b99b8">Good for: one moment, like a trip</text>
              <rect x="262" y="12" width="236" height="276" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="42" font-size="18" font-weight="700" fill="#c4b5fd">NPS</text>
              <text x="380" y="62" font-size="11" fill="#9b99b8">Net Promoter Score</text>
              <line x1="282" y1="74" x2="478" y2="74" stroke="#4b4a78"/>
              <text x="380" y="96" font-size="11" fill="#9b99b8">Question</text>
              <text x="380" y="116">How likely to recommend us?</text>
              <text x="380" y="138" font-size="11" fill="#9b99b8">Scale: 0 to 10</text>
              <text x="380" y="168">% of 9–10 minus % of 0–6</text>
              <text x="380" y="190" fill="#9b99b8">45% − 20%</text>
              <text x="380" y="234" font-size="30" font-weight="700" fill="#c4b5fd">+25</text>
              <text x="380" y="270" font-size="11" fill="#9b99b8">Good for: loyalty, word of mouth</text>
              <rect x="509" y="12" width="236" height="276" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="627" y="42" font-size="18" font-weight="700" fill="#fcd34d">CES</text>
              <text x="627" y="62" font-size="11" fill="#9b99b8">Customer Effort Score</text>
              <line x1="529" y1="74" x2="725" y2="74" stroke="#4b4a78"/>
              <text x="627" y="96" font-size="11" fill="#9b99b8">Statement</text>
              <text x="627" y="116">It was easy to book my trip.</text>
              <text x="627" y="138" font-size="11" fill="#9b99b8">Scale: 1 to 7 (agree)</text>
              <text x="627" y="168">(5s + 6s + 7s) ÷ answers</text>
              <text x="627" y="190" fill="#9b99b8">84 ÷ 116</text>
              <text x="627" y="234" font-size="30" font-weight="700" fill="#fcd34d">72%</text>
              <text x="627" y="270" font-size="11" fill="#9b99b8">Good for: effort of one task</text>
            </g>
          </svg>
          <figcaption>Anjali's September 2026 results. Each score has its own question, scale and formula.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three scores, three questions</h3>
          <table class="lc-table">
            <thead><tr><th>Score</th><th>Question</th><th>Scale</th><th>Formula</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><strong>CSAT</strong> (Customer Satisfaction Score)</td><td>Overall, how satisfied were you with your trip?</td><td>1 to 5</td><td>Number of 4s and 5s ÷ number of answers × 100</td><td>One moment: a trip, a support chat, a delivery</td></tr>
              <tr><td><strong>NPS</strong> (Net Promoter Score)</td><td>How likely are you to recommend us to a friend or colleague?</td><td>0 to 10</td><td>% promoters (9 or 10) − % detractors (0 to 6)</td><td>Overall loyalty and word of mouth</td></tr>
              <tr><td><strong>CES</strong> (Customer Effort Score)</td><td>"Backwater Trails made it easy for me to book my trip."</td><td>1 to 7, disagree to agree</td><td>Number of 5s, 6s and 7s ÷ number of answers × 100</td><td>How easy one task was: booking, paying, getting a refund</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>NPS groups:</strong> promoters answer 9 or 10. Passives answer 7 or 8. Detractors answer 0 to 6. Passives count in the total, but not in the formula.</li>
            <li><strong>NPS is a number, not a percentage.</strong> It goes from −100 (everyone is a detractor) to +100 (everyone is a promoter).</li>
            <li><strong>CES has several versions.</strong> Some teams use a 1 to 5 "How easy was it?" scale, or report the average. Choose one version and keep it every month.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: Anjali's September survey</h3>
          <p>120 guests answered the survey. Here are the CSAT answers:</p>
          <table class="lc-table">
            <thead><tr><th>Score</th><th>5</th><th>4</th><th>3</th><th>2</th><th>1</th><th>Total</th></tr></thead>
            <tbody><tr><td>Guests</td><td>50</td><td>40</td><td>15</td><td>9</td><td>6</td><td>120</td></tr></tbody>
          </table>
          <p>Here are the NPS answers, grouped:</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Scores</th><th>Guests</th><th>Share of 120</th></tr></thead>
            <tbody>
              <tr><td>Promoters</td><td>10 (30 guests), 9 (24 guests)</td><td>54</td><td>45%</td></tr>
              <tr><td>Passives</td><td>8 (26 guests), 7 (16 guests)</td><td>42</td><td>35%</td></tr>
              <tr><td>Detractors</td><td>0 to 6</td><td>24</td><td>20%</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>120</strong></td><td><strong>100%</strong></td></tr>
            </tbody>
          </table>
          <p>For CES, 116 guests answered and 4 skipped. 34 chose 7, 30 chose 6 and 20 chose 5.</p>
          <pre><code>CSAT = (50 + 40) ÷ 120 × 100 = 90 ÷ 120 × 100 = 75%

        NPS  = 54 ÷ 120 = 45% promoters
               24 ÷ 120 = 20% detractors
               45 − 20  = +25

        CES  = (34 + 30 + 20) ÷ 116 × 100 = 84 ÷ 116 × 100 = 72.4%, about 72%
               (use 116, not 120: only count people who answered)</code></pre>
          <p>Read them together. Most guests were satisfied (CSAT 75%). Almost half would recommend Backwater Trails (NPS +25). But 28% did not agree that booking was easy. The open comments point to slow WhatsApp replies and missing payment confirmations.</p>
        </div>
        <div class="lc-card">
          <h3>Calculate the scores in a spreadsheet</h3>
          <p>Anjali's sheet has one row per response, in rows 2 to 121. Column B has the CSAT score, column C the NPS score and column D the CES score. Skipped CES answers are left empty. These formulas work in Google Sheets and Excel:</p>
          <table class="lc-table">
            <thead><tr><th>What</th><th>Formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>CSAT</td><td><code>=COUNTIF(B2:B121,"&gt;=4")/COUNT(B2:B121)</code></td><td>0.75 (75%)</td></tr>
              <tr><td>% promoters</td><td><code>=COUNTIF(C2:C121,"&gt;=9")/COUNT(C2:C121)</code></td><td>0.45 (45%)</td></tr>
              <tr><td>% detractors</td><td><code>=COUNTIF(C2:C121,"&lt;=6")/COUNT(C2:C121)</code></td><td>0.20 (20%)</td></tr>
              <tr><td>NPS</td><td><code>=ROUND((COUNTIF(C2:C121,"&gt;=9")-COUNTIF(C2:C121,"&lt;=6"))/COUNT(C2:C121)*100,0)</code></td><td>25</td></tr>
              <tr><td>CES (% agree)</td><td><code>=COUNTIF(D2:D121,"&gt;=5")/COUNT(D2:D121)</code></td><td>0.7241 (72%)</td></tr>
              <tr><td>CES (average, if your team uses it)</td><td><code>=AVERAGE(D2:D121)</code></td><td>5.28</td></tr>
            </tbody>
          </table>
          <p><code>COUNT</code> counts only cells that contain numbers. So empty cells are left out, and CES divides by 116. But if someone types 0 for a skipped answer, it counts as an answer and gives a wrong result. Keep skipped cells empty.</p>
          <p>Let the spreadsheet do the maths. AI chat tools can miscount long lists of numbers. Use AI to explain the results or to check your formulas.</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li><strong>Averaging NPS answers.</strong> The average of Anjali's 0 to 10 answers is 7.9. That is not NPS. Her NPS is +25.</li>
            <li><strong>Putting 7 and 8 in the wrong group.</strong> They are passives. They are not promoters or detractors.</li>
            <li><strong>Writing NPS as a percentage.</strong> Write "NPS +25", not "25%".</li>
            <li><strong>Using the wrong total.</strong> CES uses the 116 people who answered it, not all 120.</li>
            <li><strong>Trusting small groups.</strong> Hill trips had only 25 responses. One guest changes a hill trip percentage by 4 points (1 ÷ 25 = 4%). Always show the number of responses next to the score.</li>
            <li><strong>Comparing with numbers found online.</strong> Other companies ask different questions at different times. Compare with your own past months instead.</li>
          </ul>
          <p>A score tells you "how much". The comments tell you "why". Read the open answers from detractors first. They show what to fix.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Anjali calculates NPS</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Anjali">She pastes the 120 "recommend" scores into an AI chat and asks, "What is our NPS?"</li>
              <li data-kind="answer" data-label="AI">"Your NPS is 7.9 out of 10. This is a good score."</li>
              <li data-kind="warn" data-label="Wrong method">7.9 is the average score. NPS is the share of promoters minus the share of detractors. The AI used the wrong formula.</li>
              <li data-kind="tool" data-label="Spreadsheet">She adds COUNTIF formulas for scores of 9 to 10, 7 to 8, and 0 to 6.</li>
              <li data-kind="result" data-label="Counts">Promoters 54, passives 42, detractors 24.</li>
              <li data-kind="check" data-label="Anjali checks">54 + 42 + 24 = 120, so no answer is missing. 54 ÷ 120 = 45%. 24 ÷ 120 = 20%.</li>
              <li data-kind="check" data-label="Result">NPS = 45 − 20 = +25. She writes it as a number, not a percentage.</li>
              <li data-kind="user" data-label="Anjali">"Explain NPS +25 to the team in two simple sentences. Do not change any numbers."</li>
              <li data-kind="answer" data-label="AI">"45% of guests would recommend us, and 20% would not. That gives an NPS of +25, which we will compare with next month."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to calculate all three scores from 20 sample answers and give the formulas. Then check its counts yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer experience analyst. Calculate CSAT, NPS and CES for [Backwater Trails, a travel agency in Kerala] from the 20 survey answers below. (Replace them with [your own scores] if you have them.)

        CSAT (1 to 5): 5,5,4,5,3,4,5,5,2,4,5,5,3,4,4,5,4,3,5,5
        NPS (0 to 10): 10,9,8,10,6,7,9,10,3,8,9,10,5,7,9,10,8,6,10,9
        CES (1 to 7, "-" = skipped): 7,6,5,7,3,5,6,7,2,-,6,7,4,5,6,-,5,4,7,6

        Rules:
        - CSAT = share of answers that are 4 or 5.
        - NPS = % promoters (9 or 10) minus % detractors (0 to 6). Write it as a number, not a percentage.
        - CES = share of 5, 6 and 7, out of the people who answered. Also give the average.

        Tasks:
        1. Show the counts for each group, then each calculation step by step.
        2. Give Google Sheets formulas. The data is in B2:B21 (CSAT), C2:C21 (NPS) and D2:D21 (CES). Skipped cells are empty.
        3. Explain what each score means for the team, in one sentence each.
        4. Add one warning about drawing conclusions from only 20 answers.</pre>
            <ul class="ai-try-checks">
              <li>CSAT is 80% (16 of 20 answers are 4 or 5).</li>
              <li>NPS is +35: 11 promoters, 5 passives and 4 detractors (55% − 20%).</li>
              <li>CES uses 18 answers, not 20: 14 of 18 = 77.8%, and the average is 5.4.</li>
              <li>The formulas use COUNTIF and COUNT, not the average, for NPS.</li>
              <li>The warning says one answer moves a score by 5 points (1 ÷ 20).</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> CSAT measures one moment, NPS measures loyalty and CES measures effort. Use the right formula and the right total for each. Always show the number of responses, let the spreadsheet do the maths, and read the comments to learn why.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Preparing Feedback Data</h1>
        </div>
        <p class="lc-lead">AI finds better patterns in clean data. If your feedback sits in four exports with different columns, duplicates and phone numbers, the results will be messy and unsafe. In this lesson you will combine feedback from four sources into one sheet. You will clean it, remove personal data and pick a fair sample to check by hand. You will follow Anjali as she prepares the September feedback for Backwater Trails.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Anjali's data preparation for September 2026. Four raw exports: survey 120 rows, Google reviews 64 rows, WhatsApp 212 rows and tickets 101 rows. Step 1: combine into one sheet of 497 rows with IDs. Step 2: clean, removing 37 rows. Step 3: mask personal data with tags. Step 4: check counts, 120 plus 64 plus 180 plus 96 equals 460 items. Step 5: pick a random sample of 50. Step 6: send to an approved AI tool. The sample of 50 has 13 survey items, 7 Google reviews, 20 WhatsApp messages and 10 tickets.">
            <defs><marker id="cfa6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="22" text-anchor="start" font-weight="700" fill="#67e8f9">Anjali's data preparation, September 2026</text>
              <rect x="12" y="40" width="150" height="38" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="87" y="56" font-weight="700">Survey</text>
              <text x="87" y="71" font-size="11" fill="#9b99b8">120 rows</text>
              <rect x="12" y="86" width="150" height="38" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="87" y="102" font-weight="700">Google reviews</text>
              <text x="87" y="117" font-size="11" fill="#9b99b8">64 rows</text>
              <rect x="12" y="132" width="150" height="38" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="87" y="148" font-weight="700">WhatsApp</text>
              <text x="87" y="163" font-size="11" fill="#9b99b8">212 rows</text>
              <rect x="12" y="178" width="150" height="38" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="87" y="194" font-weight="700">Tickets</text>
              <text x="87" y="209" font-size="11" fill="#9b99b8">101 rows</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="162" y1="59" x2="172" y2="59"/>
                <line x1="162" y1="105" x2="172" y2="105"/>
                <line x1="162" y1="151" x2="172" y2="151"/>
                <line x1="162" y1="197" x2="172" y2="197"/>
                <line x1="172" y1="59" x2="172" y2="197"/>
              </g>
              <rect x="190" y="40" width="170" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="275" y="62" font-weight="700">1. Combine</text>
              <text x="275" y="80" font-size="11" fill="#9b99b8">497 rows, one sheet</text>
              <text x="275" y="96" font-size="11" fill="#9b99b8">IDs S-, G-, W-, T-</text>
              <rect x="385" y="40" width="170" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="470" y="62" font-weight="700">2. Clean</text>
              <text x="470" y="80" font-size="11" fill="#9b99b8">37 rows removed</text>
              <text x="470" y="96" font-size="11" fill="#9b99b8">duplicates, empty, tests</text>
              <rect x="580" y="40" width="168" height="64" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="664" y="62" font-weight="700">3. Mask personal data</text>
              <text x="664" y="80" font-size="11" fill="#9b99b8">[NAME], [PHONE], [HEALTH]</text>
              <text x="664" y="96" font-size="11" fill="#9b99b8">private key sheet</text>
              <rect x="580" y="150" width="168" height="64" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="664" y="172" font-weight="700">4. Check counts</text>
              <text x="664" y="190" font-size="11" fill="#9b99b8">120 + 64 + 180 + 96</text>
              <text x="664" y="206" font-size="11" fill="#9b99b8">= 460 items</text>
              <rect x="385" y="150" width="170" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="470" y="172" font-weight="700">5. Pick a sample</text>
              <text x="470" y="190" font-size="11" fill="#9b99b8">50 items, random</text>
              <text x="470" y="206" font-size="11" fill="#9b99b8">split by source</text>
              <rect x="190" y="150" width="170" height="64" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="275" y="172" font-weight="700">6. Send to AI</text>
              <text x="275" y="190" font-size="11" fill="#9b99b8">approved tool only</text>
              <text x="275" y="206" font-size="11" fill="#9b99b8">to find themes</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cfa6a)">
                <line x1="172" y1="72" x2="186" y2="72"/>
                <line x1="362" y1="72" x2="381" y2="72"/>
                <line x1="557" y1="72" x2="576" y2="72"/>
                <line x1="664" y1="106" x2="664" y2="146"/>
                <line x1="578" y1="182" x2="559" y2="182"/>
                <line x1="383" y1="182" x2="364" y2="182"/>
                <line x1="470" y1="216" x2="470" y2="240"/>
              </g>
              <text x="12" y="262" text-anchor="start" font-weight="700" fill="#6ee7b7">Hand-check sample</text>
              <text x="12" y="279" text-anchor="start" font-size="11" fill="#9b99b8">50 of 460 items</text>
              <rect x="190" y="244" width="146" height="40" fill="#27274e" stroke="#22d3ee"/>
              <text x="263" y="269" font-size="12">Survey 13</text>
              <rect x="336" y="244" width="78" height="40" fill="#27274e" stroke="#f59e0b"/>
              <text x="375" y="269" font-size="12">Google 7</text>
              <rect x="414" y="244" width="224" height="40" fill="#27274e" stroke="#10b981"/>
              <text x="526" y="269" font-size="12">WhatsApp 20</text>
              <rect x="638" y="244" width="110" height="40" fill="#27274e" stroke="#ec4899"/>
              <text x="693" y="269" font-size="12">Tickets 10</text>
            </g>
          </svg>
          <figcaption>Six steps turn 497 raw rows into 460 clean, safe items and a fair sample of 50 for checking AI's work. Anjali keeps an untouched copy of every raw export.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: combine every source into one sheet</h3>
          <p>Anjali exports each source. She downloads the survey answers from the form tool, the Google reviews, the WhatsApp chats and the tickets from the helpdesk tool. Each export has different columns. She copies them all into one sheet with the same columns.</p>
          <p>First, she saves an untouched copy of every raw export. If a cleaning step goes wrong, she can start again.</p>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>Example</th><th>Why you need it</th></tr></thead>
            <tbody>
              <tr><td><strong>A. ID</strong></td><td>W-017</td><td>A short code for each item. S = survey, G = Google review, W = WhatsApp, T = ticket. You use it to check any quote or count.</td></tr>
              <tr><td><strong>B. Source</strong></td><td>WhatsApp</td><td>Each source has its own bias, so you must report sources separately.</td></tr>
              <tr><td><strong>C. Date</strong></td><td>2026-09-14</td><td>To compare weeks and months.</td></tr>
              <tr><td><strong>D. Trip type</strong></td><td>Houseboat</td><td>Houseboat, Hills, Combo or Unknown.</td></tr>
              <tr><td><strong>E. Language</strong></td><td>Hindi</td><td>To check translations and see who you hear from.</td></tr>
              <tr><td><strong>F. Rating</strong></td><td>4</td><td>Survey CSAT or Google stars (1 to 5). Empty for WhatsApp and tickets.</td></tr>
              <tr><td><strong>G. Text</strong></td><td>AC off in the afternoon, very hot.</td><td>The customer's exact words, after personal data is removed.</td></tr>
              <tr><td><strong>H, I. Themes, sentiment</strong></td><td>T5 / negative</td><td>Filled in later, by AI and checked by you.</td></tr>
            </tbody>
          </table>
          <p>CSAT and Google stars both use 1 to 5, but they answer different questions. Keep the Source column next to them, and never average them together.</p>
          <p>The raw exports have 497 rows: 120 survey answers, 64 Google reviews, 212 WhatsApp messages and 101 tickets.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: clean the rows</h3>
          <table class="lc-table">
            <thead><tr><th>Cleaning step</th><th>Example</th><th>Rows removed</th></tr></thead>
            <tbody>
              <tr><td>Remove exact duplicates</td><td>The same WhatsApp message sent twice. One problem opened as two tickets.</td><td>6 WhatsApp + 3 tickets = 9</td></tr>
              <tr><td>Remove messages with no feedback</td><td>"ok", "thanks", a single 👍</td><td>22 WhatsApp</td></tr>
              <tr><td>Remove items not about a trip</td><td>A job enquiry, a wrong number, test tickets made by staff</td><td>4 WhatsApp + 2 tickets = 6</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>37</strong></td></tr>
            </tbody>
          </table>
          <p>497 − 37 = 460 items. WhatsApp: 212 − 6 − 22 − 4 = 180. Tickets: 101 − 3 − 2 = 96. Survey answers and reviews stay at 120 and 64.</p>
          <p>Some fixes change rows but remove nothing:</p>
          <ul class="lc-list">
            <li><strong>One date format.</strong> Use year-month-day, like 2026-09-14. Mixed formats like 14/09 and "Sep 14" sort wrongly.</li>
            <li><strong>Same labels.</strong> "HB", "house boat" and "Houseboat" all become Houseboat. Otherwise one trip type looks like three.</li>
            <li><strong>Extra spaces.</strong> Use the <code>TRIM</code> function, or a trim tool in your spreadsheet's data menu.</li>
            <li><strong>Voice notes.</strong> 14 WhatsApp voice notes were turned into text with speech-to-text. A person listened to each one to check the text.</li>
            <li><strong>Scores with no comment.</strong> 11 survey rows have scores but no comment. Keep them, because the scores still count. Write "No comment" in the Text column, so AI does not invent a theme.</li>
            <li><strong>Keep the customer's exact words.</strong> Do not fix grammar or translate in the Text column. Put translations in a new column.</li>
            <li><strong>Keep rude and very negative messages.</strong> They are feedback too.</li>
          </ul>
          <p>Most spreadsheets have a "Remove duplicates" tool in the Data menu. Menu names change, so check your tool's help pages. Then check your totals with formulas:</p>
          <pre><code>=COUNTA(A2:A461)                  → 460 (all items)
        =COUNTIF(B2:B461,"WhatsApp")      → 180
        =COUNTIF(B2:B461,"Ticket")        → 96</code></pre>
        </div>
        <div class="lc-card">
          <h3>Step 3: remove personal data before AI sees it</h3>
          <p>Personal data is any detail that can identify a person. Remove it before you paste feedback into any AI tool. Use only AI tools your company has approved for customer data. In India, the Digital Personal Data Protection Act, 2023 (DPDP Act) sets rules for how businesses use personal data. Ask your company's legal or privacy team what applies to you. This is general information, not legal advice.</p>
          <table class="lc-table">
            <thead><tr><th>Personal data</th><th>Made-up example</th><th>Replace with</th></tr></thead>
            <tbody>
              <tr><td>Customer names</td><td>"Hi, this is Rahul Nair"</td><td>[NAME]</td></tr>
              <tr><td>Phone numbers and emails</td><td>98765 43210, anu.r@example.com</td><td>[PHONE], [EMAIL]</td></tr>
              <tr><td>Booking IDs</td><td>BT-2026-0917</td><td>[BOOKING]</td></tr>
              <tr><td>Payment details</td><td>UPI ID, UPI transaction number</td><td>[PAYMENT]</td></tr>
              <tr><td>Health and family details</td><td>"My father has a heart problem"</td><td>[HEALTH]</td></tr>
              <tr><td>Staff names</td><td>"Driver Biju was rude"</td><td>[STAFF]</td></tr>
            </tbody>
          </table>
          <p>Feedback about a named staff member goes to their manager in private. It does not go into AI prompts or team reports.</p>
          <p>Anjali keeps a private "key" sheet. It links each item ID to the booking ID and phone number. Only two people can open it. She needs it later to reply to guests.</p>
          <p>A formula can mask most phone numbers. In Google Sheets, this replaces 10 digits, with or without a space in the middle:</p>
          <pre><code>=REGEXREPLACE(G2,"[0-9]{5} ?[0-9]{5}","[PHONE]")</code></pre>
          <p>Formulas miss names, addresses and health details. So a person still reads the text before it goes to AI.</p>
          <p><strong>Warning:</strong> do not paste raw feedback into a public AI tool and ask it to remove personal data. By then, you have already shared the data.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: pick a fair sample to check by hand</h3>
          <p>A sample is a small group of items that you read closely. Later in this course, you use it to check AI's themes and sentiment labels. A good sample is random, so you do not pick only the interesting items. It also includes every source.</p>
          <p>Anjali picks 50 of the 460 items. She splits them in the same shares as the sources. This is called a stratified sample.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Items</th><th>Calculation</th><th>In sample</th></tr></thead>
            <tbody>
              <tr><td>Survey</td><td>120</td><td>120 ÷ 460 × 50 = 13.0</td><td>13</td></tr>
              <tr><td>Google reviews</td><td>64</td><td>64 ÷ 460 × 50 = 7.0</td><td>7</td></tr>
              <tr><td>WhatsApp</td><td>180</td><td>180 ÷ 460 × 50 = 19.6</td><td>20</td></tr>
              <tr><td>Tickets</td><td>96</td><td>96 ÷ 460 × 50 = 10.4</td><td>10</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>460</strong></td><td></td><td><strong>50</strong></td></tr>
            </tbody>
          </table>
          <ol class="lc-list">
            <li>Add a helper column with <code>=RAND()</code>. It gives each row a random number between 0 and 1.</li>
            <li>Copy the column and paste it as values only. <code>RAND()</code> changes every time the sheet changes.</li>
            <li>Sort by Source, then by the random number.</li>
            <li>Take the first 13 survey rows, 7 review rows, 20 WhatsApp rows and 10 ticket rows.</li>
          </ol>
          <p>A random sample can miss rare items. So also read every urgent item (safety, health, refunds). Read every item in a small group too, such as the 12 Tamil messages.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put Anjali's steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Anjali's data preparation steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Export each source and save an untouched copy of the raw files.</li>
              <li data-order="2">Copy all rows into one sheet with the same columns, and give each row an ID.</li>
              <li data-order="3">Remove duplicates, messages with no feedback and items not about a trip.</li>
              <li data-order="4">Replace names, phone numbers, payment details and health details with tags.</li>
              <li data-order="5">Check the counts per source with COUNTIF: 120, 64, 180 and 96.</li>
              <li data-order="6">Pick a random sample of 50 items, split by source, for a hand check.</li>
              <li data-order="7">Paste the clean items into an approved AI tool to find themes.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to clean nine messy, made-up rows. Then check that it removed the right rows, masked every piece of personal data and kept the customers' words. R7 is a made-up Hindi sentence in English letters. A native speaker should check it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a data assistant for [Backwater Trails, a travel agency in Kerala]. Clean these made-up rows (or [your own anonymised rows], never real customer data).

        Rows (ID | source | date | trip | text):
        R1 | WhatsApp | 14/09/2026 | HB | Hi this is Rahul, AC off in the afternoon. Call 98765 43210
        R2 | WhatsApp | 14/09/2026 | HB | Hi this is Rahul, AC off in the afternoon. Call 98765 43210
        R3 | WhatsApp | 15-09-2026 | Hills | ok thanks
        R4 | Ticket | 2026-09-16 | house boat | Refund for BT-2026-0917 not received. UPI ref 452198761234
        R5 | Google | Sep 17 2026 | Combo | Driver Biju was 40 min late at the railway station.
        R6 | Survey | 18/09/2026 | Hills | No hot water. My mother has knee pain, the stairs were hard.
        R7 | WhatsApp | 19/09/2026 | Houseboat | Hamein pehle nahi bataya ki AC sirf raat mein chalega.
        R8 | Ticket | 20/09/2026 | Houseboat | Test ticket, please ignore
        R9 | Survey | 21/09/2026 | Combo | (no comment, scores only)

        Tasks:
        1. Remove duplicates, rows with no feedback and rows not about a trip. Give the reason for each.
        2. Replace personal data with tags: [NAME], [PHONE], [BOOKING], [PAYMENT], [HEALTH], [STAFF].
        3. Use one date format (YYYY-MM-DD) and one trip label (Houseboat, Hills or Combo).
        4. Add a Language column. Do not translate or change the customer's words.
        5. Show the clean table, then list every change you made.</pre>
            <ul class="ai-try-checks">
              <li>R2 is removed as a duplicate of R1. R3 and R8 are removed, each with a reason.</li>
              <li>Rahul, the phone number, the booking ID, the UPI number, "Biju" and the knee pain detail are all replaced with tags.</li>
              <li>All dates are YYYY-MM-DD, and "HB" and "house boat" became Houseboat.</li>
              <li>R7 keeps its exact Hindi words, with the language marked as Hindi.</li>
              <li>R9 is kept, because its scores still count. It is not deleted as "no feedback".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clean data comes before clever analysis. Put every source in one sheet with IDs, remove duplicates and personal data, and check your counts. Keep the customer's exact words, and pick a random sample so you can check AI's work later.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Finding Themes with AI</h1>
        </div>
        <p class="lc-lead">Themes tell you what customers talk about most. In this lesson you will build a theme list and ask AI to code every comment with it. Coding means giving each comment one or more theme labels, called codes. Then you count the codes in a spreadsheet. Most important, you will check AI's codes against a sample you coded by hand. This check tells you if you can trust the counts.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Four steps: build a theme list T1 to T9 plus Other; code 50 sample items by hand first; let AI code the same 50 items; compare, 84 percent agreement at first and 94 percent after fixing the theme list. Below, a bar chart of mentions per theme in the sample, hand versus AI first run. T1 10 and 10, T2 8 and 8, T3 8 and 9, T4 pickup 6 and 9 so AI is too high, T5 AC hours 5 and 3 so AI is too low, T6 4 and 4, T7 3 and 2, T8 3 and 3, T9 2 and 1, Other 3 and 1.">
            <defs><marker id="cfa7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="30" width="166" height="54" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="95" y="53" font-weight="700">1. Theme list</text>
              <text x="95" y="72" font-size="11" fill="#9b99b8">T1 to T9 + Other</text>
              <rect x="202" y="30" width="166" height="54" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="285" y="53" font-weight="700">2. You code 50</text>
              <text x="285" y="72" font-size="11" fill="#9b99b8">by hand, first</text>
              <rect x="392" y="30" width="166" height="54" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="475" y="53" font-weight="700">3. AI codes 50</text>
              <text x="475" y="72" font-size="11" fill="#9b99b8">the same items</text>
              <rect x="582" y="30" width="166" height="54" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="53" font-weight="700">4. Compare</text>
              <text x="665" y="72" font-size="11" fill="#9b99b8">84%, then 94%</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cfa7a)">
                <line x1="180" y1="57" x2="198" y2="57"/>
                <line x1="370" y1="57" x2="388" y2="57"/>
                <line x1="560" y1="57" x2="578" y2="57"/>
              </g>
              <text x="12" y="112" text-anchor="start" font-weight="700" fill="#67e8f9">Sample of 50 items: mentions per theme</text>
              <rect x="520" y="102" width="12" height="12" fill="#22d3ee"/>
              <text x="538" y="112" text-anchor="start" font-size="12">Hand</text>
              <rect x="600" y="102" width="12" height="12" fill="#8b5cf6"/>
              <text x="618" y="112" text-anchor="start" font-size="12">AI first run</text>
              <line x1="55" y1="300" x2="745" y2="300" stroke="#4b4a78"/>
              <g fill="#22d3ee">
                <rect x="70" y="150" width="22" height="150"/>
                <rect x="138" y="180" width="22" height="120"/>
                <rect x="206" y="180" width="22" height="120"/>
                <rect x="274" y="210" width="22" height="90"/>
                <rect x="342" y="225" width="22" height="75"/>
                <rect x="410" y="240" width="22" height="60"/>
                <rect x="478" y="255" width="22" height="45"/>
                <rect x="546" y="255" width="22" height="45"/>
                <rect x="614" y="270" width="22" height="30"/>
                <rect x="682" y="255" width="22" height="45"/>
              </g>
              <g fill="#8b5cf6">
                <rect x="96" y="150" width="22" height="150"/>
                <rect x="164" y="180" width="22" height="120"/>
                <rect x="232" y="165" width="22" height="135"/>
                <rect x="300" y="165" width="22" height="135"/>
                <rect x="368" y="255" width="22" height="45"/>
                <rect x="436" y="240" width="22" height="60"/>
                <rect x="504" y="270" width="22" height="30"/>
                <rect x="572" y="255" width="22" height="45"/>
                <rect x="640" y="285" width="22" height="15"/>
                <rect x="708" y="285" width="22" height="15"/>
              </g>
              <g font-size="10" fill="#e2e0f0">
                <text x="81" y="145">10</text><text x="107" y="145">10</text>
                <text x="149" y="175">8</text><text x="175" y="175">8</text>
                <text x="217" y="175">8</text><text x="243" y="160">9</text>
                <text x="285" y="205">6</text><text x="311" y="160">9</text>
                <text x="353" y="220">5</text><text x="379" y="250">3</text>
                <text x="421" y="235">4</text><text x="447" y="235">4</text>
                <text x="489" y="250">3</text><text x="515" y="265">2</text>
                <text x="557" y="250">3</text><text x="583" y="250">3</text>
                <text x="625" y="265">2</text><text x="651" y="280">1</text>
                <text x="693" y="250">3</text><text x="719" y="280">1</text>
              </g>
              <text x="298" y="140" font-size="11" font-weight="700" fill="#f9a8d4">AI too high</text>
              <text x="366" y="200" font-size="11" font-weight="700" fill="#fcd34d">AI too low</text>
              <g font-size="12" fill="#9b99b8">
                <text x="94" y="318">T1</text><text x="162" y="318">T2</text><text x="230" y="318">T3</text>
                <text x="298" y="318">T4</text><text x="366" y="318">T5</text><text x="434" y="318">T6</text>
                <text x="502" y="318">T7</text><text x="570" y="318">T8</text><text x="638" y="318">T9</text>
                <text x="706" y="318">Other</text>
              </g>
            </g>
          </svg>
          <figcaption>Overall agreement was 84%, but the bars show the real problem. AI counted too many pickup items (T4) and too few AC hours items (T5).</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Build a theme list first</h3>
          <p>Do not ask AI for "the main themes" and use the first answer. Each run can give different themes, so you cannot compare months. Build a fixed theme list (also called a codebook) in two steps:</p>
          <ol class="lc-list">
            <li>Ask AI to suggest themes from a random sample of about 80 items.</li>
            <li>Edit the list yourself. Merge themes that mean the same thing. Split themes that need different fixes. Give each theme a code, a definition and clear rules.</li>
          </ol>
          <p>Here is Anjali's final theme list, with the checked counts for all 460 items in September:</p>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Theme</th><th>Include</th><th>Not this</th><th>Mentions</th></tr></thead>
            <tbody>
              <tr><td>T1</td><td>Booking and payment on WhatsApp</td><td>Slow replies before the trip, UPI advance, no written confirmation</td><td>Refund after a cancellation (T7)</td><td>88</td></tr>
              <tr><td>T2</td><td>Houseboat food and cook</td><td>Meals, taste, the cook, karimeen fry</td><td>Hill hotel food (T8)</td><td>76</td></tr>
              <tr><td>T3</td><td>Crew, guide and staff</td><td>Friendliness, help, guide knowledge</td><td>Slow WhatsApp replies (T1)</td><td>72</td></tr>
              <tr><td>T4</td><td>Pickup and transfers</td><td>Late drivers at the airport or station, driver did not know the hotel</td><td>Driving during sightseeing (T9)</td><td>54</td></tr>
              <tr><td>T5</td><td>Houseboat AC hours</td><td>AC only 9 pm to 6 am, hot afternoons, guests not told</td><td>A generator fault at night (Other)</td><td>47</td></tr>
              <tr><td>T6</td><td>Price and hidden charges</td><td>₹1,500 day-time AC, hill sight entry tickets not included</td><td>Refund amounts (T7)</td><td>41</td></tr>
              <tr><td>T7</td><td>Refunds and cancellations</td><td>Monsoon cancellations, slow refunds</td><td></td><td>29</td></tr>
              <tr><td>T8</td><td>Hill hotel quality</td><td>Hot water, room cleaning, hotel food</td><td></td><td>26</td></tr>
              <tr><td>T9</td><td>Itinerary and timing</td><td>Long drives, rushed hill day, too little time at a stop</td><td></td><td>22</td></tr>
              <tr><td>Other</td><td>Fits no theme</td><td>Anything else</td><td>Do not force an item into a theme</td><td>18</td></tr>
            </tbody>
          </table>
          <p>Rules: one item can have up to two codes. A ₹1,500 day-time AC charge gets both T5 and T6. Keep the same list every month. Add a new theme only when you see a new topic many times.</p>
        </div>
        <div class="lc-card">
          <h3>Ask AI to code every item</h3>
          <p>Here is a weak prompt:</p>
          <pre><code>What are the main themes in these comments?</code></pre>
          <p>The AI invents its own themes, gives no IDs, and its counts cannot be checked. Here is a better prompt:</p>
          <pre><code>You are coding customer feedback for Backwater Trails.
        Use ONLY the theme list below. Do not create new themes.

        [paste the theme list: code, theme, include, not this]

        Rules:
        - Give each item 1 or 2 codes. Write codes in number order.
        - A charge for day-time AC gets T5 and T6.
        - If no theme fits, use Other. Do not force a theme.
        - Code the problem, not the polite words around it.

        Output one row per item, in the same order:
        ID | codes | reason (under 12 words) | unsure (yes/no)
        Return exactly as many rows as I sent.

        Items:
        [ID | text, 50 to 100 items]</code></pre>
          <p>Send 50 to 100 items at a time. Long lists can make AI skip items. Check that each batch returns as many rows as you sent.</p>
          <p>Paste the codes into column H of your sheet. Then count each theme with a wildcard formula:</p>
          <pre><code>=COUNTIF(H2:H461,"*T5*")    → 47</code></pre>
          <p>The <code>*</code> matches any text around T5, so a cell with "T5, T6" is counted too. The mentions add up to more than 460, because some items have two codes.</p>
        </div>
        <div class="lc-card">
          <h3>Check AI against a hand-coded sample</h3>
          <p>Anjali uses her random sample of 50 items: 13 survey answers, 7 Google reviews, 20 WhatsApp messages and 10 tickets. She codes all 50 herself first. She does not look at AI's codes until she has finished. Then she compares.</p>
          <p>The <strong>agreement rate</strong> is the share of items where her codes and AI's codes match exactly. She copies the 50 sample items to a separate sheet. There, her codes are in column H and AI's are in column I (rows 2 to 51):</p>
          <pre><code>J2:  =IF(H2=I2,1,0)          (copy down to J51)
        Agreement:  =AVERAGE(J2:J51)  → 0.84 (42 of 50)</code></pre>
          <p>Here are the 8 items where they did not agree:</p>
          <table class="lc-table">
            <thead><tr><th>Items</th><th>Example</th><th>Anjali</th><th>AI</th><th>Fix to the theme list</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>W-052: "Driver rushed us through the hills, only 20 minutes at the tea museum."</td><td>T9</td><td>T4</td><td>T4 is only for getting to or from the trip.</td></tr>
              <tr><td>2</td><td>T-012: "We were charged ₹1,500 extra for day-time AC. Nobody told us before."</td><td>T5, T6</td><td>T6</td><td>An AC charge gets both T5 and T6.</td></tr>
              <tr><td>1</td><td>W-087: "Hotel check-in in the hills took one hour."</td><td>Other</td><td>T4</td><td>Hotel check-in is not a transfer. Use Other.</td></tr>
              <tr><td>1</td><td>S-061: "Can you arrange Kathakali show tickets next time?"</td><td>Other</td><td>T9</td><td>Use Other when nothing fits.</td></tr>
              <tr><td>1</td><td>W-118: "Very helpful team, only took 3 days to answer my WhatsApp."</td><td>T1</td><td>T3</td><td>Code the problem, not the polite words.</td></tr>
              <tr><td>1</td><td>T-044: "Paid the advance on UPI, then the trip was cancelled. Money not back yet."</td><td>T7</td><td>T1</td><td>A refund after a cancellation is T7.</td></tr>
            </tbody>
          </table>
          <p>84% sounds good. But look at single themes. In the sample, AI found 9 pickup items and Anjali found 6. The 3 extra items were 2 rushed sightseeing drives and 1 hotel check-in. AI found only 3 AC hours items and Anjali found 5. If she had trusted the first run, pickup would look like a much bigger problem than AC.</p>
          <p>She adds these fixes to the theme list as clear rules and runs AI again on the same 50 items. Now 47 of 50 match (94%). The fixes were made using these 50 items, so she also checks 20 new random items: 18 of 20 match (90%). Her team's rule is 90% or more, with no theme clearly too high or too low. Only then does she let AI code all 460 items.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Anjali checks AI's codes</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Anjali">She codes the 50 sample items herself with the theme list. She does not look at AI's codes yet.</li>
              <li data-kind="tool" data-label="Spreadsheet">She puts her codes in column H, AI's codes in column I and a match formula in column J.</li>
              <li data-kind="result" data-label="Agreement">42 of 50 items match. =AVERAGE(J2:J51) shows 0.84.</li>
              <li data-kind="check" data-label="Anjali compares themes">Pickup (T4): AI 9, Anjali 6. AC hours (T5): AI 3, Anjali 5. The total looked fine, but two themes are wrong.</li>
              <li data-kind="warn" data-label="Wrong theme">W-052 says "Driver rushed us through the hills". AI coded it T4 because it saw "driver". It is about the itinerary, so it is T9.</li>
              <li data-kind="user" data-label="Anjali">She adds the fixes as rules in the theme list and asks AI to code the same 50 items again.</li>
              <li data-kind="result" data-label="Second run">47 of 50 items match (94%). She reads the 3 that still differ and decides each one herself.</li>
              <li data-kind="check" data-label="Fresh check">On 20 new random items, 18 match (90%). She lets AI code all 460 items and counts them with COUNTIF.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>First, code the 10 comments in the prompt yourself, on paper, using the theme list. Then send the prompt and count how many of AI's codes match yours. C9 is a made-up Hindi sentence ("We were not told before that the AC would run only at night"). A native speaker should check it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are coding customer feedback for [Backwater Trails, a travel agency in Kerala]. Use ONLY this theme list. Do not create new themes.

        T1 Booking and payment on WhatsApp (slow replies, UPI advance, no confirmation)
        T2 Houseboat food
        T3 Crew, guide and staff friendliness
        T4 Pickup and transfers (getting to or from the trip only)
        T5 Houseboat AC hours (AC only 9 pm to 6 am)
        T6 Price and hidden charges
        T7 Refunds and cancellations
        T8 Hill hotel quality
        T9 Itinerary and timing (including driving during sightseeing)
        Other: fits no theme

        Rules: 1 or 2 codes per item. A day-time AC charge gets T5 and T6. Code the problem, not the polite words. Use Other if nothing fits.

        Items (or paste [your own items and theme list]):
        C1: Driver came 50 minutes late at the airport.
        C2: We were charged ₹1,500 extra for day-time AC. Nobody told us before.
        C3: Driver rushed us through the hills, only 20 minutes at the tea museum.
        C4: Karimeen fry was the best part of the trip.
        C5: Very helpful team, only took 3 days to answer my WhatsApp.
        C6: Paid the advance on UPI, then the trip was cancelled for rain. Money not back yet.
        C7: Can you arrange Kathakali show tickets next time?
        C8: No hot water in the hill hotel in the morning.
        C9: Hamein pehle nahi bataya ki AC sirf raat mein chalega.
        C10: Crew were very friendly and helpful.

        Output: a table with ID | codes | reason | unsure (yes/no). Then the count for each code.</pre>
            <ul class="ai-try-checks">
              <li>C2 gets both T5 and T6.</li>
              <li>C3 is T9 (itinerary), not T4 (pickup), even though it says "driver".</li>
              <li>C5 is T1 (slow replies), not T3, and C6 is T7 (refund), not T1.</li>
              <li>C7 is Other, and C9 (Hindi) is T5.</li>
              <li>The counts match the table: 11 codes for 10 items, because C2 has two.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI codes comments fast, but only a hand-coded sample tells you if its counts are right. Build a fixed theme list, code a sample yourself first, and compare theme by theme, not only the total. Fix the rules, test on fresh items, and only then trust the counts.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Sentiment Analysis</h1>
        </div>
        <p class="lc-lead">Sentiment is the feeling in a comment. Themes tell you what customers talk about. Sentiment tells you how they feel about it. In this lesson you will label comments as positive, negative, mixed or neutral. You will learn why sarcasm, mixed comments and local languages confuse AI. You will also measure how accurate AI's labels are, and report sentiment fairly.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 315" role="img" aria-label="A table comparing Anjali's sentiment labels with AI's labels on 50 sample items. Positive: 15 of 16 correct, 1 labelled neutral. Negative: 18 of 20 correct, 2 labelled positive. Mixed: 7 of 10 correct, 2 labelled positive and 1 negative. Neutral: 3 of 4 correct, 1 labelled negative. AI totals: 19 positive, 20 negative, 7 mixed, 4 neutral. Accuracy 43 of 50, 86 percent. Where AI went wrong: 2 sarcastic comments called positive, 3 mixed comments given one side, 1 slang word called neutral, 1 question called negative.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="22" text-anchor="start" font-weight="700" fill="#67e8f9">Anjali's labels vs AI's labels, 50 sample items</text>
              <text x="286" y="46" font-size="12" font-weight="700" fill="#c4b5fd">AI label</text>
              <text x="12" y="66" text-anchor="start" font-size="12" font-weight="700" fill="#67e8f9">Anjali's label</text>
              <g font-size="12" fill="#9b99b8">
                <text x="168" y="66">Positive</text><text x="246" y="66">Negative</text>
                <text x="324" y="66">Mixed</text><text x="402" y="66">Neutral</text>
                <text x="487" y="66">Correct</text>
              </g>
              <g text-anchor="start" font-size="12.5">
                <text x="20" y="101">Positive (16)</text>
                <text x="20" y="141">Negative (20)</text>
                <text x="20" y="181">Mixed (10)</text>
                <text x="20" y="221">Neutral (4)</text>
                <text x="20" y="261" fill="#c4b5fd">AI total</text>
              </g>
              <g stroke-width="1.5">
                <rect x="130" y="76" width="76" height="38" rx="6" fill="#153b34" stroke="#10b981"/>
                <rect x="208" y="76" width="76" height="38" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
                <rect x="286" y="76" width="76" height="38" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
                <rect x="364" y="76" width="76" height="38" rx="6" fill="#1f1f44" stroke="#ec4899"/>
                <rect x="130" y="116" width="76" height="38" rx="6" fill="#1f1f44" stroke="#ec4899"/>
                <rect x="208" y="116" width="76" height="38" rx="6" fill="#153b34" stroke="#10b981"/>
                <rect x="286" y="116" width="76" height="38" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
                <rect x="364" y="116" width="76" height="38" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
                <rect x="130" y="156" width="76" height="38" rx="6" fill="#1f1f44" stroke="#ec4899"/>
                <rect x="208" y="156" width="76" height="38" rx="6" fill="#1f1f44" stroke="#ec4899"/>
                <rect x="286" y="156" width="76" height="38" rx="6" fill="#153b34" stroke="#10b981"/>
                <rect x="364" y="156" width="76" height="38" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
                <rect x="130" y="196" width="76" height="38" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
                <rect x="208" y="196" width="76" height="38" rx="6" fill="#1f1f44" stroke="#ec4899"/>
                <rect x="286" y="196" width="76" height="38" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
                <rect x="364" y="196" width="76" height="38" rx="6" fill="#153b34" stroke="#10b981"/>
                <rect x="442" y="76" width="90" height="38" rx="6" fill="#27274e" stroke="#4b4a78"/>
                <rect x="442" y="116" width="90" height="38" rx="6" fill="#27274e" stroke="#4b4a78"/>
                <rect x="442" y="156" width="90" height="38" rx="6" fill="#27274e" stroke="#f59e0b"/>
                <rect x="442" y="196" width="90" height="38" rx="6" fill="#27274e" stroke="#4b4a78"/>
                <rect x="442" y="236" width="90" height="38" rx="6" fill="#27274e" stroke="#10b981"/>
              </g>
              <text x="168" y="101" font-weight="700">15</text><text x="246" y="101" fill="#9b99b8">0</text><text x="324" y="101" fill="#9b99b8">0</text><text x="402" y="101" font-weight="700" fill="#f9a8d4">1</text>
              <text x="168" y="141" font-weight="700" fill="#f9a8d4">2</text><text x="246" y="141" font-weight="700">18</text><text x="324" y="141" fill="#9b99b8">0</text><text x="402" y="141" fill="#9b99b8">0</text>
              <text x="168" y="181" font-weight="700" fill="#f9a8d4">2</text><text x="246" y="181" font-weight="700" fill="#f9a8d4">1</text><text x="324" y="181" font-weight="700">7</text><text x="402" y="181" fill="#9b99b8">0</text>
              <text x="168" y="221" fill="#9b99b8">0</text><text x="246" y="221" font-weight="700" fill="#f9a8d4">1</text><text x="324" y="221" fill="#9b99b8">0</text><text x="402" y="221" font-weight="700">3</text>
              <text x="168" y="261" fill="#c4b5fd">19</text><text x="246" y="261" fill="#c4b5fd">20</text><text x="324" y="261" fill="#c4b5fd">7</text><text x="402" y="261" fill="#c4b5fd">4</text>
              <text x="487" y="101">15 of 16</text>
              <text x="487" y="141">18 of 20</text>
              <text x="487" y="181" fill="#fcd34d">7 of 10</text>
              <text x="487" y="221">3 of 4</text>
              <text x="487" y="261" font-weight="700" fill="#6ee7b7">43 of 50</text>
              <rect x="552" y="76" width="196" height="198" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <g text-anchor="start" font-size="12">
                <text x="566" y="100" font-size="13" font-weight="700" fill="#f9a8d4">Where AI went wrong</text>
                <text x="566" y="128">2 sarcastic → positive</text>
                <text x="566" y="152">3 mixed → one side</text>
                <text x="566" y="176">1 slang word → neutral</text>
                <text x="566" y="200">1 question → negative</text>
                <text x="566" y="238" font-weight="700" fill="#fcd34d">AI positives: 19 vs 16</text>
              </g>
              <text x="12" y="302" text-anchor="start" font-size="12.5" fill="#6ee7b7">Accuracy: 43 ÷ 50 = 86%. Mixed comments: only 7 of 10 (70%).</text>
            </g>
          </svg>
          <figcaption>Green cells are matches. Pink cells are mistakes. The overall accuracy of 86% hides a weak spot: mixed comments.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four labels, and sentiment per theme</h3>
          <table class="lc-table">
            <thead><tr><th>Label</th><th>Meaning</th><th>Backwater Trails example</th></tr></thead>
            <tbody>
              <tr><td><strong>Positive</strong></td><td>Only good feelings</td><td>"Crew were very friendly and helpful."</td></tr>
              <tr><td><strong>Negative</strong></td><td>Only bad feelings</td><td>"Driver came 50 minutes late at the airport. Nobody answered our WhatsApp."</td></tr>
              <tr><td><strong>Mixed</strong></td><td>Good and bad in one comment</td><td>W-017: "Room was not cleaned on day 2, but staff fixed it fast when we asked."</td></tr>
              <tr><td><strong>Neutral</strong></td><td>No clear feeling, such as a question or a plain fact</td><td>"What time does the AC start on the houseboat?"</td></tr>
            </tbody>
          </table>
          <p>One label per comment is often not enough. <strong>Sentiment per theme</strong> gives a label for each topic in a comment. For example, "Food super aayirunnu, but AC only at night, afternoon was too hot" is mixed overall. ("Aayirunnu" is Malayalam for "was". This and the other Malayalam and Hindi examples in this lesson are made up. A native speaker should check them.) Per theme, it is positive about food (T2) and negative about AC hours (T5). Ask AI for both.</p>
          <p>Sentiment does not replace your scores. CSAT, NPS and CES come from a fixed question. Sentiment comes from free text, so the method matters a lot.</p>
        </div>
        <div class="lc-card">
          <h3>Hard cases for AI</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th>Common AI mistake</th><th>Right label</th></tr></thead>
            <tbody>
              <tr><td>Sarcasm (saying the opposite of what you mean)</td><td>"Wonderful, the driver found us after only 50 minutes."</td><td>Positive, because of "wonderful"</td><td>Negative</td></tr>
              <tr><td>Polite complaint</td><td>"Kindly look into my refund. It has been 12 days."</td><td>Neutral, because the words are polite</td><td>Negative</td></tr>
              <tr><td>Local slang</td><td>"Food adipoli!" (Malayalam slang for excellent)</td><td>Neutral, because it does not know the word</td><td>Positive</td></tr>
              <tr><td>Mixed comment</td><td>"The hills were beautiful but the hotel had no hot water."</td><td>Picks one side</td><td>Mixed</td></tr>
              <tr><td>Stars and text disagree</td><td>A 5-star review: "Lovely crew. AC problem in the afternoon though."</td><td>Positive, from the stars</td><td>Mixed</td></tr>
              <tr><td>Question</td><td>"Is the hill sight entry ticket included?"</td><td>Negative, because it sounds unsure</td><td>Neutral</td></tr>
            </tbody>
          </table>
          <p>Add examples like these to your prompt. Tell AI that words like "but", "though" and "except" often mean a mixed comment. Ask it to mark "unsure" when it is not confident. A person then reads every unsure item.</p>
        </div>
        <div class="lc-card">
          <h3>Check how accurate AI is</h3>
          <p>Anjali uses the same random sample of 50 items. She labels all 50 herself first. Then she compares her labels with AI's in a <strong>confusion table</strong>. Her labels go in the rows and AI's labels in the columns. The cells on the diagonal are matches.</p>
          <pre><code>Accuracy = matches ÷ items
                 = (15 + 18 + 7 + 3) ÷ 50
                 = 43 ÷ 50 = 86%</code></pre>
          <p>The total hides the weak spot. For mixed comments, AI got only 7 of 10 right (70%). AI also labelled 19 items positive, but Anjali found only 16. Four of AI's positives were wrong: two sarcastic complaints and two mixed comments. (AI also missed one positive slang comment.) So AI makes customers look happier than they are.</p>
          <p>In her sample sheet, with her labels in column H and AI's in column I, this formula counts one cell of the table:</p>
          <pre><code>=COUNTIFS(H2:H51,"mixed",I2:I51,"mixed")    → 7</code></pre>
          <p>Her fix: she adds the hard-case examples to the prompt, asks AI to mark unsure items, and reads every item labelled mixed or unsure.</p>
        </div>
        <div class="lc-card">
          <h3>Report sentiment fairly</h3>
          <p>Here is the checked sentiment for all 460 September items:</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Positive</th><th>Negative</th><th>Mixed</th><th>Neutral</th><th>Total</th><th>% negative</th></tr></thead>
            <tbody>
              <tr><td>Survey</td><td>58</td><td>20</td><td>31</td><td>11</td><td>120</td><td>17%</td></tr>
              <tr><td>Google reviews</td><td>40</td><td>12</td><td>10</td><td>2</td><td>64</td><td>19%</td></tr>
              <tr><td>WhatsApp</td><td>44</td><td>82</td><td>30</td><td>24</td><td>180</td><td>46%</td></tr>
              <tr><td>Tickets</td><td>4</td><td>80</td><td>8</td><td>4</td><td>96</td><td>83%</td></tr>
              <tr><td><strong>All</strong></td><td><strong>146</strong></td><td><strong>194</strong></td><td><strong>79</strong></td><td><strong>41</strong></td><td><strong>460</strong></td><td><strong>42%</strong></td></tr>
            </tbody>
          </table>
          <p>The 11 survey rows with scores but no comment are counted as neutral. Say this in your report, or leave them out and say that instead.</p>
          <p>42% of all items are negative (194 ÷ 460). This does not mean 42% of guests were unhappy. People open tickets and send WhatsApp messages mostly when something goes wrong. In the survey, which reaches a wider mix of guests, only 17% are negative (20 ÷ 120).</p>
          <p>So always report sentiment by source. Use the same labels, prompt and checks every month, so the months can be compared.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: label the sentiment</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each Backwater Trails comment by its sentiment.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pos" data-label="Positive"></div>
              <div data-sorter-target="bucket" data-bucket="neg" data-label="Negative"></div>
              <div data-sorter-target="bucket" data-bucket="mix" data-label="Mixed"></div>
              <div data-sorter-target="bucket" data-bucket="neu" data-label="Neutral"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pos" data-why="Only good feelings about the crew.">Crew were very friendly and helpful.</li>
              <li data-bucket="neg" data-why="This is sarcasm. A 50-minute wait is a complaint, even with the word &quot;wonderful&quot;.">Wonderful, the driver found us after only 50 minutes.</li>
              <li data-bucket="mix" data-why="A problem (room not cleaned) and praise (staff fixed it fast) in one comment.">Room was not cleaned on day 2, but staff fixed it fast when we asked.</li>
              <li data-bucket="neu" data-why="It is a question with no feeling. It may still show an information gap.">What time does the AC start on the houseboat?</li>
              <li data-bucket="pos" data-why="&quot;Adipoli&quot; is Malayalam slang for excellent.">Food adipoli!</li>
              <li data-bucket="neg" data-why="The words are polite, but it is a complaint about a slow refund.">Kindly look into my refund. It has been 12 days.</li>
              <li data-bucket="mix" data-why="Positive about the food, negative about the AC hours.">Food super aayirunnu, but AC only at night, afternoon was too hot.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>First, label the 10 comments in the prompt yourself. Then ask the AI to label them and compare. Count how many labels match, and look closely at the ones that do not. C6 is a made-up Hindi sentence. A native speaker should check it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful feedback analyst for [Backwater Trails, a travel agency in Kerala]. Label the sentiment of each comment below. Names are removed.

        Labels: positive, negative, mixed (good and bad in one comment), neutral (a question or plain fact).

        Comments (or paste [10 to 30 of your own comments, names removed]):
        C1: Great, another 2 hours waiting for the boat to leave.
        C2: The guide knew every bird on Vembanad lake. Super!
        C3: Please do the needful and share my refund status.
        C4: The hills were beautiful but the hotel had no hot water.
        C5: Is the hill sight entry ticket included in the price?
        C6: Hamein pehle nahi bataya ki AC sirf raat mein chalega.
        C7: Thank you for nothing. Still waiting for the pickup driver.
        C8: Trip was okay.
        C9: (5-star review) Lovely crew. AC problem in the afternoon though.
        C10: Booked on WhatsApp in 10 minutes. Very easy.

        Tasks:
        1. Make a table: ID, overall label, sentiment per topic (for example "hotel: negative"), confidence (high, medium or low), reason in under 12 words.
        2. Watch for sarcasm, polite complaints, other languages and mixed comments.
        3. Count each label. Check that the counts add up to the number of comments.
        4. List the items a person should check, and why.</pre>
            <ul class="ai-try-checks">
              <li>C1 and C7 (sarcasm) and C3 (a polite complaint) are negative.</li>
              <li>C4 and C9 are mixed, with each topic labelled separately.</li>
              <li>C5 is neutral, because it is a question. C6 (Hindi: "We were not told the AC runs only at night") is negative.</li>
              <li>C8 ("Trip was okay.") has low or medium confidence and is not called strongly positive.</li>
              <li>The label counts add up to 10.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Sentiment shows how customers feel, but AI misreads sarcasm, polite complaints, slang and mixed comments. Check AI against your own labels on a sample and look at each label, not only the total. Report sentiment by source, because tickets and chats are mostly problems.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Analysing Online Reviews</h1>
        </div>
        <p class="lc-lead">Online reviews are public. Future guests read them before they book. In this lesson you will analyse star ratings and review text, and spot trends across months. You will write honest replies with AI's help. You will also learn the risks of fake reviews, and why you must never write, buy or reward them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 305" role="img" aria-label="Left: September 2026 star ratings for 64 new Google reviews: 34 five-star, 12 four-star, 6 three-star, 4 two-star and 8 one-star, average 3.9 stars. Right: the average of new reviews fell from 4.3 in July (41 reviews) to 4.1 in August (52 reviews) to 3.9 in September (64 reviews). The one-star share rose from 7.3 percent to 9.6 percent to 12.5 percent. Bottom: the 12 one- and two-star reviews were about pickup 5, AC hours and charge 4, refunds 2 and booking 1.">
            <defs><marker id="cfa9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="22" text-anchor="start" font-weight="700" fill="#67e8f9">September: 64 new Google reviews</text>
              <g text-anchor="start" font-size="12">
                <text x="12" y="53">5 stars</text>
                <text x="12" y="79">4 stars</text>
                <text x="12" y="105">3 stars</text>
                <text x="12" y="131">2 stars</text>
                <text x="12" y="157">1 star</text>
              </g>
              <rect x="72" y="38" width="272" height="20" rx="3" fill="#10b981"/>
              <rect x="72" y="64" width="96" height="20" rx="3" fill="#10b981"/>
              <rect x="72" y="90" width="48" height="20" rx="3" fill="#f59e0b"/>
              <rect x="72" y="116" width="32" height="20" rx="3" fill="#ec4899"/>
              <rect x="72" y="142" width="64" height="20" rx="3" fill="#ec4899"/>
              <g text-anchor="start" font-size="12" font-weight="700">
                <text x="352" y="53">34</text>
                <text x="176" y="79">12</text>
                <text x="128" y="105">6</text>
                <text x="112" y="131">4</text>
                <text x="144" y="157">8</text>
              </g>
              <text x="12" y="192" text-anchor="start" font-weight="700">Average: 252 ÷ 64 = 3.9 stars</text>
              <text x="12" y="212" text-anchor="start" font-size="12" fill="#9b99b8">5 or 1 star: 42 of 64 (65.6%)</text>
              <text x="400" y="22" text-anchor="start" font-weight="700" fill="#c4b5fd">New reviews per month</text>
              <rect x="400" y="36" width="102" height="84" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="451" y="56" font-size="11" fill="#9b99b8">July</text>
              <text x="451" y="89" font-size="24" font-weight="700">4.3</text>
              <text x="451" y="110" font-size="11" fill="#9b99b8">41 reviews</text>
              <rect x="524" y="36" width="102" height="84" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="575" y="56" font-size="11" fill="#9b99b8">August</text>
              <text x="575" y="89" font-size="24" font-weight="700">4.1</text>
              <text x="575" y="110" font-size="11" fill="#9b99b8">52 reviews</text>
              <rect x="646" y="36" width="102" height="84" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="697" y="56" font-size="11" fill="#9b99b8">September</text>
              <text x="697" y="89" font-size="24" font-weight="700">3.9</text>
              <text x="697" y="110" font-size="11" fill="#9b99b8">64 reviews</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cfa9a)">
                <line x1="504" y1="78" x2="520" y2="78"/>
                <line x1="628" y1="78" x2="642" y2="78"/>
              </g>
              <text x="574" y="148" font-size="12">1-star share: 7.3% → 9.6% → 12.5%</text>
              <text x="574" y="170" font-size="12" fill="#f9a8d4">Average fell two months in a row</text>
              <text x="12" y="244" text-anchor="start" font-weight="700" fill="#67e8f9">What the 12 one- and two-star reviews were about</text>
              <rect x="12" y="256" width="178" height="40" rx="9" fill="#27274e" stroke="#ec4899"/>
              <text x="101" y="281">Pickup: 5</text>
              <rect x="198" y="256" width="178" height="40" rx="9" fill="#27274e" stroke="#ec4899"/>
              <text x="287" y="281">AC hours and charge: 4</text>
              <rect x="384" y="256" width="178" height="40" rx="9" fill="#27274e" stroke="#f59e0b"/>
              <text x="473" y="281">Refunds: 2</text>
              <rect x="570" y="256" width="178" height="40" rx="9" fill="#27274e" stroke="#f59e0b"/>
              <text x="659" y="281">Booking: 1</text>
            </g>
          </svg>
          <figcaption>The stars show that something changed. The review text shows why. Anjali reads all 12 low reviews herself.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Look beyond the average</h3>
          <table class="lc-table">
            <thead><tr><th>Stars</th><th>5</th><th>4</th><th>3</th><th>2</th><th>1</th><th>Total</th></tr></thead>
            <tbody><tr><td>Reviews</td><td>34</td><td>12</td><td>6</td><td>4</td><td>8</td><td>64</td></tr></tbody>
          </table>
          <pre><code>Average = (5×34 + 4×12 + 3×6 + 2×4 + 1×8) ÷ 64
                = (170 + 48 + 18 + 8 + 8) ÷ 64
                = 252 ÷ 64 = 3.94, about 3.9 stars</code></pre>
          <p>The average hides the shape. 34 reviews are 5 stars and 8 are 1 star. Together, that is 42 of 64 reviews (65.6%). Most reviewers were very happy or very upset. Only 6 gave 3 stars.</p>
          <p>With the stars in F2:F65, these formulas work in Google Sheets and Excel:</p>
          <pre><code>=AVERAGE(F2:F65)                          → 3.94
        =COUNTIF(F2:F65,"&lt;=2")/COUNT(F2:F65)      → 0.1875 (18.75% are 1 or 2 stars)</code></pre>
          <p>The rating on your Google profile covers reviews from a long time, so it moves slowly. Track the new reviews each month to see changes sooner.</p>
        </div>
        <div class="lc-card">
          <h3>Spot trends and read the text</h3>
          <table class="lc-table">
            <thead><tr><th>Month (2026)</th><th>New reviews</th><th>Average</th><th>1-star reviews</th><th>1-star share</th></tr></thead>
            <tbody>
              <tr><td>July</td><td>41</td><td>4.3</td><td>3</td><td>7.3%</td></tr>
              <tr><td>August</td><td>52</td><td>4.1</td><td>5</td><td>9.6%</td></tr>
              <tr><td>September</td><td>64</td><td>3.9</td><td>8</td><td>12.5%</td></tr>
            </tbody>
          </table>
          <p>The average fell two months in a row. With only 41 to 64 new reviews a month, a few reviews can move the average. So Anjali looks at three months together before she decides anything.</p>
          <p>Next, she reads the text. She asks AI to code the 12 one- and two-star reviews with her theme list. There are only 12, so she reads all of them to check the codes.</p>
          <table class="lc-table">
            <thead><tr><th>Main theme</th><th>1- and 2-star reviews</th></tr></thead>
            <tbody>
              <tr><td>Pickup and transfers (T4)</td><td>5</td></tr>
              <tr><td>AC hours and the ₹1,500 charge (T5, T6)</td><td>4</td></tr>
              <tr><td>Refunds and cancellations (T7)</td><td>2</td></tr>
              <tr><td>Booking on WhatsApp (T1)</td><td>1</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>12</strong></td></tr>
            </tbody>
          </table>
          <p>Pickup is the top reason for bad reviews. Pickup is also a big complaint on WhatsApp. When two sources agree, you can trust the finding more. Also read the good reviews. They show what to protect, such as the food and the crew.</p>
        </div>
        <div class="lc-card">
          <h3>Reply to reviews honestly</h3>
          <p>A reply is for the reviewer and for every future guest who reads it. Anjali's rules:</p>
          <ul class="lc-list">
            <li>Reply to every review. Reply to 1- to 3-star reviews within 2 working days.</li>
            <li>Thank the guest and name their real issue. Do not paste the same reply everywhere.</li>
            <li>Say sorry for what went wrong. Explain honestly. Do not argue or blame the guest.</li>
            <li>Say what you changed, but only if it really changed.</li>
            <li>Never share booking IDs, phone numbers or payment details in public.</li>
            <li>Never promise a refund or discount in public unless a manager has approved it. Move the talk to a private channel.</li>
            <li>Sign with a real name and role.</li>
          </ul>
          <p>Here is a made-up 1-star review, G-041:</p>
          <pre><code>Booked a houseboat for our anniversary. AC was off all afternoon and
        they asked ₹1,500 to switch it on. Nobody told us this when we paid.
        Very disappointed.</code></pre>
          <p>AI's first draft:</p>
          <pre><code>Dear Guest, we regret the inconvenience caused. We will refund ₹1,500
        immediately. Your booking BT-2026-0917 has been noted. Hope to serve
        you again.</code></pre>
          <p>This draft is generic. It promises a refund nobody approved, and it shows a booking ID in public. Here is Anjali's edited reply:</p>
          <pre><code>Thank you for telling us, and we are sorry your anniversary trip was
        uncomfortable. You are right: our houseboat AC runs from 9 pm to 6 am,
        and day-time AC costs extra. We should have told you before you paid.
        We have now added the AC hours and the charge to every WhatsApp
        booking confirmation. Please message us on WhatsApp at [business
        number] so we can talk about your trip.
        Anjali, Customer Experience, Backwater Trails</code></pre>
          <p>AI drafts, and a person checks every fact before posting. Is the change really live? Did a manager approve any offer?</p>
        </div>
        <div class="lc-card">
          <h3>Fake reviews: never write them, and handle suspicious ones carefully</h3>
          <p>A fake review is a review that does not come from a real customer's honest experience. Never do any of these:</p>
          <ul class="lc-list">
            <li>Write reviews yourself, or ask staff, friends or family to post them.</li>
            <li>Buy reviews, or pay an agency to post them.</li>
            <li>Use AI to write reviews "from guests".</li>
            <li>Offer discounts or gifts only for 5-star reviews, or send the review link only to happy guests.</li>
          </ul>
          <p>These practices mislead customers. Google's policies do not allow fake reviews. Google can remove them and take action against the business profile. In India, fake or paid reviews can count as misleading or unfair trade practices under the Consumer Protection Act, 2019. The Central Consumer Protection Authority (CCPA) can act against such practices. The Bureau of Indian Standards also has a standard for online consumer reviews, IS 19000:2022. It sets rules for how websites collect, check and publish reviews. This is general information, not legal advice. Check the current rules with a qualified professional.</p>
          <p><strong>Suspicious reviews about you.</strong> Signs include no matching booking, very general text, many reviews on one day, or a reviewer who only reviews your rivals. In September, 2 one-star reviews matched no booking. Anjali:</p>
          <ul class="lc-list">
            <li>does not accuse anyone in public. She replies politely: "We cannot find your booking. Please message us on WhatsApp so we can look into it."</li>
            <li>reports them through the platform's report option. The platform decides, not her.</li>
            <li>keeps them in her numbers and shows both: 3.9 stars with all 64 reviews, and 4.0 without the 2 (250 ÷ 62 = 4.03).</li>
          </ul>
          <p>Guests sometimes review under a different name, so "no matching booking" is not proof. AI cannot prove that a review is fake either. It can only point out signs for a person to check.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: do this or never do this?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each review action for Backwater Trails.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="do" data-label="Do this"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never do this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="do" data-why="Fast, calm replies show future guests that you listen.">Reply to every 1-star review within 2 working days, calmly.</li>
              <li data-bucket="never" data-why="These are fake reviews. They mislead customers and break platform rules.">Ask staff and relatives to post 5-star reviews to push the average up.</li>
              <li data-bucket="never" data-why="Rewarding only positive reviews makes the reviews dishonest.">Offer ₹500 off the next trip only to guests who leave 5 stars.</li>
              <li data-bucket="do" data-why="Telling people what really changed closes the loop and builds trust.">Say what you changed, such as adding AC hours to the booking confirmation.</li>
              <li data-bucket="never" data-why="Sharing personal details in public breaks the guest's privacy.">Reply with the guest's booking ID and phone number to prove they are wrong.</li>
              <li data-bucket="do" data-why="The platform checks the review. You do not accuse anyone in public.">Report a review you believe is fake through the platform's report option.</li>
              <li data-bucket="never" data-why="AI-written reviews &quot;from guests&quot; are fake reviews.">Ask AI to write 10 positive reviews "from happy guests".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to draft honest replies to three reviews: one bad, one mixed and one good. Then check the drafts before anyone posts them.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer care writer for [Backwater Trails, a travel agency in Kerala]. Draft replies to the 3 Google reviews below. A manager will check them before posting.

        Reviews (or paste [your own reviews, names removed]):
        R1 (1 star): AC was off all afternoon and they asked ₹1,500 to switch it on. Nobody told us when we paid.
        R2 (3 stars): Houseboat food was lovely, but the driver was 45 minutes late at the airport.
        R3 (5 stars): Crew were so kind. Karimeen fry was the best!

        Facts you may use: [Houseboat AC runs 9 pm to 6 am. Day-time AC costs ₹1,500. Booking confirmations now state this. Pickup times are now confirmed on WhatsApp the evening before.]

        Rules:
        - Under 80 words each. Warm, simple English. Sign as [Anjali, Customer Experience].
        - Name the guest's real issue. Do not repeat the same sentences across replies.
        - Use only the facts above. Do not promise refunds, discounts or upgrades.
        - Do not mention booking IDs, phone numbers or other personal details.
        - For R1 and R2, invite the guest to message [our WhatsApp number] to talk privately.

        After the replies, list any sentence a manager should check before posting.</pre>
            <ul class="ai-try-checks">
              <li>No refund, discount or free upgrade is promised.</li>
              <li>Each reply names the guest's real issue, and the replies do not repeat the same sentences.</li>
              <li>Only the given facts are used. There are no new promises or dates.</li>
              <li>No personal details appear, and R1 and R2 offer a private WhatsApp contact.</li>
              <li>Each reply is under 80 words.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Stars show that something changed, and the text shows why. Reply to reviews honestly, name the real issue and say what you fixed. Never write, buy or reward fake reviews, and never hide the bad ones from your own numbers.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Feedback in Many Languages</h1>
        </div>
        <p class="lc-lead">Many customers write in the language they think in. At Backwater Trails, feedback arrives in English, Malayalam, Hindi, Tamil and mixes like Manglish. If you analyse only the English comments, you miss part of your customers. In this lesson you will organise feedback in many languages and translate it with AI. You will check translations with native speakers and keep the customer's real meaning.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Languages in 460 feedback items in September 2026: English 318, Manglish 52, Malayalam 34, Hindi and Hinglish 38, Tamil 12, other 6. The workflow: keep the original, AI translates into an English column, a native speaker checks a sample (28 of 30 kept their meaning), code themes on the English, and quote both the original and the English. An example: the Manglish comment Pickup full scene aayirunnu was translated word for word as Pickup was a full scene. The native speaker explained it means Pickup was a big mess. AI had marked it neutral, but it is negative.">
            <defs><marker id="cfa10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="22" text-anchor="start" font-weight="700" fill="#67e8f9">Languages in 460 feedback items, September 2026</text>
              <rect x="12" y="34" width="509" height="30" fill="#27274e" stroke="#22d3ee"/>
              <text x="266" y="54" font-size="12">English 318 (69.1%)</text>
              <rect x="521" y="34" width="83" height="30" fill="#8b5cf6"/>
              <rect x="604" y="34" width="54" height="30" fill="#10b981"/>
              <rect x="658" y="34" width="61" height="30" fill="#f59e0b"/>
              <rect x="719" y="34" width="19" height="30" fill="#ec4899"/>
              <rect x="738" y="34" width="10" height="30" fill="#9b99b8"/>
              <g text-anchor="start" font-size="11.5">
                <rect x="12" y="74" width="12" height="12" fill="#27274e" stroke="#22d3ee"/>
                <text x="30" y="84">English 318</text>
                <rect x="130" y="74" width="12" height="12" fill="#8b5cf6"/>
                <text x="148" y="84">Manglish 52</text>
                <rect x="250" y="74" width="12" height="12" fill="#10b981"/>
                <text x="268" y="84">Malayalam 34</text>
                <rect x="372" y="74" width="12" height="12" fill="#f59e0b"/>
                <text x="390" y="84">Hindi/Hinglish 38</text>
                <rect x="520" y="74" width="12" height="12" fill="#ec4899"/>
                <text x="538" y="84">Tamil 12</text>
                <rect x="620" y="74" width="12" height="12" fill="#9b99b8"/>
                <text x="638" y="84">Other 6</text>
              </g>
              <rect x="10" y="108" width="128" height="56" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="74" y="131" font-weight="700">Keep original</text>
              <text x="74" y="150" font-size="11" fill="#9b99b8">never overwrite</text>
              <rect x="163" y="108" width="128" height="56" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="227" y="131" font-weight="700">AI translates</text>
              <text x="227" y="150" font-size="11" fill="#9b99b8">new English column</text>
              <rect x="316" y="108" width="128" height="56" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="131" font-weight="700">Native check</text>
              <text x="380" y="150" font-size="11" fill="#9b99b8">28 of 30 kept</text>
              <rect x="469" y="108" width="128" height="56" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="533" y="131" font-weight="700">Code themes</text>
              <text x="533" y="150" font-size="11" fill="#9b99b8">on the English</text>
              <rect x="622" y="108" width="128" height="56" rx="9" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="686" y="131" font-weight="700">Quote both</text>
              <text x="686" y="150" font-size="11" fill="#9b99b8">original + English</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cfa10a)">
                <line x1="140" y1="136" x2="159" y2="136"/>
                <line x1="293" y1="136" x2="312" y2="136"/>
                <line x1="446" y1="136" x2="465" y2="136"/>
                <line x1="599" y1="136" x2="618" y2="136"/>
                <line x1="240" y1="238" x2="262" y2="238"/>
                <line x1="496" y1="238" x2="518" y2="238"/>
              </g>
              <text x="12" y="196" text-anchor="start" font-weight="700" fill="#c4b5fd">One Manglish example (a native speaker should check it)</text>
              <rect x="10" y="208" width="228" height="62" rx="9" fill="#27274e" stroke="#8b5cf6"/>
              <text x="124" y="229" font-size="11" fill="#9b99b8">Original</text>
              <text x="124" y="252">Pickup full scene aayirunnu.</text>
              <rect x="266" y="208" width="228" height="62" rx="9" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="229" font-size="11" fill="#9b99b8">AI, word for word</text>
              <text x="380" y="252">Pickup was a full scene.</text>
              <rect x="522" y="208" width="228" height="62" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="636" y="229" font-size="11" fill="#9b99b8">Meera, native speaker</text>
              <text x="636" y="252">Pickup was a big mess.</text>
              <text x="380" y="296" font-size="12" fill="#fcd34d">Slang changed the meaning. AI marked it neutral, but it is negative.</text>
            </g>
          </svg>
          <figcaption>142 of 460 items (30.9%) are not in plain English. Keep the original, translate in a new column, and let a native speaker check a sample.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Know your languages</h3>
          <p>Anjali adds a Language column to her sheet. Here is what she finds for September:</p>
          <table class="lc-table">
            <thead><tr><th>Language</th><th>Items</th><th>Share</th><th>Short made-up example (native speaker to check)</th></tr></thead>
            <tbody>
              <tr><td>English</td><td>318</td><td>69.1%</td><td>"Crew were very friendly and helpful."</td></tr>
              <tr><td>Manglish (Malayalam in English letters, mixed with English)</td><td>52</td><td>11.3%</td><td>"Food adipoli!"</td></tr>
              <tr><td>Malayalam (Malayalam script)</td><td>34</td><td>7.4%</td><td>"ഡ്രൈവർ വൈകി വന്നു." (The driver came late.)</td></tr>
              <tr><td>Hindi and Hinglish (Hindi mixed with English)</td><td>38</td><td>8.3%</td><td>"ड्राइवर एक घंटा लेट आया।" (The driver came one hour late.)</td></tr>
              <tr><td>Tamil</td><td>12</td><td>2.6%</td><td></td></tr>
              <tr><td>Other languages</td><td>6</td><td>1.3%</td><td></td></tr>
              <tr><td><strong>Total</strong></td><td><strong>460</strong></td><td><strong>100%</strong></td><td></td></tr>
            </tbody>
          </table>
          <p><em>All language examples in this lesson are short and made up. Ask a native speaker to check them before you reuse them.</em></p>
          <p>142 items (30.9%) are not in plain English. Almost all of them came from WhatsApp, Google reviews and tickets. The September survey was in English only, so it hears less from these guests.</p>
          <p>Two terms help here. <strong>Translation</strong> changes the words into another language. <strong>Transliteration</strong> writes a language in another script, such as Malayalam in English letters. Manglish and Hinglish are transliterated and mixed with English, so language detection tools often get them wrong.</p>
          <p>Google Sheets has two quick functions: <code>=DETECTLANGUAGE(G2)</code> guesses the language, and <code>=GOOGLETRANSLATE(G2,"auto","en")</code> gives a machine translation. <code>DETECTLANGUAGE</code> returns a language code, such as "hi" for Hindi. Both can be wrong with mixed languages and slang. Check a sample by hand, and check Google's current help pages for details.</p>
        </div>
        <div class="lc-card">
          <h3>Translate without losing meaning</h3>
          <ul class="lc-list">
            <li><strong>Never overwrite the original.</strong> Keep it in the Text column. Put the English in a new column called "English (machine)".</li>
            <li><strong>Ask AI to explain slang</strong> and local words, instead of guessing.</li>
            <li><strong>Keep the strength of feeling.</strong> "Just okay" is not the same as "good".</li>
            <li><strong>Keep names as they are:</strong> Vembanad, Kuttanad, karimeen.</li>
            <li><strong>Ask for a confidence level</strong> (high, medium or low) for each translation.</li>
            <li><strong>Code themes and sentiment on the English column,</strong> but quote the original and the English together in reports.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Original (made up)</th><th>Language</th><th>Word-for-word AI translation</th><th>Real meaning (native speaker to check)</th></tr></thead>
            <tbody>
              <tr><td>"Pickup full scene aayirunnu."</td><td>Manglish</td><td>"Pickup was a full scene."</td><td>"Pickup was a big mess." Here "scene" is slang for trouble.</td></tr>
              <tr><td>"Bas theek tha."</td><td>Hindi in English letters</td><td>"It was fine."</td><td>"It was just okay." This is lukewarm, not praise.</td></tr>
              <tr><td>"Food adipoli!"</td><td>Manglish</td><td>"Food adipoli!" (word left untranslated)</td><td>"The food was excellent!"</td></tr>
              <tr><td>"Booking easy thi, but refund ka koi update nahi mila."</td><td>Hinglish</td><td>"Booking was easy, but refund no update was found."</td><td>"Booking was easy, but we got no update on the refund." Mixed: T1 positive, T7 negative.</td></tr>
            </tbody>
          </table>
          <p>In a report, Anjali writes a quote like this: "Pickup full scene aayirunnu." (Manglish; "Pickup was a big mess"; translated by AI, checked by Meera.)</p>
        </div>
        <div class="lc-card">
          <h3>Check with native speakers</h3>
          <p>AI translation is good for most everyday messages. It is weaker with slang, mixed languages, voice notes and less common languages. So a person who speaks the language checks a random sample.</p>
          <table class="lc-table">
            <thead><tr><th>Checker</th><th>Languages</th><th>Items checked</th><th>Meaning kept</th><th>Meaning changed</th></tr></thead>
            <tbody>
              <tr><td>Meera (booking agent)</td><td>Malayalam and Manglish</td><td>20</td><td>19</td><td>1</td></tr>
              <tr><td>Rohit (driver coordinator)</td><td>Hindi and Hinglish</td><td>10</td><td>9</td><td>1</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>30</strong></td><td><strong>28 (93%)</strong></td><td><strong>2 (7%)</strong></td></tr>
            </tbody>
          </table>
          <p>Meera also found 3 translations with odd wording, but the meaning was still right. Both real mistakes changed the sentiment. So Anjali fixes the labels and adds the slang to her prompt.</p>
          <ul class="lc-list">
            <li><strong>Small languages.</strong> Nobody in the support team reads Tamil well. A Tamil-speaking colleague from the accounts team reads all 12 Tamil items.</li>
            <li><strong>Voice notes.</strong> Speech-to-text can miss words in Malayalam, Hindi and strong accents. A person listened to all 14 WhatsApp voice notes.</li>
            <li><strong>New survey languages.</strong> Next month's survey will also be in Malayalam and Hindi. Use back-translation: one person translates the survey, and a second person translates it back into English without seeing the original. Fix any question whose meaning changed, including the scale labels.</li>
            <li><strong>Replies.</strong> Reply in the customer's language when you can. A native speaker checks every AI-drafted reply before it is sent.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Anjali checks the translations</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Anjali">She asks AI to translate 20 Malayalam and Manglish items (names removed). She asks it to keep the originals, explain slang and mark anything it is unsure about.</li>
              <li data-kind="answer" data-label="AI">It returns a table with the original, the English, a sentiment label and a confidence level. It marks 3 rows as unsure.</li>
              <li data-kind="tool" data-label="Spreadsheet">She adds a "Checked by" column and shares only these 20 rows with Meera.</li>
              <li data-kind="check" data-label="Meera checks">19 of 20 keep their meaning. 3 of those have odd wording, but the meaning is right.</li>
              <li data-kind="warn" data-label="Meaning lost">"Pickup full scene aayirunnu" became "Pickup was a full scene", labelled neutral. Meera says it means "Pickup was a big mess". It is negative and T4.</li>
              <li data-kind="user" data-label="Anjali">She adds to her prompt: "Kerala slang: adipoli = excellent; scene = trouble. Explain any slang you find."</li>
              <li data-kind="check" data-label="Rohit checks">9 of 10 Hindi items are right. "Bas theek tha" was translated "It was fine" and labelled positive. It means "It was just okay".</li>
              <li data-kind="result" data-label="Result">Meaning kept in 28 of 30 (93%). She fixes the two labels before she counts sentiment.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to translate six short comments in different languages, keeping the original and the strength of feeling. Then check the result, and ask a native speaker to confirm the translations.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful translator and feedback analyst for [Backwater Trails, a travel agency in Kerala]. Customers write in English, Malayalam, Hindi and mixed languages. Names are removed.

        Comments (or paste [your own comments in any language, names removed]):
        M1: Food adipoli! Crew very friendly.
        M2: ഭക്ഷണം നന്നായിരുന്നു, പക്ഷേ ഉച്ചയ്ക്ക് എസി ഇല്ലായിരുന്നു.
        M3: Pickup full scene aayirunnu.
        M4: Bas theek tha.
        M5: ड्राइवर एक घंटा लेट आया।
        M6: Booking easy thi, but refund ka koi update nahi mila.

        Tasks:
        1. Make a table: ID, language, original (copied exactly), English meaning, slang or local words explained, sentiment, confidence (high, medium or low).
        2. Keep the strength of feeling. Do not make a comment sound more positive or more negative than it is.
        3. Keep place names and food names, such as karimeen, as they are.
        4. If you are not sure, say so. Do not guess.
        5. Mark every row "Needs native speaker check".
        6. List the 2 translations you are least sure about, and why.</pre>
            <ul class="ai-try-checks">
              <li>Every original is copied exactly, and every row is marked for a native speaker check.</li>
              <li>"Adipoli" in M1 is explained as excellent, so M1 is positive.</li>
              <li>M2 (Malayalam script) is mixed: the food was good, but there was no AC in the afternoon.</li>
              <li>M3 and M4 are not labelled positive: "scene" means trouble, and "bas theek tha" means "just okay".</li>
              <li>M5 (the driver was one hour late) is negative, and M6 is mixed: easy booking, no refund update.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every language your customers use is part of your feedback. Keep the original, translate into a new column, and ask AI to explain slang and keep the strength of feeling. A native speaker checks a sample, because one misread word can turn a complaint into praise.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Finding Root Causes and Priorities</h1>
        </div>
        <p class="lc-lead">Theme counts tell you what customers talk about most. They do not tell you why a problem happens, or what to fix first. In this lesson you will find root causes: the real reasons behind complaints. You will rank problems by impact and frequency. You will also link feedback to tickets and cancelled bookings, so your priorities rest on evidence and not on the loudest complaint. You will use Anjali's September data from Backwater Trails.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A chart of impact against frequency for seven problem themes at Backwater Trails in September 2026. Fix first, with high frequency and high impact: T1 booking on WhatsApp (88 mentions, impact 4), T4 pickup (54, impact 4) and T6 hidden charges (41, impact 5). Serious but less common: T7 refunds (29, impact 5). Common but lower impact: T5 AC hours (47, impact 3). Watch: T8 Hill hotel (26, impact 3) and T9 itinerary (22, impact 2). A side panel ranks the priority scores, mentions times impact: T1 352, T4 216, T6 205, T7 145, T5 141, T8 78, T9 44.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="15" y="22" text-anchor="start" font-weight="700" fill="#67e8f9">Impact vs frequency, September 2026</text>
              <rect x="110" y="35" width="450" height="230" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="267.5" y="35" width="292.5" height="90" fill="#2e2150" stroke="#ec4899" stroke-dasharray="4 3"/>
              <line x1="267.5" y1="35" x2="267.5" y2="265" stroke="#4b4a78"/>
              <line x1="110" y1="125" x2="560" y2="125" stroke="#4b4a78"/>
              <text x="552" y="52" text-anchor="end" font-size="11" font-weight="700" fill="#f9a8d4">Fix first</text>
              <text x="118" y="117" text-anchor="start" font-size="11" fill="#fcd34d">Serious, less common</text>
              <text x="552" y="256" text-anchor="end" font-size="11" fill="#93c5fd">Common, lower impact</text>
              <text x="118" y="256" text-anchor="start" font-size="11" fill="#9b99b8">Watch</text>
              <circle cx="506" cy="100" r="6" fill="#ec4899"/>
              <text x="497" y="104" text-anchor="end">T1 Booking</text>
              <circle cx="353" cy="100" r="6" fill="#ec4899"/>
              <text x="362" y="104" text-anchor="start">T4 Pickup</text>
              <circle cx="294.5" cy="50" r="6" fill="#ec4899"/>
              <text x="303" y="54" text-anchor="start">T6 Charges</text>
              <circle cx="240.5" cy="50" r="6" fill="#f59e0b"/>
              <text x="232" y="54" text-anchor="end">T7 Refunds</text>
              <circle cx="321.5" cy="150" r="6" fill="#3b82f6"/>
              <text x="330" y="154" text-anchor="start">T5 AC hours</text>
              <circle cx="227" cy="150" r="6" fill="#9b99b8"/>
              <text x="218" y="154" text-anchor="end">T8 Hill hotel</text>
              <circle cx="209" cy="200" r="6" fill="#9b99b8"/>
              <text x="200" y="204" text-anchor="end">T9 Itinerary</text>
              <g font-size="11" fill="#9b99b8">
                <text x="100" y="54" text-anchor="end">5</text>
                <text x="100" y="104" text-anchor="end">4</text>
                <text x="100" y="154" text-anchor="end">3</text>
                <text x="100" y="204" text-anchor="end">2</text>
                <text x="100" y="254" text-anchor="end">1</text>
                <text x="110" y="280">0</text>
                <text x="222.5" y="280">25</text>
                <text x="335" y="280">50</text>
                <text x="447.5" y="280">75</text>
                <text x="560" y="280">100</text>
              </g>
              <text x="40" y="150" transform="rotate(-90 40 150)" font-size="11.5" fill="#c4b5fd">Impact (1 to 5)</text>
              <text x="335" y="300" font-size="11.5" fill="#c4b5fd">Frequency (mentions out of 460 items)</text>
              <rect x="580" y="35" width="165" height="230" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="662.5" y="58" font-weight="700" fill="#67e8f9">Priority score</text>
              <text x="662.5" y="76" font-size="11" fill="#9b99b8">mentions × impact</text>
              <g text-anchor="start">
                <text x="592" y="102">1. T1 Booking</text>
                <text x="592" y="124">2. T4 Pickup</text>
                <text x="592" y="146">3. T6 Charges</text>
                <text x="592" y="168">4. T7 Refunds</text>
                <text x="592" y="190">5. T5 AC hours</text>
                <text x="592" y="212">6. T8 Hill hotel</text>
                <text x="592" y="234">7. T9 Itinerary</text>
              </g>
              <g text-anchor="end" font-weight="700" fill="#67e8f9">
                <text x="733" y="102">352</text>
                <text x="733" y="124">216</text>
                <text x="733" y="146">205</text>
                <text x="733" y="168">145</text>
                <text x="733" y="190">141</text>
                <text x="733" y="212">78</text>
                <text x="733" y="234">44</text>
              </g>
              <text x="662.5" y="255" font-size="10.5" fill="#9b99b8">then weigh the effort</text>
            </g>
          </svg>
          <figcaption>Anjali plots each problem theme by how often it appears and how much harm it does. Food (T2) and crew (T3) are mostly praise, so they are not on this chart.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Symptoms and root causes</h3>
          <p>A theme is often a <strong>symptom</strong>: what the customer sees, such as a slow reply. A <strong>root cause</strong> is the reason it happens, such as nobody working in the evening. If you fix only the symptom, the complaint comes back next month.</p>
          <p>First, split a big theme into smaller parts. Anjali splits T1 (booking and payment on WhatsApp, 88 mentions) into three sub-themes: slow replies 41, UPI advance problems 22 and no written confirmation 25. Check: 41 + 22 + 25 = 88.</p>
          <p>Then use the <strong>5 Whys</strong>. Ask "Why?" again and again until you reach something your team can change. Every answer needs evidence, not a guess.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Answer</th><th>Evidence</th></tr></thead>
            <tbody>
              <tr><td>Why do guests complain about booking?</td><td>Replies are slow.</td><td>41 of the 88 booking mentions are about slow replies.</td></tr>
              <tr><td>Why are replies slow?</td><td>Most enquiries arrive in the evening.</td><td>In a sample of 200 enquiry chats, 118 (59%) arrived after 6:30 pm.</td></tr>
              <tr><td>Why is that a problem?</td><td>The team works 9:30 am to 6:30 pm.</td><td>Evening messages wait until the next morning.</td></tr>
              <tr><td>Why can nobody reply later?</td><td>Only one office phone has the business WhatsApp account.</td><td>The bookings lead confirms it.</td></tr>
            </tbody>
          </table>
          <p><strong>Root cause:</strong> the team's hours and one shared phone do not match when guests write. <strong>Fix:</strong> an evening shift from 6:30 pm to 10:30 pm, and a shared inbox so more than one person can reply. Many helpdesk tools can connect to WhatsApp. Check your tool's current help pages.</p>
          <p><strong>One cause can create several themes.</strong> T5 (AC hours, 47) and T6 (hidden charges, 41) have the same cause. The booking confirmation does not say what is included and what costs extra. 17 items mention both themes. So the number of items in T5 or T6 is 47 + 41 − 17 = <strong>71</strong>, not 88. Adding the two counts would count 17 items twice.</p>
        </div>
        <div class="lc-card">
          <h3>Impact vs frequency</h3>
          <p><strong>Frequency</strong> is how often a problem appears: the number of mentions. <strong>Impact</strong> is how much harm it does each time: lost money, lost trust, lost bookings, legal risk or extra work. A rare problem can still be serious. So Anjali rates impact from 1 to 5 with a written rule:</p>
          <ul class="lc-list">
            <li><strong>5:</strong> customers lose money or trust, or there is a legal or complaint risk.</li>
            <li><strong>4:</strong> it often leads to cancellations, detractors (NPS scores of 0 to 6) or tickets.</li>
            <li><strong>3:</strong> it spoils part of the trip, but guests still finish it.</li>
            <li><strong>2:</strong> a small annoyance. <strong>1:</strong> no real effect.</li>
          </ul>
          <p>She links each theme to three other data sets. 21 of the 24 detractors wrote an improvement comment. The 96 support tickets each have one main reason. Customers cancelled 52 confirmed bookings in September and gave a reason.</p>
          <table class="lc-table">
            <thead><tr><th>Theme</th><th>Mentions</th><th>In detractor comments (21)</th><th>Main reason in tickets (96)</th><th>Cancellations (52)</th><th>Impact</th><th>Priority</th></tr></thead>
            <tbody>
              <tr><td>T1 Booking on WhatsApp</td><td>88</td><td>9</td><td>20</td><td>11</td><td>4</td><td><strong>352</strong></td></tr>
              <tr><td>T4 Pickup and transfers</td><td>54</td><td>6</td><td>12</td><td>0</td><td>4</td><td><strong>216</strong></td></tr>
              <tr><td>T6 Hidden charges</td><td>41</td><td>7</td><td>21</td><td>14</td><td>5</td><td><strong>205</strong></td></tr>
              <tr><td>T7 Refunds</td><td>29</td><td>0</td><td>26</td><td>not used</td><td>5</td><td><strong>145</strong></td></tr>
              <tr><td>T5 AC hours</td><td>47</td><td>5</td><td>5</td><td>0</td><td>3</td><td><strong>141</strong></td></tr>
              <tr><td>T8 Hill hotel</td><td>26</td><td>3</td><td>9</td><td>0</td><td>3</td><td><strong>78</strong></td></tr>
              <tr><td>T9 Itinerary</td><td>22</td><td>2</td><td>0</td><td>0</td><td>2</td><td><strong>44</strong></td></tr>
            </tbody>
          </table>
          <p>The other 3 tickets have other reasons (20 + 12 + 21 + 26 + 5 + 9 + 3 = 96). The other 27 cancellations were 9 for bad weather and 18 for personal reasons (11 + 14 + 9 + 18 = 52). One detractor comment can mention two themes, so the column adds up to 32, not 21.</p>
          <p>In a spreadsheet, put the theme in column A, mentions in B and impact in C, in rows 2 to 8. Then:</p>
          <pre><code>Priority score (D2):  =B2*C2                T1: 88 × 4 = 352
        Rank (E2):            =RANK(D2,$D$2:$D$8)   T1: 1</code></pre>
          <p>The score is a guide. A person still makes the decision:</p>
          <ul class="lc-list">
            <li><strong>Fix causes, not rows.</strong> T5 ranks fifth, but it shares a cause with T6. One change to the confirmation fixes both, and it is quick to do.</li>
            <li><strong>Serious cases cannot wait.</strong> Refunds (T7) rank fourth. But every refund case is about a customer's money. Handle each one fast while you fix the process.</li>
            <li><strong>Weigh the effort.</strong> An evening shift costs money. A new message template costs an hour. Quick wins can go first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Linking feedback to tickets and churn</h3>
          <p><strong>Churn</strong> means customers you lose. For a software company like LedgerLite, churn is a business that cancels its subscription. For Backwater Trails, guests rarely book every month. So Anjali uses cancelled bookings and the reasons guests give.</p>
          <p>The links above changed her view. T6 has fewer mentions than T4, but it caused 14 of the 52 cancellations. It is also the main reason in 21 tickets. It also creates a legal risk, because hidden charges can be seen as misleading (this is general information, not legal advice). That is why its impact is 5.</p>
          <p><strong>Watch for blind spots.</strong> No detractor comment mentions refunds. This does not mean refunds are fine. Guests whose trips were cancelled never get the post-trip survey. Their pain shows up in tickets instead: 26 of the 96 tickets are about refunds.</p>
          <p><strong>A link is not proof.</strong> Detractors often mention booking problems. That does not prove the booking problems caused their low scores. Read the detractor comments before you say "X causes Y".</p>
          <p><strong>Link data safely.</strong> To connect a survey answer to a ticket, you need a booking ID. Keep that link in a private sheet with limited access. Before you paste anything into an AI tool, remove booking IDs, names and phone numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to find possible causes</h3>
          <p>AI can suggest possible causes and the evidence you need to test them. It cannot know how your team really works. Here is a weak prompt:</p>
          <pre><code>Why are customers unhappy with our booking process?</code></pre>
          <p>The AI will list general reasons that may not be true for you. Here is a better prompt:</p>
          <pre><code>You are helping the CX team at a travel agency find root causes.
        Theme: booking on WhatsApp (88 mentions in September).
        Sub-themes: slow replies 41, UPI advance problems 22,
        no written confirmation 25.
        How we work: 2 staff, 9:30 am to 6:30 pm, one WhatsApp phone.
        10 example comments (names removed): [paste them]

        1. For each sub-theme, list 2 or 3 possible root causes.
           Call them hypotheses (ideas to test), not facts.
        2. For each hypothesis, say what data would prove or disprove it.
        3. Say which themes may share a cause.
        4. Suggest one low-effort fix and one bigger fix for each cause.</code></pre>
          <p>The word "hypotheses" matters. It reminds everyone that the AI is guessing. Anjali tests each idea with real data, such as message times, before she accepts it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: symptom, root cause or fix?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each statement from Anjali's root-cause notes.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="symptom" data-label="Symptom (what guests see)"></div>
              <div data-sorter-target="bucket" data-bucket="cause" data-label="Root cause (why it happens)"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix (what we change)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="symptom" data-why="This is what the guest feels. It does not explain why it happens.">Guests say the houseboat is too hot in the afternoon.</li>
              <li data-bucket="cause" data-why="This explains why guests are surprised. The AC works as planned, but nobody told them.">The booking confirmation does not say the AC runs only from 9 pm to 6 am.</li>
              <li data-bucket="fix" data-why="This changes the process, so the cause goes away.">Add the AC hours and every extra charge to the confirmation template.</li>
              <li data-bucket="symptom" data-why="This is what the guest sees: a late reply.">WhatsApp replies take until the next morning.</li>
              <li data-bucket="cause" data-why="This explains the slow replies. Evening messages have nobody to answer them.">Nobody can answer WhatsApp after 6:30 pm, because only one office phone has the account.</li>
              <li data-bucket="fix" data-why="This removes the cause of slow evening replies.">Add an evening shift and a shared inbox for WhatsApp.</li>
              <li data-bucket="cause" data-why="This explains why drivers go to the wrong place. It is a process gap, not one bad driver.">Drivers get pickup details by phone call, with no written trip sheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to rank problem themes by impact and frequency and suggest possible root causes. Then check the maths and test each cause yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer experience analyst for [Backwater Trails, a travel agency in Kerala that sells houseboat and hill trips].

        Problem themes for [September], with mentions and impact (1 = no real effect, 5 = lost money, trust or legal risk):
        T1 Booking on WhatsApp: 88 mentions, impact 4
        T4 Pickup and transfers: 54, impact 4
        T6 Hidden charges (day-time AC, entry tickets): 41, impact 5
        T7 Refunds and cancellations: 29, impact 5
        T5 Houseboat AC hours not explained: 47, impact 3
        T8 Hill hotel quality: 26, impact 3
        T9 Itinerary and timing: 22, impact 2
        (Replace with [your own themes, counts and impact scores].)

        Tasks:
        1. Priority score = mentions × impact. Show a table ranked from highest to lowest.
        2. Say which themes might share one root cause.
        3. Give 2 possible root causes for the top 3 themes. Call them hypotheses. For each, name the data that would test it.
        4. Suggest one quick fix and one bigger fix for each top theme, with effort (low, medium, high).
        5. Name one theme that needs fast case-by-case handling even if its score is lower.

        Do not invent new numbers.</pre>
            <ul class="ai-try-checks">
              <li>The ranking is T1 352, T4 216, T6 205, T7 145, T5 141, T8 78, T9 44.</li>
              <li>T5 (AC hours) and T6 (hidden charges) are linked to one cause: the booking information.</li>
              <li>Root causes are called hypotheses, each with data to test it.</li>
              <li>Refunds (T7) are flagged for fast handling of each case.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Frequency shows how common a problem is. Impact shows how much it hurts. Rank by both, then look for the root cause behind each big theme, with evidence at every step. One fix to a root cause can remove several themes at once.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Reporting Feedback Insights</h1>
        </div>
        <p class="lc-lead">Analysis only helps when the right people read it and act on it. In this lesson you will build a monthly voice-of-customer report. A voice-of-customer (VoC) report is a short summary of what customers said, what it means and what the team will do. You will learn what to put on a dashboard, how to show top themes and how to use quotes with permission. You will use Anjali's September report for Backwater Trails.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 335" role="img" aria-label="A one-page voice-of-customer dashboard for Backwater Trails, September 2026. Top tiles: CSAT 75 percent from 120 answers, NPS plus 25 from 120 answers, CES 72 percent from 116 answers, Google rating 3.9 from 64 new reviews, survey response rate 30 percent, 120 of 400. A bar chart of top themes: booking 88, food 76, crew 72, pickup 54, AC hours 47, charges 41. Two exact quotes with IDs, two actions with owners and dates, and data notes at the bottom.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="15" y="22" text-anchor="start" font-weight="700" fill="#67e8f9">Voice of the Customer: September 2026</text>
              <text x="745" y="22" text-anchor="end" font-size="11" fill="#9b99b8">460 items from 4 sources</text>
              <rect x="15" y="36" width="138" height="70" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="84" y="56" font-size="11" fill="#9b99b8">CSAT</text>
              <text x="84" y="84" font-size="22" font-weight="700" fill="#67e8f9">75%</text>
              <text x="84" y="100" font-size="10.5" fill="#9b99b8">n = 120</text>
              <rect x="163" y="36" width="138" height="70" rx="9" fill="#27274e" stroke="#8b5cf6"/>
              <text x="232" y="56" font-size="11" fill="#9b99b8">NPS</text>
              <text x="232" y="84" font-size="22" font-weight="700" fill="#c4b5fd">+25</text>
              <text x="232" y="100" font-size="10.5" fill="#9b99b8">n = 120</text>
              <rect x="311" y="36" width="138" height="70" rx="9" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="56" font-size="11" fill="#9b99b8">CES (easy to book)</text>
              <text x="380" y="84" font-size="22" font-weight="700" fill="#fcd34d">72%</text>
              <text x="380" y="100" font-size="10.5" fill="#9b99b8">n = 116</text>
              <rect x="459" y="36" width="138" height="70" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="528" y="56" font-size="11" fill="#9b99b8">Google rating</text>
              <text x="528" y="84" font-size="22" font-weight="700" fill="#6ee7b7">3.9</text>
              <text x="528" y="100" font-size="10.5" fill="#9b99b8">64 new reviews</text>
              <rect x="607" y="36" width="138" height="70" rx="9" fill="#27274e" stroke="#3b82f6"/>
              <text x="676" y="56" font-size="11" fill="#9b99b8">Survey response</text>
              <text x="676" y="84" font-size="22" font-weight="700" fill="#93c5fd">30%</text>
              <text x="676" y="100" font-size="10.5" fill="#9b99b8">120 of 400</text>
              <rect x="15" y="120" width="440" height="180" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="25" y="140" text-anchor="start" font-weight="700" fill="#67e8f9">Top themes (mentions)</text>
              <g text-anchor="start" font-size="11.5">
                <text x="25" y="163">T1 Booking</text>
                <text x="25" y="184">T2 Food</text>
                <text x="25" y="205">T3 Crew</text>
                <text x="25" y="226">T4 Pickup</text>
                <text x="25" y="247">T5 AC hours</text>
                <text x="25" y="268">T6 Charges</text>
              </g>
              <rect x="160" y="152" width="240" height="14" rx="3" fill="#ec4899"/>
              <rect x="160" y="173" width="207.3" height="14" rx="3" fill="#10b981"/>
              <rect x="160" y="194" width="196.4" height="14" rx="3" fill="#10b981"/>
              <rect x="160" y="215" width="147.3" height="14" rx="3" fill="#ec4899"/>
              <rect x="160" y="236" width="128.2" height="14" rx="3" fill="#ec4899"/>
              <rect x="160" y="257" width="111.8" height="14" rx="3" fill="#ec4899"/>
              <g text-anchor="start" font-size="11.5" font-weight="700">
                <text x="406" y="163">88</text>
                <text x="373" y="184">76</text>
                <text x="362" y="205">72</text>
                <text x="313" y="226">54</text>
                <text x="294" y="247">47</text>
                <text x="278" y="268">41</text>
              </g>
              <text x="25" y="290" text-anchor="start" font-size="10.5" fill="#9b99b8">Pink: mostly negative. Green: mostly positive.</text>
              <rect x="467" y="120" width="278" height="102" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="477" y="140" text-anchor="start" font-weight="700" fill="#c4b5fd">Quotes (exact, with ID)</text>
              <g text-anchor="start" font-size="11">
                <text x="477" y="160">“Paid the advance on UPI. Still no</text>
                <text x="477" y="175">confirmation.” (W-088)</text>
                <text x="477" y="197">“Crew were very friendly and</text>
                <text x="477" y="212">helpful.” (S-014)</text>
              </g>
              <rect x="467" y="230" width="278" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="477" y="250" text-anchor="start" font-weight="700" fill="#6ee7b7">Top actions</text>
              <g text-anchor="start" font-size="11">
                <text x="477" y="270">1. New confirmation: Anjali, 7 Oct</text>
                <text x="477" y="288">2. Evening shift: bookings lead, 15 Oct</text>
              </g>
              <text x="380" y="323" font-size="11" fill="#9b99b8">Data notes: survey in English only. Hill trips n = 25. First survey month: no trends yet.</text>
            </g>
          </svg>
          <figcaption>A one-page dashboard: scores with their n, top themes, real quotes, actions with owners, and honest data notes.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who reads the report, and what they need</h3>
          <p>A good report answers three questions: What did customers say? What does it mean? What will we do? Different readers need different detail:</p>
          <table class="lc-table">
            <thead><tr><th>Reader</th><th>What they need</th><th>Format</th></tr></thead>
            <tbody>
              <tr><td><strong>The owner</strong></td><td>The headline, the scores and the decisions they must make</td><td>One page, top of the report</td></tr>
              <tr><td><strong>Team leads</strong> (bookings, transport, accounts)</td><td>Their themes, counts, quotes and actions</td><td>A section each, with owners and dates</td></tr>
              <tr><td><strong>Crews and drivers</strong></td><td>Praise and one or two clear things to change</td><td>A short WhatsApp note or team meeting</td></tr>
            </tbody>
          </table>
          <p>Follow these rules every month:</p>
          <ul class="lc-list">
            <li><strong>Start with the answer.</strong> Put the headline first, not the method.</li>
            <li><strong>Show n next to every score.</strong> n is the number of answers behind the score, for example "CSAT 75% (n = 120)".</li>
            <li><strong>Pair numbers with quotes.</strong> Numbers show how big a problem is. Quotes show what it feels like.</li>
            <li><strong>Give every action an owner and a date.</strong> "Improve pickups" is a wish. "Driver trip sheet, transport coordinator, 15 October" is an action.</li>
            <li><strong>Keep the same format and definitions.</strong> Then readers can compare months.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Show top themes correctly</h3>
          <p>Anjali's sheet has one row per feedback item, in rows 2 to 461. Column A has the item ID. Column H has the theme codes, for example "T1, T5". These formulas count and share each theme:</p>
          <table class="lc-table">
            <thead><tr><th>What</th><th>Formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Items with T1</td><td><code>=COUNTIF(H2:H461,"*T1*")</code></td><td>88</td></tr>
              <tr><td>Share of items with T1</td><td><code>=COUNTIF(H2:H461,"*T1*")/COUNTA(A2:A461)</code></td><td>0.1913 (19.1%)</td></tr>
              <tr><td>Items with T5</td><td><code>=COUNTIF(H2:H461,"*T5*")</code></td><td>47</td></tr>
            </tbody>
          </table>
          <p>The <code>*</code> signs mean "any text before or after". So a cell with "T1, T5" counts for both themes. This works because there is no theme called T10. If you add one later, "*T1*" would also count T10, so rename your codes (for example T01).</p>
          <table class="lc-table">
            <thead><tr><th>Theme</th><th>Mentions</th><th>% of 460 items</th><th>Feeling</th></tr></thead>
            <tbody>
              <tr><td>T1 Booking and payment on WhatsApp</td><td>88</td><td>19.1%</td><td>Negative</td></tr>
              <tr><td>T2 Houseboat food and cook</td><td>76</td><td>16.5%</td><td>Mostly positive</td></tr>
              <tr><td>T3 Crew and staff friendliness</td><td>72</td><td>15.7%</td><td>Positive</td></tr>
              <tr><td>T4 Pickup and transfers</td><td>54</td><td>11.7%</td><td>Negative</td></tr>
              <tr><td>T5 Houseboat AC hours</td><td>47</td><td>10.2%</td><td>Negative</td></tr>
              <tr><td>T6 Price and hidden charges</td><td>41</td><td>8.9%</td><td>Negative</td></tr>
            </tbody>
          </table>
          <p>Write "% of items", not "% of customers". One item can have several themes, so these shares add up to more than 100%. Show strengths too. Food and crew are what guests love, and the team should hear that.</p>
          <p><strong>Trends need a baseline.</strong> September is the first full month of the survey and theme coding, so it is the baseline (the starting point for comparisons). From October, she adds a "change from last month" column. Google reviews are different. She already has July and August, so she can show that the average of new reviews fell from 4.3 to 4.1 to 3.9. If trips change a lot between months, she also shows mentions per 100 trips.</p>
        </div>
        <div class="lc-card">
          <h3>Quotes with permission</h3>
          <p>Quotes make a report real. They also carry risk. Follow these rules:</p>
          <ul class="lc-list">
            <li><strong>Exact words only.</strong> Copy the quote from the source and add its ID, such as W-088. Search the sheet for each quote before you publish.</li>
            <li><strong>Remove anything that identifies a person.</strong> Names, phone numbers, booking dates for small groups and staff names all come out.</li>
            <li><strong>Be fair.</strong> Do not choose only the angriest or only the happiest quotes. Pick quotes that match what most comments in the theme say.</li>
            <li><strong>Mark AI-found quotes as checked.</strong> An AI summary can invent a quote that sounds real.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Where the quote goes</th><th>What you need</th></tr></thead>
            <tbody>
              <tr><td>Internal monthly report</td><td>Exact words, ID, no name. Follow your company's privacy policy.</td></tr>
              <tr><td>Website, ads, Instagram, brochures</td><td>Clear permission from the customer. Use only what they agreed to show, such as first name and city.</td></tr>
              <tr><td>A public Google review in your marketing</td><td>Still ask. The guest wrote it for Google, not for your ads. Check the platform's current rules.</td></tr>
            </tbody>
          </table>
          <p>Anjali adds one optional line to her survey: "You may use my comment, without my name, on the Backwater Trails website." Only guests who tick it can be quoted in public.</p>
        </div>
        <div class="lc-card">
          <h3>The monthly voice-of-customer report</h3>
          <p>Here is Anjali's template, with the September headline filled in:</p>
          <pre><code>BACKWATER TRAILS: VOICE OF THE CUSTOMER, SEPTEMBER 2026

        1. Headline (3 sentences)
           Guests love our food and crews. Booking on WhatsApp (88 mentions)
           and late pickups (54) are the biggest problems. AC hours and
           hidden charges share one cause, and we can fix it this week.
        2. Scores, each with n and the response rate
        3. Top themes: count, % of items, change from last month
        4. What customers said: 1 or 2 exact quotes per top theme, with IDs
        5. Root causes and priorities
        6. Actions: what, owner, date, how we will measure it
        7. Last month's actions: done or not, and did it work?
        8. Data notes: sources, bias, small groups, what AI did</code></pre>
          <p>Section 7 keeps the team honest. It shows whether last month's promises happened. Section 8 says how the data was made. For example: "AI suggested the themes. Anjali checked a random sample by hand."</p>
          <p>AI can draft the headline and the text. You give it the numbers from your spreadsheet, and you check every number and quote it writes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the monthly report</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Anjali's monthly report steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Export the month's survey answers, reviews, WhatsApp messages and tickets.</li>
              <li data-order="2">Remove names, phone numbers and booking IDs from the analysis sheet.</li>
              <li data-order="3">Code each item into themes, then check a sample by hand.</li>
              <li data-order="4">Calculate the scores and theme counts in the spreadsheet, with n for each.</li>
              <li data-order="5">Choose exact quotes with IDs, and check permission for any public use.</li>
              <li data-order="6">Ask AI to draft the headline, then check every number and quote.</li>
              <li data-order="7">Add actions with owners and dates, and send the report to the owner and team leads.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to draft a one-page voice-of-customer report from real numbers. Then check that it did not change or invent anything.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer experience analyst. Write a one-page voice-of-customer report for [Backwater Trails, a travel agency in Kerala] for [September 2026]. The reader is the owner.

        Data (use exactly as given; replace with [your own data]):
        - 460 feedback items: survey 120, Google reviews 64, WhatsApp 180, tickets 96.
        - Survey: 120 of 400 guests answered (30%). English only.
        - CSAT 75% (n = 120). NPS +25 (45% promoters, 20% detractors, n = 120). CES 72% (n = 116).
        - Google: 3.9 average stars from 64 new reviews.
        - Theme mentions (one item can have several themes): Booking on WhatsApp 88, Food 76, Crew 72, Pickup 54, AC hours 47, Hidden charges 41, Refunds 29.
        - Quotes: W-088 "Paid the advance on UPI. Still no confirmation." S-014 "Crew were very friendly and helpful."
        - First month of survey and theme data, so no trends for these yet.

        Format:
        1. Headline in 3 sentences.
        2. Scores table with n.
        3. Top 5 themes with count and % of the 460 items.
        4. The quotes, exact, with IDs.
        5. 3 suggested actions, each marked "for the team to decide".
        6. Data notes: bias and limits.

        Do not add numbers, quotes or trends that are not in the data.</pre>
            <ul class="ai-try-checks">
              <li>NPS is written as +25, not 25%, and every score shows its n.</li>
              <li>Shares are right: booking 19.1%, food 16.5%, crew 15.7%, pickup 11.7%, AC hours 10.2%.</li>
              <li>The quotes match the data word for word, with the right IDs.</li>
              <li>There is no "up" or "down" versus last month.</li>
              <li>Data notes mention the 30% response rate and the English-only survey.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good voice-of-customer report is short, honest and ends in actions. Put the headline first, show n next to every score, pair numbers with exact quotes, and give every action an owner and a date. Use the same format every month so change is easy to see.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Closing the Loop with Customers</h1>
        </div>
        <p class="lc-lead">Closing the loop means going back to customers after they give feedback. You reply to the person, fix what you can, and tell customers what changed. Then you check that the change worked. Customers who see real change trust you more and give more feedback. In this lesson you will close two loops at Backwater Trails: one for a single unhappy guest, and one for all guests. You will fix the hidden AC charge and the missing AC hours message.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Two loops. Inner loop for one customer: reply fast within 2 working days, fix or explain with a person deciding anything about money, follow up to ask if it is solved, and log the theme and outcome. Outer loop for all customers: spot the pattern (AC hours and charges, 71 items), fix the cause with a new confirmation, tell customers what changed, and measure again next month. At the bottom: AI drafts replies, a person checks facts and approves any refund, and there is always a way to reach a person.">
            <defs><marker id="cfa13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="192" y="24" font-weight="700" fill="#67e8f9">Inner loop: one customer</text>
              <rect x="30" y="40" width="150" height="54" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="105" y="62" font-weight="700">1. Reply fast</text>
              <text x="105" y="80" font-size="11" fill="#9b99b8">within 2 working days</text>
              <rect x="205" y="40" width="150" height="54" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="280" y="62" font-weight="700">2. Fix or explain</text>
              <text x="280" y="80" font-size="11" fill="#9b99b8">a person decides money</text>
              <rect x="205" y="156" width="150" height="54" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="280" y="178" font-weight="700">3. Follow up</text>
              <text x="280" y="196" font-size="11" fill="#9b99b8">is it solved?</text>
              <rect x="30" y="156" width="150" height="54" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="105" y="178" font-weight="700">4. Log it</text>
              <text x="105" y="196" font-size="11" fill="#9b99b8">theme and outcome</text>
              <text x="192" y="129" font-size="11" fill="#9b99b8">example: G-022</text>
              <text x="192" y="145" font-size="11" fill="#9b99b8">₹1,500 AC charge</text>
              <text x="567" y="24" font-weight="700" fill="#c4b5fd">Outer loop: all customers</text>
              <rect x="405" y="40" width="150" height="54" rx="9" fill="#27274e" stroke="#8b5cf6"/>
              <text x="480" y="62" font-weight="700">1. Spot the pattern</text>
              <text x="480" y="80" font-size="11" fill="#9b99b8">T5 + T6: 71 items</text>
              <rect x="580" y="40" width="150" height="54" rx="9" fill="#27274e" stroke="#8b5cf6"/>
              <text x="655" y="62" font-weight="700">2. Fix the cause</text>
              <text x="655" y="80" font-size="11" fill="#9b99b8">new confirmation</text>
              <rect x="580" y="156" width="150" height="54" rx="9" fill="#27274e" stroke="#8b5cf6"/>
              <text x="655" y="178" font-weight="700">3. Tell customers</text>
              <text x="655" y="196" font-size="11" fill="#9b99b8">"You said, we did"</text>
              <rect x="405" y="156" width="150" height="54" rx="9" fill="#27274e" stroke="#8b5cf6"/>
              <text x="480" y="178" font-weight="700">4. Measure again</text>
              <text x="480" y="196" font-size="11" fill="#9b99b8">next month's count</text>
              <text x="567" y="137" font-size="11" fill="#9b99b8">repeat every month</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cfa13a)">
                <line x1="182" y1="67" x2="201" y2="67"/>
                <line x1="280" y1="96" x2="280" y2="152"/>
                <line x1="203" y1="183" x2="184" y2="183"/>
                <line x1="105" y1="154" x2="105" y2="98"/>
                <line x1="557" y1="67" x2="576" y2="67"/>
                <line x1="655" y1="96" x2="655" y2="152"/>
                <line x1="578" y1="183" x2="559" y2="183"/>
                <line x1="480" y1="154" x2="480" y2="98"/>
              </g>
              <rect x="15" y="232" width="730" height="58" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="256" fill="#fcd34d">Rule: AI drafts replies. A person checks the facts and approves any refund.</text>
              <text x="380" y="276" font-size="12" fill="#9b99b8">Always give the customer a way to reach a person.</text>
            </g>
          </svg>
          <figcaption>The inner loop helps one customer. The outer loop fixes the cause for everyone. You need both.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The inner loop: reply to each customer</h3>
          <p>The inner loop is about one person. A good reply does four things. It thanks the customer and names their exact problem. It says what you will do and when. It moves private details to a private channel. It gives the name of a real person to contact.</p>
          <ul class="lc-list">
            <li><strong>Reply fast.</strong> Backwater Trails replies to every review, and to every 1- to 3-star review within 2 working days. It also calls every detractor within 2 working days.</li>
            <li><strong>Never let AI promise money or facts.</strong> AI can draft a reply. But only a person can check the booking and approve a refund.</li>
            <li><strong>Keep public replies general.</strong> No names, trip dates, amounts or booking details in a public review reply.</li>
            <li><strong>Never trade a refund for a review.</strong> Do not ask a guest to delete or change a review in return for money.</li>
            <li><strong>Show the way to escalate.</strong> If a guest is still unhappy, give them a senior contact. In India, customers can also contact the National Consumer Helpline (1915). A fast, fair reply is better for both sides. This is general information, not legal advice.</li>
          </ul>
          <p>Track how well you close the loop. The <strong>closed-loop rate</strong> is the share of unhappy customers you contacted within your target time. In September, Anjali's team had 24 detractors. They called 20 within 2 working days, 3 later, and could not reach 1. Check: 20 + 3 + 1 = 24.</p>
          <p>Her sheet has one row per detractor, in rows 2 to 25. Column A has the response ID. Column F has the working days before the first call, left empty if nobody reached the guest.</p>
          <pre><code>Closed-loop rate:  =COUNTIF(F2:F25,"&lt;=2")/COUNTA(A2:A25)
        Result:            0.8333, shown as 83%  (20 ÷ 24)</code></pre>
          <p><code>COUNTIF</code> skips the empty cell, and <code>COUNTA</code> counts all 24 detractors. So the one guest nobody reached still counts against the rate.</p>
        </div>
        <div class="lc-card">
          <h3>The outer loop: fix hidden charges and the AC hours message</h3>
          <p>The outer loop fixes the cause for everyone. In September, 71 items mentioned AC hours (T5) or hidden charges (T6). The cause is the booking confirmation. It did not say that the AC runs only from 9 pm to 6 am, or that day-time AC costs ₹1,500 extra. Here is the new WhatsApp confirmation template:</p>
          <pre><code>Booking confirmed: Houseboat, Kerala, [date], [number] guests
        Advance received: ₹[amount] by UPI on [date]
        Balance: ₹[amount], to pay by [date]

        INCLUDED
        - 1 night on a private houseboat with crew and cook
        - Lunch, evening tea, dinner and breakfast
        - Bedroom AC from 9 pm to 6 am

        NOT INCLUDED (only if you choose it)
        - Day-time AC: ₹1,500 extra. Tell us 1 day before.
        - Combo trips: entry tickets at hill sights. Pay at the gate.

        PICKUP
        [time] at [place]. Driver name and number: the evening before.

        Questions? Reply here. A person answers from 9:30 am to 10:30 pm.</code></pre>
          <p>The same list goes on the trip page, so guests see it <strong>before</strong> they pay the advance. Showing extra charges only after a customer has paid is unfair. In India, the CCPA's 2023 guidelines on dark patterns list "drip pricing": revealing extra charges late in the buying process. This is general information, not legal advice. Ask a legal adviser what applies to your business.</p>
          <p><strong>Past customers need a decision too.</strong> In September, 19 groups paid the ₹1,500 day-time AC charge. None of their confirmations mentioned it. The owner decides to return ₹1,500 to each group: 19 × ₹1,500 = ₹28,500. This is a business decision. AI can do the maths and draft the messages, but it must not make or announce the decision.</p>
        </div>
        <div class="lc-card">
          <h3>Tell customers what changed: "You said, we did"</h3>
          <p>Customers rarely see the fixes you make. So tell them. A "You said, we did" message links the feedback to the change:</p>
          <pre><code>You said: "Nobody told us the AC runs only at night."
        In September, 47 comments told us this.

        We did: from 7 October, every booking confirmation lists
        the AC hours (9 pm to 6 am) and every extra charge, before
        you pay. Thank you for telling us.</code></pre>
          <ul class="lc-list">
            <li><strong>Only claim changes that are live.</strong> If the new template starts on 7 October, do not post the message on 1 October.</li>
            <li><strong>Count correctly.</strong> Write "47 comments", not "47 guests". One guest can send several comments.</li>
            <li><strong>Use the right channels.</strong> The trip page, replies to reviews, Instagram, and the monthly WhatsApp update for guests who agreed to get it.</li>
            <li><strong>Follow WhatsApp's business rules.</strong> Send WhatsApp updates only to customers who agreed to get them (opt-in). A message you start outside the 24-hour customer service window must use an approved message template. Check Meta's current rules before you send.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Follow-up surveys: did the fix work?</h3>
          <p>A fix is only done when the numbers show it worked. Use two checks:</p>
          <ul class="lc-list">
            <li><strong>Ask the people who complained.</strong> Send one short question 7 days after you act: "Is this problem now solved for you? Yes or No." Add an optional box: "What else should we fix?"</li>
            <li><strong>Count the theme again next month.</strong> Anjali's target: items in T5 or T6 fall from 71 to 35 or fewer by November.</li>
          </ul>
          <p>If trip numbers change, raw counts can mislead. Fewer trips means fewer complaints, even if nothing improved. So also compare mentions per 100 trips. With 47 in cell B2 and 400 trips in cell C2:</p>
          <pre><code>AC mentions per 100 trips:  =B2/C2*100    Result: 11.75</code></pre>
          <p>For T5 or T6 together, it is 71 ÷ 400 × 100 = 17.75 per 100 trips. Anjali compares these rates every month.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Anjali closes the loop on one review</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Anjali">She pastes review G-022 (1 star): "We were charged ₹1,500 extra for day-time AC. Nobody told us before." She asks AI for a public reply.</li>
              <li data-kind="answer" data-label="AI draft">"So sorry, Mrs Menon! We have refunded ₹1,500 to your UPI account today for your trip on 21 September."</li>
              <li data-kind="warn" data-label="Three problems">The refund has not been sent yet. The reply shows the guest's name and trip date in public. And the AI stated facts that nobody has checked.</li>
              <li data-kind="check" data-label="Anjali checks">She opens the booking. The confirmation did not mention the charge. The owner has approved ₹1,500 back for all 19 groups in this situation.</li>
              <li data-kind="user" data-label="Anjali">"Rewrite it. No names, dates or amounts. Apologise, say what we changed, and invite the guest to message us."</li>
              <li data-kind="answer" data-label="AI draft">"We are sorry. You should have known about the AC hours and the day-time AC charge before you paid. Our booking confirmation now lists both. Please message us on WhatsApp so we can put this right. Anjali, Customer Experience."</li>
              <li data-kind="tool" data-label="WhatsApp">She is one of the 19 groups owed ₹1,500. She agreed to WhatsApp updates when she booked, but last wrote weeks ago. So the team sends an approved template message about the refund, as WhatsApp's business rules require.</li>
              <li data-kind="result" data-label="Refund sent">The accounts team sends ₹1,500. The guest replies to confirm she received it.</li>
              <li data-kind="check" data-label="Follow-up">7 days later she answers "Yes" to "Is this problem now solved for you?" Anjali logs the loop as closed. Nobody asks her to change her review.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to draft four closing-the-loop messages from a few facts. Then check that it promises nothing beyond those facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer care writer for [Backwater Trails, a travel agency in Kerala]. We made a change after customer feedback. Draft four short messages.

        Facts (use only these; replace with [your own facts]):
        - Problem: 47 comments in September said guests were not told the houseboat AC runs only from 9 pm to 6 am. Some guests paid ₹1,500 for day-time AC without being told before.
        - Change: from 7 October, every WhatsApp booking confirmation lists what is included and what costs extra, including AC hours and the ₹1,500 charge.
        - Owner's decision: guests who paid the charge in September without being told get ₹1,500 back.

        Draft:
        1. A public reply (under 80 words) to this 1-star Google review: "We were charged ₹1,500 extra for day-time AC. Nobody told us before."
        2. A private WhatsApp message to that guest about the money back. Write [date] where the refund date goes.
        3. A "You said, we did" note for our trip page (under 60 words).
        4. A one-question follow-up survey to send 7 days after the refund.

        Rules: simple, polite English. No names, dates or amounts in the public reply. Do not promise anything that is not in the facts. Never ask the guest to change or delete a review. Every message gives a way to reach a person.</pre>
            <ul class="ai-try-checks">
              <li>The public reply has no names, booking details or refund amounts, and invites a private message.</li>
              <li>The private message keeps [date] as a placeholder and does not invent a date.</li>
              <li>The "You said, we did" note says 47 comments, not 47 guests, and claims only the real change.</li>
              <li>No message asks the guest to change or remove the review.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Close two loops. Reply to each unhappy customer fast, with a person deciding anything about money. Then fix the root cause, tell all customers what changed, and measure again. Feedback without a visible change teaches customers to stop giving it.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Privacy and Ethics in Feedback</h1>
        </div>
        <p class="lc-lead">Feedback is full of personal data: names, phone numbers, trip dates, photos and voice notes. Customers share it because they trust you. In this lesson you will learn how to get consent, keep feedback anonymous or confidential, and avoid identifying reviewers. You will also learn to report results honestly, even when the news is bad. This lesson gives general information only. It is not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four stages of feedback data with privacy checks. Collect: say how you use it, WhatsApp opt-in, ask before quoting, collect only what you need. Store: few people can see it, keep raw data in one place, delete when not needed, no copies on phones. Analyse: remove names and phones, remove booking IDs, approved AI tools only, check AI output. Report: no names or photos, no tiny groups under 5, show n and bad news, quote with permission. Footer: general information only, not legal advice.">
            <defs><marker id="cfa14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="170" height="54" rx="9" fill="#27274e" stroke="#22d3ee"/>
              <text x="100" y="43" font-weight="700">1. Collect</text>
              <text x="100" y="62" font-size="11" fill="#9b99b8">surveys, reviews, chats</text>
              <rect x="201" y="20" width="170" height="54" rx="9" fill="#27274e" stroke="#8b5cf6"/>
              <text x="286" y="43" font-weight="700">2. Store</text>
              <text x="286" y="62" font-size="11" fill="#9b99b8">helpdesk and sheets</text>
              <rect x="387" y="20" width="170" height="54" rx="9" fill="#27274e" stroke="#3b82f6"/>
              <text x="472" y="43" font-weight="700">3. Analyse</text>
              <text x="472" y="62" font-size="11" fill="#9b99b8">with AI tools</text>
              <rect x="573" y="20" width="170" height="54" rx="9" fill="#27274e" stroke="#10b981"/>
              <text x="658" y="43" font-weight="700">4. Report</text>
              <text x="658" y="62" font-size="11" fill="#9b99b8">to the team or public</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cfa14a)">
                <line x1="186" y1="47" x2="197" y2="47"/>
                <line x1="372" y1="47" x2="383" y2="47"/>
                <line x1="558" y1="47" x2="569" y2="47"/>
              </g>
              <g stroke="#4b4a78" stroke-width="1.5">
                <line x1="100" y1="76" x2="100" y2="92"/>
                <line x1="286" y1="76" x2="286" y2="92"/>
                <line x1="472" y1="76" x2="472" y2="92"/>
                <line x1="658" y1="76" x2="658" y2="92"/>
              </g>
              <rect x="15" y="92" width="170" height="148" rx="9" fill="#1f1f44" stroke="#22d3ee"/>
              <rect x="201" y="92" width="170" height="148" rx="9" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="387" y="92" width="170" height="148" rx="9" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="573" y="92" width="170" height="148" rx="9" fill="#1f1f44" stroke="#10b981"/>
              <g font-size="11" font-weight="700" fill="#fcd34d">
                <text x="100" y="114">Privacy checks</text>
                <text x="286" y="114">Privacy checks</text>
                <text x="472" y="114">Privacy checks</text>
                <text x="658" y="114">Privacy checks</text>
              </g>
              <g font-size="11">
                <text x="100" y="138">Say how you use it</text>
                <text x="100" y="161">WhatsApp opt-in</text>
                <text x="100" y="184">Ask before quoting</text>
                <text x="100" y="207">Collect only what</text>
                <text x="100" y="222">you need</text>
                <text x="286" y="138">Few people can see it</text>
                <text x="286" y="161">Raw data in one place</text>
                <text x="286" y="184">Delete when not needed</text>
                <text x="286" y="207">No copies on phones</text>
                <text x="472" y="138">Remove names, phones</text>
                <text x="472" y="161">Remove booking IDs</text>
                <text x="472" y="184">Approved AI tools only</text>
                <text x="472" y="207">Check AI output</text>
                <text x="658" y="138">No names or photos</text>
                <text x="658" y="161">No groups under 5</text>
                <text x="658" y="184">Show n and bad news</text>
                <text x="658" y="207">Quote with permission</text>
              </g>
              <rect x="15" y="256" width="728" height="34" rx="9" fill="#1f1f44" stroke="#ec4899"/>
              <text x="379" y="278" font-size="11.5" fill="#f9a8d4">General information only, not legal advice. Check current rules with a qualified adviser.</text>
            </g>
          </svg>
          <figcaption>Privacy is not one step. Each stage of feedback work has its own checks.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Consent and notice</h3>
          <p>In India, the Digital Personal Data Protection Act, 2023 (DPDP Act) covers personal data in digital form. The DPDP Rules were notified in November 2025, and their duties start in phases. Most duties for businesses, such as notice and consent, apply from May 2027. Good practice is to follow them now. In general terms, the law expects you to:</p>
          <ul class="lc-list">
            <li>Tell people what personal data you collect and why. This is called a <strong>notice</strong>.</li>
            <li>Process personal data only with the person's <strong>consent</strong>, or for another reason the law allows.</li>
            <li>Use the data only for the stated purpose, keep it safe, and delete it when you no longer need it.</li>
            <li>Let people ask to see, correct or erase their data, and have a way to complain.</li>
          </ul>
          <p>Check the current Act and Rules with a qualified legal adviser. Your company's privacy policy is your first guide. Here is the notice at the top of Anjali's survey:</p>
          <pre><code>This survey takes about 2 minutes. We use your answers to
        improve our trips. Your answers are linked to your booking,
        so we can fix problems for you. Your name never appears in
        our reports.

        [ ] You may use my comment, without my name, on the
            Backwater Trails website. (optional)</code></pre>
          <p>The quote box is optional and not ticked by default. A guest can say no and still do the survey.</p>
        </div>
        <div class="lc-card">
          <h3>Anonymous or confidential? Say which is true</h3>
          <p><strong>Anonymous</strong> means nobody, not even you, can know who answered. <strong>Confidential</strong> means you know who answered, but you do not share it. Anjali's survey link is tied to the booking. So it is confidential, not anonymous. Calling it anonymous would be dishonest.</p>
          <p><strong>People can be identified without a name.</strong> Here is an example sentence:</p>
          <pre><code>The only 1-star review for a combo trip came from the family
        of six from Maharashtra on 14 September.</code></pre>
          <p>There is no name, but anyone with the booking list can find the family. Use these rules:</p>
          <ul class="lc-list">
            <li><strong>Do not show results for tiny groups.</strong> Backwater Trails does not report a score for any group with fewer than 5 answers.</li>
            <li><strong>Remove details that point to a person:</strong> exact dates, group size, home town, job, or unusual details.</li>
            <li><strong>Staff are people too.</strong> Feedback that names a driver or cook is personal data about them. Share praise with them. Discuss complaints in private, after you hear their side. Do not name them in a team-wide report.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Do not hunt reviewers, and protect data in AI tools</h3>
          <p>A harsh review can hurt. But never try to find out who wrote it so you can pressure them. Here is what not to do:</p>
          <ul class="lc-list">
            <li>Do not search the booking list for a reviewer and call their personal number about the review.</li>
            <li>Do not reveal booking details in a public reply, such as "You booked on 21 September for 4 people".</li>
            <li>Do not offer money or discounts for deleting or changing a review.</li>
            <li>If you think a review is fake, use the platform's report option. Do not attack the writer in public.</li>
          </ul>
          <p><strong>Before any AI tool sees feedback</strong>, remove names, phone numbers, email addresses, booking IDs, UPI IDs and addresses. Use only AI tools your company has approved for customer data. Check whether the tool keeps your data or uses it for training. Voice notes and photos need extra care, because a voice or a face can identify someone.</p>
        </div>
        <div class="lc-card">
          <h3>Honest reporting</h3>
          <p>A report that hides bad news leads to bad decisions. Use this checklist before you share any report:</p>
          <table class="lc-table">
            <thead><tr><th>Dishonest</th><th>Honest</th></tr></thead>
            <tbody>
              <tr><td>"CES is nearly 75%."</td><td>"CES is 72% (84 of 116)."</td></tr>
              <tr><td>Showing CSAT 75% with no base</td><td>"CSAT 75% (n = 120, response rate 30%)"</td></tr>
              <tr><td>Deleting rude refund complaints from the data</td><td>Keep every item. Remove only personal data or abuse, and note what you removed.</td></tr>
              <tr><td>Choosing only happy quotes</td><td>Quotes that match what most comments in each theme say</td></tr>
              <tr><td>Changing the NPS scale this month</td><td>Keep definitions the same, or clearly explain the change.</td></tr>
              <tr><td>Presenting AI themes as final</td><td>"AI suggested the themes. A person checked a sample."</td></tr>
            </tbody>
          </table>
          <p>Honest reports also protect your team. If numbers look better than they are, the real problems stay unfixed.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: OK, needs permission, or not OK?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Anjali's team suggests these uses of feedback. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK as it is"></div>
              <div data-sorter-target="bucket" data-bucket="perm" data-label="OK only with permission"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not OK"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Exact words, an ID and no name, used inside the company for its stated purpose.">Quote "Crew were very friendly and helpful." (S-014) in the internal monthly report.</li>
              <li data-bucket="perm" data-why="Public marketing is a new use. The guest must agree first, for example with the survey's quote box.">Put a guest's survey comment on the Backwater Trails website.</li>
              <li data-bucket="no" data-why="This uses booking data to pressure a reviewer. It breaks trust and may break the platform's rules.">Find a 1-star reviewer's phone number in the bookings and call to ask them to delete the review.</li>
              <li data-bucket="no" data-why="Phone numbers are personal data. Remove them first, and use only approved AI tools.">Paste 180 WhatsApp messages, with phone numbers, into a free public AI chatbot.</li>
              <li data-bucket="ok" data-why="25 answers is above the minimum group size, and n is shown so readers know the base.">Show the hill trip CSAT with "n = 25" next to it.</li>
              <li data-bucket="no" data-why="Hiding a real theme is dishonest reporting. The team cannot fix what it cannot see.">Leave refunds out of the report because the numbers look bad.</li>
              <li data-bucket="perm" data-why="The photo shows the guest's family. A new public use needs their clear permission.">Post a guest's houseboat photo from a WhatsApp chat on Instagram.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to review a draft report section for privacy and honesty problems. Then compare its list with your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful reviewer of customer feedback reports. Check this draft section of a monthly report for [Backwater Trails, a travel agency in Kerala]. Find privacy, honesty and fairness problems.

        Draft (or paste [your own draft, with personal data removed]):
        "September was great: NPS 25% and CSAT almost 80%. Mr Ramesh Nair (phone 98XXX XXXXX) from central Kerala was angry about the ₹1,500 AC charge, but he complains a lot. Driver Suresh was late 3 times, so he should get a warning. The only 1-star combo review came from the family of six from Maharashtra on 14 September. We will post this survey comment on Instagram: 'Best trip ever!' Two refund complaints were removed because they were rude."

        Real numbers for checking: CSAT 75% (n = 120), NPS +25 (n = 120).

        Tasks:
        1. List each problem. Quote the words and say why it is a problem.
        2. Rewrite the section so it is honest and safe to share with the whole team.
        3. List the questions I must answer before sharing it.

        This is for learning. Do not give legal advice.</pre>
            <ul class="ai-try-checks">
              <li>It removes the guest's name, phone and the "complains a lot" remark.</li>
              <li>It corrects the scores to NPS +25 and CSAT 75%, with n.</li>
              <li>It flags the Maharashtra family detail as a way to identify the reviewer.</li>
              <li>It says the Instagram quote needs the guest's permission, and the refund complaints must go back in.</li>
              <li>It moves the driver issue to a private talk, after hearing his side.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Customers share feedback because they trust you. Tell them how you use it, ask before you quote them in public, and remove anything that could identify a person. Report the bad news as clearly as the good news. An honest report is the only kind worth acting on.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Capstone: A Voice-of-Customer Report</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together. You will analyse a mixed sample of surveys, reviews, WhatsApp messages and tickets for Backwater Trails. You will find themes and root causes, set priorities and recommend actions. Then you will write a voice-of-customer report that the owner can act on. First, you will see the full report Anjali wrote for September 2026 and how she checked it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The capstone workflow in seven steps. 1: gather and clean 460 items with names removed. 2: code themes, 9 themes, check a sample. 3: calculate scores, CSAT 75 percent, NPS plus 25, CES 72 percent. 4: find root causes with 5 Whys and evidence. 5: prioritise, T1 352, T4 216, T6 205. 6: report and act with owners, dates and targets. 7: close the loop, tell customers what changed, then measure again next month.">
            <defs><marker id="cfa15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="15" y="22" text-anchor="start" font-weight="700" fill="#67e8f9">Capstone workflow: Backwater Trails, September 2026</text>
              <rect x="15" y="38" width="220" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="125" y="66" font-weight="700">1. Gather and clean</text>
              <text x="125" y="88" font-size="11" fill="#9b99b8">460 items, names removed</text>
              <rect x="270" y="38" width="220" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="66" font-weight="700">2. Code themes</text>
              <text x="380" y="88" font-size="11" fill="#9b99b8">9 themes, check a sample</text>
              <rect x="525" y="38" width="220" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="635" y="66" font-weight="700">3. Calculate scores</text>
              <text x="635" y="88" font-size="11" fill="#9b99b8">CSAT 75%, NPS +25, CES 72%</text>
              <rect x="525" y="148" width="220" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="635" y="176" font-weight="700">4. Find root causes</text>
              <text x="635" y="198" font-size="11" fill="#9b99b8">5 Whys, with evidence</text>
              <rect x="270" y="148" width="220" height="70" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="176" font-weight="700">5. Prioritise</text>
              <text x="380" y="198" font-size="11" fill="#9b99b8">T1 352, T4 216, T6 205</text>
              <rect x="15" y="148" width="220" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="125" y="176" font-weight="700">6. Report and act</text>
              <text x="125" y="198" font-size="11" fill="#9b99b8">owners, dates, targets</text>
              <rect x="15" y="250" width="730" height="40" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="275">7. Close the loop: tell customers what changed, then measure again next month</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cfa15a)">
                <line x1="237" y1="73" x2="266" y2="73"/>
                <line x1="492" y1="73" x2="521" y2="73"/>
                <line x1="635" y1="110" x2="635" y2="144"/>
                <line x1="523" y1="183" x2="494" y2="183"/>
                <line x1="268" y1="183" x2="239" y2="183"/>
                <line x1="125" y1="220" x2="125" y2="246"/>
              </g>
            </g>
          </svg>
          <figcaption>Every skill in this course is one step in the workflow. A person checks the AI's work at every step.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief</h3>
          <p>The owner of Backwater Trails asks Anjali: "What are customers telling us, and what should we fix first?" She has 460 feedback items from September 2026:</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Items</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>Post-trip survey</td><td>120</td><td>120 of 400 guests answered (30%). English only.</td></tr>
              <tr><td>Google reviews</td><td>64</td><td>34 five-star, 8 one-star. Average 3.9 stars.</td></tr>
              <tr><td>WhatsApp messages</td><td>180</td><td>Mixed English, Malayalam, Manglish and Hindi</td></tr>
              <tr><td>Support tickets</td><td>96</td><td>Refunds, charges, booking problems</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>460</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>She must deliver three things: a one-page report, an action plan with owners and dates, and closing-the-loop messages. She follows the workflow in the diagram. At each step she checks one thing: the counts add up, the quotes are exact, and no personal data reaches the AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Anjali's full September report</h3>
          <pre><code>BACKWATER TRAILS: VOICE OF THE CUSTOMER, SEPTEMBER 2026
        Prepared by Anjali, CX lead. Baseline month for survey and themes.
        Names removed.

        1. HEADLINE
        Guests love our food and crews. Booking on WhatsApp and late
        pickups are the biggest problems. AC hours and hidden charges
        share one cause: our booking confirmation leaves out key facts.

        2. SCORES (120 of 400 guests answered the survey = 30%)
        CSAT    75%   90 of 120 chose 4 or 5
        NPS     +25   45% promoters − 20% detractors (n = 120)
        CES     72%   84 of 116 agreed booking was easy
        Google  3.9   average of 64 new reviews (July 4.3, August 4.1)

        3. TOP THEMES (460 items; one item can have several themes)
        T1 Booking and payment on WhatsApp   88   19.1%   negative
        T2 Houseboat food and cook           76   16.5%   mostly positive
        T3 Crew and staff friendliness       72   15.7%   positive
        T4 Pickup and transfers              54   11.7%   negative
        T5 Houseboat AC hours                47   10.2%   negative
        T6 Price and hidden charges          41    8.9%   negative
        T7 Refunds and cancellations         29    6.3%   negative
        T8 Hill hotel quality                26    5.7%   mixed
        T9 Itinerary and timing              22    4.8%   mixed

        4. WHAT CUSTOMERS SAID (exact words, checked in the sheet)
        W-088  "Paid the advance on UPI. Still no confirmation."
        G-022  "We were charged ₹1,500 extra for day-time AC.
               Nobody told us before."
        S-014  "Crew were very friendly and helpful."

        5. ROOT CAUSES AND PRIORITIES (priority = mentions × impact)
        1. T1 (352): nobody answers WhatsApp after 6:30 pm, but 118
           of 200 sampled enquiries arrive after 6:30 pm.
        2. T4 (216): drivers get pickup details by phone, with no
           written trip sheet (31 late, 15 wrong place, 8 other).
        3. T6 (205) and T5 (141): the confirmation leaves out AC
           hours and extra charges. 71 items; 14 of 52 cancellations.
        4. T7 (145): refunds wait for a weekly approval, and guests
           get no updates. 26 of 96 tickets.

        6. ACTIONS: see the action plan (owner, date, measure)

        7. CLOSING THE LOOP
        - 20 of 24 detractors called within 2 working days (83%).
        - All 12 one-star and two-star reviews got a reply.
        - ₹1,500 to be returned to 19 groups (₹28,500 in total).

        8. DATA NOTES
        - Survey in English only. Malayalam and Hindi from October.
        - Houseboat guests answered more (33%) than hill trip guests (25%).
        - Hill trips n = 25, so one guest moves a hill trip score 4 points.
        - Guests with cancelled trips get no survey. See tickets.
        - AI suggested the theme codes. Anjali checked a sample.</code></pre>
          <p>Every number traces back to her spreadsheet. For example, 71 items is 47 + 41 − 17, because 17 items mention both AC hours and charges. The pickup split adds up: 31 + 15 + 8 = 54.</p>
        </div>
        <div class="lc-card">
          <h3>The action plan</h3>
          <table class="lc-table">
            <thead><tr><th>Action</th><th>Themes</th><th>Owner</th><th>By</th><th>How we measure</th></tr></thead>
            <tbody>
              <tr><td>New booking confirmation: what is included and what costs extra</td><td>T5, T6</td><td>Anjali</td><td>7 Oct 2026</td><td>Items in T5 or T6 fall from 71 to 35 or fewer by November</td></tr>
              <tr><td>Return ₹1,500 to the 19 groups who were not told (₹28,500)</td><td>T6</td><td>Owner, with accounts</td><td>10 Oct 2026</td><td>All 19 refunds confirmed, with a follow-up question</td></tr>
              <tr><td>Evening WhatsApp shift, 6:30 pm to 10:30 pm, with a shared inbox</td><td>T1</td><td>Bookings lead</td><td>15 Oct 2026</td><td>Slow-reply mentions fall from 41 to 20 or fewer. CES rises above 72%.</td></tr>
              <tr><td>Driver trip sheet on WhatsApp the evening before: time, place, map pin, guest count</td><td>T4</td><td>Transport coordinator</td><td>15 Oct 2026</td><td>Pickup mentions fall from 54</td></tr>
              <tr><td>Refund updates: reply within 1 working day, update every 3 days, approve twice a week</td><td>T7</td><td>Accounts</td><td>20 Oct 2026</td><td>Refund tickets (26) and days to refund</td></tr>
              <tr><td>Survey in Malayalam and Hindi, checked with back-translation</td><td>Data</td><td>Anjali</td><td>Oct 2026</td><td>Response rate by language</td></tr>
              <tr><td>Share guest praise with crews and cooks, without guest names</td><td>T2, T3</td><td>Anjali</td><td>Every month</td><td>Keep food and crew mostly positive</td></tr>
            </tbody>
          </table>
          <p>The owner decides the budget items, such as the evening shift and the refunds. AI drafted the table from Anjali's notes. She checked every number and owner before she sent it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Anjali checks the AI's draft report</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Anjali">She gives the AI the theme counts, scores and checked quotes, with no personal data. She asks for a draft report.</li>
              <li data-kind="answer" data-label="AI draft">"AC hours (47) and hidden charges (41) affect 88 guests. Fixing the confirmation helps 19% of guests."</li>
              <li data-kind="warn" data-label="Double count">17 items mention both themes. The right count is 47 + 41 − 17 = 71 items, or 15.4% of 460. And items are not guests.</li>
              <li data-kind="answer" data-label="AI draft">"Refunds are a low priority. No detractor comment mentions them."</li>
              <li data-kind="warn" data-label="Blind spot">Guests with cancelled trips never get the survey. 26 of the 96 tickets are about refunds. Refunds stay in the top four.</li>
              <li data-kind="tool" data-label="Spreadsheet">She recalculates the priority scores with =B2*C2 and ranks them with =RANK(D2,$D$2:$D$8).</li>
              <li data-kind="result" data-label="Ranking">T1 352, T4 216, T6 205, T7 145, T5 141, T8 78, T9 44.</li>
              <li data-kind="check" data-label="Quotes and names">She searches the sheet for each quote. All match word for word. She removes a driver's name from one quote.</li>
              <li data-kind="check" data-label="Final check">The headline, scores with n, top themes, root causes, actions with owners and data notes are all there. She sends it to the owner.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Now it is your turn. Ask the AI to analyse this mixed sample and draft a short report with actions. Then check every count, label and quote against the list. W-161 is made-up Manglish ("aanu" means "is"). A native speaker should check it and the AI's reading of it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer experience analyst for [Backwater Trails, a Kerala travel agency]. Analyse this sample and draft a short voice-of-customer report.

        Sample, names removed (S = survey, G = Google, T = ticket, W = WhatsApp), or paste [your own items]:
        S-071: Crew were so caring with my parents. Food was excellent.
        S-102: Nobody told us AC runs only at night. Afternoons were too hot.
        S-088: Hill hotel had no hot water. Drive from the airport was too long.
        G-037 (1 star): Charged ₹1,500 extra for day-time AC. Not in our confirmation.
        G-049 (4 stars): Lovely houseboat and karimeen fry, but airport pickup was 45 min late.
        G-052 (5 stars): Best trip of the year. Guide Manu knew every tea estate.
        T-058: Hill sight entry tickets not included. Quote said all inclusive.
        T-071: Trip cancelled for heavy rain. No refund after 15 days.
        T-079: Driver did not know our hotel in the hills. We waited 1 hour.
        W-144: Paid advance on UPI 2 days ago. Still no confirmation.
        W-156: Replies are very slow in the evening. Waited till next morning.
        W-161: Food adipoli, but AC only at night aanu, nobody told.

        Tasks:
        1. Table: ID, themes, sentiment (positive, negative or mixed).
        2. Theme counts with IDs.
        3. Themes that may share a root cause (hypotheses).
        4. Top 3 actions, each with an owner role and a measure.
        5. Items a person must handle today, and why.
        Quote exact words with IDs; replace staff names with [staff]. Do not work out new scores from this sample.</pre>
            <ul class="ai-try-checks">
              <li>AC hours: S-102, G-037, W-161 (3). Charges: G-037, T-058 (2). Food: S-071, G-049, W-161 (3). Pickup: G-049, T-079 (2). Booking: W-144, W-156 (2).</li>
              <li>G-049 and W-161 are mixed. S-071 and G-052 are positive. The other 8 are negative. Crew: S-071, G-052. Hill hotel and itinerary: S-088. Refunds: T-071.</li>
              <li>AC hours and charges (S-102, G-037, T-058, W-161) are linked, as a hypothesis, to one cause: the booking confirmation leaves out key facts.</li>
              <li>T-071 (refund after 15 days) goes to a person today.</li>
              <li>No new CSAT or NPS is worked out from 3 survey answers, and "Manu" is replaced with [staff] in quotes.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A voice-of-customer report is only finished when it changes something. Gather and clean the data, code and check the themes, calculate scores correctly, find root causes and rank them. Then give every action an owner, a date and a measure, and close the loop with customers. AI speeds up every step, but you own every number and every decision.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

module GithubContent
  LESSONS = {
    1 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Introduction to GitHub</h1>
        </div>
        <p class="lc-lead">GitHub is a website that <strong>hosts Git repositories</strong> and adds tools for working together: pull requests, code review, issues, project boards, automation with Actions, and free websites with Pages. It is also where recruiters and open-source maintainers look at your work.</p>

        <div class="lc-card">
          <h3>Git vs GitHub</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Git</th><th>GitHub</th></tr></thead>
            <tbody>
              <tr><td>What</td><td>Version control program on your computer</td><td>Online platform built around Git</td></tr>
              <tr><td>Needs internet?</td><td>No</td><td>Yes</td></tr>
              <tr><td>Main features</td><td>Commits, branches, merges, history</td><td>Hosting, pull requests, issues, Actions, Pages, security alerts</td></tr>
              <tr><td>How you use it</td><td>Terminal / editor</td><td>Browser, the <code>gh</code> CLI, GitHub Desktop, mobile app</td></tr>
            </tbody>
          </table>
          <p>This course assumes you know basic Git (commit, branch, merge, push). If not, take the Git course first.</p>
        </div>

        <div class="lc-card">
          <h3>Tour of a Repository Page</h3>
          <table class="lc-table">
            <thead><tr><th>Tab / area</th><th>What you find there</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td><strong>Code</strong></td><td>Files, branches, README, the green <em>Code</em> button with clone URLs</td><td>4, 5</td></tr>
              <tr><td><strong>Issues</strong></td><td>Bugs, tasks and ideas</td><td>6</td></tr>
              <tr><td><strong>Pull requests</strong></td><td>Proposed changes waiting for review</td><td>7, 8</td></tr>
              <tr><td><strong>Actions</strong></td><td>Automated workflows (tests, deployments)</td><td>13–16</td></tr>
              <tr><td><strong>Projects</strong></td><td>Boards and tables for planning</td><td>6</td></tr>
              <tr><td><strong>Security</strong></td><td>Dependabot alerts, code and secret scanning</td><td>17</td></tr>
              <tr><td><strong>Settings</strong></td><td>Collaborators, branch rules, Pages (admins only)</td><td>9, 12, 19</td></tr>
            </tbody>
          </table>
          <p>Top right of every repo: <strong>Watch</strong> (get notifications), <strong>Fork</strong> (your own copy, lesson 11) and <strong>Star</strong> (a bookmark and a "like").</p>
        </div>

        <div class="lc-card">
          <h3>Set Up Your Account Well</h3>
          <ul class="lc-list">
            <li>Pick a professional username — it becomes part of every URL: <code>github.com/asha-rao</code>.</li>
            <li>Add the email you use in <code>git config user.email</code> under <em>Settings → Emails</em>, so your commits are linked to you. To keep your address private, turn on "Keep my email address private" and use the <code>...@users.noreply.github.com</code> address GitHub shows you.</li>
            <li>Turn on <strong>two-factor authentication</strong> (2FA) or a passkey. GitHub requires 2FA for accounts that contribute code.</li>
            <li>Add a photo, a short bio and your city — people trust complete profiles.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Git Talks to GitHub</h3>
          <p>You can download any public repository without an account. Try GitHub's famous test repo:</p>
          <div class="lc-code-block"><pre><code>$ git clone https://github.com/octocat/Hello-World.git
        Cloning into &#39;Hello-World&#39;...
        remote: Enumerating objects: 13, done.
        remote: Total 13 (delta 0), reused 0 (delta 0), pack-reused 13 (from 1)
        Receiving objects: 100% (13/13), done.
        $ cd Hello-World
        $ git log --oneline
        7fd1a60 Merge pull request #6 from Spaceghost/patch-1
        7629413 New line at end of file. --Signed off by Spaceghost
        553c207 first commit
        $ git remote -v
        origin	https://github.com/octocat/Hello-World.git (fetch)
        origin	https://github.com/octocat/Hello-World.git (push)</code></pre></div>
          <p>The <code>remote:</code> lines come from GitHub's servers. Look at the top commit: <em>Merge pull request #6 from Spaceghost/patch-1</em> — a pull request merged on GitHub leaves a normal Git merge commit behind. GitHub is Git plus a website around it. (This old repository still uses <code>master</code> as its default branch; new repositories use <code>main</code>.)</p>
        </div>

        <div class="lc-card">
          <h3>Public or Private?</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Public</th><th>Private</th></tr></thead>
            <tbody>
              <tr><td>Who can see it</td><td>Everyone on the internet</td><td>Only you and people you invite</td></tr>
              <tr><td>Good for</td><td>Open source, portfolio projects</td><td>Client work, assignments, early experiments</td></tr>
              <tr><td>Free plan limits</td><td>Most features free (Actions minutes are free on standard runners)</td><td>Unlimited repos, but some features (e.g. branch rules, Pages) need a paid plan</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>More GitHub Tools You Will Meet</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>What it is</th><th>Use it for</th></tr></thead>
            <tbody>
              <tr><td><strong>Notifications</strong></td><td>The inbox at <code>github.com/notifications</code>, fed by what you <em>watch</em>, are @mentioned in, or are asked to review</td><td>Keeping up with reviews and issues; choose <em>Watch → Participating and @mentions</em> to cut noise</td></tr>
              <tr><td><strong>Gists</strong></td><td>Tiny repositories at <code>gist.github.com</code> for one or a few files</td><td>Sharing a snippet, a config file or notes (a "secret" gist is unlisted, not private)</td></tr>
              <tr><td><strong>Wiki</strong></td><td>A built-in set of Markdown pages for a repository</td><td>Longer documentation that does not belong in the README</td></tr>
              <tr><td><strong>Search</strong></td><td>The search bar with filters such as <code>repo:</code>, <code>language:</code>, <code>is:issue is:open</code></td><td>Finding code, issues and projects across GitHub</td></tr>
              <tr><td><strong>GitHub Desktop / Mobile</strong></td><td>A free desktop Git app, and phone apps</td><td>Desktop: Git without the terminal; Mobile: reviewing and replying on the go</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Saying "I pushed to Git" when you mean GitHub — Git is the tool, GitHub is one place to host it.</li>
            <li>Committing with an email that is not on your account — commits appear with a grey avatar and do not count on your profile.</li>
            <li>Making college assignments public when your college does not allow it.</li>
            <li>Skipping 2FA. A stolen GitHub account can leak or delete all your code.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create a GitHub account (or open yours) and enable 2FA under <em>Settings → Password and authentication</em>.</li>
            <li>Add your Git commit email under <em>Settings → Emails</em>.</li>
            <li>Clone <code>octocat/Hello-World</code> as shown and compare your output with the walkthrough.</li>
            <li>Open <code>github.com/octocat/Hello-World</code> in the browser and find the Issues, Pull requests and Insights tabs.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Press <kbd>.</kbd> on any repository page to open it in a browser-based VS Code editor (github.dev), and press <kbd>t</kbd> to search files by name.</p></div>
      HTML
    },

    2 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Tokens, SSH Keys and Signed Commits</h1>
        </div>
        <p class="lc-lead">Cloning a public repository needs no login, but <strong>pushing</strong> (and reading private repos) does. GitHub does <strong>not</strong> accept your account password from Git. You need one of the methods below — set it up once per computer.</p>

        <div class="lc-card">
          <h3>Your Options</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>URL style</th><th>Best for</th></tr></thead>
            <tbody>
              <tr><td><strong><code>gh auth login</code></strong></td><td>HTTPS (or SSH)</td><td>The easiest start: browser login, and gh configures Git for you (lesson 3)</td></tr>
              <tr><td><strong>Git Credential Manager (GCM)</strong></td><td>HTTPS</td><td>Windows — it comes with Git for Windows and opens a browser login on your first push</td></tr>
              <tr><td><strong>Personal access token (PAT)</strong></td><td>HTTPS</td><td>Scripts and servers; paste it when Git asks for a password</td></tr>
              <tr><td><strong>SSH key</strong></td><td><code>git@github.com:owner/repo.git</code></td><td>Developers who push often; no tokens to expire</td></tr>
            </tbody>
          </table>
          <p>If you try your account password, the push fails with an error saying that <em>support for password authentication was removed</em> (GitHub switched it off in August 2021).</p>
        </div>

        <div class="lc-card">
          <h3>Personal Access Tokens</h3>
          <p>Create one at <em>Settings → Developer settings → Personal access tokens</em>. Prefer <strong>fine-grained tokens</strong>: choose only the repositories and permissions you need (e.g. <em>Contents: Read and write</em>) and an expiry date. <em>Classic</em> tokens with the <code>repo</code> scope can access all your repositories — use them only when a tool requires it.</p>
          <div class="lc-code-block"><pre><code>$ git push -u origin main
        Username for &#39;https://github.com&#39;: asha
        Password for &#39;https://asha@github.com&#39;:      &lt;- paste the token here (nothing is shown)</code></pre></div>
          <p>A credential helper (GCM, or the macOS Keychain) remembers the token so Git does not ask every time. Treat a token exactly like a password: never commit it, never share it in screenshots.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Create an SSH Key</h3>
          <p>SSH uses a pair of keys: the <strong>private key</strong> stays on your computer; the <strong>public key</strong> goes to GitHub. Press <kbd>Enter</kbd> to accept the default file, then type a passphrase (nothing is shown while you type):</p>
          <div class="lc-code-block"><pre><code>$ ssh-keygen -t ed25519 -C &quot;asha@example.com&quot;
        Generating public/private ed25519 key pair.
        Enter file in which to save the key (/home/asha/.ssh/id_ed25519):
        Enter passphrase for &quot;/home/asha/.ssh/id_ed25519&quot; (empty for no passphrase):
        Enter same passphrase again:
        Your identification has been saved in /home/asha/.ssh/id_ed25519
        Your public key has been saved in /home/asha/.ssh/id_ed25519.pub
        The key fingerprint is:
        SHA256:WBuNARtmI9OIl4O7m5723NURwN3oPokjaplIcrSs8Yg asha@example.com
        The key&#39;s randomart image is:
        +--[ED25519 256]--+
        |   oo+*oo. o     |
        |  o ==.+.=o .    |
        |   o .. +.o      |
        |  o    o o..     |
        | o o  . So..     |
        |o *   . o.+.     |
        |.O + + .....     |
        |E *o=. .         |
        | oooo .          |
        +----[SHA256]-----+</code></pre></div>
          <p>Your fingerprint and picture will be different — they are random. Now print the <strong>public</strong> key (the <code>.pub</code> file) and copy the whole line:</p>
          <div class="lc-code-block"><pre><code>$ cat ~/.ssh/id_ed25519.pub
        ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPRcBzEClmKW/9R2uTXriQfVPYTiu3UfOfcYQ2K6LMZL asha@example.com</code></pre></div>
          <p>On GitHub, open <em>Settings → SSH and GPG keys → New SSH key</em>, paste the line and save. (With gh: <code>gh ssh-key add ~/.ssh/id_ed25519.pub --title "My laptop"</code>.)</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Test the Connection</h3>
          <p>The first connection asks you to trust GitHub's server. Compare the fingerprint with the one published in GitHub's docs (<code>SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU</code> for Ed25519) and type <code>yes</code>. This is what you see if the public key has <em>not</em> been added to GitHub yet:</p>
          <div class="lc-code-block"><pre><code>$ ssh -T git@github.com
        The authenticity of host &#39;github.com (20.207.73.82)&#39; can&#39;t be established.
        ED25519 key fingerprint is: SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU
        This key is not known by any other names.
        Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
        Warning: Permanently added &#39;github.com&#39; (ED25519) to the list of known hosts.
        git@github.com: Permission denied (publickey).</code></pre></div>
          <p>"Permission denied (publickey)" means GitHub did not recognise your key. After adding it, the same command answers with a greeting like <code>Hi asha! You've successfully authenticated, but GitHub does not provide shell access.</code> — that is success (SSH to GitHub is only for Git, not for a shell).</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Switch a Repo from HTTPS to SSH</h3>
          <div class="lc-code-block"><pre><code>$ git remote -v
        origin	https://github.com/asha/chai-menu.git (fetch)
        origin	https://github.com/asha/chai-menu.git (push)
        $ git remote set-url origin git@github.com:asha/chai-menu.git
        $ git remote -v
        origin	git@github.com:asha/chai-menu.git (fetch)
        origin	git@github.com:asha/chai-menu.git (push)</code></pre></div>
          <p>Pushes and pulls in this repository now use your SSH key.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Sign Your Commits with SSH</h3>
          <p>Anyone can set <code>user.email</code> to <em>your</em> email and make commits that look like yours. A <strong>signed commit</strong> proves it really came from your key, and GitHub shows a green <strong>Verified</strong> badge next to it. Branch rulesets can even "Require signed commits" (lesson 12). Git 2.34 or newer can sign with the SSH key you already made — no GPG needed.</p>
          <p><strong>1. Tell Git to sign with your SSH key</strong> (point at the <code>.pub</code> file):</p>
          <div class="lc-code-block"><pre><code>$ git config --global gpg.format ssh
        $ git config --global user.signingkey ~/.ssh/id_ed25519.pub
        $ git config --global commit.gpgsign true</code></pre></div>
          <p><code>commit.gpgsign true</code> signs every commit automatically. (The name says "gpg" for historical reasons; with <code>gpg.format ssh</code> it uses SSH.) For tags, add <code>git config --global tag.gpgsign true</code>.</p>
          <p><strong>2. Add the same public key to GitHub as a signing key.</strong> In <em>Settings → SSH and GPG keys → New SSH key</em>, set <strong>Key type</strong> to <strong>Signing Key</strong> and paste the <code>.pub</code> line. Yes, you add the key a second time — once as an Authentication Key, once as a Signing Key. With gh: <code>gh ssh-key add ~/.ssh/id_ed25519.pub --type signing</code>.</p>
          <p><strong>3. Commit and check the signature locally:</strong></p>
          <div class="lc-code-block"><pre><code>$ echo &quot;Ginger chai - 25&quot; &gt;&gt; menu.txt
        $ git commit -am &quot;Add ginger chai&quot;
        [main 528ab90] Add ginger chai
         1 file changed, 1 insertion(+)
        $ git log --show-signature -1
        error: gpg.ssh.allowedSignersFile needs to be configured and exist for ssh signature verification
        commit 528ab90...
        No signature
        Author: Asha Rao &lt;asha@example.com&gt;
        Date:   Tue Sep 1 10:09:00 2026 +0530

            Add ginger chai</code></pre></div>
          <p>The commit <em>is</em> signed, but your own Git cannot check SSH signatures until you tell it which keys to trust. Create an <strong>allowed signers</strong> file (email + public key) and point Git at it:</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;asha@example.com $(cat ~/.ssh/id_ed25519.pub)&quot; &gt; ~/.ssh/allowed_signers
        $ git config --global gpg.ssh.allowedSignersFile ~/.ssh/allowed_signers
        $ git log --show-signature -1
        commit 528ab90...
        Good &quot;git&quot; signature for asha@example.com with ED25519 key SHA256:WBuNARtmI9OIl4O7m5723NURwN3oPokjaplIcrSs8Yg
        Author: Asha Rao &lt;asha@example.com&gt;
        Date:   Tue Sep 1 10:09:00 2026 +0530

            Add ginger chai</code></pre></div>
          <p><code>Good "git" signature</code> with your key's fingerprint (the same <code>SHA256:WBuN…</code> as when you created the key) means the signature checks out. After you push, the commit shows <strong>Verified</strong> on GitHub — as long as the commit email is a verified email on your GitHub account. Commits you make in the GitHub web editor are signed by GitHub automatically.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Pasting the <strong>private</strong> key (<code>id_ed25519</code>, without <code>.pub</code>) into GitHub. Never share it; if you did, delete that key pair and make a new one.</li>
            <li>Adding an SSH key but keeping the <code>https://</code> remote URL — Git still asks for a token. Check with <code>git remote -v</code>.</li>
            <li>Creating a token with every permission and no expiry.</li>
            <li>Typing <code>yes</code> to the host-key question without checking the fingerprint on a public Wi-Fi.</li>
            <li>Adding your key only as an Authentication Key — pushes work, but signed commits show <strong>Unverified</strong>. Add it again as a Signing Key.</li>
            <li>Signing with an email that is not verified on your account — GitHub cannot match the signature to you.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create an Ed25519 SSH key with a passphrase and add the public key to GitHub.</li>
            <li>Run <code>ssh -T git@github.com</code> until you see the "Hi &lt;username&gt;!" greeting.</li>
            <li>In a repository, switch <code>origin</code> to the SSH URL with <code>git remote set-url</code> and push a small commit.</li>
            <li>Set up SSH commit signing, add the key as a Signing Key, push a new commit and find the <strong>Verified</strong> badge in the commit list. Check it locally with <code>git log --show-signature -1</code>.</li>
            <li>Bonus: create a fine-grained token for one test repository that expires in 7 days, and look at the permissions it offers.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>On macOS add <code>--apple-use-keychain</code> when running <code>ssh-add</code> so you are not asked for the passphrase after every restart. On Windows the "OpenSSH Authentication Agent" service does the same job.</p></div>
      HTML
    },

    3 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">The GitHub CLI (gh)</h1>
        </div>
        <p class="lc-lead"><code>git</code> only knows about commits and branches. <code>gh</code> is GitHub's official command-line tool for everything else: creating repositories, opening pull requests, managing issues, watching Actions runs — without leaving the terminal.</p>

        <div class="lc-card">
          <h3>Install and Log In</h3>
          <ul class="lc-list">
            <li><strong>Windows:</strong> <code>winget install --id GitHub.cli</code></li>
            <li><strong>macOS:</strong> <code>brew install gh</code></li>
            <li><strong>Ubuntu / Debian:</strong> follow the official instructions at <code>cli.github.com</code> (they add GitHub's package repository, then <code>sudo apt install gh</code>)</li>
          </ul>
          <p>Then run <code>gh auth login</code> and answer the questions. The screens look like this (wording may vary slightly between gh versions):</p>
          <div class="lc-code-block"><pre><code>$ gh auth login
        ? Where do you use GitHub? GitHub.com
        ? What is your preferred protocol for Git operations on this host? HTTPS
        ? Authenticate Git with your GitHub credentials? Yes
        ? How would you like to authenticate GitHub CLI? Login with a web browser

        ! First copy your one-time code: 1A2B-3C4D
        Press Enter to open https://github.com/login/device in your browser...
        ✓ Authentication complete.
        - gh config set -h github.com git_protocol https
        ✓ Configured git protocol
        ✓ Logged in as asha</code></pre></div>
          <p>Answering <em>Yes</em> to "Authenticate Git" sets up gh as Git's credential helper, so <code>git push</code> over HTTPS just works — no token to copy. Check anytime with <code>gh auth status</code>.</p>
        </div>

        <div class="lc-card">
          <h3>The Commands You Will Use Most</h3>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Command</th><th>Does</th></tr></thead>
            <tbody>
              <tr><td>Repos</td><td><code>gh repo create my-app --public --clone</code></td><td>Create a repo on GitHub and clone it</td></tr>
              <tr><td></td><td><code>gh repo clone owner/repo</code></td><td>Clone using the short name</td></tr>
              <tr><td></td><td><code>gh repo view --web</code></td><td>Open the current repo in the browser</td></tr>
              <tr><td>Issues</td><td><code>gh issue create --title "..." --body "..."</code></td><td>Open an issue</td></tr>
              <tr><td></td><td><code>gh issue list</code></td><td>List open issues</td></tr>
              <tr><td>Pull requests</td><td><code>gh pr create --fill</code></td><td>Open a PR using your commit message</td></tr>
              <tr><td></td><td><code>gh pr checkout 12</code></td><td>Check out PR #12 locally to test it</td></tr>
              <tr><td></td><td><code>gh pr merge --squash --delete-branch</code></td><td>Merge the PR and delete its branch</td></tr>
              <tr><td>Actions</td><td><code>gh run list</code> / <code>gh run watch</code></td><td>See workflow runs / follow one live</td></tr>
              <tr><td>Anything</td><td><code>gh api repos/{owner}/{repo}</code></td><td>Call the GitHub REST API directly</td></tr>
            </tbody>
          </table>
          <p>Inside a cloned repository, gh knows which repo you mean. Elsewhere add <code>--repo owner/name</code> (or <code>-R</code>).</p>
        </div>

        <div class="lc-card">
          <h3>Example Session</h3>
          <p>A typical flow after <code>gh auth login</code> (your numbers and names will differ):</p>
          <div class="lc-code-block"><pre><code>$ gh repo clone asha/chai-menu
        $ cd chai-menu
        $ gh issue create --title &quot;Add lassi to menu&quot; --body &quot;Customers keep asking for it.&quot; --label enhancement
        https://github.com/asha/chai-menu/issues/4
        $ gh issue list
        Showing 1 of 1 open issue in asha/chai-menu

        ID  TITLE              LABELS       UPDATED
        #4  Add lassi to menu  enhancement  less than a minute ago</code></pre></div>
          <p>gh prints the URL of what it created, so you can click straight to it. Most list commands also accept <code>--json</code> for machine-readable output, e.g. <code>gh issue list --json number,title</code>.</p>
        </div>

        <div class="lc-card">
          <h3>git or gh?</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Tool</th></tr></thead>
            <tbody>
              <tr><td>Commit, branch, merge, push, pull</td><td><code>git</code></td></tr>
              <tr><td>Create a repo, fork, open or merge a PR, create a release</td><td><code>gh</code> (or the website)</td></tr>
              <tr><td>Log in to GitHub</td><td><code>gh auth login</code></td></tr>
            </tbody>
          </table>
          <p>gh never replaces Git — it calls Git for the Git parts.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Running gh commands outside a repository without <code>--repo</code> — gh cannot guess which project you mean.</li>
            <li>Confusing <code>gh repo clone</code> (a gh command) with <code>git clone</code>. Both work; gh just accepts <code>owner/repo</code> short names.</li>
            <li>Logging in on a shared college computer and forgetting <code>gh auth logout</code>.</li>
            <li>Some commands need extra permissions; for Projects, gh tells you to run <code>gh auth refresh -s project</code> first.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Install gh and run <code>gh auth login</code>. Confirm with <code>gh auth status</code>.</li>
            <li>Run <code>gh repo create gh-practice --private --clone --add-readme</code>, then <code>cd gh-practice</code>.</li>
            <li>Create an issue with <code>gh issue create</code> and list it with <code>gh issue list</code>.</li>
            <li>Open the repo in your browser with <code>gh repo view --web</code>, then close the issue with <code>gh issue close 1</code>.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Every gh command has built-in help with examples: <code>gh pr create --help</code>. The full manual is at <code>cli.github.com/manual</code>.</p></div>
      HTML
    },

    4 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Creating, Cloning and Pushing Repositories</h1>
        </div>
        <p class="lc-lead">There are two starting points: you have a project on your computer and want it on GitHub (<strong>push</strong>), or a project is on GitHub and you want it on your computer (<strong>clone</strong>).</p>

        <div class="lc-card">
          <h3>Creating a Repository on the Website</h3>
          <ol class="lc-list">
            <li>Click <strong>+ → New repository</strong>.</li>
            <li>Choose the owner (you or an organization) and a short, lowercase name like <code>study-notes</code>.</li>
            <li>Pick <strong>Public</strong> or <strong>Private</strong>.</li>
            <li><strong>If you already have a local project, leave "Add a README", ".gitignore" and "license" unticked.</strong> An empty repository accepts your first push cleanly.</li>
            <li>Click <strong>Create repository</strong>. GitHub then shows the exact commands to push an existing repository.</li>
          </ol>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Push an Existing Project</h3>
          <div class="lc-code-block"><pre><code>$ git init
        Initialized empty Git repository in /home/asha/study-notes/.git/
        $ echo &quot;# Study Notes&quot; &gt; README.md
        $ git add README.md
        $ git commit -m &quot;Add README&quot;
        [main (root-commit) de3b948] Add README
         1 file changed, 1 insertion(+)
         create mode 100644 README.md
        $ git remote add origin https://github.com/asha/study-notes.git
        $ git push -u origin main
        To https://github.com/asha/study-notes.git
         * [new branch]      main -&gt; main
        branch &#39;main&#39; set up to track &#39;origin/main&#39;.</code></pre></div>
          <p>On a real push to GitHub you also see progress lines such as <code>Enumerating objects: 3, done.</code> and <code>Writing objects: 100% (3/3)</code> before the <code>To</code> line. Refresh the repository page — your README is shown.</p>
          <div class="lc-code-block"><pre><code>$ git status -sb
        ## main...origin/main</code></pre></div>
          <p><code>## main...origin/main</code> with nothing after it means your branch and GitHub are in sync.</p>
        </div>

        <div class="lc-card">
          <h3>The Same in One gh Command</h3>
          <p>From inside the local project folder, gh can create the GitHub repository, add <code>origin</code> and push in one go:</p>
          <div class="lc-code-block"><pre><code>$ gh repo create study-notes --public --source=. --remote=origin --push</code></pre></div>
          <p>gh prints the new repository's URL when it finishes.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Clone</h3>
          <p>Click the green <strong>Code</strong> button to copy the HTTPS or SSH URL, then:</p>
          <div class="lc-code-block"><pre><code>$ git clone https://github.com/octocat/Hello-World.git
        Cloning into &#39;Hello-World&#39;...
        remote: Enumerating objects: 13, done.
        remote: Total 13 (delta 0), reused 0 (delta 0), pack-reused 13 (from 1)
        Receiving objects: 100% (13/13), done.
        $ cd Hello-World
        $ git log --oneline
        7fd1a60 Merge pull request #6 from Spaceghost/patch-1
        7629413 New line at end of file. --Signed off by Spaceghost
        553c207 first commit
        $ git remote -v
        origin	https://github.com/octocat/Hello-World.git (fetch)
        origin	https://github.com/octocat/Hello-World.git (push)</code></pre></div>
          <p>Cloning gives you the full history and sets up <code>origin</code> automatically. Use <code>git clone &lt;url&gt; my-folder</code> to choose the folder name, or <code>gh repo clone owner/repo</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Which Start Is Right?</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Do this</th></tr></thead>
            <tbody>
              <tr><td>Brand-new project, nothing written yet</td><td>Create on GitHub <em>with</em> README, then <code>git clone</code></td></tr>
              <tr><td>Project already on your laptop</td><td>Create an <em>empty</em> GitHub repo, <code>git remote add origin</code>, <code>git push -u origin main</code></td></tr>
              <tr><td>Someone else's project</td><td><code>git clone</code> (or fork first to contribute, lesson 11)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Ticking "Add a README" and then pushing an existing project — Git rejects the push (<code>fetch first</code>) because GitHub has a commit you do not. Fix: <code>git pull --rebase origin main</code>, then push.</li>
            <li><code>error: src refspec main does not match any</code> — you have no commits yet, or your branch is called <code>master</code>. Commit first, or rename with <code>git branch -m main</code>.</li>
            <li>Cloning into a folder that is already a repository.</li>
            <li>Pushing <code>node_modules</code>, <code>.venv</code> or <code>.env</code> because <code>.gitignore</code> was missing. Add it <em>before</em> the first commit.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create a local repo <code>study-notes</code> with one commit.</li>
            <li>Create an <em>empty</em> repository on GitHub with the same name and push to it with <code>-u</code>.</li>
            <li>Clone your new repository into a different folder and run <code>git log --oneline</code>.</li>
            <li>Try <code>gh repo create</code> with <code>--source=. --push</code> for a second project.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>A repository can be renamed later (<em>Settings → General</em>). GitHub redirects the old URL, but update your remote anyway: <code>git remote set-url origin &lt;new-url&gt;</code>.</p></div>
      HTML
    },

    5 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">README, LICENSE and Your Profile</h1>
        </div>
        <p class="lc-lead">The <strong>README</strong> is the front page of your repository — most visitors read nothing else. A <strong>LICENSE</strong> tells people what they are allowed to do with your code. Together with a good profile, they turn your GitHub into a portfolio.</p>

        <div class="lc-card">
          <h3>What a Good README Answers</h3>
          <ol class="lc-list">
            <li><strong>What</strong> is this project? (one or two sentences)</li>
            <li><strong>Why</strong> would someone use it? A screenshot or GIF helps a lot.</li>
            <li><strong>How</strong> do I install and run it? Exact commands.</li>
            <li><strong>How</strong> can I contribute, and under which <strong>license</strong>?</li>
          </ol>
          <p>READMEs are written in <strong>Markdown</strong>. GitHub renders <code>README.md</code> automatically on the Code tab.</p>
        </div>

        <div class="lc-card">
          <h3>Example README.md</h3>
          <div class="lc-code-block"><pre><code># Tiffin Tracker

        Track daily tiffin orders for a small office canteen.

        ![Screenshot of the order list](docs/screenshot.png)

        ## Features
        - Add and cancel orders
        - Daily total in rupees

        ## Getting started
        ```bash
        git clone https://github.com/asha/tiffin-tracker.git
        cd tiffin-tracker
        python3 tracker.py
        ```

        ## License
        MIT - see [LICENSE](LICENSE).</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Markdown</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code># Title</code>, <code>## Section</code></td><td>Headings</td></tr>
              <tr><td><code>- item</code></td><td>Bullet list</td></tr>
              <tr><td><code>**bold**</code>, <code>`code`</code></td><td><strong>bold</strong>, <code>code</code></td></tr>
              <tr><td><code>[text](url)</code></td><td>Link</td></tr>
              <tr><td><code>![alt text](path.png)</code></td><td>Image</td></tr>
              <tr><td><code>```bash</code> … <code>```</code></td><td>Code block with syntax highlighting</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Choosing a License</h3>
          <p>Without a license, the default copyright law applies: people may <em>look</em> at your public code but have no legal right to copy, change or reuse it.</p>
          <table class="lc-table">
            <thead><tr><th>License</th><th>In short</th><th>Common for</th></tr></thead>
            <tbody>
              <tr><td><strong>MIT</strong></td><td>Do almost anything; keep the copyright notice</td><td>Small libraries, portfolio projects</td></tr>
              <tr><td><strong>Apache-2.0</strong></td><td>Like MIT plus an explicit patent grant</td><td>Company-backed open source</td></tr>
              <tr><td><strong>GPL-3.0</strong></td><td>If you distribute changed versions, they must also be GPL and share source</td><td>Projects that want to stay open</td></tr>
            </tbody>
          </table>
          <p>On GitHub: <em>Add file → Create new file</em>, type <code>LICENSE</code>, and click <strong>Choose a license template</strong>. The site <code>choosealicense.com</code> explains each one. (This is general information, not legal advice.)</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Commit README and LICENSE</h3>
          <p>After writing the README above and saving the MIT text in <code>LICENSE</code>:</p>
          <div class="lc-code-block"><pre><code>$ git add README.md LICENSE
        $ git status -s
        A  LICENSE
        M  README.md
        $ git commit -m &quot;Improve README and add MIT license&quot;
        [main 729f976] Improve README and add MIT license
         2 files changed, 23 insertions(+)
         create mode 100644 LICENSE
        $ git push
        To https://github.com/asha/tiffin-tracker.git
           1328ec3..729f976  main -&gt; main</code></pre></div>
          <p>GitHub now shows the README on the Code tab and "MIT license" in the sidebar.</p>
        </div>

        <div class="lc-card">
          <h3>Your Profile README and Pinned Repos</h3>
          <ul class="lc-list">
            <li>Create a public repository with <strong>exactly your username</strong> as its name (e.g. <code>asha/asha</code>) and add a <code>README.md</code>. GitHub shows it at the top of your profile page.</li>
            <li>Write 3–5 lines: who you are, what you are learning, what you have built, how to contact you.</li>
            <li><strong>Pin</strong> up to six of your best repositories (<em>Customize your pins</em> on your profile). Pin finished projects with good READMEs, not empty practice repos.</li>
            <li>Add a short description and topics (e.g. <code>python</code>, <code>django</code>) to each repo from the gear icon next to <em>About</em>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Community Health Files and Template Repositories</h3>
          <p>Besides README and LICENSE, GitHub recognises a few more standard files and shows them in the repository sidebar and when people open issues or PRs:</p>
          <table class="lc-table">
            <thead><tr><th>File</th><th>Tells people</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td><code>CONTRIBUTING.md</code></td><td>How to set up the project, run tests and send a PR</td><td>11</td></tr>
              <tr><td><code>CODE_OF_CONDUCT.md</code></td><td>Expected behaviour and how to report problems</td><td>11</td></tr>
              <tr><td><code>SECURITY.md</code></td><td>How to report a vulnerability privately</td><td>17</td></tr>
              <tr><td><code>.github/ISSUE_TEMPLATE/</code>, <code>pull_request_template.md</code></td><td>What to write in a new issue or PR</td><td>6, 7</td></tr>
              <tr><td><code>CODEOWNERS</code></td><td>Who reviews which files</td><td>9</td></tr>
            </tbody>
          </table>
          <p>Put these files in the repository root, in <code>docs/</code> or in <code>.github/</code>. An organisation can create a public repository named <code>.github</code> to provide default versions for all its repositories.</p>
          <p><strong>Template repositories:</strong> in <em>Settings → General</em>, tick <em>Template repository</em>. Others then click <strong>Use this template</strong> to start a new repository with the same files and folders, but a fresh history — unlike a fork, which keeps the history and a link to the original. With gh: <code>gh repo create my-app --template asha/python-starter --public --clone</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>A README that only says the project name. Add setup steps a stranger can follow.</li>
            <li>Screenshots linked from your computer's path (<code>C:\Users\...</code>) — they break on GitHub. Commit the image and use a relative path.</li>
            <li>No license on a project you want others to use.</li>
            <li>Copying a license but forgetting to put your name and year in the copyright line.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Rewrite the README of one of your repositories using the four questions above, including a code block with setup commands.</li>
            <li>Add an MIT <code>LICENSE</code> file with your name and the year, commit and push.</li>
            <li>Create your profile README repository and write a short introduction.</li>
            <li>Pin your two best repositories and add a description and topics to each.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Preview Markdown before pushing: in VS Code press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>V</kbd> (<kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>V</kbd> on macOS).</p></div>
      HTML
    },

    6 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Issues, Labels, Milestones and Projects</h1>
        </div>
        <p class="lc-lead">An <strong>issue</strong> is a numbered to-do item: a bug report, a feature idea or a task. <strong>Labels</strong> sort issues, <strong>milestones</strong> group them into a goal with a due date, <strong>Projects</strong> show them on a planning board, and <strong>Discussions</strong> hold conversations that are not tasks.</p>

        <div class="lc-card">
          <h3>Which Tool for What?</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Lives in</th><th>Use it for</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Issue</strong></td><td>One repo</td><td>One bug, feature or task</td><td>"#12 Total shows ₹0 for one item"</td></tr>
              <tr><td><strong>Label</strong></td><td>One repo</td><td>Type or area of work</td><td><code>bug</code>, <code>frontend</code></td></tr>
              <tr><td><strong>Milestone</strong></td><td>One repo</td><td>A release or deadline with a progress bar</td><td>"v1.1 — 15 Oct"</td></tr>
              <tr><td><strong>Project</strong></td><td>Your account or organization (can span many repos)</td><td>Planning board or table with custom fields</td><td>"Semester project board"</td></tr>
              <tr><td><strong>Discussion</strong></td><td>One repo (turn on in Settings)</td><td>Q&amp;A, ideas, announcements</td><td>"Which database should we use?"</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Anatomy of a Good Issue</h3>
          <ul class="lc-list">
            <li><strong>Clear title:</strong> "Total shows ₹0 when cart has one item" — not "not working".</li>
            <li><strong>Steps to reproduce</strong>, what you expected, what happened instead.</li>
            <li>Screenshots, error messages, version or browser.</li>
            <li><strong>Labels</strong>, an <strong>assignee</strong> (who works on it), and optionally a milestone and a project.</li>
          </ul>
          <p>Mention people with <code>@username</code> and link other issues or PRs by typing <code>#</code> and the number, e.g. <code>#12</code>. Large issues can be split into <strong>sub-issues</strong>.</p>
          <p>Default labels: <code>bug</code>, <code>enhancement</code>, <code>documentation</code>, <code>good first issue</code> (GitHub highlights these for newcomers), <code>help wanted</code>, and triage outcomes <code>duplicate</code>, <code>invalid</code>, <code>wontfix</code>, <code>question</code>. With gh: <code>gh issue create --title "Total shows 0" --label bug --assignee "@me"</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Closing Issues from Code</h3>
          <p>Write a <strong>closing keyword</strong> plus the issue number in a pull request description (or in a commit message). When that PR is merged into the <strong>default branch</strong>, GitHub closes the issue automatically.</p>
          <p>Keywords: <code>close</code>, <code>closes</code>, <code>closed</code>, <code>fix</code>, <code>fixes</code>, <code>fixed</code>, <code>resolve</code>, <code>resolves</code>, <code>resolved</code>.</p>
          <div class="lc-code-block"><pre><code>$ git switch -c fix/12-rounding
        Switched to a new branch &#39;fix/12-rounding&#39;
        $ printf &quot;total = round(0, 2)\n&quot; &gt; tracker.py
        $ git commit -am &quot;Round daily total to 2 decimals&quot; -m &quot;Fixes #12&quot;
        [fix/12-rounding fd3a079] Round daily total to 2 decimals
         1 file changed, 1 insertion(+), 1 deletion(-)
        $ git log -1
        commit fd3a079...
        Author: Asha Rao &lt;asha@example.com&gt;
        Date:   Tue Sep 1 10:09:00 2026 +0530

            Round daily total to 2 decimals

            Fixes #12
        $ git push -u origin fix/12-rounding
        To https://github.com/asha/tiffin.git
         * [new branch]      fix/12-rounding -&gt; fix/12-rounding
        branch &#39;fix/12-rounding&#39; set up to track &#39;origin/fix/12-rounding&#39;.</code></pre></div>
          <p>The issue now shows a link to this commit. It closes when the commit reaches <code>main</code> — not when you push the branch. Writing only "<code>#12</code>" links without closing.</p>
        </div>

        <div class="lc-card">
          <h3>Issue Templates (Issue Forms)</h3>
          <p>Templates make people give you the details you need. Save this as <code>.github/ISSUE_TEMPLATE/bug_report.yml</code>:</p>
          <div class="lc-code-block"><pre><code>name: Bug report
        description: Report something that is not working
        labels: [&quot;bug&quot;]
        body:
          - type: textarea
            id: what-happened
            attributes:
              label: What happened?
              description: Tell us what you expected and what happened instead.
            validations:
              required: true
          - type: input
            id: version
            attributes:
              label: App version
              placeholder: v1.2.0
          - type: dropdown
            id: browser
            attributes:
              label: Browser
              options:
                - Chrome
                - Firefox
                - Safari
                - Other</code></pre></div>
          <p>When someone clicks <strong>New issue</strong>, they choose "Bug report" and get a form with a required text box, an input and a dropdown; the issue is labelled <code>bug</code> automatically. A Markdown template (<code>bug_report.md</code>) also works but cannot enforce required fields.</p>
        </div>

        <div class="lc-card">
          <h3>Milestones and GitHub Projects</h3>
          <p><strong>Milestones:</strong> <em>Issues → Milestones → New milestone</em>. Give it a title, an optional due date and a description, then assign issues and PRs to it from their sidebar. The milestone page shows a progress bar such as "60% complete — 3 open, 5 closed".</p>
          <ul class="lc-list">
            <li><strong>Project views:</strong> the same items as a <em>Table</em> (spreadsheet), a <em>Board</em> (Kanban columns) or a <em>Roadmap</em> (timeline).</li>
            <li><strong>Items:</strong> issues and pull requests from any of your repos, plus quick "draft" notes.</li>
            <li><strong>Custom fields:</strong> Status, Priority, Size, Iteration (sprints), dates.</li>
            <li><strong>Built-in workflows:</strong> for example, set Status to <em>Done</em> automatically when an issue closes or a PR merges.</li>
          </ul>
          <div class="lc-flow">
            <div class="lc-flow-step">Todo<small>new issues</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">In Progress<small>assigned, branch open</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">In Review<small>PR open</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Done<small>PR merged</small></div>
          </div>
          <p>From the terminal (Project commands need an extra gh permission the first time):</p>
          <div class="lc-code-block"><pre><code>$ gh auth refresh -s project
        $ gh project create --owner &quot;@me&quot; --title &quot;Chai Menu Roadmap&quot;
        $ gh issue create --title &quot;Add lassi&quot; --label enhancement --milestone &quot;v1.1&quot; --project &quot;Chai Menu Roadmap&quot;
        $ gh issue develop 4 --checkout</code></pre></div>
          <p>The last command creates a branch linked to issue #4 and switches to it, so the issue shows its development branch.</p>
        </div>

        <div class="lc-card">
          <h3>Discussions</h3>
          <p>Turn on in <em>Settings → General → Features → Discussions</em>. Categories such as <em>Q&amp;A</em> (answers can be marked as accepted), <em>Ideas</em> and <em>Announcements</em> keep the Issues tab clean for real, actionable work. A discussion can be converted into an issue once it becomes a clear task.</p>
        </div>

        <div class="lc-card">
          <h3>Writing Well: GitHub Flavored Markdown in Issues and PRs</h3>
          <p>Issue descriptions, comments and PR bodies all use <strong>GitHub Flavored Markdown</strong>, which adds a few team features to normal Markdown. This comment source:</p>
          <div class="lc-code-block"><pre><code>Thanks @ravi! This fixes #12 and is related to asha/chai-menu#3.

        - [x] Update the price list
        - [ ] Add a photo of the stall

        &gt; [!WARNING]
        &gt; Prices change on 1 October.

        ```python
        print(round(100 / 3, 2))
        ```</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Markdown</th><th>What GitHub shows</th></tr></thead>
            <tbody>
              <tr><td><code>@ravi</code></td><td>A mention: Ravi gets a notification</td></tr>
              <tr><td><code>#12</code>, <code>asha/chai-menu#3</code></td><td>Links to issue or PR 12 in this repo, and #3 in another repo, with a live open/closed status</td></tr>
              <tr><td><code>- [ ]</code> / <code>- [x]</code></td><td>A task list with clickable checkboxes</td></tr>
              <tr><td><code>&gt; [!WARNING]</code></td><td>A coloured alert box (also <code>NOTE</code>, <code>TIP</code>, <code>IMPORTANT</code>, <code>CAUTION</code>)</td></tr>
              <tr><td><code>```python</code> … <code>```</code></td><td>A code block with syntax highlighting (<code>```mermaid</code> draws a diagram)</td></tr>
              <tr><td>A pasted commit hash</td><td>A short link to that commit</td></tr>
            </tbody>
          </table>
          <p>Use the <em>Preview</em> tab before posting. <strong>Saved replies</strong> (the reply icon in the comment toolbar) store answers you type often, such as "Thanks — could you add a test?".</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Vague titles like "Help!!" or "Error". Nobody can search for them later.</li>
            <li>Writing <code>Fixes #12</code> in a PR that targets a non-default branch — the issue will not auto-close.</li>
            <li>Using milestones for categories (that is what labels are for) or labels for deadlines.</li>
            <li>Creating a project board but never updating it. Use the built-in workflows so cards move automatically.</li>
            <li>Letting the Issues tab fill with open-ended questions — move them to Discussions.</li>
            <li>Pasting passwords, tokens or customer data into public issues.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In your practice repo, open two issues: one <code>bug</code> and one <code>enhancement</code>, each with steps or acceptance criteria.</li>
            <li>Add the issue form above, commit it to <code>main</code> and click <strong>New issue</strong> to see the form.</li>
            <li>Create a milestone <code>v1.0</code> due in two weeks and a Project with a Board view; add both issues to each.</li>
            <li>Enable the Project workflow "Item closed → Status: Done".</li>
            <li>Fix one issue on a branch, with <code>Fixes #N</code> in the commit message body. Merge into <code>main</code> and watch the issue close and its card move to Done.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>For a college team project, one shared Project board plus one milestone per submission deadline is simple and works very well. Before opening an issue in someone else's project, search existing issues (including closed ones) first.</p></div>
      HTML
    },

    7 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Pull Requests and Merge Methods</h1>
        </div>
        <p class="lc-lead">A <strong>pull request</strong> (PR) says: "I have changes on this branch — please review them and merge them into <code>main</code>." It is the heart of teamwork on GitHub: discussion, review, automated checks and the final merge all happen on the PR page.</p>

        <div class="lc-card">
          <h3>Opening a Pull Request</h3>
          <ol class="lc-list">
            <li>Push your branch: <code>git push -u origin feature/snacks</code>.</li>
            <li>On GitHub click the yellow <strong>Compare &amp; pull request</strong> banner (or <em>Pull requests → New</em>).</li>
            <li>Check the direction: <strong>base</strong> = where changes go (<code>main</code>), <strong>compare</strong> = your branch.</li>
            <li>Write a title and description: what changed, why, how to test, and <code>Closes #N</code> for the issue.</li>
            <li>Request reviewers, then <strong>Create pull request</strong> — or <strong>Create draft pull request</strong> if it is not ready yet.</li>
          </ol>
          <p>With gh, from your branch:</p>
          <div class="lc-code-block"><pre><code>$ gh pr create --title &quot;Add snacks list&quot; --body &quot;Closes #7&quot; --reviewer ravi
        $ gh pr create --draft --fill
        $ gh pr list
        $ gh pr view --web</code></pre></div>
          <p>Every new commit you push to the branch appears in the PR automatically.</p>
        </div>

        <div class="lc-card">
          <h3>PR Page Tabs</h3>
          <table class="lc-table">
            <thead><tr><th>Tab</th><th>Shows</th></tr></thead>
            <tbody>
              <tr><td>Conversation</td><td>Description, comments, reviews, check results, the merge button</td></tr>
              <tr><td>Commits</td><td>Every commit on the branch</td></tr>
              <tr><td>Checks</td><td>GitHub Actions results (lesson 14)</td></tr>
              <tr><td>Files changed</td><td>The diff, where reviewers leave line comments (lesson 8)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>The Three Merge Methods — What They Do to History</h3>
          <p>The green button offers three options. To see the difference, we reproduce each one with plain Git. Starting point: <code>main</code> got a README while the PR branch has two commits:</p>
          <div class="lc-code-block"><pre><code>$ git log --oneline --graph --all
        * 09ad44f Add README
        | * cbd8134 Add kachori
        | * 4fc6e86 Add samosa
        |/
        * 7901826 Add menu</code></pre></div>
          <p>We want to try all three methods on the <em>same</em> starting point, so we make three throw-away copies of <code>main</code> — <code>m1</code>, <code>m2</code> and <code>m3</code> — one per method (on GitHub you would simply pick one button):</p>
          <div class="lc-code-block"><pre><code>$ git branch m1 main
        $ git branch m2 main
        $ git branch m3 main
        $ git branch
          feature/snacks
          m1
          m2
          m3
        * main</code></pre></div>
          <h4>1. Create a merge commit</h4>
          <div class="lc-code-block"><pre><code>$ git switch m1
        Switched to branch &#39;m1&#39;
        $ git merge --no-ff feature/snacks -m &quot;Merge pull request #7 from asha/feature/snacks&quot;
        Merge made by the &#39;ort&#39; strategy.
         snacks.txt | 2 ++
         1 file changed, 2 insertions(+)
         create mode 100644 snacks.txt
        $ git log --oneline --graph -5
        *   cd771b8 Merge pull request #7 from asha/feature/snacks
        |\
        | * cbd8134 Add kachori
        | * 4fc6e86 Add samosa
        * | 09ad44f Add README
        |/
        * 7901826 Add menu</code></pre></div>
          <p>All commits are kept, joined by a merge commit — the default message is "Merge pull request #7 from …", exactly like the octocat example in lesson 1.</p>
          <h4>2. Squash and merge</h4>
          <div class="lc-code-block"><pre><code>$ git switch m2
        Switched to branch &#39;m2&#39;
        $ git merge --squash feature/snacks
        Automatic merge went well; stopped before committing as requested
        Squash commit -- not updating HEAD
        $ git commit -m &quot;Add snacks list (#7)&quot;
        [m2 cfa8ab5] Add snacks list (#7)
         1 file changed, 2 insertions(+)
         create mode 100644 snacks.txt
        $ git log --oneline --graph -3
        * cfa8ab5 Add snacks list (#7)
        * 09ad44f Add README
        * 7901826 Add menu</code></pre></div>
          <p>The two commits become <strong>one</strong> new commit on <code>main</code>, titled with the PR number. Messy "fix typo" commits disappear from <code>main</code>'s history.</p>
          <h4>3. Rebase and merge</h4>
          <div class="lc-code-block"><pre><code>$ git switch feature/snacks
        Switched to branch &#39;feature/snacks&#39;
        $ git rebase m3
        Successfully rebased and updated refs/heads/feature/snacks.
        $ git switch m3
        Switched to branch &#39;m3&#39;
        $ git merge --ff-only feature/snacks
        Updating 09ad44f..b97cf7c
        Fast-forward
         snacks.txt | 2 ++
         1 file changed, 2 insertions(+)
         create mode 100644 snacks.txt
        $ git log --oneline --graph -4
        * b97cf7c Add kachori
        * 24e8742 Add samosa
        * 09ad44f Add README
        * 7901826 Add menu</code></pre></div>
          <p>The commits are replayed on top of <code>main</code> (here the copy <code>m3</code>) with new hashes; no merge commit, a straight line. When you are done experimenting, delete the copies with <code>git branch -D m1 m2 m3</code>.</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>History on main</th><th>Good when</th></tr></thead>
            <tbody>
              <tr><td>Merge commit</td><td>Every commit + merge commit</td><td>You want the full story of each branch</td></tr>
              <tr><td>Squash and merge</td><td>One commit per PR</td><td>Small PRs, many "wip" commits (very common default)</td></tr>
              <tr><td>Rebase and merge</td><td>Every commit, straight line</td><td>Each commit is clean and meaningful</td></tr>
            </tbody>
          </table>
          <p>Admins can turn methods on or off in <em>Settings → General → Pull Requests</em>. From the terminal: <code>gh pr merge 7 --squash --delete-branch</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Opening a PR in the wrong direction (base = your branch). Always read "base ← compare" before creating.</li>
            <li>Huge PRs with 40 files. Reviewers skim them; small PRs get better reviews and merge faster.</li>
            <li>An empty description. Say what, why and how to test; add screenshots for UI changes.</li>
            <li>Opening a new PR for every fix after review — just push more commits to the same branch.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create a branch with two commits, push it and open a <strong>draft</strong> PR that says <code>Closes #N</code> for one of your issues.</li>
            <li>Push one more commit and watch it appear on the PR.</li>
            <li>Mark the PR "Ready for review", then merge it with <strong>Squash and merge</strong>.</li>
            <li>Run <code>git switch main &amp;&amp; git pull</code> and look at <code>git log --oneline</code>. How many commits did the PR add?</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Add <code>.github/pull_request_template.md</code> to your repo (for example with headings "What", "Why", "How to test") and every new PR description starts from it.</p></div>
      HTML
    },

    8 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Code Review on GitHub</h1>
        </div>
        <p class="lc-lead"><strong>Code review</strong> means a teammate reads your changes before they are merged. It catches bugs, spreads knowledge and keeps the codebase consistent. Being a good reviewer — and a good receiver of reviews — is a core professional skill.</p>

        <div class="lc-card">
          <h3>How to Review on GitHub</h3>
          <ol class="lc-list">
            <li>Open the PR's <strong>Files changed</strong> tab.</li>
            <li>Hover a line and click <strong>+</strong> to comment; drag to comment on several lines.</li>
            <li>Click <strong>Start a review</strong> (not "Add single comment") so all comments are sent together.</li>
            <li>Finish with <strong>Review changes</strong> (called <strong>Submit review</strong> in GitHub's newer layout) and pick one:</li>
          </ol>
          <table class="lc-table">
            <thead><tr><th>Choice</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><strong>Comment</strong></td><td>Feedback only, no decision</td></tr>
              <tr><td><strong>Approve</strong></td><td>Good to merge</td></tr>
              <tr><td><strong>Request changes</strong></td><td>Must be fixed before merging (can block merging if branch rules require approvals)</td></tr>
            </tbody>
          </table>
          <p>With gh: <code>gh pr review 7 --approve</code> or <code>gh pr review 7 --request-changes --body "Please handle negative discounts"</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Suggested Changes</h3>
          <p>For small fixes, write a <strong>suggestion</strong> in a line comment. The author can apply it with one click (<em>Commit suggestion</em>):</p>
          <div class="lc-code-block"><pre><code>```suggestion
            return round(sum(items) - discount, 2)
        ```</code></pre></div>
          <p>The code inside the block replaces the line(s) you commented on.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Test a PR Locally</h3>
          <p>Reading the diff is not always enough — run the code. Every PR is available as a special ref <code>pull/&lt;number&gt;/head</code>. Using a real PR on <code>octocat/Hello-World</code>:</p>
          <div class="lc-code-block"><pre><code>$ git fetch origin pull/6/head:pr-6
        From https://github.com/octocat/Hello-World
         * [new ref]         refs/pull/6/head -&gt; pr-6
        $ git switch pr-6
        Switched to branch &#39;pr-6&#39;
        $ git log --oneline -2
        7629413 New line at end of file. --Signed off by Spaceghost
        553c207 first commit</code></pre></div>
          <p>You now have the PR's commits on a local branch <code>pr-6</code>. gh does the same in one step: <code>gh pr checkout 6</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Responding to Feedback</h3>
          <p>A reviewer asked Asha to reject negative discounts on her <code>feature/discount</code> PR. She fixes it on the same branch and pushes:</p>
          <div class="lc-code-block"><pre><code>$ printf &quot;def total(items, discount=0):\n    if discount &lt; 0:\n        raise ValueError(\&quot;discount cannot be negative\&quot;)\n    return sum(items) - discount\n&quot; &gt; cart.py
        $ git commit -am &quot;Reject negative discounts (review feedback)&quot;
        [feature/discount 1f27e0c] Reject negative discounts (review feedback)
         1 file changed, 2 insertions(+)
        $ git push
        To https://github.com/asha/review-demo.git
           e2b8168..1f27e0c  feature/discount -&gt; feature/discount</code></pre></div>
          <p>The PR updates automatically. Reply to each comment (e.g. "Done in 1f27e0c"), click <strong>Resolve conversation</strong>, and press <strong>Re-request review</strong>.</p>
        </div>

        <div class="lc-card">
          <h3>What Reviewers Look For</h3>
          <ul class="lc-list">
            <li><strong>Correctness:</strong> does it work, including edge cases (empty list, zero, negative numbers)?</li>
            <li><strong>Tests:</strong> are new features and fixes tested? Do checks pass?</li>
            <li><strong>Readability:</strong> clear names, no dead code or debug prints.</li>
            <li><strong>Security:</strong> no secrets, user input validated.</li>
            <li><strong>Scope:</strong> does the PR do one thing?</li>
          </ul>
          <p><strong>Tone:</strong> comment on the code, not the person. "Could we handle an empty cart here?" is better than "You forgot empty carts." Many teams prefix optional ideas with <code>nit:</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Approving without reading ("LGTM" in 10 seconds on 500 lines).</li>
            <li>Sending twenty separate single comments instead of one review — twenty notifications.</li>
            <li>Force-pushing a rewritten branch during review, which makes it hard for reviewers to see what changed. Prefer new commits; squash at merge time.</li>
            <li>Taking review comments personally. They are about making the code better.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Ask a friend to open a small PR on your repo (or open one from a second account/branch).</li>
            <li>Leave a review with one line comment, one <code>suggestion</code> block, and a final "Request changes".</li>
            <li>As the author, apply the suggestion with "Commit suggestion", push another fix from your terminal, and re-request review.</li>
            <li>Fetch any open PR of a public project with <code>git fetch origin pull/N/head:pr-N</code> and run it locally.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Add a <code>CODEOWNERS</code> file (lesson 9) and GitHub will automatically request reviews from the right people whenever their part of the code changes.</p></div>
      HTML
    },

    9 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Collaborators, Teams and Permissions</h1>
        </div>
        <p class="lc-lead">Who may push, merge, or change settings? GitHub controls this with <strong>roles</strong>. The rule for security is simple: <strong>give everyone the lowest access that lets them do their job</strong> (least privilege).</p>

        <div class="lc-card">
          <h3>Personal Repositories</h3>
          <p>In a repo owned by your personal account there are two levels: <strong>you (owner)</strong> and <strong>collaborators</strong>. Invite with <em>Settings → Collaborators → Add people</em>. A collaborator can push, merge PRs and manage issues, but cannot change settings or delete the repo. For finer control, use an organization.</p>
        </div>

        <div class="lc-card">
          <h3>Organization Repository Roles</h3>
          <table class="lc-table">
            <thead><tr><th>Role</th><th>Can do</th><th>Typical person</th></tr></thead>
            <tbody>
              <tr><td><strong>Read</strong></td><td>View and clone code, open issues, comment</td><td>Stakeholders, other teams</td></tr>
              <tr><td><strong>Triage</strong></td><td>Read + manage issues and PRs (labels, assign, close) without pushing</td><td>Community helpers</td></tr>
              <tr><td><strong>Write</strong></td><td>Triage + push branches, merge PRs</td><td>Developers</td></tr>
              <tr><td><strong>Maintain</strong></td><td>Write + manage some repo settings (not destructive ones)</td><td>Project leads</td></tr>
              <tr><td><strong>Admin</strong></td><td>Everything, including security settings, deleting and transferring</td><td>Very few people</td></tr>
            </tbody>
          </table>
          <p>An <strong>organization</strong> (free for public and private repos) groups people and repositories — perfect for a college club or a startup. Inside it, <strong>teams</strong> such as <code>@chai-org/backend</code> get a role on many repos at once, and can be mentioned or requested as reviewers.</p>
        </div>

        <div class="lc-card">
          <h3>CODEOWNERS: Automatic Reviewers</h3>
          <p>Create <code>.github/CODEOWNERS</code>. Each line is a file pattern followed by owners. The <strong>last matching line wins</strong>:</p>
          <div class="lc-code-block"><pre><code># Default owner for everything
        *               @asha

        # Frontend team owns the web folder
        /web/           @chai-org/frontend

        # Workflows need a DevOps review
        /.github/workflows/  @chai-org/devops</code></pre></div>
          <p>When a PR touches <code>web/</code>, the frontend team is asked to review automatically. With a branch rule "Require review from Code Owners" (lesson 12), their approval becomes mandatory. Owners must have write access to the repo.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Credit a Pair-Programming Partner</h3>
          <p>When two people write code together, add a <code>Co-authored-by:</code> trailer at the end of the commit message. GitHub then shows both avatars on the commit and counts it for both:</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;Upma - 35&quot; &gt; breakfast.txt
        $ git add breakfast.txt
        $ git commit -m &quot;Add breakfast menu&quot; -m &quot;Co-authored-by: Ravi Kumar &lt;ravi@example.com&gt;&quot;
        [main 382847d] Add breakfast menu
         1 file changed, 1 insertion(+)
         create mode 100644 breakfast.txt
        $ git log -1
        commit 382847d...
        Author: Asha Rao &lt;asha@example.com&gt;
        Date:   Tue Sep 1 10:07:00 2026 +0530

            Add breakfast menu

            Co-authored-by: Ravi Kumar &lt;ravi@example.com&gt;</code></pre></div>
          <p>The email must be one linked to the co-author's GitHub account (or their <code>noreply</code> address).</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Making every team member an Admin "to save time". One mistake can delete the repository or disable security features.</li>
            <li>Not removing access when someone leaves the team or the course ends.</li>
            <li>Sharing one account between several people instead of inviting each person.</li>
            <li>Adding a CODEOWNERS entry for someone without write access — GitHub ignores it (and marks the line with an error in the file view).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Invite a friend as a collaborator on a practice repo and ask them to push a branch.</li>
            <li>Create a free organization for your study group and move (transfer) or create one repo inside it.</li>
            <li>Create a team, give it the <strong>Write</strong> role on that repo, and add a <code>CODEOWNERS</code> file that names the team.</li>
            <li>Make a commit with a <code>Co-authored-by:</code> trailer and check that GitHub shows two authors.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Review who has access every few months: <em>Settings → Collaborators and teams</em>. Access you forgot about is a security risk.</p></div>
      HTML
    },

    10 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">GitHub Flow from Start to Finish</h1>
        </div>
        <p class="lc-lead"><strong>GitHub Flow</strong> is the lightweight workflow most teams use: <code>main</code> is always deployable, every change happens on a short-lived branch, and every branch reaches <code>main</code> through a reviewed pull request.</p>

        <div class="lc-card">
          <h3>The Six Steps</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">1. Branch<small>from fresh main</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">2. Commit<small>small steps</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">3. Push + PR<small>early</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">4. Review + CI<small>fix feedback</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">5. Merge<small>often squash</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">6. Clean up<small>delete branch</small></div>
          </div>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Steps 1–3</h3>
          <div class="lc-code-block"><pre><code>$ git switch main
        Already on &#39;main&#39;
        Your branch is up to date with &#39;origin/main&#39;.
        $ git pull
        Already up to date.
        $ git switch -c feature/lassi
        Switched to a new branch &#39;feature/lassi&#39;
        $ echo &quot;Sweet lassi - 40&quot; &gt;&gt; menu.txt
        $ git commit -am &quot;Add sweet lassi&quot;
        [feature/lassi 5cab78d] Add sweet lassi
         1 file changed, 1 insertion(+)
        $ git push -u origin feature/lassi
        To https://github.com/asha/flow.git
         * [new branch]      feature/lassi -&gt; feature/lassi
        branch &#39;feature/lassi&#39; set up to track &#39;origin/feature/lassi&#39;.</code></pre></div>
          <p>Now open the PR (<code>gh pr create --fill</code> or the Compare &amp; pull request banner), get it reviewed, and let CI run.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Steps 5–6 After a Squash Merge</h3>
          <p>The reviewer approved and the PR was merged with <strong>Squash and merge</strong>, and GitHub deleted the branch. Back on your laptop:</p>
          <div class="lc-code-block"><pre><code>$ git switch main
        Switched to branch &#39;main&#39;
        Your branch is up to date with &#39;origin/main&#39;.
        $ git pull --prune
        From https://github.com/asha/flow
         - [deleted]         (none)     -&gt; origin/feature/lassi
           7901826..b971849  main       -&gt; origin/main
        Updating 7901826..b971849
        Fast-forward
         menu.txt | 1 +
         1 file changed, 1 insertion(+)
        $ git branch -d feature/lassi
        error: the branch &#39;feature/lassi&#39; is not fully merged
        hint: If you are sure you want to delete it, run &#39;git branch -D feature/lassi&#39;
        hint: Disable this message with &quot;git config set advice.forceDeleteBranch false&quot;
        $ git branch -D feature/lassi
        Deleted branch feature/lassi (was 5cab78d).
        $ git log --oneline
        b971849 Add sweet lassi (#3)
        7901826 Add menu</code></pre></div>
          <ul class="lc-list">
            <li><code>--prune</code> removed <code>origin/feature/lassi</code>, because the branch was deleted on GitHub.</li>
            <li><code>git branch -d</code> refused! After a <strong>squash</strong> merge, <code>main</code> contains a <em>new</em> commit (<code>b971849</code>), not your original <code>5cab78d</code>, so Git thinks the branch is unmerged.</li>
            <li>You checked the PR was merged, so <code>-D</code> is safe here. <code>main</code> now has one tidy commit, <code>Add sweet lassi (#3)</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Rules of GitHub Flow</h3>
          <ul class="lc-list">
            <li>Never commit directly to <code>main</code> — enforce it with branch rules (lesson 12).</li>
            <li>Name branches after the work: <code>feature/lassi</code>, <code>fix/12-rounding</code>.</li>
            <li>Keep branches short: hours or days, not weeks. Long branches cause big conflicts.</li>
            <li>If <code>main</code> moved while you worked, update your branch (<code>git pull origin main</code> or the <em>Update branch</em> button on the PR) and re-test.</li>
            <li>Deploy from <code>main</code> — often automatically with Actions.</li>
          </ul>
          <p>Other workflows exist (like Git Flow with <code>develop</code> and <code>release</code> branches), but GitHub Flow is the simplest and the most common for web projects.</p>
          <h4>Ways to bring a new <code>main</code> into your PR branch</h4>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Where</th><th>History of your branch</th><th>Use when</th></tr></thead>
            <tbody>
              <tr><td><strong>Update branch</strong> (merge)</td><td>Button on the PR page</td><td>Adds a merge commit; nothing is rewritten</td><td>No conflicts; the easiest choice</td></tr>
              <tr><td><strong>Update with rebase</strong></td><td>Arrow next to the same button</td><td>Your commits get new hashes on top of <code>main</code></td><td>The team wants a straight history</td></tr>
              <tr><td><code>git merge origin/main</code></td><td>Your terminal</td><td>Adds a merge commit</td><td>There are conflicts to resolve and test locally</td></tr>
              <tr><td><code>git rebase origin/main</code> + <code>git push --force-with-lease</code></td><td>Your terminal</td><td>Rewritten, straight line</td><td>Only your own branch, and nobody else has pulled it</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: When Your Pull Request Has a Conflict</h3>
          <p>While your PR <code>feature/ginger-price</code> waited for review, Ravi's PR changed the <strong>same line</strong> on <code>main</code>. GitHub now shows "This branch has conflicts that must be resolved" and the merge button is disabled. Fix it locally by merging the new <code>main</code> into your branch:</p>
          <div class="lc-code-block"><pre><code>$ git fetch origin
        From https://github.com/asha/chai-stall
           e93823f..f3238cd  main       -&gt; origin/main
        $ git merge origin/main
        Auto-merging menu.txt
        CONFLICT (content): Merge conflict in menu.txt
        Automatic merge failed; fix conflicts and then commit the result.
        $ cat menu.txt
        Masala chai - 20
        &lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD
        Ginger chai - 30
        =======
        Ginger chai - 28
        &gt;&gt;&gt;&gt;&gt;&gt;&gt; origin/main
        $ printf &quot;Masala chai - 20\nGinger chai - 30\n&quot; &gt; menu.txt
        $ git add menu.txt
        $ git commit -m &quot;Merge origin/main into feature/ginger-price&quot;
        [feature/ginger-price 14c38ce] Merge origin/main into feature/ginger-price
        $ git push
        To https://github.com/asha/chai-stall.git
           cadf939..14c38ce  feature/ginger-price -&gt; feature/ginger-price
        $ git log --oneline --graph -4
        *   14c38ce Merge origin/main into feature/ginger-price
        |\
        | * f3238cd Ginger chai costs 28 (#4)
        * | cadf939 Raise ginger chai price
        |/
        * e93823f Add menu</code></pre></div>
          <ul class="lc-list">
            <li><code>HEAD</code> is your branch (<code>30</code>); <code>origin/main</code> is Ravi's merged change (<code>28</code>). Talk to Ravi, decide the right value, remove the markers, then <code>add</code> and <code>commit</code>.</li>
            <li>A normal <code>git push</code> updates the PR. The conflict message disappears and CI runs again.</li>
            <li>For small text conflicts you can also click <strong>Resolve conflicts</strong> on the PR page and edit in the browser. (If the team prefers a straight history, use <code>git rebase origin/main</code> and <code>git push --force-with-lease</code> instead — only on your own branch.)</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Starting a new branch from an old <code>main</code>. Always <code>git switch main &amp;&amp; git pull</code> first.</li>
            <li>Continuing to commit on a branch whose PR was already squash-merged — those commits conflict with the squashed version. Start a new branch.</li>
            <li>Piling several unrelated features into one branch.</li>
            <li>Keeping dozens of stale local branches. Clean up after every merge.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Pick an open issue in your practice repo and follow all six steps, with <code>Closes #N</code> in the PR.</li>
            <li>Merge with "Squash and merge" and tick "Delete branch".</li>
            <li>Locally run <code>git switch main</code>, <code>git pull --prune</code>, and try <code>git branch -d</code> on your branch. Explain the result.</li>
            <li>Set <code>git config --global fetch.prune true</code> so every fetch prunes deleted branches.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Turn on <em>Settings → General → Automatically delete head branches</em>, so GitHub removes each branch as soon as its PR is merged.</p></div>
      HTML
    },

    11 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Forks, Upstream and Open Source Contributions</h1>
        </div>
        <p class="lc-lead">You cannot push to other people's repositories. Instead you <strong>fork</strong>: GitHub makes your own copy, you push changes there, and open a pull request back to the original project — called <strong>upstream</strong>.</p>

        <div class="lc-card">
          <h3>Three Copies, Two Remotes</h3>
          <svg viewBox="0 0 620 200" width="100%" style="max-width:620px" role="img" aria-label="Upstream repository, your fork on GitHub, and your local clone, connected by fetch, push and pull request arrows">
            <defs><marker id="h12a" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto"><path d="M0 0 L10 5 L0 10 z" fill="var(--txt2)"/></marker></defs>
            <rect x="20" y="20" width="200" height="60" rx="10" fill="var(--bg3)" stroke="#6366f1"/>
            <text x="120" y="45" text-anchor="middle" fill="var(--txt)" font-size="14" font-weight="600">upstream</text>
            <text x="120" y="65" text-anchor="middle" fill="var(--txt2)" font-size="11">chai-org/chai-menu</text>
            <rect x="400" y="20" width="200" height="60" rx="10" fill="var(--bg3)" stroke="#22c55e"/>
            <text x="500" y="45" text-anchor="middle" fill="var(--txt)" font-size="14" font-weight="600">origin (your fork)</text>
            <text x="500" y="65" text-anchor="middle" fill="var(--txt2)" font-size="11">asha/chai-menu</text>
            <rect x="210" y="130" width="200" height="60" rx="10" fill="var(--bg3)" stroke="#f97316"/>
            <text x="310" y="155" text-anchor="middle" fill="var(--txt)" font-size="14" font-weight="600">local clone</text>
            <text x="310" y="175" text-anchor="middle" fill="var(--txt2)" font-size="11">your laptop</text>
            <line x1="398" y1="42" x2="224" y2="42" stroke="var(--txt2)" stroke-width="2" marker-end="url(#h12a)"/>
            <text x="310" y="34" text-anchor="middle" fill="var(--txt2)" font-size="11">pull request</text>
            <line x1="120" y1="82" x2="240" y2="128" stroke="var(--txt2)" stroke-width="2" marker-end="url(#h12a)"/>
            <text x="150" y="118" fill="var(--txt2)" font-size="11">git fetch upstream</text>
            <line x1="380" y1="128" x2="480" y2="84" stroke="var(--txt2)" stroke-width="2" marker-end="url(#h12a)"/>
            <text x="440" y="118" fill="var(--txt2)" font-size="11">git push origin</text>
          </svg>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Fork and Clone</h3>
          <p>Click <strong>Fork</strong> on <code>chai-org/chai-menu</code> (or run <code>gh repo fork chai-org/chai-menu --clone</code>, which also adds <code>upstream</code> for you). Then clone <em>your fork</em> and add the original as <code>upstream</code>:</p>
          <div class="lc-code-block"><pre><code>$ git clone https://github.com/asha/chai-menu.git
        Cloning into &#39;chai-menu&#39;...
        $ cd chai-menu
        $ git remote add upstream https://github.com/chai-org/chai-menu.git
        $ git remote -v
        origin	https://github.com/asha/chai-menu.git (fetch)
        origin	https://github.com/asha/chai-menu.git (push)
        upstream	https://github.com/chai-org/chai-menu.git (fetch)
        upstream	https://github.com/chai-org/chai-menu.git (push)</code></pre></div>
          <p>(Over the network, clone also prints <code>remote:</code> and <code>Receiving objects</code> progress lines.) <code>origin</code> = your fork (you can push); <code>upstream</code> = the original (you only fetch).</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Sync Your Fork</h3>
          <p>A week later, Meera merged "Add ginger chai" into upstream. Bring your fork up to date:</p>
          <div class="lc-code-block"><pre><code>$ git fetch upstream
        From https://github.com/chai-org/chai-menu
         * [new branch]      main       -&gt; upstream/main
        $ git switch main
        Already on &#39;main&#39;
        Your branch is up to date with &#39;origin/main&#39;.
        $ git merge --ff-only upstream/main
        Updating 7901826..30881ff
        Fast-forward
         menu.txt | 1 +
         1 file changed, 1 insertion(+)
        $ git push origin main
        To https://github.com/asha/chai-menu.git
           7901826..30881ff  main -&gt; main</code></pre></div>
          <p><code>--ff-only</code> guarantees you never create an accidental merge commit on your fork's <code>main</code> — keep that branch identical to upstream and do your own work on feature branches. Shortcuts: the <strong>Sync fork</strong> button on your fork's page, or <code>gh repo sync</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Prepare a Contribution</h3>
          <p>Many projects ask for a <strong>sign-off</strong> (the Developer Certificate of Origin). <code>-s</code> adds it:</p>
          <div class="lc-code-block"><pre><code>$ git switch -c fix/typo-readme
        Switched to a new branch &#39;fix/typo-readme&#39;
        $ echo &quot;# Chai Menu&quot; &gt; README.md
        $ git add README.md
        $ git commit -s -m &quot;Add README&quot;
        [fix/typo-readme fa440f2] Add README
         1 file changed, 1 insertion(+)
         create mode 100644 README.md
        $ git log -1
        commit fa440f2...
        Author: Asha Rao &lt;asha@example.com&gt;
        Date:   Tue Sep 1 10:18:00 2026 +0530

            Add README

            Signed-off-by: Asha Rao &lt;asha@example.com&gt;
        $ git push -u origin fix/typo-readme
        To https://github.com/asha/chai-menu.git
         * [new branch]      fix/typo-readme -&gt; fix/typo-readme
        branch &#39;fix/typo-readme&#39; set up to track &#39;origin/fix/typo-readme&#39;.</code></pre></div>
          <p>Now open a PR from <code>asha:fix/typo-readme</code> to <code>chai-org:main</code> — GitHub offers this automatically on your fork, or run <code>gh pr create</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Open Source Etiquette</h3>
          <ul class="lc-list">
            <li>Read <code>README</code>, <code>CONTRIBUTING.md</code> and the <code>CODE_OF_CONDUCT.md</code> first. Follow their style and test commands.</li>
            <li>Start with issues labelled <code>good first issue</code>. Comment "I would like to work on this" and wait for a maintainer to assign you.</li>
            <li>For big changes, open an issue to discuss before writing code.</li>
            <li>Keep PRs small and focused; link the issue; be patient — maintainers are often volunteers.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>The Wider GitHub Community</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><strong>Stars and Follow</strong></td><td>Star a repository to bookmark it; follow people and organisations to see their activity on your home feed</td></tr>
              <tr><td><strong>Topics and Explore</strong></td><td>Tag repositories with topics (<code>python</code>, <code>good-first-issue</code>); <code>github.com/explore</code> and <code>github.com/topics</code> help you find projects</td></tr>
              <tr><td><strong>GitHub Sponsors</strong></td><td>Pay open-source maintainers you depend on, monthly or once; a <code>.github/FUNDING.yml</code> file adds a Sponsor button</td></tr>
              <tr><td><strong>GitHub Marketplace</strong></td><td>Apps and Actions that extend GitHub (lesson 16)</td></tr>
              <tr><td><strong>InnerSource</strong></td><td>Using open-source habits — public issues, PRs from other teams, CONTRIBUTING files — <em>inside</em> a company</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Committing on your fork's <code>main</code>. It then diverges from upstream and every sync becomes painful. Always branch.</li>
            <li>Cloning the upstream URL instead of your fork, then getting "Permission denied" on push.</li>
            <li>Forgetting to sync before starting new work, so your PR conflicts immediately.</li>
            <li>Spam PRs (renaming a word, adding your name to a list) during events like Hacktoberfest. Maintainers mark them as invalid.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Fork any small public repository (a friend's, or a practice repo such as <code>octocat/Spoon-Knife</code>).</li>
            <li>Clone your fork, add <code>upstream</code>, and check <code>git remote -v</code> shows four lines.</li>
            <li>Run the sync steps (<code>fetch upstream</code>, <code>merge --ff-only</code>, <code>push origin main</code>).</li>
            <li>Make a signed-off commit on a branch, push it to your fork and open a PR to upstream.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Maintainers can usually push small fixes directly to your PR branch if "Allow edits by maintainers" is ticked — leave it on; it helps your PR get merged faster.</p></div>
      HTML
    },

    12 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Branch Protection and Rulesets</h1>
        </div>
        <p class="lc-lead">Good habits are easier when GitHub enforces them. <strong>Rulesets</strong> (and the older <strong>branch protection rules</strong>) can stop anyone from pushing straight to <code>main</code>, require reviews and passing tests, and block force-pushes and deletion.</p>

        <div class="lc-card">
          <h3>Rulesets vs Classic Branch Protection</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Rulesets (recommended)</th><th>Branch protection rules (classic)</th></tr></thead>
            <tbody>
              <tr><td>Where</td><td><em>Settings → Rules → Rulesets</em></td><td><em>Settings → Branches</em></td></tr>
              <tr><td>Targets</td><td>Branches <em>and</em> tags, by name pattern (e.g. <code>main</code>, <code>release/*</code>)</td><td>Branches only</td></tr>
              <tr><td>On/off</td><td>Active or Disabled without deleting</td><td>Delete to turn off</td></tr>
              <tr><td>Layering</td><td>Several rulesets can apply at once; the strictest wins</td><td>One rule per branch pattern</td></tr>
              <tr><td>Who can see them</td><td>Anyone with read access</td><td>Admins only</td></tr>
            </tbody>
          </table>
          <p>Availability: in public repositories on the Free plan, and in private repositories on paid plans (Pro, Team, Enterprise).</p>
        </div>

        <div class="lc-card">
          <h3>Recommended Rules for main</h3>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td>Restrict deletions</td><td><code>main</code> cannot be deleted</td></tr>
              <tr><td>Block force pushes</td><td>History on <code>main</code> cannot be rewritten</td></tr>
              <tr><td>Require a pull request before merging</td><td>No direct pushes; set required approvals (e.g. 1)</td></tr>
              <tr><td>Dismiss stale approvals when new commits are pushed</td><td>Reviewers must re-check changed code</td></tr>
              <tr><td>Require review from Code Owners</td><td>CODEOWNERS must approve their areas (lesson 9)</td></tr>
              <tr><td>Require status checks to pass</td><td>The CI job (lesson 14) must be green</td></tr>
              <tr><td>Require linear history</td><td>Only squash or rebase merges allowed</td></tr>
              <tr><td>Require signed commits</td><td>Commits must be GPG/SSH signed and verified (set up SSH signing in lesson 2)</td></tr>
            </tbody>
          </table>
          <p>The <strong>bypass list</strong> lets chosen roles or apps skip a ruleset (for example admins in an emergency). Keep it as short as possible. You can inspect rules from the terminal with <code>gh ruleset list</code> and <code>gh ruleset check main</code>.</p>
        </div>

        <div class="lc-card">
          <h3>What a Blocked Push Looks Like</h3>
          <p>If you <code>git push origin main</code> while a ruleset requires pull requests, GitHub rejects it. The message contains lines like:</p>
          <div class="lc-code-block"><pre><code>remote: error: GH013: Repository rule violations found for refs/heads/main.
        remote: - Changes must be made through a pull request.
         ! [remote rejected] main -&gt; main (push declined due to repository rule violations)</code></pre></div>
          <p>(With classic branch protection the code is <code>GH006: Protected branch update failed</code>.) Nothing is lost — your commit is still on your laptop.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Move a Commit Off main</h3>
          <p>You committed on <code>main</code> by mistake and the push was blocked. Move the commit to a new branch and reset <code>main</code> to match GitHub. Here is the whole story, starting with the edit (we use <code>sed</code>; changing the file in your editor is the same):</p>
          <div class="lc-code-block"><pre><code>$ sed -i.bak &#39;s/Masala chai - 20/Masala chai - 25/&#39; menu.txt &amp;&amp; rm menu.txt.bak
        $ git diff --stat
         menu.txt | 2 +-
         1 file changed, 1 insertion(+), 1 deletion(-)
        $ git commit -am &quot;Raise masala chai price&quot;
        [main 967ed7f] Raise masala chai price
         1 file changed, 1 insertion(+), 1 deletion(-)
        $ git status -sb
        ## main...origin/main [ahead 1]
        $ git branch fix/price
        $ git reset --hard origin/main
        HEAD is now at 7901826 Add menu
        $ git switch fix/price
        Switched to branch &#39;fix/price&#39;
        $ git push -u origin fix/price
        To https://github.com/asha/protected.git
         * [new branch]      fix/price -&gt; fix/price
        branch &#39;fix/price&#39; set up to track &#39;origin/fix/price&#39;.</code></pre></div>
          <ul class="lc-list">
            <li><code>sed -i.bak</code> replaces the price in <code>menu.txt</code> (the <code>.bak</code> backup is removed at once); <code>git diff --stat</code> confirms one changed line.</li>
            <li><code>[ahead 1]</code> — one local commit that GitHub does not have.</li>
            <li><code>git branch fix/price</code> saves the commit on a new branch first.</li>
            <li><code>git reset --hard origin/main</code> makes local <code>main</code> identical to GitHub again (safe here because the commit is saved on <code>fix/price</code>).</li>
            <li>Push the branch and open a PR as usual.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Requiring 2 approvals in a 2-person team — the author cannot approve their own PR, so nothing can merge.</li>
            <li>Adding a required status check with a name that no workflow produces — PRs wait forever for "Expected — Waiting for status to be reported".</li>
            <li>Putting everyone on the bypass list, which makes the rules pointless.</li>
            <li>Using <code>--force</code> to "fix" a blocked push. The rule is there on purpose.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In a public practice repo, create a ruleset named "Protect main" targeting the default branch.</li>
            <li>Enable: restrict deletions, block force pushes, require a pull request (0 approvals if you work alone).</li>
            <li>Commit directly on <code>main</code> and try to push. Read the rejection.</li>
            <li>Rescue the commit with the walkthrough steps and merge it through a PR.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>When working alone, use "require a pull request" with 0 required approvals: you still get PR history, CI checks and a clean <code>main</code>, without waiting for anyone.</p></div>
      HTML
    },

    13 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">GitHub Actions Basics</h1>
        </div>
        <p class="lc-lead"><strong>GitHub Actions</strong> runs commands for you on GitHub's computers whenever something happens in your repository — a push, a pull request, a schedule, or a button click. Teams use it to test, build and deploy automatically.</p>

        <div class="lc-card">
          <h3>The Building Blocks</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><strong>Workflow</strong></td><td>A YAML file in <code>.github/workflows/</code>. A repo can have many.</td></tr>
              <tr><td><strong>Event</strong> (<code>on:</code>)</td><td>What starts it: <code>push</code>, <code>pull_request</code>, <code>schedule</code>, <code>workflow_dispatch</code> (manual button), <code>release</code>…</td></tr>
              <tr><td><strong>Job</strong></td><td>A group of steps that runs on one fresh machine. Jobs run in parallel unless one <code>needs</code> another.</td></tr>
              <tr><td><strong>Runner</strong> (<code>runs-on:</code>)</td><td>The machine: <code>ubuntu-latest</code>, <code>windows-latest</code>, <code>macos-latest</code></td></tr>
              <tr><td><strong>Step</strong></td><td>One shell command (<code>run:</code>) or one reusable <strong>action</strong> (<code>uses:</code>)</td></tr>
              <tr><td><strong>Action</strong></td><td>A packaged step from the Marketplace, e.g. <code>actions/checkout@v7</code></td></tr>
            </tbody>
          </table>
          <div class="lc-flow">
            <div class="lc-flow-step">Event<small>push to main</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Workflow<small>hello.yml</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Job<small>on ubuntu-latest</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Steps<small>checkout, run</small></div>
          </div>
        </div>

        <div class="lc-card">
          <h3>Your First Workflow</h3>
          <p>Save as <code>.github/workflows/hello.yml</code>:</p>
          <div class="lc-code-block"><pre><code>name: Hello

        on:
          push:
            branches: [main]
          workflow_dispatch:

        jobs:
          greet:
            runs-on: ubuntu-latest
            steps:
              - name: Check out the code
                uses: actions/checkout@v7

              - name: Say hello
                run: echo &quot;Hello from ${{ github.actor }} on branch ${{ github.ref_name }}&quot;

              - name: List files
                run: ls -la</code></pre></div>
          <ul class="lc-list">
            <li><code>on:</code> runs on every push to <code>main</code>, and <code>workflow_dispatch</code> adds a <strong>Run workflow</strong> button in the Actions tab.</li>
            <li><code>actions/checkout@v7</code> downloads your repository onto the runner. Without it, the runner's folder is empty.</li>
            <li><code>${{ github.actor }}</code> and <code>${{ github.ref_name }}</code> are <strong>expressions</strong> that GitHub fills in (the user who triggered the run, the branch name).</li>
            <li>YAML uses <strong>spaces, never tabs</strong>, and indentation defines the structure.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Push It</h3>
          <div class="lc-code-block"><pre><code>$ git add .github/workflows/hello.yml
        $ git commit -m &quot;Add hello workflow&quot;
        [main 466e2b9] Add hello workflow
         1 file changed, 19 insertions(+)
         create mode 100644 .github/workflows/hello.yml
        $ git push
        To https://github.com/asha/actions-demo.git
           6b59da9..466e2b9  main -&gt; main</code></pre></div>
          <p>Open the <strong>Actions</strong> tab: a run named after your commit message appears. Click it, then the <code>greet</code> job, and expand "Say hello" to see a line such as <code>Hello from asha on branch main</code>. From the terminal: <code>gh run list</code>, <code>gh run watch</code> and <code>gh run view --log</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Useful Triggers</h3>
          <div class="lc-code-block"><pre><code>on:
          push:
            branches: [main]
            paths: [&quot;src/**&quot;]          # only when files in src/ change
          pull_request:                # PRs targeting any branch
          schedule:
            - cron: &quot;30 3 * * 1&quot;       # Mondays 03:30 UTC (09:00 IST)
          workflow_dispatch:           # manual &quot;Run workflow&quot; button</code></pre></div>
          <p>Scheduled times are always in <strong>UTC</strong>.</p>
        </div>

        <div class="lc-card">
          <h3>Cost and Limits</h3>
          <p>Standard GitHub-hosted runners are <strong>free for public repositories</strong>. Private repositories get a monthly allowance of free minutes on the Free plan (more on paid plans). A job is stopped if it runs longer than 6 hours.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Saving the file in the wrong place (<code>.github/workflow/</code> or <code>github/workflows/</code>). It must be <code>.github/workflows/*.yml</code>.</li>
            <li>Tabs or wrong indentation in YAML — the Actions tab shows "Invalid workflow file".</li>
            <li>Forgetting <code>actions/checkout</code> and wondering why your files are missing.</li>
            <li>Copying old examples with <code>actions/checkout@v2</code> or <code>@v3</code>. Old majors run on outdated Node versions and show deprecation warnings; use the current major (<code>@v7</code> in 2026) — Dependabot can keep it updated (lesson 17).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add <code>hello.yml</code> to a repo, push, and find the log line with your username.</li>
            <li>Click <strong>Run workflow</strong> in the Actions tab to trigger it manually.</li>
            <li>Add a step <code>run: date</code> and a second job that uses <code>needs: greet</code>. Push and look at the job graph.</li>
            <li>Break the YAML on purpose (use a tab), push, and read the error. Then fix it.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Only use actions from sources you trust (official <code>actions/*</code>, verified creators). A third-party action runs with access to your code and token; security-conscious teams pin it to a full commit SHA instead of a tag.</p></div>
      HTML
    },

    14 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Continuous Integration with GitHub Actions</h1>
        </div>
        <p class="lc-lead"><strong>Continuous integration (CI)</strong> means every change is automatically built and tested. A pull request shows a green tick when tests pass and a red cross when something broke — before the code reaches <code>main</code>.</p>

        <div class="lc-card">
          <h3>Step 1: Tests That Run Locally</h3>
          <p>CI only runs what you could run yourself. <code>price.py</code>:</p>
          <div class="lc-code-block"><pre><code>def add_gst(amount, rate=18):
            &quot;&quot;&quot;Return amount plus GST, rounded to 2 decimals.&quot;&quot;&quot;
            return round(amount * (1 + rate / 100), 2)</code></pre></div>
          <p><code>tests/test_price.py</code> (plus an empty <code>tests/__init__.py</code>):</p>
          <div class="lc-code-block"><pre><code>import unittest

        from price import add_gst


        class TestAddGst(unittest.TestCase):
            def test_default_rate(self):
                self.assertEqual(add_gst(100), 118.0)

            def test_custom_rate(self):
                self.assertEqual(add_gst(200, rate=5), 210.0)


        if __name__ == &quot;__main__&quot;:
            unittest.main()</code></pre></div>
          <div class="lc-code-block"><pre><code>$ python3 -m unittest discover -v
        test_custom_rate (tests.test_price.TestAddGst.test_custom_rate) ... ok
        test_default_rate (tests.test_price.TestAddGst.test_default_rate) ... ok

        ----------------------------------------------------------------------
        Ran 2 tests in 0.000s

        OK</code></pre></div>
          <p>This is the output from Python 3.12 or newer. The time may show as a few milliseconds instead of <code>0.000s</code>. Many projects use <code>pytest</code> instead of <code>unittest</code>; the CI idea is identical.</p>
        </div>

        <div class="lc-card">
          <h3>Step 2: The CI Workflow</h3>
          <p>Save as <code>.github/workflows/ci.yml</code>:</p>
          <div class="lc-code-block"><pre><code>name: CI

        on:
          push:
            branches: [main]
          pull_request:

        permissions:
          contents: read

        jobs:
          test:
            runs-on: ubuntu-latest
            strategy:
              matrix:
                python-version: [&quot;3.12&quot;, &quot;3.13&quot;, &quot;3.14&quot;]
            steps:
              - uses: actions/checkout@v7

              - name: Set up Python ${{ matrix.python-version }}
                uses: actions/setup-python@v7
                with:
                  python-version: ${{ matrix.python-version }}

              - name: Run tests
                run: python -m unittest discover -v</code></pre></div>
          <ul class="lc-list">
            <li><strong>Triggers:</strong> pushes to <code>main</code> and every pull request.</li>
            <li><code>permissions: contents: read</code> — the job may only read the repo (least privilege, lesson 15).</li>
            <li><strong>Matrix:</strong> the job runs three times in parallel, once per Python version. The PR shows three checks: <code>test (3.12)</code>, <code>test (3.13)</code>, <code>test (3.14)</code>.</li>
            <li><code>actions/setup-python@v7</code> installs the requested Python on the runner.</li>
            <li>If any command exits with a non-zero code (a failing test), the step fails and the check turns red.</li>
          </ul>
          <p>If your project has dependencies, add a step before the tests: <code>run: pip install -r requirements.txt</code>, and add <code>cache: pip</code> under <code>with:</code> of setup-python to speed it up.</p>
        </div>

        <div class="lc-card">
          <h3>Reading Results</h3>
          <ul class="lc-list">
            <li>On the PR: the checks box lists each job with ✓ or ✗. Click <strong>Details</strong> for the log.</li>
            <li>In the terminal: <code>gh pr checks</code> (add <code>--watch</code> to wait until they finish).</li>
            <li>Make CI mandatory: in your ruleset (lesson 12) enable <strong>Require status checks to pass</strong> and add the <code>test</code> checks.</li>
            <li>Add a badge to the README: <code>![CI](https://github.com/OWNER/REPO/actions/workflows/ci.yml/badge.svg)</code>.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>What the PR shows</th><th>Meaning</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>✓ <code>test (3.13)</code> Successful</td><td>That matrix job passed</td><td>Nothing — wait for the others</td></tr>
              <tr><td>✗ <code>test (3.12)</code> Failing</td><td>A step exited with an error on Python 3.12 only</td><td>Click <strong>Details</strong>, open the red step, reproduce with that version locally</td></tr>
              <tr><td>● In progress / Queued</td><td>The job is running or waiting for a runner</td><td><code>gh pr checks --watch</code></td></tr>
              <tr><td>Expected — Waiting for status to be reported</td><td>A <em>required</em> check never started (wrong check name in the ruleset, or a <code>paths</code> filter skipped the workflow)</td><td>Compare the ruleset's check names with the job names</td></tr>
              <tr><td>Cancelled</td><td>Someone cancelled it, or a newer push replaced the run</td><td><em>Re-run jobs</em>, or push again</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Node.js Version of the Same Idea</h3>
          <div class="lc-code-block"><pre><code>    steps:
              - uses: actions/checkout@v7
              - uses: actions/setup-node@v7
                with:
                  node-version: 24
                  cache: npm
              - run: npm ci
              - run: npm test</code></pre></div>
          <p><code>npm ci</code> installs exactly what is in <code>package-lock.json</code> — that is why lock files are committed.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Tests pass locally but fail in CI because a dependency was installed by hand and never added to <code>requirements.txt</code>. CI starts from a clean machine every time — that is the point.</li>
            <li>Tests that depend on your laptop (absolute paths like <code>C:\Users\asha\data.csv</code>, the current date, internet access).</li>
            <li>Marking CI as required, then renaming the job — the required check name no longer matches.</li>
            <li>Ignoring a red build "just this once". Fix or revert quickly; a broken <code>main</code> blocks everybody.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create <code>price.py</code> and the tests, and run them locally.</li>
            <li>Add <code>ci.yml</code>, push, and see three green checks in the Actions tab.</li>
            <li>On a branch, change <code>add_gst</code> to use rate 12 by default. Open a PR and watch it go red. Read the failure in the log.</li>
            <li>Fix it, push, and make the <code>test</code> checks required in your ruleset.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Keep CI fast (under ~5 minutes). Slow CI makes people stop waiting for it. Cache dependencies and run only the tests you need.</p></div>
      HTML
    },

    15 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Secrets, Variables and Token Permissions</h1>
        </div>
        <p class="lc-lead">Workflows often need passwords or API keys — to deploy, send messages or call a service. <strong>Never write them in the YAML.</strong> Store them as encrypted <strong>secrets</strong>, and keep non-sensitive settings as <strong>variables</strong>.</p>

        <div class="lc-card">
          <h3>Secrets vs Variables</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Secret</th><th>Variable</th></tr></thead>
            <tbody>
              <tr><td>For</td><td>API keys, passwords, tokens</td><td>Settings like a region name or channel</td></tr>
              <tr><td>Stored</td><td>Encrypted; cannot be viewed again after saving</td><td>Plain text, visible to collaborators</td></tr>
              <tr><td>In YAML</td><td><code>${{ secrets.NAME }}</code></td><td><code>${{ vars.NAME }}</code></td></tr>
              <tr><td>In logs</td><td>Masked as <code>***</code></td><td>Shown normally</td></tr>
              <tr><td>Create</td><td><em>Settings → Secrets and variables → Actions</em>, or <code>gh secret set NAME</code></td><td>Same page, or <code>gh variable set NAME --body "value"</code></td></tr>
            </tbody>
          </table>
          <p>Both can be defined at <strong>repository</strong>, <strong>environment</strong> (e.g. <code>production</code>, with optional required reviewers before a job may use them) or <strong>organization</strong> level.</p>
        </div>

        <div class="lc-card">
          <h3>Setting a Secret from the Terminal</h3>
          <div class="lc-code-block"><pre><code>$ gh secret set REPORT_API_KEY
        ? Paste your secret: ********
        $ gh variable set REPORT_CHANNEL --body &quot;canteen-updates&quot;
        $ gh secret list</code></pre></div>
          <p>Typing the secret at the prompt keeps it out of your shell history. <code>gh secret list</code> shows names and dates — never values.</p>
        </div>

        <div class="lc-card">
          <h3>Using Them in a Workflow</h3>
          <div class="lc-code-block"><pre><code>name: Send daily report

        on:
          schedule:
            - cron: &quot;30 3 * * *&quot;   # 03:30 UTC = 09:00 IST
          workflow_dispatch:

        permissions:
          contents: read

        jobs:
          report:
            runs-on: ubuntu-latest
            environment: production
            steps:
              - uses: actions/checkout@v7

              - name: Send report
                env:
                  API_KEY: ${{ secrets.REPORT_API_KEY }}
                  REPORT_CHANNEL: ${{ vars.REPORT_CHANNEL }}
                run: python report.py</code></pre></div>
          <ul class="lc-list">
            <li>Pass secrets to your script through <code>env:</code>; the script reads <code>os.environ["API_KEY"]</code>. Do not put <code>${{ secrets.X }}</code> directly inside a long <code>run:</code> command.</li>
            <li><code>environment: production</code> means the job uses that environment's secrets and waits for approval if the environment requires reviewers.</li>
            <li>If a secret appears in the log, GitHub replaces it with <code>***</code>. Masking is a safety net, not a guarantee — never print secrets.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>The Built-in GITHUB_TOKEN</h3>
          <p>Every run automatically gets a short-lived token, <code>${{ secrets.GITHUB_TOKEN }}</code> (also written <code>${{ github.token }}</code>), that can act on <strong>this</strong> repository and expires when the job ends. You never create it. Its default access depends on your repository and organization settings, so always declare exactly what the workflow needs:</p>
          <div class="lc-code-block"><pre><code>permissions:
          contents: read        # checkout code
          pull-requests: write  # e.g. post a comment on the PR</code></pre></div>
          <p>Any permission you do not list becomes <code>none</code>. Put the block at the top of the workflow or on a single job.</p>
        </div>

        <div class="lc-card">
          <h3>Forks and Secrets</h3>
          <p>For <code>pull_request</code> runs from a <strong>fork</strong>, GitHub does not pass your secrets to the runner (except a read-only <code>GITHUB_TOKEN</code>) — otherwise anyone could open a PR that prints them. Be very careful with the <code>pull_request_target</code> event: it <em>does</em> have secrets, so never check out and run untrusted PR code in it.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Hard-coding a key in the YAML "just for testing" and pushing it. Rotate it immediately — it is in history.</li>
            <li><code>run: echo ${{ secrets.API_KEY }}</code> to "check it works". Check behaviour, not the value.</li>
            <li>Using a personal access token with full access where <code>GITHUB_TOKEN</code> plus a <code>permissions:</code> block is enough.</li>
            <li>Expecting secrets in PRs from forks to work — they are empty there by design.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create a repository secret <code>DEMO_SECRET</code> (any text) and a variable <code>GREETING</code>.</li>
            <li>Write a workflow with <code>workflow_dispatch</code> that runs <code>echo "$GREETING"</code> and <code>test -n "$DEMO_SECRET" &amp;&amp; echo "secret is set"</code>, passing both through <code>env:</code>.</li>
            <li>Run it and check the log shows the greeting and "secret is set" — never the secret.</li>
            <li>Add a <code>permissions: contents: read</code> block and confirm it still works.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>For deploying to cloud providers (AWS, Azure, Google Cloud), prefer <strong>OpenID Connect (OIDC)</strong>: the workflow gets a short-lived cloud credential with <code>permissions: id-token: write</code>, so there is no long-lived cloud key stored as a secret at all.</p></div>
      HTML
    },

    16 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Reusable Workflows and Custom Actions</h1>
        </div>
        <p class="lc-lead">After a few projects you will notice the same YAML in every repository: check out, set up Python, run the tests. GitHub Actions has two ways to write that logic <strong>once</strong> and reuse it: a <strong>custom action</strong> (a reusable <em>step</em>) and a <strong>reusable workflow</strong> (a reusable <em>job</em> or group of jobs).</p>

        <div class="lc-card">
          <h3>Which Tool for Which Job?</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Composite action</th><th>Reusable workflow</th><th>JavaScript / Docker action</th></tr></thead>
            <tbody>
              <tr><td>Reuses</td><td>A few <strong>steps</strong> inside a job</td><td>Whole <strong>jobs</strong>, each with its own runner</td><td>One step with custom code</td></tr>
              <tr><td>File</td><td><code>action.yml</code> in any folder</td><td>A workflow in <code>.github/workflows/</code> with <code>on: workflow_call</code></td><td><code>action.yml</code> + JavaScript code or a Dockerfile</td></tr>
              <tr><td>Used with</td><td>A step: <code>uses: ./path</code> or <code>owner/repo@v1</code></td><td>A job: <code>uses: ./.github/workflows/file.yml</code></td><td>A step, like any Marketplace action</td></tr>
              <tr><td>Good for</td><td>"Run our checks" in many workflows</td><td>A standard CI pipeline for all team repos</td><td>Publishing on the Marketplace, complex logic</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Step 1: A Composite Action</h3>
          <p>Our chai stall wants every pull request to check that no menu item costs more than a limit. Save as <code>.github/actions/price-check/action.yml</code>:</p>
          <div class="lc-code-block"><pre><code>name: Price check
        description: Fail if any menu item costs more than a limit
        inputs:
          file:
            description: Menu file to check
            required: true
          max-price:
            description: Highest allowed price in rupees
            default: &quot;50&quot;
        outputs:
          items:
            description: Number of items checked
            value: ${{ steps.check.outputs.items }}
        runs:
          using: composite
          steps:
            - id: check
              shell: bash
              run: ${{ github.action_path }}/check_prices.sh &quot;${{ inputs.file }}&quot; &quot;${{ inputs.max-price }}&quot;</code></pre></div>
          <ul class="lc-list">
            <li><code>inputs</code> are the action's parameters, read as <code>${{ inputs.file }}</code>. <code>max-price</code> has a default, so it is optional.</li>
            <li><code>runs.using: composite</code> means "a list of normal steps". Every <code>run</code> step in a composite action <strong>must</strong> say which <code>shell</code> to use.</li>
            <li><code>${{ github.action_path }}</code> is the folder of the action, so the script is found wherever the action is used.</li>
            <li><code>outputs.items.value</code> passes a step's output out of the action.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Test the Script Locally</h3>
          <p>The real work is in a small shell script next to <code>action.yml</code>. Test it on your laptop before pushing — Actions just runs the same command:</p>
          <div class="lc-code-block"><pre><code>$ cat .github/actions/price-check/check_prices.sh
        #!/bin/sh
        # Usage: check_prices.sh FILE MAX_PRICE
        # Each line of FILE looks like &quot;Masala chai - 20&quot;.
        file=&quot;$1&quot;
        max=&quot;$2&quot;
        n=0
        bad=0
        while IFS= read -r line; do
          item=&quot;${line% - *}&quot;
          price=&quot;${line##* - }&quot;
          n=$((n + 1))
          if [ &quot;$price&quot; -gt &quot;$max&quot; ]; then
            echo &quot;::error file=$file,line=$n::$item costs $price (limit $max)&quot;
            bad=$((bad + 1))
          else
            echo &quot;ok: $item ($price)&quot;
          fi
        done &lt; &quot;$file&quot;
        echo &quot;items=$n&quot; &gt;&gt; &quot;$GITHUB_OUTPUT&quot;
        [ &quot;$bad&quot; -eq 0 ]
        $ chmod +x .github/actions/price-check/check_prices.sh
        $ GITHUB_OUTPUT=out.txt .github/actions/price-check/check_prices.sh menu.txt 30; echo &quot;exit code: $?&quot;
        ok: Masala chai (20)
        ok: Ginger chai (25)
        ok: Samosa (15)
        exit code: 0
        $ cat out.txt
        items=3
        $ GITHUB_OUTPUT=out.txt .github/actions/price-check/check_prices.sh menu.txt 22; echo &quot;exit code: $?&quot;
        ok: Masala chai (20)
        ::error file=menu.txt,line=2::Ginger chai costs 25 (limit 22)
        ok: Samosa (15)
        exit code: 1
        $ rm out.txt</code></pre></div>
          <ul class="lc-list">
            <li>Writing <code>name=value</code> to the file in <code>$GITHUB_OUTPUT</code> is how a step sets an output. Locally we point it at <code>out.txt</code>.</li>
            <li>A line starting with <code>::error</code> is a <strong>workflow command</strong>: on GitHub it becomes a red annotation. Because it names <code>file=</code> and <code>line=</code> (<code>n</code> counts the lines as they are read), the annotation appears in the run summary <em>and</em> next to that line on the PR's <strong>Files changed</strong> tab — if the PR changes that line.</li>
            <li>Exit code <code>1</code> makes the step, the job and the check fail.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Step 2: Use the Action in a Workflow</h3>
          <p><code>.github/workflows/menu-check.yml</code>:</p>
          <div class="lc-code-block"><pre><code>name: Menu check

        on:
          pull_request:
            paths: [&quot;menu.txt&quot;]

        permissions:
          contents: read

        jobs:
          prices:
            runs-on: ubuntu-latest
            steps:
              - uses: actions/checkout@v7
              - id: prices
                uses: ./.github/actions/price-check
                with:
                  file: menu.txt
                  max-price: &quot;30&quot;
              - run: echo &quot;Checked ${{ steps.prices.outputs.items }} items&quot;</code></pre></div>
          <p>A <strong>local</strong> action (<code>./…</code>) needs <code>actions/checkout</code> first, because the action's files come from your repository. An action in its own public repository is used like any Marketplace action: <code>uses: asha/price-check@v1</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Step 3: A Reusable Workflow</h3>
          <p>A reusable workflow is triggered by <code>workflow_call</code> and can take inputs, secrets and return outputs. <code>.github/workflows/python-tests.yml</code>:</p>
          <div class="lc-code-block"><pre><code>name: Python tests (reusable)

        on:
          workflow_call:
            inputs:
              python-version:
                type: string
                default: &quot;3.13&quot;
            outputs:
              result:
                description: Summary line from the test job
                value: ${{ jobs.test.outputs.result }}

        permissions:
          contents: read

        jobs:
          test:
            runs-on: ubuntu-latest
            outputs:
              result: ${{ steps.run.outputs.result }}
            steps:
              - uses: actions/checkout@v7
              - uses: actions/setup-python@v7
                with:
                  python-version: ${{ inputs.python-version }}
              - id: run
                run: |
                  python -m unittest discover -v
                  echo &quot;result=tests passed on Python ${{ inputs.python-version }}&quot; &gt;&gt; &quot;$GITHUB_OUTPUT&quot;</code></pre></div>
          <p>The caller uses it as a whole <strong>job</strong> — note that the job has <code>uses:</code> and no <code>runs-on</code> or <code>steps</code>. <code>.github/workflows/ci.yml</code>:</p>
          <div class="lc-code-block"><pre><code>name: CI

        on:
          push:
            branches: [main]
          pull_request:

        permissions:
          contents: read

        jobs:
          tests:
            uses: ./.github/workflows/python-tests.yml
            with:
              python-version: &quot;3.14&quot;

          report:
            needs: tests
            runs-on: ubuntu-latest
            steps:
              - run: echo &quot;${{ needs.tests.outputs.result }}&quot;</code></pre></div>
          <ul class="lc-list">
            <li><code>with:</code> passes inputs; <code>needs.tests.outputs.result</code> reads the reusable workflow's output.</li>
            <li>Secrets are <strong>not</strong> passed automatically. Pass them one by one under <code>secrets:</code>, or use <code>secrets: inherit</code> for workflows in the same organization.</li>
            <li>From another repository: <code>uses: chai-org/ci-templates/.github/workflows/python-tests.yml@v1</code> — the repository must allow access if it is private.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Push and Open a PR</h3>
          <div class="lc-code-block"><pre><code>$ git switch -c ci/reusable
        Switched to a new branch &#39;ci/reusable&#39;
        $ git add .github
        $ git status -s
        A  .github/actions/price-check/action.yml
        A  .github/actions/price-check/check_prices.sh
        A  .github/workflows/ci.yml
        A  .github/workflows/menu-check.yml
        A  .github/workflows/python-tests.yml
        $ git commit -m &quot;Add price-check action and reusable test workflow&quot;
        [ci/reusable 9495011] Add price-check action and reusable test workflow
         5 files changed, 110 insertions(+)
         create mode 100644 .github/actions/price-check/action.yml
         create mode 100755 .github/actions/price-check/check_prices.sh
         create mode 100644 .github/workflows/ci.yml
         create mode 100644 .github/workflows/menu-check.yml
         create mode 100644 .github/workflows/python-tests.yml
        $ git push -u origin ci/reusable
        To https://github.com/asha/chai-menu.git
         * [new branch]      ci/reusable -&gt; ci/reusable
        branch &#39;ci/reusable&#39; set up to track &#39;origin/ci/reusable&#39;.</code></pre></div>
          <p>Git kept the script's executable bit (<code>create mode 100755</code>), so the runner can execute it. Open the PR: the <strong>CI</strong> workflow shows two jobs, <code>tests / test</code> (from the reusable workflow) and <code>report</code>. The Menu check workflow did not run, because this PR does not change <code>menu.txt</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Actions from the Marketplace</h3>
          <p>The <strong>GitHub Marketplace</strong> lists thousands of ready-made actions. Before you use one:</p>
          <ul class="lc-list">
            <li>Prefer official (<code>actions/*</code>) and verified creators; read the source and check it is maintained.</li>
            <li>Pin to a release tag (<code>@v7</code>) or, for third-party actions, a full commit SHA — a tag can be moved to different code.</li>
            <li>Give the workflow the smallest <code>permissions</code> it needs (lesson 15); an action can use the <code>GITHUB_TOKEN</code> your job has.</li>
            <li>Let Dependabot keep action versions up to date (lesson 17).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Leaving out <code>shell: bash</code> on a <code>run</code> step in a composite action — the action fails to load.</li>
            <li>Using a local action (<code>uses: ./.github/actions/…</code>) before <code>actions/checkout</code>, so the action's files are not there.</li>
            <li>Putting <code>uses: ./.github/workflows/x.yml</code> inside <code>steps:</code>. Reusable workflows are called at the <strong>job</strong> level.</li>
            <li>Forgetting that the called workflow needs <code>on: workflow_call</code>, or expecting secrets to be passed without <code>secrets:</code>.</li>
            <li>Committing the script without the executable bit (common on Windows). Fix it with <code>git update-index --chmod=+x path/to/script.sh</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create the <code>price-check</code> action and script in a practice repository and test the script locally with limits 30 and 22, as above.</li>
            <li>Add <code>menu-check.yml</code>, open a PR that raises a price above 30, and find the red annotation: in the run summary, and next to the changed line of <code>menu.txt</code> on the Files changed tab.</li>
            <li>Turn your CI job from lesson 14 into a reusable workflow with a <code>python-version</code> input, and call it twice from <code>ci.yml</code> with <code>"3.13"</code> and <code>"3.14"</code>.</li>
            <li>Give the action an extra output <code>too-expensive</code> (the number of failing items) and print it in the workflow.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Many teams keep their shared actions and reusable workflows in one repository (for example <code>chai-org/ci-templates</code>) and tag releases like <code>v1</code>, so every project gets fixes by updating one line.</p></div>
      HTML
    },

    17 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Security Features and Dependabot</h1>
        </div>
        <p class="lc-lead">Most security problems in small projects come from three places: a stolen account, a leaked secret, or an outdated library with a known vulnerability. GitHub has free tools for all three.</p>

        <div class="lc-card">
          <h3>Security Checklist</h3>
          <table class="lc-table">
            <thead><tr><th>Risk</th><th>GitHub feature</th><th>Where</th></tr></thead>
            <tbody>
              <tr><td>Stolen account</td><td>Two-factor authentication, passkeys</td><td>Account <em>Settings → Password and authentication</em></td></tr>
              <tr><td>Vulnerable dependency</td><td>Dependabot alerts + security updates</td><td>Repo <em>Settings → Advanced Security</em> (called "Code security" on some accounts)</td></tr>
              <tr><td>Outdated dependency</td><td>Dependabot version updates (<code>dependabot.yml</code>)</td><td>File in the repo</td></tr>
              <tr><td>Leaked secret</td><td>Secret scanning and push protection</td><td>Automatic on public repos</td></tr>
              <tr><td>Bug in your own code</td><td>Code scanning with CodeQL (default setup)</td><td>Repo Security settings</td></tr>
              <tr><td>People reporting problems</td><td><code>SECURITY.md</code> + private vulnerability reporting</td><td>Repo Security tab</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Dependabot: Three Jobs</h3>
          <ul class="lc-list">
            <li><strong>Alerts</strong> — GitHub reads your manifest files (<code>requirements.txt</code>, <code>package-lock.json</code>…) and warns when a dependency has a known vulnerability.</li>
            <li><strong>Security updates</strong> — Dependabot opens a PR that bumps the library to a fixed version.</li>
            <li><strong>Version updates</strong> — on a schedule, Dependabot opens PRs to keep dependencies current, even without a vulnerability.</li>
          </ul>
          <p>Version updates are configured with <code>.github/dependabot.yml</code>:</p>
          <div class="lc-code-block"><pre><code>version: 2
        updates:
          - package-ecosystem: &quot;pip&quot;
            directory: &quot;/&quot;
            schedule:
              interval: &quot;weekly&quot;

          - package-ecosystem: &quot;github-actions&quot;
            directory: &quot;/&quot;
            schedule:
              interval: &quot;weekly&quot;</code></pre></div>
          <div class="lc-code-block"><pre><code>$ git add .github/dependabot.yml
        $ git commit -m &quot;Enable Dependabot version updates&quot;
        [main 0598cef] Enable Dependabot version updates
         1 file changed, 11 insertions(+)
         create mode 100644 .github/dependabot.yml</code></pre></div>
          <p>After you push this, Dependabot checks weekly and opens PRs like "Bump requests from 2.32.3 to 2.32.4" or "Bump actions/checkout from 6 to 7". Your CI runs on each PR, so you can merge with confidence.</p>
        </div>

        <div class="lc-card">
          <h3>Secret Scanning and Push Protection</h3>
          <p>GitHub recognises the formats of hundreds of real secrets (GitHub tokens, AWS keys, Stripe keys…). On public repositories it scans pushes automatically, and <strong>push protection</strong> — on by default for your account when pushing to public repositories — blocks a push that contains a recognised secret. The rejected push lists the file and line, and a link to bypass only if it really is a false positive.</p>
          <p>If a real secret was ever pushed: <strong>revoke/rotate it first</strong>, then clean up. Removing the commit is not enough — someone may have copied it already.</p>
        </div>

        <div class="lc-card">
          <h3>Code Scanning with CodeQL</h3>
          <p>In <em>Settings → Advanced Security → Code scanning → CodeQL analysis</em>, choose <strong>Default setup</strong>. GitHub analyses supported languages (Python, JavaScript/TypeScript, Java, C#, Go, Ruby and more) on pushes and PRs, and shows problems such as SQL injection or unsafe file paths in the Security tab and as PR annotations. It is free for public repositories.</p>
        </div>

        <div class="lc-card">
          <h3>SECURITY.md</h3>
          <div class="lc-code-block"><pre><code># Security Policy

        ## Reporting a vulnerability
        Please do not open a public issue. Use &quot;Report a vulnerability&quot;
        in the Security tab, or email security@example.com.
        We reply within 5 working days.</code></pre></div>
          <p>Turn on <strong>private vulnerability reporting</strong> so researchers can report privately through GitHub.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Ignoring Dependabot PRs until there are 40 of them. Merge small updates weekly.</li>
            <li>Merging a Dependabot major-version bump without reading its release notes and without CI.</li>
            <li>Bypassing push protection to "get the push through" with a real key.</li>
            <li>Deleting a leaked key from the latest commit and thinking the problem is solved.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Confirm 2FA is on for your account and save your recovery codes somewhere safe.</li>
            <li>In a repo with a <code>requirements.txt</code>, enable Dependabot alerts and security updates.</li>
            <li>Add the <code>dependabot.yml</code> above and push; check <em>Insights → Dependency graph → Dependabot</em>.</li>
            <li>Enable CodeQL default setup on a public repo and look at the first analysis in the Security tab. Add a <code>SECURITY.md</code>.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Including <code>github-actions</code> in <code>dependabot.yml</code> keeps every <code>uses: actions/...@vN</code> line in your workflows current — no more outdated examples in your own repo.</p></div>
      HTML
    },

    18 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Releases and Tags</h1>
        </div>
        <p class="lc-lead">A Git <strong>tag</strong> marks a commit such as <code>v1.0.0</code>. A GitHub <strong>release</strong> is built on a tag and adds a title, release notes and downloadable files — the page users visit to see "what's new" and get your app.</p>

        <div class="lc-card">
          <h3>Tag vs Release</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Git tag</th><th>GitHub release</th></tr></thead>
            <tbody>
              <tr><td>Created with</td><td><code>git tag -a</code></td><td>Web UI, <code>gh release create</code>, or a workflow</td></tr>
              <tr><td>Contains</td><td>Name + commit (+ message if annotated)</td><td>Tag + title + notes + assets (zip, binaries)</td></tr>
              <tr><td>Where</td><td>In every clone</td><td>Only on GitHub (<em>Releases</em> in the sidebar)</td></tr>
              <tr><td>Special states</td><td>—</td><td>Draft, pre-release, "Latest"</td></tr>
            </tbody>
          </table>
          <p>Use Semantic Versioning: <code>vMAJOR.MINOR.PATCH</code> (breaking change / new feature / bug fix).</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Tag and Push</h3>
          <div class="lc-code-block"><pre><code>$ git tag -a v1.0.0 -m &quot;Tiffin app 1.0.0&quot;
        $ git push origin v1.0.0
        To https://github.com/asha/tiffin-app.git
         * [new tag]         v1.0.0 -&gt; v1.0.0
        $ git tag -n
        v1.0.0          Tiffin app 1.0.0</code></pre></div>
          <p>Tags are not sent by a normal <code>git push</code>; push each one by name. <code>git tag -n</code> lists tags with their messages.</p>
        </div>

        <div class="lc-card">
          <h3>Creating the Release</h3>
          <p>On the website: <em>Releases → Draft a new release</em>, choose the tag, click <strong>Generate release notes</strong>, attach files, and <strong>Publish</strong>. Or from the terminal:</p>
          <div class="lc-code-block"><pre><code>$ gh release create v1.0.0 --title &quot;Tiffin app 1.0.0&quot; --generate-notes
        $ gh release create v1.1.0-beta.1 --prerelease --notes &quot;Try the new order page&quot;
        $ gh release create v1.0.1 ./dist/tiffin-app.zip --generate-notes
        $ gh release list</code></pre></div>
          <p><code>--generate-notes</code> builds notes from the merged PRs and new contributors since the last release. Files listed after the tag are uploaded as downloadable assets. You can group generated notes into sections (Features, Bug fixes) by label with a <code>.github/release.yml</code> file.</p>
        </div>

        <div class="lc-card">
          <h3>Automatic Releases with Actions</h3>
          <p>This workflow creates a release whenever you push a tag starting with <code>v</code>:</p>
          <div class="lc-code-block"><pre><code>name: Release

        on:
          push:
            tags: [&quot;v*&quot;]

        permissions:
          contents: write

        jobs:
          release:
            runs-on: ubuntu-latest
            steps:
              - uses: actions/checkout@v7

              - name: Build a zip of the app
                run: zip -r tiffin-app.zip app.py README.md

              - name: Create GitHub release
                env:
                  GH_TOKEN: ${{ github.token }}
                run: gh release create &quot;$GITHUB_REF_NAME&quot; tiffin-app.zip --generate-notes</code></pre></div>
          <ul class="lc-list">
            <li><code>contents: write</code> is required to create a release.</li>
            <li><code>gh</code> is preinstalled on GitHub-hosted runners and uses <code>GH_TOKEN</code> to log in.</li>
            <li><code>$GITHUB_REF_NAME</code> is the tag name, e.g. <code>v1.0.0</code>.</li>
          </ul>
          <p>Now releasing is just: <code>git tag -a v1.2.0 -m "..."</code> → <code>git push origin v1.2.0</code>.</p>
        </div>

        <div class="lc-card">
          <h3>GitHub Packages: Publishing a Container Image</h3>
          <p>A release holds files for people to download. <strong>GitHub Packages</strong> hosts packages for tools to install: container images (<code>ghcr.io</code>), npm, Maven, NuGet and RubyGems packages. A workflow can publish a Docker image whenever you push a version tag:</p>
          <div class="lc-code-block"><pre><code>on:
          push:
            tags: [&quot;v*&quot;]

        permissions:
          contents: read
          packages: write        # allow GITHUB_TOKEN to publish packages

        jobs:
          image:
            runs-on: ubuntu-latest
            steps:
              - uses: actions/checkout@v7
              - name: Log in to ghcr.io
                run: echo &quot;${{ secrets.GITHUB_TOKEN }}&quot; | docker login ghcr.io -u &quot;${{ github.actor }}&quot; --password-stdin
              - name: Build and push
                run: |
                  docker build -t ghcr.io/${{ github.repository }}:${{ github.ref_name }} .
                  docker push ghcr.io/${{ github.repository }}:${{ github.ref_name }}</code></pre></div>
          <p>The image then appears under <strong>Packages</strong> on the repository page, and anyone with access can run <code>docker pull ghcr.io/asha/expense-splitter:v1.0.0</code>. Image names must be lowercase, so use a lowercase repository name. For Python and JavaScript libraries, most projects publish to PyPI or npmjs.com instead.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting to push the tag, then wondering why the release form cannot find it.</li>
            <li>Deleting and re-creating a tag with the same name for a different commit. Users who downloaded it get confused; publish <code>v1.0.1</code> instead.</li>
            <li>Release notes that just say "bug fixes". Group by feature and fix, and link PRs.</li>
            <li>Committing large binaries into the repo instead of attaching them to a release.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Tag your practice project <code>v1.0.0</code> (annotated) and push the tag.</li>
            <li>Create a release with generated notes on the website or with <code>gh release create</code>.</li>
            <li>Add the workflow as <code>.github/workflows/release.yml</code>, then tag and push <code>v1.0.1</code>. Watch the workflow create the release with a zip attached.</li>
            <li>Create a pre-release <code>v1.1.0-beta.1</code> and see how GitHub labels it.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Users can "watch" only releases of a repository (<em>Watch → Custom → Releases</em>) — a great way for people to follow your project without noise.</p></div>
      HTML
    },

    19 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">GitHub Pages</h1>
        </div>
        <p class="lc-lead"><strong>GitHub Pages</strong> hosts static websites (HTML, CSS, JavaScript, images) straight from a repository, with free HTTPS. It is perfect for a portfolio, project documentation or a college event page.</p>

        <div class="lc-card">
          <h3>Types of Sites</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Repository name</th><th>URL</th></tr></thead>
            <tbody>
              <tr><td>User site</td><td><code>asha.github.io</code> (exactly <em>username</em>.github.io)</td><td><code>https://asha.github.io/</code></td></tr>
              <tr><td>Project site</td><td>Any, e.g. <code>chai-menu</code></td><td><code>https://asha.github.io/chai-menu/</code></td></tr>
              <tr><td>Custom domain</td><td>Any</td><td>e.g. <code>https://www.asharao.dev</code> (set in Settings → Pages)</td></tr>
            </tbody>
          </table>
          <p>Pages serves <strong>static</strong> files only — no PHP, Python or databases on the server. Availability: public repositories on the Free plan; private repositories need a paid plan. The published site is public on the internet.</p>
        </div>

        <div class="lc-card">
          <h3>Two Ways to Publish</h3>
          <table class="lc-table">
            <thead><tr><th>Source (Settings → Pages)</th><th>How it works</th><th>Use when</th></tr></thead>
            <tbody>
              <tr><td><strong>Deploy from a branch</strong></td><td>Pick a branch and folder (<code>/ (root)</code> or <code>/docs</code>); GitHub publishes it</td><td>Plain HTML, quickest start</td></tr>
              <tr><td><strong>GitHub Actions</strong></td><td>Your workflow builds the site and deploys it</td><td>Any build step (React, Vite, Hugo…) or a subfolder like <code>site/</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>The Site and the Workflow</h3>
          <p><code>site/index.html</code>:</p>
          <div class="lc-code-block"><pre><code>&lt;!DOCTYPE html&gt;
        &lt;html lang=&quot;en&quot;&gt;
        &lt;head&gt;
          &lt;meta charset=&quot;utf-8&quot;&gt;
          &lt;title&gt;Asha Rao&lt;/title&gt;
        &lt;/head&gt;
        &lt;body&gt;
          &lt;h1&gt;Hi, I&#39;m Asha&lt;/h1&gt;
          &lt;p&gt;I build small web apps with Python and JavaScript.&lt;/p&gt;
        &lt;/body&gt;
        &lt;/html&gt;</code></pre></div>
          <p><code>.github/workflows/pages.yml</code> — based on GitHub's official starter workflow:</p>
          <div class="lc-code-block"><pre><code>name: Deploy site to Pages

        on:
          push:
            branches: [main]
          workflow_dispatch:

        permissions:
          contents: read
          pages: write
          id-token: write

        concurrency:
          group: pages
          cancel-in-progress: false

        jobs:
          deploy:
            runs-on: ubuntu-latest
            environment:
              name: github-pages
              url: ${{ steps.deployment.outputs.page_url }}
            steps:
              - uses: actions/checkout@v7

              - uses: actions/configure-pages@v6

              - uses: actions/upload-pages-artifact@v5
                with:
                  path: site

              - id: deployment
                uses: actions/deploy-pages@v5</code></pre></div>
          <ul class="lc-list">
            <li><code>pages: write</code> and <code>id-token: write</code> are required to deploy to Pages.</li>
            <li><code>upload-pages-artifact</code> packages the <code>site</code> folder; <code>deploy-pages</code> publishes it.</li>
            <li>The <code>github-pages</code> environment shows the live URL on the run page and in the repo sidebar.</li>
            <li><code>concurrency</code> makes sure two deployments never run at the same time.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Publish</h3>
          <p>First set <em>Settings → Pages → Build and deployment → Source</em> to <strong>GitHub Actions</strong>. Then:</p>
          <div class="lc-code-block"><pre><code>$ git add site/index.html .github/workflows/pages.yml
        $ git commit -m &quot;Add portfolio site and Pages workflow&quot;
        [main (root-commit) e962c7b] Add portfolio site and Pages workflow
         2 files changed, 44 insertions(+)
         create mode 100644 .github/workflows/pages.yml
         create mode 100644 site/index.html
        $ git push -u origin main
        To https://github.com/asha/asha.github.io.git
         * [new branch]      main -&gt; main
        branch &#39;main&#39; set up to track &#39;origin/main&#39;.</code></pre></div>
          <p>The workflow runs; after about a minute <code>https://asha.github.io/</code> shows "Hi, I'm Asha". Every later push to <code>main</code> redeploys the site.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Leaving the Pages source on "Deploy from a branch" while using the Actions workflow (or the reverse).</li>
            <li>Absolute links like <code>/style.css</code> on a <em>project</em> site — they point to <code>asha.github.io/style.css</code>, not <code>/chai-menu/style.css</code>. Use relative links (<code>style.css</code>).</li>
            <li>Wrong capitalisation: <code>Logo.PNG</code> vs <code>logo.png</code> works on Windows but breaks on Pages (Linux servers are case-sensitive).</li>
            <li>Putting API keys in front-end JavaScript. Everything on a Pages site is public.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create a public repository named <code>&lt;your-username&gt;.github.io</code>.</li>
            <li>Add <code>site/index.html</code> about yourself and the <code>pages.yml</code> workflow.</li>
            <li>Set the Pages source to GitHub Actions, push, and open your URL.</li>
            <li>Link the site from your profile README (lesson 5) and your repo's <em>About</em> box.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Using a custom domain? Tick <strong>Enforce HTTPS</strong> in Settings → Pages once the certificate is ready, and verify the domain in your account settings to protect it from takeover.</p></div>
      HTML
    },

    20 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">GitHub Copilot and Codespaces</h1>
        </div>
        <p class="lc-lead">Modern teams use GitHub for more than storing code. <strong>Copilot</strong> can review pull requests and even write a first draft of a change for you, and <strong>Codespaces</strong> gives every contributor the same ready-to-code environment in the cloud. Both still follow the same rule you learned all course: every change arrives as a pull request that a human reviews.</p>

        <div class="lc-card">
          <h3>Four Tools at a Glance</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>What it is</th><th>Runs code?</th><th>Cost (personal account)</th></tr></thead>
            <tbody>
              <tr><td><strong>github.dev</strong></td><td>VS Code in the browser for quick edits</td><td>No — no terminal</td><td>Free</td></tr>
              <tr><td><strong>Codespaces</strong></td><td>A full cloud computer (container) with VS Code and a terminal</td><td>Yes</td><td>Free monthly quota, then paid</td></tr>
              <tr><td><strong>Copilot code review</strong></td><td>Copilot as a reviewer on a pull request</td><td>—</td><td>Copilot Student or a paid Copilot plan</td></tr>
              <tr><td><strong>Copilot cloud agent</strong> (formerly "coding agent")</td><td>Copilot works on a task in the background and prepares a pull request</td><td>Yes, in a GitHub Actions environment</td><td>Copilot Student or a paid Copilot plan</td></tr>
            </tbody>
          </table>
          <p>Facts checked against docs.github.com in September 2026. Plans, prices and limits change often — check the official pages before you rely on a number.</p>
        </div>

        <div class="lc-card">
          <h3>github.dev: Quick Edits in the Browser</h3>
          <p>On any repository or pull request page, press the <kbd>.</kbd> (full stop) key, or change <code>github.com</code> to <code>github.dev</code> in the address bar. VS Code opens in your browser with the repository loaded. You can edit files, commit to a new branch and open a pull request. There is <strong>no compute</strong>, so you cannot run code, tests or a terminal — for that you need a codespace.</p>
        </div>

        <div class="lc-card">
          <h3>Codespaces and Dev Containers</h3>
          <p>A <strong>codespace</strong> is a container running on GitHub's servers. You open it from <em>Code → Codespaces → Create codespace on main</em> and get VS Code (in the browser or on your desktop) with a real terminal. Without any setup GitHub uses a default Linux image with Python, Node, Java and other languages. To give every contributor <em>exactly</em> the same setup, add a <strong>dev container</strong> file at <code>.devcontainer/devcontainer.json</code>:</p>
          <div class="lc-code-block"><pre><code>{
          &quot;name&quot;: &quot;Expense Splitter&quot;,
          &quot;image&quot;: &quot;mcr.microsoft.com/devcontainers/python:3.13&quot;,
          &quot;postCreateCommand&quot;: &quot;python3 -m unittest discover -v&quot;,
          &quot;customizations&quot;: {
            &quot;vscode&quot;: {
              &quot;extensions&quot;: [&quot;ms-python.python&quot;]
            }
          },
          &quot;forwardPorts&quot;: [8000]
        }</code></pre></div>
          <ul class="lc-list">
            <li><code>image</code> — the base container: Microsoft's official Python 3.13 dev container image.</li>
            <li><code>postCreateCommand</code> — runs once after the container is created (here: run the tests to prove the setup works; many projects run <code>pip install -r requirements.txt</code>).</li>
            <li><code>customizations.vscode.extensions</code> — VS Code extensions installed automatically.</li>
            <li><code>forwardPorts</code> — a web server on port 8000 inside the codespace gets a private URL you can open.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Free quota (GitHub Free personal account)</th><th>Per month</th></tr></thead>
            <tbody>
              <tr><td>Compute</td><td>120 hours, counted in <em>core hours</em>: a 2-core machine (the smallest) uses 2 per hour, so about 60 real hours</td></tr>
              <tr><td>Storage</td><td>15 GB-month</td></tr>
            </tbody>
          </table>
          <p>A codespace stops by itself after 30 minutes of inactivity (default). Stopped codespaces use no compute but still use storage, so <strong>delete</strong> ones you no longer need. Without a payment method, usage is simply blocked when the quota runs out — you are not charged.</p>
        </div>

        <div class="lc-card">
          <h3>Copilot Plans in Short</h3>
          <table class="lc-table">
            <thead><tr><th>Plan</th><th>Price</th><th>Code review on PRs</th><th>Cloud agent</th></tr></thead>
            <tbody>
              <tr><td>Copilot Free</td><td>Free (limited, e.g. 2,000 code completions a month)</td><td>Only "Review selection" in VS Code</td><td>No</td></tr>
              <tr><td>Copilot Student</td><td>Free for verified students (GitHub Education)</td><td>Yes</td><td>Yes (no third-party agents)</td></tr>
              <tr><td>Copilot Pro / Pro+ / Max</td><td>$10 / $39 / $100 per month</td><td>Yes</td><td>Yes</td></tr>
              <tr><td>Copilot Business / Enterprise</td><td>$19 / $39 per user per month (organizations)</td><td>Yes</td><td>Yes, once an admin enables it</td></tr>
            </tbody>
          </table>
          <p>Verified teachers and maintainers of popular open-source projects may also get Copilot Pro free.</p>
        </div>

        <div class="lc-card">
          <h3>Copilot Code Review</h3>
          <ol class="lc-list">
            <li>Open a pull request. In the right sidebar under <strong>Reviewers</strong>, click <strong>Request</strong> next to <strong>Copilot</strong>.</li>
            <li>After a short wait Copilot leaves review comments, each marked High, Medium or Low severity, often with a suggested change you can commit.</li>
            <li>Treat them like a teammate's comments: apply, reply or resolve. <strong>Fix with Copilot</strong> can ask Copilot to make the change for you.</li>
          </ol>
          <p>By default Copilot leaves a <strong>"Comment"</strong> review, not "Approve", so it does <strong>not</strong> count toward a ruleset's required approvals. (Admins can turn on Copilot approvals, but a human reviewer is still the safe default.) Owners can also make Copilot review every PR automatically with a ruleset.</p>
          <p>Give Copilot your project's rules in <code>.github/copilot-instructions.md</code>. Copilot code review and the cloud agent both read it:</p>
          <div class="lc-code-block"><pre><code># Copilot instructions for expense-splitter

        - This is a Python 3.13 project with no third-party packages.
        - Run the tests with: python3 -m unittest discover -v
        - Every new function needs a unit test in tests/.
        - Money values are rounded to 2 decimals; never use float equality in tests
          without rounding first.
        - Keep functions small and add a one-line docstring.</code></pre></div>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Commit the Setup Files</h3>
          <p>Both files are ordinary files in the repository, so they go through a normal pull request. Here we write them with heredocs (<code>cat &gt; file &lt;&lt;'EOF'</code> … <code>EOF</code>); creating them in your editor works just as well:</p>
          <div class="lc-code-block"><pre><code>$ git switch -c chore/dev-setup
        Switched to a new branch &#39;chore/dev-setup&#39;
        $ mkdir -p .devcontainer
        $ cat &gt; .devcontainer/devcontainer.json &lt;&lt;&#39;EOF&#39;
        {
          &quot;name&quot;: &quot;Expense Splitter&quot;,
          &quot;image&quot;: &quot;mcr.microsoft.com/devcontainers/python:3.13&quot;,
          &quot;postCreateCommand&quot;: &quot;python3 -m unittest discover -v&quot;,
          &quot;customizations&quot;: {
            &quot;vscode&quot;: {
              &quot;extensions&quot;: [&quot;ms-python.python&quot;]
            }
          },
          &quot;forwardPorts&quot;: [8000]
        }
        EOF
        $ cat &gt; .github/copilot-instructions.md &lt;&lt;&#39;EOF&#39;
        # Copilot instructions for expense-splitter

        - This is a Python 3.13 project with no third-party packages.
        - Run the tests with: python3 -m unittest discover -v
        - Every new function needs a unit test in tests/.
        - Money values are rounded to 2 decimals; never use float equality in tests
          without rounding first.
        - Keep functions small and add a one-line docstring.
        EOF
        $ git status -s
        ?? .devcontainer/
        ?? .github/copilot-instructions.md
        $ git add .devcontainer .github/copilot-instructions.md
        $ git commit -m &quot;Add dev container and Copilot instructions&quot;
        [chore/dev-setup f6b014c] Add dev container and Copilot instructions
         2 files changed, 19 insertions(+)
         create mode 100644 .devcontainer/devcontainer.json
         create mode 100644 .github/copilot-instructions.md
        $ git push -u origin chore/dev-setup
        To https://github.com/asha/expense-splitter.git
         * [new branch]      chore/dev-setup -&gt; chore/dev-setup
        branch &#39;chore/dev-setup&#39; set up to track &#39;origin/chore/dev-setup&#39;.</code></pre></div>
          <p>(On real GitHub the push also prints <code>remote:</code> lines with a link to open a pull request.) After merging, every new codespace for this repo uses Python 3.13 and runs the tests on creation. The same can be done from the terminal with gh — typical commands (names and output will differ):</p>
          <div class="lc-code-block"><pre><code>$ gh codespace create --repo asha/expense-splitter --branch main
        $ gh codespace list
        $ gh codespace code      # open it in desktop VS Code
        $ gh codespace ssh       # or open a terminal inside it
        $ gh codespace stop
        $ gh codespace delete</code></pre></div>
        </div>

        <div class="lc-card">
          <h3>Copilot Cloud Agent: Assign an Issue to Copilot</h3>
          <p>Open a clear, small issue — for example "#2 Support unequal shares" with acceptance criteria — and choose <strong>Copilot</strong> as the assignee (you can also start a task from the agents panel, or write <code>@copilot</code> in a comment on an existing PR). A typical flow:</p>
          <div class="lc-flow">
            <div class="lc-flow-step">Issue assigned<small>to Copilot</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Agent works<small>on a <code>copilot/</code> branch</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Draft PR<small>with session log</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">You review<small>approve workflows, merge</small></div>
          </div>
          <ul class="lc-list">
            <li>Copilot works in its own temporary environment powered by <strong>GitHub Actions</strong>, can run your tests, and may push only to its own <code>copilot/</code> branch.</li>
            <li>It <strong>cannot</strong> mark its PR ready, approve it or merge it — a human must. If your ruleset requires approvals, the person who asked Copilot cannot be the approver; someone else must approve.</li>
            <li>By default your workflows do not run on Copilot's pushes until someone with write access reviews the code and clicks <strong>Approve and run workflows</strong>. Check changes to <code>.github/workflows/</code> with extra care.</li>
            <li>One task works in one repository, on one branch, and a session stops after at most 59 minutes — keep tasks small and specific.</li>
            <li>To ask for changes, comment <code>@copilot</code> on the PR, or push your own commits to its branch.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Merging AI-written code without reading it or running the tests. You are responsible for every line you merge.</li>
            <li>Treating Copilot's review as the only review. It is a helpful extra reviewer, not a replacement for a teammate.</li>
            <li>Giving the cloud agent a vague task ("improve the app"). Write an issue with clear acceptance criteria, like you would for a new teammate.</li>
            <li>Leaving codespaces running or never deleting old ones, then running out of free quota or storage.</li>
            <li>Expecting github.dev to run code — it has no terminal; use a codespace.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Open any of your repositories and press <kbd>.</kbd> to open github.dev. Edit the README and commit it to a new branch.</li>
            <li>Add the <code>devcontainer.json</code> above to a Python repo, merge it, and create a codespace. Check that the tests ran and that <code>python3 --version</code> prints 3.13.</li>
            <li>If you have Copilot Student or a paid plan: open a PR and request a review from Copilot. Apply one suggestion and resolve one comment.</li>
            <li>Stop and delete the codespace, then check your usage in <em>Settings → Billing and licensing</em>.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Students: apply for GitHub Education with your college email to get Copilot Student and extra benefits for free. Then practise by assigning a small, well-written issue to Copilot and reviewing its PR as carefully as you would review a classmate's.</p></div>
      HTML
    },

    21 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-github">GitHub</div>
          <h1 class="lc-title">Capstone: Ship a Project on GitHub</h1>
        </div>
        <p class="lc-lead">You will run a small project the way professional teams do: an <strong>expense-splitter</strong> for friends sharing a bill. By the end, your repository will have a README and license, protected <code>main</code>, issues, reviewed PRs, CI, Dependabot, a release and a Pages site.</p>

        <div class="lc-card">
          <h3>Step 1: Repository with Tests and CI</h3>
          <p>Create <code>splitter.py</code>, <code>tests/test_splitter.py</code>, the <code>ci.yml</code> workflow from lesson 14, a <code>.gitignore</code> and a README. Check the tests locally:</p>
          <div class="lc-code-block"><pre><code>$ python3 -m unittest discover -v
        test_even_split (tests.test_splitter.TestSplitBill.test_even_split) ... ok
        test_zero_people (tests.test_splitter.TestSplitBill.test_zero_people) ... ok

        ----------------------------------------------------------------------
        Ran 2 tests in 0.000s

        OK</code></pre></div>
          <p>Create an empty public repo <code>expense-splitter</code> on GitHub and push:</p>
          <div class="lc-code-block"><pre><code>$ git init
        Initialized empty Git repository in /home/asha/expense-splitter/.git/
        $ git add .
        $ git commit -m &quot;Initial project with tests and CI&quot;
        [main (root-commit) 1d50fc4] Initial project with tests and CI
         6 files changed, 53 insertions(+)
         create mode 100644 .github/workflows/ci.yml
         create mode 100644 .gitignore
         create mode 100644 README.md
         create mode 100644 splitter.py
         create mode 100644 tests/__init__.py
         create mode 100644 tests/test_splitter.py
        $ git remote add origin https://github.com/asha/expense-splitter.git
        $ git push -u origin main
        To https://github.com/asha/expense-splitter.git
         * [new branch]      main -&gt; main
        branch &#39;main&#39; set up to track &#39;origin/main&#39;.</code></pre></div>
        </div>

        <div class="lc-card">
          <h3>Step 2: Protect and Plan</h3>
          <ul class="lc-list">
            <li>Add an MIT <code>LICENSE</code> and a clear README (lesson 5).</li>
            <li>Create a ruleset for <code>main</code>: require a PR, block force pushes, require the CI checks (lesson 12).</li>
            <li>Open issues: <strong>#1</strong> "Round each share to 2 decimals", <strong>#2</strong> "Support unequal shares", <strong>#3</strong> "Add a web page" — with labels and a milestone <code>v1.0</code> (lesson 6).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Step 3: Work Through Pull Requests</h3>
          <p>For issue #1, create a branch, change <code>split_bill</code> so it rounds each share (here the whole file is rewritten with a heredoc; editing it in your editor works just as well), check the diff, then commit and push:</p>
          <div class="lc-code-block"><pre><code>$ git switch -c feature/round-shares
        Switched to a new branch &#39;feature/round-shares&#39;
        $ cat &gt; splitter.py &lt;&lt;&#39;EOF&#39;
        def split_bill(total, people):
            &quot;&quot;&quot;Split a bill equally between people, rounded to 2 decimals.&quot;&quot;&quot;
            if people &lt;= 0:
                raise ValueError(&quot;people must be at least 1&quot;)
            return round(total / people, 2)
        EOF
        $ git diff
        diff --git a/splitter.py b/splitter.py
        index dbf79ce..c0d7831 100644
        --- a/splitter.py
        +++ b/splitter.py
        @@ -1,5 +1,5 @@
         def split_bill(total, people):
        -    &quot;&quot;&quot;Split a bill equally between people.&quot;&quot;&quot;
        +    &quot;&quot;&quot;Split a bill equally between people, rounded to 2 decimals.&quot;&quot;&quot;
             if people &lt;= 0:
                 raise ValueError(&quot;people must be at least 1&quot;)
        -    return total / people
        +    return round(total / people, 2)
        $ git commit -am &quot;Round each share to 2 decimals&quot; -m &quot;Closes #1&quot;
        [feature/round-shares e291a7e] Round each share to 2 decimals
         1 file changed, 2 insertions(+), 2 deletions(-)
        $ git push -u origin feature/round-shares
        To https://github.com/asha/expense-splitter.git
         * [new branch]      feature/round-shares -&gt; feature/round-shares
        branch &#39;feature/round-shares&#39; set up to track &#39;origin/feature/round-shares&#39;.</code></pre></div>
          <p><code>git diff</code> shows exactly the two changed lines that the commit reports as <code>2 insertions(+), 2 deletions(-)</code>. (On real GitHub the push also prints <code>remote:</code> lines with a link to open the pull request.) Add a test such as <code>self.assertEqual(split_bill(100, 3), 33.33)</code> in the same PR. Then:</p>
          <div class="lc-code-block"><pre><code>$ gh pr create --fill
        $ gh pr checks --watch
        $ gh pr merge --squash --delete-branch</code></pre></div>
          <p><code>--fill</code> uses the commit message, so the PR body contains <code>Closes #1</code> and the issue closes on merge. Wait for green checks before merging. If a friend can review, ask them to — otherwise review your own diff carefully in <em>Files changed</em>. If you have Copilot, also request a review from Copilot (lesson 20) as an extra reviewer.</p>
        </div>

        <div class="lc-card">
          <h3>Step 4: Security, Release and Pages</h3>
          <ul class="lc-list">
            <li>Add <code>.github/dependabot.yml</code> for <code>pip</code> and <code>github-actions</code>; enable Dependabot alerts and CodeQL default setup (lesson 17).</li>
            <li>Tag <code>v1.0.0</code>, push the tag and create a release with generated notes (lesson 18).</li>
            <li>Add a <code>site/index.html</code> describing the project and deploy it with the Pages workflow (lesson 19). Link it in the README.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Final Checklist</h3>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>How to check</th></tr></thead>
            <tbody>
              <tr><td>README, LICENSE, .gitignore</td><td>Visible on the Code tab; sidebar shows the license</td></tr>
              <tr><td>Protected main</td><td>A direct <code>git push origin main</code> is rejected</td></tr>
              <tr><td>At least 3 issues closed by PRs</td><td>Each closed issue links to its PR</td></tr>
              <tr><td>CI passing</td><td>Green tick on the latest <code>main</code> commit; badge in README</td></tr>
              <tr><td>Dependabot and CodeQL on</td><td>Security tab shows no open critical alerts</td></tr>
              <tr><td>Release v1.0.0</td><td><code>gh release list</code></td></tr>
              <tr><td>Live site</td><td><code>https://&lt;you&gt;.github.io/expense-splitter/</code> loads</td></tr>
              <tr><td>Portfolio</td><td>Repository pinned on your profile with description and topics</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Try It: Check Your Capstone</h3>
          <ol class="lc-list">
            <li><strong>Protection works:</strong> commit a tiny change on local <code>main</code> and run <code>git push origin main</code>. Expect <code>! [remote rejected] main -&gt; main</code> with a message that changes must be made through a pull request. Move the commit to a branch as in lesson 12.</li>
            <li><strong>CI gates the PR:</strong> open a PR that breaks a test. Expect <code>gh pr checks</code> to show a failing <code>test</code> job and the merge button to be blocked. Fix it and push: the checks turn green.</li>
            <li><strong>Issue closing:</strong> merge a PR whose body says <code>Closes #2</code>. Expect issue #2 to show "Closed" with a link to the PR.</li>
            <li><strong>Release:</strong> tag and push <code>v1.0.0</code> (below), then <code>gh release create v1.0.0 --generate-notes</code>. Expect <code>gh release list</code> to show <code>v1.0.0</code> marked <code>Latest</code>.</li>
            <li><strong>Pages:</strong> after the Pages workflow finishes, <code>https://&lt;you&gt;.github.io/expense-splitter/</code> loads your page.</li>
          </ol>
          <p>Pushing the tag for task 4 (on GitHub the push also prints progress lines):</p>
          <div class="lc-code-block"><pre><code>$ git tag -a v1.0.0 -m &quot;First release&quot;
        $ git push origin v1.0.0
        To https://github.com/asha/expense-splitter.git
         * [new tag]         v1.0.0 -&gt; v1.0.0
        $ git ls-remote --tags origin
        a5a36d2...	refs/tags/v1.0.0
        4d193bd...	refs/tags/v1.0.0^{}
        $ git status -sb
        ## main...origin/main</code></pre></div>
          <p><code>ls-remote</code> shows the tag twice: the tag object itself and, with <code>^{}</code>, the commit it points to. <code>## main...origin/main</code> with nothing after it means you are in sync.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Turning on the ruleset before the first push of the workflow file — the required check name does not exist yet. Push CI first, let it run once, then require it.</li>
            <li>Merging red PRs "to fix later".</li>
            <li>Forgetting that <code>Closes #1</code> only works when merged into the default branch.</li>
            <li>A README that does not explain how to run the tests.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Stretch Goals</h3>
          <ol class="lc-list">
            <li>Add an issue form and a pull request template.</li>
            <li>Invite a friend as a collaborator and review each other's PRs, including one <code>suggestion</code> block.</li>
            <li>Add the automatic release workflow and ship <code>v1.1.0</code> just by pushing a tag.</li>
            <li>Move your test job into a reusable workflow with a <code>python-version</code> input and call it from <code>ci.yml</code> (lesson 16).</li>
            <li>Contribute one small PR to someone else's project through a fork.</li>
            <li>Add the dev container from lesson 20 so anyone can open the project in a codespace and run the tests with one click.</li>
            <li>Turn on SSH commit signing (lesson 2) and require signed commits in your ruleset.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>This repository is now proof of real teamwork skills — issues, reviews, CI, security and releases. Pin it, link it in your CV, and talk through its PR history in interviews.</p></div>
      HTML
    }
  }
end
